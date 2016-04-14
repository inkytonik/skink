package au.edu.mq.comp.skink.iml

import au.edu.mq.comp.skink.{Driver, PerentieMQConfig}
import IMLSyntax.Program
import org.bitbucket.inkytonik.kiama.util.TestCompilerWithConfig

/**
 * Tests that check that the IML parser and pretty-printers build
 * the correct trees that pretty-print to the correct output.
 */
class IMLSyntaxTests extends Driver with TestCompilerWithConfig[Program, PerentieMQConfig] {

    val path = "src/test/scala/au/edu/mq/comp/skink/iml/syntax"
    filetests("IML parse and print", path, ".iml", ".out",
        argslist = List(Array("-p", "-s")))

}
