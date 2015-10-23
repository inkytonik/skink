; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@k = common global i32 0, align 4
@i = common global i32 0, align 4
@x = common global [100 x i8] zeroinitializer, align 16
@y = common global [100 x i8] zeroinitializer, align 16
@j = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1
  %2 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !22
  store i32 %2, i32* @k, align 4, !dbg !23
  store i32 0, i32* @i, align 4, !dbg !24
  br label %3, !dbg !25

; <label>:3                                       ; preds = %10, %0
  %4 = load i32, i32* @i, align 4, !dbg !26
  %5 = sext i32 %4 to i64, !dbg !27
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* @x, i32 0, i64 %5, !dbg !27
  %7 = load i8, i8* %6, align 1, !dbg !27
  %8 = sext i8 %7 to i32, !dbg !27
  %9 = icmp ne i32 %8, 0, !dbg !28
  br i1 %9, label %10, label %20, !dbg !25

; <label>:10                                      ; preds = %3
  %11 = load i32, i32* @i, align 4, !dbg !29
  %12 = sext i32 %11 to i64, !dbg !31
  %13 = getelementptr inbounds [100 x i8], [100 x i8]* @x, i32 0, i64 %12, !dbg !31
  %14 = load i8, i8* %13, align 1, !dbg !31
  %15 = load i32, i32* @i, align 4, !dbg !32
  %16 = sext i32 %15 to i64, !dbg !33
  %17 = getelementptr inbounds [100 x i8], [100 x i8]* @y, i32 0, i64 %16, !dbg !33
  store i8 %14, i8* %17, align 1, !dbg !34
  %18 = load i32, i32* @i, align 4, !dbg !35
  %19 = add nsw i32 %18, 1, !dbg !35
  store i32 %19, i32* @i, align 4, !dbg !35
  br label %3, !dbg !25

; <label>:20                                      ; preds = %3
  %21 = load i32, i32* @i, align 4, !dbg !36
  %22 = sext i32 %21 to i64, !dbg !37
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* @y, i32 0, i64 %22, !dbg !37
  store i8 0, i8* %23, align 1, !dbg !38
  %24 = load i32, i32* @k, align 4, !dbg !39
  %25 = icmp sge i32 %24, 0, !dbg !41
  br i1 %25, label %26, label %40, !dbg !42

; <label>:26                                      ; preds = %20
  %27 = load i32, i32* @k, align 4, !dbg !43
  %28 = load i32, i32* @i, align 4, !dbg !44
  %29 = icmp slt i32 %27, %28, !dbg !45
  br i1 %29, label %30, label %40, !dbg !46

; <label>:30                                      ; preds = %26
  %31 = load i32, i32* @k, align 4, !dbg !47
  %32 = sext i32 %31 to i64, !dbg !49
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* @y, i32 0, i64 %32, !dbg !49
  %34 = load i8, i8* %33, align 1, !dbg !49
  %35 = sext i8 %34 to i32, !dbg !49
  %36 = icmp eq i32 %35, 0, !dbg !50
  br i1 %36, label %37, label %39, !dbg !51

; <label>:37                                      ; preds = %30
  br label %38, !dbg !52

; <label>:38                                      ; preds = %37
  call void (...) @__VERIFIER_error() #3, !dbg !53
  unreachable, !dbg !53

; <label>:39                                      ; preds = %30
  br label %40, !dbg !55

; <label>:40                                      ; preds = %39, %26, %20
  ret i32 0, !dbg !56
}

declare i32 @__VERIFIER_nondet_int(...) #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3, globals: !8)
!1 = !DIFile(filename: "n.c40_true-unreach-call.i", directory: "/Users/asloane/Projects/SV-COMP/sv-benchmarks/c/loops")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "main", scope: !1, file: !1, line: 8, type: !5, isLocal: false, isDefinition: true, scopeLine: 8, isOptimized: false, function: i32 ()* @main, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{!9, !14, !15, !16, !17}
!9 = !DIGlobalVariable(name: "x", scope: !0, file: !1, line: 5, type: !10, isLocal: false, isDefinition: true, variable: [100 x i8]* @x)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, align: 8, elements: !12)
!11 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!12 = !{!13}
!13 = !DISubrange(count: 100)
!14 = !DIGlobalVariable(name: "y", scope: !0, file: !1, line: 5, type: !10, isLocal: false, isDefinition: true, variable: [100 x i8]* @y)
!15 = !DIGlobalVariable(name: "i", scope: !0, file: !1, line: 6, type: !7, isLocal: false, isDefinition: true, variable: i32* @i)
!16 = !DIGlobalVariable(name: "j", scope: !0, file: !1, line: 6, type: !7, isLocal: false, isDefinition: true, variable: i32* @j)
!17 = !DIGlobalVariable(name: "k", scope: !0, file: !1, line: 6, type: !7, isLocal: false, isDefinition: true, variable: i32* @k)
!18 = !{i32 2, !"Dwarf Version", i32 2}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"PIC Level", i32 2}
!21 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!22 = !DILocation(line: 9, column: 7, scope: !4)
!23 = !DILocation(line: 9, column: 5, scope: !4)
!24 = !DILocation(line: 11, column: 5, scope: !4)
!25 = !DILocation(line: 12, column: 3, scope: !4)
!26 = !DILocation(line: 12, column: 11, scope: !4)
!27 = !DILocation(line: 12, column: 9, scope: !4)
!28 = !DILocation(line: 12, column: 14, scope: !4)
!29 = !DILocation(line: 13, column: 14, scope: !30)
!30 = distinct !DILexicalBlock(scope: !4, file: !1, line: 12, column: 19)
!31 = !DILocation(line: 13, column: 12, scope: !30)
!32 = !DILocation(line: 13, column: 7, scope: !30)
!33 = !DILocation(line: 13, column: 5, scope: !30)
!34 = !DILocation(line: 13, column: 10, scope: !30)
!35 = !DILocation(line: 14, column: 6, scope: !30)
!36 = !DILocation(line: 16, column: 5, scope: !4)
!37 = !DILocation(line: 16, column: 3, scope: !4)
!38 = !DILocation(line: 16, column: 8, scope: !4)
!39 = !DILocation(line: 18, column: 6, scope: !40)
!40 = distinct !DILexicalBlock(scope: !4, file: !1, line: 18, column: 6)
!41 = !DILocation(line: 18, column: 8, scope: !40)
!42 = !DILocation(line: 18, column: 13, scope: !40)
!43 = !DILocation(line: 18, column: 16, scope: !40)
!44 = !DILocation(line: 18, column: 20, scope: !40)
!45 = !DILocation(line: 18, column: 18, scope: !40)
!46 = !DILocation(line: 18, column: 6, scope: !4)
!47 = !DILocation(line: 19, column: 10, scope: !48)
!48 = distinct !DILexicalBlock(scope: !40, file: !1, line: 19, column: 8)
!49 = !DILocation(line: 19, column: 8, scope: !48)
!50 = !DILocation(line: 19, column: 13, scope: !48)
!51 = !DILocation(line: 19, column: 8, scope: !40)
!52 = !DILocation(line: 20, column: 7, scope: !48)
!53 = !DILocation(line: 20, column: 15, scope: !54)
!54 = distinct !DILexicalBlock(scope: !48, file: !1, line: 20, column: 7)
!55 = !DILocation(line: 19, column: 16, scope: !48)
!56 = !DILocation(line: 22, column: 3, scope: !4)
