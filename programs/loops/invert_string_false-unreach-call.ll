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
  %MAX = alloca i32, align 4
  %3 = alloca i8*
  %cont = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %MAX, metadata !26, metadata !16), !dbg !27
  %4 = call i32 (...) @__VERIFIER_nondet_uint(), !dbg !28
  store i32 %4, i32* %MAX, align 4, !dbg !27
  %5 = load i32, i32* %MAX, align 4, !dbg !29
  %6 = zext i32 %5 to i64, !dbg !30
  %7 = call i8* @llvm.stacksave(), !dbg !30
  store i8* %7, i8** %3, !dbg !30
  %8 = alloca i8, i64 %6, align 16, !dbg !30
  call void @llvm.dbg.declare(metadata i8* %8, metadata !31, metadata !36), !dbg !37
  %9 = load i32, i32* %MAX, align 4, !dbg !38
  %10 = zext i32 %9 to i64, !dbg !30
  %11 = alloca i8, i64 %10, align 16, !dbg !30
  call void @llvm.dbg.declare(metadata i8* %11, metadata !39, metadata !36), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %cont, metadata !41, metadata !16), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %i, metadata !43, metadata !16), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %j, metadata !45, metadata !16), !dbg !46
  store i32 0, i32* %cont, align 4, !dbg !47
  store i32 0, i32* %i, align 4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !50
  br label %12, !dbg !55

; <label>:12                                      ; preds = %21, %0
  %13 = load i32, i32* %i, align 4, !dbg !56
  %14 = load i32, i32* %MAX, align 4, !dbg !58
  %15 = icmp slt i32 %13, %14, !dbg !59
  br i1 %15, label %16, label %24, !dbg !60

; <label>:16                                      ; preds = %12
  %17 = call signext i8 (...) @__VERIFIER_nondet_char(), !dbg !61
  %18 = load i32, i32* %i, align 4, !dbg !63
  %19 = sext i32 %18 to i64, !dbg !64
  %20 = getelementptr inbounds i8, i8* %8, i64 %19, !dbg !64
  store i8 %17, i8* %20, align 1, !dbg !65
  br label %21, !dbg !66

; <label>:21                                      ; preds = %16
  %22 = load i32, i32* %i, align 4, !dbg !67
  %23 = add nsw i32 %22, 1, !dbg !67
  store i32 %23, i32* %i, align 4, !dbg !67
  br label %12, !dbg !68

; <label>:24                                      ; preds = %12
  %25 = load i32, i32* %MAX, align 4, !dbg !69
  %26 = sub nsw i32 %25, 1, !dbg !70
  %27 = sext i32 %26 to i64, !dbg !71
  %28 = getelementptr inbounds i8, i8* %8, i64 %27, !dbg !71
  store i8 0, i8* %28, align 1, !dbg !72
  store i32 0, i32* %j, align 4, !dbg !73
  %29 = load i32, i32* %MAX, align 4, !dbg !74
  %30 = sub nsw i32 %29, 1, !dbg !76
  store i32 %30, i32* %i, align 4, !dbg !77
  br label %31, !dbg !78

; <label>:31                                      ; preds = %42, %24
  %32 = load i32, i32* %i, align 4, !dbg !79
  %33 = icmp sge i32 %32, 0, !dbg !81
  br i1 %33, label %34, label %45, !dbg !82

; <label>:34                                      ; preds = %31
  %35 = getelementptr inbounds i8, i8* %8, i64 0, !dbg !83
  %36 = load i8, i8* %35, align 1, !dbg !83
  %37 = load i32, i32* %j, align 4, !dbg !85
  %38 = sext i32 %37 to i64, !dbg !86
  %39 = getelementptr inbounds i8, i8* %11, i64 %38, !dbg !86
  store i8 %36, i8* %39, align 1, !dbg !87
  %40 = load i32, i32* %j, align 4, !dbg !88
  %41 = add nsw i32 %40, 1, !dbg !88
  store i32 %41, i32* %j, align 4, !dbg !88
  br label %42, !dbg !89

; <label>:42                                      ; preds = %34
  %43 = load i32, i32* %i, align 4, !dbg !90
  %44 = add nsw i32 %43, -1, !dbg !90
  store i32 %44, i32* %i, align 4, !dbg !90
  br label %31, !dbg !91

; <label>:45                                      ; preds = %31
  %46 = load i32, i32* %MAX, align 4, !dbg !92
  %47 = sub nsw i32 %46, 1, !dbg !93
  store i32 %47, i32* %j, align 4, !dbg !94
  store i32 0, i32* %i, align 4, !dbg !95
  br label %48, !dbg !96

