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

    import au.edu.mq.comp.skink.SkinkConfig
    import au.edu.mq.comp.skink.ir.llvm.{LLVMFunction, LLVMIR, LLVMConcurrentAuto}
    import org.scalallvm.assembly.AssemblySyntax._
    import org.scalallvm.assembly.{Assembly, Analyser}
    import org.bitbucket.inkytonik.kiama.relation.Tree
    import org.bitbucket.inkytonik.kiama.util.{FileSource, Position, Positions, StringSource}

    /**
     * Parse a piece of LLVM IR that is a program and return the AST nodes
     * for the whole program, its first function, that function's first
     * block and an analyser for the function.
     */
    def parseProgram(fileName : String) : (Program, LLVMIR, LLVMFunction) = {
        val positions = new Positions
        val source = new FileSource(fileName)
        val p = new Assembly(source, positions)
        val pr = p.pProgram(0)
        if (pr.hasValue) {
            val prog = p.value(pr).asInstanceOf[Program]
            val ir = new LLVMIR(prog, new SkinkConfig(List()))
            val main = ir.functions.filter(_.name == "main").head
            (prog, ir, main)
        } else
            fail(s"parse error: ${pr.parseError.msg}")
    }

    test("Load an ll program and produce a DCA") {
        val (_, _, main) = parseProgram("src/test/resources/llvm/fib_bench_false-unreach-call.ll")
        val dca = main.dca
        //var state = dca.getInit
        //val r = scala.util.Random
        //for (a <- 1 until 10) {
        //val branch = r.nextInt(dca.enabledIn(state).size - 1)
        //state = dca.succ(state, branch)
        //println(state.keys)
        //println(state.values.map(_.optBlockLabel))
        //}
        import au.edu.mq.comp.automat.util.Determiniser.toDetNFA
        toDetNFA(dca)
    }

}
