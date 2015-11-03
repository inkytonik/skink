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
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %n, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %k, metadata !29, metadata !16), !dbg !30
  store i32 0, i32* %k, align 4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %i, metadata !31, metadata !16), !dbg !32
  store i32 0, i32* %i, align 4, !dbg !32
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !33
  store i32 %3, i32* %n, align 4, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !35
  br label %4, !dbg !38

; <label>:4                                       ; preds = %8, %0
  %5 = load i32, i32* %i, align 4, !dbg !39
  %6 = load i32, i32* %n, align 4, !dbg !40
  %7 = icmp slt i32 %5, %6, !dbg !41
  br i1 %7, label %8, label %13, !dbg !38

; <label>:8                                       ; preds = %4
  %9 = load i32, i32* %i, align 4, !dbg !42
  %10 = add nsw i32 %9, 1, !dbg !42
  store i32 %10, i32* %i, align 4, !dbg !42
  %11 = load i32, i32* %k, align 4, !dbg !44
  %12 = add nsw i32 %11, 1, !dbg !44
  store i32 %12, i32* %k, align 4, !dbg !44
  br label %4, !dbg !38

; <label>:13                                      ; preds = %4
  call void @llvm.dbg.declare(metadata i32* %j, metadata !45, metadata !16), !dbg !46
  %14 = load i32, i32* %n, align 4, !dbg !47
  store i32 %14, i32* %j, align 4, !dbg !46
  br label %15, !dbg !48

; <label>:15                                      ; preds = %__VERIFIER_assert.exit, %13
  %16 = load i32, i32* %j, align 4, !dbg !49
  %17 = icmp sgt i32 %16, 0, !dbg !50
  br i1 %17, label %18, label %31, !dbg !48

; <label>:18                                      ; preds = %15
  %19 = load i32, i32* %k, align 4, !dbg !51
  %20 = icmp sgt i32 %19, 0, !dbg !52
  %21 = zext i1 %20 to i32, !dbg !52
  %22 = bitcast i32* %1 to i8*, !dbg !53
  call void @llvm.lifetime.start(i64 4, i8* %22), !dbg !53
  store i32 %21, i32* %1, align 4, !dbg !53
  %23 = load i32, i32* %1, align 4, !dbg !54
  %24 = icmp ne i32 %23, 0, !dbg !55
  br i1 %24, label %__VERIFIER_assert.exit, label %25, !dbg !56

; <label>:25                                      ; preds = %18
  call void @__VERIFIER_error() #3, !dbg !57
  br label %__VERIFIER_assert.exit, !dbg !58

__VERIFIER_assert.exit:                           ; preds = %18, %25
  %26 = bitcast i32* %1 to i8*, !dbg !59
  call void @llvm.lifetime.end(i64 4, i8* %26), !dbg !59
  %27 = load i32, i32* %j, align 4, !dbg !60
  %28 = add nsw i32 %27, -1, !dbg !60
  store i32 %28, i32* %j, align 4, !dbg !60
  %29 = load i32, i32* %k, align 4, !dbg !61
  %30 = add nsw i32 %29, -1, !dbg !61
  store i32 %30, i32* %k, align 4, !dbg !61
  br label %15, !dbg !48

; <label>:31                                      ; preds = %15
  ret i32 0, !dbg !62
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
!1 = !DIFile(filename: "programs/svcomp16/loop-invgen/down_true-unreach-call.i", directory: ".")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !9, isLocal: false, isDefinition: true, scopeLine: 10, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!25 = !DILocation(line: 6, column: 3, scope: !24)
!26 = !DILocation(line: 7, column: 3, scope: !4)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !8, file: !1, line: 11, type: !7)
!28 = !DILocation(line: 11, column: 7, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !8, file: !1, line: 12, type: !7)
!30 = !DILocation(line: 12, column: 7, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 13, type: !7)
!32 = !DILocation(line: 13, column: 7, scope: !8)
!33 = !DILocation(line: 14, column: 7, scope: !8)
!34 = !DILocation(line: 14, column: 5, scope: !8)
!35 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !36)
!36 = distinct !DILocation(line: 21, column: 7, scope: !37)
!37 = distinct !DILexicalBlock(scope: !8, file: !1, line: 20, column: 18)
!38 = !DILocation(line: 15, column: 3, scope: !8)
!39 = !DILocation(line: 15, column: 10, scope: !8)
!40 = !DILocation(line: 15, column: 14, scope: !8)
!41 = !DILocation(line: 15, column: 12, scope: !8)
!42 = !DILocation(line: 16, column: 8, scope: !43)
!43 = distinct !DILexicalBlock(scope: !8, file: !1, line: 15, column: 18)
!44 = !DILocation(line: 17, column: 8, scope: !43)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 19, type: !7)
!46 = !DILocation(line: 19, column: 7, scope: !8)
!47 = !DILocation(line: 19, column: 11, scope: !8)
!48 = !DILocation(line: 20, column: 3, scope: !8)
!49 = !DILocation(line: 20, column: 10, scope: !8)
!50 = !DILocation(line: 20, column: 12, scope: !8)
!51 = !DILocation(line: 21, column: 25, scope: !37)
!52 = !DILocation(line: 21, column: 27, scope: !37)
!53 = !DILocation(line: 21, column: 7, scope: !37)
!54 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !36)
!55 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !36)
!56 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !36)
!57 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !36)
!58 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !36)
!59 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !36)
!60 = !DILocation(line: 22, column: 8, scope: !37)
!61 = !DILocation(line: 23, column: 8, scope: !37)
!62 = !DILocation(line: 25, column: 3, scope: !8)
