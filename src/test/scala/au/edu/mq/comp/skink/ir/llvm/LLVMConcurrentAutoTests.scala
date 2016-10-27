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
    import au.edu.mq.comp.skink.ir.{IR, IRFunction, Choice, Trace}
    import org.scalallvm.assembly.AssemblyPrettyPrinter.{any, layout, show}

    /**
     * Parse a piece of LLVM IR that is a program and return the AST nodes
     * for the whole program, its first function, that function's first
     * block and an analyser for the function.
     */
    def parseProgram(fileName : String) : (LLVMIR, LLVMFunction) = {
        import au.edu.mq.comp.skink.SkinkConfig
        import au.edu.mq.comp.skink.c.CFrontend
        import org.bitbucket.inkytonik.kiama.util.Positions

        val stubConfig = new SkinkConfig(List())
        stubConfig.verify()
        val frontend = new CFrontend(stubConfig)
        val ir = frontend.buildIRFromFile(fileName, new Positions)
        if (ir.isLeft) {
            val llvmIR = ir.left.get.asInstanceOf[LLVMIR]
            val main = llvmIR.functions.filter(_.name == "main").head
            (llvmIR, main)
        } else
            fail(s"parse error: ${ir.right}")
    }

    test("Load a C program and produce a determinised NFA") {
        import au.edu.mq.comp.automat.util.Determiniser.toDetNFA
        import au.edu.mq.comp.skink.Skink.{getLogger, toDot}

        val (ir, main) = parseProgram("src/test/resources/llvm/simple_threads.c")
        val dca = ir.dca
        val cfgLogger = getLogger(this.getClass, ".cfg")
        cfgLogger.info(toDot(toDetNFA(dca), s"${dca.name} tree"))
    }

    test("A state with an __error label in it should be final") {
        val (ir, main) = parseProgram("src/test/resources/llvm/simple_threads.c")
        val dca = ir.dca
        assert(dca.isFinal(LLVMState(Map(0 -> "__error.bogus"), Map())))
        assert(dca.isFinal(LLVMState(Map(0 -> "someotherlabel", 1 -> "__error.onAnyThread"), Map())))
    }

    test("Synchronisation process test") {
        val (ir, main) = parseProgram("src/test/resources/llvm/sync_threads.c")
        val dca = ir.dca
        // Traverse to state where both threads exit
        var state = dca.getInit
        for (i <- 1 until 5)
            state = dca.succ(state, Choice(0, 0))

        assert(state.threadLocs.keys.toList.length == 3)

        val startThreads = state
        // First block in t1 should take the mutex and block t2
        state = dca.succ(startThreads, Choice(1, 0))
        assert(state.syncTokens.get("m").getOrElse(false))
        assert(dca.isBlocked(ir.getBlockByName(2, "0"), state))

        // Main should be blocked on first wait
        assert(dca.isBlocked(ir.getBlockByName(0, "__threading.2.nolabel"), state))

        // Release m from t1
        state = dca.succ(state, Choice(1, 0))
        state = dca.succ(state, Choice(1, 0))

        val beforeT2 = state

        // t2 should unblock
        assert(!dca.isBlocked(ir.getBlockByName(2, "0"), state))

        // t2 takes the mutex 
        state = dca.succ(state, Choice(2, 0))

        // t2 should block on the condition and release the mutex immediately
        assert(dca.isBlocked(ir.getBlockByName(2, "__threading.2.nolabel"), state))
        assert(!state.syncTokens.get("m").getOrElse(true))

        // signal condition from t1
        state = dca.succ(state, Choice(1, 0))

        // t2 should unblock, but shouldn't take mutex until after it actually executes
        assert(!dca.isBlocked(ir.getBlockByName(2, "__threading.2.nolabel"), state))
        assert(!state.syncTokens.get("m").getOrElse(true))

        // main should unblock on first join as t1 has terminated
        assert(!dca.isBlocked(ir.getBlockByName(0, "__threading.2.nolabel"), state))

        // move t2 past condition
        state = dca.succ(state, Choice(2, 0))
        assert(state.syncTokens.get("m").getOrElse(false))

        // move main past first join and it should block again
        state = dca.succ(state, Choice(0, 0))
        assert(dca.isBlocked(ir.getBlockByName(0, "__threading.1.nolabel"), state))

        // move t2 to termination
        state = dca.succ(state, Choice(2, 0))
        state = dca.succ(state, Choice(2, 0))

        // main should unblock
        assert(!dca.isBlocked(ir.getBlockByName(0, "__threading.1.nolabel"), state))

        // start back before t2 began, run it with mutex available and condition true
        // signal condition from t1
        state = dca.succ(beforeT2, Choice(1, 0))

        assert(!dca.isBlocked(ir.getBlockByName(2, "0"), state))

        // take the mutex and keep hold of it as we aren't blocking on the cond_wait
        state = dca.succ(state, Choice(2, 0))
        assert(state.syncTokens.get("m").getOrElse(false))
    }

}
