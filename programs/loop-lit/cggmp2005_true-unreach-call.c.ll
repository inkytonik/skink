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
  %j = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %j, metadata !29, metadata !16), !dbg !30
  store i32 1, i32* %i, align 4, !dbg !31
  store i32 10, i32* %j, align 4, !dbg !32
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !33
  br label %2, !dbg !35

; <label>:2                                       ; preds = %6, %0
  %3 = load i32, i32* %j, align 4, !dbg !36
  %4 = load i32, i32* %i, align 4, !dbg !37
  %5 = icmp sge i32 %3, %4, !dbg !38
  br i1 %5, label %6, label %11, !dbg !35

; <label>:6                                       ; preds = %2
  %7 = load i32, i32* %i, align 4, !dbg !39
  %8 = add nsw i32 %7, 2, !dbg !41
  store i32 %8, i32* %i, align 4, !dbg !42
  %9 = load i32, i32* %j, align 4, !dbg !43
  %10 = add nsw i32 -1, %9, !dbg !44
  store i32 %10, i32* %j, align 4, !dbg !45
  br label %2, !dbg !35

; <label>:11                                      ; preds = %2
  %12 = load i32, i32* %j, align 4, !dbg !46
  %13 = icmp eq i32 %12, 6, !dbg !47
  %14 = zext i1 %13 to i32, !dbg !47
  %15 = bitcast i32* %1 to i8*, !dbg !48
  call void @llvm.lifetime.start(i64 4, i8* %15), !dbg !48
  store i32 %14, i32* %1, align 4, !dbg !48
  %16 = load i32, i32* %1, align 4, !dbg !49
  %17 = icmp ne i32 %16, 0, !dbg !50
  br i1 %17, label %__VERIFIER_assert.exit, label %18, !dbg !51

; <label>:18                                      ; preds = %11
  call void @__VERIFIER_error() #3, !dbg !52
  br label %__VERIFIER_assert.exit, !dbg !53

__VERIFIER_assert.exit:                           ; preds = %11, %18
  %19 = bitcast i32* %1 to i8*, !dbg !54
  call void @llvm.lifetime.end(i64 4, i8* %19), !dbg !54
  ret void, !dbg !55
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
!1 = !DIFile(filename: "../../sv-comp-2016/c/loop-lit/cggmp2005_true-unreach-call.c.i", directory: "/Users/franck/development/perentiemq/programs")
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
!23 = !DILocation(line: 5, column: 14, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 4, column: 16)
!25 = !DILocation(line: 6, column: 3, scope: !24)
!26 = !DILocation(line: 7, column: 3, scope: !4)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 11, type: !7)
!28 = !DILocation(line: 11, column: 9, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 11, type: !7)
!30 = !DILocation(line: 11, column: 11, scope: !8)
!31 = !DILocation(line: 12, column: 7, scope: !8)
!32 = !DILocation(line: 13, column: 7, scope: !8)
!33 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !34)
!34 = distinct !DILocation(line: 18, column: 5, scope: !8)
!35 = !DILocation(line: 14, column: 5, scope: !8)
!36 = !DILocation(line: 14, column: 12, scope: !8)
!37 = !DILocation(line: 14, column: 17, scope: !8)
!38 = !DILocation(line: 14, column: 14, scope: !8)
!39 = !DILocation(line: 15, column: 6, scope: !40)
!40 = distinct !DILexicalBlock(scope: !8, file: !1, line: 14, column: 20)
!41 = !DILocation(line: 15, column: 8, scope: !40)
!42 = !DILocation(line: 15, column: 4, scope: !40)
!43 = !DILocation(line: 16, column: 11, scope: !40)
!44 = !DILocation(line: 16, column: 9, scope: !40)
!45 = !DILocation(line: 16, column: 4, scope: !40)
!46 = !DILocation(line: 18, column: 23, scope: !8)
!47 = !DILocation(line: 18, column: 25, scope: !8)
!48 = !DILocation(line: 18, column: 5, scope: !8)
!49 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !34)
!50 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !34)
!51 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !34)
!52 = !DILocation(line: 5, column: 14, scope: !24, inlinedAt: !34)
!53 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !34)
!54 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !34)
!55 = !DILocation(line: 19, column: 1, scope: !8)
