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
  call void @llvm.dbg.declare(metadata i32* %y, metadata !29, metadata !16), !dbg !30
  store i32 -50, i32* %x, align 4, !dbg !31
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !32
  store i32 %3, i32* %y, align 4, !dbg !33
  %4 = load i32, i32* %y, align 4, !dbg !34
  %5 = icmp slt i32 -1000, %4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !36
  br i1 %5, label %6, label %9, !dbg !38

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %y, align 4, !dbg !39
  %8 = icmp slt i32 %7, 1000000, !dbg !40
  br label %9

; <label>:9                                       ; preds = %6, %0
  %10 = phi i1 [ false, %0 ], [ %8, %6 ]
  %11 = zext i1 %10 to i32, !dbg !38
  call void @__VERIFIER_assume(i32 %11), !dbg !41
  br label %12, !dbg !42

; <label>:12                                      ; preds = %15, %9
  %13 = load i32, i32* %x, align 4, !dbg !43
  %14 = icmp slt i32 %13, 0, !dbg !44
  br i1 %14, label %15, label %21, !dbg !42

; <label>:15                                      ; preds = %12
  %16 = load i32, i32* %x, align 4, !dbg !45
  %17 = load i32, i32* %y, align 4, !dbg !47
  %18 = add nsw i32 %16, %17, !dbg !48
  store i32 %18, i32* %x, align 4, !dbg !49
  %19 = load i32, i32* %y, align 4, !dbg !50
  %20 = add nsw i32 %19, 1, !dbg !50
  store i32 %20, i32* %y, align 4, !dbg !50
  br label %12, !dbg !42

; <label>:21                                      ; preds = %12
  %22 = load i32, i32* %y, align 4, !dbg !51
  %23 = icmp sgt i32 %22, 0, !dbg !52
  %24 = zext i1 %23 to i32, !dbg !52
  %25 = bitcast i32* %1 to i8*, !dbg !53
  call void @llvm.lifetime.start(i64 4, i8* %25), !dbg !53
  store i32 %24, i32* %1, align 4, !dbg !53
  %26 = load i32, i32* %1, align 4, !dbg !54
  %27 = icmp ne i32 %26, 0, !dbg !55
  br i1 %27, label %__VERIFIER_assert.exit, label %28, !dbg !56

; <label>:28                                      ; preds = %21
  call void @__VERIFIER_error() #3, !dbg !57
  br label %__VERIFIER_assert.exit, !dbg !58

__VERIFIER_assert.exit:                           ; preds = %21, %28
  %29 = bitcast i32* %1 to i8*, !dbg !59
  call void @llvm.lifetime.end(i64 4, i8* %29), !dbg !59
  ret i32 0, !dbg !60
}

declare i32 @__VERIFIER_nondet_int(...) #2

declare void @__VERIFIER_assume(i32) #2

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
!1 = !DIFile(filename: "programs/svcomp16/loop-lit/gsv2008_true-unreach-call.c.i", directory: ".")
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
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !8, file: !1, line: 11, type: !7)
!30 = !DILocation(line: 11, column: 11, scope: !8)
!31 = !DILocation(line: 12, column: 7, scope: !8)
!32 = !DILocation(line: 13, column: 9, scope: !8)
!33 = !DILocation(line: 13, column: 7, scope: !8)
!34 = !DILocation(line: 14, column: 31, scope: !8)
!35 = !DILocation(line: 14, column: 29, scope: !8)
!36 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !37)
!37 = distinct !DILocation(line: 19, column: 5, scope: !8)
!38 = !DILocation(line: 14, column: 33, scope: !8)
!39 = !DILocation(line: 14, column: 36, scope: !8)
!40 = !DILocation(line: 14, column: 38, scope: !8)
!41 = !DILocation(line: 14, column: 5, scope: !8)
!42 = !DILocation(line: 15, column: 5, scope: !8)
!43 = !DILocation(line: 15, column: 12, scope: !8)
!44 = !DILocation(line: 15, column: 14, scope: !8)
!45 = !DILocation(line: 16, column: 6, scope: !46)
!46 = distinct !DILexicalBlock(scope: !8, file: !1, line: 15, column: 19)
!47 = !DILocation(line: 16, column: 10, scope: !46)
!48 = !DILocation(line: 16, column: 8, scope: !46)
!49 = !DILocation(line: 16, column: 4, scope: !46)
!50 = !DILocation(line: 17, column: 3, scope: !46)
!51 = !DILocation(line: 19, column: 23, scope: !8)
!52 = !DILocation(line: 19, column: 25, scope: !8)
!53 = !DILocation(line: 19, column: 5, scope: !8)
!54 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !37)
!55 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !37)
!56 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !37)
!57 = !DILocation(line: 5, column: 14, scope: !24, inlinedAt: !37)
!58 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !37)
!59 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !37)
!60 = !DILocation(line: 20, column: 5, scope: !8)
