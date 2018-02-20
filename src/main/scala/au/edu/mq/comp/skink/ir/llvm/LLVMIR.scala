package au.edu.mq.comp.skink
package ir.llvm

import au.edu.mq.comp.skink.SkinkConfig
import au.edu.mq.comp.skink.ir.{IR, Trace}
import org.scalallvm.assembly.AssemblySyntax.{Program, Block}
import org.bitbucket.inkytonik.kiama.attribution.Attribution

/**
 * A Thread Identifier.
 */
case class ThreadId(k : Int)

/**
 * Information about a function.
 */
case class FunAnalyser(name : String)

/**
 * A fully-qualified block in a trace.
 *
 * @param   threadId        The thread identifier for this block.
 * @param   funAnalyser     The enclosing function analyser.
 * @param   block           An LLVM block.
 */
case class RichBlock(threadId : ThreadId, funAnalyser : FunAnalyser, block : Block) {
    import org.scalallvm.assembly.AssemblyPrettyPrinter.{show => showllvm}

    def show = {
        s"($threadId, ${funAnalyser.name}) \n${showllvm(block)}"

    }
}

/**
 * A sequence of rich blocks.
 *
 * @param   blocks  The sequence of (rich) blocks that correspind to `trace`
 * @param   trace   A trace in the program.
 */
case class RichBlockTrace(val blocks : Seq[RichBlock], trace : Trace)

/**
 * A state of the program
 *
 * @param   threadLocs
 * @param   syncTokens  Current state of mutexes (locked/unlocked)
 */
case class LLVMState(threadLocs : Map[Int, String], syncTokens : Map[String, Boolean])

/**
 * Representation of LLVM IR.
 */
class LLVMIR(val program : Program, config : SkinkConfig) extends Attribution with IR {

    import org.bitbucket.inkytonik.kiama.attribution.Decorators
    import au.edu.mq.comp.skink.ir.{IRFunction, Trace, Choice, State, FailureTrace, NonDetCall, Step}
    import au.edu.mq.comp.skink.ir.llvm.LLVMHelper._
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.SortedQId
    import org.scalallvm.assembly.AssemblySyntax.{FunctionDefinition}
    import org.scalallvm.assembly.Executor
    import au.edu.mq.comp.skink.Skink.getLogger
    import org.bitbucket.inkytonik.kiama.relation.{EnsureTree, Tree}
    import org.bitbucket.franck44.scalasmt.interpreters.SMTSolver
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2PrettyPrinter.{show => showTerm}
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.{ASTNode => _, _}
    import org.bitbucket.franck44.scalasmt.theories.BoolTerm
    import org.bitbucket.franck44.scalasmt.typedterms.TypedTerm
    import org.scalallvm.assembly.AssemblySyntax._

    import org.scalallvm.assembly.Analyser
    import org.scalallvm.assembly.Analyser.defaultBlockName
    import scala.collection.mutable.{Map => MutableMap}

    val logger = getLogger(this.getClass)
    val cfgLogger = getLogger(this.getClass, ".cfg")
    val programLogger = getLogger(this.getClass, ".program")
    val checkPostLogger = getLogger(this.getClass, ".checkpost")

    // Implementation of IR interface

    def execute() : (String, Int) =
        Executor.execute(program, config.lli())

    /**
     * Pretty print the program
     */
    def show : String =
        org.scalallvm.assembly.AssemblyPrettyPrinter.show(program, 5)

    def sortIds(ids : Vector[String]) : Vector[String] =
        ids.sorted

    /**
     * The name of the file for this program.
     * @note this is required by the Verifiable trait. Ity is the function name for
     * for LLVMFunction but for program we need to define it.
     * FIXME: find a way to display a meaningful name
     */
    def name : String = "FIXME:!get the actual program name!"

