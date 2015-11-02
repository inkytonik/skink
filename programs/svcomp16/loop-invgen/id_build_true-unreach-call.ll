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
  %offset = alloca i32, align 4
  %length = alloca i32, align 4
  %nlen = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %3
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %length, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %nlen, metadata !31, metadata !16), !dbg !32
  %4 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !33
  store i32 %4, i32* %nlen, align 4, !dbg !32
  call void @llvm.dbg.declare(metadata i32* %i, metadata !34, metadata !16), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %j, metadata !36, metadata !16), !dbg !37
  store i32 0, i32* %i, align 4, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !16), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !47
  br label %5, !dbg !49

; <label>:5                                       ; preds = %41, %0
  %6 = load i32, i32* %i, align 4, !dbg !50
  %7 = load i32, i32* %nlen, align 4, !dbg !51
  %8 = icmp slt i32 %6, %7, !dbg !52
  br i1 %8, label %9, label %44, !dbg !53

; <label>:9                                       ; preds = %5
  store i32 0, i32* %j, align 4, !dbg !54
  br label %10, !dbg !55

; <label>:10                                      ; preds = %37, %9
  %11 = load i32, i32* %j, align 4, !dbg !56
  %12 = icmp slt i32 %11, 8, !dbg !57
  br i1 %12, label %13, label %40, !dbg !58

; <label>:13                                      ; preds = %10
  %14 = load i32, i32* %nlen, align 4, !dbg !59
  %15 = sub nsw i32 %14, 1, !dbg !60
  %16 = load i32, i32* %i, align 4, !dbg !61
  %17 = sub nsw i32 %15, %16, !dbg !62
  %18 = icmp sle i32 0, %17, !dbg !63
  %19 = zext i1 %18 to i32, !dbg !63
  %20 = bitcast i32* %2 to i8*, !dbg !64
  call void @llvm.lifetime.start(i64 4, i8* %20), !dbg !64
  store i32 %19, i32* %2, align 4, !dbg !64
  %21 = load i32, i32* %2, align 4, !dbg !65
  %22 = icmp ne i32 %21, 0, !dbg !66
  br i1 %22, label %__VERIFIER_assert.exit, label %23, !dbg !67

; <label>:23                                      ; preds = %13
  call void @__VERIFIER_error() #3, !dbg !68
  br label %__VERIFIER_assert.exit, !dbg !69

__VERIFIER_assert.exit:                           ; preds = %13, %23
  %24 = bitcast i32* %2 to i8*, !dbg !70
  call void @llvm.lifetime.end(i64 4, i8* %24), !dbg !70
  %25 = load i32, i32* %nlen, align 4, !dbg !71
  %26 = sub nsw i32 %25, 1, !dbg !72
  %27 = load i32, i32* %i, align 4, !dbg !73
  %28 = sub nsw i32 %26, %27, !dbg !74
  %29 = load i32, i32* %nlen, align 4, !dbg !75
  %30 = icmp slt i32 %28, %29, !dbg !76
  %31 = zext i1 %30 to i32, !dbg !76
  %32 = bitcast i32* %1 to i8*, !dbg !77
  call void @llvm.lifetime.start(i64 4, i8* %32), !dbg !77
  store i32 %31, i32* %1, align 4, !dbg !77
  %33 = load i32, i32* %1, align 4, !dbg !78
  %34 = icmp ne i32 %33, 0, !dbg !79
  br i1 %34, label %__VERIFIER_assert.exit1, label %35, !dbg !80

; <label>:35                                      ; preds = %__VERIFIER_assert.exit
  call void @__VERIFIER_error() #3, !dbg !81
  br label %__VERIFIER_assert.exit1, !dbg !82

__VERIFIER_assert.exit1:                          ; preds = %__VERIFIER_assert.exit, %35
  %36 = bitcast i32* %1 to i8*, !dbg !83
  call void @llvm.lifetime.end(i64 4, i8* %36), !dbg !83
  br label %37, !dbg !84

