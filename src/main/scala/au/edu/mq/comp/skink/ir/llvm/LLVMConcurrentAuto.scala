package au.edu.mq.comp.skink.ir.llvm

import au.edu.mq.comp.automat.auto.DetAuto
import org.scalallvm.assembly.AssemblySyntax.Block
import au.edu.mq.comp.skink.ir.Choice
import scala.collection.immutable.Map

class LLVMConcurrentAuto(private val ir : LLVMIR) extends DetAuto[Map[Int, String], Choice] {
    import org.scalallvm.assembly.AssemblySyntax._
    import scala.collection.mutable.ListBuffer
    import au.edu.mq.comp.skink.Skink.getLogger
    import org.scalallvm.assembly.AssemblyPrettyPrinter.{any, layout, show}
    import au.edu.mq.comp.skink.ir.llvm.LLVMHelper._

    private val logger = getLogger(this.getClass)
    private var threadCount = 0
    private var seenThreads = new ListBuffer[String]()
    val name : String = ir.name

    private def getBlockByName(threadId : Int, blockName : String) : Block =
        ir.functionIds.get(threadId).get.blockMap.get(blockName).get

    def getInit : Map[Int, String] = Map(0 -> blockName(ir.main.function.functionBody.blocks.head))

    def getFunctionById(threadId : Int) : Option[LLVMFunction] = ir.functionIds.get(threadId)

    def isFinal(state : Map[Int, String]) : Boolean = state.values.filter(_.contains("__error")).toVector.length != 0

    def acceptsAll(state : Map[Int, String]) : Boolean = isFinal(state)

    def acceptsNone(state : Map[Int, String]) : Boolean = getBlockByName(0, state.get(0).get).metaTerminatorInstruction.terminatorInstruction match {
        case _ : Ret => true
        case _       => false
    }

    def nextBlocks(state : Map[Int, String]) : List[(Int, String)] = {
        val buf = new ListBuffer[(Int, String)]

        for ((threadId, blockLabel) <- state) {
            val block = getBlockByName(threadId, blockLabel)
            logger.info(s"nextBlocks: Discovering available branches from block $blockLabel on thread $threadId")
            val nextBlocks = getFunctionById(threadId).get.nextBlocks(block, 0)
            buf ++= nextBlocks.map(b => (threadId, blockName(b)))
        }
        buf.toList
    }

    def succ(state : Map[Int, String], label : Choice) : Map[Int, String] = {

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

        val threadId = label.threadId
        val branchId = label.branchId
        // Find the next block for the selected branch
        val (_, newBlock) = nextBlocks(state).filter(_._1 == threadId)(branchId)
        var newState = state - threadId + (threadId -> newBlock)
        logger.info(s"succ: Emitting successor $newState for $state with label $label")

        // Get thread creation info for this block
        val block = state.get(threadId).get
        val threadInfo = threadCreationInfo(getBlockByName(threadId, block))
        if (threadInfo.length != 0) {
            // Got a new thread, we should only have one new thread per 
            // block
            assert(threadInfo.length == 1)
            val (threadName, threadFn) = threadInfo.head
            logger.info(s"succ: Discovered a new thread with info $threadInfo")
            val threadIRFn = ir.functions.filter(_.name == threadFn).head
            logger.info("thread ir fn " + show(threadIRFn.function))
            val threadStartBlock = threadIRFn.function.functionBody.blocks.head
            logger.info("start block " + show(threadStartBlock))
            if (!seenThreads.contains(threadName)) {
                threadCount += 1
                ir.functionIds = ir.functionIds + (threadCount -> threadIRFn)
                seenThreads += threadName
            }
            logger.info("adding function " + show(threadIRFn.function))
            newState = newState + (threadCount -> blockName(threadStartBlock))
            logger.info(s"succ: Additional thread added to state producing successor $newState")
        }
        newState
    }

    def enabledIn(state : Map[Int, String]) : Set[Choice] = {
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
