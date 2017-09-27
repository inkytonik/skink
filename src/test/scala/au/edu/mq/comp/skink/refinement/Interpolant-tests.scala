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
    )

    val srcFileName = "src/test/resources/citests/math/simple-loop_true-unreach-call.c"

    test(s"Trying to prove correctness of program $srcFileName") {

        config.frontend().buildIR(FileSource(srcFileName), positions) match {

            case Left(prog) =>
                val fun = prog.functions.find(_.name == "main")
                fun match {
                    case Some(main) =>
                        logger.info(s"verifying ${main.name}")
                        val refiner = new TraceRefinement(config)
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
