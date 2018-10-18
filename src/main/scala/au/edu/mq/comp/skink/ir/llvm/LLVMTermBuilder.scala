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
    FPBitVectors,
    IntegerArithmetics,
    RealArithmetics
}
import org.bitbucket.franck44.scalasmt.typedterms.QuantifiedTerm
import org.bitbucket.inkytonik.kiama.attribution.Attribution
import org.scalallvm.assembly.Analyser
import org.scalallvm.assembly.AssemblySyntax.Program

class LLVMTermBuilder(program : Program, funAnalyser : Analyser,
    namer : LLVMNamer, config : SkinkConfig)
    extends Attribution with ArrayExBV with ArrayExInt with ArrayExOperators
    with ArrayExReal with BitVectors with Core with FPBitVectors
    with IntegerArithmetics with QuantifiedTerm with RealArithmetics {

    import au.edu.mq.comp.skink.ir.llvm.LLVMHelper.{Trunc => TruncName, _}
    import au.edu.mq.comp.skink.Skink.getLogger
    import java.lang.Float.floatToRawIntBits
    import java.lang.Double.doubleToRawLongBits
    import java.lang.Integer.parseInt
    import java.lang.Long.parseUnsignedLong
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.{
        BitVectorSort,
        BoolSort,
        EqualTerm,
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

    val logger = getLogger(this.getClass)

    // Cached architecture
    val architecture = config.architecture()

    // Rounding mode variable term for floating-point bit vector operations
    implicit var FPBVRoundingMode : TypedTerm[RMFPBVTerm, Term] =
        varTermRM(show(fprmodeName), 0)

    /**
     * Return a term that expresses the effects of the global variable
     * initialisers of a program.
     */
    def initTerm(program : Program) : TypedTerm[BoolTerm, Term] = {
        val itemTerms = combineTerms(program.items.map(itemTerm))
        val fpterm = varTermRM(show(fprmodeName), 0) === ctermRM(RNE())
        val term = if (itemTerms == True()) fpterm else fpterm & itemTerms
        logger.info(s"initTerm: ${term.show}")
        term
    }

    /**
     * Return a term to express the effect of a top-level item, not including
     * function definitions. Currently only handles initialisation of global
     * variables.
     */
    def itemTerm(item : Item) : TypedTerm[BoolTerm, Term] = {
        val term = item match {
            case GlobalInitVar(name, tipe, constantValue) =>
                allocate(name) &
                    store(name, tipe, Const(constantValue))
            case _ =>
                True()
        }
        if (term != True())
            logger.info(s"itemTerm:${longshow(item)}-> ${term.show}")
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
        logger.debug(s"phiInsnTerm: ${longshow(insn)} -> ${term.show}")
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
                    val bits = size.toInt
                    combineTerms(cases.map { case Case(_, v, _) => !(vtermI(value, bits) === vtermI(v, bits)) })

                case Switch(IntegerT(size), value, _, cases) if choice < cases.length =>
                    val bits = size.toInt
                    vtermI(value, bits) === vtermI(cases(choice).value, bits)

                case _ : Ret | RetVoid() | Unreachable() if choice == 0 =>
                    True()

                case insn =>
                    sys.error(s"exitTerm: can't handle choice $choice of ${longshow(insn)}")
            }
        logger.debug(s"exitTerm: choice $choice of ${longshow(insn)} -> ${term.show}")
        term
    }

    /*
     * Throw an error that `op` applied to `left` and `right` cannot be handled.
     * Prefix is prepended to the message.
     */
    def opError[T](prefix : String, left : Value, op : ASTNode, right : Value) : TypedTerm[T, Term] =
        sys.error(s"$prefix op ${show(op)} ${show(left)} ${show(right)} not handled")

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

    /**
     * Convert a floating-point size to exponent and significand sizes (in that order).
     */
    def fpexpsig(bits : Int) : (Int, Int) = {
        bits match {
            case 16  => (5, 11)
            case 32  => (8, 24)
            case 64  => (11, 53)
            case 80  => (15, 65)
            case 128 => (15, 113)
            case _   => sys.error(s"fpexpsig: unsupported bit size $bits")
        }
    }

    /*
     * Cast a floating-point bitvector term to a given number of bits.
     */
    def fpbvcast(term : TypedTerm[FPBVTerm, Term], bits : Int) : TypedTerm[FPBVTerm, Term] = {
        val (exp, sig) = fpexpsig(bits)
        term.toFPBV(exp, sig)
    }

    /*
     * Return a term for a given sized floating-point decimal constant.
     */
    def fpdecconst(f : String, bits : Int) : TypedTerm[FPBVTerm, Term] =
        bits match {
            case 32 => f.toFloat.asFloat32
            case 64 => f.toDouble.asFloat64
            case _  => sys.error(s"fpdecconst: unsupported bit size $bits")
        }

    /**
     * Pad a string with '0' characters on the left up to length. If `s` is
     * already longer than the length, it is returned.
     */
    def padLeftTo(s : String, length : Int) : String =
        "0" * (length - s.length) + s

    /**
     * Make a floating-point bitvector representation of a hexadecimal literal
     * string. The literal is first left-padded to the length given by srcbits
     * divided by four. It is an error if it is already longer than that. The
     * literal is then converted into a srcbits long number, then cast to
     * tgtbits.
     */
    def fphexconst(s : String, srcbits : Int, tgtbits : Int) : TypedTerm[FPBVTerm, Term] = {
        val length = srcbits / 4
        if (s.length <= length) {
            val num = padLeftTo(s, length)
            val (exp, sig) = fpexpsig(srcbits)
            fpbvcast(BVs("#x" + num).bitStringToFPBV(exp, sig), tgtbits)
        } else
            sys.error(s"fphexconst: literal $s is larger than expected $length characters")
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

    /**
     * Return a term to express a floating-point bitvector operation.
     */
    def fpBinary(op : BinOp, bits : Int, left : Value, right : Value) : TypedTerm[FPBVTerm, Term] = {
        val lterm = fpbvcast(vtermR(left, bits), 64)
        val rterm = fpbvcast(vtermR(right, bits), 64)
        val exp =
            op match {
                case _ : FAdd => lterm + rterm
                case _ : FDiv => lterm / rterm
                case _ : FMul => lterm * rterm
                case _ : FSub => lterm - rterm
                case _ =>
                    opError[FPBVTerm]("float", left, op, right)
            }
        fpbvcast(exp, bits)
    }

    /**
     * Return a term to express a floating-point comparison.
     */
    def fpCompare(cond : FCond, bits : Int, left : Value, right : Value) : TypedTerm[BoolTerm, Term] = {
        val lterm = fpbvcast(vtermR(left, bits), 64)
        val rterm = fpbvcast(vtermR(right, bits), 64)
        val unordered = lterm.isNaN | rterm.isNaN
        val ordered = !unordered
        cond match {
            case FFalse() => False()
            case FOEQ()   => ordered & lterm.fpeq(rterm)
            case FOGT()   => ordered & lterm > rterm
            case FOGE()   => ordered & lterm >= rterm
            case FOLT()   => ordered & lterm < rterm
            case FOLE()   => ordered & lterm <= rterm
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
                opError[BoolTerm]("bitvector real comparison", left, cond, right)
        }
    }

    /**
     * Return a term to express an integer bitvector operation.
     */
    def iBinary(op : BinOp, bits : Int, left : Value, right : Value) : TypedTerm[BVTerm, Term] = {
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
                opError[BVTerm]("bitvector integer", left, op, right)
        }
    }

    /**
     * Return a term to express an integer comparison.
     */
    def iCompare(cond : ICond, bits : Int, left : Value, right : Value) : TypedTerm[BoolTerm, Term] = {
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
                opError[BoolTerm]("bitvector integer comparison", left, cond, right)
        }
    }

    /*
     * Return a type definition by name if there is one.
     */
    def lookupType(name : Name) : Option[Type] =
        program.items.collectFirst {
            case TypeDefinition(n, tipe) if name == n =>
                tipe
        }

    /*
     * Return the number of bits in the representation of a type.
     */
    def numBits(tipe : Type) : Int =
        tipe match {
            case ArrayT(num, tipe)   => num.toInt * numBits(tipe)
            case FloatT()            => 32
            case DoubleT()           => 64
            case IntT(n)             => n.toInt
            case StructT(fieldTypes) => fieldTypes.map(numBits(_)).sum
            case NameT(name) =>
                lookupType(name) match {
                    case Some(tipe) => numBits(tipe)
                    case None       => sys.error(s"numBits: can't find type $name")
                }
            case _ =>
                sys.error(s"numBits: unsupported type ${show(tipe)}")
        }

    /*
     * Return the number of bytes in the representation of a type.
     * Rounds up if not a multiple of eight bits.
     */
    def numBytes(tipe : Type) : Int =
        (numBits(tipe) + 7) / 8

    // FIXME: end of Scala LLVM stuff

    /*
     * Return a term that expresses allocation of memory. `to` will
     * be defined to be the starting address of a new memory chunk unrelated to
     * any previously allocated, so we just get a new offset of zero for this
     * chunk.
     */
    def allocate(to : Name) : TypedTerm[BoolTerm, Term] =
        offsetTerm(to) === 0.withUBits(32)

    /*
     * Make a term representing the actual bits of a variable that is not
     * represented by a plain bit vector (e.g., floating-point value).
     */
    def bitsTerm(name : Name, bits : Int) : TypedTerm[BVTerm, Term] =
        ntermI(suffixName(name, "$b"), bits)

    /*
     * Make terms representing variables to hold the three pieces of
     * a floating-point bit vector relative to a particular named memory
     * chunk.
     */
    def fpbitTerms(name : Name, bits : Int) : (TypedTerm[BVTerm, Term], TypedTerm[BVTerm, Term], TypedTerm[BVTerm, Term]) = {
        val (exp, sig) = fpexpsig(bits)
        val chunkName = getChunkName(name)
        (
            ntermI(suffixName(chunkName, "$p"), 1),
            ntermI(suffixName(chunkName, "$e"), exp),
            ntermI(suffixName(chunkName, "$s"), sig - 1)
        )
    }

    /*
     * Make a term representing the offset of a variable that holds
     * a memory address.
     */
    def offsetTerm(name : Name) : TypedTerm[BVTerm, Term] =
        ntermI(suffixName(name, "$o"), architecture)

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
        arrayTermAtI(name, 8, baseChunkName)
    }

    /*
     * Make a term that refers to previous version of the chunk of the
     * address variable `name`.
     */
    def prevChunkTerm(name : Name) : TypedTerm[ArrayTerm[BVTerm], Term] = {
        val chunkName = getChunkName(name)
        prevArrayTermAtI(name, 8, chunkName)
    }

    /*
     * Get the base and offset terms for an address.
     */
    def baseAndOffset(addr : Value) : (Name, TypedTerm[BVTerm, Term]) =
        addr match {
            case Named(name) =>
                (name, offsetTerm(name))
            case Const(GetElementPtrC(_, bt1, tipe @ PointerT(bt2, _), NameC(name), indices)) if bt1 == bt2 =>
                (name, offset(tipe, name, indices))
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
     * Get zero-indexed byte `i` from an integer constant `n` of
     * size `bytes`.
     */
    def getIntByte(n : BigInt, bytes : Int, i : Int) : Byte =
        ((n >> (bytes - i - 1) * 8) & 0xff).toByte

    /*
     * Return the bytes of a constant array element.
     */
    def constElemBytes(element : Element) : Vector[Byte] =
        element match {
            case Element(tipe : IntT, IntC(n)) =>
                val bytes = numBytes(tipe)
                Vector.tabulate(bytes)(getIntByte(n, bytes, _))
            case Element(RealT(bits), FloatC(s)) =>
                val bytes = bits / 8
                bytes match {
                    case 4 =>
                        val n = floatStringToInt(s)
                        Vector.tabulate(bytes)(getIntByte(n, bytes, _))
                    case 8 =>
                        val n = doubleStringToLong(s)
                        Vector.tabulate(bytes)(getIntByte(n, bytes, _))
                    case _ =>
                        sys.error(s"constElemBytes: unsupported float size $bytes")
                }
            case _ =>
                sys.error(s"constElemBytes: unsupported element $element")
        }

    /*
     * The bytes of an array constant.
     */
    val constArrayBytes : ArrayC => Vector[Byte] =
        attr {
            case ArrayC(elements) =>
                elements.flatMap(constElemBytes)
        }

    /*
     * The bytes of a double string representated as an Long.
     */
    val doubleStringToLong : String => Long =
        attr {
            case s if s.startsWith("0x") =>
                parseUnsignedLong(s.drop(2), 16)
            case s if s.startsWith("0xK") =>
                parseUnsignedLong(s.drop(3), 16)
            case s =>
                doubleToRawLongBits(s.toDouble)
        }

    /*
     * The bytes of a float string representated as an Int.
     */
    val floatStringToInt : String => Int =
        attr {
            case s if s.startsWith("0x") =>
                parseInt(s.drop(2), 16)
            case s if s.startsWith("0xK") =>
                parseInt(s.drop(3), 16)
            case s =>
                floatToRawIntBits(s.toFloat)
        }

    /*
     * The bytes of a string constant. Includes the nul byte on
     * the end.
     */
    val stringBytes : StringC => Vector[Byte] =
        attr {
            case s =>
                unescape(s).map(_.toByte)
        }

    /*
     * Make a term to get zero-indexed byte `i` from a value of size `bytes`
     * optimising for the case where the `from` value is a constant.
     */
    def getByte(tipe : Type, to : Name, value : Value, bytes : Int, i : Int) : TypedTerm[BVTerm, Term] =
        value match {
            case Const(a : ArrayC) =>
                constArrayBytes(a)(i).withBits(8)
            case Const(IntC(n)) =>
                getIntByte(n, bytes, i).withBits(8)
            case Const(FloatC(s)) =>
                tipe match {
                    case FloatT() =>
                        getIntByte(floatStringToInt(s), bytes, i).withBits(8)
                    case DoubleT() =>
                        getIntByte(doubleStringToLong(s), bytes, i).withBits(8)
                    case _ =>
                        sys.error(s"getByte: unsupported constatnt float type $tipe")
                }
            case Const(a : StringC) =>
                stringBytes(a)(i).withBits(8)
            case Const(ZeroC()) =>
                0.withBits(8)
            case _ =>
                val start = (bytes - i - 1) * 8
                bitsTerm(to, bytes * 8).extract(start + 7, start)
        }

    /*
     * Return a term that expresses storing `from` a value of a given type in
     * to the location specified by the address `to`. In bit mode we get the
     * chunk to which `to` refers and store the bytes of `from` into that
     * chunk at the offset of `to`. In math mode we fall back on equating
     * `from` and `to`.
     */
    def store(to : Name, tipe : Type, from : Value) : TypedTerm[BoolTerm, Term] = {
        val bytes = numBytes(tipe)
        val bits = bytes * 8
        val base = offsetTerm(to)
        val chunk =
            (0 until bytes).foldLeft(prevChunkTerm(to)) {
                case (a, i) =>
                    a.store(
                        if (i == 0) base else base + i.withUBits(32),
                        getByte(tipe, to, from, bytes, i)
                    )
            }
        tipe match {
            case IntT(_) | ArrayT(_, IntT(_)) =>
                vtermI(from, bits) === bitsTerm(to, bits) &
                    chunkTerm(to) === chunk
            case RealT(_) =>
                val (p, e, s) = fpbitTerms(to, bits)
                vtermR(from, bits) === FPBVs(p, e, s) &
                    bitsTerm(to, bits) === p.concat(e.concat(s)) &
                    chunkTerm(to) === chunk
            case ArrayT(_, RealT(_)) =>
                chunkTerm(to) === chunk
            case _ =>
                sys.error(s"store: unsupported type $tipe")
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
     * and address value, plus indices that express a sequence of indexing
     * operations a'la LLVM's `getelementptr` instruction.
     */
    def offset(tipe : Type, name : Name, indices : Seq[ElemIndex]) : TypedTerm[BVTerm, Term] =
        indices.foldLeft((offsetTerm(name), tipe)) {
            case ((a, t), ElemIndex(_, v)) =>
                val (etype, eoff) = elemTypeOffset(t, v)
                v match {
                    case Const(IntC(n)) if n == 0 =>
                        (a, etype)
                    case _ =>
                        (a + eoff, etype)
                }
        }._1

    /*
     * Return a term that expresses that `to` will hold the memory address
     * calculated by a `getelementptr` operation (maybe from an instruction
     * but also can occur as a constant expression). In math mode this
     * operation specifies no effect.
     */
    def getelementptr(to : Name, tipe : Type, from : Value, indices : Seq[ElemIndex]) : TypedTerm[BoolTerm, Term] = {
        val (base, offset) = baseAndOffset(from)
        updateChunk(to, base)
        offsetTerm(to) === offset
    }

    /*
     * Return a term that expresses the effect of a regular LLVM instruction.
     */
    def insnTerm(metaInsn : MetaInstruction) : TypedTerm[BoolTerm, Term] = {
        val insn = metaInsn.instruction
        val term =
            insn match {

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
                    val bits = size.toInt
                    ntermI(to, bits) === iBinary(op, bits, left, right)

                /*
                 * Floating-point binary operation (`left` `op` `right` into `to`).
                 */
                case Binary(Binding(to), FAdd(_), RealT(bits), left, Const(FloatC("0"))) =>
                    ntermR(to, bits) === vtermR(left, bits)

                case Binary(Binding(to), op, RealT(bits), left, right) =>
                    ntermR(to, bits) === fpBinary(op, bits, left, right)

                // Call to `assume`
                case Call(_, _, _, _, _, VerifierFunction(Assume()), Vector(ValueArg(tipe, Vector(), arg)), _) =>
                    tipe match {
                        case BoolT() =>
                            vtermB(arg)
                        case IntT(size) =>
                            val bits = size.toInt
                            !(vtermI(arg, bits) === 0.withUBits(bits))
                        case _ =>
                            sys.error(s"insnTerm: unexpected type ${show(tipe)} in assume call")
                    }

                // Call to `nondet_X` where X is an unsigned type
                case NondetFunctionCall(Binding(to), UnsignedType(bits)) =>
                    ntermI(to, bits) uge 0.withBits(bits)

                // Other calls to `nondet_X`
                case NondetFunctionCall(_, _) =>
                    True()

                // Handle library function calls if possible, ignoring by default
                // Only ones that we can handle should make it here. The rest are
                // trapped when we see if inlining worked

                case LibFunctionCall0(Binding(to), IntT(size), name) =>
                    name match {
                        case FEGetRound() =>
                            val bits = size.toInt
                            ntermI(to, bits) === fegetround(bits)
                        case _ =>
                            True()
                    }

                case LibFunctionCall1(Binding(to), IntT(size), name, arg1, IntT(size1)) =>
                    name match {
                        case FESetRound() =>
                            val bits = size.toInt
                            val bits1 = size1.toInt
                            fesetround(insn, bits, arg1, bits1)
                        case _ =>
                            True()
                    }

                case LibFunctionCall1(Binding(to), tipe, name, arg1, RealT(bits1)) =>
                    val aterm1 = vtermR(arg1, bits1)
                    val bits =
                        tipe match {
                            case IntegerT(bits) => bits
                            case RealT(bits)    => bits
                            case _ =>
                                sys.error(s"insnTerm: LibFunctionCall1 unsupported return type $tipe")
                        }
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
                        case RInt() =>
                            ntermR(to, bits) === aterm1.roundToI
                        case Round() =>
                            ntermR(to, bits) === aterm1.roundToI(ctermRM(RNA()))
                        case SignBit() =>
                            val (p, e, s) = fpbitTerms(to, bits1)
                            (aterm1 === FPBVs(p, e, s)) &
                                (ntermI(to, bits) === (p zext (bits - 1)))
                        case TruncName() =>
                            ntermR(to, bits) === aterm1.roundToI(ctermRM(RTZ()))
                        case _ =>
                            True()
                    }

                case LibFunctionCall2(Binding(to), RealT(bits), name, arg1, RealT(bits1),
                    arg2, RealT(bits2)) =>
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
                            True()
                    }

                // Any other library functions are ignored

                case LibFunctionCall0(_, _, _) =>
                    True()

                case LibFunctionCall1(_, _, _, _, _) =>
                    True()

                case LibFunctionCall2(_, _, _, _, _, _, _) =>
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
                    ntermB(to) === iCompare(icond, bits, left, right)

                // Compare two floating-point values

                case Compare(Binding(to), FCmp(fcond), ComparisonType(bits), left, right) =>
                    ntermB(to) === fpCompare(fcond, bits, left, right)

                // Conversions

                case Convert(Binding(to), _, IntT(_), Const(UndefC()), IntT(_)) =>
                    True()

                case Convert(Binding(to), op, fromType @ IntT(fromSize), from, toType @ IntT(toSize)) =>
                    val toBits = toSize.toInt
                    val fromBits = fromSize.toInt
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
                                sys.error(s"insnTerm: ${show(fromType)} to ${show(toType)} conversion $op not supported")
                        }
                    }

                case Convert(Binding(to), op, fromType @ RealT(fromBits), from, toType @ IntT(toSize)) =>
                    val toBits = toSize.toInt
                    op match {
                        case FPToSI() =>
                            ntermI(to, toBits) === vtermR(from, fromBits).toSBV(toBits)(ctermRM(RTZ()))
                        case FPToUI() =>
                            ntermI(to, toBits) === vtermR(from, fromBits).toUBV(toBits)(ctermRM(RTZ()))
                        case _ =>
                            sys.error(s"insnTerm: ${show(fromType)} to ${show(toType)} conversion $op not supported")
                    }

                case Convert(Binding(to), op, fromType @ IntT(fromSize), from, toType @ RealT(toBits)) =>
                    val fromBits = fromSize.toInt
                    val (exp, sig) = fpexpsig(toBits)
                    val iterm = vintToIntTerm(from, fromBits)
                    op match {
                        case SIToFP() =>
                            ntermR(to, toBits) === iterm.signedToFPBV(exp, sig)
                        case UIToFP() =>
                            ntermR(to, toBits) === iterm.unSignedToFPBV(exp, sig)
                        case _ =>
                            sys.error(s"insnTerm: ${show(fromType)} to ${show(toType)} conversion $op not supported")
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
                                sys.error(s"insnTerm: ${show(fromType)} to ${show(toType)} conversion $op not supported")
                        }
                    }

                case Convert(Binding(to), _, fromType, from, toType) =>
                    equality(to, toType, from, fromType)

                // Select (inline choice)

                case Select(Binding(to), SelectI1T(), from, BoolT(), value1, BoolT(), value2) =>
                    ntermB(to) === vtermB(from).ite(vtermB(value1), vtermB(value2))

                case Select(Binding(to), SelectI1T(), from, IntegerT(size1), value1, IntegerT(size2), value2) if size1 == size2 =>
                    val bits = size1.toInt
                    ntermI(to, bits) === vtermB(from).ite(vtermI(value1, bits), vtermI(value2, bits))

                case Select(Binding(to), SelectI1T(), from, RealT(bits1), value1, RealT(bits2), value2) if bits1 == bits2 =>
                    ntermR(to, bits1) === vtermB(from).ite(vtermR(value1, bits1), vtermR(value2, bits1))

                // Memory operations

                case Alloca(Binding(to), _, _, _, _) =>
                    allocate(to)

                case MemoryAllocFunctionCall(Binding(to), _, _) =>
                    allocate(to)

                case Load(Binding(to), _, tipe, _, from, _) =>
                    load(to, tipe, from)

                case Store(_, tipe, from, _, Named(to), _) =>
                    store(to, tipe, from)

                case GetElementPtr(Binding(to), _, bt1, tipe @ PointerT(bt2, _), from, indices) if bt1 == bt2 =>
                    getelementptr(to, tipe, from, indices)

                // Default

                case insn =>
                    sys.error(s"insnTerm: don't know the effect of ${longshow(insn)}")

            }
        logger.debug(s"insnTerm: ${longshow(insn)} -> ${term.show}")
        term
    }

    /**
     * Make an integer ArrayTerm for the named variable where `id` is the base name
     * identifier and include an index.
     */
    def arrayTermI(id : String, bits : Int, index : Int) : TypedTerm[ArrayTerm[BVTerm], Term] =
        ArrayBV1(termid(id), architecture, bits).indexed(index)

    /**
     * Return a bit vector array term that expresses a name when referenced from node.
     */
    def arrayTermAtI(node : Product, bits : Int, name : Name) : TypedTerm[ArrayTerm[BVTerm], Term] =
        arrayTermI(show(name), bits, indexOf(node, name))

    /**
     * Return an integer term that expresses the previous version of a name when
     * referenced from node.
     */
    def prevArrayTermAtI(node : Product, bits : Int, name : Name) : TypedTerm[ArrayTerm[BVTerm], Term] =
        arrayTermI(show(name), bits, indexOf(node, name) - 1)

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
    def varTermI(id : String, bits : Int, index : Int) : TypedTerm[BVTerm, Term] =
        new VarTerm(termid(id), BitVectorSort(bits.toString), Some(index))

    /**
     * Make a floating-point rounding-mode term for the named variable where `id` is
     * the base name identifier and index it.
     */
    def varTermRM(id : String, index : Int) : TypedTerm[RMFPBVTerm, Term] =
        new VarTerm(termid(id), RoundingModeSort(), Some(index))

    /**
     * Make a bit vector term for the named variable where `id` is the base name
     * identifier and index it.
     */
    def varTermR(id : String, bits : Int, index : Int) : TypedTerm[FPBVTerm, Term] = {
        val sort =
            bits match {
                case 16 => FPFloat16()
                case 32 => FPFloat32()
                case 64 => FPFloat64()
                case 80 =>
                    val (exp, sig) = fpexpsig(80)
                    FPBitVectorSort(exp.toString, sig.toString)
                case 128 => FPFloat128()
                case _   => sys.error(s"valTermRBV: unsupported bit size $bits")
            }
        new VarTerm(termid(id), sort, Some(index))
    }

    /**
     * Return a Boolean term that expresses a name when referenced from node.
     */
    def ntermAtB(node : ASTNode, name : Name) : TypedTerm[BoolTerm, Term] =
        varTermB(show(name), indexOf(node, name))

    /**
     * Return a bit vector term that expresses a name when referenced from node.
     */
    def ntermAtI(node : ASTNode, bits : Int, name : Name) : TypedTerm[BVTerm, Term] =
        varTermI(show(name), bits, indexOf(node, name))

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
     * Return a bit vector term that expresses a name when referenced from node.
     */
    def ntermAtR(node : ASTNode, bits : Int, name : Name) : TypedTerm[FPBVTerm, Term] =
        varTermR(show(name), bits, indexOf(node, name))

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
    def ntermI(name : Name, bits : Int) : TypedTerm[BVTerm, Term] =
        ntermAtI(name, bits, name)

    /**
     * Return an rounding mode term that expresses a name when referenced from node.
     */
    def ntermRM(name : Name) : TypedTerm[RMFPBVTerm, Term] =
        ntermAtRM(name, name)

    /**
     * Return a bit vector term that expresses an LLVM name when referenced
     * from the name node.
     */
    def ntermR(name : Name, bits : Int) : TypedTerm[FPBVTerm, Term] =
        ntermAtR(name, bits, name)

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
    def vtermAtI(node : ASTNode, bits : Int, value : Value) : TypedTerm[BVTerm, Term] =
        value match {
            case Named(name) =>
                ntermAtI(node, bits, name)
            case _ =>
                vtermI(value, bits)
        }

    /**
     * Return a bit vector term that expresses a value when referenced from node.
     */
    def vtermAtR(node : ASTNode, bits : Int, value : Value) : TypedTerm[FPBVTerm, Term] =
        value match {
            case Named(name) =>
                ntermAtR(node, bits, name)
            case _ =>
                vtermR(value, bits)
        }

    /**
     * Return a bit vector term that expresses an LLVM in value with n > 1.
     */
    def vtermI(value : Value, bits : Int) : TypedTerm[BVTerm, Term] =
        value match {
            case Const(c) =>
                ctermI(c, bits)
            case Named(name) =>
                ntermI(name, bits)
            case value =>
                sys.error(s"vtermI: unexpected value $value")
        }

    /**
     * Return a bit vector term that expresses an LLVM floating-point value.
     */
    def vtermR(value : Value, bits : Int) : TypedTerm[FPBVTerm, Term] =
        value match {
            case Const(c) =>
                ctermR(c, bits)
            case Named(name) =>
                ntermR(name, bits)
            case value =>
                sys.error(s"vtermR: unexpected value $value")
        }

    /**
     * Return a Boolean term that expresses an LLVM Boolean constant value.
     */
    def ctermB(constantValue : ConstantValue) : TypedTerm[BoolTerm, Term] =
        constantValue match {
            case CompareC(FCmp(cond), ltype @ ComparisonType(bits), left, rtype, right) if ltype == rtype =>
                fpCompare(cond, bits, Const(left), Const(right))
            case CompareC(ICmp(cond), ltype @ ComparisonType(bits), left, rtype, right) if ltype == rtype =>
                iCompare(cond, bits, Const(left), Const(right))
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
     * Return a bit vector term that expresses an LLVM integer constant value.
     */
    def ctermI(constantValue : ConstantValue, bits : Int) : TypedTerm[BVTerm, Term] =
        constantValue match {
            case BinaryC(op, ltype : IntT, left, rtype, right) if ltype == rtype =>
                iBinary(op, bits, Const(left), Const(right))
            case GetElementPtrC(_, bt1, tipe @ PointerT(bt2, _), NameC(from), indices) if bt1 == bt2 =>
                offset(tipe, from, indices)
            case IntC(i) =>
                i.toInt.withBits(bits)
            case NullC() | ZeroC() =>
                0.withBits(bits)
            case value =>
                sys.error(s"ctermI: unexpected constant value $constantValue")
        }

    /**
     * Return a bit vector term that expresses an LLVM floating-point constant value.
     */
    def ctermR(constantValue : ConstantValue, bits : Int) : TypedTerm[FPBVTerm, Term] =
        constantValue match {
            case BinaryC(op, ltype @ RealT(bits), left, rtype, right) if ltype == rtype =>
                fpBinary(op, bits, Const(left), Const(right))
            case FloatC(f) =>
                if (f.startsWith("0xK"))
                    fphexconst(f.drop(3), 80, bits)
                else if (f.startsWith("0x"))
                    fphexconst(f.drop(2), 64, bits)
                else
                    fpdecconst(f, bits)
            case UndefC() =>
                fpdecconst("0", bits)
            case value =>
                sys.error(s"ctermR: unexpected constant value $constantValue")
        }

    /**
     * Return a rounding mode term that expresses a constant rounding mode.
     */
    def ctermRM(mode : RoundingMode) : TypedTerm[RMFPBVTerm, Term] =
        RMs(mode)

    /*
     * Turn a Boolean term into an integer encoding of the truth value.
     */
    def boolToIntTerm(term : TypedTerm[BoolTerm, Term], bits : Int) : TypedTerm[BVTerm, Term] =
        term.ite(1.withUBits(bits), 0.withUBits(bits))

    /*
     * Turn an LLVM integer name into integer encoding, taking into account
     * Boolean encoding.
     */
    def nintToIntTerm(name : Name, bits : Int) : TypedTerm[BVTerm, Term] =
        if (bits == 1)
            boolToIntTerm(ntermB(name), bits)
        else
            ntermI(name, bits)

    /*
     * Turn an LLVM integer value into integer encoding, taking into account
     * Boolean encoding.
     */
    def vintToIntTerm(value : Value, bits : Int) : TypedTerm[BVTerm, Term] =
        if (bits == 1)
            boolToIntTerm(vtermB(value), bits)
        else
            vtermI(value, bits)

    /**
     * Make an equality term between an LLVM name and an LLVM value. The
     * kind of equality depends on the type of the name. We mostly handle
     * integer, real and Boolean equalities, but also pointers as integers.
     */
    def equality(to : Name, toType : Type, from : Value, fromType : Type) : TypedTerm[BoolTerm, EqualTerm] =
        if (from == Const(UndefC()))
            True() === True()
        else
            (toType, fromType) match {
                case (BoolT(), BoolT()) =>
                    ntermB(to) === vtermB(from)
                case (RealT(bits), RealT(fromBits)) if bits == fromBits =>
                    ntermR(to, bits) === vtermR(from, bits)
                case (IntT(toSize), IntT(fromSize)) if toSize == fromSize =>
                    val bits = toSize.toInt
                    ntermI(to, bits) === vtermI(from, bits)
                case (RealT(bits), IntT(fromSize)) if bits == fromSize.toInt =>
                    val (exp, sig) = fpexpsig(bits)
                    ntermR(to, bits) === vtermI(from, bits).signedToFPBV(exp, sig)
                case (IntT(toSize), RealT(bits)) if toSize.toInt == bits =>
                    val (exp, sig) = fpexpsig(bits)
                    ntermI(to, toSize.toInt).signedToFPBV(exp, sig) === vtermR(from, bits)
                case _ =>
                    (toType, fromType) match {
                        case (BoolT(), IntT(size)) =>
                            val bits = size.toInt
                            ntermB(to) === !(vtermI(from, size.toInt) === 0.withUBits(bits))
                        case (IntT(size), BoolT()) =>
                            val bits = size.toInt
                            ntermI(to, bits) === vintToIntTerm(from, bits)
                        case (PointerT(IntT(toSize), _), PointerT(IntT(fromSize), _)) if toSize == fromSize =>
                            val bits = toSize.toInt
                            ntermI(to, bits) === vtermI(from, bits)
                        case _ =>
                            sys.error(s"equality: unexpected equality: $to : $toType, $from : $fromType")
                    }
            }

    /**
     * Matcher for types that we support comparisons between. Returns the bit size
     * of the compared type.
     */
    object ComparisonType {
        def unapply(tipe : Type) : Option[Int] =
            tipe match {
                case IntT(size)   => Some(size.toInt)
                case _ : PointerT => Some(architecture)
                case RealT(bits)  => Some(bits)
                case _            => None
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

    /*
     * Derive a new name from an existing one by adding a suffix.
     */
    def suffixName(to : Name, suffix : String) : Name = {
        to match {
            case Local(s)  => Local(s + suffix)
            case Global(s) => Global(s + suffix)
        }
    }

}
