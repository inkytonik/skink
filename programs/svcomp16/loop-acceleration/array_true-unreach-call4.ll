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
  %A = alloca [1024 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata [1024 x i32]* %A, metadata !26, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %i, metadata !31, metadata !16), !dbg !32
  %3 = getelementptr inbounds [1024 x i32], [1024 x i32]* %A, i32 0, i64 1023, !dbg !33
  store i32 0, i32* %3, align 4, !dbg !34
  store i32 0, i32* %i, align 4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !37
  br label %4, !dbg !39

; <label>:4                                       ; preds = %11, %0
  %5 = load i32, i32* %i, align 4, !dbg !40
  %6 = sext i32 %5 to i64, !dbg !42
  %7 = getelementptr inbounds [1024 x i32], [1024 x i32]* %A, i32 0, i64 %6, !dbg !42
  %8 = load i32, i32* %7, align 4, !dbg !42
  %9 = icmp ne i32 %8, 0, !dbg !43
  br i1 %9, label %10, label %14, !dbg !44

; <label>:10                                      ; preds = %4
  br label %11, !dbg !45

; <label>:11                                      ; preds = %10
  %12 = load i32, i32* %i, align 4, !dbg !47
  %13 = add nsw i32 %12, 1, !dbg !47
  store i32 %13, i32* %i, align 4, !dbg !47
  br label %4, !dbg !48

; <label>:14                                      ; preds = %4
  %15 = load i32, i32* %i, align 4, !dbg !49
  %16 = icmp sle i32 %15, 1024, !dbg !50
  %17 = zext i1 %16 to i32, !dbg !50
  %18 = bitcast i32* %1 to i8*, !dbg !51
  call void @llvm.lifetime.start(i64 4, i8* %18), !dbg !51
  store i32 %17, i32* %1, align 4, !dbg !51
  %19 = load i32, i32* %1, align 4, !dbg !52
  %20 = icmp ne i32 %19, 0, !dbg !53
  br i1 %20, label %__VERIFIER_assert.exit, label %21, !dbg !54

; <label>:21                                      ; preds = %14
  call void (...) @__VERIFIER_error() #5, !dbg !55
  unreachable, !dbg !55

__VERIFIER_assert.exit:                           ; preds = %14
  %22 = bitcast i32* %1 to i8*, !dbg !56
  call void @llvm.lifetime.end(i64 4, i8* %22), !dbg !56
  %23 = load i32, i32* %2, !dbg !57
  ret i32 %23, !dbg !57
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
!1 = !DIFile(filename: "../../sv-comp-2016/c/loop-acceleration/array_true-unreach-call4.i", directory: "/Users/franck/development/perentiemq/programs")
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
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32768, align: 32, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 1024)
!30 = !DILocation(line: 9, column: 7, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 10, type: !7)
!32 = !DILocation(line: 10, column: 7, scope: !8)
!33 = !DILocation(line: 11, column: 3, scope: !8)
!34 = !DILocation(line: 11, column: 14, scope: !8)
!35 = !DILocation(line: 12, column: 10, scope: !36)
!36 = distinct !DILexicalBlock(scope: !8, file: !1, line: 12, column: 3)
!37 = !DILocation(line: 2, column: 28, scope: !4, inlinedAt: !38)
!38 = distinct !DILocation(line: 14, column: 3, scope: !8)
!39 = !DILocation(line: 12, column: 8, scope: !36)
!40 = !DILocation(line: 12, column: 17, scope: !41)
!41 = distinct !DILexicalBlock(scope: !36, file: !1, line: 12, column: 3)
!42 = !DILocation(line: 12, column: 15, scope: !41)
!43 = !DILocation(line: 12, column: 20, scope: !41)
!44 = !DILocation(line: 12, column: 3, scope: !36)
!45 = !DILocation(line: 13, column: 3, scope: !46)
!46 = distinct !DILexicalBlock(scope: !41, file: !1, line: 12, column: 31)
!47 = !DILocation(line: 12, column: 27, scope: !41)
!48 = !DILocation(line: 12, column: 3, scope: !41)
!49 = !DILocation(line: 14, column: 21, scope: !8)
!50 = !DILocation(line: 14, column: 23, scope: !8)
!51 = !DILocation(line: 14, column: 3, scope: !8)
!52 = !DILocation(line: 3, column: 9, scope: !19, inlinedAt: !38)
!53 = !DILocation(line: 3, column: 8, scope: !19, inlinedAt: !38)
!54 = !DILocation(line: 3, column: 7, scope: !4, inlinedAt: !38)
!55 = !DILocation(line: 4, column: 12, scope: !24, inlinedAt: !38)
!56 = !DILocation(line: 6, column: 3, scope: !4, inlinedAt: !38)
!57 = !DILocation(line: 15, column: 1, scope: !8)
