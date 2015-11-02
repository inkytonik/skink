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
  call void @__VERIFIER_error(), !dbg !23
  br label %6, !dbg !25

; <label>:6                                       ; preds = %5, %0
  ret void, !dbg !26
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @__VERIFIER_error() #2

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %idBitLength = alloca i32, align 4
  %material_length = alloca i32, align 4
  %nlen = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %5
  call void @llvm.dbg.declare(metadata i32* %idBitLength, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %material_length, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %nlen, metadata !31, metadata !16), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %j, metadata !33, metadata !16), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %k, metadata !35, metadata !16), !dbg !36
  %6 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !37
  store i32 %6, i32* %nlen, align 4, !dbg !38
  %7 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !39
  store i32 %7, i32* %idBitLength, align 4, !dbg !40
  %8 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !41
  store i32 %8, i32* %material_length, align 4, !dbg !42
  %9 = load i32, i32* %nlen, align 4, !dbg !43
  %10 = load i32, i32* %idBitLength, align 4, !dbg !44
  %11 = sdiv i32 %10, 32, !dbg !45
  %12 = icmp eq i32 %9, %11, !dbg !46
  %13 = zext i1 %12 to i32, !dbg !46
  call void @__VERIFIER_assume(i32 %13), !dbg !47
  store i32 0, i32* %j, align 4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !16), !dbg !50
  call void @llvm.dbg.declare(metadata i32* %3, metadata !15, metadata !16), !dbg !54
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !16), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !58
  br label %14, !dbg !60

; <label>:14                                      ; preds = %62, %0
  %15 = load i32, i32* %j, align 4, !dbg !61
  %16 = load i32, i32* %idBitLength, align 4, !dbg !62
  %17 = sdiv i32 %16, 8, !dbg !63
  %18 = icmp slt i32 %15, %17, !dbg !64
  br i1 %18, label %19, label %23, !dbg !65

; <label>:19                                      ; preds = %14
  %20 = load i32, i32* %j, align 4, !dbg !66
  %21 = load i32, i32* %material_length, align 4, !dbg !67
  %22 = icmp slt i32 %20, %21, !dbg !68
  br label %23

; <label>:23                                      ; preds = %19, %14
  %24 = phi i1 [ false, %14 ], [ %22, %19 ]
  br i1 %24, label %25, label %65, !dbg !69

; <label>:25                                      ; preds = %23
  %26 = load i32, i32* %j, align 4, !dbg !70
  %27 = icmp sle i32 0, %26, !dbg !71
  %28 = zext i1 %27 to i32, !dbg !71
  %29 = bitcast i32* %4 to i8*, !dbg !72
  call void @llvm.lifetime.start(i64 4, i8* %29), !dbg !72
  store i32 %28, i32* %4, align 4, !dbg !72
  %30 = load i32, i32* %4, align 4, !dbg !73
  %31 = icmp ne i32 %30, 0, !dbg !74
  br i1 %31, label %__VERIFIER_assert.exit, label %32, !dbg !75

; <label>:32                                      ; preds = %25
  call void @__VERIFIER_error() #3, !dbg !76
  br label %__VERIFIER_assert.exit, !dbg !77

__VERIFIER_assert.exit:                           ; preds = %25, %32
  %33 = bitcast i32* %4 to i8*, !dbg !78
  call void @llvm.lifetime.end(i64 4, i8* %33), !dbg !78
  %34 = load i32, i32* %j, align 4, !dbg !79
  %35 = load i32, i32* %material_length, align 4, !dbg !80
  %36 = icmp slt i32 %34, %35, !dbg !81
  %37 = zext i1 %36 to i32, !dbg !81
  %38 = bitcast i32* %3 to i8*, !dbg !82
  call void @llvm.lifetime.start(i64 4, i8* %38), !dbg !82
  store i32 %37, i32* %3, align 4, !dbg !82
  %39 = load i32, i32* %3, align 4, !dbg !83
  %40 = icmp ne i32 %39, 0, !dbg !84
  br i1 %40, label %__VERIFIER_assert.exit1, label %41, !dbg !85

