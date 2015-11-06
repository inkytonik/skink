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
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %w = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %x, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %y, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %z, metadata !31, metadata !16), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %w, metadata !33, metadata !16), !dbg !34
  store i32 0, i32* %w, align 4, !dbg !35
  store i32 0, i32* %z, align 4, !dbg !36
  store i32 0, i32* %y, align 4, !dbg !37
  store i32 0, i32* %x, align 4, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !39
  br label %3, !dbg !41

; <label>:3                                       ; preds = %46, %0
  %4 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !42
  %5 = icmp ne i32 %4, 0, !dbg !42
  br i1 %5, label %6, label %9, !dbg !43

; <label>:6                                       ; preds = %3
  %7 = load i32, i32* %y, align 4, !dbg !44
  %8 = icmp slt i32 %7, 10000, !dbg !45
  br label %9

; <label>:9                                       ; preds = %6, %3
  %10 = phi i1 [ false, %3 ], [ %8, %6 ]
  br i1 %10, label %11, label %51, !dbg !41

; <label>:11                                      ; preds = %9
  %12 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !46
  %13 = icmp ne i32 %12, 0, !dbg !46
  br i1 %13, label %14, label %19, !dbg !49

; <label>:14                                      ; preds = %11
  %15 = load i32, i32* %x, align 4, !dbg !50
  %16 = add nsw i32 %15, 1, !dbg !52
  store i32 %16, i32* %x, align 4, !dbg !53
  %17 = load i32, i32* %y, align 4, !dbg !54
  %18 = add nsw i32 %17, 100, !dbg !55
  store i32 %18, i32* %y, align 4, !dbg !56
  br label %46, !dbg !57

; <label>:19                                      ; preds = %11
  %20 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !58
  %21 = icmp ne i32 %20, 0, !dbg !58
  br i1 %21, label %22, label %31, !dbg !60

; <label>:22                                      ; preds = %19
  %23 = load i32, i32* %x, align 4, !dbg !61
  %24 = icmp sge i32 %23, 4, !dbg !64
  br i1 %24, label %25, label %30, !dbg !65

; <label>:25                                      ; preds = %22
  %26 = load i32, i32* %x, align 4, !dbg !66
  %27 = add nsw i32 %26, 1, !dbg !68
  store i32 %27, i32* %x, align 4, !dbg !69
  %28 = load i32, i32* %y, align 4, !dbg !70
  %29 = add nsw i32 %28, 1, !dbg !71
  store i32 %29, i32* %y, align 4, !dbg !72
  br label %30, !dbg !73

; <label>:30                                      ; preds = %25, %22
  br label %45, !dbg !74

; <label>:31                                      ; preds = %19
  %32 = load i32, i32* %y, align 4, !dbg !75
  %33 = load i32, i32* %w, align 4, !dbg !77
  %34 = mul nsw i32 10, %33, !dbg !78
  %35 = icmp sgt i32 %32, %34, !dbg !79
  br i1 %35, label %36, label %44, !dbg !80

; <label>:36                                      ; preds = %31
  %37 = load i32, i32* %z, align 4, !dbg !81
  %38 = load i32, i32* %x, align 4, !dbg !82
  %39 = mul nsw i32 100, %38, !dbg !83
  %40 = icmp sge i32 %37, %39, !dbg !84
  br i1 %40, label %41, label %44, !dbg !85

; <label>:41                                      ; preds = %36
  %42 = load i32, i32* %y, align 4, !dbg !86
  %43 = sub nsw i32 0, %42, !dbg !88
  store i32 %43, i32* %y, align 4, !dbg !89
  br label %44, !dbg !90

; <label>:44                                      ; preds = %41, %36, %31
  br label %45

; <label>:45                                      ; preds = %44, %30
  br label %46

; <label>:46                                      ; preds = %45, %14
  %47 = load i32, i32* %w, align 4, !dbg !91
  %48 = add nsw i32 %47, 1, !dbg !92
  store i32 %48, i32* %w, align 4, !dbg !93
  %49 = load i32, i32* %z, align 4, !dbg !94
  %50 = add nsw i32 %49, 10, !dbg !95
  store i32 %50, i32* %z, align 4, !dbg !96
  br label %3, !dbg !41

; <label>:51                                      ; preds = %9
  %52 = load i32, i32* %x, align 4, !dbg !97
  %53 = icmp sge i32 %52, 4, !dbg !98
  br i1 %53, label %54, label %57, !dbg !99

; <label>:54                                      ; preds = %51
  %55 = load i32, i32* %y, align 4, !dbg !100
  %56 = icmp sle i32 %55, 2, !dbg !101
  br label %57

; <label>:57                                      ; preds = %54, %51
  %58 = phi i1 [ false, %51 ], [ %56, %54 ]
  %59 = zext i1 %58 to i32, !dbg !99
  %60 = bitcast i32* %1 to i8*, !dbg !102
  call void @llvm.lifetime.start(i64 4, i8* %60), !dbg !102
  store i32 %59, i32* %1, align 4, !dbg !102
  %61 = load i32, i32* %1, align 4, !dbg !103
  %62 = icmp ne i32 %61, 0, !dbg !104
  br i1 %62, label %__VERIFIER_assert.exit, label %63, !dbg !105

; <label>:63                                      ; preds = %57
  call void @__VERIFIER_error() #3, !dbg !106
  br label %__VERIFIER_assert.exit, !dbg !107

