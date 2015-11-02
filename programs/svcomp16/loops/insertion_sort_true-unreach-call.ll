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
  %SIZE = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %key = alloca i32, align 4
  %3 = alloca i8*
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %SIZE, metadata !26, metadata !16), !dbg !28
  %4 = call i32 (...) @__VERIFIER_nondet_uint(), !dbg !29
  store i32 %4, i32* %SIZE, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %i, metadata !30, metadata !16), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %j, metadata !32, metadata !16), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %k, metadata !34, metadata !16), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %key, metadata !36, metadata !16), !dbg !37
  %5 = load i32, i32* %SIZE, align 4, !dbg !38
  %6 = zext i32 %5 to i64, !dbg !39
  %7 = call i8* @llvm.stacksave(), !dbg !39
  store i8* %7, i8** %3, !dbg !39
  %8 = alloca i32, i64 %6, align 16, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %8, metadata !40, metadata !44), !dbg !45
  store i32 1, i32* %j, align 4, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !48
  br label %9, !dbg !52

; <label>:9                                       ; preds = %49, %0
  %10 = load i32, i32* %j, align 4, !dbg !53
  %11 = load i32, i32* %SIZE, align 4, !dbg !55
  %12 = icmp ult i32 %10, %11, !dbg !56
  br i1 %12, label %13, label %52, !dbg !57

; <label>:13                                      ; preds = %9
  %14 = load i32, i32* %j, align 4, !dbg !58
  %15 = sext i32 %14 to i64, !dbg !60
  %16 = getelementptr inbounds i32, i32* %8, i64 %15, !dbg !60
  %17 = load i32, i32* %16, align 4, !dbg !60
  store i32 %17, i32* %key, align 4, !dbg !61
  %18 = load i32, i32* %j, align 4, !dbg !62
  %19 = sub nsw i32 %18, 1, !dbg !63
  store i32 %19, i32* %i, align 4, !dbg !64
  br label %20, !dbg !65

; <label>:20                                      ; preds = %32, %13
  %21 = load i32, i32* %i, align 4, !dbg !66
  %22 = icmp sge i32 %21, 0, !dbg !67
  br i1 %22, label %23, label %30, !dbg !68

; <label>:23                                      ; preds = %20
  %24 = load i32, i32* %i, align 4, !dbg !69
  %25 = sext i32 %24 to i64, !dbg !70
  %26 = getelementptr inbounds i32, i32* %8, i64 %25, !dbg !70
  %27 = load i32, i32* %26, align 4, !dbg !70
  %28 = load i32, i32* %key, align 4, !dbg !71
  %29 = icmp sgt i32 %27, %28, !dbg !72
  br label %30

; <label>:30                                      ; preds = %23, %20
  %31 = phi i1 [ false, %20 ], [ %29, %23 ]
  br i1 %31, label %32, label %43, !dbg !65

; <label>:32                                      ; preds = %30
  %33 = load i32, i32* %i, align 4, !dbg !73
  %34 = sext i32 %33 to i64, !dbg !75
  %35 = getelementptr inbounds i32, i32* %8, i64 %34, !dbg !75
  %36 = load i32, i32* %35, align 4, !dbg !75
  %37 = load i32, i32* %i, align 4, !dbg !76
  %38 = add nsw i32 %37, 1, !dbg !77
  %39 = sext i32 %38 to i64, !dbg !78
  %40 = getelementptr inbounds i32, i32* %8, i64 %39, !dbg !78
  store i32 %36, i32* %40, align 4, !dbg !79
  %41 = load i32, i32* %i, align 4, !dbg !80
  %42 = sub nsw i32 %41, 1, !dbg !81
  store i32 %42, i32* %i, align 4, !dbg !82
  br label %20, !dbg !65

; <label>:43                                      ; preds = %30
  %44 = load i32, i32* %key, align 4, !dbg !83
  %45 = load i32, i32* %i, align 4, !dbg !84
  %46 = add nsw i32 %45, 1, !dbg !85
  %47 = sext i32 %46 to i64, !dbg !86
  %48 = getelementptr inbounds i32, i32* %8, i64 %47, !dbg !86
  store i32 %44, i32* %48, align 4, !dbg !87
  br label %49, !dbg !88

