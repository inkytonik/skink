; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
  %1 = alloca i32, align 4
  store i32 %cond, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !16, metadata !17), !dbg !18
  %2 = load i32, i32* %1, align 4, !dbg !19
  %3 = icmp ne i32 %2, 0, !dbg !21
  br i1 %3, label %6, label %4, !dbg !22

; <label>:4                                       ; preds = %0
  br label %5, !dbg !23

; <label>:5                                       ; preds = %4
  call void (...) @__VERIFIER_error() #5, !dbg !24
  unreachable, !dbg !24

; <label>:6                                       ; preds = %0
  ret void, !dbg !26
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

; Function Attrs: nounwind ssp uwtable
define void @f(i32 %d) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %k = alloca i32, align 4
  %z = alloca i32, align 4
  %c = alloca i8, align 1
  store i32 %d, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !27, metadata !17), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %x, metadata !29, metadata !17), !dbg !30
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !31
  store i32 %3, i32* %x, align 4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %y, metadata !32, metadata !17), !dbg !33
  %4 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !34
  store i32 %4, i32* %y, align 4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %k, metadata !35, metadata !17), !dbg !36
  %5 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !37
  store i32 %5, i32* %k, align 4, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %z, metadata !38, metadata !17), !dbg !39
  store i32 1, i32* %z, align 4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %1, metadata !16, metadata !17), !dbg !40
  br label %6, !dbg !42

; <label>:6                                       ; preds = %0
  br label %7, !dbg !43

; <label>:7                                       ; preds = %11, %6
  %8 = load i32, i32* %z, align 4, !dbg !44
  %9 = load i32, i32* %k, align 4, !dbg !45
  %10 = icmp slt i32 %8, %9, !dbg !46
  br i1 %10, label %11, label %14, !dbg !43

; <label>:11                                      ; preds = %7
  %12 = load i32, i32* %z, align 4, !dbg !47
  %13 = mul nsw i32 2, %12, !dbg !49
  store i32 %13, i32* %z, align 4, !dbg !50
  br label %7, !dbg !43

; <label>:14                                      ; preds = %7
  %15 = load i32, i32* %z, align 4, !dbg !51
  %16 = icmp sge i32 %15, 1, !dbg !52
  %17 = zext i1 %16 to i32, !dbg !52
  %18 = bitcast i32* %1 to i8*, !dbg !53
  call void @llvm.lifetime.start(i64 4, i8* %18), !dbg !53
  store i32 %17, i32* %1, align 4, !dbg !53
  %19 = load i32, i32* %1, align 4, !dbg !54
  %20 = icmp ne i32 %19, 0, !dbg !55
  br i1 %20, label %__VERIFIER_assert.exit, label %21, !dbg !56

; <label>:21                                      ; preds = %14
  call void (...) @__VERIFIER_error() #6, !dbg !57
  unreachable, !dbg !57

__VERIFIER_assert.exit:                           ; preds = %14
  %22 = bitcast i32* %1 to i8*, !dbg !58
  call void @llvm.lifetime.end(i64 4, i8* %22), !dbg !58
  br label %23, !dbg !53

; <label>:23                                      ; preds = %__VERIFIER_assert.exit
  %24 = load i32, i32* %x, align 4, !dbg !59
  %25 = icmp sle i32 %24, 1000000, !dbg !60
  br i1 %25, label %26, label %29, !dbg !61

; <label>:26                                      ; preds = %23
  %27 = load i32, i32* %x, align 4, !dbg !62
  %28 = icmp sge i32 %27, -1000000, !dbg !63
  br label %29

; <label>:29                                      ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32, !dbg !61
  call void @__VERIFIER_assume(i32 %31), !dbg !64
  %32 = load i32, i32* %y, align 4, !dbg !65
  %33 = icmp sle i32 %32, 1000000, !dbg !66
  br i1 %33, label %34, label %37, !dbg !67

; <label>:34                                      ; preds = %29
  %35 = load i32, i32* %y, align 4, !dbg !68
  %36 = icmp sge i32 %35, -1000000, !dbg !69
  br label %37