; <label>:41                                      ; preds = %__VERIFIER_assert.exit
  call void @__VERIFIER_error() #3, !dbg !86
  br label %__VERIFIER_assert.exit1, !dbg !87

__VERIFIER_assert.exit1:                          ; preds = %__VERIFIER_assert.exit, %41
  %42 = bitcast i32* %3 to i8*, !dbg !88
  call void @llvm.lifetime.end(i64 4, i8* %42), !dbg !88
  %43 = load i32, i32* %j, align 4, !dbg !89
  %44 = sdiv i32 %43, 4, !dbg !90
  %45 = icmp sle i32 0, %44, !dbg !91
  %46 = zext i1 %45 to i32, !dbg !91
  %47 = bitcast i32* %2 to i8*, !dbg !92
  call void @llvm.lifetime.start(i64 4, i8* %47), !dbg !92
  store i32 %46, i32* %2, align 4, !dbg !92
  %48 = load i32, i32* %2, align 4, !dbg !93
  %49 = icmp ne i32 %48, 0, !dbg !94
  br i1 %49, label %__VERIFIER_assert.exit2, label %50, !dbg !95

; <label>:50                                      ; preds = %__VERIFIER_assert.exit1
  call void @__VERIFIER_error() #3, !dbg !96
  br label %__VERIFIER_assert.exit2, !dbg !97

__VERIFIER_assert.exit2:                          ; preds = %__VERIFIER_assert.exit1, %50
  %51 = bitcast i32* %2 to i8*, !dbg !98
  call void @llvm.lifetime.end(i64 4, i8* %51), !dbg !98
  %52 = load i32, i32* %j, align 4, !dbg !99
  %53 = sdiv i32 %52, 4, !dbg !100
  %54 = load i32, i32* %nlen, align 4, !dbg !101
  %55 = icmp slt i32 %53, %54, !dbg !102
  %56 = zext i1 %55 to i32, !dbg !102
  %57 = bitcast i32* %1 to i8*, !dbg !103
  call void @llvm.lifetime.start(i64 4, i8* %57), !dbg !103
  store i32 %56, i32* %1, align 4, !dbg !103
  %58 = load i32, i32* %1, align 4, !dbg !104
  %59 = icmp ne i32 %58, 0, !dbg !105
  br i1 %59, label %__VERIFIER_assert.exit3, label %60, !dbg !106

; <label>:60                                      ; preds = %__VERIFIER_assert.exit2
  call void @__VERIFIER_error() #3, !dbg !107
  br label %__VERIFIER_assert.exit3, !dbg !108

__VERIFIER_assert.exit3:                          ; preds = %__VERIFIER_assert.exit2, %60
  %61 = bitcast i32* %1 to i8*, !dbg !109
  call void @llvm.lifetime.end(i64 4, i8* %61), !dbg !109
  br label %62, !dbg !110

; <label>:62                                      ; preds = %__VERIFIER_assert.exit3
  %63 = load i32, i32* %j, align 4, !dbg !111
  %64 = add nsw i32 %63, 1, !dbg !111
  store i32 %64, i32* %j, align 4, !dbg !111
  br label %14, !dbg !112

; <label>:65                                      ; preds = %23
  ret i32 0, !dbg !113
}

declare i32 @__VERIFIER_nondet_int(...) #2

