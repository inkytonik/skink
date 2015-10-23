; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@main.vetor_vogais = private unnamed_addr constant [11 x i8] c"aAeEiIoOuU\00", align 1

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
  %string_entrada = alloca [10 x i8], align 1
  %vetor_vogais = alloca [11 x i8], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cont = alloca i32, align 4
  %tam_string = alloca i32, align 4
  %n_caracter = alloca i32, align 4
  %cont_aux = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata [10 x i8]* %string_entrada, metadata !26, metadata !16), !dbg !31
  call void @llvm.dbg.declare(metadata [11 x i8]* %vetor_vogais, metadata !32, metadata !16), !dbg !36
  %3 = bitcast [11 x i8]* %vetor_vogais to i8*, !dbg !36
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @main.vetor_vogais, i32 0, i32 0), i64 11, i32 1, i1 false), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %i, metadata !37, metadata !16), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %j, metadata !40, metadata !16), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %cont, metadata !42, metadata !16), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %tam_string, metadata !44, metadata !16), !dbg !45
  call void @llvm.dbg.declare(metadata i32* %n_caracter, metadata !46, metadata !16), !dbg !47
  store i32 0, i32* %i, align 4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !50
  br label %4, !dbg !52

; <label>:4                                       ; preds = %12, %0
  %5 = load i32, i32* %i, align 4, !dbg !53
  %6 = icmp ult i32 %5, 10, !dbg !55
  br i1 %6, label %7, label %15, !dbg !56

; <label>:7                                       ; preds = %4
  %8 = call signext i8 (...) @__VERIFIER_nondet_char(), !dbg !57
  %9 = load i32, i32* %i, align 4, !dbg !58
  %10 = zext i32 %9 to i64, !dbg !59
  %11 = getelementptr inbounds [10 x i8], [10 x i8]* %string_entrada, i32 0, i64 %10, !dbg !59
  store i8 %8, i8* %11, align 1, !dbg !60
  br label %12, !dbg !59

; <label>:12                                      ; preds = %7
  %13 = load i32, i32* %i, align 4, !dbg !61
  %14 = add i32 %13, 1, !dbg !61
  store i32 %14, i32* %i, align 4, !dbg !61
  br label %4, !dbg !62

; <label>:15                                      ; preds = %4
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %string_entrada, i32 0, i64 9, !dbg !63
  store i8 0, i8* %16, align 1, !dbg !64
  store i32 0, i32* %n_caracter, align 4, !dbg !65
  br label %17, !dbg !66

; <label>:17                                      ; preds = %24, %15
  %18 = load i32, i32* %n_caracter, align 4, !dbg !67
  %19 = zext i32 %18 to i64, !dbg !68
  %20 = getelementptr inbounds [10 x i8], [10 x i8]* %string_entrada, i32 0, i64 %19, !dbg !68
  %21 = load i8, i8* %20, align 1, !dbg !68
  %22 = sext i8 %21 to i32, !dbg !68
  %23 = icmp ne i32 %22, 0, !dbg !69
  br i1 %23, label %24, label %27, !dbg !66

; <label>:24                                      ; preds = %17
  %25 = load i32, i32* %n_caracter, align 4, !dbg !70
  %26 = add i32 %25, 1, !dbg !70
  store i32 %26, i32* %n_caracter, align 4, !dbg !70
  br label %17, !dbg !66

; <label>:27                                      ; preds = %17
  store i32 0, i32* %cont, align 4, !dbg !71
  store i32 0, i32* %i, align 4, !dbg !72
  br label %28, !dbg !74

; <label>:28                                      ; preds = %56, %27
  %29 = load i32, i32* %i, align 4, !dbg !75
  %30 = load i32, i32* %n_caracter, align 4, !dbg !77
  %31 = icmp ult i32 %29, %30, !dbg !78
  br i1 %31, label %32, label %59, !dbg !79

; <label>:32                                      ; preds = %28
  store i32 0, i32* %j, align 4, !dbg !80
  br label %33, !dbg !82

; <label>:33                                      ; preds = %52, %32
  %34 = load i32, i32* %j, align 4, !dbg !83
  %35 = icmp ult i32 %34, 8, !dbg !85
  br i1 %35, label %36, label %55, !dbg !86

