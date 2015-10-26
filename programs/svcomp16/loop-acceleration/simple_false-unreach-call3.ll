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
  call void (...) @__VERIFIER_error() #4, !dbg !23
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
  %N = alloca i16, align 2
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %x, metadata !26, metadata !16), !dbg !28
  store i32 0, i32* %x, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i16* %N, metadata !29, metadata !16), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !32
  br label %3, !dbg !34

; <label>:3                                       ; preds = %8, %0
  %4 = load i32, i32* %x, align 4, !dbg !35
  %5 = load i16, i16* %N, align 2, !dbg !36
  %6 = zext i16 %5 to i32, !dbg !36
  %7 = icmp ult i32 %4, %6, !dbg !37
  br i1 %7, label %8, label %11, !dbg !34

; <label>:8                                       ; preds = %3
  %9 = load i32, i32* %x, align 4, !dbg !38
  %10 = add i32 %9, 2, !dbg !38
  store i32 %10, i32* %x, align 4, !dbg !38
  br label %3, !dbg !34

; <label>:11                                      ; preds = %3
  %12 = load i32, i32* %x, align 4, !dbg !40
  %13 = urem i32 %12, 2, !dbg !41
  %14 = bitcast i32* %1 to i8*, !dbg !42
  call void @llvm.lifetime.start(i64 4, i8* %14), !dbg !42
  store i32 %13, i32* %1, align 4, !dbg !42
  %15 = load i32, i32* %1, align 4, !dbg !43
  %16 = icmp ne i32 %15, 0, !dbg !44
  br i1 %16, label %__VERIFIER_assert.exit, label %17, !dbg !45

; <label>:17                                      ; preds = %11
  call void (...) @__VERIFIER_error() #5, !dbg !46
  unreachable, !dbg !46

__VERIFIER_assert.exit:                           ; preds = %11
  %18 = bitcast i32* %1 to i8*, !dbg !47
  call void @llvm.lifetime.end(i64 4, i8* %18), !dbg !47
  %19 = load i32, i32* %2, !dbg !48
  ret i32 %19, !dbg !48
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }
attributes #5 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "simple_false-unreach-call3.i", directory: "/Users/asloane/Projects/SV-COMP/sv-benchmarks/c/loop-acceleration")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 2, type: !5, isLocal: false, isDefinition: true, scopeLine: 2, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 8, type: !9, isLocal: false, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!25 = !DILocation(line: 6, column: 3, scope: !4)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !8, file: !1, line: 9, type: !27)
!27 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!28 = !DILocation(line: 9, column: 16, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "N", scope: !8, file: !1, line: 10, type: !30)
!30 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!31 = !DILocation(line: 10, column: 18, scope: !8)
!32 = !DILocation(line: 2, column: 28, scope: !4, inlinedAt: !33)
!33 = distinct !DILocation(line: 14, column: 3, scope: !8)
!34 = !DILocation(line: 11, column: 3, scope: !8)
!35 = !DILocation(line: 11, column: 10, scope: !8)
!36 = !DILocation(line: 11, column: 14, scope: !8)
!37 = !DILocation(line: 11, column: 12, scope: !8)
!38 = !DILocation(line: 12, column: 7, scope: !39)
!39 = distinct !DILexicalBlock(scope: !8, file: !1, line: 11, column: 17)
!40 = !DILocation(line: 14, column: 21, scope: !8)
!41 = !DILocation(line: 14, column: 23, scope: !8)
!42 = !DILocation(line: 14, column: 3, scope: !8)
!43 = !DILocation(line: 3, column: 9, scope: !19, inlinedAt: !33)
!44 = !DILocation(line: 3, column: 8, scope: !19, inlinedAt: !33)
!45 = !DILocation(line: 3, column: 7, scope: !4, inlinedAt: !33)
!46 = !DILocation(line: 4, column: 12, scope: !24, inlinedAt: !33)
!47 = !DILocation(line: 6, column: 3, scope: !4, inlinedAt: !33)
!48 = !DILocation(line: 15, column: 1, scope: !8)
