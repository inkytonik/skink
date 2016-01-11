; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %s__state = alloca i32, align 4
  %s__hit = alloca i32, align 4
  %blastFlag = alloca i32, align 4
  %tmp___1 = alloca i32, align 4
  store i32 0, i32* %1
  call void @llvm.dbg.declare(metadata i32* %s__state, metadata !12, metadata !13), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %s__hit, metadata !15, metadata !13), !dbg !16
  %2 = call i32 @__VERIFIER_nondet_int(), !dbg !17
  store i32 %2, i32* %s__hit, align 4, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %blastFlag, metadata !18, metadata !13), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %tmp___1, metadata !20, metadata !13), !dbg !21
  store i32 8466, i32* %s__state, align 4, !dbg !22
  store i32 0, i32* %blastFlag, align 4, !dbg !23
  br label %3, !dbg !24

; <label>:3                                       ; preds = %73, %0
  %4 = load i32, i32* %s__state, align 4, !dbg !25
  %5 = icmp sle i32 %4, 8512, !dbg !28
  br i1 %5, label %6, label %10, !dbg !29

; <label>:6                                       ; preds = %3
  %7 = load i32, i32* %blastFlag, align 4, !dbg !30
  %8 = icmp sgt i32 %7, 2, !dbg !31
  br i1 %8, label %9, label %10, !dbg !32

; <label>:9                                       ; preds = %6
  br label %75, !dbg !33

; <label>:10                                      ; preds = %6, %3
  %11 = load i32, i32* %s__state, align 4, !dbg !35
  %12 = icmp eq i32 %11, 8466, !dbg !42
  br i1 %12, label %13, label %14, !dbg !43

; <label>:13                                      ; preds = %10
  br label %27, !dbg !44

; <label>:14                                      ; preds = %10
  %15 = load i32, i32* %s__state, align 4, !dbg !46
  %16 = icmp eq i32 %15, 8512, !dbg !51
  br i1 %16, label %17, label %18, !dbg !52

; <label>:17                                      ; preds = %14
  br label %37, !dbg !53

; <label>:18                                      ; preds = %14
  %19 = load i32, i32* %s__state, align 4, !dbg !55
  %20 = icmp eq i32 %19, 8640, !dbg !71
  br i1 %20, label %21, label %22, !dbg !72

; <label>:21                                      ; preds = %18
  br label %44, !dbg !73

; <label>:22                                      ; preds = %18
  %23 = load i32, i32* %s__state, align 4, !dbg !75
  %24 = icmp eq i32 %23, 8656, !dbg !79
  br i1 %24, label %25, label %26, !dbg !80

; <label>:25                                      ; preds = %22
  br label %54, !dbg !81

; <label>:26                                      ; preds = %22
  br label %74, !dbg !83

; <label>:27                                      ; preds = %13
  %28 = load i32, i32* %blastFlag, align 4, !dbg !87
  %29 = icmp eq i32 %28, 0, !dbg !89
  br i1 %29, label %30, label %31, !dbg !90

; <label>:30                                      ; preds = %27
  store i32 2, i32* %blastFlag, align 4, !dbg !91
  br label %31, !dbg !93

; <label>:31                                      ; preds = %30, %27
  %32 = load i32, i32* %s__hit, align 4, !dbg !94
  %33 = icmp ne i32 %32, 0, !dbg !94
  br i1 %33, label %34, label %35, !dbg !96

; <label>:34                                      ; preds = %31
  store i32 8656, i32* %s__state, align 4, !dbg !97
  br label %36, !dbg !99

; <label>:35                                      ; preds = %31
  store i32 8512, i32* %s__state, align 4, !dbg !100
  br label %36

; <label>:36                                      ; preds = %35, %34
  br label %73, !dbg !102

; <label>:37                                      ; preds = %17
  %38 = call i32 @__VERIFIER_nondet_int(), !dbg !103
  store i32 %38, i32* %tmp___1, align 4, !dbg !104
  %39 = load i32, i32* %tmp___1, align 4, !dbg !105
  %40 = icmp ne i32 %39, 0, !dbg !105
  br i1 %40, label %41, label %42, !dbg !107

; <label>:41                                      ; preds = %37
  store i32 8466, i32* %s__state, align 4, !dbg !108
  br label %43, !dbg !110

; <label>:42                                      ; preds = %37
  store i32 8640, i32* %s__state, align 4, !dbg !111
  br label %43

; <label>:43                                      ; preds = %42, %41
  br label %73, !dbg !113

