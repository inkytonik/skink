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
  %n = alloca i32, align 4
  %x = alloca [2 x i32], align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %n, metadata !27, metadata !16), !dbg !28
  store i32 2, i32* %n, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata [2 x i32]* %x, metadata !29, metadata !16), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %i, metadata !34, metadata !16), !dbg !36
  store i32 0, i32* %i, align 4, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !37
  br label %2, !dbg !41

; <label>:2                                       ; preds = %10, %0
  %3 = load i32, i32* %i, align 4, !dbg !42
  %4 = load i32, i32* %n, align 4, !dbg !44
  %5 = icmp slt i32 %3, %4, !dbg !45
  br i1 %5, label %6, label %13, !dbg !46

; <label>:6                                       ; preds = %2
  %7 = load i32, i32* %i, align 4, !dbg !47
  %8 = sext i32 %7 to i64, !dbg !48
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %x, i32 0, i64 %8, !dbg !48
  store i32 0, i32* %9, align 4, !dbg !49
  br label %10, !dbg !48

; <label>:10                                      ; preds = %6
  %11 = load i32, i32* %i, align 4, !dbg !50
  %12 = add nsw i32 %11, 1, !dbg !50
  store i32 %12, i32* %i, align 4, !dbg !50
  br label %2, !dbg !51

; <label>:13                                      ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !52, metadata !16), !dbg !53
  store i32 0, i32* %i1, align 4, !dbg !53
  br label %14, !dbg !54

; <label>:14                                      ; preds = %30, %13
  %15 = load i32, i32* %i1, align 4, !dbg !55
  %16 = load i32, i32* %n, align 4, !dbg !56
  %17 = icmp slt i32 %15, %16, !dbg !57
  br i1 %17, label %18, label %33, !dbg !58

; <label>:18                                      ; preds = %14
  %19 = load i32, i32* %i1, align 4, !dbg !59
  %20 = sext i32 %19 to i64, !dbg !60
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %x, i32 0, i64 %20, !dbg !60
  %22 = load i32, i32* %21, align 4, !dbg !60
  %23 = icmp eq i32 %22, 0, !dbg !61
  %24 = zext i1 %23 to i32, !dbg !61
  %25 = bitcast i32* %1 to i8*, !dbg !62
  call void @llvm.lifetime.start(i64 4, i8* %25), !dbg !62
  store i32 %24, i32* %1, align 4, !dbg !62
  %26 = load i32, i32* %1, align 4, !dbg !63
  %27 = icmp ne i32 %26, 0, !dbg !64
  br i1 %27, label %__VERIFIER_assert.exit, label %28, !dbg !65

; <label>:28                                      ; preds = %18
  call void @__VERIFIER_error() #3, !dbg !66
  br label %__VERIFIER_assert.exit, !dbg !67

__VERIFIER_assert.exit:                           ; preds = %18, %28
  %29 = bitcast i32* %1 to i8*, !dbg !68
  call void @llvm.lifetime.end(i64 4, i8* %29), !dbg !68
  br label %30, !dbg !62

; <label>:30                                      ; preds = %__VERIFIER_assert.exit
  %31 = load i32, i32* %i1, align 4, !dbg !69
  %32 = add nsw i32 %31, 1, !dbg !69
  store i32 %32, i32* %i1, align 4, !dbg !69
  br label %14, !dbg !70

; <label>:33                                      ; preds = %14
  ret void, !dbg !71
}

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
!1 = !DIFile(filename: "wrong-result-files/mcmillan2006_true-unreach-call.c.i", directory: ".")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 4, type: !5, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !9, isLocal: false, isDefinition: true, scopeLine: 11, isOptimized: false, function: void ()* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{null}
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
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !8, file: !1, line: 15, type: !30)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, align: 32, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 2)
!33 = !DILocation(line: 15, column: 9, scope: !8)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !35, file: !1, line: 17, type: !7)
!35 = distinct !DILexicalBlock(scope: !8, file: !1, line: 17, column: 5)
!36 = !DILocation(line: 17, column: 14, scope: !35)
!37 = !DILocation(line: 4, column: 28, scope: !4, inlinedAt: !38)
!38 = distinct !DILocation(line: 18, column: 33, scope: !39)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 18, column: 5)
!40 = distinct !DILexicalBlock(scope: !8, file: !1, line: 18, column: 5)
!41 = !DILocation(line: 17, column: 10, scope: !35)
!42 = !DILocation(line: 17, column: 21, scope: !43)
!43 = distinct !DILexicalBlock(scope: !35, file: !1, line: 17, column: 5)
!44 = !DILocation(line: 17, column: 25, scope: !43)
!45 = !DILocation(line: 17, column: 23, scope: !43)
!46 = !DILocation(line: 17, column: 5, scope: !35)
!47 = !DILocation(line: 17, column: 35, scope: !43)
!48 = !DILocation(line: 17, column: 33, scope: !43)
!49 = !DILocation(line: 17, column: 38, scope: !43)
!50 = !DILocation(line: 17, column: 29, scope: !43)
!51 = !DILocation(line: 17, column: 5, scope: !43)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !40, file: !1, line: 18, type: !7)
!53 = !DILocation(line: 18, column: 14, scope: !40)
!54 = !DILocation(line: 18, column: 10, scope: !40)
!55 = !DILocation(line: 18, column: 21, scope: !39)
!56 = !DILocation(line: 18, column: 25, scope: !39)
!57 = !DILocation(line: 18, column: 23, scope: !39)
!58 = !DILocation(line: 18, column: 5, scope: !40)
!59 = !DILocation(line: 18, column: 53, scope: !39)
!60 = !DILocation(line: 18, column: 51, scope: !39)
!61 = !DILocation(line: 18, column: 56, scope: !39)
!62 = !DILocation(line: 18, column: 33, scope: !39)
!63 = !DILocation(line: 5, column: 9, scope: !19, inlinedAt: !38)
!64 = !DILocation(line: 5, column: 8, scope: !19, inlinedAt: !38)
!65 = !DILocation(line: 5, column: 7, scope: !4, inlinedAt: !38)
!66 = !DILocation(line: 6, column: 14, scope: !24, inlinedAt: !38)
!67 = !DILocation(line: 7, column: 3, scope: !24, inlinedAt: !38)
!68 = !DILocation(line: 8, column: 3, scope: !4, inlinedAt: !38)
!69 = !DILocation(line: 18, column: 29, scope: !39)
!70 = !DILocation(line: 18, column: 5, scope: !39)
!71 = !DILocation(line: 19, column: 1, scope: !8)
