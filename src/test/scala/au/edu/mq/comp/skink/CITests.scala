package au.edu.mq.comp.skink

import au.edu.mq.comp.skink.ir.IR
import org.bitbucket.inkytonik.kiama.util.TestCompilerWithConfig

trait CITests extends Driver with TestCompilerWithConfig[IR, SkinkConfig] {
    val witnessFormats = List("trace", "nondet")
    val optLevels = List(0, 2)

    def makeTests(path : String, optLevel : Int, witnessFormat : String, extraArgs : List[String] = List()) = {
        val args = List(List("-v", "-w", "-", s"-O$optLevel", "-W", witnessFormat) ++ extraArgs)
        filetests(s"citests ($path)", s"src/test/resources/citests/$path", "_true-unreach-call.c",
            s"_true-unreach-call.verif", argslist = args)
        filetests(s"citests ($path)", s"src/test/resources/citests/$path", "_false-unreach-call.c",
            s"_false-unreach-call.O$optLevel.$witnessFormat.verif", argslist = args)
    }
}

class MathCITests extends CITests {
    for (witnessFormat <- witnessFormats) {
        for (optLevel <- optLevels) {
            makeTests("math", optLevel, witnessFormat)
        }
        makeTests(s"math/function-Yices-nonIncr", 2, witnessFormat)
        makeTests(s"math/function-Z3", 2, witnessFormat)
    }
}

class BitCITests extends CITests {
    for (witnessFormat <- witnessFormats) {
        for (optLevel <- optLevels) {
            makeTests("bit", optLevel, witnessFormat)
        }
    }
}
