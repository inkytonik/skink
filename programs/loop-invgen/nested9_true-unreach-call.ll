; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@__BLAST_NONDET = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
  %1 = alloca i32, align 4
  store i32 %cond, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !17, metadata !18), !dbg !19
  %2 = load i32, i32* %1, align 4, !dbg !20
  %3 = icmp ne i32 %2, 0, !dbg !22
  br i1 %3, label %6, label %4, !dbg !23

; <label>:4                                       ; preds = %0
  br label %5, !dbg !24

; <label>:5                                       ; preds = %4
  call void @__VERIFIER_error(), !dbg !25
  br label %6, !dbg !27

; <label>:6                                       ; preds = %5, %0
  ret void, !dbg !28
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @__VERIFIER_error() #2

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !29, metadata !18), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %j, metadata !31, metadata !18), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %k, metadata !33, metadata !18), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %n, metadata !35, metadata !18), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %l, metadata !37, metadata !18), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %m, metadata !39, metadata !18), !dbg !40
  %2 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !41
  store i32 %2, i32* %n, align 4, !dbg !42
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !43
  store i32 %3, i32* %m, align 4, !dbg !44
  %4 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !45
  store i32 %4, i32* %l, align 4, !dbg !46
  %5 = load i32, i32* %n, align 4, !dbg !47
  %6 = icmp slt i32 -1000000, %5, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %1, metadata !17, metadata !18), !dbg !49
  br i1 %6, label %7, label %10, !dbg !57

; <label>:7                                       ; preds = %0
  %8 = load i32, i32* %n, align 4, !dbg !58
  %9 = icmp slt i32 %8, 1000000, !dbg !59
  br label %10

; <label>:10                                      ; preds = %7, %0
  %11 = phi i1 [ false, %0 ], [ %9, %7 ]
  %12 = zext i1 %11 to i32, !dbg !57
  call void @__VERIFIER_assume(i32 %12), !dbg !60
  %13 = load i32, i32* %n, align 4, !dbg !61
  %14 = mul nsw i32 3, %13, !dbg !63
  %15 = load i32, i32* %m, align 4, !dbg !64
  %16 = load i32, i32* %l, align 4, !dbg !65
  %17 = add nsw i32 %15, %16, !dbg !66
  %18 = icmp sle i32 %14, %17, !dbg !67
  br i1 %18, label %19, label %20, !dbg !68

; <label>:19                                      ; preds = %10
  br label %21, !dbg !68

; <label>:20                                      ; preds = %10
  br label %65, !dbg !69

; <label>:21                                      ; preds = %19
  store i32 0, i32* %i, align 4, !dbg !70
  br label %22, !dbg !71

; <label>:22                                      ; preds = %61, %21
  %23 = load i32, i32* %i, align 4, !dbg !72
  %24 = load i32, i32* %n, align 4, !dbg !73
  %25 = icmp slt i32 %23, %24, !dbg !74
  br i1 %25, label %26, label %64, !dbg !75

; <label>:26                                      ; preds = %22
  %27 = load i32, i32* %i, align 4, !dbg !76
  %28 = mul nsw i32 2, %27, !dbg !77
  store i32 %28, i32* %j, align 4, !dbg !78
  br label %29, !dbg !79

; <label>:29                                      ; preds = %57, %26
  %30 = load i32, i32* %j, align 4, !dbg !80
  %31 = load i32, i32* %i, align 4, !dbg !81
  %32 = mul nsw i32 3, %31, !dbg !82
  %33 = icmp slt i32 %30, %32, !dbg !83
  br i1 %33, label %34, label %60, !dbg !84

; <label>:34                                      ; preds = %29
  %35 = load i32, i32* %i, align 4, !dbg !85
  store i32 %35, i32* %k, align 4, !dbg !86
  br label %36, !dbg !87

; <label>:36                                      ; preds = %53, %34
  %37 = load i32, i32* %k, align 4, !dbg !88
  %38 = load i32, i32* %j, align 4, !dbg !89
  %39 = icmp slt i32 %37, %38, !dbg !90
  br i1 %39, label %40, label %56, !dbg !91

