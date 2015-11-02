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
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %flag = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !16), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %j, metadata !30, metadata !16), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %a, metadata !32, metadata !16), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %b, metadata !34, metadata !16), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %flag, metadata !36, metadata !16), !dbg !37
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !38
  store i32 %3, i32* %flag, align 4, !dbg !37
  store i32 0, i32* %a, align 4, !dbg !39
  store i32 0, i32* %b, align 4, !dbg !40
  store i32 1, i32* %j, align 4, !dbg !41
  %4 = load i32, i32* %flag, align 4, !dbg !42
  %5 = icmp ne i32 %4, 0, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !44
  br i1 %5, label %6, label %7, !dbg !48

; <label>:6                                       ; preds = %0
  store i32 0, i32* %i, align 4, !dbg !49
  br label %8, !dbg !51

; <label>:7                                       ; preds = %0
  store i32 1, i32* %i, align 4, !dbg !52
  br label %8

; <label>:8                                       ; preds = %7, %6
  br label %9, !dbg !54

; <label>:9                                       ; preds = %31, %8
  %10 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !55
  %11 = icmp ne i32 %10, 0, !dbg !54
  br i1 %11, label %12, label %32, !dbg !54

; <label>:12                                      ; preds = %9
  %13 = load i32, i32* %a, align 4, !dbg !56
  %14 = add i32 %13, 1, !dbg !56
  store i32 %14, i32* %a, align 4, !dbg !56
  %15 = load i32, i32* %j, align 4, !dbg !58
  %16 = load i32, i32* %i, align 4, !dbg !59
  %17 = sub i32 %15, %16, !dbg !60
  %18 = load i32, i32* %b, align 4, !dbg !61
  %19 = add i32 %18, %17, !dbg !61
  store i32 %19, i32* %b, align 4, !dbg !61
  %20 = load i32, i32* %i, align 4, !dbg !62
  %21 = add i32 %20, 2, !dbg !62
  store i32 %21, i32* %i, align 4, !dbg !62
  %22 = load i32, i32* %i, align 4, !dbg !63
  %23 = urem i32 %22, 2, !dbg !65
  %24 = icmp eq i32 %23, 0, !dbg !66
  br i1 %24, label %25, label %28, !dbg !67

; <label>:25                                      ; preds = %12
  %26 = load i32, i32* %j, align 4, !dbg !68
  %27 = add i32 %26, 2, !dbg !68
  store i32 %27, i32* %j, align 4, !dbg !68
  br label %31, !dbg !70

; <label>:28                                      ; preds = %12
  %29 = load i32, i32* %j, align 4, !dbg !71
  %30 = add i32 %29, 1, !dbg !71
  store i32 %30, i32* %j, align 4, !dbg !71
  br label %31

; <label>:31                                      ; preds = %28, %25
  br label %9, !dbg !54

; <label>:32                                      ; preds = %9
  %33 = load i32, i32* %flag, align 4, !dbg !73
  %34 = icmp ne i32 %33, 0, !dbg !73
  br i1 %34, label %35, label %45, !dbg !74

; <label>:35                                      ; preds = %32
  %36 = load i32, i32* %a, align 4, !dbg !75
  %37 = load i32, i32* %b, align 4, !dbg !76
  %38 = icmp eq i32 %36, %37, !dbg !77
  %39 = zext i1 %38 to i32, !dbg !77
  %40 = bitcast i32* %1 to i8*, !dbg !78
  call void @llvm.lifetime.start(i64 4, i8* %40), !dbg !78
  store i32 %39, i32* %1, align 4, !dbg !78
  %41 = load i32, i32* %1, align 4, !dbg !79
  %42 = icmp ne i32 %41, 0, !dbg !80
  br i1 %42, label %__VERIFIER_assert.exit, label %43, !dbg !81

; <label>:43                                      ; preds = %35
  call void @__VERIFIER_error() #3, !dbg !82
  br label %__VERIFIER_assert.exit, !dbg !83

__VERIFIER_assert.exit:                           ; preds = %35, %43
  %44 = bitcast i32* %1 to i8*, !dbg !84
  call void @llvm.lifetime.end(i64 4, i8* %44), !dbg !84
  br label %45, !dbg !85

