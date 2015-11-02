; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %p1 = alloca i32, align 4
  %lk1 = alloca i32, align 4
  %p2 = alloca i32, align 4
  %lk2 = alloca i32, align 4
  %p3 = alloca i32, align 4
  %lk3 = alloca i32, align 4
  %p4 = alloca i32, align 4
  %lk4 = alloca i32, align 4
  %p5 = alloca i32, align 4
  %lk5 = alloca i32, align 4
  %cond = alloca i32, align 4
  store i32 0, i32* %1
  call void @llvm.dbg.declare(metadata i32* %p1, metadata !12, metadata !13), !dbg !14
  %2 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !15
  store i32 %2, i32* %p1, align 4, !dbg !14
  call void @llvm.dbg.declare(metadata i32* %lk1, metadata !16, metadata !13), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %p2, metadata !18, metadata !13), !dbg !19
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !20
  store i32 %3, i32* %p2, align 4, !dbg !19
  call void @llvm.dbg.declare(metadata i32* %lk2, metadata !21, metadata !13), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %p3, metadata !23, metadata !13), !dbg !24
  %4 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !25
  store i32 %4, i32* %p3, align 4, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %lk3, metadata !26, metadata !13), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %p4, metadata !28, metadata !13), !dbg !29
  %5 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !30
  store i32 %5, i32* %p4, align 4, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %lk4, metadata !31, metadata !13), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %p5, metadata !33, metadata !13), !dbg !34
  %6 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !35
  store i32 %6, i32* %p5, align 4, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %lk5, metadata !36, metadata !13), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %cond, metadata !38, metadata !13), !dbg !39
  br label %7, !dbg !40

; <label>:7                                       ; preds = %83, %0
  %8 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !41
  store i32 %8, i32* %cond, align 4, !dbg !43
  %9 = load i32, i32* %cond, align 4, !dbg !44
  %10 = icmp eq i32 %9, 0, !dbg !46
  br i1 %10, label %11, label %12, !dbg !47

; <label>:11                                      ; preds = %7
  br label %84, !dbg !48

; <label>:12                                      ; preds = %7
  br label %13

; <label>:13                                      ; preds = %12
  store i32 0, i32* %lk1, align 4, !dbg !50
  store i32 0, i32* %lk2, align 4, !dbg !51
  store i32 0, i32* %lk3, align 4, !dbg !52
  store i32 0, i32* %lk4, align 4, !dbg !53
  store i32 0, i32* %lk5, align 4, !dbg !54
  %14 = load i32, i32* %p1, align 4, !dbg !55
  %15 = icmp ne i32 %14, 0, !dbg !57
  br i1 %15, label %16, label %17, !dbg !58

; <label>:16                                      ; preds = %13
  store i32 1, i32* %lk1, align 4, !dbg !59
  br label %18, !dbg !61

; <label>:17                                      ; preds = %13
  br label %18

; <label>:18                                      ; preds = %17, %16
  %19 = load i32, i32* %p2, align 4, !dbg !62
  %20 = icmp ne i32 %19, 0, !dbg !64
  br i1 %20, label %21, label %22, !dbg !65

; <label>:21                                      ; preds = %18
  store i32 1, i32* %lk2, align 4, !dbg !66
  br label %23, !dbg !68

; <label>:22                                      ; preds = %18
  br label %23

; <label>:23                                      ; preds = %22, %21
  %24 = load i32, i32* %p3, align 4, !dbg !69
  %25 = icmp ne i32 %24, 0, !dbg !71
  br i1 %25, label %26, label %27, !dbg !72

; <label>:26                                      ; preds = %23
  store i32 1, i32* %lk3, align 4, !dbg !73
  br label %28, !dbg !75

; <label>:27                                      ; preds = %23
  br label %28

; <label>:28                                      ; preds = %27, %26
  %29 = load i32, i32* %p4, align 4, !dbg !76
  %30 = icmp ne i32 %29, 0, !dbg !78
  br i1 %30, label %31, label %32, !dbg !79

; <label>:31                                      ; preds = %28
  store i32 1, i32* %lk4, align 4, !dbg !80
  br label %33, !dbg !82

; <label>:32                                      ; preds = %28
  br label %33

; <label>:33                                      ; preds = %32, %31
  %34 = load i32, i32* %p5, align 4, !dbg !83
  %35 = icmp ne i32 %34, 0, !dbg !85
  br i1 %35, label %36, label %37, !dbg !86

; <label>:36                                      ; preds = %33
  store i32 1, i32* %lk5, align 4, !dbg !87
  br label %38, !dbg !89

; <label>:37                                      ; preds = %33
  br label %38

