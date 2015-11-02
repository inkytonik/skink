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
  %max = alloca i32, align 4
  %3 = alloca i8*
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %max, metadata !26, metadata !16), !dbg !28
  store i32 5, i32* %max, align 4, !dbg !28
  %4 = load i32, i32* %max, align 4, !dbg !29
  %5 = zext i32 %4 to i64, !dbg !30
  %6 = call i8* @llvm.stacksave(), !dbg !30
  store i8* %6, i8** %3, !dbg !30
  %7 = alloca i8, i64 %5, align 16, !dbg !30
  call void @llvm.dbg.declare(metadata i8* %7, metadata !31, metadata !36), !dbg !37
  %8 = load i32, i32* %max, align 4, !dbg !38
  %9 = zext i32 %8 to i64, !dbg !30
  %10 = alloca i8, i64 %9, align 16, !dbg !30
  call void @llvm.dbg.declare(metadata i8* %10, metadata !39, metadata !36), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %i, metadata !41, metadata !16), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %j, metadata !43, metadata !16), !dbg !44
  store i32 0, i32* %i, align 4, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !47
  br label %11, !dbg !52

; <label>:11                                      ; preds = %20, %0
  %12 = load i32, i32* %i, align 4, !dbg !53
  %13 = load i32, i32* %max, align 4, !dbg !55
  %14 = icmp ult i32 %12, %13, !dbg !56
  br i1 %14, label %15, label %23, !dbg !57

; <label>:15                                      ; preds = %11
  %16 = call signext i8 (...) @__VERIFIER_nondet_char(), !dbg !58
  %17 = load i32, i32* %i, align 4, !dbg !60
  %18 = sext i32 %17 to i64, !dbg !61
  %19 = getelementptr inbounds i8, i8* %7, i64 %18, !dbg !61
  store i8 %16, i8* %19, align 1, !dbg !62
  br label %20, !dbg !63

; <label>:20                                      ; preds = %15
  %21 = load i32, i32* %i, align 4, !dbg !64
  %22 = add nsw i32 %21, 1, !dbg !64
  store i32 %22, i32* %i, align 4, !dbg !64
  br label %11, !dbg !65

; <label>:23                                      ; preds = %11
  %24 = load i32, i32* %max, align 4, !dbg !66
  %25 = sub i32 %24, 1, !dbg !67
  %26 = zext i32 %25 to i64, !dbg !68
  %27 = getelementptr inbounds i8, i8* %7, i64 %26, !dbg !68
  store i8 0, i8* %27, align 1, !dbg !69
  store i32 0, i32* %j, align 4, !dbg !70
  %28 = load i32, i32* %max, align 4, !dbg !71
  %29 = sub i32 %28, 1, !dbg !73
  store i32 %29, i32* %i, align 4, !dbg !74
  br label %30, !dbg !75

; <label>:30                                      ; preds = %43, %23
  %31 = load i32, i32* %i, align 4, !dbg !76
  %32 = icmp sge i32 %31, 0, !dbg !78
  br i1 %32, label %33, label %46, !dbg !79

; <label>:33                                      ; preds = %30
  %34 = load i32, i32* %i, align 4, !dbg !80
  %35 = sext i32 %34 to i64, !dbg !82
  %36 = getelementptr inbounds i8, i8* %7, i64 %35, !dbg !82
  %37 = load i8, i8* %36, align 1, !dbg !82
  %38 = load i32, i32* %j, align 4, !dbg !83
  %39 = sext i32 %38 to i64, !dbg !84
  %40 = getelementptr inbounds i8, i8* %10, i64 %39, !dbg !84
  store i8 %37, i8* %40, align 1, !dbg !85
  %41 = load i32, i32* %j, align 4, !dbg !86
  %42 = add nsw i32 %41, 1, !dbg !86
  store i32 %42, i32* %j, align 4, !dbg !86
  br label %43, !dbg !87

; <label>:43                                      ; preds = %33
  %44 = load i32, i32* %i, align 4, !dbg !88
  %45 = add nsw i32 %44, -1, !dbg !88
  store i32 %45, i32* %i, align 4, !dbg !88
  br label %30, !dbg !89

; <label>:46                                      ; preds = %30
  %47 = load i32, i32* %max, align 4, !dbg !90
  %48 = sub i32 %47, 1, !dbg !91
  store i32 %48, i32* %j, align 4, !dbg !92
  store i32 0, i32* %i, align 4, !dbg !93
  br label %49, !dbg !94

