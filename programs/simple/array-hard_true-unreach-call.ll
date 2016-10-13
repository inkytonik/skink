; ModuleID = '<stdin>'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
  %1 = alloca i32, align 4
  store i32 %cond, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !14, metadata !15), !dbg !16
  %2 = load i32, i32* %1, align 4, !dbg !17
  %3 = icmp ne i32 %2, 0, !dbg !19
  br i1 %3, label %6, label %4, !dbg !20

; <label>:4                                       ; preds = %0
  br label %5, !dbg !21

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

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %A = alloca [10 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata [10 x i32]* %A, metadata !26, metadata !15), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %i, metadata !31, metadata !15), !dbg !32
  store i32 0, i32* %i, align 4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %1, metadata !14, metadata !15), !dbg !35
  br label %3, !dbg !37

; <label>:3                                       ; preds = %11, %0
  %4 = load i32, i32* %i, align 4, !dbg !38
  %5 = icmp slt i32 %4, 5, !dbg !42
  br i1 %5, label %6, label %14, !dbg !43

; <label>:6                                       ; preds = %3
  %7 = load i32, i32* %i, align 4, !dbg !44
  %8 = load i32, i32* %i, align 4, !dbg !46
  %9 = sext i32 %8 to i64, !dbg !47
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i32 0, i64 %9, !dbg !47
  store i32 %7, i32* %10, align 4, !dbg !48
  br label %11, !dbg !49

; <label>:11                                      ; preds = %6
  %12 = load i32, i32* %i, align 4, !dbg !50
  %13 = add nsw i32 %12, 1, !dbg !50
  store i32 %13, i32* %i, align 4, !dbg !50
  br label %3, !dbg !51

; <label>:14                                      ; preds = %3
  %15 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i32 0, i64 4, !dbg !52
  %16 = load i32, i32* %15, align 4, !dbg !52
  %17 = icmp eq i32 %16, 4, !dbg !53
  %18 = zext i1 %17 to i32, !dbg !53
  %19 = bitcast i32* %1 to i8*, !dbg !54
  call void @llvm.lifetime.start(i64 4, i8* %19), !dbg !54
  store i32 %18, i32* %1, align 4, !dbg !54
  %20 = load i32, i32* %1, align 4, !dbg !55
  %21 = icmp ne i32 %20, 0, !dbg !56
  br i1 %21, label %__VERIFIER_assert.exit, label %22, !dbg !57

; <label>:22                                      ; preds = %14
  call void (...) @__VERIFIER_error() #5, !dbg !58
  unreachable, !dbg !58

__VERIFIER_assert.exit:                           ; preds = %14
  %23 = bitcast i32* %1 to i8*, !dbg !59
  call void @llvm.lifetime.end(i64 4, i8* %23), !dbg !59
  %24 = load i32, i32* %2, !dbg !60
  ret i32 %24, !dbg !60
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }
attributes #5 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (tags/RELEASE_371/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "../programs/simple/array-hard_true-unreach-call.c", directory: "/vagrant/distrib")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !9, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!7}
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{!"clang version 3.7.1 (tags/RELEASE_371/final)"}
!14 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 3, type: !7)
!15 = !DIExpression()
!16 = !DILocation(line: 3, column: 28, scope: !4)
!17 = !DILocation(line: 4, column: 9, scope: !18)
!18 = distinct !DILexicalBlock(scope: !4, file: !1, line: 4, column: 7)
!19 = !DILocation(line: 4, column: 8, scope: !18)
!20 = !DILocation(line: 4, column: 7, scope: !4)
!21 = !DILocation(line: 4, column: 16, scope: !22)
!22 = !DILexicalBlockFile(scope: !18, file: !1, discriminator: 1)
!23 = !DILocation(line: 5, column: 12, scope: !24)
!24 = distinct !DILexicalBlock(scope: !18, file: !1, line: 4, column: 16)
!25 = !DILocation(line: 7, column: 3, scope: !4)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "A", scope: !8, file: !1, line: 11, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 320, align: 32, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 10)
!30 = !DILocation(line: 11, column: 7, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 12, type: !7)
!32 = !DILocation(line: 12, column: 7, scope: !8)
!33 = !DILocation(line: 14, column: 10, scope: !34)
!34 = distinct !DILexicalBlock(scope: !8, file: !1, line: 14, column: 3)
!35 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !36)
!36 = distinct !DILocation(line: 18, column: 3, scope: !8)
!37 = !DILocation(line: 14, column: 8, scope: !34)
!38 = !DILocation(line: 14, column: 15, scope: !39)
!39 = !DILexicalBlockFile(scope: !40, file: !1, discriminator: 2)
!40 = !DILexicalBlockFile(scope: !41, file: !1, discriminator: 1)
!41 = distinct !DILexicalBlock(scope: !34, file: !1, line: 14, column: 3)
!42 = !DILocation(line: 14, column: 17, scope: !41)
!43 = !DILocation(line: 14, column: 3, scope: !34)
!44 = !DILocation(line: 15, column: 12, scope: !45)
!45 = distinct !DILexicalBlock(scope: !41, file: !1, line: 14, column: 27)
!46 = !DILocation(line: 15, column: 7, scope: !45)
!47 = !DILocation(line: 15, column: 5, scope: !45)
!48 = !DILocation(line: 15, column: 10, scope: !45)
!49 = !DILocation(line: 16, column: 3, scope: !45)
!50 = !DILocation(line: 14, column: 23, scope: !41)
!51 = !DILocation(line: 14, column: 3, scope: !41)
!52 = !DILocation(line: 18, column: 21, scope: !8)
!53 = !DILocation(line: 18, column: 26, scope: !8)
!54 = !DILocation(line: 18, column: 3, scope: !8)
!55 = !DILocation(line: 4, column: 9, scope: !18, inlinedAt: !36)
!56 = !DILocation(line: 4, column: 8, scope: !18, inlinedAt: !36)
!57 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !36)
!58 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !36)
!59 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !36)
!60 = !DILocation(line: 19, column: 1, scope: !8)
