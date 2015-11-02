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
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %x, metadata !27, metadata !16), !dbg !28
  store i32 1, i32* %x, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %y, metadata !29, metadata !16), !dbg !30
  store i32 0, i32* %y, align 4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !31
  br label %3, !dbg !33

; <label>:3                                       ; preds = %11, %0
  %4 = load i32, i32* %y, align 4, !dbg !34
  %5 = icmp slt i32 %4, 1000, !dbg !35
  br i1 %5, label %6, label %9, !dbg !36

; <label>:6                                       ; preds = %3
  %7 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !37
  %8 = icmp ne i32 %7, 0, !dbg !36
  br label %9

; <label>:9                                       ; preds = %6, %3
  %10 = phi i1 [ false, %3 ], [ %8, %6 ]
  br i1 %10, label %11, label %17, !dbg !33

; <label>:11                                      ; preds = %9
  %12 = load i32, i32* %x, align 4, !dbg !38
  %13 = load i32, i32* %y, align 4, !dbg !40
  %14 = add nsw i32 %12, %13, !dbg !41
  store i32 %14, i32* %x, align 4, !dbg !42
  %15 = load i32, i32* %y, align 4, !dbg !43
  %16 = add nsw i32 %15, 1, !dbg !44
  store i32 %16, i32* %y, align 4, !dbg !45
  br label %3, !dbg !33

; <label>:17                                      ; preds = %9
  %18 = load i32, i32* %x, align 4, !dbg !46
  %19 = load i32, i32* %y, align 4, !dbg !47
  %20 = icmp sge i32 %18, %19, !dbg !48
  %21 = zext i1 %20 to i32, !dbg !48
  %22 = bitcast i32* %1 to i8*, !dbg !49
  call void @llvm.lifetime.start(i64 4, i8* %22), !dbg !49
  store i32 %21, i32* %1, align 4, !dbg !49
  %23 = load i32, i32* %1, align 4, !dbg !50
  %24 = icmp ne i32 %23, 0, !dbg !51
  br i1 %24, label %__VERIFIER_assert.exit, label %25, !dbg !52

; <label>:25                                      ; preds = %17
  call void @__VERIFIER_error() #3, !dbg !53
  br label %__VERIFIER_assert.exit, !dbg !54

__VERIFIER_assert.exit:                           ; preds = %17, %25
  %26 = bitcast i32* %1 to i8*, !dbg !55
  call void @llvm.lifetime.end(i64 4, i8* %26), !dbg !55
  ret i32 0, !dbg !56
}

declare i32 @__VERIFIER_nondet_int(...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "programs/svcomp16/loop-lit/afnp2014_true-unreach-call.c.i", directory: ".")
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
!23 = !DILocation(line: 5, column: 14, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 4, column: 16)
!25 = !DILocation(line: 6, column: 3, scope: !24)
!26 = !DILocation(line: 7, column: 3, scope: !4)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !8, file: !1, line: 11, type: !7)
!28 = !DILocation(line: 11, column: 9, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !8, file: !1, line: 12, type: !7)
!30 = !DILocation(line: 12, column: 9, scope: !8)
!31 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !32)
!32 = distinct !DILocation(line: 17, column: 5, scope: !8)
!33 = !DILocation(line: 13, column: 5, scope: !8)
!34 = !DILocation(line: 13, column: 12, scope: !8)
!35 = !DILocation(line: 13, column: 14, scope: !8)
!36 = !DILocation(line: 13, column: 21, scope: !8)
!37 = !DILocation(line: 13, column: 24, scope: !8)
!38 = !DILocation(line: 14, column: 13, scope: !39)
!39 = distinct !DILexicalBlock(scope: !8, file: !1, line: 13, column: 49)
!40 = !DILocation(line: 14, column: 17, scope: !39)
!41 = !DILocation(line: 14, column: 15, scope: !39)
!42 = !DILocation(line: 14, column: 11, scope: !39)
!43 = !DILocation(line: 15, column: 13, scope: !39)
!44 = !DILocation(line: 15, column: 15, scope: !39)
!45 = !DILocation(line: 15, column: 11, scope: !39)
!46 = !DILocation(line: 17, column: 23, scope: !8)
!47 = !DILocation(line: 17, column: 28, scope: !8)
!48 = !DILocation(line: 17, column: 25, scope: !8)
!49 = !DILocation(line: 17, column: 5, scope: !8)
!50 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !32)
!51 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !32)
!52 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !32)
!53 = !DILocation(line: 5, column: 14, scope: !24, inlinedAt: !32)
!54 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !32)
!55 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !32)
!56 = !DILocation(line: 18, column: 5, scope: !8)
