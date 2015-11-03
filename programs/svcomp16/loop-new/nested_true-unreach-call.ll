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
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %n, metadata !27, metadata !16), !dbg !28
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !29
  store i32 %3, i32* %n, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %m, metadata !30, metadata !16), !dbg !31
  %4 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !32
  store i32 %4, i32* %m, align 4, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %k, metadata !33, metadata !16), !dbg !34
  store i32 0, i32* %k, align 4, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %i, metadata !35, metadata !16), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %j, metadata !37, metadata !16), !dbg !38
  %5 = load i32, i32* %n, align 4, !dbg !39
  %6 = icmp sle i32 10, %5, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !41
  br i1 %6, label %7, label %10, !dbg !43

; <label>:7                                       ; preds = %0
  %8 = load i32, i32* %n, align 4, !dbg !44
  %9 = icmp sle i32 %8, 10000, !dbg !45
  br label %10

; <label>:10                                      ; preds = %7, %0
  %11 = phi i1 [ false, %0 ], [ %9, %7 ]
  %12 = zext i1 %11 to i32, !dbg !43
  call void @__VERIFIER_assume(i32 %12), !dbg !46
  %13 = load i32, i32* %m, align 4, !dbg !47
  %14 = icmp sle i32 10, %13, !dbg !48
  br i1 %14, label %15, label %18, !dbg !49

; <label>:15                                      ; preds = %10
  %16 = load i32, i32* %m, align 4, !dbg !50
  %17 = icmp sle i32 %16, 10000, !dbg !51
  br label %18

