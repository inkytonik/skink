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
  %p = alloca i32, align 4
  %i = alloca i32, align 4
  %leader_len = alloca i32, align 4
  %bufsize = alloca i32, align 4
  %bufsize_0 = alloca i32, align 4
  %ielen = alloca i32, align 4
  store i32 0, i32* %3
  call void @llvm.dbg.declare(metadata i32* %p, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %i, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %leader_len, metadata !31, metadata !16), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %bufsize, metadata !33, metadata !16), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %bufsize_0, metadata !35, metadata !16), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %ielen, metadata !37, metadata !16), !dbg !38
  %4 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !39
  store i32 %4, i32* %leader_len, align 4, !dbg !40
  %5 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !41
  store i32 %5, i32* %bufsize, align 4, !dbg !42
  %6 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !43
  store i32 %6, i32* %ielen, align 4, !dbg !44
  %7 = load i32, i32* %leader_len, align 4, !dbg !45
  %8 = icmp slt i32 %7, 1000000, !dbg !46
  %9 = zext i1 %8 to i32, !dbg !46
  call void @__VERIFIER_assume(i32 %9), !dbg !47
  %10 = load i32, i32* %bufsize, align 4, !dbg !48
  %11 = icmp slt i32 %10, 1000000, !dbg !49
  %12 = zext i1 %11 to i32, !dbg !49
  call void @__VERIFIER_assume(i32 %12), !dbg !50
  %13 = load i32, i32* %ielen, align 4, !dbg !51
  %14 = icmp slt i32 %13, 1000000, !dbg !52
  %15 = zext i1 %14 to i32, !dbg !52
  call void @__VERIFIER_assume(i32 %15), !dbg !53
  %16 = load i32, i32* %leader_len, align 4, !dbg !54
  %17 = icmp sgt i32 %16, 0, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !16), !dbg !57
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !62
  br i1 %17, label %18, label %19, !dbg !64

; <label>:18                                      ; preds = %0
  br label %20, !dbg !64

; <label>:19                                      ; preds = %0
  br label %83, !dbg !65

; <label>:20                                      ; preds = %18
  %21 = load i32, i32* %bufsize, align 4, !dbg !66
  %22 = icmp sgt i32 %21, 0, !dbg !68
  br i1 %22, label %23, label %24, !dbg !69

; <label>:23                                      ; preds = %20
  br label %25, !dbg !69

; <label>:24                                      ; preds = %20
  br label %83, !dbg !70

; <label>:25                                      ; preds = %23
  %26 = load i32, i32* %ielen, align 4, !dbg !71
  %27 = icmp sgt i32 %26, 0, !dbg !73
  br i1 %27, label %28, label %29, !dbg !74

; <label>:28                                      ; preds = %25
  br label %30, !dbg !74

; <label>:29                                      ; preds = %25
  br label %83, !dbg !75

; <label>:30                                      ; preds = %28
  %31 = load i32, i32* %bufsize, align 4, !dbg !76
  %32 = load i32, i32* %leader_len, align 4, !dbg !78
  %33 = icmp slt i32 %31, %32, !dbg !79
  br i1 %33, label %34, label %35, !dbg !80

; <label>:34                                      ; preds = %30
  br label %83, !dbg !81

; <label>:35                                      ; preds = %30
  store i32 0, i32* %p, align 4, !dbg !82
  %36 = load i32, i32* %bufsize, align 4, !dbg !83
  store i32 %36, i32* %bufsize_0, align 4, !dbg !84
  %37 = load i32, i32* %leader_len, align 4, !dbg !85
  %38 = load i32, i32* %bufsize, align 4, !dbg !86
  %39 = sub nsw i32 %38, %37, !dbg !86
  store i32 %39, i32* %bufsize, align 4, !dbg !86
  %40 = load i32, i32* %leader_len, align 4, !dbg !87
  %41 = load i32, i32* %p, align 4, !dbg !88
  %42 = add nsw i32 %41, %40, !dbg !88
  store i32 %42, i32* %p, align 4, !dbg !88
  %43 = load i32, i32* %bufsize, align 4, !dbg !89
  %44 = load i32, i32* %ielen, align 4, !dbg !91
  %45 = mul nsw i32 2, %44, !dbg !92
  %46 = icmp slt i32 %43, %45, !dbg !93
  br i1 %46, label %47, label %48, !dbg !94

; <label>:47                                      ; preds = %35
  br label %83, !dbg !95

; <label>:48                                      ; preds = %35
  store i32 0, i32* %i, align 4, !dbg !96
  br label %49, !dbg !97

; <label>:49                                      ; preds = %79, %48
  %50 = load i32, i32* %i, align 4, !dbg !98
  %51 = load i32, i32* %ielen, align 4, !dbg !99
  %52 = icmp slt i32 %50, %51, !dbg !100
  br i1 %52, label %53, label %56, !dbg !101

; <label>:53                                      ; preds = %49
  %54 = load i32, i32* %bufsize, align 4, !dbg !102
  %55 = icmp sgt i32 %54, 2, !dbg !103
  br label %56

