; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind ssp uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
  %1 = alloca i32, align 4
  store i32 %cond, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !16, metadata !17), !dbg !18
  %2 = load i32, i32* %1, align 4, !dbg !19
  %3 = icmp ne i32 %2, 0, !dbg !21
  br i1 %3, label %6, label %4, !dbg !22

; <label>:4                                       ; preds = %0
  br label %5, !dbg !23

; <label>:5                                       ; preds = %4
  call void @__VERIFIER_error(), !dbg !24
  br label %6, !dbg !26

; <label>:6                                       ; preds = %5, %0
  ret void, !dbg !27
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @__VERIFIER_error() #2

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !28, metadata !17), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %n, metadata !30, metadata !17), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %a, metadata !32, metadata !17), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %b, metadata !34, metadata !17), !dbg !35
  store i32 0, i32* %i, align 4, !dbg !36
  store i32 0, i32* %a, align 4, !dbg !37
  store i32 0, i32* %b, align 4, !dbg !38
  %2 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !39
  store i32 %2, i32* %n, align 4, !dbg !40
  %3 = load i32, i32* %n, align 4, !dbg !41
  %4 = icmp sge i32 %3, 0, !dbg !42
  %5 = zext i1 %4 to i32, !dbg !42
  call void @__VERIFIER_assume(i32 %5), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %1, metadata !16, metadata !17), !dbg !44
  br label %6, !dbg !46

; <label>:6                                       ; preds = %23, %0
  %7 = load i32, i32* %i, align 4, !dbg !47
  %8 = load i32, i32* %n, align 4, !dbg !48
  %9 = icmp slt i32 %7, %8, !dbg !49
  br i1 %9, label %10, label %26, !dbg !46

; <label>:10                                      ; preds = %6
  %11 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !50
  %12 = icmp ne i32 %11, 0, !dbg !50
  br i1 %12, label %13, label %18, !dbg !53

; <label>:13                                      ; preds = %10
  %14 = load i32, i32* %a, align 4, !dbg !54
  %15 = add nsw i32 %14, 1, !dbg !56
  store i32 %15, i32* %a, align 4, !dbg !57
  %16 = load i32, i32* %b, align 4, !dbg !58
  %17 = add nsw i32 %16, 2, !dbg !59
  store i32 %17, i32* %b, align 4, !dbg !60
  br label %23, !dbg !61

; <label>:18                                      ; preds = %10
  %19 = load i32, i32* %a, align 4, !dbg !62
  %20 = add nsw i32 %19, 2, !dbg !64
  store i32 %20, i32* %a, align 4, !dbg !65
  %21 = load i32, i32* %b, align 4, !dbg !66
  %22 = add nsw i32 %21, 1, !dbg !67
  store i32 %22, i32* %b, align 4, !dbg !68
  br label %23

; <label>:23                                      ; preds = %18, %13
  %24 = load i32, i32* %i, align 4, !dbg !69
  %25 = add nsw i32 %24, 1, !dbg !70
  store i32 %25, i32* %i, align 4, !dbg !71
  br label %6, !dbg !46

; <label>:26                                      ; preds = %6
  %27 = load i32, i32* %a, align 4, !dbg !72
  %28 = load i32, i32* %b, align 4, !dbg !73
  %29 = add nsw i32 %27, %28, !dbg !74
  %30 = load i32, i32* %n, align 4, !dbg !75
  %31 = mul nsw i32 3, %30, !dbg !76
  %32 = icmp eq i32 %29, %31, !dbg !77
  %33 = zext i1 %32 to i32, !dbg !77
  %34 = bitcast i32* %1 to i8*, !dbg !78
  call void @llvm.lifetime.start(i64 4, i8* %34), !dbg !78
  store i32 %33, i32* %1, align 4, !dbg !78
  %35 = load i32, i32* %1, align 4, !dbg !79
  %36 = icmp ne i32 %35, 0, !dbg !80
  br i1 %36, label %__VERIFIER_assert.exit, label %37, !dbg !81

; <label>:37                                      ; preds = %26
  call void @__VERIFIER_error() #3, !dbg !82
  br label %__VERIFIER_assert.exit, !dbg !83

