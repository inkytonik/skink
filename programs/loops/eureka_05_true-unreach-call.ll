; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@n = global i32 5, align 4
@array = common global [5 x i32] zeroinitializer, align 16

; Function Attrs: nounwind ssp uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
  %1 = alloca i32, align 4
  store i32 %cond, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !24, metadata !25), !dbg !26
  %2 = load i32, i32* %1, align 4, !dbg !27
  %3 = icmp ne i32 %2, 0, !dbg !29
  br i1 %3, label %6, label %4, !dbg !30

; <label>:4                                       ; preds = %0
  br label %5, !dbg !31

; <label>:5                                       ; preds = %4
  call void (...) @__VERIFIER_error() #4, !dbg !32
  unreachable, !dbg !32

; <label>:6                                       ; preds = %0
  ret void, !dbg !34
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

; Function Attrs: nounwind ssp uwtable
define void @SelectionSort() #0 {
  %lh = alloca i32, align 4
  %rh = alloca i32, align 4
  %i = alloca i32, align 4
  %temp = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %lh, metadata !35, metadata !25), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %rh, metadata !37, metadata !25), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %i, metadata !39, metadata !25), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %temp, metadata !41, metadata !25), !dbg !42
  store i32 0, i32* %lh, align 4, !dbg !43
  br label %1, !dbg !45

; <label>:1                                       ; preds = %45, %0
  %2 = load i32, i32* %lh, align 4, !dbg !46
  %3 = load i32, i32* @n, align 4, !dbg !48
  %4 = icmp slt i32 %2, %3, !dbg !49
  br i1 %4, label %5, label %48, !dbg !50

; <label>:5                                       ; preds = %1
  %6 = load i32, i32* %lh, align 4, !dbg !51
  store i32 %6, i32* %rh, align 4, !dbg !53
  %7 = load i32, i32* %lh, align 4, !dbg !54
  %8 = add nsw i32 %7, 1, !dbg !56
  store i32 %8, i32* %i, align 4, !dbg !57
  br label %9, !dbg !58

; <label>:9                                       ; preds = %26, %5
  %10 = load i32, i32* %i, align 4, !dbg !59
  %11 = load i32, i32* @n, align 4, !dbg !61
  %12 = icmp slt i32 %10, %11, !dbg !62
  br i1 %12, label %13, label %29, !dbg !63

; <label>:13                                      ; preds = %9
  %14 = load i32, i32* %i, align 4, !dbg !64
  %15 = sext i32 %14 to i64, !dbg !66
  %16 = getelementptr inbounds [5 x i32], [5 x i32]* @array, i32 0, i64 %15, !dbg !66
  %17 = load i32, i32* %16, align 4, !dbg !66
  %18 = load i32, i32* %rh, align 4, !dbg !67
  %19 = sext i32 %18 to i64, !dbg !68
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* @array, i32 0, i64 %19, !dbg !68
  %21 = load i32, i32* %20, align 4, !dbg !68
  %22 = icmp slt i32 %17, %21, !dbg !69
  br i1 %22, label %23, label %25, !dbg !70

; <label>:23                                      ; preds = %13
  %24 = load i32, i32* %i, align 4, !dbg !71
  store i32 %24, i32* %rh, align 4, !dbg !72
  br label %25, !dbg !73

; <label>:25                                      ; preds = %23, %13
  br label %26, !dbg !74

; <label>:26                                      ; preds = %25
  %27 = load i32, i32* %i, align 4, !dbg !75
  %28 = add nsw i32 %27, 1, !dbg !75
  store i32 %28, i32* %i, align 4, !dbg !75
  br label %9, !dbg !76

; <label>:29                                      ; preds = %9
  %30 = load i32, i32* %lh, align 4, !dbg !77
  %31 = sext i32 %30 to i64, !dbg !78
  %32 = getelementptr inbounds [5 x i32], [5 x i32]* @array, i32 0, i64 %31, !dbg !78
  %33 = load i32, i32* %32, align 4, !dbg !78
  store i32 %33, i32* %temp, align 4, !dbg !79
  %34 = load i32, i32* %rh, align 4, !dbg !80
  %35 = sext i32 %34 to i64, !dbg !81
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* @array, i32 0, i64 %35, !dbg !81
  %37 = load i32, i32* %36, align 4, !dbg !81
  %38 = load i32, i32* %lh, align 4, !dbg !82
  %39 = sext i32 %38 to i64, !dbg !83
  %40 = getelementptr inbounds [5 x i32], [5 x i32]* @array, i32 0, i64 %39, !dbg !83
  store i32 %37, i32* %40, align 4, !dbg !84
  %41 = load i32, i32* %temp, align 4, !dbg !85
  %42 = load i32, i32* %rh, align 4, !dbg !86
  %43 = sext i32 %42 to i64, !dbg !87
  %44 = getelementptr inbounds [5 x i32], [5 x i32]* @array, i32 0, i64 %43, !dbg !87
  store i32 %41, i32* %44, align 4, !dbg !88
  br label %45, !dbg !89

