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

; <label>:5                                       ; preds = %25, %0
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
  br i1 %18, label %19, label %26, !dbg !41

; <label>:19                                      ; preds = %17
  %20 = load i32, i32* %j, align 4, !dbg !50
  %21 = add i32 %20, 1, !dbg !50
  store i32 %21, i32* %j, align 4, !dbg !50
  %22 = load i32, i32* %j, align 4, !dbg !52
  %23 = icmp eq i32 %22, 20, !dbg !54
  br i1 %23, label %24, label %25, !dbg !55

; <label>:24                                      ; preds = %19
  store i32 -1, i32* %j, align 4, !dbg !56
  br label %25, !dbg !57

; <label>:25                                      ; preds = %24, %19
  br label %5, !dbg !41

; <label>:26                                      ; preds = %17
  %27 = load i32, i32* %j, align 4, !dbg !58
  %28 = load i32, i32* @SIZE, align 4, !dbg !60
  %29 = icmp ult i32 %27, %28, !dbg !61
  br i1 %29, label %30, label %31, !dbg !62

; <label>:30                                      ; preds = %26
  store i32 1, i32* %1, !dbg !63
  br label %32, !dbg !63

; <label>:31                                      ; preds = %26
  store i32 0, i32* %1, !dbg !64
  br label %32, !dbg !64

; <label>:32                                      ; preds = %31, %30
  %33 = load i32, i32* %1, !dbg !65
  ret i32 %33, !dbg !65
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
  %7 = call i32 (...) @__VERIFIER_nondet_uint(), !dbg !66
  %8 = udiv i32 %7, 2, !dbg !67
  %9 = add i32 %8, 1, !dbg !68
  store i32 %9, i32* @SIZE, align 4, !dbg !69
  %10 = load i32, i32* @SIZE, align 4, !dbg !70
  %11 = zext i32 %10 to i64, !dbg !71
  %12 = call i8* @llvm.stacksave(), !dbg !71
  store i8* %12, i8** %6, !dbg !71
  %13 = alloca i32, i64 %11, align 16, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %13, metadata !72, metadata !76), !dbg !77
  %14 = load i32, i32* @SIZE, align 4, !dbg !78
  %15 = udiv i32 %14, 2, !dbg !79
  %16 = zext i32 %15 to i64, !dbg !80
  %17 = getelementptr inbounds i32, i32* %13, i64 %16, !dbg !80
  store i32 3, i32* %17, align 4, !dbg !81
  %18 = load i32, i32* @SIZE, align 4, !dbg !82
  %19 = bitcast i32* %2 to i8*, !dbg !83
  call void @llvm.lifetime.start(i64 4, i8* %19), !dbg !83
  %20 = bitcast i32** %3 to i8*, !dbg !83
  call void @llvm.lifetime.start(i64 8, i8* %20), !dbg !83
  %21 = bitcast i32* %4 to i8*, !dbg !83
  call void @llvm.lifetime.start(i64 4, i8* %21), !dbg !83
  %22 = bitcast i32* %5 to i8*, !dbg !83
  call void @llvm.lifetime.start(i64 4, i8* %22), !dbg !83
  %23 = bitcast i32* %j.i to i8*, !dbg !83
  call void @llvm.lifetime.start(i64 4, i8* %23), !dbg !83
  store i32* %13, i32** %3, align 8, !dbg !83
  store i32 %18, i32* %4, align 4, !dbg !83
  store i32 3, i32* %5, align 4, !dbg !83
  store i32 0, i32* %j.i, align 4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %1, metadata !22, metadata !23), !dbg !86
  br label %24, !dbg !88

; <label>:24                                      ; preds = %44, %0
  %25 = load i32, i32* %j.i, align 4, !dbg !89
  %26 = load i32, i32* %4, align 4, !dbg !90
  %27 = icmp ult i32 %25, %26, !dbg !91
  br i1 %27, label %28, label %36, !dbg !92

; <label>:28                                      ; preds = %24
  %29 = load i32, i32* %j.i, align 4, !dbg !93
  %30 = zext i32 %29 to i64, !dbg !94
  %31 = load i32*, i32** %3, align 8, !dbg !94
  %32 = getelementptr inbounds i32, i32* %31, i64 %30, !dbg !94
  %33 = load i32, i32* %32, align 4, !dbg !94
  %34 = load i32, i32* %5, align 4, !dbg !95
  %35 = icmp ne i32 %33, %34, !dbg !96
  br label %36, !dbg !83

