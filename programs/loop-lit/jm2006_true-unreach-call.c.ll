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
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %j, metadata !29, metadata !16), !dbg !30
  %2 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !31
  store i32 %2, i32* %i, align 4, !dbg !32
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !33
  store i32 %3, i32* %j, align 4, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %x, metadata !35, metadata !16), !dbg !36
  %4 = load i32, i32* %i, align 4, !dbg !37
  store i32 %4, i32* %x, align 4, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %y, metadata !38, metadata !16), !dbg !39
  %5 = load i32, i32* %j, align 4, !dbg !40
  store i32 %5, i32* %y, align 4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !41
  br label %6, !dbg !45

; <label>:6                                       ; preds = %9, %0
  %7 = load i32, i32* %x, align 4, !dbg !46
  %8 = icmp ne i32 %7, 0, !dbg !47
  br i1 %8, label %9, label %14, !dbg !45

; <label>:9                                       ; preds = %6
  %10 = load i32, i32* %x, align 4, !dbg !48
  %11 = add nsw i32 %10, -1, !dbg !48
  store i32 %11, i32* %x, align 4, !dbg !48
  %12 = load i32, i32* %y, align 4, !dbg !50
  %13 = add nsw i32 %12, -1, !dbg !50
  store i32 %13, i32* %y, align 4, !dbg !50
  br label %6, !dbg !45

; <label>:14                                      ; preds = %6
  %15 = load i32, i32* %i, align 4, !dbg !51
  %16 = load i32, i32* %j, align 4, !dbg !52
  %17 = icmp eq i32 %15, %16, !dbg !53
  br i1 %17, label %18, label %27, !dbg !54

; <label>:18                                      ; preds = %14
  %19 = load i32, i32* %y, align 4, !dbg !55
  %20 = icmp eq i32 %19, 0, !dbg !56
  %21 = zext i1 %20 to i32, !dbg !56
  %22 = bitcast i32* %1 to i8*, !dbg !57
  call void @llvm.lifetime.start(i64 4, i8* %22), !dbg !57
  store i32 %21, i32* %1, align 4, !dbg !57
  %23 = load i32, i32* %1, align 4, !dbg !58
  %24 = icmp ne i32 %23, 0, !dbg !59
  br i1 %24, label %__VERIFIER_assert.exit, label %25, !dbg !60

; <label>:25                                      ; preds = %18
  call void @__VERIFIER_error() #3, !dbg !61
  br label %__VERIFIER_assert.exit, !dbg !62

__VERIFIER_assert.exit:                           ; preds = %18, %25
  %26 = bitcast i32* %1 to i8*, !dbg !63
  call void @llvm.lifetime.end(i64 4, i8* %26), !dbg !63
  br label %27, !dbg !64

; <label>:27                                      ; preds = %__VERIFIER_assert.exit, %14
  ret void, !dbg !65
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
!1 = !DIFile(filename: "../../sv-comp-2016/c/loop-lit/jm2006_true-unreach-call.c.i", directory: "/Users/franck/development/perentiemq/programs")
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
!30 = !DILocation(line: 11, column: 12, scope: !8)
!31 = !DILocation(line: 12, column: 9, scope: !8)
!32 = !DILocation(line: 12, column: 7, scope: !8)
!33 = !DILocation(line: 13, column: 9, scope: !8)
!34 = !DILocation(line: 13, column: 7, scope: !8)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !8, file: !1, line: 14, type: !7)
!36 = !DILocation(line: 14, column: 9, scope: !8)
!37 = !DILocation(line: 14, column: 13, scope: !8)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !8, file: !1, line: 15, type: !7)
!39 = !DILocation(line: 15, column: 9, scope: !8)
!40 = !DILocation(line: 15, column: 13, scope: !8)
!41 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !42)
!42 = distinct !DILocation(line: 21, column: 2, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 20, column: 17)
!44 = distinct !DILexicalBlock(scope: !8, file: !1, line: 20, column: 9)
!45 = !DILocation(line: 16, column: 5, scope: !8)
!46 = !DILocation(line: 16, column: 11, scope: !8)
!47 = !DILocation(line: 16, column: 13, scope: !8)
!48 = !DILocation(line: 17, column: 4, scope: !49)
!49 = distinct !DILexicalBlock(scope: !8, file: !1, line: 16, column: 19)
!50 = !DILocation(line: 18, column: 4, scope: !49)
!51 = !DILocation(line: 20, column: 9, scope: !44)
!52 = !DILocation(line: 20, column: 14, scope: !44)
!53 = !DILocation(line: 20, column: 11, scope: !44)
!54 = !DILocation(line: 20, column: 9, scope: !8)
!55 = !DILocation(line: 21, column: 20, scope: !43)
!56 = !DILocation(line: 21, column: 22, scope: !43)
!57 = !DILocation(line: 21, column: 2, scope: !43)
!58 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !42)
!59 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !42)
!60 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !42)
!61 = !DILocation(line: 5, column: 14, scope: !24, inlinedAt: !42)
!62 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !42)
!63 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !42)
!64 = !DILocation(line: 22, column: 5, scope: !43)
!65 = !DILocation(line: 23, column: 1, scope: !8)
