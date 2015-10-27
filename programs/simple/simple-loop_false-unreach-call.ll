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
  %3 = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 0, i32* %3
  call void @llvm.dbg.declare(metadata i32* %r, metadata !26, metadata !16), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !31
  br label %4, !dbg !33

; <label>:4                                       ; preds = %__VERIFIER_assert.exit, %0
  %5 = load i32, i32* %r, align 4, !dbg !34
  %6 = icmp sgt i32 %5, 0, !dbg !35
  br i1 %6, label %7, label %18, !dbg !33

; <label>:7                                       ; preds = %4
  %8 = load i32, i32* %r, align 4, !dbg !36
  %9 = icmp sgt i32 %8, 0, !dbg !37
  %10 = zext i1 %9 to i32, !dbg !37
  %11 = bitcast i32* %2 to i8*, !dbg !38
  call void @llvm.lifetime.start(i64 4, i8* %11), !dbg !38
  store i32 %10, i32* %2, align 4, !dbg !38
  %12 = load i32, i32* %2, align 4, !dbg !39
  %13 = icmp ne i32 %12, 0, !dbg !40
  br i1 %13, label %__VERIFIER_assert.exit, label %14, !dbg !41

; <label>:14                                      ; preds = %7
  call void (...) @__VERIFIER_error() #5, !dbg !42
  unreachable, !dbg !42

__VERIFIER_assert.exit:                           ; preds = %7
  %15 = bitcast i32* %2 to i8*, !dbg !43
  call void @llvm.lifetime.end(i64 4, i8* %15), !dbg !43
  %16 = load i32, i32* %r, align 4, !dbg !44
  %17 = sub nsw i32 %16, 1, !dbg !45
  store i32 %17, i32* %r, align 4, !dbg !46
  br label %4, !dbg !33

; <label>:18                                      ; preds = %4
  %19 = load i32, i32* %r, align 4, !dbg !47
  %20 = icmp sgt i32 %19, 0, !dbg !48
  %21 = zext i1 %20 to i32, !dbg !48
  %22 = bitcast i32* %1 to i8*, !dbg !49
  call void @llvm.lifetime.start(i64 4, i8* %22), !dbg !49
  store i32 %21, i32* %1, align 4, !dbg !49
  %23 = load i32, i32* %1, align 4, !dbg !50
  %24 = icmp ne i32 %23, 0, !dbg !51
  br i1 %24, label %__VERIFIER_assert.exit1, label %25, !dbg !52

; <label>:25                                      ; preds = %18
  call void (...) @__VERIFIER_error() #5, !dbg !53
  unreachable, !dbg !53

__VERIFIER_assert.exit1:                          ; preds = %18
  %26 = bitcast i32* %1 to i8*, !dbg !54
  call void @llvm.lifetime.end(i64 4, i8* %26), !dbg !54
  %27 = load i32, i32* %3, !dbg !55
  ret i32 %27, !dbg !55
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
!1 = !DIFile(filename: "simple-loop_false-unreach-call.c", directory: "/Users/asloane/Projects/PerentieMQ/perentiemq/programs/simple")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !9, isLocal: false, isDefinition: true, scopeLine: 10, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !8, file: !1, line: 11, type: !7)
!27 = !DILocation(line: 11, column: 7, scope: !8)
!28 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !29)
!29 = distinct !DILocation(line: 13, column: 7, scope: !30)
!30 = distinct !DILexicalBlock(scope: !8, file: !1, line: 12, column: 17)
!31 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !32)
!32 = distinct !DILocation(line: 16, column: 3, scope: !8)
!33 = !DILocation(line: 12, column: 3, scope: !8)
!34 = !DILocation(line: 12, column: 10, scope: !8)
!35 = !DILocation(line: 12, column: 12, scope: !8)
!36 = !DILocation(line: 13, column: 25, scope: !30)
!37 = !DILocation(line: 13, column: 27, scope: !30)
!38 = !DILocation(line: 13, column: 7, scope: !30)
!39 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !29)
!40 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !29)
!41 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !29)
!42 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !29)
!43 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !29)
!44 = !DILocation(line: 14, column: 11, scope: !30)
!45 = !DILocation(line: 14, column: 13, scope: !30)
!46 = !DILocation(line: 14, column: 9, scope: !30)
!47 = !DILocation(line: 16, column: 21, scope: !8)
!48 = !DILocation(line: 16, column: 23, scope: !8)
!49 = !DILocation(line: 16, column: 3, scope: !8)
!50 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !32)
!51 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !32)
!52 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !32)
!53 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !32)
!54 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !32)
!55 = !DILocation(line: 17, column: 1, scope: !8)