; <label>:40                                      ; preds = %36
  %41 = load i32, i32* %k, align 4, !dbg !92
  %42 = load i32, i32* %i, align 4, !dbg !93
  %43 = sub nsw i32 %41, %42, !dbg !94
  %44 = load i32, i32* %n, align 4, !dbg !95
  %45 = mul nsw i32 2, %44, !dbg !96
  %46 = icmp sle i32 %43, %45, !dbg !97
  %47 = zext i1 %46 to i32, !dbg !97
  %48 = bitcast i32* %1 to i8*, !dbg !98
  call void @llvm.lifetime.start(i64 4, i8* %48), !dbg !98
  store i32 %47, i32* %1, align 4, !dbg !98
  %49 = load i32, i32* %1, align 4, !dbg !99
  %50 = icmp ne i32 %49, 0, !dbg !100
  br i1 %50, label %__VERIFIER_assert.exit, label %51, !dbg !101

; <label>:51                                      ; preds = %40
  call void @__VERIFIER_error() #3, !dbg !102
  br label %__VERIFIER_assert.exit, !dbg !103

__VERIFIER_assert.exit:                           ; preds = %40, %51
  %52 = bitcast i32* %1 to i8*, !dbg !104
  call void @llvm.lifetime.end(i64 4, i8* %52), !dbg !104
  br label %53, !dbg !98

; <label>:53                                      ; preds = %__VERIFIER_assert.exit
  %54 = load i32, i32* %k, align 4, !dbg !105
  %55 = add nsw i32 %54, 1, !dbg !105
  store i32 %55, i32* %k, align 4, !dbg !105
  br label %36, !dbg !106

; <label>:56                                      ; preds = %36
  br label %57, !dbg !107

; <label>:57                                      ; preds = %56
  %58 = load i32, i32* %j, align 4, !dbg !108
  %59 = add nsw i32 %58, 1, !dbg !108
  store i32 %59, i32* %j, align 4, !dbg !108
  br label %29, !dbg !109

; <label>:60                                      ; preds = %29
  br label %61, !dbg !110

; <label>:61                                      ; preds = %60
  %62 = load i32, i32* %i, align 4, !dbg !111
  %63 = add nsw i32 %62, 1, !dbg !111
  store i32 %63, i32* %i, align 4, !dbg !111
  br label %22, !dbg !112

; <label>:64                                      ; preds = %22
  br label %65, !dbg !113

; <label>:65                                      ; preds = %64, %20
  ret void, !dbg !114
}

declare i32 @__VERIFIER_nondet_int(...) #2

