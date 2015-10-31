; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@b = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
  %1 = alloca i32, align 4
  store i32 %cond, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !17, metadata !18), !dbg !19
  %2 = load i32, i32* %1, align 4, !dbg !20
  %3 = icmp ne i32 %2, 0, !dbg !22
  br i1 %3, label %6, label %4, !dbg !23

; <label>:4                                       ; preds = %0
  br label %5, !dbg !24

; <label>:5                                       ; preds = %4
  call void (...) @__VERIFIER_error() #5, !dbg !25
  unreachable, !dbg !25

; <label>:6                                       ; preds = %0
  ret void, !dbg !27
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %k = alloca i8, align 1
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca [1025 x i32], align 16
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i8* %k, metadata !28, metadata !18), !dbg !30
  %3 = call zeroext i1 (...) @__VERIFIER_nondet_bool(), !dbg !31
  %4 = zext i1 %3 to i8, !dbg !30
  store i8 %4, i8* %k, align 1, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %i, metadata !32, metadata !18), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %n, metadata !34, metadata !18), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %j, metadata !36, metadata !18), !dbg !37
  call void @llvm.dbg.declare(metadata [1025 x i32]* %a, metadata !38, metadata !18), !dbg !42
  %5 = load i8, i8* %k, align 1, !dbg !43
  %6 = trunc i8 %5 to i1, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %1, metadata !17, metadata !18), !dbg !45
  br i1 %6, label %7, label %8, !dbg !47

; <label>:7                                       ; preds = %0
  store i32 0, i32* %n, align 4, !dbg !48
  br label %9, !dbg !50

; <label>:8                                       ; preds = %0
  store i32 1023, i32* %n, align 4, !dbg !51
  br label %9

; <label>:9                                       ; preds = %8, %7
  store i32 0, i32* %i, align 4, !dbg !53
  br label %10, !dbg !54

; <label>:10                                      ; preds = %14, %9
  %11 = load i32, i32* %i, align 4, !dbg !55
  %12 = load i32, i32* %n, align 4, !dbg !56
  %13 = icmp sle i32 %11, %12, !dbg !57
  br i1 %13, label %14, label %19, !dbg !54

; <label>:14                                      ; preds = %10
  %15 = load i32, i32* %i, align 4, !dbg !58
  %16 = add nsw i32 %15, 1, !dbg !58
  store i32 %16, i32* %i, align 4, !dbg !58
  %17 = load i32, i32* %j, align 4, !dbg !60
  %18 = add nsw i32 %17, 2, !dbg !61
  store i32 %18, i32* %j, align 4, !dbg !62
  br label %10, !dbg !54

; <label>:19                                      ; preds = %10
  %20 = load i32, i32* %i, align 4, !dbg !63
  %21 = sext i32 %20 to i64, !dbg !64
  %22 = getelementptr inbounds [1025 x i32], [1025 x i32]* %a, i32 0, i64 %21, !dbg !64
  store i32 0, i32* %22, align 4, !dbg !65
  %23 = load i32, i32* %j, align 4, !dbg !66
  %24 = sext i32 %23 to i64, !dbg !67
  %25 = getelementptr inbounds [1025 x i32], [1025 x i32]* %a, i32 0, i64 %24, !dbg !67
  store i32 0, i32* %25, align 4, !dbg !68
  %26 = load i32, i32* %j, align 4, !dbg !69
  %27 = icmp slt i32 %26, 1025, !dbg !70
  %28 = zext i1 %27 to i32, !dbg !70
  %29 = bitcast i32* %1 to i8*, !dbg !71
  call void @llvm.lifetime.start(i64 4, i8* %29), !dbg !71
  store i32 %28, i32* %1, align 4, !dbg !71
  %30 = load i32, i32* %1, align 4, !dbg !72
  %31 = icmp ne i32 %30, 0, !dbg !73
  br i1 %31, label %__VERIFIER_assert.exit, label %32, !dbg !74

