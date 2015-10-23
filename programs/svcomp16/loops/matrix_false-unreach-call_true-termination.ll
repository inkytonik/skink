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
  %N_LIN = alloca i32, align 4
  %N_COL = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %3 = alloca i8*
  %maior = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %N_LIN, metadata !26, metadata !16), !dbg !28
  %4 = call i32 (...) @__VERIFIER_nondet_uint(), !dbg !29
  store i32 %4, i32* %N_LIN, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %N_COL, metadata !30, metadata !16), !dbg !31
  %5 = call i32 (...) @__VERIFIER_nondet_uint(), !dbg !32
  store i32 %5, i32* %N_COL, align 4, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %j, metadata !33, metadata !16), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %k, metadata !35, metadata !16), !dbg !36
  %6 = load i32, i32* %N_COL, align 4, !dbg !37
  %7 = zext i32 %6 to i64, !dbg !38
  %8 = load i32, i32* %N_LIN, align 4, !dbg !39
  %9 = zext i32 %8 to i64, !dbg !38
  %10 = call i8* @llvm.stacksave(), !dbg !38
  store i8* %10, i8** %3, !dbg !38
  %11 = mul nuw i64 %7, %9, !dbg !38
  %12 = alloca i32, i64 %11, align 16, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %12, metadata !40, metadata !44), !dbg !45
  call void @llvm.dbg.declare(metadata i32* %maior, metadata !46, metadata !16), !dbg !47
  %13 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !48
  store i32 %13, i32* %maior, align 4, !dbg !49
  store i32 0, i32* %j, align 4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !52
  br label %14, !dbg !58

; <label>:14                                      ; preds = %56, %0
  %15 = load i32, i32* %j, align 4, !dbg !59
  %16 = load i32, i32* %N_COL, align 4, !dbg !61
  %17 = icmp ult i32 %15, %16, !dbg !62
  br i1 %17, label %18, label %59, !dbg !63

; <label>:18                                      ; preds = %14
  store i32 0, i32* %k, align 4, !dbg !64
  br label %19, !dbg !66

; <label>:19                                      ; preds = %52, %18
  %20 = load i32, i32* %k, align 4, !dbg !67
  %21 = load i32, i32* %N_LIN, align 4, !dbg !69
  %22 = icmp ult i32 %20, %21, !dbg !70
  br i1 %22, label %23, label %55, !dbg !71

; <label>:23                                      ; preds = %19
  %24 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !72
  %25 = load i32, i32* %k, align 4, !dbg !74
  %26 = zext i32 %25 to i64, !dbg !75
  %27 = load i32, i32* %j, align 4, !dbg !76
  %28 = zext i32 %27 to i64, !dbg !75
  %29 = mul nsw i64 %28, %9, !dbg !75
  %30 = getelementptr inbounds i32, i32* %12, i64 %29, !dbg !75
  %31 = getelementptr inbounds i32, i32* %30, i64 %26, !dbg !75
  store i32 %24, i32* %31, align 4, !dbg !77
  %32 = load i32, i32* %k, align 4, !dbg !78
  %33 = zext i32 %32 to i64, !dbg !80
  %34 = load i32, i32* %j, align 4, !dbg !81
  %35 = zext i32 %34 to i64, !dbg !80
  %36 = mul nsw i64 %35, %9, !dbg !80
  %37 = getelementptr inbounds i32, i32* %12, i64 %36, !dbg !80
  %38 = getelementptr inbounds i32, i32* %37, i64 %33, !dbg !80
  %39 = load i32, i32* %38, align 4, !dbg !80
  %40 = load i32, i32* %maior, align 4, !dbg !82
  %41 = icmp sgt i32 %39, %40, !dbg !83
  br i1 %41, label %42, label %51, !dbg !84

; <label>:42                                      ; preds = %23
  %43 = load i32, i32* %k, align 4, !dbg !85
  %44 = zext i32 %43 to i64, !dbg !86
  %45 = load i32, i32* %j, align 4, !dbg !87
  %46 = zext i32 %45 to i64, !dbg !86
  %47 = mul nsw i64 %46, %9, !dbg !86
  %48 = getelementptr inbounds i32, i32* %12, i64 %47, !dbg !86
  %49 = getelementptr inbounds i32, i32* %48, i64 %44, !dbg !86
  %50 = load i32, i32* %49, align 4, !dbg !86
  store i32 %50, i32* %maior, align 4, !dbg !88
  br label %51, !dbg !89

; <label>:51                                      ; preds = %42, %23
  br label %52, !dbg !90

; <label>:52                                      ; preds = %51
  %53 = load i32, i32* %k, align 4, !dbg !91
  %54 = add i32 %53, 1, !dbg !91
  store i32 %54, i32* %k, align 4, !dbg !91
  br label %19, !dbg !92

; <label>:55                                      ; preds = %19
  br label %56, !dbg !93

; <label>:56                                      ; preds = %55
  %57 = load i32, i32* %j, align 4, !dbg !94
  %58 = add i32 %57, 1, !dbg !94
  store i32 %58, i32* %j, align 4, !dbg !94
  br label %14, !dbg !95

