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
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %n, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %i, metadata !31, metadata !16), !dbg !32
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !33
  store i32 %3, i32* %n, align 4, !dbg !34
  %4 = load i32, i32* %n, align 4, !dbg !35
  %5 = icmp sle i32 1, %4, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !37
  br i1 %5, label %6, label %9, !dbg !39

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %n, align 4, !dbg !40
  %8 = icmp sle i32 %7, 1000, !dbg !41
  br label %9

; <label>:9                                       ; preds = %6, %0
  %10 = phi i1 [ false, %0 ], [ %8, %6 ]
  %11 = zext i1 %10 to i32, !dbg !39
  call void @__VERIFIER_assume(i32 %11), !dbg !42
  store i32 0, i32* %sum, align 4, !dbg !43
  store i32 1, i32* %i, align 4, !dbg !44
  br label %12, !dbg !46

; <label>:12                                      ; preds = %20, %9
  %13 = load i32, i32* %i, align 4, !dbg !47
  %14 = load i32, i32* %n, align 4, !dbg !49
  %15 = icmp sle i32 %13, %14, !dbg !50
  br i1 %15, label %16, label %23, !dbg !51

; <label>:16                                      ; preds = %12
  %17 = load i32, i32* %sum, align 4, !dbg !52
  %18 = load i32, i32* %i, align 4, !dbg !54
  %19 = add nsw i32 %17, %18, !dbg !55
  store i32 %19, i32* %sum, align 4, !dbg !56
  br label %20, !dbg !57

; <label>:20                                      ; preds = %16
  %21 = load i32, i32* %i, align 4, !dbg !58
  %22 = add nsw i32 %21, 1, !dbg !58
  store i32 %22, i32* %i, align 4, !dbg !58
  br label %12, !dbg !59

; <label>:23                                      ; preds = %12
  %24 = load i32, i32* %sum, align 4, !dbg !60
  %25 = mul nsw i32 2, %24, !dbg !61
  %26 = load i32, i32* %n, align 4, !dbg !62
  %27 = load i32, i32* %n, align 4, !dbg !63
  %28 = add nsw i32 %27, 1, !dbg !64
  %29 = mul nsw i32 %26, %28, !dbg !65
  %30 = icmp eq i32 %25, %29, !dbg !66
  %31 = zext i1 %30 to i32, !dbg !66
  %32 = bitcast i32* %1 to i8*, !dbg !67
  call void @llvm.lifetime.start(i64 4, i8* %32), !dbg !67
  store i32 %31, i32* %1, align 4, !dbg !67
  %33 = load i32, i32* %1, align 4, !dbg !68
  %34 = icmp ne i32 %33, 0, !dbg !69
  br i1 %34, label %__VERIFIER_assert.exit, label %35, !dbg !70

; <label>:35                                      ; preds = %23
  call void @__VERIFIER_error() #3, !dbg !71
  br label %__VERIFIER_assert.exit, !dbg !72

__VERIFIER_assert.exit:                           ; preds = %23, %35
  %36 = bitcast i32* %1 to i8*, !dbg !73
  call void @llvm.lifetime.end(i64 4, i8* %36), !dbg !73
  ret i32 0, !dbg !74
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
!1 = !DIFile(filename: "programs/svcomp16/loop-new/gauss_sum_true-unreach-call.i", directory: ".")
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
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sum", scope: !8, file: !1, line: 11, type: !7)
!30 = !DILocation(line: 11, column: 12, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 11, type: !7)
!32 = !DILocation(line: 11, column: 17, scope: !8)
!33 = !DILocation(line: 12, column: 9, scope: !8)
!34 = !DILocation(line: 12, column: 7, scope: !8)
!35 = !DILocation(line: 13, column: 28, scope: !8)
!36 = !DILocation(line: 13, column: 25, scope: !8)
!37 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !38)
!38 = distinct !DILocation(line: 18, column: 5, scope: !8)
!39 = !DILocation(line: 13, column: 30, scope: !8)
!40 = !DILocation(line: 13, column: 33, scope: !8)
!41 = !DILocation(line: 13, column: 35, scope: !8)
!42 = !DILocation(line: 13, column: 5, scope: !8)
!43 = !DILocation(line: 14, column: 9, scope: !8)
!44 = !DILocation(line: 15, column: 11, scope: !45)
!45 = distinct !DILexicalBlock(scope: !8, file: !1, line: 15, column: 5)
!46 = !DILocation(line: 15, column: 9, scope: !45)
!47 = !DILocation(line: 15, column: 16, scope: !48)
!48 = distinct !DILexicalBlock(scope: !45, file: !1, line: 15, column: 5)
!49 = !DILocation(line: 15, column: 21, scope: !48)
!50 = !DILocation(line: 15, column: 18, scope: !48)
!51 = !DILocation(line: 15, column: 5, scope: !45)
!52 = !DILocation(line: 16, column: 15, scope: !53)
!53 = distinct !DILexicalBlock(scope: !48, file: !1, line: 15, column: 29)
!54 = !DILocation(line: 16, column: 21, scope: !53)
!55 = !DILocation(line: 16, column: 19, scope: !53)
!56 = !DILocation(line: 16, column: 13, scope: !53)
!57 = !DILocation(line: 17, column: 5, scope: !53)
!58 = !DILocation(line: 15, column: 25, scope: !48)
!59 = !DILocation(line: 15, column: 5, scope: !48)
!60 = !DILocation(line: 18, column: 25, scope: !8)
!61 = !DILocation(line: 18, column: 24, scope: !8)
!62 = !DILocation(line: 18, column: 32, scope: !8)
!63 = !DILocation(line: 18, column: 35, scope: !8)
!64 = !DILocation(line: 18, column: 36, scope: !8)
!65 = !DILocation(line: 18, column: 33, scope: !8)
!66 = !DILocation(line: 18, column: 29, scope: !8)
!67 = !DILocation(line: 18, column: 5, scope: !8)
!68 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !38)
!69 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !38)
!70 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !38)
!71 = !DILocation(line: 5, column: 10, scope: !24, inlinedAt: !38)
!72 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !38)
!73 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !38)
!74 = !DILocation(line: 19, column: 5, scope: !8)
