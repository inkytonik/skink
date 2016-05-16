package au.edu.mq.comp.skink.verifier

import au.edu.mq.comp.skink.SkinkConfig

/**
 * The main verifier which wraps the trace refinement process with
 * output that is suitable for the SV-COMP.
 */
class Verifier(config : SkinkConfig) {

    import au.edu.mq.comp.automat.lang.Lang
    import au.edu.mq.comp.skink.ir.{FailureTrace, IRFunction}
    import scala.util.{Failure, Success}

    /**
     * Verify a function and output the result in SV-COMP format.
     */
    def verify(function : IRFunction) {

        def runVerification() {
            Lang(function.nfa).getAcceptedTrace match {
                case None =>
                    reportUnknown(s"Function ${function.name} has no error trace")
                case _ =>
                    val refiner = new TraceRefinement(config)
                    refiner.traceRefinement(function) match {
                        case Success(None) =>
                            reportCorrect()
                        case Success(Some(witnessTrace)) =>
                            reportIncorrect(function, witnessTrace)
                        case Failure(e) =>
                            reportUnknown(s"Refinement failure: ${e.getMessage}")
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

    /**
     * Convenience method for reporting TRUE results (i.e., we believe that
     * the program is correct).
     */
    def reportCorrect() {
        config.output().emitln("TRUE")
    }

    /**
     * Convenience method for reporting an exception result including a stack
     * trace.
     */
    def reportException(e : Exception) {
        val stackTrace = e.getStackTrace().mkString("\n at ")
        reportUnknown(s"Refinement failure: exception\n$e\n$stackTrace")
    }

    /**
     * Convenience method for reporting FALSE results (i.e., we believe that
     * the program is incorrect).
     */
    def reportIncorrect(function : IRFunction, failureTrace : FailureTrace) {
        config.output().emitln("FALSE")
        new Witnesses(config).printWitness(function, failureTrace)
    }

    /**
     * Convenience method for reporting UNKNOWN results (i.e., we can't tell
     * if the program is correct or not).
     */
    def reportUnknown(message : String) {
        config.output().emitln(s"UNKNOWN\n$message")
    }

}
