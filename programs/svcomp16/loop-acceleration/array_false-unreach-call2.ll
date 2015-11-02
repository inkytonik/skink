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
  call void (...) @__VERIFIER_error() #4, !dbg !23
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
  %A = alloca [2048 x i32], align 16
  %B = alloca [2048 x i32], align 16
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata [2048 x i32]* %A, metadata !26, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata [2048 x i32]* %B, metadata !31, metadata !16), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %i, metadata !33, metadata !16), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !35, metadata !16), !dbg !36
  store i32 0, i32* %i, align 4, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !39
  br label %3, !dbg !41

; <label>:3                                       ; preds = %15, %0
  %4 = load i32, i32* %i, align 4, !dbg !42
  %5 = icmp slt i32 %4, 2048, !dbg !44
  br i1 %5, label %6, label %18, !dbg !45

; <label>:6                                       ; preds = %3
  %7 = load i32, i32* %i, align 4, !dbg !46
  %8 = sext i32 %7 to i64, !dbg !48
  %9 = getelementptr inbounds [2048 x i32], [2048 x i32]* %A, i32 0, i64 %8, !dbg !48
  %10 = load i32, i32* %9, align 4, !dbg !48
  store i32 %10, i32* %tmp, align 4, !dbg !49
  %11 = load i32, i32* %tmp, align 4, !dbg !50
  %12 = load i32, i32* %i, align 4, !dbg !51
  %13 = sext i32 %12 to i64, !dbg !52
  %14 = getelementptr inbounds [2048 x i32], [2048 x i32]* %B, i32 0, i64 %13, !dbg !52
  store i32 %11, i32* %14, align 4, !dbg !53
  br label %15, !dbg !54

; <label>:15                                      ; preds = %6
  %16 = load i32, i32* %i, align 4, !dbg !55
  %17 = add nsw i32 %16, 1, !dbg !55
  store i32 %17, i32* %i, align 4, !dbg !55
  br label %3, !dbg !56

; <label>:18                                      ; preds = %3
  %19 = getelementptr inbounds [2048 x i32], [2048 x i32]* %A, i32 0, i64 1024, !dbg !57
  %20 = load i32, i32* %19, align 4, !dbg !57
  %21 = getelementptr inbounds [2048 x i32], [2048 x i32]* %B, i32 0, i64 1024, !dbg !58
  %22 = load i32, i32* %21, align 4, !dbg !58
  %23 = icmp ne i32 %20, %22, !dbg !59
  %24 = zext i1 %23 to i32, !dbg !59
  %25 = bitcast i32* %1 to i8*, !dbg !60
  call void @llvm.lifetime.start(i64 4, i8* %25), !dbg !60
  store i32 %24, i32* %1, align 4, !dbg !60
  %26 = load i32, i32* %1, align 4, !dbg !61
  %27 = icmp ne i32 %26, 0, !dbg !62
  br i1 %27, label %__VERIFIER_assert.exit, label %28, !dbg !63

; <label>:28                                      ; preds = %18
  call void (...) @__VERIFIER_error() #5, !dbg !64
  unreachable, !dbg !64

__VERIFIER_assert.exit:                           ; preds = %18
  %29 = bitcast i32* %1 to i8*, !dbg !65
  call void @llvm.lifetime.end(i64 4, i8* %29), !dbg !65
  %30 = load i32, i32* %2, !dbg !66
  ret i32 %30, !dbg !66
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }
attributes #5 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "programs/svcomp16/loop-acceleration/array_false-unreach-call2.i", directory: ".")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 2, type: !5, isLocal: false, isDefinition: true, scopeLine: 2, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 8, type: !9, isLocal: false, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!7}
!11 = !{i32 2, !"Dwarf Version", i32 2}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"PIC Level", i32 2}
!14 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 2, type: !7)
!16 = !DIExpression()
!17 = !DILocation(line: 2, column: 28, scope: !4)
!18 = !DILocation(line: 3, column: 9, scope: !19)
!19 = distinct !DILexicalBlock(scope: !4, file: !1, line: 3, column: 7)
!20 = !DILocation(line: 3, column: 8, scope: !19)
!21 = !DILocation(line: 3, column: 7, scope: !4)
!22 = !DILocation(line: 3, column: 16, scope: !19)
!23 = !DILocation(line: 4, column: 12, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 3, column: 16)
!25 = !DILocation(line: 6, column: 3, scope: !4)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "A", scope: !8, file: !1, line: 9, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 65536, align: 32, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 2048)
!30 = !DILocation(line: 9, column: 7, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "B", scope: !8, file: !1, line: 10, type: !27)
!32 = !DILocation(line: 10, column: 7, scope: !8)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 11, type: !7)
!34 = !DILocation(line: 11, column: 7, scope: !8)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !8, file: !1, line: 12, type: !7)
!36 = !DILocation(line: 12, column: 7, scope: !8)
!37 = !DILocation(line: 13, column: 10, scope: !38)
!38 = distinct !DILexicalBlock(scope: !8, file: !1, line: 13, column: 3)
!39 = !DILocation(line: 2, column: 28, scope: !4, inlinedAt: !40)
!40 = distinct !DILocation(line: 17, column: 3, scope: !8)
!41 = !DILocation(line: 13, column: 8, scope: !38)
!42 = !DILocation(line: 13, column: 15, scope: !43)
!43 = distinct !DILexicalBlock(scope: !38, file: !1, line: 13, column: 3)
!44 = !DILocation(line: 13, column: 17, scope: !43)
!45 = !DILocation(line: 13, column: 3, scope: !38)
!46 = !DILocation(line: 14, column: 13, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 13, column: 30)
!48 = !DILocation(line: 14, column: 11, scope: !47)
!49 = !DILocation(line: 14, column: 9, scope: !47)
!50 = !DILocation(line: 15, column: 12, scope: !47)
!51 = !DILocation(line: 15, column: 7, scope: !47)
!52 = !DILocation(line: 15, column: 5, scope: !47)
!53 = !DILocation(line: 15, column: 10, scope: !47)
!54 = !DILocation(line: 16, column: 3, scope: !47)
!55 = !DILocation(line: 13, column: 26, scope: !43)
!56 = !DILocation(line: 13, column: 3, scope: !43)
!57 = !DILocation(line: 17, column: 21, scope: !8)
!58 = !DILocation(line: 17, column: 34, scope: !8)
!59 = !DILocation(line: 17, column: 31, scope: !8)
!60 = !DILocation(line: 17, column: 3, scope: !8)
!61 = !DILocation(line: 3, column: 9, scope: !19, inlinedAt: !40)
!62 = !DILocation(line: 3, column: 8, scope: !19, inlinedAt: !40)
!63 = !DILocation(line: 3, column: 7, scope: !4, inlinedAt: !40)
!64 = !DILocation(line: 4, column: 12, scope: !24, inlinedAt: !40)
!65 = !DILocation(line: 6, column: 3, scope: !4, inlinedAt: !40)
!66 = !DILocation(line: 18, column: 1, scope: !8)
