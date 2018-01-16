package au.edu.mq.comp.skink.verifier

import au.edu.mq.comp.skink.SkinkConfig
import au.edu.mq.comp.skink.ir.Verifiable

/**
 * Support for SV-COMP GraphML witness generation in the trace format,
 * i.e., encoding the steps of a failing trace.
 */
class TraceWitnesses(config : SkinkConfig) extends Witnesses(config) {

    import au.edu.mq.comp.skink.ir.{FailureTrace}

    def printViolationWitness(function : Verifiable, failTrace : FailureTrace) {

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
