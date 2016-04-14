package au.edu.mq.comp.skink.iml

import au.edu.mq.comp.skink.{Driver, SkinkConfig}
import IMLSyntax.Program
import org.bitbucket.inkytonik.kiama.util.TestCompilerWithConfig

/**
 * Tests that check whether IML programs execute correctly after compilation.
 */
class IMLExecutionTests extends Driver with TestCompilerWithConfig[Program, SkinkConfig] {

    val path = "src/test/scala/au/edu/mq/comp/skink/iml/execution"
    filetests("IML execution", path, ".iml", ".out",
        argslist = List(Array("-c", "-x")))

}
