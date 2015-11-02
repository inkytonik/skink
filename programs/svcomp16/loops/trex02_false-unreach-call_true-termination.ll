; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@x = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
  %1 = alloca i32, align 4
  store i32 %cond, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !20, metadata !21), !dbg !22
  %2 = load i32, i32* %1, align 4, !dbg !23
  %3 = icmp ne i32 %2, 0, !dbg !25
  br i1 %3, label %6, label %4, !dbg !26

; <label>:4                                       ; preds = %0
  br label %5, !dbg !27

; <label>:5                                       ; preds = %4
  call void (...) @__VERIFIER_error() #5, !dbg !28
  unreachable, !dbg !28

; <label>:6                                       ; preds = %0
  ret void, !dbg !30
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

; Function Attrs: nounwind ssp uwtable
define void @foo() #0 {
  %1 = load i32, i32* @x, align 4, !dbg !31
  %2 = add nsw i32 %1, -1, !dbg !31
  store i32 %2, i32* @x, align 4, !dbg !31
  ret void, !dbg !32
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %c = alloca i8, align 1
  store i32 0, i32* %2
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !33
  store i32 %3, i32* @x, align 4, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %1, metadata !20, metadata !21), !dbg !35
  br label %4, !dbg !37

; <label>:4                                       ; preds = %18, %0
  %5 = load i32, i32* @x, align 4, !dbg !38
  %6 = icmp sgt i32 %5, 0, !dbg !39
  br i1 %6, label %7, label %19, !dbg !37

; <label>:7                                       ; preds = %4
  call void @llvm.dbg.declare(metadata i8* %c, metadata !40, metadata !21), !dbg !43
  %8 = call zeroext i1 (...) @__VERIFIER_nondet_bool(), !dbg !44
  %9 = zext i1 %8 to i8, !dbg !43
  store i8 %9, i8* %c, align 1, !dbg !43
  %10 = load i8, i8* %c, align 1, !dbg !45
  %11 = trunc i8 %10 to i1, !dbg !45
  br i1 %11, label %12, label %15, !dbg !47

; <label>:12                                      ; preds = %7
  %13 = load i32, i32* @x, align 4, !dbg !48
  %14 = add nsw i32 %13, -1, !dbg !48
  store i32 %14, i32* @x, align 4, !dbg !48
  br label %18, !dbg !50

; <label>:15                                      ; preds = %7
  %16 = load i32, i32* @x, align 4, !dbg !51
  %17 = add nsw i32 %16, -1, !dbg !51
  store i32 %17, i32* @x, align 4, !dbg !51
  br label %18

; <label>:18                                      ; preds = %15, %12
  br label %4, !dbg !37

; <label>:19                                      ; preds = %4
  %20 = load i32, i32* @x, align 4, !dbg !53
  %21 = icmp eq i32 %20, 0, !dbg !54
  %22 = zext i1 %21 to i32, !dbg !54
  %23 = bitcast i32* %1 to i8*, !dbg !55
  call void @llvm.lifetime.start(i64 4, i8* %23), !dbg !55
  store i32 %22, i32* %1, align 4, !dbg !55
  %24 = load i32, i32* %1, align 4, !dbg !56
  %25 = icmp ne i32 %24, 0, !dbg !57
  br i1 %25, label %__VERIFIER_assert.exit, label %26, !dbg !58

; <label>:26                                      ; preds = %19
  call void (...) @__VERIFIER_error() #6, !dbg !59
  unreachable, !dbg !59

