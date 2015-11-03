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
  call void (...) @__VERIFIER_error() #5, !dbg !23
  unreachable, !dbg !23

; <label>:6                                       ; preds = %0
  ret void, !dbg !25
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %M = alloca i32, align 4
  %3 = alloca i8*
  %i = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %M, metadata !26, metadata !16), !dbg !28
  %4 = call i32 (...) @__VERIFIER_nondet_uint(), !dbg !29
  store i32 %4, i32* %M, align 4, !dbg !28
  %5 = load i32, i32* %M, align 4, !dbg !30
  %6 = zext i32 %5 to i64, !dbg !31
  %7 = call i8* @llvm.stacksave(), !dbg !31
  store i8* %7, i8** %3, !dbg !31
  %8 = alloca i32, i64 %6, align 16, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %8, metadata !32, metadata !36), !dbg !37
  %9 = load i32, i32* %M, align 4, !dbg !38
  %10 = zext i32 %9 to i64, !dbg !31
  %11 = alloca i32, i64 %10, align 16, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %11, metadata !39, metadata !36), !dbg !40
  %12 = load i32, i32* %M, align 4, !dbg !41
  %13 = zext i32 %12 to i64, !dbg !31
  %14 = alloca i32, i64 %13, align 16, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %14, metadata !42, metadata !36), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %i, metadata !44, metadata !16), !dbg !45
  store i32 0, i32* %i, align 4, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !48
  br label %15, !dbg !52

; <label>:15                                      ; preds = %30, %0
  %16 = load i32, i32* %i, align 4, !dbg !53
  %17 = load i32, i32* %M, align 4, !dbg !55
  %18 = icmp ult i32 %16, %17, !dbg !56
  br i1 %18, label %19, label %33, !dbg !57

; <label>:19                                      ; preds = %15
  %20 = call i32 @__VERIFIER_nondet_int(), !dbg !58
  %21 = load i32, i32* %i, align 4, !dbg !60
  %22 = zext i32 %21 to i64, !dbg !61
  %23 = getelementptr inbounds i32, i32* %8, i64 %22, !dbg !61
  store i32 %20, i32* %23, align 4, !dbg !62
  %24 = load i32, i32* %i, align 4, !dbg !63
  %25 = zext i32 %24 to i64, !dbg !64
  %26 = getelementptr inbounds i32, i32* %8, i64 %25, !dbg !64
  %27 = load i32, i32* %26, align 4, !dbg !64
  %28 = icmp sle i32 %27, 1000000, !dbg !65
  %29 = zext i1 %28 to i32, !dbg !65
  call void @__VERIFIER_assume(i32 %29), !dbg !66
  br label %30, !dbg !67

; <label>:30                                      ; preds = %19
  %31 = load i32, i32* %i, align 4, !dbg !68
  %32 = add i32 %31, 1, !dbg !68
  store i32 %32, i32* %i, align 4, !dbg !68
  br label %15, !dbg !69

; <label>:33                                      ; preds = %15
  store i32 0, i32* %i, align 4, !dbg !70
  br label %34, !dbg !72

; <label>:34                                      ; preds = %49, %33
  %35 = load i32, i32* %i, align 4, !dbg !73
  %36 = load i32, i32* %M, align 4, !dbg !75
  %37 = icmp ult i32 %35, %36, !dbg !76
  br i1 %37, label %38, label %52, !dbg !77

; <label>:38                                      ; preds = %34
  %39 = call i32 @__VERIFIER_nondet_int(), !dbg !78
  %40 = load i32, i32* %i, align 4, !dbg !80
  %41 = zext i32 %40 to i64, !dbg !81
  %42 = getelementptr inbounds i32, i32* %11, i64 %41, !dbg !81
  store i32 %39, i32* %42, align 4, !dbg !82
  %43 = load i32, i32* %i, align 4, !dbg !83
  %44 = zext i32 %43 to i64, !dbg !84
  %45 = getelementptr inbounds i32, i32* %11, i64 %44, !dbg !84
  %46 = load i32, i32* %45, align 4, !dbg !84
  %47 = icmp sle i32 %46, 1000000, !dbg !85
  %48 = zext i1 %47 to i32, !dbg !85
  call void @__VERIFIER_assume(i32 %48), !dbg !86
  br label %49, !dbg !87

