package au.edu.mq.comp.skink.ir.llvm

import au.edu.mq.comp.automat.auto.DetAuto
import org.scalallvm.assembly.AssemblySyntax.Block
import au.edu.mq.comp.skink.ir.IRFunction
import scala.collection.immutable.Map

class LLVMConcurrentAuto(private val main : LLVMFunction) extends DetAuto[Map[Int, String], (Int, Int)] {
    import org.scalallvm.assembly.AssemblySyntax._
    import scala.collection.mutable.ListBuffer
    import au.edu.mq.comp.skink.Skink.getLogger
    import org.scalallvm.assembly.AssemblyPrettyPrinter.{any, layout, show}
    import au.edu.mq.comp.skink.ir.llvm.LLVMHelper._

    private val logger = getLogger(this.getClass)
    private var threadCount = 0
    private var functionBlocks : Map[Int, Map[String, Block]] = Map(0 -> Map(main.function.functionBody.blocks.map(b => (blockName(b), b)) : _*))

    val name : String = main.name

    def getInit : Map[Int, String] = Map(0 -> blockName(main.function.functionBody.blocks.head))

    def isFinal(state : Map[Int, String]) : Boolean = false

    def acceptsAll(state : Map[Int, String]) : Boolean = false

    def acceptsNone(state : Map[Int, String]) : Boolean = false

    def nextBlocks(state : Map[Int, String]) : List[(Int, String)] = {
        val buf = new ListBuffer[(Int, String)]

        for ((threadId, blockName) <- state) {
            val block = functionBlocks.get(threadId).get(blockName)
            logger.info(s"nextBlocks: Discovering available branches from block $blockName on thread $threadId")
            if (threadId != 0)
                logger.info("nextBlocks: Got block " + layout(any(block)))
            block.metaTerminatorInstruction.terminatorInstruction match {

                // Unconditional branch
                case Branch(Label(Local(tgt))) =>
                    logger.info(s"nextBlocks: Found an unconditional branch on thread $threadId")
                    buf += ((threadId, tgt))

                // Two-sided conditional branch
                case BranchCond(cmp, Label(Local(trueTgt)), Label(Local(falseTgt))) =>
                    logger.info(s"nextBlocks: Found a two way branch  on thread $threadId")
                    buf += ((threadId, trueTgt))
                    buf += ((threadId, falseTgt))

                // Multi-way branch
                case Switch(IntT(_), cmp, Label(Local(dfltTgt)), cases) =>
                    logger.info(s"nextBlocks: Found a multiway branch on thread $threadId")
                    cases.zipWithIndex.foreach {
                        case (Case(_, _, Label(Local(tgt))), i) =>
                            buf += ((threadId, tgt))
                    }
                    buf += ((threadId, dfltTgt))

                // Return
                case _ : Ret | _ : RetVoid | _ : Unreachable =>
                    logger.info(s"nextBlocks: Found a block with no next branch on thread $threadId")
                // Do nothing

                case i =>
                    sys.error(s"dca: unexpected form of terminator insn: $i")

            }
        }
        buf.toList
    }

    def succ(state : Map[Int, String], label : (Int, Int)) : Map[Int, String] = {

        def threadCreationInfo(block : Block) : List[(String, String)] = {
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
                            Vector(ValueArg(_, _, Named(Local(threadId))), _, ValueArg(_, _, Named(Global(threadFn))), _),
                            _
                            ),
                        _
                        ) =>
                        (threadId, threadFn)
                    case _ =>
                        ("unknown id", "unknown thread")
                }
            }

            block.optMetaInstructions.toList.filter(isThreadCreation(_)).map(extractThreadInfo(_))
        }

        val (threadId, branchId) = label
        // Find the next block for the selected branch
        val (_, newBlock) = nextBlocks(state).filter(_._1 == threadId)(branchId)
        var newState = state - threadId + (threadId -> newBlock)
        logger.info(s"succ: Emitting successor $newState for $state with label $label")

        // Get thread creation info for this block
        val block = state.get(threadId).get
        val threadInfo = threadCreationInfo(functionBlocks.get(threadId).get(block))
        if (threadInfo.length != 0) {
            // Got a new thread, we should only have one new thread per 
            // block
            assert(threadInfo.length == 1)
            val (_, threadFn) = threadInfo.head
            logger.info(s"succ: Discovered a new thread with info $threadInfo")
            val threadIRFn = main.ir.functions.filter(_.name == threadFn).head
            logger.info("thread ir fn " + show(threadIRFn.function))
            val transformedIRFn = new LLVMFunction(threadIRFn.ir, threadIRFn.makeVerifiable)
            val threadStartBlock = transformedIRFn.function.functionBody.blocks.head
            logger.info("start block " + show(threadStartBlock))
            threadCount += 1
            val newThreadId = threadCount
            functionBlocks = functionBlocks + (newThreadId -> Map(transformedIRFn.function.functionBody.blocks.map(b => (blockName(b), b)) : _*))
            logger.info("adding function " + show(threadIRFn.function))
            newState = newState + (newThreadId -> blockName(threadStartBlock))
            logger.info(s"succ: Additional thread added to state producing successor $newState")
        }
        newState
    }

    def enabledIn(state : Map[Int, String]) : Set[(Int, Int)] = {
        val buf = new ListBuffer[(Int, Int)]
        logger.info("enabledIn: Enumerating enabled labels for state {} with nextBlocks {}", state, nextBlocks(state))
        for ((threadId, branches) <- nextBlocks(state).groupBy(_._1)) {
            for (branchId <- 0 to branches.length - 1) {
                buf += ((threadId, branchId))
            }
        }
        buf.toSet
    }
}
