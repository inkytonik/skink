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
  %n0 = alloca i32, align 4
  %n1 = alloca i32, align 4
  %i0 = alloca i32, align 4
  %k = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %n0, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %n1, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %i0, metadata !31, metadata !16), !dbg !32
  store i32 0, i32* %i0, align 4, !dbg !32
  call void @llvm.dbg.declare(metadata i32* %k, metadata !33, metadata !16), !dbg !34
  store i32 0, i32* %k, align 4, !dbg !34
  %2 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !35
  store i32 %2, i32* %n0, align 4, !dbg !36
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !37
  store i32 %3, i32* %n1, align 4, !dbg !38
  %4 = load i32, i32* %n0, align 4, !dbg !39
  %5 = icmp sle i32 -1000000, %4, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !41
  br i1 %5, label %6, label %9, !dbg !44

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %n0, align 4, !dbg !45
  %8 = icmp slt i32 %7, 1000000, !dbg !46
  br label %9

; <label>:9                                       ; preds = %6, %0
  %10 = phi i1 [ false, %0 ], [ %8, %6 ]
  %11 = zext i1 %10 to i32, !dbg !44
  call void @__VERIFIER_assume(i32 %11), !dbg !47
  %12 = load i32, i32* %n1, align 4, !dbg !48
  %13 = icmp sle i32 -1000000, %12, !dbg !49
  br i1 %13, label %14, label %17, !dbg !50

; <label>:14                                      ; preds = %9
  %15 = load i32, i32* %n1, align 4, !dbg !51
  %16 = icmp slt i32 %15, 1000000, !dbg !52
  br label %17

; <label>:17                                      ; preds = %14, %9
  %18 = phi i1 [ false, %9 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32, !dbg !50
  call void @__VERIFIER_assume(i32 %19), !dbg !53
  br label %20, !dbg !54

; <label>:20                                      ; preds = %24, %17
  %21 = load i32, i32* %i0, align 4, !dbg !55
  %22 = load i32, i32* %n0, align 4, !dbg !56
  %23 = icmp slt i32 %21, %22, !dbg !57
  br i1 %23, label %24, label %29, !dbg !54

; <label>:24                                      ; preds = %20
  %25 = load i32, i32* %i0, align 4, !dbg !58
  %26 = add nsw i32 %25, 1, !dbg !58
  store i32 %26, i32* %i0, align 4, !dbg !58
  %27 = load i32, i32* %k, align 4, !dbg !60
  %28 = add nsw i32 %27, 1, !dbg !60
  store i32 %28, i32* %k, align 4, !dbg !60
  br label %20, !dbg !54

; <label>:29                                      ; preds = %20
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !61, metadata !16), !dbg !62
  store i32 0, i32* %i1, align 4, !dbg !62
  br label %30, !dbg !63

; <label>:30                                      ; preds = %34, %29
  %31 = load i32, i32* %i1, align 4, !dbg !64
  %32 = load i32, i32* %n1, align 4, !dbg !65
  %33 = icmp slt i32 %31, %32, !dbg !66
  br i1 %33, label %34, label %39, !dbg !63

; <label>:34                                      ; preds = %30
  %35 = load i32, i32* %i1, align 4, !dbg !67
  %36 = add nsw i32 %35, 1, !dbg !67
  store i32 %36, i32* %i1, align 4, !dbg !67
  %37 = load i32, i32* %k, align 4, !dbg !69
  %38 = add nsw i32 %37, 1, !dbg !69
  store i32 %38, i32* %k, align 4, !dbg !69
  br label %30, !dbg !63

; <label>:39                                      ; preds = %30
  call void @llvm.dbg.declare(metadata i32* %j1, metadata !70, metadata !16), !dbg !71
  store i32 0, i32* %j1, align 4, !dbg !71
  br label %40, !dbg !72

; <label>:40                                      ; preds = %__VERIFIER_assert.exit, %39
  %41 = load i32, i32* %j1, align 4, !dbg !73
  %42 = load i32, i32* %n0, align 4, !dbg !74
  %43 = load i32, i32* %n1, align 4, !dbg !75
  %44 = add nsw i32 %42, %43, !dbg !76
  %45 = icmp slt i32 %41, %44, !dbg !77
  br i1 %45, label %46, label %59, !dbg !72

; <label>:46                                      ; preds = %40
  %47 = load i32, i32* %k, align 4, !dbg !78
  %48 = icmp sgt i32 %47, 0, !dbg !79
  %49 = zext i1 %48 to i32, !dbg !79
  %50 = bitcast i32* %1 to i8*, !dbg !80
  call void @llvm.lifetime.start(i64 4, i8* %50), !dbg !80
  store i32 %49, i32* %1, align 4, !dbg !80
  %51 = load i32, i32* %1, align 4, !dbg !81
  %52 = icmp ne i32 %51, 0, !dbg !82
  br i1 %52, label %__VERIFIER_assert.exit, label %53, !dbg !83

