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

class SimpleLoopCorrectTests extends FunSuite with Matchers with Driver {

    import org.bitbucket.inkytonik.kiama.util.FileSource

    //  create and init the config
    val config = createAndInitConfig(
        Seq(
            "-f", "C", // C frontend
            "-v", // verify target
            "-m10", //  max iteration
            "-eZ3" //  solver
        )
    ).right.get

    val srcFileName = "src/test/resources/citests/simple-loop_true-unreach-call.c"

    test(s"Trying to prove correctness of program $srcFileName") {

        config.frontend().buildIR(FileSource(srcFileName), positions) match {

            case Left(prog) =>
                val fun = prog.functions.find(_.name == "main")
                fun match {
                    case Some(main) =>
                        logger.info(s"verifying ${main.name}")
                        val refiner = new TraceRefinement(prog, config)
                        refiner.traceRefinement(main) shouldBe Success(None)
                    case None =>
                        logger.error(s"no main found")
                        fail("no main found")
                }

            case Right(messages) =>
                fail(formatMessages(messages))
        }
    }
}
