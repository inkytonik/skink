; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %1
  call void @llvm.dbg.declare(metadata i32* %i, metadata !13, metadata !14), !dbg !15
  store i32 0, i32* %i, align 4, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %n, metadata !16, metadata !14), !dbg !17
  store i32 0, i32* %n, align 4, !dbg !17
  br label %2, !dbg !18

; <label>:2                                       ; preds = %6, %0
  %3 = load i32, i32* %i, align 4, !dbg !19
  %4 = load i32, i32* %n, align 4, !dbg !20
  %5 = icmp sge i32 %3, %4, !dbg !21
  br i1 %5, label %6, label %14, !dbg !18

; <label>:6                                       ; preds = %2
  %7 = load i32, i32* %i, align 4, !dbg !22
  %8 = add nsw i32 %7, 1, !dbg !22
  store i32 %8, i32* %i, align 4, !dbg !22
  %9 = load i32, i32* %i, align 4, !dbg !24
  %10 = load i32, i32* %n, align 4, !dbg !25
  %11 = icmp sge i32 %9, %10, !dbg !26
  %12 = zext i1 %11 to i32, !dbg !26
  %13 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %12), !dbg !27
  br label %2, !dbg !18

; <label>:14                                      ; preds = %2
  %15 = load i32, i32* %i, align 4, !dbg !28
  %16 = load i32, i32* %n, align 4, !dbg !29
  %17 = icmp sge i32 %15, %16, !dbg !30
  %18 = zext i1 %17 to i32, !dbg !30
  %19 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %18), !dbg !31
  %20 = load i32, i32* %1, !dbg !32
  ret i32 %20, !dbg !32
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
!1 = !DIFile(filename: "simple-loop-unreach-correct.c", directory: "/Users/asloane/Projects/PerentieMQ/perentiemq/programs/simple")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "main", scope: !5, file: !5, line: 5, type: !6, isLocal: false, isDefinition: true, scopeLine: 5, isOptimized: false, function: i32 ()* @main, variables: !2)
!5 = !DIFile(filename: "simple-loop-unreach-correct.c", directory: "/Users/asloane/Projects/PerentieMQ/perentiemq/programs/simple")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !{i32 2, !"Dwarf Version", i32 2}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"PIC Level", i32 2}
!12 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!13 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !4, file: !5, line: 6, type: !8)
!14 = !DIExpression()
!15 = !DILocation(line: 6, column: 7, scope: !4)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !4, file: !5, line: 6, type: !8)
!17 = !DILocation(line: 6, column: 14, scope: !4)
!18 = !DILocation(line: 7, column: 3, scope: !4)
!19 = !DILocation(line: 7, column: 11, scope: !4)
!20 = !DILocation(line: 7, column: 16, scope: !4)
!21 = !DILocation(line: 7, column: 13, scope: !4)
!22 = !DILocation(line: 8, column: 6, scope: !23)
!23 = distinct !DILexicalBlock(scope: !4, file: !5, line: 7, column: 19)
!24 = !DILocation(line: 9, column: 21, scope: !23)
!25 = !DILocation(line: 9, column: 26, scope: !23)
!26 = !DILocation(line: 9, column: 23, scope: !23)
!27 = !DILocation(line: 9, column: 3, scope: !23)
!28 = !DILocation(line: 11, column: 21, scope: !4)
!29 = !DILocation(line: 11, column: 26, scope: !4)
!30 = !DILocation(line: 11, column: 23, scope: !4)
!31 = !DILocation(line: 11, column: 3, scope: !4)
!32 = !DILocation(line: 12, column: 1, scope: !4)
