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
  %n = alloca i32, align 4
  %x = alloca i32*, align 8
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %n, metadata !27, metadata !16), !dbg !28
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !29
  store i32 %3, i32* %n, align 4, !dbg !28
  %4 = load i32, i32* %n, align 4, !dbg !30
  %5 = icmp sle i32 0, %4, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !32
  br i1 %5, label %6, label %9, !dbg !36

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %n, align 4, !dbg !37
  %8 = icmp sle i32 %7, 1000, !dbg !38
  br label %9

; <label>:9                                       ; preds = %6, %0
  %10 = phi i1 [ false, %0 ], [ %8, %6 ]
  %11 = zext i1 %10 to i32, !dbg !36
  call void @__VERIFIER_assume(i32 %11), !dbg !39
  call void @llvm.dbg.declare(metadata i32** %x, metadata !40, metadata !16), !dbg !42
  %12 = load i32, i32* %n, align 4, !dbg !43
  %13 = sext i32 %12 to i64, !dbg !43
  %14 = mul i64 %13, 4, !dbg !44
  %15 = trunc i64 %14 to i32, !dbg !43
  %16 = call noalias i8* @malloc(i32 %15) #4, !dbg !45
  %17 = bitcast i8* %16 to i32*, !dbg !45
  store i32* %17, i32** %x, align 8, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %i, metadata !46, metadata !16), !dbg !48
  store i32 0, i32* %i, align 4, !dbg !48
  br label %18, !dbg !49

; <label>:18                                      ; preds = %27, %9
  %19 = load i32, i32* %i, align 4, !dbg !50
  %20 = load i32, i32* %n, align 4, !dbg !52
  %21 = icmp slt i32 %19, %20, !dbg !53
  br i1 %21, label %22, label %30, !dbg !54

; <label>:22                                      ; preds = %18
  %23 = load i32, i32* %i, align 4, !dbg !55
  %24 = sext i32 %23 to i64, !dbg !56
  %25 = load i32*, i32** %x, align 8, !dbg !56
  %26 = getelementptr inbounds i32, i32* %25, i64 %24, !dbg !56
  store i32 0, i32* %26, align 4, !dbg !57
  br label %27, !dbg !56

; <label>:27                                      ; preds = %22
  %28 = load i32, i32* %i, align 4, !dbg !58
  %29 = add nsw i32 %28, 1, !dbg !58
  store i32 %29, i32* %i, align 4, !dbg !58
  br label %18, !dbg !59

; <label>:30                                      ; preds = %18
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !60, metadata !16), !dbg !61
  store i32 0, i32* %i1, align 4, !dbg !61
  br label %31, !dbg !62

; <label>:31                                      ; preds = %48, %30
  %32 = load i32, i32* %i1, align 4, !dbg !63
  %33 = load i32, i32* %n, align 4, !dbg !64
  %34 = icmp slt i32 %32, %33, !dbg !65
  br i1 %34, label %35, label %51, !dbg !66

; <label>:35                                      ; preds = %31
  %36 = load i32, i32* %i1, align 4, !dbg !67
  %37 = sext i32 %36 to i64, !dbg !68
  %38 = load i32*, i32** %x, align 8, !dbg !68
  %39 = getelementptr inbounds i32, i32* %38, i64 %37, !dbg !68
  %40 = load i32, i32* %39, align 4, !dbg !68
  %41 = icmp eq i32 %40, 0, !dbg !69
  %42 = zext i1 %41 to i32, !dbg !69
  %43 = bitcast i32* %1 to i8*, !dbg !70
  call void @llvm.lifetime.start(i64 4, i8* %43), !dbg !70
  store i32 %42, i32* %1, align 4, !dbg !70
  %44 = load i32, i32* %1, align 4, !dbg !71
  %45 = icmp ne i32 %44, 0, !dbg !72
  br i1 %45, label %__VERIFIER_assert.exit, label %46, !dbg !73

; <label>:46                                      ; preds = %35
  call void @__VERIFIER_error() #4, !dbg !74
  br label %__VERIFIER_assert.exit, !dbg !75

__VERIFIER_assert.exit:                           ; preds = %35, %46
  %47 = bitcast i32* %1 to i8*, !dbg !76
  call void @llvm.lifetime.end(i64 4, i8* %47), !dbg !76
  br label %48, !dbg !70

; <label>:48                                      ; preds = %__VERIFIER_assert.exit
  %49 = load i32, i32* %i1, align 4, !dbg !77
  %50 = add nsw i32 %49, 1, !dbg !77
  store i32 %50, i32* %i1, align 4, !dbg !77
  br label %31, !dbg !78

; <label>:51                                      ; preds = %31
  ret i32 0, !dbg !79
}

