; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind ssp uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
  %1 = alloca i32, align 4
  store i32 %cond, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !18, metadata !19), !dbg !20
  %2 = load i32, i32* %1, align 4, !dbg !21
  %3 = icmp ne i32 %2, 0, !dbg !23
  br i1 %3, label %6, label %4, !dbg !24

; <label>:4                                       ; preds = %0
  br label %5, !dbg !25

; <label>:5                                       ; preds = %4
  call void @__VERIFIER_error(), !dbg !26
  br label %6, !dbg !28

; <label>:6                                       ; preds = %5, %0
  ret void, !dbg !29
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @__VERIFIER_error() #2

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %c3 = alloca i32, align 4
  %n = alloca i32, align 4
  %v = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %2
  store i32 %argc, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !30, metadata !19), !dbg !31
  store i8** %argv, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !32, metadata !19), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %c1, metadata !34, metadata !19), !dbg !35
  store i32 4000, i32* %c1, align 4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %c2, metadata !36, metadata !19), !dbg !37
  store i32 2000, i32* %c2, align 4, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %c3, metadata !38, metadata !19), !dbg !39
  store i32 10000, i32* %c3, align 4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %n, metadata !40, metadata !19), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %v, metadata !42, metadata !19), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %i, metadata !44, metadata !19), !dbg !45
  call void @llvm.dbg.declare(metadata i32* %k, metadata !46, metadata !19), !dbg !47
  call void @llvm.dbg.declare(metadata i32* %j, metadata !48, metadata !19), !dbg !49
  %5 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !50
  store i32 %5, i32* %n, align 4, !dbg !51
  %6 = load i32, i32* %n, align 4, !dbg !52
  %7 = icmp sle i32 0, %6, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %1, metadata !18, metadata !19), !dbg !54
  br i1 %7, label %8, label %11, !dbg !57

; <label>:8                                       ; preds = %0
  %9 = load i32, i32* %n, align 4, !dbg !58
  %10 = icmp slt i32 %9, 10, !dbg !59
  br label %11

