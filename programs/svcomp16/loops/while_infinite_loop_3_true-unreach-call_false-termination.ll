; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@x = global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
  %1 = alloca i32, align 4
  store i32 %cond, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !20, metadata !21), !dbg !22
  %2 = load i32, i32* %1, align 4, !dbg !23
  %3 = icmp ne i32 %2, 0, !dbg !25
  br i1 %3, label %6, label %4, !dbg !26

; <label>:4                                       ; preds = %0
  br label %5, !dbg !27

; <label>:5                                       ; preds = %4
  call void (...) @__VERIFIER_error() #4, !dbg !28
  unreachable, !dbg !28

; <label>:6                                       ; preds = %0
  ret void, !dbg !30
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

; Function Attrs: nounwind ssp uwtable
define void @eval() #0 {
  br label %1, !dbg !31

; <label>:1                                       ; preds = %0
  store i32 0, i32* @x, align 4, !dbg !32
  br label %2, !dbg !34

; <label>:2                                       ; preds = %1
  ret void, !dbg !35
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %1, metadata !20, metadata !21), !dbg !36
  br label %3, !dbg !39

; <label>:3                                       ; preds = %__VERIFIER_assert.exit, %0
  store i32 0, i32* @x, align 4, !dbg !40
  %4 = load i32, i32* @x, align 4, !dbg !42
  %5 = icmp eq i32 %4, 0, !dbg !43
  %6 = zext i1 %5 to i32, !dbg !43
  %7 = bitcast i32* %1 to i8*, !dbg !44
  call void @llvm.lifetime.start(i64 4, i8* %7), !dbg !44
  store i32 %6, i32* %1, align 4, !dbg !44
  %8 = load i32, i32* %1, align 4, !dbg !45
  %9 = icmp ne i32 %8, 0, !dbg !46
  br i1 %9, label %__VERIFIER_assert.exit, label %10, !dbg !47

; <label>:10                                      ; preds = %3
  call void (...) @__VERIFIER_error() #5, !dbg !48
  unreachable, !dbg !48

__VERIFIER_assert.exit:                           ; preds = %3
  %11 = bitcast i32* %1 to i8*, !dbg !49
  call void @llvm.lifetime.end(i64 4, i8* %11), !dbg !49
  br label %3, !dbg !39
                                                  ; No predecessors!
  %13 = load i32, i32* %2, !dbg !50
  ret i32 %13, !dbg !50
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
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3, globals: !14)
!1 = !DIFile(filename: "programs/svcomp16/loops/while_infinite_loop_3_true-unreach-call_false-termination.i", directory: ".")
!2 = !{}
!3 = !{!4, !8, !11}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "eval", scope: !1, file: !1, line: 12, type: !9, isLocal: false, isDefinition: true, scopeLine: 13, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @eval, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{null}
!11 = !DISubprogram(name: "main", scope: !1, file: !1, line: 22, type: !12, isLocal: false, isDefinition: true, scopeLine: 22, isOptimized: false, function: i32 ()* @main, variables: !2)
!12 = !DISubroutineType(types: !13)
!13 = !{!7}
!14 = !{!15}
!15 = !DIGlobalVariable(name: "x", scope: !0, file: !1, line: 10, type: !7, isLocal: false, isDefinition: true, variable: i32* @x)
!16 = !{i32 2, !"Dwarf Version", i32 2}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"PIC Level", i32 2}
!19 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 3, type: !7)
!21 = !DIExpression()
!22 = !DILocation(line: 3, column: 28, scope: !4)
!23 = !DILocation(line: 4, column: 9, scope: !24)
!24 = distinct !DILexicalBlock(scope: !4, file: !1, line: 4, column: 7)
!25 = !DILocation(line: 4, column: 8, scope: !24)
!26 = !DILocation(line: 4, column: 7, scope: !4)
!27 = !DILocation(line: 4, column: 16, scope: !24)
!28 = !DILocation(line: 5, column: 12, scope: !29)
!29 = distinct !DILexicalBlock(scope: !24, file: !1, line: 4, column: 16)
!30 = !DILocation(line: 7, column: 3, scope: !4)
!31 = !DILocation(line: 14, column: 3, scope: !8)
!32 = !DILocation(line: 15, column: 8, scope: !33)
!33 = distinct !DILexicalBlock(scope: !8, file: !1, line: 14, column: 13)
!34 = !DILocation(line: 16, column: 7, scope: !33)
!35 = !DILocation(line: 18, column: 3, scope: !8)
!36 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !37)
!37 = distinct !DILocation(line: 27, column: 5, scope: !38)
!38 = distinct !DILexicalBlock(scope: !11, file: !1, line: 25, column: 3)
!39 = !DILocation(line: 24, column: 3, scope: !11)
!40 = !DILocation(line: 15, column: 8, scope: !33, inlinedAt: !41)
!41 = distinct !DILocation(line: 26, column: 5, scope: !38)
!42 = !DILocation(line: 27, column: 23, scope: !38)
!43 = !DILocation(line: 27, column: 24, scope: !38)
!44 = !DILocation(line: 27, column: 5, scope: !38)
!45 = !DILocation(line: 4, column: 9, scope: !24, inlinedAt: !37)
!46 = !DILocation(line: 4, column: 8, scope: !24, inlinedAt: !37)
!47 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !37)
!48 = !DILocation(line: 5, column: 12, scope: !29, inlinedAt: !37)
!49 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !37)
!50 = !DILocation(line: 33, column: 1, scope: !11)
