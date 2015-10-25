; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind ssp uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
  %1 = alloca i32, align 4
  store i32 %cond, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !19, metadata !20), !dbg !21
  %2 = load i32, i32* %1, align 4, !dbg !22
  %3 = icmp ne i32 %2, 0, !dbg !24
  br i1 %3, label %6, label %4, !dbg !25

; <label>:4                                       ; preds = %0
  br label %5, !dbg !26

; <label>:5                                       ; preds = %4
  call void (...) @__VERIFIER_error() #4, !dbg !27
  unreachable, !dbg !27

; <label>:6                                       ; preds = %0
  ret void, !dbg !29
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @f(i32 %z) #0 {
  %1 = alloca i32, align 4
  store i32 %z, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !30, metadata !20), !dbg !31
  %2 = load i32, i32* %1, align 4, !dbg !32
  %3 = add i32 %2, 2, !dbg !33
  ret i32 %3, !dbg !34
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, i32* %3
  call void @llvm.dbg.declare(metadata i32* %x, metadata !35, metadata !20), !dbg !36
  store i32 0, i32* %x, align 4, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %2, metadata !30, metadata !20), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %1, metadata !19, metadata !20), !dbg !40
  br label %4, !dbg !42

; <label>:4                                       ; preds = %7, %0
  %5 = load i32, i32* %x, align 4, !dbg !43
  %6 = icmp ult i32 %5, 268435455, !dbg !44
  br i1 %6, label %7, label %13, !dbg !42

; <label>:7                                       ; preds = %4
  %8 = load i32, i32* %x, align 4, !dbg !45
  %9 = bitcast i32* %2 to i8*, !dbg !46
  call void @llvm.lifetime.start(i64 4, i8* %9), !dbg !46
  store i32 %8, i32* %2, align 4, !dbg !46
  %10 = load i32, i32* %2, align 4, !dbg !47
  %11 = add i32 %10, 2, !dbg !48
  %12 = bitcast i32* %2 to i8*, !dbg !49
  call void @llvm.lifetime.end(i64 4, i8* %12), !dbg !49
  store i32 %11, i32* %x, align 4, !dbg !50
  br label %4, !dbg !42

; <label>:13                                      ; preds = %4
  %14 = load i32, i32* %x, align 4, !dbg !51
  %15 = urem i32 %14, 2, !dbg !52
  %16 = icmp ne i32 %15, 0, !dbg !53
  %17 = xor i1 %16, true, !dbg !53
  %18 = zext i1 %17 to i32, !dbg !53
  %19 = bitcast i32* %1 to i8*, !dbg !54
  call void @llvm.lifetime.start(i64 4, i8* %19), !dbg !54
  store i32 %18, i32* %1, align 4, !dbg !54
  %20 = load i32, i32* %1, align 4, !dbg !55
  %21 = icmp ne i32 %20, 0, !dbg !56
  br i1 %21, label %__VERIFIER_assert.exit, label %22, !dbg !57

; <label>:22                                      ; preds = %13
  call void (...) @__VERIFIER_error() #5, !dbg !58
  unreachable, !dbg !58

__VERIFIER_assert.exit:                           ; preds = %13
  %23 = bitcast i32* %1 to i8*, !dbg !59
  call void @llvm.lifetime.end(i64 4, i8* %23), !dbg !59
  %24 = load i32, i32* %3, !dbg !60
  ret i32 %24, !dbg !60
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
!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "../../../sv-comp-2016/c/loop-acceleration/functions_true-unreach-call1.i", directory: "/Users/franck/development/perentiemq/programs/svcomp16")
!2 = !{}
!3 = !{!4, !8, !12}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 2, type: !5, isLocal: false, isDefinition: true, scopeLine: 2, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "f", scope: !1, file: !1, line: 8, type: !9, isLocal: false, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32)* @f, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11}
!11 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!12 = !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !13, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !2)
!13 = !DISubroutineType(types: !14)
!14 = !{!7}
!15 = !{i32 2, !"Dwarf Version", i32 2}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"PIC Level", i32 2}
!18 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 2, type: !7)
!20 = !DIExpression()
!21 = !DILocation(line: 2, column: 28, scope: !4)
!22 = !DILocation(line: 3, column: 9, scope: !23)
!23 = distinct !DILexicalBlock(scope: !4, file: !1, line: 3, column: 7)
!24 = !DILocation(line: 3, column: 8, scope: !23)
!25 = !DILocation(line: 3, column: 7, scope: !4)
!26 = !DILocation(line: 3, column: 16, scope: !23)
!27 = !DILocation(line: 4, column: 12, scope: !28)
!28 = distinct !DILexicalBlock(scope: !23, file: !1, line: 3, column: 16)
!29 = !DILocation(line: 6, column: 3, scope: !4)
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "z", arg: 1, scope: !8, file: !1, line: 8, type: !11)
!31 = !DILocation(line: 8, column: 29, scope: !8)
!32 = !DILocation(line: 9, column: 10, scope: !8)
!33 = !DILocation(line: 9, column: 12, scope: !8)
!34 = !DILocation(line: 9, column: 3, scope: !8)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !12, file: !1, line: 12, type: !11)
!36 = !DILocation(line: 12, column: 16, scope: !12)
!37 = !DILocation(line: 8, column: 29, scope: !8, inlinedAt: !38)
!38 = distinct !DILocation(line: 14, column: 9, scope: !39)
!39 = distinct !DILexicalBlock(scope: !12, file: !1, line: 13, column: 26)
!40 = !DILocation(line: 2, column: 28, scope: !4, inlinedAt: !41)
!41 = distinct !DILocation(line: 16, column: 3, scope: !12)
!42 = !DILocation(line: 13, column: 3, scope: !12)
!43 = !DILocation(line: 13, column: 10, scope: !12)
!44 = !DILocation(line: 13, column: 12, scope: !12)
!45 = !DILocation(line: 14, column: 11, scope: !39)
!46 = !DILocation(line: 14, column: 9, scope: !39)
!47 = !DILocation(line: 9, column: 10, scope: !8, inlinedAt: !38)
!48 = !DILocation(line: 9, column: 12, scope: !8, inlinedAt: !38)
!49 = !DILocation(line: 9, column: 3, scope: !8, inlinedAt: !38)
!50 = !DILocation(line: 14, column: 7, scope: !39)
!51 = !DILocation(line: 16, column: 23, scope: !12)
!52 = !DILocation(line: 16, column: 25, scope: !12)
!53 = !DILocation(line: 16, column: 21, scope: !12)
!54 = !DILocation(line: 16, column: 3, scope: !12)
!55 = !DILocation(line: 3, column: 9, scope: !23, inlinedAt: !41)
!56 = !DILocation(line: 3, column: 8, scope: !23, inlinedAt: !41)
!57 = !DILocation(line: 3, column: 7, scope: !4, inlinedAt: !41)
!58 = !DILocation(line: 4, column: 12, scope: !28, inlinedAt: !41)
!59 = !DILocation(line: 6, column: 3, scope: !4, inlinedAt: !41)
!60 = !DILocation(line: 17, column: 1, scope: !12)
