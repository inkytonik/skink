package au.edu.mq.comp.skink

import au.edu.mq.comp.skink.ir.IR
import org.bitbucket.inkytonik.kiama.util.TestCompilerWithConfig

trait CITests extends Driver with TestCompilerWithConfig[IR, SkinkConfig] {

    def makeTests(path : String, optLevel : Int, extraArgs : List[String] = List()) =
        filetests(s"citests ($path)", s"src/test/resources/citests/$path", ".c", s".O$optLevel.verif",
            argslist = List(List("-v", "-w", "-", s"-O$optLevel") ++ extraArgs))

}

class MathCITests extends CITests {

    for (optLevel <- List(0, 2)) {
        makeTests("math", optLevel)
    }
    makeTests("math/function", 2)

}

class BitCITests extends CITests {

    for (optLevel <- List(0, 2)) {
        makeTests("bit", optLevel, List("-i", "bit"))
    }

}
