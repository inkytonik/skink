package au.edu.mq.comp.perentiemq

import iml.IMLSyntax.Program
import org.kiama.util.{CompilerWithConfig, Config}

abstract class IMLConfig (args : Array[String]) extends Config (args) {
    lazy val sourcePrint = opt[Boolean] ("srcprint", short = 's',
                                         descr = "Print the source tree")
    lazy val sourcePrettyPrint = opt[Boolean] ("srcprettyprint", short = 'p',
                                               descr = "Pretty-print the source tree")
}

trait Driver extends CompilerWithConfig[Program,IMLConfig] {

    import iml.IMLPrettyPrinter.{any, pretty}
    import java.io.Reader
    import org.kiama.output.PrettyPrinterTypes.Document
    import org.kiama.util.{Emitter, ErrorEmitter, OutputEmitter}

    override def createConfig (args : Array[String],
                               out : Emitter = new OutputEmitter,
                               err : Emitter = new ErrorEmitter) : IMLConfig =
        new IMLConfig (args) {
            lazy val output = out
            lazy val error = err
        }

    // Not using Scala parser library
    var parser = null

    override def makeast (reader : Reader, filename : String, config : IMLConfig) : Either[Program,String] = {
        val p = new iml.IML (reader, filename)
        val pr = p.pProgram (0)
        if (pr.hasValue)
            Left (p.value (pr).asInstanceOf[Program])
        else
            Right (p.format (pr.parseError))
    }

    override def process (filename : String, ast : Program, config : IMLConfig) {

        if (config.sourcePrint ())
            config.error.emitln (pretty (any (ast)).layout)

        if (config.sourcePrettyPrint ())
            config.error.emit (format (ast).layout)

    }

    def format (ast : Program) : Document =
        iml.IMLPrettyPrinter.format (ast, 5)

}

object Main extends Driver

