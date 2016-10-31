package au.edu.mq.comp.skink.ir.llvm

import au.edu.mq.comp.automat.auto.DetAuto
import org.scalallvm.assembly.AssemblySyntax.Block
import au.edu.mq.comp.skink.ir.Choice
import scala.collection.immutable.Map
import scala.collection.mutable.{Map => MutableMap}

case class LLVMState(threadLocs : Map[Int, String], syncTokens : Map[String, Boolean])

class LLVMConcurrentAuto(private val ir : LLVMIR) extends DetAuto[LLVMState, Choice] {
    import org.scalallvm.assembly.AssemblySyntax._
    import scala.collection.mutable.ListBuffer
    import au.edu.mq.comp.skink.Skink.getLogger
    import org.scalallvm.assembly.AssemblyPrettyPrinter.{any, layout, show}
    import au.edu.mq.comp.skink.ir.llvm.LLVMHelper._

    private val logger = getLogger(this.getClass)
    private var threadCount = 0
    private var seenThreads = MutableMap[String, Int]()
    val name : String = ir.name

    def getInit : LLVMState = LLVMState(Map(0 -> blockName(ir.main.function.functionBody.blocks.head)), Map())

    def getFunctionById(threadId : Int) : Option[LLVMFunction] = ir.functionIds.get(threadId)

    def isFinal(state : LLVMState) : Boolean = state.threadLocs.values.filter(_.contains("__error")).toVector.length != 0

    def acceptsAll(state : LLVMState) : Boolean = false

    def acceptsNone(state : LLVMState) : Boolean = false

    def isExitBlock(block : Block) : Boolean = {
        logger.debug(s"checking if ${blockName(block)} is exit block")
        block.metaTerminatorInstruction.terminatorInstruction match {
            case _ : Ret | _ : RetVoid => return true
            case _                     => // Do nothing
        }
        val exitInsns = block.optMetaInstructions.collect {
            case exitInsn @ MetaInstruction(GlobalFunctionCall("pthread_exit"), _) => return true
        }
        false
    }

    def isBlocked(block : Block, state : LLVMState) : Boolean = {
        val threadInsns = block.optMetaInstructions.zipWithIndex.filter(i => isThreadPrimitive(i._1.instruction))

        if (threadInsns.length != 0) {
            // We should have at most one thread primitive per block
            assert(threadInsns.length == 1)

            logger.debug(s"isBlocked: checking if ${show(threadInsns.head._1)} is blocking with tokens ${state.syncTokens}")
            threadInsns.head match {
                case (PThreadOperation(callName, syncToken), i) => callName match {
                    case "pthread_mutex_lock" => state.syncTokens.get(syncToken).getOrElse(false)
                    case "pthread_join" => {
                        val threadName = block.optMetaInstructions(i - 1).instruction match {
                            case Load(Binding(Local(registerName)), _, _, _, Named(Local(threadName)), _) => threadName
                            case _ => sys.error("Couldn't get threadName for join")
                        }
                        val threadId = seenThreads.get(threadName).getOrElse(-1)
                        val syncThreadBlock = state.threadLocs.get(threadId)
                        syncThreadBlock match {
                            case Some(blockName) => !isExitBlock(ir.getBlockByName(threadId, blockName))
                            case None            => true
                        }
                    }
                    case _ => false
                }
                case (PThreadOperation(callName, syncToken, returnMutex), _) => callName match {
                    // If the condition we are waiting on is false or not set (shouldn't happen)
                    // we release the mutex we were holding and block or else we're unblocked.
                    case "pthread_cond_wait" =>
                        !state.syncTokens.get(syncToken).getOrElse(false) ||
                            state.syncTokens.get(returnMutex).getOrElse(true)
                    case _ => false
                }
                case _ => false
            }
        } else {
            false
        }
    }

