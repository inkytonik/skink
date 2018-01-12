package au.edu.mq.comp.skink.verifier

import au.edu.mq.comp.skink.SkinkConfig
import au.edu.mq.comp.skink.ir.IR

/**
 * The main verifier which wraps the trace refinement process with
 * output that is suitable for the SV-COMP.
 */
class Verifier(ir : IR, config : SkinkConfig) {

    import au.edu.mq.comp.skink.{Driver, NonDetWitnessFormat, TraceWitnessFormat}
    import au.edu.mq.comp.skink.ir.{FailureTrace, IRFunction}
    import au.edu.mq.comp.skink.Skink.getLogger
    import scala.util.{Failure, Success}

    val logger = getLogger(this.getClass)

    /**
     * Verify a function and output the result in SV-COMP format.
     */
    def verify(driver : Driver, function : IRFunction) {

        logger.info(s"verify: ${function.name}")

        val witnesses =
            config.witnessFormat() match {
                case NonDetWitnessFormat() =>
                    new NonDetWitnesses(config)
                case TraceWitnessFormat() =>
                    new TraceWitnesses(config)
            }

        def reportCorrect() {
            logger.info(s"verify: ${function.name} is correct")
            config.output().emitln("TRUE")
            witnesses.printCorrectnessWitness(function)
        }

        def reportIncorrect(failureTrace : FailureTrace) {
            logger.info(s"verify: ${function.name} is incorrect")
            config.output().emitln("FALSE")
            witnesses.printViolationWitness(function, failureTrace)
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
                List("-e", "Z3", "-r", "bit") //,
            // List("-e", "Z3", "-i", "bit"),
            // List("-e", "Z3"),
            // List("-e", "Yices-nonIncr")
            )

            val unknownReasons = new StringBuilder()

            def addReason(desc : String, reason : String) {
                unknownReasons.append(s"\nconfig: $desc\n$reason\n")
            }

            for (args <- argSets) {
                val fullConfig = driver.createAndInitConfig(args ++ config.args)
                val fullConfigDesc = fullConfig.args.mkString(" ")
                logger.info(s"verify: trying configuration args: $fullConfigDesc")
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
            // Detect if the function is not in a form for verification and abort
            function.isVerifiable() match {
                case Some(reason) =>
                    logger.info(s"verify: ${function.name} is not verifiable, aborting")
                    sys.error(s"${function.name} is not verifiable, $reason")
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
