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
  %p1 = alloca i32, align 4
  %lk1 = alloca i32, align 4
  %cond = alloca i32, align 4
  store i32 0, i32* %1
  call void @llvm.dbg.declare(metadata i32* %p1, metadata !26, metadata !16), !dbg !27
  %2 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !28
  store i32 %2, i32* %p1, align 4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %lk1, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %cond, metadata !31, metadata !16), !dbg !32
  br label %3, !dbg !33

; <label>:3                                       ; preds = %18, %0
  %4 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !34
  store i32 %4, i32* %cond, align 4, !dbg !36
  %5 = load i32, i32* %cond, align 4, !dbg !37
  %6 = icmp eq i32 %5, 0, !dbg !39
  br i1 %6, label %7, label %8, !dbg !40

; <label>:7                                       ; preds = %3
  br label %19, !dbg !41

; <label>:8                                       ; preds = %3
  br label %9

; <label>:9                                       ; preds = %8
  store i32 0, i32* %lk1, align 4, !dbg !43
  %10 = load i32, i32* %p1, align 4, !dbg !44
  %11 = icmp ne i32 %10, 0, !dbg !46
  br i1 %11, label %12, label %17, !dbg !47

; <label>:12                                      ; preds = %9
  %13 = load i32, i32* %lk1, align 4, !dbg !48
  %14 = icmp ne i32 %13, 1, !dbg !51
  br i1 %14, label %15, label %16, !dbg !52

; <label>:15                                      ; preds = %12
  br label %20, !dbg !53

; <label>:16                                      ; preds = %12
  store i32 0, i32* %lk1, align 4, !dbg !54
  br label %18, !dbg !55

; <label>:17                                      ; preds = %9
  br label %18

; <label>:18                                      ; preds = %17, %16
  br label %3, !dbg !33

; <label>:19                                      ; preds = %7
  ret i32 0, !dbg !56

; <label>:20                                      ; preds = %15
  call void (...) @__VERIFIER_error() #4, !dbg !57
  unreachable, !dbg !57
}

declare i32 @__VERIFIER_nondet_int(...) #3

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "programs/simple/eca-like_false-unreach-call.c", directory: ".")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 6, type: !5, isLocal: false, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !9, isLocal: false, isDefinition: true, scopeLine: 14, isOptimized: false, function: i32 ()* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!7}
!11 = !{i32 2, !"Dwarf Version", i32 2}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"PIC Level", i32 2}
!14 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 6, type: !7)
!16 = !DIExpression()
!17 = !DILocation(line: 6, column: 28, scope: !4)
!18 = !DILocation(line: 7, column: 9, scope: !19)
!19 = distinct !DILexicalBlock(scope: !4, file: !1, line: 7, column: 7)
!20 = !DILocation(line: 7, column: 8, scope: !19)
!21 = !DILocation(line: 7, column: 7, scope: !4)
!22 = !DILocation(line: 7, column: 16, scope: !19)
!23 = !DILocation(line: 8, column: 12, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 7, column: 16)
!25 = !DILocation(line: 10, column: 3, scope: !4)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p1", scope: !8, file: !1, line: 15, type: !7)
!27 = !DILocation(line: 15, column: 9, scope: !8)
!28 = !DILocation(line: 15, column: 14, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lk1", scope: !8, file: !1, line: 16, type: !7)
!30 = !DILocation(line: 16, column: 9, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cond", scope: !8, file: !1, line: 18, type: !7)
!32 = !DILocation(line: 18, column: 9, scope: !8)
!33 = !DILocation(line: 20, column: 5, scope: !8)
!34 = !DILocation(line: 21, column: 16, scope: !35)
!35 = distinct !DILexicalBlock(scope: !8, file: !1, line: 20, column: 14)
!36 = !DILocation(line: 21, column: 14, scope: !35)
!37 = !DILocation(line: 22, column: 13, scope: !38)
!38 = distinct !DILexicalBlock(scope: !35, file: !1, line: 22, column: 13)
!39 = !DILocation(line: 22, column: 18, scope: !38)
!40 = !DILocation(line: 22, column: 13, scope: !35)
!41 = !DILocation(line: 23, column: 13, scope: !42)
!42 = distinct !DILexicalBlock(scope: !38, file: !1, line: 22, column: 24)
!43 = !DILocation(line: 25, column: 13, scope: !35)
!44 = !DILocation(line: 28, column: 13, scope: !45)
!45 = distinct !DILexicalBlock(scope: !35, file: !1, line: 28, column: 13)
!46 = !DILocation(line: 28, column: 16, scope: !45)
!47 = !DILocation(line: 28, column: 13, scope: !35)
!48 = !DILocation(line: 29, column: 17, scope: !49)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 29, column: 17)
!50 = distinct !DILexicalBlock(scope: !45, file: !1, line: 28, column: 22)
!51 = !DILocation(line: 29, column: 21, scope: !49)
!52 = !DILocation(line: 29, column: 17, scope: !50)
!53 = !DILocation(line: 29, column: 27, scope: !49)
!54 = !DILocation(line: 30, column: 17, scope: !50)
!55 = !DILocation(line: 31, column: 9, scope: !50)
!56 = !DILocation(line: 35, column: 5, scope: !8)
!57 = !DILocation(line: 36, column: 10, scope: !8)
