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
  %i = alloca i32, align 4
  %pvlen = alloca i32, align 4
  %tmp___1 = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %pvlen, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %tmp___1, metadata !31, metadata !16), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %k, metadata !33, metadata !16), !dbg !34
  store i32 0, i32* %k, align 4, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %n, metadata !35, metadata !16), !dbg !36
  store i32 0, i32* %i, align 4, !dbg !37
  %2 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !38
  store i32 %2, i32* %pvlen, align 4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !40
  br label %3, !dbg !43

; <label>:3                                       ; preds = %6, %0
  %4 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !44
  %5 = icmp ne i32 %4, 0, !dbg !43
  br i1 %5, label %6, label %9, !dbg !43

; <label>:6                                       ; preds = %3
  %7 = load i32, i32* %i, align 4, !dbg !45
  %8 = add nsw i32 %7, 1, !dbg !46
  store i32 %8, i32* %i, align 4, !dbg !47
  br label %3, !dbg !43

; <label>:9                                       ; preds = %3
  %10 = load i32, i32* %i, align 4, !dbg !48
  %11 = load i32, i32* %pvlen, align 4, !dbg !50
  %12 = icmp sgt i32 %10, %11, !dbg !51
  br i1 %12, label %13, label %15, !dbg !52

; <label>:13                                      ; preds = %9
  %14 = load i32, i32* %i, align 4, !dbg !53
  store i32 %14, i32* %pvlen, align 4, !dbg !55
  br label %15, !dbg !56

; <label>:15                                      ; preds = %13, %9
  store i32 0, i32* %i, align 4, !dbg !57
  br label %16, !dbg !58

; <label>:16                                      ; preds = %19, %15
  %17 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !59
  %18 = icmp ne i32 %17, 0, !dbg !58
  br i1 %18, label %19, label %25, !dbg !58

; <label>:19                                      ; preds = %16
  %20 = load i32, i32* %i, align 4, !dbg !60
  store i32 %20, i32* %tmp___1, align 4, !dbg !62
  %21 = load i32, i32* %i, align 4, !dbg !63
  %22 = add nsw i32 %21, 1, !dbg !64
  store i32 %22, i32* %i, align 4, !dbg !65
  %23 = load i32, i32* %k, align 4, !dbg !66
  %24 = add nsw i32 %23, 1, !dbg !67
  store i32 %24, i32* %k, align 4, !dbg !68
  br label %16, !dbg !58

; <label>:25                                      ; preds = %16
  call void @llvm.dbg.declare(metadata i32* %j, metadata !69, metadata !16), !dbg !70
  store i32 0, i32* %j, align 4, !dbg !70
  %26 = load i32, i32* %i, align 4, !dbg !71
  store i32 %26, i32* %n, align 4, !dbg !72
  br label %27, !dbg !73

; <label>:27                                      ; preds = %46, %25
  %28 = load i32, i32* %k, align 4, !dbg !74
  %29 = icmp sge i32 %28, 0, !dbg !75
  %30 = zext i1 %29 to i32, !dbg !75
  %31 = bitcast i32* %1 to i8*, !dbg !76
  call void @llvm.lifetime.start(i64 4, i8* %31), !dbg !76
  store i32 %30, i32* %1, align 4, !dbg !76
  %32 = load i32, i32* %1, align 4, !dbg !77
  %33 = icmp ne i32 %32, 0, !dbg !78
  br i1 %33, label %__VERIFIER_assert.exit, label %34, !dbg !79

; <label>:34                                      ; preds = %27
  call void @__VERIFIER_error() #3, !dbg !80
  br label %__VERIFIER_assert.exit, !dbg !81

__VERIFIER_assert.exit:                           ; preds = %27, %34
  %35 = bitcast i32* %1 to i8*, !dbg !82
  call void @llvm.lifetime.end(i64 4, i8* %35), !dbg !82
  %36 = load i32, i32* %k, align 4, !dbg !83
  %37 = sub nsw i32 %36, 1, !dbg !84
  store i32 %37, i32* %k, align 4, !dbg !85
  %38 = load i32, i32* %i, align 4, !dbg !86
  %39 = sub nsw i32 %38, 1, !dbg !87
  store i32 %39, i32* %i, align 4, !dbg !88
  %40 = load i32, i32* %j, align 4, !dbg !89
  %41 = add nsw i32 %40, 1, !dbg !90
  store i32 %41, i32* %j, align 4, !dbg !91
  %42 = load i32, i32* %j, align 4, !dbg !92
  %43 = load i32, i32* %n, align 4, !dbg !94
  %44 = icmp sge i32 %42, %43, !dbg !95
  br i1 %44, label %45, label %46, !dbg !96

