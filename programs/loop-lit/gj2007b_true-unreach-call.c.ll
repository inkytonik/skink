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
  %2 = alloca i32, align 4
  %x = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %x, metadata !27, metadata !16), !dbg !28
  store i32 0, i32* %x, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %m, metadata !29, metadata !16), !dbg !30
  store i32 0, i32* %m, align 4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %n, metadata !31, metadata !16), !dbg !32
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !33
  store i32 %3, i32* %n, align 4, !dbg !32
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !16), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !36
  br label %4, !dbg !38

; <label>:4                                       ; preds = %13, %0
  %5 = load i32, i32* %x, align 4, !dbg !39
  %6 = load i32, i32* %n, align 4, !dbg !40
  %7 = icmp slt i32 %5, %6, !dbg !41
  br i1 %7, label %8, label %16, !dbg !38

; <label>:8                                       ; preds = %4
  %9 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !42
  %10 = icmp ne i32 %9, 0, !dbg !42
  br i1 %10, label %11, label %13, !dbg !45

; <label>:11                                      ; preds = %8
  %12 = load i32, i32* %x, align 4, !dbg !46
  store i32 %12, i32* %m, align 4, !dbg !48
  br label %13, !dbg !49

; <label>:13                                      ; preds = %11, %8
  %14 = load i32, i32* %x, align 4, !dbg !50
  %15 = add nsw i32 %14, 1, !dbg !51
  store i32 %15, i32* %x, align 4, !dbg !52
  br label %4, !dbg !38

; <label>:16                                      ; preds = %4
  %17 = load i32, i32* %m, align 4, !dbg !53
  %18 = icmp sge i32 %17, 0, !dbg !54
  br i1 %18, label %22, label %19, !dbg !55

; <label>:19                                      ; preds = %16
  %20 = load i32, i32* %n, align 4, !dbg !56
  %21 = icmp sle i32 %20, 0, !dbg !57
  br label %22, !dbg !55

; <label>:22                                      ; preds = %19, %16
  %23 = phi i1 [ true, %16 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32, !dbg !55
  %25 = bitcast i32* %2 to i8*, !dbg !58
  call void @llvm.lifetime.start(i64 4, i8* %25), !dbg !58
  store i32 %24, i32* %2, align 4, !dbg !58
  %26 = load i32, i32* %2, align 4, !dbg !59
  %27 = icmp ne i32 %26, 0, !dbg !60
  br i1 %27, label %__VERIFIER_assert.exit, label %28, !dbg !61

; <label>:28                                      ; preds = %22
  call void @__VERIFIER_error() #3, !dbg !62
  br label %__VERIFIER_assert.exit, !dbg !63

__VERIFIER_assert.exit:                           ; preds = %22, %28
  %29 = bitcast i32* %2 to i8*, !dbg !64
  call void @llvm.lifetime.end(i64 4, i8* %29), !dbg !64
  %30 = load i32, i32* %m, align 4, !dbg !65
  %31 = load i32, i32* %n, align 4, !dbg !66
  %32 = icmp slt i32 %30, %31, !dbg !67
  br i1 %32, label %36, label %33, !dbg !68

; <label>:33                                      ; preds = %__VERIFIER_assert.exit
  %34 = load i32, i32* %n, align 4, !dbg !69
  %35 = icmp sle i32 %34, 0, !dbg !70
  br label %36, !dbg !68

; <label>:36                                      ; preds = %33, %__VERIFIER_assert.exit
  %37 = phi i1 [ true, %__VERIFIER_assert.exit ], [ %35, %33 ]
  %38 = zext i1 %37 to i32, !dbg !68
  %39 = bitcast i32* %1 to i8*, !dbg !71
  call void @llvm.lifetime.start(i64 4, i8* %39), !dbg !71
  store i32 %38, i32* %1, align 4, !dbg !71
  %40 = load i32, i32* %1, align 4, !dbg !72
  %41 = icmp ne i32 %40, 0, !dbg !73
  br i1 %41, label %__VERIFIER_assert.exit1, label %42, !dbg !74

; <label>:42                                      ; preds = %36
  call void @__VERIFIER_error() #3, !dbg !75
  br label %__VERIFIER_assert.exit1, !dbg !76

__VERIFIER_assert.exit1:                          ; preds = %36, %42
  %43 = bitcast i32* %1 to i8*, !dbg !77
  call void @llvm.lifetime.end(i64 4, i8* %43), !dbg !77
  ret void, !dbg !78
}

declare i32 @__VERIFIER_nondet_int(...) #2

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
!1 = !DIFile(filename: "../../sv-comp-2016/c/loop-lit/gj2007b_true-unreach-call.c.i", directory: "/Users/franck/development/perentiemq/programs")
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
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !8, file: !1, line: 11, type: !7)
!28 = !DILocation(line: 11, column: 9, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !8, file: !1, line: 12, type: !7)
!30 = !DILocation(line: 12, column: 9, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !8, file: !1, line: 13, type: !7)
!32 = !DILocation(line: 13, column: 9, scope: !8)
!33 = !DILocation(line: 13, column: 13, scope: !8)
!34 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !35)
!35 = distinct !DILocation(line: 20, column: 5, scope: !8)
!36 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !37)
!37 = distinct !DILocation(line: 21, column: 5, scope: !8)
!38 = !DILocation(line: 14, column: 5, scope: !8)
!39 = !DILocation(line: 14, column: 11, scope: !8)
!40 = !DILocation(line: 14, column: 15, scope: !8)
!41 = !DILocation(line: 14, column: 13, scope: !8)
!42 = !DILocation(line: 15, column: 5, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 15, column: 5)
!44 = distinct !DILexicalBlock(scope: !8, file: !1, line: 14, column: 18)
!45 = !DILocation(line: 15, column: 5, scope: !44)
!46 = !DILocation(line: 16, column: 10, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 15, column: 30)
!48 = !DILocation(line: 16, column: 8, scope: !47)
!49 = !DILocation(line: 17, column: 2, scope: !47)
!50 = !DILocation(line: 18, column: 6, scope: !44)
!51 = !DILocation(line: 18, column: 8, scope: !44)
!52 = !DILocation(line: 18, column: 4, scope: !44)
!53 = !DILocation(line: 20, column: 24, scope: !8)
!54 = !DILocation(line: 20, column: 26, scope: !8)
!55 = !DILocation(line: 20, column: 31, scope: !8)
!56 = !DILocation(line: 20, column: 34, scope: !8)
!57 = !DILocation(line: 20, column: 36, scope: !8)
!58 = !DILocation(line: 20, column: 5, scope: !8)
!59 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !35)
!60 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !35)
!61 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !35)
!62 = !DILocation(line: 5, column: 14, scope: !24, inlinedAt: !35)
!63 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !35)
!64 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !35)
!65 = !DILocation(line: 21, column: 24, scope: !8)
!66 = !DILocation(line: 21, column: 28, scope: !8)
!67 = !DILocation(line: 21, column: 26, scope: !8)
!68 = !DILocation(line: 21, column: 30, scope: !8)
!69 = !DILocation(line: 21, column: 33, scope: !8)
!70 = !DILocation(line: 21, column: 35, scope: !8)
!71 = !DILocation(line: 21, column: 5, scope: !8)
!72 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !37)
!73 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !37)
!74 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !37)
!75 = !DILocation(line: 5, column: 14, scope: !24, inlinedAt: !37)
!76 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !37)
!77 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !37)
!78 = !DILocation(line: 22, column: 1, scope: !8)