; <label>:36                                      ; preds = %33
  %37 = load i32, i32* %i, align 4, !dbg !87
  %38 = zext i32 %37 to i64, !dbg !89
  %39 = getelementptr inbounds [10 x i8], [10 x i8]* %string_entrada, i32 0, i64 %38, !dbg !89
  %40 = load i8, i8* %39, align 1, !dbg !89
  %41 = sext i8 %40 to i32, !dbg !89
  %42 = load i32, i32* %j, align 4, !dbg !90
  %43 = zext i32 %42 to i64, !dbg !91
  %44 = getelementptr inbounds [11 x i8], [11 x i8]* %vetor_vogais, i32 0, i64 %43, !dbg !91
  %45 = load i8, i8* %44, align 1, !dbg !91
  %46 = sext i8 %45 to i32, !dbg !91
  %47 = icmp eq i32 %41, %46, !dbg !92
  br i1 %47, label %48, label %51, !dbg !93

; <label>:48                                      ; preds = %36
  %49 = load i32, i32* %cont, align 4, !dbg !94
  %50 = add i32 %49, 1, !dbg !94
  store i32 %50, i32* %cont, align 4, !dbg !94
  br label %51, !dbg !95

; <label>:51                                      ; preds = %48, %36
  br label %52, !dbg !96

; <label>:52                                      ; preds = %51
  %53 = load i32, i32* %j, align 4, !dbg !97
  %54 = add i32 %53, 1, !dbg !97
  store i32 %54, i32* %j, align 4, !dbg !97
  br label %33, !dbg !98

; <label>:55                                      ; preds = %33
  br label %56, !dbg !99

; <label>:56                                      ; preds = %55
  %57 = load i32, i32* %i, align 4, !dbg !100
  %58 = add i32 %57, 1, !dbg !100
  store i32 %58, i32* %i, align 4, !dbg !100
  br label %28, !dbg !101

; <label>:59                                      ; preds = %28
  store i32 0, i32* %i, align 4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %cont_aux, metadata !103, metadata !16), !dbg !104
  store i32 0, i32* %cont_aux, align 4, !dbg !104
  br label %60, !dbg !105

; <label>:60                                      ; preds = %90, %59
  %61 = load i32, i32* %i, align 4, !dbg !106
  %62 = zext i32 %61 to i64, !dbg !107
  %63 = getelementptr inbounds [10 x i8], [10 x i8]* %string_entrada, i32 0, i64 %62, !dbg !107
  %64 = load i8, i8* %63, align 1, !dbg !107
  %65 = sext i8 %64 to i32, !dbg !107
  %66 = icmp ne i32 %65, 0, !dbg !108
  br i1 %66, label %67, label %93, !dbg !105

; <label>:67                                      ; preds = %60
  store i32 0, i32* %j, align 4, !dbg !109
  br label %68, !dbg !112

; <label>:68                                      ; preds = %87, %67
  %69 = load i32, i32* %j, align 4, !dbg !113
  %70 = icmp ult i32 %69, 10, !dbg !115
  br i1 %70, label %71, label %90, !dbg !116

; <label>:71                                      ; preds = %68
  %72 = load i32, i32* %i, align 4, !dbg !117
  %73 = zext i32 %72 to i64, !dbg !120
  %74 = getelementptr inbounds [10 x i8], [10 x i8]* %string_entrada, i32 0, i64 %73, !dbg !120
  %75 = load i8, i8* %74, align 1, !dbg !120
  %76 = sext i8 %75 to i32, !dbg !120
  %77 = load i32, i32* %j, align 4, !dbg !121
  %78 = zext i32 %77 to i64, !dbg !122
  %79 = getelementptr inbounds [11 x i8], [11 x i8]* %vetor_vogais, i32 0, i64 %78, !dbg !122
  %80 = load i8, i8* %79, align 1, !dbg !122
  %81 = sext i8 %80 to i32, !dbg !122
  %82 = icmp eq i32 %76, %81, !dbg !123
  br i1 %82, label %83, label %86, !dbg !124

; <label>:83                                      ; preds = %71
  %84 = load i32, i32* %cont_aux, align 4, !dbg !125
  %85 = add nsw i32 %84, 1, !dbg !125
  store i32 %85, i32* %cont_aux, align 4, !dbg !125
  br label %86, !dbg !126

; <label>:86                                      ; preds = %83, %71
  br label %87, !dbg !127

; <label>:87                                      ; preds = %86
  %88 = load i32, i32* %j, align 4, !dbg !128
  %89 = add i32 %88, 1, !dbg !128
  store i32 %89, i32* %j, align 4, !dbg !128
  br label %68, !dbg !129

