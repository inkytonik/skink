; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@k = common global i32 0, align 4
@i = common global i32 0, align 4
@x = common global [100 x i8] zeroinitializer, align 16
@y = common global [100 x i8] zeroinitializer, align 16
@j = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
  %1 = alloca i32, align 4
  store i32 %cond, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !25, metadata !26), !dbg !27
  %2 = load i32, i32* %1, align 4, !dbg !28
  %3 = icmp ne i32 %2, 0, !dbg !30
  br i1 %3, label %6, label %4, !dbg !31

; <label>:4                                       ; preds = %0
  br label %5, !dbg !32

; <label>:5                                       ; preds = %4
  call void (...) @__VERIFIER_error() #5, !dbg !33
  unreachable, !dbg !33

; <label>:6                                       ; preds = %0
  ret void, !dbg !35
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2
  %3 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !36
  store i32 %3, i32* @k, align 4, !dbg !37
  store i32 0, i32* @i, align 4, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %1, metadata !25, metadata !26), !dbg !39
  br label %4, !dbg !44

; <label>:4                                       ; preds = %11, %0
  %5 = load i32, i32* @i, align 4, !dbg !45
  %6 = sext i32 %5 to i64, !dbg !46
  %7 = getelementptr inbounds [100 x i8], [100 x i8]* @x, i32 0, i64 %6, !dbg !46
  %8 = load i8, i8* %7, align 1, !dbg !46
  %9 = sext i8 %8 to i32, !dbg !46
  %10 = icmp ne i32 %9, 0, !dbg !47
  br i1 %10, label %11, label %21, !dbg !44

; <label>:11                                      ; preds = %4
  %12 = load i32, i32* @i, align 4, !dbg !48
  %13 = sext i32 %12 to i64, !dbg !50
  %14 = getelementptr inbounds [100 x i8], [100 x i8]* @x, i32 0, i64 %13, !dbg !50
  %15 = load i8, i8* %14, align 1, !dbg !50
  %16 = load i32, i32* @i, align 4, !dbg !51
  %17 = sext i32 %16 to i64, !dbg !52
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* @y, i32 0, i64 %17, !dbg !52
  store i8 %15, i8* %18, align 1, !dbg !53
  %19 = load i32, i32* @i, align 4, !dbg !54
  %20 = add nsw i32 %19, 1, !dbg !54
  store i32 %20, i32* @i, align 4, !dbg !54
  br label %4, !dbg !44

; <label>:21                                      ; preds = %4
  %22 = load i32, i32* @i, align 4, !dbg !55
  %23 = sext i32 %22 to i64, !dbg !56
  %24 = getelementptr inbounds [100 x i8], [100 x i8]* @y, i32 0, i64 %23, !dbg !56
  store i8 0, i8* %24, align 1, !dbg !57
  %25 = load i32, i32* @k, align 4, !dbg !58
  %26 = icmp sge i32 %25, 0, !dbg !59
  br i1 %26, label %27, label %45, !dbg !60

; <label>:27                                      ; preds = %21
  %28 = load i32, i32* @k, align 4, !dbg !61
  %29 = load i32, i32* @i, align 4, !dbg !62
  %30 = icmp slt i32 %28, %29, !dbg !63
  br i1 %30, label %31, label %45, !dbg !64

; <label>:31                                      ; preds = %27
  %32 = load i32, i32* @k, align 4, !dbg !65
  %33 = sext i32 %32 to i64, !dbg !66
  %34 = getelementptr inbounds [100 x i8], [100 x i8]* @y, i32 0, i64 %33, !dbg !66
  %35 = load i8, i8* %34, align 1, !dbg !66
  %36 = sext i8 %35 to i32, !dbg !66
  %37 = icmp ne i32 %36, 0, !dbg !67
  br i1 %37, label %38, label %44, !dbg !68

; <label>:38                                      ; preds = %31
  %39 = bitcast i32* %1 to i8*, !dbg !69
  call void @llvm.lifetime.start(i64 4, i8* %39), !dbg !69
  store i32 0, i32* %1, align 4, !dbg !69
  %40 = load i32, i32* %1, align 4, !dbg !70
  %41 = icmp ne i32 %40, 0, !dbg !71
  br i1 %41, label %__VERIFIER_assert.exit, label %42, !dbg !72

; <label>:42                                      ; preds = %38
  call void (...) @__VERIFIER_error() #6, !dbg !73
  unreachable, !dbg !73

__VERIFIER_assert.exit:                           ; preds = %38
  %43 = bitcast i32* %1 to i8*, !dbg !74
  call void @llvm.lifetime.end(i64 4, i8* %43), !dbg !74
  br label %44, !dbg !75

; <label>:44                                      ; preds = %__VERIFIER_assert.exit, %31
  br label %45, !dbg !76

; <label>:45                                      ; preds = %44, %27, %21
  ret i32 0, !dbg !77
}