; <label>:45                                      ; preds = %__VERIFIER_assert.exit
  br label %47, !dbg !97

; <label>:46                                      ; preds = %__VERIFIER_assert.exit
  br label %27, !dbg !73

; <label>:47                                      ; preds = %45
  ret void, !dbg !99
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
!41 = distinct !DILocation(line: 31, column: 5, scope: !42)
!42 = distinct !DILexicalBlock(scope: !8, file: !1, line: 30, column: 13)
!43 = !DILocation(line: 17, column: 3, scope: !8)
!44 = !DILocation(line: 17, column: 11, scope: !8)
!45 = !DILocation(line: 18, column: 9, scope: !8)
!46 = !DILocation(line: 18, column: 11, scope: !8)
!47 = !DILocation(line: 18, column: 7, scope: !8)
!48 = !DILocation(line: 19, column: 7, scope: !49)
!49 = distinct !DILexicalBlock(scope: !8, file: !1, line: 19, column: 7)
!50 = !DILocation(line: 19, column: 11, scope: !49)
!51 = !DILocation(line: 19, column: 9, scope: !49)
!52 = !DILocation(line: 19, column: 7, scope: !8)
!53 = !DILocation(line: 20, column: 13, scope: !54)
!54 = distinct !DILexicalBlock(scope: !49, file: !1, line: 19, column: 18)
!55 = !DILocation(line: 20, column: 11, scope: !54)
!56 = !DILocation(line: 21, column: 3, scope: !54)
!57 = !DILocation(line: 22, column: 5, scope: !8)
!58 = !DILocation(line: 23, column: 3, scope: !8)
!59 = !DILocation(line: 23, column: 11, scope: !8)
!60 = !DILocation(line: 24, column: 15, scope: !61)
!61 = distinct !DILexicalBlock(scope: !8, file: !1, line: 23, column: 37)
!62 = !DILocation(line: 24, column: 13, scope: !61)
!63 = !DILocation(line: 25, column: 9, scope: !61)
!64 = !DILocation(line: 25, column: 11, scope: !61)
!65 = !DILocation(line: 25, column: 7, scope: !61)
!66 = !DILocation(line: 26, column: 9, scope: !61)
!67 = !DILocation(line: 26, column: 11, scope: !61)
!68 = !DILocation(line: 26, column: 7, scope: !61)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 28, type: !7)
!70 = !DILocation(line: 28, column: 7, scope: !8)
!71 = !DILocation(line: 29, column: 7, scope: !8)
!72 = !DILocation(line: 29, column: 5, scope: !8)
!73 = !DILocation(line: 30, column: 3, scope: !8)
!74 = !DILocation(line: 31, column: 23, scope: !42)
!75 = !DILocation(line: 31, column: 25, scope: !42)
!76 = !DILocation(line: 31, column: 5, scope: !42)
!77 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !41)
!78 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !41)
!79 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !41)
!80 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !41)
!81 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !41)
!82 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !41)
!83 = !DILocation(line: 32, column: 9, scope: !42)
!84 = !DILocation(line: 32, column: 11, scope: !42)
!85 = !DILocation(line: 32, column: 7, scope: !42)
!86 = !DILocation(line: 33, column: 9, scope: !42)
!87 = !DILocation(line: 33, column: 11, scope: !42)
!88 = !DILocation(line: 33, column: 7, scope: !42)
!89 = !DILocation(line: 34, column: 9, scope: !42)
!90 = !DILocation(line: 34, column: 11, scope: !42)
!91 = !DILocation(line: 34, column: 7, scope: !42)
!92 = !DILocation(line: 35, column: 9, scope: !93)
!93 = distinct !DILexicalBlock(scope: !42, file: !1, line: 35, column: 9)
!94 = !DILocation(line: 35, column: 14, scope: !93)
!95 = !DILocation(line: 35, column: 11, scope: !93)
!96 = !DILocation(line: 35, column: 9, scope: !42)
!97 = !DILocation(line: 36, column: 7, scope: !98)
!98 = distinct !DILexicalBlock(scope: !93, file: !1, line: 35, column: 17)
!99 = !DILocation(line: 39, column: 3, scope: !8)
