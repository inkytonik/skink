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
  call void (...) @__VERIFIER_error() #5, !dbg !23
  unreachable, !dbg !23

; <label>:6                                       ; preds = %0
  ret void, !dbg !25
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %3
  call void @llvm.dbg.declare(metadata i32* %i, metadata !26, metadata !16), !dbg !27
  store i32 0, i32* %i, align 4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %x, metadata !28, metadata !16), !dbg !29
  store i32 0, i32* %x, align 4, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %y, metadata !30, metadata !16), !dbg !31
  store i32 0, i32* %y, align 4, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %n, metadata !32, metadata !16), !dbg !33
  %4 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !34
  store i32 %4, i32* %n, align 4, !dbg !33
  %5 = load i32, i32* %n, align 4, !dbg !35
  %6 = icmp sgt i32 %5, 0, !dbg !36
  %7 = zext i1 %6 to i32, !dbg !36
  call void @__VERIFIER_assume(i32 %7), !dbg !37
  store i32 0, i32* %i, align 4, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !16), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !44
  br label %8, !dbg !46

; <label>:8                                       ; preds = %18, %0
  br i1 true, label %9, label %21, !dbg !47

; <label>:9                                       ; preds = %8
  %10 = load i32, i32* %x, align 4, !dbg !48
  %11 = icmp eq i32 %10, 0, !dbg !49
  %12 = zext i1 %11 to i32, !dbg !49
  %13 = bitcast i32* %2 to i8*, !dbg !50
  call void @llvm.lifetime.start(i64 4, i8* %13), !dbg !50
  store i32 %12, i32* %2, align 4, !dbg !50
  %14 = load i32, i32* %2, align 4, !dbg !51
  %15 = icmp ne i32 %14, 0, !dbg !52
  br i1 %15, label %__VERIFIER_assert.exit, label %16, !dbg !53

; <label>:16                                      ; preds = %9
  call void (...) @__VERIFIER_error() #6, !dbg !54
  unreachable, !dbg !54

__VERIFIER_assert.exit:                           ; preds = %9
  %17 = bitcast i32* %2 to i8*, !dbg !55
  call void @llvm.lifetime.end(i64 4, i8* %17), !dbg !55
  br label %18, !dbg !56

; <label>:18                                      ; preds = %__VERIFIER_assert.exit
  %19 = load i32, i32* %i, align 4, !dbg !57
  %20 = add nsw i32 %19, 1, !dbg !57
  store i32 %20, i32* %i, align 4, !dbg !57
  br label %8, !dbg !58

; <label>:21                                      ; preds = %8
  %22 = load i32, i32* %x, align 4, !dbg !59
  %23 = icmp ne i32 %22, 0, !dbg !60
  %24 = zext i1 %23 to i32, !dbg !60
  %25 = bitcast i32* %1 to i8*, !dbg !61
  call void @llvm.lifetime.start(i64 4, i8* %25), !dbg !61
  store i32 %24, i32* %1, align 4, !dbg !61
  %26 = load i32, i32* %1, align 4, !dbg !62
  %27 = icmp ne i32 %26, 0, !dbg !63
  br i1 %27, label %__VERIFIER_assert.exit1, label %28, !dbg !64

; <label>:28                                      ; preds = %21
  call void (...) @__VERIFIER_error() #6, !dbg !65
  unreachable, !dbg !65

__VERIFIER_assert.exit1:                          ; preds = %21
  %29 = bitcast i32* %1 to i8*, !dbg !66
  call void @llvm.lifetime.end(i64 4, i8* %29), !dbg !66
  %30 = load i32, i32* %3, !dbg !67
  ret i32 %30, !dbg !67
}

declare i32 @__VERIFIER_nondet_int(...) #3