declare i32 @__VERIFIER_nondet_int(...) #3

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
!llvm.module.flags = !{!21, !22, !23}
!llvm.ident = !{!24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3, globals: !11)
!1 = !DIFile(filename: "../../sv-comp-2016/c/loops/nec40_true-unreach-call.i", directory: "/Users/franck/development/perentiemq/programs")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 14, type: !9, isLocal: false, isDefinition: true, scopeLine: 14, isOptimized: false, function: i32 ()* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!7}
!11 = !{!12, !17, !18, !19, !20}
!12 = !DIGlobalVariable(name: "x", scope: !0, file: !1, line: 11, type: !13, isLocal: false, isDefinition: true, variable: [100 x i8]* @x)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, align: 8, elements: !15)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !{!16}
!16 = !DISubrange(count: 100)
!17 = !DIGlobalVariable(name: "y", scope: !0, file: !1, line: 11, type: !13, isLocal: false, isDefinition: true, variable: [100 x i8]* @y)
!18 = !DIGlobalVariable(name: "i", scope: !0, file: !1, line: 12, type: !7, isLocal: false, isDefinition: true, variable: i32* @i)
!19 = !DIGlobalVariable(name: "j", scope: !0, file: !1, line: 12, type: !7, isLocal: false, isDefinition: true, variable: i32* @j)
!20 = !DIGlobalVariable(name: "k", scope: !0, file: !1, line: 12, type: !7, isLocal: false, isDefinition: true, variable: i32* @k)
!21 = !{i32 2, !"Dwarf Version", i32 2}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"PIC Level", i32 2}
!24 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 3, type: !7)
!26 = !DIExpression()
!27 = !DILocation(line: 3, column: 28, scope: !4)
!28 = !DILocation(line: 4, column: 9, scope: !29)
!29 = distinct !DILexicalBlock(scope: !4, file: !1, line: 4, column: 7)
!30 = !DILocation(line: 4, column: 8, scope: !29)
!31 = !DILocation(line: 4, column: 7, scope: !4)
!32 = !DILocation(line: 4, column: 16, scope: !29)
!33 = !DILocation(line: 5, column: 12, scope: !34)
!34 = distinct !DILexicalBlock(scope: !29, file: !1, line: 4, column: 16)
!35 = !DILocation(line: 7, column: 3, scope: !4)
!36 = !DILocation(line: 15, column: 7, scope: !8)
!37 = !DILocation(line: 15, column: 5, scope: !8)
!38 = !DILocation(line: 17, column: 5, scope: !8)
!39 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !40)
!40 = distinct !DILocation(line: 26, column: 8, scope: !41)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 26, column: 7)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 25, column: 8)
!43 = distinct !DILexicalBlock(scope: !8, file: !1, line: 24, column: 6)
!44 = !DILocation(line: 18, column: 3, scope: !8)
!45 = !DILocation(line: 18, column: 11, scope: !8)
!46 = !DILocation(line: 18, column: 9, scope: !8)
!47 = !DILocation(line: 18, column: 14, scope: !8)
!48 = !DILocation(line: 19, column: 14, scope: !49)
!49 = distinct !DILexicalBlock(scope: !8, file: !1, line: 18, column: 19)
!50 = !DILocation(line: 19, column: 12, scope: !49)
!51 = !DILocation(line: 19, column: 7, scope: !49)
!52 = !DILocation(line: 19, column: 5, scope: !49)
!53 = !DILocation(line: 19, column: 10, scope: !49)
!54 = !DILocation(line: 20, column: 6, scope: !49)
!55 = !DILocation(line: 22, column: 5, scope: !8)
!56 = !DILocation(line: 22, column: 3, scope: !8)
!57 = !DILocation(line: 22, column: 8, scope: !8)
!58 = !DILocation(line: 24, column: 6, scope: !43)
!59 = !DILocation(line: 24, column: 8, scope: !43)
!60 = !DILocation(line: 24, column: 13, scope: !43)
!61 = !DILocation(line: 24, column: 16, scope: !43)
!62 = !DILocation(line: 24, column: 20, scope: !43)
!63 = !DILocation(line: 24, column: 18, scope: !43)
!64 = !DILocation(line: 24, column: 6, scope: !8)
!65 = !DILocation(line: 25, column: 10, scope: !42)
!66 = !DILocation(line: 25, column: 8, scope: !42)
!67 = !DILocation(line: 25, column: 13, scope: !42)
!68 = !DILocation(line: 25, column: 8, scope: !43)
!69 = !DILocation(line: 26, column: 8, scope: !41)
!70 = !DILocation(line: 4, column: 9, scope: !29, inlinedAt: !40)
!71 = !DILocation(line: 4, column: 8, scope: !29, inlinedAt: !40)
!72 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !40)
!73 = !DILocation(line: 5, column: 12, scope: !34, inlinedAt: !40)
!74 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !40)
!75 = !DILocation(line: 26, column: 29, scope: !41)
!76 = !DILocation(line: 25, column: 16, scope: !42)
!77 = !DILocation(line: 28, column: 3, scope: !8)
