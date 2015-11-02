; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@SIZE = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
  %1 = alloca i32, align 4
  store i32 %cond, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !22, metadata !23), !dbg !24
  %2 = load i32, i32* %1, align 4, !dbg !25
  %3 = icmp ne i32 %2, 0, !dbg !27
  br i1 %3, label %6, label %4, !dbg !28

; <label>:4                                       ; preds = %0
  br label %5, !dbg !29

; <label>:5                                       ; preds = %4
  call void (...) @__VERIFIER_error() #5, !dbg !30
  unreachable, !dbg !30

; <label>:6                                       ; preds = %0
  ret void, !dbg !32
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @linear_search(i32* %a, i32 %n, i32 %q) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %a, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !33, metadata !23), !dbg !34
  store i32 %n, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !35, metadata !23), !dbg !36
  store i32 %q, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !37, metadata !23), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %j, metadata !39, metadata !23), !dbg !40
  store i32 0, i32* %j, align 4, !dbg !40
  br label %5, !dbg !41

; <label>:5                                       ; preds = %19, %0
  %6 = load i32, i32* %j, align 4, !dbg !42
  %7 = load i32, i32* %3, align 4, !dbg !43
  %8 = icmp ult i32 %6, %7, !dbg !44
  br i1 %8, label %9, label %17, !dbg !45

; <label>:9                                       ; preds = %5
  %10 = load i32, i32* %j, align 4, !dbg !46
  %11 = zext i32 %10 to i64, !dbg !47
  %12 = load i32*, i32** %2, align 8, !dbg !47
  %13 = getelementptr inbounds i32, i32* %12, i64 %11, !dbg !47
  %14 = load i32, i32* %13, align 4, !dbg !47
  %15 = load i32, i32* %4, align 4, !dbg !48
  %16 = icmp ne i32 %14, %15, !dbg !49
  br label %17

; <label>:17                                      ; preds = %9, %5
  %18 = phi i1 [ false, %5 ], [ %16, %9 ]
  br i1 %18, label %19, label %22, !dbg !41

; <label>:19                                      ; preds = %17
  %20 = load i32, i32* %j, align 4, !dbg !50
  %21 = add i32 %20, 1, !dbg !50
  store i32 %21, i32* %j, align 4, !dbg !50
  br label %5, !dbg !41

; <label>:22                                      ; preds = %17
  %23 = load i32, i32* %j, align 4, !dbg !52
  %24 = load i32, i32* @SIZE, align 4, !dbg !54
  %25 = icmp ult i32 %23, %24, !dbg !55
  br i1 %25, label %26, label %27, !dbg !56

; <label>:26                                      ; preds = %22
  store i32 1, i32* %1, !dbg !57
  br label %28, !dbg !57

; <label>:27                                      ; preds = %22
  store i32 0, i32* %1, !dbg !58
  br label %28, !dbg !58

; <label>:28                                      ; preds = %27, %26
  %29 = load i32, i32* %1, !dbg !59
  ret i32 %29, !dbg !59
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %j.i = alloca i32, align 4
  %6 = alloca i8*
  %7 = call i32 (...) @__VERIFIER_nondet_uint(), !dbg !60
  %8 = udiv i32 %7, 8, !dbg !61
  %9 = add i32 %8, 1, !dbg !62
  store i32 %9, i32* @SIZE, align 4, !dbg !63
  %10 = load i32, i32* @SIZE, align 4, !dbg !64
  %11 = zext i32 %10 to i64, !dbg !65
  %12 = call i8* @llvm.stacksave(), !dbg !65
  store i8* %12, i8** %6, !dbg !65
  %13 = alloca i32, i64 %11, align 16, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %13, metadata !66, metadata !70), !dbg !71
  %14 = load i32, i32* @SIZE, align 4, !dbg !72
  %15 = udiv i32 %14, 2, !dbg !73
  %16 = zext i32 %15 to i64, !dbg !74
  %17 = getelementptr inbounds i32, i32* %13, i64 %16, !dbg !74
  store i32 3, i32* %17, align 4, !dbg !75
  %18 = load i32, i32* @SIZE, align 4, !dbg !76
  %19 = bitcast i32* %2 to i8*, !dbg !77
  call void @llvm.lifetime.start(i64 4, i8* %19), !dbg !77
  %20 = bitcast i32** %3 to i8*, !dbg !77
  call void @llvm.lifetime.start(i64 8, i8* %20), !dbg !77
  %21 = bitcast i32* %4 to i8*, !dbg !77
  call void @llvm.lifetime.start(i64 4, i8* %21), !dbg !77
  %22 = bitcast i32* %5 to i8*, !dbg !77
  call void @llvm.lifetime.start(i64 4, i8* %22), !dbg !77
  %23 = bitcast i32* %j.i to i8*, !dbg !77
  call void @llvm.lifetime.start(i64 4, i8* %23), !dbg !77
  store i32* %13, i32** %3, align 8, !dbg !77
  store i32 %18, i32* %4, align 4, !dbg !77
  store i32 3, i32* %5, align 4, !dbg !77
  store i32 0, i32* %j.i, align 4, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %1, metadata !22, metadata !23), !dbg !80
  br label %24, !dbg !82

