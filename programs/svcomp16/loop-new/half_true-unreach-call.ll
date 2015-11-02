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
  %k = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !16), !dbg !28
  store i32 0, i32* %i, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %n, metadata !29, metadata !16), !dbg !30
  store i32 0, i32* %n, align 4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %k, metadata !31, metadata !16), !dbg !32
  %2 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !33
  store i32 %2, i32* %k, align 4, !dbg !32
  %3 = load i32, i32* %k, align 4, !dbg !34
  %4 = icmp sle i32 %3, 1000000, !dbg !35
  %5 = zext i1 %4 to i32, !dbg !35
  call void @__VERIFIER_assume(i32 %5), !dbg !36
  store i32 0, i32* %i, align 4, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !39
  br label %6, !dbg !41

; <label>:6                                       ; preds = %19, %0
  %7 = load i32, i32* %i, align 4, !dbg !42
  %8 = load i32, i32* %k, align 4, !dbg !44
  %9 = mul nsw i32 2, %8, !dbg !45
  %10 = icmp slt i32 %7, %9, !dbg !46
  br i1 %10, label %11, label %22, !dbg !47

; <label>:11                                      ; preds = %6
  %12 = load i32, i32* %i, align 4, !dbg !48
  %13 = srem i32 %12, 2, !dbg !51
  %14 = icmp eq i32 %13, 0, !dbg !52
  br i1 %14, label %15, label %18, !dbg !53

; <label>:15                                      ; preds = %11
  %16 = load i32, i32* %n, align 4, !dbg !54
  %17 = add nsw i32 %16, 1, !dbg !54
  store i32 %17, i32* %n, align 4, !dbg !54
  br label %18, !dbg !56

; <label>:18                                      ; preds = %15, %11
  br label %19, !dbg !57

; <label>:19                                      ; preds = %18
  %20 = load i32, i32* %i, align 4, !dbg !58
  %21 = add nsw i32 %20, 1, !dbg !58
  store i32 %21, i32* %i, align 4, !dbg !58
  br label %6, !dbg !59

; <label>:22                                      ; preds = %6
  %23 = load i32, i32* %k, align 4, !dbg !60
  %24 = icmp slt i32 %23, 0, !dbg !61
  br i1 %24, label %29, label %25, !dbg !62

; <label>:25                                      ; preds = %22
  %26 = load i32, i32* %n, align 4, !dbg !63
  %27 = load i32, i32* %k, align 4, !dbg !64
  %28 = icmp eq i32 %26, %27, !dbg !65
  br label %29, !dbg !62

; <label>:29                                      ; preds = %25, %22
  %30 = phi i1 [ true, %22 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32, !dbg !62
  %32 = bitcast i32* %1 to i8*, !dbg !66
  call void @llvm.lifetime.start(i64 4, i8* %32), !dbg !66
  store i32 %31, i32* %1, align 4, !dbg !66
  %33 = load i32, i32* %1, align 4, !dbg !67
  %34 = icmp ne i32 %33, 0, !dbg !68
  br i1 %34, label %__VERIFIER_assert.exit, label %35, !dbg !69

; <label>:35                                      ; preds = %29
  call void @__VERIFIER_error() #3, !dbg !70
  br label %__VERIFIER_assert.exit, !dbg !71

__VERIFIER_assert.exit:                           ; preds = %29, %35
  %36 = bitcast i32* %1 to i8*, !dbg !72
  call void @llvm.lifetime.end(i64 4, i8* %36), !dbg !72
  ret void, !dbg !73
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
!1 = !DIFile(filename: "programs/svcomp16/loop-new/half_true-unreach-call.i", directory: ".")
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
!23 = !DILocation(line: 5, column: 10, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 4, column: 16)
!25 = !DILocation(line: 6, column: 3, scope: !24)
!26 = !DILocation(line: 7, column: 3, scope: !4)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 11, type: !7)
!28 = !DILocation(line: 11, column: 9, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !8, file: !1, line: 12, type: !7)
!30 = !DILocation(line: 12, column: 9, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !8, file: !1, line: 13, type: !7)
!32 = !DILocation(line: 13, column: 9, scope: !8)
!33 = !DILocation(line: 13, column: 13, scope: !8)
!34 = !DILocation(line: 14, column: 23, scope: !8)
!35 = !DILocation(line: 14, column: 25, scope: !8)
!36 = !DILocation(line: 14, column: 5, scope: !8)
!37 = !DILocation(line: 15, column: 11, scope: !38)
!38 = distinct !DILexicalBlock(scope: !8, file: !1, line: 15, column: 5)
!39 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !40)
!40 = distinct !DILocation(line: 20, column: 5, scope: !8)
!41 = !DILocation(line: 15, column: 9, scope: !38)
!42 = !DILocation(line: 15, column: 16, scope: !43)
!43 = distinct !DILexicalBlock(scope: !38, file: !1, line: 15, column: 5)
!44 = !DILocation(line: 15, column: 22, scope: !43)
!45 = !DILocation(line: 15, column: 21, scope: !43)
!46 = !DILocation(line: 15, column: 18, scope: !43)
!47 = !DILocation(line: 15, column: 5, scope: !38)
!48 = !DILocation(line: 16, column: 6, scope: !49)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 16, column: 6)
!50 = distinct !DILexicalBlock(scope: !43, file: !1, line: 15, column: 30)
!51 = !DILocation(line: 16, column: 8, scope: !49)
!52 = !DILocation(line: 16, column: 12, scope: !49)
!53 = !DILocation(line: 16, column: 6, scope: !50)
!54 = !DILocation(line: 17, column: 8, scope: !55)
!55 = distinct !DILexicalBlock(scope: !49, file: !1, line: 16, column: 18)
!56 = !DILocation(line: 18, column: 2, scope: !55)
!57 = !DILocation(line: 19, column: 5, scope: !50)
!58 = !DILocation(line: 15, column: 26, scope: !43)
!59 = !DILocation(line: 15, column: 5, scope: !43)
!60 = !DILocation(line: 20, column: 23, scope: !8)
!61 = !DILocation(line: 20, column: 25, scope: !8)
!62 = !DILocation(line: 20, column: 29, scope: !8)
!63 = !DILocation(line: 20, column: 32, scope: !8)
!64 = !DILocation(line: 20, column: 37, scope: !8)
!65 = !DILocation(line: 20, column: 34, scope: !8)
!66 = !DILocation(line: 20, column: 5, scope: !8)
!67 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !40)
!68 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !40)
!69 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !40)
!70 = !DILocation(line: 5, column: 10, scope: !24, inlinedAt: !40)
!71 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !40)
!72 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !40)
!73 = !DILocation(line: 21, column: 1, scope: !8)
