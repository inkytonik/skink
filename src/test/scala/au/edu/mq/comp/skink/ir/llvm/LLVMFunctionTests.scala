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
class LLVMFunctionTests extends FunSuiteLike {

    import au.edu.mq.comp.skink.ir.llvm.LLVMFunction
    import org.scalallvm.assembly.AssemblySyntax._
    import org.scalallvm.assembly.{Assembly, Analyser}
    import org.bitbucket.inkytonik.kiama.relation.Tree
    import org.bitbucket.inkytonik.kiama.util.{FileSource, Position, Positions, StringSource}

    /**
     * Parse a piece of LLVM IR that is a program and return the AST nodes
     * for the whole program, its first function, that function's first
     * block and an analyser for the function.
     */
    def parseProgram(defns : String) : (Program, FunctionDefinition, Block, Analyser) = {
        val positions = new Positions
        val source = new StringSource(defns)
        val p = new Assembly(source, positions)
        val pr = p.pProgram(0)
        if (pr.hasValue) {
            val prog = p.value(pr).asInstanceOf[Program]
            val func = prog.items(0).asInstanceOf[FunctionDefinition]
            val block = func.functionBody.blocks(0)
            val tree = new Tree[ASTNode, FunctionDefinition](func)
            val analyser = new Analyser(tree)
            (prog, func, block, analyser)
        } else
            fail(s"parse error: ${pr.parseError.msg}")
    }

    test("Split two stores to different globals") {
        val (prog, func, block, analyser) =
            parseProgram(
                """define i32 @main() {
                  |  store i32 0, i32* @x, align 4, !dbg !1
                  |  store i32 0, i32* @y, align 4, !dbg !1
                  |  ret i32 0
                  |}
                  |""".stripMargin
            )
        val wrappedFun = new LLVMFunction(prog, func)
        assert(func.functionBody.blocks.length == 1)
        assert(wrappedFun.makeThreadVerifiable.functionBody.blocks.length == 2)
    }
    
    test("Split two stores to same global") {
        val (prog, func, block, analyser) =
            parseProgram(
                """define i32 @main() {
                  |  store i32 0, i32* @x, align 4, !dbg !1
                  |  store i32 0, i32* @x, align 4, !dbg !1
                  |  ret i32 0
                  |}
                  |""".stripMargin
            )
        val wrappedFun = new LLVMFunction(prog, func)
        assert(func.functionBody.blocks.length == 1)
        assert(wrappedFun.makeThreadVerifiable.functionBody.blocks.length == 2)
    }
    
    test("Split two loads from different globals") {
        val (prog, func, block, analyser) =
            parseProgram(
                """define i32 @main() {
                  |  %1 = load i32, i32* @i, align 4, !dbg !52
                  |  %2 = load i32, i32* @j, align 4, !dbg !53
                  |  ret i32 0
                  |}
                  |""".stripMargin
            )
        val wrappedFun = new LLVMFunction(prog, func)
        assert(func.functionBody.blocks.length == 1)
        assert(wrappedFun.makeThreadVerifiable.functionBody.blocks.length == 2)
    }
    
    test("Split two loads from same global") {
        val (prog, func, block, analyser) =
            parseProgram(
                """define i32 @main() {
                  |  %1 = load i32, i32* @i, align 4, !dbg !52
                  |  %2 = load i32, i32* @i, align 4, !dbg !53
                  |  ret i32 0
                  |}
                  |""".stripMargin
            )
        val wrappedFun = new LLVMFunction(prog, func)
        assert(func.functionBody.blocks.length == 1)
        assert(wrappedFun.makeThreadVerifiable.functionBody.blocks.length == 2)
    }
  
    test("Split a load and a store separated by another insn") {
        val (prog, func, block, analyser) =
            parseProgram(
                """define i32 @main() {
                  |  %1 = load i32, i32* @i, align 4, !dbg !52
                  |  %2 = add nsw i32 0, %1, !dbg !57
                  |  store i32 %2, i32* @x, align 4, !dbg !1
                  |  ret i32 0
                  |}
                  |""".stripMargin
            )
        val wrappedFun = new LLVMFunction(prog, func)
        assert(func.functionBody.blocks.length == 1)
        assert(wrappedFun.makeThreadVerifiable.functionBody.blocks.length == 2)
    }

    test("Blocks with no global access should be left alone") {
        val (prog, func, block, analyser) =
            parseProgram(
                """define i32 @main() {
                  |  store i32 0, i32* %1, align 4, !dbg !1
                  |  %2 = add nsw i32 0, %1, !dbg !57
                  |  store i32 %2, i32* %3, align 4, !dbg !1
                  |  ret i32 0
                  |}
                  |""".stripMargin
            )
        val wrappedFun = new LLVMFunction(prog, func)
        assert(func.functionBody.blocks.length == 1)
        assert(wrappedFun.makeThreadVerifiable.functionBody.blocks.length == 1)
    }

}
