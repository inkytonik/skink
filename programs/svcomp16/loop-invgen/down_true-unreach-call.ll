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
define void @main() #0 {
  %1 = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %n, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %k, metadata !29, metadata !16), !dbg !30
  store i32 0, i32* %k, align 4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %i, metadata !31, metadata !16), !dbg !32
  store i32 0, i32* %i, align 4, !dbg !32
  %2 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !33
  store i32 %2, i32* %n, align 4, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !35
  br label %3, !dbg !38

; <label>:3                                       ; preds = %7, %0
  %4 = load i32, i32* %i, align 4, !dbg !39
  %5 = load i32, i32* %n, align 4, !dbg !40
  %6 = icmp slt i32 %4, %5, !dbg !41
  br i1 %6, label %7, label %12, !dbg !38

; <label>:7                                       ; preds = %3
  %8 = load i32, i32* %i, align 4, !dbg !42
  %9 = add nsw i32 %8, 1, !dbg !42
  store i32 %9, i32* %i, align 4, !dbg !42
  %10 = load i32, i32* %k, align 4, !dbg !44
  %11 = add nsw i32 %10, 1, !dbg !44
  store i32 %11, i32* %k, align 4, !dbg !44
  br label %3, !dbg !38

; <label>:12                                      ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %j, metadata !45, metadata !16), !dbg !46
  %13 = load i32, i32* %n, align 4, !dbg !47
  store i32 %13, i32* %j, align 4, !dbg !46
  br label %14, !dbg !48

; <label>:14                                      ; preds = %__VERIFIER_assert.exit, %12
  %15 = load i32, i32* %j, align 4, !dbg !49
  %16 = icmp sgt i32 %15, 0, !dbg !50
  br i1 %16, label %17, label %30, !dbg !48

; <label>:17                                      ; preds = %14
  %18 = load i32, i32* %k, align 4, !dbg !51
  %19 = icmp sgt i32 %18, 0, !dbg !52
  %20 = zext i1 %19 to i32, !dbg !52
  %21 = bitcast i32* %1 to i8*, !dbg !53
  call void @llvm.lifetime.start(i64 4, i8* %21), !dbg !53
  store i32 %20, i32* %1, align 4, !dbg !53
  %22 = load i32, i32* %1, align 4, !dbg !54
  %23 = icmp ne i32 %22, 0, !dbg !55
  br i1 %23, label %__VERIFIER_assert.exit, label %24, !dbg !56

; <label>:24                                      ; preds = %17
  call void @__VERIFIER_error() #3, !dbg !57
  br label %__VERIFIER_assert.exit, !dbg !58

__VERIFIER_assert.exit:                           ; preds = %17, %24
  %25 = bitcast i32* %1 to i8*, !dbg !59
  call void @llvm.lifetime.end(i64 4, i8* %25), !dbg !59
  %26 = load i32, i32* %j, align 4, !dbg !60
  %27 = add nsw i32 %26, -1, !dbg !60
  store i32 %27, i32* %j, align 4, !dbg !60
  %28 = load i32, i32* %k, align 4, !dbg !61
  %29 = add nsw i32 %28, -1, !dbg !61
  store i32 %29, i32* %k, align 4, !dbg !61
  br label %14, !dbg !48

; <label>:30                                      ; preds = %14
  ret void, !dbg !62
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
!1 = !DIFile(filename: "down_true-unreach-call.i", directory: "/Users/asloane/Projects/SV-COMP/sv-benchmarks/c/loop-invgen")
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
!36 = distinct !DILocation(line: 21, column: 2, scope: !37)
!37 = distinct !DILexicalBlock(scope: !8, file: !1, line: 20, column: 18)
!38 = !DILocation(line: 15, column: 3, scope: !8)
!39 = !DILocation(line: 15, column: 10, scope: !8)
!40 = !DILocation(line: 15, column: 14, scope: !8)
!41 = !DILocation(line: 15, column: 12, scope: !8)
!42 = !DILocation(line: 16, column: 3, scope: !43)
!43 = distinct !DILexicalBlock(scope: !8, file: !1, line: 15, column: 18)
!44 = !DILocation(line: 17, column: 3, scope: !43)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 19, type: !7)
!46 = !DILocation(line: 19, column: 7, scope: !8)
!47 = !DILocation(line: 19, column: 11, scope: !8)
!48 = !DILocation(line: 20, column: 3, scope: !8)
!49 = !DILocation(line: 20, column: 10, scope: !8)
!50 = !DILocation(line: 20, column: 12, scope: !8)
!51 = !DILocation(line: 21, column: 20, scope: !37)
!52 = !DILocation(line: 21, column: 22, scope: !37)
!53 = !DILocation(line: 21, column: 2, scope: !37)
!54 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !36)
!55 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !36)
!56 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !36)
!57 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !36)
!58 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !36)
!59 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !36)
!60 = !DILocation(line: 22, column: 3, scope: !37)
!61 = !DILocation(line: 23, column: 3, scope: !37)
!62 = !DILocation(line: 25, column: 1, scope: !8)