; <label>:56                                      ; preds = %53, %49
  %57 = phi i1 [ false, %49 ], [ %55, %53 ]
  br i1 %57, label %58, label %82, !dbg !104

; <label>:58                                      ; preds = %56
  %59 = load i32, i32* %p, align 4, !dbg !105
  %60 = icmp sle i32 0, %59, !dbg !106
  %61 = zext i1 %60 to i32, !dbg !106
  %62 = bitcast i32* %2 to i8*, !dbg !107
  call void @llvm.lifetime.start(i64 4, i8* %62), !dbg !107
  store i32 %61, i32* %2, align 4, !dbg !107
  %63 = load i32, i32* %2, align 4, !dbg !108
  %64 = icmp ne i32 %63, 0, !dbg !109
  br i1 %64, label %__VERIFIER_assert.exit, label %65, !dbg !110

; <label>:65                                      ; preds = %58
  call void @__VERIFIER_error() #3, !dbg !111
  br label %__VERIFIER_assert.exit, !dbg !112

__VERIFIER_assert.exit:                           ; preds = %58, %65
  %66 = bitcast i32* %2 to i8*, !dbg !113
  call void @llvm.lifetime.end(i64 4, i8* %66), !dbg !113
  %67 = load i32, i32* %p, align 4, !dbg !114
  %68 = add nsw i32 %67, 1, !dbg !115
  %69 = load i32, i32* %bufsize_0, align 4, !dbg !116
  %70 = icmp slt i32 %68, %69, !dbg !117
  %71 = zext i1 %70 to i32, !dbg !117
  %72 = bitcast i32* %1 to i8*, !dbg !118
  call void @llvm.lifetime.start(i64 4, i8* %72), !dbg !118
  store i32 %71, i32* %1, align 4, !dbg !118
  %73 = load i32, i32* %1, align 4, !dbg !119
  %74 = icmp ne i32 %73, 0, !dbg !120
  br i1 %74, label %__VERIFIER_assert.exit1, label %75, !dbg !121

; <label>:75                                      ; preds = %__VERIFIER_assert.exit
  call void @__VERIFIER_error() #3, !dbg !122
  br label %__VERIFIER_assert.exit1, !dbg !123

__VERIFIER_assert.exit1:                          ; preds = %__VERIFIER_assert.exit, %75
  %76 = bitcast i32* %1 to i8*, !dbg !124
  call void @llvm.lifetime.end(i64 4, i8* %76), !dbg !124
  %77 = load i32, i32* %p, align 4, !dbg !125
  %78 = add nsw i32 %77, 2, !dbg !125
  store i32 %78, i32* %p, align 4, !dbg !125
  br label %79, !dbg !126

; <label>:79                                      ; preds = %__VERIFIER_assert.exit1
  %80 = load i32, i32* %i, align 4, !dbg !127
  %81 = add nsw i32 %80, 1, !dbg !127
  store i32 %81, i32* %i, align 4, !dbg !127
  br label %49, !dbg !128

; <label>:82                                      ; preds = %56
  br label %83, !dbg !129