; <label>:49                                      ; preds = %43
  %50 = load i32, i32* %j, align 4, !dbg !89
  %51 = add nsw i32 %50, 1, !dbg !89
  store i32 %51, i32* %j, align 4, !dbg !89
  br label %9, !dbg !90

; <label>:52                                      ; preds = %9
  store i32 1, i32* %k, align 4, !dbg !91
  br label %53, !dbg !92

; <label>:53                                      ; preds = %74, %52
  %54 = load i32, i32* %k, align 4, !dbg !93
  %55 = load i32, i32* %SIZE, align 4, !dbg !94
  %56 = icmp ult i32 %54, %55, !dbg !95
  br i1 %56, label %57, label %77, !dbg !96

; <label>:57                                      ; preds = %53
  %58 = load i32, i32* %k, align 4, !dbg !97
  %59 = sub nsw i32 %58, 1, !dbg !98
  %60 = sext i32 %59 to i64, !dbg !99
  %61 = getelementptr inbounds i32, i32* %8, i64 %60, !dbg !99
  %62 = load i32, i32* %61, align 4, !dbg !99
  %63 = load i32, i32* %k, align 4, !dbg !100
  %64 = sext i32 %63 to i64, !dbg !101
  %65 = getelementptr inbounds i32, i32* %8, i64 %64, !dbg !101
  %66 = load i32, i32* %65, align 4, !dbg !101
  %67 = icmp sle i32 %62, %66, !dbg !102
  %68 = zext i1 %67 to i32, !dbg !102
  %69 = bitcast i32* %1 to i8*, !dbg !103
  call void @llvm.lifetime.start(i64 4, i8* %69), !dbg !103
  store i32 %68, i32* %1, align 4, !dbg !103
  %70 = load i32, i32* %1, align 4, !dbg !104
  %71 = icmp ne i32 %70, 0, !dbg !105
  br i1 %71, label %__VERIFIER_assert.exit, label %72, !dbg !106

; <label>:72                                      ; preds = %57
  call void (...) @__VERIFIER_error() #6, !dbg !107
  unreachable, !dbg !107

__VERIFIER_assert.exit:                           ; preds = %57
  %73 = bitcast i32* %1 to i8*, !dbg !108
  call void @llvm.lifetime.end(i64 4, i8* %73), !dbg !108
  br label %74, !dbg !103

; <label>:74                                      ; preds = %__VERIFIER_assert.exit
  %75 = load i32, i32* %k, align 4, !dbg !109
  %76 = add nsw i32 %75, 1, !dbg !109
  store i32 %76, i32* %k, align 4, !dbg !109
  br label %53, !dbg !110

