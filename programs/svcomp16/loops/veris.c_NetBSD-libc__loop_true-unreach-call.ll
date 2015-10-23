; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@tmp = common global i32* null, align 8

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
  call void (...) @__VERIFIER_error() #4, !dbg !30
  unreachable, !dbg !30

; <label>:6                                       ; preds = %0
  ret void, !dbg !32
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @glob2(i32* %pathbuf, i32* %pathlim) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %p = alloca i32*, align 8
  store i32* %pathbuf, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !33, metadata !23), !dbg !34
  store i32* %pathlim, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !35, metadata !23), !dbg !36
  call void @llvm.dbg.declare(metadata i32** %p, metadata !37, metadata !23), !dbg !38
  %4 = load i32*, i32** %2, align 8, !dbg !39
  store i32* %4, i32** %p, align 8, !dbg !41
  call void @llvm.dbg.declare(metadata i32* %1, metadata !22, metadata !23), !dbg !42
  br label %5, !dbg !46

; <label>:5                                       ; preds = %20, %0
  %6 = load i32*, i32** %p, align 8, !dbg !47
  %7 = load i32*, i32** %3, align 8, !dbg !48
  %8 = icmp ule i32* %6, %7, !dbg !49
  br i1 %8, label %9, label %23, !dbg !50

; <label>:9                                       ; preds = %5
  %10 = load i32*, i32** %p, align 8, !dbg !51
  %11 = load i32*, i32** @tmp, align 8, !dbg !52
  %12 = icmp ule i32* %10, %11, !dbg !53
  %13 = zext i1 %12 to i32, !dbg !53
  %14 = bitcast i32* %1 to i8*, !dbg !54
  call void @llvm.lifetime.start(i64 4, i8* %14), !dbg !54
  store i32 %13, i32* %1, align 4, !dbg !54
  %15 = load i32, i32* %1, align 4, !dbg !55
  %16 = icmp ne i32 %15, 0, !dbg !56
  br i1 %16, label %__VERIFIER_assert.exit, label %17, !dbg !57

; <label>:17                                      ; preds = %9
  call void (...) @__VERIFIER_error() #5, !dbg !58
  unreachable, !dbg !58

__VERIFIER_assert.exit:                           ; preds = %9
  %18 = bitcast i32* %1 to i8*, !dbg !59
  call void @llvm.lifetime.end(i64 4, i8* %18), !dbg !59
  %19 = load i32*, i32** %p, align 8, !dbg !60
  store i32 1, i32* %19, align 4, !dbg !61
  br label %20, !dbg !62

; <label>:20                                      ; preds = %__VERIFIER_assert.exit
  %21 = load i32*, i32** %p, align 8, !dbg !63
  %22 = getelementptr inbounds i32, i32* %21, i32 1, !dbg !63
  store i32* %22, i32** %p, align 8, !dbg !63
  br label %5, !dbg !64

; <label>:23                                      ; preds = %5
  ret i32 0, !dbg !65
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %p.i = alloca i32*, align 8
  %4 = alloca i32, align 4
  %pathbuf = alloca [2 x i32], align 4
  %bound = alloca i32*, align 8
  store i32 0, i32* %4
  call void @llvm.dbg.declare(metadata [2 x i32]* %pathbuf, metadata !66, metadata !23), !dbg !70
  call void @llvm.dbg.declare(metadata i32** %bound, metadata !71, metadata !23), !dbg !72
  %5 = getelementptr inbounds [2 x i32], [2 x i32]* %pathbuf, i32 0, i32 0, !dbg !73
  %6 = getelementptr inbounds i32, i32* %5, i64 2, !dbg !74
  %7 = getelementptr inbounds i32, i32* %6, i64 -1, !dbg !75
  store i32* %7, i32** %bound, align 8, !dbg !72
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %pathbuf, i32 0, i32 0, !dbg !76
  %9 = getelementptr inbounds i32, i32* %8, i64 2, !dbg !77
  %10 = getelementptr inbounds i32, i32* %9, i64 -1, !dbg !78
  store i32* %10, i32** @tmp, align 8, !dbg !79
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %pathbuf, i32 0, i32 0, !dbg !80
  %12 = load i32*, i32** %bound, align 8, !dbg !81
  %13 = bitcast i32** %2 to i8*, !dbg !82
  call void @llvm.lifetime.start(i64 8, i8* %13), !dbg !82
  %14 = bitcast i32** %3 to i8*, !dbg !82
  call void @llvm.lifetime.start(i64 8, i8* %14), !dbg !82
  %15 = bitcast i32** %p.i to i8*, !dbg !82
  call void @llvm.lifetime.start(i64 8, i8* %15), !dbg !82
  store i32* %11, i32** %2, align 8, !dbg !82
  store i32* %12, i32** %3, align 8, !dbg !82
  %16 = load i32*, i32** %2, align 8, !dbg !83
  store i32* %16, i32** %p.i, align 8, !dbg !85
  br label %17, !dbg !86

