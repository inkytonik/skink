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
  call void (...) @__VERIFIER_error() #5, !dbg !23
  unreachable, !dbg !23

; <label>:6                                       ; preds = %0
  ret void, !dbg !25
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %x, metadata !26, metadata !16), !dbg !28
  store i32 0, i32* %x, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %y, metadata !29, metadata !16), !dbg !30
  %3 = call i32 @__VERIFIER_nondet_uint(), !dbg !31
  store i32 %3, i32* %y, align 4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !32
  br label %4, !dbg !34

; <label>:4                                       ; preds = %107, %0
  %5 = load i32, i32* %x, align 4, !dbg !35
  %6 = icmp ult i32 %5, 99, !dbg !36
  br i1 %6, label %7, label %108, !dbg !34

; <label>:7                                       ; preds = %4
  %8 = load i32, i32* %y, align 4, !dbg !37
  %9 = urem i32 %8, 2, !dbg !40
  %10 = icmp eq i32 %9, 0, !dbg !41
  br i1 %10, label %11, label %14, !dbg !42

; <label>:11                                      ; preds = %7
  %12 = load i32, i32* %x, align 4, !dbg !43
  %13 = add i32 %12, 2, !dbg !43
  store i32 %13, i32* %x, align 4, !dbg !43
  br label %17, !dbg !44

; <label>:14                                      ; preds = %7
  %15 = load i32, i32* %x, align 4, !dbg !45
  %16 = add i32 %15, 1, !dbg !45
  store i32 %16, i32* %x, align 4, !dbg !45
  br label %17

; <label>:17                                      ; preds = %14, %11
  %18 = load i32, i32* %y, align 4, !dbg !46
  %19 = urem i32 %18, 2, !dbg !48
  %20 = icmp eq i32 %19, 0, !dbg !49
  br i1 %20, label %21, label %24, !dbg !50

; <label>:21                                      ; preds = %17
  %22 = load i32, i32* %x, align 4, !dbg !51
  %23 = add i32 %22, 2, !dbg !51
  store i32 %23, i32* %x, align 4, !dbg !51
  br label %27, !dbg !52

; <label>:24                                      ; preds = %17
  %25 = load i32, i32* %x, align 4, !dbg !53
  %26 = sub i32 %25, 2, !dbg !53
  store i32 %26, i32* %x, align 4, !dbg !53
  br label %27

; <label>:27                                      ; preds = %24, %21
  %28 = load i32, i32* %y, align 4, !dbg !54
  %29 = urem i32 %28, 2, !dbg !56
  %30 = icmp eq i32 %29, 0, !dbg !57
  br i1 %30, label %31, label %34, !dbg !58

; <label>:31                                      ; preds = %27
  %32 = load i32, i32* %x, align 4, !dbg !59
  %33 = add i32 %32, 2, !dbg !59
  store i32 %33, i32* %x, align 4, !dbg !59
  br label %37, !dbg !60

; <label>:34                                      ; preds = %27
  %35 = load i32, i32* %x, align 4, !dbg !61
  %36 = add i32 %35, 2, !dbg !61
  store i32 %36, i32* %x, align 4, !dbg !61
  br label %37

; <label>:37                                      ; preds = %34, %31
  %38 = load i32, i32* %y, align 4, !dbg !62
  %39 = urem i32 %38, 2, !dbg !64
  %40 = icmp eq i32 %39, 0, !dbg !65
  br i1 %40, label %41, label %44, !dbg !66

; <label>:41                                      ; preds = %37
  %42 = load i32, i32* %x, align 4, !dbg !67
  %43 = add i32 %42, 2, !dbg !67
  store i32 %43, i32* %x, align 4, !dbg !67
  br label %47, !dbg !68

; <label>:44                                      ; preds = %37
  %45 = load i32, i32* %x, align 4, !dbg !69
  %46 = sub i32 %45, 2, !dbg !69
  store i32 %46, i32* %x, align 4, !dbg !69
  br label %47

; <label>:47                                      ; preds = %44, %41
  %48 = load i32, i32* %y, align 4, !dbg !70
  %49 = urem i32 %48, 2, !dbg !72
  %50 = icmp eq i32 %49, 0, !dbg !73
  br i1 %50, label %51, label %54, !dbg !74

