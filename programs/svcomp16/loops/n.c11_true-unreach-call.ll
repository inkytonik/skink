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
  %a = alloca [5 x i32], align 16
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata [5 x i32]* %a, metadata !26, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %len, metadata !31, metadata !16), !dbg !33
  store i32 0, i32* %len, align 4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %i, metadata !34, metadata !16), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !36
  br label %3, !dbg !38

; <label>:3                                       ; preds = %9, %0
  %4 = call zeroext i1 (...) @__VERIFIER_nondet_bool(), !dbg !39
  br i1 %4, label %5, label %15, !dbg !38

; <label>:5                                       ; preds = %3
  %6 = load i32, i32* %len, align 4, !dbg !40
  %7 = icmp eq i32 %6, 4, !dbg !43
  br i1 %7, label %8, label %9, !dbg !44

; <label>:8                                       ; preds = %5
  store i32 0, i32* %len, align 4, !dbg !45
  br label %9, !dbg !46

; <label>:9                                       ; preds = %8, %5
  %10 = load i32, i32* %len, align 4, !dbg !47
  %11 = zext i32 %10 to i64, !dbg !48
  %12 = getelementptr inbounds [5 x i32], [5 x i32]* %a, i32 0, i64 %11, !dbg !48
  store i32 0, i32* %12, align 4, !dbg !49
  %13 = load i32, i32* %len, align 4, !dbg !50
  %14 = add i32 %13, 1, !dbg !50
  store i32 %14, i32* %len, align 4, !dbg !50
  br label %3, !dbg !38

; <label>:15                                      ; preds = %3
  %16 = load i32, i32* %len, align 4, !dbg !51
  %17 = icmp uge i32 %16, 0, !dbg !52
  br i1 %17, label %18, label %21, !dbg !53

; <label>:18                                      ; preds = %15
  %19 = load i32, i32* %len, align 4, !dbg !54
  %20 = icmp ult i32 %19, 5, !dbg !55
  br label %21

; <label>:21                                      ; preds = %18, %15
  %22 = phi i1 [ false, %15 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32, !dbg !53
  %24 = bitcast i32* %1 to i8*, !dbg !56
  call void @llvm.lifetime.start(i64 4, i8* %24), !dbg !56
  store i32 %23, i32* %1, align 4, !dbg !56
  %25 = load i32, i32* %1, align 4, !dbg !57
  %26 = icmp ne i32 %25, 0, !dbg !58
  br i1 %26, label %__VERIFIER_assert.exit, label %27, !dbg !59

; <label>:27                                      ; preds = %21
  call void (...) @__VERIFIER_error() #6, !dbg !60
  unreachable, !dbg !60

__VERIFIER_assert.exit:                           ; preds = %21
  %28 = bitcast i32* %1 to i8*, !dbg !61
  call void @llvm.lifetime.end(i64 4, i8* %28), !dbg !61
  ret i32 1, !dbg !62
}

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
!1 = !DIFile(filename: "programs/svcomp16/loops/n.c11_true-unreach-call.i", directory: ".")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 2, type: !5, isLocal: false, isDefinition: true, scopeLine: 2, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 9, type: !9, isLocal: false, isDefinition: true, scopeLine: 9, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !8, file: !1, line: 10, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, align: 32, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 5)
!30 = !DILocation(line: 10, column: 8, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !8, file: !1, line: 11, type: !32)
!32 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!33 = !DILocation(line: 11, column: 17, scope: !8)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 12, type: !7)
!35 = !DILocation(line: 12, column: 8, scope: !8)
!36 = !DILocation(line: 2, column: 28, scope: !4, inlinedAt: !37)
!37 = distinct !DILocation(line: 19, column: 4, scope: !8)
!38 = !DILocation(line: 13, column: 4, scope: !8)
!39 = !DILocation(line: 13, column: 10, scope: !8)
!40 = !DILocation(line: 14, column: 11, scope: !41)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 14, column: 11)
!42 = distinct !DILexicalBlock(scope: !8, file: !1, line: 13, column: 35)
!43 = !DILocation(line: 14, column: 14, scope: !41)
!44 = !DILocation(line: 14, column: 11, scope: !42)
!45 = !DILocation(line: 15, column: 14, scope: !41)
!46 = !DILocation(line: 15, column: 10, scope: !41)
!47 = !DILocation(line: 16, column: 9, scope: !42)
!48 = !DILocation(line: 16, column: 7, scope: !42)
!49 = !DILocation(line: 16, column: 13, scope: !42)
!50 = !DILocation(line: 17, column: 10, scope: !42)
!51 = !DILocation(line: 19, column: 22, scope: !8)
!52 = !DILocation(line: 19, column: 25, scope: !8)
!53 = !DILocation(line: 19, column: 29, scope: !8)
!54 = !DILocation(line: 19, column: 32, scope: !8)
!55 = !DILocation(line: 19, column: 35, scope: !8)
!56 = !DILocation(line: 19, column: 4, scope: !8)
!57 = !DILocation(line: 3, column: 9, scope: !19, inlinedAt: !37)
!58 = !DILocation(line: 3, column: 8, scope: !19, inlinedAt: !37)
!59 = !DILocation(line: 3, column: 7, scope: !4, inlinedAt: !37)
!60 = !DILocation(line: 4, column: 12, scope: !24, inlinedAt: !37)
!61 = !DILocation(line: 6, column: 3, scope: !4, inlinedAt: !37)
!62 = !DILocation(line: 20, column: 4, scope: !8)
