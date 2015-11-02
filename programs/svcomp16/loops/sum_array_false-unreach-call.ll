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
  %M = alloca i32, align 4
  %3 = alloca i8*
  %i = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %M, metadata !26, metadata !16), !dbg !28
  %4 = call i32 (...) @__VERIFIER_nondet_uint(), !dbg !29
  store i32 %4, i32* %M, align 4, !dbg !28
  %5 = load i32, i32* %M, align 4, !dbg !30
  %6 = zext i32 %5 to i64, !dbg !31
  %7 = call i8* @llvm.stacksave(), !dbg !31
  store i8* %7, i8** %3, !dbg !31
  %8 = alloca i32, i64 %6, align 16, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %8, metadata !32, metadata !36), !dbg !37
  %9 = load i32, i32* %M, align 4, !dbg !38
  %10 = zext i32 %9 to i64, !dbg !31
  %11 = alloca i32, i64 %10, align 16, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %11, metadata !39, metadata !36), !dbg !40
  %12 = load i32, i32* %M, align 4, !dbg !41
  %13 = zext i32 %12 to i64, !dbg !31
  %14 = alloca i32, i64 %13, align 16, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %14, metadata !42, metadata !36), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %i, metadata !44, metadata !16), !dbg !45
  store i32 0, i32* %i, align 4, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !48
  br label %15, !dbg !52

; <label>:15                                      ; preds = %24, %0
  %16 = load i32, i32* %i, align 4, !dbg !53
  %17 = load i32, i32* %M, align 4, !dbg !55
  %18 = icmp ult i32 %16, %17, !dbg !56
  br i1 %18, label %19, label %27, !dbg !57

; <label>:19                                      ; preds = %15
  %20 = call i32 @__VERIFIER_nondet_int(), !dbg !58
  %21 = load i32, i32* %i, align 4, !dbg !59
  %22 = zext i32 %21 to i64, !dbg !60
  %23 = getelementptr inbounds i32, i32* %8, i64 %22, !dbg !60
  store i32 %20, i32* %23, align 4, !dbg !61
  br label %24, !dbg !60

; <label>:24                                      ; preds = %19
  %25 = load i32, i32* %i, align 4, !dbg !62
  %26 = add i32 %25, 1, !dbg !62
  store i32 %26, i32* %i, align 4, !dbg !62
  br label %15, !dbg !63

; <label>:27                                      ; preds = %15
  store i32 0, i32* %i, align 4, !dbg !64
  br label %28, !dbg !66

; <label>:28                                      ; preds = %37, %27
  %29 = load i32, i32* %i, align 4, !dbg !67
  %30 = load i32, i32* %M, align 4, !dbg !69
  %31 = icmp ult i32 %29, %30, !dbg !70
  br i1 %31, label %32, label %40, !dbg !71

; <label>:32                                      ; preds = %28
  %33 = call i32 @__VERIFIER_nondet_int(), !dbg !72
  %34 = load i32, i32* %i, align 4, !dbg !73
  %35 = zext i32 %34 to i64, !dbg !74
  %36 = getelementptr inbounds i32, i32* %11, i64 %35, !dbg !74
  store i32 %33, i32* %36, align 4, !dbg !75
  br label %37, !dbg !74

; <label>:37                                      ; preds = %32
  %38 = load i32, i32* %i, align 4, !dbg !76
  %39 = add i32 %38, 1, !dbg !76
  store i32 %39, i32* %i, align 4, !dbg !76
  br label %28, !dbg !77

; <label>:40                                      ; preds = %28
  store i32 0, i32* %i, align 4, !dbg !78
  br label %41, !dbg !80

; <label>:41                                      ; preds = %58, %40
  %42 = load i32, i32* %i, align 4, !dbg !81
  %43 = load i32, i32* %M, align 4, !dbg !83
  %44 = icmp ult i32 %42, %43, !dbg !84
  br i1 %44, label %45, label %61, !dbg !85

; <label>:45                                      ; preds = %41
  %46 = load i32, i32* %i, align 4, !dbg !86
  %47 = zext i32 %46 to i64, !dbg !87
  %48 = getelementptr inbounds i32, i32* %8, i64 %47, !dbg !87
  %49 = load i32, i32* %48, align 4, !dbg !87
  %50 = load i32, i32* %i, align 4, !dbg !88
  %51 = zext i32 %50 to i64, !dbg !89
  %52 = getelementptr inbounds i32, i32* %11, i64 %51, !dbg !89
  %53 = load i32, i32* %52, align 4, !dbg !89
  %54 = add nsw i32 %49, %53, !dbg !90
  %55 = load i32, i32* %i, align 4, !dbg !91
  %56 = zext i32 %55 to i64, !dbg !92
  %57 = getelementptr inbounds i32, i32* %14, i64 %56, !dbg !92
  store i32 %54, i32* %57, align 4, !dbg !93
  br label %58, !dbg !92

; <label>:58                                      ; preds = %45
  %59 = load i32, i32* %i, align 4, !dbg !94
  %60 = add i32 %59, 1, !dbg !94
  store i32 %60, i32* %i, align 4, !dbg !94
  br label %41, !dbg !95

