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
  br label %2, !dbg !33

; <label>:2                                       ; preds = %6, %0
  %3 = load i32, i32* %i, align 4, !dbg !34
  %4 = icmp slt i32 %3, 1000000, !dbg !36
  br i1 %4, label %5, label %9, !dbg !37

; <label>:5                                       ; preds = %2
  br label %6, !dbg !37

; <label>:6                                       ; preds = %5
  %7 = load i32, i32* %i, align 4, !dbg !38
  %8 = add nsw i32 %7, 1, !dbg !38
  store i32 %8, i32* %i, align 4, !dbg !38
  br label %2, !dbg !39

; <label>:9                                       ; preds = %2
  %10 = load i32, i32* %i, align 4, !dbg !40
  %11 = icmp eq i32 %10, 1000000, !dbg !41
  %12 = zext i1 %11 to i32, !dbg !41
  %13 = bitcast i32* %1 to i8*, !dbg !42
  call void @llvm.lifetime.start(i64 4, i8* %13), !dbg !42
  store i32 %12, i32* %1, align 4, !dbg !42
  %14 = load i32, i32* %1, align 4, !dbg !43
  %15 = icmp ne i32 %14, 0, !dbg !44
  br i1 %15, label %__VERIFIER_assert.exit, label %16, !dbg !45

; <label>:16                                      ; preds = %9
  call void @__VERIFIER_error() #3, !dbg !46
  br label %__VERIFIER_assert.exit, !dbg !47

__VERIFIER_assert.exit:                           ; preds = %9, %16
  %17 = bitcast i32* %1 to i8*, !dbg !48
  call void @llvm.lifetime.end(i64 4, i8* %17), !dbg !48
  ret void, !dbg !49
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
!1 = !DIFile(filename: "programs/svcomp16/loop-new/count_by_1_true-unreach-call.i", directory: ".")
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
!32 = distinct !DILocation(line: 13, column: 5, scope: !8)
!33 = !DILocation(line: 12, column: 10, scope: !30)
!34 = !DILocation(line: 12, column: 17, scope: !35)
!35 = distinct !DILexicalBlock(scope: !30, file: !1, line: 12, column: 5)
!36 = !DILocation(line: 12, column: 19, scope: !35)
!37 = !DILocation(line: 12, column: 5, scope: !30)
!38 = !DILocation(line: 12, column: 31, scope: !35)
!39 = !DILocation(line: 12, column: 5, scope: !35)
!40 = !DILocation(line: 13, column: 23, scope: !8)
!41 = !DILocation(line: 13, column: 25, scope: !8)
!42 = !DILocation(line: 13, column: 5, scope: !8)
!43 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !32)
!44 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !32)
!45 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !32)
!46 = !DILocation(line: 5, column: 10, scope: !24, inlinedAt: !32)
!47 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !32)
!48 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !32)
!49 = !DILocation(line: 14, column: 1, scope: !8)