__VERIFIER_assert.exit:                           ; preds = %19
  %27 = bitcast i32* %1 to i8*, !dbg !60
  call void @llvm.lifetime.end(i64 4, i8* %27), !dbg !60
  %28 = load i32, i32* %2, !dbg !61
  ret i32 %28, !dbg !61
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
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3, globals: !14)
!1 = !DIFile(filename: "programs/svcomp16/loops/trex02_false-unreach-call_true-termination.i", directory: ".")
!2 = !{}
!3 = !{!4, !8, !11}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 2, type: !5, isLocal: false, isDefinition: true, scopeLine: 2, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "foo", scope: !1, file: !1, line: 11, type: !9, isLocal: false, isDefinition: true, scopeLine: 11, isOptimized: false, function: void ()* @foo, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{null}
!11 = !DISubprogram(name: "main", scope: !1, file: !1, line: 14, type: !12, isLocal: false, isDefinition: true, scopeLine: 14, isOptimized: false, function: i32 ()* @main, variables: !2)
!12 = !DISubroutineType(types: !13)
!13 = !{!7}
!14 = !{!15}
!15 = !DIGlobalVariable(name: "x", scope: !0, file: !1, line: 10, type: !7, isLocal: false, isDefinition: true, variable: i32* @x)
!16 = !{i32 2, !"Dwarf Version", i32 2}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"PIC Level", i32 2}
!19 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 2, type: !7)
!21 = !DIExpression()
!22 = !DILocation(line: 2, column: 28, scope: !4)
!23 = !DILocation(line: 3, column: 9, scope: !24)
!24 = distinct !DILexicalBlock(scope: !4, file: !1, line: 3, column: 7)
!25 = !DILocation(line: 3, column: 8, scope: !24)
!26 = !DILocation(line: 3, column: 7, scope: !4)
!27 = !DILocation(line: 3, column: 16, scope: !24)
!28 = !DILocation(line: 4, column: 12, scope: !29)
!29 = distinct !DILexicalBlock(scope: !24, file: !1, line: 3, column: 16)
!30 = !DILocation(line: 6, column: 3, scope: !4)
!31 = !DILocation(line: 12, column: 4, scope: !8)
!32 = !DILocation(line: 13, column: 1, scope: !8)
!33 = !DILocation(line: 15, column: 5, scope: !11)
!34 = !DILocation(line: 15, column: 4, scope: !11)
!35 = !DILocation(line: 2, column: 28, scope: !4, inlinedAt: !36)
!36 = distinct !DILocation(line: 21, column: 3, scope: !11)
!37 = !DILocation(line: 16, column: 3, scope: !11)
!38 = !DILocation(line: 16, column: 10, scope: !11)
!39 = !DILocation(line: 16, column: 12, scope: !11)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !41, file: !1, line: 17, type: !42)
!41 = distinct !DILexicalBlock(scope: !11, file: !1, line: 16, column: 17)
!42 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!43 = !DILocation(line: 17, column: 11, scope: !41)
!44 = !DILocation(line: 17, column: 15, scope: !41)
!45 = !DILocation(line: 18, column: 8, scope: !46)
!46 = distinct !DILexicalBlock(scope: !41, file: !1, line: 18, column: 8)
!47 = !DILocation(line: 18, column: 8, scope: !41)
!48 = !DILocation(line: 12, column: 4, scope: !8, inlinedAt: !49)
!49 = distinct !DILocation(line: 18, column: 11, scope: !46)
!50 = !DILocation(line: 18, column: 11, scope: !46)
!51 = !DILocation(line: 12, column: 4, scope: !8, inlinedAt: !52)
!52 = distinct !DILocation(line: 19, column: 10, scope: !46)
!53 = !DILocation(line: 21, column: 21, scope: !11)
!54 = !DILocation(line: 21, column: 22, scope: !11)
!55 = !DILocation(line: 21, column: 3, scope: !11)
!56 = !DILocation(line: 3, column: 9, scope: !24, inlinedAt: !36)
!57 = !DILocation(line: 3, column: 8, scope: !24, inlinedAt: !36)
!58 = !DILocation(line: 3, column: 7, scope: !4, inlinedAt: !36)
!59 = !DILocation(line: 4, column: 12, scope: !29, inlinedAt: !36)
!60 = !DILocation(line: 6, column: 3, scope: !4, inlinedAt: !36)
!61 = !DILocation(line: 22, column: 1, scope: !11)
