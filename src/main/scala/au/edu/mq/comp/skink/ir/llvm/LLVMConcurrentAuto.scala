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

    private def getBlockByName(threadId : Int, blockName : String) : Block =
        ir.functionIds.get(threadId).get.blockMap.get(blockName).get

    def getInit : LLVMState = LLVMState(Map(0 -> blockName(ir.main.function.functionBody.blocks.head)), Map())

    def getFunctionById(threadId : Int) : Option[LLVMFunction] = ir.functionIds.get(threadId)

    // TODO: format this
    def isFinal(state : LLVMState) : Boolean = state.threadLocs.values.filter(_.contains("__error")).toVector.length != 0

    def acceptsAll(state : LLVMState) : Boolean = isFinal(state)

    // TODO: Clean this up
    def acceptsNone(state : LLVMState) : Boolean = 
        getBlockByName(0, state.threadLocs.get(0).get).metaTerminatorInstruction.terminatorInstruction match {
            case _ : Ret => true
            case _       => false
        }

    def isExitBlock(block : Block) : Boolean = {
        val exitInsns = block.optMetaInstructions.collect {
            case exitInsn @ MetaInstruction(GlobalFunctionCall("pthread_exit"), _) => exitInsn
        }
        logger.debug(s"got exit instructions $exitInsns")
        exitInsns.length >= 1
    }

    def isBlocked(block : Block, state : LLVMState) : Boolean = {
        val threadInsns = block.optMetaInstructions.filter(i => isThreadPrimitive(i.instruction))

        if (threadInsns.length != 0) {
            // We should have at most one thread primitive per block
            assert(threadInsns.length == 1)

            logger.info(s"isBlocked: checking if ${show(threadInsns.head)} is blocking with tokens $state.syncTokens")
            return threadInsns.head match {
                case PThreadOperation(call_name, syncToken) => call_name match {
                    case "pthread_mutex_lock" => state.syncTokens.get(syncToken).getOrElse(false)
                    case "pthread_join" => {
                        val threadId = seenThreads.get(syncToken).getOrElse(-1)
                        val syncThreadBlock = state.threadLocs.get(threadId)
                        syncThreadBlock match {
                            case Some(blockName) => isExitBlock(getBlockByName(threadId, blockName))
                            case None => true
                        }
                    }
                    case _ => false
                }
                case PThreadOperation(call_name, syncToken, returnMutex) => call_name match {
                    // If the condition we are waiting on is false or not set (shouldn't happen)
                    // we release the mutex we were holding and block or else we're unblocked.
                    case "pthread_cond_wait" =>
                        state.syncTokens.get(syncToken).getOrElse(false)
                    case _ => false
                }
                case _ => false
            }
        }
        false
    }

    def nextBlocks(state : LLVMState) : List[(Int, String)] = {
        val buf = new ListBuffer[(Int, String)]

        logger.info(s"nextBlocks: filtering blocks ${state} for blocked blocks") 
        val unblockedBlocks = state.threadLocs.filter(s => !isBlocked(getBlockByName(s._1, s._2), state))
        logger.info(s"nextBlocks: got unblocked blocks ${unblockedBlocks}") 

        for ((threadId, blockLabel) <- unblockedBlocks) {
            val block = getBlockByName(threadId, blockLabel)
            logger.info(s"nextBlocks: Discovering available branches from block $blockLabel on thread $threadId")
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

                        case i =>
                            sys.error(s"dca: unexpected form of terminator insn: $i")

            }
        }
        buf.toList
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
            // Got a new thread, we should only have one new thread per 
            // block
            assert(threadInfo.length == 1)
            val (threadName, threadFn) = threadInfo.head
            logger.info(s"Discovered a new thread with id $threadName and function $threadFn")
            val threadIRFn = ir.functions.filter(_.name == threadFn).head
            val threadStartBlock = threadIRFn.function.functionBody.blocks.head
            if (!seenThreads.isDefinedAt(threadName)) {
                logger.info(s"Discovered a new thread with id $threadName and function $threadFn")
                threadCount += 1
                ir.functionIds.update(threadCount, threadIRFn)
                seenThreads += (threadName -> threadCount) 
            }
            Some((threadCount -> blockName(threadStartBlock)))
        } else
            None
    }

    def syncEffects(block : Block, syncTokens : Map[String, Boolean]) : Map[String, Boolean]  = {
        val threadInsns = block.optMetaInstructions.filter(i => isThreadPrimitive(i.instruction))
        var newSyncTokens = syncTokens
        if (threadInsns.length != 0) { 
            // We should have atmost one thread primitive per block
            assert(threadInsns.length == 1)
            logger.info(s"syncEffects: checking effect of ${show(threadInsns.head)}")
            newSyncTokens = threadInsns.head match {
                case PThreadOperation(call_name, syncToken) => call_name match {
                    case "pthread_cond_init" => syncTokens + (syncToken -> false)
                    case "pthread_mutex_init" => syncTokens + (syncToken -> false)
                    case "pthread_mutex_lock" => syncTokens + (syncToken -> true)
                    case "pthread_mutex_unlock" => syncTokens + (syncToken -> false)
                    case "pthread_cond_signal" => syncTokens + (syncToken -> true)
                }
                    case PThreadOperation(call_name, syncToken, returnMutex) => call_name match {
                        // If we have unblocked (ie. if we are allowed to compute the effect of this block)
                        // then the cond argument to this function is already true. So we re-take the mutex
                        // that was released when we blocked.
                    case "pthread_cond_wait" => {
                        // We need to be holding the mutex associated with this wait call
                        assert(syncTokens.get(returnMutex).get)
                        if (syncTokens.get(syncToken).getOrElse(false))
                            syncTokens + (returnMutex -> true)
                        else
                            syncTokens
                    }
                    }
                    case _ => {
                        logger.info(s"syncEffects: ignoring thread operation")
                        syncTokens 
                    }
            }
        }

        logger.info(s"syncEffects: syncTokens after processing block ${blockName(block)}: $syncTokens")
        newSyncTokens 
    }

    def succ(state : LLVMState, label : Choice) : LLVMState = {
        val threadId = label.threadId
        val branchId = label.branchId

        // Find the next block for the selected branch
        val (_, newBlock) = nextBlocks(state).filter(_._1 == threadId)(branchId)
        var newThreadLocs = state.threadLocs + (threadId -> newBlock)

        // Get thread creation info for this block
        val block = getBlockByName(threadId, state.threadLocs.get(threadId).get)
        threadCreationEffects(block) match {
            case Some((newThreadId, blockName)) => newThreadLocs = newThreadLocs + (newThreadId -> blockName)
            case _                              =>
        }

        var newSyncTokens = syncEffects(block, state.syncTokens)

        logger.info(s"succ: Emitting successor ${LLVMState(newThreadLocs, newSyncTokens)} for $state with label $label")
        LLVMState(newThreadLocs, newSyncTokens)
    }

    def enabledIn(state : LLVMState) : Set[Choice] = {
        val buf = new ListBuffer[Choice]
        logger.info(s"enabledIn: Enumerating enabled labels for state $state with nextBlocks ${nextBlocks(state)}")
        for ((threadId, branches) <- nextBlocks(state).groupBy(_._1)) {
            for (branchId <- 0 to branches.length - 1) {
                buf += Choice(threadId, branchId)
            }
        }
        logger.info(s"enabledIn: returning $buf")
        buf.toSet
    }
}
