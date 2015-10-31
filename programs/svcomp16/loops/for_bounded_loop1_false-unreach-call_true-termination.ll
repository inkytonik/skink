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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !26, metadata !16), !dbg !27
  store i32 0, i32* %i, align 4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %x, metadata !28, metadata !16), !dbg !29
  store i32 0, i32* %x, align 4, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %y, metadata !30, metadata !16), !dbg !31
  store i32 0, i32* %y, align 4, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %n, metadata !32, metadata !16), !dbg !33
  %5 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !34
  store i32 %5, i32* %n, align 4, !dbg !33
  %6 = load i32, i32* %n, align 4, !dbg !35
  %7 = icmp sgt i32 %6, 0, !dbg !36
  %8 = zext i1 %7 to i32, !dbg !36
  call void @__VERIFIER_assume(i32 %8), !dbg !37
  store i32 0, i32* %i, align 4, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %3, metadata !15, metadata !16), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !16), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !46
  br label %9, !dbg !48

; <label>:9                                       ; preds = %40, %0
  %10 = load i32, i32* %i, align 4, !dbg !49
  %11 = load i32, i32* %n, align 4, !dbg !50
  %12 = icmp slt i32 %10, %11, !dbg !51
  br i1 %12, label %13, label %43, !dbg !52

; <label>:13                                      ; preds = %9
  %14 = load i32, i32* %x, align 4, !dbg !53
  %15 = load i32, i32* %y, align 4, !dbg !54
  %16 = sub nsw i32 %14, %15, !dbg !55
  store i32 %16, i32* %x, align 4, !dbg !56
  %17 = load i32, i32* %x, align 4, !dbg !57
  %18 = icmp eq i32 %17, 0, !dbg !58
  %19 = zext i1 %18 to i32, !dbg !58
  %20 = bitcast i32* %3 to i8*, !dbg !59
  call void @llvm.lifetime.start(i64 4, i8* %20), !dbg !59
  store i32 %19, i32* %3, align 4, !dbg !59
  %21 = load i32, i32* %3, align 4, !dbg !60
  %22 = icmp ne i32 %21, 0, !dbg !61
  br i1 %22, label %__VERIFIER_assert.exit, label %23, !dbg !62

; <label>:23                                      ; preds = %13
  call void (...) @__VERIFIER_error() #6, !dbg !63
  unreachable, !dbg !63

__VERIFIER_assert.exit:                           ; preds = %13
  %24 = bitcast i32* %3 to i8*, !dbg !64
  call void @llvm.lifetime.end(i64 4, i8* %24), !dbg !64
  %25 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !65
  store i32 %25, i32* %y, align 4, !dbg !66
  %26 = load i32, i32* %y, align 4, !dbg !67
  %27 = icmp ne i32 %26, 0, !dbg !68
  %28 = zext i1 %27 to i32, !dbg !68
  call void @__VERIFIER_assume(i32 %28), !dbg !69
  %29 = load i32, i32* %x, align 4, !dbg !70
  %30 = load i32, i32* %y, align 4, !dbg !71
  %31 = add nsw i32 %29, %30, !dbg !72
  store i32 %31, i32* %x, align 4, !dbg !73
  %32 = load i32, i32* %x, align 4, !dbg !74
  %33 = icmp ne i32 %32, 0, !dbg !75
  %34 = zext i1 %33 to i32, !dbg !75
  %35 = bitcast i32* %2 to i8*, !dbg !76
  call void @llvm.lifetime.start(i64 4, i8* %35), !dbg !76
  store i32 %34, i32* %2, align 4, !dbg !76
  %36 = load i32, i32* %2, align 4, !dbg !77
  %37 = icmp ne i32 %36, 0, !dbg !78
  br i1 %37, label %__VERIFIER_assert.exit1, label %38, !dbg !79

; <label>:38                                      ; preds = %__VERIFIER_assert.exit
  call void (...) @__VERIFIER_error() #6, !dbg !80
  unreachable, !dbg !80

__VERIFIER_assert.exit1:                          ; preds = %__VERIFIER_assert.exit
  %39 = bitcast i32* %2 to i8*, !dbg !81
  call void @llvm.lifetime.end(i64 4, i8* %39), !dbg !81
  br label %40, !dbg !82

; <label>:40                                      ; preds = %__VERIFIER_assert.exit1
  %41 = load i32, i32* %i, align 4, !dbg !83
  %42 = add nsw i32 %41, 1, !dbg !83
  store i32 %42, i32* %i, align 4, !dbg !83
  br label %9, !dbg !84

; <label>:43                                      ; preds = %9
  %44 = load i32, i32* %x, align 4, !dbg !85
  %45 = icmp eq i32 %44, 0, !dbg !86
  %46 = zext i1 %45 to i32, !dbg !86
  %47 = bitcast i32* %1 to i8*, !dbg !87
  call void @llvm.lifetime.start(i64 4, i8* %47), !dbg !87
  store i32 %46, i32* %1, align 4, !dbg !87
  %48 = load i32, i32* %1, align 4, !dbg !88
  %49 = icmp ne i32 %48, 0, !dbg !89
  br i1 %49, label %__VERIFIER_assert.exit2, label %50, !dbg !90

; <label>:50                                      ; preds = %43
  call void (...) @__VERIFIER_error() #6, !dbg !91
  unreachable, !dbg !91

__VERIFIER_assert.exit2:                          ; preds = %43
  %51 = bitcast i32* %1 to i8*, !dbg !92
  call void @llvm.lifetime.end(i64 4, i8* %51), !dbg !92
  %52 = load i32, i32* %4, !dbg !93
  ret i32 %52, !dbg !93
}

