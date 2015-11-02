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
  %A = alloca [2048 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata [2048 x i32]* %A, metadata !26, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %i, metadata !31, metadata !16), !dbg !32
  store i32 0, i32* %i, align 4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !35
  br label %3, !dbg !37

; <label>:3                                       ; preds = %11, %0
  %4 = load i32, i32* %i, align 4, !dbg !38
  %5 = icmp slt i32 %4, 1024, !dbg !40
  br i1 %5, label %6, label %14, !dbg !41

; <label>:6                                       ; preds = %3
  %7 = load i32, i32* %i, align 4, !dbg !42
  %8 = load i32, i32* %i, align 4, !dbg !44
  %9 = sext i32 %8 to i64, !dbg !45
  %10 = getelementptr inbounds [2048 x i32], [2048 x i32]* %A, i32 0, i64 %9, !dbg !45
  store i32 %7, i32* %10, align 4, !dbg !46
  br label %11, !dbg !47

; <label>:11                                      ; preds = %6
  %12 = load i32, i32* %i, align 4, !dbg !48
  %13 = add nsw i32 %12, 1, !dbg !48
  store i32 %13, i32* %i, align 4, !dbg !48
  br label %3, !dbg !49

; <label>:14                                      ; preds = %3
  %15 = getelementptr inbounds [2048 x i32], [2048 x i32]* %A, i32 0, i64 1023, !dbg !50
  %16 = load i32, i32* %15, align 4, !dbg !50
  %17 = icmp eq i32 %16, 1023, !dbg !51
  %18 = zext i1 %17 to i32, !dbg !51
  %19 = bitcast i32* %1 to i8*, !dbg !52
  call void @llvm.lifetime.start(i64 4, i8* %19), !dbg !52
  store i32 %18, i32* %1, align 4, !dbg !52
  %20 = load i32, i32* %1, align 4, !dbg !53
  %21 = icmp ne i32 %20, 0, !dbg !54
  br i1 %21, label %__VERIFIER_assert.exit, label %22, !dbg !55

; <label>:22                                      ; preds = %14
  call void (...) @__VERIFIER_error() #5, !dbg !56
  unreachable, !dbg !56

__VERIFIER_assert.exit:                           ; preds = %14
  %23 = bitcast i32* %1 to i8*, !dbg !57
  call void @llvm.lifetime.end(i64 4, i8* %23), !dbg !57
  %24 = load i32, i32* %2, !dbg !58
  ret i32 %24, !dbg !58
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
!1 = !DIFile(filename: "programs/svcomp16/loop-acceleration/array_true-unreach-call1.i", directory: ".")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 2, type: !5, isLocal: false, isDefinition: true, scopeLine: 2, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 8, type: !9, isLocal: false, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!7}
!11 = !{i32 2, !"Dwarf Version", i32 2}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"PIC Level", i32 2}
!14 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 2, type: !7)
!16 = !DIExpression()
!17 = !DILocation(line: 2, column: 28, scope: !4)
!18 = !DILocation(line: 3, column: 9, scope: !19)
!19 = distinct !DILexicalBlock(scope: !4, file: !1, line: 3, column: 7)
!20 = !DILocation(line: 3, column: 8, scope: !19)
!21 = !DILocation(line: 3, column: 7, scope: !4)
!22 = !DILocation(line: 3, column: 16, scope: !19)
!23 = !DILocation(line: 4, column: 12, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 3, column: 16)
!25 = !DILocation(line: 6, column: 3, scope: !4)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "A", scope: !8, file: !1, line: 9, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 65536, align: 32, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 2048)
!30 = !DILocation(line: 9, column: 7, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 10, type: !7)
!32 = !DILocation(line: 10, column: 7, scope: !8)
!33 = !DILocation(line: 11, column: 10, scope: !34)
!34 = distinct !DILexicalBlock(scope: !8, file: !1, line: 11, column: 3)
!35 = !DILocation(line: 2, column: 28, scope: !4, inlinedAt: !36)
!36 = distinct !DILocation(line: 14, column: 3, scope: !8)
!37 = !DILocation(line: 11, column: 8, scope: !34)
!38 = !DILocation(line: 11, column: 15, scope: !39)
!39 = distinct !DILexicalBlock(scope: !34, file: !1, line: 11, column: 3)
!40 = !DILocation(line: 11, column: 17, scope: !39)
!41 = !DILocation(line: 11, column: 3, scope: !34)
!42 = !DILocation(line: 12, column: 12, scope: !43)
!43 = distinct !DILexicalBlock(scope: !39, file: !1, line: 11, column: 30)
!44 = !DILocation(line: 12, column: 7, scope: !43)
!45 = !DILocation(line: 12, column: 5, scope: !43)
!46 = !DILocation(line: 12, column: 10, scope: !43)
!47 = !DILocation(line: 13, column: 3, scope: !43)
!48 = !DILocation(line: 11, column: 26, scope: !39)
!49 = !DILocation(line: 11, column: 3, scope: !39)
!50 = !DILocation(line: 14, column: 21, scope: !8)
!51 = !DILocation(line: 14, column: 29, scope: !8)
!52 = !DILocation(line: 14, column: 3, scope: !8)
!53 = !DILocation(line: 3, column: 9, scope: !19, inlinedAt: !36)
!54 = !DILocation(line: 3, column: 8, scope: !19, inlinedAt: !36)
!55 = !DILocation(line: 3, column: 7, scope: !4, inlinedAt: !36)
!56 = !DILocation(line: 4, column: 12, scope: !24, inlinedAt: !36)
!57 = !DILocation(line: 6, column: 3, scope: !4, inlinedAt: !36)
!58 = !DILocation(line: 15, column: 1, scope: !8)
