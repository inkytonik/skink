; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind ssp uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
  %1 = alloca i32, align 4
  store i32 %cond, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !17
  %2 = load i32, i32* %1, align 4, !dbg !18
  %3 = icmp ne i32 %2, 0, !dbg !20
  br i1 %3, label %6, label %4, !dbg !21

; <label>:4                                       ; preds = %0
  br label %5, !dbg !22

; <label>:5                                       ; preds = %4
  call void @__VERIFIER_error(), !dbg !23
  br label %6, !dbg !25

; <label>:6                                       ; preds = %5, %0
  ret void, !dbg !26
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @__VERIFIER_error() #2

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %j, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %k, metadata !31, metadata !16), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %n, metadata !33, metadata !16), !dbg !34
  %4 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !35
  store i32 %4, i32* %k, align 4, !dbg !36
  %5 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !37
  store i32 %5, i32* %n, align 4, !dbg !38
  %6 = load i32, i32* %n, align 4, !dbg !39
  %7 = icmp slt i32 %6, 1000000, !dbg !40
  %8 = zext i1 %7 to i32, !dbg !40
  call void @__VERIFIER_assume(i32 %8), !dbg !41
  %9 = load i32, i32* %k, align 4, !dbg !42
  %10 = load i32, i32* %n, align 4, !dbg !44
  %11 = icmp eq i32 %9, %10, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %3, metadata !15, metadata !16), !dbg !46
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !16), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !62
  br i1 %11, label %12, label %13, !dbg !64

; <label>:12                                      ; preds = %0
  br label %14, !dbg !65

; <label>:13                                      ; preds = %0
  br label %78, !dbg !67

; <label>:14                                      ; preds = %12
  store i32 0, i32* %i, align 4, !dbg !69
  br label %15, !dbg !70

; <label>:15                                      ; preds = %74, %14
  %16 = load i32, i32* %i, align 4, !dbg !71
  %17 = load i32, i32* %n, align 4, !dbg !72
  %18 = icmp slt i32 %16, %17, !dbg !73
  br i1 %18, label %19, label %77, !dbg !74

; <label>:19                                      ; preds = %15
  %20 = load i32, i32* %i, align 4, !dbg !75
  %21 = mul nsw i32 2, %20, !dbg !76
  store i32 %21, i32* %j, align 4, !dbg !77
  br label %22, !dbg !78

; <label>:22                                      ; preds = %70, %19
  %23 = load i32, i32* %j, align 4, !dbg !79
  %24 = load i32, i32* %n, align 4, !dbg !80
  %25 = icmp slt i32 %23, %24, !dbg !81
  br i1 %25, label %26, label %73, !dbg !82

; <label>:26                                      ; preds = %22
  %27 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !83
  %28 = icmp ne i32 %27, 0, !dbg !83
  br i1 %28, label %29, label %50, !dbg !84

; <label>:29                                      ; preds = %26
  %30 = load i32, i32* %j, align 4, !dbg !85
  store i32 %30, i32* %k, align 4, !dbg !86
  br label %31, !dbg !87

; <label>:31                                      ; preds = %46, %29
  %32 = load i32, i32* %k, align 4, !dbg !88
  %33 = load i32, i32* %n, align 4, !dbg !89
  %34 = icmp slt i32 %32, %33, !dbg !90
  br i1 %34, label %35, label %49, !dbg !91

; <label>:35                                      ; preds = %31
  %36 = load i32, i32* %k, align 4, !dbg !92
  %37 = load i32, i32* %i, align 4, !dbg !93
  %38 = mul nsw i32 2, %37, !dbg !94
  %39 = icmp sge i32 %36, %38, !dbg !95
  %40 = zext i1 %39 to i32, !dbg !95
  %41 = bitcast i32* %3 to i8*, !dbg !96
  call void @llvm.lifetime.start(i64 4, i8* %41), !dbg !96
  store i32 %40, i32* %3, align 4, !dbg !96
  %42 = load i32, i32* %3, align 4, !dbg !97
  %43 = icmp ne i32 %42, 0, !dbg !98
  br i1 %43, label %__VERIFIER_assert.exit, label %44, !dbg !99

; <label>:44                                      ; preds = %35
  call void @__VERIFIER_error() #3, !dbg !100
  br label %__VERIFIER_assert.exit, !dbg !101

__VERIFIER_assert.exit:                           ; preds = %35, %44
  %45 = bitcast i32* %3 to i8*, !dbg !102
  call void @llvm.lifetime.end(i64 4, i8* %45), !dbg !102
  br label %46, !dbg !103

; <label>:46                                      ; preds = %__VERIFIER_assert.exit
  %47 = load i32, i32* %k, align 4, !dbg !104
  %48 = add nsw i32 %47, 1, !dbg !104
  store i32 %48, i32* %k, align 4, !dbg !104
  br label %31, !dbg !105

; <label>:49                                      ; preds = %31
  br label %69, !dbg !106

