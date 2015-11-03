; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
  %1 = alloca i32, align 4
  store i32 %cond, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !16, metadata !17), !dbg !18
  %2 = load i32, i32* %1, align 4, !dbg !19
  %3 = icmp ne i32 %2, 0, !dbg !21
  br i1 %3, label %6, label %4, !dbg !22

; <label>:4                                       ; preds = %0
  br label %5, !dbg !23

; <label>:5                                       ; preds = %4
  call void (...) @__VERIFIER_error() #5, !dbg !24
  unreachable, !dbg !24

; <label>:6                                       ; preds = %0
  ret void, !dbg !26
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

; Function Attrs: nounwind ssp uwtable
define void @f(i32 %d) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %k = alloca i32, align 4
  %z = alloca i32, align 4
  %c = alloca i8, align 1
  store i32 %d, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !27, metadata !17), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %x, metadata !29, metadata !17), !dbg !30
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !31
  store i32 %3, i32* %x, align 4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %y, metadata !32, metadata !17), !dbg !33
  %4 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !34
  store i32 %4, i32* %y, align 4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %k, metadata !35, metadata !17), !dbg !36
  %5 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !37
  store i32 %5, i32* %k, align 4, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %z, metadata !38, metadata !17), !dbg !39
  store i32 1, i32* %z, align 4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %1, metadata !16, metadata !17), !dbg !40
  br label %6, !dbg !42

; <label>:6                                       ; preds = %0
  br label %7, !dbg !43

; <label>:7                                       ; preds = %11, %6
  %8 = load i32, i32* %z, align 4, !dbg !44
  %9 = load i32, i32* %k, align 4, !dbg !45
  %10 = icmp slt i32 %8, %9, !dbg !46
  br i1 %10, label %11, label %14, !dbg !43

; <label>:11                                      ; preds = %7
  %12 = load i32, i32* %z, align 4, !dbg !47
  %13 = mul nsw i32 2, %12, !dbg !49
  store i32 %13, i32* %z, align 4, !dbg !50
  br label %7, !dbg !43

; <label>:14                                      ; preds = %7
  %15 = load i32, i32* %z, align 4, !dbg !51
  %16 = icmp sge i32 %15, 2, !dbg !52
  %17 = zext i1 %16 to i32, !dbg !52
  %18 = bitcast i32* %1 to i8*, !dbg !53
  call void @llvm.lifetime.start(i64 4, i8* %18), !dbg !53
  store i32 %17, i32* %1, align 4, !dbg !53
  %19 = load i32, i32* %1, align 4, !dbg !54
  %20 = icmp ne i32 %19, 0, !dbg !55
  br i1 %20, label %__VERIFIER_assert.exit, label %21, !dbg !56

; <label>:21                                      ; preds = %14
  call void (...) @__VERIFIER_error() #6, !dbg !57
  unreachable, !dbg !57

__VERIFIER_assert.exit:                           ; preds = %14
  %22 = bitcast i32* %1 to i8*, !dbg !58
  call void @llvm.lifetime.end(i64 4, i8* %22), !dbg !58
  br label %23, !dbg !53

; <label>:23                                      ; preds = %__VERIFIER_assert.exit
  br label %24, !dbg !59

; <label>:24                                      ; preds = %50, %23
  %25 = load i32, i32* %x, align 4, !dbg !60
  %26 = icmp sgt i32 %25, 0, !dbg !61
  br i1 %26, label %27, label %30, !dbg !62

; <label>:27                                      ; preds = %24
  %28 = load i32, i32* %y, align 4, !dbg !63
  %29 = icmp sgt i32 %28, 0, !dbg !64
  br label %30

; <label>:30                                      ; preds = %27, %24
  %31 = phi i1 [ false, %24 ], [ %29, %27 ]
  br i1 %31, label %32, label %51, !dbg !59

; <label>:32                                      ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %c, metadata !65, metadata !17), !dbg !68
  %33 = call zeroext i1 (...) @__VERIFIER_nondet_bool(), !dbg !69
  %34 = zext i1 %33 to i8, !dbg !68
  store i8 %34, i8* %c, align 1, !dbg !68
  %35 = load i8, i8* %c, align 1, !dbg !70
  %36 = trunc i8 %35 to i1, !dbg !70
  br i1 %36, label %37, label %46, !dbg !72

; <label>:37                                      ; preds = %32
  br label %38, !dbg !73