    /**
     *  Make the functions in the IR verifiable.
     *  This results in making sure that each block contains at most
     *  one global memory access instruction, and in this case, it is the last one
     *  in the block.
     */
    lazy val functions : Vector[LLVMFunction] =
        program.items.collect {
            case fd : FunctionDefinition =>
                //  Same program with a new functionDefinition
                new LLVMFunction(program, splitGlobalMemAccess(fd), config)

        }

    /**
     * The program in verifiable form.
     */
    lazy val verifiableProgram = Program(program.items.map({
        case fd : FunctionDefinition =>
            funNameToLLVMFun(nameToString(fd.global)).verifiableForm
        case other => other
    }))

    /**
     * Retrieve LLVM function from names.
     */
    lazy val funNameToLLVMFun : Map[String, LLVMFunction] = (functions map {
        case f => (f.name, f)
    }).toMap

    /**
     * A Tree for the verifiable program.
     */
    val progTree = new Tree[ASTNode, Program](verifiableProgram)

    /**
     * An analyser for the program Tree.
     */
    lazy val analyser = new IRAnalyser(progTree)

    /**
     * Find the name of a block. The name may depend on the enclosing function
     * for the first block.
     * @note We use the program analyser to perform thjis task.
     */
    def blockName(b : Block) : String = {
        analyser.blockName(b)
    }

    /**
     *  Retrieve the LLVM function of a given block.
     */
    def enclosingFun(b : Block) : LLVMFunction =
        funNameToLLVMFun(nameToString(analyser.enclosingFun(b).global))

    /**
     * The main function extracted from the verifiable variants.
     *  FIXME: should return an Option[LLVMFunction] as main may not be defined
     */
    lazy val main : LLVMFunction = functions.find(_.name == "main").get

    /**
     * A multi-thread program is verifiable if and only if:
     *    1. main isVerifiable
     *    2. each function called in a pthread_create from main is verifiable
     *
     *  @return     `None` if and only if this program is verifiable. Otherwise, return a
     *              reason that can be displayed to the user for why it is not
     *              verifiable (not 1 or not 2 above).
     */
    override def isVerifiable() : Option[String] =
        main.isVerifiable match {
            case None =>
                //  Main is verifiable
                //  Check that each function called in pthread_create from main is verifiable
                val pthreadCalls : Vector[IRFunction] = main.function.functionBody
                    .blocks
                    .flatMap(
                        //  For each (meta) instruction, collect the name of pthread create
                        b => b.optMetaInstructions.collect({ case PThreadCreate(_, t) => t })
                    )
                    .flatMap(getFunctionByName)
                programLogger.debug(s"Arguments of pthread_create in main: ${(pthreadCalls.map(_.name)).mkString(",")}")

                //  Retrieve each function in the args of pthread_create calls and
                //  check it is verifiable
                val pthreadCallsVerifiableStatus : Vector[String] = pthreadCalls.flatMap(_.isVerifiable)
                if (pthreadCallsVerifiableStatus.isEmpty)
                    //  Every function called in pthread_create is verifiable
                    None
                else
                    //  Some functions are not verifiable, collect the reasons and abort
                    Some(s"""calls to the following functions were not inlined: ${pthreadCallsVerifiableStatus.mkString(", ")}""")

            case Some(s) =>
                //  Main itself is not Verifiable
                Some(s"""Some calls in the main function were not inlined: $s}""")
        }

    /**
     * The verification ready NFA. Uses the verifiable functions.
     */
    lazy val nfa = new LLVMConcurrentAuto(
        functions, main
    )

    //  ----- Some helpers to debug

    val (printNFA, nodeInfo) = org.bitbucket.franck44.automat.util.Determiniser.toDetNFA(
        nfa,
        { x : LLVMState ⇒ x.threadLocs.mkString(",") }
    )

    import org.bitbucket.franck44.dot.DOTSyntax.{Attribute, Ident, StringLit}

    val toPrint = org.bitbucket.franck44.dot.DOTPrettyPrinter.show(
        org.bitbucket.franck44.automat.util.DotConverter.toDot(
            printNFA,
            (b : Int) => {
                val tooltip =
                    Attribute("tooltip", StringLit(nodeInfo(b)))
                List(tooltip)
            }
        )
    )