; <label>:44                                      ; preds = %21
  %45 = load i32, i32* %blastFlag, align 4, !dbg !114
  %46 = icmp eq i32 %45, 3, !dbg !116
  br i1 %46, label %47, label %48, !dbg !117

; <label>:47                                      ; preds = %44
  store i32 4, i32* %blastFlag, align 4, !dbg !118
  br label %48, !dbg !120

; <label>:48                                      ; preds = %47, %44
  %49 = load i32, i32* %s__hit, align 4, !dbg !121
  %50 = icmp ne i32 %49, 0, !dbg !121
  br i1 %50, label %51, label %52, !dbg !123

; <label>:51                                      ; preds = %48
  br label %74, !dbg !124

; <label>:52                                      ; preds = %48
  store i32 8656, i32* %s__state, align 4, !dbg !126
  br label %53

; <label>:53                                      ; preds = %52
  br label %73, !dbg !128

; <label>:54                                      ; preds = %25
  %55 = load i32, i32* %blastFlag, align 4, !dbg !129
  %56 = icmp eq i32 %55, 2, !dbg !131
  br i1 %56, label %57, label %58, !dbg !132

; <label>:57                                      ; preds = %54
  store i32 3, i32* %blastFlag, align 4, !dbg !133
  br label %58, !dbg !135

; <label>:58                                      ; preds = %57, %54
  %59 = load i32, i32* %blastFlag, align 4, !dbg !136
  %60 = icmp eq i32 %59, 4, !dbg !138
  br i1 %60, label %61, label %62, !dbg !139

; <label>:61                                      ; preds = %58
  store i32 5, i32* %blastFlag, align 4, !dbg !140
  br label %67, !dbg !142

; <label>:62                                      ; preds = %58
  %63 = load i32, i32* %blastFlag, align 4, !dbg !143
  %64 = icmp eq i32 %63, 5, !dbg !146
  br i1 %64, label %65, label %66, !dbg !147

; <label>:65                                      ; preds = %62
  br label %75, !dbg !148

; <label>:66                                      ; preds = %62
  br label %67

; <label>:67                                      ; preds = %66, %61
  %68 = load i32, i32* %s__hit, align 4, !dbg !150
  %69 = icmp ne i32 %68, 0, !dbg !150
  br i1 %69, label %70, label %71, !dbg !152

; <label>:70                                      ; preds = %67
  store i32 8640, i32* %s__state, align 4, !dbg !153
  br label %72, !dbg !155

; <label>:71                                      ; preds = %67
  br label %74, !dbg !156

; <label>:72                                      ; preds = %70
  br label %73, !dbg !158

; <label>:73                                      ; preds = %72, %53, %43, %36
  br label %3, !dbg !24

; <label>:74                                      ; preds = %71, %51, %26
  ret i32 -1, !dbg !159

