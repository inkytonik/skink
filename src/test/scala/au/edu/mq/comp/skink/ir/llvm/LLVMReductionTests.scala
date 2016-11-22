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
class LLVMReductionTests extends FunSuiteLike {
    import org.scalallvm.assembly.AssemblySyntax._
    import au.edu.mq.comp.skink.ir.{IR, IRFunction, Choice, Trace}
    import org.scalallvm.assembly.AssemblyPrettyPrinter.{any, layout, show}
    import au.edu.mq.comp.automat.util.Determiniser.toDetNFA

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

    def reduceAndLogProgram(fileName : String) = {
        import au.edu.mq.comp.skink.Skink.{getLogger, toDot}
        import au.edu.mq.comp.automat.dpor.DPOR

        val (ir, main) = parseProgram(fileName)
        val dca = ir.dca
        val reducedNFA = DPOR(dca, { x : Choice => x.threadId }, ir.independent _)
        reducedNFA.getTrace()
        val cfgLogger = getLogger(this.getClass, ".cfg")
        cfgLogger.info(toDot(toDetNFA(dca)._1, s"$fileName unreduced tree"))
        cfgLogger.info(toDot(toDetNFA(reducedNFA.getExploredGraph)._1, s"$fileName reduced tree"))
    }

    test("Check dependence of two blocks") {
        val (ir, main) = parseProgram("src/test/resources/llvm/simple_threads.c")
        val dca = ir.dca
        toDetNFA(ir.dca)
        val trace = Seq(Choice(0, 0), Choice(0, 0), Choice(0, 0), Choice(0, 0), Choice(1, 0), Choice(1, 0))
        // Two loads on @i are independent
        assert(ir.independent(trace)(2, 4))
        // A load and a store on @j are dependent
        assert(!ir.independent(trace)(3, 5))
        // Two blocks on the same thread are dependent
        assert(!ir.independent(trace)(4, 5))
    }

    test("Reduce sync-threads") {
        reduceAndLogProgram("programs/concurrency/fib-threads_true-unreach-call.c")
    }

    test("Reduce simple_threads") {
        reduceAndLogProgram("programs/concurrency/concurrent-loop_true-unreach-call.c")
    }

    test("Reduce concurrent loop") {
        reduceAndLogProgram("programs/concurrency/fib-threads_true-unreach-call.c")
    }

    test("Dump a pretty graph of both reduced and unreduced machines") {
        import au.edu.mq.comp.skink.Skink.{getLogger, toDotSpec}
        import au.edu.mq.comp.automat.dpor.DPOR

        val (ir, main) = parseProgram("programs/concurrency/fib-threads_true-unreach-call.c")
        val dca = ir.dca
        val reducedNFA = DPOR(dca, { x : Choice => x.threadId }, ir.independent _)
        reducedNFA.getTrace()

        val detUnreduced = toDetNFA(dca)._1
        val detReduced = toDetNFA(reducedNFA.getExploredGraph)._1
        var redToUnred = Map[Int, Int]()
        var seenReduced = Seq[Set[Int]]()

        def syncDFS(redState : Set[Int], unredState : Set[Int]) : Unit = {
            if (seenReduced.contains(redState))
                return
            seenReduced = seenReduced :+ redState
            redToUnred = redToUnred + (unredState.head -> redState.head)
            detReduced.enabledIn(redState).map(c => syncDFS(detReduced.succ(redState, c), detUnreduced.succ(unredState, c)))
        }

        syncDFS(detReduced.getInit, detUnreduced.getInit)

        val cfgLogger = getLogger(this.getClass, ".cfg")
        val spec = toDotSpec(detUnreduced, "name")

        import au.edu.mq.comp.dot.DOTSyntax.DotSpec
        import au.edu.mq.comp.dot.DOTPrettyPrinter.format
        import scala.language.postfixOps
        import au.edu.mq.comp.dot.DOTSyntax._
        import au.edu.mq.comp.automat.edge.{DiEdge, LabDiEdge}
        import au.edu.mq.comp.dot.DOTPrettyPrinter

        //  collect edges and make a [[List[EdgeDecl]]]
        lazy val dotEdges = detUnreduced.transitions map {
            case LabDiEdge(e, l) ⇒
                val inReduced = detReduced.transitions.contains(LabDiEdge(DiEdge(redToUnred.get(e.src).get, redToUnred.get(e.tgt).get), l))
                SingleTgtEdge(
                    Node(e.src.toString),
                    Node(e.tgt.toString),
                    Some(ListAttributes(List(
                        Attribute("label", StringLit("")),
                        Attribute("color", if (inReduced) Ident("green") else Ident("red"))
                    )))
                )
        }

        val filteredSpec = spec.automatonBody.optBlocks.filter { case _ : SingleTgtEdge => false case _ => true }
        val patchedSpec = filteredSpec ++ dotEdges.toList
        val patchedDot = DotSpec(AutomatonName(""), AutomatonBody(patchedSpec))
        cfgLogger.info(DOTPrettyPrinter.show(patchedDot))
    }
}
