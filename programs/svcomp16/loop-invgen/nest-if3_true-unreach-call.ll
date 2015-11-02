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
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %k, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %n, metadata !31, metadata !16), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %l, metadata !33, metadata !16), !dbg !34
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !35
  store i32 %3, i32* %n, align 4, !dbg !36
  %4 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !37
  store i32 %4, i32* %l, align 4, !dbg !38
  %5 = load i32, i32* %l, align 4, !dbg !39
  %6 = icmp sgt i32 %5, 0, !dbg !40
  %7 = zext i1 %6 to i32, !dbg !40
  call void @__VERIFIER_assume(i32 %7), !dbg !41
  %8 = load i32, i32* %l, align 4, !dbg !42
  %9 = icmp slt i32 %8, 1000000, !dbg !43
  %10 = zext i1 %9 to i32, !dbg !43
  call void @__VERIFIER_assume(i32 %10), !dbg !44
  %11 = load i32, i32* %n, align 4, !dbg !45
  %12 = icmp slt i32 %11, 1000000, !dbg !46
  %13 = zext i1 %12 to i32, !dbg !46
  call void @__VERIFIER_assume(i32 %13), !dbg !47
  store i32 1, i32* %k, align 4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !50
  br label %14, !dbg !57

; <label>:14                                      ; preds = %43, %0
  %15 = load i32, i32* %k, align 4, !dbg !58
  %16 = load i32, i32* %n, align 4, !dbg !59
  %17 = icmp slt i32 %15, %16, !dbg !60
  br i1 %17, label %18, label %46, !dbg !61

; <label>:18                                      ; preds = %14
  %19 = load i32, i32* %l, align 4, !dbg !62
  store i32 %19, i32* %i, align 4, !dbg !63
  br label %20, !dbg !64

; <label>:20                                      ; preds = %33, %18
  %21 = load i32, i32* %i, align 4, !dbg !65
  %22 = load i32, i32* %n, align 4, !dbg !66
  %23 = icmp slt i32 %21, %22, !dbg !67
  br i1 %23, label %24, label %36, !dbg !68

; <label>:24                                      ; preds = %20
  %25 = load i32, i32* %i, align 4, !dbg !69
  %26 = icmp sle i32 1, %25, !dbg !70
  %27 = zext i1 %26 to i32, !dbg !70
  %28 = bitcast i32* %1 to i8*, !dbg !71
  call void @llvm.lifetime.start(i64 4, i8* %28), !dbg !71
  store i32 %27, i32* %1, align 4, !dbg !71
  %29 = load i32, i32* %1, align 4, !dbg !72
  %30 = icmp ne i32 %29, 0, !dbg !73
  br i1 %30, label %__VERIFIER_assert.exit, label %31, !dbg !74

; <label>:31                                      ; preds = %24
  call void @__VERIFIER_error() #3, !dbg !75
  br label %__VERIFIER_assert.exit, !dbg !76

__VERIFIER_assert.exit:                           ; preds = %24, %31
  %32 = bitcast i32* %1 to i8*, !dbg !77
  call void @llvm.lifetime.end(i64 4, i8* %32), !dbg !77
  br label %33, !dbg !78

; <label>:33                                      ; preds = %__VERIFIER_assert.exit
  %34 = load i32, i32* %i, align 4, !dbg !79
  %35 = add nsw i32 %34, 1, !dbg !79
  store i32 %35, i32* %i, align 4, !dbg !79
  br label %20, !dbg !80

; <label>:36                                      ; preds = %20
  %37 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !81
  %38 = icmp ne i32 %37, 0, !dbg !81
  br i1 %38, label %39, label %42, !dbg !83

; <label>:39                                      ; preds = %36
  %40 = load i32, i32* %l, align 4, !dbg !84
  %41 = add nsw i32 %40, 1, !dbg !85
  store i32 %41, i32* %l, align 4, !dbg !86
  br label %42, !dbg !87

; <label>:42                                      ; preds = %39, %36
  br label %43, !dbg !88

; <label>:43                                      ; preds = %42
  %44 = load i32, i32* %k, align 4, !dbg !89
  %45 = add nsw i32 %44, 1, !dbg !89
  store i32 %45, i32* %k, align 4, !dbg !89
  br label %14, !dbg !90

