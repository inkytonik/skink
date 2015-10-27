package au.edu.mq.comp.perentiemq

import iml.IMLSyntax.Program
import org.kiama.util.TestCompilerWithConfig

class TestBase extends Driver with TestCompilerWithConfig[Program,PerentieMQConfig] {

    import org.scalatest.{Args, Reporter}
    import org.scalatest.events.{Event, InfoProvided, Ordinal, NameInfo, TestFailed, TestSucceeded}

    class SVCompReporter (reporter : Reporter) extends Reporter {

        var truePositiveNum = 0
        var falsePositiveNum = 0
        var trueNegativeNum = 0
        var falseNegativeNum = 0
        var unknownNum = 0
        var bogusNameNum = 0

        var truePositivePoints = 2
        var falsePositivePoints = -32
        var trueNegativePoints = 1
        var falseNegativePoints = -16
        var unknownPoints = 0


        object Correct {
            def unapply (name : String) : Boolean =
                name contains "_true-unreach-call"
        }

        object InCorrect {
            def unapply (name : String) : Boolean =
                name contains "_false-unreach-call"
        }

        def apply (event : Event) {
            reporter (event)
            event match {
                case failure : TestFailed =>
                    failure.testName match {
                        case Correct () =>
                            falseNegativeNum = falseNegativeNum + 1
                        case InCorrect () =>
                            falsePositiveNum = falsePositiveNum + 1
                        case _ =>
                            bogusNameNum = bogusNameNum + 1
                    }
                case success : TestSucceeded =>
                    success.testName match {
                        case Correct () =>
                            truePositiveNum = truePositiveNum + 1
                        case InCorrect () =>
                            trueNegativeNum = trueNegativeNum + 1
                        case _ =>
                            bogusNameNum = bogusNameNum + 1
                    }
                case _ =>
                    // Do nothing
            }
        }

        def printSVCompReport (args : Args) {

            def message (msg : String) {
                reporter (InfoProvided (args.tracker.nextOrdinal (), msg, Some (NameInfo ("SVCOMP16 report", "", None, None))))
            }

            val score = truePositiveNum * truePositivePoints + falsePositiveNum * falsePositivePoints +
                             trueNegativeNum * trueNegativePoints + falseNegativeNum * falseNegativePoints +
                             unknownNum * unknownPoints

            message ("")
            message (s"#truePositive  = $truePositiveNum")
            message (s"#trueNegative  = $trueNegativeNum")
            message (s"#falsePositive = $falsePositiveNum")
            message (s"#falseNegative = $falseNegativeNum")
            message (s"#unknown       = $unknownNum")
            message (s"#bogus name    = $bogusNameNum")
            message (s"score          = $score")
            message ("")

        }

    }

}

class VerificationTests extends TestBase {

    import org.scalatest.{Args, Status}

    override def run (testName : Option[String], args : Args) : Status = {
        val svcompReporter = new SVCompReporter (args.reporter)
        val status = super.run (testName, args.copy (reporter = svcompReporter))
        svcompReporter.printSVCompReport (args)
        status
    }

    filetests ("Simple C verification", "programs/simple", ".ll", ".verif",
               argslist = List (Array ("-v", "-m15", "-eZ3" )))

}
