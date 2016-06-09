package au.edu.mq.comp.skink

import au.edu.mq.comp.skink.ir.llvm.LLVMProvider
import iml.IMLSyntax.Program
import org.bitbucket.inkytonik.kiama.util.{CompilerBase, Config}

class SkinkConfig(args : Seq[String]) extends Config(args) {

    config =>

    import au.edu.mq.comp.skink.ir.IRProvider
    import org.rogach.scallop.{ArgType, ValueConverter}
    import scala.reflect.runtime.universe.TypeTag
    import au.edu.mq.comp.smtlib.solvers._

    lazy val compile = opt[Boolean]("compile", short = 'c',
        descr = "Compile the IML program")

    lazy val execute = opt[Boolean]("execute", short = 'x',
        descr = "Execute the target code")

    val irProviderConverter =
        new ValueConverter[IRProvider] {

            val argType = ArgType.LIST

            def parse(s : List[(String, List[String])]) : Either[String, Option[IRProvider]] =
                s match {
                    case List((_, List("LLVM"))) =>
                        Right(Some(new LLVMProvider(config)))
                    case List((_, _)) =>
                        Left("expected 'ir LLVM'")
                    case _ =>
                        Right(None)
                }

            val tag = implicitly[TypeTag[IRProvider]]

        }

    lazy val irProvider = opt[IRProvider]("ir", short = 'i',
        descr = "The intermediate representation to use (LLVM)",
        noshort = true,
        default = Some(new LLVMProvider(config)))(irProviderConverter)

    lazy val lli = opt[String]("lli", descr = "Program to use to execute target code",
        default = Some("/usr/local/bin/lli"))

    lazy val maxIterations = opt[Int]("max", short = 'm',
        descr = "Maximum number of refinement iterations",
        default = Some(10))

    lazy val parse = opt[Boolean]("parse", short = 'p',
        descr = "Parse the IML program")

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
                        Left("expected CVC4, SMTInterpol, or Z3")
                    case _ =>
                        Right(None)
                }

            val tag = implicitly[TypeTag[Solver]]

        }

    lazy val solver = opt[Solver]("solver", short = 'e',
        descr = "SMT solver (Z3, SMTInterpol, CVC4)",
        default = Some(new Z3))(solverConverter)

    lazy val solverTimeOut = opt[Int]("timeout", short = 'o',
        descr = "Timeout for SMT solvers (seconds)",
        default = Some(10))

    lazy val trackValues = opt[Boolean]("track", short = 'k',
        descr = "Track values",
        default = Some(false))

    lazy val verifyTarget = opt[Boolean]("verify", short = 'v',
        descr = "Verify the target code")

}

trait Driver extends CompilerBase[Program, SkinkConfig] {

    import au.edu.mq.comp.skink.iml.Compiler
    import au.edu.mq.comp.skink.ir.{IR, IRProvider}
    import au.edu.mq.comp.skink.Skink.getLogger
    import org.bitbucket.inkytonik.kiama.output.PrettyPrinter.{any, layout}
    import org.bitbucket.inkytonik.kiama.output.PrettyPrinterTypes.Document
    import org.bitbucket.inkytonik.kiama.util.{Emitter, OutputEmitter, Source}
    import org.bitbucket.inkytonik.kiama.util.Messaging.{Messages, noMessages}
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
     * If we're processing IML, build an AST program for it. The Compiler
     * support will then call `process`. Otherwise, we are working with IR
     * directly so build a representation of it and call `processIR`. In
     * either case if an error occurs return the messages instead.
     */
    override def makeast(source : Source, config : SkinkConfig) : Either[Program, Messages] = {

        if (config.parse() || config.compile()) {

            // We're compiling so input file contains IML. Parse and process
            // the IML program and then the IR of the compiled program.

            logger.info("makeast: compiling IML program")

            val p = new iml.IML(source, positions)
            val pr = p.pProgram(0)
            if (pr.hasValue)
                Left(p.value(pr).asInstanceOf[Program])
            else
                Right(Vector(p.errorToMessage(pr.parseError)))

        } else {

            // We're not compiling IML so input file contains IR code. Get the
            // IR provider from the configuration and use it to build and then
            // process the IR.

            logger.info(s"makeast: building ${config.irProvider().name} program")

            config.irProvider().buildFromSource(source, positions) match {
                case Left(ir) =>
                    processIR(ir, config)
                    Right(noMessages)
                case Right(messages) =>
                    config.output().emitln(s"UNKNOWN\ncan't build ${config.irProvider().name} IR")
                    Right(messages)
            }

        }

    }

    /**
     * Processing for IML programs: compile to LLVM IR and then process that.
     */
    def process(source : Source, program : Program, config : SkinkConfig) {

        import au.edu.mq.comp.skink.iml.IMLPrettyPrinter.{any, pretty}

        logger.info("process")

        if (config.compile()) {
            val compiler = new Compiler(positions, config)
            val ir = compiler.compile(program)
            processIR(ir, config)
        }

    }

    /**
     * Processing for IR.
     */
    def processIR(ir : IR, config : SkinkConfig) {

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

    def format(program : Program) : Document =
        iml.IMLPrettyPrinter.format(program, 5)

}

object Main extends Driver

trait CDriver extends Driver {
    def dotc2dotll(filename : String) : String = {
        (if (filename.lastIndexOf(".") >= 0) {
            filename.substring(0, filename.lastIndexOf('.'))
        } else {
            filename
        }) + ".ll"
    }
    
    override def processfile(filename : String, config : SkinkConfig) {
        import sys.process._
        val clangwargs = "-Wno-implicit-function-declaration -Wno-incompatible-library-redeclaration"
        val clangdefs = "-Dassert=__VERIFIER_assert"
        val clangargs = s"-c -emit-llvm -g -o - -S -x c $clangdefs $clangwargs"
        val llfile = dotc2dotll(filename)
        logger.info(s"generate temp ll file: $filename > $llfile")
        if ("which clang".! != 0 || "which opt".! != 0) { logger.info(s"clang or opt not present on path") }
        val clangv = "clang --version".!!
        val optv = "opt --version".!!
        logger.info(s"clang version is $clangv")
        logger.info(s"opt version is $optv")
        val res = (s"clang $clangargs $filename" #| s"opt -S -inline -o $llfile").!
        if (res != 0) { logger.info(s"conversion to llvm failed with code $res") }
        super.processfile(llfile, config)
    }
}

object CMain extends CDriver
