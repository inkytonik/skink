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
  call void @__VERIFIER_error(), !dbg !23
  br label %6, !dbg !25

; <label>:6                                       ; preds = %5, %0
  ret void, !dbg !26
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @__VERIFIER_error() #2

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %flag = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %j, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %a, metadata !31, metadata !16), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %b, metadata !33, metadata !16), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %flag, metadata !35, metadata !16), !dbg !36
  %2 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !37
  store i32 %2, i32* %flag, align 4, !dbg !36
  store i32 0, i32* %a, align 4, !dbg !38
  store i32 0, i32* %b, align 4, !dbg !39
  store i32 1, i32* %j, align 4, !dbg !40
  %3 = load i32, i32* %flag, align 4, !dbg !41
  %4 = icmp ne i32 %3, 0, !dbg !41
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !43
  br i1 %4, label %5, label %6, !dbg !47

; <label>:5                                       ; preds = %0
  store i32 0, i32* %i, align 4, !dbg !48
  br label %7, !dbg !50

; <label>:6                                       ; preds = %0
  store i32 1, i32* %i, align 4, !dbg !51
  br label %7

; <label>:7                                       ; preds = %6, %5
  br label %8, !dbg !53

; <label>:8                                       ; preds = %30, %7
  %9 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !54
  %10 = icmp ne i32 %9, 0, !dbg !53
  br i1 %10, label %11, label %31, !dbg !53

; <label>:11                                      ; preds = %8
  %12 = load i32, i32* %a, align 4, !dbg !55
  %13 = add nsw i32 %12, 1, !dbg !55
  store i32 %13, i32* %a, align 4, !dbg !55
  %14 = load i32, i32* %j, align 4, !dbg !57
  %15 = load i32, i32* %i, align 4, !dbg !58
  %16 = sub nsw i32 %14, %15, !dbg !59
  %17 = load i32, i32* %b, align 4, !dbg !60
  %18 = add nsw i32 %17, %16, !dbg !60
  store i32 %18, i32* %b, align 4, !dbg !60
  %19 = load i32, i32* %i, align 4, !dbg !61
  %20 = add nsw i32 %19, 2, !dbg !61
  store i32 %20, i32* %i, align 4, !dbg !61
  %21 = load i32, i32* %i, align 4, !dbg !62
  %22 = srem i32 %21, 2, !dbg !64
  %23 = icmp eq i32 %22, 0, !dbg !65
  br i1 %23, label %24, label %27, !dbg !66

; <label>:24                                      ; preds = %11
  %25 = load i32, i32* %j, align 4, !dbg !67
  %26 = add nsw i32 %25, 2, !dbg !67
  store i32 %26, i32* %j, align 4, !dbg !67
  br label %30, !dbg !69

; <label>:27                                      ; preds = %11
  %28 = load i32, i32* %j, align 4, !dbg !70
  %29 = add nsw i32 %28, 1, !dbg !70
  store i32 %29, i32* %j, align 4, !dbg !70
  br label %30

; <label>:30                                      ; preds = %27, %24
  br label %8, !dbg !53

; <label>:31                                      ; preds = %8
  %32 = load i32, i32* %flag, align 4, !dbg !72
  %33 = icmp ne i32 %32, 0, !dbg !72
  br i1 %33, label %34, label %44, !dbg !73

; <label>:34                                      ; preds = %31
  %35 = load i32, i32* %a, align 4, !dbg !74
  %36 = load i32, i32* %b, align 4, !dbg !75
  %37 = icmp eq i32 %35, %36, !dbg !76
  %38 = zext i1 %37 to i32, !dbg !76
  %39 = bitcast i32* %1 to i8*, !dbg !77
  call void @llvm.lifetime.start(i64 4, i8* %39), !dbg !77
  store i32 %38, i32* %1, align 4, !dbg !77
  %40 = load i32, i32* %1, align 4, !dbg !78
  %41 = icmp ne i32 %40, 0, !dbg !79
  br i1 %41, label %__VERIFIER_assert.exit, label %42, !dbg !80

; <label>:42                                      ; preds = %34
  call void @__VERIFIER_error() #3, !dbg !81
  br label %__VERIFIER_assert.exit, !dbg !82

