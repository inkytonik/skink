package au.edu.mq.comp.skink.ir.llvm

import au.edu.mq.comp.skink.ir.{IRFunction, Trace}
import org.scalallvm.assembly.AssemblySyntax.{Block, FunctionDefinition, Program}
import org.bitbucket.inkytonik.kiama.attribution.Attribution

/**
 * A block trace is a sequence of blocks that comprise an error trace.
 */
case class BlockTrace(blocks : Seq[Block], trace : Trace)

/**
 * Representation of an LLVM IR function from the given program.
 */
class LLVMFunction(program : Program, function : FunctionDefinition) extends Attribution with IRFunction {

    import au.edu.mq.comp.automat.auto.NFA
    import au.edu.mq.comp.skink.ir.{FailureTrace, Step}
    import au.edu.mq.comp.skink.ir.llvm.LLVMHelper._
    import au.edu.mq.comp.skink.Skink.getLogger
    import org.bitbucket.inkytonik.kiama.==>
    import org.bitbucket.inkytonik.kiama.attribution.Decorators
    import org.bitbucket.inkytonik.kiama.relation.Tree
    import org.bitbucket.inkytonik.kiama.util.{FileSource, Position, Source}
    import org.scalallvm.assembly.AssemblySyntax._
    import org.scalallvm.assembly.AssemblyPrettyPrinter.{any, layout, show}
    import org.scalallvm.assembly.{
        Analyser,
        ElementProperty,
        Property,
        TypeProperty
    }
    import scala.collection.mutable.ListBuffer
    import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax.{Array1, Array1Sort, EqualTerm, IntSort, BoolSort, Sort, Term}
    import au.edu.mq.comp.smtlib.parser.SMTLIB2PrettyPrinter.{show => showTerm}
    import au.edu.mq.comp.smtlib.theories.{ArrayTerm, BoolTerm, IntTerm}
    import au.edu.mq.comp.smtlib.theories.{ArrayExInt, ArrayExOperators, Core, IntegerArithmetics}
    import au.edu.mq.comp.smtlib.typedterms.{TypedTerm, VarTerm}
    import scala.annotation.tailrec
    import scala.util.{Failure, Success}

    val logger = getLogger(this.getClass)
    val programLogger = getLogger(this.getClass, ".program")

    val helper = new LLVMFunctionHelper(function)
    import helper._

    // Gather properties of the function

    val blockMap = Map(function.functionBody.blocks.map(b => (blockName(b), b)) : _*)

    // Implementation of IRFunction interface

    lazy val name : String =
        nameToString(function.global)

    lazy val nfa : NFA[String, Int] =
        buildNFA(makeVerifiable)

    def traceToTerms(trace : Trace) : Seq[Seq[TypedTerm[BoolTerm, Term]]] = {

        // Make the block trace that corresponds to this trace and set it
        // up so we can do context-dependent computations on it.
        val blockTrace = traceToBlockTrace(trace)
        val tree = new Tree[Product, BlockTrace](blockTrace)

        // Get a function-specifc namer and term builder
        val namer = new LLVMFunctionNamer(helper, tree)
        val termBuilder = new LLVMTermBuilder(namer)

        // If blocks occur more than once in the block trace they will be
        // shared. We need each instance to be treated separately so we use
        // the block trace after it has been made into a proper tree.
        val treeBlockTrace = tree.root

        // Return the terms corresponding to the traced blocks, not including
        // the last step since that is to the error block.
        trace.choices.init.zipWithIndex.map {
            case (choice, count) =>
                val block = treeBlockTrace.blocks(count)
                val optPrevBlock =
                    if (count == 0)
                        None
                    else
                        Some(treeBlockTrace.blocks(count - 1))
                termBuilder.blockTerms(block, optPrevBlock, choice)
        }

    }

    def traceToSteps(failTrace : FailureTrace) : Seq[Step] = {

        def getSourceLine(source : Source, line : Int) : String =
            source.optLineContents(line).getOrElse("").trim

        traceToBlockTrace(failTrace.trace).blocks.map {
            block =>
                val (optFileName, optBlockCode) =
                    Analyser.blockPosition(program, block) match {
                        case Some(Position(blockLine, _, blockSource @ FileSource(fileName, _))) =>
                            (Some(fileName), Some(getSourceLine(blockSource, blockLine)))
                        case _ =>
                            (None, None)
                    }
                val optBlockName = Some(blockName(block))
                val (optTermLine, optTermCode) =
                    block.metaTerminatorInstruction match {
                        case MetaTerminatorInstruction(insn, metadata) =>
                            funanalyser.instructionPosition(program, insn, metadata) match {
                                case Some(Position(termLine, _, termSource)) =>
                                    val termCode = getSourceLine(termSource, termLine)
                                    (Some(termLine), Some(termCode))
                                case _ =>
                                    (None, None)
                            }
                    }
                Step(optFileName, optBlockName, optBlockCode, optTermCode, optTermLine)
        }
    }

    // Helper methods

