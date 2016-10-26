package au.edu.mq.comp.skink.ir.llvm

import au.edu.mq.comp.skink.SkinkConfig
import au.edu.mq.comp.smtlib.parser.SMTLIB2PrettyPrinter._
import org.bitbucket.inkytonik.kiama.util.{Positions, StringSource}
import org.junit.runner.RunWith
import org.scalallvm.assembly.Assembly
import org.scalatest.FunSuiteLike
import org.scalatest.junit.JUnitRunner

/**
 * Tests for the transformations on functions relating to concurrency in
 * LLVMFunction. Test structure mostly lifted from scalallvm's test suite
 * written by Tony.
 */
@RunWith(classOf[JUnitRunner])
class LLVMNamerTests extends FunSuiteLike {
    import au.edu.mq.comp.skink.ir.{IR, IRFunction, Trace, Choice}
    import au.edu.mq.comp.skink.SkinkConfig

    import org.scalallvm.assembly.AssemblySyntax._

    /**
     * Parse a piece of LLVM IR that is a program and return the AST nodes
     * for the whole program, its first function, that function's first
     * block and an analyser for the function.
     */
    /**
     * Parse a piece of LLVM IR that is a program and return the AST nodes
     * for the whole program, its first function, that function's first
     * block and an analyser for the function.
     */
    def parseProgram(defns : String) : (LLVMIR, LLVMFunction) = {
        val positions = new Positions
        val source = new StringSource(defns)
        val p = new Assembly(source, positions)
        val pr = p.pProgram(0)
        if (pr.hasValue) {
            val prog = p.value(pr).asInstanceOf[Program]
            val config = new SkinkConfig(Seq())
            config.verify()
            val ir = new LLVMIR(prog, config)
            val main = ir.functions.filter(_.name == "main").head
            (ir, main)
        } else
            fail(s"parse error: ${pr.parseError.msg}")
    }

