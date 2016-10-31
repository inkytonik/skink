package au.edu.mq.comp.skink.ir.llvm

import au.edu.mq.comp.skink.SkinkConfig
import au.edu.mq.comp.skink.ir.IR
import org.scalallvm.assembly.AssemblySyntax.Program
import scala.collection.immutable.Map
import org.bitbucket.inkytonik.kiama.attribution.Attribution

/**
 * Representation of LLVM IR.
 */
class LLVMIR(val program : Program, config : SkinkConfig) extends Attribution with IR {

    import org.bitbucket.inkytonik.kiama.relation.Tree
    import org.bitbucket.inkytonik.kiama.util.{FileSource, Position, Source}
    import au.edu.mq.comp.skink.ir.{IRFunction, Choice, Trace, FailureTrace, Step}
    import au.edu.mq.comp.skink.ir.llvm.LLVMHelper._
    import au.edu.mq.comp.smtlib.typedterms.TypedTerm
    import au.edu.mq.comp.smtlib.theories.BoolTerm
    import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax.Term
    import org.scalallvm.assembly.AssemblySyntax.{
        Block,
        FunctionDefinition,
        GlobalVariableDefinition,
        MetaTerminatorInstruction
    }
    import org.scalallvm.assembly.AssemblyPrettyPrinter.{any, layout, show => showAsm}
    import org.scalallvm.assembly.Executor
    import org.scalallvm.assembly.Analyser.{metadata, filepath}
    import org.scalallvm.assembly.{
        Analyser,
        ElementProperty,
        Property,
        TypeProperty
    }
    import scala.collection.mutable.{Map => MutableMap}
    import au.edu.mq.comp.skink.Skink.getLogger
    import au.edu.mq.comp.skink.ir.llvm.LLVMTermBuilder.combineTerms

    val logger = getLogger(this.getClass)
    val programLogger = getLogger(this.getClass, ".program")
    val checkPostLogger = getLogger(this.getClass, ".checkpost")

    val initTerm = new LLVMTermBuilder(new LLVMInitNamer, config).initTerm(program)

    def execute() : (String, Int) =
        Executor.execute(program, config.lli())

    lazy val functions : Vector[LLVMFunction] =
        program.items.collect {
            case fd : FunctionDefinition =>
                new LLVMFunction(fd)
        }

    lazy val globalVars : Vector[GlobalVariableDefinition] =
        program.items.collect {
            case g : GlobalVariableDefinition => g
        }

    def getBlockByName(threadId : Int, blockName : String) : Block =
        functionIds.get(threadId).get.blockMap.get(blockName).get

    val main = functions.filter(_.name == "main").head
    var functionIds = MutableMap(0 -> main)
    lazy val dca = new LLVMConcurrentAuto(this)

    lazy val name : String =
        filepath(metadata(program)) match {
            case Some(name) => name
            case None       => "unknown name"
        }

    def show : String =
        showAsm(program, 5)

    /**
     * Follow the choices given by a trace to construct the trace of blocks
     * that are executed by the trace. It's useful for this to be an attribute
     * since we may need it more than once if we are doing different things
     * with the trace which mostly required the actual blocks.
     */
    lazy val blockTrace : Trace => BlockTrace =
        attr {
            case trace =>
                import scala.collection.mutable.ListBuffer

                var threadBlocks = Map[Int, Block]()
                val blocks = new ListBuffer[Block]()
                for (c <- trace.choices) {
                    logger.debug(s"doing choice $c with blocks ${blocks.map(blockName(_))}")
                    val threadFn = dca.getFunctionById(c.threadId).get
                    val currBlock = threadBlocks.get(c.threadId) match {
                        case Some(block) => block
                        case None        => threadFn.function.functionBody.blocks(0)
                    }
                    threadBlocks = threadBlocks - c.threadId
                    threadFn.nextBlock(currBlock, c.branchId) match {
                        case Some(block) => threadBlocks = threadBlocks + (c.threadId -> block)
                        case None        =>
                    }
                    assert(threadBlocks.get(c.threadId).get != currBlock)
                    blocks += currBlock
                    logger.debug(s"blocks ${blocks.map(blockName(_))}")
                }
                BlockTrace(blocks.toList, trace)
        }

    // Take a block trace and return a new block trace that includes only blocks and choices 
    // relevant for the thread with supplied threadId
    def filterThreadBlocks(threadId : Int, globalBlocks : BlockTrace) : BlockTrace = {
        val blocks = globalBlocks.blocks.zip(globalBlocks.trace.choices.map(_.threadId)).filter(_._2 == threadId).map(_._1)
        BlockTrace(blocks, new Trace(globalBlocks.trace.choices.filter(_.threadId == threadId)))
    }

