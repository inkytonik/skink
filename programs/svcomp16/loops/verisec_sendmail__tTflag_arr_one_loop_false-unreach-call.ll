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
  %in = alloca [11 x i8], align 1
  %s = alloca i8*, align 8
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %idx_in = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata [11 x i8]* %in, metadata !26, metadata !16), !dbg !31
  call void @llvm.dbg.declare(metadata i8** %s, metadata !32, metadata !16), !dbg !34
  call void @llvm.dbg.declare(metadata i8* %c, metadata !35, metadata !16), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %i, metadata !38, metadata !16), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %j, metadata !40, metadata !16), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %idx_in, metadata !42, metadata !16), !dbg !43
  store i32 0, i32* %i, align 4, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !46
  br label %3, !dbg !48

; <label>:3                                       ; preds = %11, %0
  %4 = load i32, i32* %i, align 4, !dbg !49
  %5 = icmp slt i32 %4, 11, !dbg !51
  br i1 %5, label %6, label %14, !dbg !52

; <label>:6                                       ; preds = %3
  %7 = call signext i8 (...) @__VERIFIER_nondet_char(), !dbg !53
  %8 = load i32, i32* %i, align 4, !dbg !54
  %9 = sext i32 %8 to i64, !dbg !55
  %10 = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i64 %9, !dbg !55
  store i8 %7, i8* %10, align 1, !dbg !56
  br label %11, !dbg !55

; <label>:11                                      ; preds = %6
  %12 = load i32, i32* %i, align 4, !dbg !57
  %13 = add nsw i32 %12, 1, !dbg !57
  store i32 %13, i32* %i, align 4, !dbg !57
  br label %3, !dbg !58

; <label>:14                                      ; preds = %3
  %15 = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i64 10, !dbg !59
  store i8 0, i8* %15, align 1, !dbg !60
  store i32 0, i32* %idx_in, align 4, !dbg !61
  %16 = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i32 0, !dbg !62
  store i8* %16, i8** %s, align 8, !dbg !63
  store i32 0, i32* %i, align 4, !dbg !64
  %17 = load i32, i32* %idx_in, align 4, !dbg !65
  %18 = sext i32 %17 to i64, !dbg !66
  %19 = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i64 %18, !dbg !66
  %20 = load i8, i8* %19, align 1, !dbg !66
  store i8 %20, i8* %c, align 1, !dbg !67
  br label %21, !dbg !68

; <label>:21                                      ; preds = %31, %14
  %22 = load i8, i8* %c, align 1, !dbg !69
  %23 = zext i8 %22 to i32, !dbg !69
  %24 = icmp sle i32 48, %23, !dbg !70
  br i1 %24, label %25, label %29, !dbg !71

; <label>:25                                      ; preds = %21
  %26 = load i8, i8* %c, align 1, !dbg !72
  %27 = zext i8 %26 to i32, !dbg !72
  %28 = icmp sle i32 %27, 57, !dbg !73
  br label %29

; <label>:29                                      ; preds = %25, %21
  %30 = phi i1 [ false, %21 ], [ %28, %25 ]
  br i1 %30, label %31, label %45, !dbg !68

; <label>:31                                      ; preds = %29
  %32 = load i8, i8* %c, align 1, !dbg !74
  %33 = zext i8 %32 to i32, !dbg !74
  %34 = sub nsw i32 %33, 48, !dbg !76
  store i32 %34, i32* %j, align 4, !dbg !77
  %35 = load i32, i32* %i, align 4, !dbg !78
  %36 = mul i32 %35, 10, !dbg !79
  %37 = load i32, i32* %j, align 4, !dbg !80
  %38 = add i32 %36, %37, !dbg !81
  store i32 %38, i32* %i, align 4, !dbg !82
  %39 = load i32, i32* %idx_in, align 4, !dbg !83
  %40 = add nsw i32 %39, 1, !dbg !83
  store i32 %40, i32* %idx_in, align 4, !dbg !83
  %41 = load i32, i32* %idx_in, align 4, !dbg !84
  %42 = sext i32 %41 to i64, !dbg !85
  %43 = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i64 %42, !dbg !85
  %44 = load i8, i8* %43, align 1, !dbg !85
  store i8 %44, i8* %c, align 1, !dbg !86
  br label %21, !dbg !68

; <label>:45                                      ; preds = %29
  %46 = load i32, i32* %i, align 4, !dbg !87
  %47 = icmp sge i32 %46, 0, !dbg !88
  %48 = zext i1 %47 to i32, !dbg !88
  %49 = bitcast i32* %1 to i8*, !dbg !89
  call void @llvm.lifetime.start(i64 4, i8* %49), !dbg !89
  store i32 %48, i32* %1, align 4, !dbg !89
  %50 = load i32, i32* %1, align 4, !dbg !90
  %51 = icmp ne i32 %50, 0, !dbg !91
  br i1 %51, label %__VERIFIER_assert.exit, label %52, !dbg !92

; <label>:52                                      ; preds = %45
  call void (...) @__VERIFIER_error() #6, !dbg !93
  unreachable, !dbg !93

__VERIFIER_assert.exit:                           ; preds = %45
  %53 = bitcast i32* %1 to i8*, !dbg !94
  call void @llvm.lifetime.end(i64 4, i8* %53), !dbg !94
  ret i32 0, !dbg !95
}