; <label>:59                                      ; preds = %14
  store i32 0, i32* %j, align 4, !dbg !96
  br label %60, !dbg !97

; <label>:60                                      ; preds = %90, %59
  %61 = load i32, i32* %j, align 4, !dbg !98
  %62 = load i32, i32* %N_COL, align 4, !dbg !99
  %63 = icmp ult i32 %61, %62, !dbg !100
  br i1 %63, label %64, label %93, !dbg !101

; <label>:64                                      ; preds = %60
  store i32 0, i32* %k, align 4, !dbg !102
  br label %65, !dbg !103

; <label>:65                                      ; preds = %86, %64
  %66 = load i32, i32* %k, align 4, !dbg !104
  %67 = load i32, i32* %N_LIN, align 4, !dbg !105
  %68 = icmp ult i32 %66, %67, !dbg !106
  br i1 %68, label %69, label %89, !dbg !107

; <label>:69                                      ; preds = %65
  %70 = load i32, i32* %k, align 4, !dbg !108
  %71 = zext i32 %70 to i64, !dbg !109
  %72 = load i32, i32* %j, align 4, !dbg !110
  %73 = zext i32 %72 to i64, !dbg !109
  %74 = mul nsw i64 %73, %9, !dbg !109
  %75 = getelementptr inbounds i32, i32* %12, i64 %74, !dbg !109
  %76 = getelementptr inbounds i32, i32* %75, i64 %71, !dbg !109
  %77 = load i32, i32* %76, align 4, !dbg !109
  %78 = load i32, i32* %maior, align 4, !dbg !111
  %79 = icmp slt i32 %77, %78, !dbg !112
  %80 = zext i1 %79 to i32, !dbg !112
  %81 = bitcast i32* %1 to i8*, !dbg !113
  call void @llvm.lifetime.start(i64 4, i8* %81), !dbg !113
  store i32 %80, i32* %1, align 4, !dbg !113
  %82 = load i32, i32* %1, align 4, !dbg !114
  %83 = icmp ne i32 %82, 0, !dbg !115
  br i1 %83, label %__VERIFIER_assert.exit, label %84, !dbg !116

; <label>:84                                      ; preds = %69
  call void (...) @__VERIFIER_error() #6, !dbg !117
  unreachable, !dbg !117

__VERIFIER_assert.exit:                           ; preds = %69
  %85 = bitcast i32* %1 to i8*, !dbg !118
  call void @llvm.lifetime.end(i64 4, i8* %85), !dbg !118
  br label %86, !dbg !113

; <label>:86                                      ; preds = %__VERIFIER_assert.exit
  %87 = load i32, i32* %k, align 4, !dbg !119
  %88 = add i32 %87, 1, !dbg !119
  store i32 %88, i32* %k, align 4, !dbg !119
  br label %65, !dbg !120

; <label>:89                                      ; preds = %65
  br label %90, !dbg !121

; <label>:90                                      ; preds = %89
  %91 = load i32, i32* %j, align 4, !dbg !122
  %92 = add i32 %91, 1, !dbg !122
  store i32 %92, i32* %j, align 4, !dbg !122
  br label %60, !dbg !123

; <label>:93                                      ; preds = %60
  %94 = load i8*, i8** %3, !dbg !124
  call void @llvm.stackrestore(i8* %94), !dbg !124
  %95 = load i32, i32* %2, !dbg !124
  ret i32 %95, !dbg !124
}

declare i32 @__VERIFIER_nondet_uint(...) #3

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

