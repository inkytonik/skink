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
  %a = alloca [5 x i32], align 16
  %len = alloca i32, align 4
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata [5 x i32]* %a, metadata !26, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %len, metadata !31, metadata !16), !dbg !32
  store i32 0, i32* %len, align 4, !dbg !32
  call void @llvm.dbg.declare(metadata i8* %c, metadata !33, metadata !16), !dbg !35
  %3 = call zeroext i1 (...) @__VERIFIER_nondet_bool(), !dbg !36
  %4 = zext i1 %3 to i8, !dbg !35
  store i8 %4, i8* %c, align 1, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %i, metadata !37, metadata !16), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !39
  br label %5, !dbg !41

; <label>:5                                       ; preds = %12, %0
  %6 = load i8, i8* %c, align 1, !dbg !42
  %7 = trunc i8 %6 to i1, !dbg !42
  br i1 %7, label %8, label %18, !dbg !41

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* %len, align 4, !dbg !43
  %10 = icmp eq i32 %9, 4, !dbg !46
  br i1 %10, label %11, label %12, !dbg !47

; <label>:11                                      ; preds = %8
  store i32 0, i32* %len, align 4, !dbg !48
  br label %12, !dbg !49

; <label>:12                                      ; preds = %11, %8
  %13 = load i32, i32* %len, align 4, !dbg !50
  %14 = sext i32 %13 to i64, !dbg !51
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* %a, i32 0, i64 %14, !dbg !51
  store i32 0, i32* %15, align 4, !dbg !52
  %16 = load i32, i32* %len, align 4, !dbg !53
  %17 = add nsw i32 %16, 1, !dbg !53
  store i32 %17, i32* %len, align 4, !dbg !53
  br label %5, !dbg !41

; <label>:18                                      ; preds = %5
  %19 = load i32, i32* %len, align 4, !dbg !54
  %20 = icmp eq i32 %19, 5, !dbg !55
  %21 = zext i1 %20 to i32, !dbg !55
  %22 = bitcast i32* %1 to i8*, !dbg !56
  call void @llvm.lifetime.start(i64 4, i8* %22), !dbg !56
  store i32 %21, i32* %1, align 4, !dbg !56
  %23 = load i32, i32* %1, align 4, !dbg !57
  %24 = icmp ne i32 %23, 0, !dbg !58
  br i1 %24, label %__VERIFIER_assert.exit, label %25, !dbg !59

; <label>:25                                      ; preds = %18
  call void (...) @__VERIFIER_error() #6, !dbg !60
  unreachable, !dbg !60

__VERIFIER_assert.exit:                           ; preds = %18
  %26 = bitcast i32* %1 to i8*, !dbg !61
  call void @llvm.lifetime.end(i64 4, i8* %26), !dbg !61
  ret i32 1, !dbg !62
}

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
!1 = !DIFile(filename: "../../sv-comp-2016/c/loops/nec11_false-unreach-call.i", directory: "/Users/franck/development/perentiemq/programs")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 12, type: !9, isLocal: false, isDefinition: true, scopeLine: 12, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !8, file: !1, line: 13, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, align: 32, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 5)
!30 = !DILocation(line: 13, column: 8, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !8, file: !1, line: 14, type: !7)
!32 = !DILocation(line: 14, column: 8, scope: !8)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !8, file: !1, line: 15, type: !34)
!34 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!35 = !DILocation(line: 15, column: 10, scope: !8)
!36 = !DILocation(line: 15, column: 12, scope: !8)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 16, type: !7)
!38 = !DILocation(line: 16, column: 8, scope: !8)
!39 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !40)
!40 = distinct !DILocation(line: 28, column: 4, scope: !8)
!41 = !DILocation(line: 19, column: 4, scope: !8)
!42 = !DILocation(line: 19, column: 10, scope: !8)
!43 = !DILocation(line: 21, column: 11, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 21, column: 11)
!45 = distinct !DILexicalBlock(scope: !8, file: !1, line: 19, column: 12)
!46 = !DILocation(line: 21, column: 14, scope: !44)
!47 = !DILocation(line: 21, column: 11, scope: !45)
!48 = !DILocation(line: 22, column: 14, scope: !44)
!49 = !DILocation(line: 22, column: 10, scope: !44)
!50 = !DILocation(line: 24, column: 9, scope: !45)
!51 = !DILocation(line: 24, column: 7, scope: !45)
!52 = !DILocation(line: 24, column: 13, scope: !45)
!53 = !DILocation(line: 26, column: 10, scope: !45)
!54 = !DILocation(line: 28, column: 22, scope: !8)
!55 = !DILocation(line: 28, column: 25, scope: !8)
!56 = !DILocation(line: 28, column: 4, scope: !8)
!57 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !40)
!58 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !40)
!59 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !40)
!60 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !40)
!61 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !40)
!62 = !DILocation(line: 29, column: 4, scope: !8)
