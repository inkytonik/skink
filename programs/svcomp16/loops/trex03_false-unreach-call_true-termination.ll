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
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %x3 = alloca i32, align 4
  %d1 = alloca i32, align 4
  %d2 = alloca i32, align 4
  %d3 = alloca i32, align 4
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %x1, metadata !26, metadata !16), !dbg !28
  %3 = call i32 (...) @__VERIFIER_nondet_uint(), !dbg !29
  store i32 %3, i32* %x1, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %x2, metadata !30, metadata !16), !dbg !31
  %4 = call i32 (...) @__VERIFIER_nondet_uint(), !dbg !32
  store i32 %4, i32* %x2, align 4, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %x3, metadata !33, metadata !16), !dbg !34
  %5 = call i32 (...) @__VERIFIER_nondet_uint(), !dbg !35
  store i32 %5, i32* %x3, align 4, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %d1, metadata !36, metadata !16), !dbg !37
  store i32 1, i32* %d1, align 4, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %d2, metadata !38, metadata !16), !dbg !39
  store i32 1, i32* %d2, align 4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %d3, metadata !40, metadata !16), !dbg !41
  store i32 1, i32* %d3, align 4, !dbg !41
  call void @llvm.dbg.declare(metadata i8* %c1, metadata !42, metadata !16), !dbg !44
  %6 = call zeroext i1 (...) @__VERIFIER_nondet_bool(), !dbg !45
  %7 = zext i1 %6 to i8, !dbg !44
  store i8 %7, i8* %c1, align 1, !dbg !44
  call void @llvm.dbg.declare(metadata i8* %c2, metadata !46, metadata !16), !dbg !47
  %8 = call zeroext i1 (...) @__VERIFIER_nondet_bool(), !dbg !48
  %9 = zext i1 %8 to i8, !dbg !47
  store i8 %9, i8* %c2, align 1, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !49
  br label %10, !dbg !51

; <label>:10                                      ; preds = %40, %0
  %11 = load i32, i32* %x1, align 4, !dbg !52
  %12 = icmp ugt i32 %11, 0, !dbg !53
  br i1 %12, label %13, label %19, !dbg !54

; <label>:13                                      ; preds = %10
  %14 = load i32, i32* %x2, align 4, !dbg !55
  %15 = icmp ugt i32 %14, 0, !dbg !56
  br i1 %15, label %16, label %19, !dbg !57

; <label>:16                                      ; preds = %13
  %17 = load i32, i32* %x3, align 4, !dbg !58
  %18 = icmp ugt i32 %17, 0, !dbg !59
  br label %19

; <label>:19                                      ; preds = %16, %13, %10
  %20 = phi i1 [ false, %13 ], [ false, %10 ], [ %18, %16 ]
  br i1 %20, label %21, label %45, !dbg !51

; <label>:21                                      ; preds = %19
  %22 = load i8, i8* %c1, align 1, !dbg !60
  %23 = trunc i8 %22 to i1, !dbg !60
  br i1 %23, label %24, label %28, !dbg !63

; <label>:24                                      ; preds = %21
  %25 = load i32, i32* %x1, align 4, !dbg !64
  %26 = load i32, i32* %d1, align 4, !dbg !65
  %27 = sub i32 %25, %26, !dbg !66
  store i32 %27, i32* %x1, align 4, !dbg !67
  br label %40, !dbg !68

; <label>:28                                      ; preds = %21
  %29 = load i8, i8* %c2, align 1, !dbg !69
  %30 = trunc i8 %29 to i1, !dbg !69
  br i1 %30, label %31, label %35, !dbg !71

; <label>:31                                      ; preds = %28
  %32 = load i32, i32* %x2, align 4, !dbg !72
  %33 = load i32, i32* %d2, align 4, !dbg !73
  %34 = sub i32 %32, %33, !dbg !74
  store i32 %34, i32* %x2, align 4, !dbg !75
  br label %39, !dbg !76

; <label>:35                                      ; preds = %28
  %36 = load i32, i32* %x3, align 4, !dbg !77
  %37 = load i32, i32* %d3, align 4, !dbg !78
  %38 = sub i32 %36, %37, !dbg !79
  store i32 %38, i32* %x3, align 4, !dbg !80
  br label %39

