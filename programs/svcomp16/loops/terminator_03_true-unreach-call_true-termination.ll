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
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %x, metadata !26, metadata !16), !dbg !27
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !28
  store i32 %3, i32* %x, align 4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %y, metadata !29, metadata !16), !dbg !30
  %4 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !31
  store i32 %4, i32* %y, align 4, !dbg !30
  %5 = load i32, i32* %y, align 4, !dbg !32
  %6 = icmp sgt i32 %5, 0, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !35
  br i1 %6, label %7, label %16, !dbg !37

; <label>:7                                       ; preds = %0
  br label %8, !dbg !38

; <label>:8                                       ; preds = %11, %7
  %9 = load i32, i32* %x, align 4, !dbg !40
  %10 = icmp slt i32 %9, 100, !dbg !41
  br i1 %10, label %11, label %15, !dbg !38

; <label>:11                                      ; preds = %8
  %12 = load i32, i32* %x, align 4, !dbg !42
  %13 = load i32, i32* %y, align 4, !dbg !44
  %14 = add nsw i32 %12, %13, !dbg !45
  store i32 %14, i32* %x, align 4, !dbg !46
  br label %8, !dbg !38

; <label>:15                                      ; preds = %8
  br label %16, !dbg !47

; <label>:16                                      ; preds = %15, %0
  %17 = load i32, i32* %y, align 4, !dbg !48
  %18 = icmp sle i32 %17, 0, !dbg !49
  br i1 %18, label %27, label %19, !dbg !50

; <label>:19                                      ; preds = %16
  %20 = load i32, i32* %y, align 4, !dbg !51
  %21 = icmp sgt i32 %20, 0, !dbg !52
  br i1 %21, label %22, label %25, !dbg !53

; <label>:22                                      ; preds = %19
  %23 = load i32, i32* %x, align 4, !dbg !54
  %24 = icmp sge i32 %23, 100, !dbg !55
  br label %25

; <label>:25                                      ; preds = %22, %19
  %26 = phi i1 [ false, %19 ], [ %24, %22 ]
  br label %27, !dbg !50

; <label>:27                                      ; preds = %25, %16
  %28 = phi i1 [ true, %16 ], [ %26, %25 ]
  %29 = zext i1 %28 to i32, !dbg !50
  %30 = bitcast i32* %1 to i8*, !dbg !56
  call void @llvm.lifetime.start(i64 4, i8* %30), !dbg !56
  store i32 %29, i32* %1, align 4, !dbg !56
  %31 = load i32, i32* %1, align 4, !dbg !57
  %32 = icmp ne i32 %31, 0, !dbg !58
  br i1 %32, label %__VERIFIER_assert.exit, label %33, !dbg !59

; <label>:33                                      ; preds = %27
  call void (...) @__VERIFIER_error() #6, !dbg !60
  unreachable, !dbg !60

__VERIFIER_assert.exit:                           ; preds = %27
  %34 = bitcast i32* %1 to i8*, !dbg !61
  call void @llvm.lifetime.end(i64 4, i8* %34), !dbg !61
  ret i32 0, !dbg !62
}

declare i32 @__VERIFIER_nondet_int(...) #3

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
!1 = !DIFile(filename: "../sv-comp-2016/c/loops/terminator_03_true-unreach-call_true-termination.i", directory: "/Users/franck/development/perentiemq")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 12, type: !9, isLocal: false, isDefinition: true, scopeLine: 13, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !8, file: !1, line: 14, type: !7)
!27 = !DILocation(line: 14, column: 7, scope: !8)
!28 = !DILocation(line: 14, column: 9, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !8, file: !1, line: 15, type: !7)
!30 = !DILocation(line: 15, column: 7, scope: !8)
!31 = !DILocation(line: 15, column: 9, scope: !8)
!32 = !DILocation(line: 17, column: 7, scope: !33)
!33 = distinct !DILexicalBlock(scope: !8, file: !1, line: 17, column: 7)
!34 = !DILocation(line: 17, column: 8, scope: !33)
!35 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !36)
!36 = distinct !DILocation(line: 25, column: 3, scope: !8)
!37 = !DILocation(line: 17, column: 7, scope: !8)
!38 = !DILocation(line: 19, column: 5, scope: !39)
!39 = distinct !DILexicalBlock(scope: !33, file: !1, line: 18, column: 3)
!40 = !DILocation(line: 19, column: 11, scope: !39)
!41 = !DILocation(line: 19, column: 12, scope: !39)
!42 = !DILocation(line: 21, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !39, file: !1, line: 20, column: 5)
!44 = !DILocation(line: 21, column: 11, scope: !43)
!45 = !DILocation(line: 21, column: 10, scope: !43)
!46 = !DILocation(line: 21, column: 8, scope: !43)
!47 = !DILocation(line: 23, column: 3, scope: !39)
!48 = !DILocation(line: 25, column: 21, scope: !8)
!49 = !DILocation(line: 25, column: 22, scope: !8)
!50 = !DILocation(line: 25, column: 26, scope: !8)
!51 = !DILocation(line: 25, column: 30, scope: !8)
!52 = !DILocation(line: 25, column: 31, scope: !8)
!53 = !DILocation(line: 25, column: 34, scope: !8)
!54 = !DILocation(line: 25, column: 37, scope: !8)
!55 = !DILocation(line: 25, column: 38, scope: !8)
!56 = !DILocation(line: 25, column: 3, scope: !8)
!57 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !36)
!58 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !36)
!59 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !36)
!60 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !36)
!61 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !36)
!62 = !DILocation(line: 27, column: 3, scope: !8)
