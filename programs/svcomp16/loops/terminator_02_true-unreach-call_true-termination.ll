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
  %9 = load i32, i32* %x, align 4, !dbg !38
  %10 = icmp sgt i32 %9, -100, !dbg !39
  %11 = zext i1 %10 to i32, !dbg !39
  call void @__VERIFIER_assume(i32 %11), !dbg !40
  %12 = load i32, i32* %z, align 4, !dbg !41
  %13 = icmp slt i32 %12, 100, !dbg !42
  %14 = zext i1 %13 to i32, !dbg !42
  call void @__VERIFIER_assume(i32 %14), !dbg !43
  %15 = load i32, i32* %z, align 4, !dbg !44
  %16 = icmp sgt i32 %15, -100, !dbg !45
  %17 = zext i1 %16 to i32, !dbg !45
  call void @__VERIFIER_assume(i32 %17), !dbg !46
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !47
  br label %18, !dbg !49

; <label>:18                                      ; preds = %39, %0
  %19 = load i32, i32* %x, align 4, !dbg !50
  %20 = icmp slt i32 %19, 100, !dbg !51
  br i1 %20, label %21, label %24, !dbg !52

; <label>:21                                      ; preds = %18
  %22 = load i32, i32* %z, align 4, !dbg !53
  %23 = icmp slt i32 100, %22, !dbg !54
  br label %24

; <label>:24                                      ; preds = %21, %18
  %25 = phi i1 [ false, %18 ], [ %23, %21 ]
  br i1 %25, label %26, label %40, !dbg !49

; <label>:26                                      ; preds = %24
  call void @llvm.dbg.declare(metadata i8* %tmp, metadata !55, metadata !16), !dbg !58
  %27 = call zeroext i1 (...) @__VERIFIER_nondet_bool(), !dbg !59
  %28 = zext i1 %27 to i8, !dbg !58
  store i8 %28, i8* %tmp, align 1, !dbg !58
  %29 = load i8, i8* %tmp, align 1, !dbg !60
  %30 = trunc i8 %29 to i1, !dbg !60
  br i1 %30, label %31, label %34, !dbg !62

; <label>:31                                      ; preds = %26
  %32 = load i32, i32* %x, align 4, !dbg !63
  %33 = add nsw i32 %32, 1, !dbg !63
  store i32 %33, i32* %x, align 4, !dbg !63
  br label %39, !dbg !65

; <label>:34                                      ; preds = %26
  %35 = load i32, i32* %x, align 4, !dbg !66
  %36 = add nsw i32 %35, -1, !dbg !66
  store i32 %36, i32* %x, align 4, !dbg !66
  %37 = load i32, i32* %z, align 4, !dbg !68
  %38 = add nsw i32 %37, -1, !dbg !68
  store i32 %38, i32* %z, align 4, !dbg !68
  br label %39

; <label>:39                                      ; preds = %34, %31
  br label %18, !dbg !49

; <label>:40                                      ; preds = %24
  %41 = load i32, i32* %x, align 4, !dbg !69
  %42 = icmp sge i32 %41, 100, !dbg !70
  br i1 %42, label %46, label %43, !dbg !71

; <label>:43                                      ; preds = %40
  %44 = load i32, i32* %z, align 4, !dbg !72
  %45 = icmp sle i32 %44, 100, !dbg !73
  br label %46, !dbg !71

; <label>:46                                      ; preds = %43, %40
  %47 = phi i1 [ true, %40 ], [ %45, %43 ]
  %48 = zext i1 %47 to i32, !dbg !71
  %49 = bitcast i32* %1 to i8*, !dbg !74
  call void @llvm.lifetime.start(i64 4, i8* %49), !dbg !74
  store i32 %48, i32* %1, align 4, !dbg !74
  %50 = load i32, i32* %1, align 4, !dbg !75
  %51 = icmp ne i32 %50, 0, !dbg !76
  br i1 %51, label %__VERIFIER_assert.exit, label %52, !dbg !77

