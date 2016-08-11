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

    object termStuff extends Core with IntegerArithmetics with ArrayExInt with ArrayExOperators
    import termStuff.{True => STrue, False => SFalse, _}

    val logger = getLogger(this.getClass)
    val programLogger = getLogger(this.getClass, ".program")

    // Version of LLVM PP show that avoids line-wrapping
    def longshow(n : ASTNode) : String =
        show(n, 1000)

    // Gather properties of the function

    val funtree = new Tree[ASTNode, FunctionDefinition](function)
    val funanalyser = new Analyser(funtree)
    val properties = funanalyser.propertiesOfFunction(funtree.root)
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
        val decorators = new Decorators(tree)

        import tree._
        import decorators._

        // Chain keeping track of stores to memory. Each assignment to a
        // local variable or store to memory location is counted so that
        // we can treat each such occurrence in SSA form.

        type StoreMap = Map[String, Int]

        lazy val stores : Chain[StoreMap] =
            chain(storesin)

        def bumpcount(m : StoreMap, name : Name) : StoreMap = {
            val s = show(name)
            val count = m.getOrElse(s, 0)
            m.updated(s, count + 1)
        }

        def storesin(in : Product => StoreMap) : Product ==> StoreMap = {
            case _ : BlockTrace =>
                Map[String, Int]()
            case n @ Binding(name) =>
                bumpcount(in(n), name)
            case n @ Store(_, tipe, from, _, ArrayElement(name, _), _) =>
                bumpcount(in(n), name)
            case n @ Store(_, _, _, _, Named(name), _) =>
                bumpcount(in(n), name)
        }

        /*
         * Retrieve the index of a particular occurrence of a program variable
         * in a trace.
         */
        def indexOf(use : Product, s : String) : Int = {
            stores(use).get(s).getOrElse(0)
        }

        /*
         * Return terms that express the effect of an LLVM node, including of
         * phi insns given entry to the block from a particular previous block
         * (if there is one), and exit from this block using a particular choice.
         */
        def blockTerms(block : Block, optPrevBlock : Option[Block], choice : Int) : Vector[TypedTerm[BoolTerm, Term]] = {
            logger.info(s"blockTerms: $name block ${blockName(block)}")
            val phiEffects = block.optMetaPhiInstructions.map(i => phiInsnTerm(i, optPrevBlock))
            val effects = block.optMetaInstructions.map(insnTerm)
            val exitEffect = exitTerm(block.metaTerminatorInstruction, choice)
            val allEffects = phiEffects ++ effects :+ exitEffect
            allEffects.filter(_ != STrue())
        }

        /*
         * Return a term that expresses the effect of an LLVM phi instruction
         * given that control comes from a particular previous block (if any).
         */
        def phiInsnTerm(metaInsn : MetaPhiInstruction, optPrevBlock : Option[Block]) : TypedTerm[BoolTerm, Term] = {
            val insn = metaInsn.phiInstruction
            val term : TypedTerm[BoolTerm, Term] =
                optPrevBlock match {
                    case Some(prevBlock) =>
                        val prevLabel = blockName(prevBlock)
                        insn match {
                            case insn @ Phi(Binding(to), tipe, preds) =>
                                // Bound phi result, find value
                                preds.find(_.label == prevLabel) match {
                                    case Some(pred) =>
                                        equality(to, tipe, pred.value, tipe)
                                    case None =>
                                        sys.error(s"phiInsnTerm: can't find $prevLabel in $insn")
                                }
                            case Phi(NoBinding(), _, _) =>
                                // No effect since result of phi is not bound
                                STrue()
                        }
                    case None =>
                        // No previous block so phi insns don't make sense...
                        STrue()
                }
            logger.debug(s"phiInsnTerm:${longshow(insn)} -> ${showTerm(term.termDef)}")
            term
        }

        /*
         * Return a term that expresses the effect of an LLVM terminator instruction
         * that exits a block using a particular choice.
         * Exits or choices are integers >=0, typically 0 and 1 for an if-then-else, 0 for
         * a non-conditional exit.
         */
        def exitTerm(metaInsn : MetaTerminatorInstruction, choice : Int) : TypedTerm[BoolTerm, Term] = {
            val insn = metaInsn.terminatorInstruction
            val term =
                insn match {
                    case Branch(label) if choice == 0 =>
                        STrue()

                    case BranchCond(value, label1, label2) if choice == 0 =>
                        vtermB(value)

                    case BranchCond(value, label1, label2) if choice == 1 =>
                        !vtermB(value)

                    case insn =>
                        sys.error(s"exitTerm: can't handle choice $choice of $insn")
                }
            logger.debug(s"exitTerm: choice $choice of${longshow(insn)} -> ${showTerm(term.termDef)}")
            term
        }

        /*
         * Return a term that expresses the effect of a regular LLVM instruction.
         */
        def insnTerm(metaInsn : MetaInstruction) : TypedTerm[BoolTerm, Term] = {
            val insn = metaInsn.instruction
            val term =
                insn match {

                    /*
                     * Ignore stack memory allocation.
                     */
                    case _ : Alloca =>
                        STrue()

                    /*
                     * Boolean binary operation (`left` `op` `right` into `to`).
                     */
                    case Binary(Binding(to), op, BoolT(), left, right) =>
                        val lterm = vtermB(left)
                        val rterm = vtermB(right)
                        val exp =
                            op match {
                                case _ : And => lterm & rterm
                                case _ : Or  => lterm | rterm
                                case _ : XOr => lterm xor rterm
                                case _ =>
                                    sys.error(s"binary Boolean op $op not handled")
                            }
                        ntermB(to) === exp

                    /*
                     * Integer binary operation (`left` `op` `right` into `to`).
                     */
                    case Binary(Binding(to), op, IntT(_), left, right) =>
                        val lterm = vtermI(left)
                        val rterm = vtermI(right)
                        val exp =
                            op match {
                                case _ : Add  => lterm + rterm
                                case _ : Mul  => lterm * rterm
                                case _ : SDiv => lterm / rterm
                                case _ : SRem => lterm % rterm
                                case _ : Sub  => lterm - rterm
                                case _ =>
                                    sys.error(s"binary integer op $op not handled")
                            }
                        ntermI(to) === exp

                    // Call to `assume`
                    case Call(_, _, _, _, _, VerifierFunction(AssumeName()), Vector(ValueArg(tipe, Vector(), arg)), _) =>
                        tipe match {
                            case BoolT() => vtermB(arg)
                            case IntT(_) => !(vtermI(arg) === 0)
                            case _ =>
                                sys.error(s"insnTerm: unexpected type $tipe in assume call")
                        }

                    // Call to `nondet_*`
                    case Call(Binding(to), _, _, _, _, VerifierFunction(NondetFunctionName(tipe)), Vector(), _) =>
                        STrue()

                    case Call(_, _, _, _, _, IgnoredFunction(), _, _) =>
                        STrue()

                    // Compare two Boolean values

                    case Compare(Binding(to), ICmp(icond), BoolT(), left, right) =>
                        val lterm = vtermB(left)
                        val rterm = vtermB(right)
                        val exp =
                            icond match {
                                case EQ() => lterm === rterm
                                case NE() => !(lterm === rterm)
                                case _ =>
                                    sys.error(s"Boolean comparison $icond not handled")
                            }
                        ntermB(to) === exp

                    // Compare two integer or pointer values

                    case Compare(Binding(to), ICmp(icond), ComparisonType(), left, right) =>
                        val lterm = vtermI(left)
                        val rterm = vtermI(right)
                        val exp =
                            icond match {
                                case EQ()  => lterm === rterm
                                case NE()  => !(lterm === rterm)
                                case UGT() => lterm > rterm
                                case UGE() => lterm >= rterm
                                case ULT() => lterm < rterm
                                case ULE() => lterm <= rterm
                                case SGT() => lterm > rterm
                                case SGE() => lterm >= rterm
                                case SLT() => lterm < rterm
                                case SLE() => lterm <= rterm
                                case _ =>
                                    sys.error(s"integer comparison $icond not handled")
                            }
                        ntermB(to) === exp

                    // Conversions

                    case Convert(Binding(to), _, fromType, from, toType) =>
                        equality(to, toType, from, fromType)

                    // Pointer dereference

                    case insn @ GetElementPtr(Binding(to), _, _, _, ArrayElement(_, _), _) =>
                        sys.error(s"insnTerm: unsupported getelementptr insn $insn")

                    case _ : GetElementPtr =>
                        // We ignore these here, but the associations that they establish
                        // between their bound name and their arguments are expressed in
                        // the element properties of the name.
                        STrue()

                    // Array loads and stores, just non-Boolean, integer elements for now

                    case insn @ Load(Binding(to), _, IntegerT(_), _, ArrayElement(array, index), _) =>
                        ntermI(to) === arrayTermAt(insn, array).at(vtermAtI(insn, index))

                    case insn @ Store(_, IntegerT(_), from, _, ArrayElement(array, index), _) =>
                        arrayTermAt(insn, array) === prevArrayTermAt(insn, array).store(vtermAtI(insn, index), vtermI(from))

                    // Non-array loads and stores

                    case Load(Binding(to), _, tipe, _, from, _) =>
                        equality(to, tipe, from, tipe)

                    case Store(_, tipe, from, _, Named(to), _) =>
                        equality(to, tipe, from, tipe)

                    case insn =>
                        sys.error(s"insnTerm: don't know the effect of $insn")

                }
            logger.debug(s"insnTerm:${longshow(insn)} -> ${showTerm(term.termDef)}")
            term
        }

        /*
         * Make an ArrayTerm for the named variable where `id` is the base name
         * identifier and include an optional index.
         */
        def arrayTerm(id : String, index : Int) : TypedTerm[ArrayTerm[IntTerm], Term] =
            ArrayInt1(id).indexed(index)

        /*
         * Return an array term that expresses a name when referenced from node.
         */
        def arrayTermAt(node : ASTNode, name : Name) : TypedTerm[ArrayTerm[IntTerm], Term] =
            arrayTerm(show(name), indexOf(node, show(name)))

        /*
         * Return a term that expresses the previous version of a name when
         * referenced from node.
         */
        def prevArrayTermAt(node : ASTNode, name : Name) : TypedTerm[ArrayTerm[IntTerm], Term] =
            arrayTerm(show(name), scala.math.max(indexOf(node, show(name)) - 1, 0))

        /*
         * Make an integer term for the named variable where `id` is the base name
         * identifier and index it.
         */
        def varTermI(id : String, index : Int) : TypedTerm[IntTerm, Term] =
            new VarTerm(id, IntSort(), Some(index))

        /*
         * Make a Boolean term for the named variable where `id` is the base name
         * identifier and index it.
         */
        def varTermB(id : String, index : Int) : TypedTerm[BoolTerm, Term] =
            new VarTerm(id, BoolSort(), Some(index))

        /*
         * Return an integer term that expresses a name when referenced from node.
         */
        def ntermAtI(node : ASTNode, name : Name) : TypedTerm[IntTerm, Term] =
            varTermI(show(name), indexOf(node, show(name)))

        /*
         * Return a Boolean term that expresses a name when referenced from node.
         */
        def ntermAtB(node : ASTNode, name : Name) : TypedTerm[BoolTerm, Term] =
            varTermB(show(name), indexOf(node, show(name)))

        /*
         * Return an integer term that expresses an LLVM name when referenced
         * from the name node.
         */
        def ntermI(name : Name) : TypedTerm[IntTerm, Term] =
            ntermAtI(name, name)

        /*
         * Return a Boolean term that expresses an LLVM name when referenced
         * from the name node.
         */
        def ntermB(name : Name) : TypedTerm[BoolTerm, Term] =
            ntermAtB(name, name)

        /*
         * Return an IntTerm that expresses an LLVM ik value, k > 0.
         */
        def vtermI(value : Value) : TypedTerm[IntTerm, Term] =
            value match {
                case Const(IntC(i)) =>
                    Ints(i.toInt) //  warning: BigInt!!
                case Named(name) =>
                    ntermI(name)
                case value =>
                    sys.error(s"vtermI: unexpected value $value")
            }

        /*
         * Return an IntTerm that expresses a value when referenced from node.
         */
        def vtermAtI(node : ASTNode, value : Value) : TypedTerm[IntTerm, Term] =
            value match {
                case Named(name) =>
                    ntermAtI(node, name)
                case _ =>
                    vtermI(value)
            }

        /*
         * Return a BoolTerm that expresses an LLVM i1 value.
         */
        def vtermB(value : Value) : TypedTerm[BoolTerm, Term] =
            value match {
                case Const(FalseC()) =>
                    SFalse()
                case Const(TrueC()) =>
                    STrue()
                case Named(name) =>
                    ntermB(name)
                case value =>
                    sys.error(s"vtermB: unexpected value $value")
            }

        /*
         * Make an equality term between an LLVM name and an LLVM value. The
         * kind of equality depends on the type of the name. We mostly handle
         * integer and Boolean equalities, but also pointers as integers.
         */
        def equality(to : Name, toType : Type, from : Value, fromType : Type) : TypedTerm[BoolTerm, EqualTerm] =
            (toType, fromType) match {
                case (BoolT(), BoolT()) =>
                    ntermB(to) === vtermB(from)
                case (BoolT(), IntT(_)) =>
                    ntermB(to) === !(vtermI(from) === 0)
                case (IntT(_), BoolT()) =>
                    ntermI(to) === vtermB(from).ite(Ints(1), Ints(0))
                case (IntT(_), IntT(_)) =>
                    ntermI(to) === vtermI(from)
                case (PointerT(_, _), PointerT(_, _)) =>
                    ntermI(to) === vtermI(from)
                case _ =>
                    sys.error(s"equality: unexpected equality: $to : $toType, $from : $fromType")
            }

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
                blockTerms(block, optPrevBlock, choice)
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
     * Split blocks on global variable access to allow permutations of dependent
     * instructions to be generated between thread functions.
     Nice piece of code.
     */
    def makeThreadVerifiable : FunctionDefinition = {

        logger.info(s"makeThreadVerifiable: $name")

        val insertedBlocks = new ListBuffer[Block]()

        def isNotGlobalAccess(insn : MetaInstruction) : Boolean =
            insn match {
                case MetaInstruction(
                    Load(
                        _, _, _, _,
                        Named(Global(_)),
                        _
                        ),
                    _
                    ) =>
                    false
                case MetaInstruction(
                    Store(
                        _, _, _, _,
                        Named(Global(_)),
                        _
                        ),
                    _
                    ) =>
                    false
                case _ =>
                    true
            }

        // Must be a better way to do it, yuck
        def splitOnGlobalAccess(insns : List[MetaInstruction]) : List[List[MetaInstruction]] =
            insns span isNotGlobalAccess match {
                case (Nil, Nil) => Nil
                case (Nil, access :: remains) => splitOnGlobalAccess(remains) match {
                    case start :: end => List(access) :: start :: end
                    case Nil          => List(List(access))
                }
                case (remains, Nil)                => List(remains)
                case (previous, access :: remains) => (previous :+ access) :: splitOnGlobalAccess(remains)
            }

        def insertBranchOnGlobalAccess(block : Block) : Block = {
            programLogger.info("Tried to enter replaceErrorCalls")
            // Get a list of blocks which contain a global memory access as their last
            // instruction.
            val splitBlocks = splitOnGlobalAccess(block.optMetaInstructions.toList)

            if (splitBlocks.length <= 1)
                block
            else {
                val first = splitBlocks.head
                val rest = splitBlocks.drop(1).dropRight(1)
                val last = splitBlocks.last
                var label = makeLabelFromPrefix(block.optBlockLabel, "__threading")
                // Generate the final block in the function and add it to the list
                insertedBlocks += Block(BlockLabel(label), Vector(), None, last.toVector,
                    block.metaTerminatorInstruction)
                var blockCount = 0
                for (b <- rest.reverse) {
                    val newLabel = makeLabelFromPrefix(block.optBlockLabel, s"__threading.$blockCount")
                    insertedBlocks += Block(BlockLabel(newLabel), Vector(), None, b.toVector,
                        MetaTerminatorInstruction(
                            Branch(Label(Local(label))),
                            Metadata(Vector())
                        ))
                    label = newLabel
                }
                val startBlock = Block(block.optBlockLabel, Vector(), None, first.toVector,
                    MetaTerminatorInstruction(
                        Branch(Label(Local(label))),
                        Metadata(Vector())
                    ))
                startBlock
            }
        }

        val startingBlocks = function.functionBody.blocks.map(insertBranchOnGlobalAccess)
        val functionBodyWithSplitBlocks = FunctionBody(startingBlocks ++ insertedBlocks)

        // Return the new function
        val ret = function.copy(functionBody = functionBodyWithSplitBlocks)
        programLogger.info(s"* Function $name for verification:\n")
        programLogger.info(show(ret))
        programLogger.info(s"\n* AST of function $name for verification:\n\n")
        programLogger.info(layout(any(ret)))
        ret
    }

    /**
     * Generate a new label from an existing block label and a supplied prefix
     * string.
     */
    def makeLabelFromPrefix(label : OptBlockLabel, prefix : String) : String =
        label match {
            case BlockLabel(label) =>
                s"$prefix.$label"
            case ImplicitLabel(num) =>
                s"$prefix.$num"
            case NoLabel() =>
                s"$prefix.nolabel"
        }

    /**
     * Get the name of a block. Currently assumes that a block with no label
     * must be the anonymous entry block (0).
     */
    def blockName(block : Block) : String =
        block.optBlockLabel match {
            case BlockLabel(s)    => s
            case ImplicitLabel(i) => i.toString
            case NoLabel()        => "0"
        }

    /**
     * Convert an LLVM name into its string representation.
     */
    def nameToString(name : Name) : String =
        name match {
            case Global(s) => s
            case Local(s)  => s
        }

    /*
     * Get the array element property for name, if there is one.
     */
    def elementProperty(name : Name) : Option[(Name, Value)] =
        properties(name).collectFirst {
            case ElementProperty(Named(array), Vector(ElemIndex(IntT(_), Const(IntC(i))), ElemIndex(IntT(_), index))) if i == 0 =>
                (array, index)
            case ElementProperty(Named(array), Vector(ElemIndex(IntT(_), index))) =>
                (array, index)
        }

    /**
     * Return whether or not the named function is a special verifier
     * function.
     */
    def isVerifierFunction(name : String) : Boolean =
        name.startsWith("__VERIFIER")

    /**
     * Return whether or not the named function is an LLVM intrinsic.
     */
    def isLLVMIntrinsic(name : String) : Boolean =
        name.startsWith("llvm")

    /**
     * Return whether or not the named function is a memory allcoation function.
     */
    def isMemoryAllocFunction(name : String) : Boolean =
        List("alloca", "calloc", "free", "malloc") contains name

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

    // Extractors to make matching more convenient

    /**
     * Extractor to match stores to array elements. Currently only looks for
     * array element references that have a zero index (to deref the array
     * pointer), followed by the actual index.
     * FIXME: there may well be other cases we should detect.
     */
    object ArrayElement {
        def unapply(value : Value) : Option[(Name, Value)] =
            value match {
                case Named(name) =>
                    elementProperty(name)
                case _ =>
                    None
            }
    }

    /**
     * Matcher for assumption function names.
     */
    object AssumeName {
        def unapply(name : Name) : Boolean =
            name == Global("__VERIFIER_assume")
    }

    /**
     * Matcher for LLVM Boolean types (i.e., i1).
     */
    object BoolT {
        def unapply(tipe : Type) : Boolean =
            tipe match {
                case IntT(n) if n == 1 =>
                    true
                case _ =>
                    false
            }
    }

    /**
     * Matcher for LLVM Integer (non-Boolean) types (i.e., in, n > 1).
     * Return n for successful matches.
     */
    object IntegerT {
        def unapply(tipe : Type) : Option[Int] =
            tipe match {
                case IntT(n) if n > 1 =>
                    Some(n.toInt)
                case _ =>
                    None
            }
    }

    /**
     * Matcher for types that we support comparisons between.
     */
    object ComparisonType {
        def unapply(tipe : Type) : Boolean =
            tipe match {
                case _ : IntT | _ : PointerT =>
                    true
                case _ =>
                    false
            }
    }

    /*
     * Extractor that recognises functions whose calls we want to ignore when
     * generating effect terms. Currently:
     *   - any LLVM intrinsic, such as llvm.stacksave
     *   - special verifier fns, such as __VERIFIER_nondet_int
     */
    object IgnoredFunction {
        def unapply(fn : Function) : Boolean =
            fn match {
                case Function(Named(Global(s))) =>
                    isLLVMIntrinsic(s) || isVerifierFunction(s)
                // || isMemoryAllocFunction(s)
                case _ =>
                    false
            }
    }

    /**
     * Matcher for nondet function names. Successful matches return the
     * identifier of the type that is returned by the matched function.
     */
    object NondetFunctionName {
        def unapply(name : Name) : Option[String] = {
            val NondetName = "__VERIFIER_nondet_(.+)$".r
            name match {
                case Global(NondetName(tipe)) =>
                    Some(tipe)
                case _ =>
                    None
            }
        }
    }

    /*
     * Extractor for variable names that matches if the variable is a
     * user-level variable (i.e., one defined in the source code) as
     * opposed to a compiler-defined temporary. If a match is found,
     * the basename of the variable is returned and the index attached
     * is ignored (e.g., `%i@1` returns `i`).
     */
    object UserLevelVarName {
        def unapply(name : Name) : Option[String] = {
            val BaseName = "[@%](.+)@[0-9]+".r
            val TempName = "[@%][0-9]+@[0-9]+".r
            nameToString(name) match {
                case TempName() =>
                    None
                case BaseName(base) =>
                    Some(base)
                case _ =>
                    None
            }
        }
    }

    /**
     * Extractor to match various forms of calls to verifier functions,
     * returning the function name. The main reason for the differences
     * between the forms seems to be whether a correct prototype is
     * available when the LLVM IR is produced. To simplify things, we
     * don't assume that the proper prototype is there, so we support
     * these multiple forms.
     */
    object VerifierFunction {
        def unapply(v : CalledValue) : Option[Name] =
            v match {
                case Function(Named(name)) =>
                    Some(name)
                case Function(Const(ConvertC(Bitcast(), _, NameC(name), _))) =>
                    Some(name)
                case _ =>
                    None
            }
    }

}