declare i32 @__VERIFIER_nondet_int(...) #2

declare void @__VERIFIER_assume(i32) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "programs/svcomp16/loop-lit/mcmillan2006_true-unreach-call.c.i", directory: ".")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 4, type: !5, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
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
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 4, type: !7)
!16 = !DIExpression()
!17 = !DILocation(line: 4, column: 28, scope: !4)
!18 = !DILocation(line: 5, column: 9, scope: !19)
!19 = distinct !DILexicalBlock(scope: !4, file: !1, line: 5, column: 7)
!20 = !DILocation(line: 5, column: 8, scope: !19)
!21 = !DILocation(line: 5, column: 7, scope: !4)
!22 = !DILocation(line: 5, column: 16, scope: !19)
!23 = !DILocation(line: 6, column: 14, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 5, column: 16)
!25 = !DILocation(line: 7, column: 3, scope: !24)
!26 = !DILocation(line: 8, column: 3, scope: !4)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !8, file: !1, line: 12, type: !7)
!28 = !DILocation(line: 12, column: 9, scope: !8)
!29 = !DILocation(line: 12, column: 13, scope: !8)
!30 = !DILocation(line: 13, column: 28, scope: !8)
!31 = !DILocation(line: 13, column: 25, scope: !8)
!32 = !DILocation(line: 4, column: 28, scope: !4, inlinedAt: !33)
!33 = distinct !DILocation(line: 16, column: 33, scope: !34)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 16, column: 5)
!35 = distinct !DILexicalBlock(scope: !8, file: !1, line: 16, column: 5)
!36 = !DILocation(line: 13, column: 30, scope: !8)
!37 = !DILocation(line: 13, column: 33, scope: !8)
!38 = !DILocation(line: 13, column: 35, scope: !8)
!39 = !DILocation(line: 13, column: 5, scope: !8)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !8, file: !1, line: 14, type: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!42 = !DILocation(line: 14, column: 10, scope: !8)
!43 = !DILocation(line: 14, column: 21, scope: !8)
!44 = !DILocation(line: 14, column: 23, scope: !8)
!45 = !DILocation(line: 14, column: 14, scope: !8)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !47, file: !1, line: 15, type: !7)
!47 = distinct !DILexicalBlock(scope: !8, file: !1, line: 15, column: 5)
!48 = !DILocation(line: 15, column: 14, scope: !47)
!49 = !DILocation(line: 15, column: 10, scope: !47)
!50 = !DILocation(line: 15, column: 21, scope: !51)
!51 = distinct !DILexicalBlock(scope: !47, file: !1, line: 15, column: 5)
!52 = !DILocation(line: 15, column: 25, scope: !51)
!53 = !DILocation(line: 15, column: 23, scope: !51)
!54 = !DILocation(line: 15, column: 5, scope: !47)
!55 = !DILocation(line: 15, column: 35, scope: !51)
!56 = !DILocation(line: 15, column: 33, scope: !51)
!57 = !DILocation(line: 15, column: 38, scope: !51)
!58 = !DILocation(line: 15, column: 29, scope: !51)
!59 = !DILocation(line: 15, column: 5, scope: !51)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !35, file: !1, line: 16, type: !7)
!61 = !DILocation(line: 16, column: 14, scope: !35)
!62 = !DILocation(line: 16, column: 10, scope: !35)
!63 = !DILocation(line: 16, column: 21, scope: !34)
!64 = !DILocation(line: 16, column: 25, scope: !34)
!65 = !DILocation(line: 16, column: 23, scope: !34)
!66 = !DILocation(line: 16, column: 5, scope: !35)
!67 = !DILocation(line: 16, column: 53, scope: !34)
!68 = !DILocation(line: 16, column: 51, scope: !34)
!69 = !DILocation(line: 16, column: 56, scope: !34)
!70 = !DILocation(line: 16, column: 33, scope: !34)
!71 = !DILocation(line: 5, column: 9, scope: !19, inlinedAt: !33)
!72 = !DILocation(line: 5, column: 8, scope: !19, inlinedAt: !33)
!73 = !DILocation(line: 5, column: 7, scope: !4, inlinedAt: !33)
!74 = !DILocation(line: 6, column: 14, scope: !24, inlinedAt: !33)
!75 = !DILocation(line: 7, column: 3, scope: !24, inlinedAt: !33)
!76 = !DILocation(line: 8, column: 3, scope: !4, inlinedAt: !33)
!77 = !DILocation(line: 16, column: 29, scope: !34)
!78 = !DILocation(line: 16, column: 5, scope: !34)
!79 = !DILocation(line: 17, column: 5, scope: !8)
