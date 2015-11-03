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
  call void @__VERIFIER_error(), !dbg !23
  br label %6, !dbg !25

; <label>:6                                       ; preds = %5, %0
  ret void, !dbg !26
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @__VERIFIER_error() #2

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %res = alloca i32, align 4
  %cnt = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %a, metadata !27, metadata !16), !dbg !28
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !29
  store i32 %3, i32* %a, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %b, metadata !30, metadata !16), !dbg !31
  %4 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !32
  store i32 %4, i32* %b, align 4, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %res, metadata !33, metadata !16), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %cnt, metadata !35, metadata !16), !dbg !36
  %5 = load i32, i32* %a, align 4, !dbg !37
  %6 = icmp sle i32 %5, 1000000, !dbg !38
  %7 = zext i1 %6 to i32, !dbg !38
  call void @__VERIFIER_assume(i32 %7), !dbg !39
  %8 = load i32, i32* %b, align 4, !dbg !40
  %9 = icmp sle i32 0, %8, !dbg !41
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !42
  br i1 %9, label %10, label %13, !dbg !44

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* %b, align 4, !dbg !45
  %12 = icmp sle i32 %11, 1000000, !dbg !46
  br label %13

; <label>:13                                      ; preds = %10, %0
  %14 = phi i1 [ false, %0 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32, !dbg !44
  call void @__VERIFIER_assume(i32 %15), !dbg !47
  %16 = load i32, i32* %a, align 4, !dbg !48
  store i32 %16, i32* %res, align 4, !dbg !49
  %17 = load i32, i32* %b, align 4, !dbg !50
  store i32 %17, i32* %cnt, align 4, !dbg !51
  br label %18, !dbg !52

; <label>:18                                      ; preds = %21, %13
  %19 = load i32, i32* %cnt, align 4, !dbg !53
  %20 = icmp sgt i32 %19, 0, !dbg !54
  br i1 %20, label %21, label %26, !dbg !52

; <label>:21                                      ; preds = %18
  %22 = load i32, i32* %cnt, align 4, !dbg !55
  %23 = sub nsw i32 %22, 1, !dbg !57
  store i32 %23, i32* %cnt, align 4, !dbg !58
  %24 = load i32, i32* %res, align 4, !dbg !59
  %25 = add nsw i32 %24, 1, !dbg !60
  store i32 %25, i32* %res, align 4, !dbg !61
  br label %18, !dbg !52

; <label>:26                                      ; preds = %18
  %27 = load i32, i32* %res, align 4, !dbg !62
  %28 = load i32, i32* %a, align 4, !dbg !63
  %29 = load i32, i32* %b, align 4, !dbg !64
  %30 = add nsw i32 %28, %29, !dbg !65
  %31 = icmp eq i32 %27, %30, !dbg !66
  %32 = zext i1 %31 to i32, !dbg !66
  %33 = bitcast i32* %1 to i8*, !dbg !67
  call void @llvm.lifetime.start(i64 4, i8* %33), !dbg !67
  store i32 %32, i32* %1, align 4, !dbg !67
  %34 = load i32, i32* %1, align 4, !dbg !68
  %35 = icmp ne i32 %34, 0, !dbg !69
  br i1 %35, label %__VERIFIER_assert.exit, label %36, !dbg !70

; <label>:36                                      ; preds = %26
  call void @__VERIFIER_error() #3, !dbg !71
  br label %__VERIFIER_assert.exit, !dbg !72

__VERIFIER_assert.exit:                           ; preds = %26, %36
  %37 = bitcast i32* %1 to i8*, !dbg !73
  call void @llvm.lifetime.end(i64 4, i8* %37), !dbg !73
  ret i32 0, !dbg !74
}

declare i32 @__VERIFIER_nondet_int(...) #2

declare void @__VERIFIER_assume(i32) #2

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
!1 = !DIFile(filename: "programs/svcomp16/loop-lit/hhk2008_true-unreach-call.c.i", directory: ".")
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
!23 = !DILocation(line: 5, column: 14, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 4, column: 16)
!25 = !DILocation(line: 6, column: 3, scope: !24)
!26 = !DILocation(line: 7, column: 3, scope: !4)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !8, file: !1, line: 11, type: !7)
!28 = !DILocation(line: 11, column: 9, scope: !8)
!29 = !DILocation(line: 11, column: 13, scope: !8)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !8, file: !1, line: 12, type: !7)
!31 = !DILocation(line: 12, column: 9, scope: !8)
!32 = !DILocation(line: 12, column: 13, scope: !8)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !8, file: !1, line: 13, type: !7)
!34 = !DILocation(line: 13, column: 9, scope: !8)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cnt", scope: !8, file: !1, line: 13, type: !7)
!36 = !DILocation(line: 13, column: 14, scope: !8)
!37 = !DILocation(line: 14, column: 23, scope: !8)
!38 = !DILocation(line: 14, column: 25, scope: !8)
!39 = !DILocation(line: 14, column: 5, scope: !8)
!40 = !DILocation(line: 15, column: 28, scope: !8)
!41 = !DILocation(line: 15, column: 25, scope: !8)
!42 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !43)
!43 = distinct !DILocation(line: 22, column: 5, scope: !8)
!44 = !DILocation(line: 15, column: 30, scope: !8)
!45 = !DILocation(line: 15, column: 33, scope: !8)
!46 = !DILocation(line: 15, column: 35, scope: !8)
!47 = !DILocation(line: 15, column: 5, scope: !8)
!48 = !DILocation(line: 16, column: 11, scope: !8)
!49 = !DILocation(line: 16, column: 9, scope: !8)
!50 = !DILocation(line: 17, column: 11, scope: !8)
!51 = !DILocation(line: 17, column: 9, scope: !8)
!52 = !DILocation(line: 18, column: 5, scope: !8)
!53 = !DILocation(line: 18, column: 12, scope: !8)
!54 = !DILocation(line: 18, column: 16, scope: !8)
!55 = !DILocation(line: 19, column: 8, scope: !56)
!56 = distinct !DILexicalBlock(scope: !8, file: !1, line: 18, column: 21)
!57 = !DILocation(line: 19, column: 12, scope: !56)
!58 = !DILocation(line: 19, column: 6, scope: !56)
!59 = !DILocation(line: 20, column: 8, scope: !56)
!60 = !DILocation(line: 20, column: 12, scope: !56)
!61 = !DILocation(line: 20, column: 6, scope: !56)
!62 = !DILocation(line: 22, column: 23, scope: !8)
!63 = !DILocation(line: 22, column: 30, scope: !8)
!64 = !DILocation(line: 22, column: 34, scope: !8)
!65 = !DILocation(line: 22, column: 32, scope: !8)
!66 = !DILocation(line: 22, column: 27, scope: !8)
!67 = !DILocation(line: 22, column: 5, scope: !8)
!68 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !43)
!69 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !43)
!70 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !43)
!71 = !DILocation(line: 5, column: 14, scope: !24, inlinedAt: !43)
!72 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !43)
!73 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !43)
!74 = !DILocation(line: 23, column: 5, scope: !8)