; <label>:45                                      ; preds = %__VERIFIER_assert.exit, %32
  ret i32 0, !dbg !86
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
!1 = !DIFile(filename: "programs/svcomp16/loop-lit/ddlm2013_true-unreach-call.c.i", directory: ".")
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
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 11, type: !28)
!28 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!29 = !DILocation(line: 11, column: 18, scope: !8)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 11, type: !28)
!31 = !DILocation(line: 11, column: 20, scope: !8)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !8, file: !1, line: 11, type: !28)
!33 = !DILocation(line: 11, column: 22, scope: !8)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !8, file: !1, line: 11, type: !28)
!35 = !DILocation(line: 11, column: 24, scope: !8)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "flag", scope: !8, file: !1, line: 12, type: !7)
!37 = !DILocation(line: 12, column: 9, scope: !8)
!38 = !DILocation(line: 12, column: 16, scope: !8)
!39 = !DILocation(line: 13, column: 7, scope: !8)
!40 = !DILocation(line: 14, column: 7, scope: !8)
!41 = !DILocation(line: 15, column: 7, scope: !8)
!42 = !DILocation(line: 16, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !8, file: !1, line: 16, column: 9)
!44 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !45)
!45 = distinct !DILocation(line: 32, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 31, column: 15)
!47 = distinct !DILexicalBlock(scope: !8, file: !1, line: 31, column: 9)
!48 = !DILocation(line: 16, column: 9, scope: !8)
!49 = !DILocation(line: 17, column: 11, scope: !50)
!50 = distinct !DILexicalBlock(scope: !43, file: !1, line: 16, column: 15)
!51 = !DILocation(line: 18, column: 5, scope: !50)
!52 = !DILocation(line: 19, column: 11, scope: !53)
!53 = distinct !DILexicalBlock(scope: !43, file: !1, line: 18, column: 12)
!54 = !DILocation(line: 21, column: 5, scope: !8)
!55 = !DILocation(line: 21, column: 12, scope: !8)
!56 = !DILocation(line: 22, column: 10, scope: !57)
!57 = distinct !DILexicalBlock(scope: !8, file: !1, line: 21, column: 37)
!58 = !DILocation(line: 23, column: 15, scope: !57)
!59 = !DILocation(line: 23, column: 19, scope: !57)
!60 = !DILocation(line: 23, column: 17, scope: !57)
!61 = !DILocation(line: 23, column: 11, scope: !57)
!62 = !DILocation(line: 24, column: 11, scope: !57)
!63 = !DILocation(line: 25, column: 13, scope: !64)
!64 = distinct !DILexicalBlock(scope: !57, file: !1, line: 25, column: 13)
!65 = !DILocation(line: 25, column: 14, scope: !64)
!66 = !DILocation(line: 25, column: 17, scope: !64)
!67 = !DILocation(line: 25, column: 13, scope: !57)
!68 = !DILocation(line: 26, column: 15, scope: !69)
!69 = distinct !DILexicalBlock(scope: !64, file: !1, line: 25, column: 23)
!70 = !DILocation(line: 27, column: 9, scope: !69)
!71 = !DILocation(line: 28, column: 14, scope: !72)
!72 = distinct !DILexicalBlock(scope: !64, file: !1, line: 27, column: 16)
!73 = !DILocation(line: 31, column: 9, scope: !47)
!74 = !DILocation(line: 31, column: 9, scope: !8)
!75 = !DILocation(line: 32, column: 27, scope: !46)
!76 = !DILocation(line: 32, column: 32, scope: !46)
!77 = !DILocation(line: 32, column: 29, scope: !46)
!78 = !DILocation(line: 32, column: 9, scope: !46)
!79 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !45)
!80 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !45)
!81 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !45)
!82 = !DILocation(line: 5, column: 14, scope: !24, inlinedAt: !45)
!83 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !45)
!84 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !45)
!85 = !DILocation(line: 33, column: 5, scope: !46)
!86 = !DILocation(line: 34, column: 5, scope: !8)
