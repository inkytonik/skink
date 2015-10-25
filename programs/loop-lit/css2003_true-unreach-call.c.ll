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
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %j, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %k, metadata !31, metadata !16), !dbg !32
  store i32 1, i32* %i, align 4, !dbg !33
  store i32 1, i32* %j, align 4, !dbg !34
  %2 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !35
  store i32 %2, i32* %k, align 4, !dbg !36
  %3 = load i32, i32* %k, align 4, !dbg !37
  %4 = icmp sle i32 0, %3, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !39
  br i1 %4, label %5, label %8, !dbg !42

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %k, align 4, !dbg !43
  %7 = icmp sle i32 %6, 1, !dbg !44
  br label %8

; <label>:8                                       ; preds = %5, %0
  %9 = phi i1 [ false, %0 ], [ %7, %5 ]
  %10 = zext i1 %9 to i32, !dbg !42
  call void @__VERIFIER_assume(i32 %10), !dbg !45
  br label %11, !dbg !46

; <label>:11                                      ; preds = %__VERIFIER_assert.exit, %8
  %12 = load i32, i32* %i, align 4, !dbg !47
  %13 = icmp slt i32 %12, 1000000, !dbg !48
  br i1 %13, label %14, label %42, !dbg !46

; <label>:14                                      ; preds = %11
  %15 = load i32, i32* %i, align 4, !dbg !49
  %16 = add nsw i32 %15, 1, !dbg !50
  store i32 %16, i32* %i, align 4, !dbg !51
  %17 = load i32, i32* %j, align 4, !dbg !52
  %18 = load i32, i32* %k, align 4, !dbg !53
  %19 = add nsw i32 %17, %18, !dbg !54
  store i32 %19, i32* %j, align 4, !dbg !55
  %20 = load i32, i32* %k, align 4, !dbg !56
  %21 = sub nsw i32 %20, 1, !dbg !57
  store i32 %21, i32* %k, align 4, !dbg !58
  %22 = load i32, i32* %i, align 4, !dbg !59
  %23 = load i32, i32* %k, align 4, !dbg !60
  %24 = add nsw i32 %22, %23, !dbg !61
  %25 = icmp sle i32 1, %24, !dbg !62
  br i1 %25, label %26, label %34, !dbg !63

; <label>:26                                      ; preds = %14
  %27 = load i32, i32* %i, align 4, !dbg !64
  %28 = load i32, i32* %k, align 4, !dbg !65
  %29 = add nsw i32 %27, %28, !dbg !66
  %30 = icmp sle i32 %29, 2, !dbg !67
  br i1 %30, label %31, label %34, !dbg !68

; <label>:31                                      ; preds = %26
  %32 = load i32, i32* %i, align 4, !dbg !69
  %33 = icmp sge i32 %32, 1, !dbg !70
  br label %34

; <label>:34                                      ; preds = %31, %26, %14
  %35 = phi i1 [ false, %26 ], [ false, %14 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32, !dbg !68
  %37 = bitcast i32* %1 to i8*, !dbg !71
  call void @llvm.lifetime.start(i64 4, i8* %37), !dbg !71
  store i32 %36, i32* %1, align 4, !dbg !71
  %38 = load i32, i32* %1, align 4, !dbg !72
  %39 = icmp ne i32 %38, 0, !dbg !73
  br i1 %39, label %__VERIFIER_assert.exit, label %40, !dbg !74

; <label>:40                                      ; preds = %34
  call void @__VERIFIER_error() #3, !dbg !75
  br label %__VERIFIER_assert.exit, !dbg !76

__VERIFIER_assert.exit:                           ; preds = %34, %40
  %41 = bitcast i32* %1 to i8*, !dbg !77
  call void @llvm.lifetime.end(i64 4, i8* %41), !dbg !77
  br label %11, !dbg !46

; <label>:42                                      ; preds = %11
  ret void, !dbg !78
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
!1 = !DIFile(filename: "../../sv-comp-2016/c/loop-lit/css2003_true-unreach-call.c.i", directory: "/Users/franck/development/perentiemq/programs")
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
!23 = !DILocation(line: 5, column: 14, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 4, column: 16)
!25 = !DILocation(line: 6, column: 3, scope: !24)
!26 = !DILocation(line: 7, column: 3, scope: !4)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 11, type: !7)
!28 = !DILocation(line: 11, column: 9, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 11, type: !7)
!30 = !DILocation(line: 11, column: 11, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !8, file: !1, line: 11, type: !7)
!32 = !DILocation(line: 11, column: 13, scope: !8)
!33 = !DILocation(line: 12, column: 7, scope: !8)
!34 = !DILocation(line: 13, column: 7, scope: !8)
!35 = !DILocation(line: 14, column: 9, scope: !8)
!36 = !DILocation(line: 14, column: 7, scope: !8)
!37 = !DILocation(line: 15, column: 28, scope: !8)
!38 = !DILocation(line: 15, column: 25, scope: !8)
!39 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !40)
!40 = distinct !DILocation(line: 20, column: 2, scope: !41)
!41 = distinct !DILexicalBlock(scope: !8, file: !1, line: 16, column: 25)
!42 = !DILocation(line: 15, column: 30, scope: !8)
!43 = !DILocation(line: 15, column: 33, scope: !8)
!44 = !DILocation(line: 15, column: 35, scope: !8)
!45 = !DILocation(line: 15, column: 5, scope: !8)
!46 = !DILocation(line: 16, column: 5, scope: !8)
!47 = !DILocation(line: 16, column: 12, scope: !8)
!48 = !DILocation(line: 16, column: 14, scope: !8)
!49 = !DILocation(line: 17, column: 6, scope: !41)
!50 = !DILocation(line: 17, column: 8, scope: !41)
!51 = !DILocation(line: 17, column: 4, scope: !41)
!52 = !DILocation(line: 18, column: 6, scope: !41)
!53 = !DILocation(line: 18, column: 10, scope: !41)
!54 = !DILocation(line: 18, column: 8, scope: !41)
!55 = !DILocation(line: 18, column: 4, scope: !41)
!56 = !DILocation(line: 19, column: 6, scope: !41)
!57 = !DILocation(line: 19, column: 8, scope: !41)
!58 = !DILocation(line: 19, column: 4, scope: !41)
!59 = !DILocation(line: 20, column: 25, scope: !41)
!60 = !DILocation(line: 20, column: 29, scope: !41)
!61 = !DILocation(line: 20, column: 27, scope: !41)
!62 = !DILocation(line: 20, column: 22, scope: !41)
!63 = !DILocation(line: 20, column: 31, scope: !41)
!64 = !DILocation(line: 20, column: 34, scope: !41)
!65 = !DILocation(line: 20, column: 38, scope: !41)
!66 = !DILocation(line: 20, column: 36, scope: !41)
!67 = !DILocation(line: 20, column: 40, scope: !41)
!68 = !DILocation(line: 20, column: 45, scope: !41)
!69 = !DILocation(line: 20, column: 48, scope: !41)
!70 = !DILocation(line: 20, column: 50, scope: !41)
!71 = !DILocation(line: 20, column: 2, scope: !41)
!72 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !40)
!73 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !40)
!74 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !40)
!75 = !DILocation(line: 5, column: 14, scope: !24, inlinedAt: !40)
!76 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !40)
!77 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !40)
!78 = !DILocation(line: 22, column: 1, scope: !8)