; <label>:37                                      ; preds = %34, %29
  %38 = phi i1 [ false, %29 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32, !dbg !67
  call void @__VERIFIER_assume(i32 %39), !dbg !70
  %40 = load i32, i32* %k, align 4, !dbg !71
  %41 = icmp sle i32 %40, 1000000, !dbg !72
  br i1 %41, label %42, label %45, !dbg !73

; <label>:42                                      ; preds = %37
  %43 = load i32, i32* %k, align 4, !dbg !74
  %44 = icmp sge i32 %43, -1000000, !dbg !75
  br label %45

; <label>:45                                      ; preds = %42, %37
  %46 = phi i1 [ false, %37 ], [ %44, %42 ]
  %47 = zext i1 %46 to i32, !dbg !73
  call void @__VERIFIER_assume(i32 %47), !dbg !76
  br label %48, !dbg !77

; <label>:48                                      ; preds = %74, %45
  %49 = load i32, i32* %x, align 4, !dbg !78
  %50 = icmp sgt i32 %49, 0, !dbg !79
  br i1 %50, label %51, label %54, !dbg !80

; <label>:51                                      ; preds = %48
  %52 = load i32, i32* %y, align 4, !dbg !81
  %53 = icmp sgt i32 %52, 0, !dbg !82
  br label %54

; <label>:54                                      ; preds = %51, %48
  %55 = phi i1 [ false, %48 ], [ %53, %51 ]
  br i1 %55, label %56, label %75, !dbg !77

; <label>:56                                      ; preds = %54
  call void @llvm.dbg.declare(metadata i8* %c, metadata !83, metadata !17), !dbg !86
  %57 = call zeroext i1 (...) @__VERIFIER_nondet_bool(), !dbg !87
  %58 = zext i1 %57 to i8, !dbg !86
  store i8 %58, i8* %c, align 1, !dbg !86
  %59 = load i8, i8* %c, align 1, !dbg !88
  %60 = trunc i8 %59 to i1, !dbg !88
  br i1 %60, label %61, label %70, !dbg !90

; <label>:61                                      ; preds = %56
  br label %62, !dbg !91

; <label>:62                                      ; preds = %61
  %63 = load i32, i32* %x, align 4, !dbg !92
  %64 = load i32, i32* %2, align 4, !dbg !94
  %65 = sub nsw i32 %63, %64, !dbg !95
  store i32 %65, i32* %x, align 4, !dbg !96
  %66 = call zeroext i1 (...) @__VERIFIER_nondet_bool(), !dbg !97
  %67 = zext i1 %66 to i32, !dbg !97
  store i32 %67, i32* %y, align 4, !dbg !98
  %68 = load i32, i32* %z, align 4, !dbg !99
  %69 = sub nsw i32 %68, 1, !dbg !100
  store i32 %69, i32* %z, align 4, !dbg !101
  br label %74, !dbg !102

; <label>:70                                      ; preds = %56
  %71 = load i32, i32* %y, align 4, !dbg !103
  %72 = load i32, i32* %2, align 4, !dbg !105
  %73 = sub nsw i32 %71, %72, !dbg !106
  store i32 %73, i32* %y, align 4, !dbg !107
  br label %74

; <label>:74                                      ; preds = %70, %62
  br label %48, !dbg !77

; <label>:75                                      ; preds = %54
  ret void, !dbg !108
}

declare i32 @__VERIFIER_nondet_int(...) #3

declare void @__VERIFIER_assume(i32) #3

declare zeroext i1 @__VERIFIER_nondet_bool(...) #3

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %c = alloca i8, align 1
  store i32 0, i32* %1
  call void @llvm.dbg.declare(metadata i8* %c, metadata !109, metadata !17), !dbg !110
  %2 = call zeroext i1 (...) @__VERIFIER_nondet_bool(), !dbg !111
  %3 = zext i1 %2 to i8, !dbg !110
  store i8 %3, i8* %c, align 1, !dbg !110
  %4 = load i8, i8* %c, align 1, !dbg !112
  %5 = trunc i8 %4 to i1, !dbg !112
  br i1 %5, label %6, label %7, !dbg !114

