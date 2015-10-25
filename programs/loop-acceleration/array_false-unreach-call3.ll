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
  store i32 0, i32* %i, align 4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !35
  br label %3, !dbg !37

; <label>:3                                       ; preds = %10, %0
  %4 = load i32, i32* %i, align 4, !dbg !38
  %5 = sext i32 %4 to i64, !dbg !40
  %6 = getelementptr inbounds [1024 x i32], [1024 x i32]* %A, i32 0, i64 %5, !dbg !40
  %7 = load i32, i32* %6, align 4, !dbg !40
  %8 = icmp ne i32 %7, 0, !dbg !41
  br i1 %8, label %9, label %13, !dbg !42

; <label>:9                                       ; preds = %3
  br label %10, !dbg !43

; <label>:10                                      ; preds = %9
  %11 = load i32, i32* %i, align 4, !dbg !45
  %12 = add nsw i32 %11, 1, !dbg !45
  store i32 %12, i32* %i, align 4, !dbg !45
  br label %3, !dbg !46

; <label>:13                                      ; preds = %3
  %14 = load i32, i32* %i, align 4, !dbg !47
  %15 = icmp sle i32 %14, 1024, !dbg !48
  %16 = zext i1 %15 to i32, !dbg !48
  %17 = bitcast i32* %1 to i8*, !dbg !49
  call void @llvm.lifetime.start(i64 4, i8* %17), !dbg !49
  store i32 %16, i32* %1, align 4, !dbg !49
  %18 = load i32, i32* %1, align 4, !dbg !50
  %19 = icmp ne i32 %18, 0, !dbg !51
  br i1 %19, label %__VERIFIER_assert.exit, label %20, !dbg !52

; <label>:20                                      ; preds = %13
  call void (...) @__VERIFIER_error() #5, !dbg !53
  unreachable, !dbg !53

__VERIFIER_assert.exit:                           ; preds = %13
  %21 = bitcast i32* %1 to i8*, !dbg !54
  call void @llvm.lifetime.end(i64 4, i8* %21), !dbg !54
  %22 = load i32, i32* %2, !dbg !55
  ret i32 %22, !dbg !55
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
!1 = !DIFile(filename: "../../../sv-comp-2016/c/loop-acceleration/array_false-unreach-call3.i", directory: "/Users/franck/development/perentiemq/programs/svcomp16")
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
!33 = !DILocation(line: 11, column: 10, scope: !34)
!34 = distinct !DILexicalBlock(scope: !8, file: !1, line: 11, column: 3)
!35 = !DILocation(line: 2, column: 28, scope: !4, inlinedAt: !36)
!36 = distinct !DILocation(line: 13, column: 3, scope: !8)
!37 = !DILocation(line: 11, column: 8, scope: !34)
!38 = !DILocation(line: 11, column: 17, scope: !39)
!39 = distinct !DILexicalBlock(scope: !34, file: !1, line: 11, column: 3)
!40 = !DILocation(line: 11, column: 15, scope: !39)
!41 = !DILocation(line: 11, column: 20, scope: !39)
!42 = !DILocation(line: 11, column: 3, scope: !34)
!43 = !DILocation(line: 12, column: 3, scope: !44)
!44 = distinct !DILexicalBlock(scope: !39, file: !1, line: 11, column: 31)
!45 = !DILocation(line: 11, column: 27, scope: !39)
!46 = !DILocation(line: 11, column: 3, scope: !39)
!47 = !DILocation(line: 13, column: 21, scope: !8)
!48 = !DILocation(line: 13, column: 23, scope: !8)
!49 = !DILocation(line: 13, column: 3, scope: !8)
!50 = !DILocation(line: 3, column: 9, scope: !19, inlinedAt: !36)
!51 = !DILocation(line: 3, column: 8, scope: !19, inlinedAt: !36)
!52 = !DILocation(line: 3, column: 7, scope: !4, inlinedAt: !36)
!53 = !DILocation(line: 4, column: 12, scope: !24, inlinedAt: !36)
!54 = !DILocation(line: 6, column: 3, scope: !4, inlinedAt: !36)
!55 = !DILocation(line: 14, column: 1, scope: !8)