    cfgLogger.info(s"${toPrint}")

    // -----

    /**
     *  Given a functionDefinition split the blocks to make sure there
     *  is at most one global memory access instruction in each block.
     *
     *  @param  function        The function to rewrite
     *
     *  @return                 Equivalent in semantics to functionDef
     *                          with blocks containing at most one global
     *                          memory access instruction.
     *
     */
    def splitGlobalMemAccess(f : FunctionDefinition) : FunctionDefinition = {

        import org.scalallvm.assembly.AssemblyPrettyPrinter.{show => showFunDef}
        import au.edu.mq.comp.skink.Skink.toDot

        val fname : String = nameToString(f.global)
        programLogger.debug(s"Splitting global memory accesses for function: ${fname}")

        //  Original blocks in function
        val blocks = f.functionBody.blocks
        //  Split blocks
        val newBlocks = blocks.flatMap(splitBlock)

        // Make a copy of f with a new Body consisting of the newBlocks
        val ret = f.copy(functionBody = FunctionBody(newBlocks))

        programLogger.debug(s"Initial function $fname:\n${showFunDef(f)}")
        cfgLogger.info(LLVMFunction(program, ret, config).toDot(Some(s"Split $fname")))
        programLogger.debug(s"Split on global access function $fname:\n${showFunDef(ret)}")
        ret
    }

    /**
     * Prepare the IR for verification and return the
     * new IR form.
     *
     * Split blocks that contain global memory accesses (shared global variables,
     * thread primitives including mutexes). This is done to properly account
     * for interleaving using blocks: as each block contains at most one global
     * memory access, all possible interleaving of dependent instructions are
     * generated by all possible interlavings of blocks.2
     *
     * Example of transformation is, assuming <insns1> <insns2> and <isnsn3>
     * do not contain global accesses:
     *
     * ; <label>:14
     *   <insns1>
     *   %7 = call i32 @pthread_create(...) #6     //  pthread primitive
     *   <insns2>
     *   %10 = load i32, i32* @j, align 4          //  global variable @j
     *   <insn3>
     *   <terminator>
     *
     * is expanded in:
     *
     * ; <label>:14
     *   <insns1>
     *   %7 = call i32 @pthread_create(...) #6     //  pthread primitive
     *   br label __threading.1.14
     *
     *   __threading.1.14:
     *   <insns2>
     *   %10 = load i32, i32* @j, align 4          //  access to global variable @j
     *   br label __threading.2.14
     *
     *   __threading.2.14:
     *   <insn3>
     *   <terminator>
     *
     * If <insn3> is empty, __threading.2.14 is not created but the <terminator> is
     * pushed to block __threading.1.14
     * FIXME: The metadata from the call is transferred to the new branch so it can
     * recovered later during reporting. Is it true?
     *
     * Blocks that don't contain global accesses are left alone.
     */
    def splitBlock(b : Block) : List[Block] = {

        import org.scalallvm.assembly.AssemblyPrettyPrinter.{show => showBlock}

        //  Defines split instructions i.e. global memroiy access instructions
        def isSplit(i : MetaInstruction) = isThreadPrimitive(i.instruction) || isGlobalAccess(i.instruction)

        /* Generation of sub-blocks work as follows:
         * Walk through the instructions in b from first to last.
         * When a global memory access instruction is encountered, split the block.
         *
         * This is implemented in a foldLeft, where the tuple is (n,xl, xb, bLab) with:
         *      n is the number of sub-blocks already created
         *      xl is the current list of instructions collected from start or last split location
         *      xb is the reversed list of sub-blocks already created
         *      bLab is last source block label
         */
        programLogger.debug(s"Start split block labelled: ${showBlock(b.optBlockLabel)} :\n${showBlock(b)}")

        val (k, x, lb, lab) = b.optMetaInstructions.toList.
            foldLeft((0, List[MetaInstruction](), List[Block](), b.optBlockLabel))(
                {
                    //  i is a split. Build a new block with xl::i and reset xl
                    case ((n, xl, xb, bLab), i) if isSplit(i) =>
                        val label = makeLabelFromPrefix(b.optBlockLabel, s"__threading.$n")
                        val newBlock = Block(bLab, Vector(), None, (xl :+ i).toVector,
                            MetaTerminatorInstruction(
                                Branch(Label(Local(label))),
                                Metadata(Vector())
                            ))
                        (n + 1, List(), newBlock :: xb, BlockLabel(label))

                    //  i is not a split. Add it to the current list of instructions
                    case ((n, xl, xb, bLab), i) => (n, xl :+ i, xb, bLab)
                }
            )

        //  Compute the final block split.
        val split = ((lb, x) match {

            case (Block(lab, v, z, xi, _) :: r, List()) =>
                //  If last list of instructions is empty, Replace the metaTerminator
                //  of last block (first element in lb)by the metaterminator of b
                Block(lab, v, z, xi, b.metaTerminatorInstruction) :: r
            case _ =>
                //  If the last list of instructions x is not empty create
                //  a new last block with x with the metaterminator of b
                Block(lab, Vector(), None, x.toVector, b.metaTerminatorInstruction) :: lb
        }).reverse
        programLogger.debug(s"The last list of instructions is: :\n${x.map(l => showBlock(l)).mkString("\n")}")

        programLogger.debug(s"block has $k split instructions and will be split into ${k + 1} blocks as follows\n")
        programLogger.debug(s"${split.map(b => showBlock(b)).mkString("\n")}")

        split
    }

