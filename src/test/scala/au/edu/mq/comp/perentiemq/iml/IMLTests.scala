package au.edu.mq.comp.perentiemq.iml

import au.edu.mq.comp.perentiemq.Driver
import IMLSyntax.Program
import org.kiama.util.TestCompiler

/**
 * Tests that check that the IML parser and pretty-printers build
 * the correct trees that pretty-print to the correct output.
 */
class IMLTests extends Driver with TestCompiler[Program] {

    val path = "src/test/scala/au/edu/mq/comp/perentiemq/iml"
    filetests ("IML parse and print", path, ".iml", ".out")

}