declare void @__VERIFIER_assume(i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "programs/svcomp16/loop-invgen/id_trans_false-unreach-call.i", directory: ".")
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
!25 = !DILocation(line: 6, column: 3, scope: !24)
!26 = !DILocation(line: 7, column: 3, scope: !4)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idBitLength", scope: !8, file: !1, line: 11, type: !7)
!28 = !DILocation(line: 11, column: 7, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "material_length", scope: !8, file: !1, line: 11, type: !7)
!30 = !DILocation(line: 11, column: 20, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nlen", scope: !8, file: !1, line: 11, type: !7)
!32 = !DILocation(line: 11, column: 37, scope: !8)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 12, type: !7)
!34 = !DILocation(line: 12, column: 7, scope: !8)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !8, file: !1, line: 12, type: !7)
!36 = !DILocation(line: 12, column: 10, scope: !8)
!37 = !DILocation(line: 13, column: 10, scope: !8)
!38 = !DILocation(line: 13, column: 8, scope: !8)
!39 = !DILocation(line: 14, column: 17, scope: !8)
!40 = !DILocation(line: 14, column: 15, scope: !8)
!41 = !DILocation(line: 15, column: 21, scope: !8)
!42 = !DILocation(line: 15, column: 19, scope: !8)
!43 = !DILocation(line: 16, column: 24, scope: !8)
!44 = !DILocation(line: 16, column: 32, scope: !8)
!45 = !DILocation(line: 16, column: 44, scope: !8)
!46 = !DILocation(line: 16, column: 29, scope: !8)
!47 = !DILocation(line: 16, column: 5, scope: !8)
!48 = !DILocation(line: 17, column: 10, scope: !49)
!49 = distinct !DILexicalBlock(scope: !8, file: !1, line: 17, column: 3)
!50 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !51)
!51 = distinct !DILocation(line: 18, column: 5, scope: !52)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 17, column: 68)
!53 = distinct !DILexicalBlock(scope: !49, file: !1, line: 17, column: 3)
!54 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !55)
!55 = distinct !DILocation(line: 19, column: 5, scope: !52)
!56 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !57)
!57 = distinct !DILocation(line: 20, column: 5, scope: !52)
!58 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !59)
!59 = distinct !DILocation(line: 21, column: 5, scope: !52)
!60 = !DILocation(line: 17, column: 8, scope: !49)
!61 = !DILocation(line: 17, column: 16, scope: !53)
!62 = !DILocation(line: 17, column: 20, scope: !53)
!63 = !DILocation(line: 17, column: 32, scope: !53)
!64 = !DILocation(line: 17, column: 18, scope: !53)
!65 = !DILocation(line: 17, column: 37, scope: !53)
!66 = !DILocation(line: 17, column: 41, scope: !53)
!67 = !DILocation(line: 17, column: 45, scope: !53)
!68 = !DILocation(line: 17, column: 43, scope: !53)
!69 = !DILocation(line: 17, column: 3, scope: !49)
!70 = !DILocation(line: 18, column: 29, scope: !52)
!71 = !DILocation(line: 18, column: 26, scope: !52)
!72 = !DILocation(line: 18, column: 5, scope: !52)
!73 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !51)
!74 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !51)
!75 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !51)
!76 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !51)
!77 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !51)
!78 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !51)
!79 = !DILocation(line: 19, column: 24, scope: !52)
!80 = !DILocation(line: 19, column: 28, scope: !52)
!81 = !DILocation(line: 19, column: 26, scope: !52)
!82 = !DILocation(line: 19, column: 5, scope: !52)
!83 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !55)
!84 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !55)
!85 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !55)
!86 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !55)
!87 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !55)
!88 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !55)
!89 = !DILocation(line: 20, column: 29, scope: !52)
!90 = !DILocation(line: 20, column: 30, scope: !52)
!91 = !DILocation(line: 20, column: 26, scope: !52)
!92 = !DILocation(line: 20, column: 5, scope: !52)
!93 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !57)
!94 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !57)
!95 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !57)
!96 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !57)
!97 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !57)
!98 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !57)
!99 = !DILocation(line: 21, column: 24, scope: !52)
!100 = !DILocation(line: 21, column: 25, scope: !52)
!101 = !DILocation(line: 21, column: 30, scope: !52)
!102 = !DILocation(line: 21, column: 28, scope: !52)
!103 = !DILocation(line: 21, column: 5, scope: !52)
!104 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !59)
!105 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !59)
!106 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !59)
!107 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !59)
!108 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !59)
!109 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !59)
!110 = !DILocation(line: 22, column: 3, scope: !52)
!111 = !DILocation(line: 17, column: 64, scope: !53)
!112 = !DILocation(line: 17, column: 3, scope: !53)
!113 = !DILocation(line: 23, column: 3, scope: !8)