; <label>:17                                      ; preds = %__VERIFIER_assert.exit.i, %0
  %18 = load i32*, i32** %p.i, align 8, !dbg !87
  %19 = load i32*, i32** %3, align 8, !dbg !88
  %20 = icmp ule i32* %18, %19, !dbg !89
  br i1 %20, label %21, label %glob2.exit, !dbg !90

; <label>:21                                      ; preds = %17
  %22 = load i32*, i32** %p.i, align 8, !dbg !91
  %23 = load i32*, i32** @tmp, align 8, !dbg !92
  %24 = icmp ule i32* %22, %23, !dbg !93
  %25 = zext i1 %24 to i32, !dbg !93
  %26 = bitcast i32* %1 to i8*, !dbg !94
  call void @llvm.lifetime.start(i64 4, i8* %26) #3, !dbg !94
  store i32 %25, i32* %1, align 4, !dbg !94
  %27 = load i32, i32* %1, align 4, !dbg !95
  %28 = icmp ne i32 %27, 0, !dbg !97
  br i1 %28, label %__VERIFIER_assert.exit.i, label %29, !dbg !98

; <label>:29                                      ; preds = %21
  call void (...) @__VERIFIER_error() #5, !dbg !99
  unreachable, !dbg !99

__VERIFIER_assert.exit.i:                         ; preds = %21
  %30 = bitcast i32* %1 to i8*, !dbg !100
  call void @llvm.lifetime.end(i64 4, i8* %30) #3, !dbg !100
  %31 = load i32*, i32** %p.i, align 8, !dbg !101
  store i32 1, i32* %31, align 4, !dbg !102
  %32 = load i32*, i32** %p.i, align 8, !dbg !103
  %33 = getelementptr inbounds i32, i32* %32, i32 1, !dbg !103
  store i32* %33, i32** %p.i, align 8, !dbg !103
  br label %17, !dbg !104

