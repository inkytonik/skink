package au.edu.mq.comp.skink

import au.edu.mq.comp.skink.ir.IR
import org.bitbucket.inkytonik.kiama.util.{CompilerBase, Config}

sealed abstract class SolverMode
case class CVC4SolverMode() extends SolverMode
case class SMTInterpolSolverMode() extends SolverMode
case class Z3SolverMode() extends SolverMode

sealed abstract class IntegerMode
case class MathIntegerMode() extends IntegerMode
case class BitIntegerMode() extends IntegerMode

sealed abstract class WitnessFormat
case class NonDetWitnessFormat() extends WitnessFormat
case class TraceWitnessFormat() extends WitnessFormat

class SkinkConfig(args : Seq[String]) extends Config(args) {

    config =>

    import au.edu.mq.comp.skink.c.CFrontend
    import au.edu.mq.comp.skink.ir.llvm.LLVMFrontend
    import org.rogach.scallop.{ArgType, ValueConverter}
    import scala.reflect.runtime.universe.TypeTag

    lazy val execute = opt[Boolean]("execute", short = 'x',
        descr = "Execute the target code (default: false)",
        default = Some(false))

    val frontendConverter =
        new ValueConverter[Frontend] {

            val argType = ArgType.LIST

            def parse(s : List[(String, List[String])]) : Either[String, Option[Frontend]] =
                s match {
                    case List((_, List("C"))) =>
                        Right(Some(new CFrontend(config)))
                    case List((_, List("LLVM"))) =>
                        Right(Some(new LLVMFrontend(config)))
                    case List((_, _)) =>
                        Left("expected 'frontend C or LLVM'")
                    case _ =>
                        Right(None)
                }

            val tag = implicitly[TypeTag[Frontend]]

        }

    lazy val frontend = opt[Frontend]("frontend", short = 'f',
        descr = "The frontend to use: C (default), LLVM",
        default = Some(new CFrontend(config)))(frontendConverter)

    val integerModeConverter =
        new ValueConverter[IntegerMode] {

            val argType = ArgType.LIST

            def parse(s : List[(String, List[String])]) : Either[String, Option[IntegerMode]] =
                s match {
                    case List((_, List("bit"))) =>
                        Right(Some(new BitIntegerMode))
                    case List((_, List("math"))) =>
                        Right(Some(new MathIntegerMode))
                    case List((_, _)) =>
                        Left("expected bit or math")
                    case _ =>
                        Right(None)
                }

            val tag = implicitly[TypeTag[IntegerMode]]

        }

    lazy val integerMode = opt[IntegerMode]("integer", short = 'i',
        descr = "Integer representation: bit, math (default)",
        default = Some(new MathIntegerMode))(integerModeConverter)

    lazy val integerSize = opt[Int]("intsize", short = 's',
        descr = "Size of integers in bits when using bit representation (default: 32)",
        default = Some(32))

    lazy val lli = opt[String]("lli", noshort = true,
        descr = "Program to use to execute target code (default: lli)",
        default = Some("lli"))

    lazy val maxIterations = opt[Int]("max", short = 'm',
        descr = "Maximum number of refinement iterations (default: 40)",
        default = Some(40))

    lazy val optLevel = opt[Int]("optlevel", short = 'O',
        descr = "Optimisation level for source compilation (default: 2)",
        default = Some(2))

    lazy val parse = opt[Boolean]("parse", short = 'p',
        descr = "Only parse the program in the front-end (default: false)",
        default = Some(false))

    val solverModeConverter =
        new ValueConverter[SolverMode] {

            val argType = ArgType.LIST

            def parse(s : List[(String, List[String])]) : Either[String, Option[SolverMode]] =
                s match {
                    case List((_, List("CVC4"))) =>
                        Right(Some(CVC4SolverMode()))
                    case List((_, List("SMTInterpol"))) =>
                        Right(Some(SMTInterpolSolverMode()))
                    case List((_, List("Z3"))) =>
                        Right(Some(Z3SolverMode()))
                    case List((_, _)) =>
                        Left("expected CVC4, SMTInterpol or Z3")
                    case _ =>
                        Right(None)
                }

            val tag = implicitly[TypeTag[SolverMode]]

        }

    lazy val solverMode = opt[SolverMode]("solver", short = 'e',
        descr = "SMT solver: Z3 (default), SMTInterpol, CVC4",
        default = Some(Z3SolverMode()))(solverModeConverter)