; <label>:51                                      ; preds = %47
  %52 = load i32, i32* %x, align 4, !dbg !75
  %53 = add i32 %52, 2, !dbg !75
  store i32 %53, i32* %x, align 4, !dbg !75
  br label %57, !dbg !76

; <label>:54                                      ; preds = %47
  %55 = load i32, i32* %x, align 4, !dbg !77
  %56 = add i32 %55, 2, !dbg !77
  store i32 %56, i32* %x, align 4, !dbg !77
  br label %57

; <label>:57                                      ; preds = %54, %51
  %58 = load i32, i32* %y, align 4, !dbg !78
  %59 = urem i32 %58, 2, !dbg !80
  %60 = icmp eq i32 %59, 0, !dbg !81
  br i1 %60, label %61, label %64, !dbg !82

; <label>:61                                      ; preds = %57
  %62 = load i32, i32* %x, align 4, !dbg !83
  %63 = add i32 %62, 2, !dbg !83
  store i32 %63, i32* %x, align 4, !dbg !83
  br label %67, !dbg !84

; <label>:64                                      ; preds = %57
  %65 = load i32, i32* %x, align 4, !dbg !85
  %66 = sub i32 %65, 4, !dbg !85
  store i32 %66, i32* %x, align 4, !dbg !85
  br label %67

; <label>:67                                      ; preds = %64, %61
  %68 = load i32, i32* %y, align 4, !dbg !86
  %69 = urem i32 %68, 2, !dbg !88
  %70 = icmp eq i32 %69, 0, !dbg !89
  br i1 %70, label %71, label %74, !dbg !90

; <label>:71                                      ; preds = %67
  %72 = load i32, i32* %x, align 4, !dbg !91
  %73 = add i32 %72, 2, !dbg !91
  store i32 %73, i32* %x, align 4, !dbg !91
  br label %77, !dbg !92

; <label>:74                                      ; preds = %67
  %75 = load i32, i32* %x, align 4, !dbg !93
  %76 = add i32 %75, 4, !dbg !93
  store i32 %76, i32* %x, align 4, !dbg !93
  br label %77

; <label>:77                                      ; preds = %74, %71
  %78 = load i32, i32* %y, align 4, !dbg !94
  %79 = urem i32 %78, 2, !dbg !96
  %80 = icmp eq i32 %79, 0, !dbg !97
  br i1 %80, label %81, label %84, !dbg !98

; <label>:81                                      ; preds = %77
  %82 = load i32, i32* %x, align 4, !dbg !99
  %83 = add i32 %82, 2, !dbg !99
  store i32 %83, i32* %x, align 4, !dbg !99
  br label %87, !dbg !100

; <label>:84                                      ; preds = %77
  %85 = load i32, i32* %x, align 4, !dbg !101
  %86 = add i32 %85, 2, !dbg !101
  store i32 %86, i32* %x, align 4, !dbg !101
  br label %87

; <label>:87                                      ; preds = %84, %81
  %88 = load i32, i32* %y, align 4, !dbg !102
  %89 = urem i32 %88, 2, !dbg !104
  %90 = icmp eq i32 %89, 0, !dbg !105
  br i1 %90, label %91, label %94, !dbg !106

; <label>:91                                      ; preds = %87
  %92 = load i32, i32* %x, align 4, !dbg !107
  %93 = add i32 %92, 2, !dbg !107
  store i32 %93, i32* %x, align 4, !dbg !107
  br label %97, !dbg !108

; <label>:94                                      ; preds = %87
  %95 = load i32, i32* %x, align 4, !dbg !109
  %96 = sub i32 %95, 4, !dbg !109
  store i32 %96, i32* %x, align 4, !dbg !109
  br label %97

; <label>:97                                      ; preds = %94, %91
  %98 = load i32, i32* %y, align 4, !dbg !110
  %99 = urem i32 %98, 2, !dbg !112
  %100 = icmp eq i32 %99, 0, !dbg !113
  br i1 %100, label %101, label %104, !dbg !114

; <label>:101                                     ; preds = %97
  %102 = load i32, i32* %x, align 4, !dbg !115
  %103 = add i32 %102, 2, !dbg !115
  store i32 %103, i32* %x, align 4, !dbg !115
  br label %107, !dbg !116

