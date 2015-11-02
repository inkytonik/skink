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
  %offset = alloca i32, align 4
  %length = alloca i32, align 4
  %nlen = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %length, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %nlen, metadata !31, metadata !16), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %i, metadata !33, metadata !16), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %j, metadata !35, metadata !16), !dbg !36
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !37
  store i32 %3, i32* %nlen, align 4, !dbg !38
  store i32 0, i32* %i, align 4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !16), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !48
  br label %4, !dbg !50

; <label>:4                                       ; preds = %40, %0
  %5 = load i32, i32* %i, align 4, !dbg !51
  %6 = load i32, i32* %nlen, align 4, !dbg !52
  %7 = icmp slt i32 %5, %6, !dbg !53
  br i1 %7, label %8, label %43, !dbg !54

; <label>:8                                       ; preds = %4
  store i32 0, i32* %j, align 4, !dbg !55
  br label %9, !dbg !56

; <label>:9                                       ; preds = %36, %8
  %10 = load i32, i32* %j, align 4, !dbg !57
  %11 = icmp slt i32 %10, 8, !dbg !58
  br i1 %11, label %12, label %39, !dbg !59

; <label>:12                                      ; preds = %9
  %13 = load i32, i32* %nlen, align 4, !dbg !60
  %14 = sub nsw i32 %13, 1, !dbg !61
  %15 = load i32, i32* %i, align 4, !dbg !62
  %16 = sub nsw i32 %14, %15, !dbg !63
  %17 = icmp sle i32 0, %16, !dbg !64
  %18 = zext i1 %17 to i32, !dbg !64
  %19 = bitcast i32* %2 to i8*, !dbg !65
  call void @llvm.lifetime.start(i64 4, i8* %19), !dbg !65
  store i32 %18, i32* %2, align 4, !dbg !65
  %20 = load i32, i32* %2, align 4, !dbg !66
  %21 = icmp ne i32 %20, 0, !dbg !67
  br i1 %21, label %__VERIFIER_assert.exit, label %22, !dbg !68

; <label>:22                                      ; preds = %12
  call void @__VERIFIER_error() #3, !dbg !69
  br label %__VERIFIER_assert.exit, !dbg !70

__VERIFIER_assert.exit:                           ; preds = %12, %22
  %23 = bitcast i32* %2 to i8*, !dbg !71
  call void @llvm.lifetime.end(i64 4, i8* %23), !dbg !71
  %24 = load i32, i32* %nlen, align 4, !dbg !72
  %25 = sub nsw i32 %24, 1, !dbg !73
  %26 = load i32, i32* %i, align 4, !dbg !74
  %27 = sub nsw i32 %25, %26, !dbg !75
  %28 = load i32, i32* %nlen, align 4, !dbg !76
  %29 = icmp slt i32 %27, %28, !dbg !77
  %30 = zext i1 %29 to i32, !dbg !77
  %31 = bitcast i32* %1 to i8*, !dbg !78
  call void @llvm.lifetime.start(i64 4, i8* %31), !dbg !78
  store i32 %30, i32* %1, align 4, !dbg !78
  %32 = load i32, i32* %1, align 4, !dbg !79
  %33 = icmp ne i32 %32, 0, !dbg !80
  br i1 %33, label %__VERIFIER_assert.exit1, label %34, !dbg !81

; <label>:34                                      ; preds = %__VERIFIER_assert.exit
  call void @__VERIFIER_error() #3, !dbg !82
  br label %__VERIFIER_assert.exit1, !dbg !83

__VERIFIER_assert.exit1:                          ; preds = %__VERIFIER_assert.exit, %34
  %35 = bitcast i32* %1 to i8*, !dbg !84
  call void @llvm.lifetime.end(i64 4, i8* %35), !dbg !84
  br label %36, !dbg !85

; <label>:36                                      ; preds = %__VERIFIER_assert.exit1
  %37 = load i32, i32* %j, align 4, !dbg !86
  %38 = add nsw i32 %37, 1, !dbg !86
  store i32 %38, i32* %j, align 4, !dbg !86
  br label %9, !dbg !87

