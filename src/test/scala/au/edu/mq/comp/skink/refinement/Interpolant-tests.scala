package au.edu.mq.comp.skink

package verifier
package tests

import org.scalatest.{FunSuite, Matchers}
import scala.util.{Try, Success, Failure}

class SimpleLoopCorrectTests extends FunSuite with Matchers with Driver {

    import au.edu.mq.comp.skink.c.CFrontend
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

    val frontend = new CFrontend(config)
    val srcFileName = "src/test/resources/citests/math/simple-loop_true-unreach-call.c"

    test(s"Trying to prove correctness of program $srcFileName") {

        config.frontend().buildIR(FileSource(srcFileName), positions) match {

            case Left(prog) =>
                import au.edu.mq.comp.skink.verifier.Verifier

                logger.info(s"verifying ${prog.name}")
                val refiner = new TraceRefinement(config)
                refiner.traceRefinement(prog) shouldBe Success(None)

            case Right(messages) =>
                fail(formatMessages(messages))
        }
    }
}
