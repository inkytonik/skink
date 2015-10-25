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
  %3 = alloca i32, align 4
  %MAXPATHLEN = alloca i32, align 4
  %pathbuf_off = alloca i32, align 4
  %bound_off = alloca i32, align 4
  %glob2_p_off = alloca i32, align 4
  %glob2_pathbuf_off = alloca i32, align 4
  %glob2_pathlim_off = alloca i32, align 4
  store i32 0, i32* %3
  call void @llvm.dbg.declare(metadata i32* %MAXPATHLEN, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %pathbuf_off, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %bound_off, metadata !31, metadata !16), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %glob2_p_off, metadata !33, metadata !16), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %glob2_pathbuf_off, metadata !35, metadata !16), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %glob2_pathlim_off, metadata !37, metadata !16), !dbg !38
  %4 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !39
  store i32 %4, i32* %MAXPATHLEN, align 4, !dbg !40
  %5 = load i32, i32* %MAXPATHLEN, align 4, !dbg !41
  %6 = icmp sgt i32 %5, 0, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !16), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !49
  br i1 %6, label %7, label %11, !dbg !51

; <label>:7                                       ; preds = %0
  %8 = load i32, i32* %MAXPATHLEN, align 4, !dbg !52
  %9 = icmp slt i32 %8, 2147483647, !dbg !53
  br i1 %9, label %10, label %11, !dbg !54

; <label>:10                                      ; preds = %7
  br label %12, !dbg !54

; <label>:11                                      ; preds = %7, %0
  br label %48, !dbg !55

; <label>:12                                      ; preds = %10
  store i32 0, i32* %pathbuf_off, align 4, !dbg !56
  %13 = load i32, i32* %pathbuf_off, align 4, !dbg !57
  %14 = load i32, i32* %MAXPATHLEN, align 4, !dbg !58
  %15 = add nsw i32 %14, 1, !dbg !59
  %16 = add nsw i32 %13, %15, !dbg !60
  %17 = sub nsw i32 %16, 1, !dbg !61
  store i32 %17, i32* %bound_off, align 4, !dbg !62
  %18 = load i32, i32* %pathbuf_off, align 4, !dbg !63
  store i32 %18, i32* %glob2_pathbuf_off, align 4, !dbg !64
  %19 = load i32, i32* %bound_off, align 4, !dbg !65
  store i32 %19, i32* %glob2_pathlim_off, align 4, !dbg !66
  %20 = load i32, i32* %glob2_pathbuf_off, align 4, !dbg !67
  store i32 %20, i32* %glob2_p_off, align 4, !dbg !68
  br label %21, !dbg !69

; <label>:21                                      ; preds = %44, %12
  %22 = load i32, i32* %glob2_p_off, align 4, !dbg !70
  %23 = load i32, i32* %glob2_pathlim_off, align 4, !dbg !71
  %24 = icmp sle i32 %22, %23, !dbg !72
  br i1 %24, label %25, label %47, !dbg !73

; <label>:25                                      ; preds = %21
  %26 = load i32, i32* %glob2_p_off, align 4, !dbg !74
  %27 = icmp sle i32 0, %26, !dbg !75
  %28 = zext i1 %27 to i32, !dbg !75
  %29 = bitcast i32* %2 to i8*, !dbg !76
  call void @llvm.lifetime.start(i64 4, i8* %29), !dbg !76
  store i32 %28, i32* %2, align 4, !dbg !76
  %30 = load i32, i32* %2, align 4, !dbg !77
  %31 = icmp ne i32 %30, 0, !dbg !78
  br i1 %31, label %__VERIFIER_assert.exit, label %32, !dbg !79

; <label>:32                                      ; preds = %25
  call void @__VERIFIER_error() #3, !dbg !80
  br label %__VERIFIER_assert.exit, !dbg !81

__VERIFIER_assert.exit:                           ; preds = %25, %32
  %33 = bitcast i32* %2 to i8*, !dbg !82
  call void @llvm.lifetime.end(i64 4, i8* %33), !dbg !82
  %34 = load i32, i32* %glob2_p_off, align 4, !dbg !83
  %35 = load i32, i32* %MAXPATHLEN, align 4, !dbg !84
  %36 = add nsw i32 %35, 1, !dbg !85
  %37 = icmp slt i32 %34, %36, !dbg !86
  %38 = zext i1 %37 to i32, !dbg !86
  %39 = bitcast i32* %1 to i8*, !dbg !87
  call void @llvm.lifetime.start(i64 4, i8* %39), !dbg !87
  store i32 %38, i32* %1, align 4, !dbg !87
  %40 = load i32, i32* %1, align 4, !dbg !88
  %41 = icmp ne i32 %40, 0, !dbg !89
  br i1 %41, label %__VERIFIER_assert.exit1, label %42, !dbg !90

; <label>:42                                      ; preds = %__VERIFIER_assert.exit
  call void @__VERIFIER_error() #3, !dbg !91
  br label %__VERIFIER_assert.exit1, !dbg !92

__VERIFIER_assert.exit1:                          ; preds = %__VERIFIER_assert.exit, %42
  %43 = bitcast i32* %1 to i8*, !dbg !93
  call void @llvm.lifetime.end(i64 4, i8* %43), !dbg !93
  br label %44, !dbg !94

