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
  %n = alloca i32, align 4
  %sn = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %i, metadata !26, metadata !16), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %n, metadata !28, metadata !16), !dbg !29
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !30
  store i32 %3, i32* %n, align 4, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %sn, metadata !31, metadata !16), !dbg !32
  store i32 0, i32* %sn, align 4, !dbg !32
  %4 = load i32, i32* %n, align 4, !dbg !33
  %5 = icmp slt i32 %4, 1000, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !35
  br i1 %5, label %6, label %9, !dbg !37

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %n, align 4, !dbg !38
  %8 = icmp sge i32 %7, -1000, !dbg !39
  br label %9

; <label>:9                                       ; preds = %6, %0
  %10 = phi i1 [ false, %0 ], [ %8, %6 ]
  %11 = zext i1 %10 to i32, !dbg !37
  %12 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*)(i32 %11), !dbg !40
  store i32 1, i32* %i, align 4, !dbg !41
  br label %13, !dbg !43

; <label>:13                                      ; preds = %20, %9
  %14 = load i32, i32* %i, align 4, !dbg !44
  %15 = load i32, i32* %n, align 4, !dbg !46
  %16 = icmp sle i32 %14, %15, !dbg !47
  br i1 %16, label %17, label %23, !dbg !48

; <label>:17                                      ; preds = %13
  %18 = load i32, i32* %sn, align 4, !dbg !49
  %19 = add nsw i32 %18, 2, !dbg !51
  store i32 %19, i32* %sn, align 4, !dbg !52
  br label %20, !dbg !53

; <label>:20                                      ; preds = %17
  %21 = load i32, i32* %i, align 4, !dbg !54
  %22 = add nsw i32 %21, 1, !dbg !54
  store i32 %22, i32* %i, align 4, !dbg !54
  br label %13, !dbg !55

; <label>:23                                      ; preds = %13
  %24 = load i32, i32* %sn, align 4, !dbg !56
  %25 = load i32, i32* %n, align 4, !dbg !57
  %26 = mul nsw i32 %25, 2, !dbg !58
  %27 = icmp eq i32 %24, %26, !dbg !59
  br i1 %27, label %31, label %28, !dbg !60

; <label>:28                                      ; preds = %23
  %29 = load i32, i32* %sn, align 4, !dbg !61
  %30 = icmp eq i32 %29, 0, !dbg !62
  br label %31, !dbg !60

; <label>:31                                      ; preds = %28, %23
  %32 = phi i1 [ true, %23 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32, !dbg !60
  %34 = bitcast i32* %1 to i8*, !dbg !63
  call void @llvm.lifetime.start(i64 4, i8* %34), !dbg !63
  store i32 %33, i32* %1, align 4, !dbg !63
  %35 = load i32, i32* %1, align 4, !dbg !64
  %36 = icmp ne i32 %35, 0, !dbg !65
  br i1 %36, label %__VERIFIER_assert.exit, label %37, !dbg !66

; <label>:37                                      ; preds = %31
  call void (...) @__VERIFIER_error() #6, !dbg !67
  unreachable, !dbg !67

__VERIFIER_assert.exit:                           ; preds = %31
  %38 = bitcast i32* %1 to i8*, !dbg !68
  call void @llvm.lifetime.end(i64 4, i8* %38), !dbg !68
  %39 = load i32, i32* %2, !dbg !69
  ret i32 %39, !dbg !69
}

declare i32 @__VERIFIER_nondet_int(...) #3

declare i32 @__VERIFIER_assume(...) #3

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
!1 = !DIFile(filename: "programs/svcomp16/loops/sum01_true-unreach-call_true-termination.i", directory: ".")
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
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 11, type: !7)
!27 = !DILocation(line: 11, column: 7, scope: !8)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !8, file: !1, line: 11, type: !7)
!29 = !DILocation(line: 11, column: 10, scope: !8)
!30 = !DILocation(line: 11, column: 12, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sn", scope: !8, file: !1, line: 11, type: !7)
!32 = !DILocation(line: 11, column: 37, scope: !8)
!33 = !DILocation(line: 12, column: 21, scope: !8)
!34 = !DILocation(line: 12, column: 23, scope: !8)
!35 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !36)
!36 = distinct !DILocation(line: 16, column: 3, scope: !8)
!37 = !DILocation(line: 12, column: 30, scope: !8)
!38 = !DILocation(line: 12, column: 33, scope: !8)
!39 = !DILocation(line: 12, column: 35, scope: !8)
!40 = !DILocation(line: 12, column: 3, scope: !8)
!41 = !DILocation(line: 13, column: 8, scope: !42)
!42 = distinct !DILexicalBlock(scope: !8, file: !1, line: 13, column: 3)
!43 = !DILocation(line: 13, column: 7, scope: !42)
!44 = !DILocation(line: 13, column: 12, scope: !45)
!45 = distinct !DILexicalBlock(scope: !42, file: !1, line: 13, column: 3)
!46 = !DILocation(line: 13, column: 15, scope: !45)
!47 = !DILocation(line: 13, column: 13, scope: !45)
!48 = !DILocation(line: 13, column: 3, scope: !42)
!49 = !DILocation(line: 14, column: 10, scope: !50)
!50 = distinct !DILexicalBlock(scope: !45, file: !1, line: 13, column: 23)
!51 = !DILocation(line: 14, column: 13, scope: !50)
!52 = !DILocation(line: 14, column: 8, scope: !50)
!53 = !DILocation(line: 15, column: 3, scope: !50)
!54 = !DILocation(line: 13, column: 19, scope: !45)
!55 = !DILocation(line: 13, column: 3, scope: !45)
!56 = !DILocation(line: 16, column: 21, scope: !8)
!57 = !DILocation(line: 16, column: 25, scope: !8)
!58 = !DILocation(line: 16, column: 26, scope: !8)
!59 = !DILocation(line: 16, column: 23, scope: !8)
!60 = !DILocation(line: 16, column: 31, scope: !8)
!61 = !DILocation(line: 16, column: 34, scope: !8)
!62 = !DILocation(line: 16, column: 37, scope: !8)
!63 = !DILocation(line: 16, column: 3, scope: !8)
!64 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !36)
!65 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !36)
!66 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !36)
!67 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !36)
!68 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !36)
!69 = !DILocation(line: 17, column: 1, scope: !8)