declare void @__VERIFIER_assume(i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "../sv-comp-2016/c/loops/for_infinite_loop_2_true-unreach-call_false-termination.i", directory: "/Users/franck/development/perentiemq")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 4, type: !5, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !9, isLocal: false, isDefinition: true, scopeLine: 13, isOptimized: false, function: i32 ()* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!7}
!11 = !{i32 2, !"Dwarf Version", i32 2}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"PIC Level", i32 2}
!14 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 4, type: !7)
!16 = !DIExpression()
!17 = !DILocation(line: 4, column: 28, scope: !4)
!18 = !DILocation(line: 5, column: 9, scope: !19)
!19 = distinct !DILexicalBlock(scope: !4, file: !1, line: 5, column: 7)
!20 = !DILocation(line: 5, column: 8, scope: !19)
!21 = !DILocation(line: 5, column: 7, scope: !4)
!22 = !DILocation(line: 5, column: 16, scope: !19)
!23 = !DILocation(line: 6, column: 12, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 5, column: 16)
!25 = !DILocation(line: 8, column: 3, scope: !4)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 14, type: !7)
!27 = !DILocation(line: 14, column: 7, scope: !8)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !8, file: !1, line: 14, type: !7)
!29 = !DILocation(line: 14, column: 12, scope: !8)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !8, file: !1, line: 14, type: !7)
!31 = !DILocation(line: 14, column: 17, scope: !8)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !8, file: !1, line: 15, type: !7)
!33 = !DILocation(line: 15, column: 7, scope: !8)
!34 = !DILocation(line: 15, column: 9, scope: !8)
!35 = !DILocation(line: 16, column: 21, scope: !8)
!36 = !DILocation(line: 16, column: 22, scope: !8)
!37 = !DILocation(line: 16, column: 3, scope: !8)
!38 = !DILocation(line: 17, column: 8, scope: !39)
!39 = distinct !DILexicalBlock(scope: !8, file: !1, line: 17, column: 3)
!40 = !DILocation(line: 4, column: 28, scope: !4, inlinedAt: !41)
!41 = distinct !DILocation(line: 19, column: 5, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 18, column: 3)
!43 = distinct !DILexicalBlock(scope: !39, file: !1, line: 17, column: 3)
!44 = !DILocation(line: 4, column: 28, scope: !4, inlinedAt: !45)
!45 = distinct !DILocation(line: 21, column: 3, scope: !8)
!46 = !DILocation(line: 17, column: 7, scope: !39)
!47 = !DILocation(line: 17, column: 3, scope: !39)
!48 = !DILocation(line: 19, column: 23, scope: !42)
!49 = !DILocation(line: 19, column: 24, scope: !42)
!50 = !DILocation(line: 19, column: 5, scope: !42)
!51 = !DILocation(line: 5, column: 9, scope: !19, inlinedAt: !41)
!52 = !DILocation(line: 5, column: 8, scope: !19, inlinedAt: !41)
!53 = !DILocation(line: 5, column: 7, scope: !4, inlinedAt: !41)
!54 = !DILocation(line: 6, column: 12, scope: !24, inlinedAt: !41)
!55 = !DILocation(line: 8, column: 3, scope: !4, inlinedAt: !41)
!56 = !DILocation(line: 20, column: 3, scope: !42)
!57 = !DILocation(line: 17, column: 16, scope: !43)
!58 = !DILocation(line: 17, column: 3, scope: !43)
!59 = !DILocation(line: 21, column: 21, scope: !8)
!60 = !DILocation(line: 21, column: 22, scope: !8)
!61 = !DILocation(line: 21, column: 3, scope: !8)
!62 = !DILocation(line: 5, column: 9, scope: !19, inlinedAt: !45)
!63 = !DILocation(line: 5, column: 8, scope: !19, inlinedAt: !45)
!64 = !DILocation(line: 5, column: 7, scope: !4, inlinedAt: !45)
!65 = !DILocation(line: 6, column: 12, scope: !24, inlinedAt: !45)
!66 = !DILocation(line: 8, column: 3, scope: !4, inlinedAt: !45)
!67 = !DILocation(line: 22, column: 1, scope: !8)
