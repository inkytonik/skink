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
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %k, metadata !29, metadata !16), !dbg !30
  %2 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !31
  store i32 %2, i32* %k, align 4, !dbg !32
  %3 = load i32, i32* %k, align 4, !dbg !33
  %4 = icmp sle i32 0, %3, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !35
  br i1 %4, label %5, label %8, !dbg !37

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %k, align 4, !dbg !38
  %7 = icmp sle i32 %6, 10, !dbg !39
  br label %8

; <label>:8                                       ; preds = %5, %0
  %9 = phi i1 [ false, %0 ], [ %7, %5 ]
  %10 = zext i1 %9 to i32, !dbg !37
  call void @__VERIFIER_assume(i32 %10), !dbg !40
  store i32 0, i32* %i, align 4, !dbg !41
  br label %11, !dbg !43

; <label>:11                                      ; preds = %17, %8
  %12 = load i32, i32* %i, align 4, !dbg !44
  %13 = load i32, i32* %k, align 4, !dbg !46
  %14 = mul nsw i32 1000000, %13, !dbg !47
  %15 = icmp slt i32 %12, %14, !dbg !48
  br i1 %15, label %16, label %21, !dbg !49

; <label>:16                                      ; preds = %11
  br label %17, !dbg !49

; <label>:17                                      ; preds = %16
  %18 = load i32, i32* %k, align 4, !dbg !50
  %19 = load i32, i32* %i, align 4, !dbg !51
  %20 = add nsw i32 %19, %18, !dbg !51
  store i32 %20, i32* %i, align 4, !dbg !51
  br label %11, !dbg !52

; <label>:21                                      ; preds = %11
  %22 = load i32, i32* %i, align 4, !dbg !53
  %23 = load i32, i32* %k, align 4, !dbg !54
  %24 = mul nsw i32 1000000, %23, !dbg !55
  %25 = icmp eq i32 %22, %24, !dbg !56
  %26 = zext i1 %25 to i32, !dbg !56
  %27 = bitcast i32* %1 to i8*, !dbg !57
  call void @llvm.lifetime.start(i64 4, i8* %27), !dbg !57
  store i32 %26, i32* %1, align 4, !dbg !57
  %28 = load i32, i32* %1, align 4, !dbg !58
  %29 = icmp ne i32 %28, 0, !dbg !59
  br i1 %29, label %__VERIFIER_assert.exit, label %30, !dbg !60

; <label>:30                                      ; preds = %21
  call void @__VERIFIER_error() #3, !dbg !61
  br label %__VERIFIER_assert.exit, !dbg !62

__VERIFIER_assert.exit:                           ; preds = %21, %30
  %31 = bitcast i32* %1 to i8*, !dbg !63
  call void @llvm.lifetime.end(i64 4, i8* %31), !dbg !63
  ret void, !dbg !64
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
!1 = !DIFile(filename: "count_by_k_true-unreach-call.i", directory: "/Users/asloane/Projects/SV-COMP/sv-benchmarks/c/loop-new")
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
!23 = !DILocation(line: 5, column: 10, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 4, column: 16)
!25 = !DILocation(line: 6, column: 3, scope: !24)
!26 = !DILocation(line: 7, column: 3, scope: !4)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 11, type: !7)
!28 = !DILocation(line: 11, column: 9, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !8, file: !1, line: 12, type: !7)
!30 = !DILocation(line: 12, column: 9, scope: !8)
!31 = !DILocation(line: 13, column: 9, scope: !8)
!32 = !DILocation(line: 13, column: 7, scope: !8)
!33 = !DILocation(line: 14, column: 28, scope: !8)
!34 = !DILocation(line: 14, column: 25, scope: !8)
!35 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !36)
!36 = distinct !DILocation(line: 16, column: 5, scope: !8)
!37 = !DILocation(line: 14, column: 30, scope: !8)
!38 = !DILocation(line: 14, column: 33, scope: !8)
!39 = !DILocation(line: 14, column: 35, scope: !8)
!40 = !DILocation(line: 14, column: 5, scope: !8)
!41 = !DILocation(line: 15, column: 12, scope: !42)
!42 = distinct !DILexicalBlock(scope: !8, file: !1, line: 15, column: 5)
!43 = !DILocation(line: 15, column: 10, scope: !42)
!44 = !DILocation(line: 15, column: 17, scope: !45)
!45 = distinct !DILexicalBlock(scope: !42, file: !1, line: 15, column: 5)
!46 = !DILocation(line: 15, column: 29, scope: !45)
!47 = !DILocation(line: 15, column: 28, scope: !45)
!48 = !DILocation(line: 15, column: 19, scope: !45)
!49 = !DILocation(line: 15, column: 5, scope: !42)
!50 = !DILocation(line: 15, column: 37, scope: !45)
!51 = !DILocation(line: 15, column: 34, scope: !45)
!52 = !DILocation(line: 15, column: 5, scope: !45)
!53 = !DILocation(line: 16, column: 23, scope: !8)
!54 = !DILocation(line: 16, column: 36, scope: !8)
!55 = !DILocation(line: 16, column: 35, scope: !8)
!56 = !DILocation(line: 16, column: 25, scope: !8)
!57 = !DILocation(line: 16, column: 5, scope: !8)
!58 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !36)
!59 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !36)
!60 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !36)
!61 = !DILocation(line: 5, column: 10, scope: !24, inlinedAt: !36)
!62 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !36)
!63 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !36)
!64 = !DILocation(line: 17, column: 1, scope: !8)
