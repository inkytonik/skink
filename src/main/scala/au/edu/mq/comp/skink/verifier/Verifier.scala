/*
 * This file is part of Skink.
 *
 * Copyright (C) 2015-2019
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
import org.bitbucket.inkytonik.kiama.util.Source

/**
 * The main verifier which wraps the trace refinement process with
 * output that is suitable for the SV-COMP.
 */
class Verifier(source : Source, ir : IR, config : SkinkConfig) {

    import au.edu.mq.comp.skink.ir.{FailureTrace, IRFunction}
    import au.edu.mq.comp.skink.LoggerFactory.getLogger
    import org.bitbucket.inkytonik.kiama.util.Position
    import scala.util.{Failure, Success}

    val logger = getLogger(this.getClass, config)

    /**
     * Verify a function and output the result in SV-COMP format.
     */
    def verify(function : IRFunction) {

        import org.bitbucket.inkytonik.kiama.util.Messaging.{check, error, warning}

        logger.clear(source)
        logger.info(source, s"verify: ${function.name}")

        val witnesses = new NonDetWitnesses(source, source, function, config)

        config.driver.positions.setAllPositions(
            function,
            function.position.getOrElse(Position(1, 1, source))
        )

        abstract class Result
        case object Correct extends Result
        case object Incorrect extends Result
        case object Unknown extends Result

        val expectedResult : Result =
            if (source.name.contains("_true-unreach-call"))
                Correct
            else if ((source.name.contains("_false-unreach-call")))
                Incorrect
            else
                Unknown

        def reportCorrect() {
            logger.info(source, s"verify: ${function.name} is correct")
            if (!config.quiet())
                config.output().emitln("TRUE")
            val witMessages = witnesses.printCorrectnessWitness(function)
            if (config.server())
                config.driver.report(
                    source,
                    witMessages ++
                        check(expectedResult) {
                            case expected if expected == Incorrect =>
                                warning(function, s"Skink says ${function.name} is correct but it is expected to be incorrect")
                        },
                    config
                )
        }

        def reportIncorrect(failureTrace : FailureTrace) {
            logger.info(source, s"verify: ${function.name} is incorrect")
            if (!config.quiet())
                config.output().emitln("FALSE")
            val witMessages = witnesses.printViolationWitness(function, failureTrace)
            if (config.server())
                config.driver.report(
                    source,
                    error(function, s"function ${function.name} is incorrect") ++
                        witMessages ++
                        check(expectedResult) {
                            case expected if expected == Correct =>
                                warning(function, s"Skink says ${function.name} is incorrect but it is expected to be correct")
                        },
                    config
                )
        }

        def reportUnknown(reasons : String) {
            logger.info(source, s"verify: correctness of ${function.name} is unknown")
            if (!config.quiet())
                config.output().emitln(s"UNKNOWN\n$reasons")
            if (config.server())
                config.driver.report(source, warning(function, s"Skink cannot tell if this ${function.name} is correct"), config)
        }

        /**
         * Run the verification using diffferent sets of configurations.
         * At the moment this means that the actual command-line arguments
         * are augmented by the arguments here.
         */
        def runVerifications() {
            import scala.collection.mutable.StringBuilder

            val unknownReasons = new StringBuilder()

            def addReason(desc : String, reason : String) {
                unknownReasons.append(s"\nconfig: $desc\n$reason\n")
            }

            val configDesc = config.args.mkString(" ")
            logger.info(source, s"verify: configuration args: $configDesc")

            val refiner = new TraceRefinement(source, ir, config)

            try {
                refiner.traceRefinement(function) match {
                    case Success(None) =>
                        logger.info(source, "verify: CORRECT")
                        reportCorrect()
                        return
                    case Success(Some(witnessTrace)) =>
                        logger.info(source, "verify: INCORRECT")
                        reportIncorrect(witnessTrace)
                        return
                    case Failure(e) =>
                        val reason = e.getMessage
                        logger.info(source, s"verify: UNKNOWN $reason")
                        addReason(configDesc, reason)
                }
            } catch {
                case e : java.lang.Exception =>
                    logger.debug(source, s"""$e\n${e.getStackTrace().mkString("\n at ")}""")
                    addReason(configDesc, e.getMessage())
            }

            reportUnknown(unknownReasons.result())
        }

        try {
            // Detect if the function is not in a form for verification and abort
            function.isVerifiable() match {
                case Some(reason) =>
                    logger.info(source, s"verify: ${function.name} is not verifiable, aborting")
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
