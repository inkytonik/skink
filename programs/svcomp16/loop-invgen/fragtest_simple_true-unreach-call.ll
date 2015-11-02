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
  %i = alloca i32, align 4
  %pvlen = alloca i32, align 4
  %tmp___1 = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %pvlen, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %tmp___1, metadata !31, metadata !16), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %k, metadata !33, metadata !16), !dbg !34
  store i32 0, i32* %k, align 4, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %n, metadata !35, metadata !16), !dbg !36
  store i32 0, i32* %i, align 4, !dbg !37
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !38
  store i32 %3, i32* %pvlen, align 4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !40
  br label %4, !dbg !43

; <label>:4                                       ; preds = %12, %0
  %5 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !44
  %6 = icmp ne i32 %5, 0, !dbg !44
  br i1 %6, label %7, label %10, !dbg !45

; <label>:7                                       ; preds = %4
  %8 = load i32, i32* %i, align 4, !dbg !46
  %9 = icmp sle i32 %8, 1000000, !dbg !47
  br label %10

; <label>:10                                      ; preds = %7, %4
  %11 = phi i1 [ false, %4 ], [ %9, %7 ]
  br i1 %11, label %12, label %15, !dbg !43

; <label>:12                                      ; preds = %10
  %13 = load i32, i32* %i, align 4, !dbg !48
  %14 = add nsw i32 %13, 1, !dbg !50
  store i32 %14, i32* %i, align 4, !dbg !51
  br label %4, !dbg !43

; <label>:15                                      ; preds = %10
  %16 = load i32, i32* %i, align 4, !dbg !52
  %17 = load i32, i32* %pvlen, align 4, !dbg !54
  %18 = icmp sgt i32 %16, %17, !dbg !55
  br i1 %18, label %19, label %21, !dbg !56

; <label>:19                                      ; preds = %15
  %20 = load i32, i32* %i, align 4, !dbg !57
  store i32 %20, i32* %pvlen, align 4, !dbg !59
  br label %21, !dbg !60

; <label>:21                                      ; preds = %19, %15
  store i32 0, i32* %i, align 4, !dbg !61
  br label %22, !dbg !62

; <label>:22                                      ; preds = %30, %21
  %23 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !63
  %24 = icmp ne i32 %23, 0, !dbg !63
  br i1 %24, label %25, label %28, !dbg !64

; <label>:25                                      ; preds = %22
  %26 = load i32, i32* %i, align 4, !dbg !65
  %27 = icmp sle i32 %26, 1000000, !dbg !66
  br label %28

; <label>:28                                      ; preds = %25, %22
  %29 = phi i1 [ false, %22 ], [ %27, %25 ]
  br i1 %29, label %30, label %36, !dbg !62

; <label>:30                                      ; preds = %28
  %31 = load i32, i32* %i, align 4, !dbg !67
  store i32 %31, i32* %tmp___1, align 4, !dbg !69
  %32 = load i32, i32* %i, align 4, !dbg !70
  %33 = add nsw i32 %32, 1, !dbg !71
  store i32 %33, i32* %i, align 4, !dbg !72
  %34 = load i32, i32* %k, align 4, !dbg !73
  %35 = add nsw i32 %34, 1, !dbg !74
  store i32 %35, i32* %k, align 4, !dbg !75
  br label %22, !dbg !62

; <label>:36                                      ; preds = %28
  call void @llvm.dbg.declare(metadata i32* %j, metadata !76, metadata !16), !dbg !77
  store i32 0, i32* %j, align 4, !dbg !77
  %37 = load i32, i32* %i, align 4, !dbg !78
  store i32 %37, i32* %n, align 4, !dbg !79
  br label %38, !dbg !80

; <label>:38                                      ; preds = %57, %36
  %39 = load i32, i32* %k, align 4, !dbg !81
  %40 = icmp sge i32 %39, 0, !dbg !82
  %41 = zext i1 %40 to i32, !dbg !82
  %42 = bitcast i32* %1 to i8*, !dbg !83
  call void @llvm.lifetime.start(i64 4, i8* %42), !dbg !83
  store i32 %41, i32* %1, align 4, !dbg !83
  %43 = load i32, i32* %1, align 4, !dbg !84
  %44 = icmp ne i32 %43, 0, !dbg !85
  br i1 %44, label %__VERIFIER_assert.exit, label %45, !dbg !86

; <label>:45                                      ; preds = %38
  call void @__VERIFIER_error() #3, !dbg !87
  br label %__VERIFIER_assert.exit, !dbg !88

__VERIFIER_assert.exit:                           ; preds = %38, %45
  %46 = bitcast i32* %1 to i8*, !dbg !89
  call void @llvm.lifetime.end(i64 4, i8* %46), !dbg !89
  %47 = load i32, i32* %k, align 4, !dbg !90
  %48 = sub nsw i32 %47, 1, !dbg !91
  store i32 %48, i32* %k, align 4, !dbg !92
  %49 = load i32, i32* %i, align 4, !dbg !93
  %50 = sub nsw i32 %49, 1, !dbg !94
  store i32 %50, i32* %i, align 4, !dbg !95
  %51 = load i32, i32* %j, align 4, !dbg !96
  %52 = add nsw i32 %51, 1, !dbg !97
  store i32 %52, i32* %j, align 4, !dbg !98
  %53 = load i32, i32* %j, align 4, !dbg !99
  %54 = load i32, i32* %n, align 4, !dbg !101
  %55 = icmp sge i32 %53, %54, !dbg !102
  br i1 %55, label %56, label %57, !dbg !103

