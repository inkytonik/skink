package au.edu.mq.comp.skink.verifier

import au.edu.mq.comp.skink.SkinkConfig
import au.edu.mq.comp.skink.ir.IR

/**
 * The main verifier which wraps the trace refinement process with
 * output that is suitable for the SV-COMP.
 */
class Verifier(config : SkinkConfig) {

    import au.edu.mq.comp.automat.lang.Lang
    import au.edu.mq.comp.skink.ir.{FailureTrace, IR, IRFunction}
    import au.edu.mq.comp.skink.Skink.getLogger
    import scala.util.{Failure, Success}

    val logger = getLogger(this.getClass)

    /**
     * Verify a program and output the result in SV-COMP format.
     */
    def verify(ir : IR) {
        logger.info(s"verify: ${ir.name}")

        val witnesses = new Witnesses(config)

        def reportCorrect() {
            logger.info(s"verify: ${ir.name} is correct")
            config.output().emitln("TRUE")
            witnesses.printCorrectnessWitness(ir)
        }

        def reportException(e : Exception) {
            logger.debug(s"""$e\n${e.getStackTrace().mkString("\n at ")}""")
            reportUnknown(s"refinement failure due to exception: ${e.getMessage()}")
        }

        def reportIncorrect(failureTrace : FailureTrace) {
            logger.info(s"verify: ${ir.name} is incorrect")
            config.output().emitln("FALSE")

            witnesses.printViolationWitness(ir, failureTrace)
        }

        def reportUnknown(message : String) {
            logger.info(s"verify: correctness of ${ir.name} is unknown")
            logger.info(s"verify: $message")
            config.output().emitln(s"UNKNOWN\n$message")
        }

        def runVerification() {
            val refiner = new TraceRefinement(config)
            refiner.traceRefinement(ir) match {
                case Success(None) =>
                    reportCorrect()
                case Success(Some(witnessTrace)) =>
                    reportIncorrect(witnessTrace)
                case Failure(e) =>
                    reportUnknown(s"refinement failure: ${e.getMessage}")
            }
        }

        try {
            val mainFun = ir.functions(0)
            // Detect if the function is not in a form for verification and abort
            mainFun.isVerifiable() match {
                case Some(reason) =>
                    logger.info(s"verify: ${mainFun.name} is not verifiable, aborting")
                    sys.error(s"${mainFun.name} is not verifiable, $reason")
                case _ =>
                    // Function is ok, go for verification
                    runVerification()
            }
        } catch {
            case e : java.lang.Exception =>
                reportException(e)
        }

    }

}
