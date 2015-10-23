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
  br label %1, !dbg !39

; <label>:1                                       ; preds = %44, %0
  %2 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !40
  %3 = icmp ne i32 %2, 0, !dbg !40
  br i1 %3, label %4, label %7, !dbg !41

; <label>:4                                       ; preds = %1
  %5 = load i32, i32* %y, align 4, !dbg !42
  %6 = icmp slt i32 %5, 10000, !dbg !43
  br label %7

; <label>:7                                       ; preds = %4, %1
  %8 = phi i1 [ false, %1 ], [ %6, %4 ]
  br i1 %8, label %9, label %49, !dbg !39

; <label>:9                                       ; preds = %7
  %10 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !44
  %11 = icmp ne i32 %10, 0, !dbg !44
  br i1 %11, label %12, label %17, !dbg !47

; <label>:12                                      ; preds = %9
  %13 = load i32, i32* %x, align 4, !dbg !48
  %14 = add nsw i32 %13, 1, !dbg !50
  store i32 %14, i32* %x, align 4, !dbg !51
  %15 = load i32, i32* %y, align 4, !dbg !52
  %16 = add nsw i32 %15, 100, !dbg !53
  store i32 %16, i32* %y, align 4, !dbg !54
  br label %44, !dbg !55

; <label>:17                                      ; preds = %9
  %18 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !56
  %19 = icmp ne i32 %18, 0, !dbg !56
  br i1 %19, label %20, label %29, !dbg !58

; <label>:20                                      ; preds = %17
  %21 = load i32, i32* %x, align 4, !dbg !59
  %22 = icmp sge i32 %21, 4, !dbg !62
  br i1 %22, label %23, label %28, !dbg !63

; <label>:23                                      ; preds = %20
  %24 = load i32, i32* %x, align 4, !dbg !64
  %25 = add nsw i32 %24, 1, !dbg !66
  store i32 %25, i32* %x, align 4, !dbg !67
  %26 = load i32, i32* %y, align 4, !dbg !68
  %27 = add nsw i32 %26, 1, !dbg !69
  store i32 %27, i32* %y, align 4, !dbg !70
  br label %28, !dbg !71

; <label>:28                                      ; preds = %23, %20
  br label %43, !dbg !72

; <label>:29                                      ; preds = %17
  %30 = load i32, i32* %y, align 4, !dbg !73
  %31 = load i32, i32* %w, align 4, !dbg !75
  %32 = mul nsw i32 10, %31, !dbg !76
  %33 = icmp sgt i32 %30, %32, !dbg !77
  br i1 %33, label %34, label %42, !dbg !78

; <label>:34                                      ; preds = %29
  %35 = load i32, i32* %z, align 4, !dbg !79
  %36 = load i32, i32* %x, align 4, !dbg !80
  %37 = mul nsw i32 100, %36, !dbg !81
  %38 = icmp sge i32 %35, %37, !dbg !82
  br i1 %38, label %39, label %42, !dbg !83

; <label>:39                                      ; preds = %34
  %40 = load i32, i32* %y, align 4, !dbg !84
  %41 = sub nsw i32 0, %40, !dbg !86
  store i32 %41, i32* %y, align 4, !dbg !87
  br label %42, !dbg !88

; <label>:42                                      ; preds = %39, %34, %29
  br label %43

; <label>:43                                      ; preds = %42, %28
  br label %44

; <label>:44                                      ; preds = %43, %12
  %45 = load i32, i32* %w, align 4, !dbg !89
  %46 = add nsw i32 %45, 1, !dbg !90
  store i32 %46, i32* %w, align 4, !dbg !91
  %47 = load i32, i32* %z, align 4, !dbg !92
  %48 = add nsw i32 %47, 10, !dbg !93
  store i32 %48, i32* %z, align 4, !dbg !94
  br label %1, !dbg !39

; <label>:49                                      ; preds = %7
  %50 = load i32, i32* %x, align 4, !dbg !95
  %51 = icmp sge i32 %50, 4, !dbg !96
  br i1 %51, label %52, label %55, !dbg !97

; <label>:52                                      ; preds = %49
  %53 = load i32, i32* %y, align 4, !dbg !98
  %54 = icmp sle i32 %53, 2, !dbg !99
  br label %55

; <label>:55                                      ; preds = %52, %49
  %56 = phi i1 [ false, %49 ], [ %54, %52 ]
  %57 = zext i1 %56 to i32, !dbg !97
  %58 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 %57), !dbg !100
  ret void, !dbg !101
}

declare i32 @__VERIFIER_nondet_int(...) #2

