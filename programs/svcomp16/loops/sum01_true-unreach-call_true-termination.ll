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
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %sn = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %i, metadata !26, metadata !16), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %n, metadata !28, metadata !16), !dbg !29
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !30
  store i32 %3, i32* %n, align 4, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %sn, metadata !31, metadata !16), !dbg !32
  store i32 0, i32* %sn, align 4, !dbg !32
  %4 = load i32, i32* %n, align 4, !dbg !33
  %5 = icmp slt i32 %4, 1000, !dbg !34
  %6 = zext i1 %5 to i32, !dbg !34
  %7 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*)(i32 %6), !dbg !35
  store i32 1, i32* %i, align 4, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !38
  br label %8, !dbg !40

; <label>:8                                       ; preds = %15, %0
  %9 = load i32, i32* %i, align 4, !dbg !41
  %10 = load i32, i32* %n, align 4, !dbg !43
  %11 = icmp sle i32 %9, %10, !dbg !44
  br i1 %11, label %12, label %18, !dbg !45

; <label>:12                                      ; preds = %8
  %13 = load i32, i32* %sn, align 4, !dbg !46
  %14 = add nsw i32 %13, 2, !dbg !48
  store i32 %14, i32* %sn, align 4, !dbg !49
  br label %15, !dbg !50

; <label>:15                                      ; preds = %12
  %16 = load i32, i32* %i, align 4, !dbg !51
  %17 = add nsw i32 %16, 1, !dbg !51
  store i32 %17, i32* %i, align 4, !dbg !51
  br label %8, !dbg !52

; <label>:18                                      ; preds = %8
  %19 = load i32, i32* %sn, align 4, !dbg !53
  %20 = load i32, i32* %n, align 4, !dbg !54
  %21 = mul nsw i32 %20, 2, !dbg !55
  %22 = icmp eq i32 %19, %21, !dbg !56
  br i1 %22, label %26, label %23, !dbg !57

; <label>:23                                      ; preds = %18
  %24 = load i32, i32* %sn, align 4, !dbg !58
  %25 = icmp eq i32 %24, 0, !dbg !59
  br label %26, !dbg !57

; <label>:26                                      ; preds = %23, %18
  %27 = phi i1 [ true, %18 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32, !dbg !57
  %29 = bitcast i32* %1 to i8*, !dbg !60
  call void @llvm.lifetime.start(i64 4, i8* %29), !dbg !60
  store i32 %28, i32* %1, align 4, !dbg !60
  %30 = load i32, i32* %1, align 4, !dbg !61
  %31 = icmp ne i32 %30, 0, !dbg !62
  br i1 %31, label %__VERIFIER_assert.exit, label %32, !dbg !63

; <label>:32                                      ; preds = %26
  call void (...) @__VERIFIER_error() #6, !dbg !64
  unreachable, !dbg !64

__VERIFIER_assert.exit:                           ; preds = %26
  %33 = bitcast i32* %1 to i8*, !dbg !65
  call void @llvm.lifetime.end(i64 4, i8* %33), !dbg !65
  %34 = load i32, i32* %2, !dbg !66
  ret i32 %34, !dbg !66
}

declare i32 @__VERIFIER_nondet_int(...) #3

declare i32 @__VERIFIER_assume(...) #3

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
!1 = !DIFile(filename: "programs/svcomp16/loops/sum01_true-unreach-call_true-termination.i", directory: ".")
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
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !8, file: !1, line: 11, type: !7)
!29 = !DILocation(line: 11, column: 10, scope: !8)
!30 = !DILocation(line: 11, column: 12, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sn", scope: !8, file: !1, line: 11, type: !7)
!32 = !DILocation(line: 11, column: 37, scope: !8)
!33 = !DILocation(line: 12, column: 21, scope: !8)
!34 = !DILocation(line: 12, column: 23, scope: !8)
!35 = !DILocation(line: 12, column: 3, scope: !8)
!36 = !DILocation(line: 13, column: 8, scope: !37)
!37 = distinct !DILexicalBlock(scope: !8, file: !1, line: 13, column: 3)
!38 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !39)
!39 = distinct !DILocation(line: 16, column: 3, scope: !8)
!40 = !DILocation(line: 13, column: 7, scope: !37)
!41 = !DILocation(line: 13, column: 12, scope: !42)
!42 = distinct !DILexicalBlock(scope: !37, file: !1, line: 13, column: 3)
!43 = !DILocation(line: 13, column: 15, scope: !42)
!44 = !DILocation(line: 13, column: 13, scope: !42)
!45 = !DILocation(line: 13, column: 3, scope: !37)
!46 = !DILocation(line: 14, column: 10, scope: !47)
!47 = distinct !DILexicalBlock(scope: !42, file: !1, line: 13, column: 23)
!48 = !DILocation(line: 14, column: 13, scope: !47)
!49 = !DILocation(line: 14, column: 8, scope: !47)
!50 = !DILocation(line: 15, column: 3, scope: !47)
!51 = !DILocation(line: 13, column: 19, scope: !42)
!52 = !DILocation(line: 13, column: 3, scope: !42)
!53 = !DILocation(line: 16, column: 21, scope: !8)
!54 = !DILocation(line: 16, column: 25, scope: !8)
!55 = !DILocation(line: 16, column: 26, scope: !8)
!56 = !DILocation(line: 16, column: 23, scope: !8)
!57 = !DILocation(line: 16, column: 31, scope: !8)
!58 = !DILocation(line: 16, column: 34, scope: !8)
!59 = !DILocation(line: 16, column: 37, scope: !8)
!60 = !DILocation(line: 16, column: 3, scope: !8)
!61 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !39)
!62 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !39)
!63 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !39)
!64 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !39)
!65 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !39)
!66 = !DILocation(line: 17, column: 1, scope: !8)
