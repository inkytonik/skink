package au.edu.mq.comp.skink.iml

import au.edu.mq.comp.skink.{Driver, SkinkConfig}
import au.edu.mq.comp.skink.ir.IR
import org.bitbucket.inkytonik.kiama.util.TestCompilerWithConfig

/**
 * Tests that check whether IML programs execute correctly after compilation.
 */
class IMLExecutionTests extends Driver with TestCompilerWithConfig[IR, SkinkConfig] {

    val path = "src/test/scala/au/edu/mq/comp/skink/iml/execution"
    filetests("IML execution", path, ".iml", ".out",
        argslist = List(Array("-f", "IML", "-x")))

}
