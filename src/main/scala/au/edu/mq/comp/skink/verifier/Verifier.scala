/*
 * This file is part of Skink.
 *
 * Copyright (C) 2015-2018
 * Programming Languages and Verification Research Group
 * Macquarie University
 *
 * Skink is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Skink is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * See COPYING and COPYING.LESSER for full license terms.
 * More information at http://www.gnu.org/licenses.
 */

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

        val witnesses = new NonDetWitnesses(config)

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
                List("-e", "MathSat")
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
