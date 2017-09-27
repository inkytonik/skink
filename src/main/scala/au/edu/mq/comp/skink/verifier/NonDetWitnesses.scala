package au.edu.mq.comp.skink.verifier

import au.edu.mq.comp.skink.SkinkConfig

/**
 * Support for SV-COMP GraphML witness generation in the nondet format,
 * i.e., with the values returned by all nondet function calls.
 *
 */
class NonDetWitnesses(config : SkinkConfig) extends Witnesses(config) {

    import au.edu.mq.comp.skink.ir.{FailureTrace}
    import au.edu.mq.comp.skink.verifier.Verifiable

    def printViolationWitness(function : Verifiable, failTrace : FailureTrace) {
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
                    val value = call.optValue.getOrElse(0)
                    val edge =
                        mkEdge(
                            index,
                            mkData(Some(s"\\result == $value"), "assumption") +
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
