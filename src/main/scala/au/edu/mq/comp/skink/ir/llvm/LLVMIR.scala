package au.edu.mq.comp.skink.ir.llvm

import au.edu.mq.comp.skink.SkinkConfig
import au.edu.mq.comp.skink.ir.IR
import org.scalallvm.assembly.AssemblySyntax.Program
import scala.collection.immutable.Map

/**
 * Representation of LLVM IR.
 */
class LLVMIR(val program : Program, config : SkinkConfig) extends IR {

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
    import org.scalallvm.assembly.AssemblyPrettyPrinter
    import org.scalallvm.assembly.Executor
    import org.scalallvm.assembly.Analyser.{metadata, filepath}
    import org.scalallvm.assembly.{
        Analyser,
        ElementProperty,
        Property,
        TypeProperty
    }
    import org.scalallvm.assembly.AssemblyPrettyPrinter.{show => showBlock}
    import scala.collection.mutable.{Map => MutableMap}
    import au.edu.mq.comp.skink.Skink.getLogger

    private val logger = getLogger(this.getClass)

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
        AssemblyPrettyPrinter.show(program, 5)

    /**
     * Follow the choices given by a trace to construct the trace of blocks
     * that are executed by the trace.
     */
    def traceToBlockTrace(trace : Trace) : BlockTrace = {
        import org.scalallvm.assembly.AssemblyPrettyPrinter.{any, layout}
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

    /*
     * Construct the sequence of SMT terms for a given trace
     */
    def traceToTerms(trace : Trace) : Seq[TypedTerm[BoolTerm, Term]] = {
        // Take a block trace and return a new block trace that includes only blocks and choices 
        // relevant for the thread with supplied threadId
        def filterThreadBlocks(threadId : Int, globalBlocks : BlockTrace) : BlockTrace = {
            val blocks = globalBlocks.blocks.zip(globalBlocks.trace.choices.map(_.threadId)).filter(_._2 == threadId).map(_._1)
            BlockTrace(blocks, new Trace(globalBlocks.trace.choices.filter(_.threadId == threadId)))
        }

        import org.bitbucket.inkytonik.kiama.relation.Tree
        import au.edu.mq.comp.skink.ir.llvm.LLVMTermBuilder.combineTerms

        // Make the block trace that corresponds to this trace and set it
        // up so we can do context-dependent computations on it.
        val blockTrace = traceToBlockTrace(trace)
        val traceTree = new Tree[Product, BlockTrace](blockTrace)

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
        val blocks = traceToBlockTrace(failTrace.trace).blocks
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
                logger.debug(s"got $optFileName and $optBlockCode for ${showBlock(block)}")
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