; <label>:46                                      ; preds = %14
  %47 = load i32, i32* %2, !dbg !91
  ret i32 %47, !dbg !91
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
!1 = !DIFile(filename: "programs/svcomp16/loop-invgen/nest-if3_true-unreach-call.i", directory: ".")
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
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !8, file: !1, line: 11, type: !7)
!30 = !DILocation(line: 11, column: 9, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !8, file: !1, line: 11, type: !7)
!32 = !DILocation(line: 11, column: 11, scope: !8)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !8, file: !1, line: 11, type: !7)
!34 = !DILocation(line: 11, column: 13, scope: !8)
!35 = !DILocation(line: 12, column: 7, scope: !8)
!36 = !DILocation(line: 12, column: 5, scope: !8)
!37 = !DILocation(line: 13, column: 7, scope: !8)
!38 = !DILocation(line: 13, column: 5, scope: !8)
!39 = !DILocation(line: 14, column: 21, scope: !8)
!40 = !DILocation(line: 14, column: 22, scope: !8)
!41 = !DILocation(line: 14, column: 3, scope: !8)
!42 = !DILocation(line: 15, column: 21, scope: !8)
!43 = !DILocation(line: 15, column: 23, scope: !8)
!44 = !DILocation(line: 15, column: 3, scope: !8)
!45 = !DILocation(line: 16, column: 21, scope: !8)
!46 = !DILocation(line: 16, column: 23, scope: !8)
!47 = !DILocation(line: 16, column: 3, scope: !8)
!48 = !DILocation(line: 17, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !8, file: !1, line: 17, column: 3)
!50 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !51)
!51 = distinct !DILocation(line: 19, column: 7, scope: !52)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 18, column: 22)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 18, column: 5)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 18, column: 5)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 17, column: 20)
!56 = distinct !DILexicalBlock(scope: !49, file: !1, line: 17, column: 3)
!57 = !DILocation(line: 17, column: 8, scope: !49)
!58 = !DILocation(line: 17, column: 12, scope: !56)
!59 = !DILocation(line: 17, column: 14, scope: !56)
!60 = !DILocation(line: 17, column: 13, scope: !56)
!61 = !DILocation(line: 17, column: 3, scope: !49)
!62 = !DILocation(line: 18, column: 12, scope: !54)
!63 = !DILocation(line: 18, column: 11, scope: !54)
!64 = !DILocation(line: 18, column: 10, scope: !54)
!65 = !DILocation(line: 18, column: 14, scope: !53)
!66 = !DILocation(line: 18, column: 16, scope: !53)
!67 = !DILocation(line: 18, column: 15, scope: !53)
!68 = !DILocation(line: 18, column: 5, scope: !54)
!69 = !DILocation(line: 19, column: 28, scope: !52)
!70 = !DILocation(line: 19, column: 26, scope: !52)
!71 = !DILocation(line: 19, column: 7, scope: !52)
!72 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !51)
!73 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !51)
!74 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !51)
!75 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !51)
!76 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !51)
!77 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !51)
!78 = !DILocation(line: 20, column: 5, scope: !52)
!79 = !DILocation(line: 18, column: 19, scope: !53)
!80 = !DILocation(line: 18, column: 5, scope: !53)
!81 = !DILocation(line: 21, column: 8, scope: !82)
!82 = distinct !DILexicalBlock(scope: !55, file: !1, line: 21, column: 8)
!83 = !DILocation(line: 21, column: 8, scope: !55)
!84 = !DILocation(line: 22, column: 11, scope: !82)
!85 = !DILocation(line: 22, column: 13, scope: !82)
!86 = !DILocation(line: 22, column: 9, scope: !82)
!87 = !DILocation(line: 22, column: 7, scope: !82)
!88 = !DILocation(line: 23, column: 3, scope: !55)
!89 = !DILocation(line: 17, column: 17, scope: !56)
!90 = !DILocation(line: 17, column: 3, scope: !56)
!91 = !DILocation(line: 24, column: 2, scope: !8)
