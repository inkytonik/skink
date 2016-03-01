package au.edu.mq.comp.perentiemq

import iml.IMLSyntax.Program
import org.bitbucket.inkytonik.kiama.util.TestCompilerWithConfig
import org.scalatest.FunSuiteLike

trait TestBase extends Driver with TestCompilerWithConfig[Program, PerentieMQConfig] {

    import org.scalatest.{Args, Reporter, Status}
    import org.scalatest.events.{Event, InfoProvided, Ordinal, NameInfo, TestFailed, TestSucceeded}
    import scala.collection.mutable.ListBuffer

    class SVCompReporter(reporter : Reporter) extends Reporter {

        var truePositiveNum = 0
        var falsePositiveNum = 0
        var trueNegativeNum = 0
        var falseNegativeNum = 0
        var unknownNum = 0
        var bogusNameNum = 0

        var truePositivePoints = 1
        var falsePositivePoints = -16
        var trueNegativePoints = 2
        var falseNegativePoints = -32
        var unknownPoints = 0

        val listTrueNegative = new ListBuffer[String]()
        val listTruePositive = new ListBuffer[String]()
        val listFalsePositive = new ListBuffer[String]()
        val listFalseNegative = new ListBuffer[String]()

        object Correct {
            def unapply(name : String) : Boolean =
                name contains "_true-unreach-call"
        }

        object InCorrect {
            def unapply(name : String) : Boolean =
                name contains "_false-unreach-call"
        }

        object UnknownMessage {
            def unapply(message : String) : Boolean =
                message startsWith "\"[UNKNOWN"
        }

        def apply(event : Event) {
            reporter(event)
            event match {
                case failure : TestFailed =>
                    failure.message match {
                        case UnknownMessage() =>
                            unknownNum = unknownNum + 1
                        case _ =>
                            failure.testName match {
                                case Correct() =>
                                    listFalsePositive += failure.testName
                                    falsePositiveNum = falsePositiveNum + 1
                                case InCorrect() =>
                                    listFalseNegative += failure.testName
                                    falseNegativeNum = falseNegativeNum + 1
                                case _ =>
                                    bogusNameNum = bogusNameNum + 1
                            }
                    }
                case success : TestSucceeded =>
                    success.testName match {
                        case Correct() =>
                            listTrueNegative += success.testName
                            trueNegativeNum = trueNegativeNum + 1
                        case InCorrect() =>
                            listTruePositive += success.testName
                            truePositiveNum = truePositiveNum + 1
                        case _ =>
                            bogusNameNum = bogusNameNum + 1
                    }
                case _ =>
                // Do nothing
            }
        }

        def printSVCompReport(args : Args) {

            def message(msg : String) {
                reporter(InfoProvided(args.tracker.nextOrdinal(), msg, Some(NameInfo("SVCOMP16 report", "", None, None))))
            }

            val score = truePositiveNum * truePositivePoints + falsePositiveNum * falsePositivePoints +
                trueNegativeNum * trueNegativePoints + falseNegativeNum * falseNegativePoints +
                unknownNum * unknownPoints

            message("")
            message(s"#truePositive  = $truePositiveNum")
            message(s"#trueNegative  = $trueNegativeNum")
            message(s"#falsePositive = $falsePositiveNum")
            message(s"#falseNegative = $falseNegativeNum")
            message(s"#unknown       = $unknownNum")
            message(s"#bogus name    = $bogusNameNum")
            message(s"score          = $score")
            message("")

            message("False positives files")
            message(s"${listFalsePositive.result().mkString("\n")}")
            message("False negatives files")
            message(s"${listFalseNegative.result().mkString("\n")}")

        }

    }

    override def run(testName : Option[String], args : Args) : Status = {
        val svcompReporter = new SVCompReporter(args.reporter)
        val status = super.run(testName, args.copy(reporter = svcompReporter))
        svcompReporter.printSVCompReport(args)
        status
    }

    val defaultArgsList = List(List("-v", "-m15", "-eZ3"))

}

class LocalSimpleTests extends TestBase {
    filetests("Simple", "programs/simple", ".ll", ".verif",
        argslist = defaultArgsList)
}

class SVCOMPLoopLitTests extends TestBase {
    filetests("SVCOMP loop-lit", "programs/svcomp16/loop-lit", ".ll", ".verif",
        argslist = defaultArgsList)
}

class SVCOMPLoopAccelerationTests extends TestBase {
    filetests("SVCOMP loop-acceleration", "programs/svcomp16/loop-acceleration", ".ll", ".verif",
        argslist = defaultArgsList)
}

class SVCOMPLoopInvGenTests extends TestBase {
    filetests("SVCOMP loop-invgen", "programs/svcomp16/loop-invgen", ".ll", ".verif",
        argslist = defaultArgsList)
}

class SVCOMPLoopNewTests extends TestBase {
    filetests("SVCOMP loop-new", "programs/svcomp16/loop-new", ".ll", ".verif",
        argslist = defaultArgsList)
}

class SVCOMPLoopsTests extends TestBase {
    filetests("SVCOMP loops", "programs/svcomp16/loops", ".ll", ".verif",
        argslist = defaultArgsList)
}

class SVCOMPRecursiveTests extends TestBase {
    filetests("SVCOMP recursive", "programs/svcomp16/recursive", ".ll", ".verif",
        argslist = defaultArgsList)
}

class SVCOMPRecursiveSimpleTests extends TestBase {
    filetests("SVCOMP recursive", "programs/svcomp16/recursive-simple", ".ll", ".verif",
        argslist = defaultArgsList)
}

class SVCOMPLocksTests extends TestBase {
    filetests("SVCOMP locks", "programs/svcomp16/locks", ".ll", ".verif",
        argslist = List(List("-v", "-m20", "-eZ3")))
}

class SVCOMPProductLinesTests extends TestBase {
    filetests("SVCOMP locks", "programs/svcomp16/product-lines", ".ll", ".verif",
        argslist = List(List("-v", "-m20", "-eZ3")))
}

class SVCOMPECATests extends TestBase {
    filetests("SVCOMP ECA", "programs/svcomp16/eca", ".ll", ".verif",
        argslist = List(List("-v", "-m20", "-eZ3")))
}

class SVCOMPSshSimplifiedTests extends TestBase {
    filetests("SVCOMP ssh simplified", "programs/svcomp16/ssh-simplified", ".ll", ".verif",
        argslist = List(List("-v", "-m20", "-eZ3")))
}

class SVCOMPSshTests extends TestBase {
    filetests("SVCOMP ssh", "programs/svcomp16/ssh", ".ll", ".verif",
        argslist = defaultArgsList)
}

class SVCOMPNTDriversSimplifiedTests extends TestBase {
    filetests("SVCOMP ntdrivers-simplified", "programs/svcomp16/ntdrivers-simplified", ".ll", ".verif",
        argslist = defaultArgsList)
}

class SVCOMPNTDriversTests extends TestBase {
    filetests("SVCOMP ntdrivers", "programs/svcomp16/ntdrivers", ".ll", ".verif",
        argslist = defaultArgsList)
}
