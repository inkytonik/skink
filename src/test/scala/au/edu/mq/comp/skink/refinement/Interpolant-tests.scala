package au.edu.mq.comp.skink

package verifier
package tests

import org.scalatest.{FunSuite, Matchers}
import scala.util.{Try, Success, Failure}

class SimpleLoopCorrectTests extends FunSuite with Matchers with Driver {

    import au.edu.mq.comp.skink.ir.llvm.LLVMFrontend
    import org.bitbucket.inkytonik.kiama.util.FileSource

    //  create and init the config
    val config = createAndInitConfig(
        Seq(
            "-v", // verify target
            "-m10", //  max iteration
            "-eZ3" //  solver
        )
    )

    val frontend = new LLVMFrontend(config)

    val srcFileName = "programs/simple/simple-loop_true-unreach-call.ll"

    test(s"Trying to prove correctness of program $srcFileName") {

        frontend.buildIR(FileSource(srcFileName), positions) match {

            case Left(prog) =>
                import au.edu.mq.comp.skink.verifier.Verifier

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
