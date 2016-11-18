package au.edu.mq.comp.skink

import au.edu.mq.comp.skink.ir.IR
import org.bitbucket.inkytonik.kiama.util.TestCompilerWithConfig

class CITests extends Driver with TestCompilerWithConfig[IR, SkinkConfig] {

    filetests("citests", "src/test/resources/citests", ".c", ".verif",
        argslist = List(List("-v", "--onlyfilenames")))

}
