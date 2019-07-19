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
    ArrayExBV,
    ArrayExOperators,
    BitVectors,
    FPBitVectors
}
import org.bitbucket.franck44.scalasmt.typedterms.QuantifiedTerm
import org.bitbucket.inkytonik.kiama.attribution.Attribution
import org.bitbucket.inkytonik.kiama.util.Source
import org.scalallvm.assembly.Analyser
import org.scalallvm.assembly.AssemblySyntax.Program

case class LLVMBitTermBuilder(origSource : Source, source : Source,
    program : Program, funAnalyser : Analyser, namer : LLVMNamer,
    helper : LLVMHelper, config : SkinkConfig)

    extends Attribution with LLVMTermBuilder
    with ArrayExBV with ArrayExOperators
    with BitVectors with FPBitVectors
    with QuantifiedTerm {

    import au.edu.mq.comp.skink.LoggerFactory.getLogger
    import au.edu.mq.comp.skink.verifier.Helper.fpexpsig
    import helper.{Trunc => TruncName, _}
    import java.nio.ByteBuffer
    import java.lang.Long.parseUnsignedLong
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.{
        BitVectorSort,
        FPBitVectorSort,
        FPFloat16,
        FPFloat32,
        FPFloat64,
        FPFloat128,
        RNA,
        RNE,
        RoundingMode,
        RoundingModeSort,
        RTN,
        RTP,
        RTZ,
        Term
    }
    import org.bitbucket.franck44.scalasmt.theories.{ArrayTerm, BoolTerm, BVTerm, FPBVTerm, RMFPBVTerm}
    import org.bitbucket.franck44.scalasmt.typedterms.{TypedTerm, VarTerm}
    import namer.{indexOf, termid}
    import org.scalallvm.assembly.Analyser.unescape
    import org.scalallvm.assembly.AssemblyPrettyPrinter.show
    import org.scalallvm.assembly.AssemblySyntax.{False => FFalse, True => FTrue, _}

    val logger = getLogger(this.getClass, config)

    // Integers and reals are bit-vectors
    type IntTermType = BVTerm
    type RealTermType = FPBVTerm

    // Cached architecture
    val architecture = config.architecture()

    override def insnTerm(metaInsn : MetaInstruction) : TypedTerm[BoolTerm, Term] = {
        val insn = metaInsn.instruction
        val term = insn match {

            // Conversion

            case Convert(Binding(to), op, fromType : IntT, from, toType : IntT) =>
                val toBits = numBits(toType)
                val fromBits = numBits(fromType)
                val bitsDiff = toBits - fromBits
                if (bitsDiff == 0)
                    equality(to, toType, from, fromType)
                else {
                    val toTerm = nintToIntTerm(to, toBits)
                    val fromTerm = vintToIntTerm(from, fromBits)
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
                            sys.error(s"insnTerm: ${show(fromType)} to ${show(toType)} Int->Int conversion $op not supported")
                    }
                }

            case Convert(Binding(to), op, fromType @ RealT(fromBits), from, toType : IntT) =>
                val toBits = numBits(toType)
                op match {
                    case Bitcast() if fromBits == toBits =>
                        val (p, e, s) = fpbitTerms(to, toBits)
                        vtermR(from, fromBits) === FPBVs(p, e, s) &
                            ntermI(to, toBits) === p.concat(e.concat(s))
                    case FPToSI() =>
                        ntermI(to, toBits) === vtermR(from, fromBits).toSBV(toBits)(ctermRM(RTZ()))
                    case FPToUI() =>
                        ntermI(to, toBits) === vtermR(from, fromBits).toUBV(toBits)(ctermRM(RTZ()))
                    case _ =>
                        sys.error(s"insnTerm: ${show(fromType)} to ${show(toType)} Real->Int conversion $op not supported")
                }

            case Convert(Binding(to), op, fromType : IntT, from, toType @ RealT(toBits)) =>
                val fromBits = numBits(fromType)
                val (exp, sig) = fpexpsig(toBits)
                val iterm = vintToIntTerm(from, fromBits)
                op match {
                    case Bitcast() if fromBits == toBits =>
                        ntermR(to, toBits) === iterm.bitStringToFPBV(exp, sig)
                    case SIToFP() =>
                        ntermR(to, toBits) === iterm.signedToFPBV(exp, sig)
                    case UIToFP() =>
                        ntermR(to, toBits) === iterm.unSignedToFPBV(exp, sig)
                    case _ =>
                        sys.error(s"insnTerm: ${show(fromType)} to ${show(toType)} Int->Real conversion $op not supported")
                }

            case Convert(Binding(to), op, fromType @ RealT(fromBits), from, toType @ RealT(toBits)) =>
                val bitsDiff = toBits - fromBits
                if (bitsDiff == 0)
                    equality(to, toType, from, fromType)
                else {
                    val toTerm = ntermR(to, toBits)
                    val fromTerm = vtermR(from, fromBits)
                    op match {
                        case FPExt() =>
                            if (bitsDiff > 0)
                                toTerm === fpbvcast(fromTerm, toBits)
                            else
                                sys.error(s"insnTerm: shrinking fpext insn ${longshow(insn)}")
                        case FPTrunc() =>
                            if (bitsDiff > 0)
                                sys.error(s"insnTerm: growing fptrunc insn ${longshow(insn)}")
                            else
                                toTerm === fpbvcast(fromTerm, toBits)
                        case _ =>
                            sys.error(s"insnTerm: ${show(fromType)} to ${show(toType)} Real->Real conversion $op not supported")
                    }
                }

            case Convert(Binding(to), Bitcast(), tipe : PointerT, from, _ : PointerT) =>
                getelementptr(to, tipe, from, Seq())

            case Convert(Binding(to), _, fromType, from, toType) =>
                equality(to, toType, from, fromType)

            // Memory

            case Malloc(Binding(to), size, clear) =>
                allocate(to, size, clear)

            case Load(Binding(to), _, PointerT(_, _), _, from, _) =>
                sys.error(s"insnTerm: unsupported pointer load of ${show(from)} to ${show(to)}")

            case Load(Binding(to), _, tipe, _, from, _) =>
                load(to, tipe, from)

            case Store(_, PointerT(_, _), from, _, Named(to), _) =>
                sys.error(s"insnTerm: unsupported pointer store of ${show(from)} to ${show(to)}")

            case Store(_, tipe, from, _, Named(to), _) =>
                store(to, tipe, from)

            case Store(_, tipe, from, _, Const(ConvertC(Bitcast(), _, NameC(to), _)), _) =>
                store(to, tipe, from)

            case GetElementPtr(Binding(to), _, bt1, tipe @ PointerT(bt2, _), from, indices) if bt1 == bt2 =>
                getelementptr(to, tipe, from, indices)

            // Call

            case LibFunctionCall0(Binding(to), tipe, name) =>
                name match {
                    case FEGetRound() =>
                        val bits = numBits(tipe)
                        ntermI(to, bits) === fegetround(bits)
                    case NondetFunction(_) =>
                        True()
                    case _ =>
                        sys.error(s"insnTerm: unsupported call to library function $name (zero args, ${show(tipe)} return)")
                }

            case LibFunctionCall1(Binding(to), tipe, name, arg1, argType1 : IntT) =>
                name match {
                    case Assume() =>
                        assume(arg1, argType1)
                    case FESetRound() =>
                        fesetround(insn, numBits(tipe), arg1, numBits(argType1))
                    case _ =>
                        sys.error(s"insnTerm: unsupported call to library function $name (one ${show(argType1)} arg, ${show(tipe)} return)")
                }

            case LibFunctionCall1(Binding(to), tipe, name, arg1, RealT(bits1)) =>
                val aterm1 = vtermR(arg1, bits1)
                val bits = numBits(tipe)
                name match {
                    case Ceil() =>
                        ntermR(to, bits) === aterm1.roundToI(ctermRM(RTP()))
                    case FAbs() =>
                        ntermR(to, bits) === aterm1.abs
                    case Floor() =>
                        ntermR(to, bits) === aterm1.roundToI(ctermRM(RTN()))
                    case FPClassify() =>
                        ntermI(to, bits) === fpclassify(aterm1, bits)
                    case IsInf() =>
                        ntermI(to, bits) === boolToIntTerm(aterm1.isInfinite, bits)
                    case IsNan() =>
                        ntermI(to, bits) === boolToIntTerm(aterm1.isNaN, bits)
                    case LRInt() =>
                        ntermI(to, bits) === aterm1.toSBV(bits)
                    case LRound() =>
                        ntermI(to, bits) === aterm1.toSBV(bits)(ctermRM(RNA()))
                    case RInt() =>
                        ntermR(to, bits) === aterm1.roundToI
                    case Round() =>
                        ntermR(to, bits) === aterm1.roundToI(ctermRM(RNA()))
                    case SignBit() =>
                        ntermI(to, bits) === aterm1.isNegative.ite(ctermI(IntC(1), bits), ctermI(IntC(0), bits))
                    case TruncName() =>
                        ntermR(to, bits) === aterm1.roundToI(ctermRM(RTZ()))
                    case _ =>
                        sys.error(s"insnTerm: unsupported call to library function $name (one real arg, ${show(tipe)} return)")
                }

            case LibFunctionCall1(NoBinding(), VoidT(), name, arg1, PointerT(_, _)) =>
                name match {
                    case Free() =>
                        // Ignore frees
                        True()
                    case _ =>
                        sys.error(s"insnTerm: unsupported call to library function $name (one pointer arg, void return)")
                }

            case LibFunctionCall1(Binding(to), RealT(bits), name, arg1, PointerT(_, _)) =>
                name match {
                    case NAN() =>
                        // FIXME: ignores "nan" argument, but does build "a" NaN
                        val (exp, sig) = fpexpsig(bits)
                        ntermR(to, bits) === NaN(exp, sig)
                    case _ =>
                        sys.error(s"insnTerm: unsupported call to library function $name (one pointer arg, real return)")
                }

            case LibFunctionCall2(Binding(to), RealT(bits), name, arg1, RealT(bits1), arg2, RealT(bits2)) =>
                val aterm1 = vtermR(arg1, bits1)
                val aterm2 = vtermR(arg2, bits2)
                name match {
                    case CopySign() =>
                        ntermR(to, bits) === copysign(aterm1, aterm2, bits)
                    case FDim() =>
                        ntermR(to, bits) === (aterm1 > aterm2).ite(aterm1 - aterm2, fpdecconst("0", bits))
                    case FMax() =>
                        ntermR(to, bits) === aterm1.max(aterm2)
                    case FMin() =>
                        ntermR(to, bits) === aterm1.min(aterm2)
                    case FMod() | Remainder() =>
                        ntermR(to, bits) === aterm1 % aterm2
                    case _ =>
                        sys.error(s"insnTerm: unsupported call to library function $name (two reals arg, real return)")
                }

            case LibFunctionCall2(_, VoidT(), name, arg1, IntT(bits1), arg2, PointerT(IntT(bits2), _)) =>
                name match {
                    case Lifetime() =>
                        // Ignore lifetime calls
                        True()
                    case _ =>
                        sys.error(s"insnTerm: unsupported call to library function $name (int and pointer to int arg, void return)")
                }

            case LibFunctionCall4(Binding(to), VoidT(), name, arg1, PointerT(IntT(bits1), _), arg2, IntT(bits2), arg3, IntT(bits3), arg4, IntT(bits4)) =>
                name match {
                    case Memset() if bits1 == bits2 =>
                        sys.error("insnTerm: FIXME implement memset")
                    case _ =>
                        sys.error(s"insnTerm: unsupported call to library function $name (pointer to int, int, int, int, void return)")
                }

            // Default

            case _ =>
                super.insnTerm(metaInsn)

        }
        logger.debug(origSource, s"insnTerm: ${longshow(insn)} -> ${term.show}")
        term
    }

    override def initTerm(program : Program) : TypedTerm[BoolTerm, Term] =
        varTermRM(show(fprmodeName), 0) === ctermRM(RNE())

    override def itemTerm(item : Item) : TypedTerm[BoolTerm, Term] = {
        val term = item match {
            case GlobalInitVar(name, tipe, constantValue) =>
                allocate(name, Const(IntC(numBits(tipe))), false) &
                    store(name, tipe, Const(constantValue))
            case _ =>
                True()
        }
        if (term != True())
            logger.info(origSource, s"itemTerm:${longshow(item)}-> ${term.show}")
        term
    }

    // Integer numbers

    def varTermI(id : String, index : Int, bits : Int) : TypedTerm[BVTerm, Term] =
        new VarTerm(termid(id), BitVectorSort(bits.toString), Some(index))

    def ctermI(constantValue : ConstantValue, bits : Int) : TypedTerm[BVTerm, Term] =
        constantValue match {
            case BinaryC(op, ltype : IntT, left, rtype, right) if ltype == rtype =>
                iBinary(op, Const(left), Const(right), bits)
            case IntC(i) =>
                BVs(i, bits)
            case FalseC() | NullC() | ZeroC() =>
                0.withUBits(bits)
            case TrueC() =>
                1.withUBits(bits)
            case GetElementPtrC(_, bt1, tipe @ PointerT(bt2, _), NameC(from), indices) if bt1 == bt2 =>
                offsetFromName(tipe, from, indices)
            case a : StringC =>
                stringToBV(a)
            case value =>
                sys.error(s"ctermI: unexpected constant value $constantValue")
        }

    def iBinary(op : BinOp, left : Value, right : Value, bits : Int) : TypedTerm[BVTerm, Term] = {
        val lterm = vtermI(left, bits)
        val rterm = vtermI(right, bits)
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
                opError2[BVTerm]("bitvector integer binary", left, op, right)
        }
    }

    def iCompare(cond : ICond, left : Value, right : Value, bits : Int) : TypedTerm[BoolTerm, Term] = {
        val lterm = vtermI(left, bits)
        val rterm = vtermI(right, bits)
        cond match {
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
                opError2[BoolTerm]("bitvector integer comparison", left, cond, right)
        }
    }

    // Rounding modes

    // Rounding mode variable term for floating-point bit vector operations
    implicit var FPBVRoundingMode : TypedTerm[RMFPBVTerm, Term] =
        varTermRM(show(fprmodeName), 0)

    /**
     * Make a floating-point rounding-mode term for the named variable where `id` is
     * the base name identifier and index it.
     */
    def varTermRM(id : String, index : Int) : TypedTerm[RMFPBVTerm, Term] =
        new VarTerm(termid(id), RoundingModeSort(), Some(index))

    /**
     * Return an rounding mode term that expresses the previous name when referenced
     * from node.
     */
    def prevNtermAtRM(node : Product, name : Name) : TypedTerm[RMFPBVTerm, Term] =
        varTermRM(show(name), indexOf(node, name) - 1)

    /**
     * Return a rounding mode term that expresses a name when referenced from node.
     */
    def ntermAtRM(node : ASTNode, name : Name) : TypedTerm[RMFPBVTerm, Term] =
        varTermRM(show(name), indexOf(node, name))

    /**
     * Return an rounding mode term that expresses a name when referenced from node.
     */
    def ntermRM(name : Name) : TypedTerm[RMFPBVTerm, Term] =
        ntermAtRM(name, name)

    /**
     * Return a rounding mode term that expresses a constant rounding mode.
     */
    def ctermRM(mode : RoundingMode) : TypedTerm[RMFPBVTerm, Term] =
        RMs(mode)

    /**
     * Generate a term that gets the integer value of the current rounding mode.
     */
    def fegetround(bits : Int) : TypedTerm[BVTerm, Term] = {
        val mode = ntermRM(fprmodeName)
        (mode === ctermRM(RNE())).ite(
            0.withBits(bits), // FE_TONEAREST
            (mode === ctermRM(RTN())).ite(
                0x400.withBits(bits), // FE_DOWNWARD
                (mode === ctermRM(RTP())).ite(
                    0x800.withBits(bits), // FE_UPWARD
                    (mode === ctermRM(RTZ())).ite(
                        0xc00.withBits(bits), // FE_TOWARDZERO
                        -1.withBits(bits) // no correspondence or indeterminable
                    )
                )
            )
        )
    }

    /**
     * Generate a term that sets the value of the current rounding mode based on
     * the integer argument. See `fegetround` for the correspondence. As per the
     * library spec, if the new mode is not recognised then no change is made.
     * If the argument is a constant, short-circuit the dynamic check.
     */
    def fesetround(insn : Instruction, bits : Int, arg1 : Value, bits1 : Int) : TypedTerm[BoolTerm, Term] = {
        val modeVar = ntermAtRM(insn, fprmodeName)
        val prevModeVar = prevNtermAtRM(insn, fprmodeName)
        val mode =
            arg1 match {
                case Const(IntC(i)) =>
                    i.toInt match {
                        case 0     => ctermRM(RNE()) // FE_TONEAREST
                        case 0x400 => ctermRM(RTN()) // FE_DOWNWARD
                        case 0x800 => ctermRM(RTP()) // FE_UPWARD
                        case 0xc00 => ctermRM(RTZ()) // FE_TOWARDZERO
                        case _     => prevModeVar
                    }
                case _ =>
                    val aterm = vtermI(arg1, bits1)
                    (aterm === 0.withBits(bits)).ite( // FE_TONEAREST
                        ctermRM(RNE()),
                        (aterm === 0x400.withBits(bits)).ite( // FE_DOWNWARD
                            ctermRM(RTN()),
                            (aterm === 0x800.withBits(bits)).ite( // FE_UPWARD
                                ctermRM(RTP()),
                                (aterm === 0xc00.withBits(bits)).ite( // FE_TOWARDZERO
                                    ctermRM(RTZ()),
                                    prevModeVar
                                )
                            )
                        )
                    )
            }
        FPBVRoundingMode = ntermAtRM(insn, fprmodeName)
        modeVar === mode
    }

    // Real numbers

    def varTermR(id : String, index : Int, bits : Int) : TypedTerm[FPBVTerm, Term] = {
        val sort =
            bits match {
                case 16 => FPFloat16()
                case 32 => FPFloat32()
                case 64 => FPFloat64()
                case 80 =>
                    val (exp, sig) = fpexpsig(80)
                    FPBitVectorSort(exp.toString, sig.toString)
                case 128 => FPFloat128()
                case _   => sys.error(s"valTermR: unsupported bit size $bits")
            }
        new VarTerm(termid(id), sort, Some(index))
    }

    /**
     * The copysign() function returns x with its sign changed to y's.
     * copysign(x, y) returns a NaN (with y's sign) if x is a NaN.
     * if (isNaN x) then NaN else if (isNegative x) -1 * y else y.
     * Assumes that the result and the two terms are of the same type
     * (hence size).
     */
    def copysign(term1 : TypedTerm[FPBVTerm, Term], term2 : TypedTerm[FPBVTerm, Term],
        bits : Int) : TypedTerm[FPBVTerm, Term] = {
        val (exp, sig) = fpexpsig(bits)
        let {
            val x = BoundedVar("x", term1)
            val y = BoundedVar("y", term2)
            x.isNaN.ite(
                y.isNegative.ite(
                    -NaN(exp, sig),
                    NaN(exp, sig)
                ),
                x.isNegative.ite(
                    y.isNegative.ite(x, -x),
                    y.isNegative.ite(-x, x)
                )
            )
        }
    }

    /*
     * Cast a floating-point bitvector term to a given number of bits.
     */
    def fpbvcast(term : TypedTerm[FPBVTerm, Term], bits : Int) : TypedTerm[FPBVTerm, Term] = {
        val (exp, sig) = fpexpsig(bits)
        term.toFPBV(exp, sig)
    }

    def fpdecconst(f : String, bits : Int) : TypedTerm[FPBVTerm, Term] =
        bits match {
            case 32 => f.toFloat.asFloat32
            case 64 => f.toDouble.asFloat64
            case _  => sys.error(s"fpdecconst: unsupported bit size $bits")
        }

    def fphexconst(f : String, srcbits : Int, tgtbits : Int) : TypedTerm[FPBVTerm, Term] = {

        def padZeroLeftTo(s : String, length : Int) : String =
            "0" * (length - s.length) + s

        val length = srcbits / 4
        if (f.length <= length) {
            val num = padZeroLeftTo(f, length)
            val (exp, sig) = fpexpsig(srcbits)
            fpbvcast(BVs("#x" + num).bitStringToFPBV(exp, sig), tgtbits)
        } else
            sys.error(s"fphexconst: literal $f is larger than expected $length characters")
    }

    /*
     * Return a term equivalent to running "fpclassify" on an argument.
     */
    def fpclassify(aterm : TypedTerm[FPBVTerm, Term], bits : Int) : TypedTerm[BVTerm, Term] =
        let {
            val x = BoundedVar("x", aterm)
            x.isNaN.ite(
                0.withBits(bits), // FP_NAN
                x.isInfinite.ite(
                    1.withBits(bits), // FP_INFINITE,
                    x.isZero.ite(
                        2.withBits(bits), // FP_ZERO,
                        x.isSubNormal.ite(
                            3.withBits(bits), // FP_SUBNORMAL,
                            x.isNormal.ite(
                                4.withBits(bits), // FP_NORMAL,
                                -1.withBits(bits) // Should never happen??
                            )
                        )
                    )
                )
            )
        }

    def fpBinary(op : BinOp, left : Value, right : Value, bits : Int) : TypedTerm[FPBVTerm, Term] = {
        val lterm = vtermR(left, bits)
        val rterm = vtermR(right, bits)
        op match {
            case _ : FAdd => lterm + rterm
            case _ : FDiv => lterm / rterm
            case _ : FMul => lterm * rterm
            case _ : FSub => lterm - rterm
            case _ =>
                opError2[FPBVTerm]("bitvector float binary", left, op, right)
        }
    }

    def fpCompare(cond : FCond, left : Value, right : Value, bits : Int) : TypedTerm[BoolTerm, Term] = {
        val lterm = vtermR(left, bits)
        val rterm = vtermR(right, bits)
        val ordered = !lterm.isNaN & !rterm.isNaN
        val unordered = lterm.isNaN | rterm.isNaN
        cond match {
            case FFalse() => False()
            case FOEQ()   => lterm.fpeq(rterm)
            case FOGT()   => lterm > rterm
            case FOGE()   => lterm >= rterm
            case FOLT()   => lterm < rterm
            case FOLE()   => lterm <= rterm
            case FONE()   => ordered & !(lterm.fpeq(rterm))
            case FORD()   => ordered
            case FUEQ()   => unordered | lterm.fpeq(rterm)
            case FUGT()   => unordered | lterm > rterm
            case FUGE()   => unordered | lterm >= rterm
            case FULT()   => unordered | lterm < rterm
            case FULE()   => unordered | lterm <= rterm
            case FUNE()   => unordered | !(lterm.fpeq(rterm))
            case FUNO()   => unordered
            case FTrue()  => True()
            case _ =>
                opError2[BoolTerm]("bitvector float comparison", left, cond, right)
        }
    }

    def fpUnary(op : UnOp, arg : Value, bits : Int) : TypedTerm[FPBVTerm, Term] = {
        val aterm = vtermR(arg, bits)
        op match {
            case _ : FNeg => -aterm
            case _ =>
                opError1[FPBVTerm]("bitvector float unary", op, arg)
        }
    }

    // Arrays

    def arrayTermI(id : String, index : Int, bits : Int) : TypedTerm[ArrayTerm[BVTerm], Term] =
        ArrayBV1(termid(id), architecture, bits).indexed(index)

    // Memory

    def alloca(to : Name, tipe : Type) : TypedTerm[BoolTerm, Term] =
        allocate(to, Const(IntC(numBits(tipe))), false)

    /*
     * Return a term that expresses allocation of memory. `to` will be defined
     * to be the starting address of a new memory chunk unrelated to any previously
     * allocated, so we just get a new offset of zero for this chunk. We assume
     * that allocation can't fail, so allocation can't yield zero.
     */
    def allocate(to : Name, size : Value, clear : Boolean) : TypedTerm[BoolTerm, Term] =
        offsetTerm(to) === 0.withUBits(32)

    /*
     * Make a term representing the actual bits of a variable that is not
     * represented by a plain bit vector (e.g., floating-point value).
     */
    def bitsTerm(name : Name, bits : Int) : TypedTerm[BVTerm, Term] =
        ntermSuffixI(name, "$b", bits)

    /*
     * Make terms representing variables to hold the three pieces of
     * a floating-point bit vector relative to a particular named memory
     * chunk.
     */
    def fpbitTerms(name : Name, bits : Int) : (TypedTerm[BVTerm, Term], TypedTerm[BVTerm, Term], TypedTerm[BVTerm, Term]) = {
        val (exp, sig) = fpexpsig(bits)
        val chunkName = getChunkName(name)
        (
            ntermSuffixI(chunkName, "$p", 1),
            ntermSuffixI(chunkName, "$e", exp),
            ntermSuffixI(chunkName, "$s", sig - 1)
        )
    }

    /*
     * Make a term representing the offset of a variable that holds
     * a memory address.
     */
    def offsetTerm(name : Name) : TypedTerm[BVTerm, Term] =
        ntermSuffixI(name, "$o", architecture)

    /*
     * Make a term representing the previous offset of a variable that holds
     * a memory address.
     */
    def prevOffsetTerm(name : Name) : TypedTerm[BVTerm, Term] =
        prevNtermSuffixI(name, "$o", architecture)

    /*
     * Map from address variable names to the variable names of the
     * chunk within which those addresses point. A variable that is
     * not in the domain of the map *is* a chunk.
     */
    val chunkMap = new scala.collection.mutable.HashMap[Name, Name]

    /*
     * Update the chunk map to say that address variable `name`
     * refer to chunk `base`.
     */
    def updateChunk(name : Name, base : Name) =
        chunkMap.update(name, base)

    /*
     * Get the name of the chunk to which the address variable `name`
     * refers.
     */
    // FIXME: remove var?
    def getChunkName(name : Name) : Name = {
        var ret = name
        while (chunkMap contains ret) {
            ret = chunkMap(ret)
        }
        ret
    }

    /*
     * Make a term that refers to current version of the chunk of the
     * address variable `name`.
     */
    def chunkTerm(name : Name) : TypedTerm[ArrayTerm[BVTerm], Term] = {
        val baseChunkName = getChunkName(name)
        arrayTermAtI(name, baseChunkName, 8)
    }

    /*
     * Make a term that refers to previous version of the chunk of the
     * address variable `name`.
     */
    def prevChunkTerm(name : Name) : TypedTerm[ArrayTerm[BVTerm], Term] = {
        val chunkName = getChunkName(name)
        prevArrayTermAtI(name, chunkName, 8)
    }

    /*
     * Get the base and offset terms for an address.
     */
    def baseAndOffset(addr : Value) : (Name, TypedTerm[BVTerm, Term]) =
        addr match {
            case Named(name) =>
                (name, offsetTerm(name))
            case Const(GetElementPtrC(_, bt1, tipe @ PointerT(bt2, _), NameC(name), indices)) if bt1 == bt2 =>
                (name, offsetFromName(tipe, name, indices))
            case Const(ConvertC(Bitcast(), PointerT(_, _), NameC(name), PointerT(_, _))) =>
                (name, offsetTerm(name))
            case Const(NullC()) =>
                (Local("null"), offsetTerm(Local("null")))
            case _ =>
                sys.error(s"baseAndOffset: unsupported address $addr")
        }

    /*
     * Return a term that expresses a load of a value given type from
     * address `from` into variable `to`. In bit mode we select the bytes
     * at the offset of `from` in its memory chunk and concatenate them
     * into a `tipe` value. In math mode we fall back on equating `from`
     * and `to`.
     */
    def load(to : Name, tipe : Type, from : Value) : TypedTerm[BoolTerm, Term] = {
        val bytes = numBytes(tipe)
        val (chunkName, offset) = baseAndOffset(from)
        val base = chunkTerm(chunkName)
        val chunk =
            (0 until bytes - 1).foldLeft[TypedTerm[BVTerm, Term]](
                base.select(offset + (bytes - 1).withUBits(architecture))
            ) {
                    case (a, i) =>
                        val off = if (i == bytes - 2) offset else offset + (bytes - i - 2).withUBits(architecture)
                        base.select(off).concat(a)
                }
        tipe match {
            case IntT(_) =>
                ntermI(to, bytes * 8) === chunk
            case RealT(bits) =>
                val (exp, sig) = fpexpsig(bits)
                ntermR(to, bytes * 8) === chunk.bitStringToFPBV(exp, sig)
            case _ =>
                sys.error(s"load: unsupported type ${show(tipe)}")
        }
    }

    /*
     * Return the bytes of a constant array element.
     */
    def constElemBytes(bb : ByteBuffer, element : Element) : ByteBuffer =
        element match {
            case Element(tipe : IntT, IntC(n)) =>
                val bytes = numBytes(tipe)
                bytes match {
                    case 2 =>
                        bb.putShort(n.toShort)
                    case 4 =>
                        bb.putInt(n.toInt)
                    case 8 =>
                        bb.putLong(n.toLong)
                    case _ =>
                        sys.error(s"constElemBytes: unsupported int size $bytes")
                }
            case Element(tipe @ RealT(_), FloatC(s)) =>
                val bytes = numBytes(tipe)
                bytes match {
                    case 4 =>
                        floatStringBytes(bb, s)
                    case 8 =>
                        doubleStringBytes(bb, s)
                    case _ =>
                        sys.error(s"constElemBytes: unsupported real size $bytes")
                }
            case _ =>
                sys.error(s"constElemBytes: unsupported element $element")
        }

    /*
     * The bytes of a double string.
     */
    def doubleStringBytes(bb : ByteBuffer, s : String) : ByteBuffer =
        if (s.startsWith("0x"))
            bb.putLong(parseUnsignedLong(s.drop(2), 16))
        else if (s.startsWith("0xK"))
            bb.putLong(parseUnsignedLong(s.drop(3), 16))
        else
            bb.putDouble(s.toDouble)

    /*
     * The bytes of a float string. The hexadecimal version is
     * tricky since the literals are given in double precision.
     * So we turn them into a Double, convert to Float, then
     * encode the Float.
     */
    def floatStringBytes(bb : ByteBuffer, s : String) : ByteBuffer =
        if (s.startsWith("0x")) {
            val l = parseUnsignedLong(s.drop(2), 16)
            val tbb = ByteBuffer.allocate(8).putLong(l)
            bb.putFloat(tbb.getDouble().toFloat)
        } else
            bb.putFloat(s.toFloat)

    /*
     * Build a term for a string constant that is the concatenation
     * of the string bytes.
     */
    def stringToBV(a : StringC) : TypedTerm[BVTerm, Term] = {
        val chars = unescape(a)
        chars.length match {
            case 0 =>
                sys.error("stringToBV: zero length string constant")
            case _ =>
                chars.tail.foldLeft(chars(0).withBits(8)) {
                    case (bs, b) =>
                        bs.concat(b.withBits(8))
                }
        }
    }

    /*
     * Get the bytes for a constant value.
     */
    def constantBytes(tipe : Type, value : ConstantValue, bytes : Int) : ByteBuffer = {
        val bb = ByteBuffer.allocate(numBytes(tipe))
        value match {
            case a : ArrayC =>
                a.optElements.foldLeft(bb) {
                    case (b, e) =>
                        constElemBytes(b, e)
                }
            case IntC(n) =>
                bytes match {
                    case 1 =>
                        bb.put(n.toByte)
                    case 2 =>
                        bb.putShort(n.toShort)
                    case 4 =>
                        bb.putInt(n.toInt)
                    case 8 =>
                        bb.putLong(n.toLong)
                    case _ =>
                        sys.error(s"constantBytes: unsupported constant int size $bytes bytes")
                }
            case FloatC(s) =>
                bytes match {
                    case 4 =>
                        floatStringBytes(bb, s)
                    case 8 =>
                        doubleStringBytes(bb, s)
                    case _ =>
                        sys.error(s"constantBytes: unsupported constant float size $bytes bytes")
                }
            case s : StringC =>
                unescape(s).foldLeft(bb) {
                    case (b, c) =>
                        bb.put(c.toByte)
                }
            case _ =>
                sys.error(s"constantBytes: unsupported constant ${show(value)}")
        }
    }

    /*
     * Return a term that expresses storing `from` a value of a given type in
     * to the location specified by the address `to`. In bit mode we get the
     * chunk to which `to` refers and store the bytes of `from` into that
     * chunk at the offset of `to`.
     */
    def store(to : Name, tipe : Type, from : Value) : TypedTerm[BoolTerm, Term] = {
        val bytes = numBytes(tipe)
        val bits = bytes * 8
        val base = offsetTerm(to)
        val prevBase = prevOffsetTerm(to)
        val toBitsTerm = bitsTerm(to, bits)
        val fromBytes =
            from match {
                case Const(ZeroC()) | Const(NullC()) =>
                    Vector.fill(bytes)(0.withBits(8))
                case Const(c) =>
                    val bs = constantBytes(tipe, c, bytes)
                    (0 until bytes).map {
                        case i =>
                            bs.get(i).withBits(8)
                    }
                case _ =>
                    (0 until bytes).map {
                        case i =>
                            val start = (bytes - i - 1) * 8
                            toBitsTerm.extract(start + 7, start)
                    }
            }
        val chunk =
            (0 until bytes).foldLeft(prevChunkTerm(to)) {
                case (a, i) =>
                    a.store(
                        if (i == 0) base else base + i.withUBits(32),
                        fromBytes(i)
                    )
            }
        tipe match {
            case ArrayT(_, IntT(_)) | ArrayT(_, RealT(_)) =>
                chunkTerm(to) === chunk
            case IntT(_) | PointerT(_, _) =>
                base === prevBase &
                    vtermI(from, bits) === toBitsTerm &
                    chunkTerm(to) === chunk
            case RealT(_) =>
                val (p, e, s) = fpbitTerms(to, bits)
                base === prevBase &
                    vtermR(from, bits) === FPBVs(p, e, s) &
                    toBitsTerm === p.concat(e.concat(s)) &
                    chunkTerm(to) === chunk
            case _ =>
                sys.error(s"store: unsupported type ${show(tipe)}")
        }
    }

    /*
     * Return a term for an array element offset for a given element type
     * and index value. Optimises if the index is a constant.
     */
    def arrayElemOffset(tipe : Type, value : Value) : TypedTerm[BVTerm, Term] =
        value match {
            case Const(IntC(n)) =>
                (n.toInt * numBytes(tipe)).withUBits(architecture)
            case _ =>
                vtermI(value, architecture) * numBytes(tipe).withUBits(architecture)
        }

    /*
     * Return a term for a structure field offset given the sequence of field
     * types in the structure type and the zero-based index of the field we
     * are interested in.
     */
    def structFieldOffset(fieldTypes : Seq[Type], index : Int) : TypedTerm[BVTerm, Term] =
        fieldTypes.take(index).map(numBytes(_)).sum.withUBits(architecture)

    /*
     * Given a type and a value that is an offset into that type, return
     * the type of the element referred to by the offset and a term that
     * expresses the offset from the base of the containing type. For an
     * array type the value is a zero-based index and indexes an array
     * element. For a structure type it's a zero-based field name and
     * indexes a field.
     */
    def elemTypeOffset(tipe : Type, value : Value) : (Type, TypedTerm[BVTerm, Term]) =
        tipe match {
            case ArrayT(_, elemType) =>
                (elemType, arrayElemOffset(elemType, value))
            case PointerT(elemType, _) =>
                (elemType, arrayElemOffset(elemType, value))
            case NameT(name) =>
                lookupType(name) match {
                    case Some(tipe) =>
                        elemTypeOffset(tipe, value)
                    case None =>
                        sys.error(s"elemTypeOffset: can't find type $name")
                }
            case StructT(fieldTypes) =>
                value match {
                    case Const(IntC(v)) =>
                        if (v >= 0 && v < fieldTypes.size)
                            (fieldTypes(v.toInt), structFieldOffset(fieldTypes, v.toInt))
                        else
                            sys.error(s"elemTypeOffset: type ${show(tipe)} doesn't have a field $v")
                    case _ =>
                        sys.error(s"elemTypeOffset: non-constant field $value requested of type ${show(tipe)}")
                }
            case _ =>
                sys.error(s"elemTypeOffset: unsupported type ${show(tipe)}")
        }

    /*
     * Return a term that calculates a memory offset given a starting type
     * and address value given by a term, plus indices that express a sequence
     * of indexing operations a'la LLVM's `getelementptr` instruction.
     */
    def offsetFromTerm(tipe : Type, term : TypedTerm[BVTerm, Term], indices : Seq[ElemIndex]) : TypedTerm[BVTerm, Term] =
        indices.foldLeft((term, tipe)) {
            case ((a, t), ElemIndex(_, v)) =>
                val (etype, eoff) = elemTypeOffset(t, v)
                v match {
                    case Const(IntC(n)) if n == 0 =>
                        (a, etype)
                    case _ =>
                        (a + eoff, etype)
                }
        }._1

    /**
     * As for `offsetFromTerm` but start at the offset for a given name.
     */
    def offsetFromName(tipe : Type, name : Name, indices : Seq[ElemIndex]) : TypedTerm[BVTerm, Term] =
        offsetFromTerm(tipe, offsetTerm(name), indices)

    /*
     * Return a term that expresses that `to` will hold the memory address
     * calculated by a `getelementptr` operation (maybe from an instruction
     * but also can occur as a constant expression).
     */
    def getelementptr(to : Name, tipe : Type, from : Value, indices : Seq[ElemIndex]) : TypedTerm[BoolTerm, Term] = {
        val (base, fromOffset) = baseAndOffset(from)
        val offset = offsetFromTerm(tipe, fromOffset, indices)
        updateChunk(to, base)
        offsetTerm(to) === offset
    }

    // Equality

    override def equality(to : Name, toType : Type, from : Value, fromType : Type) : TypedTerm[BoolTerm, Term] =
        (toType, fromType) match {
            case (IntegerT(toSize), IntegerT(fromSize)) if toSize == fromSize =>
                val toBits = numBits(toType)
                ntermI(to, toBits) === vtermI(from, toBits)

            case (RealT(toBits), RealT(fromBits)) if toBits == fromBits =>
                ntermR(to, toBits) === vtermR(from, toBits)

            case (RealT(bits), IntegerT(_)) if bits == numBits(fromType) =>
                val (exp, sig) = fpexpsig(bits)
                ntermR(to, bits) === vtermI(from, bits).signedToFPBV(exp, sig)
            case (IntegerT(_), RealT(fromBits)) if numBits(toType) == fromBits =>
                val (exp, sig) = fpexpsig(fromBits)
                ntermI(to, fromBits).signedToFPBV(exp, sig) === vtermR(from, fromBits)

            case (PointerT(_, _), PointerT(_, _)) =>
                getelementptr(to, fromType, from, Seq())

            case _ =>
                super.equality(to, toType, from, fromType)
        }
}