; <label>:75                                      ; preds = %65, %9
  call void (...) @__VERIFIER_error() #4, !dbg !160
  unreachable, !dbg !160
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @__VERIFIER_nondet_int() #2

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
!1 = !DIFile(filename: "svcomp16/ssh-simplified/s3_srvr_1b_true-unreach-call_false-termination.cil.c", directory: ".")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "main", scope: !1, file: !1, line: 9, type: !5, isLocal: false, isDefinition: true, scopeLine: 9, isOptimized: false, function: i32 ()* @main, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{i32 2, !"Dwarf Version", i32 2}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"PIC Level", i32 2}
!11 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!12 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s__state", scope: !4, file: !1, line: 10, type: !7)
!13 = !DIExpression()
!14 = !DILocation(line: 10, column: 7, scope: !4)
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s__hit", scope: !4, file: !1, line: 11, type: !7)
!16 = !DILocation(line: 11, column: 7, scope: !4)
!17 = !DILocation(line: 11, column: 16, scope: !4)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "blastFlag", scope: !4, file: !1, line: 12, type: !7)
!19 = !DILocation(line: 12, column: 7, scope: !4)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___1", scope: !4, file: !1, line: 13, type: !7)
!21 = !DILocation(line: 13, column: 7, scope: !4)
!22 = !DILocation(line: 15, column: 12, scope: !4)
!23 = !DILocation(line: 16, column: 13, scope: !4)
!24 = !DILocation(line: 18, column: 3, scope: !4)
!25 = !DILocation(line: 19, column: 8, scope: !26)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 19, column: 8)
!27 = distinct !DILexicalBlock(scope: !4, file: !1, line: 18, column: 13)
!28 = !DILocation(line: 19, column: 17, scope: !26)
!29 = !DILocation(line: 19, column: 25, scope: !26)
!30 = !DILocation(line: 19, column: 28, scope: !26)
!31 = !DILocation(line: 19, column: 38, scope: !26)
!32 = !DILocation(line: 19, column: 8, scope: !27)
!33 = !DILocation(line: 19, column: 45, scope: !34)
!34 = distinct !DILexicalBlock(scope: !26, file: !1, line: 19, column: 43)
!35 = !DILocation(line: 25, column: 29, scope: !36)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 25, column: 29)
!37 = distinct !DILexicalBlock(scope: !38, file: !1, line: 24, column: 23)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 23, column: 21)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 22, column: 19)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 21, column: 17)
!41 = distinct !DILexicalBlock(scope: !27, file: !1, line: 20, column: 15)
!42 = !DILocation(line: 25, column: 38, scope: !36)
!43 = !DILocation(line: 25, column: 29, scope: !37)
!44 = !DILocation(line: 26, column: 27, scope: !45)
!45 = distinct !DILexicalBlock(scope: !36, file: !1, line: 25, column: 47)
!46 = !DILocation(line: 30, column: 35, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 30, column: 35)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 29, column: 29)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 28, column: 27)
!50 = distinct !DILexicalBlock(scope: !36, file: !1, line: 27, column: 32)
!51 = !DILocation(line: 30, column: 44, scope: !47)
!52 = !DILocation(line: 30, column: 35, scope: !48)
!53 = !DILocation(line: 31, column: 33, scope: !54)
!54 = distinct !DILexicalBlock(scope: !47, file: !1, line: 30, column: 53)
!55 = !DILocation(line: 46, column: 65, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !1, line: 46, column: 65)
!57 = distinct !DILexicalBlock(scope: !58, file: !1, line: 45, column: 59)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 44, column: 57)
!59 = distinct !DILexicalBlock(scope: !60, file: !1, line: 43, column: 55)
!60 = distinct !DILexicalBlock(scope: !61, file: !1, line: 42, column: 53)
!61 = distinct !DILexicalBlock(scope: !62, file: !1, line: 41, column: 51)
!62 = distinct !DILexicalBlock(scope: !63, file: !1, line: 40, column: 49)
!63 = distinct !DILexicalBlock(scope: !64, file: !1, line: 39, column: 45)
!64 = distinct !DILexicalBlock(scope: !65, file: !1, line: 38, column: 43)
!65 = distinct !DILexicalBlock(scope: !66, file: !1, line: 37, column: 41)
!66 = distinct !DILexicalBlock(scope: !67, file: !1, line: 36, column: 39)
!67 = distinct !DILexicalBlock(scope: !68, file: !1, line: 35, column: 37)
!68 = distinct !DILexicalBlock(scope: !69, file: !1, line: 34, column: 35)
!69 = distinct !DILexicalBlock(scope: !70, file: !1, line: 33, column: 33)
!70 = distinct !DILexicalBlock(scope: !47, file: !1, line: 32, column: 38)
!71 = !DILocation(line: 46, column: 74, scope: !56)
!72 = !DILocation(line: 46, column: 65, scope: !57)
!73 = !DILocation(line: 47, column: 63, scope: !74)
!74 = distinct !DILexicalBlock(scope: !56, file: !1, line: 46, column: 83)
!75 = !DILocation(line: 50, column: 69, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !1, line: 50, column: 69)
!77 = distinct !DILexicalBlock(scope: !78, file: !1, line: 49, column: 63)
!78 = distinct !DILexicalBlock(scope: !56, file: !1, line: 48, column: 68)
!79 = !DILocation(line: 50, column: 78, scope: !76)
!80 = !DILocation(line: 50, column: 69, scope: !77)
!81 = !DILocation(line: 51, column: 67, scope: !82)
!82 = distinct !DILexicalBlock(scope: !76, file: !1, line: 50, column: 87)
!83 = !DILocation(line: 55, column: 71, scope: !84)
!84 = distinct !DILexicalBlock(scope: !85, file: !1, line: 54, column: 69)
!85 = distinct !DILexicalBlock(scope: !86, file: !1, line: 53, column: 67)
!86 = distinct !DILexicalBlock(scope: !76, file: !1, line: 52, column: 72)
!87 = !DILocation(line: 58, column: 81, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !1, line: 58, column: 81)
!89 = !DILocation(line: 58, column: 91, scope: !88)
!90 = !DILocation(line: 58, column: 81, scope: !84)
!91 = !DILocation(line: 59, column: 89, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !1, line: 58, column: 97)
!93 = !DILocation(line: 60, column: 77, scope: !92)
!94 = !DILocation(line: 61, column: 81, scope: !95)
!95 = distinct !DILexicalBlock(scope: !84, file: !1, line: 61, column: 81)
!96 = !DILocation(line: 61, column: 81, scope: !84)
!97 = !DILocation(line: 62, column: 88, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !1, line: 61, column: 89)
!99 = !DILocation(line: 63, column: 77, scope: !98)
!100 = !DILocation(line: 64, column: 88, scope: !101)
!101 = distinct !DILexicalBlock(scope: !95, file: !1, line: 63, column: 84)
!102 = !DILocation(line: 66, column: 77, scope: !84)
!103 = !DILocation(line: 69, column: 87, scope: !84)
!104 = !DILocation(line: 69, column: 85, scope: !84)
!105 = !DILocation(line: 70, column: 81, scope: !106)
!106 = distinct !DILexicalBlock(scope: !84, file: !1, line: 70, column: 81)
!107 = !DILocation(line: 70, column: 81, scope: !84)
!108 = !DILocation(line: 71, column: 88, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !1, line: 70, column: 90)
!110 = !DILocation(line: 72, column: 77, scope: !109)
!111 = !DILocation(line: 73, column: 88, scope: !112)
!112 = distinct !DILexicalBlock(scope: !106, file: !1, line: 72, column: 84)
!113 = !DILocation(line: 75, column: 77, scope: !84)
!114 = !DILocation(line: 78, column: 81, scope: !115)
!115 = distinct !DILexicalBlock(scope: !84, file: !1, line: 78, column: 81)
!116 = !DILocation(line: 78, column: 91, scope: !115)
!117 = !DILocation(line: 78, column: 81, scope: !84)
!118 = !DILocation(line: 79, column: 89, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 78, column: 97)
!120 = !DILocation(line: 80, column: 77, scope: !119)
!121 = !DILocation(line: 81, column: 81, scope: !122)
!122 = distinct !DILexicalBlock(scope: !84, file: !1, line: 81, column: 81)
!123 = !DILocation(line: 81, column: 81, scope: !84)
!124 = !DILocation(line: 82, column: 79, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !1, line: 81, column: 89)
!126 = !DILocation(line: 84, column: 88, scope: !127)
!127 = distinct !DILexicalBlock(scope: !122, file: !1, line: 83, column: 84)
!128 = !DILocation(line: 86, column: 77, scope: !84)
!129 = !DILocation(line: 89, column: 81, scope: !130)
!130 = distinct !DILexicalBlock(scope: !84, file: !1, line: 89, column: 81)
!131 = !DILocation(line: 89, column: 91, scope: !130)
!132 = !DILocation(line: 89, column: 81, scope: !84)
!133 = !DILocation(line: 90, column: 89, scope: !134)
!134 = distinct !DILexicalBlock(scope: !130, file: !1, line: 89, column: 97)
!135 = !DILocation(line: 91, column: 77, scope: !134)
!136 = !DILocation(line: 93, column: 81, scope: !137)
!137 = distinct !DILexicalBlock(scope: !84, file: !1, line: 93, column: 81)
!138 = !DILocation(line: 93, column: 91, scope: !137)
!139 = !DILocation(line: 93, column: 81, scope: !84)
!140 = !DILocation(line: 94, column: 89, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !1, line: 93, column: 97)
!142 = !DILocation(line: 95, column: 77, scope: !141)
!143 = !DILocation(line: 96, column: 83, scope: !144)
!144 = distinct !DILexicalBlock(scope: !145, file: !1, line: 96, column: 83)
!145 = distinct !DILexicalBlock(scope: !137, file: !1, line: 95, column: 84)
!146 = !DILocation(line: 96, column: 93, scope: !144)
!147 = !DILocation(line: 96, column: 83, scope: !145)
!148 = !DILocation(line: 97, column: 81, scope: !149)
!149 = distinct !DILexicalBlock(scope: !144, file: !1, line: 96, column: 99)
!150 = !DILocation(line: 100, column: 81, scope: !151)
!151 = distinct !DILexicalBlock(scope: !84, file: !1, line: 100, column: 81)
!152 = !DILocation(line: 100, column: 81, scope: !84)
!153 = !DILocation(line: 101, column: 88, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !1, line: 100, column: 89)
!155 = !DILocation(line: 102, column: 77, scope: !154)
!156 = !DILocation(line: 103, column: 79, scope: !157)
!157 = distinct !DILexicalBlock(scope: !151, file: !1, line: 102, column: 84)
!158 = !DILocation(line: 105, column: 77, scope: !84)
!159 = !DILocation(line: 138, column: 3, scope: !4)
!160 = !DILocation(line: 139, column: 10, scope: !4)
