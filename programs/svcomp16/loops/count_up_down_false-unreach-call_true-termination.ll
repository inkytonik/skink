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
  %n = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %n, metadata !26, metadata !16), !dbg !28
  %3 = call i32 (...) @__VERIFIER_nondet_uint(), !dbg !29
  store i32 %3, i32* %n, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %x, metadata !30, metadata !16), !dbg !31
  %4 = load i32, i32* %n, align 4, !dbg !32
  store i32 %4, i32* %x, align 4, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %y, metadata !33, metadata !16), !dbg !34
  store i32 0, i32* %y, align 4, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !35
  br label %5, !dbg !37

; <label>:5                                       ; preds = %8, %0
  %6 = load i32, i32* %x, align 4, !dbg !38
  %7 = icmp ugt i32 %6, 0, !dbg !39
  br i1 %7, label %8, label %13, !dbg !37

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* %x, align 4, !dbg !40
  %10 = add i32 %9, -1, !dbg !40
  store i32 %10, i32* %x, align 4, !dbg !40
  %11 = load i32, i32* %y, align 4, !dbg !42
  %12 = add i32 %11, 1, !dbg !42
  store i32 %12, i32* %y, align 4, !dbg !42
  br label %5, !dbg !37

; <label>:13                                      ; preds = %5
  %14 = load i32, i32* %y, align 4, !dbg !43
  %15 = load i32, i32* %n, align 4, !dbg !44
  %16 = icmp ne i32 %14, %15, !dbg !45
  %17 = zext i1 %16 to i32, !dbg !45
  %18 = bitcast i32* %1 to i8*, !dbg !46
  call void @llvm.lifetime.start(i64 4, i8* %18), !dbg !46
  store i32 %17, i32* %1, align 4, !dbg !46
  %19 = load i32, i32* %1, align 4, !dbg !47
  %20 = icmp ne i32 %19, 0, !dbg !48
  br i1 %20, label %__VERIFIER_assert.exit, label %21, !dbg !49

; <label>:21                                      ; preds = %13
  call void (...) @__VERIFIER_error() #6, !dbg !50
  unreachable, !dbg !50

__VERIFIER_assert.exit:                           ; preds = %13
  %22 = bitcast i32* %1 to i8*, !dbg !51
  call void @llvm.lifetime.end(i64 4, i8* %22), !dbg !51
  %23 = load i32, i32* %2, !dbg !52
  ret i32 %23, !dbg !52
}

declare i32 @__VERIFIER_nondet_uint(...) #3

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
!1 = !DIFile(filename: "../sv-comp-2016/c/loops/count_up_down_false-unreach-call_true-termination.i", directory: "/Users/franck/development/perentiemq")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !9, isLocal: false, isDefinition: true, scopeLine: 12, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!25 = !DILocation(line: 7, column: 3, scope: !4)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !8, file: !1, line: 13, type: !27)
!27 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!28 = !DILocation(line: 13, column: 16, scope: !8)
!29 = !DILocation(line: 13, column: 20, scope: !8)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !8, file: !1, line: 14, type: !27)
!31 = !DILocation(line: 14, column: 16, scope: !8)
!32 = !DILocation(line: 14, column: 18, scope: !8)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !8, file: !1, line: 14, type: !27)
!34 = !DILocation(line: 14, column: 21, scope: !8)
!35 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !36)
!36 = distinct !DILocation(line: 20, column: 3, scope: !8)
!37 = !DILocation(line: 15, column: 3, scope: !8)
!38 = !DILocation(line: 15, column: 9, scope: !8)
!39 = !DILocation(line: 15, column: 10, scope: !8)
!40 = !DILocation(line: 17, column: 6, scope: !41)
!41 = distinct !DILexicalBlock(scope: !8, file: !1, line: 16, column: 3)
!42 = !DILocation(line: 18, column: 6, scope: !41)
!43 = !DILocation(line: 20, column: 21, scope: !8)
!44 = !DILocation(line: 20, column: 24, scope: !8)
!45 = !DILocation(line: 20, column: 22, scope: !8)
!46 = !DILocation(line: 20, column: 3, scope: !8)
!47 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !36)
!48 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !36)
!49 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !36)
!50 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !36)
!51 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !36)
!52 = !DILocation(line: 21, column: 1, scope: !8)
