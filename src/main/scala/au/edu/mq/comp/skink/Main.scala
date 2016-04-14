package au.edu.mq.comp.skink

import iml.IMLSyntax.Program
import org.bitbucket.inkytonik.kiama.util.{CompilerBase, Config}

class PerentieMQConfig(args : Seq[String]) extends Config(args) {
    lazy val cfgPrettyPrint = opt[Boolean]("cfgprint", short = 'g',
        descr = "Pretty print the control flow graph of the target code")
    lazy val cfgDotPrint = opt[Boolean]("cfgdotprint", short = 'd',
        descr = "Output the control flow graph of the target code in DOT form")
    lazy val compile = opt[Boolean]("compile", short = 'c',
        descr = "Compile the IML program")
    lazy val execute = opt[Boolean]("execute", short = 'x',
        descr = "Execute the target code")
    lazy val lli = opt[String]("lli", descr = "Program to use to execute target code",
        default = Some("/usr/local/bin/lli"))
    lazy val sourcePrint = opt[Boolean]("srcprint", short = 's',
        descr = "Print the source code tree")
    lazy val sourcePrettyPrint = opt[Boolean]("srcprettyprint", short = 'p',
        descr = "Pretty-print the source code")
    lazy val targetPrint = opt[Boolean]("tgtprint", short = 'u',
        descr = "Print the target code tree")
    lazy val targetPrettyPrint = opt[Boolean]("tgtprettyprint", short = 't',
        descr = "Pretty-print the target code")
    lazy val verifyTarget = opt[Boolean]("verify", short = 'v',
        descr = "Verify the target code")
    lazy val maxIterations = opt[Int]("max", short = 'm',
        descr = "Maximum number of refinement iterations",
        default = Some(10))
    lazy val trackValues = opt[Boolean]("track", short = 'k',
        descr = "Track values",
        default = Some(false))
    lazy val solverTimeOut = opt[Int]("timeout", short = 'o',
        descr = "Timeout for SMT solvers (seconds)",
        default = Some(10))
    lazy val solver = opt[String]("solver", short = 'e',
        descr = "SMT solver (Z3, SMTInterpol, CVC4",
        default = Some("Z3"))
}

trait Driver extends CompilerBase[Program, PerentieMQConfig] {

    import au.edu.mq.comp.dot.DOTPrettyPrinter
    import cfg.AssemblyCFG
    import iml.Compiler
    import iml.IMLPrettyPrinter.{any, pretty}
    import org.scalallvm.assembly.{Assembly, AssemblyPrettyPrinter}
    import org.scalallvm.assembly.AssemblySyntax.{Program => IR}
    import org.scalallvm.assembly.Executor.execute
    import org.bitbucket.inkytonik.kiama.output.PrettyPrinterTypes.Document
    import org.bitbucket.inkytonik.kiama.util.{Emitter, OutputEmitter, Source}
    import org.bitbucket.inkytonik.kiama.util.Messaging.{Messages, noMessages}

    override def createConfig(args : Seq[String]) : PerentieMQConfig =
        new PerentieMQConfig(args)

    override def makeast(source : Source, config : PerentieMQConfig) : Either[Program, Messages] = {
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

            // We're not compiling so input file contains target code (LLVM IR).
            // Use LLVM lib to parse and then process the IR.

            val p = new Assembly(source, positions)
            val pr = p.pProgram(0)
            if (pr.hasValue) {
                processir(p.value(pr).asInstanceOf[IR], config)
                Right(noMessages)
            } else {
                config.output().emitln("UNKNOWN\nLLVM parse error")
                Right(Vector(p.errorToMessage(pr.parseError)))
            }

        }

    }

    def process(source : Source, program : Program, config : PerentieMQConfig) {

        if (config.sourcePrint())
            config.output().emitln(pretty(any(program)).layout)

        if (config.sourcePrettyPrint())
            config.output().emit(format(program).layout)

        if (config.compile()) {
            val compiler = new Compiler(positions)
            val ir = compiler.compile(program)
            processir(ir, config)
        }

    }

    def processir(ir : IR, config : PerentieMQConfig) {

        if (config.targetPrint())
            config.output().emitln(AssemblyPrettyPrinter.pretty(AssemblyPrettyPrinter.any(ir)).layout)

        if (config.targetPrettyPrint())
            config.output().emit(AssemblyPrettyPrinter.format(ir, 5).layout)

        val cfgs = AssemblyCFG.buildCFGs(ir, config.verifyTarget())

        for (cfg <- cfgs) {
            val cfgAnalyser = new AssemblyCFG.CFGAnalyser(cfg)

            if (config.cfgPrettyPrint())
                config.output().emitln(cfgAnalyser.formatString(cfg))

            if (config.cfgDotPrint()) {
                val nfa = AssemblyCFG.nfa(cfg)
                val dot = AssemblyCFG.toDot(nfa)
                config.output().emitln
                config.output().emitln(DOTPrettyPrinter.format(dot).layout)
            }

            if (config.verifyTarget())
                AssemblyCFG.verify(ir, cfg, cfgAnalyser, config)
        }

        if (config.execute()) {
            val (output, code) = execute(ir, config.lli())
            config.output().emit(output)
            if (code != 0)
                config.output().emitln(s"exit code: $code")
        }

    }

    def format(program : Program) : Document =
        iml.IMLPrettyPrinter.format(program, 5)

}

object Main extends Driver