; <label>:53                                      ; preds = %46
  call void @__VERIFIER_error() #3, !dbg !84
  br label %__VERIFIER_assert.exit, !dbg !85

__VERIFIER_assert.exit:                           ; preds = %46, %53
  %54 = bitcast i32* %1 to i8*, !dbg !86
  call void @llvm.lifetime.end(i64 4, i8* %54), !dbg !86
  %55 = load i32, i32* %j1, align 4, !dbg !87
  %56 = add nsw i32 %55, 1, !dbg !87
  store i32 %56, i32* %j1, align 4, !dbg !87
  %57 = load i32, i32* %k, align 4, !dbg !88
  %58 = add nsw i32 %57, -1, !dbg !88
  store i32 %58, i32* %k, align 4, !dbg !88
  br label %40, !dbg !72

; <label>:59                                      ; preds = %40
  ret void, !dbg !89
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
!1 = !DIFile(filename: "seq_true-unreach-call.i", directory: "/Users/asloane/Projects/SV-COMP/sv-benchmarks/c/loop-invgen")
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
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n0", scope: !8, file: !1, line: 11, type: !7)
!28 = !DILocation(line: 11, column: 7, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n1", scope: !8, file: !1, line: 11, type: !7)
!30 = !DILocation(line: 11, column: 11, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i0", scope: !8, file: !1, line: 12, type: !7)
!32 = !DILocation(line: 12, column: 7, scope: !8)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !8, file: !1, line: 13, type: !7)
!34 = !DILocation(line: 13, column: 7, scope: !8)
!35 = !DILocation(line: 14, column: 8, scope: !8)
!36 = !DILocation(line: 14, column: 6, scope: !8)
!37 = !DILocation(line: 15, column: 8, scope: !8)
!38 = !DILocation(line: 15, column: 6, scope: !8)
!39 = !DILocation(line: 16, column: 33, scope: !8)
!40 = !DILocation(line: 16, column: 30, scope: !8)
!41 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !42)
!42 = distinct !DILocation(line: 29, column: 7, scope: !43)
!43 = distinct !DILexicalBlock(scope: !8, file: !1, line: 28, column: 25)
!44 = !DILocation(line: 16, column: 36, scope: !8)
!45 = !DILocation(line: 16, column: 39, scope: !8)
!46 = !DILocation(line: 16, column: 42, scope: !8)
!47 = !DILocation(line: 16, column: 3, scope: !8)
!48 = !DILocation(line: 17, column: 33, scope: !8)
!49 = !DILocation(line: 17, column: 30, scope: !8)
!50 = !DILocation(line: 17, column: 36, scope: !8)
!51 = !DILocation(line: 17, column: 39, scope: !8)
!52 = !DILocation(line: 17, column: 42, scope: !8)
!53 = !DILocation(line: 17, column: 3, scope: !8)
!54 = !DILocation(line: 18, column: 3, scope: !8)
!55 = !DILocation(line: 18, column: 10, scope: !8)
!56 = !DILocation(line: 18, column: 15, scope: !8)
!57 = !DILocation(line: 18, column: 13, scope: !8)
!58 = !DILocation(line: 19, column: 7, scope: !59)
!59 = distinct !DILexicalBlock(scope: !8, file: !1, line: 18, column: 20)
!60 = !DILocation(line: 20, column: 6, scope: !59)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i1", scope: !8, file: !1, line: 22, type: !7)
!62 = !DILocation(line: 22, column: 7, scope: !8)
!63 = !DILocation(line: 23, column: 3, scope: !8)
!64 = !DILocation(line: 23, column: 10, scope: !8)
!65 = !DILocation(line: 23, column: 15, scope: !8)
!66 = !DILocation(line: 23, column: 13, scope: !8)
!67 = !DILocation(line: 24, column: 7, scope: !68)
!68 = distinct !DILexicalBlock(scope: !8, file: !1, line: 23, column: 20)
!69 = !DILocation(line: 25, column: 6, scope: !68)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j1", scope: !8, file: !1, line: 27, type: !7)
!71 = !DILocation(line: 27, column: 7, scope: !8)
!72 = !DILocation(line: 28, column: 3, scope: !8)
!73 = !DILocation(line: 28, column: 10, scope: !8)
!74 = !DILocation(line: 28, column: 15, scope: !8)
!75 = !DILocation(line: 28, column: 20, scope: !8)
!76 = !DILocation(line: 28, column: 18, scope: !8)
!77 = !DILocation(line: 28, column: 13, scope: !8)
!78 = !DILocation(line: 29, column: 25, scope: !43)
!79 = !DILocation(line: 29, column: 27, scope: !43)
!80 = !DILocation(line: 29, column: 7, scope: !43)
!81 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !42)
!82 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !42)
!83 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !42)
!84 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !42)
!85 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !42)
!86 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !42)
!87 = !DILocation(line: 30, column: 9, scope: !43)
!88 = !DILocation(line: 31, column: 8, scope: !43)
!89 = !DILocation(line: 33, column: 1, scope: !8)