; <label>:61                                      ; preds = %41
  store i32 0, i32* %i, align 4, !dbg !96
  br label %62, !dbg !97

; <label>:62                                      ; preds = %87, %61
  %63 = load i32, i32* %i, align 4, !dbg !98
  %64 = load i32, i32* %M, align 4, !dbg !99
  %65 = icmp ult i32 %63, %64, !dbg !100
  br i1 %65, label %66, label %90, !dbg !101

; <label>:66                                      ; preds = %62
  %67 = load i32, i32* %i, align 4, !dbg !102
  %68 = zext i32 %67 to i64, !dbg !103
  %69 = getelementptr inbounds i32, i32* %14, i64 %68, !dbg !103
  %70 = load i32, i32* %69, align 4, !dbg !103
  %71 = load i32, i32* %i, align 4, !dbg !104
  %72 = zext i32 %71 to i64, !dbg !105
  %73 = getelementptr inbounds i32, i32* %8, i64 %72, !dbg !105
  %74 = load i32, i32* %73, align 4, !dbg !105
  %75 = load i32, i32* %i, align 4, !dbg !106
  %76 = zext i32 %75 to i64, !dbg !107
  %77 = getelementptr inbounds i32, i32* %11, i64 %76, !dbg !107
  %78 = load i32, i32* %77, align 4, !dbg !107
  %79 = sub nsw i32 %74, %78, !dbg !108
  %80 = icmp eq i32 %70, %79, !dbg !109
  %81 = zext i1 %80 to i32, !dbg !109
  %82 = bitcast i32* %1 to i8*, !dbg !110
  call void @llvm.lifetime.start(i64 4, i8* %82), !dbg !110
  store i32 %81, i32* %1, align 4, !dbg !110
  %83 = load i32, i32* %1, align 4, !dbg !111
  %84 = icmp ne i32 %83, 0, !dbg !112
  br i1 %84, label %__VERIFIER_assert.exit, label %85, !dbg !113

; <label>:85                                      ; preds = %66
  call void (...) @__VERIFIER_error() #6, !dbg !114
  unreachable, !dbg !114

__VERIFIER_assert.exit:                           ; preds = %66
  %86 = bitcast i32* %1 to i8*, !dbg !115
  call void @llvm.lifetime.end(i64 4, i8* %86), !dbg !115
  br label %87, !dbg !110

; <label>:87                                      ; preds = %__VERIFIER_assert.exit
  %88 = load i32, i32* %i, align 4, !dbg !116
  %89 = add i32 %88, 1, !dbg !116
  store i32 %89, i32* %i, align 4, !dbg !116
  br label %62, !dbg !117

; <label>:90                                      ; preds = %62
  %91 = load i8*, i8** %3, !dbg !118
  call void @llvm.stackrestore(i8* %91), !dbg !118
  %92 = load i32, i32* %2, !dbg !118
  ret i32 %92, !dbg !118
}

declare i32 @__VERIFIER_nondet_uint(...) #3

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

