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
  %SIZE = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %3 = alloca i8*
  %menor = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %SIZE, metadata !26, metadata !16), !dbg !28
  store i32 1, i32* %SIZE, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %j, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %k, metadata !31, metadata !16), !dbg !32
  %4 = load i32, i32* %SIZE, align 4, !dbg !33
  %5 = zext i32 %4 to i64, !dbg !34
  %6 = call i8* @llvm.stacksave(), !dbg !34
  store i8* %6, i8** %3, !dbg !34
  %7 = alloca i32, i64 %5, align 16, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %7, metadata !35, metadata !39), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %menor, metadata !41, metadata !16), !dbg !42
  %8 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !43
  store i32 %8, i32* %menor, align 4, !dbg !44
  store i32 0, i32* %j, align 4, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !47
  br label %9, !dbg !49

; <label>:9                                       ; preds = %30, %0
  %10 = load i32, i32* %j, align 4, !dbg !50
  %11 = load i32, i32* %SIZE, align 4, !dbg !52
  %12 = icmp ult i32 %10, %11, !dbg !53
  br i1 %12, label %13, label %33, !dbg !54

; <label>:13                                      ; preds = %9
  %14 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !55
  %15 = load i32, i32* %j, align 4, !dbg !57
  %16 = zext i32 %15 to i64, !dbg !58
  %17 = getelementptr inbounds i32, i32* %7, i64 %16, !dbg !58
  store i32 %14, i32* %17, align 4, !dbg !59
  %18 = load i32, i32* %j, align 4, !dbg !60
  %19 = zext i32 %18 to i64, !dbg !62
  %20 = getelementptr inbounds i32, i32* %7, i64 %19, !dbg !62
  %21 = load i32, i32* %20, align 4, !dbg !62
  %22 = load i32, i32* %menor, align 4, !dbg !63
  %23 = icmp sle i32 %21, %22, !dbg !64
  br i1 %23, label %24, label %29, !dbg !65

; <label>:24                                      ; preds = %13
  %25 = load i32, i32* %j, align 4, !dbg !66
  %26 = zext i32 %25 to i64, !dbg !67
  %27 = getelementptr inbounds i32, i32* %7, i64 %26, !dbg !67
  %28 = load i32, i32* %27, align 4, !dbg !67
  store i32 %28, i32* %menor, align 4, !dbg !68
  br label %29, !dbg !69

; <label>:29                                      ; preds = %24, %13
  br label %30, !dbg !70

; <label>:30                                      ; preds = %29
  %31 = load i32, i32* %j, align 4, !dbg !71
  %32 = add i32 %31, 1, !dbg !71
  store i32 %32, i32* %j, align 4, !dbg !71
  br label %9, !dbg !72

; <label>:33                                      ; preds = %9
  %34 = getelementptr inbounds i32, i32* %7, i64 0, !dbg !73
  %35 = load i32, i32* %34, align 4, !dbg !73
  %36 = load i32, i32* %menor, align 4, !dbg !74
  %37 = icmp sgt i32 %35, %36, !dbg !75
  %38 = zext i1 %37 to i32, !dbg !75
  %39 = bitcast i32* %1 to i8*, !dbg !76
  call void @llvm.lifetime.start(i64 4, i8* %39), !dbg !76
  store i32 %38, i32* %1, align 4, !dbg !76
  %40 = load i32, i32* %1, align 4, !dbg !77
  %41 = icmp ne i32 %40, 0, !dbg !78
  br i1 %41, label %__VERIFIER_assert.exit, label %42, !dbg !79

; <label>:42                                      ; preds = %33
  call void (...) @__VERIFIER_error() #6, !dbg !80
  unreachable, !dbg !80