declare i32 @assert(...) #2

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "gcnr2008_false-unreach-call.c.i", directory: "/Users/asloane/Projects/SV-COMP/sv-benchmarks/c/loop-lit")
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
!39 = !DILocation(line: 13, column: 5, scope: !8)
!40 = !DILocation(line: 13, column: 12, scope: !8)
!41 = !DILocation(line: 13, column: 36, scope: !8)
!42 = !DILocation(line: 13, column: 39, scope: !8)
!43 = !DILocation(line: 13, column: 41, scope: !8)
!44 = !DILocation(line: 14, column: 6, scope: !45)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 14, column: 6)
!46 = distinct !DILexicalBlock(scope: !8, file: !1, line: 13, column: 50)
!47 = !DILocation(line: 14, column: 6, scope: !46)
!48 = !DILocation(line: 15, column: 10, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !1, line: 14, column: 31)
!50 = !DILocation(line: 15, column: 12, scope: !49)
!51 = !DILocation(line: 15, column: 8, scope: !49)
!52 = !DILocation(line: 16, column: 10, scope: !49)
!53 = !DILocation(line: 16, column: 12, scope: !49)
!54 = !DILocation(line: 16, column: 8, scope: !49)
!55 = !DILocation(line: 17, column: 2, scope: !49)
!56 = !DILocation(line: 17, column: 13, scope: !57)
!57 = distinct !DILexicalBlock(scope: !45, file: !1, line: 17, column: 13)
!58 = !DILocation(line: 17, column: 13, scope: !45)
!59 = !DILocation(line: 18, column: 10, scope: !60)
!60 = distinct !DILexicalBlock(scope: !61, file: !1, line: 18, column: 10)
!61 = distinct !DILexicalBlock(scope: !57, file: !1, line: 17, column: 38)
!62 = !DILocation(line: 18, column: 12, scope: !60)
!63 = !DILocation(line: 18, column: 10, scope: !61)
!64 = !DILocation(line: 19, column: 7, scope: !65)
!65 = distinct !DILexicalBlock(scope: !60, file: !1, line: 18, column: 18)
!66 = !DILocation(line: 19, column: 9, scope: !65)
!67 = !DILocation(line: 19, column: 5, scope: !65)
!68 = !DILocation(line: 20, column: 7, scope: !65)
!69 = !DILocation(line: 20, column: 9, scope: !65)
!70 = !DILocation(line: 20, column: 5, scope: !65)
!71 = !DILocation(line: 21, column: 6, scope: !65)
!72 = !DILocation(line: 22, column: 2, scope: !61)
!73 = !DILocation(line: 22, column: 13, scope: !74)
!74 = distinct !DILexicalBlock(scope: !57, file: !1, line: 22, column: 13)
!75 = !DILocation(line: 22, column: 20, scope: !74)
!76 = !DILocation(line: 22, column: 19, scope: !74)
!77 = !DILocation(line: 22, column: 15, scope: !74)
!78 = !DILocation(line: 22, column: 22, scope: !74)
!79 = !DILocation(line: 22, column: 25, scope: !74)
!80 = !DILocation(line: 22, column: 34, scope: !74)
!81 = !DILocation(line: 22, column: 33, scope: !74)
!82 = !DILocation(line: 22, column: 27, scope: !74)
!83 = !DILocation(line: 22, column: 13, scope: !57)
!84 = !DILocation(line: 23, column: 11, scope: !85)
!85 = distinct !DILexicalBlock(scope: !74, file: !1, line: 22, column: 37)
!86 = !DILocation(line: 23, column: 10, scope: !85)
!87 = !DILocation(line: 23, column: 8, scope: !85)
!88 = !DILocation(line: 24, column: 2, scope: !85)
!89 = !DILocation(line: 25, column: 6, scope: !46)
!90 = !DILocation(line: 25, column: 8, scope: !46)
!91 = !DILocation(line: 25, column: 4, scope: !46)
!92 = !DILocation(line: 26, column: 6, scope: !46)
!93 = !DILocation(line: 26, column: 8, scope: !46)
!94 = !DILocation(line: 26, column: 4, scope: !46)
!95 = !DILocation(line: 28, column: 12, scope: !8)
!96 = !DILocation(line: 28, column: 14, scope: !8)
!97 = !DILocation(line: 28, column: 19, scope: !8)
!98 = !DILocation(line: 28, column: 22, scope: !8)
!99 = !DILocation(line: 28, column: 24, scope: !8)
!100 = !DILocation(line: 28, column: 5, scope: !8)
!101 = !DILocation(line: 29, column: 1, scope: !8)