declare i32 @__VERIFIER_nondet_int() #3

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
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "programs/svcomp16/loops/sum_array_false-unreach-call.i", directory: ".")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 4, type: !5, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 12, type: !9, isLocal: false, isDefinition: true, scopeLine: 13, isOptimized: false, function: i32 ()* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!7}
!11 = !{i32 2, !"Dwarf Version", i32 2}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"PIC Level", i32 2}
!14 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 4, type: !7)
!16 = !DIExpression()
!17 = !DILocation(line: 4, column: 28, scope: !4)
!18 = !DILocation(line: 5, column: 9, scope: !19)
!19 = distinct !DILexicalBlock(scope: !4, file: !1, line: 5, column: 7)
!20 = !DILocation(line: 5, column: 8, scope: !19)
!21 = !DILocation(line: 5, column: 7, scope: !4)
!22 = !DILocation(line: 5, column: 16, scope: !19)
!23 = !DILocation(line: 6, column: 12, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 5, column: 16)
!25 = !DILocation(line: 8, column: 3, scope: !4)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "M", scope: !8, file: !1, line: 14, type: !27)
!27 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!28 = !DILocation(line: 14, column: 16, scope: !8)
!29 = !DILocation(line: 14, column: 20, scope: !8)
!30 = !DILocation(line: 15, column: 9, scope: !8)
!31 = !DILocation(line: 15, column: 3, scope: !8)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "A", scope: !8, file: !1, line: 15, type: !33)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, align: 32, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: -1)
!36 = !DIExpression(DW_OP_deref)
!37 = !DILocation(line: 15, column: 7, scope: !8)
!38 = !DILocation(line: 15, column: 15, scope: !8)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "B", scope: !8, file: !1, line: 15, type: !33)
!40 = !DILocation(line: 15, column: 13, scope: !8)
!41 = !DILocation(line: 15, column: 21, scope: !8)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "C", scope: !8, file: !1, line: 15, type: !33)
!43 = !DILocation(line: 15, column: 19, scope: !8)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 16, type: !27)
!45 = !DILocation(line: 16, column: 16, scope: !8)
!46 = !DILocation(line: 18, column: 8, scope: !47)
!47 = distinct !DILexicalBlock(scope: !8, file: !1, line: 18, column: 3)
!48 = !DILocation(line: 4, column: 28, scope: !4, inlinedAt: !49)
!49 = distinct !DILocation(line: 28, column: 6, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 27, column: 3)
!51 = distinct !DILexicalBlock(scope: !8, file: !1, line: 27, column: 3)
!52 = !DILocation(line: 18, column: 7, scope: !47)
!53 = !DILocation(line: 18, column: 11, scope: !54)
!54 = distinct !DILexicalBlock(scope: !47, file: !1, line: 18, column: 3)
!55 = !DILocation(line: 18, column: 13, scope: !54)
!56 = !DILocation(line: 18, column: 12, scope: !54)
!57 = !DILocation(line: 18, column: 3, scope: !47)
!58 = !DILocation(line: 19, column: 12, scope: !54)
!59 = !DILocation(line: 19, column: 7, scope: !54)
!60 = !DILocation(line: 19, column: 5, scope: !54)
!61 = !DILocation(line: 19, column: 10, scope: !54)
!62 = !DILocation(line: 18, column: 16, scope: !54)
!63 = !DILocation(line: 18, column: 3, scope: !54)
!64 = !DILocation(line: 21, column: 8, scope: !65)
!65 = distinct !DILexicalBlock(scope: !8, file: !1, line: 21, column: 3)
!66 = !DILocation(line: 21, column: 7, scope: !65)
!67 = !DILocation(line: 21, column: 11, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !1, line: 21, column: 3)
!69 = !DILocation(line: 21, column: 13, scope: !68)
!70 = !DILocation(line: 21, column: 12, scope: !68)
!71 = !DILocation(line: 21, column: 3, scope: !65)
!72 = !DILocation(line: 22, column: 12, scope: !68)
!73 = !DILocation(line: 22, column: 7, scope: !68)
!74 = !DILocation(line: 22, column: 5, scope: !68)
!75 = !DILocation(line: 22, column: 10, scope: !68)
!76 = !DILocation(line: 21, column: 16, scope: !68)
!77 = !DILocation(line: 21, column: 3, scope: !68)
!78 = !DILocation(line: 24, column: 8, scope: !79)
!79 = distinct !DILexicalBlock(scope: !8, file: !1, line: 24, column: 3)
!80 = !DILocation(line: 24, column: 7, scope: !79)
!81 = !DILocation(line: 24, column: 11, scope: !82)
!82 = distinct !DILexicalBlock(scope: !79, file: !1, line: 24, column: 3)
!83 = !DILocation(line: 24, column: 13, scope: !82)
!84 = !DILocation(line: 24, column: 12, scope: !82)
!85 = !DILocation(line: 24, column: 3, scope: !79)
!86 = !DILocation(line: 25, column: 13, scope: !82)
!87 = !DILocation(line: 25, column: 11, scope: !82)
!88 = !DILocation(line: 25, column: 18, scope: !82)
!89 = !DILocation(line: 25, column: 16, scope: !82)
!90 = !DILocation(line: 25, column: 15, scope: !82)
!91 = !DILocation(line: 25, column: 8, scope: !82)
!92 = !DILocation(line: 25, column: 6, scope: !82)
!93 = !DILocation(line: 25, column: 10, scope: !82)
!94 = !DILocation(line: 24, column: 16, scope: !82)
!95 = !DILocation(line: 24, column: 3, scope: !82)
!96 = !DILocation(line: 27, column: 8, scope: !51)
!97 = !DILocation(line: 27, column: 7, scope: !51)
!98 = !DILocation(line: 27, column: 11, scope: !50)
!99 = !DILocation(line: 27, column: 13, scope: !50)
!100 = !DILocation(line: 27, column: 12, scope: !50)
!101 = !DILocation(line: 27, column: 3, scope: !51)
!102 = !DILocation(line: 28, column: 26, scope: !50)
!103 = !DILocation(line: 28, column: 24, scope: !50)
!104 = !DILocation(line: 28, column: 32, scope: !50)
!105 = !DILocation(line: 28, column: 30, scope: !50)
!106 = !DILocation(line: 28, column: 37, scope: !50)
!107 = !DILocation(line: 28, column: 35, scope: !50)
!108 = !DILocation(line: 28, column: 34, scope: !50)
!109 = !DILocation(line: 28, column: 28, scope: !50)
!110 = !DILocation(line: 28, column: 6, scope: !50)
!111 = !DILocation(line: 5, column: 9, scope: !19, inlinedAt: !49)
!112 = !DILocation(line: 5, column: 8, scope: !19, inlinedAt: !49)
!113 = !DILocation(line: 5, column: 7, scope: !4, inlinedAt: !49)
!114 = !DILocation(line: 6, column: 12, scope: !24, inlinedAt: !49)
!115 = !DILocation(line: 8, column: 3, scope: !4, inlinedAt: !49)
!116 = !DILocation(line: 27, column: 16, scope: !50)
!117 = !DILocation(line: 27, column: 3, scope: !50)
!118 = !DILocation(line: 29, column: 1, scope: !8)
