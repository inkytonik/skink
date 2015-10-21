; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 0, i32* %1
  call void @llvm.dbg.declare(metadata i32* %r, metadata !13, metadata !14), !dbg !15
  br label %2, !dbg !16

; <label>:2                                       ; preds = %5, %0
  %3 = load i32, i32* %r, align 4, !dbg !17
  %4 = icmp sgt i32 %3, 0, !dbg !18
  br i1 %4, label %5, label %12, !dbg !16

; <label>:5                                       ; preds = %2
  %6 = load i32, i32* %r, align 4, !dbg !19
  %7 = icmp sgt i32 %6, 0, !dbg !21
  %8 = zext i1 %7 to i32, !dbg !21
  %9 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %8), !dbg !22
  %10 = load i32, i32* %r, align 4, !dbg !23
  %11 = sub nsw i32 %10, 1, !dbg !24
  store i32 %11, i32* %r, align 4, !dbg !25
  br label %2, !dbg !16

; <label>:12                                      ; preds = %2
  %13 = load i32, i32* %r, align 4, !dbg !26
  %14 = icmp sgt i32 %13, 0, !dbg !27
  %15 = zext i1 %14 to i32, !dbg !27
  %16 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %15), !dbg !28
  %17 = load i32, i32* %1, !dbg !29
  ret i32 %17, !dbg !29
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
!1 = !DIFile(filename: "simple-loop-incorrect.c", directory: "/Users/asloane/Projects/PerentieMQ/perentiemq/programs/simple")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "main", scope: !5, file: !5, line: 1, type: !6, isLocal: false, isDefinition: true, scopeLine: 1, isOptimized: false, function: i32 ()* @main, variables: !2)
!5 = !DIFile(filename: "simple-loop-incorrect.c", directory: "/Users/asloane/Projects/PerentieMQ/perentiemq/programs/simple")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !{i32 2, !"Dwarf Version", i32 2}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"PIC Level", i32 2}
!12 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!13 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !4, file: !5, line: 2, type: !8)
!14 = !DIExpression()
!15 = !DILocation(line: 2, column: 7, scope: !4)
!16 = !DILocation(line: 3, column: 3, scope: !4)
!17 = !DILocation(line: 3, column: 10, scope: !4)
!18 = !DILocation(line: 3, column: 12, scope: !4)
!19 = !DILocation(line: 4, column: 25, scope: !20)
!20 = distinct !DILexicalBlock(scope: !4, file: !5, line: 3, column: 17)
!21 = !DILocation(line: 4, column: 27, scope: !20)
!22 = !DILocation(line: 4, column: 7, scope: !20)
!23 = !DILocation(line: 5, column: 11, scope: !20)
!24 = !DILocation(line: 5, column: 13, scope: !20)
!25 = !DILocation(line: 5, column: 9, scope: !20)
!26 = !DILocation(line: 7, column: 21, scope: !4)
!27 = !DILocation(line: 7, column: 23, scope: !4)
!28 = !DILocation(line: 7, column: 3, scope: !4)
!29 = !DILocation(line: 8, column: 1, scope: !4)
