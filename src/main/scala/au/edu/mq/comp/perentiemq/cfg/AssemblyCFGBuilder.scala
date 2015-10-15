package au.edu.mq.comp.perentiemq.cfg

import org.scalallvm.assembly.AssemblySyntax._

/**
 * CFG builder for LLVM assembly functions.
 */
trait AssemblyCFGBuilder extends CFGBuilder[FunctionDefinition,Block] {

    import org.kiama.relation.Bridge
    import org.scalallvm.assembly.AssemblyPrettyPrinter

    def render (astNode : ASTNode) : String =
        AssemblyPrettyPrinter.format (astNode).layout

    def blockName (function : FunctionDefinition, block : Block) : String =
        block.optBlockLabel match {
            case BlockLabel (s)    => s
            case ImplicitLabel (i) => s"%$i"
            case NoLabel ()        => "<no label>"
        }

    def isEntry (function : FunctionDefinition, block : Block) : Boolean =
        function.functionBody.blocks.head == block

    def isExit (function : FunctionDefinition, block : Block) : Boolean =
        block.terminatorInstruction match {
            case _ : Ret | _ : RetVoid | _ : Unreachable =>
                true
            case _ =>
                false
        }

    def blocksOf (function : FunctionDefinition) : Vector[CFGBlock[FunctionDefinition,Block]] =
        function.functionBody.blocks.map {
            case block =>
                CFGBlock (Bridge (block), exitOf (function, block))
        }

    def exitOf (function : FunctionDefinition, block : Block) : CFGExit[FunctionDefinition,Block] =
        block.terminatorInstruction match {

            // Any exit block
            case _ if (isExit (function, block)) =>
                CFGExit (Vector ())

            // Unconditional branch
            case Branch (Label (Local (label))) =>
                CFGExit (Vector (CFGGoto (label)))

            // Two-sided conditional branch
            case BranchCond (cmp, Label (Local (trueLabel)), Label (Local (falseLabel))) =>
                val name = render (cmp)
                CFGExit (Vector (CFGChoice (name, true, trueLabel),
                                 CFGChoice (name, false, falseLabel)))

            // Multi-way branch
            case Switch (IntT (_), cmp, Label (Local (dfltlabel)), cases) =>
                val name = render (cmp)
                val caseToExitCond : Case => CFGExitCond[FunctionDefinition,Block] = {
                    case Case (_, value, Label (Local (label))) =>
                        CFGChoice (name, value, label)
                }
                val choices = cases.map (caseToExitCond)
                CFGExit (choices :+ CFGGoto (dfltlabel))

            case i =>
                sys.error (s"exitOf: terminator not handled: $i")

        }

    def functionName (function : FunctionDefinition) : String =
        render (function.global)

    // Verification support

