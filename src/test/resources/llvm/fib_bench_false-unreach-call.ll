; ModuleID = '<stdin>'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@i = global i32 1, align 4
@j = global i32 1, align 4

; Function Attrs: nounwind uwtable
define i32 @added_to(i32 %i, i32 %j) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %i, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !27, metadata !28), !dbg !29
  store i32 %j, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !30, metadata !28), !dbg !31
  %3 = load i32, i32* %1, align 4, !dbg !32
  %4 = load i32, i32* %2, align 4, !dbg !33
  %5 = add nsw i32 %3, %4, !dbg !34
  ret i32 %5, !dbg !35
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i8* @t1(i8* %arg) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %k = alloca i32, align 4
  store i8* %arg, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !36, metadata !28), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %k, metadata !38, metadata !28), !dbg !39
  store i32 0, i32* %k, align 4, !dbg !39
  store i32 0, i32* %k, align 4, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %1, metadata !27, metadata !28), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %2, metadata !30, metadata !28), !dbg !45
  br label %5, !dbg !46

; <label>:5                                       ; preds = %18, %0
  %6 = load i32, i32* %k, align 4, !dbg !47
  %7 = icmp slt i32 %6, 5, !dbg !50
  br i1 %7, label %8, label %21, !dbg !51

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* @i, align 4, !dbg !52
  %10 = load i32, i32* @j, align 4, !dbg !53
  %11 = bitcast i32* %1 to i8*, !dbg !54
  call void @llvm.lifetime.start(i64 4, i8* %11), !dbg !54
  %12 = bitcast i32* %2 to i8*, !dbg !54
  call void @llvm.lifetime.start(i64 4, i8* %12), !dbg !54
  store i32 %9, i32* %1, align 4, !dbg !54
  store i32 %10, i32* %2, align 4, !dbg !54
  %13 = load i32, i32* %1, align 4, !dbg !55
  %14 = load i32, i32* %2, align 4, !dbg !56
  %15 = add nsw i32 %13, %14, !dbg !57
  %16 = bitcast i32* %1 to i8*, !dbg !58
  call void @llvm.lifetime.end(i64 4, i8* %16), !dbg !58
  %17 = bitcast i32* %2 to i8*, !dbg !58
  call void @llvm.lifetime.end(i64 4, i8* %17), !dbg !58
  store i32 %15, i32* @i, align 4, !dbg !59
  br label %18, !dbg !60

; <label>:18                                      ; preds = %8
  %19 = load i32, i32* %k, align 4, !dbg !61
  %20 = add nsw i32 %19, 1, !dbg !61
  store i32 %20, i32* %k, align 4, !dbg !61
  br label %5, !dbg !62

; <label>:21                                      ; preds = %5
  call void @pthread_exit(i8* null) #5, !dbg !63
  unreachable, !dbg !63
                                                  ; No predecessors!
  %23 = load i8*, i8** %3, !dbg !64
  ret i8* %23, !dbg !64
}

; Function Attrs: noreturn
declare void @pthread_exit(i8*) #2

; Function Attrs: nounwind uwtable
define i8* @t2(i8* %arg) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %k = alloca i32, align 4
  store i8* %arg, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !65, metadata !28), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %k, metadata !67, metadata !28), !dbg !68
  store i32 0, i32* %k, align 4, !dbg !68
  store i32 0, i32* %k, align 4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %1, metadata !27, metadata !28), !dbg !71
  call void @llvm.dbg.declare(metadata i32* %2, metadata !30, metadata !28), !dbg !74
  br label %5, !dbg !75

; <label>:5                                       ; preds = %18, %0
  %6 = load i32, i32* %k, align 4, !dbg !76
  %7 = icmp slt i32 %6, 5, !dbg !79
  br i1 %7, label %8, label %21, !dbg !80

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* @i, align 4, !dbg !81
  %10 = load i32, i32* @j, align 4, !dbg !82
  %11 = bitcast i32* %1 to i8*, !dbg !83
  call void @llvm.lifetime.start(i64 4, i8* %11), !dbg !83
  %12 = bitcast i32* %2 to i8*, !dbg !83
  call void @llvm.lifetime.start(i64 4, i8* %12), !dbg !83
  store i32 %9, i32* %1, align 4, !dbg !83
  store i32 %10, i32* %2, align 4, !dbg !83
  %13 = load i32, i32* %1, align 4, !dbg !84
  %14 = load i32, i32* %2, align 4, !dbg !85
  %15 = add nsw i32 %13, %14, !dbg !86
  %16 = bitcast i32* %1 to i8*, !dbg !87
  call void @llvm.lifetime.end(i64 4, i8* %16), !dbg !87
  %17 = bitcast i32* %2 to i8*, !dbg !87
  call void @llvm.lifetime.end(i64 4, i8* %17), !dbg !87
  store i32 %15, i32* @j, align 4, !dbg !88
  br label %18, !dbg !89

; <label>:18                                      ; preds = %8
  %19 = load i32, i32* %k, align 4, !dbg !90
  %20 = add nsw i32 %19, 1, !dbg !90
  store i32 %20, i32* %k, align 4, !dbg !90
  br label %5, !dbg !91

