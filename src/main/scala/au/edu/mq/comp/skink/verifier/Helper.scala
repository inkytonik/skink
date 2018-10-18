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
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2PrettyPrinter.show

    def convertBase(s : String, base : Int) : Long =
        new BigInteger(s, base).longValue()

    def longToSigned(l : Long, bytes : Int) : Long =
        bytes match {
            case 2  => (l.toByte << 1) >> 1
            case 4  => (l.toShort << 1) >> 1
            case 8  => (l.toInt << 1) >> 1
            case 16 => (l << 1) >> 1
            case _  => l
        }

    def intValue(s : String, desc : String = "") : String = {
        val l = convertBase(s, 10)
        val comment =
            if (desc == "") {
                val h = l.toHexString
                val s = longToSigned(l, h.length)
                s"0x$h $s"
            } else
                desc
        s"$s /* $comment */"
    }

    def longToRealString(l : Long, bytes : Int) : String =
        bytes match {
            case 4 => intBitsToFloat(l.toInt).toString
            case 8 => longBitsToDouble(l).toString
            case _ => s"${bytes}"
        }

    def fpValue(s : String, desc : String = "") : String = {
        val l = convertBase(s, 2)
        val h = l.toHexString
        val comment =
            if (desc == "")
                longToRealString(l, s.length / 8)
            else
                desc
        s"0x$h /* $comment */"
    }

    def ones(n : Int) : String =
        "1" * n

    def zeros(n : Int) : String =
        "0" * n

    // See https://www.h-schmidt.net/FloatConverter/IEEE754.html
    // for IEEE FP bit representations

    def termToCValueString(term : Term) : String =
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
                intValue("1", "true")
            case QIdTerm(SimpleQId(SymbolId(SSymbol("false")))) =>
                intValue("0", "false")

            case ConstantTerm(FPPlusInfinity(e, s)) =>
                fpValue(s"0${ones(e)}${zeros(s)}", "+Infinity")
            case ConstantTerm(FPMinusInfinity(e, s)) =>
                fpValue(s"1${ones(e)}${zeros(s)}", "-Infinity")
            case ConstantTerm(FPBVPlusZero(e, s)) =>
                fpValue(s"0${zeros(e + s)}", "+Zero")
            case ConstantTerm(FPBVMinusZero(e, s)) =>
                fpValue(s"1${zeros(e + s)}", "-Zero")
            case ConstantTerm(FPBVNaN(e, s)) =>
                fpValue(s"0${ones(e + s)}", "NaN")
            case FPBVvalueTerm(ConstantTerm(BinLit(p)), ConstantTerm(BinLit(e)), ConstantTerm(BinLit(s))) =>
                fpValue(s"$p$e$s")

            case term =>
                show(term)
        }

}