; <label>:39                                      ; preds = %35, %31
  br label %40

; <label>:40                                      ; preds = %39, %24
  %41 = call zeroext i1 (...) @__VERIFIER_nondet_bool(), !dbg !81
  %42 = zext i1 %41 to i8, !dbg !82
  store i8 %42, i8* %c1, align 1, !dbg !82
  %43 = call zeroext i1 (...) @__VERIFIER_nondet_bool(), !dbg !83
  %44 = zext i1 %43 to i8, !dbg !84
  store i8 %44, i8* %c2, align 1, !dbg !84
  br label %10, !dbg !51

; <label>:45                                      ; preds = %19
  %46 = load i32, i32* %x1, align 4, !dbg !85
  %47 = icmp eq i32 %46, 0, !dbg !86
  br i1 %47, label %48, label %54, !dbg !87

; <label>:48                                      ; preds = %45
  %49 = load i32, i32* %x2, align 4, !dbg !88
  %50 = icmp eq i32 %49, 0, !dbg !89
  br i1 %50, label %51, label %54, !dbg !90

; <label>:51                                      ; preds = %48
  %52 = load i32, i32* %x3, align 4, !dbg !91
  %53 = icmp eq i32 %52, 0, !dbg !92
  br label %54

; <label>:54                                      ; preds = %51, %48, %45
  %55 = phi i1 [ false, %48 ], [ false, %45 ], [ %53, %51 ]
  %56 = zext i1 %55 to i32, !dbg !90
  %57 = bitcast i32* %1 to i8*, !dbg !93
  call void @llvm.lifetime.start(i64 4, i8* %57), !dbg !93
  store i32 %56, i32* %1, align 4, !dbg !93
  %58 = load i32, i32* %1, align 4, !dbg !94
  %59 = icmp ne i32 %58, 0, !dbg !95
  br i1 %59, label %__VERIFIER_assert.exit, label %60, !dbg !96

; <label>:60                                      ; preds = %54
  call void (...) @__VERIFIER_error() #6, !dbg !97
  unreachable, !dbg !97

__VERIFIER_assert.exit:                           ; preds = %54
  %61 = bitcast i32* %1 to i8*, !dbg !98
  call void @llvm.lifetime.end(i64 4, i8* %61), !dbg !98
  ret i32 0, !dbg !99
}

