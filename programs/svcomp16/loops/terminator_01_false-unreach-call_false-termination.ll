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
  %x = alloca i32, align 4
  %p = alloca i32*, align 8
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %x, metadata !26, metadata !16), !dbg !27
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !28
  store i32 %3, i32* %x, align 4, !dbg !27
  call void @llvm.dbg.declare(metadata i32** %p, metadata !29, metadata !16), !dbg !31
  store i32* %x, i32** %p, align 8, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !32
  br label %4, !dbg !34

; <label>:4                                       ; preds = %7, %0
  %5 = load i32, i32* %x, align 4, !dbg !35
  %6 = icmp slt i32 %5, 100, !dbg !36
  br i1 %6, label %7, label %11, !dbg !34

; <label>:7                                       ; preds = %4
  %8 = load i32*, i32** %p, align 8, !dbg !37
  %9 = load i32, i32* %8, align 4, !dbg !39
  %10 = add nsw i32 %9, 1, !dbg !39
  store i32 %10, i32* %8, align 4, !dbg !39
  br label %4, !dbg !34

; <label>:11                                      ; preds = %4
  %12 = bitcast i32* %1 to i8*, !dbg !40
  call void @llvm.lifetime.start(i64 4, i8* %12), !dbg !40
  store i32 0, i32* %1, align 4, !dbg !40
  %13 = load i32, i32* %1, align 4, !dbg !41
  %14 = icmp ne i32 %13, 0, !dbg !42
  br i1 %14, label %__VERIFIER_assert.exit, label %15, !dbg !43

; <label>:15                                      ; preds = %11
  call void (...) @__VERIFIER_error() #6, !dbg !44
  unreachable, !dbg !44

__VERIFIER_assert.exit:                           ; preds = %11
  %16 = bitcast i32* %1 to i8*, !dbg !45
  call void @llvm.lifetime.end(i64 4, i8* %16), !dbg !45
  ret i32 0, !dbg !46
}

declare i32 @__VERIFIER_nondet_int(...) #3

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
!1 = !DIFile(filename: "programs/svcomp16/loops/terminator_01_false-unreach-call_false-termination.i", directory: ".")
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
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !8, file: !1, line: 13, type: !7)
!27 = !DILocation(line: 13, column: 7, scope: !8)
!28 = !DILocation(line: 13, column: 9, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !8, file: !1, line: 14, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!31 = !DILocation(line: 14, column: 8, scope: !8)
!32 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !33)
!33 = distinct !DILocation(line: 19, column: 3, scope: !8)
!34 = !DILocation(line: 16, column: 3, scope: !8)
!35 = !DILocation(line: 16, column: 9, scope: !8)
!36 = !DILocation(line: 16, column: 10, scope: !8)
!37 = !DILocation(line: 17, column: 6, scope: !38)
!38 = distinct !DILexicalBlock(scope: !8, file: !1, line: 16, column: 16)
!39 = !DILocation(line: 17, column: 8, scope: !38)
!40 = !DILocation(line: 19, column: 3, scope: !8)
!41 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !33)
!42 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !33)
!43 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !33)
!44 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !33)
!45 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !33)
!46 = !DILocation(line: 21, column: 3, scope: !8)
