; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %1
  call void @llvm.dbg.declare(metadata i32* %i, metadata !13, metadata !14), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %j, metadata !16, metadata !14), !dbg !17
  %2 = load i32, i32* %i, align 4, !dbg !18
  %3 = load i32, i32* %j, align 4, !dbg !20
  %4 = icmp sgt i32 %2, %3, !dbg !21
  br i1 %4, label %5, label %11, !dbg !22

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %i, align 4, !dbg !23
  %7 = load i32, i32* %j, align 4, !dbg !24
  %8 = icmp sle i32 %6, %7, !dbg !25
  %9 = zext i1 %8 to i32, !dbg !25
  %10 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %9), !dbg !26
  br label %11, !dbg !26

; <label>:11                                      ; preds = %5, %0
  %12 = load i32, i32* %1, !dbg !27
  ret i32 %12, !dbg !27
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
!1 = !DIFile(filename: "simple-if-incorrect.c", directory: "/Users/asloane/Projects/PerentieMQ/perentiemq/programs/simple")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "main", scope: !5, file: !5, line: 1, type: !6, isLocal: false, isDefinition: true, scopeLine: 2, isOptimized: false, function: i32 ()* @main, variables: !2)
!5 = !DIFile(filename: "simple-if-incorrect.c", directory: "/Users/asloane/Projects/PerentieMQ/perentiemq/programs/simple")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !{i32 2, !"Dwarf Version", i32 2}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"PIC Level", i32 2}
!12 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!13 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !4, file: !5, line: 3, type: !8)
!14 = !DIExpression()
!15 = !DILocation(line: 3, column: 8, scope: !4)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !4, file: !5, line: 3, type: !8)
!17 = !DILocation(line: 3, column: 11, scope: !4)
!18 = !DILocation(line: 4, column: 8, scope: !19)
!19 = distinct !DILexicalBlock(scope: !4, file: !5, line: 4, column: 8)
!20 = !DILocation(line: 4, column: 12, scope: !19)
!21 = !DILocation(line: 4, column: 10, scope: !19)
!22 = !DILocation(line: 4, column: 8, scope: !4)
!23 = !DILocation(line: 5, column: 25, scope: !19)
!24 = !DILocation(line: 5, column: 30, scope: !19)
!25 = !DILocation(line: 5, column: 27, scope: !19)
!26 = !DILocation(line: 5, column: 6, scope: !19)
!27 = !DILocation(line: 6, column: 1, scope: !4)