; <label>:52                                      ; preds = %46
  call void (...) @__VERIFIER_error() #6, !dbg !78
  unreachable, !dbg !78

__VERIFIER_assert.exit:                           ; preds = %46
  %53 = bitcast i32* %1 to i8*, !dbg !79
  call void @llvm.lifetime.end(i64 4, i8* %53), !dbg !79
  ret i32 0, !dbg !80
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
!27 = !DILocation(line: 13, column: 9, scope: !8)
!28 = !DILocation(line: 13, column: 11, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !8, file: !1, line: 14, type: !7)
!30 = !DILocation(line: 14, column: 9, scope: !8)
!31 = !DILocation(line: 14, column: 11, scope: !8)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !8, file: !1, line: 15, type: !7)
!33 = !DILocation(line: 15, column: 9, scope: !8)
!34 = !DILocation(line: 15, column: 11, scope: !8)
!35 = !DILocation(line: 16, column: 23, scope: !8)
!36 = !DILocation(line: 16, column: 24, scope: !8)
!37 = !DILocation(line: 16, column: 5, scope: !8)
!38 = !DILocation(line: 17, column: 23, scope: !8)
!39 = !DILocation(line: 17, column: 24, scope: !8)
!40 = !DILocation(line: 17, column: 5, scope: !8)
!41 = !DILocation(line: 18, column: 23, scope: !8)
!42 = !DILocation(line: 18, column: 24, scope: !8)
!43 = !DILocation(line: 18, column: 5, scope: !8)
!44 = !DILocation(line: 19, column: 23, scope: !8)
!45 = !DILocation(line: 19, column: 24, scope: !8)
!46 = !DILocation(line: 19, column: 5, scope: !8)
!47 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !48)
!48 = distinct !DILocation(line: 30, column: 5, scope: !8)
!49 = !DILocation(line: 20, column: 5, scope: !8)
!50 = !DILocation(line: 20, column: 11, scope: !8)
!51 = !DILocation(line: 20, column: 12, scope: !8)
!52 = !DILocation(line: 20, column: 17, scope: !8)
!53 = !DILocation(line: 20, column: 24, scope: !8)
!54 = !DILocation(line: 20, column: 23, scope: !8)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !56, file: !1, line: 22, type: !57)
!56 = distinct !DILexicalBlock(scope: !8, file: !1, line: 21, column: 5)
!57 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!58 = !DILocation(line: 22, column: 15, scope: !56)
!59 = !DILocation(line: 22, column: 19, scope: !56)
!60 = !DILocation(line: 23, column: 13, scope: !61)
!61 = distinct !DILexicalBlock(scope: !56, file: !1, line: 23, column: 13)
!62 = !DILocation(line: 23, column: 13, scope: !56)
!63 = !DILocation(line: 24, column: 14, scope: !64)
!64 = distinct !DILexicalBlock(scope: !61, file: !1, line: 23, column: 18)
!65 = !DILocation(line: 25, column: 9, scope: !64)
!66 = !DILocation(line: 26, column: 14, scope: !67)
!67 = distinct !DILexicalBlock(scope: !61, file: !1, line: 25, column: 16)
!68 = !DILocation(line: 27, column: 14, scope: !67)
!69 = !DILocation(line: 30, column: 23, scope: !8)
!70 = !DILocation(line: 30, column: 24, scope: !8)
!71 = !DILocation(line: 30, column: 30, scope: !8)
!72 = !DILocation(line: 30, column: 33, scope: !8)
!73 = !DILocation(line: 30, column: 34, scope: !8)
!74 = !DILocation(line: 30, column: 5, scope: !8)
!75 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !48)
!76 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !48)
!77 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !48)
!78 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !48)
!79 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !48)
!80 = !DILocation(line: 31, column: 5, scope: !8)