; <label>:50                                      ; preds = %26
  %51 = load i32, i32* %k, align 4, !dbg !107
  %52 = load i32, i32* %n, align 4, !dbg !108
  %53 = icmp sge i32 %51, %52, !dbg !109
  %54 = zext i1 %53 to i32, !dbg !109
  %55 = bitcast i32* %2 to i8*, !dbg !110
  call void @llvm.lifetime.start(i64 4, i8* %55), !dbg !110
  store i32 %54, i32* %2, align 4, !dbg !110
  %56 = load i32, i32* %2, align 4, !dbg !111
  %57 = icmp ne i32 %56, 0, !dbg !112
  br i1 %57, label %__VERIFIER_assert.exit1, label %58, !dbg !113

; <label>:58                                      ; preds = %50
  call void @__VERIFIER_error() #3, !dbg !114
  br label %__VERIFIER_assert.exit1, !dbg !115

__VERIFIER_assert.exit1:                          ; preds = %50, %58
  %59 = bitcast i32* %2 to i8*, !dbg !116
  call void @llvm.lifetime.end(i64 4, i8* %59), !dbg !116
  %60 = load i32, i32* %k, align 4, !dbg !117
  %61 = load i32, i32* %n, align 4, !dbg !118
  %62 = icmp sle i32 %60, %61, !dbg !119
  %63 = zext i1 %62 to i32, !dbg !119
  %64 = bitcast i32* %1 to i8*, !dbg !120
  call void @llvm.lifetime.start(i64 4, i8* %64), !dbg !120
  store i32 %63, i32* %1, align 4, !dbg !120
  %65 = load i32, i32* %1, align 4, !dbg !121
  %66 = icmp ne i32 %65, 0, !dbg !122
  br i1 %66, label %__VERIFIER_assert.exit2, label %67, !dbg !123

; <label>:67                                      ; preds = %__VERIFIER_assert.exit1
  call void @__VERIFIER_error() #3, !dbg !124
  br label %__VERIFIER_assert.exit2, !dbg !125

__VERIFIER_assert.exit2:                          ; preds = %__VERIFIER_assert.exit1, %67
  %68 = bitcast i32* %1 to i8*, !dbg !126
  call void @llvm.lifetime.end(i64 4, i8* %68), !dbg !126
  br label %69

; <label>:69                                      ; preds = %__VERIFIER_assert.exit2, %49
  br label %70, !dbg !127

; <label>:70                                      ; preds = %69
  %71 = load i32, i32* %j, align 4, !dbg !128
  %72 = add nsw i32 %71, 1, !dbg !128
  store i32 %72, i32* %j, align 4, !dbg !128
  br label %22, !dbg !129

; <label>:73                                      ; preds = %22
  br label %74, !dbg !130

; <label>:74                                      ; preds = %73
  %75 = load i32, i32* %i, align 4, !dbg !131
  %76 = add nsw i32 %75, 1, !dbg !131
  store i32 %76, i32* %i, align 4, !dbg !131
  br label %15, !dbg !132

; <label>:77                                      ; preds = %15
  br label %78, !dbg !133

