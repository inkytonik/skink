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
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %j, metadata !29, metadata !16), !dbg !30
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !31
  store i32 %3, i32* %i, align 4, !dbg !32
  %4 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !33
  store i32 %4, i32* %j, align 4, !dbg !34
  %5 = load i32, i32* %i, align 4, !dbg !35
  %6 = icmp sge i32 %5, 0, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !37
  br i1 %6, label %7, label %10, !dbg !41

; <label>:7                                       ; preds = %0
  %8 = load i32, i32* %j, align 4, !dbg !42
  %9 = icmp sge i32 %8, 0, !dbg !43
  br label %10

; <label>:10                                      ; preds = %7, %0
  %11 = phi i1 [ false, %0 ], [ %9, %7 ]
  %12 = zext i1 %11 to i32, !dbg !41
  call void @__VERIFIER_assume(i32 %12), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %x, metadata !45, metadata !16), !dbg !46
  %13 = load i32, i32* %i, align 4, !dbg !47
  store i32 %13, i32* %x, align 4, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %y, metadata !48, metadata !16), !dbg !49
  %14 = load i32, i32* %j, align 4, !dbg !50
  store i32 %14, i32* %y, align 4, !dbg !49
  br label %15, !dbg !51

; <label>:15                                      ; preds = %18, %10
  %16 = load i32, i32* %x, align 4, !dbg !52
  %17 = icmp ne i32 %16, 0, !dbg !53
  br i1 %17, label %18, label %23, !dbg !51

; <label>:18                                      ; preds = %15
  %19 = load i32, i32* %x, align 4, !dbg !54
  %20 = add nsw i32 %19, -1, !dbg !54
  store i32 %20, i32* %x, align 4, !dbg !54
  %21 = load i32, i32* %y, align 4, !dbg !56
  %22 = add nsw i32 %21, -1, !dbg !56
  store i32 %22, i32* %y, align 4, !dbg !56
  br label %15, !dbg !51

; <label>:23                                      ; preds = %15
  %24 = load i32, i32* %i, align 4, !dbg !57
  %25 = load i32, i32* %j, align 4, !dbg !58
  %26 = icmp eq i32 %24, %25, !dbg !59
  br i1 %26, label %27, label %36, !dbg !60

; <label>:27                                      ; preds = %23
  %28 = load i32, i32* %y, align 4, !dbg !61
  %29 = icmp eq i32 %28, 0, !dbg !62
  %30 = zext i1 %29 to i32, !dbg !62
  %31 = bitcast i32* %1 to i8*, !dbg !63
  call void @llvm.lifetime.start(i64 4, i8* %31), !dbg !63
  store i32 %30, i32* %1, align 4, !dbg !63
  %32 = load i32, i32* %1, align 4, !dbg !64
  %33 = icmp ne i32 %32, 0, !dbg !65
  br i1 %33, label %__VERIFIER_assert.exit, label %34, !dbg !66

; <label>:34                                      ; preds = %27
  call void @__VERIFIER_error() #3, !dbg !67
  br label %__VERIFIER_assert.exit, !dbg !68

__VERIFIER_assert.exit:                           ; preds = %27, %34
  %35 = bitcast i32* %1 to i8*, !dbg !69
  call void @llvm.lifetime.end(i64 4, i8* %35), !dbg !69
  br label %36, !dbg !70

; <label>:36                                      ; preds = %__VERIFIER_assert.exit, %23
  ret i32 0, !dbg !71
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
!1 = !DIFile(filename: "programs/svcomp16/loop-lit/jm2006_true-unreach-call.c.i", directory: ".")
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
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 11, type: !7)
!28 = !DILocation(line: 11, column: 9, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 11, type: !7)
!30 = !DILocation(line: 11, column: 12, scope: !8)
!31 = !DILocation(line: 12, column: 9, scope: !8)
!32 = !DILocation(line: 12, column: 7, scope: !8)
!33 = !DILocation(line: 13, column: 9, scope: !8)
!34 = !DILocation(line: 13, column: 7, scope: !8)
!35 = !DILocation(line: 14, column: 23, scope: !8)
!36 = !DILocation(line: 14, column: 25, scope: !8)
!37 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !38)
!38 = distinct !DILocation(line: 22, column: 9, scope: !39)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 21, column: 17)
!40 = distinct !DILexicalBlock(scope: !8, file: !1, line: 21, column: 9)
!41 = !DILocation(line: 14, column: 30, scope: !8)
!42 = !DILocation(line: 14, column: 33, scope: !8)
!43 = !DILocation(line: 14, column: 35, scope: !8)
!44 = !DILocation(line: 14, column: 5, scope: !8)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !8, file: !1, line: 15, type: !7)
!46 = !DILocation(line: 15, column: 9, scope: !8)
!47 = !DILocation(line: 15, column: 13, scope: !8)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !8, file: !1, line: 16, type: !7)
!49 = !DILocation(line: 16, column: 9, scope: !8)
!50 = !DILocation(line: 16, column: 13, scope: !8)
!51 = !DILocation(line: 17, column: 5, scope: !8)
!52 = !DILocation(line: 17, column: 11, scope: !8)
!53 = !DILocation(line: 17, column: 13, scope: !8)
!54 = !DILocation(line: 18, column: 10, scope: !55)
!55 = distinct !DILexicalBlock(scope: !8, file: !1, line: 17, column: 19)
!56 = !DILocation(line: 19, column: 10, scope: !55)
!57 = !DILocation(line: 21, column: 9, scope: !40)
!58 = !DILocation(line: 21, column: 14, scope: !40)
!59 = !DILocation(line: 21, column: 11, scope: !40)
!60 = !DILocation(line: 21, column: 9, scope: !8)
!61 = !DILocation(line: 22, column: 27, scope: !39)
!62 = !DILocation(line: 22, column: 29, scope: !39)
!63 = !DILocation(line: 22, column: 9, scope: !39)
!64 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !38)
!65 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !38)
!66 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !38)
!67 = !DILocation(line: 5, column: 14, scope: !24, inlinedAt: !38)
!68 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !38)
!69 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !38)
!70 = !DILocation(line: 23, column: 5, scope: !39)
!71 = !DILocation(line: 24, column: 5, scope: !8)
