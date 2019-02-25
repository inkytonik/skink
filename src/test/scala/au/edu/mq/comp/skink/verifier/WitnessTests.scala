/*
 * This file is part of Skink.
 *
 * Copyright (C) 2019
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

import org.scalatest.{FunSuiteLike, Matchers}

class WitnessTests extends FunSuiteLike with Matchers {

    import au.edu.mq.comp.skink.verifier.Helper.{fpexpsig, termToCValueString}
    import au.edu.mq.comp.skink.verifier.SMTLIB2Interpolators._
    import java.lang.Float.floatToRawIntBits
    import java.lang.Double.doubleToRawLongBits

    // Boolean witness values

    witnessValueTest("true", "1", "true")
    witnessValueTest("false", "0", "false")

    // Integer witness values

    val intSizes = Vector(8, 16, 32, 64)

    val integerValues : Vector[BigInt] =
        Vector(
            Long.MaxValue,
            Int.MaxValue,
            1828272,
            42,
            0,
            -152,
            -17744445,
            Int.MinValue,
            Long.MinValue
        )

    for (decValue <- integerValues) {
        val value = decValue.toLong
        val hexValue = value.toHexString
        val binValue = value.toBinaryString

        val decTerm = if (decValue >= 0) s"$decValue" else s"(- ${-decValue})"
        val hexTerm = s"#x$hexValue"
        val binTerm = s"#b$binValue"

        val comment = s"hex: $hexValue"

        witnessValueTest(decTerm, s"$decValue", comment)
        witnessValueTest(hexTerm, s"$decValue", comment)
        witnessValueTest(binTerm, s"$decValue", comment)

        for (bits <- intSizes) {
            val min = -(BigInt(1) << (bits - 1))
            val max = (BigInt(1) << (bits - 1)) - 1
            if ((decValue >= min) && (decValue <= max)) {
                val bvTerm = if (decValue >= 0)
                    s"(_ bv$decValue $bits)"
                else
                    s"(- (_ bv${-decValue} $bits))"
                witnessValueTest(bvTerm, s"$decValue", comment)
            }
        }
    }

    // Floating-point witness values

    val floatSizes = Vector(32, 64)

    val floatValues : Vector[Double] =
        Vector(
            Double.MaxValue,
            Float.MaxValue,
            1828210.625,
            42.5,
            0.0,
            -152.0625,
            -177403.125,
            Float.MinValue,
            Double.MinValue
        )

    def testBVFloat(value : Double, hexValue : String, bitString : String,
        exp : Int, sig : Int) {
        val paddedBits = ("0" * ((exp + sig) - bitString.length)) + bitString
        val p = if (value < 0) "1" else "0"
        val e = paddedBits.slice(1, exp + 1)
        val s = paddedBits.slice(exp + 1, exp + sig)
        val bvTerm = s"(fp #b$p #b$e #b$s)"
        val comment = s"dec: $value, hex: $hexValue"
        witnessValueTest(bvTerm, s"$hexValue", comment)
    }

    for (value <- floatValues) {
        val decValue = f"$value%f"
        val hexValue = f"$value%a"

        val decTerm =
            if (value >= 0)
                f"$value%f"
            else
                f"(- ${-value}%f)"

        val comment = s"dec: $decValue, hex: $hexValue"

        witnessValueTest(decTerm, s"$decValue", comment)

        if ((Float.MinValue <= value) && (value <= Float.MaxValue)) {
            val intValue = floatToRawIntBits(value.toFloat)
            testBVFloat(value, hexValue, intValue.toBinaryString, 8, 24)
        }

        if ((Double.MinValue <= value) && (value <= Double.MaxValue)) {
            val longValue = doubleToRawLongBits(value.toDouble)
            testBVFloat(value, hexValue, longValue.toBinaryString, 11, 53)
        }
    }

    for (bits <- floatSizes) {
        val (exp, sig) = fpexpsig(bits)

        witnessValueTest(s"(_ +oo $exp $sig)", "1.0 / 0.0", "+Infinity")
        witnessValueTest(s"(_ -oo $exp $sig)", "-(1.0 / 0.0)", "-Infinity")

        witnessValueTest(s"(_ +zero $exp $sig)", s"0.0", "+Zero")
        witnessValueTest(s"(_ -zero $exp $sig)", s"-0.0", "-Zero")

        witnessValueTest(s"(_ NaN $exp $sig)", "0.0 / 0.0", "NaN")
    }

    witnessValueTest("(/ 12 34)", "12.0 / 34.0", f"${12.toDouble / 34.toDouble}%f")
    witnessValueTest("(- (/ 8 5))", "-(8.0 / 5.0)", f"${-(8.toDouble / 5.toDouble)}%f")

    // Rounding-mode witness values

    witnessValueTest("RNE", "FE_TONEAREST", "RNE")
    witnessValueTest("RTN", "FE_DOWNWARD", "RTN")
    witnessValueTest("RTP", "FE_UPWARD", "RTP")
    witnessValueTest("RTZ", "FE_TOWARDZERO", "RTZ")

    // Arrays, stores

    {
        val a = "((as const (Array Int Int)) 27)"
        witnessValueTest(a, "[27..]", "")
        witnessValueTest(s"(store $a 5 42)", "[27..][5 -> 42]", "")
        witnessValueTest(s"(store (store $a 5 42) 6 19)", "[27..][5 -> 42][6 -> 19]", "")
    }

    // Utilities

    def witnessValueTest(term : String, value : String, comment : String) {
        test(s"""$term has witness value $value, comment "$comment"""") {
            val (v, c) = termToCValueString(term"$term")
            v shouldBe value
            c shouldBe comment
        }
    }

}
