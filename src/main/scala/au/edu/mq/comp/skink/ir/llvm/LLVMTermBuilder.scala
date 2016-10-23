package au.edu.mq.comp.skink.ir.llvm

import au.edu.mq.comp.skink.SkinkConfig
import au.edu.mq.comp.smtlib.theories.{ArrayExInt, ArrayExOperators, BitVectors, Core, IntegerArithmetics}

class LLVMTermBuilder(namer : LLVMNamer, config : SkinkConfig)
        extends ArrayExInt with ArrayExOperators with BitVectors with Core with IntegerArithmetics {

    import au.edu.mq.comp.skink.ir.llvm.LLVMHelper._
    import au.edu.mq.comp.skink.{BitIntegerMode, MathIntegerMode}
    import au.edu.mq.comp.skink.Skink.getLogger
    import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax.{Array1, Array1Sort, BitVectorSort, EqualTerm, IntSort, BoolSort, Sort, Term}
    import au.edu.mq.comp.smtlib.parser.SMTLIB2PrettyPrinter.{show => showTerm}
    import au.edu.mq.comp.smtlib.theories.{ArrayTerm, BoolTerm, IntTerm}
    import au.edu.mq.comp.smtlib.theories.{ArrayExInt, ArrayExOperators, Core, IntegerArithmetics}
    import au.edu.mq.comp.smtlib.typedterms.TypedTerm
    import org.scalallvm.assembly.AssemblyPrettyPrinter.{show, layout, any}
    import au.edu.mq.comp.smtlib.theories.{ArrayTerm, BoolTerm, BVTerm, IntTerm}
    import au.edu.mq.comp.smtlib.typedterms.{TypedTerm, VarTerm}
    import namer.{ArrayElement, indexOf, termid}
    import org.scalallvm.assembly.AssemblyPrettyPrinter.show
    import org.scalallvm.assembly.AssemblySyntax._
    import scala.language.implicitConversions

    val logger = getLogger(this.getClass)

    // Version of LLVM PP show that avoids line-wrapping
    def longshow(n : ASTNode) : String =
        show(n, 1000)

    // Cached integer mode and size
    val integerMode = config.integerMode()
    val integerSize = config.integerSize()

    /*
     * Return terms that express the effect of an LLVM node, including of
     * phi insns given entry to the block from a particular previous block
     * (if there is one), and exit from this block using a particular branch.
     */
    def blockTerms(block : Block, optPrevBlock : Option[Block], branch : Int) : Vector[TypedTerm[BoolTerm, Term]] = {
        logger.info(s"blockTerms: block ${blockName(block)}")
        val phiEffects = block.optMetaPhiInstructions.map(i => phiInsnTerm(i, optPrevBlock))
        val effects = block.optMetaInstructions.map(insnTerm)
        val exitEffect = exitTerm(block.metaTerminatorInstruction, branch)
        val allEffects = phiEffects ++ effects :+ exitEffect
        allEffects.filter(_ != True())
    }

    def globalTerm(global : GlobalVariableDefinition) : TypedTerm[BoolTerm, Term] = {
        global match {
            case GlobalVariableDefinition(GlobalBinding(name), _, _, _, _, _, _, _, _, tipe, Init(value), _, _, _) =>
                equality(name, tipe, Const(value), tipe)
            case _ => sys.error(s"Invalid global variable definition ${show(global)}")
        }
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
                    val prevLabel = Label(Local(blockName(prevBlock)))
                    insn match {
                        case insn @ Phi(Binding(to), tipe, preds) =>
                            // Bound phi result, find value
                            preds.find(_.label == prevLabel) match {
                                case Some(pred) =>
                                    equality(to, tipe, pred.value, tipe)
                                case None =>
                                    sys.error(s"phiInsnTerm: can't find ${show(prevLabel)} in ${longshow(insn)}")
                            }
                        case Phi(NoBinding(), _, _) =>
                            // No effect since result of phi is not bound
                            True()
                    }
                case None =>
                    // No previous block so phi insns don't make sense...
                    sys.error(s"phiInsnTerm: found ${longshow(insn)} but have no previous block")
            }
        logger.debug(s"phiInsnTerm: ${longshow(insn)} -> ${showTerm(term.termDef)}")
        term
    }

    /*
     * Return a term that expresses the effect of an LLVM terminator instruction
     * that exits a block using a particular branch.
     * Exits or branches are integers >=0, typically 0 and 1 for an if-then-else, 0 for
     * a non-conditional exit.
     */
    def exitTerm(metaInsn : MetaTerminatorInstruction, branch : Int) : TypedTerm[BoolTerm, Term] = {
        val insn = metaInsn.terminatorInstruction
        val term =
            insn match {
                case Branch(_) if branch == 0 =>
                    True()

                case BranchCond(value, _, _) if branch == 0 =>
                    vtermB(value)

                case BranchCond(value, _, _) if branch == 1 =>
                    !vtermB(value)

                case Switch(IntegerT(_), value, _, cases) if branch == 0 =>
                    combineTerms(cases.map { case Case(_, v, _) => !(vtermI(value) === vtermI(v)) })

                case Switch(IntegerT(_), value, _, cases) if branch <= cases.length =>
                    vtermI(value) === vtermI(cases(branch - 1).value)

                case insn =>
                    sys.error(s"exitTerm: can't handle branch $branch of ${longshow(insn)}")
            }
        logger.debug(s"exitTerm: branch $branch of ${longshow(insn)} -> ${showTerm(term.termDef)}")
        term
    }

    /*
     * Return a term that expresses the effect of a regular LLVM instruction.
     */
    def insnTerm(metaInsn : MetaInstruction) : TypedTerm[BoolTerm, Term] = {
        val insn = metaInsn.instruction
        logger.info(s"term generation on insn ${layout(any(insn))}")
        val term =
            insn match {

                /*
                 * Ignore stack memory allocation.
                 */
                case _ : Alloca =>
                    True()

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
                                sys.error(s"binary Boolean op ${show(op)} not handled")
                        }
                    ntermB(to) === exp

                /*
                 * Integer binary operation (`left` `op` `right` into `to`).
                 */
                case Binary(Binding(to), op, IntT(_), left, right) =>
                    config.integerMode() match {
                        case BitIntegerMode() =>
                            val lterm = vtermBV(left)
                            val rterm = vtermBV(right)
                            val exp =
                                op match {
                                    case _ : Add  => lterm + rterm
                                    case _ : And  => lterm and rterm
                                    case _ : LShR => lterm >> rterm
                                    case _ : Mul  => lterm * rterm
                                    case _ : Or   => lterm or rterm
                                    case _ : SDiv => lterm / rterm
                                    case _ : ShL  => lterm << rterm
                                    case _ : SRem => lterm % rterm
                                    case _ : Sub  => lterm - rterm
                                    case _ : UDiv => lterm / rterm
                                    case _ : URem => lterm % rterm
                                    case _ : XOr  => lterm xor rterm
                                    case _ =>
                                        sys.error(s"binary integer op ${show(op)} not handled")
                                }
                            ntermBV(to) === exp
                        case MathIntegerMode() =>
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
                                        sys.error(s"binary integer op ${show(op)} not handled")
                                }
                            ntermI(to) === exp
                    }

                // Call to `assume`
                case Call(_, _, _, _, _, VerifierFunction(AssumeName()), Vector(ValueArg(tipe, Vector(), arg)), _) =>
                    tipe match {
                        case BoolT() => vtermB(arg)
                        case IntT(_) =>
                            integerMode match {
                                case BitIntegerMode() =>
                                    !(vtermBV(arg) === 0)
                                case MathIntegerMode() =>
                                    !(vtermI(arg) === 0)
                            }
                        case _ =>
                            sys.error(s"insnTerm: unexpected type ${show(tipe)} in assume call")
                    }

                // Call to `nondet_X` where X is an unsigned type
                case Call(Binding(to), _, _, _, _, VerifierFunction(NondetFunctionName(UnsignedType())), Vector(), _) =>
                    integerMode match {
                        case BitIntegerMode() =>
                            ntermBV(to) sge 0
                        case MathIntegerMode() =>
                            ntermI(to) >= 0
                    }

                // Other calls to `nondet_X`
                case Call(Binding(to), _, _, _, _, VerifierFunction(NondetFunctionName(_)), Vector(), _) =>
                    True()

                case Call(_, _, _, _, _, IgnoredFunction(), _, _) =>
                    True()

                // Compare two Boolean values

                case Compare(Binding(to), ICmp(icond), BoolT(), left, right) =>
                    val lterm = vtermB(left)
                    val rterm = vtermB(right)
                    val exp =
                        icond match {
                            case EQ() => lterm === rterm
                            case NE() => !(lterm === rterm)
                            case _ =>
                                sys.error(s"Boolean comparison ${show(icond)} not handled")
                        }
                    ntermB(to) === exp

                // Compare two integer or pointer values

                case Compare(Binding(to), ICmp(icond), ComparisonType(), left, right) =>
                    integerMode match {
                        case BitIntegerMode() =>
                            val lterm = vtermBV(left)
                            val rterm = vtermBV(right)
                            val exp =
                                icond match {
                                    case EQ()  => lterm === rterm
                                    case NE()  => !(lterm === rterm)
                                    case UGT() => lterm ugt rterm
                                    case UGE() => lterm uge rterm
                                    case ULT() => lterm ult rterm
                                    case ULE() => lterm ule rterm
                                    case SGT() => lterm sgt rterm
                                    case SGE() => lterm sge rterm
                                    case SLT() => lterm slt rterm
                                    case SLE() => lterm sle rterm
                                    case _ =>
                                        sys.error(s"bit vector comparison ${show(icond)} not handled")
                                }
                            ntermB(to) === exp
                        case MathIntegerMode() =>
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
                                        sys.error(s"integer comparison ${show(icond)} not handled")
                                }
                            ntermB(to) === exp
                    }

                // Conversions

                case Convert(Binding(to), _, fromType, from, toType) =>
                    equality(to, toType, from, fromType)

                // Pointer dereference

                case insn @ GetElementPtr(Binding(to), _, _, _, ArrayElement(_, _), _) =>
                    sys.error(s"insnTerm: unsupported getelementptr insn ${longshow(insn)}")

                case _ : GetElementPtr =>
                    // We ignore these here, but the associations that they establish
                    // between their bound name and their arguments are expressed in
                    // the element properties of the name.
                    True()

                // Array loads and stores, just non-Boolean, integer elements for now

                case insn @ Load(Binding(to), _, IntegerT(_), _, ArrayElement(array, index), _) =>
                    // integerMode match {
                    //     case BitIntegerMode() =>
                    //         ntermBV(to) === arrayTermAtBV(insn, array).at(vtermAtBV(insn, index))
                    //     case MathIntegerMode() =>
                    ntermI(to) === arrayTermAtI(insn, array).at(vtermAtI(insn, index))
                // }

                case insn @ Store(_, IntegerT(_), from, _, ArrayElement(array, index), _) =>
                    // integerMode match {
                    //     case BitIntegerMode() =>
                    //         arrayTermAtBV(insn, array) === prevArrayTermAtBV(insn, array).store(vtermAtBV(insn, index), vtermBV(from))
                    //     case MathIntegerMode() =>
                    arrayTermAtI(insn, array) === prevArrayTermAtI(insn, array).store(vtermAtI(insn, index), vtermI(from))
                // }

                // Non-array loads and stores

                case Load(Binding(to), _, tipe, _, from, _) =>
                    equality(to, tipe, from, tipe)

                case Store(_, tipe, from, _, Named(to), _) =>
                    equality(to, tipe, from, tipe)

                case insn =>
                    sys.error(s"insnTerm: don't know the effect of ${longshow(insn)}")

            }
        logger.debug(s"insnTerm: ${longshow(insn)} -> ${showTerm(term.termDef)}")
        term
    }

    /**
     * Make an integer ArrayTerm for the named variable where `id` is the base name
     * identifier and include an optional index.
     */
    def arrayTermBV(id : String, index : Int) : TypedTerm[ArrayTerm[BVTerm], Term] =
        ArrayEx1[BVTerm](termid(id)).indexed(index)

    /**
     * Make an integer ArrayTerm for the named variable where `id` is the base name
     * identifier and include an optional index.
     */
    def arrayTermI(id : String, index : Int) : TypedTerm[ArrayTerm[IntTerm], Term] =
        ArrayEx1[IntTerm](termid(id)).indexed(index)

    /**
     * Return a bit vector array term that expresses a name when referenced from node.
     */
    def arrayTermAtBV(node : Product, name : Name) : TypedTerm[ArrayTerm[BVTerm], Term] =
        arrayTermBV(show(name), indexOf(node, show(name)))

    /**
     * Return an integer array term that expresses a name when referenced from node.
     */
    def arrayTermAtI(node : Product, name : Name) : TypedTerm[ArrayTerm[IntTerm], Term] =
        arrayTermI(show(name), indexOf(node, show(name)))

    /**
     * Return an integer term that expresses the previous version of a name when
     * referenced from node.
     */
    def prevArrayTermAtBV(node : Product, name : Name) : TypedTerm[ArrayTerm[BVTerm], Term] =
        arrayTermBV(show(name), scala.math.max(indexOf(node, show(name)) - 1, 0))

    /**
     * Return an integer term that expresses the previous version of a name when
     * referenced from node.
     */
    def prevArrayTermAtI(node : Product, name : Name) : TypedTerm[ArrayTerm[IntTerm], Term] =
        arrayTermI(show(name), scala.math.max(indexOf(node, show(name)) - 1, 0))

    /**
     * Make a Boolean term for the named variable where `id` is the base name
     * identifier and index it.
     */
    def varTermB(id : String, index : Int) : TypedTerm[BoolTerm, Term] =
        new VarTerm(termid(id), BoolSort(), Some(index))

    /**
     * Make a bit vector term for the named variable where `id` is the base name
     * identifier and index it.
     */
    def varTermBV(id : String, index : Int) : TypedTerm[BVTerm, Term] =
        new VarTerm(termid(id), BitVectorSort(integerSize.toString), Some(index))

    /**
     * Make an integer term for the named variable where `id` is the base name
     * identifier and index it.
     */
    def varTermI(id : String, index : Int) : TypedTerm[IntTerm, Term] =
        new VarTerm(termid(id), IntSort(), Some(index))

    /**
     * Return a Boolean term that expresses a name when referenced from node.
     */
    def ntermAtB(node : ASTNode, name : Name) : TypedTerm[BoolTerm, Term] =
        varTermB(show(name), indexOf(node, show(name)))

    /**
     * Return a bit vector term that expresses a name when referenced from node.
     */
    def ntermAtBV(node : ASTNode, name : Name) : TypedTerm[BVTerm, Term] =
        varTermBV(show(name), indexOf(node, show(name)))

    /**
     * Return an integer term that expresses a name when referenced from node.
     */
    def ntermAtI(node : ASTNode, name : Name) : TypedTerm[IntTerm, Term] =
        varTermI(show(name), indexOf(node, show(name)))

    /**
     * Return a Boolean term that expresses an LLVM name when referenced
     * from the name node.
     */
    def ntermB(name : Name) : TypedTerm[BoolTerm, Term] =
        ntermAtB(name, name)

    /**
     * Return a bit vector term that expresses an LLVM name when referenced
     * from the name node.
     */
    def ntermBV(name : Name) : TypedTerm[BVTerm, Term] =
        ntermAtBV(name, name)

    /**
     * Return an integer term that expresses an LLVM name when referenced
     * from the name node.
     */
    def ntermI(name : Name) : TypedTerm[IntTerm, Term] =
        ntermAtI(name, name)

    /**
     * Return a BoolTerm that expresses an LLVM i1 value.
     */
    def vtermB(value : Value) : TypedTerm[BoolTerm, Term] =
        value match {
            case Const(FalseC()) =>
                False()
            case Const(TrueC()) =>
                True()
            case Named(name) =>
                ntermB(name)
            case value =>
                sys.error(s"vtermB: unexpected value $value")
        }

    /**
     * Return an integer term that expresses a value when referenced from node.
     */
    def vtermAtBV(node : ASTNode, value : Value) : TypedTerm[BVTerm, Term] =
        value match {
            case Named(name) =>
                ntermAtBV(node, name)
            case _ =>
                vtermBV(value)
        }

    /**
     * Return an integer term that expresses a value when referenced from node.
     */
    def vtermAtI(node : ASTNode, value : Value) : TypedTerm[IntTerm, Term] =
        value match {
            case Named(name) =>
                ntermAtI(node, name)
            case _ =>
                vtermI(value)
        }

    /**
     * Return a bit vector term that expresses an LLVM in value with n > 1.
     */
    def vtermBV(value : Value) : TypedTerm[BVTerm, Term] =
        value match {
            case Const(IntC(i)) =>
                i.toInt
            case Named(name) =>
                ntermBV(name)
            case value =>
                sys.error(s"vtermBV: unexpected value $value")
        }

    /**
     * Return a integer term that expresses an LLVM in value with n > 1.
     */
    def vtermI(value : Value) : TypedTerm[IntTerm, Term] =
        value match {
            case Const(IntC(i)) =>
                i.toInt
            case Named(name) =>
                ntermI(name)
            case value =>
                sys.error(s"vtermI: unexpected value $value")
        }

    /**
     * Make an equality term between an LLVM name and an LLVM value. The
     * kind of equality depends on the type of the name. We mostly handle
     * integer and Boolean equalities, but also pointers as integers.
     */
    def equality(to : Name, toType : Type, from : Value, fromType : Type) : TypedTerm[BoolTerm, EqualTerm] =
        integerMode match {
            case BitIntegerMode() =>
                (toType, fromType) match {
                    case (BoolT(), BoolT()) =>
                        ntermB(to) === vtermB(from)
                    case (BoolT(), IntT(_)) =>
                        ntermB(to) === !(vtermBV(from) === 0)
                    case (IntT(_), BoolT()) =>
                        ntermBV(to) === vtermB(from).ite(1, 0)
                    case (IntT(_), IntT(_)) =>
                        ntermBV(to) === vtermBV(from)
                    case (PointerT(_, _), PointerT(_, _)) =>
                        ntermBV(to) === vtermBV(from)
                    case _ =>
                        sys.error(s"equality: unexpected equality: $to : $toType, $from : $fromType")
                }
            case MathIntegerMode() =>
                (toType, fromType) match {
                    case (BoolT(), BoolT()) =>
                        ntermB(to) === vtermB(from)
                    case (BoolT(), IntT(_)) =>
                        ntermB(to) === !(vtermI(from) === 0)
                    case (IntT(_), BoolT()) =>
                        ntermI(to) === vtermB(from).ite(1, 0)
                    case (IntT(_), IntT(_)) =>
                        ntermI(to) === vtermI(from)
                    case (PointerT(_, _), PointerT(_, _)) =>
                        ntermI(to) === vtermI(from)
                    case _ =>
                        sys.error(s"equality: unexpected equality: $to : $toType, $from : $fromType")
                }
        }

    /**
     * Make a term for a bit vector literal. Same as `BVs.apply` but with a default
     * number of bits.
     */
    implicit def BVsSize(i : Int) : TypedTerm[BVTerm, Term] =
        BVs(i, integerSize)

    /**
     * Combine terms via conjunction, dealing with case where there are no
     * terms so effect is "true".
     */
    def combineTerms(terms : Seq[TypedTerm[BoolTerm, Term]]) : TypedTerm[BoolTerm, Term] =
        if (terms.isEmpty)
            True()
        else
            terms.reduceLeft(_ & _)

}