__VERIFIER_assert.exit:                           ; preds = %57, %63
  %64 = bitcast i32* %1 to i8*, !dbg !108
  call void @llvm.lifetime.end(i64 4, i8* %64), !dbg !108
  ret i32 0, !dbg !109
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
!1 = !DIFile(filename: "../development/perentiemq/programs/svcomp16/loop-lit/gcnr2008_false-unreach-call.c.i", directory: "/Users/franck/skink")
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
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !8, file: !1, line: 11, type: !7)
!28 = !DILocation(line: 11, column: 9, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !8, file: !1, line: 11, type: !7)
!30 = !DILocation(line: 11, column: 11, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !8, file: !1, line: 11, type: !7)
!32 = !DILocation(line: 11, column: 13, scope: !8)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w", scope: !8, file: !1, line: 11, type: !7)
!34 = !DILocation(line: 11, column: 15, scope: !8)
!35 = !DILocation(line: 12, column: 19, scope: !8)
!36 = !DILocation(line: 12, column: 15, scope: !8)
!37 = !DILocation(line: 12, column: 11, scope: !8)
!38 = !DILocation(line: 12, column: 7, scope: !8)
!39 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !40)
!40 = distinct !DILocation(line: 28, column: 5, scope: !8)
!41 = !DILocation(line: 13, column: 5, scope: !8)
!42 = !DILocation(line: 13, column: 12, scope: !8)
!43 = !DILocation(line: 13, column: 36, scope: !8)
!44 = !DILocation(line: 13, column: 39, scope: !8)
!45 = !DILocation(line: 13, column: 41, scope: !8)
!46 = !DILocation(line: 14, column: 6, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 14, column: 6)
!48 = distinct !DILexicalBlock(scope: !8, file: !1, line: 13, column: 50)
!49 = !DILocation(line: 14, column: 6, scope: !48)
!50 = !DILocation(line: 15, column: 10, scope: !51)
!51 = distinct !DILexicalBlock(scope: !47, file: !1, line: 14, column: 31)
!52 = !DILocation(line: 15, column: 12, scope: !51)
!53 = !DILocation(line: 15, column: 8, scope: !51)
!54 = !DILocation(line: 16, column: 10, scope: !51)
!55 = !DILocation(line: 16, column: 12, scope: !51)
!56 = !DILocation(line: 16, column: 8, scope: !51)
!57 = !DILocation(line: 17, column: 2, scope: !51)
!58 = !DILocation(line: 17, column: 13, scope: !59)
!59 = distinct !DILexicalBlock(scope: !47, file: !1, line: 17, column: 13)
!60 = !DILocation(line: 17, column: 13, scope: !47)
!61 = !DILocation(line: 18, column: 10, scope: !62)
!62 = distinct !DILexicalBlock(scope: !63, file: !1, line: 18, column: 10)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 17, column: 38)
!64 = !DILocation(line: 18, column: 12, scope: !62)
!65 = !DILocation(line: 18, column: 10, scope: !63)
!66 = !DILocation(line: 19, column: 7, scope: !67)
!67 = distinct !DILexicalBlock(scope: !62, file: !1, line: 18, column: 18)
!68 = !DILocation(line: 19, column: 9, scope: !67)
!69 = !DILocation(line: 19, column: 5, scope: !67)
!70 = !DILocation(line: 20, column: 7, scope: !67)
!71 = !DILocation(line: 20, column: 9, scope: !67)
!72 = !DILocation(line: 20, column: 5, scope: !67)
!73 = !DILocation(line: 21, column: 6, scope: !67)
!74 = !DILocation(line: 22, column: 2, scope: !63)
!75 = !DILocation(line: 22, column: 13, scope: !76)
!76 = distinct !DILexicalBlock(scope: !59, file: !1, line: 22, column: 13)
!77 = !DILocation(line: 22, column: 20, scope: !76)
!78 = !DILocation(line: 22, column: 19, scope: !76)
!79 = !DILocation(line: 22, column: 15, scope: !76)
!80 = !DILocation(line: 22, column: 22, scope: !76)
!81 = !DILocation(line: 22, column: 25, scope: !76)
!82 = !DILocation(line: 22, column: 34, scope: !76)
!83 = !DILocation(line: 22, column: 33, scope: !76)
!84 = !DILocation(line: 22, column: 27, scope: !76)
!85 = !DILocation(line: 22, column: 13, scope: !59)
!86 = !DILocation(line: 23, column: 11, scope: !87)
!87 = distinct !DILexicalBlock(scope: !76, file: !1, line: 22, column: 37)
!88 = !DILocation(line: 23, column: 10, scope: !87)
!89 = !DILocation(line: 23, column: 8, scope: !87)
!90 = !DILocation(line: 24, column: 2, scope: !87)
!91 = !DILocation(line: 25, column: 6, scope: !48)
!92 = !DILocation(line: 25, column: 8, scope: !48)
!93 = !DILocation(line: 25, column: 4, scope: !48)
!94 = !DILocation(line: 26, column: 6, scope: !48)
!95 = !DILocation(line: 26, column: 8, scope: !48)
!96 = !DILocation(line: 26, column: 4, scope: !48)
!97 = !DILocation(line: 28, column: 23, scope: !8)
!98 = !DILocation(line: 28, column: 25, scope: !8)
!99 = !DILocation(line: 28, column: 30, scope: !8)
!100 = !DILocation(line: 28, column: 33, scope: !8)
!101 = !DILocation(line: 28, column: 35, scope: !8)
!102 = !DILocation(line: 28, column: 5, scope: !8)
!103 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !40)
!104 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !40)
!105 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !40)
!106 = !DILocation(line: 5, column: 14, scope: !24, inlinedAt: !40)
!107 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !40)
!108 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !40)
!109 = !DILocation(line: 29, column: 5, scope: !8)
