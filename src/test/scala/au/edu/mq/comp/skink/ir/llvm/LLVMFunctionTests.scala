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

    import au.edu.mq.comp.skink.SkinkConfig
    import au.edu.mq.comp.skink.ir.llvm.{LLVMFunction, LLVMIR}
    import org.scalallvm.assembly.AssemblySyntax._
    import org.scalallvm.assembly.{Assembly, Analyser}
    import org.bitbucket.inkytonik.kiama.relation.Tree
    import org.bitbucket.inkytonik.kiama.util.{FileSource, Position, Positions, StringSource}

    /**
     * Parse a piece of LLVM IR that is a program and return the AST nodes
     * for the whole program, its first function, that function's first
     * block and an analyser for the function.
     */
    def parseProgram(defns : String) : (Program, FunctionDefinition, LLVMFunction) = {
        val positions = new Positions
        val source = new StringSource(defns)
        val p = new Assembly(source, positions)
        val pr = p.pProgram(0)
        if (pr.hasValue) {
            val prog = p.value(pr).asInstanceOf[Program]
            val func = prog.items(0).asInstanceOf[FunctionDefinition]
            val wrappedFun = new LLVMFunction(new LLVMIR(prog, new SkinkConfig(List())), func)
            (prog, func, wrappedFun)
        } else
            fail(s"parse error: ${pr.parseError.msg}")
    }

    test("Split two stores to different globals") {
        val (_, func, wrappedFun) =
            parseProgram(
                """define i32 @main() {
                  |  store i32 0, i32* @x, align 4, !dbg !1
                  |  store i32 0, i32* @y, align 4, !dbg !1
                  |  ret i32 0
                  |}
                  |""".stripMargin
            )
        assert(func.functionBody.blocks.length == 1)
        assert(wrappedFun.makeVerifiable.functionBody.blocks.length == 2)
    }

    test("Split two stores to same global") {
        val (_, func, wrappedFun) =
            parseProgram(
                """define i32 @main() {
                  |  store i32 0, i32* @x, align 4, !dbg !1
                  |  store i32 0, i32* @x, align 4, !dbg !1
                  |  ret i32 0
                  |}
                  |""".stripMargin
            )
        assert(func.functionBody.blocks.length == 1)
        assert(wrappedFun.makeVerifiable.functionBody.blocks.length == 2)
    }

    test("Split two loads from different globals") {
        val (_, func, wrappedFun) =
            parseProgram(
                """define i32 @main() {
                  |  %1 = load i32, i32* @i, align 4, !dbg !52
                  |  %2 = load i32, i32* @j, align 4, !dbg !53
                  |  ret i32 0
                  |}
                  |""".stripMargin
            )
        assert(func.functionBody.blocks.length == 1)
        assert(wrappedFun.makeVerifiable.functionBody.blocks.length == 2)
    }

    test("Split two loads from same global") {
        val (_, func, wrappedFun) =
            parseProgram(
                """define i32 @main() {
                  |  %1 = load i32, i32* @i, align 4, !dbg !52
                  |  %2 = load i32, i32* @i, align 4, !dbg !53
                  |  ret i32 0
                  |}
                  |""".stripMargin
            )
        assert(func.functionBody.blocks.length == 1)
        assert(wrappedFun.makeVerifiable.functionBody.blocks.length == 2)
    }

    test("Split a load and a store separated by another insn") {
        val (_, func, wrappedFun) =
            parseProgram(
                """define i32 @main() {
                  |  %1 = load i32, i32* @i, align 4, !dbg !52
                  |  %2 = add nsw i32 0, %1, !dbg !57
                  |  store i32 %2, i32* @x, align 4, !dbg !1
                  |  ret i32 0
                  |}
                  |""".stripMargin
            )
        assert(func.functionBody.blocks.length == 1)
        assert(wrappedFun.makeVerifiable.functionBody.blocks.length == 2)
    }

    test("Label generation for multiple split block") {
        import org.scalallvm.assembly.AssemblyPrettyPrinter.show
        val (_, func, wrappedFun) =
            parseProgram(
                """define i32 @main() {
                  |  %1 = load i32, i32* @i, align 4, !dbg !52
                  |  %2 = add nsw i32 0, %1, !dbg !57
                  |  store i32 %2, i32* @x, align 4, !dbg !1
                  |  %3 = load i32, i32* @x, align 4, !dbg !52
                  |  ret i32 0
                  |}
                  |""".stripMargin
            )
        assert(func.functionBody.blocks.length == 1)
        assert(wrappedFun.makeVerifiable.functionBody.blocks.length == 3)
        val outputAsm = show(wrappedFun.makeVerifiable)
        val firstLab = outputAsm.indexOf("__threading0.")
        val termLab = outputAsm.indexOf("__threading.")
        assert(firstLab != 0)
        assert(termLab != 0)
        assert(firstLab < termLab)
    }

    test("Blocks with no global access should be left alone") {
        val (_, func, wrappedFun) =
            parseProgram(
                """define i32 @main() {
                  |  store i32 0, i32* %1, align 4, !dbg !1
                  |  %2 = add nsw i32 0, %1, !dbg !57
                  |  store i32 %2, i32* %3, align 4, !dbg !1
                  |  ret i32 0
                  |}
                  |""".stripMargin
            )
        assert(func.functionBody.blocks.length == 1)
        assert(wrappedFun.makeVerifiable.functionBody.blocks.length == 1)
    }

    test("Find thread name in main with pthread_create and ensure block has been split on pthread_create call") {
        val (_, func, wrappedFun) =
            parseProgram(
                """define i32 @main() {
                  | %1 = alloca i32, align 4
                  | %2 = alloca i32, align 4
                  | %3 = alloca i8**, align 8
                  | %id1 = alloca i64, align 8
                  | %id2 = alloca i64, align 8
                  | store i32 0, i32* %1
                  | store i32 %argc, i32* %2, align 4
                  | %4 = call i32 @pthread_create(i64* %id1, %union.pthread_attr_t* null, i8* (i8*)* @t1, i8* null) #4, !dbg !105
                  | store i8** %argv, i8*** %3, align 8
                  | call void @llvm.dbg.declare(metadata i8*** %3, metadata !96, metadata !28), !dbg !97
                  | %4 = call i32 @pthread_create(i64* %id1, %union.pthread_attr_t* null, i8* (i8*)* @t1, i8* null) #4, !dbg !105
                  | call void @llvm.dbg.declare(metadata i64* %id1, metadata !98, metadata !28), !dbg !102
                  | %4 = call i32 @pthread_create(i64* %id1, %union.pthread_attr_t* null, i8* (i8*)* @t1, i8* null) #4, !dbg !105
                  | call void @llvm.dbg.declare(metadata i64* %id2, metadata !103, metadata !28), !dbg !104
                  | ret i32 0
                  |}
                  |""".stripMargin
            )
        assert(func.functionBody.blocks.length == 1)
        assert(wrappedFun.makeVerifiable.functionBody.blocks.length == 4)
    }

}
