package au.edu.mq.comp.skink.ir.llvm

import au.edu.mq.comp.automat.auto.DetAuto
import org.scalallvm.assembly.AssemblySyntax.Block
import au.edu.mq.comp.skink.ir.IRFunction
import scala.collection.mutable.ListMap

class LLVMConcurrentAuto(private val main : LLVMFunction) extends DetAuto[ListMap[String, Block], Int] {
    import org.scalallvm.assembly.AssemblySyntax._
    import scala.collection.mutable.{ListBuffer, Map}

    private val functionBlocks : Map[String, Map[String, Block]] = Map("main" -> Map(main.function.functionBody.blocks.map(b => (blockName(b), b)) : _*))

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

    def getInit : ListMap[String, Block] = ListMap("main" -> main.function.functionBody.blocks.head)

    def isFinal(state : ListMap[String, Block]) : Boolean = state.values.map(blockName).filter(_.startsWith("__eror")).toList.length > 0

    def acceptsAll(state : ListMap[String, Block]) : Boolean = false

    def acceptsNone(state : ListMap[String, Block]) : Boolean = false

    def nextBlocks(state : ListMap[String, Block]) : List[(String, Block)] = {
        val buf = new ListBuffer[(String, Block)]

        for ((thread, block) <- state) {
            block.metaTerminatorInstruction.terminatorInstruction match {

                // Unconditional branch
                case Branch(Label(Local(tgt))) =>
                    buf += ((thread, functionBlocks.get(thread).get(tgt)))

                // Two-sided conditional branch
                case BranchCond(cmp, Label(Local(trueTgt)), Label(Local(falseTgt))) =>
                    buf += ((thread, functionBlocks.get(thread).get(trueTgt)))
                    buf += ((thread, functionBlocks.get(thread).get(falseTgt)))

                // Multi-way branch
                case Switch(IntT(_), cmp, Label(Local(dfltTgt)), cases) =>
                    cases.zipWithIndex.foreach {
                        case (Case(_, _, Label(Local(tgt))), i) =>
                            buf += ((thread, functionBlocks.get(thread).get(tgt)))
                    }
                    buf += ((thread, functionBlocks.get(thread).get(dfltTgt)))

                // Return
                case _ : Ret | _ : RetVoid | _ : Unreachable =>
                // Do nothing

                case i =>
                    sys.error(s"dca: unexpected form of terminator insn: $i")

            }
        }
        buf.toList
    }

    def succ(state : ListMap[String, Block], branch : Int) : ListMap[String, Block] = {
        // Find the next block for the selected branch
        val (thread, newBlock) = nextBlocks(state)(branch)
        val block = state.get(thread).get

        // Then let's check if that block made a new thread
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

        // Get thread creation info for this block
        val threadInfo = threadCreationInfo(block)
        if (threadInfo.length != 0) {
            // Got a new thread, we should only have one new thread per 
            // block
            assert(threadInfo.length == 1)
            val (threadId, threadFn) = threadInfo.head
            val threadIRFn = main.ir.functions.filter(_.name == threadFn).head
            val threadStartBlock = threadIRFn.function.functionBody.blocks.head
            val threadName = s"$threadId<-$thread"
            functionBlocks += (threadName -> Map(threadIRFn.function.functionBody.blocks.map(b => (blockName(b), b)) : _*))
            state += (threadName -> threadStartBlock)
        }
        state.update(thread, newBlock)
        state
    }

    def enabledIn(state : ListMap[String, Block]) : Set[Int] = (0 to nextBlocks(state).length).toSet
}