; <label>:104                                     ; preds = %97
  %105 = load i32, i32* %x, align 4, !dbg !117
  %106 = sub i32 %105, 4, !dbg !117
  store i32 %106, i32* %x, align 4, !dbg !117
  br label %107

; <label>:107                                     ; preds = %104, %101
  br label %4, !dbg !34

; <label>:108                                     ; preds = %4
  %109 = load i32, i32* %x, align 4, !dbg !118
  %110 = urem i32 %109, 2, !dbg !119
  %111 = load i32, i32* %y, align 4, !dbg !120
  %112 = urem i32 %111, 2, !dbg !121
  %113 = icmp eq i32 %110, %112, !dbg !122
  %114 = zext i1 %113 to i32, !dbg !122
  %115 = bitcast i32* %1 to i8*, !dbg !123
  call void @llvm.lifetime.start(i64 4, i8* %115), !dbg !123
  store i32 %114, i32* %1, align 4, !dbg !123
  %116 = load i32, i32* %1, align 4, !dbg !124
  %117 = icmp ne i32 %116, 0, !dbg !125
  br i1 %117, label %__VERIFIER_assert.exit, label %118, !dbg !126

; <label>:118                                     ; preds = %108
  call void (...) @__VERIFIER_error() #6, !dbg !127
  unreachable, !dbg !127

__VERIFIER_assert.exit:                           ; preds = %108
  %119 = bitcast i32* %1 to i8*, !dbg !128
  call void @llvm.lifetime.end(i64 4, i8* %119), !dbg !128
  %120 = load i32, i32* %2, !dbg !129
  ret i32 %120, !dbg !129
}