; <label>:32                                      ; preds = %19
  call void (...) @__VERIFIER_error() #6, !dbg !75
  unreachable, !dbg !75

__VERIFIER_assert.exit:                           ; preds = %19
  %33 = bitcast i32* %1 to i8*, !dbg !76
  call void @llvm.lifetime.end(i64 4, i8* %33), !dbg !76
  %34 = load i32, i32* @b, align 4, !dbg !77
  %35 = sext i32 %34 to i64, !dbg !78
  %36 = getelementptr inbounds [1025 x i32], [1025 x i32]* %a, i32 0, i64 %35, !dbg !78
  store i32 0, i32* %36, align 4, !dbg !79
  %37 = load i32, i32* @b, align 4, !dbg !80
  %38 = icmp sge i32 %37, 0, !dbg !82
  br i1 %38, label %39, label %46, !dbg !83

; <label>:39                                      ; preds = %__VERIFIER_assert.exit
  %40 = load i32, i32* @b, align 4, !dbg !84
  %41 = icmp slt i32 %40, 1023, !dbg !85
  br i1 %41, label %42, label %46, !dbg !86

; <label>:42                                      ; preds = %39
  %43 = load i32, i32* @b, align 4, !dbg !87
  %44 = sext i32 %43 to i64, !dbg !88
  %45 = getelementptr inbounds [1025 x i32], [1025 x i32]* %a, i32 0, i64 %44, !dbg !88
  store i32 1, i32* %45, align 4, !dbg !89
  br label %51, !dbg !88

; <label>:46                                      ; preds = %39, %__VERIFIER_assert.exit
  %47 = load i32, i32* @b, align 4, !dbg !90
  %48 = srem i32 %47, 1023, !dbg !91
  %49 = sext i32 %48 to i64, !dbg !92
  %50 = getelementptr inbounds [1025 x i32], [1025 x i32]* %a, i32 0, i64 %49, !dbg !92
  store i32 1, i32* %50, align 4, !dbg !93
  br label %51

; <label>:51                                      ; preds = %46, %42
  ret i32 1, !dbg !94
}