; <label>:36                                      ; preds = %28, %24
  %37 = phi i1 [ false, %24 ], [ %35, %28 ], !dbg !83
  br i1 %37, label %38, label %45, !dbg !88

; <label>:38                                      ; preds = %36
  %39 = load i32, i32* %j.i, align 4, !dbg !97
  %40 = add i32 %39, 1, !dbg !97
  store i32 %40, i32* %j.i, align 4, !dbg !97
  %41 = load i32, i32* %j.i, align 4, !dbg !98
  %42 = icmp eq i32 %41, 20, !dbg !99
  br i1 %42, label %43, label %44, !dbg !100

; <label>:43                                      ; preds = %38
  store i32 -1, i32* %j.i, align 4, !dbg !101
  br label %44, !dbg !102

; <label>:44                                      ; preds = %43, %38
  br label %24, !dbg !88

; <label>:45                                      ; preds = %36
  %46 = load i32, i32* %j.i, align 4, !dbg !103
  %47 = load i32, i32* @SIZE, align 4, !dbg !104
  %48 = icmp ult i32 %46, %47, !dbg !105
  br i1 %48, label %49, label %50, !dbg !106

; <label>:49                                      ; preds = %45
  store i32 1, i32* %2, !dbg !107
  br label %linear_search.exit, !dbg !107

; <label>:50                                      ; preds = %45
  store i32 0, i32* %2, !dbg !108
  br label %linear_search.exit, !dbg !108

linear_search.exit:                               ; preds = %49, %50
  %51 = load i32, i32* %2, !dbg !109
  %52 = bitcast i32* %2 to i8*, !dbg !109
  call void @llvm.lifetime.end(i64 4, i8* %52), !dbg !109
  %53 = bitcast i32** %3 to i8*, !dbg !109
  call void @llvm.lifetime.end(i64 8, i8* %53), !dbg !109
  %54 = bitcast i32* %4 to i8*, !dbg !109
  call void @llvm.lifetime.end(i64 4, i8* %54), !dbg !109
  %55 = bitcast i32* %5 to i8*, !dbg !109
  call void @llvm.lifetime.end(i64 4, i8* %55), !dbg !109
  %56 = bitcast i32* %j.i to i8*, !dbg !109
  call void @llvm.lifetime.end(i64 4, i8* %56), !dbg !109
  %57 = bitcast i32* %1 to i8*, !dbg !110
  call void @llvm.lifetime.start(i64 4, i8* %57), !dbg !110
  store i32 %51, i32* %1, align 4, !dbg !110
  %58 = load i32, i32* %1, align 4, !dbg !111
  %59 = icmp ne i32 %58, 0, !dbg !112
  br i1 %59, label %__VERIFIER_assert.exit, label %60, !dbg !113

; <label>:60                                      ; preds = %linear_search.exit
  call void (...) @__VERIFIER_error() #6, !dbg !114
  unreachable, !dbg !114

