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
  %k = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %j, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %k, metadata !31, metadata !16), !dbg !32
  store i32 0, i32* %i, align 4, !dbg !33
  store i32 9, i32* %k, align 4, !dbg !34
  store i32 -100, i32* %j, align 4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !36
  br label %2, !dbg !38

; <label>:2                                       ; preds = %22, %0
  %3 = load i32, i32* %i, align 4, !dbg !39
  %4 = icmp sle i32 %3, 100, !dbg !40
  br i1 %4, label %5, label %23, !dbg !38

; <label>:5                                       ; preds = %2
  %6 = load i32, i32* %i, align 4, !dbg !41
  %7 = add nsw i32 %6, 1, !dbg !43
  store i32 %7, i32* %i, align 4, !dbg !44
  br label %8, !dbg !45

; <label>:8                                       ; preds = %11, %5
  %9 = load i32, i32* %j, align 4, !dbg !46
  %10 = icmp slt i32 %9, 20, !dbg !47
  br i1 %10, label %11, label %15, !dbg !45

; <label>:11                                      ; preds = %8
  %12 = load i32, i32* %i, align 4, !dbg !48
  %13 = load i32, i32* %j, align 4, !dbg !50
  %14 = add nsw i32 %12, %13, !dbg !51
  store i32 %14, i32* %j, align 4, !dbg !52
  br label %8, !dbg !45

; <label>:15                                      ; preds = %8
  store i32 4, i32* %k, align 4, !dbg !53
  br label %16, !dbg !54

; <label>:16                                      ; preds = %19, %15
  %17 = load i32, i32* %k, align 4, !dbg !55
  %18 = icmp sle i32 %17, 3, !dbg !56
  br i1 %18, label %19, label %22, !dbg !54

; <label>:19                                      ; preds = %16
  %20 = load i32, i32* %k, align 4, !dbg !57
  %21 = add nsw i32 %20, 1, !dbg !59
  store i32 %21, i32* %k, align 4, !dbg !60
  br label %16, !dbg !54

; <label>:22                                      ; preds = %16
  br label %2, !dbg !38

; <label>:23                                      ; preds = %2
  %24 = load i32, i32* %k, align 4, !dbg !61
  %25 = icmp eq i32 %24, 4, !dbg !62
  %26 = zext i1 %25 to i32, !dbg !62
  %27 = bitcast i32* %1 to i8*, !dbg !63
  call void @llvm.lifetime.start(i64 4, i8* %27), !dbg !63
  store i32 %26, i32* %1, align 4, !dbg !63
  %28 = load i32, i32* %1, align 4, !dbg !64
  %29 = icmp ne i32 %28, 0, !dbg !65
  br i1 %29, label %__VERIFIER_assert.exit, label %30, !dbg !66

; <label>:30                                      ; preds = %23
  call void @__VERIFIER_error() #3, !dbg !67
  br label %__VERIFIER_assert.exit, !dbg !68

__VERIFIER_assert.exit:                           ; preds = %23, %30
  %31 = bitcast i32* %1 to i8*, !dbg !69
  call void @llvm.lifetime.end(i64 4, i8* %31), !dbg !69
  ret void, !dbg !70
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
!1 = !DIFile(filename: "../../sv-comp-2016/c/loop-lit/cggmp2005b_true-unreach-call.c.i", directory: "/Users/franck/development/perentiemq/programs")
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
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !8, file: !1, line: 11, type: !7)
!32 = !DILocation(line: 11, column: 13, scope: !8)
!33 = !DILocation(line: 12, column: 7, scope: !8)
!34 = !DILocation(line: 13, column: 7, scope: !8)
!35 = !DILocation(line: 14, column: 7, scope: !8)
!36 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !37)
!37 = distinct !DILocation(line: 25, column: 5, scope: !8)
!38 = !DILocation(line: 15, column: 5, scope: !8)
!39 = !DILocation(line: 15, column: 12, scope: !8)
!40 = !DILocation(line: 15, column: 14, scope: !8)
!41 = !DILocation(line: 16, column: 6, scope: !42)
!42 = distinct !DILexicalBlock(scope: !8, file: !1, line: 15, column: 22)
!43 = !DILocation(line: 16, column: 8, scope: !42)
!44 = !DILocation(line: 16, column: 4, scope: !42)
!45 = !DILocation(line: 17, column: 2, scope: !42)
!46 = !DILocation(line: 17, column: 9, scope: !42)
!47 = !DILocation(line: 17, column: 11, scope: !42)
!48 = !DILocation(line: 18, column: 10, scope: !49)
!49 = distinct !DILexicalBlock(scope: !42, file: !1, line: 17, column: 17)
!50 = !DILocation(line: 18, column: 14, scope: !49)
!51 = !DILocation(line: 18, column: 12, scope: !49)
!52 = !DILocation(line: 18, column: 8, scope: !49)
!53 = !DILocation(line: 20, column: 4, scope: !42)
!54 = !DILocation(line: 21, column: 2, scope: !42)
!55 = !DILocation(line: 21, column: 9, scope: !42)
!56 = !DILocation(line: 21, column: 11, scope: !42)
!57 = !DILocation(line: 22, column: 10, scope: !58)
!58 = distinct !DILexicalBlock(scope: !42, file: !1, line: 21, column: 17)
!59 = !DILocation(line: 22, column: 12, scope: !58)
!60 = !DILocation(line: 22, column: 8, scope: !58)
!61 = !DILocation(line: 25, column: 23, scope: !8)
!62 = !DILocation(line: 25, column: 25, scope: !8)
!63 = !DILocation(line: 25, column: 5, scope: !8)
!64 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !37)
!65 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !37)
!66 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !37)
!67 = !DILocation(line: 5, column: 14, scope: !24, inlinedAt: !37)
!68 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !37)
!69 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !37)
!70 = !DILocation(line: 26, column: 1, scope: !8)