; <label>:49                                      ; preds = %73, %46
  %50 = load i32, i32* %i, align 4, !dbg !95
  %51 = load i32, i32* %max, align 4, !dbg !96
  %52 = icmp ult i32 %50, %51, !dbg !97
  br i1 %52, label %53, label %76, !dbg !98

; <label>:53                                      ; preds = %49
  %54 = load i32, i32* %i, align 4, !dbg !99
  %55 = sext i32 %54 to i64, !dbg !100
  %56 = getelementptr inbounds i8, i8* %7, i64 %55, !dbg !100
  %57 = load i8, i8* %56, align 1, !dbg !100
  %58 = sext i8 %57 to i32, !dbg !100
  %59 = load i32, i32* %j, align 4, !dbg !101
  %60 = sext i32 %59 to i64, !dbg !102
  %61 = getelementptr inbounds i8, i8* %10, i64 %60, !dbg !102
  %62 = load i8, i8* %61, align 1, !dbg !102
  %63 = sext i8 %62 to i32, !dbg !102
  %64 = icmp eq i32 %58, %63, !dbg !103
  %65 = zext i1 %64 to i32, !dbg !103
  %66 = bitcast i32* %1 to i8*, !dbg !104
  call void @llvm.lifetime.start(i64 4, i8* %66), !dbg !104
  store i32 %65, i32* %1, align 4, !dbg !104
  %67 = load i32, i32* %1, align 4, !dbg !105
  %68 = icmp ne i32 %67, 0, !dbg !106
  br i1 %68, label %__VERIFIER_assert.exit, label %69, !dbg !107

; <label>:69                                      ; preds = %53
  call void (...) @__VERIFIER_error() #6, !dbg !108
  unreachable, !dbg !108

__VERIFIER_assert.exit:                           ; preds = %53
  %70 = bitcast i32* %1 to i8*, !dbg !109
  call void @llvm.lifetime.end(i64 4, i8* %70), !dbg !109
  %71 = load i32, i32* %j, align 4, !dbg !110
  %72 = add nsw i32 %71, -1, !dbg !110
  store i32 %72, i32* %j, align 4, !dbg !110
  br label %73, !dbg !111

; <label>:73                                      ; preds = %__VERIFIER_assert.exit
  %74 = load i32, i32* %i, align 4, !dbg !112
  %75 = add nsw i32 %74, 1, !dbg !112
  store i32 %75, i32* %i, align 4, !dbg !112
  br label %49, !dbg !113

