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

import au.edu.mq.comp.skink.SkinkConfig

/**
 * Support for SV-COMP GraphML witness generation in the nondet format,
 * i.e., with the values returned by all nondet function calls.
 *
 */
class NonDetWitnesses(config : SkinkConfig) extends Witnesses(config) {

    import au.edu.mq.comp.skink.ir.{FailureTrace, IRFunction}
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax._
    import org.bitbucket.franck44.scalasmt.typedterms.Value

    def convert(s : String, base : Int) : String =
        new java.math.BigInteger(s, base).intValue().toString

    // See https://www.h-schmidt.net/FloatConverter/IEEE754.html
    // for IEEE FP bit representations

    def ones(n : Int) : String =
        "1" * n

    def zeros(n : Int) : String =
        "0" * n

    def termToCValue(term : Term) : String =
        term match {
            case ConstantTerm(DecLit(s))                        => s
            case ConstantTerm(DecBVLit(BVvalue(s), _))          => s
            case ConstantTerm(HexaLit(i))                       => convert(i, 16)
            case ConstantTerm(NumLit(i))                        => i.toString
            case NegTerm(ConstantTerm(NumLit(i)))               => s"-$i"

            case QIdTerm(SimpleQId(SymbolId(SSymbol("true"))))  => "1"
            case QIdTerm(SimpleQId(SymbolId(SSymbol("false")))) => "0"

            case ConstantTerm(FPPlusInfinity(e, s)) =>
                s"0x0${ones(e)}${zeros(s)} /* +Infinity */"
            case ConstantTerm(FPMinusInfinity(e, s)) =>
                s"1x0${ones(e)}${zeros(s)} /* -Infinity */"
            case ConstantTerm(FPBVPlusZero(e, s)) =>
                s"0x0${zeros(e + s)} /* +0 */"
            case ConstantTerm(FPBVMinusZero(e, s)) =>
                s"0x1${zeros(e + s)} /* -0 */"
            case ConstantTerm(FPBVNaN(e, s)) =>
                s"0x0${ones(e + s)} /* NaN */"
            case FPBVvalueTerm(ConstantTerm(BinLit(p)), ConstantTerm(BinLit(e)), ConstantTerm(BinLit(s))) =>
                s"0x$p$e$s"

            case term =>
                sys.error(s"optValueToCValue: unexpected value $term")
        }

    def optValueToCValue(optValue : Option[Value]) : String =
        optValue match {
            case Some(v) =>
                termToCValue(v.t)
            case None =>
                "0"
        }

    def printViolationWitness(function : IRFunction, failTrace : FailureTrace) {
        val returnedValues = function.traceToNonDetValues(failTrace)
        val numsteps = returnedValues.length

        for (i <- 0 until numsteps) {
            val call = returnedValues(i)
            logger.info(s"""printViolationWitness: call ${field(call.optCode)} gave ${call.optValue.getOrElse("nothing")}""")
        }

        val calls =
            returnedValues.zipWithIndex.map {
                case (call, index) =>
                    val node = if (index == 0) "" else mkNode(index) + "\n"
                    val value = optValueToCValue(call.optValue)
                    val edge =
                        mkEdge(
                            index,
                            mkData(Some(s"\\result == $value;"), "assumption") +
                                mkData(Some("main"), "assumption.scope") +
                                mkData(Some(s"__VERIFIER_nondet_${call.tipe}"), "assumption.resultfunction") +
                                mkData(call.optCode, "edge.src") +
                                mkData(call.optLine, "startline")
                        )
                    s"$node$edge"
            }

        val entryData = mkData(Some("true"), "entry")
        val errorData = mkData(Some("true"), "violation")

        val nodesAndEdges =
            if (numsteps == 0)
                Seq(mkNode(0, entryData + errorData))
            else {
                val entry = mkNode(0, entryData)
                val error = mkNode(numsteps, errorData)
                entry +: calls :+ error
            }

        outputWitness(ViolationWitness(nodesAndEdges))
    }

}
