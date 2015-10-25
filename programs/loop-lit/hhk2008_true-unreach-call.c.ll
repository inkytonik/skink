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
  call void @__VERIFIER_error(), !dbg !23
  br label %6, !dbg !25

; <label>:6                                       ; preds = %5, %0
  ret void, !dbg !26
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @__VERIFIER_error() #2

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
  %1 = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %res = alloca i32, align 4
  %cnt = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %b, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %res, metadata !31, metadata !16), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %cnt, metadata !33, metadata !16), !dbg !34
  %2 = load i32, i32* %a, align 4, !dbg !35
  %3 = icmp sle i32 %2, 1000000, !dbg !36
  %4 = zext i1 %3 to i32, !dbg !36
  call void @__VERIFIER_assume(i32 %4), !dbg !37
  %5 = load i32, i32* %b, align 4, !dbg !38
  %6 = icmp sle i32 0, %5, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !40
  br i1 %6, label %7, label %10, !dbg !42

; <label>:7                                       ; preds = %0
  %8 = load i32, i32* %b, align 4, !dbg !43
  %9 = icmp sle i32 %8, 1000000, !dbg !44
  br label %10

; <label>:10                                      ; preds = %7, %0
  %11 = phi i1 [ false, %0 ], [ %9, %7 ]
  %12 = zext i1 %11 to i32, !dbg !42
  call void @__VERIFIER_assume(i32 %12), !dbg !45
  %13 = load i32, i32* %a, align 4, !dbg !46
  store i32 %13, i32* %res, align 4, !dbg !47
  %14 = load i32, i32* %b, align 4, !dbg !48
  store i32 %14, i32* %cnt, align 4, !dbg !49
  br label %15, !dbg !50

; <label>:15                                      ; preds = %18, %10
  %16 = load i32, i32* %cnt, align 4, !dbg !51
  %17 = icmp sgt i32 %16, 0, !dbg !52
  br i1 %17, label %18, label %23, !dbg !50

; <label>:18                                      ; preds = %15
  %19 = load i32, i32* %cnt, align 4, !dbg !53
  %20 = sub nsw i32 %19, 1, !dbg !55
  store i32 %20, i32* %cnt, align 4, !dbg !56
  %21 = load i32, i32* %res, align 4, !dbg !57
  %22 = add nsw i32 %21, 1, !dbg !58
  store i32 %22, i32* %res, align 4, !dbg !59
  br label %15, !dbg !50

; <label>:23                                      ; preds = %15
  %24 = load i32, i32* %res, align 4, !dbg !60
  %25 = load i32, i32* %a, align 4, !dbg !61
  %26 = load i32, i32* %b, align 4, !dbg !62
  %27 = add nsw i32 %25, %26, !dbg !63
  %28 = icmp eq i32 %24, %27, !dbg !64
  %29 = zext i1 %28 to i32, !dbg !64
  %30 = bitcast i32* %1 to i8*, !dbg !65
  call void @llvm.lifetime.start(i64 4, i8* %30), !dbg !65
  store i32 %29, i32* %1, align 4, !dbg !65
  %31 = load i32, i32* %1, align 4, !dbg !66
  %32 = icmp ne i32 %31, 0, !dbg !67
  br i1 %32, label %__VERIFIER_assert.exit, label %33, !dbg !68

; <label>:33                                      ; preds = %23
  call void @__VERIFIER_error() #3, !dbg !69
  br label %__VERIFIER_assert.exit, !dbg !70

__VERIFIER_assert.exit:                           ; preds = %23, %33
  %34 = bitcast i32* %1 to i8*, !dbg !71
  call void @llvm.lifetime.end(i64 4, i8* %34), !dbg !71
  ret void, !dbg !72
}

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
!1 = !DIFile(filename: "../../sv-comp-2016/c/loop-lit/hhk2008_true-unreach-call.c.i", directory: "/Users/franck/development/perentiemq/programs")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !9, isLocal: false, isDefinition: true, scopeLine: 10, isOptimized: false, function: void ()* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{null}
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
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !8, file: !1, line: 11, type: !7)
!30 = !DILocation(line: 11, column: 12, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !8, file: !1, line: 12, type: !7)
!32 = !DILocation(line: 12, column: 9, scope: !8)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cnt", scope: !8, file: !1, line: 12, type: !7)
!34 = !DILocation(line: 12, column: 14, scope: !8)
!35 = !DILocation(line: 13, column: 23, scope: !8)
!36 = !DILocation(line: 13, column: 25, scope: !8)
!37 = !DILocation(line: 13, column: 5, scope: !8)
!38 = !DILocation(line: 14, column: 28, scope: !8)
!39 = !DILocation(line: 14, column: 25, scope: !8)
!40 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !41)
!41 = distinct !DILocation(line: 21, column: 5, scope: !8)
!42 = !DILocation(line: 14, column: 30, scope: !8)
!43 = !DILocation(line: 14, column: 33, scope: !8)
!44 = !DILocation(line: 14, column: 35, scope: !8)
!45 = !DILocation(line: 14, column: 5, scope: !8)
!46 = !DILocation(line: 15, column: 11, scope: !8)
!47 = !DILocation(line: 15, column: 9, scope: !8)
!48 = !DILocation(line: 16, column: 11, scope: !8)
!49 = !DILocation(line: 16, column: 9, scope: !8)
!50 = !DILocation(line: 17, column: 5, scope: !8)
!51 = !DILocation(line: 17, column: 12, scope: !8)
!52 = !DILocation(line: 17, column: 16, scope: !8)
!53 = !DILocation(line: 18, column: 8, scope: !54)
!54 = distinct !DILexicalBlock(scope: !8, file: !1, line: 17, column: 21)
!55 = !DILocation(line: 18, column: 12, scope: !54)
!56 = !DILocation(line: 18, column: 6, scope: !54)
!57 = !DILocation(line: 19, column: 8, scope: !54)
!58 = !DILocation(line: 19, column: 12, scope: !54)
!59 = !DILocation(line: 19, column: 6, scope: !54)
!60 = !DILocation(line: 21, column: 23, scope: !8)
!61 = !DILocation(line: 21, column: 30, scope: !8)
!62 = !DILocation(line: 21, column: 34, scope: !8)
!63 = !DILocation(line: 21, column: 32, scope: !8)
!64 = !DILocation(line: 21, column: 27, scope: !8)
!65 = !DILocation(line: 21, column: 5, scope: !8)
!66 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !41)
!67 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !41)
!68 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !41)
!69 = !DILocation(line: 5, column: 14, scope: !24, inlinedAt: !41)
!70 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !41)
!71 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !41)
!72 = !DILocation(line: 22, column: 1, scope: !8)
