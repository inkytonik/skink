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
    import java.math.BigInteger
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax._
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2PrettyPrinter.show

    def convertBase(s : String, base : Int) : Long =
        new BigInteger(s, base).longValue()

    def fpValue(s : String, desc : String = "") : String = {
        val l = convertBase(s, 2)
        val h = l.toHexString
        val d =
            if (desc == "")
                longBitsToDouble(l).toString
            else
                desc
        s"0x$h /* $d */"
    }

    def ones(n : Int) : String =
        "1" * n

    def zeros(n : Int) : String =
        "0" * n

    // See https://www.h-schmidt.net/FloatConverter/IEEE754.html
    // for IEEE FP bit representations

    def termToCValueString(term : Term) : String =
        term match {
            case ConstantTerm(DecLit(s))                        => s
            case ConstantTerm(DecBVLit(BVvalue(s), _))          => s
            case ConstantTerm(HexaLit(s))                       => convertBase(s, 16).toString
            case ConstantTerm(NumLit(i))                        => i.toString
            case NegTerm(ConstantTerm(NumLit(i)))               => s"-$i"

            case QIdTerm(SimpleQId(SymbolId(SSymbol("true"))))  => "1"
            case QIdTerm(SimpleQId(SymbolId(SSymbol("false")))) => "0"

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