; <label>:45                                      ; preds = %29
  %46 = load i32, i32* %lh, align 4, !dbg !90
  %47 = add nsw i32 %46, 1, !dbg !90
  store i32 %47, i32* %lh, align 4, !dbg !90
  br label %1, !dbg !91

; <label>:48                                      ; preds = %1
  ret void, !dbg !92
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %array = alloca [5 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata [5 x i32]* %array, metadata !93, metadata !25), !dbg !94
  call void @llvm.dbg.declare(metadata i32* %i, metadata !95, metadata !25), !dbg !96
  store i32 4, i32* %i, align 4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %1, metadata !24, metadata !25), !dbg !99
  br label %3, !dbg !103

; <label>:3                                       ; preds = %11, %0
  %4 = load i32, i32* %i, align 4, !dbg !104
  %5 = icmp sge i32 %4, 0, !dbg !106
  br i1 %5, label %6, label %14, !dbg !107

; <label>:6                                       ; preds = %3
  %7 = load i32, i32* %i, align 4, !dbg !108
  %8 = load i32, i32* %i, align 4, !dbg !109
  %9 = sext i32 %8 to i64, !dbg !110
  %10 = getelementptr inbounds [5 x i32], [5 x i32]* %array, i32 0, i64 %9, !dbg !110
  store i32 %7, i32* %10, align 4, !dbg !111
  br label %11, !dbg !110

; <label>:11                                      ; preds = %6
  %12 = load i32, i32* %i, align 4, !dbg !112
  %13 = add nsw i32 %12, -1, !dbg !112
  store i32 %13, i32* %i, align 4, !dbg !112
  br label %3, !dbg !113

; <label>:14                                      ; preds = %3
  call void @SelectionSort(), !dbg !114
  store i32 0, i32* %i, align 4, !dbg !115
  br label %15, !dbg !116

; <label>:15                                      ; preds = %31, %14
  %16 = load i32, i32* %i, align 4, !dbg !117
  %17 = icmp slt i32 %16, 5, !dbg !118
  br i1 %17, label %18, label %34, !dbg !119

; <label>:18                                      ; preds = %15
  %19 = load i32, i32* %i, align 4, !dbg !120
  %20 = sext i32 %19 to i64, !dbg !121
  %21 = getelementptr inbounds [5 x i32], [5 x i32]* %array, i32 0, i64 %20, !dbg !121
  %22 = load i32, i32* %21, align 4, !dbg !121
  %23 = load i32, i32* %i, align 4, !dbg !122
  %24 = icmp eq i32 %22, %23, !dbg !123
  %25 = zext i1 %24 to i32, !dbg !123
  %26 = bitcast i32* %1 to i8*, !dbg !124
  call void @llvm.lifetime.start(i64 4, i8* %26), !dbg !124
  store i32 %25, i32* %1, align 4, !dbg !124
  %27 = load i32, i32* %1, align 4, !dbg !125
  %28 = icmp ne i32 %27, 0, !dbg !126
  br i1 %28, label %__VERIFIER_assert.exit, label %29, !dbg !127

; <label>:29                                      ; preds = %18
  call void (...) @__VERIFIER_error() #5, !dbg !128
  unreachable, !dbg !128

__VERIFIER_assert.exit:                           ; preds = %18
  %30 = bitcast i32* %1 to i8*, !dbg !129
  call void @llvm.lifetime.end(i64 4, i8* %30), !dbg !129
  br label %31, !dbg !124

; <label>:31                                      ; preds = %__VERIFIER_assert.exit
  %32 = load i32, i32* %i, align 4, !dbg !130
  %33 = add nsw i32 %32, 1, !dbg !130
  store i32 %33, i32* %i, align 4, !dbg !130
  br label %15, !dbg !131

