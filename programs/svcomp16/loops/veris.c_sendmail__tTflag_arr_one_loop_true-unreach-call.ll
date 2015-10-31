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
  call void (...) @__VERIFIER_error() #4, !dbg !23
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
  call void @llvm.dbg.declare(metadata i32* %i, metadata !38, metadata !16), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %j, metadata !41, metadata !16), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %idx_in, metadata !43, metadata !16), !dbg !44
  %3 = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i64 10, !dbg !45
  store i8 0, i8* %3, align 1, !dbg !46
  store i32 0, i32* %idx_in, align 4, !dbg !47
  %4 = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i32 0, !dbg !48
  store i8* %4, i8** %s, align 8, !dbg !49
  store i32 0, i32* %i, align 4, !dbg !50
  %5 = load i32, i32* %idx_in, align 4, !dbg !51
  %6 = sext i32 %5 to i64, !dbg !52
  %7 = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i64 %6, !dbg !52
  %8 = load i8, i8* %7, align 1, !dbg !52
  store i8 %8, i8* %c, align 1, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !54
  br label %9, !dbg !56

; <label>:9                                       ; preds = %19, %0
  %10 = load i8, i8* %c, align 1, !dbg !57
  %11 = zext i8 %10 to i32, !dbg !57
  %12 = icmp sle i32 48, %11, !dbg !58
  br i1 %12, label %13, label %17, !dbg !59

; <label>:13                                      ; preds = %9
  %14 = load i8, i8* %c, align 1, !dbg !60
  %15 = zext i8 %14 to i32, !dbg !60
  %16 = icmp sle i32 %15, 57, !dbg !61
  br label %17

; <label>:17                                      ; preds = %13, %9
  %18 = phi i1 [ false, %9 ], [ %16, %13 ]
  br i1 %18, label %19, label %33, !dbg !56

; <label>:19                                      ; preds = %17
  %20 = load i8, i8* %c, align 1, !dbg !62
  %21 = zext i8 %20 to i32, !dbg !62
  %22 = sub nsw i32 %21, 48, !dbg !64
  store i32 %22, i32* %j, align 4, !dbg !65
  %23 = load i32, i32* %i, align 4, !dbg !66
  %24 = mul i32 %23, 10, !dbg !67
  %25 = load i32, i32* %j, align 4, !dbg !68
  %26 = add i32 %24, %25, !dbg !69
  store i32 %26, i32* %i, align 4, !dbg !70
  %27 = load i32, i32* %idx_in, align 4, !dbg !71
  %28 = add nsw i32 %27, 1, !dbg !71
  store i32 %28, i32* %idx_in, align 4, !dbg !71
  %29 = load i32, i32* %idx_in, align 4, !dbg !72
  %30 = sext i32 %29 to i64, !dbg !73
  %31 = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i64 %30, !dbg !73
  %32 = load i8, i8* %31, align 1, !dbg !73
  store i8 %32, i8* %c, align 1, !dbg !74
  br label %9, !dbg !56

; <label>:33                                      ; preds = %17
  %34 = load i32, i32* %i, align 4, !dbg !75
  %35 = icmp uge i32 %34, 0, !dbg !76
  %36 = zext i1 %35 to i32, !dbg !76
  %37 = bitcast i32* %1 to i8*, !dbg !77
  call void @llvm.lifetime.start(i64 4, i8* %37), !dbg !77
  store i32 %36, i32* %1, align 4, !dbg !77
  %38 = load i32, i32* %1, align 4, !dbg !78
  %39 = icmp ne i32 %38, 0, !dbg !79
  br i1 %39, label %__VERIFIER_assert.exit, label %40, !dbg !80

; <label>:40                                      ; preds = %33
  call void (...) @__VERIFIER_error() #5, !dbg !81
  unreachable, !dbg !81

__VERIFIER_assert.exit:                           ; preds = %33
  %41 = bitcast i32* %1 to i8*, !dbg !82
  call void @llvm.lifetime.end(i64 4, i8* %41), !dbg !82
  ret i32 0, !dbg !83
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }
attributes #5 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "../sv-comp-2016/c/loops/veris.c_sendmail__tTflag_arr_one_loop_true-unreach-call.i", directory: "/Users/franck/development/perentiemq")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 9, type: !9, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in", scope: !8, file: !1, line: 11, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 88, align: 8, elements: !29)
!28 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!29 = !{!30}
!30 = !DISubrange(count: 11)
!31 = !DILocation(line: 11, column: 8, scope: !8)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !8, file: !1, line: 12, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!34 = !DILocation(line: 12, column: 9, scope: !8)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !8, file: !1, line: 13, type: !36)
!36 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!37 = !DILocation(line: 13, column: 17, scope: !8)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 14, type: !39)
!39 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!40 = !DILocation(line: 14, column: 16, scope: !8)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 14, type: !39)
!42 = !DILocation(line: 14, column: 19, scope: !8)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx_in", scope: !8, file: !1, line: 15, type: !7)
!44 = !DILocation(line: 15, column: 7, scope: !8)
!45 = !DILocation(line: 16, column: 3, scope: !8)
!46 = !DILocation(line: 16, column: 10, scope: !8)
!47 = !DILocation(line: 17, column: 10, scope: !8)
!48 = !DILocation(line: 18, column: 7, scope: !8)
!49 = !DILocation(line: 18, column: 5, scope: !8)
!50 = !DILocation(line: 19, column: 5, scope: !8)
!51 = !DILocation(line: 20, column: 10, scope: !8)
!52 = !DILocation(line: 20, column: 7, scope: !8)
!53 = !DILocation(line: 20, column: 5, scope: !8)
!54 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !55)
!55 = distinct !DILocation(line: 29, column: 3, scope: !8)
!56 = !DILocation(line: 21, column: 3, scope: !8)
!57 = !DILocation(line: 21, column: 18, scope: !8)
!58 = !DILocation(line: 21, column: 15, scope: !8)
!59 = !DILocation(line: 21, column: 21, scope: !8)
!60 = !DILocation(line: 21, column: 25, scope: !8)
!61 = !DILocation(line: 21, column: 27, scope: !8)
!62 = !DILocation(line: 23, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !8, file: !1, line: 22, column: 3)
!64 = !DILocation(line: 23, column: 11, scope: !63)
!65 = !DILocation(line: 23, column: 7, scope: !63)
!66 = !DILocation(line: 24, column: 9, scope: !63)
!67 = !DILocation(line: 24, column: 11, scope: !63)
!68 = !DILocation(line: 24, column: 19, scope: !63)
!69 = !DILocation(line: 24, column: 17, scope: !63)
!70 = !DILocation(line: 24, column: 7, scope: !63)
!71 = !DILocation(line: 25, column: 11, scope: !63)
!72 = !DILocation(line: 26, column: 12, scope: !63)
!73 = !DILocation(line: 26, column: 9, scope: !63)
!74 = !DILocation(line: 26, column: 7, scope: !63)
!75 = !DILocation(line: 29, column: 22, scope: !8)
!76 = !DILocation(line: 29, column: 24, scope: !8)
!77 = !DILocation(line: 29, column: 3, scope: !8)
!78 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !55)
!79 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !55)
!80 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !55)
!81 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !55)
!82 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !55)
!83 = !DILocation(line: 30, column: 3, scope: !8)
