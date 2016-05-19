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
    import org.scalallvm.assembly.AssemblyPrettyPrinter.{format, show}
    import org.scalallvm.assembly.{
        Analyser,
        ElementProperty,
        Property,
        TypeProperty
    }
    import scala.collection.mutable.ListBuffer
    import smtlib.parser.Terms.Sort
    import smtlib.theories.{ArraysEx, Core, Ints}
    import smtlib.util.Implicits._
    import smtlib.util.TypedTerm
    import scala.annotation.tailrec
    import scala.util.{Failure, Success}

    val logger = getLogger(this.getClass)

    // Gather properties of the function

    val funtree = new Tree[ASTNode, FunctionDefinition](function)
    val funanalyser = new Analyser(funtree)
    val properties = funanalyser.propertiesOfFunction(function)
    val blockMap = Map(function.functionBody.blocks.map(b => (blockName(b), b)) : _*)

    // Implementation of IRFunction interface

    lazy val name : String =
        nameToString(function.global)

    lazy val nfa : NFA[String, Int] =
        buildNFA(makeVerifiable)

    def traceToTerms(trace : Trace) : Seq[Seq[TypedTerm]] = {

        // Make the block trace that corresponds to this trace and set it
        // up so we can do context-dependent computations on it.
        val blockTrace = traceToBlockTrace(trace)
        val tree = new Tree[Product, BlockTrace](blockTrace)
        val decorators = new Decorators(tree)

        import tree._
        import decorators._

        // Version of LLVM PP show that avoids line-wrapping
        def longshow(n : ASTNode) : String =
            show(n, 1000)

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
         * Make the indexed name of a particular occurrence of a program variable
         * in a trace.
         *
         * The base variable name is given a numeric index to reflect the fact that
         * it references a particular assigned or stored version of the base name in
         * the trace. E.g., the first use gets @1 and the second gets @2.
         *
         * The `adjust` function is used to adjust the index if one is found.
         * E.g., a decrement by one function can be used here to get the previous
         * index.
         */
        def nameToIndexedName(use : Product, s : String, adjust : Int => Int = identity) : String = {
            val index = stores(use).get(s).map(adjust).getOrElse(0)
            s"$s@$index"
        }

        /*
         * Return terms that express the effect of an LLVM node, including of
         * phi insns given entry to the block from a particular previous block
         * (if there is one), and exit from this block using a particular choice.
         */
        def blockTerms(block : Block, optPrevBlock : Option[Block], choice : Int) : Vector[TypedTerm] = {
            logger.info(s"blockTerms: $name block ${blockName(block)}")
            val phiEffects = block.optMetaPhiInstructions.map(i => phiInsnTerm(i, optPrevBlock))
            val effects = block.optMetaInstructions.flatMap(insnTerm)
            val exitEffect = exitTerm(block.metaTerminatorInstruction, choice)
            val allEffects = phiEffects ++ effects :+ exitEffect
            allEffects.filter(_ != (true : TypedTerm))
        }

        /*
         * Return a term that expresses the effect of an LLVM phi instruction
         * given that control comes from a particular previous block (if any).
         */
        def phiInsnTerm(metaInsn : MetaPhiInstruction, optPrevBlock : Option[Block]) : TypedTerm = {
            val insn = metaInsn.phiInstruction
            val term : TypedTerm =
                optPrevBlock match {
                    case Some(prevBlock) =>
                        val prevLabel = blockName(prevBlock)
                        insn match {
                            case insn @ Phi(Binding(to), _, preds) =>
                                // Bound phi result, find value
                                preds.find(_.label == prevLabel) match {
                                    case Some(pred) =>
                                        nterm(to) === vterm(pred.value)
                                    case None =>
                                        sys.error(s"phiInsnTerm: can't find $prevLabel in $insn")
                                }
                            case Phi(NoBinding(), _, _) =>
                                // No effect since result of phi is not bound
                                true
                        }
                    case None =>
                        // No previous block so phi insns don't make sense...
                        true
                }
            logger.debug(s"phiInsnTerm:${longshow(insn)} -> ${term.getTerm}")
            term
        }

        /*
         * Return a term that expresses the effect of an LLVM terminator instruction
         * that exits a block using a particular choice.
         */
        def exitTerm(metaInsn : MetaTerminatorInstruction, choice : Int) : TypedTerm = {
            val insn = metaInsn.terminatorInstruction
            val term : TypedTerm =
                insn match {
                    case Branch(label) if choice == 0 =>
                        true

                    case BranchCond(value, label1, label2) if choice == 0 =>
                        vterm(value) === true

                    case BranchCond(value, label1, label2) if choice == 1 =>
                        vterm(value) === false

                    case IndirectBr(_, value, labels) if (choice >= 0) && (choice < labels.length) =>
                        vterm(value) === choice

                    case insn =>
                        sys.error(s"exitTerm: can't handle choice $choice of $insn")
                }
            logger.debug(s"exitTerm: choice $choice of ${longshow(insn)} -> ${term.getTerm}")
            term
        }

        /*
         * Return a term that expresses the effect of a regular LLVM instruction.
         */
        def insnTerm(metaInsn : MetaInstruction) : Vector[TypedTerm] = {
            val insn = metaInsn.instruction
            val term : Vector[TypedTerm] =
                insn match {
                    case _ : Alloca =>
                        Vector(true)

                    case Binary(Binding(to), op, _ : IntT, left, right) =>
                        val lterm = vterm(left)
                        val rterm = vterm(right)
                        val (exp, signed) : (TypedTerm, Boolean) =
                            op match {
                                case _ : Add  => (lterm + rterm, true)
                                case _ : And  => (lterm & rterm, true)
                                case _ : Mul  => (lterm * rterm, true)
                                case _ : Or   => (lterm | rterm, true)
                                case _ : SDiv => (lterm / rterm, true)
                                case _ : SRem => (lterm % rterm, true)
                                case _ : Sub  => (lterm - rterm, true)
                                case _ : UDiv => (lterm / rterm, false)
                                case _ : URem => (lterm % rterm, false)
                                case _ : XOr  => (lterm ^ rterm, true)
                                case _ =>
                                    sys.error(s"binary int op $op not handled")
                            }
                        val eqterm = nterm(to) === exp
                        if (signed) Vector(eqterm) else Vector(eqterm, nterm(to) >= 0)

                    case Call(_, _, _, _, _, VerifierFunction(AssumeName()),
                        Vector(ValueArg(IntT(size), Vector(), arg)), _) =>
                        if (size == 1)
                            Vector(vterm(arg))
                        else
                            Vector(!(vterm(arg) === 0))

                    case Call(Binding(to), _, _, _, _, VerifierFunction(NondetFunctionName(tipe)), Vector(), _) =>
                        tipe match {
                            case "size_t" | "u32" | "uchar" | "uint" | "ulong" | "unsigned" | "ushort" =>
                                Vector(nterm(to) >= 0)
                            case _ =>
                                Vector()
                        }

                    case Call(_, _, _, _, _, IgnoredFunction(), _, _) =>
                        Vector(true)

                    case Compare(Binding(to), ICmp(icond), ComparisonType(), left, right) =>
                        val lterm = vterm(left)
                        val rterm = vterm(right)
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
                            }
                        Vector(nterm(to) === exp)

                    case Convert(Binding(to), _, IntT(m), from, IntT(n)) if m == n =>
                        Vector(nterm(to) === vterm(from))

                    case Convert(Binding(to), _, IntT(_), from, IntT(n)) if n == 1 =>
                        Vector(nterm(to) === !(vterm(from) === 0))

                    case Convert(Binding(to), _, IntT(n), from, IntT(_)) if n == 1 =>
                        Vector(nterm(to) === vterm(from).ifElse(1, 0))

                    case Convert(Binding(to), _, _, from, _) =>
                        Vector(nterm(to) === vterm(from))

                    case insn @ GetElementPtr(Binding(to), _, _, _, ArrayElement(_, _), _) =>
                        sys.error(s"insnTerm: unsupported getelementptr insn $insn")

                    case _ : GetElementPtr =>
                        // We ignore these here, but the associations that they establish
                        // between their bound name and their arguments are expressed in
                        // the element properties of the name.
                        Vector(true)

                    case insn @ Load(Binding(to), _, tipe, _, ArrayElement(array, index), _) =>
                        Vector(nterm(to) === ntermAt(insn, array).at(vtermAt(insn, index)))

                    case Load(Binding(to), _, tipe, _, from, _) =>
                        Vector(nterm(to) === vterm(from))

                    case insn @ Store(_, tipe, from, _, ArrayElement(array, index), _) =>
                        Vector(ntermAt(insn, array) === (prevnTermAt(insn, array) +=
                            (vtermAt(insn, index), vterm(from))))

                    case e @ Store(_, tipe, from, _, to, _) =>
                        Vector(vterm(to) === vterm(from))

                    case insn =>
                        sys.error(s"insnTerm: don't know the effect of $insn")

                }
            logger.debug(s"""insnTerm:${longshow(insn)} -> ${term.map(_.getTerm).mkString(" ")}""")
            term
        }

        /*
         * Make a term for the named variable where `id` is the base name identifier.
         */
        def varTerm(name : Name, id : String) : TypedTerm =
            TypedTerm(id, typeToSort(name))

        /*
         * Return a term that expresses a name when referenced from node.
         */
        def ntermAt(node : ASTNode, name : Name) : TypedTerm =
            varTerm(name, nameToIndexedName(node, show(name)))

        /*
         * Return a term that expresses the previous version of a name when
         * referenced from node.
         */
        def prevnTermAt(node : ASTNode, name : Name) : TypedTerm =
            varTerm(name, nameToIndexedName(node, show(name), _ - 1))

        /*
         * Return a term that expresses an LLVM name when referenced from
         * that name node.
         */
        def nterm(name : Name) : TypedTerm =
            ntermAt(name, name)

        /*
         * Return a term that expresses an LLVM value.
         * FIXME: currently only does integer constants and names.
         */
        lazy val vterm : Value => TypedTerm = {
            attr {
                case Const(FalseC()) =>
                    false
                case Const(IntC(i)) =>
                    i
                case Const(TrueC()) =>
                    true
                case Named(name) =>
                    nterm(name)
                case value =>
                    sys.error(s"vterm: unexpected value $value")
            }
        }

        /*
         * Return a term that expresses a value when referenced from node.
         */
        def vtermAt(node : ASTNode, value : Value) : TypedTerm =
            value match {
                case Named(name) =>
                    ntermAt(node, name)
                case _ =>
                    vterm(value)
            }

        /*
         * Return the sort that should be used for variable name.
         */
        def typeToSort(name : Name) : Sort = {
            val optSort =
                properties(name).collectFirst {
                    case TypeProperty(tipe) =>
                        tipe match {
                            case IntT(n) if n == 1 =>
                                Core.BoolSort()
                            case IntT(_) =>
                                Ints.IntSort()
                            case PointerT(ArrayT(_, IntT(_)), _) =>
                                ArraysEx.ArraySort(Ints.IntSort(), Ints.IntSort())
                            case PointerT(_, _) =>
                                if (elementProperty(name).isEmpty)
                                    Ints.IntSort()
                                else
                                    ArraysEx.ArraySort(Ints.IntSort(), Ints.IntSort())
                            case SymbolicArrayT(_, _) =>
                                ArraysEx.ArraySort(Ints.IntSort(), Ints.IntSort())
                            case _ =>
                                sys.error(s"typeToSort: variable type $tipe for $name not supported")
                        }
                }
            optSort.getOrElse(sys.error(s"can't find type property for variable $name"))
        }

        // If blocks occur more than once in the block trace they will be
        // shared. We need each instance to be treated separatey so we use
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
     *   call void (...) @__VERIFIER_error() #4
     *   <any terminator>
     *
     * and replace it with one of this form
     *
     * ; <label>:14
     *   br label __error.14 #4
     *
     * And the error block
     *
     *  __error.14:
     *    ret void
     *
     * The metadata from the call is transferred to the branch so it can
     * recovered later during reporting.
     *
     * Blocks that don't look like this are left alone.
     */
    def makeVerifiable : FunctionDefinition = {

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

        def replaceErrorCalls(block : Block) : Block =
            block match {
                case Block(label, Vector(), None,
                    Vector(MetaInstruction(
                        Call(_, _, _, _, _,
                            VerifierFunction(Global("__VERIFIER_error")), _, _),
                        metadata)),
                    MetaTerminatorInstruction(_, _)) =>
                    val errorLabel = makeErrorLabel(label)
                    val errorBlock = Block(BlockLabel(errorLabel), Vector(), None, Vector(),
                        MetaTerminatorInstruction(RetVoid(), metadata))
                    errorBlocks += errorBlock
                    Block(label, Vector(), None, Vector(),
                        MetaTerminatorInstruction(
                            Branch(Label(Local(errorLabel))),
                            Metadata(Vector())
                        ))
                case _ =>
                    block
            }

        val functionBodyWithProcessedBlocks =
            function.functionBody.blocks.map(replaceErrorCalls)

        val functionBodyWithErrorBlock =
            FunctionBody(functionBodyWithProcessedBlocks ++ errorBlocks)

        // Return the new function
        function.copy(functionBody = functionBodyWithErrorBlock)

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
