; ModuleID = 'loop-new/count_by_1_true-unreach-call.c'
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
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !28, metadata !17), !dbg !29
  store i32 0, i32* %i, align 4, !dbg !30
  br label %1, !dbg !32

; <label>:1                                       ; preds = %5, %0
  %2 = load i32, i32* %i, align 4, !dbg !33
  %3 = icmp slt i32 %2, 1000000, !dbg !35
  br i1 %3, label %4, label %8, !dbg !36

; <label>:4                                       ; preds = %1
  br label %5, !dbg !36

; <label>:5                                       ; preds = %4
  %6 = load i32, i32* %i, align 4, !dbg !37
  %7 = add nsw i32 %6, 1, !dbg !37
  store i32 %7, i32* %i, align 4, !dbg !37
  br label %1, !dbg !38

; <label>:8                                       ; preds = %1
  %9 = load i32, i32* %i, align 4, !dbg !39
  %10 = icmp eq i32 %9, 1000000, !dbg !40
  %11 = zext i1 %10 to i32, !dbg !40
  call void @__VERIFIER_assert(i32 %11), !dbg !41
  ret void, !dbg !42
}

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "loop-new/count_by_1_true-unreach-call.c", directory: "./test-script-icode")
!2 = !{}
!3 = !{!4, !9}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !5, file: !5, line: 3, type: !6, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DIFile(filename: "loop-new/assert.h", directory: "./test-script-icode")
!6 = !DISubroutineType(types: !7)
!7 = !{null, !8}
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !10, isLocal: false, isDefinition: true, scopeLine: 3, isOptimized: false, function: void ()* @main, variables: !2)
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
!24 = !DILocation(line: 5, column: 10, scope: !25)
!25 = distinct !DILexicalBlock(scope: !20, file: !5, line: 4, column: 16)
!26 = !DILocation(line: 6, column: 3, scope: !25)
!27 = !DILocation(line: 7, column: 3, scope: !4)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !9, file: !1, line: 4, type: !8)
!29 = !DILocation(line: 4, column: 9, scope: !9)
!30 = !DILocation(line: 5, column: 12, scope: !31)
!31 = distinct !DILexicalBlock(scope: !9, file: !1, line: 5, column: 5)
!32 = !DILocation(line: 5, column: 10, scope: !31)
!33 = !DILocation(line: 5, column: 17, scope: !34)
!34 = distinct !DILexicalBlock(scope: !31, file: !1, line: 5, column: 5)
!35 = !DILocation(line: 5, column: 19, scope: !34)
!36 = !DILocation(line: 5, column: 5, scope: !31)
!37 = !DILocation(line: 5, column: 33, scope: !34)
!38 = !DILocation(line: 5, column: 5, scope: !34)
!39 = !DILocation(line: 6, column: 23, scope: !9)
!40 = !DILocation(line: 6, column: 25, scope: !9)
!41 = !DILocation(line: 6, column: 5, scope: !9)
!42 = !DILocation(line: 7, column: 1, scope: !9)
