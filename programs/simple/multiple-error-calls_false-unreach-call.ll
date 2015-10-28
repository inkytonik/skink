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
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %i, metadata !26, metadata !16), !dbg !27
  store i32 0, i32* %i, align 4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %j, metadata !28, metadata !16), !dbg !29
  store i32 0, i32* %j, align 4, !dbg !29
  %3 = load i32, i32* %i, align 4, !dbg !30
  %4 = load i32, i32* %j, align 4, !dbg !32
  %5 = icmp sgt i32 %3, %4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !34
  br i1 %5, label %6, label %16, !dbg !36

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %i, align 4, !dbg !37
  %8 = load i32, i32* %j, align 4, !dbg !38
  %9 = icmp sle i32 %7, %8, !dbg !39
  %10 = zext i1 %9 to i32, !dbg !39
  %11 = bitcast i32* %1 to i8*, !dbg !40
  call void @llvm.lifetime.start(i64 4, i8* %11), !dbg !40
  store i32 %10, i32* %1, align 4, !dbg !40
  %12 = load i32, i32* %1, align 4, !dbg !41
  %13 = icmp ne i32 %12, 0, !dbg !42
  br i1 %13, label %__VERIFIER_assert.exit, label %14, !dbg !43

; <label>:14                                      ; preds = %6
  call void (...) @__VERIFIER_error() #5, !dbg !44
  unreachable, !dbg !44

__VERIFIER_assert.exit:                           ; preds = %6
  %15 = bitcast i32* %1 to i8*, !dbg !45
  call void @llvm.lifetime.end(i64 4, i8* %15), !dbg !45
  br label %16, !dbg !40

; <label>:16                                      ; preds = %__VERIFIER_assert.exit, %0
  call void (...) @__VERIFIER_error() #4, !dbg !46
  unreachable, !dbg !46
                                                  ; No predecessors!
  %18 = load i32, i32* %2, !dbg !47
  ret i32 %18, !dbg !47
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
!1 = !DIFile(filename: "multiple-error-calls_false-unreach-call.c", directory: "/Users/asloane/Projects/PerentieMQ/perentiemq/programs/simple")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !9, isLocal: false, isDefinition: true, scopeLine: 11, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 12, type: !7)
!27 = !DILocation(line: 12, column: 8, scope: !8)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 12, type: !7)
!29 = !DILocation(line: 12, column: 15, scope: !8)
!30 = !DILocation(line: 13, column: 8, scope: !31)
!31 = distinct !DILexicalBlock(scope: !8, file: !1, line: 13, column: 8)
!32 = !DILocation(line: 13, column: 12, scope: !31)
!33 = !DILocation(line: 13, column: 10, scope: !31)
!34 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !35)
!35 = distinct !DILocation(line: 15, column: 6, scope: !31)
!36 = !DILocation(line: 13, column: 8, scope: !8)
!37 = !DILocation(line: 15, column: 25, scope: !31)
!38 = !DILocation(line: 15, column: 30, scope: !31)
!39 = !DILocation(line: 15, column: 27, scope: !31)
!40 = !DILocation(line: 15, column: 6, scope: !31)
!41 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !35)
!42 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !35)
!43 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !35)
!44 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !35)
!45 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !35)
!46 = !DILocation(line: 16, column: 4, scope: !8)
!47 = !DILocation(line: 17, column: 1, scope: !8)
