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
  %lo = alloca i32, align 4
  %mid = alloca i32, align 4
  %hi = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %lo, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %mid, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %hi, metadata !31, metadata !16), !dbg !32
  store i32 0, i32* %lo, align 4, !dbg !33
  %2 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !34
  store i32 %2, i32* %mid, align 4, !dbg !35
  %3 = load i32, i32* %mid, align 4, !dbg !36
  %4 = icmp sgt i32 %3, 0, !dbg !37
  %5 = zext i1 %4 to i32, !dbg !37
  call void @__VERIFIER_assume(i32 %5), !dbg !38
  %6 = load i32, i32* %mid, align 4, !dbg !39
  %7 = mul nsw i32 2, %6, !dbg !40
  store i32 %7, i32* %hi, align 4, !dbg !41
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !42
  br label %8, !dbg !44

; <label>:8                                       ; preds = %11, %0
  %9 = load i32, i32* %mid, align 4, !dbg !45
  %10 = icmp sgt i32 %9, 0, !dbg !46
  br i1 %10, label %11, label %18, !dbg !44

; <label>:11                                      ; preds = %8
  %12 = load i32, i32* %lo, align 4, !dbg !47
  %13 = add nsw i32 %12, 1, !dbg !49
  store i32 %13, i32* %lo, align 4, !dbg !50
  %14 = load i32, i32* %hi, align 4, !dbg !51
  %15 = sub nsw i32 %14, 1, !dbg !52
  store i32 %15, i32* %hi, align 4, !dbg !53
  %16 = load i32, i32* %mid, align 4, !dbg !54
  %17 = sub nsw i32 %16, 1, !dbg !55
  store i32 %17, i32* %mid, align 4, !dbg !56
  br label %8, !dbg !44

; <label>:18                                      ; preds = %8
  %19 = load i32, i32* %lo, align 4, !dbg !57
  %20 = load i32, i32* %hi, align 4, !dbg !58
  %21 = icmp eq i32 %19, %20, !dbg !59
  %22 = zext i1 %21 to i32, !dbg !59
  %23 = bitcast i32* %1 to i8*, !dbg !60
  call void @llvm.lifetime.start(i64 4, i8* %23), !dbg !60
  store i32 %22, i32* %1, align 4, !dbg !60
  %24 = load i32, i32* %1, align 4, !dbg !61
  %25 = icmp ne i32 %24, 0, !dbg !62
  br i1 %25, label %__VERIFIER_assert.exit, label %26, !dbg !63

; <label>:26                                      ; preds = %18
  call void @__VERIFIER_error() #3, !dbg !64
  br label %__VERIFIER_assert.exit, !dbg !65

__VERIFIER_assert.exit:                           ; preds = %18, %26
  %27 = bitcast i32* %1 to i8*, !dbg !66
  call void @llvm.lifetime.end(i64 4, i8* %27), !dbg !66
  ret void, !dbg !67
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
!1 = !DIFile(filename: "../sv-comp-2016/c/loop-lit/cggmp2005_variant_true-unreach-call.c.i", directory: "/Users/franck/development/perentiemq")
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
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lo", scope: !8, file: !1, line: 11, type: !7)
!28 = !DILocation(line: 11, column: 9, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mid", scope: !8, file: !1, line: 11, type: !7)
!30 = !DILocation(line: 11, column: 13, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hi", scope: !8, file: !1, line: 11, type: !7)
!32 = !DILocation(line: 11, column: 18, scope: !8)
!33 = !DILocation(line: 12, column: 8, scope: !8)
!34 = !DILocation(line: 13, column: 11, scope: !8)
!35 = !DILocation(line: 13, column: 9, scope: !8)
!36 = !DILocation(line: 14, column: 23, scope: !8)
!37 = !DILocation(line: 14, column: 27, scope: !8)
!38 = !DILocation(line: 14, column: 5, scope: !8)
!39 = !DILocation(line: 15, column: 12, scope: !8)
!40 = !DILocation(line: 15, column: 11, scope: !8)
!41 = !DILocation(line: 15, column: 8, scope: !8)
!42 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !43)
!43 = distinct !DILocation(line: 21, column: 5, scope: !8)
!44 = !DILocation(line: 16, column: 5, scope: !8)
!45 = !DILocation(line: 16, column: 12, scope: !8)
!46 = !DILocation(line: 16, column: 16, scope: !8)
!47 = !DILocation(line: 17, column: 7, scope: !48)
!48 = distinct !DILexicalBlock(scope: !8, file: !1, line: 16, column: 21)
!49 = !DILocation(line: 17, column: 10, scope: !48)
!50 = !DILocation(line: 17, column: 5, scope: !48)
!51 = !DILocation(line: 18, column: 7, scope: !48)
!52 = !DILocation(line: 18, column: 10, scope: !48)
!53 = !DILocation(line: 18, column: 5, scope: !48)
!54 = !DILocation(line: 19, column: 8, scope: !48)
!55 = !DILocation(line: 19, column: 12, scope: !48)
!56 = !DILocation(line: 19, column: 6, scope: !48)
!57 = !DILocation(line: 21, column: 23, scope: !8)
!58 = !DILocation(line: 21, column: 29, scope: !8)
!59 = !DILocation(line: 21, column: 26, scope: !8)
!60 = !DILocation(line: 21, column: 5, scope: !8)
!61 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !43)
!62 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !43)
!63 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !43)
!64 = !DILocation(line: 5, column: 14, scope: !24, inlinedAt: !43)
!65 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !43)
!66 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !43)
!67 = !DILocation(line: 22, column: 1, scope: !8)