; <label>:49                                      ; preds = %38
  %50 = load i32, i32* %i, align 4, !dbg !88
  %51 = add i32 %50, 1, !dbg !88
  store i32 %51, i32* %i, align 4, !dbg !88
  br label %34, !dbg !89

; <label>:52                                      ; preds = %34
  store i32 0, i32* %i, align 4, !dbg !90
  br label %53, !dbg !92

; <label>:53                                      ; preds = %70, %52
  %54 = load i32, i32* %i, align 4, !dbg !93
  %55 = load i32, i32* %M, align 4, !dbg !95
  %56 = icmp ult i32 %54, %55, !dbg !96
  br i1 %56, label %57, label %73, !dbg !97

; <label>:57                                      ; preds = %53
  %58 = load i32, i32* %i, align 4, !dbg !98
  %59 = zext i32 %58 to i64, !dbg !99
  %60 = getelementptr inbounds i32, i32* %8, i64 %59, !dbg !99
  %61 = load i32, i32* %60, align 4, !dbg !99
  %62 = load i32, i32* %i, align 4, !dbg !100
  %63 = zext i32 %62 to i64, !dbg !101
  %64 = getelementptr inbounds i32, i32* %11, i64 %63, !dbg !101
  %65 = load i32, i32* %64, align 4, !dbg !101
  %66 = add nsw i32 %61, %65, !dbg !102
  %67 = load i32, i32* %i, align 4, !dbg !103
  %68 = zext i32 %67 to i64, !dbg !104
  %69 = getelementptr inbounds i32, i32* %14, i64 %68, !dbg !104
  store i32 %66, i32* %69, align 4, !dbg !105
  br label %70, !dbg !104

; <label>:70                                      ; preds = %57
  %71 = load i32, i32* %i, align 4, !dbg !106
  %72 = add i32 %71, 1, !dbg !106
  store i32 %72, i32* %i, align 4, !dbg !106
  br label %53, !dbg !107

; <label>:73                                      ; preds = %53
  store i32 0, i32* %i, align 4, !dbg !108
  br label %74, !dbg !109

; <label>:74                                      ; preds = %99, %73
  %75 = load i32, i32* %i, align 4, !dbg !110
  %76 = load i32, i32* %M, align 4, !dbg !111
  %77 = icmp ult i32 %75, %76, !dbg !112
  br i1 %77, label %78, label %102, !dbg !113

; <label>:78                                      ; preds = %74
  %79 = load i32, i32* %i, align 4, !dbg !114
  %80 = zext i32 %79 to i64, !dbg !115
  %81 = getelementptr inbounds i32, i32* %14, i64 %80, !dbg !115
  %82 = load i32, i32* %81, align 4, !dbg !115
  %83 = load i32, i32* %i, align 4, !dbg !116
  %84 = zext i32 %83 to i64, !dbg !117
  %85 = getelementptr inbounds i32, i32* %8, i64 %84, !dbg !117
  %86 = load i32, i32* %85, align 4, !dbg !117
  %87 = load i32, i32* %i, align 4, !dbg !118
  %88 = zext i32 %87 to i64, !dbg !119
  %89 = getelementptr inbounds i32, i32* %11, i64 %88, !dbg !119
  %90 = load i32, i32* %89, align 4, !dbg !119
  %91 = add nsw i32 %86, %90, !dbg !120
  %92 = icmp eq i32 %82, %91, !dbg !121
  %93 = zext i1 %92 to i32, !dbg !121
  %94 = bitcast i32* %1 to i8*, !dbg !122
  call void @llvm.lifetime.start(i64 4, i8* %94), !dbg !122
  store i32 %93, i32* %1, align 4, !dbg !122
  %95 = load i32, i32* %1, align 4, !dbg !123
  %96 = icmp ne i32 %95, 0, !dbg !124
  br i1 %96, label %__VERIFIER_assert.exit, label %97, !dbg !125

; <label>:97                                      ; preds = %78
  call void (...) @__VERIFIER_error() #6, !dbg !126
  unreachable, !dbg !126

__VERIFIER_assert.exit:                           ; preds = %78
  %98 = bitcast i32* %1 to i8*, !dbg !127
  call void @llvm.lifetime.end(i64 4, i8* %98), !dbg !127
  br label %99, !dbg !122

; <label>:99                                      ; preds = %__VERIFIER_assert.exit
  %100 = load i32, i32* %i, align 4, !dbg !128
  %101 = add i32 %100, 1, !dbg !128
  store i32 %101, i32* %i, align 4, !dbg !128
  br label %74, !dbg !129