; <label>:24                                      ; preds = %38, %0
  %25 = load i32, i32* %j.i, align 4, !dbg !83
  %26 = load i32, i32* %4, align 4, !dbg !84
  %27 = icmp ult i32 %25, %26, !dbg !85
  br i1 %27, label %28, label %36, !dbg !86

; <label>:28                                      ; preds = %24
  %29 = load i32, i32* %j.i, align 4, !dbg !87
  %30 = zext i32 %29 to i64, !dbg !88
  %31 = load i32*, i32** %3, align 8, !dbg !88
  %32 = getelementptr inbounds i32, i32* %31, i64 %30, !dbg !88
  %33 = load i32, i32* %32, align 4, !dbg !88
  %34 = load i32, i32* %5, align 4, !dbg !89
  %35 = icmp ne i32 %33, %34, !dbg !90
  br label %36, !dbg !77

; <label>:36                                      ; preds = %28, %24
  %37 = phi i1 [ false, %24 ], [ %35, %28 ], !dbg !77
  br i1 %37, label %38, label %41, !dbg !82

; <label>:38                                      ; preds = %36
  %39 = load i32, i32* %j.i, align 4, !dbg !91
  %40 = add i32 %39, 1, !dbg !91
  store i32 %40, i32* %j.i, align 4, !dbg !91
  br label %24, !dbg !82

; <label>:41                                      ; preds = %36
  %42 = load i32, i32* %j.i, align 4, !dbg !92
  %43 = load i32, i32* @SIZE, align 4, !dbg !93
  %44 = icmp ult i32 %42, %43, !dbg !94
  br i1 %44, label %45, label %46, !dbg !95

; <label>:45                                      ; preds = %41
  store i32 1, i32* %2, !dbg !96
  br label %linear_search.exit, !dbg !96

; <label>:46                                      ; preds = %41
  store i32 0, i32* %2, !dbg !97
  br label %linear_search.exit, !dbg !97

linear_search.exit:                               ; preds = %45, %46
  %47 = load i32, i32* %2, !dbg !98
  %48 = bitcast i32* %2 to i8*, !dbg !98
  call void @llvm.lifetime.end(i64 4, i8* %48), !dbg !98
  %49 = bitcast i32** %3 to i8*, !dbg !98
  call void @llvm.lifetime.end(i64 8, i8* %49), !dbg !98
  %50 = bitcast i32* %4 to i8*, !dbg !98
  call void @llvm.lifetime.end(i64 4, i8* %50), !dbg !98
  %51 = bitcast i32* %5 to i8*, !dbg !98
  call void @llvm.lifetime.end(i64 4, i8* %51), !dbg !98
  %52 = bitcast i32* %j.i to i8*, !dbg !98
  call void @llvm.lifetime.end(i64 4, i8* %52), !dbg !98
  %53 = bitcast i32* %1 to i8*, !dbg !99
  call void @llvm.lifetime.start(i64 4, i8* %53), !dbg !99
  store i32 %47, i32* %1, align 4, !dbg !99
  %54 = load i32, i32* %1, align 4, !dbg !100
  %55 = icmp ne i32 %54, 0, !dbg !101
  br i1 %55, label %__VERIFIER_assert.exit, label %56, !dbg !102

