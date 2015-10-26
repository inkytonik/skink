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
define void @main() #0 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %l = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %k, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %n, metadata !31, metadata !16), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %l, metadata !33, metadata !16), !dbg !34
  %2 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !35
  store i32 %2, i32* %n, align 4, !dbg !36
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !37
  store i32 %3, i32* %l, align 4, !dbg !38
  %4 = load i32, i32* %l, align 4, !dbg !39
  %5 = icmp sgt i32 %4, 0, !dbg !40
  %6 = zext i1 %5 to i32, !dbg !40
  call void @__VERIFIER_assume(i32 %6), !dbg !41
  %7 = load i32, i32* %l, align 4, !dbg !42
  %8 = icmp slt i32 %7, 1000000, !dbg !43
  %9 = zext i1 %8 to i32, !dbg !43
  call void @__VERIFIER_assume(i32 %9), !dbg !44
  %10 = load i32, i32* %n, align 4, !dbg !45
  %11 = icmp slt i32 %10, 1000000, !dbg !46
  %12 = zext i1 %11 to i32, !dbg !46
  call void @__VERIFIER_assume(i32 %12), !dbg !47
  store i32 1, i32* %k, align 4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !50
  br label %13, !dbg !57

; <label>:13                                      ; preds = %42, %0
  %14 = load i32, i32* %k, align 4, !dbg !58
  %15 = load i32, i32* %n, align 4, !dbg !59
  %16 = icmp slt i32 %14, %15, !dbg !60
  br i1 %16, label %17, label %45, !dbg !61

; <label>:17                                      ; preds = %13
  %18 = load i32, i32* %l, align 4, !dbg !62
  store i32 %18, i32* %i, align 4, !dbg !63
  br label %19, !dbg !64

; <label>:19                                      ; preds = %32, %17
  %20 = load i32, i32* %i, align 4, !dbg !65
  %21 = load i32, i32* %n, align 4, !dbg !66
  %22 = icmp slt i32 %20, %21, !dbg !67
  br i1 %22, label %23, label %35, !dbg !68

; <label>:23                                      ; preds = %19
  %24 = load i32, i32* %i, align 4, !dbg !69
  %25 = icmp sle i32 1, %24, !dbg !70
  %26 = zext i1 %25 to i32, !dbg !70
  %27 = bitcast i32* %1 to i8*, !dbg !71
  call void @llvm.lifetime.start(i64 4, i8* %27), !dbg !71
  store i32 %26, i32* %1, align 4, !dbg !71
  %28 = load i32, i32* %1, align 4, !dbg !72
  %29 = icmp ne i32 %28, 0, !dbg !73
  br i1 %29, label %__VERIFIER_assert.exit, label %30, !dbg !74

; <label>:30                                      ; preds = %23
  call void @__VERIFIER_error() #3, !dbg !75
  br label %__VERIFIER_assert.exit, !dbg !76

__VERIFIER_assert.exit:                           ; preds = %23, %30
  %31 = bitcast i32* %1 to i8*, !dbg !77
  call void @llvm.lifetime.end(i64 4, i8* %31), !dbg !77
  br label %32, !dbg !78

; <label>:32                                      ; preds = %__VERIFIER_assert.exit
  %33 = load i32, i32* %i, align 4, !dbg !79
  %34 = add nsw i32 %33, 1, !dbg !79
  store i32 %34, i32* %i, align 4, !dbg !79
  br label %19, !dbg !80

; <label>:35                                      ; preds = %19
  %36 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !81
  %37 = icmp ne i32 %36, 0, !dbg !81
  br i1 %37, label %38, label %41, !dbg !83

; <label>:38                                      ; preds = %35
  %39 = load i32, i32* %l, align 4, !dbg !84
  %40 = add nsw i32 %39, 1, !dbg !85
  store i32 %40, i32* %l, align 4, !dbg !86
  br label %41, !dbg !87

; <label>:41                                      ; preds = %38, %35
  br label %42, !dbg !88

; <label>:42                                      ; preds = %41
  %43 = load i32, i32* %k, align 4, !dbg !89
  %44 = add nsw i32 %43, 1, !dbg !89
  store i32 %44, i32* %k, align 4, !dbg !89
  br label %13, !dbg !90

; <label>:45                                      ; preds = %13
  ret void, !dbg !91
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
!1 = !DIFile(filename: "nest-if3_true-unreach-call.i", directory: "/Users/asloane/Projects/SV-COMP/sv-benchmarks/c/loop-invgen")
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
