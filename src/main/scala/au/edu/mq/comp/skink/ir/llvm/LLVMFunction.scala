package au.edu.mq.comp.skink.ir.llvm

import au.edu.mq.comp.skink.SkinkConfig
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
class LLVMFunction(program : Program, val function : FunctionDefinition,
        config : SkinkConfig) extends Attribution with IRFunction {

    import au.edu.mq.comp.automat.auto.NFA
    import au.edu.mq.comp.skink.ir.{FailureTrace, Step}
    import au.edu.mq.comp.skink.ir.llvm.LLVMHelper._
    import au.edu.mq.comp.skink.Skink.getLogger
    import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax.{Array1Sort, EqualTerm, IntSort, BoolSort, Sort, Term}
    import au.edu.mq.comp.smtlib.parser.SMTLIB2PrettyPrinter.{show => showTerm}
    import au.edu.mq.comp.smtlib.theories.{ArrayTerm, BoolTerm, IntTerm}
    import au.edu.mq.comp.smtlib.theories.{ArrayExInt, ArrayExOperators, Core, IntegerArithmetics}
    import au.edu.mq.comp.smtlib.typedterms.{TypedTerm, VarTerm}
    import org.bitbucket.inkytonik.kiama.==>
    import org.bitbucket.inkytonik.kiama.attribution.Decorators
    import org.bitbucket.inkytonik.kiama.relation.{EnsureTree, Tree}
    import org.bitbucket.inkytonik.kiama.util.{FileSource, Position, Source}
    import org.scalallvm.assembly.AssemblySyntax._
    import org.scalallvm.assembly.AssemblyPrettyPrinter.{any, layout, show}
    import org.scalallvm.assembly.{
        Analyser,
        ElementProperty,
        Property,
        TypeProperty
    }
    import org.scalallvm.assembly.Analyser.defaultBlockName
    import scala.annotation.tailrec
    import scala.collection.mutable.ListBuffer
    import scala.util.{Failure, Success}

    val logger = getLogger(this.getClass)
    val programLogger = getLogger(this.getClass, ".program")
    val checkPostLogger = getLogger(this.getClass, ".checkpost")

    // An analyser for the verifiable version of this function and its associated tree

    lazy val funTree = new Tree[ASTNode, FunctionDefinition](makeVerifiable)
    lazy val funAnalyser = new Analyser(funTree)

    def blockName(block : Block) =
        funAnalyser.blockName(block)

    // Gather properties of the function

    lazy val blockMap = Map(makeVerifiable.functionBody.blocks.map(b => (blockName(b), b)) : _*)

    // Implementation of IRFunction interface

    lazy val name : String =
        nameToString(function.global)

    lazy val nfa : NFA[String, Int] =
        buildNFA(makeVerifiable)

    /**
     * Return `None` if this function is verifiable. Otherwise, return a
     * reason that can be displayed to the user for why it is not
     * verifiable. Currently, the only reason is that some function
     * calls have not been inlined.
     */
    override def isVerifiable() : Option[String] = {

        def nonInlinedCall(metaInsn : MetaInstruction) : Option[String] = {
            val insn = metaInsn.instruction
            insn match {
                case Call(_, _, _, _, _, IgnoredFunction(s), _, _) if !isAssertFunction(s) =>
                    None
                case Call(_, _, _, _, _, Function(Named(Global(s))), _, _) =>
                    logger.info(s"isVerifiable: non-inlined call ${longshow(insn)}")
                    Some(s)
                case _ =>
                    None
            }
        }

        def nonInlinedCalls(block : Block) : Vector[String] =
            block.optMetaInstructions.flatMap(nonInlinedCall)

        def nonInlinedCallNames : Vector[String] =
            function.functionBody.blocks.map(nonInlinedCalls).flatten

        nonInlinedCallNames match {
            case Vector() =>
                None
            case names =>
                Some(s"""calls to the following functions were not inlined: ${names.mkString(", ")}""")
        }

    }

    /**
     * Combine terms via conjunction, dealing with teh case where there are no
     * terms so effect is "true". THe namer is used to access the underlying
     * term operations.
     */
    def combineTerms(namer : LLVMNamer, terms : Seq[TypedTerm[BoolTerm, Term]]) : TypedTerm[BoolTerm, Term] = {
        import namer._
        import au.edu.mq.comp.smtlib.theories.Core
        object BoolOps extends Core
        import BoolOps._

        if (terms.isEmpty)
            True()
        else
            terms.reduceLeft(_ & _)
    }

    def traceToTerms(trace : Trace) : Seq[TypedTerm[BoolTerm, Term]] = {

        // Make the block trace that corresponds to this trace and set it
        // up so we can do context-dependent computations on it.
        val blockTrace = traceToBlockTrace(trace)
        val traceTree = new Tree[Product, BlockTrace](blockTrace, EnsureTree)

        // Get a function-specifc namer and term builder
        val namer = new LLVMFunctionNamer(funAnalyser, funTree, traceTree)
        val termBuilder = new LLVMTermBuilder(funAnalyser, namer, config)

        import namer._

        // The term for the effects of program initialisation
        val initTerm = termBuilder.initTerm(program)

        // If blocks occur more than once in the block trace they will be
        // shared. We need each instance to be treated separately so we use
        // the block trace after it has been made into a proper tree.
        val treeBlockTrace = traceTree.root

        // Return the terms corresponding to the traced blocks, not including
        // the last step since that is to the error block.
        val blockTerms =
            trace.choices.init.zipWithIndex.map {
                case (choice, count) =>
                    val block = treeBlockTrace.blocks(count)
                    val optPrevBlock =
                        if (count == 0)
                            None
                        else
                            Some(treeBlockTrace.blocks(count - 1))
                    termBuilder.blockTerms(block, optPrevBlock, choice)
            }.map(termBuilder.combineTerms)

        // Prepend the global initialisation terms to the terms of the first block
        if (blockTerms.isEmpty)
            Seq(initTerm)
        else
            termBuilder.combineTerms(Seq(initTerm, blockTerms.head)) +: blockTerms.tail

    }

    def traceToSteps(failTrace : FailureTrace) : Seq[Step] = {

        def getSourceLine(source : Source, line : Int) : String =
            source.optLineContents(line).getOrElse("").trim

        def blockName(block : Block) : String =
            defaultBlockName(block, funAnalyser.anonArgCount.toString)

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
                            funAnalyser.instructionPosition(program, insn, metadata) match {
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
    lazy val makeVerifiable : FunctionDefinition = {

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

    def traceToRepetitions(trace : Trace) : Seq[Seq[Int]] = {

        val blocks = blockTrace(trace).blocks

        // Build the steps between optional previous block and next block, but
        // only include a previous block if the current block has phi insns
        // (and hence the previous block can affect the behaviour of the current
        // block). We do this with block name strings since the full block data
        // is not needed and it's easier for debugging
        val steps =
            trace.choices.init.zipWithIndex.map {
                case (choice, count) =>
                    val block = blocks(count)
                    val optPrevBlock =
                        if (count == 0)
                            None
                        else
                            Some(blockName(blocks(count - 1)))
                    if (block.optMetaPhiInstructions.isEmpty)
                        (None, blockName(block))
                    else
                        (optPrevBlock, blockName(block))
            }

        // Combine steps with their indices, accumulate indices for same step,
        // throw away steps, turn into Seq
        steps.zipWithIndex.foldLeft(Map[(Option[String], String), Vector[Int]]()) {
            case (m, (k, i)) =>
                val s = m.getOrElse(k, Vector())
                m.updated(k, s :+ i)
        }.values.toIndexedSeq

    }

    def traceBlockEffect(trace : Trace, index : Int, choice : Int) : (TypedTerm[BoolTerm, Term], Map[String, Int]) = {

        // Get a tree for the relevant block
        val blocks = blockTrace(trace).blocks
        if ((index < 0) || (index >= blocks.length))
            sys.error(s"traceBlockEffect: trace length is ${blocks.length} so index ${index} is out of range")
        val blockTree = new Tree[Product, Block](blocks(index))
        val block = blockTree.root

        // Get a function-specifc namer and term builder
        val namer = new LLVMFunctionNamer(funAnalyser, funTree, blockTree)
        val termBuilder = new LLVMTermBuilder(funAnalyser, namer, config)

        // Make a single term for this block and choice
        val optPrevBlock = if (index == 0) None else Some(blocks(index - 1))
        val term = combineTerms(namer, termBuilder.blockTerms(block, optPrevBlock, choice))

        // Return the term and the name mapping that applies after the block
        (term, namer.stores(block))

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
     * Follow the choices given by a trace to construct the trace of blocks
     * that are executed by the trace. It's useful for this to be an attribute
     * since we may need it more than once if we are doing different things
     * with the trace which mostly required the actual blocks.
     */
    lazy val blockTrace : Trace => BlockTrace =
        attr {
            case trace =>
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
                case Switch(IntT(_), _, dfltLabel, cases) if (choice >= 0) && (choice <= cases.length) =>
                    if (choice == cases.length)
                        Some(dfltLabel)
                    else
                        Some(cases(choice).label)
                case Unreachable() =>
                    None
                case insn =>
                    sys.error(s"nextBlock: unexpected terminator insn $insn with choice $choice")
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

    import au.edu.mq.comp.smtlib.interpreters.SMTLIBInterpreter
    import scala.util.{Try, Success, Failure}
    import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax.{SSymbol, Sat, UnSat, UnKnown}

    /**
     *  Check that the image of a precondition is included in a postcondition
     *
     * @param     pre         the precondition over a set of prgram variables `V`
     * @param     blockTerm   an SSA term that encodes the semantics of a
     *                        sequence of instructions
     * @param     post        the postcondition over a set of program variables `v`
     */
    def checkPost(
        pre : TypedTerm[BoolTerm, Term],
        trace : Trace,
        index : Int,
        choice : Int,
        post : TypedTerm[BoolTerm, Term]
    )(
        implicit
        solver : SMTLIBInterpreter
    ) : Try[Boolean] = {

        import au.edu.mq.comp.smtlib.theories.Core
        import au.edu.mq.comp.smtlib.typedterms.{Commands}

        object BoolOps extends Core with Commands
        import BoolOps._

        object Comm extends Commands
        import Comm.isSat

        programLogger.info(s"pre-condition is")

        //  Index the variables in pre with index 0
        val indexedPre = pre indexedBy { case _ => 0 }
        programLogger.info(s"indexed pre-condition is ${indexedPre.show}")

        //  index the variables in post with index
        val (blockEffect, lastIndex) = traceBlockEffect(trace, index, choice)
        //  this renaming should be OK if we do not have quantified
        //  variables and all the vars in the term are free vars
        val indexedPost = post indexedBy {
            case SSymbol(x) => lastIndex.getOrElse(x, 0)
        }
        //  instantiate a solver and check SAT
        isSat(indexedPre & blockEffect & !indexedPost) match {
            //  if Sat, checkPost is false
            case Success(Sat())   => Success(false)

            //  if unSat checkPost is true
            case Success(UnSat()) => Success(true)

            case Success(UnKnown()) =>
                checkPostLogger.error(s"Solver returned UnKnown for check-sat")
                sys.error(s"Solver returned UnKnown for check-sat")

            case Failure(f) =>
                checkPostLogger.error(s"Solver failed to determine sat-status in checkpost $f")
                sys.error(s"Solver failed to determine sat-status in checkpost $f")
        }
    }

}
