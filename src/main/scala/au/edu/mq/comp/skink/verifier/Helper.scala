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

    def convertBase(s : String, base : Int) : Long =
        new BigInteger(s, base).longValue()

    def longToSigned(l : Long, bytes : Int) : Long =
        bytes match {
            case 1 => l.toByte
            case 2 => l.toShort
            case 4 => l.toInt
            case _ => l
        }

    def intValue(s : String, desc : String = "") : (String, String) = {
        val l = convertBase(s, 10)
        val comment =
            if (desc == "") {
                val h = l.toHexString
                val s = longToSigned(l, h.length / 2)
                s"0x$h $s"
            } else
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
        val (ebits, sbits) = fpexpsig(bits)

        val sign = if (p == "0") "" else "-"

        // Exponent is adjusted by subtracting 2^bits - 1
        val eadjust = pow(2, ebits - 1).toLong
        val eraw = convertBase(e, 2)
        val exp = eraw - eadjust + 1

        // If raw exponent is 0 (smallest posisible) then mantissa prefix is 0, else 1
        val pre = if (eraw == 0) 0 else 1

        val sig = s"${pre}.${convertBase(s, 2)}"

        val comment =
            if (desc == "") {
                val n = s"$p$e$s"
                val l = convertBase(n, 2)
                longToRealString(l, n.length / 8)
            } else
                desc

        val suffix =
            bits match {
                case 32 => "f"
                case 64 => "l"
                case _  => sys.error(s"fpValue: unknown size $bits, so don't know suffix")
            }

        (s"${sign}0x${sig}p${exp}${suffix}", comment)
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
            case ConstantTerm(DecLit(s)) =>
                intValue(s)
            case ConstantTerm(DecBVLit(BVvalue(s), _)) =>
                intValue(s)
            case ConstantTerm(HexaLit(s)) =>
                intValue(convertBase(s, 16).toString)
            case ConstantTerm(NumLit(i)) =>
                intValue(i.toString)
            case NegTerm(ConstantTerm(NumLit(i))) =>
                intValue(s"-$i")

            case QIdTerm(SimpleQId(SymbolId(SSymbol("true")))) =>
                ("1", "true")
            case QIdTerm(SimpleQId(SymbolId(SSymbol("false")))) =>
                ("0", "false")

            case ConstantTerm(FPPlusInfinity(e, s)) =>
                fpValue("1", ones(e), zeros(s), e + s, "+Infinity")
            case ConstantTerm(FPMinusInfinity(e, s)) =>
                fpValue("0", ones(e), zeros(s), e + s, "-Infinity")
            case ConstantTerm(FPBVPlusZero(e, s)) =>
                fpValue("1", zeros(e), zeros(s), e + s, "+Zero")
            case ConstantTerm(FPBVMinusZero(e, s)) =>
                fpValue("0", zeros(e), zeros(s), e + s, "-Zero")
            case ConstantTerm(FPBVNaN(e, s)) =>
                fpValue("1", ones(e), ones(s), e + s, "NaN")
            case FPBVvalueTerm(ConstantTerm(BinLit(p)), ConstantTerm(BinLit(e)), ConstantTerm(BinLit(s))) =>
                fpValue(p, e, s, p.length + e.length + s.length)

            case ConstArrayTerm(_, elem) =>
                val (s, c) = termToCValueString(elem)
                (s"[$s..]", "")
            case StoreTerm(array, index, elem) =>
                val (sa, ca) = termToCValueString(array)
                val (si, ci) = termToCValueString(index)
                val (se, ce) = termToCValueString(elem)
                (s"$sa[$si -> $se]", "")

            case term =>
                ("", "")
        }

}