; <label>:38                                      ; preds = %37, %36
  %39 = load i32, i32* %p1, align 4, !dbg !90
  %40 = icmp ne i32 %39, 0, !dbg !92
  br i1 %40, label %41, label %46, !dbg !93

; <label>:41                                      ; preds = %38
  %42 = load i32, i32* %lk1, align 4, !dbg !94
  %43 = icmp ne i32 %42, 1, !dbg !97
  br i1 %43, label %44, label %45, !dbg !98

; <label>:44                                      ; preds = %41
  br label %85, !dbg !99

; <label>:45                                      ; preds = %41
  store i32 0, i32* %lk1, align 4, !dbg !100
  br label %47, !dbg !101

; <label>:46                                      ; preds = %38
  br label %47

; <label>:47                                      ; preds = %46, %45
  %48 = load i32, i32* %p2, align 4, !dbg !102
  %49 = icmp ne i32 %48, 0, !dbg !104
  br i1 %49, label %50, label %55, !dbg !105

; <label>:50                                      ; preds = %47
  %51 = load i32, i32* %lk2, align 4, !dbg !106
  %52 = icmp ne i32 %51, 1, !dbg !109
  br i1 %52, label %53, label %54, !dbg !110

; <label>:53                                      ; preds = %50
  br label %85, !dbg !111

; <label>:54                                      ; preds = %50
  store i32 0, i32* %lk2, align 4, !dbg !112
  br label %56, !dbg !113

; <label>:55                                      ; preds = %47
  br label %56

; <label>:56                                      ; preds = %55, %54
  %57 = load i32, i32* %p3, align 4, !dbg !114
  %58 = icmp ne i32 %57, 0, !dbg !116
  br i1 %58, label %59, label %64, !dbg !117

; <label>:59                                      ; preds = %56
  %60 = load i32, i32* %lk3, align 4, !dbg !118
  %61 = icmp ne i32 %60, 1, !dbg !121
  br i1 %61, label %62, label %63, !dbg !122

; <label>:62                                      ; preds = %59
  br label %85, !dbg !123

; <label>:63                                      ; preds = %59
  store i32 0, i32* %lk3, align 4, !dbg !124
  br label %65, !dbg !125

; <label>:64                                      ; preds = %56
  br label %65

; <label>:65                                      ; preds = %64, %63
  %66 = load i32, i32* %p4, align 4, !dbg !126
  %67 = icmp ne i32 %66, 0, !dbg !128
  br i1 %67, label %68, label %73, !dbg !129

; <label>:68                                      ; preds = %65
  %69 = load i32, i32* %lk4, align 4, !dbg !130
  %70 = icmp ne i32 %69, 1, !dbg !133
  br i1 %70, label %71, label %72, !dbg !134

; <label>:71                                      ; preds = %68
  br label %85, !dbg !135

; <label>:72                                      ; preds = %68
  store i32 0, i32* %lk4, align 4, !dbg !136
  br label %74, !dbg !137

; <label>:73                                      ; preds = %65
  br label %74

; <label>:74                                      ; preds = %73, %72
  %75 = load i32, i32* %p5, align 4, !dbg !138
  %76 = icmp ne i32 %75, 0, !dbg !140
  br i1 %76, label %77, label %82, !dbg !141

; <label>:77                                      ; preds = %74
  %78 = load i32, i32* %lk5, align 4, !dbg !142
  %79 = icmp ne i32 %78, 1, !dbg !145
  br i1 %79, label %80, label %81, !dbg !146

; <label>:80                                      ; preds = %77
  br label %85, !dbg !147

; <label>:81                                      ; preds = %77
  store i32 0, i32* %lk5, align 4, !dbg !148
  br label %83, !dbg !149

; <label>:82                                      ; preds = %74
  br label %83

; <label>:83                                      ; preds = %82, %81
  br label %7, !dbg !40

; <label>:84                                      ; preds = %11
  ret i32 0, !dbg !150

