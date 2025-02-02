/*
 * This file is part of Skink.
 *
 * Copyright (C) 2015-2018
 * Programming Languages and Verification Research Group
 * Macquarie University
 *
 * Skink is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Skink is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * See COPYING and COPYING.LESSER for full license terms.
 * More information at http://www.gnu.org/licenses.
 */

package au.edu.mq.comp.skink.ir.llvm

import au.edu.mq.comp.skink.SkinkConfig
import org.bitbucket.franck44.scalasmt.theories.{
    ArrayExBV,
    ArrayExInt,
    ArrayExOperators,
    ArrayExReal,
    BitVectors,
    Core,
    IntegerArithmetics,
    RealArithmetics
}
import org.bitbucket.franck44.scalasmt.typedterms.QuantifiedTerm
import org.scalallvm.assembly.Analyser

class LLVMTermBuilder(funAnalyser : Analyser, namer : LLVMNamer, config : SkinkConfig)
    extends ArrayExBV with ArrayExInt with ArrayExOperators with ArrayExReal
    with BitVectors with Core with IntegerArithmetics with QuantifiedTerm
    with RealArithmetics {

    import au.edu.mq.comp.skink.ir.llvm.LLVMHelper._
    import au.edu.mq.comp.skink.{BitIntegerMode, MathIntegerMode}
    import au.edu.mq.comp.skink.Skink.getLogger
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.{BitVectorSort, EqualTerm, IntSort, BoolSort, RealSort, SSymbol, Term}
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2PrettyPrinter.{show => showTerm}
    import org.bitbucket.franck44.scalasmt.theories.{ArrayTerm, BoolTerm, BVTerm, IntTerm, RealTerm}
    import org.bitbucket.franck44.scalasmt.typedterms.{TypedTerm, VarTerm}
    import namer.{ArrayElement, ArrayElementC, indexOf, termid}
    import org.scalallvm.assembly.Analyser.{defaultBlockName, unescape}
    import org.scalallvm.assembly.AssemblyPrettyPrinter.show
    import org.scalallvm.assembly.AssemblySyntax.{False => FFalse, True => FTrue, _}

    val logger = getLogger(this.getClass)

    // Cached integer mode and architecture
    val integerMode = config.integerMode()
    val architecture = config.architecture()

    /**
     * Return a term that expresses the effects of the global variable
     * initialisers of a program.
     */
    def initTerm(program : Program) : TypedTerm[BoolTerm, Term] = {
        val term = combineTerms(program.items.map(itemTerm))
        logger.info(s"initTerm: ${showTerm(term.termDef)}")
        term
    }

    /**
     * Return a term to express the effect of a top-level item, not including
     * function definitions. Currently only handles initialisation of global
     * integer variables and zero-initialised global integer arrays.
     */
    def itemTerm(item : Item) : TypedTerm[BoolTerm, Term] = {
        val term = item match {
            case InitGlobalVar(name, tipe, constantValue) =>
                val id = show(name)
                val index = namer.defaultIndexOf(id)
                (tipe, constantValue) match {
                    case (IntT(_) | RealT(_), _) =>
                        equality(name, tipe, Const(constantValue), tipe)
                    case (ArrayT(_, elemtype @ (IntT(_) | RealT(_))), ZeroC()) =>
                        val i =
                            integerMode match {
                                case BitIntegerMode() =>
                                    BVs("i", architecture)
                                case MathIntegerMode() =>
                                    Ints("i")
                            }
                        forall(SSymbol("i")) {
                            elemtype match {
                                case IntT(size) =>
                                    integerMode match {
                                        case BitIntegerMode() =>
                                            val bits = size.toInt
                                            arrayTermBV(id, bits, index).at(i) === 0.withBits(bits)
                                        case MathIntegerMode() =>
                                            arrayTermI(id, index).at(i) === 0
                                    }
                                case RealT(_) =>
                                    arrayTermR(id, index).at(i) === 0
                            }
                        }
                    case (ArrayT(_, elemtype @ (IntT(_) | RealT(_))), ArrayC(elems)) =>
                        combineTerms(elems.zipWithIndex.map {
                            case (Element(_, constantValue), i) =>
                                elemtype match {
                                    case IntT(size) =>
                                        integerMode match {
                                            case BitIntegerMode() =>
                                                val bits = size.toInt
                                                arrayTermBV(id, bits, index).at(i.withBits(architecture)) === ctermBV(constantValue, bits)
                                            case MathIntegerMode() =>
                                                arrayTermI(id, index).at(i) === ctermI(constantValue)
                                        }
                                    case RealT(_) =>
                                        arrayTermR(id, index).at(i) === ctermR(constantValue)
                                }
                        })
                    case (ArrayT(_, IntT(size)), c : StringC) =>
                        val chars = unescape(c).zipWithIndex
                        integerMode match {
                            case BitIntegerMode() =>
                                val bits = size.toInt
                                combineTerms(chars.map {
                                    case (char, i) =>
                                        arrayTermBV(id, bits, index).at(i.withBits(architecture)) === ctermBV(IntC(char.toInt), bits)
                                })
                            case MathIntegerMode() =>
                                combineTerms(chars.map {
                                    case (char, i) =>
                                        arrayTermI(id, index).at(i) === ctermI(IntC(char.toInt))
                                })
                        }
                    case _ =>
                        sys.error(s"itemTerm: no support for global ${show(tipe)} variable initialisation to ${show(constantValue)}")
                }
            case _ =>
                // Other items don't contribute to the program semantics
                True()
        }
        if (term != True())
            logger.info(s"itemTerm:${longshow(item)}-> ${showTerm(term.termDef)}")
        term
    }

    /*
     * Return terms that express the effect of an LLVM node, including of
     * phi insns given entry to the block from a particular previous block
     * (if there is one), and exit from this block using a particular choice.
     */
    def blockTerms(block : Block, optPrevBlock : Option[Block], choice : Int) : Vector[TypedTerm[BoolTerm, Term]] = {
        logger.info(s"blockTerms: block ${funAnalyser.blockName(block)}")
        val phiEffects = block.optMetaPhiInstructions.map(i => phiInsnTerm(i, optPrevBlock))
        val effects = block.optMetaInstructions.map(insnTerm)
        val exitEffect = exitTerm(block.metaTerminatorInstruction, choice)
        val allEffects = phiEffects ++ effects :+ exitEffect
        allEffects.filter(_ != True())
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
                    val prevLabel = Label(Local(funAnalyser.blockName(prevBlock)))
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
     * that exits a block using a particular choice.
     * Exits or choices are integers >=0, typically 0 and 1 for an if-then-else, 0 for
     * a non-conditional exit.
     */
    def exitTerm(metaInsn : MetaTerminatorInstruction, choice : Int) : TypedTerm[BoolTerm, Term] = {
        val insn = metaInsn.terminatorInstruction
        val term =
            insn match {
                case Branch(_) if choice == 0 =>
                    True()

                case BranchCond(value, _, _) if choice == 0 =>
                    vtermB(value)

                case BranchCond(value, _, _) if choice == 1 =>
                    !vtermB(value)

                case Switch(IntegerT(size), value, _, cases) if choice == cases.length =>
                    integerMode match {
                        case BitIntegerMode() =>
                            val bits = size.toInt
                            combineTerms(cases.map { case Case(_, v, _) => !(vtermBV(value, bits) === vtermBV(v, bits)) })
                        case MathIntegerMode() =>
                            combineTerms(cases.map { case Case(_, v, _) => !(vtermI(value) === vtermI(v)) })
                    }

                case Switch(IntegerT(size), value, _, cases) if choice < cases.length =>
                    integerMode match {
                        case BitIntegerMode() =>
                            val bits = size.toInt
                            vtermBV(value, bits) === vtermBV(cases(choice).value, bits)
                        case MathIntegerMode() =>
                            vtermI(value) === vtermI(cases(choice).value)
                    }

                case _ : Ret | RetVoid() if choice == 0 =>
                    True()

                case insn =>
                    sys.error(s"exitTerm: can't handle choice $choice of ${longshow(insn)}")
            }
        logger.debug(s"exitTerm: choice $choice of ${longshow(insn)} -> ${showTerm(term.termDef)}")
        term
    }

    /*
     * Throw an error that `op` applied to `left` and `right` cannot be handled.
     * Prefix is prepended to the message.
     */
    def opError[T](prefix : String, left : Value, op : ASTNode, right : Value) : TypedTerm[T, Term] =
        sys.error(s"$prefix op ${show(op)} ${show(left)} ${show(right)} not handled")

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
                                opError[BoolTerm]("Boolean", left, op, right)
                        }
                    ntermB(to) === exp

                /*
                 * Integer binary operation (`left` `op` `right` into `to`).
                 */
                case Binary(_, _, _, Const(UndefC()), _) =>
                    True()

                case Binary(_, _, _, _, Const(UndefC())) =>
                    True()

                case Binary(Binding(to), op, IntT(size), left, right) =>
                    integerMode match {
                        case BitIntegerMode() =>
                            val bits = size.toInt
                            val lterm = vtermBV(left, bits)
                            val rterm = vtermBV(right, bits)
                            val exp =
                                op match {
                                    case _ : Add  => lterm + rterm
                                    case _ : And  => lterm and rterm
                                    case _ : AShR => lterm ashr rterm
                                    case _ : LShR => lterm >> rterm
                                    case _ : Mul  => lterm * rterm
                                    case _ : Or   => lterm or rterm
                                    case _ : SDiv => lterm sdiv rterm
                                    case _ : ShL  => lterm << rterm
                                    case _ : SRem => lterm srem rterm
                                    case _ : Sub  => lterm - rterm
                                    case _ : UDiv => lterm / rterm
                                    case _ : URem => lterm % rterm
                                    case _ : XOr  => lterm xor rterm
                                    case _ =>
                                        opError[BVTerm]("bitvector integer", left, op, right)
                                }
                            ntermBV(to, bits) === exp
                        case MathIntegerMode() =>
                            val lterm = vtermI(left)
                            val rterm = vtermI(right)
                            val exp =
                                op match {
                                    case _ : Add => lterm + rterm
                                    case _ : And =>
                                        right match {
                                            case Const(IntC(i)) =>
                                                powerOfTwo((i + 1).toInt) match {
                                                    case -1 =>
                                                        opError[IntTerm]("math integer", left, op, right)
                                                    case _ =>
                                                        lterm % (i + 1).toInt
                                                }
                                            case _ =>
                                                opError[IntTerm]("math integer", left, op, right)
                                        }
                                    case _ : AShR | _ : LShR =>
                                        // FIXME: LShrR version is not right for negative numbers?
                                        right match {
                                            case Const(IntC(i)) =>
                                                lterm / Math.pow(2, i.toDouble).toInt
                                            case _ =>
                                                opError[IntTerm]("math integer", left, op, right)
                                        }
                                    case _ : Mul => lterm * rterm
                                    case _ : Or =>
                                        // FIXME: correct for negative lterm?
                                        right match {
                                            case Const(IntC(i)) if i == 1 =>
                                                (lterm % 2 === 0).ite(lterm + 1, lterm)
                                            case _ =>
                                                opError[IntTerm]("math integer", left, op, right)
                                        }
                                    case _ : ShL =>
                                        right match {
                                            case Const(IntC(i)) =>
                                                lterm * Math.pow(2, i.toDouble).toInt
                                            case _ =>
                                                opError[IntTerm]("math integer", left, op, right)
                                        }
                                    case _ : SDiv => lterm / rterm
                                    case _ : SRem => lterm % rterm
                                    case _ : Sub  => lterm - rterm
                                    case _ : UDiv => lterm / rterm
                                    case _ : URem => lterm % rterm
                                    case _ : XOr =>
                                        right match {
                                            case Const(IntC(i)) if i == -1 =>
                                                lterm * -1 - 1
                                            case _ =>
                                                opError[IntTerm]("math integer", left, op, right)
                                        }
                                    case _ =>
                                        opError[IntTerm]("math integer", left, op, right)
                                }
                            ntermI(to) === exp
                    }

                /*
                 * Floating-point binary operation (`left` `op` `right` into `to`).
                 */
                case Binary(Binding(to), FAdd(_), tipe, left, Const(FloatC("0"))) =>
                    ntermR(to) === vtermR(left)

                case Binary(Binding(to), op, RealT(_), left, right) =>
                    val lterm = vtermR(left)
                    val rterm = vtermR(right)
                    val exp =
                        op match {
                            case _ : FAdd => lterm + rterm
                            case _ : FDiv => lterm / rterm
                            case _ : FMul => lterm * rterm
                            case _ : FSub => lterm - rterm
                            case _ =>
                                opError[RealTerm]("float", left, op, right)
                        }
                    ntermR(to) === exp

                // Call to `assume`
                case Call(_, _, _, _, _, VerifierFunction(AssumeName()), Vector(ValueArg(tipe, Vector(), arg)), _) =>
                    tipe match {
                        case BoolT() => vtermB(arg)
                        case IntT(size) =>
                            integerMode match {
                                case BitIntegerMode() =>
                                    val bits = size.toInt
                                    !(vtermBV(arg, bits) === 0.withUBits(bits))
                                case MathIntegerMode() =>
                                    !(vtermI(arg) === 0)
                            }
                        case _ =>
                            sys.error(s"insnTerm: unexpected type ${show(tipe)} in assume call")
                    }

                // Call to `nondet_X` where X is an unsigned type
                case NondetFunctionCall(Binding(to), UnsignedType(bits)) =>
                    integerMode match {
                        case BitIntegerMode() =>
                            ntermBV(to, bits) uge 0.withBits(bits)
                        case MathIntegerMode() =>
                            ntermI(to) >= 0
                    }

                // Other calls to `nondet_X`
                case NondetFunctionCall(_, _) =>
                    True()

                // Absolute value calls convert to the op
                case AbsoluteValueFunctionCall(Binding(to), arg) =>
                    ntermR(to) === absR(vtermR(arg))

                // Memory allocations can't fail
                case MemoryAllocFunctionCall(Binding(to), _) =>
                    !(ntermI(to) === 0)

                case Call(_, _, _, _, _, IgnoredFunction(_), _, _) =>
                    True()

                // Compare two Boolean values

                case Compare(_, _, _, Const(UndefC()), _) =>
                    True()

                case Compare(_, _, _, _, Const(UndefC())) =>
                    True()

                case Compare(Binding(to), ICmp(icond), BoolT(), left, right) =>
                    val lterm = vtermB(left)
                    val rterm = vtermB(right)
                    val exp =
                        icond match {
                            case EQ() => lterm === rterm
                            case NE() => !(lterm === rterm)
                            case _ =>
                                opError[BoolTerm]("Boolean comparison", left, icond, right)
                        }
                    ntermB(to) === exp

                // Compare two integer or pointer values

                case Compare(Binding(to), ICmp(icond), ComparisonType(bits), left, right) =>
                    integerMode match {
                        case BitIntegerMode() =>
                            val lterm = vtermBV(left, bits)
                            val rterm = vtermBV(right, bits)
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
                                        opError[BoolTerm]("bitvector integer comparison", left, icond, right)
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
                                        opError[BoolTerm]("math integer comparison", left, icond, right)
                                }
                            val cmp = ntermB(to) === exp
                            icond match {
                                case UGT() | UGE() | ULT() | ULE() =>
                                    (lterm >= 0) & (rterm >= 0) & cmp
                                case _ =>
                                    cmp
                            }
                    }

                // Compare two floating-point values

                case Compare(Binding(to), FCmp(fcond), ComparisonType(_), left, right) =>
                    val lterm = vtermR(left)
                    val rterm = vtermR(right)
                    val exp =
                        fcond match {
                            case FFalse() => False()
                            case FOEQ()   => lterm === rterm
                            case FOGT()   => lterm > rterm
                            case FOGE()   => lterm >= rterm
                            case FOLT()   => lterm < rterm
                            case FOLE()   => lterm <= rterm
                            case FONE()   => !(lterm === rterm)
                            case FORD()   => True()
                            case FTrue()  => True()
                            case _ =>
                                opError[BoolTerm]("real comparison", left, fcond, right)
                        }
                    ntermB(to) === exp

                // Conversions

                case Convert(Binding(to), _, IntT(_), Const(UndefC()), IntT(_)) =>
                    True()

                case Convert(Binding(to), op, fromType @ IntT(fromSize), from, toType @ IntT(toSize)) =>
                    integerMode match {
                        case BitIntegerMode() =>
                            val toBits = toSize.toInt
                            val fromBits = fromSize.toInt
                            val bitsDiff = toBits - fromBits
                            if (bitsDiff == 0)
                                equality(to, toType, from, fromType)
                            else {
                                val toTerm =
                                    if (toBits == 1)
                                        ntermB(to).ite(1.withUBits(toBits), 0.withUBits(toBits))
                                    else
                                        ntermBV(to, toBits)
                                val fromTerm =
                                    if (fromBits == 1)
                                        vtermB(from).ite(1.withUBits(fromBits), 0.withUBits(fromBits))
                                    else
                                        vtermBV(from, fromBits)
                                op match {
                                    case SExt() =>
                                        if (bitsDiff > 0)
                                            toTerm === (fromTerm sext bitsDiff)
                                        else
                                            sys.error(s"insnTerm: shrinking sext insn ${longshow(insn)}")
                                    case Trunc() =>
                                        if (bitsDiff > 0)
                                            sys.error(s"insnTerm: growing trunc insn ${longshow(insn)}")
                                        else
                                            toTerm === fromTerm.extract(toBits - 1, 0)
                                    case ZExt() =>
                                        if (bitsDiff > 0)
                                            toTerm === (fromTerm zext bitsDiff)
                                        else
                                            sys.error(s"insnTerm: shrinking zext insn ${longshow(insn)}")
                                    case _ =>
                                        equality(to, toType, from, fromType)
                                }
                            }
                        case MathIntegerMode() =>
                            equality(to, toType, from, fromType)
                    }

                case Convert(Binding(to), _, fromType, from, toType) =>
                    equality(to, toType, from, fromType)

                // Pointer dereference

                // We ignore getelementptr insns that have an "array element" as the target.
                // The element properties are accessed when the target is used in another insn.
                case GetElementPtr(Binding(to), _, _, _, _, _) if namer.elementProperty(to).isDefined =>
                    True()

                // Otherwise, fail on getelementptr insns since we don't want to draw any
                // invalid conclusions
                case _ : GetElementPtr =>
                    sys.error(s"insnTerm: unsupported getelementptr insn ${longshow(insn)}")

                // Select (inline choice)

                case Select(Binding(to), SelectI1T(), from, BoolT(), value1, BoolT(), value2) =>
                    ntermB(to) === vtermB(from).ite(vtermB(value1), vtermB(value2))

                case Select(Binding(to), SelectI1T(), from, IntegerT(size1), value1, IntegerT(size2), value2) if size1 == size2 =>
                    integerMode match {
                        case BitIntegerMode() =>
                            val bits = size1.toInt
                            ntermBV(to, bits) === vtermB(from).ite(vtermBV(value1, bits), vtermBV(value2, bits))
                        case MathIntegerMode() =>
                            ntermI(to) === vtermB(from).ite(vtermI(value1), vtermI(value2))
                    }

                // Array loads and stores, just non-Boolean, integer and float elements for now

                case insn @ Load(Binding(to), _, IntegerT(size), _, ArrayElement(array, index), _) =>
                    integerMode match {
                        case BitIntegerMode() =>
                            val bits = size.toInt
                            ntermBV(to, bits) === arrayTermAtBV(insn, bits, array).at(vtermAtBV(insn, architecture, index))
                        case MathIntegerMode() =>
                            ntermI(to) === arrayTermAtI(insn, array).at(vtermAtI(insn, index))
                    }

                case insn @ Load(Binding(to), _, FloatT(), _, ArrayElement(array, index), _) =>
                    integerMode match {
                        case BitIntegerMode() =>
                            sys.error("insnTerm: floating-point bit-vector load not yet supported")
                        case MathIntegerMode() =>
                            ntermR(to) === arrayTermAtR(insn, array).at(vtermAtI(insn, index))
                    }

                case insn @ Store(_, IntegerT(size), from, _, ArrayElement(array, index), _) =>
                    integerMode match {
                        case BitIntegerMode() =>
                            val bits = size.toInt
                            arrayTermAtBV(insn, bits, array) === prevArrayTermAtBV(insn, bits, array).store(vtermAtBV(insn, architecture, index), vtermBV(from, bits))
                        case MathIntegerMode() =>
                            arrayTermAtI(insn, array) === prevArrayTermAtI(insn, array).store(vtermAtI(insn, index), vtermI(from))
                    }

                case insn @ Store(_, FloatT(), from, _, ArrayElement(array, index), _) =>
                    integerMode match {
                        case BitIntegerMode() =>
                            sys.error("insnTerm: floating-point bit-vector store not yet supported")
                        case MathIntegerMode() =>
                            arrayTermAtR(insn, array) === prevArrayTermAtR(insn, array).store(vtermAtI(insn, index), vtermR(from))
                    }

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
     * identifier and include an index.
     */
    def arrayTermBV(id : String, bits : Int, index : Int) : TypedTerm[ArrayTerm[BVTerm], Term] =
        ArrayBV1(termid(id), architecture, bits).indexed(index)

    /**
     * Make an integer ArrayTerm for the named variable where `id` is the base name
     * identifier and include an index.
     */
    def arrayTermI(id : String, index : Int) : TypedTerm[ArrayTerm[IntTerm], Term] =
        ArrayInt1(termid(id)).indexed(index)

    /**
     * Make a real ArrayTerm for the named variable where `id` is the base name
     * identifier and include an index.
     */
    def arrayTermR(id : String, index : Int) : TypedTerm[ArrayTerm[RealTerm], Term] =
        ArrayReal1(termid(id)).indexed(index)

    /**
     * Return a bit vector array term that expresses a name when referenced from node.
     */
    def arrayTermAtBV(node : Product, bits : Int, name : Name) : TypedTerm[ArrayTerm[BVTerm], Term] =
        arrayTermBV(show(name), bits, indexOf(node, show(name)))

    /**
     * Return an integer array term that expresses a name when referenced from node.
     */
    def arrayTermAtI(node : Product, name : Name) : TypedTerm[ArrayTerm[IntTerm], Term] =
        arrayTermI(show(name), indexOf(node, show(name)))

    /**
     * Return a real array term that expresses a name when referenced from node.
     */
    def arrayTermAtR(node : Product, name : Name) : TypedTerm[ArrayTerm[RealTerm], Term] =
        arrayTermR(show(name), indexOf(node, show(name)))

    /**
     * Return an integer term that expresses the previous version of a name when
     * referenced from node.
     */
    def prevArrayTermAtBV(node : Product, bits : Int, name : Name) : TypedTerm[ArrayTerm[BVTerm], Term] =
        arrayTermBV(show(name), bits, scala.math.max(indexOf(node, show(name)) - 1, 0))

    /**
     * Return an integer term that expresses the previous version of a name when
     * referenced from node.
     */
    def prevArrayTermAtI(node : Product, name : Name) : TypedTerm[ArrayTerm[IntTerm], Term] =
        arrayTermI(show(name), scala.math.max(indexOf(node, show(name)) - 1, 0))

    /**
     * Return an integer term that expresses the previous version of a name when
     * referenced from node.
     */
    def prevArrayTermAtR(node : Product, name : Name) : TypedTerm[ArrayTerm[RealTerm], Term] =
        arrayTermR(show(name), scala.math.max(indexOf(node, show(name)) - 1, 0))

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
    def varTermBV(id : String, bits : Int, index : Int) : TypedTerm[BVTerm, Term] =
        new VarTerm(termid(id), BitVectorSort(bits.toString), Some(index))

    /**
     * Make an integer term for the named variable where `id` is the base name
     * identifier and index it.
     */
    def varTermI(id : String, index : Int) : TypedTerm[IntTerm, Term] =
        new VarTerm(termid(id), IntSort(), Some(index))

    /**
     * Make a real term for the named variable where `id` is the base name
     * identifier and index it.
     */
    def varTermR(id : String, index : Int) : TypedTerm[RealTerm, Term] =
        new VarTerm(termid(id), RealSort(), Some(index))

    /**
     * Return a Boolean term that expresses a name when referenced from node.
     */
    def ntermAtB(node : ASTNode, name : Name) : TypedTerm[BoolTerm, Term] =
        varTermB(show(name), indexOf(node, show(name)))

    /**
     * Return a bit vector term that expresses a name when referenced from node.
     */
    def ntermAtBV(node : ASTNode, bits : Int, name : Name) : TypedTerm[BVTerm, Term] =
        varTermBV(show(name), bits, indexOf(node, show(name)))

    /**
     * Return an integer term that expresses a name when referenced from node.
     */
    def ntermAtI(node : ASTNode, name : Name) : TypedTerm[IntTerm, Term] =
        varTermI(show(name), indexOf(node, show(name)))

    /**
     * Return a real term that expresses a name when referenced from node.
     */
    def ntermAtR(node : ASTNode, name : Name) : TypedTerm[RealTerm, Term] =
        varTermR(show(name), indexOf(node, show(name)))

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
    def ntermBV(name : Name, bits : Int) : TypedTerm[BVTerm, Term] =
        ntermAtBV(name, bits, name)

    /**
     * Return an integer term that expresses an LLVM name when referenced
     * from the name node.
     */
    def ntermI(name : Name) : TypedTerm[IntTerm, Term] =
        ntermAtI(name, name)

    /**
     * Return a real term that expresses an LLVM name when referenced
     * from the name node.
     */
    def ntermR(name : Name) : TypedTerm[RealTerm, Term] =
        ntermAtR(name, name)

    /**
     * Return a BoolTerm that expresses an LLVM i1 value.
     */
    def vtermB(value : Value) : TypedTerm[BoolTerm, Term] =
        value match {
            case Const(c) =>
                ctermB(c)
            case Named(name) =>
                ntermB(name)
            case value =>
                sys.error(s"vtermB: unexpected value $value")
        }

    /**
     * Return an integer term that expresses a value when referenced from node.
     */
    def vtermAtBV(node : ASTNode, bits : Int, value : Value) : TypedTerm[BVTerm, Term] =
        value match {
            case Named(name) =>
                ntermAtBV(node, bits, name)
            case _ =>
                vtermBV(value, bits)
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
     * Return a real term that expresses a value when referenced from node.
     */
    def vtermAtR(node : ASTNode, value : Value) : TypedTerm[RealTerm, Term] =
        value match {
            case Named(name) =>
                ntermAtR(node, name)
            case _ =>
                vtermR(value)
        }

    /**
     * Return a bit vector term that expresses an LLVM in value with n > 1.
     */
    def vtermBV(value : Value, bits : Int) : TypedTerm[BVTerm, Term] =
        value match {
            case Const(c) =>
                ctermBV(c, bits)
            case Named(name) =>
                ntermBV(name, bits)
            case value =>
                sys.error(s"vtermBV: unexpected value $value")
        }

    /**
     * Return an integer term that expresses an LLVM `in` value with n > 1.
     */
    def vtermI(value : Value) : TypedTerm[IntTerm, Term] =
        value match {
            case Const(c) =>
                ctermI(c)
            case Named(name) =>
                ntermI(name)
            case value =>
                sys.error(s"vtermI: unexpected value $value")
        }

    /**
     * Return a real term that expresses an LLVM floating-point value.
     */
    def vtermR(value : Value) : TypedTerm[RealTerm, Term] =
        value match {
            case Const(c) =>
                ctermR(c)
            case Named(name) =>
                ntermR(name)
            case value =>
                sys.error(s"vtermR: unexpected value $value")
        }

    /**
     * Return a Boolean term that exprinsesses an LLVM Boolean constant value.
     */
    def ctermB(constantValue : ConstantValue) : TypedTerm[BoolTerm, Term] =
        constantValue match {
            case FalseC() =>
                False()
            case IntC(i) =>
                if (i == 0) False() else True()
            case TrueC() =>
                True()
            case ZeroC() =>
                False()
            case value =>
                sys.error(s"ctermB: unexpected constant value $constantValue")
        }

    /**
     * Return a bit vector term that exprinsesses an LLVM integer constant value.
     */
    def ctermBV(constantValue : ConstantValue, bits : Int) : TypedTerm[BVTerm, Term] =
        constantValue match {
            case IntC(i) =>
                i.toInt.withBits(bits)
            case NullC() | ZeroC() =>
                0.withBits(bits)
            case value =>
                sys.error(s"ctermBV: unexpected constant value $constantValue")
        }

    /**
     * Return an integer term that expresses an LLVM integer constant value.
     */
    def ctermI(constantValue : ConstantValue) : TypedTerm[IntTerm, Term] =
        constantValue match {
            case IntC(i) =>
                i.toInt
            case FalseC() | NullC() | ZeroC() =>
                0
            case TrueC() =>
                1
            case ArrayElementC(name, Const(IntC(index))) =>
                arrayTermAtI(name, name).at(index.toInt)
            case value =>
                sys.error(s"ctermI: unexpected constant value $constantValue")
        }

    /**
     * Return a real term that exprinsesses an LLVM floating-point constant value.
     */
    def ctermR(constantValue : ConstantValue) : TypedTerm[RealTerm, Term] =
        constantValue match {
            case FloatC(f) =>
                if (f.startsWith("0x"))
                    java.lang.Double.longBitsToDouble(java.lang.Long.parseUnsignedLong(f.drop(2), 16))
                else
                    f.toDouble
            case UndefC() =>
                0 // Dummy
            case value =>
                sys.error(s"ctermR: unexpected constant value $constantValue")
        }

    /**
     * Make an equality term between an LLVM name and an LLVM value. The
     * kind of equality depends on the type of the name. We mostly handle
     * integer and Boolean equalities, but also pointers as integers.
     */
    def equality(to : Name, toType : Type, from : Value, fromType : Type) : TypedTerm[BoolTerm, EqualTerm] =
        if (from == Const(UndefC()))
            True() === True()
        else
            (toType, fromType) match {
                case (BoolT(), BoolT()) =>
                    ntermB(to) === vtermB(from)
                case (RealT(_), RealT(_)) =>
                    ntermR(to) === vtermR(from)
                case _ =>
                    integerMode match {
                        case BitIntegerMode() =>
                            (toType, fromType) match {
                                case (BoolT(), IntT(size)) =>
                                    val bits = size.toInt
                                    ntermB(to) === !(vtermBV(from, size.toInt) === 0.withUBits(bits))
                                case (IntT(size), BoolT()) =>
                                    val bits = size.toInt
                                    ntermBV(to, bits) === vtermB(from).ite(1.withUBits(bits), 0.withUBits(bits))
                                case (IntT(toSize), IntT(fromSize)) if toSize == fromSize =>
                                    val bits = toSize.toInt
                                    ntermBV(to, bits) === vtermBV(from, bits)
                                case (PointerT(IntT(toSize), _), PointerT(IntT(fromSize), _)) if toSize == fromSize =>
                                    val bits = toSize.toInt
                                    ntermBV(to, bits) === vtermBV(from, bits)
                                case _ =>
                                    sys.error(s"equality: unexpected equality: $to : $toType, $from : $fromType")
                            }
                        case MathIntegerMode() =>
                            (toType, fromType) match {
                                case (BoolT(), IntT(_)) =>
                                    ntermB(to) === !(vtermI(from) === 0)
                                case (IntT(_), BoolT()) =>
                                    ntermI(to) === vtermB(from).ite(1, 0)
                                case (BoolT(), RealT(_)) =>
                                    ntermB(to) === !(vtermR(from) === 0)
                                case (RealT(_), BoolT()) =>
                                    ntermR(to) === vtermB(from).ite(1, 0)
                                case (IntT(_), IntT(_)) =>
                                    ntermI(to) === vtermI(from)
                                case (PointerT(IntT(_), _), PointerT(IntT(_), _)) =>
                                    ntermI(to) === vtermI(from)
                                case (RealT(_), IntT(_)) =>
                                    ntermR(to) === vtermR(from)
                                case (IntT(_), RealT(_)) =>
                                    ntermR(to) === vtermR(from)
                                case _ =>
                                    sys.error(s"equality: unexpected equality: $to : $toType, $from : $fromType")
                            }
                    }
            }

    /**
     * Combine terms via conjunction, dealing with case where there are no
     * terms so effect is "true". Any true terms in the sequence are removed.
     */
    def combineTerms(terms : Seq[TypedTerm[BoolTerm, Term]]) : TypedTerm[BoolTerm, Term] =
        if (terms.isEmpty)
            True()
        else
            terms.reduceLeft((l, r) => if (r == True()) l else l & r)

}