    /**
     * Follow the choices given by a trace to construct the trace of RichBlocks
     * that are executed by the trace. It's useful for this to be an attribute
     * since we may need it more than once if we are doing different things
     * with the trace which mostly required the actual blocks.
     * A RichBlockTrace is a Seq[RichBlock], so even if two blocks have the same name
     * there are two different blocks in the AST.
     */
    lazy val traceToRichBlockTrace : Trace => RichBlockTrace =
        attr {
            case trace =>
                //  Start at first block in main
                val entryBlock : RichBlock = RichBlock(ThreadId(0), FunAnalyser(main.name), main.verifiableForm.functionBody.blocks(0))
                //  Compute sequence of blocks that corresponds to trace
                val (blocks, _) =
                    trace.choices.foldLeft(
                        (
                            Vector[RichBlock](),
                            Map[Int, RichBlock](0 -> entryBlock)
                        )
                    ) {
                            case ((blocks, lastInThread), choice) =>
                                logger.debug(s"-- processing choice $choice")
                                import org.scalallvm.assembly.AssemblyPrettyPrinter.{show => showllvm}

                                //  Determine last block in thread choice.threadId
                                val srcBlock : RichBlock = lastInThread(choice.threadId)
                                logger.debug(s"srcBlock is ${showllvm(srcBlock.block)}")
                                //  Next block in enclosing function of srcBlock
                                val nextBlock : Option[RichBlock] = enclosingFun(srcBlock.block).nextBlock(
                                    srcBlock.block, choice.branchId
                                ) map { b => RichBlock(ThreadId(choice.threadId), FunAnalyser(enclosingFun(srcBlock.block).name), b) }

                                //  Update the threadMap. If no next block set map to previous block.
                                val nextThreadMap = lastInThread.updated(choice.threadId, nextBlock.getOrElse(lastInThread(choice.threadId)))

                                //  Add side effect of thread creation to threadMap
                                val threadCreationMap = srcBlock.block match {

                                    case PThreadCreateBlock((threadName, threadFunName)) =>
                                        //  New thread created calling funName created
                                        logger.debug(s"Creating thread ${lastInThread.keys.max + 1}")
                                        val first = funNameToLLVMFun(threadFunName).verifiableForm.functionBody.blocks(0)
                                        val newThreadId = nextThreadMap.keys.max + 1
                                        (nextThreadMap updated (newThreadId, RichBlock(ThreadId(newThreadId), FunAnalyser(threadFunName), first)))

                                    case _ => nextThreadMap
                                }

                                (blocks :+ srcBlock, threadCreationMap)
                        }
                RichBlockTrace(blocks, trace)
        }

