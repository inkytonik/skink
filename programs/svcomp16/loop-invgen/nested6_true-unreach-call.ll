; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

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
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %j, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %k, metadata !31, metadata !16), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %n, metadata !33, metadata !16), !dbg !34
  %5 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !35
  store i32 %5, i32* %k, align 4, !dbg !36
  %6 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !37
  store i32 %6, i32* %n, align 4, !dbg !38
  %7 = load i32, i32* %n, align 4, !dbg !39
  %8 = icmp slt i32 %7, 1000000, !dbg !40
  %9 = zext i1 %8 to i32, !dbg !40
  call void @__VERIFIER_assume(i32 %9), !dbg !41
  %10 = load i32, i32* %k, align 4, !dbg !42
  %11 = load i32, i32* %n, align 4, !dbg !44
  %12 = icmp eq i32 %10, %11, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %3, metadata !15, metadata !16), !dbg !46
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !16), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !62
  br i1 %12, label %13, label %14, !dbg !64

; <label>:13                                      ; preds = %0
  br label %15, !dbg !65

; <label>:14                                      ; preds = %0
  br label %79, !dbg !67

; <label>:15                                      ; preds = %13
  store i32 0, i32* %i, align 4, !dbg !69
  br label %16, !dbg !70

; <label>:16                                      ; preds = %75, %15
  %17 = load i32, i32* %i, align 4, !dbg !71
  %18 = load i32, i32* %n, align 4, !dbg !72
  %19 = icmp slt i32 %17, %18, !dbg !73
  br i1 %19, label %20, label %78, !dbg !74

; <label>:20                                      ; preds = %16
  %21 = load i32, i32* %i, align 4, !dbg !75
  %22 = mul nsw i32 2, %21, !dbg !76
  store i32 %22, i32* %j, align 4, !dbg !77
  br label %23, !dbg !78

; <label>:23                                      ; preds = %71, %20
  %24 = load i32, i32* %j, align 4, !dbg !79
  %25 = load i32, i32* %n, align 4, !dbg !80
  %26 = icmp slt i32 %24, %25, !dbg !81
  br i1 %26, label %27, label %74, !dbg !82

; <label>:27                                      ; preds = %23
  %28 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !83
  %29 = icmp ne i32 %28, 0, !dbg !83
  br i1 %29, label %30, label %51, !dbg !84

; <label>:30                                      ; preds = %27
  %31 = load i32, i32* %j, align 4, !dbg !85
  store i32 %31, i32* %k, align 4, !dbg !86
  br label %32, !dbg !87

; <label>:32                                      ; preds = %47, %30
  %33 = load i32, i32* %k, align 4, !dbg !88
  %34 = load i32, i32* %n, align 4, !dbg !89
  %35 = icmp slt i32 %33, %34, !dbg !90
  br i1 %35, label %36, label %50, !dbg !91

; <label>:36                                      ; preds = %32
  %37 = load i32, i32* %k, align 4, !dbg !92
  %38 = load i32, i32* %i, align 4, !dbg !93
  %39 = mul nsw i32 2, %38, !dbg !94
  %40 = icmp sge i32 %37, %39, !dbg !95
  %41 = zext i1 %40 to i32, !dbg !95
  %42 = bitcast i32* %3 to i8*, !dbg !96
  call void @llvm.lifetime.start(i64 4, i8* %42), !dbg !96
  store i32 %41, i32* %3, align 4, !dbg !96
  %43 = load i32, i32* %3, align 4, !dbg !97
  %44 = icmp ne i32 %43, 0, !dbg !98
  br i1 %44, label %__VERIFIER_assert.exit, label %45, !dbg !99

; <label>:45                                      ; preds = %36
  call void @__VERIFIER_error() #3, !dbg !100
  br label %__VERIFIER_assert.exit, !dbg !101

__VERIFIER_assert.exit:                           ; preds = %36, %45
  %46 = bitcast i32* %3 to i8*, !dbg !102
  call void @llvm.lifetime.end(i64 4, i8* %46), !dbg !102
  br label %47, !dbg !103

; <label>:47                                      ; preds = %__VERIFIER_assert.exit
  %48 = load i32, i32* %k, align 4, !dbg !104
  %49 = add nsw i32 %48, 1, !dbg !104
  store i32 %49, i32* %k, align 4, !dbg !104
  br label %32, !dbg !105

; <label>:50                                      ; preds = %32
  br label %70, !dbg !106

