; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
  %1 = alloca i32, align 4
  store i32 %cond, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !18, metadata !19), !dbg !20
  %2 = load i32, i32* %1, align 4, !dbg !21
  %3 = icmp ne i32 %2, 0, !dbg !23
  br i1 %3, label %6, label %4, !dbg !24

; <label>:4                                       ; preds = %0
  br label %5, !dbg !25

; <label>:5                                       ; preds = %4
  call void (...) @__VERIFIER_error() #4, !dbg !26
  unreachable, !dbg !26

; <label>:6                                       ; preds = %0
  ret void, !dbg !28
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @func(i32 %i) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %i, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !29, metadata !19), !dbg !30
  %3 = load i32, i32* %2, align 4, !dbg !31
  %4 = icmp sgt i32 %3, 0, !dbg !32
  %5 = zext i1 %4 to i32, !dbg !32
  %6 = bitcast i32* %1 to i8*, !dbg !33
  call void @llvm.lifetime.start(i64 4, i8* %6), !dbg !33
  store i32 %5, i32* %1, align 4, !dbg !33
  %7 = load i32, i32* %1, align 4, !dbg !34
  %8 = icmp ne i32 %7, 0, !dbg !36
  br i1 %8, label %__VERIFIER_assert.exit, label %9, !dbg !37

; <label>:9                                       ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !38
  unreachable, !dbg !38

__VERIFIER_assert.exit:                           ; preds = %0
  %10 = bitcast i32* %1 to i8*, !dbg !39
  call void @llvm.lifetime.end(i64 4, i8* %10), !dbg !39
  %11 = load i32, i32* %2, align 4, !dbg !40
  %12 = add nsw i32 %11, 1, !dbg !41
  call void @llvm.dbg.declare(metadata i32* %1, metadata !18, metadata !19), !dbg !42
  ret i32 %12, !dbg !43
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %j, metadata !44, metadata !19), !dbg !45
  %3 = bitcast i32* %2 to i8*, !dbg !46
  call void @llvm.lifetime.start(i64 4, i8* %3), !dbg !46
  store i32 42, i32* %2, align 4, !dbg !46
  %4 = load i32, i32* %2, align 4, !dbg !47
  %5 = icmp sgt i32 %4, 0, !dbg !49
  %6 = zext i1 %5 to i32, !dbg !49
  %7 = bitcast i32* %1 to i8*, !dbg !50
  call void @llvm.lifetime.start(i64 4, i8* %7) #3, !dbg !50
  store i32 %6, i32* %1, align 4, !dbg !50
  %8 = load i32, i32* %1, align 4, !dbg !51
  %9 = icmp ne i32 %8, 0, !dbg !53
  br i1 %9, label %func.exit, label %10, !dbg !54

; <label>:10                                      ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !55
  unreachable, !dbg !55

func.exit:                                        ; preds = %0
  %11 = bitcast i32* %1 to i8*, !dbg !56
  call void @llvm.lifetime.end(i64 4, i8* %11) #3, !dbg !56
  %12 = load i32, i32* %2, align 4, !dbg !57
  %13 = add nsw i32 %12, 1, !dbg !58
  %14 = bitcast i32* %2 to i8*, !dbg !59
  call void @llvm.lifetime.end(i64 4, i8* %14), !dbg !59
  store i32 %13, i32* %j, align 4, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %1, metadata !18, metadata !19), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %2, metadata !29, metadata !19), !dbg !62
  ret i32 0, !dbg !63
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
!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "simple-function_true-unreach-call.c", directory: "/Users/asloane/Projects/PerentieMQ/perentiemq/programs/simple")
!2 = !{}
!3 = !{!4, !8, !11}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "func", scope: !1, file: !1, line: 10, type: !9, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32)* @func, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!7, !7}
!11 = !DISubprogram(name: "main", scope: !1, file: !1, line: 16, type: !12, isLocal: false, isDefinition: true, scopeLine: 17, isOptimized: false, function: i32 ()* @main, variables: !2)
!12 = !DISubroutineType(types: !13)
!13 = !{!7}
!14 = !{i32 2, !"Dwarf Version", i32 2}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"PIC Level", i32 2}
!17 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 3, type: !7)
!19 = !DIExpression()
!20 = !DILocation(line: 3, column: 28, scope: !4)
!21 = !DILocation(line: 4, column: 9, scope: !22)
!22 = distinct !DILexicalBlock(scope: !4, file: !1, line: 4, column: 7)
!23 = !DILocation(line: 4, column: 8, scope: !22)
!24 = !DILocation(line: 4, column: 7, scope: !4)
!25 = !DILocation(line: 4, column: 16, scope: !22)
!26 = !DILocation(line: 5, column: 12, scope: !27)
!27 = distinct !DILexicalBlock(scope: !22, file: !1, line: 4, column: 16)
!28 = !DILocation(line: 7, column: 3, scope: !4)
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 1, scope: !8, file: !1, line: 10, type: !7)
!30 = !DILocation(line: 10, column: 15, scope: !8)
!31 = !DILocation(line: 12, column: 23, scope: !8)
!32 = !DILocation(line: 12, column: 25, scope: !8)
!33 = !DILocation(line: 12, column: 5, scope: !8)
!34 = !DILocation(line: 4, column: 9, scope: !22, inlinedAt: !35)
!35 = distinct !DILocation(line: 12, column: 5, scope: !8)
!36 = !DILocation(line: 4, column: 8, scope: !22, inlinedAt: !35)
!37 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !35)
!38 = !DILocation(line: 5, column: 12, scope: !27, inlinedAt: !35)
!39 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !35)
!40 = !DILocation(line: 13, column: 12, scope: !8)
!41 = !DILocation(line: 13, column: 14, scope: !8)
!42 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !35)
!43 = !DILocation(line: 13, column: 5, scope: !8)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !11, file: !1, line: 18, type: !7)
!45 = !DILocation(line: 18, column: 9, scope: !11)
!46 = !DILocation(line: 19, column: 9, scope: !11)
!47 = !DILocation(line: 12, column: 23, scope: !8, inlinedAt: !48)
!48 = distinct !DILocation(line: 19, column: 9, scope: !11)
!49 = !DILocation(line: 12, column: 25, scope: !8, inlinedAt: !48)
!50 = !DILocation(line: 12, column: 5, scope: !8, inlinedAt: !48)
!51 = !DILocation(line: 4, column: 9, scope: !22, inlinedAt: !52)
!52 = distinct !DILocation(line: 12, column: 5, scope: !8, inlinedAt: !48)
!53 = !DILocation(line: 4, column: 8, scope: !22, inlinedAt: !52)
!54 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !52)
!55 = !DILocation(line: 5, column: 12, scope: !27, inlinedAt: !52)
!56 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !52)
!57 = !DILocation(line: 13, column: 12, scope: !8, inlinedAt: !48)
!58 = !DILocation(line: 13, column: 14, scope: !8, inlinedAt: !48)
!59 = !DILocation(line: 13, column: 5, scope: !8, inlinedAt: !48)
!60 = !DILocation(line: 19, column: 7, scope: !11)
!61 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !52)
!62 = !DILocation(line: 10, column: 15, scope: !8, inlinedAt: !48)
!63 = !DILocation(line: 20, column: 1, scope: !11)
