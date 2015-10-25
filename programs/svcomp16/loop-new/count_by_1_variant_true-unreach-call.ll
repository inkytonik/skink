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
  call void @__VERIFIER_error(), !dbg !23
  br label %6, !dbg !25

; <label>:6                                       ; preds = %5, %0
  ret void, !dbg !26
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @__VERIFIER_error() #2

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !16), !dbg !28
  store i32 0, i32* %i, align 4, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !31
  br label %2, !dbg !35

; <label>:2                                       ; preds = %14, %0
  %3 = load i32, i32* %i, align 4, !dbg !36
  %4 = icmp ne i32 %3, 1000000, !dbg !37
  br i1 %4, label %5, label %17, !dbg !38

; <label>:5                                       ; preds = %2
  %6 = load i32, i32* %i, align 4, !dbg !39
  %7 = icmp sle i32 %6, 1000000, !dbg !40
  %8 = zext i1 %7 to i32, !dbg !40
  %9 = bitcast i32* %1 to i8*, !dbg !41
  call void @llvm.lifetime.start(i64 4, i8* %9), !dbg !41
  store i32 %8, i32* %1, align 4, !dbg !41
  %10 = load i32, i32* %1, align 4, !dbg !42
  %11 = icmp ne i32 %10, 0, !dbg !43
  br i1 %11, label %__VERIFIER_assert.exit, label %12, !dbg !44

; <label>:12                                      ; preds = %5
  call void @__VERIFIER_error() #3, !dbg !45
  br label %__VERIFIER_assert.exit, !dbg !46

__VERIFIER_assert.exit:                           ; preds = %5, %12
  %13 = bitcast i32* %1 to i8*, !dbg !47
  call void @llvm.lifetime.end(i64 4, i8* %13), !dbg !47
  br label %14, !dbg !48

; <label>:14                                      ; preds = %__VERIFIER_assert.exit
  %15 = load i32, i32* %i, align 4, !dbg !49
  %16 = add nsw i32 %15, 1, !dbg !49
  store i32 %16, i32* %i, align 4, !dbg !49
  br label %2, !dbg !50

; <label>:17                                      ; preds = %2
  ret void, !dbg !51
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
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "../../../sv-comp-2016/c/loop-new/count_by_1_variant_true-unreach-call.i", directory: "/Users/franck/development/perentiemq/programs/svcomp16")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !9, isLocal: false, isDefinition: true, scopeLine: 10, isOptimized: false, function: void ()* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{null}
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
!23 = !DILocation(line: 5, column: 10, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 4, column: 16)
!25 = !DILocation(line: 6, column: 3, scope: !24)
!26 = !DILocation(line: 7, column: 3, scope: !4)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 11, type: !7)
!28 = !DILocation(line: 11, column: 9, scope: !8)
!29 = !DILocation(line: 12, column: 12, scope: !30)
!30 = distinct !DILexicalBlock(scope: !8, file: !1, line: 12, column: 5)
!31 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !32)
!32 = distinct !DILocation(line: 13, column: 2, scope: !33)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 12, column: 36)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 12, column: 5)
!35 = !DILocation(line: 12, column: 10, scope: !30)
!36 = !DILocation(line: 12, column: 17, scope: !34)
!37 = !DILocation(line: 12, column: 19, scope: !34)
!38 = !DILocation(line: 12, column: 5, scope: !30)
!39 = !DILocation(line: 13, column: 20, scope: !33)
!40 = !DILocation(line: 13, column: 22, scope: !33)
!41 = !DILocation(line: 13, column: 2, scope: !33)
!42 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !32)
!43 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !32)
!44 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !32)
!45 = !DILocation(line: 5, column: 10, scope: !24, inlinedAt: !32)
!46 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !32)
!47 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !32)
!48 = !DILocation(line: 14, column: 5, scope: !33)
!49 = !DILocation(line: 12, column: 32, scope: !34)
!50 = !DILocation(line: 12, column: 5, scope: !34)
!51 = !DILocation(line: 15, column: 1, scope: !8)