; <label>:51                                      ; preds = %27
  %52 = load i32, i32* %k, align 4, !dbg !107
  %53 = load i32, i32* %n, align 4, !dbg !108
  %54 = icmp sge i32 %52, %53, !dbg !109
  %55 = zext i1 %54 to i32, !dbg !109
  %56 = bitcast i32* %2 to i8*, !dbg !110
  call void @llvm.lifetime.start(i64 4, i8* %56), !dbg !110
  store i32 %55, i32* %2, align 4, !dbg !110
  %57 = load i32, i32* %2, align 4, !dbg !111
  %58 = icmp ne i32 %57, 0, !dbg !112
  br i1 %58, label %__VERIFIER_assert.exit1, label %59, !dbg !113

; <label>:59                                      ; preds = %51
  call void @__VERIFIER_error() #3, !dbg !114
  br label %__VERIFIER_assert.exit1, !dbg !115

__VERIFIER_assert.exit1:                          ; preds = %51, %59
  %60 = bitcast i32* %2 to i8*, !dbg !116
  call void @llvm.lifetime.end(i64 4, i8* %60), !dbg !116
  %61 = load i32, i32* %k, align 4, !dbg !117
  %62 = load i32, i32* %n, align 4, !dbg !118
  %63 = icmp sle i32 %61, %62, !dbg !119
  %64 = zext i1 %63 to i32, !dbg !119
  %65 = bitcast i32* %1 to i8*, !dbg !120
  call void @llvm.lifetime.start(i64 4, i8* %65), !dbg !120
  store i32 %64, i32* %1, align 4, !dbg !120
  %66 = load i32, i32* %1, align 4, !dbg !121
  %67 = icmp ne i32 %66, 0, !dbg !122
  br i1 %67, label %__VERIFIER_assert.exit2, label %68, !dbg !123

; <label>:68                                      ; preds = %__VERIFIER_assert.exit1
  call void @__VERIFIER_error() #3, !dbg !124
  br label %__VERIFIER_assert.exit2, !dbg !125

__VERIFIER_assert.exit2:                          ; preds = %__VERIFIER_assert.exit1, %68
  %69 = bitcast i32* %1 to i8*, !dbg !126
  call void @llvm.lifetime.end(i64 4, i8* %69), !dbg !126
  br label %70

; <label>:70                                      ; preds = %__VERIFIER_assert.exit2, %50
  br label %71, !dbg !127

; <label>:71                                      ; preds = %70
  %72 = load i32, i32* %j, align 4, !dbg !128
  %73 = add nsw i32 %72, 1, !dbg !128
  store i32 %73, i32* %j, align 4, !dbg !128
  br label %23, !dbg !129

; <label>:74                                      ; preds = %23
  br label %75, !dbg !130

; <label>:75                                      ; preds = %74
  %76 = load i32, i32* %i, align 4, !dbg !131
  %77 = add nsw i32 %76, 1, !dbg !131
  store i32 %77, i32* %i, align 4, !dbg !131
  br label %16, !dbg !132

; <label>:78                                      ; preds = %16
  br label %79, !dbg !133

