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
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %n, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %a, metadata !31, metadata !16), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %b, metadata !33, metadata !16), !dbg !34
  store i32 0, i32* %i, align 4, !dbg !35
  store i32 0, i32* %a, align 4, !dbg !36
  store i32 0, i32* %b, align 4, !dbg !37
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !38
  store i32 %3, i32* %n, align 4, !dbg !39
  %4 = load i32, i32* %n, align 4, !dbg !40
  %5 = icmp sge i32 %4, 0, !dbg !41
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !42
  br i1 %5, label %6, label %9, !dbg !44

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %n, align 4, !dbg !45
  %8 = icmp sle i32 %7, 1000000, !dbg !46
  br label %9

; <label>:9                                       ; preds = %6, %0
  %10 = phi i1 [ false, %0 ], [ %8, %6 ]
  %11 = zext i1 %10 to i32, !dbg !44
  call void @__VERIFIER_assume(i32 %11), !dbg !47
  br label %12, !dbg !48

; <label>:12                                      ; preds = %29, %9
  %13 = load i32, i32* %i, align 4, !dbg !49
  %14 = load i32, i32* %n, align 4, !dbg !50
  %15 = icmp slt i32 %13, %14, !dbg !51
  br i1 %15, label %16, label %32, !dbg !48

; <label>:16                                      ; preds = %12
  %17 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !52
  %18 = icmp ne i32 %17, 0, !dbg !52
  br i1 %18, label %19, label %24, !dbg !55

; <label>:19                                      ; preds = %16
  %20 = load i32, i32* %a, align 4, !dbg !56
  %21 = add nsw i32 %20, 1, !dbg !58
  store i32 %21, i32* %a, align 4, !dbg !59
  %22 = load i32, i32* %b, align 4, !dbg !60
  %23 = add nsw i32 %22, 2, !dbg !61
  store i32 %23, i32* %b, align 4, !dbg !62
  br label %29, !dbg !63

; <label>:24                                      ; preds = %16
  %25 = load i32, i32* %a, align 4, !dbg !64
  %26 = add nsw i32 %25, 2, !dbg !66
  store i32 %26, i32* %a, align 4, !dbg !67
  %27 = load i32, i32* %b, align 4, !dbg !68
  %28 = add nsw i32 %27, 1, !dbg !69
  store i32 %28, i32* %b, align 4, !dbg !70
  br label %29

; <label>:29                                      ; preds = %24, %19
  %30 = load i32, i32* %i, align 4, !dbg !71
  %31 = add nsw i32 %30, 1, !dbg !72
  store i32 %31, i32* %i, align 4, !dbg !73
  br label %12, !dbg !48

; <label>:32                                      ; preds = %12
  %33 = load i32, i32* %a, align 4, !dbg !74
  %34 = load i32, i32* %b, align 4, !dbg !75
  %35 = add nsw i32 %33, %34, !dbg !76
  %36 = load i32, i32* %n, align 4, !dbg !77
  %37 = mul nsw i32 3, %36, !dbg !78
  %38 = icmp eq i32 %35, %37, !dbg !79
  %39 = zext i1 %38 to i32, !dbg !79
  %40 = bitcast i32* %1 to i8*, !dbg !80
  call void @llvm.lifetime.start(i64 4, i8* %40), !dbg !80
  store i32 %39, i32* %1, align 4, !dbg !80
  %41 = load i32, i32* %1, align 4, !dbg !81
  %42 = icmp ne i32 %41, 0, !dbg !82
  br i1 %42, label %__VERIFIER_assert.exit, label %43, !dbg !83

; <label>:43                                      ; preds = %32
  call void @__VERIFIER_error() #3, !dbg !84
  br label %__VERIFIER_assert.exit, !dbg !85

