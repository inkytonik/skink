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

import au.edu.mq.comp.skink.SkinkConfig
import au.edu.mq.comp.skink.ir.IRFunction
import org.bitbucket.inkytonik.kiama.util.Source

/**
 * Support for SV-COMP GraphML witness generation in the nondet format,
 * i.e., with the values returned by all nondet function calls.
 */
class NonDetWitnesses(origSource : Source, source : Source, function : IRFunction,
    config : SkinkConfig) extends Witnesses(origSource, source, config) {

    import au.edu.mq.comp.skink.ir.{ErrorCall, FailureTrace, IRFunction, NonDetCall}
    import au.edu.mq.comp.skink.verifier.Helper.{checkFalseWitness, termToCValueString}
    import org.bitbucket.franck44.scalasmt.typedterms.Value
    import org.bitbucket.inkytonik.kiama.output.PrettyPrinter._
    import org.bitbucket.inkytonik.kiama.util.Filenames.dropDirectory
    import org.bitbucket.inkytonik.kiama.util.Messaging.{info, error, Messages, noMessages}
    import org.bitbucket.inkytonik.kiama.util.StringSource
    import scala.collection.immutable.Seq

    def optValueToCValue(optValue : Option[Value]) : (String, String) =
        optValue match {
            case Some(v) =>
                termToCValueString(v.t)
            case None =>
                ("0", "unknown")
        }

    def printViolationWitness(function : IRFunction, failTrace : FailureTrace) : Messages = {
        val verifierCalls = function.traceToVerifierCalls(failTrace)
        val numcalls = verifierCalls.length

        for (call <- verifierCalls) {
            logger.info(source, s"""printViolationWitness: call ${field(call.optCode)} gave ${call.optValue.getOrElse("nothing")}""")
        }

        val callpps =
            verifierCalls.zipWithIndex.map {
                case (call, index) =>
                    val offsetStart = call.optOffsetStart.getOrElse(1)
                    val offsetFinish = call.optOffsetFinish.getOrElse(1)
                    call match {
                        case _ : ErrorCall =>
                            val node = if (index == 0) "" else mkNode(index) + "\n"
                            val data =
                                mkData(call.optCode, "edge.src") +
                                    mkData(call.optLine, "startline")
                            val code = call.optCode.getOrElse("__VERIFIER_error()")
                            val edge = mkEdge(index, data)
                            val pp = "*" <+> linkRange(offsetStart, offsetFinish, code)
                            (s"$node$edge", pp)

                        case nondetCall : NonDetCall =>
                            val node = if (index == 0) "" else mkNode(index) + "\n"
                            val (value, note) = optValueToCValue(call.optValue)
                            val nondet = s"__VERIFIER_nondet_${nondetCall.tipe}"
                            val data =
                                mkData(Some(s"\\result == $value;"), "assumption") +
                                    mkData(Some(note), "assumption.note") +
                                    mkData(Some(functionName), "assumption.scope") +
                                    mkData(Some(nondet), "assumption.resultfunction") +
                                    mkData(call.optCode, "edge.src") +
                                    mkData(call.optLine, "startline")
                            val code = call.optCode.getOrElse(nondet)
                            val edge = mkEdge(index, data)
                            val pp =
                                "*" <+> linkRange(offsetStart, offsetFinish, code) <>
                                    nest(
                                        line <>
                                            "*" <+> value <@>
                                            "*" <+> note
                                    ) <>
                                        line
                            (s"$node$edge", pp)
                    }
            }

        val calls = callpps.map(_._1)
        val pps = callpps.map(_._2)

        val entryData = mkData(Some("true"), "entry")
        val errorData = mkData(Some("true"), "violation")

        val nodesAndEdges =
            if (numcalls == 0)
                Seq(mkNode(0, entryData + errorData))
            else {
                val entry = mkNode(0, entryData)
                val error = mkNode(numcalls, errorData)
                entry +: calls :+ error
            }

        val witness = ViolationWitness(nodesAndEdges)
        outputWitness(witness)

        if (config.server()) {
            config.driver.publishProduct(
                origSource,
                "result|calls",
                "c",
                pretty(vcat(pps)),
                false
            )

            val lastCall = verifierCalls.last
            val lastCallOffset = lastCall.optOffsetStart.getOrElse(1)
            val lastCallPosition = origSource.offsetToPosition(lastCallOffset)
            config.driver.positions.setAllPositions(lastCall, lastCallPosition)
            val lastCallMessages = error(lastCall, "error call can be reached")

            val witSource = StringSource(makeWitnessXML(witness))
            val (out, err) = checkFalseWitness(witSource, filename, config)
            config.driver.publishProductStr(
                origSource,
                "result|validation",
                "txt",
                s"* report from fshell-w2t\n\n${out}",
                false
            )

            val expected = s"${dropDirectory(filename)}: OK\nFALSE\n"
            val validationMessages =
                if (out == expected)
                    info(function, s"violation witness for ${function.name} has been validated by fshell-w2t")
                else
                    error(function, s"violation witness for ${function.name} could not be validated by fshell-w2t")

            lastCallMessages ++ validationMessages
        } else
            noMessages
    }

}