    /**
     * Compute repeated blocks.
     *
     * A repetition of a rich block b at indices i and j iff:
     *
     * - the richblocks b(i) and b(j) are the same (same threadId, function, block)
     * - the Phi instructions at b(i) and b(j) are the same i.e.:
     *      - either b(i) does not have Phi instructions
     *      - or b(i-1) and b(j-1) are the same
     *
     * @param   trace   The trace to compute repetitions in.
     * @return          A list of repetitions
     * @example         List(List(1,3), List(2,4,5)) means that the same block
     *                  occurs at indices 1 and 3 and another block occurs at 2, 4, 5.
     */
    def traceToRepetitions(trace : Trace) : Seq[Seq[Int]] = {

        //  RichBlock trace for trace
        val richBlockTrace = traceToRichBlockTrace(trace)

        // Build the steps between optional previous richblock and next richblock,
        // but only include a previous block if the current block has phi insns
        // (and hence the previous block can affect the behaviour of the current
        // block). We do this with richblocks.
        val (_, steps) = richBlockTrace.blocks.foldLeft(
            //  thread a Map giving the last block in a thread and the result list
            //  of pairs (prevBlock, block)
            (Map[ThreadId, RichBlock](), List[(Option[RichBlock], RichBlock)]())
        ) {
                case ((lastBlockInThread, blockPairs), richBlock) =>

                    val prevBlock = if (richBlock.block.optMetaPhiInstructions.isEmpty)
                        None
                    else {
                        // retrieve previous block in this thread (or None if none)
                        lastBlockInThread.get(richBlock.threadId)
                    }
                    //  Add the pair of RichBlocks (prev, current) to the result
                    (lastBlockInThread.updated(richBlock.threadId, richBlock),
                        blockPairs :+ ((prevBlock, richBlock)))
            }
        logger.debug(s"steps for $trace: $steps")

        // Combine steps with their indices, accumulate indices for same step,
        // throw away steps, turn into Seq
        steps.zipWithIndex.foldLeft(Map[(Option[RichBlock], RichBlock), Vector[Int]]()) {
            case (m, (k, i)) =>
                val s = m.getOrElse(k, Vector())
                m.updated(k, s :+ i)
        }.values.toIndexedSeq
    }

