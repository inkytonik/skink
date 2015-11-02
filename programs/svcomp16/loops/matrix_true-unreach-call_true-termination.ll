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
  %N_LIN = alloca i32, align 4
  %N_COL = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %3 = alloca i8*
  %maior = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %N_LIN, metadata !26, metadata !16), !dbg !28
  store i32 1, i32* %N_LIN, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %N_COL, metadata !29, metadata !16), !dbg !30
  store i32 1, i32* %N_COL, align 4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %j, metadata !31, metadata !16), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %k, metadata !33, metadata !16), !dbg !34
  %4 = load i32, i32* %N_COL, align 4, !dbg !35
  %5 = zext i32 %4 to i64, !dbg !36
  %6 = load i32, i32* %N_LIN, align 4, !dbg !37
  %7 = zext i32 %6 to i64, !dbg !36
  %8 = call i8* @llvm.stacksave(), !dbg !36
  store i8* %8, i8** %3, !dbg !36
  %9 = mul nuw i64 %5, %7, !dbg !36
  %10 = alloca i32, i64 %9, align 16, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %10, metadata !38, metadata !42), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %maior, metadata !44, metadata !16), !dbg !45
  %11 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !46
  store i32 %11, i32* %maior, align 4, !dbg !47
  store i32 0, i32* %j, align 4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !50
  br label %12, !dbg !52

; <label>:12                                      ; preds = %54, %0
  %13 = load i32, i32* %j, align 4, !dbg !53
  %14 = load i32, i32* %N_COL, align 4, !dbg !55
  %15 = icmp ult i32 %13, %14, !dbg !56
  br i1 %15, label %16, label %57, !dbg !57

; <label>:16                                      ; preds = %12
  store i32 0, i32* %k, align 4, !dbg !58
  br label %17, !dbg !60

; <label>:17                                      ; preds = %50, %16
  %18 = load i32, i32* %k, align 4, !dbg !61
  %19 = load i32, i32* %N_LIN, align 4, !dbg !63
  %20 = icmp ult i32 %18, %19, !dbg !64
  br i1 %20, label %21, label %53, !dbg !65

; <label>:21                                      ; preds = %17
  %22 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !66
  %23 = load i32, i32* %k, align 4, !dbg !68
  %24 = zext i32 %23 to i64, !dbg !69
  %25 = load i32, i32* %j, align 4, !dbg !70
  %26 = zext i32 %25 to i64, !dbg !69
  %27 = mul nsw i64 %26, %7, !dbg !69
  %28 = getelementptr inbounds i32, i32* %10, i64 %27, !dbg !69
  %29 = getelementptr inbounds i32, i32* %28, i64 %24, !dbg !69
  store i32 %22, i32* %29, align 4, !dbg !71
  %30 = load i32, i32* %k, align 4, !dbg !72
  %31 = zext i32 %30 to i64, !dbg !74
  %32 = load i32, i32* %j, align 4, !dbg !75
  %33 = zext i32 %32 to i64, !dbg !74
  %34 = mul nsw i64 %33, %7, !dbg !74
  %35 = getelementptr inbounds i32, i32* %10, i64 %34, !dbg !74
  %36 = getelementptr inbounds i32, i32* %35, i64 %31, !dbg !74
  %37 = load i32, i32* %36, align 4, !dbg !74
  %38 = load i32, i32* %maior, align 4, !dbg !76
  %39 = icmp sge i32 %37, %38, !dbg !77
  br i1 %39, label %40, label %49, !dbg !78

; <label>:40                                      ; preds = %21
  %41 = load i32, i32* %k, align 4, !dbg !79
  %42 = zext i32 %41 to i64, !dbg !80
  %43 = load i32, i32* %j, align 4, !dbg !81
  %44 = zext i32 %43 to i64, !dbg !80
  %45 = mul nsw i64 %44, %7, !dbg !80
  %46 = getelementptr inbounds i32, i32* %10, i64 %45, !dbg !80
  %47 = getelementptr inbounds i32, i32* %46, i64 %42, !dbg !80
  %48 = load i32, i32* %47, align 4, !dbg !80
  store i32 %48, i32* %maior, align 4, !dbg !82
  br label %49, !dbg !83

; <label>:49                                      ; preds = %40, %21
  br label %50, !dbg !84

; <label>:50                                      ; preds = %49
  %51 = load i32, i32* %k, align 4, !dbg !85
  %52 = add i32 %51, 1, !dbg !85
  store i32 %52, i32* %k, align 4, !dbg !85
  br label %17, !dbg !86

; <label>:53                                      ; preds = %17
  br label %54, !dbg !87

; <label>:54                                      ; preds = %53
  %55 = load i32, i32* %j, align 4, !dbg !88
  %56 = add i32 %55, 1, !dbg !88
  store i32 %56, i32* %j, align 4, !dbg !88
  br label %12, !dbg !89

; <label>:57                                      ; preds = %12
  %58 = mul nsw i64 0, %7, !dbg !90
  %59 = getelementptr inbounds i32, i32* %10, i64 %58, !dbg !90
  %60 = getelementptr inbounds i32, i32* %59, i64 0, !dbg !90
  %61 = load i32, i32* %60, align 4, !dbg !90
  %62 = load i32, i32* %maior, align 4, !dbg !91
  %63 = icmp sle i32 %61, %62, !dbg !92
  %64 = zext i1 %63 to i32, !dbg !92
  %65 = bitcast i32* %1 to i8*, !dbg !93
  call void @llvm.lifetime.start(i64 4, i8* %65), !dbg !93
  store i32 %64, i32* %1, align 4, !dbg !93
  %66 = load i32, i32* %1, align 4, !dbg !94
  %67 = icmp ne i32 %66, 0, !dbg !95
  br i1 %67, label %__VERIFIER_assert.exit, label %68, !dbg !96

