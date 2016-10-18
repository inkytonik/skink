package au.edu.mq.comp.skink.ir.llvm

import org.junit.runner.RunWith
import org.scalatest.FunSuiteLike
import org.scalatest.junit.JUnitRunner

/**
 * Tests for the transformations on functions relating to concurrency in
 * LLVMFunction. Test structure mostly lifted from scalallvm's test suite
 * written by Tony.
 */
@RunWith(classOf[JUnitRunner])
class LLVMConcurrentAutoTests extends FunSuiteLike {
    import org.scalallvm.assembly.AssemblySyntax._
    import au.edu.mq.comp.skink.ir.{IR, IRFunction}
    import au.edu.mq.comp.skink.ir.llvm.LLVMConcurrentAuto

    /**
     * Parse a piece of LLVM IR that is a program and return the AST nodes
     * for the whole program, its first function, that function's first
     * block and an analyser for the function.
     */
    def parseProgram(fileName : String) : (IR, IRFunction) = {
        import au.edu.mq.comp.skink.SkinkConfig
        import au.edu.mq.comp.skink.c.CFrontend
        import org.bitbucket.inkytonik.kiama.util.Positions

        val stubConfig = new SkinkConfig(List())
        val frontend = new CFrontend(stubConfig)
        val ir = frontend.buildIRFromFile(fileName, new Positions)
        if (ir.isLeft) {
            val llvmIR = ir.left.get
            val main = llvmIR.functions.filter(_.name == "main").head
            (llvmIR, main)
        } else
            fail(s"parse error: ${ir.right}")
    }

    test("Load an ll program and produce a DCA") {
        import au.edu.mq.comp.automat.util.Determiniser.toDetNFA
        import au.edu.mq.comp.skink.Skink.{getLogger, toDot}
        import org.scalallvm.assembly.AssemblyPrettyPrinter.{any, layout, show}

        val (_, main) = parseProgram("src/test/resources/llvm/simple_threads.c")
        val dca = main.dca
        val cfgLogger = getLogger(this.getClass, ".cfg")
        cfgLogger.info(toDot(toDetNFA(dca), s"${dca.name} tree"))
    }
}
