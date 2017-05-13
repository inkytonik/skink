package au.edu.mq.comp.skink

import au.edu.mq.comp.skink.ir.IR
import org.bitbucket.inkytonik.kiama.util.TestCompilerWithConfig

class MathCITests extends Driver with TestCompilerWithConfig[IR, SkinkConfig] {

    filetests("citests (math)", "src/test/resources/citests/math", ".c", ".verif",
        argslist = List(List("-v", "-w", "-")))

}

class BitCITests extends Driver with TestCompilerWithConfig[IR, SkinkConfig] {

    filetests("citests (bit)", "src/test/resources/citests/bit", ".c", ".verif",
        argslist = List(List("-v", "-w", "-", "-i", "bit")))

}
