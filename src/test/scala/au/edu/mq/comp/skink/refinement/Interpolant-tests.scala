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

package au.edu.mq.comp.skink

package verifier
package tests

import org.scalatest.{FunSuite, Matchers}
import scala.util.Success

class SimpleLoopCorrectTests extends FunSuite with Matchers {

    import au.edu.mq.comp.skink.LoggerFactory.getLogger
    import org.bitbucket.inkytonik.kiama.util.FileSource

    //  create and init the config
    val config = Main.createConfig(
        Seq(
            "-f", "C", // C frontend
            "-v", // verify target
            "-m10", //  max iteration
            "-eZ3" //  solver
        )
    )

    val logger = getLogger(this.getClass, config)

    val srcFileName = "src/test/resources/citests/simple-loop_true-unreach-call.c"

    test(s"Trying to prove correctness of program $srcFileName") {

        val source = FileSource(srcFileName)
        config.frontend().buildIR(source, source, config.driver.positions) match {

            case Left(prog) =>
                val fun = prog.functions.find(_.name == config.functionName())
                fun match {
                    case Some(function) =>
                        logger.info(source, s"verifying ${function.name}")
                        val refiner = new TraceRefinement(source, prog, config)
                        refiner.traceRefinement(function) shouldBe Success(None)
                    case None =>
                        val msg = s"can't find function ${config.functionName()}"
                        logger.error(source, msg)
                        fail(msg)
                }

            case Right(messages) =>
                fail(config.driver.messaging.formatMessages(messages))
        }
    }
}