__VERIFIER_assert.exit:                           ; preds = %26, %37
  %38 = bitcast i32* %1 to i8*, !dbg !84
  call void @llvm.lifetime.end(i64 4, i8* %38), !dbg !84
  ret void, !dbg !85
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
!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "programs/svcomp16/loop-lit/bhmr2007_true-unreach-call.c", directory: ".")
!2 = !{}
!3 = !{!4, !9}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !5, file: !5, line: 3, type: !6, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DIFile(filename: "programs/svcomp16/loop-lit/assert.h", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{null, !8}
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !10, isLocal: false, isDefinition: true, scopeLine: 5, isOptimized: false, function: void ()* @main, variables: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !{i32 2, !"Dwarf Version", i32 2}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"PIC Level", i32 2}
!15 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!16 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !5, line: 3, type: !8)
!17 = !DIExpression()
!18 = !DILocation(line: 3, column: 28, scope: !4)
!19 = !DILocation(line: 4, column: 9, scope: !20)
!20 = distinct !DILexicalBlock(scope: !4, file: !5, line: 4, column: 7)
!21 = !DILocation(line: 4, column: 8, scope: !20)
!22 = !DILocation(line: 4, column: 7, scope: !4)
!23 = !DILocation(line: 4, column: 16, scope: !20)
!24 = !DILocation(line: 5, column: 14, scope: !25)
!25 = distinct !DILexicalBlock(scope: !20, file: !5, line: 4, column: 16)
!26 = !DILocation(line: 6, column: 3, scope: !25)
!27 = !DILocation(line: 7, column: 3, scope: !4)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !9, file: !1, line: 6, type: !8)
!29 = !DILocation(line: 6, column: 9, scope: !9)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !9, file: !1, line: 6, type: !8)
!31 = !DILocation(line: 6, column: 12, scope: !9)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !9, file: !1, line: 6, type: !8)
!33 = !DILocation(line: 6, column: 15, scope: !9)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !9, file: !1, line: 6, type: !8)
!35 = !DILocation(line: 6, column: 18, scope: !9)
!36 = !DILocation(line: 7, column: 7, scope: !9)
!37 = !DILocation(line: 7, column: 14, scope: !9)
!38 = !DILocation(line: 7, column: 21, scope: !9)
!39 = !DILocation(line: 7, column: 30, scope: !9)
!40 = !DILocation(line: 7, column: 28, scope: !9)
!41 = !DILocation(line: 8, column: 23, scope: !9)
!42 = !DILocation(line: 8, column: 25, scope: !9)
!43 = !DILocation(line: 8, column: 5, scope: !9)
!44 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !45)
!45 = distinct !DILocation(line: 19, column: 4, scope: !9)
!46 = !DILocation(line: 9, column: 5, scope: !9)
!47 = !DILocation(line: 9, column: 12, scope: !9)
!48 = !DILocation(line: 9, column: 16, scope: !9)
!49 = !DILocation(line: 9, column: 14, scope: !9)
!50 = !DILocation(line: 10, column: 6, scope: !51)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 10, column: 6)
!52 = distinct !DILexicalBlock(scope: !9, file: !1, line: 9, column: 19)
!53 = !DILocation(line: 10, column: 6, scope: !52)
!54 = !DILocation(line: 11, column: 10, scope: !55)
!55 = distinct !DILexicalBlock(scope: !51, file: !1, line: 10, column: 31)
!56 = !DILocation(line: 11, column: 12, scope: !55)
!57 = !DILocation(line: 11, column: 8, scope: !55)
!58 = !DILocation(line: 12, column: 10, scope: !55)
!59 = !DILocation(line: 12, column: 12, scope: !55)
!60 = !DILocation(line: 12, column: 8, scope: !55)
!61 = !DILocation(line: 13, column: 2, scope: !55)
!62 = !DILocation(line: 14, column: 10, scope: !63)
!63 = distinct !DILexicalBlock(scope: !51, file: !1, line: 13, column: 9)
!64 = !DILocation(line: 14, column: 12, scope: !63)
!65 = !DILocation(line: 14, column: 8, scope: !63)
!66 = !DILocation(line: 15, column: 10, scope: !63)
!67 = !DILocation(line: 15, column: 12, scope: !63)
!68 = !DILocation(line: 15, column: 8, scope: !63)
!69 = !DILocation(line: 17, column: 6, scope: !52)
!70 = !DILocation(line: 17, column: 8, scope: !52)
!71 = !DILocation(line: 17, column: 4, scope: !52)
!72 = !DILocation(line: 19, column: 22, scope: !9)
!73 = !DILocation(line: 19, column: 26, scope: !9)
!74 = !DILocation(line: 19, column: 24, scope: !9)
!75 = !DILocation(line: 19, column: 33, scope: !9)
!76 = !DILocation(line: 19, column: 32, scope: !9)
!77 = !DILocation(line: 19, column: 28, scope: !9)
!78 = !DILocation(line: 19, column: 4, scope: !9)
!79 = !DILocation(line: 4, column: 9, scope: !20, inlinedAt: !45)
!80 = !DILocation(line: 4, column: 8, scope: !20, inlinedAt: !45)
!81 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !45)
!82 = !DILocation(line: 5, column: 14, scope: !25, inlinedAt: !45)
!83 = !DILocation(line: 6, column: 3, scope: !25, inlinedAt: !45)
!84 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !45)
!85 = !DILocation(line: 20, column: 1, scope: !9)
