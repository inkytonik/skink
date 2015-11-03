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
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %sn = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %i, metadata !26, metadata !16), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %j, metadata !28, metadata !16), !dbg !29
  store i32 10, i32* %j, align 4, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %n, metadata !30, metadata !16), !dbg !31
  %3 = call i32 (...) @__VERIFIER_nondet_uint(), !dbg !32
  store i32 %3, i32* %n, align 4, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %sn, metadata !33, metadata !16), !dbg !34
  store i32 0, i32* %sn, align 4, !dbg !34
  store i32 1, i32* %i, align 4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !37
  br label %4, !dbg !39

; <label>:4                                       ; preds = %18, %0
  %5 = load i32, i32* %i, align 4, !dbg !40
  %6 = load i32, i32* %n, align 4, !dbg !42
  %7 = icmp sle i32 %5, %6, !dbg !43
  br i1 %7, label %8, label %21, !dbg !44

; <label>:8                                       ; preds = %4
  %9 = load i32, i32* %i, align 4, !dbg !45
  %10 = load i32, i32* %j, align 4, !dbg !48
  %11 = icmp slt i32 %9, %10, !dbg !49
  br i1 %11, label %12, label %15, !dbg !50

; <label>:12                                      ; preds = %8
  %13 = load i32, i32* %sn, align 4, !dbg !51
  %14 = add nsw i32 %13, 2, !dbg !52
  store i32 %14, i32* %sn, align 4, !dbg !53
  br label %15, !dbg !54

; <label>:15                                      ; preds = %12, %8
  %16 = load i32, i32* %j, align 4, !dbg !55
  %17 = add nsw i32 %16, -1, !dbg !55
  store i32 %17, i32* %j, align 4, !dbg !55
  br label %18, !dbg !56

; <label>:18                                      ; preds = %15
  %19 = load i32, i32* %i, align 4, !dbg !57
  %20 = add nsw i32 %19, 1, !dbg !57
  store i32 %20, i32* %i, align 4, !dbg !57
  br label %4, !dbg !58

; <label>:21                                      ; preds = %4
  %22 = load i32, i32* %sn, align 4, !dbg !59
  %23 = load i32, i32* %n, align 4, !dbg !60
  %24 = mul nsw i32 %23, 2, !dbg !61
  %25 = icmp eq i32 %22, %24, !dbg !62
  br i1 %25, label %29, label %26, !dbg !63

; <label>:26                                      ; preds = %21
  %27 = load i32, i32* %sn, align 4, !dbg !64
  %28 = icmp eq i32 %27, 0, !dbg !65
  br label %29, !dbg !63

; <label>:29                                      ; preds = %26, %21
  %30 = phi i1 [ true, %21 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32, !dbg !63
  %32 = bitcast i32* %1 to i8*, !dbg !66
  call void @llvm.lifetime.start(i64 4, i8* %32), !dbg !66
  store i32 %31, i32* %1, align 4, !dbg !66
  %33 = load i32, i32* %1, align 4, !dbg !67
  %34 = icmp ne i32 %33, 0, !dbg !68
  br i1 %34, label %__VERIFIER_assert.exit, label %35, !dbg !69

; <label>:35                                      ; preds = %29
  call void (...) @__VERIFIER_error() #6, !dbg !70
  unreachable, !dbg !70

__VERIFIER_assert.exit:                           ; preds = %29
  %36 = bitcast i32* %1 to i8*, !dbg !71
  call void @llvm.lifetime.end(i64 4, i8* %36), !dbg !71
  %37 = load i32, i32* %2, !dbg !72
  ret i32 %37, !dbg !72
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
!1 = !DIFile(filename: "programs/svcomp16/loops/sum01_bug02_false-unreach-call_true-termination.i", directory: ".")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !9, isLocal: false, isDefinition: true, scopeLine: 11, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!27 = !DILocation(line: 12, column: 7, scope: !8)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 12, type: !7)
!29 = !DILocation(line: 12, column: 10, scope: !8)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !8, file: !1, line: 12, type: !7)
!31 = !DILocation(line: 12, column: 16, scope: !8)
!32 = !DILocation(line: 12, column: 18, scope: !8)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sn", scope: !8, file: !1, line: 12, type: !7)
!34 = !DILocation(line: 12, column: 44, scope: !8)
!35 = !DILocation(line: 13, column: 8, scope: !36)
!36 = distinct !DILexicalBlock(scope: !8, file: !1, line: 13, column: 3)
!37 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !38)
!38 = distinct !DILocation(line: 18, column: 3, scope: !8)
!39 = !DILocation(line: 13, column: 7, scope: !36)
!40 = !DILocation(line: 13, column: 12, scope: !41)
!41 = distinct !DILexicalBlock(scope: !36, file: !1, line: 13, column: 3)
!42 = !DILocation(line: 13, column: 15, scope: !41)
!43 = !DILocation(line: 13, column: 13, scope: !41)
!44 = !DILocation(line: 13, column: 3, scope: !36)
!45 = !DILocation(line: 14, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 14, column: 9)
!47 = distinct !DILexicalBlock(scope: !41, file: !1, line: 13, column: 23)
!48 = !DILocation(line: 14, column: 11, scope: !46)
!49 = !DILocation(line: 14, column: 10, scope: !46)
!50 = !DILocation(line: 14, column: 9, scope: !47)
!51 = !DILocation(line: 15, column: 10, scope: !46)
!52 = !DILocation(line: 15, column: 13, scope: !46)
!53 = !DILocation(line: 15, column: 8, scope: !46)
!54 = !DILocation(line: 15, column: 5, scope: !46)
!55 = !DILocation(line: 16, column: 6, scope: !47)
!56 = !DILocation(line: 17, column: 3, scope: !47)
!57 = !DILocation(line: 13, column: 19, scope: !41)
!58 = !DILocation(line: 13, column: 3, scope: !41)
!59 = !DILocation(line: 18, column: 21, scope: !8)
!60 = !DILocation(line: 18, column: 25, scope: !8)
!61 = !DILocation(line: 18, column: 26, scope: !8)
!62 = !DILocation(line: 18, column: 23, scope: !8)
!63 = !DILocation(line: 18, column: 31, scope: !8)
!64 = !DILocation(line: 18, column: 34, scope: !8)
!65 = !DILocation(line: 18, column: 37, scope: !8)
!66 = !DILocation(line: 18, column: 3, scope: !8)
!67 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !38)
!68 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !38)
!69 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !38)
!70 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !38)
!71 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !38)
!72 = !DILocation(line: 19, column: 1, scope: !8)
