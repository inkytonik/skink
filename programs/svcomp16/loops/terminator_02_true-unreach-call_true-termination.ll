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
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %tmp = alloca i8, align 1
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %x, metadata !26, metadata !16), !dbg !27
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !28
  store i32 %3, i32* %x, align 4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %y, metadata !29, metadata !16), !dbg !30
  %4 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !31
  store i32 %4, i32* %y, align 4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %z, metadata !32, metadata !16), !dbg !33
  %5 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !34
  store i32 %5, i32* %z, align 4, !dbg !33
  %6 = load i32, i32* %x, align 4, !dbg !35
  %7 = icmp slt i32 %6, 100, !dbg !36
  %8 = zext i1 %7 to i32, !dbg !36
  call void @__VERIFIER_assume(i32 %8), !dbg !37
  %9 = load i32, i32* %z, align 4, !dbg !38
  %10 = icmp slt i32 %9, 100, !dbg !39
  %11 = zext i1 %10 to i32, !dbg !39
  call void @__VERIFIER_assume(i32 %11), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !41
  br label %12, !dbg !43

; <label>:12                                      ; preds = %33, %0
  %13 = load i32, i32* %x, align 4, !dbg !44
  %14 = icmp slt i32 %13, 100, !dbg !45
  br i1 %14, label %15, label %18, !dbg !46

; <label>:15                                      ; preds = %12
  %16 = load i32, i32* %z, align 4, !dbg !47
  %17 = icmp slt i32 100, %16, !dbg !48
  br label %18

; <label>:18                                      ; preds = %15, %12
  %19 = phi i1 [ false, %12 ], [ %17, %15 ]
  br i1 %19, label %20, label %34, !dbg !43

; <label>:20                                      ; preds = %18
  call void @llvm.dbg.declare(metadata i8* %tmp, metadata !49, metadata !16), !dbg !52
  %21 = call zeroext i1 (...) @__VERIFIER_nondet_bool(), !dbg !53
  %22 = zext i1 %21 to i8, !dbg !52
  store i8 %22, i8* %tmp, align 1, !dbg !52
  %23 = load i8, i8* %tmp, align 1, !dbg !54
  %24 = trunc i8 %23 to i1, !dbg !54
  br i1 %24, label %25, label %28, !dbg !56

; <label>:25                                      ; preds = %20
  %26 = load i32, i32* %x, align 4, !dbg !57
  %27 = add nsw i32 %26, 1, !dbg !57
  store i32 %27, i32* %x, align 4, !dbg !57
  br label %33, !dbg !59

; <label>:28                                      ; preds = %20
  %29 = load i32, i32* %x, align 4, !dbg !60
  %30 = add nsw i32 %29, -1, !dbg !60
  store i32 %30, i32* %x, align 4, !dbg !60
  %31 = load i32, i32* %z, align 4, !dbg !62
  %32 = add nsw i32 %31, -1, !dbg !62
  store i32 %32, i32* %z, align 4, !dbg !62
  br label %33

; <label>:33                                      ; preds = %28, %25
  br label %12, !dbg !43

; <label>:34                                      ; preds = %18
  %35 = load i32, i32* %x, align 4, !dbg !63
  %36 = icmp sge i32 %35, 100, !dbg !64
  br i1 %36, label %40, label %37, !dbg !65

; <label>:37                                      ; preds = %34
  %38 = load i32, i32* %z, align 4, !dbg !66
  %39 = icmp sle i32 %38, 100, !dbg !67
  br label %40, !dbg !65

; <label>:40                                      ; preds = %37, %34
  %41 = phi i1 [ true, %34 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32, !dbg !65
  %43 = bitcast i32* %1 to i8*, !dbg !68
  call void @llvm.lifetime.start(i64 4, i8* %43), !dbg !68
  store i32 %42, i32* %1, align 4, !dbg !68
  %44 = load i32, i32* %1, align 4, !dbg !69
  %45 = icmp ne i32 %44, 0, !dbg !70
  br i1 %45, label %__VERIFIER_assert.exit, label %46, !dbg !71

; <label>:46                                      ; preds = %40
  call void (...) @__VERIFIER_error() #6, !dbg !72
  unreachable, !dbg !72

__VERIFIER_assert.exit:                           ; preds = %40
  %47 = bitcast i32* %1 to i8*, !dbg !73
  call void @llvm.lifetime.end(i64 4, i8* %47), !dbg !73
  ret i32 0, !dbg !74
}

declare i32 @__VERIFIER_nondet_int(...) #3