; <label>:83                                      ; preds = %82, %47, %34, %29, %24, %19
  %84 = load i32, i32* %3, !dbg !130
  ret i32 %84, !dbg !130
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
!1 = !DIFile(filename: "MADWiFi-encode_ie_ok_true-unreach-call.i", directory: "/Users/asloane/Projects/SV-COMP/sv-benchmarks/c/loop-invgen")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !9, isLocal: false, isDefinition: true, scopeLine: 11, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !8, file: !1, line: 12, type: !7)
!28 = !DILocation(line: 12, column: 7, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 13, type: !7)
!30 = !DILocation(line: 13, column: 7, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "leader_len", scope: !8, file: !1, line: 14, type: !7)
!32 = !DILocation(line: 14, column: 7, scope: !8)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bufsize", scope: !8, file: !1, line: 15, type: !7)
!34 = !DILocation(line: 15, column: 7, scope: !8)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bufsize_0", scope: !8, file: !1, line: 16, type: !7)
!36 = !DILocation(line: 16, column: 7, scope: !8)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ielen", scope: !8, file: !1, line: 17, type: !7)
!38 = !DILocation(line: 17, column: 7, scope: !8)
!39 = !DILocation(line: 18, column: 16, scope: !8)
!40 = !DILocation(line: 18, column: 14, scope: !8)
!41 = !DILocation(line: 19, column: 13, scope: !8)
!42 = !DILocation(line: 19, column: 11, scope: !8)
!43 = !DILocation(line: 20, column: 11, scope: !8)
!44 = !DILocation(line: 20, column: 9, scope: !8)
!45 = !DILocation(line: 21, column: 21, scope: !8)
!46 = !DILocation(line: 21, column: 32, scope: !8)
!47 = !DILocation(line: 21, column: 3, scope: !8)
!48 = !DILocation(line: 22, column: 21, scope: !8)
!49 = !DILocation(line: 22, column: 29, scope: !8)
!50 = !DILocation(line: 22, column: 3, scope: !8)
!51 = !DILocation(line: 23, column: 21, scope: !8)
!52 = !DILocation(line: 23, column: 27, scope: !8)
!53 = !DILocation(line: 23, column: 3, scope: !8)
!54 = !DILocation(line: 24, column: 6, scope: !55)
!55 = distinct !DILexicalBlock(scope: !8, file: !1, line: 24, column: 6)
!56 = !DILocation(line: 24, column: 17, scope: !55)
!57 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !58)
!58 = distinct !DILocation(line: 36, column: 5, scope: !59)
!59 = distinct !DILexicalBlock(scope: !60, file: !1, line: 35, column: 46)
!60 = distinct !DILexicalBlock(scope: !61, file: !1, line: 35, column: 3)
!61 = distinct !DILexicalBlock(scope: !8, file: !1, line: 35, column: 3)
!62 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !63)
!63 = distinct !DILocation(line: 37, column: 5, scope: !59)
!64 = !DILocation(line: 24, column: 6, scope: !8)
!65 = !DILocation(line: 24, column: 27, scope: !55)
!66 = !DILocation(line: 25, column: 6, scope: !67)
!67 = distinct !DILexicalBlock(scope: !8, file: !1, line: 25, column: 6)
!68 = !DILocation(line: 25, column: 14, scope: !67)
!69 = !DILocation(line: 25, column: 6, scope: !8)
!70 = !DILocation(line: 25, column: 24, scope: !67)
!71 = !DILocation(line: 26, column: 6, scope: !72)
!72 = distinct !DILexicalBlock(scope: !8, file: !1, line: 26, column: 6)
!73 = !DILocation(line: 26, column: 12, scope: !72)
!74 = !DILocation(line: 26, column: 6, scope: !8)
!75 = !DILocation(line: 26, column: 22, scope: !72)
!76 = !DILocation(line: 27, column: 7, scope: !77)
!77 = distinct !DILexicalBlock(scope: !8, file: !1, line: 27, column: 7)
!78 = !DILocation(line: 27, column: 17, scope: !77)
!79 = !DILocation(line: 27, column: 15, scope: !77)
!80 = !DILocation(line: 27, column: 7, scope: !8)
!81 = !DILocation(line: 28, column: 5, scope: !77)
!82 = !DILocation(line: 29, column: 5, scope: !8)
!83 = !DILocation(line: 30, column: 15, scope: !8)
!84 = !DILocation(line: 30, column: 13, scope: !8)
!85 = !DILocation(line: 31, column: 14, scope: !8)
!86 = !DILocation(line: 31, column: 11, scope: !8)
!87 = !DILocation(line: 32, column: 8, scope: !8)
!88 = !DILocation(line: 32, column: 5, scope: !8)
!89 = !DILocation(line: 33, column: 7, scope: !90)
!90 = distinct !DILexicalBlock(scope: !8, file: !1, line: 33, column: 7)
!91 = !DILocation(line: 33, column: 19, scope: !90)
!92 = !DILocation(line: 33, column: 18, scope: !90)
!93 = !DILocation(line: 33, column: 15, scope: !90)
!94 = !DILocation(line: 33, column: 7, scope: !8)
!95 = !DILocation(line: 34, column: 5, scope: !90)
!96 = !DILocation(line: 35, column: 10, scope: !61)
!97 = !DILocation(line: 35, column: 8, scope: !61)
!98 = !DILocation(line: 35, column: 15, scope: !60)
!99 = !DILocation(line: 35, column: 19, scope: !60)
!100 = !DILocation(line: 35, column: 17, scope: !60)
!101 = !DILocation(line: 35, column: 25, scope: !60)
!102 = !DILocation(line: 35, column: 28, scope: !60)
!103 = !DILocation(line: 35, column: 36, scope: !60)
!104 = !DILocation(line: 35, column: 3, scope: !61)
!105 = !DILocation(line: 36, column: 26, scope: !59)
!106 = !DILocation(line: 36, column: 24, scope: !59)
!107 = !DILocation(line: 36, column: 5, scope: !59)
!108 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !58)
!109 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !58)
!110 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !58)
!111 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !58)
!112 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !58)
!113 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !58)
!114 = !DILocation(line: 37, column: 23, scope: !59)
!115 = !DILocation(line: 37, column: 24, scope: !59)
!116 = !DILocation(line: 37, column: 27, scope: !59)
!117 = !DILocation(line: 37, column: 26, scope: !59)
!118 = !DILocation(line: 37, column: 5, scope: !59)
!119 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !63)
!120 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !63)
!121 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !63)
!122 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !63)
!123 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !63)
!124 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !63)
!125 = !DILocation(line: 38, column: 7, scope: !59)
!126 = !DILocation(line: 39, column: 3, scope: !59)
!127 = !DILocation(line: 35, column: 42, scope: !60)
!128 = !DILocation(line: 35, column: 3, scope: !60)
!129 = !DILocation(line: 39, column: 3, scope: !61)
!130 = !DILocation(line: 42, column: 1, scope: !8)