declare i32 @__VERIFIER_nondet_int(...) #3

declare void @__VERIFIER_assume(i32) #3

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
!1 = !DIFile(filename: "../sv-comp-2016/c/loops/for_bounded_loop1_false-unreach-call_true-termination.i", directory: "/Users/franck/development/perentiemq")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 4, type: !5, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !9, isLocal: false, isDefinition: true, scopeLine: 13, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 14, type: !7)
!27 = !DILocation(line: 14, column: 7, scope: !8)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !8, file: !1, line: 14, type: !7)
!29 = !DILocation(line: 14, column: 12, scope: !8)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !8, file: !1, line: 14, type: !7)
!31 = !DILocation(line: 14, column: 17, scope: !8)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !8, file: !1, line: 15, type: !7)
!33 = !DILocation(line: 15, column: 7, scope: !8)
!34 = !DILocation(line: 15, column: 9, scope: !8)
!35 = !DILocation(line: 16, column: 21, scope: !8)
!36 = !DILocation(line: 16, column: 22, scope: !8)
!37 = !DILocation(line: 16, column: 3, scope: !8)
!38 = !DILocation(line: 17, column: 8, scope: !39)
!39 = distinct !DILexicalBlock(scope: !8, file: !1, line: 17, column: 3)
!40 = !DILocation(line: 4, column: 28, scope: !4, inlinedAt: !41)
!41 = distinct !DILocation(line: 20, column: 5, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 18, column: 3)
!43 = distinct !DILexicalBlock(scope: !39, file: !1, line: 17, column: 3)
!44 = !DILocation(line: 4, column: 28, scope: !4, inlinedAt: !45)
!45 = distinct !DILocation(line: 24, column: 5, scope: !42)
!46 = !DILocation(line: 4, column: 28, scope: !4, inlinedAt: !47)
!47 = distinct !DILocation(line: 26, column: 3, scope: !8)
!48 = !DILocation(line: 17, column: 7, scope: !39)
!49 = !DILocation(line: 17, column: 12, scope: !43)
!50 = !DILocation(line: 17, column: 14, scope: !43)
!51 = !DILocation(line: 17, column: 13, scope: !43)
!52 = !DILocation(line: 17, column: 3, scope: !39)
!53 = !DILocation(line: 19, column: 9, scope: !42)
!54 = !DILocation(line: 19, column: 11, scope: !42)
!55 = !DILocation(line: 19, column: 10, scope: !42)
!56 = !DILocation(line: 19, column: 7, scope: !42)
!57 = !DILocation(line: 20, column: 23, scope: !42)
!58 = !DILocation(line: 20, column: 24, scope: !42)
!59 = !DILocation(line: 20, column: 5, scope: !42)
!60 = !DILocation(line: 5, column: 9, scope: !19, inlinedAt: !41)
!61 = !DILocation(line: 5, column: 8, scope: !19, inlinedAt: !41)
!62 = !DILocation(line: 5, column: 7, scope: !4, inlinedAt: !41)
!63 = !DILocation(line: 6, column: 12, scope: !24, inlinedAt: !41)
!64 = !DILocation(line: 8, column: 3, scope: !4, inlinedAt: !41)
!65 = !DILocation(line: 21, column: 9, scope: !42)
!66 = !DILocation(line: 21, column: 7, scope: !42)
!67 = !DILocation(line: 22, column: 23, scope: !42)
!68 = !DILocation(line: 22, column: 24, scope: !42)
!69 = !DILocation(line: 22, column: 5, scope: !42)
!70 = !DILocation(line: 23, column: 9, scope: !42)
!71 = !DILocation(line: 23, column: 11, scope: !42)
!72 = !DILocation(line: 23, column: 10, scope: !42)
!73 = !DILocation(line: 23, column: 7, scope: !42)
!74 = !DILocation(line: 24, column: 23, scope: !42)
!75 = !DILocation(line: 24, column: 24, scope: !42)
!76 = !DILocation(line: 24, column: 5, scope: !42)
!77 = !DILocation(line: 5, column: 9, scope: !19, inlinedAt: !45)
!78 = !DILocation(line: 5, column: 8, scope: !19, inlinedAt: !45)
!79 = !DILocation(line: 5, column: 7, scope: !4, inlinedAt: !45)
!80 = !DILocation(line: 6, column: 12, scope: !24, inlinedAt: !45)
!81 = !DILocation(line: 8, column: 3, scope: !4, inlinedAt: !45)
!82 = !DILocation(line: 25, column: 3, scope: !42)
!83 = !DILocation(line: 17, column: 18, scope: !43)
!84 = !DILocation(line: 17, column: 3, scope: !43)
!85 = !DILocation(line: 26, column: 21, scope: !8)
!86 = !DILocation(line: 26, column: 22, scope: !8)
!87 = !DILocation(line: 26, column: 3, scope: !8)
!88 = !DILocation(line: 5, column: 9, scope: !19, inlinedAt: !47)
!89 = !DILocation(line: 5, column: 8, scope: !19, inlinedAt: !47)
!90 = !DILocation(line: 5, column: 7, scope: !4, inlinedAt: !47)
!91 = !DILocation(line: 6, column: 12, scope: !24, inlinedAt: !47)
!92 = !DILocation(line: 8, column: 3, scope: !4, inlinedAt: !47)
!93 = !DILocation(line: 27, column: 1, scope: !8)