; <label>:37                                      ; preds = %__VERIFIER_assert.exit1
  %38 = load i32, i32* %j, align 4, !dbg !85
  %39 = add nsw i32 %38, 1, !dbg !85
  store i32 %39, i32* %j, align 4, !dbg !85
  br label %10, !dbg !86

; <label>:40                                      ; preds = %10
  br label %41, !dbg !87

; <label>:41                                      ; preds = %40
  %42 = load i32, i32* %i, align 4, !dbg !88
  %43 = add nsw i32 %42, 1, !dbg !88
  store i32 %43, i32* %i, align 4, !dbg !88
  br label %5, !dbg !89

; <label>:44                                      ; preds = %5
  ret i32 0, !dbg !90
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
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "offset", scope: !8, file: !1, line: 11, type: !7)
!28 = !DILocation(line: 11, column: 7, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "length", scope: !8, file: !1, line: 11, type: !7)
!30 = !DILocation(line: 11, column: 15, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nlen", scope: !8, file: !1, line: 11, type: !7)
!32 = !DILocation(line: 11, column: 23, scope: !8)
!33 = !DILocation(line: 11, column: 30, scope: !8)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 12, type: !7)
!35 = !DILocation(line: 12, column: 7, scope: !8)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 12, type: !7)
!37 = !DILocation(line: 12, column: 10, scope: !8)
!38 = !DILocation(line: 13, column: 9, scope: !39)
!39 = distinct !DILexicalBlock(scope: !8, file: !1, line: 13, column: 3)
!40 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !41)
!41 = distinct !DILocation(line: 15, column: 7, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 14, column: 25)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 14, column: 5)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 14, column: 5)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 13, column: 26)
!46 = distinct !DILexicalBlock(scope: !39, file: !1, line: 13, column: 3)
!47 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !48)
!48 = distinct !DILocation(line: 16, column: 7, scope: !42)
!49 = !DILocation(line: 13, column: 8, scope: !39)
!50 = !DILocation(line: 13, column: 13, scope: !46)
!51 = !DILocation(line: 13, column: 15, scope: !46)
!52 = !DILocation(line: 13, column: 14, scope: !46)
!53 = !DILocation(line: 13, column: 3, scope: !39)
!54 = !DILocation(line: 14, column: 11, scope: !44)
!55 = !DILocation(line: 14, column: 10, scope: !44)
!56 = !DILocation(line: 14, column: 15, scope: !43)
!57 = !DILocation(line: 14, column: 16, scope: !43)
!58 = !DILocation(line: 14, column: 5, scope: !44)
!59 = !DILocation(line: 15, column: 30, scope: !42)
!60 = !DILocation(line: 15, column: 34, scope: !42)
!61 = !DILocation(line: 15, column: 37, scope: !42)
!62 = !DILocation(line: 15, column: 36, scope: !42)
!63 = !DILocation(line: 15, column: 27, scope: !42)
!64 = !DILocation(line: 15, column: 7, scope: !42)
!65 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !41)
!66 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !41)
!67 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !41)
!68 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !41)
!69 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !41)
!70 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !41)
!71 = !DILocation(line: 16, column: 25, scope: !42)
!72 = !DILocation(line: 16, column: 29, scope: !42)
!73 = !DILocation(line: 16, column: 32, scope: !42)
!74 = !DILocation(line: 16, column: 31, scope: !42)
!75 = !DILocation(line: 16, column: 36, scope: !42)
!76 = !DILocation(line: 16, column: 34, scope: !42)
!77 = !DILocation(line: 16, column: 7, scope: !42)
!78 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !48)
!79 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !48)
!80 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !48)
!81 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !48)
!82 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !48)
!83 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !48)
!84 = !DILocation(line: 17, column: 5, scope: !42)
!85 = !DILocation(line: 14, column: 21, scope: !43)
!86 = !DILocation(line: 14, column: 5, scope: !43)
!87 = !DILocation(line: 18, column: 3, scope: !45)
!88 = !DILocation(line: 13, column: 22, scope: !46)
!89 = !DILocation(line: 13, column: 3, scope: !46)
!90 = !DILocation(line: 19, column: 3, scope: !8)