; <label>:56                                      ; preds = %linear_search.exit
  call void (...) @__VERIFIER_error() #6, !dbg !103
  unreachable, !dbg !103

__VERIFIER_assert.exit:                           ; preds = %linear_search.exit
  %57 = bitcast i32* %1 to i8*, !dbg !104
  call void @llvm.lifetime.end(i64 4, i8* %57), !dbg !104
  %58 = load i8*, i8** %6, !dbg !105
  call void @llvm.stackrestore(i8* %58), !dbg !105
  call void @llvm.dbg.declare(metadata i32** %3, metadata !33, metadata !23), !dbg !106
  call void @llvm.dbg.declare(metadata i32* %4, metadata !35, metadata !23), !dbg !107
  call void @llvm.dbg.declare(metadata i32* %5, metadata !37, metadata !23), !dbg !108
  call void @llvm.dbg.declare(metadata i32* %j.i, metadata !39, metadata !23), !dbg !78
  ret i32 0, !dbg !105
}

declare i32 @__VERIFIER_nondet_uint(...) #3

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3, globals: !15)
!1 = !DIFile(filename: "programs/svcomp16/loops/linear_sea.ch_true-unreach-call.i", directory: ".")
!2 = !{}
!3 = !{!4, !8, !12}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "linear_search", scope: !1, file: !1, line: 11, type: !9, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32*, i32, i32)* @linear_search, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!7, !11, !7, !7}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!12 = !DISubprogram(name: "main", scope: !1, file: !1, line: 19, type: !13, isLocal: false, isDefinition: true, scopeLine: 19, isOptimized: false, function: i32 ()* @main, variables: !2)
!13 = !DISubroutineType(types: !14)
!14 = !{!7}
!15 = !{!16}
!16 = !DIGlobalVariable(name: "SIZE", scope: !0, file: !1, line: 10, type: !17, isLocal: false, isDefinition: true, variable: i32* @SIZE)
!17 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!18 = !{i32 2, !"Dwarf Version", i32 2}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"PIC Level", i32 2}
!21 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 3, type: !7)
!23 = !DIExpression()
!24 = !DILocation(line: 3, column: 28, scope: !4)
!25 = !DILocation(line: 4, column: 9, scope: !26)
!26 = distinct !DILexicalBlock(scope: !4, file: !1, line: 4, column: 7)
!27 = !DILocation(line: 4, column: 8, scope: !26)
!28 = !DILocation(line: 4, column: 7, scope: !4)
!29 = !DILocation(line: 4, column: 16, scope: !26)
!30 = !DILocation(line: 5, column: 12, scope: !31)
!31 = distinct !DILexicalBlock(scope: !26, file: !1, line: 4, column: 16)
!32 = !DILocation(line: 7, column: 3, scope: !4)
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !8, file: !1, line: 11, type: !11)
!34 = !DILocation(line: 11, column: 24, scope: !8)
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !8, file: !1, line: 11, type: !7)
!36 = !DILocation(line: 11, column: 31, scope: !8)
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "q", arg: 3, scope: !8, file: !1, line: 11, type: !7)
!38 = !DILocation(line: 11, column: 38, scope: !8)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 12, type: !17)
!40 = !DILocation(line: 12, column: 16, scope: !8)
!41 = !DILocation(line: 13, column: 3, scope: !8)
!42 = !DILocation(line: 13, column: 10, scope: !8)
!43 = !DILocation(line: 13, column: 12, scope: !8)
!44 = !DILocation(line: 13, column: 11, scope: !8)
!45 = !DILocation(line: 13, column: 14, scope: !8)
!46 = !DILocation(line: 13, column: 19, scope: !8)
!47 = !DILocation(line: 13, column: 17, scope: !8)
!48 = !DILocation(line: 13, column: 23, scope: !8)
!49 = !DILocation(line: 13, column: 21, scope: !8)
!50 = !DILocation(line: 14, column: 4, scope: !51)
!51 = distinct !DILexicalBlock(scope: !8, file: !1, line: 13, column: 26)
!52 = !DILocation(line: 16, column: 7, scope: !53)
!53 = distinct !DILexicalBlock(scope: !8, file: !1, line: 16, column: 7)
!54 = !DILocation(line: 16, column: 9, scope: !53)
!55 = !DILocation(line: 16, column: 8, scope: !53)
!56 = !DILocation(line: 16, column: 7, scope: !8)
!57 = !DILocation(line: 16, column: 15, scope: !53)
!58 = !DILocation(line: 17, column: 8, scope: !53)
!59 = !DILocation(line: 18, column: 1, scope: !8)
!60 = !DILocation(line: 20, column: 9, scope: !12)
!61 = !DILocation(line: 20, column: 33, scope: !12)
!62 = !DILocation(line: 20, column: 36, scope: !12)
!63 = !DILocation(line: 20, column: 7, scope: !12)
!64 = !DILocation(line: 21, column: 9, scope: !12)
!65 = !DILocation(line: 21, column: 3, scope: !12)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !12, file: !1, line: 21, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, align: 32, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: -1)
!70 = !DIExpression(DW_OP_deref)
!71 = !DILocation(line: 21, column: 7, scope: !12)
!72 = !DILocation(line: 22, column: 5, scope: !12)
!73 = !DILocation(line: 22, column: 9, scope: !12)
!74 = !DILocation(line: 22, column: 3, scope: !12)
!75 = !DILocation(line: 22, column: 12, scope: !12)
!76 = !DILocation(line: 23, column: 37, scope: !12)
!77 = !DILocation(line: 23, column: 21, scope: !12)
!78 = !DILocation(line: 12, column: 16, scope: !8, inlinedAt: !79)
!79 = distinct !DILocation(line: 23, column: 21, scope: !12)
!80 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !81)
!81 = distinct !DILocation(line: 23, column: 3, scope: !12)
!82 = !DILocation(line: 13, column: 3, scope: !8, inlinedAt: !79)
!83 = !DILocation(line: 13, column: 10, scope: !8, inlinedAt: !79)
!84 = !DILocation(line: 13, column: 12, scope: !8, inlinedAt: !79)
!85 = !DILocation(line: 13, column: 11, scope: !8, inlinedAt: !79)
!86 = !DILocation(line: 13, column: 14, scope: !8, inlinedAt: !79)
!87 = !DILocation(line: 13, column: 19, scope: !8, inlinedAt: !79)
!88 = !DILocation(line: 13, column: 17, scope: !8, inlinedAt: !79)
!89 = !DILocation(line: 13, column: 23, scope: !8, inlinedAt: !79)
!90 = !DILocation(line: 13, column: 21, scope: !8, inlinedAt: !79)
!91 = !DILocation(line: 14, column: 4, scope: !51, inlinedAt: !79)
!92 = !DILocation(line: 16, column: 7, scope: !53, inlinedAt: !79)
!93 = !DILocation(line: 16, column: 9, scope: !53, inlinedAt: !79)
!94 = !DILocation(line: 16, column: 8, scope: !53, inlinedAt: !79)
!95 = !DILocation(line: 16, column: 7, scope: !8, inlinedAt: !79)
!96 = !DILocation(line: 16, column: 15, scope: !53, inlinedAt: !79)
!97 = !DILocation(line: 17, column: 8, scope: !53, inlinedAt: !79)
!98 = !DILocation(line: 18, column: 1, scope: !8, inlinedAt: !79)
!99 = !DILocation(line: 23, column: 3, scope: !12)
!100 = !DILocation(line: 4, column: 9, scope: !26, inlinedAt: !81)
!101 = !DILocation(line: 4, column: 8, scope: !26, inlinedAt: !81)
!102 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !81)
!103 = !DILocation(line: 5, column: 12, scope: !31, inlinedAt: !81)
!104 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !81)
!105 = !DILocation(line: 24, column: 1, scope: !12)
!106 = !DILocation(line: 11, column: 24, scope: !8, inlinedAt: !79)
!107 = !DILocation(line: 11, column: 31, scope: !8, inlinedAt: !79)
!108 = !DILocation(line: 11, column: 38, scope: !8, inlinedAt: !79)