declare i32 @__VERIFIER_nondet_uint(...) #3

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
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "programs/svcomp16/loops/trex03_false-unreach-call_true-termination.i", directory: ".")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 2, type: !5, isLocal: false, isDefinition: true, scopeLine: 2, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !9, isLocal: false, isDefinition: true, scopeLine: 11, isOptimized: false, function: i32 ()* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!7}
!11 = !{i32 2, !"Dwarf Version", i32 2}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"PIC Level", i32 2}
!14 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 2, type: !7)
!16 = !DIExpression()
!17 = !DILocation(line: 2, column: 28, scope: !4)
!18 = !DILocation(line: 3, column: 9, scope: !19)
!19 = distinct !DILexicalBlock(scope: !4, file: !1, line: 3, column: 7)
!20 = !DILocation(line: 3, column: 8, scope: !19)
!21 = !DILocation(line: 3, column: 7, scope: !4)
!22 = !DILocation(line: 3, column: 16, scope: !19)
!23 = !DILocation(line: 4, column: 12, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 3, column: 16)
!25 = !DILocation(line: 6, column: 3, scope: !4)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x1", scope: !8, file: !1, line: 12, type: !27)
!27 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!28 = !DILocation(line: 12, column: 16, scope: !8)
!29 = !DILocation(line: 12, column: 19, scope: !8)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x2", scope: !8, file: !1, line: 12, type: !27)
!31 = !DILocation(line: 12, column: 45, scope: !8)
!32 = !DILocation(line: 12, column: 48, scope: !8)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x3", scope: !8, file: !1, line: 12, type: !27)
!34 = !DILocation(line: 12, column: 74, scope: !8)
!35 = !DILocation(line: 12, column: 77, scope: !8)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d1", scope: !8, file: !1, line: 13, type: !27)
!37 = !DILocation(line: 13, column: 16, scope: !8)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d2", scope: !8, file: !1, line: 13, type: !27)
!39 = !DILocation(line: 13, column: 22, scope: !8)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d3", scope: !8, file: !1, line: 13, type: !27)
!41 = !DILocation(line: 13, column: 28, scope: !8)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c1", scope: !8, file: !1, line: 14, type: !43)
!43 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!44 = !DILocation(line: 14, column: 9, scope: !8)
!45 = !DILocation(line: 14, column: 12, scope: !8)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c2", scope: !8, file: !1, line: 14, type: !43)
!47 = !DILocation(line: 14, column: 38, scope: !8)
!48 = !DILocation(line: 14, column: 41, scope: !8)
!49 = !DILocation(line: 2, column: 28, scope: !4, inlinedAt: !50)
!50 = distinct !DILocation(line: 23, column: 3, scope: !8)
!51 = !DILocation(line: 15, column: 3, scope: !8)
!52 = !DILocation(line: 15, column: 9, scope: !8)
!53 = !DILocation(line: 15, column: 11, scope: !8)
!54 = !DILocation(line: 15, column: 14, scope: !8)
!55 = !DILocation(line: 15, column: 17, scope: !8)
!56 = !DILocation(line: 15, column: 19, scope: !8)
!57 = !DILocation(line: 15, column: 22, scope: !8)
!58 = !DILocation(line: 15, column: 25, scope: !8)
!59 = !DILocation(line: 15, column: 27, scope: !8)
!60 = !DILocation(line: 17, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !62, file: !1, line: 17, column: 9)
!62 = distinct !DILexicalBlock(scope: !8, file: !1, line: 16, column: 3)
!63 = !DILocation(line: 17, column: 9, scope: !62)
!64 = !DILocation(line: 17, column: 16, scope: !61)
!65 = !DILocation(line: 17, column: 19, scope: !61)
!66 = !DILocation(line: 17, column: 18, scope: !61)
!67 = !DILocation(line: 17, column: 15, scope: !61)
!68 = !DILocation(line: 17, column: 13, scope: !61)
!69 = !DILocation(line: 18, column: 14, scope: !70)
!70 = distinct !DILexicalBlock(scope: !61, file: !1, line: 18, column: 14)
!71 = !DILocation(line: 18, column: 14, scope: !61)
!72 = !DILocation(line: 18, column: 21, scope: !70)
!73 = !DILocation(line: 18, column: 24, scope: !70)
!74 = !DILocation(line: 18, column: 23, scope: !70)
!75 = !DILocation(line: 18, column: 20, scope: !70)
!76 = !DILocation(line: 18, column: 18, scope: !70)
!77 = !DILocation(line: 19, column: 13, scope: !70)
!78 = !DILocation(line: 19, column: 16, scope: !70)
!79 = !DILocation(line: 19, column: 15, scope: !70)
!80 = !DILocation(line: 19, column: 12, scope: !70)
!81 = !DILocation(line: 20, column: 8, scope: !62)
!82 = !DILocation(line: 20, column: 7, scope: !62)
!83 = !DILocation(line: 21, column: 8, scope: !62)
!84 = !DILocation(line: 21, column: 7, scope: !62)
!85 = !DILocation(line: 23, column: 21, scope: !8)
!86 = !DILocation(line: 23, column: 23, scope: !8)
!87 = !DILocation(line: 23, column: 27, scope: !8)
!88 = !DILocation(line: 23, column: 30, scope: !8)
!89 = !DILocation(line: 23, column: 32, scope: !8)
!90 = !DILocation(line: 23, column: 36, scope: !8)
!91 = !DILocation(line: 23, column: 39, scope: !8)
!92 = !DILocation(line: 23, column: 41, scope: !8)
!93 = !DILocation(line: 23, column: 3, scope: !8)
!94 = !DILocation(line: 3, column: 9, scope: !19, inlinedAt: !50)
!95 = !DILocation(line: 3, column: 8, scope: !19, inlinedAt: !50)
!96 = !DILocation(line: 3, column: 7, scope: !4, inlinedAt: !50)
!97 = !DILocation(line: 4, column: 12, scope: !24, inlinedAt: !50)
!98 = !DILocation(line: 6, column: 3, scope: !4, inlinedAt: !50)
!99 = !DILocation(line: 24, column: 3, scope: !8)