declare void @__VERIFIER_assume(i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3, globals: !11)
!1 = !DIFile(filename: "../../sv-comp-2016/c/loop-invgen/nested9_true-unreach-call.i", directory: "/Users/franck/development/perentiemq/programs")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !9, isLocal: false, isDefinition: true, scopeLine: 11, isOptimized: false, function: void ()* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{null}
!11 = !{!12}
!12 = !DIGlobalVariable(name: "__BLAST_NONDET", scope: !0, file: !1, line: 10, type: !7, isLocal: false, isDefinition: true, variable: i32* @__BLAST_NONDET)
!13 = !{i32 2, !"Dwarf Version", i32 2}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"PIC Level", i32 2}
!16 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!17 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 3, type: !7)
!18 = !DIExpression()
!19 = !DILocation(line: 3, column: 28, scope: !4)
!20 = !DILocation(line: 4, column: 9, scope: !21)
!21 = distinct !DILexicalBlock(scope: !4, file: !1, line: 4, column: 7)
!22 = !DILocation(line: 4, column: 8, scope: !21)
!23 = !DILocation(line: 4, column: 7, scope: !4)
!24 = !DILocation(line: 4, column: 16, scope: !21)
!25 = !DILocation(line: 5, column: 12, scope: !26)
!26 = distinct !DILexicalBlock(scope: !21, file: !1, line: 4, column: 16)
!27 = !DILocation(line: 6, column: 3, scope: !26)
!28 = !DILocation(line: 7, column: 3, scope: !4)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 12, type: !7)
!30 = !DILocation(line: 12, column: 7, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 12, type: !7)
!32 = !DILocation(line: 12, column: 9, scope: !8)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !8, file: !1, line: 12, type: !7)
!34 = !DILocation(line: 12, column: 11, scope: !8)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !8, file: !1, line: 12, type: !7)
!36 = !DILocation(line: 12, column: 13, scope: !8)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !8, file: !1, line: 12, type: !7)
!38 = !DILocation(line: 12, column: 15, scope: !8)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !8, file: !1, line: 12, type: !7)
!40 = !DILocation(line: 12, column: 17, scope: !8)
!41 = !DILocation(line: 13, column: 7, scope: !8)
!42 = !DILocation(line: 13, column: 5, scope: !8)
!43 = !DILocation(line: 14, column: 7, scope: !8)
!44 = !DILocation(line: 14, column: 5, scope: !8)
!45 = !DILocation(line: 15, column: 7, scope: !8)
!46 = !DILocation(line: 15, column: 5, scope: !8)
!47 = !DILocation(line: 16, column: 32, scope: !8)
!48 = !DILocation(line: 16, column: 30, scope: !8)
!49 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !50)
!50 = distinct !DILocation(line: 21, column: 2, scope: !51)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 20, column: 7)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 20, column: 7)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 19, column: 5)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 19, column: 5)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 18, column: 3)
!56 = distinct !DILexicalBlock(scope: !8, file: !1, line: 18, column: 3)
!57 = !DILocation(line: 16, column: 34, scope: !8)
!58 = !DILocation(line: 16, column: 37, scope: !8)
!59 = !DILocation(line: 16, column: 39, scope: !8)
!60 = !DILocation(line: 16, column: 3, scope: !8)
!61 = !DILocation(line: 17, column: 8, scope: !62)
!62 = distinct !DILexicalBlock(scope: !8, file: !1, line: 17, column: 6)
!63 = !DILocation(line: 17, column: 7, scope: !62)
!64 = !DILocation(line: 17, column: 11, scope: !62)
!65 = !DILocation(line: 17, column: 13, scope: !62)
!66 = !DILocation(line: 17, column: 12, scope: !62)
!67 = !DILocation(line: 17, column: 9, scope: !62)
!68 = !DILocation(line: 17, column: 6, scope: !8)
!69 = !DILocation(line: 17, column: 22, scope: !62)
!70 = !DILocation(line: 18, column: 9, scope: !56)
!71 = !DILocation(line: 18, column: 8, scope: !56)
!72 = !DILocation(line: 18, column: 12, scope: !55)
!73 = !DILocation(line: 18, column: 14, scope: !55)
!74 = !DILocation(line: 18, column: 13, scope: !55)
!75 = !DILocation(line: 18, column: 3, scope: !56)
!76 = !DILocation(line: 19, column: 16, scope: !54)
!77 = !DILocation(line: 19, column: 15, scope: !54)
!78 = !DILocation(line: 19, column: 12, scope: !54)
!79 = !DILocation(line: 19, column: 10, scope: !54)
!80 = !DILocation(line: 19, column: 18, scope: !53)
!81 = !DILocation(line: 19, column: 22, scope: !53)
!82 = !DILocation(line: 19, column: 21, scope: !53)
!83 = !DILocation(line: 19, column: 19, scope: !53)
!84 = !DILocation(line: 19, column: 5, scope: !54)
!85 = !DILocation(line: 20, column: 16, scope: !52)
!86 = !DILocation(line: 20, column: 14, scope: !52)
!87 = !DILocation(line: 20, column: 12, scope: !52)
!88 = !DILocation(line: 20, column: 19, scope: !51)
!89 = !DILocation(line: 20, column: 22, scope: !51)
!90 = !DILocation(line: 20, column: 20, scope: !51)
!91 = !DILocation(line: 20, column: 7, scope: !52)
!92 = !DILocation(line: 21, column: 21, scope: !51)
!93 = !DILocation(line: 21, column: 23, scope: !51)
!94 = !DILocation(line: 21, column: 22, scope: !51)
!95 = !DILocation(line: 21, column: 30, scope: !51)
!96 = !DILocation(line: 21, column: 29, scope: !51)
!97 = !DILocation(line: 21, column: 25, scope: !51)
!98 = !DILocation(line: 21, column: 2, scope: !51)
!99 = !DILocation(line: 4, column: 9, scope: !21, inlinedAt: !50)
!100 = !DILocation(line: 4, column: 8, scope: !21, inlinedAt: !50)
!101 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !50)
!102 = !DILocation(line: 5, column: 12, scope: !26, inlinedAt: !50)
!103 = !DILocation(line: 6, column: 3, scope: !26, inlinedAt: !50)
!104 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !50)
!105 = !DILocation(line: 20, column: 26, scope: !51)
!106 = !DILocation(line: 20, column: 7, scope: !51)
!107 = !DILocation(line: 21, column: 32, scope: !52)
!108 = !DILocation(line: 19, column: 25, scope: !53)
!109 = !DILocation(line: 19, column: 5, scope: !53)
!110 = !DILocation(line: 21, column: 32, scope: !54)
!111 = !DILocation(line: 18, column: 17, scope: !55)
!112 = !DILocation(line: 18, column: 3, scope: !55)
!113 = !DILocation(line: 21, column: 32, scope: !56)
!114 = !DILocation(line: 24, column: 1, scope: !8)
