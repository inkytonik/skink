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
  %z = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %j, metadata !29, metadata !16), !dbg !30
  %2 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !31
  store i32 %2, i32* %i, align 4, !dbg !32
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !33
  store i32 %3, i32* %j, align 4, !dbg !34
  %4 = load i32, i32* %i, align 4, !dbg !35
  %5 = icmp sge i32 %4, 0, !dbg !36
  %6 = zext i1 %5 to i32, !dbg !36
  call void @__VERIFIER_assume(i32 %6), !dbg !37
  %7 = load i32, i32* %j, align 4, !dbg !38
  %8 = icmp sge i32 %7, 0, !dbg !39
  %9 = zext i1 %8 to i32, !dbg !39
  call void @__VERIFIER_assume(i32 %9), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %x, metadata !41, metadata !16), !dbg !42
  %10 = load i32, i32* %i, align 4, !dbg !43
  store i32 %10, i32* %x, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %y, metadata !44, metadata !16), !dbg !45
  %11 = load i32, i32* %j, align 4, !dbg !46
  store i32 %11, i32* %y, align 4, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %z, metadata !47, metadata !16), !dbg !48
  store i32 0, i32* %z, align 4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !49
  br label %12, !dbg !53

; <label>:12                                      ; preds = %15, %0
  %13 = load i32, i32* %x, align 4, !dbg !54
  %14 = icmp ne i32 %13, 0, !dbg !55
  br i1 %14, label %15, label %22, !dbg !53

; <label>:15                                      ; preds = %12
  %16 = load i32, i32* %x, align 4, !dbg !56
  %17 = add nsw i32 %16, -1, !dbg !56
  store i32 %17, i32* %x, align 4, !dbg !56
  %18 = load i32, i32* %y, align 4, !dbg !58
  %19 = sub nsw i32 %18, 2, !dbg !58
  store i32 %19, i32* %y, align 4, !dbg !58
  %20 = load i32, i32* %z, align 4, !dbg !59
  %21 = add nsw i32 %20, 1, !dbg !59
  store i32 %21, i32* %z, align 4, !dbg !59
  br label %12, !dbg !53

; <label>:22                                      ; preds = %12
  %23 = load i32, i32* %i, align 4, !dbg !60
  %24 = load i32, i32* %j, align 4, !dbg !61
  %25 = icmp eq i32 %23, %24, !dbg !62
  br i1 %25, label %26, label %37, !dbg !63

; <label>:26                                      ; preds = %22
  %27 = load i32, i32* %y, align 4, !dbg !64
  %28 = load i32, i32* %z, align 4, !dbg !65
  %29 = sub nsw i32 0, %28, !dbg !66
  %30 = icmp eq i32 %27, %29, !dbg !67
  %31 = zext i1 %30 to i32, !dbg !67
  %32 = bitcast i32* %1 to i8*, !dbg !68
  call void @llvm.lifetime.start(i64 4, i8* %32), !dbg !68
  store i32 %31, i32* %1, align 4, !dbg !68
  %33 = load i32, i32* %1, align 4, !dbg !69
  %34 = icmp ne i32 %33, 0, !dbg !70
  br i1 %34, label %__VERIFIER_assert.exit, label %35, !dbg !71

; <label>:35                                      ; preds = %26
  call void @__VERIFIER_error() #3, !dbg !72
  br label %__VERIFIER_assert.exit, !dbg !73

__VERIFIER_assert.exit:                           ; preds = %26, %35
  %36 = bitcast i32* %1 to i8*, !dbg !74
  call void @llvm.lifetime.end(i64 4, i8* %36), !dbg !74
  br label %37, !dbg !75

; <label>:37                                      ; preds = %__VERIFIER_assert.exit, %22
  ret void, !dbg !76
}

declare i32 @__VERIFIER_nondet_int(...) #2

declare void @__VERIFIER_assume(i32) #2

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
!1 = !DIFile(filename: "programs/svcomp16/loop-lit/jm2006_variant_true-unreach-call.c.i", directory: ".")
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
!35 = !DILocation(line: 14, column: 23, scope: !8)
!36 = !DILocation(line: 14, column: 25, scope: !8)
!37 = !DILocation(line: 14, column: 5, scope: !8)
!38 = !DILocation(line: 15, column: 23, scope: !8)
!39 = !DILocation(line: 15, column: 25, scope: !8)
!40 = !DILocation(line: 15, column: 5, scope: !8)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !8, file: !1, line: 16, type: !7)
!42 = !DILocation(line: 16, column: 9, scope: !8)
!43 = !DILocation(line: 16, column: 13, scope: !8)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !8, file: !1, line: 17, type: !7)
!45 = !DILocation(line: 17, column: 9, scope: !8)
!46 = !DILocation(line: 17, column: 13, scope: !8)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !8, file: !1, line: 18, type: !7)
!48 = !DILocation(line: 18, column: 9, scope: !8)
!49 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !50)
!50 = distinct !DILocation(line: 25, column: 2, scope: !51)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 24, column: 17)
!52 = distinct !DILexicalBlock(scope: !8, file: !1, line: 24, column: 9)
!53 = !DILocation(line: 19, column: 5, scope: !8)
!54 = !DILocation(line: 19, column: 11, scope: !8)
!55 = !DILocation(line: 19, column: 13, scope: !8)
!56 = !DILocation(line: 20, column: 4, scope: !57)
!57 = distinct !DILexicalBlock(scope: !8, file: !1, line: 19, column: 19)
!58 = !DILocation(line: 21, column: 4, scope: !57)
!59 = !DILocation(line: 22, column: 4, scope: !57)
!60 = !DILocation(line: 24, column: 9, scope: !52)
!61 = !DILocation(line: 24, column: 14, scope: !52)
!62 = !DILocation(line: 24, column: 11, scope: !52)
!63 = !DILocation(line: 24, column: 9, scope: !8)
!64 = !DILocation(line: 25, column: 20, scope: !51)
!65 = !DILocation(line: 25, column: 26, scope: !51)
!66 = !DILocation(line: 25, column: 25, scope: !51)
!67 = !DILocation(line: 25, column: 22, scope: !51)
!68 = !DILocation(line: 25, column: 2, scope: !51)
!69 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !50)
!70 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !50)
!71 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !50)
!72 = !DILocation(line: 5, column: 14, scope: !24, inlinedAt: !50)
!73 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !50)
!74 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !50)
!75 = !DILocation(line: 26, column: 5, scope: !51)
!76 = !DILocation(line: 27, column: 1, scope: !8)
