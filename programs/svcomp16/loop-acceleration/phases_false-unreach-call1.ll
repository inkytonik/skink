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
  %x = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %x, metadata !26, metadata !16), !dbg !28
  store i32 0, i32* %x, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !29
  br label %3, !dbg !31

; <label>:3                                       ; preds = %15, %0
  %4 = load i32, i32* %x, align 4, !dbg !32
  %5 = icmp ult i32 %4, 268435455, !dbg !33
  br i1 %5, label %6, label %16, !dbg !31

; <label>:6                                       ; preds = %3
  %7 = load i32, i32* %x, align 4, !dbg !34
  %8 = icmp ult i32 %7, 65521, !dbg !37
  br i1 %8, label %9, label %12, !dbg !38

; <label>:9                                       ; preds = %6
  %10 = load i32, i32* %x, align 4, !dbg !39
  %11 = add i32 %10, 1, !dbg !39
  store i32 %11, i32* %x, align 4, !dbg !39
  br label %15, !dbg !41

; <label>:12                                      ; preds = %6
  %13 = load i32, i32* %x, align 4, !dbg !42
  %14 = add i32 %13, 2, !dbg !42
  store i32 %14, i32* %x, align 4, !dbg !42
  br label %15

; <label>:15                                      ; preds = %12, %9
  br label %3, !dbg !31

; <label>:16                                      ; preds = %3
  %17 = load i32, i32* %x, align 4, !dbg !44
  %18 = urem i32 %17, 2, !dbg !45
  %19 = icmp ne i32 %18, 0, !dbg !46
  %20 = xor i1 %19, true, !dbg !46
  %21 = zext i1 %20 to i32, !dbg !46
  %22 = bitcast i32* %1 to i8*, !dbg !47
  call void @llvm.lifetime.start(i64 4, i8* %22), !dbg !47
  store i32 %21, i32* %1, align 4, !dbg !47
  %23 = load i32, i32* %1, align 4, !dbg !48
  %24 = icmp ne i32 %23, 0, !dbg !49
  br i1 %24, label %__VERIFIER_assert.exit, label %25, !dbg !50

; <label>:25                                      ; preds = %16
  call void (...) @__VERIFIER_error() #5, !dbg !51
  unreachable, !dbg !51

__VERIFIER_assert.exit:                           ; preds = %16
  %26 = bitcast i32* %1 to i8*, !dbg !52
  call void @llvm.lifetime.end(i64 4, i8* %26), !dbg !52
  %27 = load i32, i32* %2, !dbg !53
  ret i32 %27, !dbg !53
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
!1 = !DIFile(filename: "../../sv-comp-2016/c/loop-acceleration/phases_false-unreach-call1.i", directory: "/Users/franck/development/perentiemq/programs")
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
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !8, file: !1, line: 9, type: !27)
!27 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!28 = !DILocation(line: 9, column: 16, scope: !8)
!29 = !DILocation(line: 2, column: 28, scope: !4, inlinedAt: !30)
!30 = distinct !DILocation(line: 17, column: 3, scope: !8)
!31 = !DILocation(line: 10, column: 3, scope: !8)
!32 = !DILocation(line: 10, column: 10, scope: !8)
!33 = !DILocation(line: 10, column: 12, scope: !8)
!34 = !DILocation(line: 11, column: 9, scope: !35)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 11, column: 9)
!36 = distinct !DILexicalBlock(scope: !8, file: !1, line: 10, column: 26)
!37 = !DILocation(line: 11, column: 11, scope: !35)
!38 = !DILocation(line: 11, column: 9, scope: !36)
!39 = !DILocation(line: 12, column: 8, scope: !40)
!40 = distinct !DILexicalBlock(scope: !35, file: !1, line: 11, column: 21)
!41 = !DILocation(line: 13, column: 5, scope: !40)
!42 = !DILocation(line: 14, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !35, file: !1, line: 13, column: 12)
!44 = !DILocation(line: 17, column: 23, scope: !8)
!45 = !DILocation(line: 17, column: 25, scope: !8)
!46 = !DILocation(line: 17, column: 21, scope: !8)
!47 = !DILocation(line: 17, column: 3, scope: !8)
!48 = !DILocation(line: 3, column: 9, scope: !19, inlinedAt: !30)
!49 = !DILocation(line: 3, column: 8, scope: !19, inlinedAt: !30)
!50 = !DILocation(line: 3, column: 7, scope: !4, inlinedAt: !30)
!51 = !DILocation(line: 4, column: 12, scope: !24, inlinedAt: !30)
!52 = !DILocation(line: 6, column: 3, scope: !4, inlinedAt: !30)
!53 = !DILocation(line: 18, column: 1, scope: !8)