    /**
     * Prepare the IR of a function for verification and return the
     * new IR form. The transformations are:
     *
     * - remove calls to __VERIFIER_assert and replace them with
     * transfers to a special .error block. We assume there is no
     * such block already.
     */
    def makeVerifiable (function : FunctionDefinition) : FunctionDefinition = {

        import org.kiama.rewriting.Rewriter.{everywhere, rewrite, rule}
        import scala.collection.mutable.ListBuffer

        // Process each block looking for __VERIFIER_assert calls. We
        // assume they are of the following form which is how clang
        // generates them at present from the SV-COMP code:
        //    %conv = zext i1 %cmp to i32
        //    call void @__VERIFIER_assert(i32 %conv)
        //    ... rest of block ...
        // %cmp contains the actual condition being tested.
        // We find pairs of instructions of this form and replace them with:
        //    br i1 %cmp, label %name, label .error
        //  name:
        //    ... rest of block ...
        // where name is a generated name for the rest of the block. In
        // other words, the block is split at this point and control only
        // transfer to the rest of the block if the condition is true.

        def expandAssertCalls (block : Block) : Vector[Block] = {

            val assertname = "__VERIFIER_assert"

            type MetaInstructions = Vector[MetaInstruction]

            val blockname = blockName (function, block)
            val errorLabel = Label (Local (".error"))

            /**
             * Predicate to identify the conversion operation that precedes
             * an assert call. If one is found, return the value that is
             * converted and the value that it is converted to.
             */
            def isAssertionConversion (insn : MetaInstruction) : Option[(Named, Local)] =
                insn.instruction match {
                    case Convert (Binding (to : Local), ZExt (), IntT (fromsize), from : Named, IntT (tosize))
                            if (fromsize == 1) && (tosize == 32) =>
                        Some ((from, to))
                    case _ =>
                        None
                }

            /**
             * Extractor to match various forms of calls to assert function.
             * The main reason for the differences seems to be whether a
             * correct prototype is available when the LLVM IR is produced.
             * To simplify things, we don't assume that the proper prototype
             * is there, so we support these multiple forms.
             */
            object AssertFunction {
                def unapply (v : CalledValue) : Boolean =
                    v match {
                        case Function (Named (Global (`assertname`))) =>
                            true
                        case Function (Const (ConvertC (Bitcast (), _, NameC (Global (`assertname`)), _))) =>
                            true
                        case _ =>
                            false
                    }
            }

            /**
             * Predicate to identify an assert call in SV-COMP form. The value
             * should be the one that is asserted.
             */
            def isAssertCall (insn : MetaInstruction, local : Local) : Boolean =
                insn.instruction match {
                    case Call (_, _, _, _, _, AssertFunction (),
                               Vector (ValueArg (IntT (size), Vector (), Named (arg))),
                               _)
                            if (size == 32) && (local == arg) =>
                        true
                    case _ =>
                        false
                }

            /**
             * Find next assert call, return instructions before and after, plus
             * the value on which the call is made. Return None if there is no
             * assert call.
             */
            def findAssert (insns : MetaInstructions) : Option[(MetaInstructions, MetaInstructions, Named)] = {
                var index = 0
                while (index < insns.size) {
                    isAssertionConversion (insns (index)) match {
                        case Some ((from, to)) =>
                            if ((index < insns.size - 1) && isAssertCall (insns (index + 1), to)) {
                                val (before, after) = insns.splitAt (index)
                                return Some ((before, after.tail.tail, from))
                            } else
                                index = index + 1
                        case None =>
                            index = index + 1
                    }
                }
                None
            }

            /*
             * A straight-line group of instructions from the original block
             * that terminate with an assertion on value.
             */
            case class Group (insns : MetaInstructions, value : Named)

            /**
             * Make groups of instructions. A new group is begun if an assert
             * call is detected. The value of the last group is a dummy.
             */
            def makeGroups (insns : MetaInstructions) : Vector[Group] =
                findAssert (insns) match {
                    case None =>
                        Vector (Group (insns, Named (Local ("dummy"))))
                    case Some ((before, after, value)) =>
                        Group (before, value) +: makeGroups (after)
                }

            val groups : Vector[Group] = makeGroups (block.optMetaInstructions)
            val numgroups = groups.size

            /*
             * Make a new block for the given group which is the nth group in the
             * block of which there are numgroups groups.
             */
            def makeBlock (group : Group, n : Int, numgroups : Int) : Block = {
                val thisBlockLabel = BlockLabel (s"$blockname.$n")
                if (n == numgroups - 1) {
                    // Last block gets the original terminator insn
                    Block (thisBlockLabel, Vector (), None, group.insns, block.terminatorInstruction)
                } else {
                    val nextLabel = Label (Local (s"$blockname.${n + 1}"))
                    val terminator = BranchCond (group.value, nextLabel, errorLabel)
                    if (n == 0) {
                        // First block gets the original phi and landing pad insns,
                        // plus new terminator
                        Block (block.optBlockLabel, block.optPhiInstructions, None, group.insns, terminator)
                    } else {
                        // Other blocks just have the new terminator
                        Block (thisBlockLabel, Vector (), None, group.insns, terminator)
                    }
                }
            }

            numgroups match {
                case 1 =>
                    Vector (block)
                case numgroups =>
                    for ((group, index) <- groups.zipWithIndex)
                        yield makeBlock (group, index, numgroups)
            }

        }

        val functionBodyWithProcessedBlocks =
            function.functionBody.blocks.flatMap (expandAssertCalls)

        // Add the error block.
        //  .error:
        //    ret void

        val errorBlock = Block (BlockLabel (".error"), Vector (),
                                None, Vector (), RetVoid ())

        val functionBodyWithErrorBlock =
            FunctionBody (functionBodyWithProcessedBlocks :+ errorBlock)

        // Return the new function
        function.copy (functionBody = functionBodyWithErrorBlock)

    }

    // Top-level interface

    /**
     * Build and return the CFGs for the functions in `program`. If the
     * flag `forVerification` is true then the IR will be prepared for
     * verification before the CFGs are created (default: false).
     */
    def buildCFGs (program : Program, forVerification : Boolean = false) : Vector[CFG[FunctionDefinition,Block]] =
        program.items.collect {
            case fd : FunctionDefinition =>
                cfg (if (forVerification) makeVerifiable (fd) else fd)
        }

}