; <label>:48                                      ; preds = %72, %45
  %49 = load i32, i32* %i, align 4, !dbg !97
  %50 = load i32, i32* %MAX, align 4, !dbg !98
  %51 = icmp slt i32 %49, %50, !dbg !99
  br i1 %51, label %52, label %75, !dbg !100

; <label>:52                                      ; preds = %48
  %53 = load i32, i32* %i, align 4, !dbg !101
  %54 = sext i32 %53 to i64, !dbg !102
  %55 = getelementptr inbounds i8, i8* %8, i64 %54, !dbg !102
  %56 = load i8, i8* %55, align 1, !dbg !102
  %57 = sext i8 %56 to i32, !dbg !102
  %58 = load i32, i32* %j, align 4, !dbg !103
  %59 = sext i32 %58 to i64, !dbg !104
  %60 = getelementptr inbounds i8, i8* %11, i64 %59, !dbg !104
  %61 = load i8, i8* %60, align 1, !dbg !104
  %62 = sext i8 %61 to i32, !dbg !104
  %63 = icmp eq i32 %57, %62, !dbg !105
  %64 = zext i1 %63 to i32, !dbg !105
  %65 = bitcast i32* %1 to i8*, !dbg !106
  call void @llvm.lifetime.start(i64 4, i8* %65), !dbg !106
  store i32 %64, i32* %1, align 4, !dbg !106
  %66 = load i32, i32* %1, align 4, !dbg !107
  %67 = icmp ne i32 %66, 0, !dbg !108
  br i1 %67, label %__VERIFIER_assert.exit, label %68, !dbg !109

; <label>:68                                      ; preds = %52
  call void (...) @__VERIFIER_error() #6, !dbg !110
  unreachable, !dbg !110

__VERIFIER_assert.exit:                           ; preds = %52
  %69 = bitcast i32* %1 to i8*, !dbg !111
  call void @llvm.lifetime.end(i64 4, i8* %69), !dbg !111
  %70 = load i32, i32* %j, align 4, !dbg !112
  %71 = add nsw i32 %70, -1, !dbg !112
  store i32 %71, i32* %j, align 4, !dbg !112
  br label %72, !dbg !113

; <label>:72                                      ; preds = %__VERIFIER_assert.exit
  %73 = load i32, i32* %i, align 4, !dbg !114
  %74 = add nsw i32 %73, 1, !dbg !114
  store i32 %74, i32* %i, align 4, !dbg !114
  br label %48, !dbg !115

; <label>:75                                      ; preds = %48
  %76 = load i8*, i8** %3, !dbg !116
  call void @llvm.stackrestore(i8* %76), !dbg !116
  %77 = load i32, i32* %2, !dbg !116
  ret i32 %77, !dbg !116
}

declare i32 @__VERIFIER_nondet_uint(...) #3

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