; <label>:21                                      ; preds = %5
  call void @pthread_exit(i8* null) #5, !dbg !92
  unreachable, !dbg !92
                                                  ; No predecessors!
  %23 = load i8*, i8** %3, !dbg !93
  ret i8* %23, !dbg !93
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %id1 = alloca i64, align 8
  %id2 = alloca i64, align 8
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !94, metadata !28), !dbg !95
  store i8** %argv, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !96, metadata !28), !dbg !97
  call void @llvm.dbg.declare(metadata i64* %id1, metadata !98, metadata !28), !dbg !102
  call void @llvm.dbg.declare(metadata i64* %id2, metadata !103, metadata !28), !dbg !104
  %4 = call i32 @pthread_create(i64* %id1, %union.pthread_attr_t* null, i8* (i8*)* @t1, i8* null) #4, !dbg !105
  %5 = call i32 @pthread_create(i64* %id2, %union.pthread_attr_t* null, i8* (i8*)* @t2, i8* null) #4, !dbg !106
  %6 = load i32, i32* @i, align 4, !dbg !107
  %7 = icmp sge i32 %6, 144, !dbg !109
  br i1 %7, label %11, label %8, !dbg !110

; <label>:8                                       ; preds = %0
  %9 = load i32, i32* @j, align 4, !dbg !111
  %10 = icmp sge i32 %9, 144, !dbg !113
  br i1 %10, label %11, label %13, !dbg !114

; <label>:11                                      ; preds = %8, %0
  br label %12, !dbg !115

; <label>:12                                      ; preds = %11
  call void (...) @__VERIFIER_error() #5, !dbg !118
  unreachable, !dbg !118