; <label>:85                                      ; preds = %80, %71, %62, %53, %44
  call void (...) @__VERIFIER_error() #4, !dbg !151
  unreachable, !dbg !151
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @__VERIFIER_nondet_int(...) #2

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #3

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "programs/svcomp16/locks/test_locks_5_true-unreach-call_false-termination.c", directory: ".")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "main", scope: !1, file: !1, line: 4, type: !5, isLocal: false, isDefinition: true, scopeLine: 5, isOptimized: false, function: i32 ()* @main, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{i32 2, !"Dwarf Version", i32 2}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"PIC Level", i32 2}
!11 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!12 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p1", scope: !4, file: !1, line: 6, type: !7)
!13 = !DIExpression()
!14 = !DILocation(line: 6, column: 9, scope: !4)
!15 = !DILocation(line: 6, column: 14, scope: !4)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lk1", scope: !4, file: !1, line: 7, type: !7)
!17 = !DILocation(line: 7, column: 9, scope: !4)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p2", scope: !4, file: !1, line: 9, type: !7)
!19 = !DILocation(line: 9, column: 9, scope: !4)
!20 = !DILocation(line: 9, column: 14, scope: !4)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lk2", scope: !4, file: !1, line: 10, type: !7)
!22 = !DILocation(line: 10, column: 9, scope: !4)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p3", scope: !4, file: !1, line: 12, type: !7)
!24 = !DILocation(line: 12, column: 9, scope: !4)
!25 = !DILocation(line: 12, column: 14, scope: !4)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lk3", scope: !4, file: !1, line: 13, type: !7)
!27 = !DILocation(line: 13, column: 9, scope: !4)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p4", scope: !4, file: !1, line: 15, type: !7)
!29 = !DILocation(line: 15, column: 9, scope: !4)
!30 = !DILocation(line: 15, column: 14, scope: !4)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lk4", scope: !4, file: !1, line: 16, type: !7)
!32 = !DILocation(line: 16, column: 9, scope: !4)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p5", scope: !4, file: !1, line: 18, type: !7)
!34 = !DILocation(line: 18, column: 9, scope: !4)
!35 = !DILocation(line: 18, column: 14, scope: !4)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lk5", scope: !4, file: !1, line: 19, type: !7)
!37 = !DILocation(line: 19, column: 9, scope: !4)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cond", scope: !4, file: !1, line: 22, type: !7)
!39 = !DILocation(line: 22, column: 9, scope: !4)
!40 = !DILocation(line: 24, column: 5, scope: !4)
!41 = !DILocation(line: 25, column: 16, scope: !42)
!42 = distinct !DILexicalBlock(scope: !4, file: !1, line: 24, column: 14)
!43 = !DILocation(line: 25, column: 14, scope: !42)
!44 = !DILocation(line: 26, column: 13, scope: !45)
!45 = distinct !DILexicalBlock(scope: !42, file: !1, line: 26, column: 13)
!46 = !DILocation(line: 26, column: 18, scope: !45)
!47 = !DILocation(line: 26, column: 13, scope: !42)
!48 = !DILocation(line: 27, column: 13, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !1, line: 26, column: 24)
!50 = !DILocation(line: 29, column: 13, scope: !42)
!51 = !DILocation(line: 31, column: 13, scope: !42)
!52 = !DILocation(line: 33, column: 13, scope: !42)
!53 = !DILocation(line: 35, column: 13, scope: !42)
!54 = !DILocation(line: 37, column: 13, scope: !42)
!55 = !DILocation(line: 41, column: 13, scope: !56)
!56 = distinct !DILexicalBlock(scope: !42, file: !1, line: 41, column: 13)
!57 = !DILocation(line: 41, column: 16, scope: !56)
!58 = !DILocation(line: 41, column: 13, scope: !42)
!59 = !DILocation(line: 42, column: 17, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 41, column: 22)
!61 = !DILocation(line: 43, column: 9, scope: !60)
!62 = !DILocation(line: 45, column: 13, scope: !63)
!63 = distinct !DILexicalBlock(scope: !42, file: !1, line: 45, column: 13)
!64 = !DILocation(line: 45, column: 16, scope: !63)
!65 = !DILocation(line: 45, column: 13, scope: !42)
!66 = !DILocation(line: 46, column: 17, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !1, line: 45, column: 22)
!68 = !DILocation(line: 47, column: 9, scope: !67)
!69 = !DILocation(line: 49, column: 13, scope: !70)
!70 = distinct !DILexicalBlock(scope: !42, file: !1, line: 49, column: 13)
!71 = !DILocation(line: 49, column: 16, scope: !70)
!72 = !DILocation(line: 49, column: 13, scope: !42)
!73 = !DILocation(line: 50, column: 17, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !1, line: 49, column: 22)
!75 = !DILocation(line: 51, column: 9, scope: !74)
!76 = !DILocation(line: 53, column: 13, scope: !77)
!77 = distinct !DILexicalBlock(scope: !42, file: !1, line: 53, column: 13)
!78 = !DILocation(line: 53, column: 16, scope: !77)
!79 = !DILocation(line: 53, column: 13, scope: !42)
!80 = !DILocation(line: 54, column: 17, scope: !81)
!81 = distinct !DILexicalBlock(scope: !77, file: !1, line: 53, column: 22)
!82 = !DILocation(line: 55, column: 9, scope: !81)
!83 = !DILocation(line: 57, column: 13, scope: !84)
!84 = distinct !DILexicalBlock(scope: !42, file: !1, line: 57, column: 13)
!85 = !DILocation(line: 57, column: 16, scope: !84)
!86 = !DILocation(line: 57, column: 13, scope: !42)
!87 = !DILocation(line: 58, column: 17, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !1, line: 57, column: 22)
!89 = !DILocation(line: 59, column: 9, scope: !88)
!90 = !DILocation(line: 63, column: 13, scope: !91)
!91 = distinct !DILexicalBlock(scope: !42, file: !1, line: 63, column: 13)
!92 = !DILocation(line: 63, column: 16, scope: !91)
!93 = !DILocation(line: 63, column: 13, scope: !42)
!94 = !DILocation(line: 64, column: 17, scope: !95)
!95 = distinct !DILexicalBlock(scope: !96, file: !1, line: 64, column: 17)
!96 = distinct !DILexicalBlock(scope: !91, file: !1, line: 63, column: 22)
!97 = !DILocation(line: 64, column: 21, scope: !95)
!98 = !DILocation(line: 64, column: 17, scope: !96)
!99 = !DILocation(line: 64, column: 27, scope: !95)
!100 = !DILocation(line: 65, column: 17, scope: !96)
!101 = !DILocation(line: 66, column: 9, scope: !96)
!102 = !DILocation(line: 68, column: 13, scope: !103)
!103 = distinct !DILexicalBlock(scope: !42, file: !1, line: 68, column: 13)
!104 = !DILocation(line: 68, column: 16, scope: !103)
!105 = !DILocation(line: 68, column: 13, scope: !42)
!106 = !DILocation(line: 69, column: 17, scope: !107)
!107 = distinct !DILexicalBlock(scope: !108, file: !1, line: 69, column: 17)
!108 = distinct !DILexicalBlock(scope: !103, file: !1, line: 68, column: 22)
!109 = !DILocation(line: 69, column: 21, scope: !107)
!110 = !DILocation(line: 69, column: 17, scope: !108)
!111 = !DILocation(line: 69, column: 27, scope: !107)
!112 = !DILocation(line: 70, column: 17, scope: !108)
!113 = !DILocation(line: 71, column: 9, scope: !108)
!114 = !DILocation(line: 73, column: 13, scope: !115)
!115 = distinct !DILexicalBlock(scope: !42, file: !1, line: 73, column: 13)
!116 = !DILocation(line: 73, column: 16, scope: !115)
!117 = !DILocation(line: 73, column: 13, scope: !42)
!118 = !DILocation(line: 74, column: 17, scope: !119)
!119 = distinct !DILexicalBlock(scope: !120, file: !1, line: 74, column: 17)
!120 = distinct !DILexicalBlock(scope: !115, file: !1, line: 73, column: 22)
!121 = !DILocation(line: 74, column: 21, scope: !119)
!122 = !DILocation(line: 74, column: 17, scope: !120)
!123 = !DILocation(line: 74, column: 27, scope: !119)
!124 = !DILocation(line: 75, column: 17, scope: !120)
!125 = !DILocation(line: 76, column: 9, scope: !120)
!126 = !DILocation(line: 78, column: 13, scope: !127)
!127 = distinct !DILexicalBlock(scope: !42, file: !1, line: 78, column: 13)
!128 = !DILocation(line: 78, column: 16, scope: !127)
!129 = !DILocation(line: 78, column: 13, scope: !42)
!130 = !DILocation(line: 79, column: 17, scope: !131)
!131 = distinct !DILexicalBlock(scope: !132, file: !1, line: 79, column: 17)
!132 = distinct !DILexicalBlock(scope: !127, file: !1, line: 78, column: 22)
!133 = !DILocation(line: 79, column: 21, scope: !131)
!134 = !DILocation(line: 79, column: 17, scope: !132)
!135 = !DILocation(line: 79, column: 27, scope: !131)
!136 = !DILocation(line: 80, column: 17, scope: !132)
!137 = !DILocation(line: 81, column: 9, scope: !132)
!138 = !DILocation(line: 83, column: 13, scope: !139)
!139 = distinct !DILexicalBlock(scope: !42, file: !1, line: 83, column: 13)
!140 = !DILocation(line: 83, column: 16, scope: !139)
!141 = !DILocation(line: 83, column: 13, scope: !42)
!142 = !DILocation(line: 84, column: 17, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !1, line: 84, column: 17)
!144 = distinct !DILexicalBlock(scope: !139, file: !1, line: 83, column: 22)
!145 = !DILocation(line: 84, column: 21, scope: !143)
!146 = !DILocation(line: 84, column: 17, scope: !144)
!147 = !DILocation(line: 84, column: 27, scope: !143)
!148 = !DILocation(line: 85, column: 17, scope: !144)
!149 = !DILocation(line: 86, column: 9, scope: !144)
!150 = !DILocation(line: 90, column: 5, scope: !4)
!151 = !DILocation(line: 91, column: 10, scope: !4)
