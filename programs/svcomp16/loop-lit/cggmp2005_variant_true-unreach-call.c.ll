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
  %lo = alloca i32, align 4
  %mid = alloca i32, align 4
  %hi = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %lo, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %mid, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %hi, metadata !31, metadata !16), !dbg !32
  store i32 0, i32* %lo, align 4, !dbg !33
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !34
  store i32 %3, i32* %mid, align 4, !dbg !35
  %4 = load i32, i32* %mid, align 4, !dbg !36
  %5 = icmp sgt i32 %4, 0, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !38
  br i1 %5, label %6, label %9, !dbg !40

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %mid, align 4, !dbg !41
  %8 = icmp sle i32 %7, 1000000, !dbg !42
  br label %9

; <label>:9                                       ; preds = %6, %0
  %10 = phi i1 [ false, %0 ], [ %8, %6 ]
  %11 = zext i1 %10 to i32, !dbg !40
  call void @__VERIFIER_assume(i32 %11), !dbg !43
  %12 = load i32, i32* %mid, align 4, !dbg !44
  %13 = mul nsw i32 2, %12, !dbg !45
  store i32 %13, i32* %hi, align 4, !dbg !46
  br label %14, !dbg !47

; <label>:14                                      ; preds = %17, %9
  %15 = load i32, i32* %mid, align 4, !dbg !48
  %16 = icmp sgt i32 %15, 0, !dbg !49
  br i1 %16, label %17, label %24, !dbg !47

; <label>:17                                      ; preds = %14
  %18 = load i32, i32* %lo, align 4, !dbg !50
  %19 = add nsw i32 %18, 1, !dbg !52
  store i32 %19, i32* %lo, align 4, !dbg !53
  %20 = load i32, i32* %hi, align 4, !dbg !54
  %21 = sub nsw i32 %20, 1, !dbg !55
  store i32 %21, i32* %hi, align 4, !dbg !56
  %22 = load i32, i32* %mid, align 4, !dbg !57
  %23 = sub nsw i32 %22, 1, !dbg !58
  store i32 %23, i32* %mid, align 4, !dbg !59
  br label %14, !dbg !47

; <label>:24                                      ; preds = %14
  %25 = load i32, i32* %lo, align 4, !dbg !60
  %26 = load i32, i32* %hi, align 4, !dbg !61
  %27 = icmp eq i32 %25, %26, !dbg !62
  %28 = zext i1 %27 to i32, !dbg !62
  %29 = bitcast i32* %1 to i8*, !dbg !63
  call void @llvm.lifetime.start(i64 4, i8* %29), !dbg !63
  store i32 %28, i32* %1, align 4, !dbg !63
  %30 = load i32, i32* %1, align 4, !dbg !64
  %31 = icmp ne i32 %30, 0, !dbg !65
  br i1 %31, label %__VERIFIER_assert.exit, label %32, !dbg !66

; <label>:32                                      ; preds = %24
  call void @__VERIFIER_error() #3, !dbg !67
  br label %__VERIFIER_assert.exit, !dbg !68

__VERIFIER_assert.exit:                           ; preds = %24, %32
  %33 = bitcast i32* %1 to i8*, !dbg !69
  call void @llvm.lifetime.end(i64 4, i8* %33), !dbg !69
  ret i32 0, !dbg !70
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
!1 = !DIFile(filename: "programs/svcomp16/loop-lit/cggmp2005_variant_true-unreach-call.c.i", directory: ".")
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
!23 = !DILocation(line: 5, column: 14, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 4, column: 16)
!25 = !DILocation(line: 6, column: 3, scope: !24)
!26 = !DILocation(line: 7, column: 3, scope: !4)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lo", scope: !8, file: !1, line: 11, type: !7)
!28 = !DILocation(line: 11, column: 9, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mid", scope: !8, file: !1, line: 11, type: !7)
!30 = !DILocation(line: 11, column: 13, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hi", scope: !8, file: !1, line: 11, type: !7)
!32 = !DILocation(line: 11, column: 18, scope: !8)
!33 = !DILocation(line: 12, column: 8, scope: !8)
!34 = !DILocation(line: 13, column: 11, scope: !8)
!35 = !DILocation(line: 13, column: 9, scope: !8)
!36 = !DILocation(line: 14, column: 23, scope: !8)
!37 = !DILocation(line: 14, column: 27, scope: !8)
!38 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !39)
!39 = distinct !DILocation(line: 21, column: 5, scope: !8)
!40 = !DILocation(line: 14, column: 31, scope: !8)
!41 = !DILocation(line: 14, column: 34, scope: !8)
!42 = !DILocation(line: 14, column: 38, scope: !8)
!43 = !DILocation(line: 14, column: 5, scope: !8)
!44 = !DILocation(line: 15, column: 12, scope: !8)
!45 = !DILocation(line: 15, column: 11, scope: !8)
!46 = !DILocation(line: 15, column: 8, scope: !8)
!47 = !DILocation(line: 16, column: 5, scope: !8)
!48 = !DILocation(line: 16, column: 12, scope: !8)
!49 = !DILocation(line: 16, column: 16, scope: !8)
!50 = !DILocation(line: 17, column: 14, scope: !51)
!51 = distinct !DILexicalBlock(scope: !8, file: !1, line: 16, column: 21)
!52 = !DILocation(line: 17, column: 17, scope: !51)
!53 = !DILocation(line: 17, column: 12, scope: !51)
!54 = !DILocation(line: 18, column: 14, scope: !51)
!55 = !DILocation(line: 18, column: 17, scope: !51)
!56 = !DILocation(line: 18, column: 12, scope: !51)
!57 = !DILocation(line: 19, column: 15, scope: !51)
!58 = !DILocation(line: 19, column: 19, scope: !51)
!59 = !DILocation(line: 19, column: 13, scope: !51)
!60 = !DILocation(line: 21, column: 23, scope: !8)
!61 = !DILocation(line: 21, column: 29, scope: !8)
!62 = !DILocation(line: 21, column: 26, scope: !8)
!63 = !DILocation(line: 21, column: 5, scope: !8)
!64 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !39)
!65 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !39)
!66 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !39)
!67 = !DILocation(line: 5, column: 14, scope: !24, inlinedAt: !39)
!68 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !39)
!69 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !39)
!70 = !DILocation(line: 22, column: 5, scope: !8)
