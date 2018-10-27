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
    import au.edu.mq.comp.skink.verifier.Helper.termToCValueString
    import org.bitbucket.franck44.scalasmt.typedterms.Value

    def optValueToCValue(optValue : Option[Value]) : (String, String) =
        optValue match {
            case Some(v) =>
                termToCValueString(v.t)
            case None =>
                ("0", "unknown")
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
                    val (value, note) = optValueToCValue(call.optValue)
                    val edge =
                        mkEdge(
                            index,
                            mkData(Some(s"\\result == $value;"), "assumption") +
                                mkData(Some(note), "assumption.note") +
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