; <label>:39                                      ; preds = %9
  br label %40, !dbg !88

; <label>:40                                      ; preds = %39
  %41 = load i32, i32* %i, align 4, !dbg !89
  %42 = add nsw i32 %41, 1, !dbg !89
  store i32 %42, i32* %i, align 4, !dbg !89
  br label %4, !dbg !90

; <label>:43                                      ; preds = %4
  ret void, !dbg !91
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
!1 = !DIFile(filename: "programs/svcomp16/loop-invgen/id_build_true-unreach-call.i", directory: ".")
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
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "offset", scope: !8, file: !1, line: 11, type: !7)
!28 = !DILocation(line: 11, column: 7, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "length", scope: !8, file: !1, line: 11, type: !7)
!30 = !DILocation(line: 11, column: 15, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nlen", scope: !8, file: !1, line: 11, type: !7)
!32 = !DILocation(line: 11, column: 23, scope: !8)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 12, type: !7)
!34 = !DILocation(line: 12, column: 7, scope: !8)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 12, type: !7)
!36 = !DILocation(line: 12, column: 10, scope: !8)
!37 = !DILocation(line: 13, column: 10, scope: !8)
!38 = !DILocation(line: 13, column: 8, scope: !8)
!39 = !DILocation(line: 14, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !8, file: !1, line: 14, column: 3)
!41 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !42)
!42 = distinct !DILocation(line: 16, column: 7, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 15, column: 25)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 15, column: 5)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 15, column: 5)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 14, column: 26)
!47 = distinct !DILexicalBlock(scope: !40, file: !1, line: 14, column: 3)
!48 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !49)
!49 = distinct !DILocation(line: 17, column: 7, scope: !43)
!50 = !DILocation(line: 14, column: 8, scope: !40)
!51 = !DILocation(line: 14, column: 13, scope: !47)
!52 = !DILocation(line: 14, column: 15, scope: !47)
!53 = !DILocation(line: 14, column: 14, scope: !47)
!54 = !DILocation(line: 14, column: 3, scope: !40)
!55 = !DILocation(line: 15, column: 11, scope: !45)
!56 = !DILocation(line: 15, column: 10, scope: !45)
!57 = !DILocation(line: 15, column: 15, scope: !44)
!58 = !DILocation(line: 15, column: 16, scope: !44)
!59 = !DILocation(line: 15, column: 5, scope: !45)
!60 = !DILocation(line: 16, column: 30, scope: !43)
!61 = !DILocation(line: 16, column: 34, scope: !43)
!62 = !DILocation(line: 16, column: 37, scope: !43)
!63 = !DILocation(line: 16, column: 36, scope: !43)
!64 = !DILocation(line: 16, column: 27, scope: !43)
!65 = !DILocation(line: 16, column: 7, scope: !43)
!66 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !42)
!67 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !42)
!68 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !42)
!69 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !42)
!70 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !42)
!71 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !42)
!72 = !DILocation(line: 17, column: 25, scope: !43)
!73 = !DILocation(line: 17, column: 29, scope: !43)
!74 = !DILocation(line: 17, column: 32, scope: !43)
!75 = !DILocation(line: 17, column: 31, scope: !43)
!76 = !DILocation(line: 17, column: 36, scope: !43)
!77 = !DILocation(line: 17, column: 34, scope: !43)
!78 = !DILocation(line: 17, column: 7, scope: !43)
!79 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !49)
!80 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !49)
!81 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !49)
!82 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !49)
!83 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !49)
!84 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !49)
!85 = !DILocation(line: 18, column: 5, scope: !43)
!86 = !DILocation(line: 15, column: 21, scope: !44)
!87 = !DILocation(line: 15, column: 5, scope: !44)
!88 = !DILocation(line: 19, column: 3, scope: !46)
!89 = !DILocation(line: 14, column: 22, scope: !47)
!90 = !DILocation(line: 14, column: 3, scope: !47)
!91 = !DILocation(line: 20, column: 3, scope: !8)
