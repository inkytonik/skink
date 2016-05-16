package au.edu.mq.comp.skink.verifier

import au.edu.mq.comp.skink.SkinkConfig

class Verifier(config : SkinkConfig) {

    import au.edu.mq.comp.automat.lang.Lang
    import au.edu.mq.comp.skink.ir.IRFunction
    import scala.util.{Failure, Success}

    /**
     * Verify a function and output result in SV-COMP format.
     */
    def verify(function : IRFunction) {

        def runVerification() {
            Lang(function.nfa).getAcceptedTrace match {
                case None =>
                    reportUnknown("Function has no error trace")
                case _ =>
                    val refiner = new TraceRefinement(config)
                    refiner.traceRefinement(function) match {
                        case Success(None) =>
                            config.output().emitln("TRUE")
                        case Success(Some(witnessTrace)) =>
                            config.output().emitln("FALSE")
                            val witnesses = new Witnesses(config)
                            witnesses.printWitness(function, witnessTrace)
                        case Failure(e) =>
                            reportUnknown(s"Refinement failure\n${e.getMessage}")
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
     * Convenience method for reporting an exception result including a stack
     * trace.
     */
    def reportException(e : Exception) {
        val stackTrace = e.getStackTrace().mkString("\n at ")
        reportUnknown(s"$e\n$stackTrace")
    }

    /**
     * Convenience method for reporting UNKNOWN results.
     */
    def reportUnknown(message : String) {
        config.output().emitln(s"UNKNOWN\n$message")
    }

}
