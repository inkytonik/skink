package au.edu.mq.comp.skink
package verifier

import au.edu.mq.comp.skink.SkinkConfig
import au.edu.mq.comp.skink.ir.{Verifiable, IR}

/**
 * The main verifier which wraps the trace refinement process with
 * output that is suitable for the SV-COMP.
 */
class Verifier(verifiable : Verifiable, ir : IR, config : SkinkConfig) {

    import au.edu.mq.comp.skink.{Driver, NonDetWitnessFormat, TraceWitnessFormat}
    import au.edu.mq.comp.skink.ir.{FailureTrace, IRFunction}
    import au.edu.mq.comp.skink.Skink.getLogger
    import scala.util.{Failure, Success}

    val logger = getLogger(this.getClass)

    /**
     * Verify a function and output the result in SV-COMP format.
     */
    def verify(driver : Driver, function : IRFunction) {

        //  Create a verifiable according to the config
        //  TODO: add config flag and set mtFlag accordingly
        // val mtFlag = false

        // val main = ir.functions.find(_.name == "main")

        // val verifiable = new LLVMFunction(ir.program, main.get, config)
        // if (mtFlag) new STVerifiable(ir) else new MTVerifiable(ir)

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

        def reportIncorrect(failureTrace : FailureTrace) {
            logger.info(s"verify: ${verifiable.name} is incorrect")
            config.output().emitln("FALSE")
            witnesses.printViolationWitness(verifiable, failureTrace)
        }

        def reportUnknown(reasons : String) {
            logger.info(s"verify: correctness of ${function.name} is unknown")
            config.output().emitln(s"UNKNOWN\n$reasons")
        }

        /**
         * Run the verification using diffferent sets of configurations.
         * At the moment this means that the actual command-line arguments
         * are augmented by the arguments here.
         */
        def runVerifications() {
            import au.edu.mq.comp.skink.ir.llvm.LLVMFunction
            import scala.collection.mutable.StringBuilder

            val argSets = List(
                List("-e", "Z3", "-i", "bit"),
                List("-e", "Z3"),
                List("-e", "Yices-nonIncr")
            )

            val unknownReasons = new StringBuilder()

            def addReason(desc : String, reason : String) {
                unknownReasons.append(s"\nconfig: $desc\n$reason\n")
            }

            def getFullConfig(args : Seq[String]) : SkinkConfig = {
                driver.createAndInitConfig(args) match {
                    case Left(message) =>
                        val msg = s"verify: bad command line: $message"
                        logger.info(msg)
                        sys.error(msg)
                    case Right(config) =>
                        config
                }
            }

            for (args <- argSets) {
                val fullArgs = args ++ config.args
                val fullConfigDesc = fullArgs.mkString(" ")
                logger.info(s"verify: trying configuration args: $fullConfigDesc")
                val fullConfig = getFullConfig(fullArgs)
                val refiner = new TraceRefinement(ir, fullConfig)
                function match {
                    case llvmFunction : LLVMFunction =>
                        val function = new LLVMFunction(llvmFunction.program, llvmFunction.function, fullConfig)
                        try {
                            refiner.traceRefinement(function) match {
                                case Success(None) =>
                                    logger.info("verify: CORRECT")
                                    reportCorrect()
                                    return
                                case Success(Some(witnessTrace)) =>
                                    logger.info("verify: INCORRECT")
                                    reportIncorrect(witnessTrace)
                                    return
                                case Failure(e) =>
                                    val reason = e.getMessage
                                    logger.info(s"verify: UNKNOWN $reason")
                                    addReason(fullConfigDesc, reason)
                            }
                        } catch {
                            case e : java.lang.Exception =>
                                logger.debug(s"""$e\n${e.getStackTrace().mkString("\n at ")}""")
                                addReason(fullConfigDesc, e.getMessage())
                        }
                    case _ =>
                        sys.error("verify: got non-LLVM function")
                }
            }
            reportUnknown(unknownReasons.result())
        }

        try {
            // Detect if the verifiable is not in a form for verification and abort
            verifiable.isVerifiable() match {
                case Some(reason) =>
                    logger.info(s"verify: ${verifiable.name} is not verifiable, aborting")
                    sys.error(s"${verifiable.name} is not verifiable, $reason")
                case _ =>
                    // Function is ok, go for verification
                    runVerifications()
            }
        } catch {
            case e : java.lang.Exception =>
                reportUnknown(e.getMessage())
        }

    }

}
