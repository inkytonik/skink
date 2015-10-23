package au.edu.mq.comp.perentiemq.cfg

import org.scalallvm.assembly.AssemblySyntax._

/**
 * CFG builder for LLVM assembly functions.
 */
trait AssemblyCFGBuilder extends CFGBuilder[FunctionDefinition,Block] {

    import au.edu.mq.comp.automat.auto.NFA
    import au.edu.mq.comp.automat.edge.Edge
    import au.edu.mq.comp.automat.edge.Implicits._
    import org.kiama.relation.Bridge
    import org.scalallvm.assembly.AssemblyPrettyPrinter
    import scala.collection.mutable.ListBuffer

    def render (astNode : ASTNode) : String =
        AssemblyPrettyPrinter.format (astNode).layout

    def blockName (block : Block) : String =
        block.optBlockLabel match {
            case BlockLabel (s)    => s
            case ImplicitLabel (i) => s"%$i"
            case NoLabel ()        => "%0"
        }

    def isExit (block : Block) : Boolean =
        block.metaTerminatorInstruction.terminatorInstruction match {
            case _ : Ret | _ : RetVoid | _ : Unreachable =>
                true
            case _ =>
                false
        }

    def blocksOf (function : FunctionDefinition) : Vector[CFGBlock[FunctionDefinition,Block]] =
        function.functionBody.blocks.map {
            case block =>
                CFGBlock (Bridge (block), exitOf (block))
        }

    def exitOf (block : Block) : CFGExit[FunctionDefinition,Block] =
        block.metaTerminatorInstruction.terminatorInstruction match {

            // Any exit block
            case _ if (isExit (block)) =>
                CFGExit (Vector ())

            // Unconditional branch
            case Branch (Label (label)) =>
                CFGExit (Vector (CFGGoto (render (label))))

            // Two-sided conditional branch
            case BranchCond (cmp, Label (trueLabel), Label (falseLabel)) =>
                val name = render (cmp)
                CFGExit (Vector (CFGChoice (name, true, render (trueLabel)),
                                 CFGChoice (name, false, render (falseLabel))))

            // Multi-way branch
            case Switch (IntT (_), cmp, Label (dfltLabel), cases) =>
                val name = render (cmp)
                val caseToExitCond : Case => CFGExitCond[FunctionDefinition,Block] = {
                    case Case (_, value, Label (label)) =>
                        CFGChoice (name, value, render (label))
                }
                val choices = cases.map (caseToExitCond)
                CFGExit (choices :+ CFGGoto (render (dfltLabel)))

            case i =>
                sys.error (s"exitOf: terminator not handled: $i")

        }

    def functionName (function : FunctionDefinition) : String =
        render (function.global)

    // Verification support

    /**
     * Extractor to match various forms of calls to verifier functions,
     * returning the function name. The main reason for the differences
     * between the forms seems to be whether a correct prototype is
     * available when the LLVM IR is produced. To simplify things, we
     * don't assume that the proper prototype is there, so we support
     * these multiple forms.
     */
    object VerifierFunction {
        def unapply (v : CalledValue) : Option[Name] =
            v match {
                case Function (Named (name)) =>
                    Some (name)
                case Function (Const (ConvertC (Bitcast (), _, NameC (name), _))) =>
                    Some (name)
                case _ =>
                    None
            }
    }

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
        //
        // We also accept calls to plain "assert" instead of "__VERIFIER_assert".

