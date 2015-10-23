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
  %sn = alloca i32, align 4
  %loop1 = alloca i32, align 4
  %n1 = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %sn, metadata !26, metadata !16), !dbg !27
  store i32 0, i32* %sn, align 4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %loop1, metadata !28, metadata !16), !dbg !30
  %3 = call i32 (...) @__VERIFIER_nondet_uint(), !dbg !31
  store i32 %3, i32* %loop1, align 4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %n1, metadata !32, metadata !16), !dbg !33
  %4 = call i32 (...) @__VERIFIER_nondet_uint(), !dbg !34
  store i32 %4, i32* %n1, align 4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %x, metadata !35, metadata !16), !dbg !36
  store i32 0, i32* %x, align 4, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !37
  br label %5, !dbg !40

; <label>:5                                       ; preds = %__VERIFIER_assert.exit, %0
  %6 = load i32, i32* %x, align 4, !dbg !41
  %7 = icmp ult i32 %6, 10, !dbg !43
  br i1 %7, label %8, label %11, !dbg !44

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* %sn, align 4, !dbg !45
  %10 = add nsw i32 %9, 2, !dbg !46
  store i32 %10, i32* %sn, align 4, !dbg !47
  br label %11, !dbg !48

; <label>:11                                      ; preds = %8, %5
  %12 = load i32, i32* %x, align 4, !dbg !49
  %13 = add i32 %12, 1, !dbg !49
  store i32 %13, i32* %x, align 4, !dbg !49
  %14 = load i32, i32* %sn, align 4, !dbg !50
  %15 = load i32, i32* %x, align 4, !dbg !51
  %16 = mul i32 %15, 2, !dbg !52
  %17 = icmp eq i32 %14, %16, !dbg !53
  br i1 %17, label %21, label %18, !dbg !54

; <label>:18                                      ; preds = %11
  %19 = load i32, i32* %sn, align 4, !dbg !55
  %20 = icmp eq i32 %19, 0, !dbg !56
  br label %21, !dbg !54

; <label>:21                                      ; preds = %18, %11
  %22 = phi i1 [ true, %11 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32, !dbg !54
  %24 = bitcast i32* %1 to i8*, !dbg !57
  call void @llvm.lifetime.start(i64 4, i8* %24), !dbg !57
  store i32 %23, i32* %1, align 4, !dbg !57
  %25 = load i32, i32* %1, align 4, !dbg !58
  %26 = icmp ne i32 %25, 0, !dbg !59
  br i1 %26, label %__VERIFIER_assert.exit, label %27, !dbg !60

; <label>:27                                      ; preds = %21
  call void (...) @__VERIFIER_error() #6, !dbg !61
  unreachable, !dbg !61

__VERIFIER_assert.exit:                           ; preds = %21
  %28 = bitcast i32* %1 to i8*, !dbg !62
  call void @llvm.lifetime.end(i64 4, i8* %28), !dbg !62
  br label %5, !dbg !40
                                                  ; No predecessors!
  %30 = load i32, i32* %2, !dbg !63
  ret i32 %30, !dbg !63
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
!1 = !DIFile(filename: "sum03_false-unreach-call_true-termination.i", directory: "/Users/asloane/Projects/SV-COMP/sv-benchmarks/c/loops")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 12, type: !9, isLocal: false, isDefinition: true, scopeLine: 12, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sn", scope: !8, file: !1, line: 13, type: !7)
!27 = !DILocation(line: 13, column: 7, scope: !8)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "loop1", scope: !8, file: !1, line: 14, type: !29)
!29 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!30 = !DILocation(line: 14, column: 16, scope: !8)
!31 = !DILocation(line: 14, column: 22, scope: !8)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n1", scope: !8, file: !1, line: 14, type: !29)
!33 = !DILocation(line: 14, column: 48, scope: !8)
!34 = !DILocation(line: 14, column: 51, scope: !8)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !8, file: !1, line: 15, type: !29)
!36 = !DILocation(line: 15, column: 16, scope: !8)
!37 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !38)
!38 = distinct !DILocation(line: 21, column: 5, scope: !39)
!39 = distinct !DILexicalBlock(scope: !8, file: !1, line: 17, column: 11)
!40 = !DILocation(line: 17, column: 3, scope: !8)
!41 = !DILocation(line: 18, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !39, file: !1, line: 18, column: 9)
!43 = !DILocation(line: 18, column: 10, scope: !42)
!44 = !DILocation(line: 18, column: 9, scope: !39)
!45 = !DILocation(line: 19, column: 12, scope: !42)
!46 = !DILocation(line: 19, column: 15, scope: !42)
!47 = !DILocation(line: 19, column: 10, scope: !42)
!48 = !DILocation(line: 19, column: 7, scope: !42)
!49 = !DILocation(line: 20, column: 6, scope: !39)
!50 = !DILocation(line: 21, column: 23, scope: !39)
!51 = !DILocation(line: 21, column: 27, scope: !39)
!52 = !DILocation(line: 21, column: 28, scope: !39)
!53 = !DILocation(line: 21, column: 25, scope: !39)
!54 = !DILocation(line: 21, column: 33, scope: !39)
!55 = !DILocation(line: 21, column: 36, scope: !39)
!56 = !DILocation(line: 21, column: 39, scope: !39)
!57 = !DILocation(line: 21, column: 5, scope: !39)
!58 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !38)
!59 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !38)
!60 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !38)
!61 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !38)
!62 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !38)
!63 = !DILocation(line: 23, column: 1, scope: !8)
