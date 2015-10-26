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
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %n, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %a, metadata !31, metadata !16), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %b, metadata !33, metadata !16), !dbg !34
  store i32 0, i32* %i, align 4, !dbg !35
  store i32 0, i32* %a, align 4, !dbg !36
  store i32 0, i32* %b, align 4, !dbg !37
  %2 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !38
  store i32 %2, i32* %n, align 4, !dbg !39
  %3 = load i32, i32* %n, align 4, !dbg !40
  %4 = icmp sge i32 %3, 0, !dbg !41
  %5 = zext i1 %4 to i32, !dbg !41
  call void @__VERIFIER_assume(i32 %5), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !43
  br label %6, !dbg !45

; <label>:6                                       ; preds = %23, %0
  %7 = load i32, i32* %i, align 4, !dbg !46
  %8 = load i32, i32* %n, align 4, !dbg !47
  %9 = icmp slt i32 %7, %8, !dbg !48
  br i1 %9, label %10, label %26, !dbg !45

; <label>:10                                      ; preds = %6
  %11 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !49
  %12 = icmp ne i32 %11, 0, !dbg !49
  br i1 %12, label %13, label %18, !dbg !52

; <label>:13                                      ; preds = %10
  %14 = load i32, i32* %a, align 4, !dbg !53
  %15 = add nsw i32 %14, 1, !dbg !55
  store i32 %15, i32* %a, align 4, !dbg !56
  %16 = load i32, i32* %b, align 4, !dbg !57
  %17 = add nsw i32 %16, 2, !dbg !58
  store i32 %17, i32* %b, align 4, !dbg !59
  br label %23, !dbg !60

; <label>:18                                      ; preds = %10
  %19 = load i32, i32* %a, align 4, !dbg !61
  %20 = add nsw i32 %19, 2, !dbg !63
  store i32 %20, i32* %a, align 4, !dbg !64
  %21 = load i32, i32* %b, align 4, !dbg !65
  %22 = add nsw i32 %21, 1, !dbg !66
  store i32 %22, i32* %b, align 4, !dbg !67
  br label %23

; <label>:23                                      ; preds = %18, %13
  %24 = load i32, i32* %i, align 4, !dbg !68
  %25 = add nsw i32 %24, 1, !dbg !69
  store i32 %25, i32* %i, align 4, !dbg !70
  br label %6, !dbg !45

; <label>:26                                      ; preds = %6
  %27 = load i32, i32* %a, align 4, !dbg !71
  %28 = load i32, i32* %b, align 4, !dbg !72
  %29 = add nsw i32 %27, %28, !dbg !73
  %30 = load i32, i32* %n, align 4, !dbg !74
  %31 = mul nsw i32 3, %30, !dbg !75
  %32 = icmp eq i32 %29, %31, !dbg !76
  %33 = zext i1 %32 to i32, !dbg !76
  %34 = bitcast i32* %1 to i8*, !dbg !77
  call void @llvm.lifetime.start(i64 4, i8* %34), !dbg !77
  store i32 %33, i32* %1, align 4, !dbg !77
  %35 = load i32, i32* %1, align 4, !dbg !78
  %36 = icmp ne i32 %35, 0, !dbg !79
  br i1 %36, label %__VERIFIER_assert.exit, label %37, !dbg !80

; <label>:37                                      ; preds = %26
  call void @__VERIFIER_error() #3, !dbg !81
  br label %__VERIFIER_assert.exit, !dbg !82

__VERIFIER_assert.exit:                           ; preds = %26, %37
  %38 = bitcast i32* %1 to i8*, !dbg !83
  call void @llvm.lifetime.end(i64 4, i8* %38), !dbg !83
  ret void, !dbg !84
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
!1 = !DIFile(filename: "../../sv-comp-2016/c/loop-lit/bhmr2007_true-unreach-call.c.i", directory: "/Users/franck/development/perentiemq/programs")
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
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 11, type: !7)
!28 = !DILocation(line: 11, column: 9, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !8, file: !1, line: 11, type: !7)
!30 = !DILocation(line: 11, column: 12, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !8, file: !1, line: 11, type: !7)
!32 = !DILocation(line: 11, column: 15, scope: !8)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !8, file: !1, line: 11, type: !7)
!34 = !DILocation(line: 11, column: 18, scope: !8)
!35 = !DILocation(line: 12, column: 7, scope: !8)
!36 = !DILocation(line: 12, column: 14, scope: !8)
!37 = !DILocation(line: 12, column: 21, scope: !8)
!38 = !DILocation(line: 12, column: 30, scope: !8)
!39 = !DILocation(line: 12, column: 28, scope: !8)
!40 = !DILocation(line: 13, column: 23, scope: !8)
!41 = !DILocation(line: 13, column: 25, scope: !8)
!42 = !DILocation(line: 13, column: 5, scope: !8)
!43 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !44)
!44 = distinct !DILocation(line: 24, column: 5, scope: !8)
!45 = !DILocation(line: 14, column: 5, scope: !8)
!46 = !DILocation(line: 14, column: 12, scope: !8)
!47 = !DILocation(line: 14, column: 16, scope: !8)
!48 = !DILocation(line: 14, column: 14, scope: !8)
!49 = !DILocation(line: 15, column: 6, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 15, column: 6)
!51 = distinct !DILexicalBlock(scope: !8, file: !1, line: 14, column: 19)
!52 = !DILocation(line: 15, column: 6, scope: !51)
!53 = !DILocation(line: 16, column: 10, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 15, column: 31)
!55 = !DILocation(line: 16, column: 12, scope: !54)
!56 = !DILocation(line: 16, column: 8, scope: !54)
!57 = !DILocation(line: 17, column: 10, scope: !54)
!58 = !DILocation(line: 17, column: 12, scope: !54)
!59 = !DILocation(line: 17, column: 8, scope: !54)
!60 = !DILocation(line: 18, column: 2, scope: !54)
!61 = !DILocation(line: 19, column: 10, scope: !62)
!62 = distinct !DILexicalBlock(scope: !50, file: !1, line: 18, column: 9)
!63 = !DILocation(line: 19, column: 12, scope: !62)
!64 = !DILocation(line: 19, column: 8, scope: !62)
!65 = !DILocation(line: 20, column: 10, scope: !62)
!66 = !DILocation(line: 20, column: 12, scope: !62)
!67 = !DILocation(line: 20, column: 8, scope: !62)
!68 = !DILocation(line: 22, column: 6, scope: !51)
!69 = !DILocation(line: 22, column: 8, scope: !51)
!70 = !DILocation(line: 22, column: 4, scope: !51)
!71 = !DILocation(line: 24, column: 23, scope: !8)
!72 = !DILocation(line: 24, column: 27, scope: !8)
!73 = !DILocation(line: 24, column: 25, scope: !8)
!74 = !DILocation(line: 24, column: 34, scope: !8)
!75 = !DILocation(line: 24, column: 33, scope: !8)
!76 = !DILocation(line: 24, column: 29, scope: !8)
!77 = !DILocation(line: 24, column: 5, scope: !8)
!78 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !44)
!79 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !44)
!80 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !44)
!81 = !DILocation(line: 5, column: 14, scope: !24, inlinedAt: !44)
!82 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !44)
!83 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !44)
!84 = !DILocation(line: 25, column: 1, scope: !8)