declare zeroext i1 @__VERIFIER_nondet_bool(...) #3

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
!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3, globals: !11)
!1 = !DIFile(filename: "../sv-comp-2016/c/loops/nec20_false-unreach-call.i", directory: "/Users/franck/development/perentiemq")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !9, isLocal: false, isDefinition: true, scopeLine: 11, isOptimized: false, function: i32 ()* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!7}
!11 = !{!12}
!12 = !DIGlobalVariable(name: "b", scope: !0, file: !1, line: 9, type: !7, isLocal: false, isDefinition: true, variable: i32* @b)
!13 = !{i32 2, !"Dwarf Version", i32 2}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"PIC Level", i32 2}
!16 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!17 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 3, type: !7)
!18 = !DIExpression()
!19 = !DILocation(line: 3, column: 28, scope: !4)
!20 = !DILocation(line: 4, column: 9, scope: !21)
!21 = distinct !DILexicalBlock(scope: !4, file: !1, line: 4, column: 7)
!22 = !DILocation(line: 4, column: 8, scope: !21)
!23 = !DILocation(line: 4, column: 7, scope: !4)
!24 = !DILocation(line: 4, column: 16, scope: !21)
!25 = !DILocation(line: 5, column: 12, scope: !26)
!26 = distinct !DILexicalBlock(scope: !21, file: !1, line: 4, column: 16)
!27 = !DILocation(line: 7, column: 3, scope: !4)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !8, file: !1, line: 12, type: !29)
!29 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!30 = !DILocation(line: 12, column: 10, scope: !8)
!31 = !DILocation(line: 12, column: 12, scope: !8)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 13, type: !7)
!33 = !DILocation(line: 13, column: 8, scope: !8)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !8, file: !1, line: 13, type: !7)
!35 = !DILocation(line: 13, column: 10, scope: !8)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 13, type: !7)
!37 = !DILocation(line: 13, column: 12, scope: !8)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !8, file: !1, line: 14, type: !39)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32800, align: 32, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 1025)
!42 = !DILocation(line: 14, column: 8, scope: !8)
!43 = !DILocation(line: 16, column: 8, scope: !44)
!44 = distinct !DILexicalBlock(scope: !8, file: !1, line: 16, column: 8)
!45 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !46)
!46 = distinct !DILocation(line: 31, column: 4, scope: !8)
!47 = !DILocation(line: 16, column: 8, scope: !8)
!48 = !DILocation(line: 17, column: 8, scope: !49)
!49 = distinct !DILexicalBlock(scope: !44, file: !1, line: 16, column: 10)
!50 = !DILocation(line: 18, column: 4, scope: !49)
!51 = !DILocation(line: 19, column: 8, scope: !52)
!52 = distinct !DILexicalBlock(scope: !44, file: !1, line: 18, column: 11)
!53 = !DILocation(line: 22, column: 5, scope: !8)
!54 = !DILocation(line: 24, column: 4, scope: !8)
!55 = !DILocation(line: 24, column: 12, scope: !8)
!56 = !DILocation(line: 24, column: 17, scope: !8)
!57 = !DILocation(line: 24, column: 14, scope: !8)
!58 = !DILocation(line: 25, column: 8, scope: !59)
!59 = distinct !DILexicalBlock(scope: !8, file: !1, line: 24, column: 19)
!60 = !DILocation(line: 26, column: 10, scope: !59)
!61 = !DILocation(line: 26, column: 12, scope: !59)
!62 = !DILocation(line: 26, column: 8, scope: !59)
!63 = !DILocation(line: 29, column: 6, scope: !8)
!64 = !DILocation(line: 29, column: 4, scope: !8)
!65 = !DILocation(line: 29, column: 8, scope: !8)
!66 = !DILocation(line: 30, column: 6, scope: !8)
!67 = !DILocation(line: 30, column: 4, scope: !8)
!68 = !DILocation(line: 30, column: 8, scope: !8)
!69 = !DILocation(line: 31, column: 22, scope: !8)
!70 = !DILocation(line: 31, column: 23, scope: !8)
!71 = !DILocation(line: 31, column: 4, scope: !8)
!72 = !DILocation(line: 4, column: 9, scope: !21, inlinedAt: !46)
!73 = !DILocation(line: 4, column: 8, scope: !21, inlinedAt: !46)
!74 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !46)
!75 = !DILocation(line: 5, column: 12, scope: !26, inlinedAt: !46)
!76 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !46)
!77 = !DILocation(line: 32, column: 6, scope: !8)
!78 = !DILocation(line: 32, column: 4, scope: !8)
!79 = !DILocation(line: 32, column: 8, scope: !8)
!80 = !DILocation(line: 33, column: 8, scope: !81)
!81 = distinct !DILexicalBlock(scope: !8, file: !1, line: 33, column: 8)
!82 = !DILocation(line: 33, column: 10, scope: !81)
!83 = !DILocation(line: 33, column: 15, scope: !81)
!84 = !DILocation(line: 33, column: 18, scope: !81)
!85 = !DILocation(line: 33, column: 20, scope: !81)
!86 = !DILocation(line: 33, column: 8, scope: !8)
!87 = !DILocation(line: 34, column: 9, scope: !81)
!88 = !DILocation(line: 34, column: 7, scope: !81)
!89 = !DILocation(line: 34, column: 11, scope: !81)
!90 = !DILocation(line: 36, column: 9, scope: !81)
!91 = !DILocation(line: 36, column: 10, scope: !81)
!92 = !DILocation(line: 36, column: 7, scope: !81)
!93 = !DILocation(line: 36, column: 17, scope: !81)
!94 = !DILocation(line: 38, column: 4, scope: !8)