; <label>:68                                      ; preds = %57
  call void (...) @__VERIFIER_error() #6, !dbg !97
  unreachable, !dbg !97

__VERIFIER_assert.exit:                           ; preds = %57
  %69 = bitcast i32* %1 to i8*, !dbg !98
  call void @llvm.lifetime.end(i64 4, i8* %69), !dbg !98
  store i32 0, i32* %2, !dbg !99
  %70 = load i8*, i8** %3, !dbg !100
  call void @llvm.stackrestore(i8* %70), !dbg !100
  %71 = load i32, i32* %2, !dbg !100
  ret i32 %71, !dbg !100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare i32 @__VERIFIER_nondet_int(...) #4

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
!1 = !DIFile(filename: "programs/svcomp16/loops/matrix_true-unreach-call_true-termination.i", directory: ".")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !9, isLocal: false, isDefinition: true, scopeLine: 12, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "N_LIN", scope: !8, file: !1, line: 13, type: !27)
!27 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!28 = !DILocation(line: 13, column: 16, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "N_COL", scope: !8, file: !1, line: 14, type: !27)
!30 = !DILocation(line: 14, column: 16, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 15, type: !27)
!32 = !DILocation(line: 15, column: 16, scope: !8)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !8, file: !1, line: 15, type: !27)
!34 = !DILocation(line: 15, column: 18, scope: !8)
!35 = !DILocation(line: 16, column: 14, scope: !8)
!36 = !DILocation(line: 16, column: 3, scope: !8)
!37 = !DILocation(line: 16, column: 21, scope: !8)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "matriz", scope: !8, file: !1, line: 16, type: !39)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, align: 32, elements: !40)
!40 = !{!41, !41}
!41 = !DISubrange(count: -1)
!42 = !DIExpression(DW_OP_deref)
!43 = !DILocation(line: 16, column: 7, scope: !8)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maior", scope: !8, file: !1, line: 16, type: !7)
!45 = !DILocation(line: 16, column: 29, scope: !8)
!46 = !DILocation(line: 18, column: 11, scope: !8)
!47 = !DILocation(line: 18, column: 9, scope: !8)
!48 = !DILocation(line: 19, column: 8, scope: !49)
!49 = distinct !DILexicalBlock(scope: !8, file: !1, line: 19, column: 3)
!50 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !51)
!51 = distinct !DILocation(line: 28, column: 3, scope: !8)
!52 = !DILocation(line: 19, column: 7, scope: !49)
!53 = !DILocation(line: 19, column: 11, scope: !54)
!54 = distinct !DILexicalBlock(scope: !49, file: !1, line: 19, column: 3)
!55 = !DILocation(line: 19, column: 13, scope: !54)
!56 = !DILocation(line: 19, column: 12, scope: !54)
!57 = !DILocation(line: 19, column: 3, scope: !49)
!58 = !DILocation(line: 20, column: 10, scope: !59)
!59 = distinct !DILexicalBlock(scope: !54, file: !1, line: 20, column: 5)
!60 = !DILocation(line: 20, column: 9, scope: !59)
!61 = !DILocation(line: 20, column: 13, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !1, line: 20, column: 5)
!63 = !DILocation(line: 20, column: 15, scope: !62)
!64 = !DILocation(line: 20, column: 14, scope: !62)
!65 = !DILocation(line: 20, column: 5, scope: !59)
!66 = !DILocation(line: 22, column: 23, scope: !67)
!67 = distinct !DILexicalBlock(scope: !62, file: !1, line: 21, column: 5)
!68 = !DILocation(line: 22, column: 18, scope: !67)
!69 = !DILocation(line: 22, column: 8, scope: !67)
!70 = !DILocation(line: 22, column: 15, scope: !67)
!71 = !DILocation(line: 22, column: 21, scope: !67)
!72 = !DILocation(line: 24, column: 21, scope: !73)
!73 = distinct !DILexicalBlock(scope: !67, file: !1, line: 24, column: 11)
!74 = !DILocation(line: 24, column: 11, scope: !73)
!75 = !DILocation(line: 24, column: 18, scope: !73)
!76 = !DILocation(line: 24, column: 25, scope: !73)
!77 = !DILocation(line: 24, column: 23, scope: !73)
!78 = !DILocation(line: 24, column: 11, scope: !67)
!79 = !DILocation(line: 25, column: 29, scope: !73)
!80 = !DILocation(line: 25, column: 19, scope: !73)
!81 = !DILocation(line: 25, column: 26, scope: !73)
!82 = !DILocation(line: 25, column: 17, scope: !73)
!83 = !DILocation(line: 25, column: 11, scope: !73)
!84 = !DILocation(line: 26, column: 5, scope: !67)
!85 = !DILocation(line: 20, column: 22, scope: !62)
!86 = !DILocation(line: 20, column: 5, scope: !62)
!87 = !DILocation(line: 26, column: 5, scope: !59)
!88 = !DILocation(line: 19, column: 20, scope: !54)
!89 = !DILocation(line: 19, column: 3, scope: !54)
!90 = !DILocation(line: 28, column: 21, scope: !8)
!91 = !DILocation(line: 28, column: 35, scope: !8)
!92 = !DILocation(line: 28, column: 33, scope: !8)
!93 = !DILocation(line: 28, column: 3, scope: !8)
!94 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !51)
!95 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !51)
!96 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !51)
!97 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !51)
!98 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !51)
!99 = !DILocation(line: 30, column: 3, scope: !8)
!100 = !DILocation(line: 31, column: 1, scope: !8)
