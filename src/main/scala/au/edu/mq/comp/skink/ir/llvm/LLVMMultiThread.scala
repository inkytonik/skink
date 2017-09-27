package au.edu.mq.comp.skink.ir

package llvm

import au.edu.mq.comp.skink.SkinkConfig

import au.edu.mq.comp.skink.verifier.Verifiable
import org.bitbucket.franck44.automat.auto.DetAuto
import org.scalallvm.assembly.AssemblySyntax.Block
import scala.collection.immutable.Map
import scala.collection.mutable.{Map => MutableMap}
import org.bitbucket.inkytonik.kiama.attribution.Attribution
import org.scalallvm.assembly.AssemblySyntax.{ASTNode, FunctionDefinition, Program}

case class LLVMState(threadLocs : Map[Int, String], syncTokens : Map[String, Boolean])

class LLVMMultiThread(ir : IR, config : SkinkConfig)
        extends Attribution with IRMultiThread {

    import org.bitbucket.franck44.automat.auto.{NFA, DetAuto}
    import au.edu.mq.comp.skink.ir.{FailureTrace, NonDetCall, Step}
    import au.edu.mq.comp.skink.ir.llvm.LLVMHelper._
    import au.edu.mq.comp.skink.Skink.getLogger
    import org.bitbucket.franck44.scalasmt.interpreters.SMTSolver
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2PrettyPrinter.{show => showTerm}
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.{ASTNode => _, _}
    import org.bitbucket.franck44.scalasmt.theories.BoolTerm
    import org.bitbucket.franck44.scalasmt.typedterms.TypedTerm
    import org.bitbucket.inkytonik.kiama.relation.{EnsureTree, Tree}
    import org.bitbucket.inkytonik.kiama.rewriting.Rewriter.collectl
    import org.bitbucket.inkytonik.kiama.util.{FileSource, Position, Source}
    import org.scalallvm.assembly.AssemblySyntax._
    import org.scalallvm.assembly.AssemblyPrettyPrinter.{any, layout, show}
    import org.scalallvm.assembly.Analyser
    import org.scalallvm.assembly.Analyser.defaultBlockName
    import scala.collection.mutable.ListBuffer
    import scala.util.{Failure, Success, Try}

    val logger = getLogger(this.getClass)
    val programLogger = getLogger(this.getClass, ".program")
    val checkPostLogger = getLogger(this.getClass, ".checkpost")

    // An analyser for the verifiable version of this function and its associated tree

    lazy val funTree = new Tree[ASTNode, FunctionDefinition](ir.main.makeVerifiable)
    lazy val funAnalyser = new Analyser(funTree)

    // def blockName(block : Block) =
    //     funAnalyser.blockName(block)

    //  get main from ir.functions
    val main = ir.functions.find(_.name == "main").get.asInstanceOf[LLVMFunction]

    // Gather properties of the function

    // lazy val blockMap = Map(makeVerifiable.functionBody.blocks.map(b => (blockName(b), b)) : _*)

    // Implementation of IRFunction interface

    lazy val name : String = "name" //ir.program.name
    // nameToString(function.global)

    /**
     * The verification ready NFA
     */
    lazy val nfa : DetAuto[LLVMState, Choice] = new LLVMConcurrentAuto(ir, main)

    /**
     * Return `None` if this function is verifiable. Otherwise, return a
     * reason that can be displayed to the user for why it is not
     * verifiable. Currently, the only reason is that some function
     * calls have not been inlined.
     */
    def isVerifiable() : Option[String] = {

        //  nonInlinedCall except IgnoredFunction
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

        //  Set of entry point functions ie. argument of pthread_create
        //  TODO: test it!!
        def entryPointFunctions : Set[LLVMFunction] = Set()

        //  nonInlinedCall in a block
        def nonInlinedCalls(block : Block) : Vector[String] =
            block.optMetaInstructions.flatMap(nonInlinedCall)

        //  Names of the non properly inlined calls
        def nonInlinedCallNames : Set[String] =
            entryPointFunctions.flatMap(_.function.functionBody.blocks.map(nonInlinedCalls).flatten.toSet)

        //  If one entry point is not inlined, not verifiable
        if (nonInlinedCallNames.isEmpty)
            None
        else
            Some(s"""calls to the following functions were not inlined: ${nonInlinedCallNames.mkString(", ")}""")

    }

    /**
     * Combine terms via conjunction, dealing with teh case where there are no
     * terms so effect is "true". THe namer is used to access the underlying
     * term operations.
     */
    def combineTerms(namer : LLVMNamer, terms : Seq[TypedTerm[BoolTerm, Term]]) : TypedTerm[BoolTerm, Term] = {
        import org.bitbucket.franck44.scalasmt.theories.Core
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

        // The term for the effects of program initialisation
        val initTerm = termBuilder.initTerm(ir.program)

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
                    termBuilder.blockTerms(block, optPrevBlock, choice.branchId)
            }.map(termBuilder.combineTerms)

        // Prepend the global initialisation terms to the terms of the first block
        if (blockTerms.isEmpty)
            Seq(initTerm)
        else
            termBuilder.combineTerms(Seq(initTerm, blockTerms.head)) +: blockTerms.tail

    }

    def traceToSteps(failTrace : FailureTrace) : Seq[Step] = {

        def blockName(block : Block) : String =
            defaultBlockName(block, funAnalyser.anonArgCount.toString)

        traceToBlockTrace(failTrace.trace).blocks.map {
            block =>
                val (optFileName, optBlockCode) =
                    Analyser.blockPosition(ir.program, block) match {
                        case Some(Position(blockLine, _, blockSource @ FileSource(fileName, _))) =>
                            (Some(fileName), Some(getSourceLineText(blockSource, blockLine)))
                        case _ =>
                            (None, None)
                    }
                val optBlockName = Some(blockName(block))
                val (optTermLine, optTermCode) =
                    block.metaTerminatorInstruction match {
                        case MetaTerminatorInstruction(insn, metadata) =>
                            getCodeLine(insn, metadata)
                    }
                Step(optFileName, optBlockName, optBlockCode, optTermCode, optTermLine)
        }
    }

    // Helper methods

    // /**
    //  * Prepare the IR of a function for verification and return the
    //  * new IR form. The transformation is:
    //  *
    //  * Replace blocks that contain a call to the __VERIFIER_error
    //  * function after an assertion has failed to a branch to a
    //  * __error block. In detail, look for a block of this form
    //  *
    //  * ; <label>:14
    //  *   <insns1>
    //  *   call void (...) @__VERIFIER_error() #4
    //  *   <insns2>
    //  *   <terminator>
    //  *
    //  * and replace it with one of this form
    //  *
    //  * ; <label>:14
    //  *   <insns1>
    //  *   br label __error.14 #4
    //  *
    //  * And the error block
    //  *
    //  *  __error.14:
    //  *   call void (...) @__VERIFIER_error() #4
    //  *   <insns2>
    //  *   <terminator>
    //  *
    //  * The metadata from the call is transferred to the new branch so it can
    //  * recovered later during reporting.
    //  *
    //  * Blocks that don't contain a call to __VERIFIER_error are left alone.
    //  */
    // lazy val makeVerifiable : FunctionDefinition = {
    //
    //     logger.info(s"makeVerifiable: $name")
    //
    //     val errorBlocks = new ListBuffer[Block]()
    //
    //     def makeErrorLabel(label : OptBlockLabel) : String =
    //         label match {
    //             case BlockLabel(label) =>
    //                 s"__error.$label"
    //             case ImplicitLabel(num) =>
    //                 s"__error.$num"
    //             case NoLabel() =>
    //                 s"__error.nolabel"
    //         }
    //
    //     def isNotErrorCall(insn : MetaInstruction) : Boolean =
    //         insn match {
    //             case MetaInstruction(
    //                 Call(
    //                     _, _, _, _, _,
    //                     VerifierFunction(Global("__VERIFIER_error")),
    //                     _, _
    //                     ),
    //                 _
    //                 ) =>
    //                 false
    //             case _ =>
    //                 true
    //         }
    //
    //     def replaceErrorCalls(block : Block) : Block = {
    //         val (before, after) = block.optMetaInstructions.span(isNotErrorCall)
    //         if (after.isEmpty)
    //             block
    //         else {
    //             val errorLabel = makeErrorLabel(block.optBlockLabel)
    //             val errorBlock =
    //                 Block(BlockLabel(errorLabel), Vector(), None, after,
    //                     block.metaTerminatorInstruction)
    //             errorBlocks += errorBlock
    //             Block(block.optBlockLabel, Vector(), None, before,
    //                 MetaTerminatorInstruction(
    //                     Branch(Label(Local(errorLabel))),
    //                     Metadata(Vector())
    //                 ))
    //         }
    //     }
    //
    //     val functionBodyWithProcessedBlocks =
    //         function.functionBody.blocks.map(replaceErrorCalls)
    //
    //     val functionBodyWithErrorBlock =
    //         FunctionBody(functionBodyWithProcessedBlocks ++ errorBlocks)
    //
    //     // Return the new function
    //     val ret = function.copy(functionBody = functionBodyWithErrorBlock)
    //     programLogger.debug(s"* Function $name for verification:\n")
    //     programLogger.debug(show(ret))
    //     programLogger.debug(s"\n* AST of function $name for verification:\n\n")
    //     programLogger.debug(layout(any(ret)))
    //     ret
    //
    // }

    def getSourceLineText(source : Source, line : Int) : String =
        source.optLineContents(line).getOrElse("").trim

    def getCodeLine(node : ASTNode, metadata : Metadata) : (Option[Int], Option[String]) =
        funAnalyser.instructionPosition(ir.program, node, metadata) match {
            case Some(Position(termLine, _, termSource)) =>
                val termCode = getSourceLineText(termSource, termLine)
                (Some(termLine), Some(termCode))
            case _ =>
                (None, None)
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
            trace.choices.foldLeft((Option(entryBlock), Vector[Block]())) {
                case ((Some(block), blocks), choice) =>
                    (nextBlock(block, choice.branchId), blocks :+ block)
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
                    trace.choices.foldLeft((Option(entryBlock), Vector[Block]())) {
                        case ((Some(block), blocks), choice) =>
                            (nextBlock(block, choice.branchId), blocks :+ block)
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
        solver : SMTSolver
    ) : Try[Boolean] = {

        import org.bitbucket.franck44.scalasmt.theories.Core
        import org.bitbucket.franck44.scalasmt.typedterms.{Commands}

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

    /**
     * Return the values that are returned by `__VERIFIER_nondet_T` functions.
     */
    def traceToNonDetValues(failTrace : FailureTrace) : List[NonDetCall] = {
        val blockTrace = traceToBlockTrace(failTrace.trace)
        val traceTree = new Tree[Product, BlockTrace](blockTrace, EnsureTree)
        val namer = new LLVMFunctionNamer(funAnalyser, funTree, traceTree)

        def termToCValue(term : Term) : Int =
            term match {
                case ConstantTerm(NumLit(i))                        => i.toInt
                case NegTerm(ConstantTerm(NumLit(i)))               => -1 * i.toInt
                case QIdTerm(SimpleQId(SymbolId(SSymbol("true"))))  => 1
                case QIdTerm(SimpleQId(SymbolId(SSymbol("false")))) => 0
                case _ =>
                    sys.error(s"traceToNonDetValues: unexpected value ${showTerm(term)}")
            }

        def getValue(to : Name, tipe : String) : Option[Int] = {
            val varName = show(to)
            val sort = if (tipe == "bool") BoolSort() else IntSort()
            val qid = SortedQId(SymbolId(ISymbol(varName, namer.indexOf(to, varName))), sort)
            failTrace.values.get(qid) match {
                case Some(value) =>
                    Some(termToCValue(value.t))
                case None =>
                    logger.info(s"traceToNonDetValues: can't find witness value for ${showTerm(qid.id)}, using default")
                    None
            }
        }

        collectl {
            case MetaInstruction(call @ NondetFunctionCall(binding, tipe), metadata) =>
                val value = binding match {
                    case Binding(to) => getValue(to, tipe)
                    case NoBinding() => None
                }
                val (optCode, optLine) = getCodeLine(call, metadata)
                NonDetCall(tipe, value, optLine, optCode)
        }(blockTrace.blocks)
    }

    /**
     * Compute a refinement from a trace for this function
     */
    def buildRefinement(
        trace : Trace,
        info : Option[String] = None
    ) : NFA[_, Choice] = {
        NFA[Int, Choice](Set(), Set(), Set())
    }

    /**
     * Return an error trace if any.
     *
     * @param   r   A refinement
     * @return      An error trace not in the refinement.
     */
    def getErrorTrace(r : NFA[_, Choice]) = {
        None
    }
}