; <label>:11                                      ; preds = %8, %0
  %12 = phi i1 [ false, %0 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32, !dbg !57
  call void @__VERIFIER_assume(i32 %13), !dbg !60
  store i32 0, i32* %k, align 4, !dbg !61
  store i32 0, i32* %i, align 4, !dbg !62
  br label %14, !dbg !63

; <label>:14                                      ; preds = %48, %11
  %15 = load i32, i32* %i, align 4, !dbg !64
  %16 = load i32, i32* %n, align 4, !dbg !65
  %17 = icmp slt i32 %15, %16, !dbg !66
  br i1 %17, label %18, label %49, !dbg !63

; <label>:18                                      ; preds = %14
  %19 = load i32, i32* %i, align 4, !dbg !67
  %20 = add nsw i32 %19, 1, !dbg !67
  store i32 %20, i32* %i, align 4, !dbg !67
  %21 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !69
  store i32 %21, i32* %v, align 4, !dbg !70
  %22 = load i32, i32* %v, align 4, !dbg !71
  %23 = icmp sle i32 0, %22, !dbg !72
  br i1 %23, label %24, label %27, !dbg !73

; <label>:24                                      ; preds = %18
  %25 = load i32, i32* %n, align 4, !dbg !74
  %26 = icmp slt i32 %25, 2, !dbg !75
  br label %27

; <label>:27                                      ; preds = %24, %18
  %28 = phi i1 [ false, %18 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !73
  call void @__VERIFIER_assume(i32 %29), !dbg !76
  %30 = load i32, i32* %v, align 4, !dbg !77
  %31 = icmp eq i32 %30, 0, !dbg !79
  br i1 %31, label %32, label %36, !dbg !80

; <label>:32                                      ; preds = %27
  %33 = load i32, i32* %c1, align 4, !dbg !81
  %34 = load i32, i32* %k, align 4, !dbg !82
  %35 = add nsw i32 %34, %33, !dbg !82
  store i32 %35, i32* %k, align 4, !dbg !82
  br label %48, !dbg !83

; <label>:36                                      ; preds = %27
  %37 = load i32, i32* %v, align 4, !dbg !84
  %38 = icmp eq i32 %37, 1, !dbg !86
  br i1 %38, label %39, label %43, !dbg !87

; <label>:39                                      ; preds = %36
  %40 = load i32, i32* %c2, align 4, !dbg !88
  %41 = load i32, i32* %k, align 4, !dbg !89
  %42 = add nsw i32 %41, %40, !dbg !89
  store i32 %42, i32* %k, align 4, !dbg !89
  br label %47, !dbg !90

; <label>:43                                      ; preds = %36
  %44 = load i32, i32* %c3, align 4, !dbg !91
  %45 = load i32, i32* %k, align 4, !dbg !92
  %46 = add nsw i32 %45, %44, !dbg !92
  store i32 %46, i32* %k, align 4, !dbg !92
  br label %47

; <label>:47                                      ; preds = %43, %39
  br label %48

; <label>:48                                      ; preds = %47, %32
  br label %14, !dbg !63

; <label>:49                                      ; preds = %14
  store i32 0, i32* %j, align 4, !dbg !93
  br label %50, !dbg !94

; <label>:50                                      ; preds = %__VERIFIER_assert.exit, %49
  %51 = load i32, i32* %j, align 4, !dbg !95
  %52 = load i32, i32* %n, align 4, !dbg !96
  %53 = icmp slt i32 %51, %52, !dbg !97
  br i1 %53, label %54, label %67, !dbg !94

; <label>:54                                      ; preds = %50
  %55 = load i32, i32* %k, align 4, !dbg !98
  %56 = icmp sgt i32 %55, 0, !dbg !99
  %57 = zext i1 %56 to i32, !dbg !99
  %58 = bitcast i32* %1 to i8*, !dbg !100
  call void @llvm.lifetime.start(i64 4, i8* %58), !dbg !100
  store i32 %57, i32* %1, align 4, !dbg !100
  %59 = load i32, i32* %1, align 4, !dbg !101
  %60 = icmp ne i32 %59, 0, !dbg !102
  br i1 %60, label %__VERIFIER_assert.exit, label %61, !dbg !103

; <label>:61                                      ; preds = %54
  call void @__VERIFIER_error() #3, !dbg !104
  br label %__VERIFIER_assert.exit, !dbg !105

__VERIFIER_assert.exit:                           ; preds = %54, %61
  %62 = bitcast i32* %1 to i8*, !dbg !106
  call void @llvm.lifetime.end(i64 4, i8* %62), !dbg !106
  %63 = load i32, i32* %j, align 4, !dbg !107
  %64 = add nsw i32 %63, 1, !dbg !107
  store i32 %64, i32* %j, align 4, !dbg !107
  %65 = load i32, i32* %k, align 4, !dbg !108
  %66 = add nsw i32 %65, -1, !dbg !108
  store i32 %66, i32* %k, align 4, !dbg !108
  br label %50, !dbg !94

; <label>:67                                      ; preds = %50
  ret i32 0, !dbg !109
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
!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "../../../sv-comp-2016/c/loop-invgen/large_const_true-unreach-call.i", directory: "/Users/franck/development/perentiemq/programs/svcomp16")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !9, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i8**)* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!7, !7, !11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !{i32 2, !"Dwarf Version", i32 2}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"PIC Level", i32 2}
!17 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 3, type: !7)
!19 = !DIExpression()
!20 = !DILocation(line: 3, column: 28, scope: !4)
!21 = !DILocation(line: 4, column: 9, scope: !22)
!22 = distinct !DILexicalBlock(scope: !4, file: !1, line: 4, column: 7)
!23 = !DILocation(line: 4, column: 8, scope: !22)
!24 = !DILocation(line: 4, column: 7, scope: !4)
!25 = !DILocation(line: 4, column: 16, scope: !22)
!26 = !DILocation(line: 5, column: 12, scope: !27)
!27 = distinct !DILexicalBlock(scope: !22, file: !1, line: 4, column: 16)
!28 = !DILocation(line: 6, column: 3, scope: !27)
!29 = !DILocation(line: 7, column: 3, scope: !4)
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !8, file: !1, line: 10, type: !7)
!31 = !DILocation(line: 10, column: 14, scope: !8)
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !8, file: !1, line: 10, type: !11)
!33 = !DILocation(line: 10, column: 26, scope: !8)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c1", scope: !8, file: !1, line: 11, type: !7)
!35 = !DILocation(line: 11, column: 7, scope: !8)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c2", scope: !8, file: !1, line: 12, type: !7)
!37 = !DILocation(line: 12, column: 7, scope: !8)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c3", scope: !8, file: !1, line: 13, type: !7)
!39 = !DILocation(line: 13, column: 7, scope: !8)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !8, file: !1, line: 14, type: !7)
!41 = !DILocation(line: 14, column: 7, scope: !8)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !8, file: !1, line: 14, type: !7)
!43 = !DILocation(line: 14, column: 10, scope: !8)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 15, type: !7)
!45 = !DILocation(line: 15, column: 7, scope: !8)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !8, file: !1, line: 15, type: !7)
!47 = !DILocation(line: 15, column: 10, scope: !8)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 15, type: !7)
!49 = !DILocation(line: 15, column: 13, scope: !8)
!50 = !DILocation(line: 16, column: 7, scope: !8)
!51 = !DILocation(line: 16, column: 5, scope: !8)
!52 = !DILocation(line: 17, column: 26, scope: !8)
!53 = !DILocation(line: 17, column: 23, scope: !8)
!54 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !55)
!55 = distinct !DILocation(line: 33, column: 5, scope: !56)
!56 = distinct !DILexicalBlock(scope: !8, file: !1, line: 32, column: 18)
!57 = !DILocation(line: 17, column: 28, scope: !8)
!58 = !DILocation(line: 17, column: 31, scope: !8)
!59 = !DILocation(line: 17, column: 33, scope: !8)
!60 = !DILocation(line: 17, column: 3, scope: !8)
!61 = !DILocation(line: 18, column: 5, scope: !8)
!62 = !DILocation(line: 19, column: 5, scope: !8)
!63 = !DILocation(line: 20, column: 3, scope: !8)
!64 = !DILocation(line: 20, column: 10, scope: !8)
!65 = !DILocation(line: 20, column: 14, scope: !8)
!66 = !DILocation(line: 20, column: 12, scope: !8)
!67 = !DILocation(line: 21, column: 6, scope: !68)
!68 = distinct !DILexicalBlock(scope: !8, file: !1, line: 20, column: 18)
!69 = !DILocation(line: 22, column: 9, scope: !68)
!70 = !DILocation(line: 22, column: 7, scope: !68)
!71 = !DILocation(line: 23, column: 28, scope: !68)
!72 = !DILocation(line: 23, column: 25, scope: !68)
!73 = !DILocation(line: 23, column: 30, scope: !68)
!74 = !DILocation(line: 23, column: 33, scope: !68)
!75 = !DILocation(line: 23, column: 35, scope: !68)
!76 = !DILocation(line: 23, column: 5, scope: !68)
!77 = !DILocation(line: 24, column: 9, scope: !78)
!78 = distinct !DILexicalBlock(scope: !68, file: !1, line: 24, column: 9)
!79 = !DILocation(line: 24, column: 11, scope: !78)
!80 = !DILocation(line: 24, column: 9, scope: !68)
!81 = !DILocation(line: 25, column: 12, scope: !78)
!82 = !DILocation(line: 25, column: 9, scope: !78)
!83 = !DILocation(line: 25, column: 7, scope: !78)
!84 = !DILocation(line: 26, column: 14, scope: !85)
!85 = distinct !DILexicalBlock(scope: !78, file: !1, line: 26, column: 14)
!86 = !DILocation(line: 26, column: 16, scope: !85)
!87 = !DILocation(line: 26, column: 14, scope: !78)
!88 = !DILocation(line: 27, column: 12, scope: !85)
!89 = !DILocation(line: 27, column: 9, scope: !85)
!90 = !DILocation(line: 27, column: 7, scope: !85)
!91 = !DILocation(line: 29, column: 12, scope: !85)
!92 = !DILocation(line: 29, column: 9, scope: !85)
!93 = !DILocation(line: 31, column: 5, scope: !8)
!94 = !DILocation(line: 32, column: 3, scope: !8)
!95 = !DILocation(line: 32, column: 10, scope: !8)
!96 = !DILocation(line: 32, column: 14, scope: !8)
!97 = !DILocation(line: 32, column: 12, scope: !8)
!98 = !DILocation(line: 33, column: 23, scope: !56)
!99 = !DILocation(line: 33, column: 25, scope: !56)
!100 = !DILocation(line: 33, column: 5, scope: !56)
!101 = !DILocation(line: 4, column: 9, scope: !22, inlinedAt: !55)
!102 = !DILocation(line: 4, column: 8, scope: !22, inlinedAt: !55)
!103 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !55)
!104 = !DILocation(line: 5, column: 12, scope: !27, inlinedAt: !55)
!105 = !DILocation(line: 6, column: 3, scope: !27, inlinedAt: !55)
!106 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !55)
!107 = !DILocation(line: 34, column: 6, scope: !56)
!108 = !DILocation(line: 35, column: 6, scope: !56)
!109 = !DILocation(line: 37, column: 3, scope: !8)