; <label>:38                                      ; preds = %37
  %39 = load i32, i32* %x, align 4, !dbg !74
  %40 = load i32, i32* %2, align 4, !dbg !76
  %41 = sub nsw i32 %39, %40, !dbg !77
  store i32 %41, i32* %x, align 4, !dbg !78
  %42 = call zeroext i1 (...) @__VERIFIER_nondet_bool(), !dbg !79
  %43 = zext i1 %42 to i32, !dbg !79
  store i32 %43, i32* %y, align 4, !dbg !80
  %44 = load i32, i32* %z, align 4, !dbg !81
  %45 = sub nsw i32 %44, 1, !dbg !82
  store i32 %45, i32* %z, align 4, !dbg !83
  br label %50, !dbg !84

; <label>:46                                      ; preds = %32
  %47 = load i32, i32* %y, align 4, !dbg !85
  %48 = load i32, i32* %2, align 4, !dbg !87
  %49 = sub nsw i32 %47, %48, !dbg !88
  store i32 %49, i32* %y, align 4, !dbg !89
  br label %50

; <label>:50                                      ; preds = %46, %38
  br label %24, !dbg !59

; <label>:51                                      ; preds = %30
  ret void, !dbg !90
}

declare i32 @__VERIFIER_nondet_int(...) #3

declare zeroext i1 @__VERIFIER_nondet_bool(...) #3

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %c = alloca i8, align 1
  store i32 0, i32* %1
  call void @llvm.dbg.declare(metadata i8* %c, metadata !91, metadata !17), !dbg !92
  %2 = call zeroext i1 (...) @__VERIFIER_nondet_bool(), !dbg !93
  %3 = zext i1 %2 to i8, !dbg !92
  store i8 %3, i8* %c, align 1, !dbg !92
  %4 = load i8, i8* %c, align 1, !dbg !94
  %5 = trunc i8 %4 to i1, !dbg !94
  br i1 %5, label %6, label %7, !dbg !96

; <label>:6                                       ; preds = %0
  call void @f(i32 1), !dbg !97
  br label %8, !dbg !99

; <label>:7                                       ; preds = %0
  call void @f(i32 2), !dbg !100
  br label %8