; <label>:102                                     ; preds = %74
  %103 = load i8*, i8** %3, !dbg !130
  call void @llvm.stackrestore(i8* %103), !dbg !130
  %104 = load i32, i32* %2, !dbg !130
  ret i32 %104, !dbg !130
}

declare i32 @__VERIFIER_nondet_uint(...) #3

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

declare i32 @__VERIFIER_nondet_int() #3

declare void @__VERIFIER_assume(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "programs/svcomp16/loops/sum_array_true-unreach-call.i", directory: ".")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 4, type: !5, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !9, isLocal: false, isDefinition: true, scopeLine: 12, isOptimized: false, function: i32 ()* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!7}
!11 = !{i32 2, !"Dwarf Version", i32 2}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"PIC Level", i32 2}
!14 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 4, type: !7)
!16 = !DIExpression()
!17 = !DILocation(line: 4, column: 28, scope: !4)
!18 = !DILocation(line: 5, column: 9, scope: !19)
!19 = distinct !DILexicalBlock(scope: !4, file: !1, line: 5, column: 7)
!20 = !DILocation(line: 5, column: 8, scope: !19)
!21 = !DILocation(line: 5, column: 7, scope: !4)
!22 = !DILocation(line: 5, column: 16, scope: !19)
!23 = !DILocation(line: 6, column: 12, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 5, column: 16)
!25 = !DILocation(line: 8, column: 3, scope: !4)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "M", scope: !8, file: !1, line: 13, type: !27)
!27 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!28 = !DILocation(line: 13, column: 16, scope: !8)
!29 = !DILocation(line: 13, column: 20, scope: !8)
!30 = !DILocation(line: 14, column: 9, scope: !8)
!31 = !DILocation(line: 14, column: 3, scope: !8)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "A", scope: !8, file: !1, line: 14, type: !33)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, align: 32, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: -1)
!36 = !DIExpression(DW_OP_deref)
!37 = !DILocation(line: 14, column: 7, scope: !8)
!38 = !DILocation(line: 14, column: 15, scope: !8)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "B", scope: !8, file: !1, line: 14, type: !33)
!40 = !DILocation(line: 14, column: 13, scope: !8)
!41 = !DILocation(line: 14, column: 21, scope: !8)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "C", scope: !8, file: !1, line: 14, type: !33)
!43 = !DILocation(line: 14, column: 19, scope: !8)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 15, type: !27)
!45 = !DILocation(line: 15, column: 16, scope: !8)
!46 = !DILocation(line: 16, column: 8, scope: !47)
!47 = distinct !DILexicalBlock(scope: !8, file: !1, line: 16, column: 3)
!48 = !DILocation(line: 4, column: 28, scope: !4, inlinedAt: !49)
!49 = distinct !DILocation(line: 27, column: 6, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 26, column: 3)
!51 = distinct !DILexicalBlock(scope: !8, file: !1, line: 26, column: 3)
!52 = !DILocation(line: 16, column: 7, scope: !47)
!53 = !DILocation(line: 16, column: 11, scope: !54)
!54 = distinct !DILexicalBlock(scope: !47, file: !1, line: 16, column: 3)
!55 = !DILocation(line: 16, column: 13, scope: !54)
!56 = !DILocation(line: 16, column: 12, scope: !54)
!57 = !DILocation(line: 16, column: 3, scope: !47)
!58 = !DILocation(line: 17, column: 12, scope: !59)
!59 = distinct !DILexicalBlock(scope: !54, file: !1, line: 16, column: 20)
!60 = !DILocation(line: 17, column: 7, scope: !59)
!61 = !DILocation(line: 17, column: 5, scope: !59)
!62 = !DILocation(line: 17, column: 10, scope: !59)
!63 = !DILocation(line: 18, column: 25, scope: !59)
!64 = !DILocation(line: 18, column: 23, scope: !59)
!65 = !DILocation(line: 18, column: 28, scope: !59)
!66 = !DILocation(line: 18, column: 5, scope: !59)
!67 = !DILocation(line: 19, column: 3, scope: !59)
!68 = !DILocation(line: 16, column: 16, scope: !54)
!69 = !DILocation(line: 16, column: 3, scope: !54)
!70 = !DILocation(line: 20, column: 8, scope: !71)
!71 = distinct !DILexicalBlock(scope: !8, file: !1, line: 20, column: 3)
!72 = !DILocation(line: 20, column: 7, scope: !71)
!73 = !DILocation(line: 20, column: 11, scope: !74)
!74 = distinct !DILexicalBlock(scope: !71, file: !1, line: 20, column: 3)
!75 = !DILocation(line: 20, column: 13, scope: !74)
!76 = !DILocation(line: 20, column: 12, scope: !74)
!77 = !DILocation(line: 20, column: 3, scope: !71)
!78 = !DILocation(line: 21, column: 12, scope: !79)
!79 = distinct !DILexicalBlock(scope: !74, file: !1, line: 20, column: 20)
!80 = !DILocation(line: 21, column: 7, scope: !79)
!81 = !DILocation(line: 21, column: 5, scope: !79)
!82 = !DILocation(line: 21, column: 10, scope: !79)
!83 = !DILocation(line: 22, column: 25, scope: !79)
!84 = !DILocation(line: 22, column: 23, scope: !79)
!85 = !DILocation(line: 22, column: 28, scope: !79)
!86 = !DILocation(line: 22, column: 5, scope: !79)
!87 = !DILocation(line: 23, column: 3, scope: !79)
!88 = !DILocation(line: 20, column: 16, scope: !74)
!89 = !DILocation(line: 20, column: 3, scope: !74)
!90 = !DILocation(line: 24, column: 8, scope: !91)
!91 = distinct !DILexicalBlock(scope: !8, file: !1, line: 24, column: 3)
!92 = !DILocation(line: 24, column: 7, scope: !91)
!93 = !DILocation(line: 24, column: 11, scope: !94)
!94 = distinct !DILexicalBlock(scope: !91, file: !1, line: 24, column: 3)
!95 = !DILocation(line: 24, column: 13, scope: !94)
!96 = !DILocation(line: 24, column: 12, scope: !94)
!97 = !DILocation(line: 24, column: 3, scope: !91)
!98 = !DILocation(line: 25, column: 13, scope: !94)
!99 = !DILocation(line: 25, column: 11, scope: !94)
!100 = !DILocation(line: 25, column: 18, scope: !94)
!101 = !DILocation(line: 25, column: 16, scope: !94)
!102 = !DILocation(line: 25, column: 15, scope: !94)
!103 = !DILocation(line: 25, column: 8, scope: !94)
!104 = !DILocation(line: 25, column: 6, scope: !94)
!105 = !DILocation(line: 25, column: 10, scope: !94)
!106 = !DILocation(line: 24, column: 16, scope: !94)
!107 = !DILocation(line: 24, column: 3, scope: !94)
!108 = !DILocation(line: 26, column: 8, scope: !51)
!109 = !DILocation(line: 26, column: 7, scope: !51)
!110 = !DILocation(line: 26, column: 11, scope: !50)
!111 = !DILocation(line: 26, column: 13, scope: !50)
!112 = !DILocation(line: 26, column: 12, scope: !50)
!113 = !DILocation(line: 26, column: 3, scope: !51)
!114 = !DILocation(line: 27, column: 26, scope: !50)
!115 = !DILocation(line: 27, column: 24, scope: !50)
!116 = !DILocation(line: 27, column: 32, scope: !50)
!117 = !DILocation(line: 27, column: 30, scope: !50)
!118 = !DILocation(line: 27, column: 37, scope: !50)
!119 = !DILocation(line: 27, column: 35, scope: !50)
!120 = !DILocation(line: 27, column: 34, scope: !50)
!121 = !DILocation(line: 27, column: 28, scope: !50)
!122 = !DILocation(line: 27, column: 6, scope: !50)
!123 = !DILocation(line: 5, column: 9, scope: !19, inlinedAt: !49)
!124 = !DILocation(line: 5, column: 8, scope: !19, inlinedAt: !49)
!125 = !DILocation(line: 5, column: 7, scope: !4, inlinedAt: !49)
!126 = !DILocation(line: 6, column: 12, scope: !24, inlinedAt: !49)
!127 = !DILocation(line: 8, column: 3, scope: !4, inlinedAt: !49)
!128 = !DILocation(line: 26, column: 16, scope: !50)
!129 = !DILocation(line: 26, column: 3, scope: !50)
!130 = !DILocation(line: 28, column: 1, scope: !8)
