package au.edu.mq.comp.skink

import iml.IMLSyntax.Program
import org.bitbucket.inkytonik.kiama.util.TestCompilerWithConfig
import org.scalatest.FunSuiteLike

class CITests extends CDriver with TestCompilerWithConfig[Program, SkinkConfig] {

    filetests("citests", "src/test/resources/citests", ".c", ".verif",
        argslist = List(List("-v", "-m15", "-eZ3")))
}