__VERIFIER_assert.exit:                           ; preds = %33
  %43 = bitcast i32* %1 to i8*, !dbg !81
  call void @llvm.lifetime.end(i64 4, i8* %43), !dbg !81
  store i32 0, i32* %2, !dbg !82
  %44 = load i8*, i8** %3, !dbg !83
  call void @llvm.stackrestore(i8* %44), !dbg !83
  %45 = load i32, i32* %2, !dbg !83
  ret i32 %45, !dbg !83
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare i32 @__VERIFIER_nondet_int(...) #4

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "programs/svcomp16/loops/array_false-unreach-call.i", directory: ".")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !9, isLocal: false, isDefinition: true, scopeLine: 12, isOptimized: false, function: i32 ()* @main, variables: !2)
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
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "SIZE", scope: !8, file: !1, line: 13, type: !27)
!27 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!28 = !DILocation(line: 13, column: 16, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 14, type: !27)
!30 = !DILocation(line: 14, column: 16, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !8, file: !1, line: 14, type: !27)
!32 = !DILocation(line: 14, column: 18, scope: !8)
!33 = !DILocation(line: 15, column: 13, scope: !8)
!34 = !DILocation(line: 15, column: 3, scope: !8)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "array", scope: !8, file: !1, line: 15, type: !36)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, align: 32, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: -1)
!39 = !DIExpression(DW_OP_deref)
!40 = !DILocation(line: 15, column: 7, scope: !8)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "menor", scope: !8, file: !1, line: 15, type: !7)
!42 = !DILocation(line: 15, column: 20, scope: !8)
!43 = !DILocation(line: 17, column: 11, scope: !8)
!44 = !DILocation(line: 17, column: 9, scope: !8)
!45 = !DILocation(line: 19, column: 8, scope: !46)
!46 = distinct !DILexicalBlock(scope: !8, file: !1, line: 19, column: 3)
!47 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !48)
!48 = distinct !DILocation(line: 26, column: 5, scope: !8)
!49 = !DILocation(line: 19, column: 7, scope: !46)
!50 = !DILocation(line: 19, column: 11, scope: !51)
!51 = distinct !DILexicalBlock(scope: !46, file: !1, line: 19, column: 3)
!52 = !DILocation(line: 19, column: 13, scope: !51)
!53 = !DILocation(line: 19, column: 12, scope: !51)
!54 = !DILocation(line: 19, column: 3, scope: !46)
!55 = !DILocation(line: 20, column: 19, scope: !56)
!56 = distinct !DILexicalBlock(scope: !51, file: !1, line: 19, column: 23)
!57 = !DILocation(line: 20, column: 14, scope: !56)
!58 = !DILocation(line: 20, column: 8, scope: !56)
!59 = !DILocation(line: 20, column: 17, scope: !56)
!60 = !DILocation(line: 22, column: 17, scope: !61)
!61 = distinct !DILexicalBlock(scope: !56, file: !1, line: 22, column: 11)
!62 = !DILocation(line: 22, column: 11, scope: !61)
!63 = !DILocation(line: 22, column: 21, scope: !61)
!64 = !DILocation(line: 22, column: 19, scope: !61)
!65 = !DILocation(line: 22, column: 11, scope: !56)
!66 = !DILocation(line: 23, column: 25, scope: !61)
!67 = !DILocation(line: 23, column: 19, scope: !61)
!68 = !DILocation(line: 23, column: 17, scope: !61)
!69 = !DILocation(line: 23, column: 11, scope: !61)
!70 = !DILocation(line: 24, column: 5, scope: !56)
!71 = !DILocation(line: 19, column: 19, scope: !51)
!72 = !DILocation(line: 19, column: 3, scope: !51)
!73 = !DILocation(line: 26, column: 23, scope: !8)
!74 = !DILocation(line: 26, column: 32, scope: !8)
!75 = !DILocation(line: 26, column: 31, scope: !8)
!76 = !DILocation(line: 26, column: 5, scope: !8)
!77 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !48)
!78 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !48)
!79 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !48)
!80 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !48)
!81 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !48)
!82 = !DILocation(line: 28, column: 5, scope: !8)
!83 = !DILocation(line: 29, column: 1, scope: !8)