; <label>:76                                      ; preds = %49
  %77 = load i8*, i8** %3, !dbg !114
  call void @llvm.stackrestore(i8* %77), !dbg !114
  %78 = load i32, i32* %2, !dbg !114
  ret i32 %78, !dbg !114
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare signext i8 @__VERIFIER_nondet_char(...) #4

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "programs/svcomp16/loops/invert_string_true-unreach-call.i", directory: ".")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !9, isLocal: false, isDefinition: true, scopeLine: 11, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "max", scope: !8, file: !1, line: 12, type: !27)
!27 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!28 = !DILocation(line: 12, column: 18, scope: !8)
!29 = !DILocation(line: 13, column: 15, scope: !8)
!30 = !DILocation(line: 13, column: 5, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str1", scope: !8, file: !1, line: 13, type: !32)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, align: 8, elements: !34)
!33 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!34 = !{!35}
!35 = !DISubrange(count: -1)
!36 = !DIExpression(DW_OP_deref)
!37 = !DILocation(line: 13, column: 10, scope: !8)
!38 = !DILocation(line: 13, column: 26, scope: !8)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str2", scope: !8, file: !1, line: 13, type: !32)
!40 = !DILocation(line: 13, column: 21, scope: !8)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 14, type: !7)
!42 = !DILocation(line: 14, column: 9, scope: !8)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 14, type: !7)
!44 = !DILocation(line: 14, column: 12, scope: !8)
!45 = !DILocation(line: 16, column: 11, scope: !46)
!46 = distinct !DILexicalBlock(scope: !8, file: !1, line: 16, column: 5)
!47 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !48)
!48 = distinct !DILocation(line: 31, column: 7, scope: !49)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 30, column: 27)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 30, column: 5)
!51 = distinct !DILexicalBlock(scope: !8, file: !1, line: 30, column: 5)
!52 = !DILocation(line: 16, column: 10, scope: !46)
!53 = !DILocation(line: 16, column: 15, scope: !54)
!54 = distinct !DILexicalBlock(scope: !46, file: !1, line: 16, column: 5)
!55 = !DILocation(line: 16, column: 17, scope: !54)
!56 = !DILocation(line: 16, column: 16, scope: !54)
!57 = !DILocation(line: 16, column: 5, scope: !46)
!58 = !DILocation(line: 17, column: 17, scope: !59)
!59 = distinct !DILexicalBlock(scope: !54, file: !1, line: 16, column: 27)
!60 = !DILocation(line: 17, column: 14, scope: !59)
!61 = !DILocation(line: 17, column: 9, scope: !59)
!62 = !DILocation(line: 17, column: 16, scope: !59)
!63 = !DILocation(line: 18, column: 5, scope: !59)
!64 = !DILocation(line: 16, column: 23, scope: !54)
!65 = !DILocation(line: 16, column: 5, scope: !54)
!66 = !DILocation(line: 20, column: 10, scope: !8)
!67 = !DILocation(line: 20, column: 13, scope: !8)
!68 = !DILocation(line: 20, column: 5, scope: !8)
!69 = !DILocation(line: 20, column: 16, scope: !8)
!70 = !DILocation(line: 22, column: 7, scope: !8)
!71 = !DILocation(line: 24, column: 14, scope: !72)
!72 = distinct !DILexicalBlock(scope: !8, file: !1, line: 24, column: 5)
!73 = !DILocation(line: 24, column: 18, scope: !72)
!74 = !DILocation(line: 24, column: 12, scope: !72)
!75 = !DILocation(line: 24, column: 10, scope: !72)
!76 = !DILocation(line: 24, column: 23, scope: !77)
!77 = distinct !DILexicalBlock(scope: !72, file: !1, line: 24, column: 5)
!78 = !DILocation(line: 24, column: 25, scope: !77)
!79 = !DILocation(line: 24, column: 5, scope: !72)
!80 = !DILocation(line: 25, column: 24, scope: !81)
!81 = distinct !DILexicalBlock(scope: !77, file: !1, line: 24, column: 36)
!82 = !DILocation(line: 25, column: 19, scope: !81)
!83 = !DILocation(line: 25, column: 14, scope: !81)
!84 = !DILocation(line: 25, column: 9, scope: !81)
!85 = !DILocation(line: 25, column: 17, scope: !81)
!86 = !DILocation(line: 26, column: 10, scope: !81)
!87 = !DILocation(line: 27, column: 5, scope: !81)
!88 = !DILocation(line: 24, column: 32, scope: !77)
!89 = !DILocation(line: 24, column: 5, scope: !77)
!90 = !DILocation(line: 29, column: 9, scope: !8)
!91 = !DILocation(line: 29, column: 12, scope: !8)
!92 = !DILocation(line: 29, column: 7, scope: !8)
!93 = !DILocation(line: 30, column: 11, scope: !51)
!94 = !DILocation(line: 30, column: 10, scope: !51)
!95 = !DILocation(line: 30, column: 15, scope: !50)
!96 = !DILocation(line: 30, column: 17, scope: !50)
!97 = !DILocation(line: 30, column: 16, scope: !50)
!98 = !DILocation(line: 30, column: 5, scope: !51)
!99 = !DILocation(line: 31, column: 30, scope: !49)
!100 = !DILocation(line: 31, column: 25, scope: !49)
!101 = !DILocation(line: 31, column: 41, scope: !49)
!102 = !DILocation(line: 31, column: 36, scope: !49)
!103 = !DILocation(line: 31, column: 33, scope: !49)
!104 = !DILocation(line: 31, column: 7, scope: !49)
!105 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !48)
!106 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !48)
!107 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !48)
!108 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !48)
!109 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !48)
!110 = !DILocation(line: 32, column: 8, scope: !49)
!111 = !DILocation(line: 33, column: 5, scope: !49)
!112 = !DILocation(line: 30, column: 23, scope: !50)
!113 = !DILocation(line: 30, column: 5, scope: !50)
!114 = !DILocation(line: 34, column: 1, scope: !8)
