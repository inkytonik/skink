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
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %x, metadata !26, metadata !16), !dbg !28
  store i32 0, i32* %x, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %y, metadata !29, metadata !16), !dbg !30
  %3 = call i32 @__VERIFIER_nondet_uint(), !dbg !31
  store i32 %3, i32* %y, align 4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !32
  br label %4, !dbg !34

; <label>:4                                       ; preds = %17, %0
  %5 = load i32, i32* %x, align 4, !dbg !35
  %6 = icmp ult i32 %5, 99, !dbg !36
  br i1 %6, label %7, label %18, !dbg !34

; <label>:7                                       ; preds = %4
  %8 = load i32, i32* %y, align 4, !dbg !37
  %9 = urem i32 %8, 2, !dbg !40
  %10 = icmp eq i32 %9, 0, !dbg !41
  br i1 %10, label %11, label %14, !dbg !42

; <label>:11                                      ; preds = %7
  %12 = load i32, i32* %x, align 4, !dbg !43
  %13 = add i32 %12, 1, !dbg !43
  store i32 %13, i32* %x, align 4, !dbg !43
  br label %17, !dbg !45

; <label>:14                                      ; preds = %7
  %15 = load i32, i32* %x, align 4, !dbg !46
  %16 = add i32 %15, 2, !dbg !46
  store i32 %16, i32* %x, align 4, !dbg !46
  br label %17

; <label>:17                                      ; preds = %14, %11
  br label %4, !dbg !34

; <label>:18                                      ; preds = %4
  %19 = load i32, i32* %x, align 4, !dbg !48
  %20 = urem i32 %19, 2, !dbg !49
  %21 = load i32, i32* %y, align 4, !dbg !50
  %22 = urem i32 %21, 2, !dbg !51
  %23 = icmp eq i32 %20, %22, !dbg !52
  %24 = zext i1 %23 to i32, !dbg !52
  %25 = bitcast i32* %1 to i8*, !dbg !53
  call void @llvm.lifetime.start(i64 4, i8* %25), !dbg !53
  store i32 %24, i32* %1, align 4, !dbg !53
  %26 = load i32, i32* %1, align 4, !dbg !54
  %27 = icmp ne i32 %26, 0, !dbg !55
  br i1 %27, label %__VERIFIER_assert.exit, label %28, !dbg !56

; <label>:28                                      ; preds = %18
  call void (...) @__VERIFIER_error() #6, !dbg !57
  unreachable, !dbg !57

__VERIFIER_assert.exit:                           ; preds = %18
  %29 = bitcast i32* %1 to i8*, !dbg !58
  call void @llvm.lifetime.end(i64 4, i8* %29), !dbg !58
  %30 = load i32, i32* %2, !dbg !59
  ret i32 %30, !dbg !59
}

declare i32 @__VERIFIER_nondet_uint() #3

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
!1 = !DIFile(filename: "diamond_false-unreach-call1.i", directory: "/Users/asloane/Projects/SV-COMP/sv-benchmarks/c/loop-acceleration")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 9, type: !9, isLocal: false, isDefinition: true, scopeLine: 9, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !8, file: !1, line: 10, type: !27)
!27 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!28 = !DILocation(line: 10, column: 16, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !8, file: !1, line: 11, type: !27)
!30 = !DILocation(line: 11, column: 16, scope: !8)
!31 = !DILocation(line: 11, column: 20, scope: !8)
!32 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !33)
!33 = distinct !DILocation(line: 19, column: 3, scope: !8)
!34 = !DILocation(line: 12, column: 3, scope: !8)
!35 = !DILocation(line: 12, column: 10, scope: !8)
!36 = !DILocation(line: 12, column: 12, scope: !8)
!37 = !DILocation(line: 13, column: 9, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 13, column: 9)
!39 = distinct !DILexicalBlock(scope: !8, file: !1, line: 12, column: 18)
!40 = !DILocation(line: 13, column: 11, scope: !38)
!41 = !DILocation(line: 13, column: 15, scope: !38)
!42 = !DILocation(line: 13, column: 9, scope: !39)
!43 = !DILocation(line: 14, column: 8, scope: !44)
!44 = distinct !DILexicalBlock(scope: !38, file: !1, line: 13, column: 21)
!45 = !DILocation(line: 15, column: 5, scope: !44)
!46 = !DILocation(line: 16, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !38, file: !1, line: 15, column: 12)
!48 = !DILocation(line: 19, column: 22, scope: !8)
!49 = !DILocation(line: 19, column: 24, scope: !8)
!50 = !DILocation(line: 19, column: 33, scope: !8)
!51 = !DILocation(line: 19, column: 35, scope: !8)
!52 = !DILocation(line: 19, column: 29, scope: !8)
!53 = !DILocation(line: 19, column: 3, scope: !8)
!54 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !33)
!55 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !33)
!56 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !33)
!57 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !33)
!58 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !33)
!59 = !DILocation(line: 20, column: 1, scope: !8)