; <label>:18                                      ; preds = %15, %10
  %19 = phi i1 [ false, %10 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32, !dbg !49
  call void @__VERIFIER_assume(i32 %20), !dbg !52
  store i32 0, i32* %i, align 4, !dbg !53
  br label %21, !dbg !55

; <label>:21                                      ; preds = %37, %18
  %22 = load i32, i32* %i, align 4, !dbg !56
  %23 = load i32, i32* %n, align 4, !dbg !58
  %24 = icmp slt i32 %22, %23, !dbg !59
  br i1 %24, label %25, label %40, !dbg !60

; <label>:25                                      ; preds = %21
  store i32 0, i32* %j, align 4, !dbg !61
  br label %26, !dbg !64

; <label>:26                                      ; preds = %33, %25
  %27 = load i32, i32* %j, align 4, !dbg !65
  %28 = load i32, i32* %m, align 4, !dbg !67
  %29 = icmp slt i32 %27, %28, !dbg !68
  br i1 %29, label %30, label %36, !dbg !69

; <label>:30                                      ; preds = %26
  %31 = load i32, i32* %k, align 4, !dbg !70
  %32 = add nsw i32 %31, 1, !dbg !70
  store i32 %32, i32* %k, align 4, !dbg !70
  br label %33, !dbg !72

; <label>:33                                      ; preds = %30
  %34 = load i32, i32* %j, align 4, !dbg !73
  %35 = add nsw i32 %34, 1, !dbg !73
  store i32 %35, i32* %j, align 4, !dbg !73
  br label %26, !dbg !74

; <label>:36                                      ; preds = %26
  br label %37, !dbg !75

; <label>:37                                      ; preds = %36
  %38 = load i32, i32* %i, align 4, !dbg !76
  %39 = add nsw i32 %38, 1, !dbg !76
  store i32 %39, i32* %i, align 4, !dbg !76
  br label %21, !dbg !77

; <label>:40                                      ; preds = %21
  %41 = load i32, i32* %k, align 4, !dbg !78
  %42 = icmp sge i32 %41, 100, !dbg !79
  %43 = zext i1 %42 to i32, !dbg !79
  %44 = bitcast i32* %1 to i8*, !dbg !80
  call void @llvm.lifetime.start(i64 4, i8* %44), !dbg !80
  store i32 %43, i32* %1, align 4, !dbg !80
  %45 = load i32, i32* %1, align 4, !dbg !81
  %46 = icmp ne i32 %45, 0, !dbg !82
  br i1 %46, label %__VERIFIER_assert.exit, label %47, !dbg !83

; <label>:47                                      ; preds = %40
  call void @__VERIFIER_error() #3, !dbg !84
  br label %__VERIFIER_assert.exit, !dbg !85

__VERIFIER_assert.exit:                           ; preds = %40, %47
  %48 = bitcast i32* %1 to i8*, !dbg !86
  call void @llvm.lifetime.end(i64 4, i8* %48), !dbg !86
  ret i32 0, !dbg !87
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
!1 = !DIFile(filename: "programs/svcomp16/loop-new/nested_true-unreach-call.i", directory: ".")
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
!23 = !DILocation(line: 5, column: 10, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 4, column: 16)
!25 = !DILocation(line: 6, column: 3, scope: !24)
!26 = !DILocation(line: 7, column: 3, scope: !4)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !8, file: !1, line: 11, type: !7)
!28 = !DILocation(line: 11, column: 9, scope: !8)
!29 = !DILocation(line: 11, column: 13, scope: !8)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !8, file: !1, line: 12, type: !7)
!31 = !DILocation(line: 12, column: 9, scope: !8)
!32 = !DILocation(line: 12, column: 13, scope: !8)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !8, file: !1, line: 13, type: !7)
!34 = !DILocation(line: 13, column: 9, scope: !8)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 14, type: !7)
!36 = !DILocation(line: 14, column: 9, scope: !8)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 14, type: !7)
!38 = !DILocation(line: 14, column: 11, scope: !8)
!39 = !DILocation(line: 15, column: 29, scope: !8)
!40 = !DILocation(line: 15, column: 26, scope: !8)
!41 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !42)
!42 = distinct !DILocation(line: 22, column: 5, scope: !8)
!43 = !DILocation(line: 15, column: 31, scope: !8)
!44 = !DILocation(line: 15, column: 34, scope: !8)
!45 = !DILocation(line: 15, column: 36, scope: !8)
!46 = !DILocation(line: 15, column: 5, scope: !8)
!47 = !DILocation(line: 16, column: 29, scope: !8)
!48 = !DILocation(line: 16, column: 26, scope: !8)
!49 = !DILocation(line: 16, column: 31, scope: !8)
!50 = !DILocation(line: 16, column: 34, scope: !8)
!51 = !DILocation(line: 16, column: 36, scope: !8)
!52 = !DILocation(line: 16, column: 5, scope: !8)
!53 = !DILocation(line: 17, column: 12, scope: !54)
!54 = distinct !DILexicalBlock(scope: !8, file: !1, line: 17, column: 5)
!55 = !DILocation(line: 17, column: 10, scope: !54)
!56 = !DILocation(line: 17, column: 17, scope: !57)
!57 = distinct !DILexicalBlock(scope: !54, file: !1, line: 17, column: 5)
!58 = !DILocation(line: 17, column: 21, scope: !57)
!59 = !DILocation(line: 17, column: 19, scope: !57)
!60 = !DILocation(line: 17, column: 5, scope: !54)
!61 = !DILocation(line: 18, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !63, file: !1, line: 18, column: 2)
!63 = distinct !DILexicalBlock(scope: !57, file: !1, line: 17, column: 29)
!64 = !DILocation(line: 18, column: 7, scope: !62)
!65 = !DILocation(line: 18, column: 14, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !1, line: 18, column: 2)
!67 = !DILocation(line: 18, column: 18, scope: !66)
!68 = !DILocation(line: 18, column: 16, scope: !66)
!69 = !DILocation(line: 18, column: 2, scope: !62)
!70 = !DILocation(line: 19, column: 8, scope: !71)
!71 = distinct !DILexicalBlock(scope: !66, file: !1, line: 18, column: 26)
!72 = !DILocation(line: 20, column: 2, scope: !71)
!73 = !DILocation(line: 18, column: 22, scope: !66)
!74 = !DILocation(line: 18, column: 2, scope: !66)
!75 = !DILocation(line: 21, column: 5, scope: !63)
!76 = !DILocation(line: 17, column: 25, scope: !57)
!77 = !DILocation(line: 17, column: 5, scope: !57)
!78 = !DILocation(line: 22, column: 23, scope: !8)
!79 = !DILocation(line: 22, column: 25, scope: !8)
!80 = !DILocation(line: 22, column: 5, scope: !8)
!81 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !42)
!82 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !42)
!83 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !42)
!84 = !DILocation(line: 5, column: 10, scope: !24, inlinedAt: !42)
!85 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !42)
!86 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !42)
!87 = !DILocation(line: 23, column: 5, scope: !8)