    /**
     * Build the Control Flow Graph NFA for the function.
     */
    def buildNFA(function : FunctionDefinition) : NFA[String, Int] = {

        import au.edu.mq.comp.automat.edge.LabDiEdge
        import au.edu.mq.comp.automat.edge.Implicits._

        logger.info(s"buildNFA: $name")

        val blocks = function.functionBody.blocks

        // Shouldn't get LLVM function with no blocks
        assert(!blocks.isEmpty)

        val initial = Set(blockName(blocks.head))
        val accepting = blocks.map(blockName).filter(_.startsWith("__error")).toSet

        val transitions = {
            val buf = new ListBuffer[LabDiEdge[String, Int]]
            for (srcBlock <- blocks) {
                val src = blockName(srcBlock)
                srcBlock.metaTerminatorInstruction.terminatorInstruction match {

                    // Unconditional branch
                    case Branch(Label(Local(tgt))) =>
                        buf += (src ~> tgt)(0)

                    // Two-sided conditional branch
                    case BranchCond(cmp, Label(Local(trueTgt)), Label(Local(falseTgt))) =>
                        buf += (src ~> trueTgt)(0)
                        buf += (src ~> falseTgt)(1)

                    // Multi-way branch
                    case Switch(IntT(_), cmp, Label(Local(dfltTgt)), cases) =>
                        cases.zipWithIndex.foreach {
                            case (Case(_, _, Label(Local(tgt))), i) =>
                                buf += (src ~> tgt)(i)
                        }
                        buf += (src ~> dfltTgt)(cases.length)

                    // Return
                    case _ : Ret | _ : RetVoid | _ : Unreachable =>
                    // Do nothing

                    case i =>
                        sys.error(s"nfa: unexpected form of terminator insn: $i")

                }
            }
            buf.toSet
        }

        NFA(initial, transitions, accepting)

    }

    /**
     * Prepare the IR of a function for verification and return the
     * new IR form. The transformation is:
     *
     * Replace blocks that contain a call to the __VERIFIER_error
     * function after an assertion has failed to a branch to a
     * __error block. In detail, look for a block of this form
     *
     * ; <label>:14
     *   <insns1>
     *   call void (...) @__VERIFIER_error() #4
     *   <insns2>
     *   <terminator>
     *
     * and replace it with one of this form
     *
     * ; <label>:14
     *   <insns1>
     *   br label __error.14 #4
     *
     * And the error block
     *
     *  __error.14:
     *   call void (...) @__VERIFIER_error() #4
     *   <insns2>
     *   <terminator>
     *
     * The metadata from the call is transferred to the new branch so it can
     * recovered later during reporting.
     *
     * Blocks that don't contain a call to __VERIFIER_error are left alone.
     */
    def makeVerifiable : FunctionDefinition = {

        logger.info(s"makeVerifiable: $name")

        val errorBlocks = new ListBuffer[Block]()

        def makeErrorLabel(label : OptBlockLabel) : String =
            label match {
                case BlockLabel(label) =>
                    s"__error.$label"
                case ImplicitLabel(num) =>
                    s"__error.$num"
                case NoLabel() =>
                    s"__error.nolabel"
            }

        def isNotErrorCall(insn : MetaInstruction) : Boolean =
            insn match {
                case MetaInstruction(
                    Call(
                        _, _, _, _, _,
                        VerifierFunction(Global("__VERIFIER_error")),
                        _, _
                        ),
                    _
                    ) =>
                    false
                case _ =>
                    true
            }

        def replaceErrorCalls(block : Block) : Block = {
            val (before, after) = block.optMetaInstructions.span(isNotErrorCall)
            if (after.isEmpty)
                block
            else {
                val metadata = after(0).metadata
                val errorLabel = makeErrorLabel(block.optBlockLabel)
                val errorBlock =
                    Block(BlockLabel(errorLabel), Vector(), None, after,
                        block.metaTerminatorInstruction)
                errorBlocks += errorBlock
                Block(block.optBlockLabel, Vector(), None, before,
                    MetaTerminatorInstruction(
                        Branch(Label(Local(errorLabel))),
                        Metadata(Vector())
                    ))
            }
        }

        val functionBodyWithProcessedBlocks =
            function.functionBody.blocks.map(replaceErrorCalls)

        val functionBodyWithErrorBlock =
            FunctionBody(functionBodyWithProcessedBlocks ++ errorBlocks)

        // Return the new function
        val ret = function.copy(functionBody = functionBodyWithErrorBlock)
        programLogger.debug(s"* Function $name for verification:\n")
        programLogger.debug(show(ret))
        programLogger.debug(s"\n* AST of function $name for verification:\n\n")
        programLogger.debug(layout(any(ret)))
        ret

    }

    /**
     * Follow the choices given by a trace to construct the trace of blocks
     * that are executed by the trace.
     */
    def traceToBlockTrace(trace : Trace) : BlockTrace = {
        val entryBlock = function.functionBody.blocks(0)
        val (finalBlock, blocks) =
            trace.choices.foldLeft(Option(entryBlock), Vector[Block]()) {
                case ((Some(block), blocks), choice) =>
                    (nextBlock(block, choice), blocks :+ block)
                case ((None, blocks), choice) =>
                    (None, blocks)
            }
        BlockTrace(blocks, trace)
    }

    /**
     * Get the block that follows `block` when we make a given choice.
     * Return `None` if there is no such block.
     */
    def nextBlock(block : Block, choice : Int) : Option[Block] = {
        val optNextBlockLabel =
            block.metaTerminatorInstruction.terminatorInstruction match {
                case Branch(label) if choice == 0 =>
                    Some(label)
                case BranchCond(_, label1, label2) if choice == 0 =>
                    Some(label1)
                case BranchCond(_, label1, label2) if choice == 1 =>
                    Some(label2)
                case IndirectBr(_, _, labels) if (choice >= 0) && (choice < labels.length) =>
                    Some(labels(choice))
                case Unreachable() =>
                    None
                case insn =>
                    sys.error(s"nextBlock: unexpected terminator insn $insn")
            }
        optNextBlockLabel match {
            case Some(Label(name)) =>
                blockMap.get(nameToString(name)) match {
                    case Some(block) =>
                        Some(block)
                    case None =>
                        sys.error(s"nextBlock: unable to find block $name")
                }
            case None =>
                None
        }
    }

}