glob2.exit:                                       ; preds = %17
  %34 = bitcast i32** %2 to i8*, !dbg !105
  call void @llvm.lifetime.end(i64 8, i8* %34), !dbg !105
  %35 = bitcast i32** %3 to i8*, !dbg !105
  call void @llvm.lifetime.end(i64 8, i8* %35), !dbg !105
  %36 = bitcast i32** %p.i to i8*, !dbg !105
  call void @llvm.lifetime.end(i64 8, i8* %36), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %1, metadata !22, metadata !23), !dbg !106
  call void @llvm.dbg.declare(metadata i32** %2, metadata !33, metadata !23), !dbg !107
  call void @llvm.dbg.declare(metadata i32** %3, metadata !35, metadata !23), !dbg !108
  call void @llvm.dbg.declare(metadata i32** %p.i, metadata !37, metadata !23), !dbg !109
  ret i32 0, !dbg !110
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }
attributes #5 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3, globals: !16)
!1 = !DIFile(filename: "veris.c_NetBSD-libc__loop_true-unreach-call.i", directory: "/Users/asloane/Projects/SV-COMP/sv-benchmarks/c/loops")
!2 = !{}
!3 = !{!4, !8, !13}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "glob2", scope: !1, file: !1, line: 14, type: !9, isLocal: false, isDefinition: true, scopeLine: 15, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32*, i32*)* @glob2, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!7, !11, !11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "Char", file: !1, line: 9, baseType: !7)
!13 = !DISubprogram(name: "main", scope: !1, file: !1, line: 27, type: !14, isLocal: false, isDefinition: true, scopeLine: 28, isOptimized: false, function: i32 ()* @main, variables: !2)
!14 = !DISubroutineType(types: !15)
!15 = !{!7}
!16 = !{!17}
!17 = !DIGlobalVariable(name: "tmp", scope: !0, file: !1, line: 12, type: !11, isLocal: false, isDefinition: true, variable: i32** @tmp)
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
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pathbuf", arg: 1, scope: !8, file: !1, line: 14, type: !11)
!34 = !DILocation(line: 14, column: 18, scope: !8)
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pathlim", arg: 2, scope: !8, file: !1, line: 14, type: !11)
!36 = !DILocation(line: 14, column: 33, scope: !8)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !8, file: !1, line: 16, type: !11)
!38 = !DILocation(line: 16, column: 9, scope: !8)
!39 = !DILocation(line: 18, column: 12, scope: !40)
!40 = distinct !DILexicalBlock(scope: !8, file: !1, line: 18, column: 3)
!41 = !DILocation(line: 18, column: 10, scope: !40)
!42 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !43)
!43 = distinct !DILocation(line: 20, column: 5, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 18, column: 40)
!45 = distinct !DILexicalBlock(scope: !40, file: !1, line: 18, column: 3)
!46 = !DILocation(line: 18, column: 8, scope: !40)
!47 = !DILocation(line: 18, column: 21, scope: !45)
!48 = !DILocation(line: 18, column: 26, scope: !45)
!49 = !DILocation(line: 18, column: 23, scope: !45)
!50 = !DILocation(line: 18, column: 3, scope: !40)
!51 = !DILocation(line: 20, column: 23, scope: !44)
!52 = !DILocation(line: 20, column: 26, scope: !44)
!53 = !DILocation(line: 20, column: 24, scope: !44)
!54 = !DILocation(line: 20, column: 5, scope: !44)
!55 = !DILocation(line: 4, column: 9, scope: !26, inlinedAt: !43)
!56 = !DILocation(line: 4, column: 8, scope: !26, inlinedAt: !43)
!57 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !43)
!58 = !DILocation(line: 5, column: 12, scope: !31, inlinedAt: !43)
!59 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !43)
!60 = !DILocation(line: 21, column: 6, scope: !44)
!61 = !DILocation(line: 21, column: 8, scope: !44)
!62 = !DILocation(line: 22, column: 3, scope: !44)
!63 = !DILocation(line: 18, column: 36, scope: !45)
!64 = !DILocation(line: 18, column: 3, scope: !45)
!65 = !DILocation(line: 24, column: 3, scope: !8)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pathbuf", scope: !13, file: !1, line: 29, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, align: 32, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 2)
!70 = !DILocation(line: 29, column: 8, scope: !13)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bound", scope: !13, file: !1, line: 31, type: !11)
!72 = !DILocation(line: 31, column: 9, scope: !13)
!73 = !DILocation(line: 31, column: 17, scope: !13)
!74 = !DILocation(line: 31, column: 25, scope: !13)
!75 = !DILocation(line: 31, column: 60, scope: !13)
!76 = !DILocation(line: 33, column: 9, scope: !13)
!77 = !DILocation(line: 33, column: 17, scope: !13)
!78 = !DILocation(line: 33, column: 52, scope: !13)
!79 = !DILocation(line: 33, column: 7, scope: !13)
!80 = !DILocation(line: 35, column: 10, scope: !13)
!81 = !DILocation(line: 35, column: 19, scope: !13)
!82 = !DILocation(line: 35, column: 3, scope: !13)
!83 = !DILocation(line: 18, column: 12, scope: !40, inlinedAt: !84)
!84 = distinct !DILocation(line: 35, column: 3, scope: !13)
!85 = !DILocation(line: 18, column: 10, scope: !40, inlinedAt: !84)
!86 = !DILocation(line: 18, column: 8, scope: !40, inlinedAt: !84)
!87 = !DILocation(line: 18, column: 21, scope: !45, inlinedAt: !84)
!88 = !DILocation(line: 18, column: 26, scope: !45, inlinedAt: !84)
!89 = !DILocation(line: 18, column: 23, scope: !45, inlinedAt: !84)
!90 = !DILocation(line: 18, column: 3, scope: !40, inlinedAt: !84)
!91 = !DILocation(line: 20, column: 23, scope: !44, inlinedAt: !84)
!92 = !DILocation(line: 20, column: 26, scope: !44, inlinedAt: !84)
!93 = !DILocation(line: 20, column: 24, scope: !44, inlinedAt: !84)
!94 = !DILocation(line: 20, column: 5, scope: !44, inlinedAt: !84)
!95 = !DILocation(line: 4, column: 9, scope: !26, inlinedAt: !96)
!96 = distinct !DILocation(line: 20, column: 5, scope: !44, inlinedAt: !84)
!97 = !DILocation(line: 4, column: 8, scope: !26, inlinedAt: !96)
!98 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !96)
!99 = !DILocation(line: 5, column: 12, scope: !31, inlinedAt: !96)
!100 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !96)
!101 = !DILocation(line: 21, column: 6, scope: !44, inlinedAt: !84)
!102 = !DILocation(line: 21, column: 8, scope: !44, inlinedAt: !84)
!103 = !DILocation(line: 18, column: 36, scope: !45, inlinedAt: !84)
!104 = !DILocation(line: 18, column: 3, scope: !45, inlinedAt: !84)
!105 = !DILocation(line: 24, column: 3, scope: !8, inlinedAt: !84)
!106 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !96)
!107 = !DILocation(line: 14, column: 18, scope: !8, inlinedAt: !84)
!108 = !DILocation(line: 14, column: 33, scope: !8, inlinedAt: !84)
!109 = !DILocation(line: 16, column: 9, scope: !8, inlinedAt: !84)
!110 = !DILocation(line: 37, column: 3, scope: !13)