    /**
     * Return the values that are returned by `__VERIFIER_nondet_T` functions.
     */
    def traceToNonDetValues(failTrace : FailureTrace) : List[NonDetCall] = {
        import org.scalallvm.assembly.AssemblyPrettyPrinter.{show => showllvm}
        import org.bitbucket.inkytonik.kiama.rewriting.Rewriter.collectl

        val blockTrace = traceToRichBlockTrace(failTrace.trace)
        val traceTree = new Tree[Product, RichBlockTrace](blockTrace, EnsureTree)
        val namer = new LLVMTraceNamer(program, traceTree)

        //  FIXME: probably won't work when tested. The name should be nameOf() ?
        def getIndexedVarName(to : Name) : String = {
            val varName = showllvm(to)
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

    /**
     * Construct the sequence of logical terms for a given trace
     *
     * @param   trace       The trace to encode
     */
    def traceToTerms(trace : Trace) : Seq[TypedTerm[BoolTerm, Term]] = {
        import org.scalallvm.assembly.AssemblyPrettyPrinter.{show => showBlock}
        logger.debug(s"traceToTerms for trace $trace")

        // Make the block trace with ThreadId and enclosing function
        // that corresponds to this trace and set it
        // up so we can do context-dependent computations on it.
        val traceTree = new Tree[Product, RichBlockTrace](
            traceToRichBlockTrace(trace),
            EnsureTree
        )

        // If blocks occur more than once in the block trace they will be
        // shared. We need each instance to be treated separately so we use
        // the block trace after it has been made into a proper tree (EnsureTree).
        val treeBlockTrace = traceTree.root

        // A namer and termBuilder for the program and the trace
        val namer = new LLVMTraceNamer(verifiableProgram, traceTree)
        val termBuilder = new LLVMTermBuilder(blockName, namer, config)

        // First term with global vars and initialisations
        val initTerm = termBuilder.initTerm(verifiableProgram)

        // Return the terms corresponding to the traced blocks, not including
        // the last step since that is to the error block.
        val blockTerms = trace.choices.init.zipWithIndex.map {
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

    import org.bitbucket.inkytonik.kiama.util.{FileSource, Position, Source}

    def getSourceLineText(source : Source, line : Int) : String =
        source.optLineContents(line).getOrElse("").trim

    //  Uses the program analyser instead of previous funAnalyser
    def getCodeLine(node : ASTNode, metadata : Metadata) : (Option[Int], Option[String]) =
        analyser.instructionPosition(program, node, metadata) match {
            case Some(Position(termLine, _, termSource)) =>
                val termCode = getSourceLineText(termSource, termLine)
                (Some(termLine), Some(termCode))
            case _ =>
                (None, None)
        }

    def traceBlockEffect(trace : Trace, index : Int, branch : Int) : (TypedTerm[BoolTerm, Term], Map[String, Int]) = {

        logger.debug(s"traceBlockEffect for $trace at $index and branch $branch")

        val blocks = traceToRichBlockTrace(trace)
        if ((index < 0) || (index >= blocks.blocks.length))
            sys.error(s"traceBlockEffect: trace length is ${blocks.blocks.length} so index ${index} is out of range")

        // Get a tree for the relevant block
        val blockTree = new Tree[Product, RichBlock](blocks.blocks(index))
        val block = blockTree.root

        val namer = new LLVMTraceNamer(verifiableProgram, blockTree)
        val termBuilder = new LLVMTermBuilder(blockName, namer, config)

        // Make a single term for this block and branch
        val term = termBuilder.combineTerms(termBuilder.blockTerms(block.block, None, branch))

        logger.debug(s"Term is $term")

        // Return the term and the name mapping that applies after the block
        (term, namer.stores(block))

    }

    import scala.util.{Failure, Success, Try}

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

    import org.bitbucket.franck44.automat.auto.{NFA, DetAuto}

    /**
     * Compute a refinement from a trace for this function
     */
    def buildRefinement(
        trace : Trace,
        info : Option[String] = None
    ) : NFA[_, Choice] = {
        verifier.interpolant.InterpolantAuto.buildInterpolantAuto(this, trace.choices, info.getOrElse("0").toInt, fromEnd = true)
    }

    /**
     * Return an error trace if any.
     *
     * @param   r   A refinement
     * @return      An error trace not in the refinement.
     */
    def getErrorTrace(r : NFA[_, Choice]) = {
        import org.bitbucket.franck44.automat.lang.Lang
        (Lang(nfa) \ Lang(r)).getAcceptedTrace.map(Trace(_))
    }

    def traceToSteps(failTrace : FailureTrace) : Seq[Step] =
        traceToRichBlockTrace(failTrace.trace).blocks.map {
            block =>
                val (optFileName, optBlockCode) =
                    Analyser.blockPosition(program, block.block) match {
                        case Some(Position(blockLine, _, blockSource @ FileSource(fileName, _))) =>
                            (Some(fileName), Some(getSourceLineText(blockSource, blockLine)))
                        case _ =>
                            (None, None)
                    }
                val optBlockName = Some(blockName(block.block))
                val (optTermLine, optTermCode) =
                    block.block.metaTerminatorInstruction match {
                        case MetaTerminatorInstruction(insn, metadata) =>
                            getCodeLine(insn, metadata)
                    }
                Step(optFileName, optBlockName, optBlockCode, optTermCode, optTermLine)
        }
}