declare signext i8 @__VERIFIER_nondet_char(...) #3

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
!1 = !DIFile(filename: "verisec_sendmail__tTflag_arr_one_loop_false-unreach-call.i", directory: "/Users/asloane/Projects/SV-COMP/sv-benchmarks/c/loops")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 5, type: !5, isLocal: false, isDefinition: true, scopeLine: 5, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 12, type: !9, isLocal: false, isDefinition: true, scopeLine: 13, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!7}
!11 = !{i32 2, !"Dwarf Version", i32 2}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"PIC Level", i32 2}
!14 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 5, type: !7)
!16 = !DIExpression()
!17 = !DILocation(line: 5, column: 28, scope: !4)
!18 = !DILocation(line: 6, column: 9, scope: !19)
!19 = distinct !DILexicalBlock(scope: !4, file: !1, line: 6, column: 7)
!20 = !DILocation(line: 6, column: 8, scope: !19)
!21 = !DILocation(line: 6, column: 7, scope: !4)
!22 = !DILocation(line: 6, column: 16, scope: !19)
!23 = !DILocation(line: 7, column: 12, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 6, column: 16)
!25 = !DILocation(line: 9, column: 3, scope: !4)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in", scope: !8, file: !1, line: 14, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 88, align: 8, elements: !29)
!28 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!29 = !{!30}
!30 = !DISubrange(count: 11)
!31 = !DILocation(line: 14, column: 8, scope: !8)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !8, file: !1, line: 15, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!34 = !DILocation(line: 15, column: 9, scope: !8)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !8, file: !1, line: 16, type: !36)
!36 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!37 = !DILocation(line: 16, column: 17, scope: !8)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 17, type: !7)
!39 = !DILocation(line: 17, column: 7, scope: !8)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 17, type: !7)
!41 = !DILocation(line: 17, column: 10, scope: !8)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx_in", scope: !8, file: !1, line: 18, type: !7)
!43 = !DILocation(line: 18, column: 7, scope: !8)
!44 = !DILocation(line: 19, column: 10, scope: !45)
!45 = distinct !DILexicalBlock(scope: !8, file: !1, line: 19, column: 3)
!46 = !DILocation(line: 5, column: 28, scope: !4, inlinedAt: !47)
!47 = distinct !DILocation(line: 34, column: 3, scope: !8)
!48 = !DILocation(line: 19, column: 8, scope: !45)
!49 = !DILocation(line: 19, column: 15, scope: !50)
!50 = distinct !DILexicalBlock(scope: !45, file: !1, line: 19, column: 3)
!51 = !DILocation(line: 19, column: 17, scope: !50)
!52 = !DILocation(line: 19, column: 3, scope: !45)
!53 = !DILocation(line: 20, column: 13, scope: !50)
!54 = !DILocation(line: 20, column: 8, scope: !50)
!55 = !DILocation(line: 20, column: 5, scope: !50)
!56 = !DILocation(line: 20, column: 11, scope: !50)
!57 = !DILocation(line: 19, column: 24, scope: !50)
!58 = !DILocation(line: 19, column: 3, scope: !50)
!59 = !DILocation(line: 21, column: 3, scope: !8)
!60 = !DILocation(line: 21, column: 10, scope: !8)
!61 = !DILocation(line: 22, column: 10, scope: !8)
!62 = !DILocation(line: 23, column: 7, scope: !8)
!63 = !DILocation(line: 23, column: 5, scope: !8)
!64 = !DILocation(line: 24, column: 5, scope: !8)
!65 = !DILocation(line: 25, column: 10, scope: !8)
!66 = !DILocation(line: 25, column: 7, scope: !8)
!67 = !DILocation(line: 25, column: 5, scope: !8)
!68 = !DILocation(line: 26, column: 3, scope: !8)
!69 = !DILocation(line: 26, column: 18, scope: !8)
!70 = !DILocation(line: 26, column: 15, scope: !8)
!71 = !DILocation(line: 26, column: 21, scope: !8)
!72 = !DILocation(line: 26, column: 25, scope: !8)
!73 = !DILocation(line: 26, column: 27, scope: !8)
!74 = !DILocation(line: 28, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !8, file: !1, line: 27, column: 3)
!76 = !DILocation(line: 28, column: 11, scope: !75)
!77 = !DILocation(line: 28, column: 7, scope: !75)
!78 = !DILocation(line: 29, column: 9, scope: !75)
!79 = !DILocation(line: 29, column: 11, scope: !75)
!80 = !DILocation(line: 29, column: 19, scope: !75)
!81 = !DILocation(line: 29, column: 17, scope: !75)
!82 = !DILocation(line: 29, column: 7, scope: !75)
!83 = !DILocation(line: 30, column: 11, scope: !75)
!84 = !DILocation(line: 31, column: 12, scope: !75)
!85 = !DILocation(line: 31, column: 9, scope: !75)
!86 = !DILocation(line: 31, column: 7, scope: !75)
!87 = !DILocation(line: 34, column: 22, scope: !8)
!88 = !DILocation(line: 34, column: 24, scope: !8)
!89 = !DILocation(line: 34, column: 3, scope: !8)
!90 = !DILocation(line: 6, column: 9, scope: !19, inlinedAt: !47)
!91 = !DILocation(line: 6, column: 8, scope: !19, inlinedAt: !47)
!92 = !DILocation(line: 6, column: 7, scope: !4, inlinedAt: !47)
!93 = !DILocation(line: 7, column: 12, scope: !24, inlinedAt: !47)
!94 = !DILocation(line: 9, column: 3, scope: !4, inlinedAt: !47)
!95 = !DILocation(line: 35, column: 3, scope: !8)