; <label>:13                                      ; preds = %8
  ret i32 0, !dbg !120
}

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #3

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!24, !25}
!llvm.ident = !{!26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (tags/RELEASE_371/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !21)
!1 = !DIFile(filename: "fib_bench_false-unreach-call.c", directory: "/home/matt/Thesis/sv-benchmarks/c/pthread")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !11, !14, !15}
!6 = !DISubprogram(name: "added_to", scope: !7, file: !7, line: 9, type: !8, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @added_to, variables: !2)
!7 = !DIFile(filename: "fib_bench_false-unreach-call.c", directory: "/home/matt/Thesis/sv-benchmarks/c/pthread")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !10}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DISubprogram(name: "t1", scope: !7, file: !7, line: 15, type: !12, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: false, function: i8* (i8*)* @t1, variables: !2)
!12 = !DISubroutineType(types: !13)
!13 = !{!4, !4}
!14 = !DISubprogram(name: "t2", scope: !7, file: !7, line: 26, type: !12, isLocal: false, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: false, function: i8* (i8*)* @t2, variables: !2)
!15 = !DISubprogram(name: "main", scope: !7, file: !7, line: 37, type: !16, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i8**)* @main, variables: !2)
!16 = !DISubroutineType(types: !17)
!17 = !{!10, !10, !18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!21 = !{!22, !23}
!22 = !DIGlobalVariable(name: "i", scope: !0, file: !7, line: 5, type: !10, isLocal: false, isDefinition: true, variable: i32* @i)
!23 = !DIGlobalVariable(name: "j", scope: !0, file: !7, line: 5, type: !10, isLocal: false, isDefinition: true, variable: i32* @j)
!24 = !{i32 2, !"Dwarf Version", i32 4}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{!"clang version 3.7.1 (tags/RELEASE_371/final)"}
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 1, scope: !6, file: !7, line: 9, type: !10)
!28 = !DIExpression()
!29 = !DILocation(line: 9, column: 18, scope: !6)
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "j", arg: 2, scope: !6, file: !7, line: 9, type: !10)
!31 = !DILocation(line: 9, column: 25, scope: !6)
!32 = !DILocation(line: 11, column: 10, scope: !6)
!33 = !DILocation(line: 11, column: 14, scope: !6)
!34 = !DILocation(line: 11, column: 12, scope: !6)
!35 = !DILocation(line: 11, column: 3, scope: !6)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !11, file: !7, line: 15, type: !4)
!37 = !DILocation(line: 15, column: 10, scope: !11)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !11, file: !7, line: 17, type: !10)
!39 = !DILocation(line: 17, column: 7, scope: !11)
!40 = !DILocation(line: 19, column: 10, scope: !41)
!41 = distinct !DILexicalBlock(scope: !11, file: !7, line: 19, column: 3)
!42 = !DILocation(line: 9, column: 18, scope: !6, inlinedAt: !43)
!43 = distinct !DILocation(line: 20, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !41, file: !7, line: 19, column: 3)
!45 = !DILocation(line: 9, column: 25, scope: !6, inlinedAt: !43)
!46 = !DILocation(line: 19, column: 8, scope: !41)
!47 = !DILocation(line: 19, column: 15, scope: !48)
!48 = !DILexicalBlockFile(scope: !49, file: !7, discriminator: 2)
!49 = !DILexicalBlockFile(scope: !44, file: !7, discriminator: 1)
!50 = !DILocation(line: 19, column: 17, scope: !44)
!51 = !DILocation(line: 19, column: 3, scope: !41)
!52 = !DILocation(line: 20, column: 18, scope: !44)
!53 = !DILocation(line: 20, column: 21, scope: !44)
!54 = !DILocation(line: 20, column: 9, scope: !44)
!55 = !DILocation(line: 11, column: 10, scope: !6, inlinedAt: !43)
!56 = !DILocation(line: 11, column: 14, scope: !6, inlinedAt: !43)
!57 = !DILocation(line: 11, column: 12, scope: !6, inlinedAt: !43)
!58 = !DILocation(line: 11, column: 3, scope: !6, inlinedAt: !43)
!59 = !DILocation(line: 20, column: 7, scope: !44)
!60 = !DILocation(line: 20, column: 5, scope: !44)
!61 = !DILocation(line: 19, column: 25, scope: !44)
!62 = !DILocation(line: 19, column: 3, scope: !44)
!63 = !DILocation(line: 22, column: 3, scope: !11)
!64 = !DILocation(line: 23, column: 1, scope: !11)
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !14, file: !7, line: 26, type: !4)
!66 = !DILocation(line: 26, column: 10, scope: !14)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !14, file: !7, line: 28, type: !10)
!68 = !DILocation(line: 28, column: 7, scope: !14)
!69 = !DILocation(line: 30, column: 10, scope: !70)
!70 = distinct !DILexicalBlock(scope: !14, file: !7, line: 30, column: 3)
!71 = !DILocation(line: 9, column: 18, scope: !6, inlinedAt: !72)
!72 = distinct !DILocation(line: 31, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !70, file: !7, line: 30, column: 3)
!74 = !DILocation(line: 9, column: 25, scope: !6, inlinedAt: !72)
!75 = !DILocation(line: 30, column: 8, scope: !70)
!76 = !DILocation(line: 30, column: 15, scope: !77)
!77 = !DILexicalBlockFile(scope: !78, file: !7, discriminator: 2)
!78 = !DILexicalBlockFile(scope: !73, file: !7, discriminator: 1)
!79 = !DILocation(line: 30, column: 17, scope: !73)
!80 = !DILocation(line: 30, column: 3, scope: !70)
!81 = !DILocation(line: 31, column: 18, scope: !73)
!82 = !DILocation(line: 31, column: 21, scope: !73)
!83 = !DILocation(line: 31, column: 9, scope: !73)
!84 = !DILocation(line: 11, column: 10, scope: !6, inlinedAt: !72)
!85 = !DILocation(line: 11, column: 14, scope: !6, inlinedAt: !72)
!86 = !DILocation(line: 11, column: 12, scope: !6, inlinedAt: !72)
!87 = !DILocation(line: 11, column: 3, scope: !6, inlinedAt: !72)
!88 = !DILocation(line: 31, column: 7, scope: !73)
!89 = !DILocation(line: 31, column: 5, scope: !73)
!90 = !DILocation(line: 30, column: 25, scope: !73)
!91 = !DILocation(line: 30, column: 3, scope: !73)
!92 = !DILocation(line: 33, column: 3, scope: !14)
!93 = !DILocation(line: 34, column: 1, scope: !14)
!94 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !15, file: !7, line: 37, type: !10)
!95 = !DILocation(line: 37, column: 10, scope: !15)
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !15, file: !7, line: 37, type: !18)
!97 = !DILocation(line: 37, column: 23, scope: !15)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "id1", scope: !15, file: !7, line: 39, type: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !100, line: 60, baseType: !101)
!100 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/matt/Thesis/sv-benchmarks/c/pthread")
!101 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!102 = !DILocation(line: 39, column: 13, scope: !15)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "id2", scope: !15, file: !7, line: 39, type: !99)
!104 = !DILocation(line: 39, column: 18, scope: !15)
!105 = !DILocation(line: 41, column: 3, scope: !15)
!106 = !DILocation(line: 42, column: 3, scope: !15)
!107 = !DILocation(line: 44, column: 7, scope: !108)
!108 = distinct !DILexicalBlock(scope: !15, file: !7, line: 44, column: 7)
!109 = !DILocation(line: 44, column: 9, scope: !108)
!110 = !DILocation(line: 44, column: 16, scope: !108)
!111 = !DILocation(line: 44, column: 19, scope: !112)
!112 = !DILexicalBlockFile(scope: !108, file: !7, discriminator: 2)
!113 = !DILocation(line: 44, column: 21, scope: !108)
!114 = !DILocation(line: 44, column: 7, scope: !15)
!115 = !DILocation(line: 44, column: 29, scope: !116)
!116 = !DILexicalBlockFile(scope: !117, file: !7, discriminator: 3)
!117 = !DILexicalBlockFile(scope: !108, file: !7, discriminator: 1)
!118 = !DILocation(line: 45, column: 12, scope: !119)
!119 = distinct !DILexicalBlock(scope: !108, file: !7, line: 44, column: 29)
!120 = !DILocation(line: 48, column: 3, scope: !15)
