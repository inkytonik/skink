package au.edu.mq.comp.skink

package verifier
package tests

import org.scalatest.{
    FunSuite,
    Matchers
}
import scala.util.{Try, Success, Failure}
import org.bitbucket.inkytonik.kiama.util.{FileSource}

class SimpleLoopCorrectTests extends FunSuite with Matchers with Driver {

    //  create and init the config
    val config = createAndInitConfig(
        Seq(
            "-v", // verify target
            "-m10", //  max iteration
            "-eZ3" //  solver
        )
    )

    //  source file
    val srcFileName = "programs/simple/simple-loop_true-unreach-call.ll"

    test("Trying to prove correctness of program programs/simple/simple-loop_true-unreach-call.ll") {

        //  Try to parse the program
        parseFile(srcFileName, config) match {

            case Success(prog) =>
                //  now analyse the program
                import au.edu.mq.comp.skink.verifier.Verifier

                val fun = prog.functions.find(_.name == "main")
                fun match {
                    case Some(main) =>
                        logger.info(s"verifying ${main.name}")
                        val refiner = new TraceRefinement(config)
                        refiner.traceRefinement(main) shouldBe Success(None)
                    case None =>
                        logger.error(s"no main found")
                        fail(s"no main found")
                }

            case Failure(m) => fail("Could not parse program")

        }
    }
}
