package au.edu.mq.comp.skink.verifier

import au.edu.mq.comp.skink.SkinkConfig

/**
 * The main verifier which wraps the trace refinement process with
 * output that is suitable for the SV-COMP.
 */
class Verifier(config : SkinkConfig) {

    import au.edu.mq.comp.automat.lang.Lang
    import au.edu.mq.comp.skink.ir.{FailureTrace, IRFunction}
    import au.edu.mq.comp.skink.Skink.getLogger
    import scala.util.{Failure, Success}

    val logger = getLogger(this.getClass)

    /**
     * Verify a function and output the result in SV-COMP format.
     */
    def verify(function : IRFunction) {

        logger.info(s"verify: ${function.name}")

        def reportCorrect() {
            logger.info(s"verify: ${function.name} is correct")
            config.output().emitln("TRUE")
        }

        def reportException(e : Exception) {
            logger.debug(s"""$e\n${e.getStackTrace().mkString("\n at ")}""")
            reportUnknown(s"refinement failure due to exception: ${e.getMessage()}")
        }

        def reportIncorrect(failureTrace : FailureTrace) {
            logger.info(s"verify: ${function.name} is incorrect")
            config.output().emitln("FALSE")
            new Witnesses(config).printWitness(function, failureTrace)
        }

        def reportUnknown(message : String) {
            logger.info(s"verify: correctness of ${function.name} is unknown")
            logger.info(s"verify: $message")
            config.output().emitln(s"UNKNOWN\n$message")
        }

        def runVerification() {
            Lang(function.nfa).getAcceptedTrace match {
                case None =>
                    reportUnknown(s"function ${function.name} has no error trace")
                case _ =>
                    val refiner = new TraceRefinement(config)
                    refiner.traceRefinement(function) match {
                        case Success(None) =>
                            reportCorrect()
                        case Success(Some(witnessTrace)) =>
                            reportIncorrect(witnessTrace)
                        case Failure(e) =>
                            reportUnknown(s"refinement failure: ${e.getMessage}")
                    }
            }
        }

        try {
            runVerification()
        } catch {
            case e : java.lang.Exception =>
                reportException(e)
        }

    }

}
