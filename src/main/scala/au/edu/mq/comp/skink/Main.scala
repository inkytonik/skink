package au.edu.mq.comp.skink

import au.edu.mq.comp.skink.ir.IR
import org.bitbucket.inkytonik.kiama.util.{CompilerBase, Config}

sealed abstract class SolverMode
case class CVC4SolverMode() extends SolverMode
case class SMTInterpolSolverMode() extends SolverMode
case class Z3SolverMode() extends SolverMode

class SkinkConfig(args : Seq[String]) extends Config(args) {

    config =>

    import au.edu.mq.comp.skink.c.CFrontend
    import au.edu.mq.comp.skink.iml.IMLFrontend
    import au.edu.mq.comp.skink.ir.llvm.LLVMFrontend
    import org.rogach.scallop.{ArgType, ValueConverter}
    import scala.reflect.runtime.universe.TypeTag
    import au.edu.mq.comp.smtlib.solvers._

    lazy val execute = opt[Boolean]("execute", short = 'x',
        descr = "Execute the target code")

    val frontendConverter =
        new ValueConverter[Frontend] {

            val argType = ArgType.LIST

            def parse(s : List[(String, List[String])]) : Either[String, Option[Frontend]] =
                s match {
                    case List((_, List("C"))) =>
                        Right(Some(new CFrontend(config)))
                    case List((_, List("IML"))) =>
                        Right(Some(new IMLFrontend(config)))
                    case List((_, List("LLVM"))) =>
                        Right(Some(new LLVMFrontend(config)))
                    case List((_, _)) =>
                        Left("expected 'frontend C, IML or LLVM'")
                    case _ =>
                        Right(None)
                }

            val tag = implicitly[TypeTag[Frontend]]

        }

    lazy val frontend = opt[Frontend]("frontend", short = 'f',
        descr = "The frontend to use: C (default), IML, LLVM",
        default = Some(new CFrontend(config)))(frontendConverter)

    lazy val lli = opt[String]("lli", descr = "Program to use to execute target code",
        default = Some("/usr/local/bin/lli"))

    lazy val maxIterations = opt[Int]("max", short = 'm',
        descr = "Maximum number of refinement iterations",
        default = Some(10))

    lazy val parse = opt[Boolean]("parse", short = 'p',
        descr = "Only parse the program in the front-end")

    val solverConverter =
        new ValueConverter[Solver] {

            val argType = ArgType.LIST

            def parse(s : List[(String, List[String])]) : Either[String, Option[Solver]] =
                s match {
                    case List((_, List("CVC4"))) =>
                        Right(Some(new CVC4))
                    case List((_, List("SMTInterpol"))) =>
                        Right(Some(new SMTInterpol))
                    case List((_, List("Z3"))) =>
                        Right(Some(new Z3))
                    case List((_, _)) =>
                        Left("expected CVC4, SMTInterpol or Z3")
                    case _ =>
                        Right(None)
                }

            val tag = implicitly[TypeTag[Solver]]

        }

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
        descr = "Timeout for SMT solvers (seconds)",
        default = Some(10))

    lazy val trackValues = opt[Boolean]("track", short = 'k',
        descr = "Track values",
        default = Some(false))

    lazy val verifyTarget = opt[Boolean]("verify", short = 'v',
        descr = "Verify the target code")

}

trait Driver extends CompilerBase[IR, SkinkConfig] {

    import au.edu.mq.comp.skink.iml.IMLCompiler
    import au.edu.mq.comp.skink.ir.IR
    import au.edu.mq.comp.skink.Skink.getLogger
    import org.bitbucket.inkytonik.kiama.output.PrettyPrinter.{any, layout}
    import org.bitbucket.inkytonik.kiama.output.PrettyPrinterTypes.Document
    import org.bitbucket.inkytonik.kiama.util.{Emitter, OutputEmitter, Source}
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

        for (function <- ir.functions) {

            if (config.verifyTarget()) {
                if (function.name == "main") {
                    logger.info(s"processIR: processing ${function.name}")
                    val verifier = new Verifier(config)
                    verifier.verify(function)
                } else {
                    logger.info(s"processIR: skipping ${function.name}")
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
