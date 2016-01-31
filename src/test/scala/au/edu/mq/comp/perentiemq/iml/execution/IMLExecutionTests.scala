package au.edu.mq.comp.perentiemq.iml

import au.edu.mq.comp.perentiemq.{Driver, PerentieMQConfig}
import IMLSyntax.Program
import org.bitbucket.inkytonik.kiama.util.TestCompilerWithConfig

/**
 * Tests that check whether IML programs execute correctly after compilation.
 */
class IMLExecutionTests extends Driver with TestCompilerWithConfig[Program, PerentieMQConfig] {

    val path = "src/test/scala/au/edu/mq/comp/perentiemq/iml/execution"
    filetests("IML execution", path, ".iml", ".out",
        argslist = List(Array("-c", "-x")))

}