declare i32 @__VERIFIER_nondet_uint() #3

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
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "programs/svcomp16/loop-acceleration/diamond_true-unreach-call2.i", directory: ".")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 9, type: !9, isLocal: false, isDefinition: true, scopeLine: 9, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!25 = !DILocation(line: 7, column: 3, scope: !4)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !8, file: !1, line: 10, type: !27)
!27 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!28 = !DILocation(line: 10, column: 16, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !8, file: !1, line: 11, type: !27)
!30 = !DILocation(line: 11, column: 16, scope: !8)
!31 = !DILocation(line: 11, column: 20, scope: !8)
!32 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !33)
!33 = distinct !DILocation(line: 34, column: 3, scope: !8)
!34 = !DILocation(line: 12, column: 3, scope: !8)
!35 = !DILocation(line: 12, column: 10, scope: !8)
!36 = !DILocation(line: 12, column: 12, scope: !8)
!37 = !DILocation(line: 13, column: 9, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 13, column: 9)
!39 = distinct !DILexicalBlock(scope: !8, file: !1, line: 12, column: 18)
!40 = !DILocation(line: 13, column: 11, scope: !38)
!41 = !DILocation(line: 13, column: 15, scope: !38)
!42 = !DILocation(line: 13, column: 9, scope: !39)
!43 = !DILocation(line: 13, column: 23, scope: !38)
!44 = !DILocation(line: 13, column: 21, scope: !38)
!45 = !DILocation(line: 14, column: 11, scope: !38)
!46 = !DILocation(line: 15, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !39, file: !1, line: 15, column: 9)
!48 = !DILocation(line: 15, column: 11, scope: !47)
!49 = !DILocation(line: 15, column: 15, scope: !47)
!50 = !DILocation(line: 15, column: 9, scope: !39)
!51 = !DILocation(line: 15, column: 23, scope: !47)
!52 = !DILocation(line: 15, column: 21, scope: !47)
!53 = !DILocation(line: 16, column: 12, scope: !47)
!54 = !DILocation(line: 17, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !39, file: !1, line: 17, column: 9)
!56 = !DILocation(line: 17, column: 11, scope: !55)
!57 = !DILocation(line: 17, column: 15, scope: !55)
!58 = !DILocation(line: 17, column: 9, scope: !39)
!59 = !DILocation(line: 17, column: 23, scope: !55)
!60 = !DILocation(line: 17, column: 21, scope: !55)
!61 = !DILocation(line: 18, column: 12, scope: !55)
!62 = !DILocation(line: 19, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !39, file: !1, line: 19, column: 9)
!64 = !DILocation(line: 19, column: 11, scope: !63)
!65 = !DILocation(line: 19, column: 15, scope: !63)
!66 = !DILocation(line: 19, column: 9, scope: !39)
!67 = !DILocation(line: 19, column: 23, scope: !63)
!68 = !DILocation(line: 19, column: 21, scope: !63)
!69 = !DILocation(line: 20, column: 12, scope: !63)
!70 = !DILocation(line: 21, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !39, file: !1, line: 21, column: 9)
!72 = !DILocation(line: 21, column: 11, scope: !71)
!73 = !DILocation(line: 21, column: 15, scope: !71)
!74 = !DILocation(line: 21, column: 9, scope: !39)
!75 = !DILocation(line: 21, column: 23, scope: !71)
!76 = !DILocation(line: 21, column: 21, scope: !71)
!77 = !DILocation(line: 22, column: 12, scope: !71)
!78 = !DILocation(line: 23, column: 9, scope: !79)
!79 = distinct !DILexicalBlock(scope: !39, file: !1, line: 23, column: 9)
!80 = !DILocation(line: 23, column: 11, scope: !79)
!81 = !DILocation(line: 23, column: 15, scope: !79)
!82 = !DILocation(line: 23, column: 9, scope: !39)
!83 = !DILocation(line: 23, column: 23, scope: !79)
!84 = !DILocation(line: 23, column: 21, scope: !79)
!85 = !DILocation(line: 24, column: 12, scope: !79)
!86 = !DILocation(line: 25, column: 9, scope: !87)
!87 = distinct !DILexicalBlock(scope: !39, file: !1, line: 25, column: 9)
!88 = !DILocation(line: 25, column: 11, scope: !87)
!89 = !DILocation(line: 25, column: 15, scope: !87)
!90 = !DILocation(line: 25, column: 9, scope: !39)
!91 = !DILocation(line: 25, column: 23, scope: !87)
!92 = !DILocation(line: 25, column: 21, scope: !87)
!93 = !DILocation(line: 26, column: 12, scope: !87)
!94 = !DILocation(line: 27, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !39, file: !1, line: 27, column: 9)
!96 = !DILocation(line: 27, column: 11, scope: !95)
!97 = !DILocation(line: 27, column: 15, scope: !95)
!98 = !DILocation(line: 27, column: 9, scope: !39)
!99 = !DILocation(line: 27, column: 23, scope: !95)
!100 = !DILocation(line: 27, column: 21, scope: !95)
!101 = !DILocation(line: 28, column: 12, scope: !95)
!102 = !DILocation(line: 29, column: 9, scope: !103)
!103 = distinct !DILexicalBlock(scope: !39, file: !1, line: 29, column: 9)
!104 = !DILocation(line: 29, column: 11, scope: !103)
!105 = !DILocation(line: 29, column: 15, scope: !103)
!106 = !DILocation(line: 29, column: 9, scope: !39)
!107 = !DILocation(line: 29, column: 23, scope: !103)
!108 = !DILocation(line: 29, column: 21, scope: !103)
!109 = !DILocation(line: 30, column: 12, scope: !103)
!110 = !DILocation(line: 31, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !39, file: !1, line: 31, column: 9)
!112 = !DILocation(line: 31, column: 11, scope: !111)
!113 = !DILocation(line: 31, column: 15, scope: !111)
!114 = !DILocation(line: 31, column: 9, scope: !39)
!115 = !DILocation(line: 31, column: 23, scope: !111)
!116 = !DILocation(line: 31, column: 21, scope: !111)
!117 = !DILocation(line: 32, column: 12, scope: !111)
!118 = !DILocation(line: 34, column: 22, scope: !8)
!119 = !DILocation(line: 34, column: 24, scope: !8)
!120 = !DILocation(line: 34, column: 33, scope: !8)
!121 = !DILocation(line: 34, column: 35, scope: !8)
!122 = !DILocation(line: 34, column: 29, scope: !8)
!123 = !DILocation(line: 34, column: 3, scope: !8)
!124 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !33)
!125 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !33)
!126 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !33)
!127 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !33)
!128 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !33)
!129 = !DILocation(line: 35, column: 1, scope: !8)
