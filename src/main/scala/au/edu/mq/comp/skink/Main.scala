package au.edu.mq.comp.skink

import au.edu.mq.comp.skink.ir.llvm.LLVMProvider
import iml.IMLSyntax.Program
import org.bitbucket.inkytonik.kiama.util.{CompilerBase, Config}

class SkinkConfig(args : Seq[String]) extends Config(args) {

    config =>

    import au.edu.mq.comp.skink.ir.IRProvider
    import org.rogach.scallop.{ArgType, ValueConverter}
    import scala.reflect.runtime.universe.TypeTag

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

    lazy val cfgDotPrint = opt[Boolean]("cfgdotprint", short = 'd',
        descr = "Output the control flow graph of the target code in DOT form")

    lazy val cfgPrettyPrint = opt[Boolean]("cfgprint", short = 'g',
        descr = "Pretty print the control flow graph of the target code")

    lazy val compile = opt[Boolean]("compile", short = 'c',
        descr = "Compile the IML program")

    lazy val execute = opt[Boolean]("execute", short = 'x',
        descr = "Execute the target code")

    lazy val irProvider = opt[IRProvider]("ir", short = 'i',
        descr = "The intermediate representation to use (LLVM)",
        noshort = true,
        default = Some(new LLVMProvider(config)))(irProviderConverter)

    lazy val lli = opt[String]("lli", descr = "Program to use to execute target code",
        default = Some("/usr/local/bin/lli"))

    lazy val maxIterations = opt[Int]("max", short = 'm',
        descr = "Maximum number of refinement iterations",
        default = Some(10))

    lazy val solver = opt[String]("solver", short = 'e',
        descr = "SMT solver (Z3, SMTInterpol, CVC4)",
        default = Some("Z3"))

    lazy val solverTimeOut = opt[Int]("timeout", short = 'o',
        descr = "Timeout for SMT solvers (seconds)",
        default = Some(10))

    lazy val sourcePrint = opt[Boolean]("srcprint", short = 's',
        descr = "Print the source code tree")

    lazy val sourcePrettyPrint = opt[Boolean]("srcprettyprint", short = 'p',
        descr = "Pretty-print the source code")

    lazy val targetPrint = opt[Boolean]("tgtprint", short = 'u',
        descr = "Print the target code tree")

    lazy val targetPrettyPrint = opt[Boolean]("tgtprettyprint", short = 't',
        descr = "Pretty-print the target code")

    lazy val trackValues = opt[Boolean]("track", short = 'k',
        descr = "Track values",
        default = Some(false))

    lazy val verifyTarget = opt[Boolean]("verify", short = 'v',
        descr = "Verify the target code")

}

trait Driver extends CompilerBase[Program, SkinkConfig] {

    import au.edu.mq.comp.automat.auto.NFA
    import au.edu.mq.comp.automat.util.DotConverter
    import au.edu.mq.comp.dot.DOTPrettyPrinter
    import au.edu.mq.comp.dot.DOTSyntax.{Attribute, DotSpec, Ident, StringLit}
    import au.edu.mq.comp.skink.iml.Compiler
    import au.edu.mq.comp.skink.ir.{IR, IRProvider}
    import org.bitbucket.inkytonik.kiama.output.PrettyPrinter.{any, layout}
    import org.bitbucket.inkytonik.kiama.output.PrettyPrinterTypes.Document
    import org.bitbucket.inkytonik.kiama.util.{Emitter, OutputEmitter, Source}
    import org.bitbucket.inkytonik.kiama.util.Messaging.{Messages, noMessages}

    override def createConfig(args : Seq[String]) : SkinkConfig =
        new SkinkConfig(args)

    /**
     * If we're processing IML, build an AST program for it. The Compiler
     * support will then call `process`. Otherwise, we are working with IR
     * directly so build a representation of it and call `processIR`. In
     * either case if an error occurs return the messages instead.
     */
    override def makeast(source : Source, config : SkinkConfig) : Either[Program, Messages] =

        if (config.compile() || config.sourcePrint() || config.sourcePrettyPrint()) {

            // We're compiling so input file contains IML. Parse and process
            // the IML program and then the IR of the compiled program.

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

            config.irProvider().buildFromSource(source, positions) match {
                case Left(ir) =>
                    processIR(ir, config)
                    Right(noMessages)
                case Right(messages) =>
                    config.output().emitln(s"UNKNOWN\ncan't build ${config.irProvider().name} IR")
                    Right(messages)
            }

        }

    /**
     * Processing for IML programs: compile to LLVM IR and then process that.
     */
    def process(source : Source, program : Program, config : SkinkConfig) {

        import au.edu.mq.comp.skink.iml.IMLPrettyPrinter.{any, pretty}

        if (config.sourcePrint())
            config.output().emitln(pretty(any(program)).layout)

        if (config.sourcePrettyPrint())
            config.output().emit(format(program).layout)

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

        if (config.targetPrint())
            config.output().emitln(layout(any(ir)))

        if (config.targetPrettyPrint())
            config.output().emit(ir.show)

        for (function <- ir.functions) {

            if (config.cfgDotPrint()) {
                val dot = toDot(function.nfa, config.filenames().head)
                config.output().emitln
                config.output().emitln(DOTPrettyPrinter.format(dot).layout)
            }

            if (config.verifyTarget() && (function.name == "main")) {
                val verifier = new Verifier(config)
                verifier.verify(function)
            }

        }

        if (config.execute()) {
            val (output, code) = ir.execute(config)
            config.output().emit(output)
            if (code != 0)
                config.output().emitln(s"exit code: $code")
        }

    }

    def format(program : Program) : Document =
        iml.IMLPrettyPrinter.format(program, 5)

    def toDot(nfa : NFA[String, Int], filename : String) : DotSpec =
        DotConverter.toDot(
            nfa.copy(name = filename),
            (b : String) => {
                val label = Attribute("label", StringLit(b))
                val style =
                    Attribute("shape", if (nfa.getInit.contains(b))
                        Ident("circle")
                    else if (nfa.accepting.contains(b))
                        Ident("doublecircle")
                    else
                        Ident("oval"))
                List(label, style)
            },
            (b : String) => '"' + b + '"',
            (i : Int) => i.toString
        )

}

object Main extends Driver