        def expandAssertCalls (block : Block) : Vector[Block] = {

            type MetaInstructions = Vector[MetaInstruction]

            val blockname = blockName (block)
            val errorLabel = Label (Local (".error"))

            /*
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
             * Matcher for assertion function names.
             */
            object AssertName {
                def unapply (name : Name) : Boolean =
                    (name == Global ("__VERIFIER_assert")) ||
                    (name == Global ("assert"))
            }

            /**
             * Predicate to identify an assert call in SV-COMP form. The value
             * should be the one that is asserted.
             */
            def isAssertCall (insn : MetaInstruction, local : Local) : Boolean =
                insn.instruction match {
                    case Call (_, _, _, _, _, VerifierFunction (AssertName ()),
                               Vector (ValueArg (IntT (size), Vector (), Named (arg))),
                               _)
                            if (size == 32) && (local == arg) =>
                        true
                    case _ =>
                        false
                }

            /*
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

            /*
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
                    Block (thisBlockLabel, Vector (), None, group.insns, block.metaTerminatorInstruction)
                } else {
                    val nextLabel = Label (Local (s"${blockname.drop(1)}.${n + 1}"))
                    val metaTerminator =
                        MetaTerminatorInstruction (BranchCond (group.value, nextLabel, errorLabel),
                                                   Metadata (Vector ()))
                    if (n == 0) {
                        // First block gets the original phi and landing pad insns,
                        // plus new terminator
                        Block (block.optBlockLabel, block.optMetaPhiInstructions, None, group.insns, metaTerminator)
                    } else {
                        // Other blocks just have the new terminator
                        Block (thisBlockLabel, Vector (), None, group.insns, metaTerminator)
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

        val errorBlock = Block (BlockLabel ("%.error"), Vector (),
                                None, Vector (),
                                MetaTerminatorInstruction (RetVoid (), Metadata (Vector ())))

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

    // Conversion of CFG to an NFA

    /**
     * Build an NFA that represents the error traces through this CFG.
     * States are blocks of the CFG. Edges are labelled with entries that
     * describe the transition represented by the edge. The only accepting
     * state of the NFA is the .error block (if it exists).
     *
     * We have two main cases for encoding a possible transition src->tgt
     * from the CFG in the NFA:
     *
     *  1. The transition is unconditional (CFGGoto). The NFA gets an edge
     *  from src->tgt labelled with the effect of src.
     *
     *  2. The transition is conditional (CFGChoice). We introduce an
     *  intermediate node srcaux and two edges: one from src->srcaux
     *  labelled with the effect of src, and one from srcaux->tgt labelled
     *  with the exit condition frmo the choice.
     *
     * These cases are adjusted if a block begins with phi insns. If there
     * are no phi insns, then the block is represented by a single state in
     * the NFA. If phi insns such as
     *     %10 = phi i1 [ false, %0 ], [ %8, %6 ]
     *     %11 = phi i32 [ 0, %0 ], [ %nextindvar, %6 ]
     * are present at the start of a block tgt, we express the effect of the
     * phi in the NFA, not in the main effect of tgt. In this example, we
     * get:
     *   - n tgt.phi.p blocks, where n is the number of predecessor blocks
     *     and p is the name of the predecessor, e.g.
     *       tgt.phi.%0, tgt.phi.%6
     *   - the content of the tgt.phi.p blocks is the effect of making the
     *     nth choice, e.g.,
     *       tgt.phi.%0: %10 := false; %11 := 0
     *       tgt.phi.%6: %10 := %8; %11 := %nextindvar
     *   - edges from the relevant src to tgt.phi.p, e.g.
     *       %0->tgt.phi.%0 and %6->tgt.phi.%6
     *   - block tgt which contains the non-phi contents of the original block
     *   - edges tgt.phi.p->tgt
     */
    lazy val nfa : CFG[FunctionDefinition,Block] => CFGNFA = {
        attr {
            case cfg @ CFG (_, blocks) =>

                val analyser = new CFGAnalyser (cfg)
                import analyser._

                val init = Set (name (entry (cfg)))
                val buf = new ListBuffer[Edge[String,CFGEntry[FunctionDefinition,Block]]]
                val accepting = Set ("%.error")

                /**
                 * The block name representing entry to `tgtblock` from a block
                 * named `src`. If `tgtblock` doesn't have any phi instructions, then
                 * this is just the name of `tgtblock`. Otherwise it is that name
                 * with `phi.src` appended.
                 */
                def phiBlockName (tgtblock : CFGBlock[FunctionDefinition,Block], src : String) : String = {
                    val tgt = name (tgtblock)
                    val tgteffect = tgtblock.block.cross
                    if (tgteffect.optMetaPhiInstructions.isEmpty)
                        tgt
                    else
                        s"$tgt.phi.$src"
                }

                /**
                 * If a src block has no phi insns, return it unchanged. Otherwise,
                 * create the blocks that encapsulate the effects of the phi insns
                 * for each predecessor. Add NFA edges to link the phi blocks with
                 * the predecessors and the returned block which is the src block
                 * with the phi insns removed.
                 */
                def processPhis (srcblock : CFGBlock[FunctionDefinition,Block]) : Block = {
                    val block = srcblock.block.cross
                    val effectMap =
                        block.optMetaPhiInstructions.flatMap {
                            case MetaPhiInstruction (Phi (Binding (to), tipe, preds), _) =>
                                for (PhiPredecessor (v, l) <- preds)
                                    yield (l, (to, tipe, v))
                        }.groupBy (_._1)
                    if (effectMap.isEmpty)
                        block
                    else {
                        val src = name (srcblock)
                        for ((Label (fromlocal), effects) <- effectMap) {
                            val insns =
                                effects.map {
                                    case (_, (to, tipe, v)) =>
                                        MetaInstruction (
                                            Convert (Binding (to), Bitcast (), tipe, v, tipe),
                                            Metadata (Vector ()))
                                }
                            val term = MetaTerminatorInstruction (Branch (Label (Local (src))),
                                                                  Metadata (Vector ()))
                            val from = render (fromlocal)
                            val phi = phiBlockName (srcblock, from)
                            val phieffect = Block (BlockLabel (phi), Vector (), None, insns, term)
                            buf += (phi ~> src) (CFGBlockEntry (phieffect))
                        }
                        block.copy (optMetaPhiInstructions = Vector ())
                    }
                }

                val edges = {
                    for (srcblock <- cfgBlocks (cfg)) {
                        val src = name (srcblock)
                        val srcaux = s"$src.aux"
                        val srceffect = processPhis (srcblock)
                        for (exitcond <- srcblock.exitInfo.conditions) {
                            target (exitcond) match {
                                case Some (tgtblock) =>
                                    val tgt = phiBlockName (tgtblock, src)
                                    exitcond match {
                                        case _ : CFGGoto[_,_] =>
                                            buf += (src ~> tgt) (CFGBlockEntry (srceffect))
                                        case _ : CFGChoice[_,_,_] =>
                                            buf ++= Seq (
                                                (src ~> srcaux) (CFGBlockEntry (srceffect)),
                                                (srcaux ~> tgt) (CFGExitCondEntry (exitcond))
                                            )
                                    }
                                case None =>
                                    // Do nothing
                            }
                        }
                    }
                    buf.toSet
                }

                NFA (init, edges, accepting)
        }

    }

}