; <label>:6                                       ; preds = %0
  call void @f(i32 1), !dbg !115
  br label %8, !dbg !117

; <label>:7                                       ; preds = %0
  call void @f(i32 2), !dbg !118
  br label %8

; <label>:8                                       ; preds = %7, %6
  ret i32 0, !dbg !120
}

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
!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "programs/svcomp16/loops/trex01_true-unreach-call.i", directory: ".")
!2 = !{}
!3 = !{!4, !8, !9}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "f", scope: !1, file: !1, line: 11, type: !5, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @f, variables: !2)
!9 = !DISubprogram(name: "main", scope: !1, file: !1, line: 32, type: !10, isLocal: false, isDefinition: true, scopeLine: 32, isOptimized: false, function: i32 ()* @main, variables: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!7}
!12 = !{i32 2, !"Dwarf Version", i32 2}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"PIC Level", i32 2}
!15 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!16 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 3, type: !7)
!17 = !DIExpression()
!18 = !DILocation(line: 3, column: 28, scope: !4)
!19 = !DILocation(line: 4, column: 9, scope: !20)
!20 = distinct !DILexicalBlock(scope: !4, file: !1, line: 4, column: 7)
!21 = !DILocation(line: 4, column: 8, scope: !20)
!22 = !DILocation(line: 4, column: 7, scope: !4)
!23 = !DILocation(line: 4, column: 16, scope: !20)
!24 = !DILocation(line: 5, column: 12, scope: !25)
!25 = distinct !DILexicalBlock(scope: !20, file: !1, line: 4, column: 16)
!26 = !DILocation(line: 7, column: 3, scope: !4)
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "d", arg: 1, scope: !8, file: !1, line: 11, type: !7)
!28 = !DILocation(line: 11, column: 12, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !8, file: !1, line: 12, type: !7)
!30 = !DILocation(line: 12, column: 7, scope: !8)
!31 = !DILocation(line: 12, column: 11, scope: !8)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !8, file: !1, line: 12, type: !7)
!33 = !DILocation(line: 12, column: 36, scope: !8)
!34 = !DILocation(line: 12, column: 40, scope: !8)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !8, file: !1, line: 12, type: !7)
!36 = !DILocation(line: 12, column: 65, scope: !8)
!37 = !DILocation(line: 12, column: 69, scope: !8)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !8, file: !1, line: 12, type: !7)
!39 = !DILocation(line: 12, column: 94, scope: !8)
!40 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !41)
!41 = distinct !DILocation(line: 15, column: 3, scope: !8)
!42 = !DILocation(line: 12, column: 3, scope: !8)
!43 = !DILocation(line: 14, column: 3, scope: !8)
!44 = !DILocation(line: 14, column: 10, scope: !8)
!45 = !DILocation(line: 14, column: 14, scope: !8)
!46 = !DILocation(line: 14, column: 12, scope: !8)
!47 = !DILocation(line: 14, column: 27, scope: !48)
!48 = distinct !DILexicalBlock(scope: !8, file: !1, line: 14, column: 17)
!49 = !DILocation(line: 14, column: 25, scope: !48)
!50 = !DILocation(line: 14, column: 21, scope: !48)
!51 = !DILocation(line: 15, column: 21, scope: !8)
!52 = !DILocation(line: 15, column: 22, scope: !8)
!53 = !DILocation(line: 15, column: 3, scope: !8)
!54 = !DILocation(line: 4, column: 9, scope: !20, inlinedAt: !41)
!55 = !DILocation(line: 4, column: 8, scope: !20, inlinedAt: !41)
!56 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !41)
!57 = !DILocation(line: 5, column: 12, scope: !25, inlinedAt: !41)
!58 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !41)
!59 = !DILocation(line: 17, column: 21, scope: !8)
!60 = !DILocation(line: 17, column: 23, scope: !8)
!61 = !DILocation(line: 17, column: 34, scope: !8)
!62 = !DILocation(line: 17, column: 37, scope: !8)
!63 = !DILocation(line: 17, column: 39, scope: !8)
!64 = !DILocation(line: 17, column: 3, scope: !8)
!65 = !DILocation(line: 18, column: 21, scope: !8)
!66 = !DILocation(line: 18, column: 23, scope: !8)
!67 = !DILocation(line: 18, column: 34, scope: !8)
!68 = !DILocation(line: 18, column: 37, scope: !8)
!69 = !DILocation(line: 18, column: 39, scope: !8)
!70 = !DILocation(line: 18, column: 3, scope: !8)
!71 = !DILocation(line: 19, column: 21, scope: !8)
!72 = !DILocation(line: 19, column: 23, scope: !8)
!73 = !DILocation(line: 19, column: 34, scope: !8)
!74 = !DILocation(line: 19, column: 37, scope: !8)
!75 = !DILocation(line: 19, column: 39, scope: !8)
!76 = !DILocation(line: 19, column: 3, scope: !8)
!77 = !DILocation(line: 20, column: 3, scope: !8)
!78 = !DILocation(line: 20, column: 10, scope: !8)
!79 = !DILocation(line: 20, column: 12, scope: !8)
!80 = !DILocation(line: 20, column: 16, scope: !8)
!81 = !DILocation(line: 20, column: 19, scope: !8)
!82 = !DILocation(line: 20, column: 21, scope: !8)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !84, file: !1, line: 21, type: !85)
!84 = distinct !DILexicalBlock(scope: !8, file: !1, line: 20, column: 26)
!85 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!86 = !DILocation(line: 21, column: 11, scope: !84)
!87 = !DILocation(line: 21, column: 15, scope: !84)
!88 = !DILocation(line: 22, column: 9, scope: !89)
!89 = distinct !DILexicalBlock(scope: !84, file: !1, line: 22, column: 9)
!90 = !DILocation(line: 22, column: 9, scope: !84)
!91 = !DILocation(line: 22, column: 12, scope: !89)
!92 = !DILocation(line: 24, column: 11, scope: !93)
!93 = distinct !DILexicalBlock(scope: !89, file: !1, line: 22, column: 12)
!94 = !DILocation(line: 24, column: 15, scope: !93)
!95 = !DILocation(line: 24, column: 13, scope: !93)
!96 = !DILocation(line: 24, column: 9, scope: !93)
!97 = !DILocation(line: 25, column: 11, scope: !93)
!98 = !DILocation(line: 25, column: 9, scope: !93)
!99 = !DILocation(line: 26, column: 11, scope: !93)
!100 = !DILocation(line: 26, column: 13, scope: !93)
!101 = !DILocation(line: 26, column: 9, scope: !93)
!102 = !DILocation(line: 27, column: 5, scope: !93)
!103 = !DILocation(line: 28, column: 11, scope: !104)
!104 = distinct !DILexicalBlock(scope: !89, file: !1, line: 27, column: 12)
!105 = !DILocation(line: 28, column: 15, scope: !104)
!106 = !DILocation(line: 28, column: 13, scope: !104)
!107 = !DILocation(line: 28, column: 9, scope: !104)
!108 = !DILocation(line: 31, column: 1, scope: !8)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !9, file: !1, line: 33, type: !85)
!110 = !DILocation(line: 33, column: 9, scope: !9)
!111 = !DILocation(line: 33, column: 13, scope: !9)
!112 = !DILocation(line: 34, column: 7, scope: !113)
!113 = distinct !DILexicalBlock(scope: !9, file: !1, line: 34, column: 7)
!114 = !DILocation(line: 34, column: 7, scope: !9)
!115 = !DILocation(line: 35, column: 5, scope: !116)
!116 = distinct !DILexicalBlock(scope: !113, file: !1, line: 34, column: 10)
!117 = !DILocation(line: 36, column: 3, scope: !116)
!118 = !DILocation(line: 37, column: 5, scope: !119)
!119 = distinct !DILexicalBlock(scope: !113, file: !1, line: 36, column: 10)
!120 = !DILocation(line: 39, column: 3, scope: !9)