; <label>:77                                      ; preds = %53
  store i32 0, i32* %2, !dbg !111
  %78 = load i8*, i8** %3, !dbg !112
  call void @llvm.stackrestore(i8* %78), !dbg !112
  %79 = load i32, i32* %2, !dbg !112
  ret i32 %79, !dbg !112
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
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "programs/svcomp16/loops/insertion_sort_true-unreach-call.i", directory: ".")
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
!23 = !DILocation(line: 5, column: 12, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 4, column: 16)
!25 = !DILocation(line: 7, column: 3, scope: !4)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "SIZE", scope: !8, file: !1, line: 11, type: !27)
!27 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!28 = !DILocation(line: 11, column: 17, scope: !8)
!29 = !DILocation(line: 11, column: 22, scope: !8)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 12, type: !7)
!31 = !DILocation(line: 12, column: 8, scope: !8)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 12, type: !7)
!33 = !DILocation(line: 12, column: 11, scope: !8)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !8, file: !1, line: 12, type: !7)
!35 = !DILocation(line: 12, column: 14, scope: !8)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !8, file: !1, line: 12, type: !7)
!37 = !DILocation(line: 12, column: 17, scope: !8)
!38 = !DILocation(line: 13, column: 10, scope: !8)
!39 = !DILocation(line: 13, column: 4, scope: !8)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !8, file: !1, line: 13, type: !41)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, align: 32, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: -1)
!44 = !DIExpression(DW_OP_deref)
!45 = !DILocation(line: 13, column: 8, scope: !8)
!46 = !DILocation(line: 14, column: 10, scope: !47)
!47 = distinct !DILexicalBlock(scope: !8, file: !1, line: 14, column: 4)
!48 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !49)
!49 = distinct !DILocation(line: 24, column: 5, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 23, column: 3)
!51 = distinct !DILexicalBlock(scope: !8, file: !1, line: 23, column: 3)
!52 = !DILocation(line: 14, column: 9, scope: !47)
!53 = !DILocation(line: 14, column: 13, scope: !54)
!54 = distinct !DILexicalBlock(scope: !47, file: !1, line: 14, column: 4)
!55 = !DILocation(line: 14, column: 15, scope: !54)
!56 = !DILocation(line: 14, column: 14, scope: !54)
!57 = !DILocation(line: 14, column: 4, scope: !47)
!58 = !DILocation(line: 15, column: 15, scope: !59)
!59 = distinct !DILexicalBlock(scope: !54, file: !1, line: 14, column: 25)
!60 = !DILocation(line: 15, column: 13, scope: !59)
!61 = !DILocation(line: 15, column: 11, scope: !59)
!62 = !DILocation(line: 16, column: 11, scope: !59)
!63 = !DILocation(line: 16, column: 13, scope: !59)
!64 = !DILocation(line: 16, column: 9, scope: !59)
!65 = !DILocation(line: 17, column: 7, scope: !59)
!66 = !DILocation(line: 17, column: 14, scope: !59)
!67 = !DILocation(line: 17, column: 15, scope: !59)
!68 = !DILocation(line: 17, column: 20, scope: !59)
!69 = !DILocation(line: 17, column: 26, scope: !59)
!70 = !DILocation(line: 17, column: 24, scope: !59)
!71 = !DILocation(line: 17, column: 29, scope: !59)
!72 = !DILocation(line: 17, column: 28, scope: !59)
!73 = !DILocation(line: 18, column: 21, scope: !74)
!74 = distinct !DILexicalBlock(scope: !59, file: !1, line: 17, column: 35)
!75 = !DILocation(line: 18, column: 19, scope: !74)
!76 = !DILocation(line: 18, column: 12, scope: !74)
!77 = !DILocation(line: 18, column: 13, scope: !74)
!78 = !DILocation(line: 18, column: 10, scope: !74)
!79 = !DILocation(line: 18, column: 17, scope: !74)
!80 = !DILocation(line: 19, column: 14, scope: !74)
!81 = !DILocation(line: 19, column: 16, scope: !74)
!82 = !DILocation(line: 19, column: 12, scope: !74)
!83 = !DILocation(line: 21, column: 16, scope: !59)
!84 = !DILocation(line: 21, column: 9, scope: !59)
!85 = !DILocation(line: 21, column: 10, scope: !59)
!86 = !DILocation(line: 21, column: 7, scope: !59)
!87 = !DILocation(line: 21, column: 14, scope: !59)
!88 = !DILocation(line: 22, column: 3, scope: !59)
!89 = !DILocation(line: 14, column: 21, scope: !54)
!90 = !DILocation(line: 14, column: 4, scope: !54)
!91 = !DILocation(line: 23, column: 9, scope: !51)
!92 = !DILocation(line: 23, column: 8, scope: !51)
!93 = !DILocation(line: 23, column: 12, scope: !50)
!94 = !DILocation(line: 23, column: 14, scope: !50)
!95 = !DILocation(line: 23, column: 13, scope: !50)
!96 = !DILocation(line: 23, column: 3, scope: !51)
!97 = !DILocation(line: 24, column: 25, scope: !50)
!98 = !DILocation(line: 24, column: 26, scope: !50)
!99 = !DILocation(line: 24, column: 23, scope: !50)
!100 = !DILocation(line: 24, column: 33, scope: !50)
!101 = !DILocation(line: 24, column: 31, scope: !50)
!102 = !DILocation(line: 24, column: 29, scope: !50)
!103 = !DILocation(line: 24, column: 5, scope: !50)
!104 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !49)
!105 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !49)
!106 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !49)
!107 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !49)
!108 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !49)
!109 = !DILocation(line: 23, column: 20, scope: !50)
!110 = !DILocation(line: 23, column: 3, scope: !50)
!111 = !DILocation(line: 25, column: 4, scope: !8)
!112 = !DILocation(line: 26, column: 1, scope: !8)
