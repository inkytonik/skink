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

    import org.bitbucket.franck44.automat.auto.NFA
    import au.edu.mq.comp.skink.ir.{FailureTrace, NonDetCall, Step}
    import au.edu.mq.comp.skink.ir.llvm.LLVMHelper._
    import au.edu.mq.comp.skink.Skink.getLogger
    import org.bitbucket.franck44.scalasmt.interpreters.SMTSolver
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2PrettyPrinter.{show => showTerm}
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.{ASTNode => _, _}
    import org.bitbucket.franck44.scalasmt.theories.{BoolTerm, Core}
    import org.bitbucket.franck44.scalasmt.typedterms.{TypedTerm, Value}
    import org.bitbucket.inkytonik.kiama.relation.{EnsureTree, Tree}
    import org.bitbucket.inkytonik.kiama.rewriting.Rewriter.collectl
    import org.bitbucket.inkytonik.kiama.util.{FileSource, Position, Source}
    import org.scalallvm.assembly.AssemblySyntax.{True => _, Value => LLVMValue, _}
    import org.scalallvm.assembly.AssemblyPrettyPrinter.{any, layout, show}
    import org.scalallvm.assembly.Analyser
    import scala.collection.mutable.ListBuffer
    import scala.util.{Failure, Success, Try}

    object BoolOps extends Core
    import BoolOps._

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

        def nonInlinedCallNames : Set[String] =
            function.functionBody.blocks.map(nonInlinedCalls).flatten.toSet

        if (nonInlinedCallNames.isEmpty)
            None
        else
            Some(s"""calls to the following functions were not inlined: ${nonInlinedCallNames.mkString(", ")}""")

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
        val initTerm = termBuilder.initTerm(program)

        // If blocks occur more than once in the block trace they will be
        // shared. We need each instance to be treated separately so we use
        // the block trace after it has been made into a proper tree.
        val treeBlockTrace = traceTree.root

        // Return the terms corresponding to the traced blocks, not including
        // the last step since that is to the error block. A trace with a
        // single choice doesn't have an error block. This can't occur during
        // verification but is useful for testing.
        val blockTerms =
            trace.choices.size match {
                case 0 =>
                    sys.error("traceToTerms: unexpected empty trace")
                case 1 =>
                    val terms = termBuilder.blockTerms(treeBlockTrace.blocks(0), None, trace.choices(0))
                    Seq(termBuilder.combineTerms(terms))
                case _ =>
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
            }

        // Prepend the global initialisation terms to the terms of the first block
        if (blockTerms.isEmpty)
            Seq(initTerm)
        else
            termBuilder.combineTerms(Seq(initTerm, blockTerms.head)) +: blockTerms.tail

    }

    def traceToSteps(failTrace : FailureTrace) : Seq[Step] =
        traceToBlockTrace(failTrace.trace).blocks.map {
            block =>
                val (optFileName, optBlockCode) =
                    Analyser.blockPosition(program, block) match {
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

    // Helper methods

    /**
     * Build the Control Flow Graph NFA for the function.
     */
    def buildNFA(function : FunctionDefinition) : NFA[String, Int] = {

        import org.bitbucket.franck44.automat.edge.LabDiEdge
        import org.bitbucket.franck44.automat.edge.Implicits._

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
     * Prepare the IR of a function for verification by transforming it
     * and return the new IR form.
     */
    lazy val makeVerifiable : FunctionDefinition =
        removeVectorOps(fixErrorCalls(function))

    /**
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
    def fixErrorCalls(function : FunctionDefinition) : FunctionDefinition = {

        logger.info(s"fixErrorCalls: $name")

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
                val errorLabel = makeErrorLabel(block.optBlockLabel)
                val errorBlock =
                    Block(BlockLabel(errorLabel), Vector(), None, after,
                        block.metaTerminatorInstruction)
                errorBlocks += errorBlock
                Block(block.optBlockLabel, block.optMetaPhiInstructions,
                    block.optMetaLandingPadInstruction, before,
                    MetaTerminatorInstruction(
                        Branch(Label(Local(errorLabel))),
                        after(0).metadata
                    ))
            }
        }

        val functionBodyWithProcessedBlocks =
            function.functionBody.blocks.map(replaceErrorCalls)

        val functionBodyWithErrorBlock =
            FunctionBody(functionBodyWithProcessedBlocks ++ errorBlocks)

        // Return the new function
        val ret = function.copy(functionBody = functionBodyWithErrorBlock)
        programLogger.debug(s"* Function $name after fixErrorCalls:\n")
        programLogger.debug(show(ret))
        programLogger.debug(s"\n* AST of function $name after fixErrorCalls:\n\n")
        programLogger.debug(layout(any(ret)))
        programLogger.debug("\n\n")
        ret

    }

    /**
     * Remove vector operations. We assume that these have been flattened
     * to separate operations on the scalar elements. This only works if
     * the vector indices are constants, but that seems to be what Clang
     * does in common cases.
     */
    def removeVectorOps(function : FunctionDefinition) : FunctionDefinition = {

        logger.info(s"removeVectorOps: $name")

        def elemName(name : Name, index : Int) : Name =
            name match {
                case Global(s) =>
                    Global(s"${s}_$index")
                case Local(s) =>
                    Local(s"${s}_$index")
            }

        def sourceElem(source : LLVMValue, index : Int) : LLVMValue =
            source match {
                case Named(vector) =>
                    Named(elemName(vector, index))
                case Const(VectorC(elems)) =>
                    Const(elems(index).constantValue)
                case Const(UndefC()) =>
                    Const(UndefC())
                case _ =>
                    sys.error(s"sourceElem: unexpected source ${show(source)}")
            }

        def move(to : Name, fromElem : LLVMValue, tipe : Type, metadata : Metadata) : MetaInstruction =
            MetaInstruction(
                Binary(Binding(to), FAdd(Vector()), tipe, fromElem, Const(FloatC("0"))),
                metadata
            )

        def binaryVectorOpToOps(insn : MetaInstruction, to : Name, op : BinOp, n : Int, tipe : Type, left : LLVMValue, right : LLVMValue, metadata : Metadata) : Vector[MetaInstruction] =
            (0 until n).map {
                case i =>
                    MetaInstruction(
                        Binary(Binding(elemName(to, i)), op, tipe, sourceElem(left, i), sourceElem(right, i)),
                        metadata
                    )
            }.toVector

        def insertElementToMoves(insn : MetaInstruction, to : Name, n : Int, tipe : Type, source : LLVMValue, from : LLVMValue, index : Int, metadata : Metadata) : Vector[MetaInstruction] =
            (0 until n).map {
                case i =>
                    val fromElem = if (i == index) from else sourceElem(source, i)
                    move(elemName(to, i), fromElem, tipe, metadata)
            }.toVector

        def extractElementToMove(insn : MetaInstruction, to : Name, n : Int, tipe : Type, source : LLVMValue, index : Int, metadata : Metadata) : MetaInstruction =
            move(to, sourceElem(source, index), tipe, metadata)

        def shuffleVectorToMoves(insn : MetaInstruction, to : Name, n : Int, tipe : Type, left : LLVMValue, right : LLVMValue, m : Int, mask : LLVMValue, metadata : Metadata) : Vector[MetaInstruction] =
            (0 until m).map {
                case maskIndex =>
                    val index =
                        mask match {
                            case Const(ZeroC()) =>
                                0
                            case Const(VectorC(elems)) =>
                                elems(maskIndex).constantValue match {
                                    case IntC(i) =>
                                        i.toInt
                                    case UndefC() =>
                                        0 // Dummy
                                    case _ =>
                                        sys.error(s"shuffleVectorToMoves: unexpected mask element ${longshow(elems(maskIndex))} in ${longshow(insn)}")
                                }
                            case _ =>
                                sys.error(s"shuffleVectorToMoves: unexpected mask value ${longshow(mask)} in ${longshow(insn)}")
                        }
                    if ((index >= 0) && (index < 2 * n)) {
                        val fromElem = if (index < n) sourceElem(left, index) else sourceElem(right, index - n)
                        move(elemName(to, maskIndex), fromElem, tipe, metadata)
                    } else
                        sys.error(s"insnTerm: unexpected mask index $index in ${longshow(insn)}")
            }.toVector

        def removeFromPhis(insns : Vector[MetaPhiInstruction]) : Vector[MetaPhiInstruction] =
            insns.foldLeft(Vector[MetaPhiInstruction]()) {
                case (insns, MetaPhiInstruction(Phi(Binding(to), VectorT(n, _), preds), metadata)) =>
                    sys.error(s"removeFromPhis: removing vector phis not supported yet")
                case (insns, insn) =>
                    insns :+ insn
            }

        def removeFromInsns(insns : Vector[MetaInstruction]) : Vector[MetaInstruction] =
            insns.foldLeft(Vector[MetaInstruction]()) {
                case (insns, insn @ MetaInstruction(Binary(Binding(to), op, VectorT(n, tipe @ RealT(_)), left, right), metadata)) =>
                    insns ++ binaryVectorOpToOps(insn, to, op, n.toInt, tipe, left, right, metadata)
                case (insns, insn @ MetaInstruction(InsertElement(Binding(to), VectorT(n, tipe @ RealT(_)), source, RealT(_), from, IntT(_), Const(IntC(index))), metadata)) =>
                    insns ++ insertElementToMoves(insn, to, n.toInt, tipe, source, from, index.toInt, metadata)
                case (insns, insn @ MetaInstruction(ExtractElement(Binding(to), VectorT(n, tipe @ RealT(_)), source, IntT(_), Const(IntC(index))), metadata)) =>
                    insns :+ extractElementToMove(insn, to, n.toInt, tipe, source, index.toInt, metadata)
                case (insns, insn @ MetaInstruction(ShuffleVector(Binding(to), VectorT(n, tipe @ RealT(_)), left, _, right, VectorT(m, IntT(_)), mask), metadata)) =>
                    insns ++ shuffleVectorToMoves(insn, to, n.toInt, tipe, left, right, m.toInt, mask, metadata)
                case (insns, insn) =>
                    insns :+ insn
            }

        def removeVectorOpsFromBlock(block : Block) : Block =
            block.copy(
                optMetaPhiInstructions = removeFromPhis(block.optMetaPhiInstructions),
                optMetaInstructions = removeFromInsns(block.optMetaInstructions)
            )

        val functionBodyWithoutVectorOps =
            FunctionBody(function.functionBody.blocks.map(removeVectorOpsFromBlock))

        // Return the new function
        val ret = function.copy(functionBody = functionBodyWithoutVectorOps)
        programLogger.debug(s"* Function $name after removeVectorOps:\n")
        programLogger.debug(show(ret))
        programLogger.debug(s"\n* AST of function $name after removeVectorOps:\n\n")
        programLogger.debug(layout(any(ret)))
        programLogger.debug("\n")
        ret

    }

    def getSourceLineText(source : Source, line : Int) : String =
        source.optLineContents(line).getOrElse("").trim

    def getCodeLine(node : ASTNode, metadata : Metadata) : (Option[Int], Option[String]) =
        funAnalyser.instructionPosition(program, node, metadata) match {
            case Some(Position(termLine, _, termSource)) =>
                val termCode = getSourceLineText(termSource, termLine)
                (Some(termLine), Some(termCode))
            case _ =>
                (None, None)
        }

    def traceToRepetitions(trace : Trace) : Seq[Seq[Int]] = {

        val blocks = traceToBlockTrace(trace).blocks

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
        val blocks = traceToBlockTrace(trace).blocks
        if ((index < 0) || (index >= blocks.length))
            sys.error(s"traceBlockEffect: trace length is ${blocks.length} so index ${index} is out of range")
        val blockTree = new Tree[Product, Block](blocks(index))
        val block = blockTree.root

        // Get a function-specifc namer and term builder
        val namer = new LLVMFunctionNamer(funAnalyser, funTree, blockTree)
        val termBuilder = new LLVMTermBuilder(funAnalyser, namer, config)

        // Make a single term for this block and choice
        val optPrevBlock = if (index == 0) None else Some(blocks(index - 1))
        val term = termBuilder.combineTerms(termBuilder.blockTerms(block, optPrevBlock, choice))

        // Return the term and the name mapping that applies after the block
        (term, namer.stores(block))

    }

    /**
     * Follow the choices given by a trace to construct the trace of blocks
     * that are executed by the trace. It's useful for this to be an attribute
     * since we may need it more than once if we are doing different things
     * with the trace which mostly required the actual blocks.
     */
    lazy val traceToBlockTrace : Trace => BlockTrace =
        attr {
            case trace =>
                val entryBlock = makeVerifiable.functionBody.blocks(0)
                val (finalBlock, blocks) =
                    trace.choices.foldLeft((Option(entryBlock), Vector[Block]())) {
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
                case _ : Ret | RetVoid() if choice == 0 =>
                    None
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

        def getIndexedVarName(to : Name) : String = {
            val varName = show(to)
            makeIndexedVarName(varName, namer.indexOf(to, varName))
        }

        collectl {
            case MetaInstruction(call @ NondetFunctionCall(binding, tipe), metadata) =>
                val value = binding match {
                    case Binding(to) =>
                        failTrace.values.get(getIndexedVarName(to))
                    case NoBinding() =>
                        None
                }
                val (optCode, optLine) = getCodeLine(call, metadata)
                NonDetCall(tipe, value, optLine, optCode)
        }(blockTrace.blocks)

    }

}
