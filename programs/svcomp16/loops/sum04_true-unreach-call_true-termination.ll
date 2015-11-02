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
  %sn = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %i, metadata !26, metadata !16), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %sn, metadata !28, metadata !16), !dbg !29
  store i32 0, i32* %sn, align 4, !dbg !29
  store i32 1, i32* %i, align 4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !32
  br label %3, !dbg !34

; <label>:3                                       ; preds = %9, %0
  %4 = load i32, i32* %i, align 4, !dbg !35
  %5 = icmp sle i32 %4, 8, !dbg !37
  br i1 %5, label %6, label %12, !dbg !38

; <label>:6                                       ; preds = %3
  %7 = load i32, i32* %sn, align 4, !dbg !39
  %8 = add nsw i32 %7, 2, !dbg !41
  store i32 %8, i32* %sn, align 4, !dbg !42
  br label %9, !dbg !43

; <label>:9                                       ; preds = %6
  %10 = load i32, i32* %i, align 4, !dbg !44
  %11 = add nsw i32 %10, 1, !dbg !44
  store i32 %11, i32* %i, align 4, !dbg !44
  br label %3, !dbg !45

; <label>:12                                      ; preds = %3
  %13 = load i32, i32* %sn, align 4, !dbg !46
  %14 = icmp eq i32 %13, 16, !dbg !47
  br i1 %14, label %18, label %15, !dbg !48

; <label>:15                                      ; preds = %12
  %16 = load i32, i32* %sn, align 4, !dbg !49
  %17 = icmp eq i32 %16, 0, !dbg !50
  br label %18, !dbg !48

; <label>:18                                      ; preds = %15, %12
  %19 = phi i1 [ true, %12 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32, !dbg !48
  %21 = bitcast i32* %1 to i8*, !dbg !51
  call void @llvm.lifetime.start(i64 4, i8* %21), !dbg !51
  store i32 %20, i32* %1, align 4, !dbg !51
  %22 = load i32, i32* %1, align 4, !dbg !52
  %23 = icmp ne i32 %22, 0, !dbg !53
  br i1 %23, label %__VERIFIER_assert.exit, label %24, !dbg !54

; <label>:24                                      ; preds = %18
  call void (...) @__VERIFIER_error() #5, !dbg !55
  unreachable, !dbg !55

__VERIFIER_assert.exit:                           ; preds = %18
  %25 = bitcast i32* %1 to i8*, !dbg !56
  call void @llvm.lifetime.end(i64 4, i8* %25), !dbg !56
  %26 = load i32, i32* %2, !dbg !57
  ret i32 %26, !dbg !57
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
!1 = !DIFile(filename: "programs/svcomp16/loops/sum04_true-unreach-call_true-termination.i", directory: ".")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !9, isLocal: false, isDefinition: true, scopeLine: 11, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 12, type: !7)
!27 = !DILocation(line: 12, column: 7, scope: !8)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sn", scope: !8, file: !1, line: 12, type: !7)
!29 = !DILocation(line: 12, column: 10, scope: !8)
!30 = !DILocation(line: 13, column: 8, scope: !31)
!31 = distinct !DILexicalBlock(scope: !8, file: !1, line: 13, column: 3)
!32 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !33)
!33 = distinct !DILocation(line: 16, column: 3, scope: !8)
!34 = !DILocation(line: 13, column: 7, scope: !31)
!35 = !DILocation(line: 13, column: 12, scope: !36)
!36 = distinct !DILexicalBlock(scope: !31, file: !1, line: 13, column: 3)
!37 = !DILocation(line: 13, column: 13, scope: !36)
!38 = !DILocation(line: 13, column: 3, scope: !31)
!39 = !DILocation(line: 14, column: 10, scope: !40)
!40 = distinct !DILexicalBlock(scope: !36, file: !1, line: 13, column: 23)
!41 = !DILocation(line: 14, column: 13, scope: !40)
!42 = !DILocation(line: 14, column: 8, scope: !40)
!43 = !DILocation(line: 15, column: 3, scope: !40)
!44 = !DILocation(line: 13, column: 19, scope: !36)
!45 = !DILocation(line: 13, column: 3, scope: !36)
!46 = !DILocation(line: 16, column: 21, scope: !8)
!47 = !DILocation(line: 16, column: 23, scope: !8)
!48 = !DILocation(line: 16, column: 31, scope: !8)
!49 = !DILocation(line: 16, column: 34, scope: !8)
!50 = !DILocation(line: 16, column: 37, scope: !8)
!51 = !DILocation(line: 16, column: 3, scope: !8)
!52 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !33)
!53 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !33)
!54 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !33)
!55 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !33)
!56 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !33)
!57 = !DILocation(line: 17, column: 1, scope: !8)
