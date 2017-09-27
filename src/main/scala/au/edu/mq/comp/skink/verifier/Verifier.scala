package au.edu.mq.comp.skink.verifier

import au.edu.mq.comp.skink.SkinkConfig
import au.edu.mq.comp.skink.ir.{IR, STVerifiable, MTVerifiable}

/**
 * The main verifier which wraps the trace refinement process with
 * output that is suitable for the SV-COMP.
 */
class Verifier(ir : IR, config : SkinkConfig) {

    import au.edu.mq.comp.skink.{NonDetWitnessFormat, TraceWitnessFormat}
    import au.edu.mq.comp.skink.ir.{FailureTrace, IRFunction}
    import au.edu.mq.comp.skink.Skink.getLogger
    import scala.util.{Failure, Success}

    val logger = getLogger(this.getClass)

    /**
     * Verify a function and output the result in SV-COMP format.
     */
    def verify() {

        //  Create a verifiable according to the config
        //  TODO: add config flag and set mtFlag accordingly
        val mtFlag = false

        val verifiable = if (mtFlag) new STVerifiable(ir) else new MTVerifiable(ir)

        logger.info(s"verify: ${verifiable.name}")

        val witnesses =
            config.witnessFormat() match {
                case NonDetWitnessFormat() =>
                    new NonDetWitnesses(config)
                case TraceWitnessFormat() =>
                    new TraceWitnesses(config)
            }

        def reportCorrect() {
            logger.info(s"verify: ${verifiable.name} is correct")
            config.output().emitln("TRUE")
            witnesses.printCorrectnessWitness(verifiable)
        }

        def reportException(e : Exception) {
            logger.debug(s"""$e\n${e.getStackTrace().mkString("\n at ")}""")
            reportUnknown(s"refinement failure due to exception: ${e.getMessage()}")
        }

        def reportIncorrect(failureTrace : FailureTrace) {
            logger.info(s"verify: ${verifiable.name} is incorrect")
            config.output().emitln("FALSE")
            witnesses.printViolationWitness(verifiable, failureTrace)
        }

        def reportUnknown(message : String) {
            logger.info(s"verify: correctness of ${verifiable.name} is unknown")
            logger.info(s"verify: $message")
            config.output().emitln(s"UNKNOWN\n$message")
        }

        def runVerification() {
            val refiner = new TraceRefinement(config)
            refiner.traceRefinement(verifiable) match {
                case Success(None) =>
                    reportCorrect()
                case Success(Some(witnessTrace)) =>
                    reportIncorrect(witnessTrace)
                case Failure(e) =>
                    reportUnknown(s"refinement failure: ${e.getMessage}")
            }
        }

        try {
            // Detect if the verifiable is not in a form for verification and abort
            verifiable.isVerifiable() match {
                case Some(reason) =>
                    logger.info(s"verify: ${verifiable.name} is not verifiable, aborting")
                    sys.error(s"${verifiable.name} is not verifiable, $reason")
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