    test("Get a name that is not been encounterd") {
        import au.edu.mq.comp.automat.lang.Lang
        import au.edu.mq.comp.smtlib.parser.SMTLIB2PrettyPrinter.{show => showTerm}

        val (ir, main) = parseProgram(
            """
                        ; ModuleID = '<stdin>'
                        |target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
                        |target triple = "x86_64-unknown-linux-gnu"
                        |
                        |%union.pthread_attr_t = type { i64, [48 x i8] }
                        |
                        |@i = global i32 1, align 4
                        |@j = global i32 2, align 4
                        |
                        |; Function Attrs: nounwind uwtable
                        |define i8* @t1(i8* %arg) #0 {
                        |  %1 = alloca i8*, align 8
                        |  %2 = alloca i8*, align 8
                        |  %k = alloca i32, align 4
                        |  store i8* %arg, i8** %2, align 8
                        |  call void @llvm.dbg.declare(metadata i8** %2, metadata !23, metadata !24), !dbg !25
                        |  call void @llvm.dbg.declare(metadata i32* %k, metadata !26, metadata !24), !dbg !27
                        |  %3 = load i32, i32* @i, align 4, !dbg !28
                        |  store i32 %3, i32* %k, align 4, !dbg !27
                        |  %4 = load i32, i32* %k, align 4, !dbg !29
                        |  store i32 %4, i32* @j, align 4, !dbg !30
                        |  call void @pthread_exit(i8* null) #4, !dbg !31
                        |  unreachable, !dbg !31
                        |                                                  ; No predecessors!
                        |  %6 = load i8*, i8** %1, !dbg !32
                        |  ret i8* %6, !dbg !32
                        |}
                        |
                        |; Function Attrs: nounwind readnone
                        |declare void @llvm.dbg.declare(metadata, metadata, metadata) #1
                        |
                        |; Function Attrs: noreturn
                        |declare void @pthread_exit(i8*) #2
                        |
                        |; Function Attrs: nounwind uwtable
                        |define i8* @t2(i8* %arg) #0 {
                        |  %1 = alloca i8*, align 8
                        |  %2 = alloca i8*, align 8
                        |  %k = alloca i32, align 4
                        |  store i8* %arg, i8** %2, align 8
                        |  call void @llvm.dbg.declare(metadata i8** %2, metadata !33, metadata !24), !dbg !34
                        |  call void @llvm.dbg.declare(metadata i32* %k, metadata !35, metadata !24), !dbg !36
                        |  %3 = load i32, i32* @j, align 4, !dbg !37
                        |  store i32 %3, i32* %k, align 4, !dbg !36
                        |  %4 = load i32, i32* %k, align 4, !dbg !38
                        |  store i32 %4, i32* @i, align 4, !dbg !39
                        |  call void @pthread_exit(i8* null) #4, !dbg !40
                        |  unreachable, !dbg !40
                        |                                                  ; No predecessors!
                        |  %6 = load i8*, i8** %1, !dbg !41
                        |  ret i8* %6, !dbg !41
                        |}
                        |
                        |; Function Attrs: nounwind uwtable
                        |define i32 @main(i32 %argc, i8** %argv) #0 {
                        |  %1 = alloca i32, align 4
                        |  %2 = alloca i32, align 4
                        |  %3 = alloca i8**, align 8
                        |  %id1 = alloca i64, align 8
                        |  %id2 = alloca i64, align 8
                        |  store i32 0, i32* %1
                        |  store i32 %argc, i32* %2, align 4
                        |  call void @llvm.dbg.declare(metadata i32* %2, metadata !42, metadata !24), !dbg !43
                        |  store i8** %argv, i8*** %3, align 8
                        |  call void @llvm.dbg.declare(metadata i8*** %3, metadata !44, metadata !24), !dbg !45
                        |  call void @llvm.dbg.declare(metadata i64* %id1, metadata !46, metadata !24), !dbg !50
                        |  call void @llvm.dbg.declare(metadata i64* %id2, metadata !51, metadata !24), !dbg !52
                        |  %4 = call i32 @pthread_create(i64* %id1, %union.pthread_attr_t* null, i8* (i8*)* @t1, i8* null) #5, !dbg !53
                        |  %5 = call i32 @pthread_create(i64* %id2, %union.pthread_attr_t* null, i8* (i8*)* @t2, i8* null) #5, !dbg !54
                        |  %6 = load i32, i32* @i, align 4, !dbg !55
                        |  %7 = load i32, i32* @j, align 4, !dbg !57
                        |  %8 = add nsw i32 %6, %7, !dbg !58
                        |  %9 = icmp sgt i32 %8, 4, !dbg !59
                        |  br i1 %9, label %10, label %12, !dbg !60
                        |
                        |; <label>:10                                      ; preds = %0
                        |  br label %11, !dbg !61
                        |
                        |; <label>:11                                      ; preds = %10
                        |  call void (...) @__VERIFIER_error() #4, !dbg !63
                        |  unreachable, !dbg !63
                        |
                        |; <label>:12                                      ; preds = %0
                        |  ret i32 0, !dbg !65
                        |}
                        |
                        |; Function Attrs: nounwind
                        |declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #3
                        |
                        |; Function Attrs: noreturn
                        |declare void @__VERIFIER_error(...) #2
                        |
                        |attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
                        |attributes #1 = { nounwind readnone }
                        |attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
                        |attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
                        |attributes #4 = { noreturn }
                        |attributes #5 = { nounwind }
                        |
                        |!llvm.dbg.cu = !{!0}
                        |!llvm.module.flags = !{!20, !21}
                        |!llvm.ident = !{!22}
                        |
                        |!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (tags/RELEASE_371/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !17)
                        |!1 = !DIFile(filename: "src/test/resources/llvm/simple_threads.c", directory: "/home/matt/Dropbox/Thesis/skink")
                        |!2 = !{}
                        |!3 = !{!4}
                        |!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
                        |!5 = !{!6, !9, !10}
                        |!6 = !DISubprogram(name: "t1", scope: !1, file: !1, line: 10, type: !7, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: false, function: i8* (i8*)* @t1, variables: !2)
                        |!7 = !DISubroutineType(types: !8)
                        |!8 = !{!4, !4}
                        |!9 = !DISubprogram(name: "t2", scope: !1, file: !1, line: 19, type: !7, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: false, function: i8* (i8*)* @t2, variables: !2)
                        |!10 = !DISubprogram(name: "main", scope: !1, file: !1, line: 28, type: !11, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i8**)* @main, variables: !2)
                        |!11 = !DISubroutineType(types: !12)
                        |!12 = !{!13, !13, !14}
                        |!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
                        |!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
                        |!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
                        |!16 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
                        |!17 = !{!18, !19}
                        |!18 = !DIGlobalVariable(name: "i", scope: !0, file: !1, line: 5, type: !13, isLocal: false, isDefinition: true, variable: i32* @i)
                        |!19 = !DIGlobalVariable(name: "j", scope: !0, file: !1, line: 5, type: !13, isLocal: false, isDefinition: true, variable: i32* @j)
                        |!20 = !{i32 2, !"Dwarf Version", i32 4}
                        |!21 = !{i32 2, !"Debug Info Version", i32 3}
                        |!22 = !{!"clang version 3.7.1 (tags/RELEASE_371/final)"}
                        |!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !6, file: !1, line: 10, type: !4)
                        |!24 = !DIExpression()
                        |!25 = !DILocation(line: 10, column: 10, scope: !6)
                        |!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !6, file: !1, line: 12, type: !13)
                        |!27 = !DILocation(line: 12, column: 9, scope: !6)
                        |!28 = !DILocation(line: 12, column: 13, scope: !6)
                        |!29 = !DILocation(line: 13, column: 9, scope: !6)
                        |!30 = !DILocation(line: 13, column: 7, scope: !6)
                        |!31 = !DILocation(line: 15, column: 5, scope: !6)
                        |!32 = !DILocation(line: 16, column: 1, scope: !6)
                        |!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !9, file: !1, line: 19, type: !4)
                        |!34 = !DILocation(line: 19, column: 10, scope: !9)
                        |!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !9, file: !1, line: 21, type: !13)
                        |!36 = !DILocation(line: 21, column: 9, scope: !9)
                        |!37 = !DILocation(line: 21, column: 13, scope: !9)
                        |!38 = !DILocation(line: 22, column: 9, scope: !9)
                        |!39 = !DILocation(line: 22, column: 7, scope: !9)
                        |!40 = !DILocation(line: 24, column: 5, scope: !9)
                        |!41 = !DILocation(line: 25, column: 1, scope: !9)
                        |!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !10, file: !1, line: 28, type: !13)
                        |!43 = !DILocation(line: 28, column: 10, scope: !10)
                        |!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !10, file: !1, line: 28, type: !14)
                        |!45 = !DILocation(line: 28, column: 23, scope: !10)
                        |!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "id1", scope: !10, file: !1, line: 30, type: !47)
                        |!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !48, line: 60, baseType: !49)
                        |!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/matt/Dropbox/Thesis/skink")
                        |!49 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
                        |!50 = !DILocation(line: 30, column: 13, scope: !10)
                        |!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "id2", scope: !10, file: !1, line: 30, type: !47)
                        |!52 = !DILocation(line: 30, column: 18, scope: !10)
                        |!53 = !DILocation(line: 32, column: 3, scope: !10)
                        |!54 = !DILocation(line: 33, column: 3, scope: !10)
                        |!55 = !DILocation(line: 35, column: 7, scope: !56)
                        |!56 = distinct !DILexicalBlock(scope: !10, file: !1, line: 35, column: 7)
                        |!57 = !DILocation(line: 35, column: 11, scope: !56)
                        |!58 = !DILocation(line: 35, column: 9, scope: !56)
                        |!59 = !DILocation(line: 35, column: 13, scope: !56)
                        |!60 = !DILocation(line: 35, column: 7, scope: !10)
                        |!61 = !DILocation(line: 35, column: 18, scope: !62)
                        |!62 = !DILexicalBlockFile(scope: !56, file: !1, discriminator: 1)
                        |!63 = !DILocation(line: 36, column: 12, scope: !64)
                        |!64 = distinct !DILexicalBlock(scope: !56, file: !1, line: 35, column: 18)
                        |!65 = !DILocation(line: 39, column: 3, scope: !10)
                        |
                        """.stripMargin
        )
        val lang = Lang(ir.dca)

        var trace = lang.getAcceptedTrace.get
        println(trace)
        val terms = ir.traceToTerms(Trace(trace))
        for (i <- 0 until terms.length) {
            println(s"trace effect $i: ${showTerm(terms(i).termDef)}")
        }
    }
}