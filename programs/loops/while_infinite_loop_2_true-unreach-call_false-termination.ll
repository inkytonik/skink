; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

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
  call void (...) @__VERIFIER_error() #4, !dbg !23
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
  %x = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %x, metadata !26, metadata !16), !dbg !27
  store i32 0, i32* %x, align 4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !28
  br label %3, !dbg !31

; <label>:3                                       ; preds = %__VERIFIER_assert.exit, %0
  %4 = load i32, i32* %x, align 4, !dbg !32
  %5 = icmp eq i32 %4, 0, !dbg !33
  %6 = zext i1 %5 to i32, !dbg !33
  %7 = bitcast i32* %1 to i8*, !dbg !34
  call void @llvm.lifetime.start(i64 4, i8* %7), !dbg !34
  store i32 %6, i32* %1, align 4, !dbg !34
  %8 = load i32, i32* %1, align 4, !dbg !35
  %9 = icmp ne i32 %8, 0, !dbg !36
  br i1 %9, label %__VERIFIER_assert.exit, label %10, !dbg !37

; <label>:10                                      ; preds = %3
  call void (...) @__VERIFIER_error() #5, !dbg !38
  unreachable, !dbg !38

__VERIFIER_assert.exit:                           ; preds = %3
  %11 = bitcast i32* %1 to i8*, !dbg !39
  call void @llvm.lifetime.end(i64 4, i8* %11), !dbg !39
  br label %3, !dbg !31
                                                  ; No predecessors!
  %13 = load i32, i32* %2, !dbg !40
  ret i32 %13, !dbg !40
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }
attributes #5 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "../../sv-comp-2016/c/loops/while_infinite_loop_2_true-unreach-call_false-termination.i", directory: "/Users/franck/development/perentiemq/programs")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 9, type: !9, isLocal: false, isDefinition: true, scopeLine: 9, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!25 = !DILocation(line: 7, column: 3, scope: !4)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !8, file: !1, line: 10, type: !7)
!27 = !DILocation(line: 10, column: 7, scope: !8)
!28 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !29)
!29 = distinct !DILocation(line: 14, column: 5, scope: !30)
!30 = distinct !DILexicalBlock(scope: !8, file: !1, line: 13, column: 3)
!31 = !DILocation(line: 12, column: 3, scope: !8)
!32 = !DILocation(line: 14, column: 23, scope: !30)
!33 = !DILocation(line: 14, column: 24, scope: !30)
!34 = !DILocation(line: 14, column: 5, scope: !30)
!35 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !29)
!36 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !29)
!37 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !29)
!38 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !29)
!39 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !29)
!40 = !DILocation(line: 18, column: 1, scope: !8)