declare signext i8 @__VERIFIER_nondet_char(...) #3

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
!1 = !DIFile(filename: "../../sv-comp-2016/c/loops/invert_string_false-unreach-call.i", directory: "/Users/franck/development/perentiemq/programs")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 12, type: !9, isLocal: false, isDefinition: true, scopeLine: 12, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "MAX", scope: !8, file: !1, line: 13, type: !7)
!27 = !DILocation(line: 13, column: 9, scope: !8)
!28 = !DILocation(line: 13, column: 15, scope: !8)
!29 = !DILocation(line: 14, column: 15, scope: !8)
!30 = !DILocation(line: 14, column: 5, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str1", scope: !8, file: !1, line: 14, type: !32)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, align: 8, elements: !34)
!33 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!34 = !{!35}
!35 = !DISubrange(count: -1)
!36 = !DIExpression(DW_OP_deref)
!37 = !DILocation(line: 14, column: 10, scope: !8)
!38 = !DILocation(line: 14, column: 26, scope: !8)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str2", scope: !8, file: !1, line: 14, type: !32)
!40 = !DILocation(line: 14, column: 21, scope: !8)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cont", scope: !8, file: !1, line: 15, type: !7)
!42 = !DILocation(line: 15, column: 9, scope: !8)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 15, type: !7)
!44 = !DILocation(line: 15, column: 15, scope: !8)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 15, type: !7)
!46 = !DILocation(line: 15, column: 18, scope: !8)
!47 = !DILocation(line: 16, column: 10, scope: !8)
!48 = !DILocation(line: 18, column: 11, scope: !49)
!49 = distinct !DILexicalBlock(scope: !8, file: !1, line: 18, column: 5)
!50 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !51)
!51 = distinct !DILocation(line: 32, column: 7, scope: !52)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 31, column: 27)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 31, column: 5)
!54 = distinct !DILexicalBlock(scope: !8, file: !1, line: 31, column: 5)
!55 = !DILocation(line: 18, column: 10, scope: !49)
!56 = !DILocation(line: 18, column: 15, scope: !57)
!57 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 5)
!58 = !DILocation(line: 18, column: 17, scope: !57)
!59 = !DILocation(line: 18, column: 16, scope: !57)
!60 = !DILocation(line: 18, column: 5, scope: !49)
!61 = !DILocation(line: 19, column: 17, scope: !62)
!62 = distinct !DILexicalBlock(scope: !57, file: !1, line: 18, column: 27)
!63 = !DILocation(line: 19, column: 14, scope: !62)
!64 = !DILocation(line: 19, column: 9, scope: !62)
!65 = !DILocation(line: 19, column: 16, scope: !62)
!66 = !DILocation(line: 20, column: 5, scope: !62)
!67 = !DILocation(line: 18, column: 23, scope: !57)
!68 = !DILocation(line: 18, column: 5, scope: !57)
!69 = !DILocation(line: 21, column: 7, scope: !8)
!70 = !DILocation(line: 21, column: 10, scope: !8)
!71 = !DILocation(line: 21, column: 2, scope: !8)
!72 = !DILocation(line: 21, column: 13, scope: !8)
!73 = !DILocation(line: 23, column: 7, scope: !8)
!74 = !DILocation(line: 25, column: 14, scope: !75)
!75 = distinct !DILexicalBlock(scope: !8, file: !1, line: 25, column: 5)
!76 = !DILocation(line: 25, column: 18, scope: !75)
!77 = !DILocation(line: 25, column: 12, scope: !75)
!78 = !DILocation(line: 25, column: 10, scope: !75)
!79 = !DILocation(line: 25, column: 23, scope: !80)
!80 = distinct !DILexicalBlock(scope: !75, file: !1, line: 25, column: 5)
!81 = !DILocation(line: 25, column: 25, scope: !80)
!82 = !DILocation(line: 25, column: 5, scope: !75)
!83 = !DILocation(line: 26, column: 19, scope: !84)
!84 = distinct !DILexicalBlock(scope: !80, file: !1, line: 25, column: 36)
!85 = !DILocation(line: 26, column: 14, scope: !84)
!86 = !DILocation(line: 26, column: 9, scope: !84)
!87 = !DILocation(line: 26, column: 17, scope: !84)
!88 = !DILocation(line: 27, column: 10, scope: !84)
!89 = !DILocation(line: 28, column: 5, scope: !84)
!90 = !DILocation(line: 25, column: 32, scope: !80)
!91 = !DILocation(line: 25, column: 5, scope: !80)
!92 = !DILocation(line: 30, column: 9, scope: !8)
!93 = !DILocation(line: 30, column: 12, scope: !8)
!94 = !DILocation(line: 30, column: 7, scope: !8)
!95 = !DILocation(line: 31, column: 11, scope: !54)
!96 = !DILocation(line: 31, column: 10, scope: !54)
!97 = !DILocation(line: 31, column: 15, scope: !53)
!98 = !DILocation(line: 31, column: 17, scope: !53)
!99 = !DILocation(line: 31, column: 16, scope: !53)
!100 = !DILocation(line: 31, column: 5, scope: !54)
!101 = !DILocation(line: 32, column: 30, scope: !52)
!102 = !DILocation(line: 32, column: 25, scope: !52)
!103 = !DILocation(line: 32, column: 41, scope: !52)
!104 = !DILocation(line: 32, column: 36, scope: !52)
!105 = !DILocation(line: 32, column: 33, scope: !52)
!106 = !DILocation(line: 32, column: 7, scope: !52)
!107 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !51)
!108 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !51)
!109 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !51)
!110 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !51)
!111 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !51)
!112 = !DILocation(line: 33, column: 5, scope: !52)
!113 = !DILocation(line: 34, column: 5, scope: !52)
!114 = !DILocation(line: 31, column: 23, scope: !53)
!115 = !DILocation(line: 31, column: 5, scope: !53)
!116 = !DILocation(line: 35, column: 1, scope: !8)