; <label>:79                                      ; preds = %78, %14
  ret i32 0, !dbg !134
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
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !9, isLocal: false, isDefinition: true, scopeLine: 10, isOptimized: false, function: i32 ()* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!7}
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
!28 = !DILocation(line: 11, column: 9, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 11, type: !7)
!30 = !DILocation(line: 11, column: 11, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !8, file: !1, line: 11, type: !7)
!32 = !DILocation(line: 11, column: 13, scope: !8)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !8, file: !1, line: 11, type: !7)
!34 = !DILocation(line: 11, column: 15, scope: !8)
!35 = !DILocation(line: 12, column: 9, scope: !8)
!36 = !DILocation(line: 12, column: 7, scope: !8)
!37 = !DILocation(line: 13, column: 9, scope: !8)
!38 = !DILocation(line: 13, column: 7, scope: !8)
!39 = !DILocation(line: 14, column: 23, scope: !8)
!40 = !DILocation(line: 14, column: 25, scope: !8)
!41 = !DILocation(line: 14, column: 5, scope: !8)
!42 = !DILocation(line: 15, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !8, file: !1, line: 15, column: 9)
!44 = !DILocation(line: 15, column: 14, scope: !43)
!45 = !DILocation(line: 15, column: 11, scope: !43)
!46 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !47)
!47 = distinct !DILocation(line: 23, column: 21, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 22, column: 35)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 22, column: 17)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 22, column: 17)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 21, column: 43)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 21, column: 17)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 20, column: 29)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 20, column: 9)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 20, column: 9)
!56 = distinct !DILexicalBlock(scope: !57, file: !1, line: 19, column: 23)
!57 = distinct !DILexicalBlock(scope: !58, file: !1, line: 19, column: 5)
!58 = distinct !DILexicalBlock(scope: !8, file: !1, line: 19, column: 5)
!59 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !60)
!60 = distinct !DILocation(line: 27, column: 17, scope: !61)
!61 = distinct !DILexicalBlock(scope: !52, file: !1, line: 26, column: 18)
!62 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !63)
!63 = distinct !DILocation(line: 28, column: 17, scope: !61)
!64 = !DILocation(line: 15, column: 9, scope: !8)
!65 = !DILocation(line: 16, column: 5, scope: !66)
!66 = distinct !DILexicalBlock(scope: !43, file: !1, line: 15, column: 17)
!67 = !DILocation(line: 17, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !43, file: !1, line: 16, column: 12)
!69 = !DILocation(line: 19, column: 11, scope: !58)
!70 = !DILocation(line: 19, column: 10, scope: !58)
!71 = !DILocation(line: 19, column: 14, scope: !57)
!72 = !DILocation(line: 19, column: 16, scope: !57)
!73 = !DILocation(line: 19, column: 15, scope: !57)
!74 = !DILocation(line: 19, column: 5, scope: !58)
!75 = !DILocation(line: 20, column: 18, scope: !55)
!76 = !DILocation(line: 20, column: 17, scope: !55)
!77 = !DILocation(line: 20, column: 15, scope: !55)
!78 = !DILocation(line: 20, column: 14, scope: !55)
!79 = !DILocation(line: 20, column: 20, scope: !54)
!80 = !DILocation(line: 20, column: 22, scope: !54)
!81 = !DILocation(line: 20, column: 21, scope: !54)
!82 = !DILocation(line: 20, column: 9, scope: !55)
!83 = !DILocation(line: 21, column: 17, scope: !52)
!84 = !DILocation(line: 21, column: 17, scope: !53)
!85 = !DILocation(line: 22, column: 24, scope: !50)
!86 = !DILocation(line: 22, column: 23, scope: !50)
!87 = !DILocation(line: 22, column: 22, scope: !50)
!88 = !DILocation(line: 22, column: 26, scope: !49)
!89 = !DILocation(line: 22, column: 28, scope: !49)
!90 = !DILocation(line: 22, column: 27, scope: !49)
!91 = !DILocation(line: 22, column: 17, scope: !50)
!92 = !DILocation(line: 23, column: 39, scope: !48)
!93 = !DILocation(line: 23, column: 44, scope: !48)
!94 = !DILocation(line: 23, column: 43, scope: !48)
!95 = !DILocation(line: 23, column: 40, scope: !48)
!96 = !DILocation(line: 23, column: 21, scope: !48)
!97 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !47)
!98 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !47)
!99 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !47)
!100 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !47)
!101 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !47)
!102 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !47)
!103 = !DILocation(line: 24, column: 17, scope: !48)
!104 = !DILocation(line: 22, column: 31, scope: !49)
!105 = !DILocation(line: 22, column: 17, scope: !49)
!106 = !DILocation(line: 25, column: 13, scope: !51)
!107 = !DILocation(line: 27, column: 36, scope: !61)
!108 = !DILocation(line: 27, column: 41, scope: !61)
!109 = !DILocation(line: 27, column: 38, scope: !61)
!110 = !DILocation(line: 27, column: 17, scope: !61)
!111 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !60)
!112 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !60)
!113 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !60)
!114 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !60)
!115 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !60)
!116 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !60)
!117 = !DILocation(line: 28, column: 36, scope: !61)
!118 = !DILocation(line: 28, column: 41, scope: !61)
!119 = !DILocation(line: 28, column: 38, scope: !61)
!120 = !DILocation(line: 28, column: 17, scope: !61)
!121 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !63)
!122 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !63)
!123 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !63)
!124 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !63)
!125 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !63)
!126 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !63)
!127 = !DILocation(line: 30, column: 9, scope: !53)
!128 = !DILocation(line: 20, column: 25, scope: !54)
!129 = !DILocation(line: 20, column: 9, scope: !54)
!130 = !DILocation(line: 31, column: 5, scope: !56)
!131 = !DILocation(line: 19, column: 19, scope: !57)
!132 = !DILocation(line: 19, column: 5, scope: !57)
!133 = !DILocation(line: 31, column: 5, scope: !58)
!134 = !DILocation(line: 33, column: 3, scope: !8)
