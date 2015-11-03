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
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %n, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %i, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %k, metadata !31, metadata !16), !dbg !32
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !33
  store i32 %3, i32* %n, align 4, !dbg !34
  %4 = load i32, i32* %n, align 4, !dbg !35
  %5 = icmp sle i32 %4, 1000000, !dbg !36
  %6 = zext i1 %5 to i32, !dbg !36
  call void @__VERIFIER_assume(i32 %6), !dbg !37
  %7 = load i32, i32* %n, align 4, !dbg !38
  store i32 %7, i32* %k, align 4, !dbg !39
  store i32 0, i32* %i, align 4, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !41
  br label %8, !dbg !44

; <label>:8                                       ; preds = %12, %0
  %9 = load i32, i32* %i, align 4, !dbg !45
  %10 = load i32, i32* %n, align 4, !dbg !46
  %11 = icmp slt i32 %9, %10, !dbg !47
  br i1 %11, label %12, label %17, !dbg !44

; <label>:12                                      ; preds = %8
  %13 = load i32, i32* %k, align 4, !dbg !48
  %14 = add nsw i32 %13, -1, !dbg !48
  store i32 %14, i32* %k, align 4, !dbg !48
  %15 = load i32, i32* %i, align 4, !dbg !50
  %16 = add nsw i32 %15, 2, !dbg !51
  store i32 %16, i32* %i, align 4, !dbg !52
  br label %8, !dbg !44

; <label>:17                                      ; preds = %8
  call void @llvm.dbg.declare(metadata i32* %j, metadata !53, metadata !16), !dbg !54
  store i32 0, i32* %j, align 4, !dbg !54
  br label %18, !dbg !55

; <label>:18                                      ; preds = %__VERIFIER_assert.exit, %17
  %19 = load i32, i32* %j, align 4, !dbg !56
  %20 = load i32, i32* %n, align 4, !dbg !57
  %21 = sdiv i32 %20, 2, !dbg !58
  %22 = icmp slt i32 %19, %21, !dbg !59
  br i1 %22, label %23, label %36, !dbg !55

; <label>:23                                      ; preds = %18
  %24 = load i32, i32* %k, align 4, !dbg !60
  %25 = icmp sgt i32 %24, 0, !dbg !61
  %26 = zext i1 %25 to i32, !dbg !61
  %27 = bitcast i32* %1 to i8*, !dbg !62
  call void @llvm.lifetime.start(i64 4, i8* %27), !dbg !62
  store i32 %26, i32* %1, align 4, !dbg !62
  %28 = load i32, i32* %1, align 4, !dbg !63
  %29 = icmp ne i32 %28, 0, !dbg !64
  br i1 %29, label %__VERIFIER_assert.exit, label %30, !dbg !65

; <label>:30                                      ; preds = %23
  call void @__VERIFIER_error() #3, !dbg !66
  br label %__VERIFIER_assert.exit, !dbg !67

__VERIFIER_assert.exit:                           ; preds = %23, %30
  %31 = bitcast i32* %1 to i8*, !dbg !68
  call void @llvm.lifetime.end(i64 4, i8* %31), !dbg !68
  %32 = load i32, i32* %k, align 4, !dbg !69
  %33 = add nsw i32 %32, -1, !dbg !69
  store i32 %33, i32* %k, align 4, !dbg !69
  %34 = load i32, i32* %j, align 4, !dbg !70
  %35 = add nsw i32 %34, 1, !dbg !70
  store i32 %35, i32* %j, align 4, !dbg !70
  br label %18, !dbg !55

; <label>:36                                      ; preds = %18
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
!1 = !DIFile(filename: "programs/svcomp16/loop-invgen/half_2_true-unreach-call.i", directory: ".")
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
!25 = !DILocation(line: 6, column: 3, scope: !24)
!26 = !DILocation(line: 7, column: 3, scope: !4)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !8, file: !1, line: 11, type: !7)
!28 = !DILocation(line: 11, column: 7, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 11, type: !7)
!30 = !DILocation(line: 11, column: 9, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !8, file: !1, line: 11, type: !7)
!32 = !DILocation(line: 11, column: 11, scope: !8)
!33 = !DILocation(line: 12, column: 7, scope: !8)
!34 = !DILocation(line: 12, column: 5, scope: !8)
!35 = !DILocation(line: 13, column: 21, scope: !8)
!36 = !DILocation(line: 13, column: 23, scope: !8)
!37 = !DILocation(line: 13, column: 3, scope: !8)
!38 = !DILocation(line: 14, column: 7, scope: !8)
!39 = !DILocation(line: 14, column: 5, scope: !8)
!40 = !DILocation(line: 15, column: 5, scope: !8)
!41 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !42)
!42 = distinct !DILocation(line: 22, column: 5, scope: !43)
!43 = distinct !DILexicalBlock(scope: !8, file: !1, line: 21, column: 20)
!44 = !DILocation(line: 16, column: 3, scope: !8)
!45 = !DILocation(line: 16, column: 10, scope: !8)
!46 = !DILocation(line: 16, column: 14, scope: !8)
!47 = !DILocation(line: 16, column: 12, scope: !8)
!48 = !DILocation(line: 17, column: 6, scope: !49)
!49 = distinct !DILexicalBlock(scope: !8, file: !1, line: 16, column: 18)
!50 = !DILocation(line: 18, column: 9, scope: !49)
!51 = !DILocation(line: 18, column: 11, scope: !49)
!52 = !DILocation(line: 18, column: 7, scope: !49)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 20, type: !7)
!54 = !DILocation(line: 20, column: 7, scope: !8)
!55 = !DILocation(line: 21, column: 3, scope: !8)
!56 = !DILocation(line: 21, column: 10, scope: !8)
!57 = !DILocation(line: 21, column: 14, scope: !8)
!58 = !DILocation(line: 21, column: 15, scope: !8)
!59 = !DILocation(line: 21, column: 12, scope: !8)
!60 = !DILocation(line: 22, column: 23, scope: !43)
!61 = !DILocation(line: 22, column: 25, scope: !43)
!62 = !DILocation(line: 22, column: 5, scope: !43)
!63 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !42)
!64 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !42)
!65 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !42)
!66 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !42)
!67 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !42)
!68 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !42)
!69 = !DILocation(line: 23, column: 6, scope: !43)
!70 = !DILocation(line: 24, column: 6, scope: !43)
!71 = !DILocation(line: 26, column: 3, scope: !8)