__VERIFIER_assert.exit:                           ; preds = %32, %43
  %44 = bitcast i32* %1 to i8*, !dbg !86
  call void @llvm.lifetime.end(i64 4, i8* %44), !dbg !86
  ret i32 0, !dbg !87
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
!1 = !DIFile(filename: "programs/svcomp16/loop-lit/bhmr2007_true-unreach-call.c.i", directory: ".")
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
!23 = !DILocation(line: 5, column: 14, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 4, column: 16)
!25 = !DILocation(line: 6, column: 3, scope: !24)
!26 = !DILocation(line: 7, column: 3, scope: !4)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 11, type: !7)
!28 = !DILocation(line: 11, column: 9, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !8, file: !1, line: 11, type: !7)
!30 = !DILocation(line: 11, column: 12, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !8, file: !1, line: 11, type: !7)
!32 = !DILocation(line: 11, column: 15, scope: !8)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !8, file: !1, line: 11, type: !7)
!34 = !DILocation(line: 11, column: 18, scope: !8)
!35 = !DILocation(line: 12, column: 7, scope: !8)
!36 = !DILocation(line: 12, column: 14, scope: !8)
!37 = !DILocation(line: 12, column: 21, scope: !8)
!38 = !DILocation(line: 12, column: 30, scope: !8)
!39 = !DILocation(line: 12, column: 28, scope: !8)
!40 = !DILocation(line: 13, column: 23, scope: !8)
!41 = !DILocation(line: 13, column: 25, scope: !8)
!42 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !43)
!43 = distinct !DILocation(line: 24, column: 5, scope: !8)
!44 = !DILocation(line: 13, column: 30, scope: !8)
!45 = !DILocation(line: 13, column: 33, scope: !8)
!46 = !DILocation(line: 13, column: 35, scope: !8)
!47 = !DILocation(line: 13, column: 5, scope: !8)
!48 = !DILocation(line: 14, column: 5, scope: !8)
!49 = !DILocation(line: 14, column: 12, scope: !8)
!50 = !DILocation(line: 14, column: 16, scope: !8)
!51 = !DILocation(line: 14, column: 14, scope: !8)
!52 = !DILocation(line: 15, column: 13, scope: !53)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 15, column: 13)
!54 = distinct !DILexicalBlock(scope: !8, file: !1, line: 14, column: 19)
!55 = !DILocation(line: 15, column: 13, scope: !54)
!56 = !DILocation(line: 16, column: 17, scope: !57)
!57 = distinct !DILexicalBlock(scope: !53, file: !1, line: 15, column: 38)
!58 = !DILocation(line: 16, column: 19, scope: !57)
!59 = !DILocation(line: 16, column: 15, scope: !57)
!60 = !DILocation(line: 17, column: 17, scope: !57)
!61 = !DILocation(line: 17, column: 19, scope: !57)
!62 = !DILocation(line: 17, column: 15, scope: !57)
!63 = !DILocation(line: 18, column: 9, scope: !57)
!64 = !DILocation(line: 19, column: 17, scope: !65)
!65 = distinct !DILexicalBlock(scope: !53, file: !1, line: 18, column: 16)
!66 = !DILocation(line: 19, column: 19, scope: !65)
!67 = !DILocation(line: 19, column: 15, scope: !65)
!68 = !DILocation(line: 20, column: 17, scope: !65)
!69 = !DILocation(line: 20, column: 19, scope: !65)
!70 = !DILocation(line: 20, column: 15, scope: !65)
!71 = !DILocation(line: 22, column: 13, scope: !54)
!72 = !DILocation(line: 22, column: 15, scope: !54)
!73 = !DILocation(line: 22, column: 11, scope: !54)
!74 = !DILocation(line: 24, column: 23, scope: !8)
!75 = !DILocation(line: 24, column: 27, scope: !8)
!76 = !DILocation(line: 24, column: 25, scope: !8)
!77 = !DILocation(line: 24, column: 34, scope: !8)
!78 = !DILocation(line: 24, column: 33, scope: !8)
!79 = !DILocation(line: 24, column: 29, scope: !8)
!80 = !DILocation(line: 24, column: 5, scope: !8)
!81 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !43)
!82 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !43)
!83 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !43)
!84 = !DILocation(line: 5, column: 14, scope: !24, inlinedAt: !43)
!85 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !43)
!86 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !43)
!87 = !DILocation(line: 25, column: 5, scope: !8)
