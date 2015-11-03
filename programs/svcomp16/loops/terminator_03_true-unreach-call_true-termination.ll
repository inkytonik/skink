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
  call void (...) @__VERIFIER_error() #5, !dbg !23
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
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %x, metadata !26, metadata !16), !dbg !27
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !28
  store i32 %3, i32* %x, align 4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %y, metadata !29, metadata !16), !dbg !30
  %4 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !31
  store i32 %4, i32* %y, align 4, !dbg !30
  %5 = load i32, i32* %y, align 4, !dbg !32
  %6 = icmp sle i32 %5, 1000000, !dbg !33
  %7 = zext i1 %6 to i32, !dbg !33
  call void (i32, ...) bitcast (void (...)* @__VERIFIER_assume to void (i32, ...)*)(i32 %7), !dbg !34
  %8 = load i32, i32* %y, align 4, !dbg !35
  %9 = icmp sgt i32 %8, 0, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !38
  br i1 %9, label %10, label %19, !dbg !40

; <label>:10                                      ; preds = %0
  br label %11, !dbg !41

; <label>:11                                      ; preds = %14, %10
  %12 = load i32, i32* %x, align 4, !dbg !43
  %13 = icmp slt i32 %12, 100, !dbg !44
  br i1 %13, label %14, label %18, !dbg !41

; <label>:14                                      ; preds = %11
  %15 = load i32, i32* %x, align 4, !dbg !45
  %16 = load i32, i32* %y, align 4, !dbg !47
  %17 = add nsw i32 %15, %16, !dbg !48
  store i32 %17, i32* %x, align 4, !dbg !49
  br label %11, !dbg !41

; <label>:18                                      ; preds = %11
  br label %19, !dbg !50

; <label>:19                                      ; preds = %18, %0
  %20 = load i32, i32* %y, align 4, !dbg !51
  %21 = icmp sle i32 %20, 0, !dbg !52
  br i1 %21, label %30, label %22, !dbg !53

; <label>:22                                      ; preds = %19
  %23 = load i32, i32* %y, align 4, !dbg !54
  %24 = icmp sgt i32 %23, 0, !dbg !55
  br i1 %24, label %25, label %28, !dbg !56

; <label>:25                                      ; preds = %22
  %26 = load i32, i32* %x, align 4, !dbg !57
  %27 = icmp sge i32 %26, 100, !dbg !58
  br label %28

; <label>:28                                      ; preds = %25, %22
  %29 = phi i1 [ false, %22 ], [ %27, %25 ]
  br label %30, !dbg !53

; <label>:30                                      ; preds = %28, %19
  %31 = phi i1 [ true, %19 ], [ %29, %28 ]
  %32 = zext i1 %31 to i32, !dbg !53
  %33 = bitcast i32* %1 to i8*, !dbg !59
  call void @llvm.lifetime.start(i64 4, i8* %33), !dbg !59
  store i32 %32, i32* %1, align 4, !dbg !59
  %34 = load i32, i32* %1, align 4, !dbg !60
  %35 = icmp ne i32 %34, 0, !dbg !61
  br i1 %35, label %__VERIFIER_assert.exit, label %36, !dbg !62

; <label>:36                                      ; preds = %30
  call void (...) @__VERIFIER_error() #6, !dbg !63
  unreachable, !dbg !63

__VERIFIER_assert.exit:                           ; preds = %30
  %37 = bitcast i32* %1 to i8*, !dbg !64
  call void @llvm.lifetime.end(i64 4, i8* %37), !dbg !64
  ret i32 0, !dbg !65
}

declare i32 @__VERIFIER_nondet_int(...) #3

declare void @__VERIFIER_assume(...) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "programs/svcomp16/loops/terminator_03_true-unreach-call_true-termination.i", directory: ".")
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
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !8, file: !1, line: 12, type: !7)
!27 = !DILocation(line: 12, column: 9, scope: !8)
!28 = !DILocation(line: 12, column: 11, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !8, file: !1, line: 13, type: !7)
!30 = !DILocation(line: 13, column: 9, scope: !8)
!31 = !DILocation(line: 13, column: 11, scope: !8)
!32 = !DILocation(line: 14, column: 23, scope: !8)
!33 = !DILocation(line: 14, column: 25, scope: !8)
!34 = !DILocation(line: 14, column: 5, scope: !8)
!35 = !DILocation(line: 15, column: 9, scope: !36)
!36 = distinct !DILexicalBlock(scope: !8, file: !1, line: 15, column: 9)
!37 = !DILocation(line: 15, column: 10, scope: !36)
!38 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !39)
!39 = distinct !DILocation(line: 20, column: 5, scope: !8)
!40 = !DILocation(line: 15, column: 9, scope: !8)
!41 = !DILocation(line: 16, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !36, file: !1, line: 15, column: 14)
!43 = !DILocation(line: 16, column: 15, scope: !42)
!44 = !DILocation(line: 16, column: 16, scope: !42)
!45 = !DILocation(line: 17, column: 15, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !1, line: 16, column: 22)
!47 = !DILocation(line: 17, column: 17, scope: !46)
!48 = !DILocation(line: 17, column: 16, scope: !46)
!49 = !DILocation(line: 17, column: 14, scope: !46)
!50 = !DILocation(line: 19, column: 5, scope: !42)
!51 = !DILocation(line: 20, column: 23, scope: !8)
!52 = !DILocation(line: 20, column: 24, scope: !8)
!53 = !DILocation(line: 20, column: 28, scope: !8)
!54 = !DILocation(line: 20, column: 32, scope: !8)
!55 = !DILocation(line: 20, column: 33, scope: !8)
!56 = !DILocation(line: 20, column: 36, scope: !8)
!57 = !DILocation(line: 20, column: 39, scope: !8)
!58 = !DILocation(line: 20, column: 40, scope: !8)
!59 = !DILocation(line: 20, column: 5, scope: !8)
!60 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !39)
!61 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !39)
!62 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !39)
!63 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !39)
!64 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !39)
!65 = !DILocation(line: 21, column: 5, scope: !8)
