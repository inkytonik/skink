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

package au.edu.mq.comp.skink.verifier

/**
 * Helper code needed in multiple modules.
 */
object Helper {

    import java.lang.Double.longBitsToDouble
    import java.lang.Float.intBitsToFloat
    import java.math.BigInteger
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax._
    import scala.math.pow

    def convertFromBase(s : String, base : Int) : Long =
        new BigInteger(s, base).longValue()

    def longToSigned(l : Long, bytes : Int) : Long =
        bytes match {
            case 1 => l.toByte
            case 2 => l.toShort
            case 4 => l.toInt
            case _ => l
        }

    def intValue(s : String, desc : String = "") : (String, String) = {
        val l = convertFromBase(s, 10)
        val comment =
            if (desc == "")
                s"hex: ${l.toHexString}"
            else
                desc
        (s, comment)
    }

    def longToRealString(l : Long, bytes : Int) : String =
        bytes match {
            case 4 => intBitsToFloat(l.toInt).toString
            case 8 => longBitsToDouble(l).toString
            case _ => s"${bytes}"
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

    def fpValue(p : String, e : String, s : String, bits : Int, desc : String = "") : (String, String) = {
        // Get the size of the components
        val (ebits, sbits) = fpexpsig(bits)

        // Exponent is 8-bit signed value adjusted down by 2^(ebits - 1) - 1
        val eadjust = pow(2, ebits - 1) - 1
        val exp = convertFromBase(e, 2) - eadjust
        val expsign = if (exp < 0) -1 else 1

        // If raw exponent is 0 (smallest posisible) then mantissa prefix is 0, else 1
        val pre = if (exp == -eadjust) 0 else 1

        // Signficand is shifted to fractional size and add prefix
        val mant = pre + convertFromBase(s, 2) / pow(2, s.length)

        // The actual value of the number
        val sign = if (p == "0") 1 else -1
        val num = sign * mant * pow(2, expsign * exp)
        val value = f"$num%a"

        // Describe the number in stadnard double notation
        val comment =
            if (desc == "")
                f"dec: $num, hex: $num%a"
            else
                desc

        (value, comment)
    }

    def ones(n : Int) : String =
        "1" * n

    def zeros(n : Int) : String =
        "0" * n

    // See https://www.h-schmidt.net/FloatConverter/IEEE754.html
    // for IEEE FP bit representations

    /*
     * Returns the C value string for a term, plus extra explanation.
     */
    def termToCValueString(term : Term) : (String, String) =
        term match {
            case ConstantTerm(BinLit(s)) =>
                intValue(convertFromBase(s, 2).toString)
            case ConstantTerm(DecBVLit(BVvalue(s), _)) =>
                intValue(s)
            case ConstantTerm(HexaLit(s)) =>
                intValue(convertFromBase(s, 16).toString)
            case ConstantTerm(NumLit(i)) =>
                intValue(i.toString)

            case NegTerm(ConstantTerm(DecBVLit(BVvalue(s), _))) =>
                intValue(s"-$s")
            case NegTerm(ConstantTerm(NumLit(i))) =>
                intValue(s"-$i")

            case QIdTerm(SimpleQId(SymbolId(SSymbol("true")))) =>
                ("1", "true")
            case QIdTerm(SimpleQId(SymbolId(SSymbol("false")))) =>
                ("0", "false")

            case ConstantTerm(DecLit(a, b)) =>
                val num = s"$a.$b"
                (num, f"dec: $num, hex: ${num.toDouble}%a")
            case NegTerm(ConstantTerm(DecLit(a, b))) =>
                val num = s"-$a.$b"
                (num, f"dec: $num, hex: ${num.toDouble}%a")

            case ConstantTerm(FPPlusInfinity(_, _)) =>
                ("1.0 / 0.0", "+Infinity")
            case ConstantTerm(FPMinusInfinity(_, _)) =>
                ("-(1.0 / 0.0)", "-Infinity")
            case ConstantTerm(FPBVPlusZero(_, _)) =>
                ("0.0", "+Zero")
            case ConstantTerm(FPBVMinusZero(_, _)) =>
                ("-0.0", "-Zero")
            case ConstantTerm(FPBVNaN(_, _)) =>
                ("0.0 / 0.0", "NaN")

            case FPBVvalueTerm(ConstantTerm(BinLit(p)), ConstantTerm(BinLit(e)), ConstantTerm(BinLit(s))) =>
                fpValue(p, e, s, p.length + e.length + s.length)

            case RealDivTerm(ConstantTerm(NumLit(a)), List(ConstantTerm(NumLit(b)))) =>
                (s"${a.toDouble} / ${b.toDouble}", f"${a.toDouble / b.toDouble}%f")
            case NegTerm(t : RealDivTerm) =>
                val (s, c) = termToCValueString(t)
                (s"-($s)", s"-$c")

            case ConstantTerm(RoundingModeLit(RNE())) =>
                ("FE_TONEAREST", "RNE")
            case ConstantTerm(RoundingModeLit(RTN())) =>
                ("FE_DOWNWARD", "RTN")
            case ConstantTerm(RoundingModeLit(RTP())) =>
                ("FE_UPWARD", "RTP")
            case ConstantTerm(RoundingModeLit(RTZ())) =>
                ("FE_TOWARDZERO", "RTZ")

            case ConstArrayTerm(_, elem) =>
                val (s, c) = termToCValueString(elem)
                (s"[$s..]", "")
            case StoreTerm(array, index, elem) =>
                val (sa, ca) = termToCValueString(array)
                val (si, ci) = termToCValueString(index)
                val (se, ce) = termToCValueString(elem)
                (s"$sa[$si -> $se]", "")

            case term =>
                sys.error(s"termToCValueString: unexpected value term $term")
        }

}