; <label>:44                                      ; preds = %__VERIFIER_assert.exit1
  %45 = load i32, i32* %glob2_p_off, align 4, !dbg !95
  %46 = add nsw i32 %45, 1, !dbg !95
  store i32 %46, i32* %glob2_p_off, align 4, !dbg !95
  br label %21, !dbg !96

; <label>:47                                      ; preds = %21
  br label %48, !dbg !97

; <label>:48                                      ; preds = %47, %11
  ret i32 0, !dbg !98
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
!1 = !DIFile(filename: "../../../sv-comp-2016/c/loop-invgen/NetBSD_loop_true-unreach-call.i", directory: "/Users/franck/development/perentiemq/programs/svcomp16")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !9, isLocal: false, isDefinition: true, scopeLine: 11, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "MAXPATHLEN", scope: !8, file: !1, line: 12, type: !7)
!28 = !DILocation(line: 12, column: 7, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pathbuf_off", scope: !8, file: !1, line: 13, type: !7)
!30 = !DILocation(line: 13, column: 7, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bound_off", scope: !8, file: !1, line: 14, type: !7)
!32 = !DILocation(line: 14, column: 7, scope: !8)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "glob2_p_off", scope: !8, file: !1, line: 15, type: !7)
!34 = !DILocation(line: 15, column: 7, scope: !8)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "glob2_pathbuf_off", scope: !8, file: !1, line: 16, type: !7)
!36 = !DILocation(line: 16, column: 7, scope: !8)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "glob2_pathlim_off", scope: !8, file: !1, line: 17, type: !7)
!38 = !DILocation(line: 17, column: 7, scope: !8)
!39 = !DILocation(line: 18, column: 16, scope: !8)
!40 = !DILocation(line: 18, column: 14, scope: !8)
!41 = !DILocation(line: 19, column: 6, scope: !42)
!42 = distinct !DILexicalBlock(scope: !8, file: !1, line: 19, column: 6)
!43 = !DILocation(line: 19, column: 17, scope: !42)
!44 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !45)
!45 = distinct !DILocation(line: 27, column: 5, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 26, column: 22)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 24, column: 3)
!48 = distinct !DILexicalBlock(scope: !8, file: !1, line: 24, column: 3)
!49 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !50)
!50 = distinct !DILocation(line: 28, column: 5, scope: !46)
!51 = !DILocation(line: 19, column: 21, scope: !42)
!52 = !DILocation(line: 19, column: 24, scope: !42)
!53 = !DILocation(line: 19, column: 35, scope: !42)
!54 = !DILocation(line: 19, column: 6, scope: !8)
!55 = !DILocation(line: 19, column: 55, scope: !42)
!56 = !DILocation(line: 20, column: 15, scope: !8)
!57 = !DILocation(line: 21, column: 15, scope: !8)
!58 = !DILocation(line: 21, column: 30, scope: !8)
!59 = !DILocation(line: 21, column: 41, scope: !8)
!60 = !DILocation(line: 21, column: 27, scope: !8)
!61 = !DILocation(line: 21, column: 46, scope: !8)
!62 = !DILocation(line: 21, column: 13, scope: !8)
!63 = !DILocation(line: 22, column: 23, scope: !8)
!64 = !DILocation(line: 22, column: 21, scope: !8)
!65 = !DILocation(line: 23, column: 23, scope: !8)
!66 = !DILocation(line: 23, column: 21, scope: !8)
!67 = !DILocation(line: 24, column: 22, scope: !48)
!68 = !DILocation(line: 24, column: 20, scope: !48)
!69 = !DILocation(line: 24, column: 8, scope: !48)
!70 = !DILocation(line: 25, column: 7, scope: !47)
!71 = !DILocation(line: 25, column: 22, scope: !47)
!72 = !DILocation(line: 25, column: 19, scope: !47)
!73 = !DILocation(line: 24, column: 3, scope: !48)
!74 = !DILocation(line: 27, column: 29, scope: !46)
!75 = !DILocation(line: 27, column: 26, scope: !46)
!76 = !DILocation(line: 27, column: 5, scope: !46)
!77 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !45)
!78 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !45)
!79 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !45)
!80 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !45)
!81 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !45)
!82 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !45)
!83 = !DILocation(line: 28, column: 24, scope: !46)
!84 = !DILocation(line: 28, column: 38, scope: !46)
!85 = !DILocation(line: 28, column: 49, scope: !46)
!86 = !DILocation(line: 28, column: 36, scope: !46)
!87 = !DILocation(line: 28, column: 5, scope: !46)
!88 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !50)
!89 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !50)
!90 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !50)
!91 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !50)
!92 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !50)
!93 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !50)
!94 = !DILocation(line: 29, column: 3, scope: !46)
!95 = !DILocation(line: 26, column: 18, scope: !47)
!96 = !DILocation(line: 24, column: 3, scope: !47)
!97 = !DILocation(line: 29, column: 3, scope: !48)
!98 = !DILocation(line: 30, column: 7, scope: !8)
