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
define void @main() #0 {
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
  %1 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !38
  store i32 %1, i32* %n, align 4, !dbg !39
  %2 = load i32, i32* %n, align 4, !dbg !40
  %3 = icmp sge i32 %2, 0, !dbg !41
  %4 = zext i1 %3 to i32, !dbg !41
  call void @__VERIFIER_assume(i32 %4), !dbg !42
  br label %5, !dbg !43

; <label>:5                                       ; preds = %22, %0
  %6 = load i32, i32* %i, align 4, !dbg !44
  %7 = load i32, i32* %n, align 4, !dbg !45
  %8 = icmp slt i32 %6, %7, !dbg !46
  br i1 %8, label %9, label %25, !dbg !43

; <label>:9                                       ; preds = %5
  %10 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !47
  %11 = icmp ne i32 %10, 0, !dbg !47
  br i1 %11, label %12, label %17, !dbg !50

; <label>:12                                      ; preds = %9
  %13 = load i32, i32* %a, align 4, !dbg !51
  %14 = add nsw i32 %13, 1, !dbg !53
  store i32 %14, i32* %a, align 4, !dbg !54
  %15 = load i32, i32* %b, align 4, !dbg !55
  %16 = add nsw i32 %15, 2, !dbg !56
  store i32 %16, i32* %b, align 4, !dbg !57
  br label %22, !dbg !58

; <label>:17                                      ; preds = %9
  %18 = load i32, i32* %a, align 4, !dbg !59
  %19 = add nsw i32 %18, 2, !dbg !61
  store i32 %19, i32* %a, align 4, !dbg !62
  %20 = load i32, i32* %b, align 4, !dbg !63
  %21 = add nsw i32 %20, 1, !dbg !64
  store i32 %21, i32* %b, align 4, !dbg !65
  br label %22

; <label>:22                                      ; preds = %17, %12
  %23 = load i32, i32* %i, align 4, !dbg !66
  %24 = add nsw i32 %23, 1, !dbg !67
  store i32 %24, i32* %i, align 4, !dbg !68
  br label %5, !dbg !43

; <label>:25                                      ; preds = %5
  %26 = load i32, i32* %a, align 4, !dbg !69
  %27 = load i32, i32* %b, align 4, !dbg !70
  %28 = add nsw i32 %26, %27, !dbg !71
  %29 = load i32, i32* %n, align 4, !dbg !72
  %30 = mul nsw i32 3, %29, !dbg !73
  %31 = icmp eq i32 %28, %30, !dbg !74
  %32 = zext i1 %31 to i32, !dbg !74
  %33 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 %32), !dbg !75
  ret void, !dbg !76
}

declare i32 @__VERIFIER_nondet_int(...) #2

declare void @__VERIFIER_assume(i32) #2

declare i32 @assert(...) #2

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "bhmr2007_true-unreach-call.c.i", directory: "/Users/asloane/Projects/SV-COMP/sv-benchmarks/c/loop-lit")
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
!43 = !DILocation(line: 14, column: 5, scope: !8)
!44 = !DILocation(line: 14, column: 12, scope: !8)
!45 = !DILocation(line: 14, column: 16, scope: !8)
!46 = !DILocation(line: 14, column: 14, scope: !8)
!47 = !DILocation(line: 15, column: 6, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 15, column: 6)
!49 = distinct !DILexicalBlock(scope: !8, file: !1, line: 14, column: 19)
!50 = !DILocation(line: 15, column: 6, scope: !49)
!51 = !DILocation(line: 16, column: 10, scope: !52)
!52 = distinct !DILexicalBlock(scope: !48, file: !1, line: 15, column: 31)
!53 = !DILocation(line: 16, column: 12, scope: !52)
!54 = !DILocation(line: 16, column: 8, scope: !52)
!55 = !DILocation(line: 17, column: 10, scope: !52)
!56 = !DILocation(line: 17, column: 12, scope: !52)
!57 = !DILocation(line: 17, column: 8, scope: !52)
!58 = !DILocation(line: 18, column: 2, scope: !52)
!59 = !DILocation(line: 19, column: 10, scope: !60)
!60 = distinct !DILexicalBlock(scope: !48, file: !1, line: 18, column: 9)
!61 = !DILocation(line: 19, column: 12, scope: !60)
!62 = !DILocation(line: 19, column: 8, scope: !60)
!63 = !DILocation(line: 20, column: 10, scope: !60)
!64 = !DILocation(line: 20, column: 12, scope: !60)
!65 = !DILocation(line: 20, column: 8, scope: !60)
!66 = !DILocation(line: 22, column: 6, scope: !49)
!67 = !DILocation(line: 22, column: 8, scope: !49)
!68 = !DILocation(line: 22, column: 4, scope: !49)
!69 = !DILocation(line: 24, column: 12, scope: !8)
!70 = !DILocation(line: 24, column: 16, scope: !8)
!71 = !DILocation(line: 24, column: 14, scope: !8)
!72 = !DILocation(line: 24, column: 23, scope: !8)
!73 = !DILocation(line: 24, column: 22, scope: !8)
!74 = !DILocation(line: 24, column: 18, scope: !8)
!75 = !DILocation(line: 24, column: 5, scope: !8)
!76 = !DILocation(line: 25, column: 1, scope: !8)
