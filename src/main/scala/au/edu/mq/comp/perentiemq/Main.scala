package au.edu.mq.comp.perentiemq

import iml.IMLSyntax.Program
import org.kiama.util.{CompilerWithConfig, Config}

abstract class IMLConfig (args : Seq[String]) extends Config (args) {
    lazy val cfgPrettyPrint = opt[Boolean] ("cfgprint", short = 'g',
                                            descr = "Pretty print the control flow graph of the target code (requires -c)")
    lazy val compile = opt[Boolean] ("compile", short = 'c',
                                     descr = "Compile the source code")
    lazy val execute = opt[Boolean] ("execute", short = 'x',
                                     descr = "Execute the target code (implies -c)")
    lazy val lli = opt[String] ("lli", descr = "Program to use to execute target code",
                                default = Some ("/usr/local/opt/llvm/bin/lli"))
    lazy val sourcePrint = opt[Boolean] ("srcprint", short = 's',
                                         descr = "Print the source code tree")
    lazy val sourcePrettyPrint = opt[Boolean] ("srcprettyprint", short = 'p',
                                               descr = "Pretty-print the source code")
    lazy val targetPrettyPrint = opt[Boolean] ("tgtprettyprint", short = 't',
                                               descr = "Pretty-print the target code (requires -c)")
}

trait Driver extends CompilerWithConfig[Program,IMLConfig] {

    import cfg.AssemblyCFGBuilder
    import iml.Compiler.compile
    import iml.IMLPrettyPrinter.{any, pretty}
    import java.io.Reader
    import org.scalallvm.assembly.AssemblyPrettyPrinter
    import org.scalallvm.assembly.AssemblySyntax.{Program => IR}
    import org.scalallvm.assembly.Executor.execute
    import org.kiama.output.PrettyPrinterTypes.Document
    import org.kiama.util.{Emitter, ErrorEmitter, OutputEmitter}
    import org.kiama.util.Messaging.Messages
    import sbtrats.ParserSupport.ratsFailureMessages

    override def createConfig (args : Seq[String],
                               out : Emitter = new OutputEmitter,
                               err : Emitter = new ErrorEmitter) : IMLConfig =
        new IMLConfig (args) {
            lazy val output = out
            lazy val error = err
        }

    // Not using Scala parser library
    var parser = null

    override def makeast (reader : Reader, filename : String, config : IMLConfig) : Either[Program,Messages] = {
        val p = new iml.IML (reader, filename)
        val pr = p.pProgram (0)
        if (pr.hasValue)
            Left (p.value (pr).asInstanceOf[Program])
        else
            Right (ratsFailureMessages (p, pr.parseError))
    }

    override def process (filename : String, program : Program, config : IMLConfig) {

        if (config.sourcePrint ())
            config.error.emitln (pretty (any (program)).layout)

        if (config.sourcePrettyPrint ())
            config.error.emit (format (program).layout)

        if (config.compile () || config.execute ()) {
            val ir = compile (program)

            if (config.targetPrettyPrint ())
                config.error.emit (AssemblyPrettyPrinter.format (ir, 5).layout)

            val cfgBuilder = new AssemblyCFGBuilder
            val cfgs = cfgBuilder.buildCFGs (ir)

            if (config.cfgPrettyPrint ())
                for (cfg <- cfgs) {
                    val cfgAnalyser = new cfgBuilder.CFGAnalyser (cfg)
                    config.error.emitln (cfgAnalyser.formatString (cfg))
                }

            if (config.execute ()) {
                val (output, code) = execute (ir, config.lli ())
                config.output.emit (output)
                if (code != 0)
                    config.output.emitln (s"exit code: $code")
            }
        }

    }

    def format (program : Program) : Document =
        iml.IMLPrettyPrinter.format (program, 5)

}

object Main extends Driver