__VERIFIER_assert.exit:                           ; preds = %34, %42
  %43 = bitcast i32* %1 to i8*, !dbg !83
  call void @llvm.lifetime.end(i64 4, i8* %43), !dbg !83
  br label %44, !dbg !84

; <label>:44                                      ; preds = %__VERIFIER_assert.exit, %31
  ret void, !dbg !85
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
!1 = !DIFile(filename: "../../sv-comp-2016/c/loop-lit/ddlm2013_true-unreach-call.c.i", directory: "/Users/franck/development/perentiemq/programs")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !9, isLocal: false, isDefinition: true, scopeLine: 10, isOptimized: false, function: void ()* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{null}
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
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 11, type: !7)
!28 = !DILocation(line: 11, column: 9, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 11, type: !7)
!30 = !DILocation(line: 11, column: 11, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !8, file: !1, line: 11, type: !7)
!32 = !DILocation(line: 11, column: 13, scope: !8)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !8, file: !1, line: 11, type: !7)
!34 = !DILocation(line: 11, column: 15, scope: !8)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "flag", scope: !8, file: !1, line: 12, type: !7)
!36 = !DILocation(line: 12, column: 9, scope: !8)
!37 = !DILocation(line: 12, column: 16, scope: !8)
!38 = !DILocation(line: 13, column: 7, scope: !8)
!39 = !DILocation(line: 14, column: 7, scope: !8)
!40 = !DILocation(line: 15, column: 7, scope: !8)
!41 = !DILocation(line: 16, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !8, file: !1, line: 16, column: 9)
!43 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !44)
!44 = distinct !DILocation(line: 32, column: 2, scope: !45)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 31, column: 15)
!46 = distinct !DILexicalBlock(scope: !8, file: !1, line: 31, column: 9)
!47 = !DILocation(line: 16, column: 9, scope: !8)
!48 = !DILocation(line: 17, column: 4, scope: !49)
!49 = distinct !DILexicalBlock(scope: !42, file: !1, line: 16, column: 15)
!50 = !DILocation(line: 18, column: 5, scope: !49)
!51 = !DILocation(line: 19, column: 4, scope: !52)
!52 = distinct !DILexicalBlock(scope: !42, file: !1, line: 18, column: 12)
!53 = !DILocation(line: 21, column: 5, scope: !8)
!54 = !DILocation(line: 21, column: 12, scope: !8)
!55 = !DILocation(line: 22, column: 3, scope: !56)
!56 = distinct !DILexicalBlock(scope: !8, file: !1, line: 21, column: 37)
!57 = !DILocation(line: 23, column: 8, scope: !56)
!58 = !DILocation(line: 23, column: 12, scope: !56)
!59 = !DILocation(line: 23, column: 10, scope: !56)
!60 = !DILocation(line: 23, column: 4, scope: !56)
!61 = !DILocation(line: 24, column: 4, scope: !56)
!62 = !DILocation(line: 25, column: 6, scope: !63)
!63 = distinct !DILexicalBlock(scope: !56, file: !1, line: 25, column: 6)
!64 = !DILocation(line: 25, column: 7, scope: !63)
!65 = !DILocation(line: 25, column: 10, scope: !63)
!66 = !DILocation(line: 25, column: 6, scope: !56)
!67 = !DILocation(line: 26, column: 8, scope: !68)
!68 = distinct !DILexicalBlock(scope: !63, file: !1, line: 25, column: 16)
!69 = !DILocation(line: 27, column: 2, scope: !68)
!70 = !DILocation(line: 28, column: 7, scope: !71)
!71 = distinct !DILexicalBlock(scope: !63, file: !1, line: 27, column: 9)
!72 = !DILocation(line: 31, column: 9, scope: !46)
!73 = !DILocation(line: 31, column: 9, scope: !8)
!74 = !DILocation(line: 32, column: 20, scope: !45)
!75 = !DILocation(line: 32, column: 25, scope: !45)
!76 = !DILocation(line: 32, column: 22, scope: !45)
!77 = !DILocation(line: 32, column: 2, scope: !45)
!78 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !44)
!79 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !44)
!80 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !44)
!81 = !DILocation(line: 5, column: 14, scope: !24, inlinedAt: !44)
!82 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !44)
!83 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !44)
!84 = !DILocation(line: 33, column: 5, scope: !45)
!85 = !DILocation(line: 34, column: 1, scope: !8)
