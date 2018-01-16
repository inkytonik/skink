/*
 * This file is part of Skink.
 *
 * Copyright (C) 2015-2018
 * Franck Cassez, Anthony M. Sloane, Matthew Roberts.
 *
 * Skink is free software: you can redistribute it and/or modify it  under
 * the terms of the  GNU Lesser General Public License as published by the
 * Free Software Foundation,  either version 3 of the License, or (at your
 * option) any later version.
 *
 * Skink is distributed  in the hope  that it will  be useful, but WITHOUT
 * ANY WARRANTY;  without  even the implied   warranty  of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE.
 *
 * See the GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with Skink.  (See files COPYING and  COPYING.LESSER.)  If not, see
 * <http://www.gnu.org/licenses/>.
 */

package au.edu.mq.comp.skink.verifier

import au.edu.mq.comp.skink.SkinkConfig

/**
 * Support for SV-COMP GraphML witness generation in the trace format,
 * i.e., encoding the steps of a failing trace.
 */
class TraceWitnesses(config : SkinkConfig) extends Witnesses(config) {

    import au.edu.mq.comp.skink.ir.{FailureTrace, IRFunction}

    def printViolationWitness(function : IRFunction, failTrace : FailureTrace) {

        val steps = function.traceToSteps(failTrace)
        val numsteps = steps.length

        for (i <- 0 until numsteps) {
            val step = steps(i)
            logger.info(s"printViolationWitness: step $i = block ${field(step.optBlockName)}: ${field(step.optBlockCode)} -> ${field(step.optTermCode)}")
        }

        val nodesAndEdges =
            steps.zipWithIndex.map {
                case (step, index) =>
                    val entry =
                        if (index == 0)
                            mkData(Some("true"), "entry")
                        else
                            ""
                    val violation =
                        if (index == numsteps - 1)
                            mkData(Some("true"), "violation")
                        else
                            ""
                    val node =
                        mkNode(
                            index,
                            entry +
                                violation +
                                mkData(step.optBlockName, "block") +
                                mkData(step.optBlockCode, "node.src")
                        )
                    val edge =
                        if (index == numsteps - 1)
                            ""
                        else
                            "\n" +
                                mkEdge(
                                    index,
                                    mkData(step.optTermCode, "edge.src") +
                                        mkData(step.optTermLine, "startline") +
                                        mkData(step.optTermLine, "endline")
                                )
                    s"$node$edge"
            }

        outputWitness(ViolationWitness(nodesAndEdges))
    }

}