    def nextBlocks(state : LLVMState) : Seq[(Int, String)] = {
        val buf = new ListBuffer[(Int, String)]

        logger.debug(s"nextBlocks: filtering blocks ${state} for blocked blocks")
        val unblockedBlocks = state.threadLocs.filter(s => !isBlocked(ir.getBlockByName(s._1, s._2), state))
        logger.debug(s"nextBlocks: got unblocked blocks ${unblockedBlocks}")

        for ((threadId, blockLabel) <- unblockedBlocks) {
            val block = ir.getBlockByName(threadId, blockLabel)
            logger.debug(s"nextBlocks: Discovering available branches from block $blockLabel on thread $threadId")
            block.metaTerminatorInstruction.terminatorInstruction match {

                // Unconditional branch
                case Branch(Label(Local(tgt))) =>
                    logger.debug(s"nextBlocks: Found an unconditional branch on thread $threadId")
                    buf += ((threadId, tgt))

                // Two-sided conditional branch
                case BranchCond(cmp, Label(Local(trueTgt)), Label(Local(falseTgt))) =>
                    logger.debug(s"nextBlocks: Found a two way branch  on thread $threadId")
                    buf += ((threadId, trueTgt))
                    buf += ((threadId, falseTgt))

                // Multi-way branch
                case Switch(IntT(_), cmp, Label(Local(dfltTgt)), cases) =>
                    logger.debug(s"nextBlocks: Found a multiway branch on thread $threadId")
                    cases.zipWithIndex.foreach {
                        case (Case(_, _, Label(Local(tgt))), i) =>
                            buf += ((threadId, tgt))
                    }
                    buf += ((threadId, dfltTgt))

                // Return
                case _ : Ret | _ : RetVoid | _ : Unreachable =>
                    logger.debug(s"nextBlocks: Found a block with no next branch on thread $threadId")
                // Do nothing

                case i =>
                    sys.error(s"dca: unexpected form of terminator insn: $i")

            }
        }
        buf
    }

    def threadCreationEffects(block : Block) : Option[(Int, String)] = {
        def threadCreationInfo(block : Block) : Seq[(String, String)] = {
            def isThreadCreation(insn : MetaInstruction) : Boolean = {
                insn match {
                    case MetaInstruction(GlobalFunctionCall("pthread_create"), _) =>
                        true
                    case _ =>
                        false
                }
            }

            def extractThreadInfo(insn : MetaInstruction) : (String, String) = {
                insn match {
                    case MetaInstruction(
                        Call(
                            _, _, _, _, _,
                            Function(Named(Global("pthread_create"))),
                            Vector(ValueArg(_, _, Named(Local(threadName))), _, ValueArg(_, _, Named(Global(threadFn))), _),
                            _
                            ),
                        _
                        ) =>
                        (threadName, threadFn)
                    case _ =>
                        ("unknown id", "unknown thread")
                }
            }

            block.optMetaInstructions.filter(isThreadCreation(_)).map(extractThreadInfo(_))
        }

        val threadInfo = threadCreationInfo(block)
        if (threadInfo.length != 0) {
            // Got a new thread, we should only have one new thread per block 
            assert(threadInfo.length == 1)
            val (threadName, threadFn) = threadInfo.head
            logger.debug(s"Discovered a new thread with id $threadName and function $threadFn")
            val threadIRFn = ir.functions.filter(_.name == threadFn).head
            val threadStartBlock = threadIRFn.function.functionBody.blocks.head
            val newThreadId = if (!seenThreads.isDefinedAt(threadName)) {
                logger.debug(s"Discovered a new thread with name $threadName and function $threadFn")
                threadCount += 1
                ir.functionIds.update(threadCount, threadIRFn)
                seenThreads += (threadName -> threadCount)
                threadCount
            } else {
                logger.debug(s"Re-discovered a new thread with name $threadName and function $threadFn")
                seenThreads.get(threadName).get
            }
            Some((newThreadId -> blockName(threadStartBlock)))
        } else
            None
    }

