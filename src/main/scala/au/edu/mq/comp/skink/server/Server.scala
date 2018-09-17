package au.edu.mq.comp.skink.server

import java.io.{InputStream, OutputStream}
import java.net.Socket

import au.edu.mq.comp.skink.verifier.Verifier
import au.edu.mq.comp.skink.{Driver, SkinkConfig}
import langserver.core.{Connection, LanguageServer}
import langserver.messages.{ClientCapabilities, CompletionOptions, ServerCapabilities}
import langserver.types.{Diagnostic, DiagnosticSeverity, Position, Range, TextDocumentIdentifier, TextDocumentItem}
import org.bitbucket.inkytonik.kiama.util.FileSource
import resource._

import scala.util.{Failure, Success}

class Server(driver : Driver, in : InputStream, out : OutputStream) extends LanguageServer(in, out) {

    override def initialize(pid : Long, rootPath : String, capabilities : ClientCapabilities) : ServerCapabilities = {
        logger.info(s"Initialized with $pid, $rootPath, $capabilities")
        ServerCapabilities(completionProvider = Some(CompletionOptions(true, Seq("."))))
    }

    override def onOpenTextDocument(td : TextDocumentItem) = {
        runVerifier(td.uri)
    }

    override def onSaveTextDocument(td : TextDocumentIdentifier) = {
        runVerifier(td.uri)
    }

    def runVerifier(uri : String) = {
        logger.debug(s"Document change")
        val source = FileSource(uri.substring(5))
        val config = new SkinkConfig(Seq("-v", "--verifier", "Z3", "math"))
        config.verify()
        driver.makeast(source, config) match {
            case Left(ir) =>
                val verifier = new Verifier(ir, config)
                for (function <- ir.functions if function.name == "main") {
                    verifier.verify(driver, function) match {
                        case Success(None) => this.connection.publishDiagnostics(uri, Seq())
                        case Success(Some(trace)) => {
                            this.connection.publishDiagnostics(uri, function.traceToSteps(trace).map(step => {
                                val range : Option[Range] = for {
                                    ln <- step.optTermLine
                                    code <- step.optTermCode
                                    codeLine <- source.optLineContents(ln)
                                } yield Range(Position(ln - 1, codeLine.indexOf(code)), Position(ln - 1, code.length + codeLine.indexOf(code)))

                                val nondets = function.traceToNonDetValues(trace).flatMap(ndc => for {
                                    value <- ndc.optValue
                                    code <- ndc.optCode
                                } yield "%s : %s assigned in `%s`".format(value, ndc.tipe, code))

                                Diagnostic(
                                    range.getOrElse(Range(Position(0, 0), Position(0, 10))),
                                    Some(DiagnosticSeverity.Information),
                                    None,
                                    Some("skink"),
                                    nondets.mkString("\n")
                                )
                            }))
                        }
                        case Failure(e) => this.connection.showMessage(1, e.getLocalizedMessage)
                    }

                }

            case Right(messages) => this.connection.showMessage(1, messages.mkString("\n"))
        }
    }
}

class SkinkServer(driver : Driver, config : SkinkConfig) {

    val languageServer : ExtractableManagedResource[Server] = for {
        sock <- managed(new Socket("localhost", 8007))
    } yield {
        new Server(driver, sock.getInputStream, sock.getOutputStream)
    }

    languageServer.opt match {
        case Some(server) => server.start()
        case None         => ()
    }

}