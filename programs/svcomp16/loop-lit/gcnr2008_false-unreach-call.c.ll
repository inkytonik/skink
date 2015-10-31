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
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %w = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %x, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %y, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %z, metadata !31, metadata !16), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %w, metadata !33, metadata !16), !dbg !34
  store i32 0, i32* %w, align 4, !dbg !35
  store i32 0, i32* %z, align 4, !dbg !36
  store i32 0, i32* %y, align 4, !dbg !37
  store i32 0, i32* %x, align 4, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !39
  br label %2, !dbg !41

; <label>:2                                       ; preds = %45, %0
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !42
  %4 = icmp ne i32 %3, 0, !dbg !42
  br i1 %4, label %5, label %8, !dbg !43

; <label>:5                                       ; preds = %2
  %6 = load i32, i32* %y, align 4, !dbg !44
  %7 = icmp slt i32 %6, 10000, !dbg !45
  br label %8

; <label>:8                                       ; preds = %5, %2
  %9 = phi i1 [ false, %2 ], [ %7, %5 ]
  br i1 %9, label %10, label %50, !dbg !41

; <label>:10                                      ; preds = %8
  %11 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !46
  %12 = icmp ne i32 %11, 0, !dbg !46
  br i1 %12, label %13, label %18, !dbg !49

; <label>:13                                      ; preds = %10
  %14 = load i32, i32* %x, align 4, !dbg !50
  %15 = add nsw i32 %14, 1, !dbg !52
  store i32 %15, i32* %x, align 4, !dbg !53
  %16 = load i32, i32* %y, align 4, !dbg !54
  %17 = add nsw i32 %16, 100, !dbg !55
  store i32 %17, i32* %y, align 4, !dbg !56
  br label %45, !dbg !57

; <label>:18                                      ; preds = %10
  %19 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !58
  %20 = icmp ne i32 %19, 0, !dbg !58
  br i1 %20, label %21, label %30, !dbg !60

; <label>:21                                      ; preds = %18
  %22 = load i32, i32* %x, align 4, !dbg !61
  %23 = icmp sge i32 %22, 4, !dbg !64
  br i1 %23, label %24, label %29, !dbg !65

; <label>:24                                      ; preds = %21
  %25 = load i32, i32* %x, align 4, !dbg !66
  %26 = add nsw i32 %25, 1, !dbg !68
  store i32 %26, i32* %x, align 4, !dbg !69
  %27 = load i32, i32* %y, align 4, !dbg !70
  %28 = add nsw i32 %27, 1, !dbg !71
  store i32 %28, i32* %y, align 4, !dbg !72
  br label %29, !dbg !73

; <label>:29                                      ; preds = %24, %21
  br label %44, !dbg !74

; <label>:30                                      ; preds = %18
  %31 = load i32, i32* %y, align 4, !dbg !75
  %32 = load i32, i32* %w, align 4, !dbg !77
  %33 = mul nsw i32 10, %32, !dbg !78
  %34 = icmp sgt i32 %31, %33, !dbg !79
  br i1 %34, label %35, label %43, !dbg !80

; <label>:35                                      ; preds = %30
  %36 = load i32, i32* %z, align 4, !dbg !81
  %37 = load i32, i32* %x, align 4, !dbg !82
  %38 = mul nsw i32 100, %37, !dbg !83
  %39 = icmp sge i32 %36, %38, !dbg !84
  br i1 %39, label %40, label %43, !dbg !85

; <label>:40                                      ; preds = %35
  %41 = load i32, i32* %y, align 4, !dbg !86
  %42 = sub nsw i32 0, %41, !dbg !88
  store i32 %42, i32* %y, align 4, !dbg !89
  br label %43, !dbg !90

; <label>:43                                      ; preds = %40, %35, %30
  br label %44

; <label>:44                                      ; preds = %43, %29
  br label %45

; <label>:45                                      ; preds = %44, %13
  %46 = load i32, i32* %w, align 4, !dbg !91
  %47 = add nsw i32 %46, 1, !dbg !92
  store i32 %47, i32* %w, align 4, !dbg !93
  %48 = load i32, i32* %z, align 4, !dbg !94
  %49 = add nsw i32 %48, 10, !dbg !95
  store i32 %49, i32* %z, align 4, !dbg !96
  br label %2, !dbg !41

; <label>:50                                      ; preds = %8
  %51 = load i32, i32* %x, align 4, !dbg !97
  %52 = icmp sge i32 %51, 4, !dbg !98
  br i1 %52, label %53, label %56, !dbg !99

; <label>:53                                      ; preds = %50
  %54 = load i32, i32* %y, align 4, !dbg !100
  %55 = icmp sle i32 %54, 2, !dbg !101
  br label %56

; <label>:56                                      ; preds = %53, %50
  %57 = phi i1 [ false, %50 ], [ %55, %53 ]
  %58 = zext i1 %57 to i32, !dbg !99
  %59 = bitcast i32* %1 to i8*, !dbg !102
  call void @llvm.lifetime.start(i64 4, i8* %59), !dbg !102
  store i32 %58, i32* %1, align 4, !dbg !102
  %60 = load i32, i32* %1, align 4, !dbg !103
  %61 = icmp ne i32 %60, 0, !dbg !104
  br i1 %61, label %__VERIFIER_assert.exit, label %62, !dbg !105

; <label>:62                                      ; preds = %56
  call void @__VERIFIER_error() #3, !dbg !106
  br label %__VERIFIER_assert.exit, !dbg !107

__VERIFIER_assert.exit:                           ; preds = %56, %62
  %63 = bitcast i32* %1 to i8*, !dbg !108
  call void @llvm.lifetime.end(i64 4, i8* %63), !dbg !108
  ret void, !dbg !109
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
!1 = !DIFile(filename: "../sv-comp-2016/c/loop-lit/gcnr2008_false-unreach-call.c.i", directory: "/Users/franck/development/perentiemq")
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
!109 = !DILocation(line: 29, column: 1, scope: !8)
