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
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !35
  br label %6, !dbg !37

; <label>:6                                       ; preds = %27, %0
  %7 = load i32, i32* %x, align 4, !dbg !38
  %8 = icmp slt i32 %7, 100, !dbg !39
  br i1 %8, label %9, label %12, !dbg !40

; <label>:9                                       ; preds = %6
  %10 = load i32, i32* %z, align 4, !dbg !41
  %11 = icmp slt i32 100, %10, !dbg !42
  br label %12

; <label>:12                                      ; preds = %9, %6
  %13 = phi i1 [ false, %6 ], [ %11, %9 ]
  br i1 %13, label %14, label %28, !dbg !37

; <label>:14                                      ; preds = %12
  call void @llvm.dbg.declare(metadata i8* %tmp, metadata !43, metadata !16), !dbg !46
  %15 = call zeroext i1 (...) @__VERIFIER_nondet_bool(), !dbg !47
  %16 = zext i1 %15 to i8, !dbg !46
  store i8 %16, i8* %tmp, align 1, !dbg !46
  %17 = load i8, i8* %tmp, align 1, !dbg !48
  %18 = trunc i8 %17 to i1, !dbg !48
  br i1 %18, label %19, label %22, !dbg !50

; <label>:19                                      ; preds = %14
  %20 = load i32, i32* %x, align 4, !dbg !51
  %21 = add nsw i32 %20, 1, !dbg !51
  store i32 %21, i32* %x, align 4, !dbg !51
  br label %27, !dbg !53

; <label>:22                                      ; preds = %14
  %23 = load i32, i32* %x, align 4, !dbg !54
  %24 = add nsw i32 %23, -1, !dbg !54
  store i32 %24, i32* %x, align 4, !dbg !54
  %25 = load i32, i32* %z, align 4, !dbg !56
  %26 = add nsw i32 %25, -1, !dbg !56
  store i32 %26, i32* %z, align 4, !dbg !56
  br label %27

; <label>:27                                      ; preds = %22, %19
  br label %6, !dbg !37

; <label>:28                                      ; preds = %12
  %29 = bitcast i32* %1 to i8*, !dbg !57
  call void @llvm.lifetime.start(i64 4, i8* %29), !dbg !57
  store i32 0, i32* %1, align 4, !dbg !57
  %30 = load i32, i32* %1, align 4, !dbg !58
  %31 = icmp ne i32 %30, 0, !dbg !59
  br i1 %31, label %__VERIFIER_assert.exit, label %32, !dbg !60

; <label>:32                                      ; preds = %28
  call void (...) @__VERIFIER_error() #6, !dbg !61
  unreachable, !dbg !61

__VERIFIER_assert.exit:                           ; preds = %28
  %33 = bitcast i32* %1 to i8*, !dbg !62
  call void @llvm.lifetime.end(i64 4, i8* %33), !dbg !62
  ret i32 0, !dbg !63
}

declare i32 @__VERIFIER_nondet_int(...) #3

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
!1 = !DIFile(filename: "programs/svcomp16/loops/terminator_02_false-unreach-call_true-termination.i", directory: ".")
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
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !8, file: !1, line: 16, type: !7)
!33 = !DILocation(line: 16, column: 7, scope: !8)
!34 = !DILocation(line: 16, column: 9, scope: !8)
!35 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !36)
!36 = distinct !DILocation(line: 32, column: 3, scope: !8)
!37 = !DILocation(line: 18, column: 3, scope: !8)
!38 = !DILocation(line: 18, column: 9, scope: !8)
!39 = !DILocation(line: 18, column: 10, scope: !8)
!40 = !DILocation(line: 18, column: 15, scope: !8)
!41 = !DILocation(line: 18, column: 22, scope: !8)
!42 = !DILocation(line: 18, column: 21, scope: !8)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !44, file: !1, line: 20, type: !45)
!44 = distinct !DILexicalBlock(scope: !8, file: !1, line: 19, column: 3)
!45 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!46 = !DILocation(line: 20, column: 11, scope: !44)
!47 = !DILocation(line: 20, column: 15, scope: !44)
!48 = !DILocation(line: 21, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !44, file: !1, line: 21, column: 9)
!50 = !DILocation(line: 21, column: 9, scope: !44)
!51 = !DILocation(line: 23, column: 7, scope: !52)
!52 = distinct !DILexicalBlock(scope: !49, file: !1, line: 22, column: 4)
!53 = !DILocation(line: 24, column: 4, scope: !52)
!54 = !DILocation(line: 27, column: 7, scope: !55)
!55 = distinct !DILexicalBlock(scope: !49, file: !1, line: 26, column: 4)
!56 = !DILocation(line: 28, column: 7, scope: !55)
!57 = !DILocation(line: 32, column: 3, scope: !8)
!58 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !36)
!59 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !36)
!60 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !36)
!61 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !36)
!62 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !36)
!63 = !DILocation(line: 34, column: 3, scope: !8)