; <label>:56                                      ; preds = %__VERIFIER_assert.exit
  br label %58, !dbg !104

; <label>:57                                      ; preds = %__VERIFIER_assert.exit
  br label %38, !dbg !80

; <label>:58                                      ; preds = %56
  ret i32 0, !dbg !106
}

declare i32 @__VERIFIER_nondet_int(...) #2

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
!1 = !DIFile(filename: "programs/svcomp16/loop-invgen/fragtest_simple_true-unreach-call.i", directory: ".")
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
!28 = !DILocation(line: 11, column: 7, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pvlen", scope: !8, file: !1, line: 11, type: !7)
!30 = !DILocation(line: 11, column: 9, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___1", scope: !8, file: !1, line: 12, type: !7)
!32 = !DILocation(line: 12, column: 7, scope: !8)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !8, file: !1, line: 13, type: !7)
!34 = !DILocation(line: 13, column: 7, scope: !8)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !8, file: !1, line: 14, type: !7)
!36 = !DILocation(line: 14, column: 7, scope: !8)
!37 = !DILocation(line: 15, column: 5, scope: !8)
!38 = !DILocation(line: 16, column: 11, scope: !8)
!39 = !DILocation(line: 16, column: 9, scope: !8)
!40 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !41)
!41 = distinct !DILocation(line: 32, column: 5, scope: !42)
!42 = distinct !DILexicalBlock(scope: !8, file: !1, line: 31, column: 13)
!43 = !DILocation(line: 17, column: 3, scope: !8)
!44 = !DILocation(line: 17, column: 11, scope: !8)
!45 = !DILocation(line: 17, column: 35, scope: !8)
!46 = !DILocation(line: 17, column: 38, scope: !8)
!47 = !DILocation(line: 17, column: 40, scope: !8)
!48 = !DILocation(line: 18, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !8, file: !1, line: 17, column: 52)
!50 = !DILocation(line: 18, column: 11, scope: !49)
!51 = !DILocation(line: 18, column: 7, scope: !49)
!52 = !DILocation(line: 20, column: 7, scope: !53)
!53 = distinct !DILexicalBlock(scope: !8, file: !1, line: 20, column: 7)
!54 = !DILocation(line: 20, column: 11, scope: !53)
!55 = !DILocation(line: 20, column: 9, scope: !53)
!56 = !DILocation(line: 20, column: 7, scope: !8)
!57 = !DILocation(line: 21, column: 13, scope: !58)
!58 = distinct !DILexicalBlock(scope: !53, file: !1, line: 20, column: 18)
!59 = !DILocation(line: 21, column: 11, scope: !58)
!60 = !DILocation(line: 22, column: 3, scope: !58)
!61 = !DILocation(line: 23, column: 5, scope: !8)
!62 = !DILocation(line: 24, column: 3, scope: !8)
!63 = !DILocation(line: 24, column: 11, scope: !8)
!64 = !DILocation(line: 24, column: 35, scope: !8)
!65 = !DILocation(line: 24, column: 38, scope: !8)
!66 = !DILocation(line: 24, column: 40, scope: !8)
!67 = !DILocation(line: 25, column: 15, scope: !68)
!68 = distinct !DILexicalBlock(scope: !8, file: !1, line: 24, column: 52)
!69 = !DILocation(line: 25, column: 13, scope: !68)
!70 = !DILocation(line: 26, column: 9, scope: !68)
!71 = !DILocation(line: 26, column: 11, scope: !68)
!72 = !DILocation(line: 26, column: 7, scope: !68)
!73 = !DILocation(line: 27, column: 9, scope: !68)
!74 = !DILocation(line: 27, column: 11, scope: !68)
!75 = !DILocation(line: 27, column: 7, scope: !68)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 29, type: !7)
!77 = !DILocation(line: 29, column: 7, scope: !8)
!78 = !DILocation(line: 30, column: 7, scope: !8)
!79 = !DILocation(line: 30, column: 5, scope: !8)
!80 = !DILocation(line: 31, column: 3, scope: !8)
!81 = !DILocation(line: 32, column: 23, scope: !42)
!82 = !DILocation(line: 32, column: 25, scope: !42)
!83 = !DILocation(line: 32, column: 5, scope: !42)
!84 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !41)
!85 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !41)
!86 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !41)
!87 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !41)
!88 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !41)
!89 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !41)
!90 = !DILocation(line: 33, column: 9, scope: !42)
!91 = !DILocation(line: 33, column: 11, scope: !42)
!92 = !DILocation(line: 33, column: 7, scope: !42)
!93 = !DILocation(line: 34, column: 9, scope: !42)
!94 = !DILocation(line: 34, column: 11, scope: !42)
!95 = !DILocation(line: 34, column: 7, scope: !42)
!96 = !DILocation(line: 35, column: 9, scope: !42)
!97 = !DILocation(line: 35, column: 11, scope: !42)
!98 = !DILocation(line: 35, column: 7, scope: !42)
!99 = !DILocation(line: 36, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !42, file: !1, line: 36, column: 9)
!101 = !DILocation(line: 36, column: 14, scope: !100)
!102 = !DILocation(line: 36, column: 11, scope: !100)
!103 = !DILocation(line: 36, column: 9, scope: !42)
!104 = !DILocation(line: 37, column: 7, scope: !105)
!105 = distinct !DILexicalBlock(scope: !100, file: !1, line: 36, column: 17)
!106 = !DILocation(line: 40, column: 3, scope: !8)