    /*
     * Construct the sequence of SMT terms for a given trace
     */
    def traceToTerms(trace : Trace) : Seq[TypedTerm[BoolTerm, Term]] = {

        // Make the block trace that corresponds to this trace and set it
        // up so we can do context-dependent computations on it.
        val blocks = blockTrace(trace)
        val traceTree = new Tree[Product, BlockTrace](blocks)

        // If blocks occur more than once in the block trace they will be
        // shared. We need each instance to be treated separately so we use
        // the block trace after it has been made into a proper tree.
        val treeBlockTrace = traceTree.root

        // Get a global namer and term builder
        val globalNamer = new LLVMGlobalNamer(traceTree)
        val globalBuilder = new LLVMTermBuilder(globalNamer, config)

        // Construct a block trace of only the relevant blocks for each function and build
        // a map of builders to be used for each unique function 
        val funBlockTraces = functionIds.map(f => (f._1, filterThreadBlocks(f._1, treeBlockTrace)))
        val funBuilders = functionIds.map(
            f =>
                (
                    f._1,
                    new LLVMTermBuilder(
                        new LLVMFunctionNamer(
                            f._2.funAnalyser,
                            f._2.funTree,
                            new Tree[Product, BlockTrace](
                                funBlockTraces.get(f._1).get
                            ),
                            f._1,
                            globalNamer
                        ),
                        config
                    )
                )
        )

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
                val namer = funBuilders.get(choice.threadId).get
                logger.debug(s"generating term for block ${blockName(block)} with choice $choice with namer $namer")
                namer.blockTerms(block, optPrevBlock, choice.branchId)
        }.map(combineTerms)

        // Prepend the global initialisation terms to the terms of the first block
        if (blockTerms.isEmpty)
            Seq(initTerm)
        else
            combineTerms(Seq(initTerm, blockTerms.head)) +: blockTerms.tail
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

    def traceBlockEffect(trace : Trace, index : Int, branch : Int) : (TypedTerm[BoolTerm, Term], Map[String, Int]) = {

        // Get a tree for the relevant block

        val blocks = blockTrace(trace).blocks
        if ((index < 0) || (index >= blocks.length))
            sys.error(s"traceBlockEffect: trace length is ${blocks.length} so index ${index} is out of range")
        val blockTree = new Tree[Product, Block](blocks(index))
        val block = blockTree.root

        // Get a function-specifc namer and term builder
        val threadId = trace.choices(index).threadId
        val function = functionIds.get(threadId).get
        val globalNamer = new LLVMGlobalNamer(blockTree)
        val namer = new LLVMFunctionNamer(function.funAnalyser, function.funTree, blockTree, threadId, globalNamer)
        val termBuilder = new LLVMTermBuilder(namer, config)

        // Make a single term for this block and branch
        val term = combineTerms(termBuilder.blockTerms(block, None, branch))

        // Return the term and the name mapping that applies after the block
        (term, namer.stores(block))

    }

    import au.edu.mq.comp.smtlib.interpreters.ExtendedSMTLIB2Interpreter
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
        choice : Choice,
        post : TypedTerm[BoolTerm, Term]
    )(
        implicit
        solver : ExtendedSMTLIB2Interpreter
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
        val (blockEffect, lastIndex) = traceBlockEffect(trace, index, choice.branchId)
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

    /*
     * Build a sequence of steps connecting original source program with an error trace
     */
    def traceToSteps(failTrace : FailureTrace) : Seq[Step] = {

        def getSourceLine(source : Source, line : Int) : String =
            source.optLineContents(line).getOrElse("").trim

        // Workaround for ensuring that the error block we produce in the witness is correct
        // Lookup the label that leads into the error block (ie. which branches to an __error label)
        // inside the original untransformed function of the thread upon which the error occurs.
        // Then we concatenate it to the end of the blocks in our block trace, dropping the
        // previous terminating block.
        val blocks = blockTrace(failTrace.trace).blocks
        val errorFunction = functionIds.get(failTrace.trace.choices.last.threadId).get
        val lastBlock = errorFunction.functionDef.functionBody.blocks.filter(blockName(_) == blockName(blocks.last)).head
        val combinedBlocks = blocks.init :+ lastBlock

        combinedBlocks.zip(failTrace.trace.choices).map {
            case (block, choice) =>
                val (optFileName, optBlockCode) =
                    Analyser.blockPosition(program, block) match {
                        case Some(Position(blockLine, _, blockSource @ FileSource(fileName, _))) =>
                            (Some(fileName), Some(getSourceLine(blockSource, blockLine)))
                        case _ =>
                            (None, None)
                    }
                logger.debug(s"got $optFileName and $optBlockCode for ${showAsm(block)}")
                val optBlockName = Some(blockName(block))
                val function = functionIds.get(choice.threadId).get
                val (optTermLine, optTermCode) =
                    block.metaTerminatorInstruction match {
                        case MetaTerminatorInstruction(insn, metadata) =>
                            function.funAnalyser.instructionPosition(program, insn, metadata) match {
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
}