__VERIFIER_assert.exit:                           ; preds = %linear_search.exit
  %61 = bitcast i32* %1 to i8*, !dbg !115
  call void @llvm.lifetime.end(i64 4, i8* %61), !dbg !115
  %62 = load i8*, i8** %6, !dbg !116
  call void @llvm.stackrestore(i8* %62), !dbg !116
  call void @llvm.dbg.declare(metadata i32** %3, metadata !33, metadata !23), !dbg !117
  call void @llvm.dbg.declare(metadata i32* %4, metadata !35, metadata !23), !dbg !118
  call void @llvm.dbg.declare(metadata i32* %5, metadata !37, metadata !23), !dbg !119
  call void @llvm.dbg.declare(metadata i32* %j.i, metadata !39, metadata !23), !dbg !84
  ret i32 0, !dbg !116
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
!1 = !DIFile(filename: "../../sv-comp-2016/c/loops/linear_search_false-unreach-call.i", directory: "/Users/franck/development/perentiemq/programs")
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
!12 = !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !13, isLocal: false, isDefinition: true, scopeLine: 20, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!52 = !DILocation(line: 15, column: 7, scope: !53)
!53 = distinct !DILexicalBlock(scope: !51, file: !1, line: 15, column: 7)
!54 = !DILocation(line: 15, column: 8, scope: !53)
!55 = !DILocation(line: 15, column: 7, scope: !51)
!56 = !DILocation(line: 15, column: 15, scope: !53)
!57 = !DILocation(line: 15, column: 14, scope: !53)
!58 = !DILocation(line: 17, column: 7, scope: !59)
!59 = distinct !DILexicalBlock(scope: !8, file: !1, line: 17, column: 7)
!60 = !DILocation(line: 17, column: 9, scope: !59)
!61 = !DILocation(line: 17, column: 8, scope: !59)
!62 = !DILocation(line: 17, column: 7, scope: !8)
!63 = !DILocation(line: 17, column: 15, scope: !59)
!64 = !DILocation(line: 18, column: 8, scope: !59)
!65 = !DILocation(line: 19, column: 1, scope: !8)
!66 = !DILocation(line: 21, column: 9, scope: !12)
!67 = !DILocation(line: 21, column: 33, scope: !12)
!68 = !DILocation(line: 21, column: 36, scope: !12)
!69 = !DILocation(line: 21, column: 7, scope: !12)
!70 = !DILocation(line: 22, column: 9, scope: !12)
!71 = !DILocation(line: 22, column: 3, scope: !12)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !12, file: !1, line: 22, type: !73)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, align: 32, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: -1)
!76 = !DIExpression(DW_OP_deref)
!77 = !DILocation(line: 22, column: 7, scope: !12)
!78 = !DILocation(line: 23, column: 5, scope: !12)
!79 = !DILocation(line: 23, column: 9, scope: !12)
!80 = !DILocation(line: 23, column: 3, scope: !12)
!81 = !DILocation(line: 23, column: 12, scope: !12)
!82 = !DILocation(line: 24, column: 37, scope: !12)
!83 = !DILocation(line: 24, column: 21, scope: !12)
!84 = !DILocation(line: 12, column: 16, scope: !8, inlinedAt: !85)
!85 = distinct !DILocation(line: 24, column: 21, scope: !12)
!86 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !87)
!87 = distinct !DILocation(line: 24, column: 3, scope: !12)
!88 = !DILocation(line: 13, column: 3, scope: !8, inlinedAt: !85)
!89 = !DILocation(line: 13, column: 10, scope: !8, inlinedAt: !85)
!90 = !DILocation(line: 13, column: 12, scope: !8, inlinedAt: !85)
!91 = !DILocation(line: 13, column: 11, scope: !8, inlinedAt: !85)
!92 = !DILocation(line: 13, column: 14, scope: !8, inlinedAt: !85)
!93 = !DILocation(line: 13, column: 19, scope: !8, inlinedAt: !85)
!94 = !DILocation(line: 13, column: 17, scope: !8, inlinedAt: !85)
!95 = !DILocation(line: 13, column: 23, scope: !8, inlinedAt: !85)
!96 = !DILocation(line: 13, column: 21, scope: !8, inlinedAt: !85)
!97 = !DILocation(line: 14, column: 4, scope: !51, inlinedAt: !85)
!98 = !DILocation(line: 15, column: 7, scope: !53, inlinedAt: !85)
!99 = !DILocation(line: 15, column: 8, scope: !53, inlinedAt: !85)
!100 = !DILocation(line: 15, column: 7, scope: !51, inlinedAt: !85)
!101 = !DILocation(line: 15, column: 15, scope: !53, inlinedAt: !85)
!102 = !DILocation(line: 15, column: 14, scope: !53, inlinedAt: !85)
!103 = !DILocation(line: 17, column: 7, scope: !59, inlinedAt: !85)
!104 = !DILocation(line: 17, column: 9, scope: !59, inlinedAt: !85)
!105 = !DILocation(line: 17, column: 8, scope: !59, inlinedAt: !85)
!106 = !DILocation(line: 17, column: 7, scope: !8, inlinedAt: !85)
!107 = !DILocation(line: 17, column: 15, scope: !59, inlinedAt: !85)
!108 = !DILocation(line: 18, column: 8, scope: !59, inlinedAt: !85)
!109 = !DILocation(line: 19, column: 1, scope: !8, inlinedAt: !85)
!110 = !DILocation(line: 24, column: 3, scope: !12)
!111 = !DILocation(line: 4, column: 9, scope: !26, inlinedAt: !87)
!112 = !DILocation(line: 4, column: 8, scope: !26, inlinedAt: !87)
!113 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !87)
!114 = !DILocation(line: 5, column: 12, scope: !31, inlinedAt: !87)
!115 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !87)
!116 = !DILocation(line: 25, column: 1, scope: !12)
!117 = !DILocation(line: 11, column: 24, scope: !8, inlinedAt: !85)
!118 = !DILocation(line: 11, column: 31, scope: !8, inlinedAt: !85)
!119 = !DILocation(line: 11, column: 38, scope: !8, inlinedAt: !85)
