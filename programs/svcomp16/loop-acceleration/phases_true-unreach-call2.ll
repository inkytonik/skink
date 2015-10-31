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
  call void @llvm.dbg.declare(metadata i32* %x, metadata !26, metadata !16), !dbg !28
  store i32 1, i32* %x, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %y, metadata !29, metadata !16), !dbg !30
  %3 = call i32 @__VERIFIER_nondet_uint(), !dbg !31
  store i32 %3, i32* %y, align 4, !dbg !30
  %4 = load i32, i32* %y, align 4, !dbg !32
  %5 = icmp ugt i32 %4, 0, !dbg !33
  %6 = zext i1 %5 to i32, !dbg !33
  call void @__VERIFIER_assume(i32 %6), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !35
  br label %7, !dbg !37

; <label>:7                                       ; preds = %24, %0
  %8 = load i32, i32* %x, align 4, !dbg !38
  %9 = load i32, i32* %y, align 4, !dbg !39
  %10 = icmp ult i32 %8, %9, !dbg !40
  br i1 %10, label %11, label %25, !dbg !37

; <label>:11                                      ; preds = %7
  %12 = load i32, i32* %x, align 4, !dbg !41
  %13 = load i32, i32* %y, align 4, !dbg !44
  %14 = load i32, i32* %x, align 4, !dbg !45
  %15 = udiv i32 %13, %14, !dbg !46
  %16 = icmp ult i32 %12, %15, !dbg !47
  br i1 %16, label %17, label %21, !dbg !48

; <label>:17                                      ; preds = %11
  %18 = load i32, i32* %x, align 4, !dbg !49
  %19 = load i32, i32* %x, align 4, !dbg !51
  %20 = mul i32 %19, %18, !dbg !51
  store i32 %20, i32* %x, align 4, !dbg !51
  br label %24, !dbg !52

; <label>:21                                      ; preds = %11
  %22 = load i32, i32* %x, align 4, !dbg !53
  %23 = add i32 %22, 1, !dbg !53
  store i32 %23, i32* %x, align 4, !dbg !53
  br label %24

; <label>:24                                      ; preds = %21, %17
  br label %7, !dbg !37

; <label>:25                                      ; preds = %7
  %26 = load i32, i32* %x, align 4, !dbg !55
  %27 = load i32, i32* %y, align 4, !dbg !56
  %28 = icmp eq i32 %26, %27, !dbg !57
  %29 = zext i1 %28 to i32, !dbg !57
  %30 = bitcast i32* %1 to i8*, !dbg !58
  call void @llvm.lifetime.start(i64 4, i8* %30), !dbg !58
  store i32 %29, i32* %1, align 4, !dbg !58
  %31 = load i32, i32* %1, align 4, !dbg !59
  %32 = icmp ne i32 %31, 0, !dbg !60
  br i1 %32, label %__VERIFIER_assert.exit, label %33, !dbg !61

; <label>:33                                      ; preds = %25
  call void (...) @__VERIFIER_error() #6, !dbg !62
  unreachable, !dbg !62

__VERIFIER_assert.exit:                           ; preds = %25
  %34 = bitcast i32* %1 to i8*, !dbg !63
  call void @llvm.lifetime.end(i64 4, i8* %34), !dbg !63
  %35 = load i32, i32* %2, !dbg !64
  ret i32 %35, !dbg !64
}

declare i32 @__VERIFIER_nondet_uint() #3

declare void @__VERIFIER_assume(i32) #3

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
!1 = !DIFile(filename: "../../sv-comp-2016/c/loop-acceleration/phases_true-unreach-call2.i", directory: "/Users/franck/development/perentiemq/programs")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 4, type: !5, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !9, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!7}
!11 = !{i32 2, !"Dwarf Version", i32 2}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"PIC Level", i32 2}
!14 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 4, type: !7)
!16 = !DIExpression()
!17 = !DILocation(line: 4, column: 28, scope: !4)
!18 = !DILocation(line: 5, column: 9, scope: !19)
!19 = distinct !DILexicalBlock(scope: !4, file: !1, line: 5, column: 7)
!20 = !DILocation(line: 5, column: 8, scope: !19)
!21 = !DILocation(line: 5, column: 7, scope: !4)
!22 = !DILocation(line: 5, column: 16, scope: !19)
!23 = !DILocation(line: 6, column: 12, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 5, column: 16)
!25 = !DILocation(line: 8, column: 3, scope: !4)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !8, file: !1, line: 11, type: !27)
!27 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!28 = !DILocation(line: 11, column: 16, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !8, file: !1, line: 12, type: !27)
!30 = !DILocation(line: 12, column: 16, scope: !8)
!31 = !DILocation(line: 12, column: 20, scope: !8)
!32 = !DILocation(line: 13, column: 21, scope: !8)
!33 = !DILocation(line: 13, column: 23, scope: !8)
!34 = !DILocation(line: 13, column: 3, scope: !8)
!35 = !DILocation(line: 4, column: 28, scope: !4, inlinedAt: !36)
!36 = distinct !DILocation(line: 21, column: 3, scope: !8)
!37 = !DILocation(line: 14, column: 3, scope: !8)
!38 = !DILocation(line: 14, column: 10, scope: !8)
!39 = !DILocation(line: 14, column: 14, scope: !8)
!40 = !DILocation(line: 14, column: 12, scope: !8)
!41 = !DILocation(line: 15, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 15, column: 9)
!43 = distinct !DILexicalBlock(scope: !8, file: !1, line: 14, column: 17)
!44 = !DILocation(line: 15, column: 13, scope: !42)
!45 = !DILocation(line: 15, column: 17, scope: !42)
!46 = !DILocation(line: 15, column: 15, scope: !42)
!47 = !DILocation(line: 15, column: 11, scope: !42)
!48 = !DILocation(line: 15, column: 9, scope: !43)
!49 = !DILocation(line: 16, column: 12, scope: !50)
!50 = distinct !DILexicalBlock(scope: !42, file: !1, line: 15, column: 20)
!51 = !DILocation(line: 16, column: 9, scope: !50)
!52 = !DILocation(line: 17, column: 5, scope: !50)
!53 = !DILocation(line: 18, column: 8, scope: !54)
!54 = distinct !DILexicalBlock(scope: !42, file: !1, line: 17, column: 12)
!55 = !DILocation(line: 21, column: 21, scope: !8)
!56 = !DILocation(line: 21, column: 26, scope: !8)
!57 = !DILocation(line: 21, column: 23, scope: !8)
!58 = !DILocation(line: 21, column: 3, scope: !8)
!59 = !DILocation(line: 5, column: 9, scope: !19, inlinedAt: !36)
!60 = !DILocation(line: 5, column: 8, scope: !19, inlinedAt: !36)
!61 = !DILocation(line: 5, column: 7, scope: !4, inlinedAt: !36)
!62 = !DILocation(line: 6, column: 12, scope: !24, inlinedAt: !36)
!63 = !DILocation(line: 8, column: 3, scope: !4, inlinedAt: !36)
!64 = !DILocation(line: 22, column: 1, scope: !8)
