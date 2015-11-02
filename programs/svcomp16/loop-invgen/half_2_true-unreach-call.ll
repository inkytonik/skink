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
  store i32 %4, i32* %k, align 4, !dbg !36
  store i32 0, i32* %i, align 4, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !38
  br label %5, !dbg !41

; <label>:5                                       ; preds = %9, %0
  %6 = load i32, i32* %i, align 4, !dbg !42
  %7 = load i32, i32* %n, align 4, !dbg !43
  %8 = icmp slt i32 %6, %7, !dbg !44
  br i1 %8, label %9, label %14, !dbg !41

; <label>:9                                       ; preds = %5
  %10 = load i32, i32* %k, align 4, !dbg !45
  %11 = add nsw i32 %10, -1, !dbg !45
  store i32 %11, i32* %k, align 4, !dbg !45
  %12 = load i32, i32* %i, align 4, !dbg !47
  %13 = add nsw i32 %12, 2, !dbg !48
  store i32 %13, i32* %i, align 4, !dbg !49
  br label %5, !dbg !41

; <label>:14                                      ; preds = %5
  call void @llvm.dbg.declare(metadata i32* %j, metadata !50, metadata !16), !dbg !51
  store i32 0, i32* %j, align 4, !dbg !51
  br label %15, !dbg !52

; <label>:15                                      ; preds = %__VERIFIER_assert.exit, %14
  %16 = load i32, i32* %j, align 4, !dbg !53
  %17 = load i32, i32* %n, align 4, !dbg !54
  %18 = sdiv i32 %17, 2, !dbg !55
  %19 = icmp slt i32 %16, %18, !dbg !56
  br i1 %19, label %20, label %33, !dbg !52

; <label>:20                                      ; preds = %15
  %21 = load i32, i32* %k, align 4, !dbg !57
  %22 = icmp sgt i32 %21, 0, !dbg !58
  %23 = zext i1 %22 to i32, !dbg !58
  %24 = bitcast i32* %1 to i8*, !dbg !59
  call void @llvm.lifetime.start(i64 4, i8* %24), !dbg !59
  store i32 %23, i32* %1, align 4, !dbg !59
  %25 = load i32, i32* %1, align 4, !dbg !60
  %26 = icmp ne i32 %25, 0, !dbg !61
  br i1 %26, label %__VERIFIER_assert.exit, label %27, !dbg !62

; <label>:27                                      ; preds = %20
  call void @__VERIFIER_error() #3, !dbg !63
  br label %__VERIFIER_assert.exit, !dbg !64

__VERIFIER_assert.exit:                           ; preds = %20, %27
  %28 = bitcast i32* %1 to i8*, !dbg !65
  call void @llvm.lifetime.end(i64 4, i8* %28), !dbg !65
  %29 = load i32, i32* %k, align 4, !dbg !66
  %30 = add nsw i32 %29, -1, !dbg !66
  store i32 %30, i32* %k, align 4, !dbg !66
  %31 = load i32, i32* %j, align 4, !dbg !67
  %32 = add nsw i32 %31, 1, !dbg !67
  store i32 %32, i32* %j, align 4, !dbg !67
  br label %15, !dbg !52

; <label>:33                                      ; preds = %15
  ret i32 0, !dbg !68
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
!1 = !DIFile(filename: "programs/svcomp16/loop-invgen/half_2_true-unreach-call.i", directory: ".")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 2, type: !5, isLocal: false, isDefinition: true, scopeLine: 2, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 9, type: !9, isLocal: false, isDefinition: true, scopeLine: 9, isOptimized: false, function: i32 ()* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!7}
!11 = !{i32 2, !"Dwarf Version", i32 2}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"PIC Level", i32 2}
!14 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 2, type: !7)
!16 = !DIExpression()
!17 = !DILocation(line: 2, column: 28, scope: !4)
!18 = !DILocation(line: 3, column: 9, scope: !19)
!19 = distinct !DILexicalBlock(scope: !4, file: !1, line: 3, column: 7)
!20 = !DILocation(line: 3, column: 8, scope: !19)
!21 = !DILocation(line: 3, column: 7, scope: !4)
!22 = !DILocation(line: 3, column: 16, scope: !19)
!23 = !DILocation(line: 4, column: 12, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 3, column: 16)
!25 = !DILocation(line: 5, column: 3, scope: !24)
!26 = !DILocation(line: 6, column: 3, scope: !4)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !8, file: !1, line: 10, type: !7)
!28 = !DILocation(line: 10, column: 7, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 10, type: !7)
!30 = !DILocation(line: 10, column: 9, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !8, file: !1, line: 10, type: !7)
!32 = !DILocation(line: 10, column: 11, scope: !8)
!33 = !DILocation(line: 11, column: 7, scope: !8)
!34 = !DILocation(line: 11, column: 5, scope: !8)
!35 = !DILocation(line: 12, column: 7, scope: !8)
!36 = !DILocation(line: 12, column: 5, scope: !8)
!37 = !DILocation(line: 13, column: 5, scope: !8)
!38 = !DILocation(line: 2, column: 28, scope: !4, inlinedAt: !39)
!39 = distinct !DILocation(line: 20, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !8, file: !1, line: 19, column: 20)
!41 = !DILocation(line: 14, column: 3, scope: !8)
!42 = !DILocation(line: 14, column: 10, scope: !8)
!43 = !DILocation(line: 14, column: 14, scope: !8)
!44 = !DILocation(line: 14, column: 12, scope: !8)
!45 = !DILocation(line: 15, column: 6, scope: !46)
!46 = distinct !DILexicalBlock(scope: !8, file: !1, line: 14, column: 18)
!47 = !DILocation(line: 16, column: 9, scope: !46)
!48 = !DILocation(line: 16, column: 11, scope: !46)
!49 = !DILocation(line: 16, column: 7, scope: !46)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 18, type: !7)
!51 = !DILocation(line: 18, column: 7, scope: !8)
!52 = !DILocation(line: 19, column: 3, scope: !8)
!53 = !DILocation(line: 19, column: 10, scope: !8)
!54 = !DILocation(line: 19, column: 14, scope: !8)
!55 = !DILocation(line: 19, column: 15, scope: !8)
!56 = !DILocation(line: 19, column: 12, scope: !8)
!57 = !DILocation(line: 20, column: 23, scope: !40)
!58 = !DILocation(line: 20, column: 25, scope: !40)
!59 = !DILocation(line: 20, column: 5, scope: !40)
!60 = !DILocation(line: 3, column: 9, scope: !19, inlinedAt: !39)
!61 = !DILocation(line: 3, column: 8, scope: !19, inlinedAt: !39)
!62 = !DILocation(line: 3, column: 7, scope: !4, inlinedAt: !39)
!63 = !DILocation(line: 4, column: 12, scope: !24, inlinedAt: !39)
!64 = !DILocation(line: 5, column: 3, scope: !24, inlinedAt: !39)
!65 = !DILocation(line: 6, column: 3, scope: !4, inlinedAt: !39)
!66 = !DILocation(line: 21, column: 6, scope: !40)
!67 = !DILocation(line: 22, column: 6, scope: !40)
!68 = !DILocation(line: 24, column: 3, scope: !8)
