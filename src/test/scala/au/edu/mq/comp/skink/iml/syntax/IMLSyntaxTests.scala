package au.edu.mq.comp.skink.iml

import au.edu.mq.comp.skink.{Driver, SkinkConfig}
import IMLSyntax.Program
import org.bitbucket.inkytonik.kiama.util.TestCompilerWithConfig

/**
 * Tests that check that the IML parser produces the correct output.
 */
class IMLSyntaxTests extends Driver with TestCompilerWithConfig[Program, SkinkConfig] {

    val path = "src/test/scala/au/edu/mq/comp/skink/iml/syntax"
    filetests("IML parse", path, ".iml", ".out",
        argslist = List(Array("-p")))

}