    lazy val solverTimeOut = opt[Int]("timeout", short = 'o',
        descr = "Timeout for SMT solvers in seconds (default : 200)",
        default = Some(200))

    lazy val trackValues = opt[Boolean]("track", short = 'k',
        descr = "Track values (default: false)",
        default = Some(false))

    lazy val verifyTarget = opt[Boolean]("verify", short = 'v',
        descr = "Verify the target code (default: false)",
        default = Some(false))

    lazy val witnessFile = opt[String]("witness-file", short = 'w',
        descr = "File into which witness is written (- means standard output, default: witness.graphml)",
        default = Some("witness.graphml"))

    val witnessFormatConverter =
        new ValueConverter[WitnessFormat] {

            val argType = ArgType.LIST

            def parse(s : List[(String, List[String])]) : Either[String, Option[WitnessFormat]] =
                s match {
                    case List((_, List("nondet"))) =>
                        Right(Some(new NonDetWitnessFormat))
                    case List((_, List("trace"))) =>
                        Right(Some(new TraceWitnessFormat))
                    case List((_, _)) =>
                        Left("expected nondet or trace")
                    case _ =>
                        Right(None)
                }

            val tag = implicitly[TypeTag[WitnessFormat]]

        }

    lazy val witnessFormat = opt[WitnessFormat]("witness-format", short = 'W',
        descr = "Format of witnesses (nondet or trace, default: trace)",
        default = Some(TraceWitnessFormat()))(witnessFormatConverter)

    lazy val multiThreadMode = opt[Boolean]("multi", short = 'M',
        descr = "Multi-thread analysis mode (default: off)",
        default = Some(false))

}

trait Driver extends CompilerBase[IR, SkinkConfig] {

    import au.edu.mq.comp.skink.ir.IR
    import au.edu.mq.comp.skink.Skink.getLogger
    import org.bitbucket.inkytonik.kiama.output.PrettyPrinterTypes.Document
    import org.bitbucket.inkytonik.kiama.util.Source
    import org.bitbucket.inkytonik.kiama.util.Messaging.Messages
    import org.rogach.scallop.exceptions.ScallopException

    val logger = getLogger(this.getClass)

    override def main(args : Array[String]) {
        logger.info(s"""main: ${args.mkString(" ")}""")
        super.main(args)
    }

    override def createConfig(args : Seq[String]) : SkinkConfig =
        new SkinkConfig(args)

    override def createAndInitConfig(args : Seq[String]) : SkinkConfig =
        try {
            super.createAndInitConfig(args)
        } catch {
            case e : ScallopException =>
                println(e.getMessage())
                sys.exit(1)
        }

    override def processfile(filename : String, config : SkinkConfig) {
        logger.info(s"processfile: $filename")
        super.processfile(filename, config)
    }

    /**
     * Build an IR representation for the given source using the current
     * frontend.
     */
    override def makeast(source : Source, config : SkinkConfig) : Either[IR, Messages] = {
        val frontend = config.frontend()
        logger.info(s"makeast: building IR using ${frontend.name} frontend")
        frontend.buildIR(source, positions)
    }

    /**
     * Processing for IR.
     */
    def process(source : Source, ir : IR, config : SkinkConfig) {

        import au.edu.mq.comp.skink.verifier.Verifier
        import au.edu.mq.comp.skink.ir.llvm.LLVMIR

        if (config.verifyTarget()) {
            if (config.multiThreadMode()) {
                logger.info(s"processIR multi-thread mode: processing")
                val verifier = new Verifier(ir, ir, config)
                verifier.verify()
            } else {

                for (function <- ir.functions) {
                    if (function.name == "main") {
                        logger.info(s"processIR single-thread mode: processing ${function.name}")
                        val verifier = new Verifier(function, ir, config)
                        verifier.verify()
                    } else {
                        logger.info(s"processIR: skipping ${function.name}")
                    }
                }
            }
        }

        if (config.execute()) {
            logger.info("processIR: running program")

            val (output, code) = ir.execute()
            config.output().emit(output)
            if (code != 0)
                config.output().emitln(s"exit code: $code")
        }

    }

    def format(ir : IR) : Document =
        new Document(ir.show, Nil)

}

object Main extends Driver
