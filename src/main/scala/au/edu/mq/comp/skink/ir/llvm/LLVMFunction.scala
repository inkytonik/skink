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
class LLVMFunction(functionDef : FunctionDefinition) extends Attribution with IRFunction {

    import au.edu.mq.comp.automat.auto.{DetAuto, NFA}
    import au.edu.mq.comp.skink.ir.{FailureTrace, Step}
    import au.edu.mq.comp.skink.ir.llvm.LLVMConcurrentAuto
    import au.edu.mq.comp.skink.ir.llvm.LLVMHelper._
    import au.edu.mq.comp.skink.Skink.getLogger
    import org.bitbucket.inkytonik.kiama.relation.Tree
    import org.bitbucket.inkytonik.kiama.==>
    import org.bitbucket.inkytonik.kiama.attribution.Decorators
    import org.bitbucket.inkytonik.kiama.util.{FileSource, Position, Source}
    import org.scalallvm.assembly.AssemblySyntax._
    import org.scalallvm.assembly.AssemblyPrettyPrinter.{any, layout, show}
    import org.scalallvm.assembly.{
        Analyser,
        ElementProperty,
        Property,
        TypeProperty
    }
    import scala.annotation.tailrec
    import scala.collection.immutable.Map
    import scala.collection.mutable.ListBuffer

    val logger = getLogger(this.getClass)
    val programLogger = getLogger(this.getClass, ".program")

    // Implementation of IRFunction interface

    lazy val name : String = nameToString(functionDef.global)

    val function = makeVerifiable

    // An analyser for this function and its associated tree
    val funTree = new Tree[ASTNode, FunctionDefinition](function)
    val funAnalyser = new Analyser(funTree)

    // Gather properties of the function
    val blockMap = Map(function.functionBody.blocks.map(b => (blockName(b), b)) : _*)

    def branchesToBlocks(branches : Seq[Int]) : Seq[Block] = {
        val entryBlock = function.functionBody.blocks(0)
        val (finalBlock, blocks) =
            branches.foldLeft(Option(entryBlock), Vector[Block]()) {
                case ((Some(block), blocks), branch) =>
                    (nextBlock(block, branch), blocks :+ block)
                case ((None, blocks), branch) =>
                    (None, blocks)
            }
        blocks
    }

    // Helper methods