declare i32 @__VERIFIER_nondet_int(...) #3

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
!1 = !DIFile(filename: "matrix_false-unreach-call_true-termination.i", directory: "/Users/asloane/Projects/SV-COMP/sv-benchmarks/c/loops")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
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
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "N_LIN", scope: !8, file: !1, line: 14, type: !27)
!27 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!28 = !DILocation(line: 14, column: 16, scope: !8)
!29 = !DILocation(line: 14, column: 22, scope: !8)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "N_COL", scope: !8, file: !1, line: 15, type: !27)
!31 = !DILocation(line: 15, column: 16, scope: !8)
!32 = !DILocation(line: 15, column: 22, scope: !8)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 16, type: !27)
!34 = !DILocation(line: 16, column: 16, scope: !8)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !8, file: !1, line: 16, type: !27)
!36 = !DILocation(line: 16, column: 18, scope: !8)
!37 = !DILocation(line: 17, column: 14, scope: !8)
!38 = !DILocation(line: 17, column: 3, scope: !8)
!39 = !DILocation(line: 17, column: 21, scope: !8)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "matriz", scope: !8, file: !1, line: 17, type: !41)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, align: 32, elements: !42)
!42 = !{!43, !43}
!43 = !DISubrange(count: -1)
!44 = !DIExpression(DW_OP_deref)
!45 = !DILocation(line: 17, column: 7, scope: !8)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maior", scope: !8, file: !1, line: 17, type: !7)
!47 = !DILocation(line: 17, column: 29, scope: !8)
!48 = !DILocation(line: 19, column: 11, scope: !8)
!49 = !DILocation(line: 19, column: 9, scope: !8)
!50 = !DILocation(line: 20, column: 8, scope: !51)
!51 = distinct !DILexicalBlock(scope: !8, file: !1, line: 20, column: 3)
!52 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !53)
!53 = distinct !DILocation(line: 31, column: 7, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 30, column: 5)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 30, column: 5)
!56 = distinct !DILexicalBlock(scope: !57, file: !1, line: 29, column: 3)
!57 = distinct !DILexicalBlock(scope: !8, file: !1, line: 29, column: 3)
!58 = !DILocation(line: 20, column: 7, scope: !51)
!59 = !DILocation(line: 20, column: 11, scope: !60)
!60 = distinct !DILexicalBlock(scope: !51, file: !1, line: 20, column: 3)
!61 = !DILocation(line: 20, column: 13, scope: !60)
!62 = !DILocation(line: 20, column: 12, scope: !60)
!63 = !DILocation(line: 20, column: 3, scope: !51)
!64 = !DILocation(line: 21, column: 10, scope: !65)
!65 = distinct !DILexicalBlock(scope: !60, file: !1, line: 21, column: 5)
!66 = !DILocation(line: 21, column: 9, scope: !65)
!67 = !DILocation(line: 21, column: 13, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !1, line: 21, column: 5)
!69 = !DILocation(line: 21, column: 15, scope: !68)
!70 = !DILocation(line: 21, column: 14, scope: !68)
!71 = !DILocation(line: 21, column: 5, scope: !65)
!72 = !DILocation(line: 23, column: 23, scope: !73)
!73 = distinct !DILexicalBlock(scope: !68, file: !1, line: 22, column: 5)
!74 = !DILocation(line: 23, column: 18, scope: !73)
!75 = !DILocation(line: 23, column: 8, scope: !73)
!76 = !DILocation(line: 23, column: 15, scope: !73)
!77 = !DILocation(line: 23, column: 21, scope: !73)
!78 = !DILocation(line: 25, column: 21, scope: !79)
!79 = distinct !DILexicalBlock(scope: !73, file: !1, line: 25, column: 11)
!80 = !DILocation(line: 25, column: 11, scope: !79)
!81 = !DILocation(line: 25, column: 18, scope: !79)
!82 = !DILocation(line: 25, column: 24, scope: !79)
!83 = !DILocation(line: 25, column: 23, scope: !79)
!84 = !DILocation(line: 25, column: 11, scope: !73)
!85 = !DILocation(line: 26, column: 29, scope: !79)
!86 = !DILocation(line: 26, column: 19, scope: !79)
!87 = !DILocation(line: 26, column: 26, scope: !79)
!88 = !DILocation(line: 26, column: 17, scope: !79)
!89 = !DILocation(line: 26, column: 11, scope: !79)
!90 = !DILocation(line: 27, column: 5, scope: !73)
!91 = !DILocation(line: 21, column: 22, scope: !68)
!92 = !DILocation(line: 21, column: 5, scope: !68)
!93 = !DILocation(line: 27, column: 5, scope: !65)
!94 = !DILocation(line: 20, column: 20, scope: !60)
!95 = !DILocation(line: 20, column: 3, scope: !60)
!96 = !DILocation(line: 29, column: 8, scope: !57)
!97 = !DILocation(line: 29, column: 7, scope: !57)
!98 = !DILocation(line: 29, column: 11, scope: !56)
!99 = !DILocation(line: 29, column: 13, scope: !56)
!100 = !DILocation(line: 29, column: 12, scope: !56)
!101 = !DILocation(line: 29, column: 3, scope: !57)
!102 = !DILocation(line: 30, column: 10, scope: !55)
!103 = !DILocation(line: 30, column: 9, scope: !55)
!104 = !DILocation(line: 30, column: 13, scope: !54)
!105 = !DILocation(line: 30, column: 15, scope: !54)
!106 = !DILocation(line: 30, column: 14, scope: !54)
!107 = !DILocation(line: 30, column: 5, scope: !55)
!108 = !DILocation(line: 31, column: 35, scope: !54)
!109 = !DILocation(line: 31, column: 25, scope: !54)
!110 = !DILocation(line: 31, column: 32, scope: !54)
!111 = !DILocation(line: 31, column: 38, scope: !54)
!112 = !DILocation(line: 31, column: 37, scope: !54)
!113 = !DILocation(line: 31, column: 7, scope: !54)
!114 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !53)
!115 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !53)
!116 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !53)
!117 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !53)
!118 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !53)
!119 = !DILocation(line: 30, column: 22, scope: !54)
!120 = !DILocation(line: 30, column: 5, scope: !54)
!121 = !DILocation(line: 31, column: 43, scope: !55)
!122 = !DILocation(line: 29, column: 20, scope: !56)
!123 = !DILocation(line: 29, column: 3, scope: !56)
!124 = !DILocation(line: 32, column: 1, scope: !8)
