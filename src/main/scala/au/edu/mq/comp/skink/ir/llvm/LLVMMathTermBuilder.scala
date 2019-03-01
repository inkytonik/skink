/*
 * This file is part of Skink.
 *
 * Copyright (C) 2015-2019
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
    ArrayExInt,
    ArrayExOperators,
    ArrayExReal,
    IntegerArithmetics,
    RealArithmetics
}
import org.bitbucket.franck44.scalasmt.typedterms.QuantifiedTerm
import org.scalallvm.assembly.Analyser
import org.scalallvm.assembly.AssemblySyntax.Program

case class LLVMMathTermBuilder(program : Program, funAnalyser : Analyser,
    namer : LLVMNamer, helper : LLVMHelper, config : SkinkConfig)
    extends LLVMTermBuilder
    with ArrayExInt with ArrayExReal with ArrayExOperators
    with IntegerArithmetics with RealArithmetics with QuantifiedTerm {

    import au.edu.mq.comp.skink.Skink.getLogger
    import helper._
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.{IntSort, RealSort, SSymbol, Term}
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2PrettyPrinter.{show => showTerm}
    import org.bitbucket.franck44.scalasmt.theories.{ArrayTerm, BoolTerm, IntTerm, RealTerm}
    import org.bitbucket.franck44.scalasmt.typedterms.{TypedTerm, VarTerm}
    import namer.{indexOf, termid}
    import org.scalallvm.assembly.Analyser.unescape
    import org.scalallvm.assembly.AssemblyPrettyPrinter.show
    import org.scalallvm.assembly.AssemblySyntax.{False => FFalse, True => FTrue, _}

    val logger = getLogger(this.getClass)

    // Integers and reals are mathematical numbers
    type IntTermType = IntTerm
    type RealTermType = RealTerm

    override def insnTerm(metaInsn : MetaInstruction) : TypedTerm[BoolTerm, Term] = {
        val insn = metaInsn.instruction
        val term = insn match {

            // Conversion

            case Convert(Binding(to), _, fromType, from, toType) =>
                equality(to, toType, from, fromType)

            // Memory

            case Malloc(Binding(to), _, clear) =>
                // FIXME: do we need this? do mallocs occur in these array programs?
                // can't do much with the
                !(ntermI(to, config.architecture()) === 0) // FIXME: use clear

            // We ignore getelementptr insns that have an "array element" as the target.
            // The element properties are accessed when the target is used in another insn.
            case GetElementPtr(Binding(to), _, _, _, _, _) if namer.elementProperty(to).isDefined =>
                True()

            // Otherwise, fail on getelementptr insns since we don't want to draw any
            // invalid conclusions
            case _ : GetElementPtr =>
                sys.error(s"insnTerm: unsupported getelementptr insn ${longshow(insn)}")

            case insn @ Load(Binding(to), _, IntegerT(_), _, ArrayElement(array, index), _) =>
                ntermI(to) === arrayTermAtI(insn, array).at(vtermAtI(insn, index))

            case insn @ Load(Binding(to), _, RealT(_), _, ArrayElement(array, index), _) =>
                ntermR(to) === arrayTermAtR(insn, array).at(vtermAtI(insn, index))

            case insn @ Store(_, IntegerT(_), from, _, ArrayElement(array, index), _) =>
                arrayTermAtI(insn, array) === prevArrayTermAtI(insn, array).store(vtermAtI(insn, index), vtermI(from))

            case insn @ Store(_, RealT(_), from, _, ArrayElement(array, index), _) =>
                arrayTermAtR(insn, array) === prevArrayTermAtR(insn, array).store(vtermAtI(insn, index), vtermR(from))

            case Load(Binding(to), _, tipe, _, from, _) =>
                equality(to, tipe, from, tipe)

            case Store(_, tipe, from, _, Named(to), _) =>
                equality(to, tipe, from, tipe)

            // Call

            case LibFunctionCall0(Binding(to), tipe, name) =>
                name match {
                    case NondetFunctionName(UnsignedType(_)) =>
                        iCompare(SGE(), Named(to), Const(ZeroC()))
                    case NondetFunctionName(_) =>
                        True()
                    case _ =>
                        sys.error(s"insnTerm: unsupported call to library function $name (zero args, ${show(tipe)} return)")
                }

            case LibFunctionCall1(Binding(to), tipe, name, arg1, argType1 : IntT) => {
                name match {
                    case Assume() =>
                        assume(arg1, argType1)
                    case _ =>
                        sys.error(s"insnTerm: unsupported call to library function $name (one ${show(argType1)} arg, ${show(tipe)} return)")
                }
            }

            case LibFunctionCall1(Binding(to), tipe, name, arg1, RealT(_)) => {
                name match {
                    case FAbs() =>
                        ntermR(to) === absR(vtermR(arg1))
                    case _ =>
                        sys.error(s"insnTerm: unsupported call to library function $name (one real arg, ${show(tipe)} return)")
                }
            }

            case LibFunctionCall2(Binding(to), RealT(bits), name, arg1, RealT(bits1), arg2, RealT(bits2)) =>
                val aterm1 = vtermR(arg1)
                val aterm2 = vtermR(arg2)
                name match {
                    case FMax() =>
                        ntermR(to, bits) === (aterm1 >= aterm2).ite(aterm1, aterm2)
                    case FMin() =>
                        ntermR(to, bits) === (aterm1 <= aterm2).ite(aterm1, aterm2)
                    case _ =>
                        sys.error(s"insnTerm: unsupported call to library function $name (two reals arg, real return)")
                }

            case insn =>
                super.insnTerm(metaInsn)

        }
        logger.debug(s"insnTerm: ${longshow(insn)} -> ${showTerm(term.termDef)}")
        term
    }

    override def itemTerm(item : Item) : TypedTerm[BoolTerm, Term] = {
        val term = item match {
            case GlobalInitVar(name, tipe, constantValue) =>
                val id = show(name)
                val index = namer.defaultIndexOf(name)
                (tipe, constantValue) match {
                    case (IntT(_) | RealT(_), _) =>
                        equality(name, tipe, Const(constantValue), tipe)
                    case (ArrayT(_, elemtype @ (IntT(_) | RealT(_))), ZeroC()) =>
                        val i = Ints("i")
                        forall(SSymbol("i")) {
                            elemtype match {
                                case IntT(size) =>
                                    arrayTermI(id, index).at(i) === 0
                                case RealT(_) =>
                                    arrayTermR(id, index).at(i) === 0
                            }
                        }
                    case (ArrayT(_, elemtype @ (IntT(_) | RealT(_))), ArrayC(elems)) =>
                        combineTerms(elems.zipWithIndex.map {
                            case (Element(_, constantValue), i) =>
                                elemtype match {
                                    case IntT(_) =>
                                        arrayTermI(id, index).at(i) === ctermI(constantValue)
                                    case RealT(_) =>
                                        arrayTermR(id, index).at(i) === ctermR(constantValue)
                                }
                        })
                    case (ArrayT(_, IntT(size)), c : StringC) =>
                        val chars = unescape(c).zipWithIndex
                        combineTerms(chars.map {
                            case (char, i) =>
                                arrayTermI(id, index).at(i) === ctermI(IntC(char.toInt))
                        })
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

    // Integer numbers

    def varTermI(id : String, index : Int, bits : Int) : TypedTerm[IntTerm, Term] =
        new VarTerm(termid(id), IntSort(), Some(index))

    def ctermI(constantValue : ConstantValue, bits : Int = 0) : TypedTerm[IntTerm, Term] =
        constantValue match {
            case BinaryC(op, ltype : IntT, left, rtype, right) if ltype == rtype =>
                iBinary(op, Const(left), Const(right))
            case IntC(i) =>
                Ints(i)
            case FalseC() | NullC() | ZeroC() =>
                0
            case TrueC() =>
                1
            case ArrayElementC(name, Const(IntC(index))) =>
                arrayTermAtI(name, name).at(index.toInt)
            case value =>
                sys.error(s"ctermI: unexpected constant value $constantValue")
        }

    def iBinary(op : BinOp, left : Value, right : Value, bits : Int = 0) : TypedTerm[IntTerm, Term] = {
        val lterm = vtermI(left)
        val rterm = vtermI(right)
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
    }

    def iCompare(cond : ICond, left : Value, right : Value, bits : Int = 0) : TypedTerm[BoolTerm, Term] = {
        val lterm = vtermI(left)
        val rterm = vtermI(right)
        cond match {
            case EQ()          => lterm === rterm
            case NE()          => !(lterm === rterm)
            case SGT() | UGT() => lterm > rterm
            case SGE() | UGE() => lterm >= rterm
            case SLT() | ULT() => lterm < rterm
            case SLE() | ULE() => lterm <= rterm
            case _ =>
                opError[BoolTerm]("math integer comparison", left, cond, right)
        }
    }

    // Real numbers

    /**
     * Make a real term for the named variable where `id` is the base name
     * identifier and index it.
     */
    def varTermR(id : String, index : Int, bits : Int = 0) : TypedTerm[RealTerm, Term] =
        new VarTerm(termid(id), RealSort(), Some(index))

    def fpdecconst(f : String, bits : Int = 0) : TypedTerm[RealTerm, Term] =
        f.toDouble

    def fphexconst(f : String, srcbits : Int = 0, tgtbits : Int = 0) : TypedTerm[RealTerm, Term] =
        java.lang.Double.longBitsToDouble(java.lang.Long.parseUnsignedLong(f, 16))

    def fpBinary(op : BinOp, left : Value, right : Value, bits : Int) : TypedTerm[RealTerm, Term] = {
        val lterm = vtermR(left)
        val rterm = vtermR(right)
        op match {
            case _ : FAdd => lterm + rterm
            case _ : FDiv => lterm / rterm
            case _ : FMul => lterm * rterm
            case _ : FSub => lterm - rterm
            case _ =>
                opError[RealTerm]("float", left, op, right)
        }
    }

    def fpCompare(cond : FCond, left : Value, right : Value, bits : Int) : TypedTerm[BoolTerm, Term] = {
        val lterm = vtermR(left)
        val rterm = vtermR(right)
        cond match {
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
                opError[BoolTerm]("real comparison", left, cond, right)
        }
    }

    // Arrays

    def arrayTermI(id : String, index : Int, bits : Int = 0) : TypedTerm[ArrayTerm[IntTerm], Term] =
        ArrayInt1(termid(id)).indexed(index)

    /**
     * Make a real ArrayTerm for the named variable where `id` is the base name
     * identifier and include an index.
     */
    def arrayTermR(id : String, index : Int) : TypedTerm[ArrayTerm[RealTerm], Term] =
        ArrayReal1(termid(id)).indexed(index)

    /**
     * Return a real array term that expresses a name when referenced from node.
     */
    def arrayTermAtR(node : Product, name : Name) : TypedTerm[ArrayTerm[RealTerm], Term] =
        arrayTermR(show(name), indexOf(node, name))

    /**
     * Return an integer term that expresses the previous version of a name when
     * referenced from node.
     */
    def prevArrayTermAtR(node : Product, name : Name) : TypedTerm[ArrayTerm[RealTerm], Term] =
        arrayTermR(show(name), indexOf(node, name) - 1)

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
                    namer.elementProperty(name)
                case Const(ArrayElementC(name, index)) =>
                    Some((name, index))
                case _ =>
                    None
            }
    }

    /**
     * Similar to `ArrayElement` except identifies constants that are array elements.
     */
    object ArrayElementC {
        def unapply(valconstantValueue : ConstantValue) : Option[(Name, Value)] =
            valconstantValueue match {
                case GetElementPtrC(_, _, _, NameC(name), Vector(ElemIndex(IntT(_), Const(IntC(i))), ElemIndex(IntT(_), index))) if i == 0 =>
                    Some((name, index))
                case _ =>
                    None
            }
    }
    // Memory

    def alloca(to : Name, tipe : Type) : TypedTerm[BoolTerm, Term] =
        True()

    // Equality

    override def equality(to : Name, toType : Type, from : Value, fromType : Type) : TypedTerm[BoolTerm, Term] =
        (toType, fromType) match {
            case (IntegerT(_), IntegerT(_)) =>
                ntermI(to) === vtermI(from)
            case (RealT(_), RealT(_)) =>
                ntermR(to) === vtermR(from)

            case _ =>
                super.equality(to, toType, from, fromType)
        }

}
