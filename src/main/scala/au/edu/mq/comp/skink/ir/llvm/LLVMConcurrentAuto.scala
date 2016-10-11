package au.edu.mq.comp.skink.ir.llvm

import au.edu.mq.comp.automat.auto.DetAuto
import org.scalallvm.assembly.AssemblySyntax.Block
import au.edu.mq.comp.skink.ir.IRFunction
import scala.collection.mutable.ListMap

class LLVMConcurrentAuto(private val main : LLVMFunction) extends DetAuto[Map[Int, String], (Int, Int)] {
    import org.scalallvm.assembly.AssemblySyntax._
    import scala.collection.mutable.{Map, ListBuffer}

    private val functionBlocks : Map[Int, Map[String, Block]] = Map(0 -> Map(main.function.functionBody.blocks.map(b => (blockName(b), b)) : _*))
    private var threadCount = 1

    /**
     * Get the name of a block. Currently assumes that a block with no label
     * must be the anonymous entry block (0).
     */
    def blockName(block : Block) : String =
        block.optBlockLabel match {
            case BlockLabel(s)    => s
            case ImplicitLabel(i) => i.toString
            case NoLabel()        => "0"
        }

    val name : String = main.name

    def getInit : Map[Int, String] = Map(0 -> blockName(main.function.functionBody.blocks.head))

    def isFinal(state : Map[Int, String]) : Boolean = false

    def acceptsAll(state : Map[Int, String]) : Boolean = false

    def acceptsNone(state : Map[Int, String]) : Boolean = false

    def nextBlocks(state : Map[Int, String]) : List[(Int, String)] = {
        val buf = new ListBuffer[(Int, String)]

        for ((threadId, blockName) <- state) {
            val block = functionBlocks.get(threadId).get(blockName)
            block.metaTerminatorInstruction.terminatorInstruction match {

                // Unconditional branch
                case Branch(Label(Local(tgt))) =>
                    buf += ((threadId, tgt))

                // Two-sided conditional branch
                case BranchCond(cmp, Label(Local(trueTgt)), Label(Local(falseTgt))) =>
                    buf += ((threadId, trueTgt))
                    buf += ((threadId, trueTgt))

                // Multi-way branch
                case Switch(IntT(_), cmp, Label(Local(dfltTgt)), cases) =>
                    cases.zipWithIndex.foreach {
                        case (Case(_, _, Label(Local(tgt))), i) =>
                            buf += ((threadId, tgt))
                    }
                    buf += ((threadId, dfltTgt))

                // Return
                case _ : Ret | _ : RetVoid | _ : Unreachable =>
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
                    case MetaInstruction(
                        Call(
                            _, _, _, _, _,
                            Function(Named(Global("pthread_create"))),
                            _, _
                            ),
                        _
                        ) =>
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

        // Get thread creation info for this block
        val block = state.get(threadId).get
        val threadInfo = threadCreationInfo(functionBlocks.get(threadId).get(block))
        if (threadInfo.length != 0) {
            // Got a new thread, we should only have one new thread per 
            // block
            assert(threadInfo.length == 1)
            val (threadId, threadFn) = threadInfo.head
            val threadIRFn = main.ir.functions.filter(_.name == threadFn).head
            val transformedIRFn = new LLVMFunction(threadIRFn.ir, threadIRFn.makeVerifiable)
            val threadStartBlock = threadIRFn.function.functionBody.blocks.head
            threadCount += 1
            val newThreadId = threadCount
            functionBlocks += (newThreadId -> Map(threadIRFn.function.functionBody.blocks.map(b => (blockName(b), b)) : _*))
            state += (newThreadId -> blockName(threadStartBlock))
        }
        state.update(threadId, newBlock)
        state
    }

    def enabledIn(state : Map[Int, String]) : Set[(Int, Int)] = {
        val buf = new ListBuffer[(Int, Int)]
        for ((threadId, branches) <- nextBlocks(state).groupBy(_._1)) {
            for (branchId <- 0 to branches.length - 1) {
                buf += ((threadId, branchId))
            }
        }
        buf.toSet
    }
}
