package au.edu.mq.comp.skink.iml

import au.edu.mq.comp.skink.{Driver, SkinkConfig}
import au.edu.mq.comp.skink.ir.IR
import org.bitbucket.inkytonik.kiama.util.TestCompilerWithConfig

/**
 * Tests that check that the IML parser produces the correct output.
 */
class IMLSyntaxTests extends Driver with TestCompilerWithConfig[IR, SkinkConfig] {

    val path = "src/test/scala/au/edu/mq/comp/skink/iml/syntax"
    filetests("IML parse", path, ".iml", ".out",
        argslist = List(Array("-f", "IML", "-p")))

}
