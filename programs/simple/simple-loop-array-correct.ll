; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca [10 x i32], align 16
  store i32 0, i32* %1
  call void @llvm.dbg.declare(metadata i32* %i, metadata !13, metadata !14), !dbg !15
  store i32 0, i32* %i, align 4, !dbg !15
  call void @llvm.dbg.declare(metadata [10 x i32]* %a, metadata !16, metadata !14), !dbg !20
  br label %2, !dbg !21

; <label>:2                                       ; preds = %5, %0
  %3 = load i32, i32* %i, align 4, !dbg !22
  %4 = icmp slt i32 %3, 10, !dbg !23
  br i1 %4, label %5, label %12, !dbg !21

; <label>:5                                       ; preds = %2
  %6 = load i32, i32* %i, align 4, !dbg !24
  %7 = load i32, i32* %i, align 4, !dbg !26
  %8 = sext i32 %7 to i64, !dbg !27
  %9 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i32 0, i64 %8, !dbg !27
  store i32 %6, i32* %9, align 4, !dbg !28
  %10 = load i32, i32* %i, align 4, !dbg !29
  %11 = add nsw i32 %10, 1, !dbg !30
  store i32 %11, i32* %i, align 4, !dbg !31
  br label %2, !dbg !21

; <label>:12                                      ; preds = %2
  %13 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i32 0, i64 3, !dbg !32
  %14 = load i32, i32* %13, align 4, !dbg !32
  %15 = icmp eq i32 %14, 3, !dbg !33
  %16 = zext i1 %15 to i32, !dbg !33
  %17 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %16), !dbg !34
  %18 = load i32, i32* %1, !dbg !35
  ret i32 %18, !dbg !35
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @__VERIFIER_assert(...) #2

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "simple-loop-array-correct.c", directory: "/Users/asloane/Projects/PerentieMQ/perentiemq/programs/simple")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "main", scope: !5, file: !5, line: 1, type: !6, isLocal: false, isDefinition: true, scopeLine: 1, isOptimized: false, function: i32 ()* @main, variables: !2)
!5 = !DIFile(filename: "simple-loop-array-correct.c", directory: "/Users/asloane/Projects/PerentieMQ/perentiemq/programs/simple")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !{i32 2, !"Dwarf Version", i32 2}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"PIC Level", i32 2}
!12 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!13 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !4, file: !5, line: 2, type: !8)
!14 = !DIExpression()
!15 = !DILocation(line: 2, column: 7, scope: !4)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !4, file: !5, line: 3, type: !17)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 320, align: 32, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 10)
!20 = !DILocation(line: 3, column: 7, scope: !4)
!21 = !DILocation(line: 4, column: 3, scope: !4)
!22 = !DILocation(line: 4, column: 10, scope: !4)
!23 = !DILocation(line: 4, column: 12, scope: !4)
!24 = !DILocation(line: 5, column: 12, scope: !25)
!25 = distinct !DILexicalBlock(scope: !4, file: !5, line: 4, column: 18)
!26 = !DILocation(line: 5, column: 7, scope: !25)
!27 = !DILocation(line: 5, column: 5, scope: !25)
!28 = !DILocation(line: 5, column: 10, scope: !25)
!29 = !DILocation(line: 6, column: 9, scope: !25)
!30 = !DILocation(line: 6, column: 11, scope: !25)
!31 = !DILocation(line: 6, column: 7, scope: !25)
!32 = !DILocation(line: 8, column: 21, scope: !4)
!33 = !DILocation(line: 8, column: 26, scope: !4)
!34 = !DILocation(line: 8, column: 3, scope: !4)
!35 = !DILocation(line: 9, column: 1, scope: !4)
