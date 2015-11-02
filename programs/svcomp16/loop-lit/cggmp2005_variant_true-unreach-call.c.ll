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
  br i1 %5, label %6, label %10, !dbg !40

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %mid, align 4, !dbg !41
  %8 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !42
  %9 = icmp sle i32 %7, %8, !dbg !43
  br label %10

; <label>:10                                      ; preds = %6, %0
  %11 = phi i1 [ false, %0 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32, !dbg !40
  call void @__VERIFIER_assume(i32 %12), !dbg !44
  %13 = load i32, i32* %mid, align 4, !dbg !45
  %14 = mul nsw i32 2, %13, !dbg !46
  store i32 %14, i32* %hi, align 4, !dbg !47
  br label %15, !dbg !48

; <label>:15                                      ; preds = %18, %10
  %16 = load i32, i32* %mid, align 4, !dbg !49
  %17 = icmp sgt i32 %16, 0, !dbg !50
  br i1 %17, label %18, label %25, !dbg !48

; <label>:18                                      ; preds = %15
  %19 = load i32, i32* %lo, align 4, !dbg !51
  %20 = add nsw i32 %19, 1, !dbg !53
  store i32 %20, i32* %lo, align 4, !dbg !54
  %21 = load i32, i32* %hi, align 4, !dbg !55
  %22 = sub nsw i32 %21, 1, !dbg !56
  store i32 %22, i32* %hi, align 4, !dbg !57
  %23 = load i32, i32* %mid, align 4, !dbg !58
  %24 = sub nsw i32 %23, 1, !dbg !59
  store i32 %24, i32* %mid, align 4, !dbg !60
  br label %15, !dbg !48

; <label>:25                                      ; preds = %15
  %26 = load i32, i32* %lo, align 4, !dbg !61
  %27 = load i32, i32* %hi, align 4, !dbg !62
  %28 = icmp eq i32 %26, %27, !dbg !63
  %29 = zext i1 %28 to i32, !dbg !63
  %30 = bitcast i32* %1 to i8*, !dbg !64
  call void @llvm.lifetime.start(i64 4, i8* %30), !dbg !64
  store i32 %29, i32* %1, align 4, !dbg !64
  %31 = load i32, i32* %1, align 4, !dbg !65
  %32 = icmp ne i32 %31, 0, !dbg !66
  br i1 %32, label %__VERIFIER_assert.exit, label %33, !dbg !67

; <label>:33                                      ; preds = %25
  call void @__VERIFIER_error() #3, !dbg !68
  br label %__VERIFIER_assert.exit, !dbg !69

__VERIFIER_assert.exit:                           ; preds = %25, %33
  %34 = bitcast i32* %1 to i8*, !dbg !70
  call void @llvm.lifetime.end(i64 4, i8* %34), !dbg !70
  ret i32 0, !dbg !71
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
!42 = !DILocation(line: 14, column: 41, scope: !8)
!43 = !DILocation(line: 14, column: 38, scope: !8)
!44 = !DILocation(line: 14, column: 5, scope: !8)
!45 = !DILocation(line: 15, column: 12, scope: !8)
!46 = !DILocation(line: 15, column: 11, scope: !8)
!47 = !DILocation(line: 15, column: 8, scope: !8)
!48 = !DILocation(line: 16, column: 5, scope: !8)
!49 = !DILocation(line: 16, column: 12, scope: !8)
!50 = !DILocation(line: 16, column: 16, scope: !8)
!51 = !DILocation(line: 17, column: 14, scope: !52)
!52 = distinct !DILexicalBlock(scope: !8, file: !1, line: 16, column: 21)
!53 = !DILocation(line: 17, column: 17, scope: !52)
!54 = !DILocation(line: 17, column: 12, scope: !52)
!55 = !DILocation(line: 18, column: 14, scope: !52)
!56 = !DILocation(line: 18, column: 17, scope: !52)
!57 = !DILocation(line: 18, column: 12, scope: !52)
!58 = !DILocation(line: 19, column: 15, scope: !52)
!59 = !DILocation(line: 19, column: 19, scope: !52)
!60 = !DILocation(line: 19, column: 13, scope: !52)
!61 = !DILocation(line: 21, column: 23, scope: !8)
!62 = !DILocation(line: 21, column: 29, scope: !8)
!63 = !DILocation(line: 21, column: 26, scope: !8)
!64 = !DILocation(line: 21, column: 5, scope: !8)
!65 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !39)
!66 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !39)
!67 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !39)
!68 = !DILocation(line: 5, column: 14, scope: !24, inlinedAt: !39)
!69 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !39)
!70 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !39)
!71 = !DILocation(line: 22, column: 5, scope: !8)
