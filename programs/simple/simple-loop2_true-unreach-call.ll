; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

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
  %3 = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %3
  call void @llvm.dbg.declare(metadata i32* %i, metadata !26, metadata !16), !dbg !27
  store i32 0, i32* %i, align 4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %n, metadata !28, metadata !16), !dbg !29
  store i32 0, i32* %n, align 4, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !33
  br label %4, !dbg !35

; <label>:4                                       ; preds = %__VERIFIER_assert.exit, %0
  %5 = load i32, i32* %i, align 4, !dbg !36
  %6 = load i32, i32* %n, align 4, !dbg !37
  %7 = icmp sge i32 %5, %6, !dbg !38
  br i1 %7, label %8, label %20, !dbg !35

; <label>:8                                       ; preds = %4
  %9 = load i32, i32* %i, align 4, !dbg !39
  %10 = add nsw i32 %9, 1, !dbg !39
  store i32 %10, i32* %i, align 4, !dbg !39
  %11 = load i32, i32* %i, align 4, !dbg !40
  %12 = load i32, i32* %n, align 4, !dbg !41
  %13 = icmp sge i32 %11, %12, !dbg !42
  %14 = zext i1 %13 to i32, !dbg !42
  %15 = bitcast i32* %2 to i8*, !dbg !43
  call void @llvm.lifetime.start(i64 4, i8* %15), !dbg !43
  store i32 %14, i32* %2, align 4, !dbg !43
  %16 = load i32, i32* %2, align 4, !dbg !44
  %17 = icmp ne i32 %16, 0, !dbg !45
  br i1 %17, label %__VERIFIER_assert.exit, label %18, !dbg !46

; <label>:18                                      ; preds = %8
  call void (...) @__VERIFIER_error() #5, !dbg !47
  unreachable, !dbg !47

__VERIFIER_assert.exit:                           ; preds = %8
  %19 = bitcast i32* %2 to i8*, !dbg !48
  call void @llvm.lifetime.end(i64 4, i8* %19), !dbg !48
  br label %4, !dbg !35

; <label>:20                                      ; preds = %4
  %21 = load i32, i32* %i, align 4, !dbg !49
  %22 = load i32, i32* %n, align 4, !dbg !50
  %23 = icmp sge i32 %21, %22, !dbg !51
  %24 = zext i1 %23 to i32, !dbg !51
  %25 = bitcast i32* %1 to i8*, !dbg !52
  call void @llvm.lifetime.start(i64 4, i8* %25), !dbg !52
  store i32 %24, i32* %1, align 4, !dbg !52
  %26 = load i32, i32* %1, align 4, !dbg !53
  %27 = icmp ne i32 %26, 0, !dbg !54
  br i1 %27, label %__VERIFIER_assert.exit1, label %28, !dbg !55

; <label>:28                                      ; preds = %20
  call void (...) @__VERIFIER_error() #5, !dbg !56
  unreachable, !dbg !56

__VERIFIER_assert.exit1:                          ; preds = %20
  %29 = bitcast i32* %1 to i8*, !dbg !57
  call void @llvm.lifetime.end(i64 4, i8* %29), !dbg !57
  %30 = load i32, i32* %3, !dbg !58
  ret i32 %30, !dbg !58
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
!1 = !DIFile(filename: "simple-loop2_true-unreach-call.c", directory: "/Users/asloane/Projects/PerentieMQ/perentiemq/programs/simple")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 7, type: !5, isLocal: false, isDefinition: true, scopeLine: 7, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 14, type: !9, isLocal: false, isDefinition: true, scopeLine: 14, isOptimized: false, function: i32 ()* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!7}
!11 = !{i32 2, !"Dwarf Version", i32 2}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"PIC Level", i32 2}
!14 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 7, type: !7)
!16 = !DIExpression()
!17 = !DILocation(line: 7, column: 28, scope: !4)
!18 = !DILocation(line: 8, column: 9, scope: !19)
!19 = distinct !DILexicalBlock(scope: !4, file: !1, line: 8, column: 7)
!20 = !DILocation(line: 8, column: 8, scope: !19)
!21 = !DILocation(line: 8, column: 7, scope: !4)
!22 = !DILocation(line: 8, column: 16, scope: !19)
!23 = !DILocation(line: 9, column: 12, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 8, column: 16)
!25 = !DILocation(line: 11, column: 3, scope: !4)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 15, type: !7)
!27 = !DILocation(line: 15, column: 7, scope: !8)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !8, file: !1, line: 15, type: !7)
!29 = !DILocation(line: 15, column: 14, scope: !8)
!30 = !DILocation(line: 7, column: 28, scope: !4, inlinedAt: !31)
!31 = distinct !DILocation(line: 18, column: 3, scope: !32)
!32 = distinct !DILexicalBlock(scope: !8, file: !1, line: 16, column: 19)
!33 = !DILocation(line: 7, column: 28, scope: !4, inlinedAt: !34)
!34 = distinct !DILocation(line: 20, column: 3, scope: !8)
!35 = !DILocation(line: 16, column: 3, scope: !8)
!36 = !DILocation(line: 16, column: 11, scope: !8)
!37 = !DILocation(line: 16, column: 16, scope: !8)
!38 = !DILocation(line: 16, column: 13, scope: !8)
!39 = !DILocation(line: 17, column: 6, scope: !32)
!40 = !DILocation(line: 18, column: 21, scope: !32)
!41 = !DILocation(line: 18, column: 26, scope: !32)
!42 = !DILocation(line: 18, column: 23, scope: !32)
!43 = !DILocation(line: 18, column: 3, scope: !32)
!44 = !DILocation(line: 8, column: 9, scope: !19, inlinedAt: !31)
!45 = !DILocation(line: 8, column: 8, scope: !19, inlinedAt: !31)
!46 = !DILocation(line: 8, column: 7, scope: !4, inlinedAt: !31)
!47 = !DILocation(line: 9, column: 12, scope: !24, inlinedAt: !31)
!48 = !DILocation(line: 11, column: 3, scope: !4, inlinedAt: !31)
!49 = !DILocation(line: 20, column: 21, scope: !8)
!50 = !DILocation(line: 20, column: 26, scope: !8)
!51 = !DILocation(line: 20, column: 23, scope: !8)
!52 = !DILocation(line: 20, column: 3, scope: !8)
!53 = !DILocation(line: 8, column: 9, scope: !19, inlinedAt: !34)
!54 = !DILocation(line: 8, column: 8, scope: !19, inlinedAt: !34)
!55 = !DILocation(line: 8, column: 7, scope: !4, inlinedAt: !34)
!56 = !DILocation(line: 9, column: 12, scope: !24, inlinedAt: !34)
!57 = !DILocation(line: 11, column: 3, scope: !4, inlinedAt: !34)
!58 = !DILocation(line: 21, column: 1, scope: !8)
