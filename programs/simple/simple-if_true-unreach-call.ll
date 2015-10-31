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
  %3 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %3
  call void @llvm.dbg.declare(metadata i32* %i, metadata !26, metadata !16), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %j, metadata !28, metadata !16), !dbg !29
  %4 = load i32, i32* %i, align 4, !dbg !30
  %5 = load i32, i32* %j, align 4, !dbg !32
  %6 = icmp sgt i32 %4, %5, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !16), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !36
  br i1 %6, label %7, label %17, !dbg !39

; <label>:7                                       ; preds = %0
  %8 = load i32, i32* %i, align 4, !dbg !40
  %9 = load i32, i32* %j, align 4, !dbg !41
  %10 = icmp sgt i32 %8, %9, !dbg !42
  %11 = zext i1 %10 to i32, !dbg !42
  %12 = bitcast i32* %2 to i8*, !dbg !43
  call void @llvm.lifetime.start(i64 4, i8* %12), !dbg !43
  store i32 %11, i32* %2, align 4, !dbg !43
  %13 = load i32, i32* %2, align 4, !dbg !44
  %14 = icmp ne i32 %13, 0, !dbg !45
  br i1 %14, label %__VERIFIER_assert.exit, label %15, !dbg !46

; <label>:15                                      ; preds = %7
  call void (...) @__VERIFIER_error() #5, !dbg !47
  unreachable, !dbg !47

__VERIFIER_assert.exit:                           ; preds = %7
  %16 = bitcast i32* %2 to i8*, !dbg !48
  call void @llvm.lifetime.end(i64 4, i8* %16), !dbg !48
  br label %17, !dbg !43

; <label>:17                                      ; preds = %__VERIFIER_assert.exit, %0
  %18 = load i32, i32* %i, align 4, !dbg !49
  %19 = load i32, i32* %j, align 4, !dbg !50
  %20 = icmp sgt i32 %18, %19, !dbg !51
  br i1 %20, label %21, label %31, !dbg !52

; <label>:21                                      ; preds = %17
  %22 = load i32, i32* %i, align 4, !dbg !53
  %23 = load i32, i32* %j, align 4, !dbg !54
  %24 = icmp sgt i32 %22, %23, !dbg !55
  %25 = zext i1 %24 to i32, !dbg !55
  %26 = bitcast i32* %1 to i8*, !dbg !56
  call void @llvm.lifetime.start(i64 4, i8* %26), !dbg !56
  store i32 %25, i32* %1, align 4, !dbg !56
  %27 = load i32, i32* %1, align 4, !dbg !57
  %28 = icmp ne i32 %27, 0, !dbg !58
  br i1 %28, label %__VERIFIER_assert.exit1, label %29, !dbg !59

; <label>:29                                      ; preds = %21
  call void (...) @__VERIFIER_error() #5, !dbg !60
  unreachable, !dbg !60

__VERIFIER_assert.exit1:                          ; preds = %21
  %30 = bitcast i32* %1 to i8*, !dbg !61
  call void @llvm.lifetime.end(i64 4, i8* %30), !dbg !61
  br label %31, !dbg !56

; <label>:31                                      ; preds = %__VERIFIER_assert.exit1, %17
  %32 = load i32, i32* %3, !dbg !62
  ret i32 %32, !dbg !62
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
!1 = !DIFile(filename: "programs/simple/simple-if_true-unreach-call.c", directory: "/Users/franck/development/perentiemq")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !9, isLocal: false, isDefinition: true, scopeLine: 11, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 12, type: !7)
!27 = !DILocation(line: 12, column: 8, scope: !8)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 12, type: !7)
!29 = !DILocation(line: 12, column: 11, scope: !8)
!30 = !DILocation(line: 13, column: 8, scope: !31)
!31 = distinct !DILexicalBlock(scope: !8, file: !1, line: 13, column: 8)
!32 = !DILocation(line: 13, column: 12, scope: !31)
!33 = !DILocation(line: 13, column: 10, scope: !31)
!34 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !35)
!35 = distinct !DILocation(line: 14, column: 6, scope: !31)
!36 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !37)
!37 = distinct !DILocation(line: 16, column: 6, scope: !38)
!38 = distinct !DILexicalBlock(scope: !8, file: !1, line: 15, column: 8)
!39 = !DILocation(line: 13, column: 8, scope: !8)
!40 = !DILocation(line: 14, column: 25, scope: !31)
!41 = !DILocation(line: 14, column: 29, scope: !31)
!42 = !DILocation(line: 14, column: 27, scope: !31)
!43 = !DILocation(line: 14, column: 6, scope: !31)
!44 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !35)
!45 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !35)
!46 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !35)
!47 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !35)
!48 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !35)
!49 = !DILocation(line: 15, column: 8, scope: !38)
!50 = !DILocation(line: 15, column: 12, scope: !38)
!51 = !DILocation(line: 15, column: 10, scope: !38)
!52 = !DILocation(line: 15, column: 8, scope: !8)
!53 = !DILocation(line: 16, column: 25, scope: !38)
!54 = !DILocation(line: 16, column: 29, scope: !38)
!55 = !DILocation(line: 16, column: 27, scope: !38)
!56 = !DILocation(line: 16, column: 6, scope: !38)
!57 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !37)
!58 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !37)
!59 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !37)
!60 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !37)
!61 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !37)
!62 = !DILocation(line: 17, column: 1, scope: !8)