; <label>:90                                      ; preds = %68
  %91 = load i32, i32* %i, align 4, !dbg !130
  %92 = add i32 %91, 1, !dbg !130
  store i32 %92, i32* %i, align 4, !dbg !130
  br label %60, !dbg !105

; <label>:93                                      ; preds = %60
  %94 = load i32, i32* %cont_aux, align 4, !dbg !131
  %95 = load i32, i32* %cont, align 4, !dbg !132
  %96 = icmp eq i32 %94, %95, !dbg !133
  %97 = zext i1 %96 to i32, !dbg !133
  %98 = bitcast i32* %1 to i8*, !dbg !134
  call void @llvm.lifetime.start(i64 4, i8* %98), !dbg !134
  store i32 %97, i32* %1, align 4, !dbg !134
  %99 = load i32, i32* %1, align 4, !dbg !135
  %100 = icmp ne i32 %99, 0, !dbg !136
  br i1 %100, label %__VERIFIER_assert.exit, label %101, !dbg !137

; <label>:101                                     ; preds = %93
  call void (...) @__VERIFIER_error() #6, !dbg !138
  unreachable, !dbg !138

__VERIFIER_assert.exit:                           ; preds = %93
  %102 = bitcast i32* %1 to i8*, !dbg !139
  call void @llvm.lifetime.end(i64 4, i8* %102), !dbg !139
  ret i32 0, !dbg !140
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare signext i8 @__VERIFIER_nondet_char(...) #4

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
!1 = !DIFile(filename: "vogal_false-unreach-call.i", directory: "/Users/asloane/Projects/SV-COMP/sv-benchmarks/c/loops")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !9, isLocal: false, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "string_entrada", scope: !8, file: !1, line: 15, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 80, align: 8, elements: !29)
!28 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!29 = !{!30}
!30 = !DISubrange(count: 10)
!31 = !DILocation(line: 15, column: 8, scope: !8)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vetor_vogais", scope: !8, file: !1, line: 15, type: !33)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 88, align: 8, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 11)
!36 = !DILocation(line: 15, column: 28, scope: !8)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 16, type: !38)
!38 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!39 = !DILocation(line: 16, column: 16, scope: !8)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 16, type: !38)
!41 = !DILocation(line: 16, column: 18, scope: !8)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cont", scope: !8, file: !1, line: 16, type: !38)
!43 = !DILocation(line: 16, column: 20, scope: !8)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tam_string", scope: !8, file: !1, line: 16, type: !38)
!45 = !DILocation(line: 16, column: 26, scope: !8)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_caracter", scope: !8, file: !1, line: 16, type: !38)
!47 = !DILocation(line: 16, column: 38, scope: !8)
!48 = !DILocation(line: 18, column: 8, scope: !49)
!49 = distinct !DILexicalBlock(scope: !8, file: !1, line: 18, column: 3)
!50 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !51)
!51 = distinct !DILocation(line: 44, column: 3, scope: !8)
!52 = !DILocation(line: 18, column: 7, scope: !49)
!53 = !DILocation(line: 18, column: 11, scope: !54)
!54 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!55 = !DILocation(line: 18, column: 12, scope: !54)
!56 = !DILocation(line: 18, column: 3, scope: !49)
!57 = !DILocation(line: 19, column: 25, scope: !54)
!58 = !DILocation(line: 19, column: 20, scope: !54)
!59 = !DILocation(line: 19, column: 5, scope: !54)
!60 = !DILocation(line: 19, column: 23, scope: !54)
!61 = !DILocation(line: 18, column: 17, scope: !54)
!62 = !DILocation(line: 18, column: 3, scope: !54)
!63 = !DILocation(line: 21, column: 3, scope: !8)
!64 = !DILocation(line: 21, column: 24, scope: !8)
!65 = !DILocation(line: 23, column: 14, scope: !8)
!66 = !DILocation(line: 24, column: 3, scope: !8)
!67 = !DILocation(line: 24, column: 24, scope: !8)
!68 = !DILocation(line: 24, column: 9, scope: !8)
!69 = !DILocation(line: 24, column: 35, scope: !8)
!70 = !DILocation(line: 25, column: 15, scope: !8)
!71 = !DILocation(line: 27, column: 8, scope: !8)
!72 = !DILocation(line: 28, column: 8, scope: !73)
!73 = distinct !DILexicalBlock(scope: !8, file: !1, line: 28, column: 3)
!74 = !DILocation(line: 28, column: 7, scope: !73)
!75 = !DILocation(line: 28, column: 11, scope: !76)
!76 = distinct !DILexicalBlock(scope: !73, file: !1, line: 28, column: 3)
!77 = !DILocation(line: 28, column: 13, scope: !76)
!78 = !DILocation(line: 28, column: 12, scope: !76)
!79 = !DILocation(line: 28, column: 3, scope: !73)
!80 = !DILocation(line: 29, column: 11, scope: !81)
!81 = distinct !DILexicalBlock(scope: !76, file: !1, line: 29, column: 6)
!82 = !DILocation(line: 29, column: 10, scope: !81)
!83 = !DILocation(line: 29, column: 14, scope: !84)
!84 = distinct !DILexicalBlock(scope: !81, file: !1, line: 29, column: 6)
!85 = !DILocation(line: 29, column: 15, scope: !84)
!86 = !DILocation(line: 29, column: 6, scope: !81)
!87 = !DILocation(line: 30, column: 27, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !1, line: 30, column: 12)
!89 = !DILocation(line: 30, column: 12, scope: !88)
!90 = !DILocation(line: 30, column: 46, scope: !88)
!91 = !DILocation(line: 30, column: 33, scope: !88)
!92 = !DILocation(line: 30, column: 30, scope: !88)
!93 = !DILocation(line: 30, column: 12, scope: !84)
!94 = !DILocation(line: 31, column: 16, scope: !88)
!95 = !DILocation(line: 31, column: 12, scope: !88)
!96 = !DILocation(line: 30, column: 47, scope: !88)
!97 = !DILocation(line: 29, column: 19, scope: !84)
!98 = !DILocation(line: 29, column: 6, scope: !84)
!99 = !DILocation(line: 31, column: 16, scope: !81)
!100 = !DILocation(line: 28, column: 25, scope: !76)
!101 = !DILocation(line: 28, column: 3, scope: !76)
!102 = !DILocation(line: 33, column: 4, scope: !8)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cont_aux", scope: !8, file: !1, line: 34, type: !7)
!104 = !DILocation(line: 34, column: 7, scope: !8)
!105 = !DILocation(line: 35, column: 3, scope: !8)
!106 = !DILocation(line: 35, column: 24, scope: !8)
!107 = !DILocation(line: 35, column: 9, scope: !8)
!108 = !DILocation(line: 35, column: 26, scope: !8)
!109 = !DILocation(line: 37, column: 10, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !1, line: 37, column: 5)
!111 = distinct !DILexicalBlock(scope: !8, file: !1, line: 36, column: 3)
!112 = !DILocation(line: 37, column: 9, scope: !110)
!113 = !DILocation(line: 37, column: 13, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !1, line: 37, column: 5)
!115 = !DILocation(line: 37, column: 14, scope: !114)
!116 = !DILocation(line: 37, column: 5, scope: !110)
!117 = !DILocation(line: 39, column: 27, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !1, line: 39, column: 12)
!119 = distinct !DILexicalBlock(scope: !114, file: !1, line: 38, column: 5)
!120 = !DILocation(line: 39, column: 12, scope: !118)
!121 = !DILocation(line: 39, column: 46, scope: !118)
!122 = !DILocation(line: 39, column: 33, scope: !118)
!123 = !DILocation(line: 39, column: 30, scope: !118)
!124 = !DILocation(line: 39, column: 12, scope: !119)
!125 = !DILocation(line: 40, column: 20, scope: !118)
!126 = !DILocation(line: 40, column: 12, scope: !118)
!127 = !DILocation(line: 41, column: 5, scope: !119)
!128 = !DILocation(line: 37, column: 19, scope: !114)
!129 = !DILocation(line: 37, column: 5, scope: !114)
!130 = !DILocation(line: 42, column: 6, scope: !111)
!131 = !DILocation(line: 44, column: 21, scope: !8)
!132 = !DILocation(line: 44, column: 31, scope: !8)
!133 = !DILocation(line: 44, column: 29, scope: !8)
!134 = !DILocation(line: 44, column: 3, scope: !8)
!135 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !51)
!136 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !51)
!137 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !51)
!138 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !51)
!139 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !51)
!140 = !DILocation(line: 46, column: 3, scope: !8)