    def outSyncEffects(block : Block, syncTokens : Map[String, Boolean]) : Map[String, Boolean] = {
        val threadInsns = block.optMetaInstructions.filter(i => isThreadPrimitive(i.instruction))
        var newSyncTokens = syncTokens
        if (threadInsns.length != 0) {
            // We should have atmost one thread primitive per block
            assert(threadInsns.length == 1)
            logger.debug(s"outSyncEffects: checking effect of ${show(threadInsns.head)}")
            newSyncTokens = threadInsns.head match {
                case PThreadOperation(callName, syncToken) => callName match {
                    case "pthread_cond_init"    => syncTokens + (syncToken -> false)
                    case "pthread_mutex_init"   => syncTokens + (syncToken -> false)
                    case "pthread_mutex_lock"   => syncTokens + (syncToken -> true)
                    case "pthread_mutex_unlock" => syncTokens + (syncToken -> false)
                    case "pthread_cond_signal"  => syncTokens + (syncToken -> true)
                    case _                      => syncTokens
                }
                case PThreadOperation(callName, syncToken, returnMutex) => callName match {
                    case "pthread_cond_wait" => {
                        // We must be unblocked in order to exit a wait block, so we
                        // assert that our condition is true and that the mutex is free
                        assert(syncTokens.get(syncToken).getOrElse(false))
                        assert(!syncTokens.get(returnMutex).getOrElse(true))
                        syncTokens + (returnMutex -> true)
                    }
                    case _ => syncTokens
                }
                case _ => {
                    logger.debug(s"outSyncEffects: ignoring thread operation")
                    syncTokens
                }
            }
        }

        logger.debug(s"outSyncEffects: syncTokens after processing block ${blockName(block)}: $syncTokens")
        newSyncTokens
    }

    def inSyncEffects(block : Block, syncTokens : Map[String, Boolean]) : Map[String, Boolean] = {
        val threadInsns = block.optMetaInstructions.filter(i => isThreadPrimitive(i.instruction))
        var newSyncTokens = syncTokens
        if (threadInsns.length != 0) {
            // We should have atmost one thread primitive per block
            assert(threadInsns.length == 1)
            newSyncTokens = threadInsns.head match {
                case PThreadOperation(callName, syncToken, returnMutex) => callName match {
                    // When we arrive in a thread with a wait call in it, we need to decide
                    // if we should release the mutex in order to block, or hold it as
                    // we are unblocked.
                    case "pthread_cond_wait" => {
                        // We need to be holding the mutex associated with this wait call
                        assert(syncTokens.get(returnMutex).get)
                        // If we are going to block, we need to give back the mutex 
                        if (!syncTokens.get(syncToken).getOrElse(true))
                            syncTokens + (returnMutex -> false)
                        // Else if we're unblocked, we hold it
                        else
                            syncTokens
                    }
                }
                case _ => {
                    logger.debug(s"inSyncEffects: ignoring thread operation")
                    syncTokens
                }
            }
        }

        logger.debug(s"inSyncEffects: syncTokens after processing block ${blockName(block)}: $syncTokens")
        newSyncTokens
    }

    def succ(state : LLVMState, label : Choice) : LLVMState = {
        logger.debug(s"succ: Finding successors for $state with $label")
        val threadId = label.threadId
        val branchId = label.branchId

        // Find the next block for the selected branch
        val (_, newBlock) = nextBlocks(state).filter(_._1 == threadId)(branchId)
        var newThreadLocs = state.threadLocs + (threadId -> newBlock)

        // Get thread creation info for this block
        val block = ir.getBlockByName(threadId, state.threadLocs.get(threadId).get)
        threadCreationEffects(block) match {
            case Some((newThreadId, blockName)) => newThreadLocs = newThreadLocs + (newThreadId -> blockName)
            case _                              =>
        }

        var newSyncTokens = outSyncEffects(block, state.syncTokens)
        newSyncTokens = inSyncEffects(ir.getBlockByName(threadId, newBlock), newSyncTokens)

        logger.debug(s"succ: Emitting successor ${LLVMState(newThreadLocs, newSyncTokens)} for $state with label $label")
        LLVMState(newThreadLocs, newSyncTokens)
    }

    def enabledIn(state : LLVMState) : Set[Choice] = {
        val buf = new ListBuffer[Choice]
        if (isFinal(state))
            return buf.toSet
        logger.debug(s"enabledIn: Enumerating enabled labels for state $state with nextBlocks ${nextBlocks(state)}")
        for ((threadId, branches) <- nextBlocks(state).groupBy(_._1)) {
            for (branchId <- 0 to branches.length - 1) {
                buf += Choice(threadId, branchId)
            }
        }
        logger.debug(s"enabledIn: returning $buf for $state")
        buf.toSet
    }
}