; <label>:8                                       ; preds = %7, %6
  ret i32 0, !dbg !102
}

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
!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "programs/svcomp16/loops/trex01_false-unreach-call_true-termination.i", directory: ".")
!2 = !{}
!3 = !{!4, !8, !9}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 2, type: !5, isLocal: false, isDefinition: true, scopeLine: 2, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "f", scope: !1, file: !1, line: 10, type: !5, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @f, variables: !2)
!9 = !DISubprogram(name: "main", scope: !1, file: !1, line: 28, type: !10, isLocal: false, isDefinition: true, scopeLine: 28, isOptimized: false, function: i32 ()* @main, variables: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!7}
!12 = !{i32 2, !"Dwarf Version", i32 2}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"PIC Level", i32 2}
!15 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!16 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 2, type: !7)
!17 = !DIExpression()
!18 = !DILocation(line: 2, column: 28, scope: !4)
!19 = !DILocation(line: 3, column: 9, scope: !20)
!20 = distinct !DILexicalBlock(scope: !4, file: !1, line: 3, column: 7)
!21 = !DILocation(line: 3, column: 8, scope: !20)
!22 = !DILocation(line: 3, column: 7, scope: !4)
!23 = !DILocation(line: 3, column: 16, scope: !20)
!24 = !DILocation(line: 4, column: 12, scope: !25)
!25 = distinct !DILexicalBlock(scope: !20, file: !1, line: 3, column: 16)
!26 = !DILocation(line: 6, column: 3, scope: !4)
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "d", arg: 1, scope: !8, file: !1, line: 10, type: !7)
!28 = !DILocation(line: 10, column: 12, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !8, file: !1, line: 11, type: !7)
!30 = !DILocation(line: 11, column: 7, scope: !8)
!31 = !DILocation(line: 11, column: 11, scope: !8)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !8, file: !1, line: 11, type: !7)
!33 = !DILocation(line: 11, column: 36, scope: !8)
!34 = !DILocation(line: 11, column: 40, scope: !8)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !8, file: !1, line: 11, type: !7)
!36 = !DILocation(line: 11, column: 65, scope: !8)
!37 = !DILocation(line: 11, column: 69, scope: !8)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !8, file: !1, line: 11, type: !7)
!39 = !DILocation(line: 11, column: 94, scope: !8)
!40 = !DILocation(line: 2, column: 28, scope: !4, inlinedAt: !41)
!41 = distinct !DILocation(line: 14, column: 3, scope: !8)
!42 = !DILocation(line: 11, column: 3, scope: !8)
!43 = !DILocation(line: 13, column: 3, scope: !8)
!44 = !DILocation(line: 13, column: 10, scope: !8)
!45 = !DILocation(line: 13, column: 14, scope: !8)
!46 = !DILocation(line: 13, column: 12, scope: !8)
!47 = !DILocation(line: 13, column: 27, scope: !48)
!48 = distinct !DILexicalBlock(scope: !8, file: !1, line: 13, column: 17)
!49 = !DILocation(line: 13, column: 25, scope: !48)
!50 = !DILocation(line: 13, column: 21, scope: !48)
!51 = !DILocation(line: 14, column: 21, scope: !8)
!52 = !DILocation(line: 14, column: 22, scope: !8)
!53 = !DILocation(line: 14, column: 3, scope: !8)
!54 = !DILocation(line: 3, column: 9, scope: !20, inlinedAt: !41)
!55 = !DILocation(line: 3, column: 8, scope: !20, inlinedAt: !41)
!56 = !DILocation(line: 3, column: 7, scope: !4, inlinedAt: !41)
!57 = !DILocation(line: 4, column: 12, scope: !25, inlinedAt: !41)
!58 = !DILocation(line: 6, column: 3, scope: !4, inlinedAt: !41)
!59 = !DILocation(line: 16, column: 3, scope: !8)
!60 = !DILocation(line: 16, column: 10, scope: !8)
!61 = !DILocation(line: 16, column: 12, scope: !8)
!62 = !DILocation(line: 16, column: 16, scope: !8)
!63 = !DILocation(line: 16, column: 19, scope: !8)
!64 = !DILocation(line: 16, column: 21, scope: !8)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !66, file: !1, line: 17, type: !67)
!66 = distinct !DILexicalBlock(scope: !8, file: !1, line: 16, column: 26)
!67 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!68 = !DILocation(line: 17, column: 11, scope: !66)
!69 = !DILocation(line: 17, column: 15, scope: !66)
!70 = !DILocation(line: 18, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !66, file: !1, line: 18, column: 9)
!72 = !DILocation(line: 18, column: 9, scope: !66)
!73 = !DILocation(line: 18, column: 12, scope: !71)
!74 = !DILocation(line: 20, column: 11, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 18, column: 12)
!76 = !DILocation(line: 20, column: 15, scope: !75)
!77 = !DILocation(line: 20, column: 13, scope: !75)
!78 = !DILocation(line: 20, column: 9, scope: !75)
!79 = !DILocation(line: 21, column: 11, scope: !75)
!80 = !DILocation(line: 21, column: 9, scope: !75)
!81 = !DILocation(line: 22, column: 11, scope: !75)
!82 = !DILocation(line: 22, column: 13, scope: !75)
!83 = !DILocation(line: 22, column: 9, scope: !75)
!84 = !DILocation(line: 23, column: 5, scope: !75)
!85 = !DILocation(line: 24, column: 11, scope: !86)
!86 = distinct !DILexicalBlock(scope: !71, file: !1, line: 23, column: 12)
!87 = !DILocation(line: 24, column: 15, scope: !86)
!88 = !DILocation(line: 24, column: 13, scope: !86)
!89 = !DILocation(line: 24, column: 9, scope: !86)
!90 = !DILocation(line: 27, column: 1, scope: !8)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !9, file: !1, line: 29, type: !67)
!92 = !DILocation(line: 29, column: 9, scope: !9)
!93 = !DILocation(line: 29, column: 13, scope: !9)
!94 = !DILocation(line: 30, column: 7, scope: !95)
!95 = distinct !DILexicalBlock(scope: !9, file: !1, line: 30, column: 7)
!96 = !DILocation(line: 30, column: 7, scope: !9)
!97 = !DILocation(line: 31, column: 5, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !1, line: 30, column: 10)
!99 = !DILocation(line: 32, column: 3, scope: !98)
!100 = !DILocation(line: 33, column: 5, scope: !101)
!101 = distinct !DILexicalBlock(scope: !95, file: !1, line: 32, column: 10)
!102 = !DILocation(line: 35, column: 3, scope: !9)