    def makeVerifiable : FunctionDefinition = {
        logger.info(s"makeVerifiable: $name")

        val processedBody = makeErrorsVerifiable(makeThreadVerifiable(functionDef.functionBody))

        // Return the new function
        val ret = functionDef.copy(functionBody = processedBody)
        programLogger.info(s"* Function $name for verification:\n")
        programLogger.info(show(ret))
        programLogger.info(s"\n* AST of function $name for verification:\n\n")
        programLogger.info(layout(any(ret)))
        ret
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
     * And the error block __error.14: call void (...) @__VERIFIER_error() #4 <insns2> <terminator> The metadata from the call is transferred to the new branch so it can
     * recovered later during reporting.
     *
     * Blocks that don't contain a call to __VERIFIER_error are left alone.
     */
    def makeErrorsVerifiable(functionBody : FunctionBody) : FunctionBody = {

        logger.info(s"makeErrorsVerifiable: $name")

        val errorBlocks = new ListBuffer[Block]()

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
                val errorLabel = makeLabelFromPrefix(block.optBlockLabel, "__error")
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
            functionBody.blocks.map(replaceErrorCalls)

        val functionBodyWithErrorBlock =
            FunctionBody(functionBodyWithProcessedBlocks ++ errorBlocks)

        functionBodyWithErrorBlock

    }

    /**
     * Split blocks on global variable access to allow permutations of dependent
     * instructions to be generated between thread functions.
     *
     * Only necessary for functions which are expected to be used in a concurrent
     * program.
     *
     * TODO: Add all types of memory mutation
     */
    def makeThreadVerifiable(functionBody : FunctionBody) : FunctionBody = {

        logger.info(s"makeThreadVerifiable: $name")

        val insertedBlocks = new ListBuffer[Block]()

        def splitOnPredicate(
            insns : List[MetaInstruction],
            pred : MetaInstruction => Boolean
        ) : List[List[MetaInstruction]] =
            insns.span(pred) match {
                case (Nil, Nil) => Nil
                case (Nil, access :: remains) => splitOnPredicate(remains, pred) match {
                    case start :: end => List(access) :: start :: end
                    case Nil          => List(List(access))
                }
                case (remains, Nil)                => List(remains)
                case (previous, access :: remains) => (previous :+ access) :: splitOnPredicate(remains, pred)
            }

        def insertBranchOnGlobalAccess(block : Block) : Block = {
            // Get a list of blocks which contain a global memory access as their last
            // instruction.
            val splitBlocks = splitOnPredicate(
                block.optMetaInstructions.toList,
                i => !isThreadPrimitive(i.instruction) && !isGlobalAccess(i.instruction)
            )
            programLogger.debug(s"Splitblocks: $splitBlocks\n")

            if (splitBlocks.length <= 1) {
                logger.info(s"makeThreadVerifiable: No concurrent operations encountered")
                block
            } else {
                logger.info(s"makeThreadVerifiable: Concurrent operations encountered, inserting new blocks")
                val first = splitBlocks.head
                val rest = splitBlocks.drop(1).dropRight(1)
                val last = splitBlocks.last
                var label = makeLabelFromPrefix(block.optBlockLabel, "__threading")
                // Generate the final block in the function and add it to the list
                insertedBlocks += Block(BlockLabel(label), Vector(), None, last.toVector,
                    block.metaTerminatorInstruction)
                // Working backwards over the list so that we can keep around the label for the next
                // block in the function. This is fine as the actual order of the blocks in the list
                // has no relation to the structure of the function.
                var blockCount = 0
                for (b <- rest.reverse) {
                    val newLabel = makeLabelFromPrefix(block.optBlockLabel, s"__threading.$blockCount")
                    logger.info(s"makeThreadVerifiable: Inserted new block with label $newLabel")
                    insertedBlocks += Block(BlockLabel(newLabel), Vector(), None, b.toVector,
                        MetaTerminatorInstruction(
                            Branch(Label(Local(label))),
                            Metadata(Vector())
                        ))
                    label = newLabel
                    blockCount += 1
                }
                val startBlock = Block(block.optBlockLabel, Vector(), None, first.toVector,
                    MetaTerminatorInstruction(
                        Branch(Label(Local(label))),
                        Metadata(Vector())
                    ))
                startBlock
            }
        }

        val startingBlocks = functionBody.blocks.map(insertBranchOnGlobalAccess)
        val functionBodyWithSplitBlocks = FunctionBody(startingBlocks ++ insertedBlocks)
        functionBodyWithSplitBlocks
    }

    /**
     * Get the block that follows `block` when we make a given branch.
     * Return `None` if there is no such block.
     */
    def nextBlock(block : Block, branch : Int) : Option[Block] = {
        logger.info(s"nextBlock: ${blockName(block)} with branch $branch")
        val optNextBlockLabel =
            block.metaTerminatorInstruction.terminatorInstruction match {
                case Branch(label) if branch == 0 =>
                    Some(label)
                case BranchCond(_, label1, _) if branch == 0 =>
                    Some(label1)
                case BranchCond(_, _, label2) if branch == 1 =>
                    Some(label2)
                case IndirectBr(_, _, labels) if (branch >= 0) && (branch < labels.length) =>
                    Some(labels(branch))
                case Unreachable() =>
                    None
                case insn =>
                    sys.error(s"nextBlock: unexpected terminator insn $insn")
            }
        logger.info(s"nextBlock: got $optNextBlockLabel")
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
