; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

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
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %i, metadata !29, metadata !18), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %j, metadata !31, metadata !18), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %k, metadata !33, metadata !18), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %n, metadata !35, metadata !18), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %l, metadata !37, metadata !18), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %m, metadata !39, metadata !18), !dbg !40
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !41
  store i32 %3, i32* %n, align 4, !dbg !42
  %4 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !43
  store i32 %4, i32* %m, align 4, !dbg !44
  %5 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !45
  store i32 %5, i32* %l, align 4, !dbg !46
  %6 = load i32, i32* %n, align 4, !dbg !47
  %7 = icmp slt i32 -1000000, %6, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %1, metadata !17, metadata !18), !dbg !49
  br i1 %7, label %8, label %11, !dbg !57

; <label>:8                                       ; preds = %0
  %9 = load i32, i32* %n, align 4, !dbg !58
  %10 = icmp slt i32 %9, 1000000, !dbg !59
  br label %11

; <label>:11                                      ; preds = %8, %0
  %12 = phi i1 [ false, %0 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32, !dbg !57
  call void @__VERIFIER_assume(i32 %13), !dbg !60
  %14 = load i32, i32* %m, align 4, !dbg !61
  %15 = icmp slt i32 -1000000, %14, !dbg !62
  br i1 %15, label %16, label %19, !dbg !63

; <label>:16                                      ; preds = %11
  %17 = load i32, i32* %m, align 4, !dbg !64
  %18 = icmp slt i32 %17, 1000000, !dbg !65
  br label %19

; <label>:19                                      ; preds = %16, %11
  %20 = phi i1 [ false, %11 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32, !dbg !63
  call void @__VERIFIER_assume(i32 %21), !dbg !66
  %22 = load i32, i32* %l, align 4, !dbg !67
  %23 = icmp slt i32 -1000000, %22, !dbg !68
  br i1 %23, label %24, label %27, !dbg !69

; <label>:24                                      ; preds = %19
  %25 = load i32, i32* %l, align 4, !dbg !70
  %26 = icmp slt i32 %25, 1000000, !dbg !71
  br label %27

; <label>:27                                      ; preds = %24, %19
  %28 = phi i1 [ false, %19 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !69
  call void @__VERIFIER_assume(i32 %29), !dbg !72
  %30 = load i32, i32* %n, align 4, !dbg !73
  %31 = mul nsw i32 3, %30, !dbg !75
  %32 = load i32, i32* %m, align 4, !dbg !76
  %33 = load i32, i32* %l, align 4, !dbg !77
  %34 = add nsw i32 %32, %33, !dbg !78
  %35 = icmp sle i32 %31, %34, !dbg !79
  br i1 %35, label %36, label %37, !dbg !80

; <label>:36                                      ; preds = %27
  br label %38, !dbg !80

; <label>:37                                      ; preds = %27
  br label %82, !dbg !81

; <label>:38                                      ; preds = %36
  store i32 0, i32* %i, align 4, !dbg !82
  br label %39, !dbg !83

; <label>:39                                      ; preds = %78, %38
  %40 = load i32, i32* %i, align 4, !dbg !84
  %41 = load i32, i32* %n, align 4, !dbg !85
  %42 = icmp slt i32 %40, %41, !dbg !86
  br i1 %42, label %43, label %81, !dbg !87

; <label>:43                                      ; preds = %39
  %44 = load i32, i32* %i, align 4, !dbg !88
  %45 = mul nsw i32 2, %44, !dbg !89
  store i32 %45, i32* %j, align 4, !dbg !90
  br label %46, !dbg !91

; <label>:46                                      ; preds = %74, %43
  %47 = load i32, i32* %j, align 4, !dbg !92
  %48 = load i32, i32* %i, align 4, !dbg !93
  %49 = mul nsw i32 3, %48, !dbg !94
  %50 = icmp slt i32 %47, %49, !dbg !95
  br i1 %50, label %51, label %77, !dbg !96

; <label>:51                                      ; preds = %46
  %52 = load i32, i32* %i, align 4, !dbg !97
  store i32 %52, i32* %k, align 4, !dbg !98
  br label %53, !dbg !99

; <label>:53                                      ; preds = %70, %51
  %54 = load i32, i32* %k, align 4, !dbg !100
  %55 = load i32, i32* %j, align 4, !dbg !101
  %56 = icmp slt i32 %54, %55, !dbg !102
  br i1 %56, label %57, label %73, !dbg !103

; <label>:57                                      ; preds = %53
  %58 = load i32, i32* %k, align 4, !dbg !104
  %59 = load i32, i32* %i, align 4, !dbg !105
  %60 = sub nsw i32 %58, %59, !dbg !106
  %61 = load i32, i32* %n, align 4, !dbg !107
  %62 = mul nsw i32 2, %61, !dbg !108
  %63 = icmp sle i32 %60, %62, !dbg !109
  %64 = zext i1 %63 to i32, !dbg !109
  %65 = bitcast i32* %1 to i8*, !dbg !110
  call void @llvm.lifetime.start(i64 4, i8* %65), !dbg !110
  store i32 %64, i32* %1, align 4, !dbg !110
  %66 = load i32, i32* %1, align 4, !dbg !111
  %67 = icmp ne i32 %66, 0, !dbg !112
  br i1 %67, label %__VERIFIER_assert.exit, label %68, !dbg !113

; <label>:68                                      ; preds = %57
  call void @__VERIFIER_error() #3, !dbg !114
  br label %__VERIFIER_assert.exit, !dbg !115

__VERIFIER_assert.exit:                           ; preds = %57, %68
  %69 = bitcast i32* %1 to i8*, !dbg !116
  call void @llvm.lifetime.end(i64 4, i8* %69), !dbg !116
  br label %70, !dbg !110

; <label>:70                                      ; preds = %__VERIFIER_assert.exit
  %71 = load i32, i32* %k, align 4, !dbg !117
  %72 = add nsw i32 %71, 1, !dbg !117
  store i32 %72, i32* %k, align 4, !dbg !117
  br label %53, !dbg !118

; <label>:73                                      ; preds = %53
  br label %74, !dbg !119

; <label>:74                                      ; preds = %73
  %75 = load i32, i32* %j, align 4, !dbg !120
  %76 = add nsw i32 %75, 1, !dbg !120
  store i32 %76, i32* %j, align 4, !dbg !120
  br label %46, !dbg !121

; <label>:77                                      ; preds = %46
  br label %78, !dbg !122

; <label>:78                                      ; preds = %77
  %79 = load i32, i32* %i, align 4, !dbg !123
  %80 = add nsw i32 %79, 1, !dbg !123
  store i32 %80, i32* %i, align 4, !dbg !123
  br label %39, !dbg !124

; <label>:81                                      ; preds = %39
  br label %82, !dbg !125

; <label>:82                                      ; preds = %81, %37
  ret i32 0, !dbg !126
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
!1 = !DIFile(filename: "programs/svcomp16/loop-invgen/nested9_true-unreach-call.i", directory: ".")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !9, isLocal: false, isDefinition: true, scopeLine: 11, isOptimized: false, function: i32 ()* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!7}
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
!30 = !DILocation(line: 12, column: 9, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 12, type: !7)
!32 = !DILocation(line: 12, column: 11, scope: !8)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !8, file: !1, line: 12, type: !7)
!34 = !DILocation(line: 12, column: 13, scope: !8)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !8, file: !1, line: 12, type: !7)
!36 = !DILocation(line: 12, column: 15, scope: !8)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !8, file: !1, line: 12, type: !7)
!38 = !DILocation(line: 12, column: 17, scope: !8)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !8, file: !1, line: 12, type: !7)
!40 = !DILocation(line: 12, column: 19, scope: !8)
!41 = !DILocation(line: 13, column: 9, scope: !8)
!42 = !DILocation(line: 13, column: 7, scope: !8)
!43 = !DILocation(line: 14, column: 9, scope: !8)
!44 = !DILocation(line: 14, column: 7, scope: !8)
!45 = !DILocation(line: 15, column: 9, scope: !8)
!46 = !DILocation(line: 15, column: 7, scope: !8)
!47 = !DILocation(line: 16, column: 34, scope: !8)
!48 = !DILocation(line: 16, column: 32, scope: !8)
!49 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !50)
!50 = distinct !DILocation(line: 23, column: 17, scope: !51)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 22, column: 13)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 22, column: 13)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 21, column: 9)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 21, column: 9)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 20, column: 5)
!56 = distinct !DILexicalBlock(scope: !8, file: !1, line: 20, column: 5)
!57 = !DILocation(line: 16, column: 36, scope: !8)
!58 = !DILocation(line: 16, column: 39, scope: !8)
!59 = !DILocation(line: 16, column: 41, scope: !8)
!60 = !DILocation(line: 16, column: 5, scope: !8)
!61 = !DILocation(line: 17, column: 34, scope: !8)
!62 = !DILocation(line: 17, column: 32, scope: !8)
!63 = !DILocation(line: 17, column: 36, scope: !8)
!64 = !DILocation(line: 17, column: 39, scope: !8)
!65 = !DILocation(line: 17, column: 41, scope: !8)
!66 = !DILocation(line: 17, column: 5, scope: !8)
!67 = !DILocation(line: 18, column: 34, scope: !8)
!68 = !DILocation(line: 18, column: 32, scope: !8)
!69 = !DILocation(line: 18, column: 36, scope: !8)
!70 = !DILocation(line: 18, column: 39, scope: !8)
!71 = !DILocation(line: 18, column: 41, scope: !8)
!72 = !DILocation(line: 18, column: 5, scope: !8)
!73 = !DILocation(line: 19, column: 10, scope: !74)
!74 = distinct !DILexicalBlock(scope: !8, file: !1, line: 19, column: 8)
!75 = !DILocation(line: 19, column: 9, scope: !74)
!76 = !DILocation(line: 19, column: 13, scope: !74)
!77 = !DILocation(line: 19, column: 15, scope: !74)
!78 = !DILocation(line: 19, column: 14, scope: !74)
!79 = !DILocation(line: 19, column: 11, scope: !74)
!80 = !DILocation(line: 19, column: 8, scope: !8)
!81 = !DILocation(line: 19, column: 24, scope: !74)
!82 = !DILocation(line: 20, column: 11, scope: !56)
!83 = !DILocation(line: 20, column: 10, scope: !56)
!84 = !DILocation(line: 20, column: 14, scope: !55)
!85 = !DILocation(line: 20, column: 16, scope: !55)
!86 = !DILocation(line: 20, column: 15, scope: !55)
!87 = !DILocation(line: 20, column: 5, scope: !56)
!88 = !DILocation(line: 21, column: 20, scope: !54)
!89 = !DILocation(line: 21, column: 19, scope: !54)
!90 = !DILocation(line: 21, column: 16, scope: !54)
!91 = !DILocation(line: 21, column: 14, scope: !54)
!92 = !DILocation(line: 21, column: 22, scope: !53)
!93 = !DILocation(line: 21, column: 26, scope: !53)
!94 = !DILocation(line: 21, column: 25, scope: !53)
!95 = !DILocation(line: 21, column: 23, scope: !53)
!96 = !DILocation(line: 21, column: 9, scope: !54)
!97 = !DILocation(line: 22, column: 22, scope: !52)
!98 = !DILocation(line: 22, column: 20, scope: !52)
!99 = !DILocation(line: 22, column: 18, scope: !52)
!100 = !DILocation(line: 22, column: 25, scope: !51)
!101 = !DILocation(line: 22, column: 28, scope: !51)
!102 = !DILocation(line: 22, column: 26, scope: !51)
!103 = !DILocation(line: 22, column: 13, scope: !52)
!104 = !DILocation(line: 23, column: 36, scope: !51)
!105 = !DILocation(line: 23, column: 38, scope: !51)
!106 = !DILocation(line: 23, column: 37, scope: !51)
!107 = !DILocation(line: 23, column: 45, scope: !51)
!108 = !DILocation(line: 23, column: 44, scope: !51)
!109 = !DILocation(line: 23, column: 40, scope: !51)
!110 = !DILocation(line: 23, column: 17, scope: !51)
!111 = !DILocation(line: 4, column: 9, scope: !21, inlinedAt: !50)
!112 = !DILocation(line: 4, column: 8, scope: !21, inlinedAt: !50)
!113 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !50)
!114 = !DILocation(line: 5, column: 12, scope: !26, inlinedAt: !50)
!115 = !DILocation(line: 6, column: 3, scope: !26, inlinedAt: !50)
!116 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !50)
!117 = !DILocation(line: 22, column: 32, scope: !51)
!118 = !DILocation(line: 22, column: 13, scope: !51)
!119 = !DILocation(line: 23, column: 47, scope: !52)
!120 = !DILocation(line: 21, column: 29, scope: !53)
!121 = !DILocation(line: 21, column: 9, scope: !53)
!122 = !DILocation(line: 23, column: 47, scope: !54)
!123 = !DILocation(line: 20, column: 19, scope: !55)
!124 = !DILocation(line: 20, column: 5, scope: !55)
!125 = !DILocation(line: 23, column: 47, scope: !56)
!126 = !DILocation(line: 25, column: 5, scope: !8)
