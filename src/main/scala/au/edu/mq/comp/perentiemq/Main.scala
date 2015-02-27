package au.edu.mq.comp.perentiemq

import org.kiama.util.Compiler
import iml.IMLSyntax.Program

trait Driver extends Compiler[Program] {

    import iml.IMLPrettyPrinter.{any, pretty}
    import java.io.Reader
    import org.kiama.output.PrettyPrinterTypes.Document
    import org.kiama.util.Config

    // Not using Scala parser library
    var parser = null

    override def makeast (reader : Reader, filename : String, config : Config) : Either[Program,String] = {
        val p = new iml.IML (reader, filename)
        val pr = p.pProgram (0)
        if (pr.hasValue)
            Left (p.value (pr).asInstanceOf[Program])
        else
            Right (p.format (pr.parseError))
    }

    override def process (filename : String, ast : Program, config : Config) {
        config.error.emitln (pretty (any (ast)).layout)
        config.error.emit (format (ast).layout)
    }

    def format (ast : Program) : Document =
        iml.IMLPrettyPrinter.format (ast, 5)

}

object Main extends Driver