; <label>:78                                      ; preds = %77, %13
  ret void, !dbg !134
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
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "programs/svcomp16/loop-invgen/nested6_true-unreach-call.i", directory: ".")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !9, isLocal: false, isDefinition: true, scopeLine: 10, isOptimized: false, function: void ()* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{null}
!11 = !{i32 2, !"Dwarf Version", i32 2}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"PIC Level", i32 2}
!14 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 3, type: !7)
!16 = !DIExpression()
!17 = !DILocation(line: 3, column: 28, scope: !4)
!18 = !DILocation(line: 4, column: 9, scope: !19)
!19 = distinct !DILexicalBlock(scope: !4, file: !1, line: 4, column: 7)
!20 = !DILocation(line: 4, column: 8, scope: !19)
!21 = !DILocation(line: 4, column: 7, scope: !4)
!22 = !DILocation(line: 4, column: 16, scope: !19)
!23 = !DILocation(line: 5, column: 12, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 4, column: 16)
!25 = !DILocation(line: 6, column: 3, scope: !24)
!26 = !DILocation(line: 7, column: 3, scope: !4)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 11, type: !7)
!28 = !DILocation(line: 11, column: 7, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 11, type: !7)
!30 = !DILocation(line: 11, column: 9, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !8, file: !1, line: 11, type: !7)
!32 = !DILocation(line: 11, column: 11, scope: !8)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !8, file: !1, line: 11, type: !7)
!34 = !DILocation(line: 11, column: 13, scope: !8)
!35 = !DILocation(line: 12, column: 7, scope: !8)
!36 = !DILocation(line: 12, column: 5, scope: !8)
!37 = !DILocation(line: 13, column: 7, scope: !8)
!38 = !DILocation(line: 13, column: 5, scope: !8)
!39 = !DILocation(line: 14, column: 21, scope: !8)
!40 = !DILocation(line: 14, column: 23, scope: !8)
!41 = !DILocation(line: 14, column: 3, scope: !8)
!42 = !DILocation(line: 15, column: 7, scope: !43)
!43 = distinct !DILexicalBlock(scope: !8, file: !1, line: 15, column: 7)
!44 = !DILocation(line: 15, column: 12, scope: !43)
!45 = !DILocation(line: 15, column: 9, scope: !43)
!46 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !47)
!47 = distinct !DILocation(line: 23, column: 4, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 22, column: 20)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 22, column: 2)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 22, column: 2)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 21, column: 32)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 21, column: 6)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 20, column: 25)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 20, column: 5)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 20, column: 5)
!56 = distinct !DILexicalBlock(scope: !57, file: !1, line: 19, column: 21)
!57 = distinct !DILexicalBlock(scope: !58, file: !1, line: 19, column: 3)
!58 = distinct !DILexicalBlock(scope: !8, file: !1, line: 19, column: 3)
!59 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !60)
!60 = distinct !DILocation(line: 27, column: 2, scope: !61)
!61 = distinct !DILexicalBlock(scope: !52, file: !1, line: 26, column: 12)
!62 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !63)
!63 = distinct !DILocation(line: 28, column: 2, scope: !61)
!64 = !DILocation(line: 15, column: 7, scope: !8)
!65 = !DILocation(line: 16, column: 3, scope: !66)
!66 = distinct !DILexicalBlock(scope: !43, file: !1, line: 15, column: 15)
!67 = !DILocation(line: 17, column: 7, scope: !68)
!68 = distinct !DILexicalBlock(scope: !43, file: !1, line: 16, column: 10)
!69 = !DILocation(line: 19, column: 9, scope: !58)
!70 = !DILocation(line: 19, column: 8, scope: !58)
!71 = !DILocation(line: 19, column: 12, scope: !57)
!72 = !DILocation(line: 19, column: 14, scope: !57)
!73 = !DILocation(line: 19, column: 13, scope: !57)
!74 = !DILocation(line: 19, column: 3, scope: !58)
!75 = !DILocation(line: 20, column: 14, scope: !55)
!76 = !DILocation(line: 20, column: 13, scope: !55)
!77 = !DILocation(line: 20, column: 11, scope: !55)
!78 = !DILocation(line: 20, column: 10, scope: !55)
!79 = !DILocation(line: 20, column: 16, scope: !54)
!80 = !DILocation(line: 20, column: 18, scope: !54)
!81 = !DILocation(line: 20, column: 17, scope: !54)
!82 = !DILocation(line: 20, column: 5, scope: !55)
!83 = !DILocation(line: 21, column: 6, scope: !52)
!84 = !DILocation(line: 21, column: 6, scope: !53)
!85 = !DILocation(line: 22, column: 9, scope: !50)
!86 = !DILocation(line: 22, column: 8, scope: !50)
!87 = !DILocation(line: 22, column: 7, scope: !50)
!88 = !DILocation(line: 22, column: 11, scope: !49)
!89 = !DILocation(line: 22, column: 13, scope: !49)
!90 = !DILocation(line: 22, column: 12, scope: !49)
!91 = !DILocation(line: 22, column: 2, scope: !50)
!92 = !DILocation(line: 23, column: 22, scope: !48)
!93 = !DILocation(line: 23, column: 27, scope: !48)
!94 = !DILocation(line: 23, column: 26, scope: !48)
!95 = !DILocation(line: 23, column: 23, scope: !48)
!96 = !DILocation(line: 23, column: 4, scope: !48)
!97 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !47)
!98 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !47)
!99 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !47)
!100 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !47)
!101 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !47)
!102 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !47)
!103 = !DILocation(line: 24, column: 2, scope: !48)
!104 = !DILocation(line: 22, column: 16, scope: !49)
!105 = !DILocation(line: 22, column: 2, scope: !49)
!106 = !DILocation(line: 25, column: 7, scope: !51)
!107 = !DILocation(line: 27, column: 21, scope: !61)
!108 = !DILocation(line: 27, column: 26, scope: !61)
!109 = !DILocation(line: 27, column: 23, scope: !61)
!110 = !DILocation(line: 27, column: 2, scope: !61)
!111 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !60)
!112 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !60)
!113 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !60)
!114 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !60)
!115 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !60)
!116 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !60)
!117 = !DILocation(line: 28, column: 21, scope: !61)
!118 = !DILocation(line: 28, column: 26, scope: !61)
!119 = !DILocation(line: 28, column: 23, scope: !61)
!120 = !DILocation(line: 28, column: 2, scope: !61)
!121 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !63)
!122 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !63)
!123 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !63)
!124 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !63)
!125 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !63)
!126 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !63)
!127 = !DILocation(line: 30, column: 5, scope: !53)
!128 = !DILocation(line: 20, column: 21, scope: !54)
!129 = !DILocation(line: 20, column: 5, scope: !54)
!130 = !DILocation(line: 31, column: 3, scope: !56)
!131 = !DILocation(line: 19, column: 17, scope: !57)
!132 = !DILocation(line: 19, column: 3, scope: !57)
!133 = !DILocation(line: 31, column: 3, scope: !58)
!134 = !DILocation(line: 34, column: 1, scope: !8)