declare void @__VERIFIER_assume(i32) #3

declare zeroext i1 @__VERIFIER_nondet_bool(...) #3

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
!1 = !DIFile(filename: "programs/svcomp16/loops/terminator_02_true-unreach-call_true-termination.i", directory: ".")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 4, type: !5, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !9, isLocal: false, isDefinition: true, scopeLine: 14, isOptimized: false, function: i32 ()* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!7}
!11 = !{i32 2, !"Dwarf Version", i32 2}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"PIC Level", i32 2}
!14 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 4, type: !7)
!16 = !DIExpression()
!17 = !DILocation(line: 4, column: 28, scope: !4)
!18 = !DILocation(line: 5, column: 9, scope: !19)
!19 = distinct !DILexicalBlock(scope: !4, file: !1, line: 5, column: 7)
!20 = !DILocation(line: 5, column: 8, scope: !19)
!21 = !DILocation(line: 5, column: 7, scope: !4)
!22 = !DILocation(line: 5, column: 16, scope: !19)
!23 = !DILocation(line: 6, column: 12, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 5, column: 16)
!25 = !DILocation(line: 8, column: 3, scope: !4)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !8, file: !1, line: 15, type: !7)
!27 = !DILocation(line: 15, column: 7, scope: !8)
!28 = !DILocation(line: 15, column: 9, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !8, file: !1, line: 16, type: !7)
!30 = !DILocation(line: 16, column: 7, scope: !8)
!31 = !DILocation(line: 16, column: 9, scope: !8)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !8, file: !1, line: 17, type: !7)
!33 = !DILocation(line: 17, column: 7, scope: !8)
!34 = !DILocation(line: 17, column: 9, scope: !8)
!35 = !DILocation(line: 18, column: 21, scope: !8)
!36 = !DILocation(line: 18, column: 22, scope: !8)
!37 = !DILocation(line: 18, column: 3, scope: !8)
!38 = !DILocation(line: 19, column: 21, scope: !8)
!39 = !DILocation(line: 19, column: 22, scope: !8)
!40 = !DILocation(line: 19, column: 3, scope: !8)
!41 = !DILocation(line: 4, column: 28, scope: !4, inlinedAt: !42)
!42 = distinct !DILocation(line: 34, column: 3, scope: !8)
!43 = !DILocation(line: 20, column: 3, scope: !8)
!44 = !DILocation(line: 20, column: 9, scope: !8)
!45 = !DILocation(line: 20, column: 10, scope: !8)
!46 = !DILocation(line: 20, column: 15, scope: !8)
!47 = !DILocation(line: 20, column: 22, scope: !8)
!48 = !DILocation(line: 20, column: 21, scope: !8)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !50, file: !1, line: 22, type: !51)
!50 = distinct !DILexicalBlock(scope: !8, file: !1, line: 21, column: 3)
!51 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!52 = !DILocation(line: 22, column: 11, scope: !50)
!53 = !DILocation(line: 22, column: 15, scope: !50)
!54 = !DILocation(line: 23, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !50, file: !1, line: 23, column: 9)
!56 = !DILocation(line: 23, column: 9, scope: !50)
!57 = !DILocation(line: 25, column: 7, scope: !58)
!58 = distinct !DILexicalBlock(scope: !55, file: !1, line: 24, column: 4)
!59 = !DILocation(line: 26, column: 4, scope: !58)
!60 = !DILocation(line: 29, column: 7, scope: !61)
!61 = distinct !DILexicalBlock(scope: !55, file: !1, line: 28, column: 4)
!62 = !DILocation(line: 30, column: 7, scope: !61)
!63 = !DILocation(line: 34, column: 21, scope: !8)
!64 = !DILocation(line: 34, column: 22, scope: !8)
!65 = !DILocation(line: 34, column: 28, scope: !8)
!66 = !DILocation(line: 34, column: 31, scope: !8)
!67 = !DILocation(line: 34, column: 32, scope: !8)
!68 = !DILocation(line: 34, column: 3, scope: !8)
!69 = !DILocation(line: 5, column: 9, scope: !19, inlinedAt: !42)
!70 = !DILocation(line: 5, column: 8, scope: !19, inlinedAt: !42)
!71 = !DILocation(line: 5, column: 7, scope: !4, inlinedAt: !42)
!72 = !DILocation(line: 6, column: 12, scope: !24, inlinedAt: !42)
!73 = !DILocation(line: 8, column: 3, scope: !4, inlinedAt: !42)
!74 = !DILocation(line: 36, column: 3, scope: !8)
