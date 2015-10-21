; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind ssp uwtable
define i32 @func(i32 %i) #0 {
  %1 = alloca i32, align 4
  store i32 %i, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !16, metadata !17), !dbg !18
  %2 = load i32, i32* %1, align 4, !dbg !19
  %3 = icmp eq i32 %2, 0, !dbg !20
  %4 = zext i1 %3 to i32, !dbg !20
  %5 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %4), !dbg !21
  %6 = load i32, i32* %1, align 4, !dbg !22
  %7 = add nsw i32 %6, 1, !dbg !23
  ret i32 %7, !dbg !24
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @__VERIFIER_assert(...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %j, metadata !25, metadata !17), !dbg !26
  %2 = bitcast i32* %1 to i8*, !dbg !27
  call void @llvm.lifetime.start(i64 4, i8* %2), !dbg !27
  store i32 42, i32* %1, align 4, !dbg !27
  %3 = load i32, i32* %1, align 4, !dbg !28
  %4 = icmp eq i32 %3, 0, !dbg !30
  %5 = zext i1 %4 to i32, !dbg !30
  %6 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %5) #3, !dbg !31
  %7 = load i32, i32* %1, align 4, !dbg !32
  %8 = add nsw i32 %7, 1, !dbg !33
  %9 = bitcast i32* %1 to i8*, !dbg !34
  call void @llvm.lifetime.end(i64 4, i8* %9), !dbg !34
  store i32 %8, i32* %j, align 4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %1, metadata !16, metadata !17), !dbg !36
  ret i32 0, !dbg !37
}

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
!1 = !DIFile(filename: "simple-function-incorrect.c", directory: "/Users/asloane/Projects/PerentieMQ/perentiemq/programs/simple")
!2 = !{}
!3 = !{!4, !9}
!4 = !DISubprogram(name: "func", scope: !5, file: !5, line: 1, type: !6, isLocal: false, isDefinition: true, scopeLine: 2, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32)* @func, variables: !2)
!5 = !DIFile(filename: "simple-function-incorrect.c", directory: "/Users/asloane/Projects/PerentieMQ/perentiemq/programs/simple")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !8}
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !DISubprogram(name: "main", scope: !5, file: !5, line: 7, type: !10, isLocal: false, isDefinition: true, scopeLine: 8, isOptimized: false, function: i32 ()* @main, variables: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!8}
!12 = !{i32 2, !"Dwarf Version", i32 2}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"PIC Level", i32 2}
!15 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!16 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 1, scope: !4, file: !5, line: 1, type: !8)
!17 = !DIExpression()
!18 = !DILocation(line: 1, column: 15, scope: !4)
!19 = !DILocation(line: 3, column: 23, scope: !4)
!20 = !DILocation(line: 3, column: 25, scope: !4)
!21 = !DILocation(line: 3, column: 5, scope: !4)
!22 = !DILocation(line: 4, column: 12, scope: !4)
!23 = !DILocation(line: 4, column: 14, scope: !4)
!24 = !DILocation(line: 4, column: 5, scope: !4)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !9, file: !5, line: 9, type: !8)
!26 = !DILocation(line: 9, column: 9, scope: !9)
!27 = !DILocation(line: 10, column: 9, scope: !9)
!28 = !DILocation(line: 3, column: 23, scope: !4, inlinedAt: !29)
!29 = distinct !DILocation(line: 10, column: 9, scope: !9)
!30 = !DILocation(line: 3, column: 25, scope: !4, inlinedAt: !29)
!31 = !DILocation(line: 3, column: 5, scope: !4, inlinedAt: !29)
!32 = !DILocation(line: 4, column: 12, scope: !4, inlinedAt: !29)
!33 = !DILocation(line: 4, column: 14, scope: !4, inlinedAt: !29)
!34 = !DILocation(line: 4, column: 5, scope: !4, inlinedAt: !29)
!35 = !DILocation(line: 10, column: 7, scope: !9)
!36 = !DILocation(line: 1, column: 15, scope: !4, inlinedAt: !29)
!37 = !DILocation(line: 11, column: 1, scope: !9)
