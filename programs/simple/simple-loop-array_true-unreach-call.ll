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
  %i = alloca i32, align 4
  %a = alloca [10 x i32], align 16
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %i, metadata !26, metadata !16), !dbg !27
  store i32 0, i32* %i, align 4, !dbg !27
  call void @llvm.dbg.declare(metadata [10 x i32]* %a, metadata !28, metadata !16), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !33
  br label %3, !dbg !35

; <label>:3                                       ; preds = %6, %0
  %4 = load i32, i32* %i, align 4, !dbg !36
  %5 = icmp slt i32 %4, 10, !dbg !37
  br i1 %5, label %6, label %13, !dbg !35

; <label>:6                                       ; preds = %3
  %7 = load i32, i32* %i, align 4, !dbg !38
  %8 = load i32, i32* %i, align 4, !dbg !40
  %9 = sext i32 %8 to i64, !dbg !41
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i32 0, i64 %9, !dbg !41
  store i32 %7, i32* %10, align 4, !dbg !42
  %11 = load i32, i32* %i, align 4, !dbg !43
  %12 = add nsw i32 %11, 1, !dbg !44
  store i32 %12, i32* %i, align 4, !dbg !45
  br label %3, !dbg !35

; <label>:13                                      ; preds = %3
  %14 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i32 0, i64 3, !dbg !46
  %15 = load i32, i32* %14, align 4, !dbg !46
  %16 = icmp eq i32 %15, 3, !dbg !47
  %17 = zext i1 %16 to i32, !dbg !47
  %18 = bitcast i32* %1 to i8*, !dbg !48
  call void @llvm.lifetime.start(i64 4, i8* %18), !dbg !48
  store i32 %17, i32* %1, align 4, !dbg !48
  %19 = load i32, i32* %1, align 4, !dbg !49
  %20 = icmp ne i32 %19, 0, !dbg !50
  br i1 %20, label %__VERIFIER_assert.exit, label %21, !dbg !51

; <label>:21                                      ; preds = %13
  call void (...) @__VERIFIER_error() #5, !dbg !52
  unreachable, !dbg !52

__VERIFIER_assert.exit:                           ; preds = %13
  %22 = bitcast i32* %1 to i8*, !dbg !53
  call void @llvm.lifetime.end(i64 4, i8* %22), !dbg !53
  %23 = load i32, i32* %2, !dbg !54
  ret i32 %23, !dbg !54
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
!1 = !DIFile(filename: "programs/simple/simple-loop-array_true-unreach-call.c", directory: "/Users/franck/development/perentiemq")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !9, isLocal: false, isDefinition: true, scopeLine: 10, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 11, type: !7)
!27 = !DILocation(line: 11, column: 7, scope: !8)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !8, file: !1, line: 12, type: !29)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 320, align: 32, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 10)
!32 = !DILocation(line: 12, column: 7, scope: !8)
!33 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !34)
!34 = distinct !DILocation(line: 17, column: 3, scope: !8)
!35 = !DILocation(line: 13, column: 3, scope: !8)
!36 = !DILocation(line: 13, column: 10, scope: !8)
!37 = !DILocation(line: 13, column: 12, scope: !8)
!38 = !DILocation(line: 14, column: 12, scope: !39)
!39 = distinct !DILexicalBlock(scope: !8, file: !1, line: 13, column: 18)
!40 = !DILocation(line: 14, column: 7, scope: !39)
!41 = !DILocation(line: 14, column: 5, scope: !39)
!42 = !DILocation(line: 14, column: 10, scope: !39)
!43 = !DILocation(line: 15, column: 9, scope: !39)
!44 = !DILocation(line: 15, column: 11, scope: !39)
!45 = !DILocation(line: 15, column: 7, scope: !39)
!46 = !DILocation(line: 17, column: 21, scope: !8)
!47 = !DILocation(line: 17, column: 26, scope: !8)
!48 = !DILocation(line: 17, column: 3, scope: !8)
!49 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !34)
!50 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !34)
!51 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !34)
!52 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !34)
!53 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !34)
!54 = !DILocation(line: 18, column: 1, scope: !8)