; <label>:34                                      ; preds = %15
  %35 = load i32, i32* %2, !dbg !132
  ret i32 %35, !dbg !132
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }
attributes #5 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3, globals: !14)
!1 = !DIFile(filename: "../../sv-comp-2016/c/loops/eureka_05_true-unreach-call.i", directory: "/Users/franck/development/perentiemq/programs")
!2 = !{}
!3 = !{!4, !8, !11}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "SelectionSort", scope: !1, file: !1, line: 15, type: !9, isLocal: false, isDefinition: true, scopeLine: 16, isOptimized: false, function: void ()* @SelectionSort, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{null}
!11 = !DISubprogram(name: "main", scope: !1, file: !1, line: 29, type: !12, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !2)
!12 = !DISubroutineType(types: !13)
!13 = !{!7}
!14 = !{!15, !16}
!15 = !DIGlobalVariable(name: "n", scope: !0, file: !1, line: 13, type: !7, isLocal: false, isDefinition: true, variable: i32* @n)
!16 = !DIGlobalVariable(name: "array", scope: !0, file: !1, line: 12, type: !17, isLocal: false, isDefinition: true, variable: [5 x i32]* @array)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, align: 32, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 5)
!20 = !{i32 2, !"Dwarf Version", i32 2}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"PIC Level", i32 2}
!23 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 3, type: !7)
!25 = !DIExpression()
!26 = !DILocation(line: 3, column: 28, scope: !4)
!27 = !DILocation(line: 4, column: 9, scope: !28)
!28 = distinct !DILexicalBlock(scope: !4, file: !1, line: 4, column: 7)
!29 = !DILocation(line: 4, column: 8, scope: !28)
!30 = !DILocation(line: 4, column: 7, scope: !4)
!31 = !DILocation(line: 4, column: 16, scope: !28)
!32 = !DILocation(line: 5, column: 12, scope: !33)
!33 = distinct !DILexicalBlock(scope: !28, file: !1, line: 4, column: 16)
!34 = !DILocation(line: 7, column: 3, scope: !4)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lh", scope: !8, file: !1, line: 17, type: !7)
!36 = !DILocation(line: 17, column: 8, scope: !8)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rh", scope: !8, file: !1, line: 17, type: !7)
!38 = !DILocation(line: 17, column: 12, scope: !8)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 17, type: !7)
!40 = !DILocation(line: 17, column: 16, scope: !8)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !8, file: !1, line: 17, type: !7)
!42 = !DILocation(line: 17, column: 19, scope: !8)
!43 = !DILocation(line: 19, column: 12, scope: !44)
!44 = distinct !DILexicalBlock(scope: !8, file: !1, line: 19, column: 4)
!45 = !DILocation(line: 19, column: 9, scope: !44)
!46 = !DILocation(line: 19, column: 17, scope: !47)
!47 = distinct !DILexicalBlock(scope: !44, file: !1, line: 19, column: 4)
!48 = !DILocation(line: 19, column: 22, scope: !47)
!49 = !DILocation(line: 19, column: 20, scope: !47)
!50 = !DILocation(line: 19, column: 4, scope: !44)
!51 = !DILocation(line: 20, column: 12, scope: !52)
!52 = distinct !DILexicalBlock(scope: !47, file: !1, line: 19, column: 31)
!53 = !DILocation(line: 20, column: 10, scope: !52)
!54 = !DILocation(line: 21, column: 16, scope: !55)
!55 = distinct !DILexicalBlock(scope: !52, file: !1, line: 21, column: 7)
!56 = !DILocation(line: 21, column: 19, scope: !55)
!57 = !DILocation(line: 21, column: 14, scope: !55)
!58 = !DILocation(line: 21, column: 12, scope: !55)
!59 = !DILocation(line: 21, column: 24, scope: !60)
!60 = distinct !DILexicalBlock(scope: !55, file: !1, line: 21, column: 7)
!61 = !DILocation(line: 21, column: 28, scope: !60)
!62 = !DILocation(line: 21, column: 26, scope: !60)
!63 = !DILocation(line: 21, column: 7, scope: !55)
!64 = !DILocation(line: 22, column: 20, scope: !65)
!65 = distinct !DILexicalBlock(scope: !60, file: !1, line: 22, column: 14)
!66 = !DILocation(line: 22, column: 14, scope: !65)
!67 = !DILocation(line: 22, column: 31, scope: !65)
!68 = !DILocation(line: 22, column: 25, scope: !65)
!69 = !DILocation(line: 22, column: 23, scope: !65)
!70 = !DILocation(line: 22, column: 14, scope: !60)
!71 = !DILocation(line: 22, column: 41, scope: !65)
!72 = !DILocation(line: 22, column: 39, scope: !65)
!73 = !DILocation(line: 22, column: 36, scope: !65)
!74 = !DILocation(line: 22, column: 33, scope: !65)
!75 = !DILocation(line: 21, column: 32, scope: !60)
!76 = !DILocation(line: 21, column: 7, scope: !60)
!77 = !DILocation(line: 23, column: 20, scope: !52)
!78 = !DILocation(line: 23, column: 14, scope: !52)
!79 = !DILocation(line: 23, column: 12, scope: !52)
!80 = !DILocation(line: 24, column: 25, scope: !52)
!81 = !DILocation(line: 24, column: 19, scope: !52)
!82 = !DILocation(line: 24, column: 13, scope: !52)
!83 = !DILocation(line: 24, column: 7, scope: !52)
!84 = !DILocation(line: 24, column: 17, scope: !52)
!85 = !DILocation(line: 25, column: 19, scope: !52)
!86 = !DILocation(line: 25, column: 13, scope: !52)
!87 = !DILocation(line: 25, column: 7, scope: !52)
!88 = !DILocation(line: 25, column: 17, scope: !52)
!89 = !DILocation(line: 26, column: 4, scope: !52)
!90 = !DILocation(line: 19, column: 27, scope: !47)
!91 = !DILocation(line: 19, column: 4, scope: !47)
!92 = !DILocation(line: 27, column: 1, scope: !8)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "array", scope: !11, file: !1, line: 31, type: !17)
!94 = !DILocation(line: 31, column: 6, scope: !11)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !11, file: !1, line: 31, type: !7)
!96 = !DILocation(line: 31, column: 15, scope: !11)
!97 = !DILocation(line: 33, column: 7, scope: !98)
!98 = distinct !DILexicalBlock(scope: !11, file: !1, line: 33, column: 2)
!99 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !100)
!100 = distinct !DILocation(line: 39, column: 3, scope: !101)
!101 = distinct !DILexicalBlock(scope: !102, file: !1, line: 38, column: 2)
!102 = distinct !DILexicalBlock(scope: !11, file: !1, line: 38, column: 2)
!103 = !DILocation(line: 33, column: 6, scope: !98)
!104 = !DILocation(line: 33, column: 14, scope: !105)
!105 = distinct !DILexicalBlock(scope: !98, file: !1, line: 33, column: 2)
!106 = !DILocation(line: 33, column: 15, scope: !105)
!107 = !DILocation(line: 33, column: 2, scope: !98)
!108 = !DILocation(line: 34, column: 12, scope: !105)
!109 = !DILocation(line: 34, column: 9, scope: !105)
!110 = !DILocation(line: 34, column: 3, scope: !105)
!111 = !DILocation(line: 34, column: 11, scope: !105)
!112 = !DILocation(line: 33, column: 21, scope: !105)
!113 = !DILocation(line: 33, column: 2, scope: !105)
!114 = !DILocation(line: 36, column: 2, scope: !11)
!115 = !DILocation(line: 38, column: 7, scope: !102)
!116 = !DILocation(line: 38, column: 6, scope: !102)
!117 = !DILocation(line: 38, column: 11, scope: !101)
!118 = !DILocation(line: 38, column: 12, scope: !101)
!119 = !DILocation(line: 38, column: 2, scope: !102)
!120 = !DILocation(line: 39, column: 27, scope: !101)
!121 = !DILocation(line: 39, column: 21, scope: !101)
!122 = !DILocation(line: 39, column: 31, scope: !101)
!123 = !DILocation(line: 39, column: 29, scope: !101)
!124 = !DILocation(line: 39, column: 3, scope: !101)
!125 = !DILocation(line: 4, column: 9, scope: !28, inlinedAt: !100)
!126 = !DILocation(line: 4, column: 8, scope: !28, inlinedAt: !100)
!127 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !100)
!128 = !DILocation(line: 5, column: 12, scope: !33, inlinedAt: !100)
!129 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !100)
!130 = !DILocation(line: 38, column: 17, scope: !101)
!131 = !DILocation(line: 38, column: 2, scope: !101)
!132 = !DILocation(line: 41, column: 1, scope: !11)
