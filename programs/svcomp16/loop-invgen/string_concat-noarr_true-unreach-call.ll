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
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %j, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !31
  br label %3, !dbg !33

; <label>:3                                       ; preds = %0
  store i32 0, i32* %i, align 4, !dbg !34
  br label %4, !dbg !35

; <label>:4                                       ; preds = %3
  br label %5, !dbg !36

; <label>:5                                       ; preds = %13, %4
  %6 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !37
  %7 = icmp ne i32 %6, 0, !dbg !37
  br i1 %7, label %8, label %11, !dbg !38

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* %i, align 4, !dbg !39
  %10 = icmp slt i32 %9, 1000000, !dbg !40
  br label %11

; <label>:11                                      ; preds = %8, %5
  %12 = phi i1 [ false, %5 ], [ %10, %8 ]
  br i1 %12, label %13, label %16, !dbg !36

; <label>:13                                      ; preds = %11
  %14 = load i32, i32* %i, align 4, !dbg !41
  %15 = add nsw i32 %14, 1, !dbg !41
  store i32 %15, i32* %i, align 4, !dbg !41
  br label %5, !dbg !36

; <label>:16                                      ; preds = %11
  %17 = load i32, i32* %i, align 4, !dbg !43
  %18 = icmp sge i32 %17, 100, !dbg !45
  br i1 %18, label %19, label %21, !dbg !46

; <label>:19                                      ; preds = %16
  br label %20, !dbg !46

; <label>:20                                      ; preds = %39, %20, %19
  br label %20, !dbg !47

; <label>:21                                      ; preds = %16
  store i32 0, i32* %j, align 4, !dbg !48
  br label %22, !dbg !49

; <label>:22                                      ; preds = %21
  br label %23, !dbg !50

; <label>:23                                      ; preds = %31, %22
  %24 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !51
  %25 = icmp ne i32 %24, 0, !dbg !51
  br i1 %25, label %26, label %29, !dbg !52

; <label>:26                                      ; preds = %23
  %27 = load i32, i32* %i, align 4, !dbg !53
  %28 = icmp slt i32 %27, 1000000, !dbg !54
  br label %29

; <label>:29                                      ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  br i1 %30, label %31, label %36, !dbg !50

; <label>:31                                      ; preds = %29
  %32 = load i32, i32* %i, align 4, !dbg !55
  %33 = add nsw i32 %32, 1, !dbg !55
  store i32 %33, i32* %i, align 4, !dbg !55
  %34 = load i32, i32* %j, align 4, !dbg !57
  %35 = add nsw i32 %34, 1, !dbg !57
  store i32 %35, i32* %j, align 4, !dbg !57
  br label %23, !dbg !50

; <label>:36                                      ; preds = %29
  %37 = load i32, i32* %j, align 4, !dbg !58
  %38 = icmp sge i32 %37, 100, !dbg !60
  br i1 %38, label %39, label %40, !dbg !61

; <label>:39                                      ; preds = %36
  br label %20, !dbg !62

; <label>:40                                      ; preds = %36
  %41 = load i32, i32* %i, align 4, !dbg !63
  %42 = icmp slt i32 %41, 200, !dbg !64
  %43 = zext i1 %42 to i32, !dbg !64
  %44 = bitcast i32* %1 to i8*, !dbg !65
  call void @llvm.lifetime.start(i64 4, i8* %44), !dbg !65
  store i32 %43, i32* %1, align 4, !dbg !65
  %45 = load i32, i32* %1, align 4, !dbg !66
  %46 = icmp ne i32 %45, 0, !dbg !67
  br i1 %46, label %__VERIFIER_assert.exit, label %47, !dbg !68

; <label>:47                                      ; preds = %40
  call void @__VERIFIER_error() #3, !dbg !69
  br label %__VERIFIER_assert.exit, !dbg !70

__VERIFIER_assert.exit:                           ; preds = %40, %47
  %48 = bitcast i32* %1 to i8*, !dbg !71
  call void @llvm.lifetime.end(i64 4, i8* %48), !dbg !71
  ret i32 0, !dbg !72
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
!1 = !DIFile(filename: "../../../sv-comp-2016/c/loop-invgen/string_concat-noarr_true-unreach-call.i", directory: "/Users/franck/development/perentiemq/programs/svcomp16")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !9, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 11, type: !7)
!30 = !DILocation(line: 11, column: 10, scope: !8)
!31 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !32)
!32 = distinct !DILocation(line: 26, column: 3, scope: !8)
!33 = !DILocation(line: 11, column: 3, scope: !8)
!34 = !DILocation(line: 13, column: 5, scope: !8)
!35 = !DILocation(line: 13, column: 3, scope: !8)
!36 = !DILocation(line: 15, column: 3, scope: !8)
!37 = !DILocation(line: 15, column: 10, scope: !8)
!38 = !DILocation(line: 15, column: 34, scope: !8)
!39 = !DILocation(line: 15, column: 37, scope: !8)
!40 = !DILocation(line: 15, column: 39, scope: !8)
!41 = !DILocation(line: 16, column: 6, scope: !42)
!42 = distinct !DILexicalBlock(scope: !8, file: !1, line: 15, column: 49)
!43 = !DILocation(line: 18, column: 6, scope: !44)
!44 = distinct !DILexicalBlock(scope: !8, file: !1, line: 18, column: 6)
!45 = !DILocation(line: 18, column: 8, scope: !44)
!46 = !DILocation(line: 18, column: 6, scope: !8)
!47 = !DILocation(line: 18, column: 23, scope: !44)
!48 = !DILocation(line: 19, column: 5, scope: !8)
!49 = !DILocation(line: 19, column: 3, scope: !8)
!50 = !DILocation(line: 21, column: 3, scope: !8)
!51 = !DILocation(line: 21, column: 10, scope: !8)
!52 = !DILocation(line: 21, column: 34, scope: !8)
!53 = !DILocation(line: 21, column: 37, scope: !8)
!54 = !DILocation(line: 21, column: 39, scope: !8)
!55 = !DILocation(line: 22, column: 6, scope: !56)
!56 = distinct !DILexicalBlock(scope: !8, file: !1, line: 21, column: 50)
!57 = !DILocation(line: 23, column: 6, scope: !56)
!58 = !DILocation(line: 25, column: 6, scope: !59)
!59 = distinct !DILexicalBlock(scope: !8, file: !1, line: 25, column: 6)
!60 = !DILocation(line: 25, column: 8, scope: !59)
!61 = !DILocation(line: 25, column: 6, scope: !8)
!62 = !DILocation(line: 25, column: 16, scope: !59)
!63 = !DILocation(line: 26, column: 22, scope: !8)
!64 = !DILocation(line: 26, column: 24, scope: !8)
!65 = !DILocation(line: 26, column: 3, scope: !8)
!66 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !32)
!67 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !32)
!68 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !32)
!69 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !32)
!70 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !32)
!71 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !32)
!72 = !DILocation(line: 27, column: 3, scope: !8)
