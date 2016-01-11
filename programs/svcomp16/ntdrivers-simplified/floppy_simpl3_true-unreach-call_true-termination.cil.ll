; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@UNLOADED = common global i32 0, align 4
@NP = common global i32 0, align 4
@DC = common global i32 0, align 4
@SKIP1 = common global i32 0, align 4
@SKIP2 = common global i32 0, align 4
@MPR1 = common global i32 0, align 4
@MPR3 = common global i32 0, align 4
@IPC = common global i32 0, align 4
@s = common global i32 0, align 4
@pended = common global i32 0, align 4
@compRegistered = common global i32 0, align 4
@lowerDriverReturn = common global i32 0, align 4
@setEventCalled = common global i32 0, align 4
@customIrp = common global i32 0, align 4
@PagingReferenceCount = global i32 0, align 4
@PagingMutex = global i32 0, align 4
@myStatus = common global i32 0, align 4
@FloppyThread = common global i32 0, align 4
@KernelMode = common global i32 0, align 4
@Executive = common global i32 0, align 4
@DiskController = common global i32 0, align 4
@FloppyDiskPeripheral = common global i32 0, align 4
@MaximumInterfaceType = common global i32 0, align 4
@FlConfigCallBack = common global i32 0, align 4
@MOUNTDEV_MOUNTED_DEVICE_GUID = common global i32 0, align 4
@Suspended = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @errorFn() #0 {
  br label %1, !dbg !90

; <label>:1                                       ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !91
  unreachable, !dbg !91
                                                  ; No predecessors!
  ret void, !dbg !93
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

; Function Attrs: nounwind ssp uwtable
define void @_BLAST_init() #0 {
  store i32 0, i32* @UNLOADED, align 4, !dbg !94
  store i32 1, i32* @NP, align 4, !dbg !96
  store i32 2, i32* @DC, align 4, !dbg !97
  store i32 3, i32* @SKIP1, align 4, !dbg !98
  store i32 4, i32* @SKIP2, align 4, !dbg !99
  store i32 5, i32* @MPR1, align 4, !dbg !100
  store i32 6, i32* @MPR3, align 4, !dbg !101
  store i32 7, i32* @IPC, align 4, !dbg !102
  %1 = load i32, i32* @UNLOADED, align 4, !dbg !103
  store i32 %1, i32* @s, align 4, !dbg !104
  store i32 0, i32* @pended, align 4, !dbg !105
  store i32 0, i32* @compRegistered, align 4, !dbg !106
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !107
  store i32 0, i32* @setEventCalled, align 4, !dbg !108
  store i32 0, i32* @customIrp, align 4, !dbg !109
  ret void, !dbg !110
}

; Function Attrs: nounwind ssp uwtable
define i32 @FlAcpiConfigureFloppy(i32 %DisketteExtension, i32 %FdcInfo) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %DisketteExtension, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !111, metadata !112), !dbg !113
  store i32 %FdcInfo, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !114, metadata !112), !dbg !115
  ret i32 0, !dbg !116
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind ssp uwtable
define i32 @FlQueueIrpToThread(i32 %Irp, i32 %DisketteExtension) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %tmp_ndt_12.i = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %tmp_ndt_10.i = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %tmp_ndt_11.i = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %status = alloca i32, align 4
  %threadHandle = alloca i32, align 4
  %DisketteExtension__PoweringDown = alloca i32, align 4
  %DisketteExtension__ThreadReferenceCount = alloca i32, align 4
  %DisketteExtension__FloppyThread = alloca i32, align 4
  %Irp__IoStatus__Status = alloca i32, align 4
  %Irp__IoStatus__Information = alloca i32, align 4
  %Irp__Tail__Overlay__CurrentStackLocation__Control = alloca i32, align 4
  %ObjAttributes = alloca i32, align 4
  %__cil_tmp12 = alloca i32, align 4
  %__cil_tmp13 = alloca i32, align 4
  store i32 %Irp, i32* %19, align 4
  call void @llvm.dbg.declare(metadata i32* %19, metadata !118, metadata !112), !dbg !119
  store i32 %DisketteExtension, i32* %20, align 4
  call void @llvm.dbg.declare(metadata i32* %20, metadata !120, metadata !112), !dbg !121
  call void @llvm.dbg.declare(metadata i32* %status, metadata !122, metadata !112), !dbg !123
  call void @llvm.dbg.declare(metadata i32* %threadHandle, metadata !124, metadata !112), !dbg !125
  %21 = call i32 @__VERIFIER_nondet_int(), !dbg !126
  store i32 %21, i32* %threadHandle, align 4, !dbg !125
  call void @llvm.dbg.declare(metadata i32* %DisketteExtension__PoweringDown, metadata !127, metadata !112), !dbg !128
  %22 = call i32 @__VERIFIER_nondet_int(), !dbg !129
  store i32 %22, i32* %DisketteExtension__PoweringDown, align 4, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %DisketteExtension__ThreadReferenceCount, metadata !130, metadata !112), !dbg !131
  %23 = call i32 @__VERIFIER_nondet_int(), !dbg !132
  store i32 %23, i32* %DisketteExtension__ThreadReferenceCount, align 4, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %DisketteExtension__FloppyThread, metadata !133, metadata !112), !dbg !134
  %24 = call i32 @__VERIFIER_nondet_int(), !dbg !135
  store i32 %24, i32* %DisketteExtension__FloppyThread, align 4, !dbg !134
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !136, metadata !112), !dbg !137
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !138, metadata !112), !dbg !139
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation__Control, metadata !140, metadata !112), !dbg !141
  call void @llvm.dbg.declare(metadata i32* %ObjAttributes, metadata !142, metadata !112), !dbg !143
  %25 = call i32 @__VERIFIER_nondet_int(), !dbg !144
  store i32 %25, i32* %ObjAttributes, align 4, !dbg !143
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp12, metadata !145, metadata !112), !dbg !146
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp13, metadata !147, metadata !112), !dbg !148
  %26 = load i32, i32* %DisketteExtension__PoweringDown, align 4, !dbg !149
  %27 = icmp eq i32 %26, 1, !dbg !152
  call void @llvm.dbg.declare(metadata i32* %11, metadata !153, metadata !112), !dbg !154
  call void @llvm.dbg.declare(metadata i32* %12, metadata !159, metadata !112), !dbg !160
  call void @llvm.dbg.declare(metadata i32* %13, metadata !161, metadata !112), !dbg !162
  call void @llvm.dbg.declare(metadata i32* %14, metadata !163, metadata !112), !dbg !164
  call void @llvm.dbg.declare(metadata i32* %15, metadata !165, metadata !112), !dbg !166
  call void @llvm.dbg.declare(metadata i32* %16, metadata !167, metadata !112), !dbg !168
  call void @llvm.dbg.declare(metadata i32* %17, metadata !169, metadata !112), !dbg !170
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_11.i, metadata !171, metadata !112), !dbg !173
  call void @llvm.dbg.declare(metadata i32* %4, metadata !174, metadata !112), !dbg !175
  call void @llvm.dbg.declare(metadata i32* %5, metadata !178, metadata !112), !dbg !179
  call void @llvm.dbg.declare(metadata i32* %6, metadata !180, metadata !112), !dbg !181
  call void @llvm.dbg.declare(metadata i32* %7, metadata !182, metadata !112), !dbg !183
  call void @llvm.dbg.declare(metadata i32* %8, metadata !184, metadata !112), !dbg !185
  call void @llvm.dbg.declare(metadata i32* %9, metadata !186, metadata !112), !dbg !187
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_10.i, metadata !188, metadata !112), !dbg !190
  call void @llvm.dbg.declare(metadata i32* %2, metadata !191, metadata !112), !dbg !192
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_12.i, metadata !194, metadata !112), !dbg !196
  br i1 %27, label %28, label %29, !dbg !197

; <label>:28                                      ; preds = %0
  store i32 -1073741101, i32* @myStatus, align 4, !dbg !198
  store i32 -1073741101, i32* %Irp__IoStatus__Status, align 4, !dbg !200
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !201
  store i32 -1073741101, i32* %18, !dbg !202
  br label %131, !dbg !202

; <label>:29                                      ; preds = %0
  %30 = load i32, i32* %DisketteExtension__ThreadReferenceCount, align 4, !dbg !203
  %31 = add nsw i32 %30, 1, !dbg !203
  store i32 %31, i32* %DisketteExtension__ThreadReferenceCount, align 4, !dbg !203
  %32 = load i32, i32* %DisketteExtension__ThreadReferenceCount, align 4, !dbg !204
  %33 = icmp eq i32 %32, 0, !dbg !205
  br i1 %33, label %34, label %125, !dbg !206

; <label>:34                                      ; preds = %29
  %35 = load i32, i32* %DisketteExtension__ThreadReferenceCount, align 4, !dbg !207
  %36 = add nsw i32 %35, 1, !dbg !207
  store i32 %36, i32* %DisketteExtension__ThreadReferenceCount, align 4, !dbg !207
  %37 = load i32, i32* @PagingReferenceCount, align 4, !dbg !208
  %38 = add nsw i32 %37, 1, !dbg !208
  store i32 %38, i32* @PagingReferenceCount, align 4, !dbg !208
  %39 = load i32, i32* @PagingReferenceCount, align 4, !dbg !209
  %40 = icmp eq i32 %39, 1, !dbg !211
  br i1 %40, label %41, label %42, !dbg !212

; <label>:41                                      ; preds = %34
  br label %42, !dbg !213

; <label>:42                                      ; preds = %41, %34
  %43 = load i32, i32* %threadHandle, align 4, !dbg !215
  %44 = load i32, i32* %ObjAttributes, align 4, !dbg !216
  %45 = load i32, i32* @FloppyThread, align 4, !dbg !217
  %46 = load i32, i32* %20, align 4, !dbg !218
  %47 = bitcast i32* %10 to i8*, !dbg !219
  call void @llvm.lifetime.start(i64 4, i8* %47), !dbg !219
  %48 = bitcast i32* %11 to i8*, !dbg !219
  call void @llvm.lifetime.start(i64 4, i8* %48), !dbg !219
  %49 = bitcast i32* %12 to i8*, !dbg !219
  call void @llvm.lifetime.start(i64 4, i8* %49), !dbg !219
  %50 = bitcast i32* %13 to i8*, !dbg !219
  call void @llvm.lifetime.start(i64 4, i8* %50), !dbg !219
  %51 = bitcast i32* %14 to i8*, !dbg !219
  call void @llvm.lifetime.start(i64 4, i8* %51), !dbg !219
  %52 = bitcast i32* %15 to i8*, !dbg !219
  call void @llvm.lifetime.start(i64 4, i8* %52), !dbg !219
  %53 = bitcast i32* %16 to i8*, !dbg !219
  call void @llvm.lifetime.start(i64 4, i8* %53), !dbg !219
  %54 = bitcast i32* %17 to i8*, !dbg !219
  call void @llvm.lifetime.start(i64 4, i8* %54), !dbg !219
  %55 = bitcast i32* %tmp_ndt_11.i to i8*, !dbg !219
  call void @llvm.lifetime.start(i64 4, i8* %55), !dbg !219
  store i32 %43, i32* %11, align 4, !dbg !219
  store i32 0, i32* %12, align 4, !dbg !219
  store i32 %44, i32* %13, align 4, !dbg !219
  store i32 0, i32* %14, align 4, !dbg !219
  store i32 0, i32* %15, align 4, !dbg !219
  store i32 %45, i32* %16, align 4, !dbg !219
  store i32 %46, i32* %17, align 4, !dbg !219
  %56 = call i32 @__VERIFIER_nondet_int() #4, !dbg !220
  store i32 %56, i32* %tmp_ndt_11.i, align 4, !dbg !221
  %57 = load i32, i32* %tmp_ndt_11.i, align 4, !dbg !222
  %58 = icmp eq i32 %57, 0, !dbg !224
  br i1 %58, label %59, label %60, !dbg !225

; <label>:59                                      ; preds = %42
  store i32 0, i32* %10, !dbg !226
  br label %PsCreateSystemThread.exit, !dbg !226

; <label>:60                                      ; preds = %42
  store i32 -1073741823, i32* %10, !dbg !230
  br label %PsCreateSystemThread.exit, !dbg !230

PsCreateSystemThread.exit:                        ; preds = %59, %60
  %61 = load i32, i32* %10, !dbg !231
  %62 = bitcast i32* %10 to i8*, !dbg !231
  call void @llvm.lifetime.end(i64 4, i8* %62), !dbg !231
  %63 = bitcast i32* %11 to i8*, !dbg !231
  call void @llvm.lifetime.end(i64 4, i8* %63), !dbg !231
  %64 = bitcast i32* %12 to i8*, !dbg !231
  call void @llvm.lifetime.end(i64 4, i8* %64), !dbg !231
  %65 = bitcast i32* %13 to i8*, !dbg !231
  call void @llvm.lifetime.end(i64 4, i8* %65), !dbg !231
  %66 = bitcast i32* %14 to i8*, !dbg !231
  call void @llvm.lifetime.end(i64 4, i8* %66), !dbg !231
  %67 = bitcast i32* %15 to i8*, !dbg !231
  call void @llvm.lifetime.end(i64 4, i8* %67), !dbg !231
  %68 = bitcast i32* %16 to i8*, !dbg !231
  call void @llvm.lifetime.end(i64 4, i8* %68), !dbg !231
  %69 = bitcast i32* %17 to i8*, !dbg !231
  call void @llvm.lifetime.end(i64 4, i8* %69), !dbg !231
  %70 = bitcast i32* %tmp_ndt_11.i to i8*, !dbg !231
  call void @llvm.lifetime.end(i64 4, i8* %70), !dbg !231
  store i32 %61, i32* %status, align 4, !dbg !232
  %71 = load i32, i32* %status, align 4, !dbg !233
  %72 = icmp slt i32 %71, 0, !dbg !236
  br i1 %72, label %73, label %81, !dbg !237

; <label>:73                                      ; preds = %PsCreateSystemThread.exit
  store i32 -1, i32* %DisketteExtension__ThreadReferenceCount, align 4, !dbg !238
  %74 = load i32, i32* @PagingReferenceCount, align 4, !dbg !240
  %75 = add nsw i32 %74, -1, !dbg !240
  store i32 %75, i32* @PagingReferenceCount, align 4, !dbg !240
  %76 = load i32, i32* @PagingReferenceCount, align 4, !dbg !241
  %77 = icmp eq i32 %76, 0, !dbg !243
  br i1 %77, label %78, label %79, !dbg !244

; <label>:78                                      ; preds = %73
  br label %79, !dbg !245

; <label>:79                                      ; preds = %78, %73
  %80 = load i32, i32* %status, align 4, !dbg !247
  store i32 %80, i32* %18, !dbg !248
  br label %131, !dbg !248

; <label>:81                                      ; preds = %PsCreateSystemThread.exit
  %82 = load i32, i32* %threadHandle, align 4, !dbg !249
  %83 = load i32, i32* @KernelMode, align 4, !dbg !250
  %84 = load i32, i32* %DisketteExtension__FloppyThread, align 4, !dbg !251
  %85 = bitcast i32* %3 to i8*, !dbg !252
  call void @llvm.lifetime.start(i64 4, i8* %85), !dbg !252
  %86 = bitcast i32* %4 to i8*, !dbg !252
  call void @llvm.lifetime.start(i64 4, i8* %86), !dbg !252
  %87 = bitcast i32* %5 to i8*, !dbg !252
  call void @llvm.lifetime.start(i64 4, i8* %87), !dbg !252
  %88 = bitcast i32* %6 to i8*, !dbg !252
  call void @llvm.lifetime.start(i64 4, i8* %88), !dbg !252
  %89 = bitcast i32* %7 to i8*, !dbg !252
  call void @llvm.lifetime.start(i64 4, i8* %89), !dbg !252
  %90 = bitcast i32* %8 to i8*, !dbg !252
  call void @llvm.lifetime.start(i64 4, i8* %90), !dbg !252
  %91 = bitcast i32* %9 to i8*, !dbg !252
  call void @llvm.lifetime.start(i64 4, i8* %91), !dbg !252
  %92 = bitcast i32* %tmp_ndt_10.i to i8*, !dbg !252
  call void @llvm.lifetime.start(i64 4, i8* %92), !dbg !252
  store i32 %82, i32* %4, align 4, !dbg !252
  store i32 1048576, i32* %5, align 4, !dbg !252
  store i32 0, i32* %6, align 4, !dbg !252
  store i32 %83, i32* %7, align 4, !dbg !252
  store i32 %84, i32* %8, align 4, !dbg !252
  store i32 0, i32* %9, align 4, !dbg !252
  %93 = call i32 @__VERIFIER_nondet_int() #4, !dbg !253
  store i32 %93, i32* %tmp_ndt_10.i, align 4, !dbg !254
  %94 = load i32, i32* %tmp_ndt_10.i, align 4, !dbg !255
  %95 = icmp eq i32 %94, 0, !dbg !257
  br i1 %95, label %96, label %97, !dbg !258

; <label>:96                                      ; preds = %81
  store i32 0, i32* %3, !dbg !259
  br label %ObReferenceObjectByHandle.exit, !dbg !259

; <label>:97                                      ; preds = %81
  store i32 -1073741823, i32* %3, !dbg !263
  br label %ObReferenceObjectByHandle.exit, !dbg !263

ObReferenceObjectByHandle.exit:                   ; preds = %96, %97
  %98 = load i32, i32* %3, !dbg !264
  %99 = bitcast i32* %3 to i8*, !dbg !264
  call void @llvm.lifetime.end(i64 4, i8* %99), !dbg !264
  %100 = bitcast i32* %4 to i8*, !dbg !264
  call void @llvm.lifetime.end(i64 4, i8* %100), !dbg !264
  %101 = bitcast i32* %5 to i8*, !dbg !264
  call void @llvm.lifetime.end(i64 4, i8* %101), !dbg !264
  %102 = bitcast i32* %6 to i8*, !dbg !264
  call void @llvm.lifetime.end(i64 4, i8* %102), !dbg !264
  %103 = bitcast i32* %7 to i8*, !dbg !264
  call void @llvm.lifetime.end(i64 4, i8* %103), !dbg !264
  %104 = bitcast i32* %8 to i8*, !dbg !264
  call void @llvm.lifetime.end(i64 4, i8* %104), !dbg !264
  %105 = bitcast i32* %9 to i8*, !dbg !264
  call void @llvm.lifetime.end(i64 4, i8* %105), !dbg !264
  %106 = bitcast i32* %tmp_ndt_10.i to i8*, !dbg !264
  call void @llvm.lifetime.end(i64 4, i8* %106), !dbg !264
  store i32 %98, i32* %status, align 4, !dbg !265
  %107 = load i32, i32* %threadHandle, align 4, !dbg !266
  %108 = bitcast i32* %1 to i8*, !dbg !267
  call void @llvm.lifetime.start(i64 4, i8* %108), !dbg !267
  %109 = bitcast i32* %2 to i8*, !dbg !267
  call void @llvm.lifetime.start(i64 4, i8* %109), !dbg !267
  %110 = bitcast i32* %tmp_ndt_12.i to i8*, !dbg !267
  call void @llvm.lifetime.start(i64 4, i8* %110), !dbg !267
  store i32 %107, i32* %2, align 4, !dbg !267
  %111 = call i32 @__VERIFIER_nondet_int() #4, !dbg !268
  store i32 %111, i32* %tmp_ndt_12.i, align 4, !dbg !269
  %112 = load i32, i32* %tmp_ndt_12.i, align 4, !dbg !270
  %113 = icmp eq i32 %112, 0, !dbg !272
  br i1 %113, label %114, label %115, !dbg !273

; <label>:114                                     ; preds = %ObReferenceObjectByHandle.exit
  store i32 0, i32* %1, !dbg !274
  br label %ZwClose.exit, !dbg !274

; <label>:115                                     ; preds = %ObReferenceObjectByHandle.exit
  store i32 -1073741823, i32* %1, !dbg !278
  br label %ZwClose.exit, !dbg !278

ZwClose.exit:                                     ; preds = %114, %115
  %116 = load i32, i32* %1, !dbg !279
  %117 = bitcast i32* %1 to i8*, !dbg !279
  call void @llvm.lifetime.end(i64 4, i8* %117), !dbg !279
  %118 = bitcast i32* %2 to i8*, !dbg !279
  call void @llvm.lifetime.end(i64 4, i8* %118), !dbg !279
  %119 = bitcast i32* %tmp_ndt_12.i to i8*, !dbg !279
  call void @llvm.lifetime.end(i64 4, i8* %119), !dbg !279
  %120 = load i32, i32* %status, align 4, !dbg !280
  %121 = icmp slt i32 %120, 0, !dbg !283
  br i1 %121, label %122, label %124, !dbg !284

; <label>:122                                     ; preds = %ZwClose.exit
  %123 = load i32, i32* %status, align 4, !dbg !285
  store i32 %123, i32* %18, !dbg !287
  br label %131, !dbg !287

; <label>:124                                     ; preds = %ZwClose.exit
  br label %125, !dbg !288

; <label>:125                                     ; preds = %124, %29
  %126 = load i32, i32* @pended, align 4, !dbg !289
  %127 = icmp eq i32 %126, 0, !dbg !291
  br i1 %127, label %128, label %129, !dbg !292

; <label>:128                                     ; preds = %125
  store i32 1, i32* @pended, align 4, !dbg !293
  br label %130, !dbg !295

; <label>:129                                     ; preds = %125
  call void (...) @__VERIFIER_error() #6, !dbg !296
  unreachable, !dbg !296

errorFn.exit:                                     ; No predecessors!
  br label %130

; <label>:130                                     ; preds = %errorFn.exit, %128
  store i32 259, i32* %18, !dbg !300
  br label %131, !dbg !300

; <label>:131                                     ; preds = %130, %122, %79, %28
  %132 = load i32, i32* %18, !dbg !301
  ret i32 %132, !dbg !301
}

declare i32 @__VERIFIER_nondet_int() #3

; Function Attrs: nounwind ssp uwtable
define i32 @FloppyPnp(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %tmp_ndt_3.i = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %tmp_ndt_6.i = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %DeviceObject__DeviceExtension = alloca i32, align 4
  %Irp__Tail__Overlay__CurrentStackLocation = alloca i32, align 4
  %Irp__IoStatus__Information = alloca i32, align 4
  %Irp__IoStatus__Status = alloca i32, align 4
  %Irp__CurrentLocation = alloca i32, align 4
  %disketteExtension__IsRemoved = alloca i32, align 4
  %disketteExtension__IsStarted = alloca i32, align 4
  %disketteExtension__TargetObject = alloca i32, align 4
  %disketteExtension__HoldNewRequests = alloca i32, align 4
  %disketteExtension__FloppyThread = alloca i32, align 4
  %disketteExtension__InterfaceString__Buffer = alloca i32, align 4
  %disketteExtension__InterfaceString = alloca i32, align 4
  %disketteExtension__ArcName__Length = alloca i32, align 4
  %disketteExtension__ArcName = alloca i32, align 4
  %irpSp__MinorFunction = alloca i32, align 4
  %IoGetConfigurationInformation__FloppyCount = alloca i32, align 4
  %irpSp = alloca i32, align 4
  %disketteExtension = alloca i32, align 4
  %ntStatus = alloca i32, align 4
  %doneEvent = alloca i32, align 4
  %irpSp___0 = alloca i32, align 4
  %nextIrpSp = alloca i32, align 4
  %nextIrpSp__Control = alloca i32, align 4
  %irpSp___1 = alloca i32, align 4
  %irpSp__Context = alloca i32, align 4
  %irpSp__Control = alloca i32, align 4
  %__cil_tmp29 = alloca i64, align 8
  %__cil_tmp30 = alloca i64, align 8
  store i32 %DeviceObject, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !302, metadata !112), !dbg !303
  store i32 %Irp, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !304, metadata !112), !dbg !305
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !306, metadata !112), !dbg !307
  %15 = call i32 @__VERIFIER_nondet_int(), !dbg !308
  store i32 %15, i32* %DeviceObject__DeviceExtension, align 4, !dbg !307
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !309, metadata !112), !dbg !310
  %16 = call i32 @__VERIFIER_nondet_int(), !dbg !311
  store i32 %16, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !310
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !312, metadata !112), !dbg !313
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !314, metadata !112), !dbg !315
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !316, metadata !112), !dbg !317
  %17 = call i32 @__VERIFIER_nondet_int(), !dbg !318
  store i32 %17, i32* %Irp__CurrentLocation, align 4, !dbg !317
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__IsRemoved, metadata !319, metadata !112), !dbg !320
  %18 = call i32 @__VERIFIER_nondet_int(), !dbg !321
  store i32 %18, i32* %disketteExtension__IsRemoved, align 4, !dbg !320
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__IsStarted, metadata !322, metadata !112), !dbg !323
  %19 = call i32 @__VERIFIER_nondet_int(), !dbg !324
  store i32 %19, i32* %disketteExtension__IsStarted, align 4, !dbg !323
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__TargetObject, metadata !325, metadata !112), !dbg !326
  %20 = call i32 @__VERIFIER_nondet_int(), !dbg !327
  store i32 %20, i32* %disketteExtension__TargetObject, align 4, !dbg !326
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__HoldNewRequests, metadata !328, metadata !112), !dbg !329
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__FloppyThread, metadata !330, metadata !112), !dbg !331
  %21 = call i32 @__VERIFIER_nondet_int(), !dbg !332
  store i32 %21, i32* %disketteExtension__FloppyThread, align 4, !dbg !331
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__InterfaceString__Buffer, metadata !333, metadata !112), !dbg !334
  %22 = call i32 @__VERIFIER_nondet_int(), !dbg !335
  store i32 %22, i32* %disketteExtension__InterfaceString__Buffer, align 4, !dbg !334
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__InterfaceString, metadata !336, metadata !112), !dbg !337
  %23 = call i32 @__VERIFIER_nondet_int(), !dbg !338
  store i32 %23, i32* %disketteExtension__InterfaceString, align 4, !dbg !337
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__ArcName__Length, metadata !339, metadata !112), !dbg !340
  %24 = call i32 @__VERIFIER_nondet_int(), !dbg !341
  store i32 %24, i32* %disketteExtension__ArcName__Length, align 4, !dbg !340
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__ArcName, metadata !342, metadata !112), !dbg !343
  %25 = call i32 @__VERIFIER_nondet_int(), !dbg !344
  store i32 %25, i32* %disketteExtension__ArcName, align 4, !dbg !343
  call void @llvm.dbg.declare(metadata i32* %irpSp__MinorFunction, metadata !345, metadata !112), !dbg !346
  %26 = call i32 @__VERIFIER_nondet_int(), !dbg !347
  store i32 %26, i32* %irpSp__MinorFunction, align 4, !dbg !346
  call void @llvm.dbg.declare(metadata i32* %IoGetConfigurationInformation__FloppyCount, metadata !348, metadata !112), !dbg !349
  %27 = call i32 @__VERIFIER_nondet_int(), !dbg !350
  store i32 %27, i32* %IoGetConfigurationInformation__FloppyCount, align 4, !dbg !349
  call void @llvm.dbg.declare(metadata i32* %irpSp, metadata !351, metadata !112), !dbg !352
  call void @llvm.dbg.declare(metadata i32* %disketteExtension, metadata !353, metadata !112), !dbg !354
  call void @llvm.dbg.declare(metadata i32* %ntStatus, metadata !355, metadata !112), !dbg !356
  call void @llvm.dbg.declare(metadata i32* %doneEvent, metadata !357, metadata !112), !dbg !358
  %28 = call i32 @__VERIFIER_nondet_int(), !dbg !359
  store i32 %28, i32* %doneEvent, align 4, !dbg !358
  call void @llvm.dbg.declare(metadata i32* %irpSp___0, metadata !360, metadata !112), !dbg !361
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp, metadata !362, metadata !112), !dbg !363
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp__Control, metadata !364, metadata !112), !dbg !365
  call void @llvm.dbg.declare(metadata i32* %irpSp___1, metadata !366, metadata !112), !dbg !367
  call void @llvm.dbg.declare(metadata i32* %irpSp__Context, metadata !368, metadata !112), !dbg !369
  call void @llvm.dbg.declare(metadata i32* %irpSp__Control, metadata !370, metadata !112), !dbg !371
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp29, metadata !372, metadata !112), !dbg !373
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp30, metadata !374, metadata !112), !dbg !375
  store i32 0, i32* %ntStatus, align 4, !dbg !376
  %29 = load i32, i32* @PagingReferenceCount, align 4, !dbg !378
  %30 = add nsw i32 %29, 1, !dbg !378
  store i32 %30, i32* @PagingReferenceCount, align 4, !dbg !378
  %31 = load i32, i32* @PagingReferenceCount, align 4, !dbg !379
  %32 = icmp eq i32 %31, 1, !dbg !381
  call void @llvm.dbg.declare(metadata i32* %10, metadata !382, metadata !112), !dbg !383
  call void @llvm.dbg.declare(metadata i32* %11, metadata !388, metadata !112), !dbg !389
  call void @llvm.dbg.declare(metadata i32* %8, metadata !382, metadata !112), !dbg !390
  call void @llvm.dbg.declare(metadata i32* %9, metadata !388, metadata !112), !dbg !412
  call void @llvm.dbg.declare(metadata i32* %6, metadata !382, metadata !112), !dbg !413
  call void @llvm.dbg.declare(metadata i32* %7, metadata !388, metadata !112), !dbg !418
  call void @llvm.dbg.declare(metadata i32* %4, metadata !419, metadata !112), !dbg !420
  call void @llvm.dbg.declare(metadata i32* %5, metadata !425, metadata !112), !dbg !426
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_6.i, metadata !427, metadata !112), !dbg !429
  call void @llvm.dbg.declare(metadata i32* %2, metadata !430, metadata !112), !dbg !431
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_3.i, metadata !436, metadata !112), !dbg !438
  br i1 %32, label %33, label %34, !dbg !439

; <label>:33                                      ; preds = %0
  br label %34, !dbg !440

; <label>:34                                      ; preds = %33, %0
  %35 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !442
  store i32 %35, i32* %disketteExtension, align 4, !dbg !443
  %36 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !444
  store i32 %36, i32* %irpSp, align 4, !dbg !445
  %37 = load i32, i32* %disketteExtension__IsRemoved, align 4, !dbg !446
  %38 = icmp ne i32 %37, 0, !dbg !446
  br i1 %38, label %39, label %50, !dbg !447

; <label>:39                                      ; preds = %34
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !448
  store i32 -1073741738, i32* %Irp__IoStatus__Status, align 4, !dbg !449
  store i32 -1073741738, i32* @myStatus, align 4, !dbg !450
  %40 = load i32, i32* %14, align 4, !dbg !451
  %41 = bitcast i32* %10 to i8*, !dbg !452
  call void @llvm.lifetime.start(i64 4, i8* %41), !dbg !452
  %42 = bitcast i32* %11 to i8*, !dbg !452
  call void @llvm.lifetime.start(i64 4, i8* %42), !dbg !452
  store i32 %40, i32* %10, align 4, !dbg !452
  store i32 0, i32* %11, align 4, !dbg !452
  %43 = load i32, i32* @s, align 4, !dbg !453
  %44 = load i32, i32* @NP, align 4, !dbg !456
  %45 = icmp eq i32 %43, %44, !dbg !457
  br i1 %45, label %IofCompleteRequest.exit, label %46, !dbg !458

; <label>:46                                      ; preds = %39
  call void (...) @__VERIFIER_error() #6, !dbg !459
  unreachable, !dbg !459

IofCompleteRequest.exit:                          ; preds = %39
  %47 = load i32, i32* @DC, align 4, !dbg !463
  store i32 %47, i32* @s, align 4, !dbg !465
  %48 = bitcast i32* %10 to i8*, !dbg !466
  call void @llvm.lifetime.end(i64 4, i8* %48), !dbg !466
  %49 = bitcast i32* %11 to i8*, !dbg !466
  call void @llvm.lifetime.end(i64 4, i8* %49), !dbg !466
  store i32 -1073741738, i32* %12, !dbg !467
  br label %320, !dbg !467

; <label>:50                                      ; preds = %34
  %51 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !468
  %52 = icmp eq i32 %51, 0, !dbg !469
  br i1 %52, label %53, label %54, !dbg !470

; <label>:53                                      ; preds = %50
  br label %81, !dbg !471

; <label>:54                                      ; preds = %50
  %55 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !473
  %56 = icmp eq i32 %55, 5, !dbg !474
  br i1 %56, label %57, label %58, !dbg !475

; <label>:57                                      ; preds = %54
  br label %85, !dbg !476

; <label>:58                                      ; preds = %54
  %59 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !478
  %60 = icmp eq i32 %59, 1, !dbg !479
  br i1 %60, label %61, label %62, !dbg !480

; <label>:61                                      ; preds = %58
  br label %85, !dbg !481

; <label>:62                                      ; preds = %58
  %63 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !483
  %64 = icmp eq i32 %63, 6, !dbg !484
  br i1 %64, label %65, label %66, !dbg !485

; <label>:65                                      ; preds = %62
  br label %153, !dbg !486

; <label>:66                                      ; preds = %62
  %67 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !488
  %68 = icmp eq i32 %67, 3, !dbg !489
  br i1 %68, label %69, label %70, !dbg !490

; <label>:69                                      ; preds = %66
  br label %153, !dbg !491

; <label>:70                                      ; preds = %66
  %71 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !493
  %72 = icmp eq i32 %71, 4, !dbg !494
  br i1 %72, label %73, label %74, !dbg !495

; <label>:73                                      ; preds = %70
  br label %220, !dbg !496

; <label>:74                                      ; preds = %70
  %75 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !498
  %76 = icmp eq i32 %75, 2, !dbg !499
  br i1 %76, label %77, label %78, !dbg !500

; <label>:77                                      ; preds = %74
  br label %235, !dbg !501

; <label>:78                                      ; preds = %74
  br label %288, !dbg !503
                                                  ; No predecessors!
  br i1 false, label %80, label %303, !dbg !504

; <label>:80                                      ; preds = %79
  br label %81, !dbg !505

; <label>:81                                      ; preds = %80, %53
  %82 = load i32, i32* %13, align 4, !dbg !506
  %83 = load i32, i32* %14, align 4, !dbg !508
  %84 = call i32 @FloppyStartDevice(i32 %82, i32 %83), !dbg !509
  store i32 %84, i32* %ntStatus, align 4, !dbg !510
  br label %304, !dbg !511

; <label>:85                                      ; preds = %61, %57
  %86 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !512
  %87 = icmp eq i32 %86, 5, !dbg !514
  br i1 %87, label %88, label %89, !dbg !515

; <label>:88                                      ; preds = %85
  br label %89, !dbg !516

; <label>:89                                      ; preds = %88, %85
  %90 = load i32, i32* %disketteExtension__IsStarted, align 4, !dbg !518
  %91 = icmp ne i32 %90, 0, !dbg !518
  br i1 %91, label %108, label %92, !dbg !520

; <label>:92                                      ; preds = %89
  %93 = load i32, i32* @s, align 4, !dbg !521
  %94 = load i32, i32* @NP, align 4, !dbg !524
  %95 = icmp eq i32 %93, %94, !dbg !525
  br i1 %95, label %96, label %98, !dbg !526

; <label>:96                                      ; preds = %92
  %97 = load i32, i32* @SKIP1, align 4, !dbg !527
  store i32 %97, i32* @s, align 4, !dbg !529
  br label %99, !dbg !530

; <label>:98                                      ; preds = %92
  call void (...) @__VERIFIER_error() #6, !dbg !531
  unreachable, !dbg !531

errorFn.exit:                                     ; No predecessors!
  br label %99

; <label>:99                                      ; preds = %errorFn.exit, %96
  %100 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !535
  %101 = add nsw i32 %100, 1, !dbg !535
  store i32 %101, i32* %Irp__CurrentLocation, align 4, !dbg !535
  %102 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !537
  %103 = add nsw i32 %102, 1, !dbg !537
  store i32 %103, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !537
  %104 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !538
  %105 = load i32, i32* %14, align 4, !dbg !539
  %106 = call i32 @IofCallDriver(i32 %104, i32 %105), !dbg !540
  store i32 %106, i32* %ntStatus, align 4, !dbg !541
  %107 = load i32, i32* %ntStatus, align 4, !dbg !542
  store i32 %107, i32* %12, !dbg !543
  br label %320, !dbg !543

; <label>:108                                     ; preds = %89
  store i32 1, i32* %disketteExtension__HoldNewRequests, align 4, !dbg !544
  %109 = load i32, i32* %14, align 4, !dbg !546
  %110 = load i32, i32* %disketteExtension, align 4, !dbg !547
  %111 = call i32 @FlQueueIrpToThread(i32 %109, i32 %110), !dbg !548
  store i32 %111, i32* %ntStatus, align 4, !dbg !549
  %112 = load i32, i32* %ntStatus, align 4, !dbg !550
  %113 = sext i32 %112 to i64, !dbg !551
  store i64 %113, i64* %__cil_tmp29, align 8, !dbg !552
  %114 = load i64, i64* %__cil_tmp29, align 8, !dbg !553
  %115 = icmp eq i64 %114, 259, !dbg !554
  br i1 %115, label %116, label %139, !dbg !555

; <label>:116                                     ; preds = %108
  %117 = load i32, i32* %disketteExtension__FloppyThread, align 4, !dbg !556
  %118 = load i32, i32* @Executive, align 4, !dbg !559
  %119 = load i32, i32* @KernelMode, align 4, !dbg !560
  %120 = call i32 @KeWaitForSingleObject(i32 %117, i32 %118, i32 %119, i32 0, i32 0), !dbg !561
  %121 = load i32, i32* %disketteExtension__FloppyThread, align 4, !dbg !562
  %122 = icmp ne i32 %121, 0, !dbg !564
  br i1 %122, label %123, label %124, !dbg !565

; <label>:123                                     ; preds = %116
  br label %124, !dbg !566

; <label>:124                                     ; preds = %123, %116
  store i32 0, i32* %disketteExtension__FloppyThread, align 4, !dbg !568
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !569
  store i32 0, i32* @myStatus, align 4, !dbg !570
  %125 = load i32, i32* @s, align 4, !dbg !571
  %126 = load i32, i32* @NP, align 4, !dbg !573
  %127 = icmp eq i32 %125, %126, !dbg !574
  br i1 %127, label %128, label %130, !dbg !575

; <label>:128                                     ; preds = %124
  %129 = load i32, i32* @SKIP1, align 4, !dbg !576
  store i32 %129, i32* @s, align 4, !dbg !578
  br label %131, !dbg !579

; <label>:130                                     ; preds = %124
  call void (...) @__VERIFIER_error() #6, !dbg !580
  unreachable, !dbg !580

errorFn.exit1:                                    ; No predecessors!
  br label %131

; <label>:131                                     ; preds = %errorFn.exit1, %128
  %132 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !584
  %133 = add nsw i32 %132, 1, !dbg !584
  store i32 %133, i32* %Irp__CurrentLocation, align 4, !dbg !584
  %134 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !586
  %135 = add nsw i32 %134, 1, !dbg !586
  store i32 %135, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !586
  %136 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !587
  %137 = load i32, i32* %14, align 4, !dbg !588
  %138 = call i32 @IofCallDriver(i32 %136, i32 %137), !dbg !589
  store i32 %138, i32* %ntStatus, align 4, !dbg !590
  br label %152, !dbg !591

; <label>:139                                     ; preds = %108
  store i32 -1073741823, i32* %ntStatus, align 4, !dbg !592
  %140 = load i32, i32* %ntStatus, align 4, !dbg !593
  store i32 %140, i32* %Irp__IoStatus__Status, align 4, !dbg !594
  %141 = load i32, i32* %ntStatus, align 4, !dbg !595
  store i32 %141, i32* @myStatus, align 4, !dbg !596
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !597
  %142 = load i32, i32* %14, align 4, !dbg !598
  %143 = bitcast i32* %8 to i8*, !dbg !599
  call void @llvm.lifetime.start(i64 4, i8* %143), !dbg !599
  %144 = bitcast i32* %9 to i8*, !dbg !599
  call void @llvm.lifetime.start(i64 4, i8* %144), !dbg !599
  store i32 %142, i32* %8, align 4, !dbg !599
  store i32 0, i32* %9, align 4, !dbg !599
  %145 = load i32, i32* @s, align 4, !dbg !600
  %146 = load i32, i32* @NP, align 4, !dbg !601
  %147 = icmp eq i32 %145, %146, !dbg !602
  br i1 %147, label %IofCompleteRequest.exit2, label %148, !dbg !603

; <label>:148                                     ; preds = %139
  call void (...) @__VERIFIER_error() #6, !dbg !604
  unreachable, !dbg !604

IofCompleteRequest.exit2:                         ; preds = %139
  %149 = load i32, i32* @DC, align 4, !dbg !606
  store i32 %149, i32* @s, align 4, !dbg !607
  %150 = bitcast i32* %8 to i8*, !dbg !608
  call void @llvm.lifetime.end(i64 4, i8* %150), !dbg !608
  %151 = bitcast i32* %9 to i8*, !dbg !608
  call void @llvm.lifetime.end(i64 4, i8* %151), !dbg !608
  br label %152

; <label>:152                                     ; preds = %IofCompleteRequest.exit2, %131
  br label %304, !dbg !609

; <label>:153                                     ; preds = %69, %65
  %154 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !610
  %155 = icmp eq i32 %154, 6, !dbg !612
  br i1 %155, label %156, label %157, !dbg !613

; <label>:156                                     ; preds = %153
  br label %157, !dbg !614

; <label>:157                                     ; preds = %156, %153
  %158 = load i32, i32* %disketteExtension__IsStarted, align 4, !dbg !616
  %159 = icmp ne i32 %158, 0, !dbg !616
  br i1 %159, label %175, label %160, !dbg !617

; <label>:160                                     ; preds = %157
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !618
  store i32 0, i32* @myStatus, align 4, !dbg !620
  %161 = load i32, i32* @s, align 4, !dbg !621
  %162 = load i32, i32* @NP, align 4, !dbg !623
  %163 = icmp eq i32 %161, %162, !dbg !624
  br i1 %163, label %164, label %166, !dbg !625

; <label>:164                                     ; preds = %160
  %165 = load i32, i32* @SKIP1, align 4, !dbg !626
  store i32 %165, i32* @s, align 4, !dbg !628
  br label %167, !dbg !629

; <label>:166                                     ; preds = %160
  call void (...) @__VERIFIER_error() #6, !dbg !630
  unreachable, !dbg !630

errorFn.exit3:                                    ; No predecessors!
  br label %167

; <label>:167                                     ; preds = %errorFn.exit3, %164
  %168 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !634
  %169 = add nsw i32 %168, 1, !dbg !634
  store i32 %169, i32* %Irp__CurrentLocation, align 4, !dbg !634
  %170 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !636
  %171 = add nsw i32 %170, 1, !dbg !636
  store i32 %171, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !636
  %172 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !637
  %173 = load i32, i32* %14, align 4, !dbg !638
  %174 = call i32 @IofCallDriver(i32 %172, i32 %173), !dbg !639
  store i32 %174, i32* %ntStatus, align 4, !dbg !640
  br label %219, !dbg !641

; <label>:175                                     ; preds = %157
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !642
  store i32 0, i32* @myStatus, align 4, !dbg !643
  %176 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !644
  store i32 %176, i32* %irpSp___0, align 4, !dbg !645
  %177 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !646
  %178 = sub nsw i32 %177, 1, !dbg !647
  store i32 %178, i32* %nextIrpSp, align 4, !dbg !648
  store i32 0, i32* %nextIrpSp__Control, align 4, !dbg !649
  %179 = load i32, i32* @s, align 4, !dbg !650
  %180 = load i32, i32* @NP, align 4, !dbg !652
  %181 = icmp ne i32 %179, %180, !dbg !653
  br i1 %181, label %182, label %183, !dbg !654

; <label>:182                                     ; preds = %175
  call void (...) @__VERIFIER_error() #6, !dbg !655
  unreachable, !dbg !655

errorFn.exit4:                                    ; No predecessors!
  br label %189, !dbg !659

; <label>:183                                     ; preds = %175
  %184 = load i32, i32* @compRegistered, align 4, !dbg !660
  %185 = icmp ne i32 %184, 0, !dbg !663
  br i1 %185, label %186, label %187, !dbg !664

; <label>:186                                     ; preds = %183
  call void (...) @__VERIFIER_error() #6, !dbg !665
  unreachable, !dbg !665

errorFn.exit5:                                    ; No predecessors!
  br label %188, !dbg !669

; <label>:187                                     ; preds = %183
  store i32 1, i32* @compRegistered, align 4, !dbg !670
  br label %188

; <label>:188                                     ; preds = %187, %errorFn.exit5
  br label %189

; <label>:189                                     ; preds = %188, %errorFn.exit4
  %190 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !672
  %191 = sub nsw i32 %190, 1, !dbg !674
  store i32 %191, i32* %irpSp___1, align 4, !dbg !675
  %192 = load i32, i32* %doneEvent, align 4, !dbg !676
  store i32 %192, i32* %irpSp__Context, align 4, !dbg !677
  store i32 224, i32* %irpSp__Control, align 4, !dbg !678
  %193 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !679
  %194 = load i32, i32* %14, align 4, !dbg !680
  %195 = call i32 @IofCallDriver(i32 %193, i32 %194), !dbg !681
  store i32 %195, i32* %ntStatus, align 4, !dbg !682
  %196 = load i32, i32* %ntStatus, align 4, !dbg !683
  %197 = sext i32 %196 to i64, !dbg !685
  store i64 %197, i64* %__cil_tmp30, align 8, !dbg !686
  %198 = load i64, i64* %__cil_tmp30, align 8, !dbg !687
  %199 = icmp eq i64 %198, 259, !dbg !689
  br i1 %199, label %200, label %206, !dbg !690

; <label>:200                                     ; preds = %189
  %201 = load i32, i32* %doneEvent, align 4, !dbg !691
  %202 = load i32, i32* @Executive, align 4, !dbg !694
  %203 = load i32, i32* @KernelMode, align 4, !dbg !695
  %204 = call i32 @KeWaitForSingleObject(i32 %201, i32 %202, i32 %203, i32 0, i32 0), !dbg !696
  %205 = load i32, i32* @myStatus, align 4, !dbg !697
  store i32 %205, i32* %ntStatus, align 4, !dbg !698
  br label %206, !dbg !699

; <label>:206                                     ; preds = %200, %189
  store i32 0, i32* %disketteExtension__HoldNewRequests, align 4, !dbg !700
  %207 = load i32, i32* %ntStatus, align 4, !dbg !701
  store i32 %207, i32* %Irp__IoStatus__Status, align 4, !dbg !702
  %208 = load i32, i32* %ntStatus, align 4, !dbg !703
  store i32 %208, i32* @myStatus, align 4, !dbg !704
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !705
  %209 = load i32, i32* %14, align 4, !dbg !706
  %210 = bitcast i32* %6 to i8*, !dbg !707
  call void @llvm.lifetime.start(i64 4, i8* %210), !dbg !707
  %211 = bitcast i32* %7 to i8*, !dbg !707
  call void @llvm.lifetime.start(i64 4, i8* %211), !dbg !707
  store i32 %209, i32* %6, align 4, !dbg !707
  store i32 0, i32* %7, align 4, !dbg !707
  %212 = load i32, i32* @s, align 4, !dbg !708
  %213 = load i32, i32* @NP, align 4, !dbg !709
  %214 = icmp eq i32 %212, %213, !dbg !710
  br i1 %214, label %IofCompleteRequest.exit6, label %215, !dbg !711

; <label>:215                                     ; preds = %206
  call void (...) @__VERIFIER_error() #6, !dbg !712
  unreachable, !dbg !712

IofCompleteRequest.exit6:                         ; preds = %206
  %216 = load i32, i32* @DC, align 4, !dbg !714
  store i32 %216, i32* @s, align 4, !dbg !715
  %217 = bitcast i32* %6 to i8*, !dbg !716
  call void @llvm.lifetime.end(i64 4, i8* %217), !dbg !716
  %218 = bitcast i32* %7 to i8*, !dbg !716
  call void @llvm.lifetime.end(i64 4, i8* %218), !dbg !716
  br label %219

; <label>:219                                     ; preds = %IofCompleteRequest.exit6, %167
  br label %304, !dbg !717

; <label>:220                                     ; preds = %73
  store i32 0, i32* %disketteExtension__IsStarted, align 4, !dbg !718
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !719
  store i32 0, i32* @myStatus, align 4, !dbg !720
  %221 = load i32, i32* @s, align 4, !dbg !721
  %222 = load i32, i32* @NP, align 4, !dbg !723
  %223 = icmp eq i32 %221, %222, !dbg !724
  br i1 %223, label %224, label %226, !dbg !725

; <label>:224                                     ; preds = %220
  %225 = load i32, i32* @SKIP1, align 4, !dbg !726
  store i32 %225, i32* @s, align 4, !dbg !728
  br label %227, !dbg !729

; <label>:226                                     ; preds = %220
  call void (...) @__VERIFIER_error() #6, !dbg !730
  unreachable, !dbg !730

errorFn.exit7:                                    ; No predecessors!
  br label %227

; <label>:227                                     ; preds = %errorFn.exit7, %224
  %228 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !734
  %229 = add nsw i32 %228, 1, !dbg !734
  store i32 %229, i32* %Irp__CurrentLocation, align 4, !dbg !734
  %230 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !736
  %231 = add nsw i32 %230, 1, !dbg !736
  store i32 %231, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !736
  %232 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !737
  %233 = load i32, i32* %14, align 4, !dbg !738
  %234 = call i32 @IofCallDriver(i32 %232, i32 %233), !dbg !739
  store i32 %234, i32* %ntStatus, align 4, !dbg !740
  br label %304, !dbg !741

; <label>:235                                     ; preds = %77
  store i32 0, i32* %disketteExtension__HoldNewRequests, align 4, !dbg !742
  store i32 0, i32* %disketteExtension__IsStarted, align 4, !dbg !743
  store i32 1, i32* %disketteExtension__IsRemoved, align 4, !dbg !744
  %236 = load i32, i32* @s, align 4, !dbg !745
  %237 = load i32, i32* @NP, align 4, !dbg !747
  %238 = icmp eq i32 %236, %237, !dbg !748
  br i1 %238, label %239, label %241, !dbg !749

; <label>:239                                     ; preds = %235
  %240 = load i32, i32* @SKIP1, align 4, !dbg !750
  store i32 %240, i32* @s, align 4, !dbg !752
  br label %242, !dbg !753

; <label>:241                                     ; preds = %235
  call void (...) @__VERIFIER_error() #6, !dbg !754
  unreachable, !dbg !754

errorFn.exit8:                                    ; No predecessors!
  br label %242

; <label>:242                                     ; preds = %errorFn.exit8, %239
  %243 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !758
  %244 = add nsw i32 %243, 1, !dbg !758
  store i32 %244, i32* %Irp__CurrentLocation, align 4, !dbg !758
  %245 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !760
  %246 = add nsw i32 %245, 1, !dbg !760
  store i32 %246, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !760
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !761
  store i32 0, i32* @myStatus, align 4, !dbg !762
  %247 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !763
  %248 = load i32, i32* %14, align 4, !dbg !764
  %249 = call i32 @IofCallDriver(i32 %247, i32 %248), !dbg !765
  store i32 %249, i32* %ntStatus, align 4, !dbg !766
  %250 = load i32, i32* %disketteExtension__InterfaceString__Buffer, align 4, !dbg !767
  %251 = icmp ne i32 %250, 0, !dbg !768
  br i1 %251, label %252, label %268, !dbg !769

; <label>:252                                     ; preds = %242
  %253 = load i32, i32* %disketteExtension__InterfaceString, align 4, !dbg !770
  %254 = bitcast i32* %3 to i8*, !dbg !771
  call void @llvm.lifetime.start(i64 4, i8* %254), !dbg !771
  %255 = bitcast i32* %4 to i8*, !dbg !771
  call void @llvm.lifetime.start(i64 4, i8* %255), !dbg !771
  %256 = bitcast i32* %5 to i8*, !dbg !771
  call void @llvm.lifetime.start(i64 4, i8* %256), !dbg !771
  %257 = bitcast i32* %tmp_ndt_6.i to i8*, !dbg !771
  call void @llvm.lifetime.start(i64 4, i8* %257), !dbg !771
  store i32 %253, i32* %4, align 4, !dbg !771
  store i32 0, i32* %5, align 4, !dbg !771
  %258 = call i32 @__VERIFIER_nondet_int() #4, !dbg !772
  store i32 %258, i32* %tmp_ndt_6.i, align 4, !dbg !773
  %259 = load i32, i32* %tmp_ndt_6.i, align 4, !dbg !774
  %260 = icmp eq i32 %259, 0, !dbg !776
  br i1 %260, label %261, label %262, !dbg !777

; <label>:261                                     ; preds = %252
  store i32 0, i32* %3, !dbg !778
  br label %IoSetDeviceInterfaceState.exit, !dbg !778

; <label>:262                                     ; preds = %252
  store i32 -1073741823, i32* %3, !dbg !782
  br label %IoSetDeviceInterfaceState.exit, !dbg !782

IoSetDeviceInterfaceState.exit:                   ; preds = %261, %262
  %263 = load i32, i32* %3, !dbg !783
  %264 = bitcast i32* %3 to i8*, !dbg !783
  call void @llvm.lifetime.end(i64 4, i8* %264), !dbg !783
  %265 = bitcast i32* %4 to i8*, !dbg !783
  call void @llvm.lifetime.end(i64 4, i8* %265), !dbg !783
  %266 = bitcast i32* %5 to i8*, !dbg !783
  call void @llvm.lifetime.end(i64 4, i8* %266), !dbg !783
  %267 = bitcast i32* %tmp_ndt_6.i to i8*, !dbg !783
  call void @llvm.lifetime.end(i64 4, i8* %267), !dbg !783
  br label %268, !dbg !784

; <label>:268                                     ; preds = %IoSetDeviceInterfaceState.exit, %242
  %269 = load i32, i32* %disketteExtension__ArcName__Length, align 4, !dbg !785
  %270 = icmp ne i32 %269, 0, !dbg !786
  br i1 %270, label %271, label %285, !dbg !787

; <label>:271                                     ; preds = %268
  %272 = load i32, i32* %disketteExtension__ArcName, align 4, !dbg !788
  %273 = bitcast i32* %1 to i8*, !dbg !789
  call void @llvm.lifetime.start(i64 4, i8* %273), !dbg !789
  %274 = bitcast i32* %2 to i8*, !dbg !789
  call void @llvm.lifetime.start(i64 4, i8* %274), !dbg !789
  %275 = bitcast i32* %tmp_ndt_3.i to i8*, !dbg !789
  call void @llvm.lifetime.start(i64 4, i8* %275), !dbg !789
  store i32 %272, i32* %2, align 4, !dbg !789
  %276 = call i32 @__VERIFIER_nondet_int() #4, !dbg !790
  store i32 %276, i32* %tmp_ndt_3.i, align 4, !dbg !791
  %277 = load i32, i32* %tmp_ndt_3.i, align 4, !dbg !792
  %278 = icmp eq i32 %277, 0, !dbg !794
  br i1 %278, label %279, label %280, !dbg !795

; <label>:279                                     ; preds = %271
  store i32 0, i32* %1, !dbg !796
  br label %IoDeleteSymbolicLink.exit, !dbg !796

; <label>:280                                     ; preds = %271
  store i32 -1073741823, i32* %1, !dbg !800
  br label %IoDeleteSymbolicLink.exit, !dbg !800

IoDeleteSymbolicLink.exit:                        ; preds = %279, %280
  %281 = load i32, i32* %1, !dbg !801
  %282 = bitcast i32* %1 to i8*, !dbg !801
  call void @llvm.lifetime.end(i64 4, i8* %282), !dbg !801
  %283 = bitcast i32* %2 to i8*, !dbg !801
  call void @llvm.lifetime.end(i64 4, i8* %283), !dbg !801
  %284 = bitcast i32* %tmp_ndt_3.i to i8*, !dbg !801
  call void @llvm.lifetime.end(i64 4, i8* %284), !dbg !801
  br label %285, !dbg !802

; <label>:285                                     ; preds = %IoDeleteSymbolicLink.exit, %268
  %286 = load i32, i32* %IoGetConfigurationInformation__FloppyCount, align 4, !dbg !803
  %287 = add nsw i32 %286, -1, !dbg !803
  store i32 %287, i32* %IoGetConfigurationInformation__FloppyCount, align 4, !dbg !803
  br label %304, !dbg !804

; <label>:288                                     ; preds = %78
  %289 = load i32, i32* @s, align 4, !dbg !805
  %290 = load i32, i32* @NP, align 4, !dbg !807
  %291 = icmp eq i32 %289, %290, !dbg !808
  br i1 %291, label %292, label %294, !dbg !809

; <label>:292                                     ; preds = %288
  %293 = load i32, i32* @SKIP1, align 4, !dbg !810
  store i32 %293, i32* @s, align 4, !dbg !812
  br label %295, !dbg !813

; <label>:294                                     ; preds = %288
  call void (...) @__VERIFIER_error() #6, !dbg !814
  unreachable, !dbg !814

errorFn.exit9:                                    ; No predecessors!
  br label %295

; <label>:295                                     ; preds = %errorFn.exit9, %292
  %296 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !818
  %297 = add nsw i32 %296, 1, !dbg !818
  store i32 %297, i32* %Irp__CurrentLocation, align 4, !dbg !818
  %298 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !820
  %299 = add nsw i32 %298, 1, !dbg !820
  store i32 %299, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !820
  %300 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !821
  %301 = load i32, i32* %14, align 4, !dbg !822
  %302 = call i32 @IofCallDriver(i32 %300, i32 %301), !dbg !823
  store i32 %302, i32* %ntStatus, align 4, !dbg !824
  br label %305, !dbg !825

; <label>:303                                     ; preds = %79
  br label %304, !dbg !826

; <label>:304                                     ; preds = %303, %285, %227, %219, %152, %81
  br label %305

; <label>:305                                     ; preds = %304, %295
  br label %306

; <label>:306                                     ; preds = %305
  br label %307

; <label>:307                                     ; preds = %306
  br label %308

; <label>:308                                     ; preds = %307
  br label %309

; <label>:309                                     ; preds = %308
  br label %310

; <label>:310                                     ; preds = %309
  br label %311

; <label>:311                                     ; preds = %310
  br label %312

; <label>:312                                     ; preds = %311
  %313 = load i32, i32* @PagingReferenceCount, align 4, !dbg !827
  %314 = add nsw i32 %313, -1, !dbg !827
  store i32 %314, i32* @PagingReferenceCount, align 4, !dbg !827
  %315 = load i32, i32* @PagingReferenceCount, align 4, !dbg !828
  %316 = icmp eq i32 %315, 0, !dbg !830
  br i1 %316, label %317, label %318, !dbg !831

; <label>:317                                     ; preds = %312
  br label %318, !dbg !832

; <label>:318                                     ; preds = %317, %312
  %319 = load i32, i32* %ntStatus, align 4, !dbg !834
  store i32 %319, i32* %12, !dbg !835
  br label %320, !dbg !835

; <label>:320                                     ; preds = %318, %99, %IofCompleteRequest.exit
  %321 = load i32, i32* %12, !dbg !836
  ret i32 %321, !dbg !836
}

; Function Attrs: nounwind ssp uwtable
define void @IofCompleteRequest(i32 %Irp, i32 %PriorityBoost) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %Irp, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !382, metadata !112), !dbg !837
  store i32 %PriorityBoost, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !388, metadata !112), !dbg !838
  %3 = load i32, i32* @s, align 4, !dbg !839
  %4 = load i32, i32* @NP, align 4, !dbg !840
  %5 = icmp eq i32 %3, %4, !dbg !841
  br i1 %5, label %6, label %8, !dbg !842

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* @DC, align 4, !dbg !843
  store i32 %7, i32* @s, align 4, !dbg !844
  br label %9, !dbg !845

; <label>:8                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !846
  unreachable, !dbg !846

errorFn.exit:                                     ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %errorFn.exit, %6
  ret void, !dbg !848
}

; Function Attrs: nounwind ssp uwtable
define i32 @FloppyStartDevice(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %tmp_ndt_6.i = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %tmp_ndt_5.i = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %tmp_ndt_4.i = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %DeviceObject__DeviceExtension = alloca i32, align 4
  %Irp__Tail__Overlay__CurrentStackLocation = alloca i32, align 4
  %Irp__IoStatus__Status = alloca i32, align 4
  %disketteExtension__TargetObject = alloca i32, align 4
  %disketteExtension__MaxTransferSize = alloca i32, align 4
  %disketteExtension__DriveType = alloca i32, align 4
  %disketteExtension__PerpendicularMode = alloca i32, align 4
  %disketteExtension__DeviceUnit = alloca i32, align 4
  %disketteExtension__DriveOnValue = alloca i32, align 4
  %disketteExtension__UnderlyingPDO = alloca i32, align 4
  %disketteExtension__InterfaceString = alloca i32, align 4
  %disketteExtension__IsStarted = alloca i32, align 4
  %disketteExtension__HoldNewRequests = alloca i32, align 4
  %ntStatus = alloca i32, align 4
  %pnpStatus = alloca i32, align 4
  %doneEvent = alloca i32, align 4
  %fdcInfo = alloca i32, align 4
  %fdcInfo__BufferCount = alloca i32, align 4
  %fdcInfo__BufferSize = alloca i32, align 4
  %fdcInfo__MaxTransferSize = alloca i32, align 4
  %fdcInfo__AcpiBios = alloca i32, align 4
  %fdcInfo__AcpiFdiSupported = alloca i32, align 4
  %fdcInfo__PeripheralNumber = alloca i32, align 4
  %fdcInfo__BusType = alloca i32, align 4
  %fdcInfo__ControllerNumber = alloca i32, align 4
  %fdcInfo__UnitNumber = alloca i32, align 4
  %fdcInfo__BusNumber = alloca i32, align 4
  %Dc = alloca i32, align 4
  %Fp = alloca i32, align 4
  %disketteExtension = alloca i32, align 4
  %irpSp = alloca i32, align 4
  %irpSp___0 = alloca i32, align 4
  %nextIrpSp = alloca i32, align 4
  %nextIrpSp__Control = alloca i32, align 4
  %irpSp___1 = alloca i32, align 4
  %irpSp__Control = alloca i32, align 4
  %irpSp__Context = alloca i32, align 4
  %InterfaceType = alloca i32, align 4
  %KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86 = alloca i32, align 4
  %__cil_tmp42 = alloca i64, align 8
  %__cil_tmp43 = alloca i32, align 4
  %__cil_tmp44 = alloca i32, align 4
  %__cil_tmp45 = alloca i32, align 4
  %__cil_tmp46 = alloca i32, align 4
  %__cil_tmp47 = alloca i32, align 4
  %__cil_tmp48 = alloca i32, align 4
  %__cil_tmp49 = alloca i32, align 4
  store i32 %DeviceObject, i32* %22, align 4
  call void @llvm.dbg.declare(metadata i32* %22, metadata !849, metadata !112), !dbg !850
  store i32 %Irp, i32* %23, align 4
  call void @llvm.dbg.declare(metadata i32* %23, metadata !851, metadata !112), !dbg !852
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !853, metadata !112), !dbg !854
  %24 = call i32 @__VERIFIER_nondet_int(), !dbg !855
  store i32 %24, i32* %DeviceObject__DeviceExtension, align 4, !dbg !854
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !856, metadata !112), !dbg !857
  %25 = call i32 @__VERIFIER_nondet_int(), !dbg !858
  store i32 %25, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !857
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !859, metadata !112), !dbg !860
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__TargetObject, metadata !861, metadata !112), !dbg !862
  %26 = call i32 @__VERIFIER_nondet_int(), !dbg !863
  store i32 %26, i32* %disketteExtension__TargetObject, align 4, !dbg !862
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__MaxTransferSize, metadata !864, metadata !112), !dbg !865
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__DriveType, metadata !866, metadata !112), !dbg !867
  %27 = call i32 @__VERIFIER_nondet_int(), !dbg !868
  store i32 %27, i32* %disketteExtension__DriveType, align 4, !dbg !867
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__PerpendicularMode, metadata !869, metadata !112), !dbg !870
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__DeviceUnit, metadata !871, metadata !112), !dbg !872
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__DriveOnValue, metadata !873, metadata !112), !dbg !874
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__UnderlyingPDO, metadata !875, metadata !112), !dbg !876
  %28 = call i32 @__VERIFIER_nondet_int(), !dbg !877
  store i32 %28, i32* %disketteExtension__UnderlyingPDO, align 4, !dbg !876
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__InterfaceString, metadata !878, metadata !112), !dbg !879
  %29 = call i32 @__VERIFIER_nondet_int(), !dbg !880
  store i32 %29, i32* %disketteExtension__InterfaceString, align 4, !dbg !879
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__IsStarted, metadata !881, metadata !112), !dbg !882
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__HoldNewRequests, metadata !883, metadata !112), !dbg !884
  call void @llvm.dbg.declare(metadata i32* %ntStatus, metadata !885, metadata !112), !dbg !886
  call void @llvm.dbg.declare(metadata i32* %pnpStatus, metadata !887, metadata !112), !dbg !888
  call void @llvm.dbg.declare(metadata i32* %doneEvent, metadata !889, metadata !112), !dbg !890
  %30 = call i32 @__VERIFIER_nondet_int(), !dbg !891
  store i32 %30, i32* %doneEvent, align 4, !dbg !890
  call void @llvm.dbg.declare(metadata i32* %fdcInfo, metadata !892, metadata !112), !dbg !893
  %31 = call i32 @__VERIFIER_nondet_int(), !dbg !894
  store i32 %31, i32* %fdcInfo, align 4, !dbg !893
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__BufferCount, metadata !895, metadata !112), !dbg !896
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__BufferSize, metadata !897, metadata !112), !dbg !898
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__MaxTransferSize, metadata !899, metadata !112), !dbg !900
  %32 = call i32 @__VERIFIER_nondet_int(), !dbg !901
  store i32 %32, i32* %fdcInfo__MaxTransferSize, align 4, !dbg !900
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__AcpiBios, metadata !902, metadata !112), !dbg !903
  %33 = call i32 @__VERIFIER_nondet_int(), !dbg !904
  store i32 %33, i32* %fdcInfo__AcpiBios, align 4, !dbg !903
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__AcpiFdiSupported, metadata !905, metadata !112), !dbg !906
  %34 = call i32 @__VERIFIER_nondet_int(), !dbg !907
  store i32 %34, i32* %fdcInfo__AcpiFdiSupported, align 4, !dbg !906
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__PeripheralNumber, metadata !908, metadata !112), !dbg !909
  %35 = call i32 @__VERIFIER_nondet_int(), !dbg !910
  store i32 %35, i32* %fdcInfo__PeripheralNumber, align 4, !dbg !909
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__BusType, metadata !911, metadata !112), !dbg !912
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__ControllerNumber, metadata !913, metadata !112), !dbg !914
  %36 = call i32 @__VERIFIER_nondet_int(), !dbg !915
  store i32 %36, i32* %fdcInfo__ControllerNumber, align 4, !dbg !914
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__UnitNumber, metadata !916, metadata !112), !dbg !917
  %37 = call i32 @__VERIFIER_nondet_int(), !dbg !918
  store i32 %37, i32* %fdcInfo__UnitNumber, align 4, !dbg !917
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__BusNumber, metadata !919, metadata !112), !dbg !920
  %38 = call i32 @__VERIFIER_nondet_int(), !dbg !921
  store i32 %38, i32* %fdcInfo__BusNumber, align 4, !dbg !920
  call void @llvm.dbg.declare(metadata i32* %Dc, metadata !922, metadata !112), !dbg !923
  call void @llvm.dbg.declare(metadata i32* %Fp, metadata !924, metadata !112), !dbg !925
  call void @llvm.dbg.declare(metadata i32* %disketteExtension, metadata !926, metadata !112), !dbg !927
  call void @llvm.dbg.declare(metadata i32* %irpSp, metadata !928, metadata !112), !dbg !929
  call void @llvm.dbg.declare(metadata i32* %irpSp___0, metadata !930, metadata !112), !dbg !931
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp, metadata !932, metadata !112), !dbg !933
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp__Control, metadata !934, metadata !112), !dbg !935
  call void @llvm.dbg.declare(metadata i32* %irpSp___1, metadata !936, metadata !112), !dbg !937
  call void @llvm.dbg.declare(metadata i32* %irpSp__Control, metadata !938, metadata !112), !dbg !939
  call void @llvm.dbg.declare(metadata i32* %irpSp__Context, metadata !940, metadata !112), !dbg !941
  call void @llvm.dbg.declare(metadata i32* %InterfaceType, metadata !942, metadata !112), !dbg !943
  call void @llvm.dbg.declare(metadata i32* %KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86, metadata !944, metadata !112), !dbg !945
  %39 = call i32 @__VERIFIER_nondet_int(), !dbg !946
  store i32 %39, i32* %KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86, align 4, !dbg !945
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp42, metadata !947, metadata !112), !dbg !948
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp43, metadata !949, metadata !112), !dbg !950
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp44, metadata !951, metadata !112), !dbg !952
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp45, metadata !953, metadata !112), !dbg !954
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp46, metadata !955, metadata !112), !dbg !956
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp47, metadata !957, metadata !112), !dbg !958
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp48, metadata !959, metadata !112), !dbg !960
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp49, metadata !961, metadata !112), !dbg !962
  %40 = load i32, i32* @DiskController, align 4, !dbg !963
  store i32 %40, i32* %Dc, align 4, !dbg !965
  %41 = load i32, i32* @FloppyDiskPeripheral, align 4, !dbg !966
  store i32 %41, i32* %Fp, align 4, !dbg !967
  %42 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !968
  store i32 %42, i32* %disketteExtension, align 4, !dbg !969
  %43 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !970
  store i32 %43, i32* %irpSp, align 4, !dbg !971
  %44 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !972
  store i32 %44, i32* %irpSp___0, align 4, !dbg !973
  %45 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !974
  %46 = sub nsw i32 %45, 1, !dbg !975
  store i32 %46, i32* %nextIrpSp, align 4, !dbg !976
  store i32 0, i32* %nextIrpSp__Control, align 4, !dbg !977
  %47 = load i32, i32* @s, align 4, !dbg !978
  %48 = load i32, i32* @NP, align 4, !dbg !980
  %49 = icmp ne i32 %47, %48, !dbg !981
  call void @llvm.dbg.declare(metadata i32* %20, metadata !111, metadata !112), !dbg !982
  call void @llvm.dbg.declare(metadata i32* %21, metadata !114, metadata !112), !dbg !991
  call void @llvm.dbg.declare(metadata i32* %18, metadata !382, metadata !112), !dbg !992
  call void @llvm.dbg.declare(metadata i32* %19, metadata !388, metadata !112), !dbg !995
  call void @llvm.dbg.declare(metadata i32* %10, metadata !996, metadata !112), !dbg !997
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1003, metadata !112), !dbg !1004
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1005, metadata !112), !dbg !1006
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1007, metadata !112), !dbg !1008
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1009, metadata !112), !dbg !1010
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1011, metadata !112), !dbg !1012
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1013, metadata !112), !dbg !1014
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1015, metadata !112), !dbg !1016
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_4.i, metadata !1017, metadata !112), !dbg !1019
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1020, metadata !112), !dbg !1021
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1026, metadata !112), !dbg !1027
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1028, metadata !112), !dbg !1029
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1030, metadata !112), !dbg !1031
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_5.i, metadata !1032, metadata !112), !dbg !1034
  call void @llvm.dbg.declare(metadata i32* %2, metadata !419, metadata !112), !dbg !1035
  call void @llvm.dbg.declare(metadata i32* %3, metadata !425, metadata !112), !dbg !1040
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_6.i, metadata !427, metadata !112), !dbg !1041
  br i1 %49, label %50, label %51, !dbg !1042

; <label>:50                                      ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !1043
  unreachable, !dbg !1043

errorFn.exit:                                     ; No predecessors!
  br label %57, !dbg !1047

; <label>:51                                      ; preds = %0
  %52 = load i32, i32* @compRegistered, align 4, !dbg !1048
  %53 = icmp ne i32 %52, 0, !dbg !1051
  br i1 %53, label %54, label %55, !dbg !1052

; <label>:54                                      ; preds = %51
  call void (...) @__VERIFIER_error() #6, !dbg !1053
  unreachable, !dbg !1053

errorFn.exit1:                                    ; No predecessors!
  br label %56, !dbg !1057

; <label>:55                                      ; preds = %51
  store i32 1, i32* @compRegistered, align 4, !dbg !1058
  br label %56

; <label>:56                                      ; preds = %55, %errorFn.exit1
  br label %57

; <label>:57                                      ; preds = %56, %errorFn.exit
  %58 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1060
  %59 = sub nsw i32 %58, 1, !dbg !1062
  store i32 %59, i32* %irpSp___1, align 4, !dbg !1063
  %60 = load i32, i32* %doneEvent, align 4, !dbg !1064
  store i32 %60, i32* %irpSp__Context, align 4, !dbg !1065
  store i32 224, i32* %irpSp__Control, align 4, !dbg !1066
  %61 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !1067
  %62 = load i32, i32* %23, align 4, !dbg !1068
  %63 = call i32 @IofCallDriver(i32 %61, i32 %62), !dbg !1069
  store i32 %63, i32* %ntStatus, align 4, !dbg !1070
  %64 = load i32, i32* %ntStatus, align 4, !dbg !1071
  %65 = sext i32 %64 to i64, !dbg !1073
  store i64 %65, i64* %__cil_tmp42, align 8, !dbg !1074
  %66 = load i64, i64* %__cil_tmp42, align 8, !dbg !1075
  %67 = icmp eq i64 %66, 259, !dbg !1077
  br i1 %67, label %68, label %74, !dbg !1078

; <label>:68                                      ; preds = %57
  %69 = load i32, i32* %doneEvent, align 4, !dbg !1079
  %70 = load i32, i32* @Executive, align 4, !dbg !1082
  %71 = load i32, i32* @KernelMode, align 4, !dbg !1083
  %72 = call i32 @KeWaitForSingleObject(i32 %69, i32 %70, i32 %71, i32 0, i32 0), !dbg !1084
  store i32 %72, i32* %ntStatus, align 4, !dbg !1085
  %73 = load i32, i32* @myStatus, align 4, !dbg !1086
  store i32 %73, i32* %ntStatus, align 4, !dbg !1087
  br label %74, !dbg !1088

; <label>:74                                      ; preds = %68, %57
  store i32 0, i32* %fdcInfo__BufferCount, align 4, !dbg !1089
  store i32 0, i32* %fdcInfo__BufferSize, align 4, !dbg !1091
  store i32 3080, i32* %__cil_tmp43, align 4, !dbg !1092
  store i32 458752, i32* %__cil_tmp44, align 4, !dbg !1093
  store i32 461832, i32* %__cil_tmp45, align 4, !dbg !1094
  store i32 461835, i32* %__cil_tmp46, align 4, !dbg !1095
  %75 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !1096
  %76 = load i32, i32* %__cil_tmp46, align 4, !dbg !1097
  %77 = load i32, i32* %fdcInfo, align 4, !dbg !1098
  %78 = call i32 @FlFdcDeviceIo(i32 %75, i32 %76, i32 %77), !dbg !1099
  store i32 %78, i32* %ntStatus, align 4, !dbg !1100
  %79 = load i32, i32* %ntStatus, align 4, !dbg !1101
  %80 = icmp sge i32 %79, 0, !dbg !1102
  br i1 %80, label %81, label %209, !dbg !1103

; <label>:81                                      ; preds = %74
  %82 = load i32, i32* %fdcInfo__MaxTransferSize, align 4, !dbg !1104
  store i32 %82, i32* %disketteExtension__MaxTransferSize, align 4, !dbg !1105
  %83 = load i32, i32* %fdcInfo__AcpiBios, align 4, !dbg !1106
  %84 = icmp ne i32 %83, 0, !dbg !1106
  br i1 %84, label %85, label %101, !dbg !1107

; <label>:85                                      ; preds = %81
  %86 = load i32, i32* %fdcInfo__AcpiFdiSupported, align 4, !dbg !1108
  %87 = icmp ne i32 %86, 0, !dbg !1108
  br i1 %87, label %88, label %99, !dbg !1109

; <label>:88                                      ; preds = %85
  %89 = load i32, i32* %disketteExtension, align 4, !dbg !1110
  %90 = load i32, i32* %fdcInfo, align 4, !dbg !1111
  %91 = bitcast i32* %20 to i8*, !dbg !1112
  call void @llvm.lifetime.start(i64 4, i8* %91), !dbg !1112
  %92 = bitcast i32* %21 to i8*, !dbg !1112
  call void @llvm.lifetime.start(i64 4, i8* %92), !dbg !1112
  store i32 %89, i32* %20, align 4, !dbg !1112
  store i32 %90, i32* %21, align 4, !dbg !1112
  %93 = bitcast i32* %20 to i8*, !dbg !1113
  call void @llvm.lifetime.end(i64 4, i8* %93), !dbg !1113
  %94 = bitcast i32* %21 to i8*, !dbg !1113
  call void @llvm.lifetime.end(i64 4, i8* %94), !dbg !1113
  store i32 0, i32* %ntStatus, align 4, !dbg !1114
  %95 = load i32, i32* %disketteExtension__DriveType, align 4, !dbg !1115
  %96 = icmp eq i32 %95, 4, !dbg !1117
  br i1 %96, label %97, label %98, !dbg !1118

; <label>:97                                      ; preds = %88
  br label %98, !dbg !1119

; <label>:98                                      ; preds = %97, %88
  br label %100, !dbg !1121

; <label>:99                                      ; preds = %85
  br label %102, !dbg !1122

; <label>:100                                     ; preds = %98
  br label %157, !dbg !1124

; <label>:101                                     ; preds = %81
  br label %102, !dbg !1125

; <label>:102                                     ; preds = %101, %99
  %103 = load i32, i32* %disketteExtension__DriveType, align 4, !dbg !1126
  %104 = icmp eq i32 %103, 4, !dbg !1128
  br i1 %104, label %105, label %106, !dbg !1129

; <label>:105                                     ; preds = %102
  br label %106, !dbg !1130

; <label>:106                                     ; preds = %105, %102
  store i32 0, i32* %InterfaceType, align 4, !dbg !1132
  br label %107, !dbg !1133

; <label>:107                                     ; preds = %152, %106
  br label %108, !dbg !1134

; <label>:108                                     ; preds = %107
  %109 = load i32, i32* %InterfaceType, align 4, !dbg !1135
  %110 = load i32, i32* @MaximumInterfaceType, align 4, !dbg !1137
  %111 = icmp sge i32 %109, %110, !dbg !1138
  br i1 %111, label %112, label %113, !dbg !1139

; <label>:112                                     ; preds = %108
  br label %156, !dbg !1140

; <label>:113                                     ; preds = %108
  %114 = load i32, i32* %InterfaceType, align 4, !dbg !1142
  store i32 %114, i32* %fdcInfo__BusType, align 4, !dbg !1143
  %115 = load i32, i32* %fdcInfo__BusType, align 4, !dbg !1144
  %116 = load i32, i32* %fdcInfo__BusNumber, align 4, !dbg !1145
  %117 = load i32, i32* %Dc, align 4, !dbg !1146
  %118 = load i32, i32* %fdcInfo__ControllerNumber, align 4, !dbg !1147
  %119 = load i32, i32* %Fp, align 4, !dbg !1148
  %120 = load i32, i32* %fdcInfo__PeripheralNumber, align 4, !dbg !1149
  %121 = load i32, i32* @FlConfigCallBack, align 4, !dbg !1150
  %122 = load i32, i32* %disketteExtension, align 4, !dbg !1151
  %123 = bitcast i32* %9 to i8*, !dbg !1152
  call void @llvm.lifetime.start(i64 4, i8* %123), !dbg !1152
  %124 = bitcast i32* %10 to i8*, !dbg !1152
  call void @llvm.lifetime.start(i64 4, i8* %124), !dbg !1152
  %125 = bitcast i32* %11 to i8*, !dbg !1152
  call void @llvm.lifetime.start(i64 4, i8* %125), !dbg !1152
  %126 = bitcast i32* %12 to i8*, !dbg !1152
  call void @llvm.lifetime.start(i64 4, i8* %126), !dbg !1152
  %127 = bitcast i32* %13 to i8*, !dbg !1152
  call void @llvm.lifetime.start(i64 4, i8* %127), !dbg !1152
  %128 = bitcast i32* %14 to i8*, !dbg !1152
  call void @llvm.lifetime.start(i64 4, i8* %128), !dbg !1152
  %129 = bitcast i32* %15 to i8*, !dbg !1152
  call void @llvm.lifetime.start(i64 4, i8* %129), !dbg !1152
  %130 = bitcast i32* %16 to i8*, !dbg !1152
  call void @llvm.lifetime.start(i64 4, i8* %130), !dbg !1152
  %131 = bitcast i32* %17 to i8*, !dbg !1152
  call void @llvm.lifetime.start(i64 4, i8* %131), !dbg !1152
  %132 = bitcast i32* %tmp_ndt_4.i to i8*, !dbg !1152
  call void @llvm.lifetime.start(i64 4, i8* %132), !dbg !1152
  store i32 %115, i32* %10, align 4, !dbg !1152
  store i32 %116, i32* %11, align 4, !dbg !1152
  store i32 %117, i32* %12, align 4, !dbg !1152
  store i32 %118, i32* %13, align 4, !dbg !1152
  store i32 %119, i32* %14, align 4, !dbg !1152
  store i32 %120, i32* %15, align 4, !dbg !1152
  store i32 %121, i32* %16, align 4, !dbg !1152
  store i32 %122, i32* %17, align 4, !dbg !1152
  %133 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1153
  store i32 %133, i32* %tmp_ndt_4.i, align 4, !dbg !1154
  %134 = load i32, i32* %tmp_ndt_4.i, align 4, !dbg !1155
  %135 = icmp eq i32 %134, 0, !dbg !1157
  br i1 %135, label %136, label %137, !dbg !1158

; <label>:136                                     ; preds = %113
  store i32 0, i32* %9, !dbg !1159
  br label %IoQueryDeviceDescription.exit, !dbg !1159

; <label>:137                                     ; preds = %113
  store i32 -1073741823, i32* %9, !dbg !1163
  br label %IoQueryDeviceDescription.exit, !dbg !1163

IoQueryDeviceDescription.exit:                    ; preds = %136, %137
  %138 = load i32, i32* %9, !dbg !1164
  %139 = bitcast i32* %9 to i8*, !dbg !1164
  call void @llvm.lifetime.end(i64 4, i8* %139), !dbg !1164
  %140 = bitcast i32* %10 to i8*, !dbg !1164
  call void @llvm.lifetime.end(i64 4, i8* %140), !dbg !1164
  %141 = bitcast i32* %11 to i8*, !dbg !1164
  call void @llvm.lifetime.end(i64 4, i8* %141), !dbg !1164
  %142 = bitcast i32* %12 to i8*, !dbg !1164
  call void @llvm.lifetime.end(i64 4, i8* %142), !dbg !1164
  %143 = bitcast i32* %13 to i8*, !dbg !1164
  call void @llvm.lifetime.end(i64 4, i8* %143), !dbg !1164
  %144 = bitcast i32* %14 to i8*, !dbg !1164
  call void @llvm.lifetime.end(i64 4, i8* %144), !dbg !1164
  %145 = bitcast i32* %15 to i8*, !dbg !1164
  call void @llvm.lifetime.end(i64 4, i8* %145), !dbg !1164
  %146 = bitcast i32* %16 to i8*, !dbg !1164
  call void @llvm.lifetime.end(i64 4, i8* %146), !dbg !1164
  %147 = bitcast i32* %17 to i8*, !dbg !1164
  call void @llvm.lifetime.end(i64 4, i8* %147), !dbg !1164
  %148 = bitcast i32* %tmp_ndt_4.i to i8*, !dbg !1164
  call void @llvm.lifetime.end(i64 4, i8* %148), !dbg !1164
  store i32 %138, i32* %ntStatus, align 4, !dbg !1165
  %149 = load i32, i32* %ntStatus, align 4, !dbg !1166
  %150 = icmp sge i32 %149, 0, !dbg !1168
  br i1 %150, label %151, label %152, !dbg !1169

; <label>:151                                     ; preds = %IoQueryDeviceDescription.exit
  br label %156, !dbg !1170

; <label>:152                                     ; preds = %IoQueryDeviceDescription.exit
  %153 = load i32, i32* %InterfaceType, align 4, !dbg !1172
  %154 = add nsw i32 %153, 1, !dbg !1172
  store i32 %154, i32* %InterfaceType, align 4, !dbg !1172
  br label %107, !dbg !1133
                                                  ; No predecessors!
  br label %156, !dbg !1173

; <label>:156                                     ; preds = %155, %151, %112
  br label %157

; <label>:157                                     ; preds = %156, %100
  %158 = load i32, i32* %ntStatus, align 4, !dbg !1174
  %159 = icmp sge i32 %158, 0, !dbg !1175
  br i1 %159, label %160, label %208, !dbg !1176

; <label>:160                                     ; preds = %157
  %161 = load i32, i32* %KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86, align 4, !dbg !1177
  %162 = icmp ne i32 %161, 0, !dbg !1179
  br i1 %162, label %163, label %165, !dbg !1180

; <label>:163                                     ; preds = %160
  %164 = load i32, i32* %fdcInfo__UnitNumber, align 4, !dbg !1181
  store i32 %164, i32* %disketteExtension__DeviceUnit, align 4, !dbg !1183
  br label %167, !dbg !1184

; <label>:165                                     ; preds = %160
  %166 = load i32, i32* %fdcInfo__PeripheralNumber, align 4, !dbg !1185
  store i32 %166, i32* %disketteExtension__DeviceUnit, align 4, !dbg !1187
  br label %167

; <label>:167                                     ; preds = %165, %163
  %168 = load i32, i32* %disketteExtension__UnderlyingPDO, align 4, !dbg !1188
  %169 = load i32, i32* @MOUNTDEV_MOUNTED_DEVICE_GUID, align 4, !dbg !1189
  %170 = load i32, i32* %disketteExtension__InterfaceString, align 4, !dbg !1190
  %171 = bitcast i32* %4 to i8*, !dbg !1191
  call void @llvm.lifetime.start(i64 4, i8* %171), !dbg !1191
  %172 = bitcast i32* %5 to i8*, !dbg !1191
  call void @llvm.lifetime.start(i64 4, i8* %172), !dbg !1191
  %173 = bitcast i32* %6 to i8*, !dbg !1191
  call void @llvm.lifetime.start(i64 4, i8* %173), !dbg !1191
  %174 = bitcast i32* %7 to i8*, !dbg !1191
  call void @llvm.lifetime.start(i64 4, i8* %174), !dbg !1191
  %175 = bitcast i32* %8 to i8*, !dbg !1191
  call void @llvm.lifetime.start(i64 4, i8* %175), !dbg !1191
  %176 = bitcast i32* %tmp_ndt_5.i to i8*, !dbg !1191
  call void @llvm.lifetime.start(i64 4, i8* %176), !dbg !1191
  store i32 %168, i32* %5, align 4, !dbg !1191
  store i32 %169, i32* %6, align 4, !dbg !1191
  store i32 0, i32* %7, align 4, !dbg !1191
  store i32 %170, i32* %8, align 4, !dbg !1191
  %177 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1192
  store i32 %177, i32* %tmp_ndt_5.i, align 4, !dbg !1193
  %178 = load i32, i32* %tmp_ndt_5.i, align 4, !dbg !1194
  %179 = icmp eq i32 %178, 0, !dbg !1196
  br i1 %179, label %180, label %181, !dbg !1197

; <label>:180                                     ; preds = %167
  store i32 0, i32* %4, !dbg !1198
  br label %IoRegisterDeviceInterface.exit, !dbg !1198

; <label>:181                                     ; preds = %167
  store i32 -1073741808, i32* %4, !dbg !1202
  br label %IoRegisterDeviceInterface.exit, !dbg !1202

IoRegisterDeviceInterface.exit:                   ; preds = %180, %181
  %182 = load i32, i32* %4, !dbg !1203
  %183 = bitcast i32* %4 to i8*, !dbg !1203
  call void @llvm.lifetime.end(i64 4, i8* %183), !dbg !1203
  %184 = bitcast i32* %5 to i8*, !dbg !1203
  call void @llvm.lifetime.end(i64 4, i8* %184), !dbg !1203
  %185 = bitcast i32* %6 to i8*, !dbg !1203
  call void @llvm.lifetime.end(i64 4, i8* %185), !dbg !1203
  %186 = bitcast i32* %7 to i8*, !dbg !1203
  call void @llvm.lifetime.end(i64 4, i8* %186), !dbg !1203
  %187 = bitcast i32* %8 to i8*, !dbg !1203
  call void @llvm.lifetime.end(i64 4, i8* %187), !dbg !1203
  %188 = bitcast i32* %tmp_ndt_5.i to i8*, !dbg !1203
  call void @llvm.lifetime.end(i64 4, i8* %188), !dbg !1203
  store i32 %182, i32* %pnpStatus, align 4, !dbg !1204
  %189 = load i32, i32* %pnpStatus, align 4, !dbg !1205
  %190 = icmp sge i32 %189, 0, !dbg !1206
  br i1 %190, label %191, label %207, !dbg !1207

; <label>:191                                     ; preds = %IoRegisterDeviceInterface.exit
  %192 = load i32, i32* %disketteExtension__InterfaceString, align 4, !dbg !1208
  %193 = bitcast i32* %1 to i8*, !dbg !1209
  call void @llvm.lifetime.start(i64 4, i8* %193), !dbg !1209
  %194 = bitcast i32* %2 to i8*, !dbg !1209
  call void @llvm.lifetime.start(i64 4, i8* %194), !dbg !1209
  %195 = bitcast i32* %3 to i8*, !dbg !1209
  call void @llvm.lifetime.start(i64 4, i8* %195), !dbg !1209
  %196 = bitcast i32* %tmp_ndt_6.i to i8*, !dbg !1209
  call void @llvm.lifetime.start(i64 4, i8* %196), !dbg !1209
  store i32 %192, i32* %2, align 4, !dbg !1209
  store i32 1, i32* %3, align 4, !dbg !1209
  %197 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1210
  store i32 %197, i32* %tmp_ndt_6.i, align 4, !dbg !1211
  %198 = load i32, i32* %tmp_ndt_6.i, align 4, !dbg !1212
  %199 = icmp eq i32 %198, 0, !dbg !1213
  br i1 %199, label %200, label %201, !dbg !1214

; <label>:200                                     ; preds = %191
  store i32 0, i32* %1, !dbg !1215
  br label %IoSetDeviceInterfaceState.exit, !dbg !1215

; <label>:201                                     ; preds = %191
  store i32 -1073741823, i32* %1, !dbg !1216
  br label %IoSetDeviceInterfaceState.exit, !dbg !1216

IoSetDeviceInterfaceState.exit:                   ; preds = %200, %201
  %202 = load i32, i32* %1, !dbg !1217
  %203 = bitcast i32* %1 to i8*, !dbg !1217
  call void @llvm.lifetime.end(i64 4, i8* %203), !dbg !1217
  %204 = bitcast i32* %2 to i8*, !dbg !1217
  call void @llvm.lifetime.end(i64 4, i8* %204), !dbg !1217
  %205 = bitcast i32* %3 to i8*, !dbg !1217
  call void @llvm.lifetime.end(i64 4, i8* %205), !dbg !1217
  %206 = bitcast i32* %tmp_ndt_6.i to i8*, !dbg !1217
  call void @llvm.lifetime.end(i64 4, i8* %206), !dbg !1217
  store i32 %202, i32* %pnpStatus, align 4, !dbg !1218
  br label %207, !dbg !1219

; <label>:207                                     ; preds = %IoSetDeviceInterfaceState.exit, %IoRegisterDeviceInterface.exit
  store i32 1, i32* %disketteExtension__IsStarted, align 4, !dbg !1220
  store i32 0, i32* %disketteExtension__HoldNewRequests, align 4, !dbg !1221
  br label %208, !dbg !1222

; <label>:208                                     ; preds = %207, %157
  br label %209, !dbg !1223

; <label>:209                                     ; preds = %208, %74
  %210 = load i32, i32* %ntStatus, align 4, !dbg !1224
  store i32 %210, i32* %Irp__IoStatus__Status, align 4, !dbg !1225
  %211 = load i32, i32* %ntStatus, align 4, !dbg !1226
  store i32 %211, i32* @myStatus, align 4, !dbg !1227
  %212 = load i32, i32* %23, align 4, !dbg !1228
  %213 = bitcast i32* %18 to i8*, !dbg !1229
  call void @llvm.lifetime.start(i64 4, i8* %213), !dbg !1229
  %214 = bitcast i32* %19 to i8*, !dbg !1229
  call void @llvm.lifetime.start(i64 4, i8* %214), !dbg !1229
  store i32 %212, i32* %18, align 4, !dbg !1229
  store i32 0, i32* %19, align 4, !dbg !1229
  %215 = load i32, i32* @s, align 4, !dbg !1230
  %216 = load i32, i32* @NP, align 4, !dbg !1231
  %217 = icmp eq i32 %215, %216, !dbg !1232
  br i1 %217, label %IofCompleteRequest.exit, label %218, !dbg !1233

; <label>:218                                     ; preds = %209
  call void (...) @__VERIFIER_error() #6, !dbg !1234
  unreachable, !dbg !1234

IofCompleteRequest.exit:                          ; preds = %209
  %219 = load i32, i32* @DC, align 4, !dbg !1236
  store i32 %219, i32* @s, align 4, !dbg !1237
  %220 = bitcast i32* %18 to i8*, !dbg !1238
  call void @llvm.lifetime.end(i64 4, i8* %220), !dbg !1238
  %221 = bitcast i32* %19 to i8*, !dbg !1238
  call void @llvm.lifetime.end(i64 4, i8* %221), !dbg !1238
  %222 = load i32, i32* %ntStatus, align 4, !dbg !1239
  ret i32 %222, !dbg !1240
}

; Function Attrs: nounwind ssp uwtable
define i32 @FloppyPnpComplete(i32 %DeviceObject, i32 %Irp, i32 %Context) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %l.i = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %DeviceObject, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1241, metadata !112), !dbg !1242
  store i32 %Irp, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1243, metadata !112), !dbg !1244
  store i32 %Context, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1245, metadata !112), !dbg !1246
  %7 = load i32, i32* %6, align 4, !dbg !1247
  %8 = bitcast i32* %1 to i8*, !dbg !1250
  call void @llvm.lifetime.start(i64 4, i8* %8), !dbg !1250
  %9 = bitcast i32* %2 to i8*, !dbg !1250
  call void @llvm.lifetime.start(i64 4, i8* %9), !dbg !1250
  %10 = bitcast i32* %3 to i8*, !dbg !1250
  call void @llvm.lifetime.start(i64 4, i8* %10), !dbg !1250
  %11 = bitcast i32* %l.i to i8*, !dbg !1250
  call void @llvm.lifetime.start(i64 4, i8* %11), !dbg !1250
  store i32 %7, i32* %1, align 4, !dbg !1250
  store i32 1, i32* %2, align 4, !dbg !1250
  store i32 0, i32* %3, align 4, !dbg !1250
  %12 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1251
  store i32 %12, i32* %l.i, align 4, !dbg !1253
  store i32 1, i32* @setEventCalled, align 4, !dbg !1254
  %13 = load i32, i32* %l.i, align 4, !dbg !1256
  %14 = bitcast i32* %1 to i8*, !dbg !1257
  call void @llvm.lifetime.end(i64 4, i8* %14), !dbg !1257
  %15 = bitcast i32* %2 to i8*, !dbg !1257
  call void @llvm.lifetime.end(i64 4, i8* %15), !dbg !1257
  %16 = bitcast i32* %3 to i8*, !dbg !1257
  call void @llvm.lifetime.end(i64 4, i8* %16), !dbg !1257
  %17 = bitcast i32* %l.i to i8*, !dbg !1257
  call void @llvm.lifetime.end(i64 4, i8* %17), !dbg !1257
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1258, metadata !112), !dbg !1259
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1260, metadata !112), !dbg !1261
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1262, metadata !112), !dbg !1263
  call void @llvm.dbg.declare(metadata i32* %l.i, metadata !1264, metadata !112), !dbg !1253
  ret i32 -1073741802, !dbg !1265
}

; Function Attrs: nounwind ssp uwtable
define i32 @FlFdcDeviceIo(i32 %DeviceObject, i32 %Ioctl, i32 %Data) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %malloc.i = alloca i32, align 4
  %tmp_ndt_2.i = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %ntStatus = alloca i32, align 4
  %irp = alloca i32, align 4
  %irpStack = alloca i32, align 4
  %doneEvent = alloca i32, align 4
  %ioStatus = alloca i32, align 4
  %irp__Tail__Overlay__CurrentStackLocation = alloca i32, align 4
  %irpStack__Parameters__DeviceIoControl__Type3InputBuffer = alloca i32, align 4
  %__cil_tmp11 = alloca i64, align 8
  store i32 %DeviceObject, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1266, metadata !112), !dbg !1267
  store i32 %Ioctl, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1268, metadata !112), !dbg !1269
  store i32 %Data, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1270, metadata !112), !dbg !1271
  call void @llvm.dbg.declare(metadata i32* %ntStatus, metadata !1272, metadata !112), !dbg !1273
  call void @llvm.dbg.declare(metadata i32* %irp, metadata !1274, metadata !112), !dbg !1275
  call void @llvm.dbg.declare(metadata i32* %irpStack, metadata !1276, metadata !112), !dbg !1277
  call void @llvm.dbg.declare(metadata i32* %doneEvent, metadata !1278, metadata !112), !dbg !1279
  %15 = call i32 @__VERIFIER_nondet_int(), !dbg !1280
  store i32 %15, i32* %doneEvent, align 4, !dbg !1279
  call void @llvm.dbg.declare(metadata i32* %ioStatus, metadata !1281, metadata !112), !dbg !1282
  %16 = call i32 @__VERIFIER_nondet_int(), !dbg !1283
  store i32 %16, i32* %ioStatus, align 4, !dbg !1282
  call void @llvm.dbg.declare(metadata i32* %irp__Tail__Overlay__CurrentStackLocation, metadata !1284, metadata !112), !dbg !1285
  %17 = call i32 @__VERIFIER_nondet_int(), !dbg !1286
  store i32 %17, i32* %irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1285
  call void @llvm.dbg.declare(metadata i32* %irpStack__Parameters__DeviceIoControl__Type3InputBuffer, metadata !1287, metadata !112), !dbg !1288
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp11, metadata !1289, metadata !112), !dbg !1290
  %18 = load i32, i32* %13, align 4, !dbg !1291
  %19 = load i32, i32* %12, align 4, !dbg !1294
  %20 = load i32, i32* %doneEvent, align 4, !dbg !1295
  %21 = load i32, i32* %ioStatus, align 4, !dbg !1296
  %22 = bitcast i32* %1 to i8*, !dbg !1297
  call void @llvm.lifetime.start(i64 4, i8* %22), !dbg !1297
  %23 = bitcast i32* %2 to i8*, !dbg !1297
  call void @llvm.lifetime.start(i64 4, i8* %23), !dbg !1297
  %24 = bitcast i32* %3 to i8*, !dbg !1297
  call void @llvm.lifetime.start(i64 4, i8* %24), !dbg !1297
  %25 = bitcast i32* %4 to i8*, !dbg !1297
  call void @llvm.lifetime.start(i64 4, i8* %25), !dbg !1297
  %26 = bitcast i32* %5 to i8*, !dbg !1297
  call void @llvm.lifetime.start(i64 4, i8* %26), !dbg !1297
  %27 = bitcast i32* %6 to i8*, !dbg !1297
  call void @llvm.lifetime.start(i64 4, i8* %27), !dbg !1297
  %28 = bitcast i32* %7 to i8*, !dbg !1297
  call void @llvm.lifetime.start(i64 4, i8* %28), !dbg !1297
  %29 = bitcast i32* %8 to i8*, !dbg !1297
  call void @llvm.lifetime.start(i64 4, i8* %29), !dbg !1297
  %30 = bitcast i32* %9 to i8*, !dbg !1297
  call void @llvm.lifetime.start(i64 4, i8* %30), !dbg !1297
  %31 = bitcast i32* %10 to i8*, !dbg !1297
  call void @llvm.lifetime.start(i64 4, i8* %31), !dbg !1297
  %32 = bitcast i32* %malloc.i to i8*, !dbg !1297
  call void @llvm.lifetime.start(i64 4, i8* %32), !dbg !1297
  %33 = bitcast i32* %tmp_ndt_2.i to i8*, !dbg !1297
  call void @llvm.lifetime.start(i64 4, i8* %33), !dbg !1297
  store i32 %18, i32* %2, align 4, !dbg !1297
  store i32 %19, i32* %3, align 4, !dbg !1297
  store i32 0, i32* %4, align 4, !dbg !1297
  store i32 0, i32* %5, align 4, !dbg !1297
  store i32 0, i32* %6, align 4, !dbg !1297
  store i32 0, i32* %7, align 4, !dbg !1297
  store i32 1, i32* %8, align 4, !dbg !1297
  store i32 %20, i32* %9, align 4, !dbg !1297
  store i32 %21, i32* %10, align 4, !dbg !1297
  %34 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1298
  store i32 %34, i32* %malloc.i, align 4, !dbg !1300
  store i32 1, i32* @customIrp, align 4, !dbg !1301
  %35 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1303
  store i32 %35, i32* %tmp_ndt_2.i, align 4, !dbg !1304
  %36 = load i32, i32* %tmp_ndt_2.i, align 4, !dbg !1305
  %37 = icmp eq i32 %36, 0, !dbg !1307
  br i1 %37, label %38, label %40, !dbg !1308

; <label>:38                                      ; preds = %0
  %39 = load i32, i32* %malloc.i, align 4, !dbg !1309
  store i32 %39, i32* %1, !dbg !1313
  br label %IoBuildDeviceIoControlRequest.exit, !dbg !1313

; <label>:40                                      ; preds = %0
  store i32 0, i32* %1, !dbg !1314
  br label %IoBuildDeviceIoControlRequest.exit, !dbg !1314

IoBuildDeviceIoControlRequest.exit:               ; preds = %38, %40
  %41 = load i32, i32* %1, !dbg !1315
  %42 = bitcast i32* %1 to i8*, !dbg !1315
  call void @llvm.lifetime.end(i64 4, i8* %42), !dbg !1315
  %43 = bitcast i32* %2 to i8*, !dbg !1315
  call void @llvm.lifetime.end(i64 4, i8* %43), !dbg !1315
  %44 = bitcast i32* %3 to i8*, !dbg !1315
  call void @llvm.lifetime.end(i64 4, i8* %44), !dbg !1315
  %45 = bitcast i32* %4 to i8*, !dbg !1315
  call void @llvm.lifetime.end(i64 4, i8* %45), !dbg !1315
  %46 = bitcast i32* %5 to i8*, !dbg !1315
  call void @llvm.lifetime.end(i64 4, i8* %46), !dbg !1315
  %47 = bitcast i32* %6 to i8*, !dbg !1315
  call void @llvm.lifetime.end(i64 4, i8* %47), !dbg !1315
  %48 = bitcast i32* %7 to i8*, !dbg !1315
  call void @llvm.lifetime.end(i64 4, i8* %48), !dbg !1315
  %49 = bitcast i32* %8 to i8*, !dbg !1315
  call void @llvm.lifetime.end(i64 4, i8* %49), !dbg !1315
  %50 = bitcast i32* %9 to i8*, !dbg !1315
  call void @llvm.lifetime.end(i64 4, i8* %50), !dbg !1315
  %51 = bitcast i32* %10 to i8*, !dbg !1315
  call void @llvm.lifetime.end(i64 4, i8* %51), !dbg !1315
  %52 = bitcast i32* %malloc.i to i8*, !dbg !1315
  call void @llvm.lifetime.end(i64 4, i8* %52), !dbg !1315
  %53 = bitcast i32* %tmp_ndt_2.i to i8*, !dbg !1315
  call void @llvm.lifetime.end(i64 4, i8* %53), !dbg !1315
  store i32 %41, i32* %irp, align 4, !dbg !1316
  %54 = load i32, i32* %irp, align 4, !dbg !1317
  %55 = icmp eq i32 %54, 0, !dbg !1319
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1320, metadata !112), !dbg !1321
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1322, metadata !112), !dbg !1323
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1324, metadata !112), !dbg !1325
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1326, metadata !112), !dbg !1327
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1328, metadata !112), !dbg !1329
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1330, metadata !112), !dbg !1331
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1332, metadata !112), !dbg !1333
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1334, metadata !112), !dbg !1335
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1336, metadata !112), !dbg !1337
  call void @llvm.dbg.declare(metadata i32* %malloc.i, metadata !1338, metadata !112), !dbg !1300
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_2.i, metadata !1339, metadata !112), !dbg !1340
  br i1 %55, label %56, label %57, !dbg !1341

; <label>:56                                      ; preds = %IoBuildDeviceIoControlRequest.exit
  store i32 -1073741670, i32* %11, !dbg !1342
  br label %76, !dbg !1342

; <label>:57                                      ; preds = %IoBuildDeviceIoControlRequest.exit
  %58 = load i32, i32* %irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1344
  %59 = sub nsw i32 %58, 1, !dbg !1346
  store i32 %59, i32* %irpStack, align 4, !dbg !1347
  %60 = load i32, i32* %14, align 4, !dbg !1348
  store i32 %60, i32* %irpStack__Parameters__DeviceIoControl__Type3InputBuffer, align 4, !dbg !1349
  %61 = load i32, i32* %12, align 4, !dbg !1350
  %62 = load i32, i32* %irp, align 4, !dbg !1351
  %63 = call i32 @IofCallDriver(i32 %61, i32 %62), !dbg !1352
  store i32 %63, i32* %ntStatus, align 4, !dbg !1353
  %64 = load i32, i32* %ntStatus, align 4, !dbg !1354
  %65 = sext i32 %64 to i64, !dbg !1356
  store i64 %65, i64* %__cil_tmp11, align 8, !dbg !1357
  %66 = load i64, i64* %__cil_tmp11, align 8, !dbg !1358
  %67 = icmp eq i64 %66, 259, !dbg !1360
  br i1 %67, label %68, label %74, !dbg !1361

; <label>:68                                      ; preds = %57
  %69 = load i32, i32* %doneEvent, align 4, !dbg !1362
  %70 = load i32, i32* @Suspended, align 4, !dbg !1365
  %71 = load i32, i32* @KernelMode, align 4, !dbg !1366
  %72 = call i32 @KeWaitForSingleObject(i32 %69, i32 %70, i32 %71, i32 0, i32 0), !dbg !1367
  %73 = load i32, i32* @myStatus, align 4, !dbg !1368
  store i32 %73, i32* %ntStatus, align 4, !dbg !1369
  br label %74, !dbg !1370

; <label>:74                                      ; preds = %68, %57
  %75 = load i32, i32* %ntStatus, align 4, !dbg !1371
  store i32 %75, i32* %11, !dbg !1372
  br label %76, !dbg !1372

; <label>:76                                      ; preds = %74, %56
  %77 = load i32, i32* %11, !dbg !1373
  ret i32 %77, !dbg !1373
}

; Function Attrs: nounwind ssp uwtable
define void @FloppyProcessQueuedRequests(i32 %DisketteExtension) #0 {
  %1 = alloca i32, align 4
  store i32 %DisketteExtension, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1374, metadata !112), !dbg !1375
  ret void, !dbg !1376
}

; Function Attrs: nounwind ssp uwtable
define void @stub_driver_init() #0 {
  %1 = load i32, i32* @NP, align 4, !dbg !1378
  store i32 %1, i32* @s, align 4, !dbg !1380
  store i32 0, i32* @pended, align 4, !dbg !1381
  store i32 0, i32* @compRegistered, align 4, !dbg !1382
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !1383
  store i32 0, i32* @setEventCalled, align 4, !dbg !1384
  store i32 0, i32* @customIrp, align 4, !dbg !1385
  ret void, !dbg !1386
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %status = alloca i32, align 4
  %irp = alloca i32, align 4
  %pirp = alloca i32, align 4
  %pirp__IoStatus__Status = alloca i32, align 4
  %irp_choice = alloca i32, align 4
  %devobj = alloca i32, align 4
  %__cil_tmp8 = alloca i32, align 4
  %tmp_ndt_1 = alloca i32, align 4
  store i32 0, i32* %1
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1387, metadata !112), !dbg !1388
  call void @llvm.dbg.declare(metadata i32* %irp, metadata !1389, metadata !112), !dbg !1390
  %2 = call i32 @__VERIFIER_nondet_int(), !dbg !1391
  store i32 %2, i32* %irp, align 4, !dbg !1390
  call void @llvm.dbg.declare(metadata i32* %pirp, metadata !1392, metadata !112), !dbg !1393
  call void @llvm.dbg.declare(metadata i32* %pirp__IoStatus__Status, metadata !1394, metadata !112), !dbg !1395
  call void @llvm.dbg.declare(metadata i32* %irp_choice, metadata !1396, metadata !112), !dbg !1397
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !1398
  store i32 %3, i32* %irp_choice, align 4, !dbg !1397
  call void @llvm.dbg.declare(metadata i32* %devobj, metadata !1399, metadata !112), !dbg !1400
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !1401
  store i32 %4, i32* %devobj, align 4, !dbg !1400
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp8, metadata !1402, metadata !112), !dbg !1403
  store i32 0, i32* @FloppyThread, align 4, !dbg !1404
  store i32 0, i32* @KernelMode, align 4, !dbg !1405
  store i32 0, i32* @Suspended, align 4, !dbg !1406
  store i32 0, i32* @Executive, align 4, !dbg !1407
  store i32 0, i32* @DiskController, align 4, !dbg !1408
  store i32 0, i32* @FloppyDiskPeripheral, align 4, !dbg !1409
  store i32 0, i32* @FlConfigCallBack, align 4, !dbg !1410
  store i32 0, i32* @MaximumInterfaceType, align 4, !dbg !1411
  store i32 0, i32* @MOUNTDEV_MOUNTED_DEVICE_GUID, align 4, !dbg !1412
  store i32 0, i32* @myStatus, align 4, !dbg !1413
  store i32 0, i32* @s, align 4, !dbg !1414
  store i32 0, i32* @UNLOADED, align 4, !dbg !1415
  store i32 0, i32* @NP, align 4, !dbg !1416
  store i32 0, i32* @DC, align 4, !dbg !1417
  store i32 0, i32* @SKIP1, align 4, !dbg !1418
  store i32 0, i32* @SKIP2, align 4, !dbg !1419
  store i32 0, i32* @MPR1, align 4, !dbg !1420
  store i32 0, i32* @MPR3, align 4, !dbg !1421
  store i32 0, i32* @IPC, align 4, !dbg !1422
  store i32 0, i32* @pended, align 4, !dbg !1423
  store i32 0, i32* @compRegistered, align 4, !dbg !1424
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !1425
  store i32 0, i32* @setEventCalled, align 4, !dbg !1426
  store i32 0, i32* @customIrp, align 4, !dbg !1427
  store i32 0, i32* %status, align 4, !dbg !1428
  %5 = load i32, i32* %irp, align 4, !dbg !1431
  store i32 %5, i32* %pirp, align 4, !dbg !1432
  store i32 0, i32* @UNLOADED, align 4, !dbg !1433
  store i32 1, i32* @NP, align 4, !dbg !1435
  store i32 2, i32* @DC, align 4, !dbg !1436
  store i32 3, i32* @SKIP1, align 4, !dbg !1437
  store i32 4, i32* @SKIP2, align 4, !dbg !1438
  store i32 5, i32* @MPR1, align 4, !dbg !1439
  store i32 6, i32* @MPR3, align 4, !dbg !1440
  store i32 7, i32* @IPC, align 4, !dbg !1441
  %6 = load i32, i32* @UNLOADED, align 4, !dbg !1442
  store i32 %6, i32* @s, align 4, !dbg !1443
  store i32 0, i32* @pended, align 4, !dbg !1444
  store i32 0, i32* @compRegistered, align 4, !dbg !1445
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !1446
  store i32 0, i32* @setEventCalled, align 4, !dbg !1447
  store i32 0, i32* @customIrp, align 4, !dbg !1448
  %7 = load i32, i32* %status, align 4, !dbg !1449
  %8 = icmp sge i32 %7, 0, !dbg !1451
  br i1 %8, label %9, label %40, !dbg !1452

; <label>:9                                       ; preds = %0
  %10 = load i32, i32* @NP, align 4, !dbg !1453
  store i32 %10, i32* @s, align 4, !dbg !1455
  store i32 0, i32* @customIrp, align 4, !dbg !1456
  %11 = load i32, i32* @customIrp, align 4, !dbg !1457
  store i32 %11, i32* @setEventCalled, align 4, !dbg !1458
  %12 = load i32, i32* @setEventCalled, align 4, !dbg !1459
  store i32 %12, i32* @lowerDriverReturn, align 4, !dbg !1460
  %13 = load i32, i32* @lowerDriverReturn, align 4, !dbg !1461
  store i32 %13, i32* @compRegistered, align 4, !dbg !1462
  %14 = load i32, i32* @compRegistered, align 4, !dbg !1463
  store i32 %14, i32* @pended, align 4, !dbg !1464
  store i32 0, i32* %pirp__IoStatus__Status, align 4, !dbg !1465
  store i32 0, i32* @myStatus, align 4, !dbg !1466
  %15 = load i32, i32* %irp_choice, align 4, !dbg !1467
  %16 = icmp eq i32 %15, 0, !dbg !1469
  br i1 %16, label %17, label %18, !dbg !1470

; <label>:17                                      ; preds = %9
  store i32 -1073741637, i32* %pirp__IoStatus__Status, align 4, !dbg !1471
  store i32 -1073741637, i32* @myStatus, align 4, !dbg !1473
  br label %18, !dbg !1474

; <label>:18                                      ; preds = %17, %9
  %19 = load i32, i32* @NP, align 4, !dbg !1475
  store i32 %19, i32* @s, align 4, !dbg !1478
  store i32 0, i32* @pended, align 4, !dbg !1479
  store i32 0, i32* @compRegistered, align 4, !dbg !1480
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !1481
  store i32 0, i32* @setEventCalled, align 4, !dbg !1482
  store i32 0, i32* @customIrp, align 4, !dbg !1483
  %20 = load i32, i32* %status, align 4, !dbg !1484
  %21 = icmp slt i32 %20, 0, !dbg !1487
  br i1 %21, label %22, label %23, !dbg !1488

; <label>:22                                      ; preds = %18
  store i32 -1, i32* %1, !dbg !1489
  br label %120, !dbg !1489

; <label>:23                                      ; preds = %18
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_1, metadata !1491, metadata !112), !dbg !1492
  %24 = call i32 @__VERIFIER_nondet_int(), !dbg !1493
  store i32 %24, i32* %tmp_ndt_1, align 4, !dbg !1494
  %25 = load i32, i32* %tmp_ndt_1, align 4, !dbg !1495
  %26 = icmp eq i32 %25, 3, !dbg !1497
  br i1 %26, label %27, label %28, !dbg !1498

; <label>:27                                      ; preds = %23
  br label %31, !dbg !1499

; <label>:28                                      ; preds = %23
  br label %35, !dbg !1501
                                                  ; No predecessors!
  br i1 false, label %30, label %36, !dbg !1503

; <label>:30                                      ; preds = %29
  br label %31, !dbg !1504

; <label>:31                                      ; preds = %30, %27
  %32 = load i32, i32* %devobj, align 4, !dbg !1506
  %33 = load i32, i32* %pirp, align 4, !dbg !1509
  %34 = call i32 @FloppyPnp(i32 %32, i32 %33), !dbg !1510
  store i32 %34, i32* %status, align 4, !dbg !1511
  br label %37, !dbg !1512

; <label>:35                                      ; preds = %28
  store i32 -1, i32* %1, !dbg !1513
  br label %120, !dbg !1513

; <label>:36                                      ; preds = %29
  br label %37, !dbg !1514

; <label>:37                                      ; preds = %36, %31
  br label %38

; <label>:38                                      ; preds = %37
  br label %39

; <label>:39                                      ; preds = %38
  br label %40, !dbg !1515

; <label>:40                                      ; preds = %39, %0
  %41 = load i32, i32* @pended, align 4, !dbg !1516
  %42 = icmp eq i32 %41, 1, !dbg !1518
  br i1 %42, label %43, label %51, !dbg !1519

; <label>:43                                      ; preds = %40
  %44 = load i32, i32* @s, align 4, !dbg !1520
  %45 = load i32, i32* @NP, align 4, !dbg !1523
  %46 = icmp eq i32 %44, %45, !dbg !1524
  br i1 %46, label %47, label %49, !dbg !1525

; <label>:47                                      ; preds = %43
  %48 = load i32, i32* @NP, align 4, !dbg !1526
  store i32 %48, i32* @s, align 4, !dbg !1528
  br label %50, !dbg !1529

; <label>:49                                      ; preds = %43
  br label %52, !dbg !1530

; <label>:50                                      ; preds = %47
  br label %118, !dbg !1532

; <label>:51                                      ; preds = %40
  br label %52, !dbg !1533

; <label>:52                                      ; preds = %51, %49
  %53 = load i32, i32* @pended, align 4, !dbg !1534
  %54 = icmp eq i32 %53, 1, !dbg !1537
  br i1 %54, label %55, label %63, !dbg !1538

; <label>:55                                      ; preds = %52
  %56 = load i32, i32* @s, align 4, !dbg !1539
  %57 = load i32, i32* @MPR3, align 4, !dbg !1542
  %58 = icmp eq i32 %56, %57, !dbg !1543
  br i1 %58, label %59, label %61, !dbg !1544

; <label>:59                                      ; preds = %55
  %60 = load i32, i32* @MPR3, align 4, !dbg !1545
  store i32 %60, i32* @s, align 4, !dbg !1547
  br label %62, !dbg !1548

; <label>:61                                      ; preds = %55
  br label %64, !dbg !1549

; <label>:62                                      ; preds = %59
  br label %117, !dbg !1551

; <label>:63                                      ; preds = %52
  br label %64, !dbg !1552

; <label>:64                                      ; preds = %63, %61
  %65 = load i32, i32* @s, align 4, !dbg !1553
  %66 = load i32, i32* @UNLOADED, align 4, !dbg !1556
  %67 = icmp ne i32 %65, %66, !dbg !1557
  br i1 %67, label %68, label %116, !dbg !1558

; <label>:68                                      ; preds = %64
  %69 = load i32, i32* %status, align 4, !dbg !1559
  %70 = icmp ne i32 %69, -1, !dbg !1562
  br i1 %70, label %71, label %115, !dbg !1563

; <label>:71                                      ; preds = %68
  %72 = load i32, i32* @s, align 4, !dbg !1564
  %73 = load i32, i32* @SKIP2, align 4, !dbg !1567
  %74 = icmp ne i32 %72, %73, !dbg !1568
  br i1 %74, label %75, label %88, !dbg !1569

; <label>:75                                      ; preds = %71
  %76 = load i32, i32* @s, align 4, !dbg !1570
  %77 = load i32, i32* @IPC, align 4, !dbg !1573
  %78 = icmp ne i32 %76, %77, !dbg !1574
  br i1 %78, label %79, label %86, !dbg !1575

; <label>:79                                      ; preds = %75
  %80 = load i32, i32* @s, align 4, !dbg !1576
  %81 = load i32, i32* @DC, align 4, !dbg !1579
  %82 = icmp ne i32 %80, %81, !dbg !1580
  br i1 %82, label %83, label %84, !dbg !1581

; <label>:83                                      ; preds = %79
  call void (...) @__VERIFIER_error() #6, !dbg !1582
  unreachable, !dbg !1582

errorFn.exit2:                                    ; No predecessors!
  br label %85, !dbg !1586

; <label>:84                                      ; preds = %79
  br label %89, !dbg !1587

; <label>:85                                      ; preds = %errorFn.exit2
  br label %87, !dbg !1589

; <label>:86                                      ; preds = %75
  br label %89, !dbg !1590

; <label>:87                                      ; preds = %85
  br label %114, !dbg !1592

; <label>:88                                      ; preds = %71
  br label %89, !dbg !1593

; <label>:89                                      ; preds = %88, %86, %84
  %90 = load i32, i32* @pended, align 4, !dbg !1594
  %91 = icmp eq i32 %90, 1, !dbg !1597
  br i1 %91, label %92, label %97, !dbg !1598

; <label>:92                                      ; preds = %89
  %93 = load i32, i32* %status, align 4, !dbg !1599
  %94 = icmp ne i32 %93, 259, !dbg !1602
  br i1 %94, label %95, label %96, !dbg !1603

; <label>:95                                      ; preds = %92
  store i32 0, i32* %status, align 4, !dbg !1604
  br label %96, !dbg !1606

; <label>:96                                      ; preds = %95, %92
  br label %113, !dbg !1607

; <label>:97                                      ; preds = %89
  %98 = load i32, i32* @s, align 4, !dbg !1608
  %99 = load i32, i32* @DC, align 4, !dbg !1611
  %100 = icmp eq i32 %98, %99, !dbg !1612
  br i1 %100, label %101, label %106, !dbg !1613

; <label>:101                                     ; preds = %97
  %102 = load i32, i32* %status, align 4, !dbg !1614
  %103 = icmp eq i32 %102, 259, !dbg !1617
  br i1 %103, label %104, label %105, !dbg !1618

; <label>:104                                     ; preds = %101
  call void (...) @__VERIFIER_error() #6, !dbg !1619
  unreachable, !dbg !1619

errorFn.exit1:                                    ; No predecessors!
  br label %105, !dbg !1623

; <label>:105                                     ; preds = %errorFn.exit1, %101
  br label %112, !dbg !1624

; <label>:106                                     ; preds = %97
  %107 = load i32, i32* %status, align 4, !dbg !1625
  %108 = load i32, i32* @lowerDriverReturn, align 4, !dbg !1628
  %109 = icmp ne i32 %107, %108, !dbg !1629
  br i1 %109, label %110, label %111, !dbg !1630

; <label>:110                                     ; preds = %106
  call void (...) @__VERIFIER_error() #6, !dbg !1631
  unreachable, !dbg !1631

errorFn.exit:                                     ; No predecessors!
  br label %111, !dbg !1635

; <label>:111                                     ; preds = %errorFn.exit, %106
  br label %112

; <label>:112                                     ; preds = %111, %105
  br label %113

; <label>:113                                     ; preds = %112, %96
  br label %114

; <label>:114                                     ; preds = %113, %87
  br label %115, !dbg !1636

; <label>:115                                     ; preds = %114, %68
  br label %116, !dbg !1637

; <label>:116                                     ; preds = %115, %64
  br label %117

; <label>:117                                     ; preds = %116, %62
  br label %118

; <label>:118                                     ; preds = %117, %50
  store i32 0, i32* %status, align 4, !dbg !1638
  %119 = load i32, i32* %status, align 4, !dbg !1639
  store i32 %119, i32* %1, !dbg !1640
  br label %120, !dbg !1640

; <label>:120                                     ; preds = %118, %35, %22
  %121 = load i32, i32* %1, !dbg !1641
  ret i32 %121, !dbg !1641
}

; Function Attrs: nounwind ssp uwtable
define i32 @IoBuildDeviceIoControlRequest(i32 %IoControlCode, i32 %DeviceObject, i32 %InputBuffer, i32 %InputBufferLength, i32 %OutputBuffer, i32 %OutputBufferLength, i32 %InternalDeviceIoControl, i32 %Event, i32 %IoStatusBlock) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %malloc = alloca i32, align 4
  %tmp_ndt_2 = alloca i32, align 4
  store i32 %IoControlCode, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1320, metadata !112), !dbg !1642
  store i32 %DeviceObject, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1322, metadata !112), !dbg !1643
  store i32 %InputBuffer, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1324, metadata !112), !dbg !1644
  store i32 %InputBufferLength, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1326, metadata !112), !dbg !1645
  store i32 %OutputBuffer, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1328, metadata !112), !dbg !1646
  store i32 %OutputBufferLength, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1330, metadata !112), !dbg !1647
  store i32 %InternalDeviceIoControl, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1332, metadata !112), !dbg !1648
  store i32 %Event, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1334, metadata !112), !dbg !1649
  store i32 %IoStatusBlock, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1336, metadata !112), !dbg !1650
  call void @llvm.dbg.declare(metadata i32* %malloc, metadata !1338, metadata !112), !dbg !1651
  %11 = call i32 @__VERIFIER_nondet_int(), !dbg !1652
  store i32 %11, i32* %malloc, align 4, !dbg !1651
  store i32 1, i32* @customIrp, align 4, !dbg !1653
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_2, metadata !1339, metadata !112), !dbg !1654
  %12 = call i32 @__VERIFIER_nondet_int(), !dbg !1655
  store i32 %12, i32* %tmp_ndt_2, align 4, !dbg !1656
  %13 = load i32, i32* %tmp_ndt_2, align 4, !dbg !1657
  %14 = icmp eq i32 %13, 0, !dbg !1658
  br i1 %14, label %15, label %16, !dbg !1659

; <label>:15                                      ; preds = %0
  br label %19, !dbg !1660

; <label>:16                                      ; preds = %0
  br label %21, !dbg !1662
                                                  ; No predecessors!
  br i1 false, label %18, label %22, !dbg !1663

; <label>:18                                      ; preds = %17
  br label %19, !dbg !1664

; <label>:19                                      ; preds = %18, %15
  %20 = load i32, i32* %malloc, align 4, !dbg !1665
  store i32 %20, i32* %1, !dbg !1666
  br label %24, !dbg !1666

; <label>:21                                      ; preds = %16
  store i32 0, i32* %1, !dbg !1667
  br label %24, !dbg !1667

; <label>:22                                      ; preds = %17
  br label %23

; <label>:23                                      ; preds = %22
  br label %24

; <label>:24                                      ; preds = %23, %21, %19
  %25 = load i32, i32* %1, !dbg !1668
  ret i32 %25, !dbg !1668
}

; Function Attrs: nounwind ssp uwtable
define i32 @IoDeleteSymbolicLink(i32 %SymbolicLinkName) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %tmp_ndt_3 = alloca i32, align 4
  store i32 %SymbolicLinkName, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !430, metadata !112), !dbg !1669
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_3, metadata !436, metadata !112), !dbg !1670
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !1671
  store i32 %3, i32* %tmp_ndt_3, align 4, !dbg !1672
  %4 = load i32, i32* %tmp_ndt_3, align 4, !dbg !1673
  %5 = icmp eq i32 %4, 0, !dbg !1674
  br i1 %5, label %6, label %7, !dbg !1675

; <label>:6                                       ; preds = %0
  br label %10, !dbg !1676

; <label>:7                                       ; preds = %0
  br label %11, !dbg !1678
                                                  ; No predecessors!
  br i1 false, label %9, label %12, !dbg !1679

; <label>:9                                       ; preds = %8
  br label %10, !dbg !1680

; <label>:10                                      ; preds = %9, %6
  store i32 0, i32* %1, !dbg !1681
  br label %14, !dbg !1681

; <label>:11                                      ; preds = %7
  store i32 -1073741823, i32* %1, !dbg !1682
  br label %14, !dbg !1682

; <label>:12                                      ; preds = %8
  br label %13

; <label>:13                                      ; preds = %12
  br label %14

; <label>:14                                      ; preds = %13, %11, %10
  %15 = load i32, i32* %1, !dbg !1683
  ret i32 %15, !dbg !1683
}

; Function Attrs: nounwind ssp uwtable
define i32 @IoQueryDeviceDescription(i32 %BusType, i32 %BusNumber, i32 %ControllerType, i32 %ControllerNumber, i32 %PeripheralType, i32 %PeripheralNumber, i32 %CalloutRoutine, i32 %Context) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %tmp_ndt_4 = alloca i32, align 4
  store i32 %BusType, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !996, metadata !112), !dbg !1684
  store i32 %BusNumber, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1003, metadata !112), !dbg !1685
  store i32 %ControllerType, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1005, metadata !112), !dbg !1686
  store i32 %ControllerNumber, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1007, metadata !112), !dbg !1687
  store i32 %PeripheralType, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1009, metadata !112), !dbg !1688
  store i32 %PeripheralNumber, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1011, metadata !112), !dbg !1689
  store i32 %CalloutRoutine, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1013, metadata !112), !dbg !1690
  store i32 %Context, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1015, metadata !112), !dbg !1691
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_4, metadata !1017, metadata !112), !dbg !1692
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !1693
  store i32 %10, i32* %tmp_ndt_4, align 4, !dbg !1694
  %11 = load i32, i32* %tmp_ndt_4, align 4, !dbg !1695
  %12 = icmp eq i32 %11, 0, !dbg !1696
  br i1 %12, label %13, label %14, !dbg !1697

; <label>:13                                      ; preds = %0
  br label %17, !dbg !1698

; <label>:14                                      ; preds = %0
  br label %18, !dbg !1700
                                                  ; No predecessors!
  br i1 false, label %16, label %19, !dbg !1701

; <label>:16                                      ; preds = %15
  br label %17, !dbg !1702

; <label>:17                                      ; preds = %16, %13
  store i32 0, i32* %1, !dbg !1703
  br label %21, !dbg !1703

; <label>:18                                      ; preds = %14
  store i32 -1073741823, i32* %1, !dbg !1704
  br label %21, !dbg !1704

; <label>:19                                      ; preds = %15
  br label %20

; <label>:20                                      ; preds = %19
  br label %21

; <label>:21                                      ; preds = %20, %18, %17
  %22 = load i32, i32* %1, !dbg !1705
  ret i32 %22, !dbg !1705
}

; Function Attrs: nounwind ssp uwtable
define i32 @IoRegisterDeviceInterface(i32 %PhysicalDeviceObject, i32 %InterfaceClassGuid, i32 %ReferenceString, i32 %SymbolicLinkName) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %tmp_ndt_5 = alloca i32, align 4
  store i32 %PhysicalDeviceObject, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1020, metadata !112), !dbg !1706
  store i32 %InterfaceClassGuid, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1026, metadata !112), !dbg !1707
  store i32 %ReferenceString, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1028, metadata !112), !dbg !1708
  store i32 %SymbolicLinkName, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1030, metadata !112), !dbg !1709
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_5, metadata !1032, metadata !112), !dbg !1710
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !1711
  store i32 %6, i32* %tmp_ndt_5, align 4, !dbg !1712
  %7 = load i32, i32* %tmp_ndt_5, align 4, !dbg !1713
  %8 = icmp eq i32 %7, 0, !dbg !1714
  br i1 %8, label %9, label %10, !dbg !1715

; <label>:9                                       ; preds = %0
  br label %13, !dbg !1716

; <label>:10                                      ; preds = %0
  br label %14, !dbg !1718
                                                  ; No predecessors!
  br i1 false, label %12, label %15, !dbg !1719

; <label>:12                                      ; preds = %11
  br label %13, !dbg !1720

; <label>:13                                      ; preds = %12, %9
  store i32 0, i32* %1, !dbg !1721
  br label %17, !dbg !1721

; <label>:14                                      ; preds = %10
  store i32 -1073741808, i32* %1, !dbg !1722
  br label %17, !dbg !1722

; <label>:15                                      ; preds = %11
  br label %16

; <label>:16                                      ; preds = %15
  br label %17

; <label>:17                                      ; preds = %16, %14, %13
  %18 = load i32, i32* %1, !dbg !1723
  ret i32 %18, !dbg !1723
}

; Function Attrs: nounwind ssp uwtable
define i32 @IoSetDeviceInterfaceState(i32 %SymbolicLinkName, i32 %Enable) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %tmp_ndt_6 = alloca i32, align 4
  store i32 %SymbolicLinkName, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !419, metadata !112), !dbg !1724
  store i32 %Enable, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !425, metadata !112), !dbg !1725
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_6, metadata !427, metadata !112), !dbg !1726
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !1727
  store i32 %4, i32* %tmp_ndt_6, align 4, !dbg !1728
  %5 = load i32, i32* %tmp_ndt_6, align 4, !dbg !1729
  %6 = icmp eq i32 %5, 0, !dbg !1730
  br i1 %6, label %7, label %8, !dbg !1731

; <label>:7                                       ; preds = %0
  br label %11, !dbg !1732

; <label>:8                                       ; preds = %0
  br label %12, !dbg !1734
                                                  ; No predecessors!
  br i1 false, label %10, label %13, !dbg !1735

; <label>:10                                      ; preds = %9
  br label %11, !dbg !1736

; <label>:11                                      ; preds = %10, %7
  store i32 0, i32* %1, !dbg !1737
  br label %15, !dbg !1737

; <label>:12                                      ; preds = %8
  store i32 -1073741823, i32* %1, !dbg !1738
  br label %15, !dbg !1738

; <label>:13                                      ; preds = %9
  br label %14

; <label>:14                                      ; preds = %13
  br label %15

; <label>:15                                      ; preds = %14, %12, %11
  %16 = load i32, i32* %1, !dbg !1739
  ret i32 %16, !dbg !1739
}

; Function Attrs: nounwind ssp uwtable
define void @stubMoreProcessingRequired() #0 {
  %1 = load i32, i32* @s, align 4, !dbg !1740
  %2 = load i32, i32* @NP, align 4, !dbg !1743
  %3 = icmp eq i32 %1, %2, !dbg !1744
  br i1 %3, label %4, label %6, !dbg !1745

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* @MPR1, align 4, !dbg !1746
  store i32 %5, i32* @s, align 4, !dbg !1748
  br label %7, !dbg !1749

; <label>:6                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !1750
  unreachable, !dbg !1750

errorFn.exit:                                     ; No predecessors!
  br label %7

; <label>:7                                       ; preds = %errorFn.exit, %4
  ret void, !dbg !1754
}

; Function Attrs: nounwind ssp uwtable
define i32 @IofCallDriver(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %l.i.i = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %returnVal2 = alloca i32, align 4
  %compRetStatus1 = alloca i32, align 4
  %lcontext = alloca i32, align 4
  %__cil_tmp7 = alloca i64, align 8
  %tmp_ndt_7 = alloca i32, align 4
  %tmp_ndt_8 = alloca i32, align 4
  store i32 %DeviceObject, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1755, metadata !112), !dbg !1756
  store i32 %Irp, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1757, metadata !112), !dbg !1758
  call void @llvm.dbg.declare(metadata i32* %returnVal2, metadata !1759, metadata !112), !dbg !1760
  call void @llvm.dbg.declare(metadata i32* %compRetStatus1, metadata !1761, metadata !112), !dbg !1762
  call void @llvm.dbg.declare(metadata i32* %lcontext, metadata !1763, metadata !112), !dbg !1764
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !1765
  store i32 %9, i32* %lcontext, align 4, !dbg !1764
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp7, metadata !1766, metadata !112), !dbg !1767
  %10 = load i32, i32* @compRegistered, align 4, !dbg !1768
  %11 = icmp ne i32 %10, 0, !dbg !1768
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1258, metadata !112), !dbg !1771
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1260, metadata !112), !dbg !1776
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1262, metadata !112), !dbg !1777
  call void @llvm.dbg.declare(metadata i32* %l.i.i, metadata !1264, metadata !112), !dbg !1778
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1241, metadata !112), !dbg !1779
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1243, metadata !112), !dbg !1780
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1245, metadata !112), !dbg !1781
  br i1 %11, label %12, label %44, !dbg !1782

; <label>:12                                      ; preds = %0
  %13 = load i32, i32* %7, align 4, !dbg !1783
  %14 = load i32, i32* %8, align 4, !dbg !1784
  %15 = load i32, i32* %lcontext, align 4, !dbg !1785
  %16 = bitcast i32* %4 to i8*, !dbg !1786
  call void @llvm.lifetime.start(i64 4, i8* %16), !dbg !1786
  %17 = bitcast i32* %5 to i8*, !dbg !1786
  call void @llvm.lifetime.start(i64 4, i8* %17), !dbg !1786
  %18 = bitcast i32* %6 to i8*, !dbg !1786
  call void @llvm.lifetime.start(i64 4, i8* %18), !dbg !1786
  store i32 %13, i32* %4, align 4, !dbg !1786
  store i32 %14, i32* %5, align 4, !dbg !1786
  store i32 %15, i32* %6, align 4, !dbg !1786
  %19 = load i32, i32* %6, align 4, !dbg !1787
  %20 = bitcast i32* %1 to i8*, !dbg !1788
  call void @llvm.lifetime.start(i64 4, i8* %20) #4, !dbg !1788
  %21 = bitcast i32* %2 to i8*, !dbg !1788
  call void @llvm.lifetime.start(i64 4, i8* %21) #4, !dbg !1788
  %22 = bitcast i32* %3 to i8*, !dbg !1788
  call void @llvm.lifetime.start(i64 4, i8* %22) #4, !dbg !1788
  %23 = bitcast i32* %l.i.i to i8*, !dbg !1788
  call void @llvm.lifetime.start(i64 4, i8* %23) #4, !dbg !1788
  store i32 %19, i32* %1, align 4, !dbg !1788
  store i32 1, i32* %2, align 4, !dbg !1788
  store i32 0, i32* %3, align 4, !dbg !1788
  %24 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1789
  store i32 %24, i32* %l.i.i, align 4, !dbg !1778
  store i32 1, i32* @setEventCalled, align 4, !dbg !1790
  %25 = load i32, i32* %l.i.i, align 4, !dbg !1791
  %26 = bitcast i32* %1 to i8*, !dbg !1792
  call void @llvm.lifetime.end(i64 4, i8* %26) #4, !dbg !1792
  %27 = bitcast i32* %2 to i8*, !dbg !1792
  call void @llvm.lifetime.end(i64 4, i8* %27) #4, !dbg !1792
  %28 = bitcast i32* %3 to i8*, !dbg !1792
  call void @llvm.lifetime.end(i64 4, i8* %28) #4, !dbg !1792
  %29 = bitcast i32* %l.i.i to i8*, !dbg !1792
  call void @llvm.lifetime.end(i64 4, i8* %29) #4, !dbg !1792
  %30 = bitcast i32* %4 to i8*, !dbg !1793
  call void @llvm.lifetime.end(i64 4, i8* %30), !dbg !1793
  %31 = bitcast i32* %5 to i8*, !dbg !1793
  call void @llvm.lifetime.end(i64 4, i8* %31), !dbg !1793
  %32 = bitcast i32* %6 to i8*, !dbg !1793
  call void @llvm.lifetime.end(i64 4, i8* %32), !dbg !1793
  store i32 -1073741802, i32* %compRetStatus1, align 4, !dbg !1794
  %33 = load i32, i32* %compRetStatus1, align 4, !dbg !1795
  %34 = sext i32 %33 to i64, !dbg !1797
  store i64 %34, i64* %__cil_tmp7, align 8, !dbg !1798
  %35 = load i64, i64* %__cil_tmp7, align 8, !dbg !1799
  %36 = icmp eq i64 %35, -1073741802, !dbg !1801
  br i1 %36, label %37, label %43, !dbg !1802

; <label>:37                                      ; preds = %12
  %38 = load i32, i32* @s, align 4, !dbg !1803
  %39 = load i32, i32* @NP, align 4, !dbg !1807
  %40 = icmp eq i32 %38, %39, !dbg !1808
  br i1 %40, label %stubMoreProcessingRequired.exit, label %41, !dbg !1809

; <label>:41                                      ; preds = %37
  call void (...) @__VERIFIER_error() #6, !dbg !1810
  unreachable, !dbg !1810

stubMoreProcessingRequired.exit:                  ; preds = %37
  %42 = load i32, i32* @MPR1, align 4, !dbg !1812
  store i32 %42, i32* @s, align 4, !dbg !1813
  br label %43, !dbg !1814

; <label>:43                                      ; preds = %stubMoreProcessingRequired.exit, %12
  br label %44, !dbg !1815

; <label>:44                                      ; preds = %43, %0
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_7, metadata !1816, metadata !112), !dbg !1817
  %45 = call i32 @__VERIFIER_nondet_int(), !dbg !1818
  store i32 %45, i32* %tmp_ndt_7, align 4, !dbg !1819
  %46 = load i32, i32* %tmp_ndt_7, align 4, !dbg !1820
  %47 = icmp eq i32 %46, 0, !dbg !1822
  br i1 %47, label %48, label %49, !dbg !1823

; <label>:48                                      ; preds = %44
  br label %57, !dbg !1824

; <label>:49                                      ; preds = %44
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_8, metadata !1826, metadata !112), !dbg !1828
  %50 = call i32 @__VERIFIER_nondet_int(), !dbg !1829
  store i32 %50, i32* %tmp_ndt_8, align 4, !dbg !1830
  %51 = load i32, i32* %tmp_ndt_8, align 4, !dbg !1831
  %52 = icmp eq i32 %51, 1, !dbg !1833
  br i1 %52, label %53, label %54, !dbg !1834

; <label>:53                                      ; preds = %49
  br label %58, !dbg !1835

; <label>:54                                      ; preds = %49
  br label %59, !dbg !1837
                                                  ; No predecessors!
  br i1 false, label %56, label %60, !dbg !1839

; <label>:56                                      ; preds = %55
  br label %57, !dbg !1840

; <label>:57                                      ; preds = %56, %48
  store i32 0, i32* %returnVal2, align 4, !dbg !1842
  br label %61, !dbg !1844

; <label>:58                                      ; preds = %53
  store i32 -1073741823, i32* %returnVal2, align 4, !dbg !1845
  br label %61, !dbg !1846

; <label>:59                                      ; preds = %54
  store i32 259, i32* %returnVal2, align 4, !dbg !1847
  br label %61, !dbg !1848

; <label>:60                                      ; preds = %55
  br label %61, !dbg !1849

; <label>:61                                      ; preds = %60, %59, %58, %57
  br label %62

; <label>:62                                      ; preds = %61
  br label %63

; <label>:63                                      ; preds = %62
  br label %64

; <label>:64                                      ; preds = %63
  %65 = load i32, i32* @s, align 4, !dbg !1850
  %66 = load i32, i32* @NP, align 4, !dbg !1852
  %67 = icmp eq i32 %65, %66, !dbg !1853
  br i1 %67, label %68, label %71, !dbg !1854

; <label>:68                                      ; preds = %64
  %69 = load i32, i32* @IPC, align 4, !dbg !1855
  store i32 %69, i32* @s, align 4, !dbg !1857
  %70 = load i32, i32* %returnVal2, align 4, !dbg !1858
  store i32 %70, i32* @lowerDriverReturn, align 4, !dbg !1859
  br label %95, !dbg !1860

; <label>:71                                      ; preds = %64
  %72 = load i32, i32* @s, align 4, !dbg !1861
  %73 = load i32, i32* @MPR1, align 4, !dbg !1864
  %74 = icmp eq i32 %72, %73, !dbg !1865
  br i1 %74, label %75, label %85, !dbg !1866

; <label>:75                                      ; preds = %71
  %76 = load i32, i32* %returnVal2, align 4, !dbg !1867
  %77 = icmp eq i32 %76, 259, !dbg !1870
  br i1 %77, label %78, label %81, !dbg !1871

; <label>:78                                      ; preds = %75
  %79 = load i32, i32* @MPR3, align 4, !dbg !1872
  store i32 %79, i32* @s, align 4, !dbg !1874
  %80 = load i32, i32* %returnVal2, align 4, !dbg !1875
  store i32 %80, i32* @lowerDriverReturn, align 4, !dbg !1876
  br label %84, !dbg !1877

; <label>:81                                      ; preds = %75
  %82 = load i32, i32* @NP, align 4, !dbg !1878
  store i32 %82, i32* @s, align 4, !dbg !1880
  %83 = load i32, i32* %returnVal2, align 4, !dbg !1881
  store i32 %83, i32* @lowerDriverReturn, align 4, !dbg !1882
  br label %84

; <label>:84                                      ; preds = %81, %78
  br label %94, !dbg !1883

; <label>:85                                      ; preds = %71
  %86 = load i32, i32* @s, align 4, !dbg !1884
  %87 = load i32, i32* @SKIP1, align 4, !dbg !1887
  %88 = icmp eq i32 %86, %87, !dbg !1888
  br i1 %88, label %89, label %92, !dbg !1889

; <label>:89                                      ; preds = %85
  %90 = load i32, i32* @SKIP2, align 4, !dbg !1890
  store i32 %90, i32* @s, align 4, !dbg !1892
  %91 = load i32, i32* %returnVal2, align 4, !dbg !1893
  store i32 %91, i32* @lowerDriverReturn, align 4, !dbg !1894
  br label %93, !dbg !1895

; <label>:92                                      ; preds = %85
  call void (...) @__VERIFIER_error() #6, !dbg !1896
  unreachable, !dbg !1896

errorFn.exit:                                     ; No predecessors!
  br label %93

; <label>:93                                      ; preds = %errorFn.exit, %89
  br label %94

; <label>:94                                      ; preds = %93, %84
  br label %95

; <label>:95                                      ; preds = %94, %68
  %96 = load i32, i32* %returnVal2, align 4, !dbg !1900
  ret i32 %96, !dbg !1901
}

; Function Attrs: nounwind ssp uwtable
define i32 @KeSetEvent(i32 %Event, i32 %Increment, i32 %Wait) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 %Event, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1258, metadata !112), !dbg !1902
  store i32 %Increment, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1260, metadata !112), !dbg !1903
  store i32 %Wait, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1262, metadata !112), !dbg !1904
  call void @llvm.dbg.declare(metadata i32* %l, metadata !1264, metadata !112), !dbg !1905
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !1906
  store i32 %4, i32* %l, align 4, !dbg !1905
  store i32 1, i32* @setEventCalled, align 4, !dbg !1907
  %5 = load i32, i32* %l, align 4, !dbg !1908
  ret i32 %5, !dbg !1909
}

; Function Attrs: nounwind ssp uwtable
define i32 @KeWaitForSingleObject(i32 %Object, i32 %WaitReason, i32 %WaitMode, i32 %Alertable, i32 %Timeout) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %tmp_ndt_9 = alloca i32, align 4
  store i32 %Object, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1910, metadata !112), !dbg !1911
  store i32 %WaitReason, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1912, metadata !112), !dbg !1913
  store i32 %WaitMode, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1914, metadata !112), !dbg !1915
  store i32 %Alertable, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1916, metadata !112), !dbg !1917
  store i32 %Timeout, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1918, metadata !112), !dbg !1919
  %7 = load i32, i32* @s, align 4, !dbg !1920
  %8 = load i32, i32* @MPR3, align 4, !dbg !1923
  %9 = icmp eq i32 %7, %8, !dbg !1924
  br i1 %9, label %10, label %17, !dbg !1925

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* @setEventCalled, align 4, !dbg !1926
  %12 = icmp eq i32 %11, 1, !dbg !1929
  br i1 %12, label %13, label %15, !dbg !1930

; <label>:13                                      ; preds = %10
  %14 = load i32, i32* @NP, align 4, !dbg !1931
  store i32 %14, i32* @s, align 4, !dbg !1933
  store i32 0, i32* @setEventCalled, align 4, !dbg !1934
  br label %16, !dbg !1935

; <label>:15                                      ; preds = %10
  br label %18, !dbg !1936

; <label>:16                                      ; preds = %13
  br label %30, !dbg !1938

; <label>:17                                      ; preds = %0
  br label %18, !dbg !1939

; <label>:18                                      ; preds = %17, %15
  %19 = load i32, i32* @customIrp, align 4, !dbg !1940
  %20 = icmp eq i32 %19, 1, !dbg !1943
  br i1 %20, label %21, label %23, !dbg !1944

; <label>:21                                      ; preds = %18
  %22 = load i32, i32* @NP, align 4, !dbg !1945
  store i32 %22, i32* @s, align 4, !dbg !1947
  store i32 0, i32* @customIrp, align 4, !dbg !1948
  br label %29, !dbg !1949

; <label>:23                                      ; preds = %18
  %24 = load i32, i32* @s, align 4, !dbg !1950
  %25 = load i32, i32* @MPR3, align 4, !dbg !1953
  %26 = icmp eq i32 %24, %25, !dbg !1954
  br i1 %26, label %27, label %28, !dbg !1955

; <label>:27                                      ; preds = %23
  call void (...) @__VERIFIER_error() #6, !dbg !1956
  unreachable, !dbg !1956

errorFn.exit:                                     ; No predecessors!
  br label %28, !dbg !1960

; <label>:28                                      ; preds = %errorFn.exit, %23
  br label %29

; <label>:29                                      ; preds = %28, %21
  br label %30

; <label>:30                                      ; preds = %29, %16
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_9, metadata !1961, metadata !112), !dbg !1962
  %31 = call i32 @__VERIFIER_nondet_int(), !dbg !1963
  store i32 %31, i32* %tmp_ndt_9, align 4, !dbg !1964
  %32 = load i32, i32* %tmp_ndt_9, align 4, !dbg !1965
  %33 = icmp eq i32 %32, 0, !dbg !1967
  br i1 %33, label %34, label %35, !dbg !1968

; <label>:34                                      ; preds = %30
  br label %38, !dbg !1969

; <label>:35                                      ; preds = %30
  br label %39, !dbg !1971
                                                  ; No predecessors!
  br i1 false, label %37, label %40, !dbg !1973

; <label>:37                                      ; preds = %36
  br label %38, !dbg !1974

; <label>:38                                      ; preds = %37, %34
  store i32 0, i32* %1, !dbg !1976
  br label %42, !dbg !1976

; <label>:39                                      ; preds = %35
  store i32 -1073741823, i32* %1, !dbg !1978
  br label %42, !dbg !1978

; <label>:40                                      ; preds = %36
  br label %41

; <label>:41                                      ; preds = %40
  br label %42

; <label>:42                                      ; preds = %41, %39, %38
  %43 = load i32, i32* %1, !dbg !1979
  ret i32 %43, !dbg !1979
}

; Function Attrs: nounwind ssp uwtable
define i32 @ObReferenceObjectByHandle(i32 %Handle, i32 %DesiredAccess, i32 %ObjectType, i32 %AccessMode, i32 %Object, i32 %HandleInformation) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %tmp_ndt_10 = alloca i32, align 4
  store i32 %Handle, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !174, metadata !112), !dbg !1980
  store i32 %DesiredAccess, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !178, metadata !112), !dbg !1981
  store i32 %ObjectType, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !180, metadata !112), !dbg !1982
  store i32 %AccessMode, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !182, metadata !112), !dbg !1983
  store i32 %Object, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !184, metadata !112), !dbg !1984
  store i32 %HandleInformation, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !186, metadata !112), !dbg !1985
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_10, metadata !188, metadata !112), !dbg !1986
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !1987
  store i32 %8, i32* %tmp_ndt_10, align 4, !dbg !1988
  %9 = load i32, i32* %tmp_ndt_10, align 4, !dbg !1989
  %10 = icmp eq i32 %9, 0, !dbg !1990
  br i1 %10, label %11, label %12, !dbg !1991

; <label>:11                                      ; preds = %0
  br label %15, !dbg !1992

; <label>:12                                      ; preds = %0
  br label %16, !dbg !1994
                                                  ; No predecessors!
  br i1 false, label %14, label %17, !dbg !1995

; <label>:14                                      ; preds = %13
  br label %15, !dbg !1996

; <label>:15                                      ; preds = %14, %11
  store i32 0, i32* %1, !dbg !1997
  br label %19, !dbg !1997

; <label>:16                                      ; preds = %12
  store i32 -1073741823, i32* %1, !dbg !1998
  br label %19, !dbg !1998

; <label>:17                                      ; preds = %13
  br label %18

; <label>:18                                      ; preds = %17
  br label %19

; <label>:19                                      ; preds = %18, %16, %15
  %20 = load i32, i32* %1, !dbg !1999
  ret i32 %20, !dbg !1999
}

; Function Attrs: nounwind ssp uwtable
define i32 @PsCreateSystemThread(i32 %ThreadHandle, i32 %DesiredAccess, i32 %ObjectAttributes, i32 %ProcessHandle, i32 %ClientId, i32 %StartRoutine, i32 %StartContext) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %tmp_ndt_11 = alloca i32, align 4
  store i32 %ThreadHandle, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !153, metadata !112), !dbg !2000
  store i32 %DesiredAccess, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !159, metadata !112), !dbg !2001
  store i32 %ObjectAttributes, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !161, metadata !112), !dbg !2002
  store i32 %ProcessHandle, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !163, metadata !112), !dbg !2003
  store i32 %ClientId, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !165, metadata !112), !dbg !2004
  store i32 %StartRoutine, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !167, metadata !112), !dbg !2005
  store i32 %StartContext, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !169, metadata !112), !dbg !2006
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_11, metadata !171, metadata !112), !dbg !2007
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !2008
  store i32 %9, i32* %tmp_ndt_11, align 4, !dbg !2009
  %10 = load i32, i32* %tmp_ndt_11, align 4, !dbg !2010
  %11 = icmp eq i32 %10, 0, !dbg !2011
  br i1 %11, label %12, label %13, !dbg !2012

; <label>:12                                      ; preds = %0
  br label %16, !dbg !2013

; <label>:13                                      ; preds = %0
  br label %17, !dbg !2015
                                                  ; No predecessors!
  br i1 false, label %15, label %18, !dbg !2016

; <label>:15                                      ; preds = %14
  br label %16, !dbg !2017

; <label>:16                                      ; preds = %15, %12
  store i32 0, i32* %1, !dbg !2018
  br label %20, !dbg !2018

; <label>:17                                      ; preds = %13
  store i32 -1073741823, i32* %1, !dbg !2019
  br label %20, !dbg !2019

; <label>:18                                      ; preds = %14
  br label %19

; <label>:19                                      ; preds = %18
  br label %20

; <label>:20                                      ; preds = %19, %17, %16
  %21 = load i32, i32* %1, !dbg !2020
  ret i32 %21, !dbg !2020
}

; Function Attrs: nounwind ssp uwtable
define i32 @ZwClose(i32 %Handle) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %tmp_ndt_12 = alloca i32, align 4
  store i32 %Handle, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !191, metadata !112), !dbg !2021
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_12, metadata !194, metadata !112), !dbg !2022
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !2023
  store i32 %3, i32* %tmp_ndt_12, align 4, !dbg !2024
  %4 = load i32, i32* %tmp_ndt_12, align 4, !dbg !2025
  %5 = icmp eq i32 %4, 0, !dbg !2026
  br i1 %5, label %6, label %7, !dbg !2027

; <label>:6                                       ; preds = %0
  br label %10, !dbg !2028

; <label>:7                                       ; preds = %0
  br label %11, !dbg !2030
                                                  ; No predecessors!
  br i1 false, label %9, label %12, !dbg !2031

; <label>:9                                       ; preds = %8
  br label %10, !dbg !2032

; <label>:10                                      ; preds = %9, %6
  store i32 0, i32* %1, !dbg !2033
  br label %14, !dbg !2033

; <label>:11                                      ; preds = %7
  store i32 -1073741823, i32* %1, !dbg !2034
  br label %14, !dbg !2034

; <label>:12                                      ; preds = %8
  br label %13

; <label>:13                                      ; preds = %12
  br label %14

; <label>:14                                      ; preds = %13, %11, %10
  %15 = load i32, i32* %1, !dbg !2035
  ret i32 %15, !dbg !2035
}

; Function Attrs: nounwind ssp uwtable
define i32 @FloppyCreateClose(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %Irp__IoStatus__Status = alloca i32, align 4
  %Irp__IoStatus__Information = alloca i32, align 4
  store i32 %DeviceObject, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2036, metadata !112), !dbg !2037
  store i32 %Irp, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2038, metadata !112), !dbg !2039
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !2040, metadata !112), !dbg !2041
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !2042, metadata !112), !dbg !2043
  store i32 0, i32* @myStatus, align 4, !dbg !2044
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !2047
  store i32 1, i32* %Irp__IoStatus__Information, align 4, !dbg !2048
  %5 = load i32, i32* %4, align 4, !dbg !2049
  %6 = bitcast i32* %1 to i8*, !dbg !2050
  call void @llvm.lifetime.start(i64 4, i8* %6), !dbg !2050
  %7 = bitcast i32* %2 to i8*, !dbg !2050
  call void @llvm.lifetime.start(i64 4, i8* %7), !dbg !2050
  store i32 %5, i32* %1, align 4, !dbg !2050
  store i32 0, i32* %2, align 4, !dbg !2050
  %8 = load i32, i32* @s, align 4, !dbg !2051
  %9 = load i32, i32* @NP, align 4, !dbg !2053
  %10 = icmp eq i32 %8, %9, !dbg !2054
  br i1 %10, label %IofCompleteRequest.exit, label %11, !dbg !2055

; <label>:11                                      ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !2056
  unreachable, !dbg !2056

IofCompleteRequest.exit:                          ; preds = %0
  %12 = load i32, i32* @DC, align 4, !dbg !2058
  store i32 %12, i32* @s, align 4, !dbg !2059
  %13 = bitcast i32* %1 to i8*, !dbg !2060
  call void @llvm.lifetime.end(i64 4, i8* %13), !dbg !2060
  %14 = bitcast i32* %2 to i8*, !dbg !2060
  call void @llvm.lifetime.end(i64 4, i8* %14), !dbg !2060
  call void @llvm.dbg.declare(metadata i32* %1, metadata !382, metadata !112), !dbg !2061
  call void @llvm.dbg.declare(metadata i32* %2, metadata !388, metadata !112), !dbg !2062
  ret i32 0, !dbg !2063
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!86, !87, !88}
!llvm.ident = !{!89}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !59)
!1 = !DIFile(filename: "svcomp16/ntdrivers-simplified/floppy_simpl3_true-unreach-call_true-termination.cil.c", directory: ".")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!6 = !{!7, !10, !11, !15, !16, !17, !18, !21, !22, !25, !26, !29, !32, !35, !38, !41, !42, !43, !44, !47, !48, !51, !54, !57, !58}
!7 = !DISubprogram(name: "errorFn", scope: !1, file: !1, line: 34, type: !8, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @errorFn, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !DISubprogram(name: "_BLAST_init", scope: !1, file: !1, line: 43, type: !8, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @_BLAST_init, variables: !2)
!11 = !DISubprogram(name: "FlAcpiConfigureFloppy", scope: !1, file: !1, line: 66, type: !12, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @FlAcpiConfigureFloppy, variables: !2)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14, !14}
!14 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!15 = !DISubprogram(name: "FlQueueIrpToThread", scope: !1, file: !1, line: 73, type: !12, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @FlQueueIrpToThread, variables: !2)
!16 = !DISubprogram(name: "FloppyPnp", scope: !1, file: !1, line: 136, type: !12, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @FloppyPnp, variables: !2)
!17 = !DISubprogram(name: "FloppyStartDevice", scope: !1, file: !1, line: 410, type: !12, isLocal: false, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @FloppyStartDevice, variables: !2)
!18 = !DISubprogram(name: "FloppyPnpComplete", scope: !1, file: !1, line: 578, type: !19, isLocal: false, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @FloppyPnpComplete, variables: !2)
!19 = !DISubroutineType(types: !20)
!20 = !{!14, !14, !14, !14}
!21 = !DISubprogram(name: "FlFdcDeviceIo", scope: !1, file: !1, line: 588, type: !19, isLocal: false, isDefinition: true, scopeLine: 589, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @FlFdcDeviceIo, variables: !2)
!22 = !DISubprogram(name: "FloppyProcessQueuedRequests", scope: !1, file: !1, line: 623, type: !23, isLocal: false, isDefinition: true, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @FloppyProcessQueuedRequests, variables: !2)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !14}
!25 = !DISubprogram(name: "stub_driver_init", scope: !1, file: !1, line: 630, type: !8, isLocal: false, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stub_driver_init, variables: !2)
!26 = !DISubprogram(name: "main", scope: !1, file: !1, line: 643, type: !27, isLocal: false, isDefinition: true, scopeLine: 644, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !2)
!27 = !DISubroutineType(types: !28)
!28 = !{!14}
!29 = !DISubprogram(name: "IoBuildDeviceIoControlRequest", scope: !1, file: !1, line: 783, type: !30, isLocal: false, isDefinition: true, scopeLine: 786, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)* @IoBuildDeviceIoControlRequest, variables: !2)
!30 = !DISubroutineType(types: !31)
!31 = !{!14, !14, !14, !14, !14, !14, !14, !14, !14, !14}
!32 = !DISubprogram(name: "IoDeleteSymbolicLink", scope: !1, file: !1, line: 808, type: !33, isLocal: false, isDefinition: true, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32)* @IoDeleteSymbolicLink, variables: !2)
!33 = !DISubroutineType(types: !34)
!34 = !{!14, !14}
!35 = !DISubprogram(name: "IoQueryDeviceDescription", scope: !1, file: !1, line: 829, type: !36, isLocal: false, isDefinition: true, scopeLine: 832, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32, i32, i32, i32)* @IoQueryDeviceDescription, variables: !2)
!36 = !DISubroutineType(types: !37)
!37 = !{!14, !14, !14, !14, !14, !14, !14, !14, !14}
!38 = !DISubprogram(name: "IoRegisterDeviceInterface", scope: !1, file: !1, line: 852, type: !39, isLocal: false, isDefinition: true, scopeLine: 854, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32)* @IoRegisterDeviceInterface, variables: !2)
!39 = !DISubroutineType(types: !40)
!40 = !{!14, !14, !14, !14, !14}
!41 = !DISubprogram(name: "IoSetDeviceInterfaceState", scope: !1, file: !1, line: 874, type: !12, isLocal: false, isDefinition: true, scopeLine: 875, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @IoSetDeviceInterfaceState, variables: !2)
!42 = !DISubprogram(name: "stubMoreProcessingRequired", scope: !1, file: !1, line: 895, type: !8, isLocal: false, isDefinition: true, scopeLine: 896, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stubMoreProcessingRequired, variables: !2)
!43 = !DISubprogram(name: "IofCallDriver", scope: !1, file: !1, line: 909, type: !12, isLocal: false, isDefinition: true, scopeLine: 910, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @IofCallDriver, variables: !2)
!44 = !DISubprogram(name: "IofCompleteRequest", scope: !1, file: !1, line: 982, type: !45, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: false, function: void (i32, i32)* @IofCompleteRequest, variables: !2)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !14, !14}
!47 = !DISubprogram(name: "KeSetEvent", scope: !1, file: !1, line: 996, type: !19, isLocal: false, isDefinition: true, scopeLine: 997, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @KeSetEvent, variables: !2)
!48 = !DISubprogram(name: "KeWaitForSingleObject", scope: !1, file: !1, line: 1004, type: !49, isLocal: false, isDefinition: true, scopeLine: 1006, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32)* @KeWaitForSingleObject, variables: !2)
!49 = !DISubroutineType(types: !50)
!50 = !{!14, !14, !14, !14, !14, !14}
!51 = !DISubprogram(name: "ObReferenceObjectByHandle", scope: !1, file: !1, line: 1046, type: !52, isLocal: false, isDefinition: true, scopeLine: 1048, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32, i32)* @ObReferenceObjectByHandle, variables: !2)
!52 = !DISubroutineType(types: !53)
!53 = !{!14, !14, !14, !14, !14, !14, !14}
!54 = !DISubprogram(name: "PsCreateSystemThread", scope: !1, file: !1, line: 1068, type: !55, isLocal: false, isDefinition: true, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32, i32, i32)* @PsCreateSystemThread, variables: !2)
!55 = !DISubroutineType(types: !56)
!56 = !{!14, !14, !14, !14, !14, !14, !14, !14}
!57 = !DISubprogram(name: "ZwClose", scope: !1, file: !1, line: 1090, type: !33, isLocal: false, isDefinition: true, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32)* @ZwClose, variables: !2)
!58 = !DISubprogram(name: "FloppyCreateClose", scope: !1, file: !1, line: 1111, type: !12, isLocal: false, isDefinition: true, scopeLine: 1112, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @FloppyCreateClose, variables: !2)
!59 = !{!60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85}
!60 = !DIGlobalVariable(name: "PagingReferenceCount", scope: !0, file: !1, line: 64, type: !14, isLocal: false, isDefinition: true, variable: i32* @PagingReferenceCount)
!61 = !DIGlobalVariable(name: "PagingMutex", scope: !0, file: !1, line: 65, type: !14, isLocal: false, isDefinition: true, variable: i32* @PagingMutex)
!62 = !DIGlobalVariable(name: "FloppyThread", scope: !0, file: !1, line: 9, type: !14, isLocal: false, isDefinition: true, variable: i32* @FloppyThread)
!63 = !DIGlobalVariable(name: "KernelMode", scope: !0, file: !1, line: 10, type: !14, isLocal: false, isDefinition: true, variable: i32* @KernelMode)
!64 = !DIGlobalVariable(name: "Suspended", scope: !0, file: !1, line: 11, type: !14, isLocal: false, isDefinition: true, variable: i32* @Suspended)
!65 = !DIGlobalVariable(name: "Executive", scope: !0, file: !1, line: 12, type: !14, isLocal: false, isDefinition: true, variable: i32* @Executive)
!66 = !DIGlobalVariable(name: "DiskController", scope: !0, file: !1, line: 13, type: !14, isLocal: false, isDefinition: true, variable: i32* @DiskController)
!67 = !DIGlobalVariable(name: "FloppyDiskPeripheral", scope: !0, file: !1, line: 14, type: !14, isLocal: false, isDefinition: true, variable: i32* @FloppyDiskPeripheral)
!68 = !DIGlobalVariable(name: "FlConfigCallBack", scope: !0, file: !1, line: 15, type: !14, isLocal: false, isDefinition: true, variable: i32* @FlConfigCallBack)
!69 = !DIGlobalVariable(name: "MaximumInterfaceType", scope: !0, file: !1, line: 16, type: !14, isLocal: false, isDefinition: true, variable: i32* @MaximumInterfaceType)
!70 = !DIGlobalVariable(name: "MOUNTDEV_MOUNTED_DEVICE_GUID", scope: !0, file: !1, line: 17, type: !14, isLocal: false, isDefinition: true, variable: i32* @MOUNTDEV_MOUNTED_DEVICE_GUID)
!71 = !DIGlobalVariable(name: "myStatus", scope: !0, file: !1, line: 18, type: !14, isLocal: false, isDefinition: true, variable: i32* @myStatus)
!72 = !DIGlobalVariable(name: "s", scope: !0, file: !1, line: 19, type: !14, isLocal: false, isDefinition: true, variable: i32* @s)
!73 = !DIGlobalVariable(name: "UNLOADED", scope: !0, file: !1, line: 20, type: !14, isLocal: false, isDefinition: true, variable: i32* @UNLOADED)
!74 = !DIGlobalVariable(name: "NP", scope: !0, file: !1, line: 21, type: !14, isLocal: false, isDefinition: true, variable: i32* @NP)
!75 = !DIGlobalVariable(name: "DC", scope: !0, file: !1, line: 22, type: !14, isLocal: false, isDefinition: true, variable: i32* @DC)
!76 = !DIGlobalVariable(name: "SKIP1", scope: !0, file: !1, line: 23, type: !14, isLocal: false, isDefinition: true, variable: i32* @SKIP1)
!77 = !DIGlobalVariable(name: "SKIP2", scope: !0, file: !1, line: 24, type: !14, isLocal: false, isDefinition: true, variable: i32* @SKIP2)
!78 = !DIGlobalVariable(name: "MPR1", scope: !0, file: !1, line: 25, type: !14, isLocal: false, isDefinition: true, variable: i32* @MPR1)
!79 = !DIGlobalVariable(name: "MPR3", scope: !0, file: !1, line: 26, type: !14, isLocal: false, isDefinition: true, variable: i32* @MPR3)
!80 = !DIGlobalVariable(name: "IPC", scope: !0, file: !1, line: 27, type: !14, isLocal: false, isDefinition: true, variable: i32* @IPC)
!81 = !DIGlobalVariable(name: "pended", scope: !0, file: !1, line: 28, type: !14, isLocal: false, isDefinition: true, variable: i32* @pended)
!82 = !DIGlobalVariable(name: "compRegistered", scope: !0, file: !1, line: 29, type: !14, isLocal: false, isDefinition: true, variable: i32* @compRegistered)
!83 = !DIGlobalVariable(name: "lowerDriverReturn", scope: !0, file: !1, line: 30, type: !14, isLocal: false, isDefinition: true, variable: i32* @lowerDriverReturn)
!84 = !DIGlobalVariable(name: "setEventCalled", scope: !0, file: !1, line: 31, type: !14, isLocal: false, isDefinition: true, variable: i32* @setEventCalled)
!85 = !DIGlobalVariable(name: "customIrp", scope: !0, file: !1, line: 32, type: !14, isLocal: false, isDefinition: true, variable: i32* @customIrp)
!86 = !{i32 2, !"Dwarf Version", i32 2}
!87 = !{i32 2, !"Debug Info Version", i32 3}
!88 = !{i32 1, !"PIC Level", i32 2}
!89 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!90 = !DILocation(line: 37, column: 3, scope: !7)
!91 = !DILocation(line: 38, column: 10, scope: !92)
!92 = distinct !DILexicalBlock(scope: !7, file: !1, line: 37, column: 3)
!93 = !DILocation(line: 41, column: 1, scope: !7)
!94 = !DILocation(line: 47, column: 12, scope: !95)
!95 = distinct !DILexicalBlock(scope: !10, file: !1, line: 46, column: 3)
!96 = !DILocation(line: 48, column: 6, scope: !95)
!97 = !DILocation(line: 49, column: 6, scope: !95)
!98 = !DILocation(line: 50, column: 9, scope: !95)
!99 = !DILocation(line: 51, column: 9, scope: !95)
!100 = !DILocation(line: 52, column: 8, scope: !95)
!101 = !DILocation(line: 53, column: 8, scope: !95)
!102 = !DILocation(line: 54, column: 7, scope: !95)
!103 = !DILocation(line: 55, column: 7, scope: !95)
!104 = !DILocation(line: 55, column: 5, scope: !95)
!105 = !DILocation(line: 56, column: 10, scope: !95)
!106 = !DILocation(line: 57, column: 18, scope: !95)
!107 = !DILocation(line: 58, column: 21, scope: !95)
!108 = !DILocation(line: 59, column: 18, scope: !95)
!109 = !DILocation(line: 60, column: 13, scope: !95)
!110 = !DILocation(line: 61, column: 3, scope: !95)
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DisketteExtension", arg: 1, scope: !11, file: !1, line: 66, type: !14)
!112 = !DIExpression()
!113 = !DILocation(line: 66, column: 31, scope: !11)
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "FdcInfo", arg: 2, scope: !11, file: !1, line: 66, type: !14)
!115 = !DILocation(line: 66, column: 55, scope: !11)
!116 = !DILocation(line: 70, column: 3, scope: !117)
!117 = distinct !DILexicalBlock(scope: !11, file: !1, line: 69, column: 3)
!118 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 1, scope: !15, file: !1, line: 73, type: !14)
!119 = !DILocation(line: 73, column: 28, scope: !15)
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DisketteExtension", arg: 2, scope: !15, file: !1, line: 73, type: !14)
!121 = !DILocation(line: 73, column: 38, scope: !15)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !15, file: !1, line: 74, type: !14)
!123 = !DILocation(line: 74, column: 7, scope: !15)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "threadHandle", scope: !15, file: !1, line: 75, type: !14)
!125 = !DILocation(line: 75, column: 7, scope: !15)
!126 = !DILocation(line: 75, column: 22, scope: !15)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DisketteExtension__PoweringDown", scope: !15, file: !1, line: 76, type: !14)
!128 = !DILocation(line: 76, column: 7, scope: !15)
!129 = !DILocation(line: 76, column: 41, scope: !15)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DisketteExtension__ThreadReferenceCount", scope: !15, file: !1, line: 77, type: !14)
!131 = !DILocation(line: 77, column: 7, scope: !15)
!132 = !DILocation(line: 77, column: 49, scope: !15)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DisketteExtension__FloppyThread", scope: !15, file: !1, line: 78, type: !14)
!134 = !DILocation(line: 78, column: 7, scope: !15)
!135 = !DILocation(line: 78, column: 41, scope: !15)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !15, file: !1, line: 79, type: !14)
!137 = !DILocation(line: 79, column: 7, scope: !15)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !15, file: !1, line: 80, type: !14)
!139 = !DILocation(line: 80, column: 7, scope: !15)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation__Control", scope: !15, file: !1, line: 81, type: !14)
!141 = !DILocation(line: 81, column: 7, scope: !15)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ObjAttributes", scope: !15, file: !1, line: 82, type: !14)
!143 = !DILocation(line: 82, column: 7, scope: !15)
!144 = !DILocation(line: 82, column: 23, scope: !15)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp12", scope: !15, file: !1, line: 83, type: !14)
!146 = !DILocation(line: 83, column: 7, scope: !15)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp13", scope: !15, file: !1, line: 84, type: !14)
!148 = !DILocation(line: 84, column: 7, scope: !15)
!149 = !DILocation(line: 87, column: 7, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !1, line: 87, column: 7)
!151 = distinct !DILexicalBlock(scope: !15, file: !1, line: 86, column: 3)
!152 = !DILocation(line: 87, column: 39, scope: !150)
!153 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ThreadHandle", arg: 1, scope: !54, file: !1, line: 1068, type: !14)
!154 = !DILocation(line: 1068, column: 30, scope: !54, inlinedAt: !155)
!155 = distinct !DILocation(line: 101, column: 14, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !1, line: 100, column: 5)
!157 = distinct !DILexicalBlock(scope: !158, file: !1, line: 94, column: 53)
!158 = distinct !DILexicalBlock(scope: !151, file: !1, line: 94, column: 7)
!159 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DesiredAccess", arg: 2, scope: !54, file: !1, line: 1068, type: !14)
!160 = !DILocation(line: 1068, column: 49, scope: !54, inlinedAt: !155)
!161 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ObjectAttributes", arg: 3, scope: !54, file: !1, line: 1068, type: !14)
!162 = !DILocation(line: 1068, column: 69, scope: !54, inlinedAt: !155)
!163 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ProcessHandle", arg: 4, scope: !54, file: !1, line: 1069, type: !14)
!164 = !DILocation(line: 1069, column: 30, scope: !54, inlinedAt: !155)
!165 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ClientId", arg: 5, scope: !54, file: !1, line: 1069, type: !14)
!166 = !DILocation(line: 1069, column: 50, scope: !54, inlinedAt: !155)
!167 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "StartRoutine", arg: 6, scope: !54, file: !1, line: 1069, type: !14)
!168 = !DILocation(line: 1069, column: 65, scope: !54, inlinedAt: !155)
!169 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "StartContext", arg: 7, scope: !54, file: !1, line: 1069, type: !14)
!170 = !DILocation(line: 1069, column: 84, scope: !54, inlinedAt: !155)
!171 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_11", scope: !172, file: !1, line: 1073, type: !14)
!172 = distinct !DILexicalBlock(scope: !54, file: !1, line: 1072, column: 3)
!173 = !DILocation(line: 1073, column: 7, scope: !172, inlinedAt: !155)
!174 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Handle", arg: 1, scope: !51, file: !1, line: 1046, type: !14)
!175 = !DILocation(line: 1046, column: 35, scope: !51, inlinedAt: !176)
!176 = distinct !DILocation(line: 115, column: 14, scope: !177)
!177 = distinct !DILexicalBlock(scope: !157, file: !1, line: 114, column: 5)
!178 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DesiredAccess", arg: 2, scope: !51, file: !1, line: 1046, type: !14)
!179 = !DILocation(line: 1046, column: 48, scope: !51, inlinedAt: !176)
!180 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ObjectType", arg: 3, scope: !51, file: !1, line: 1046, type: !14)
!181 = !DILocation(line: 1046, column: 68, scope: !51, inlinedAt: !176)
!182 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "AccessMode", arg: 4, scope: !51, file: !1, line: 1046, type: !14)
!183 = !DILocation(line: 1046, column: 85, scope: !51, inlinedAt: !176)
!184 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Object", arg: 5, scope: !51, file: !1, line: 1047, type: !14)
!185 = !DILocation(line: 1047, column: 35, scope: !51, inlinedAt: !176)
!186 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "HandleInformation", arg: 6, scope: !51, file: !1, line: 1047, type: !14)
!187 = !DILocation(line: 1047, column: 48, scope: !51, inlinedAt: !176)
!188 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_10", scope: !189, file: !1, line: 1051, type: !14)
!189 = distinct !DILexicalBlock(scope: !51, file: !1, line: 1050, column: 3)
!190 = !DILocation(line: 1051, column: 7, scope: !189, inlinedAt: !176)
!191 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Handle", arg: 1, scope: !57, file: !1, line: 1090, type: !14)
!192 = !DILocation(line: 1090, column: 17, scope: !57, inlinedAt: !193)
!193 = distinct !DILocation(line: 117, column: 5, scope: !177)
!194 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_12", scope: !195, file: !1, line: 1094, type: !14)
!195 = distinct !DILexicalBlock(scope: !57, file: !1, line: 1093, column: 3)
!196 = !DILocation(line: 1094, column: 7, scope: !195, inlinedAt: !193)
!197 = !DILocation(line: 87, column: 7, scope: !151)
!198 = !DILocation(line: 88, column: 14, scope: !199)
!199 = distinct !DILexicalBlock(scope: !150, file: !1, line: 87, column: 45)
!200 = !DILocation(line: 89, column: 27, scope: !199)
!201 = !DILocation(line: 90, column: 32, scope: !199)
!202 = !DILocation(line: 91, column: 5, scope: !199)
!203 = !DILocation(line: 93, column: 43, scope: !151)
!204 = !DILocation(line: 94, column: 7, scope: !158)
!205 = !DILocation(line: 94, column: 47, scope: !158)
!206 = !DILocation(line: 94, column: 7, scope: !151)
!207 = !DILocation(line: 95, column: 45, scope: !157)
!208 = !DILocation(line: 96, column: 26, scope: !157)
!209 = !DILocation(line: 97, column: 9, scope: !210)
!210 = distinct !DILexicalBlock(scope: !157, file: !1, line: 97, column: 9)
!211 = !DILocation(line: 97, column: 30, scope: !210)
!212 = !DILocation(line: 97, column: 9, scope: !157)
!213 = !DILocation(line: 99, column: 5, scope: !214)
!214 = distinct !DILexicalBlock(scope: !210, file: !1, line: 97, column: 36)
!215 = !DILocation(line: 101, column: 35, scope: !156)
!216 = !DILocation(line: 101, column: 52, scope: !156)
!217 = !DILocation(line: 101, column: 73, scope: !156)
!218 = !DILocation(line: 102, column: 35, scope: !156)
!219 = !DILocation(line: 101, column: 14, scope: !156)
!220 = !DILocation(line: 1074, column: 16, scope: !172, inlinedAt: !155)
!221 = !DILocation(line: 1074, column: 14, scope: !172, inlinedAt: !155)
!222 = !DILocation(line: 1075, column: 7, scope: !223, inlinedAt: !155)
!223 = distinct !DILexicalBlock(scope: !172, file: !1, line: 1075, column: 7)
!224 = !DILocation(line: 1075, column: 18, scope: !223, inlinedAt: !155)
!225 = !DILocation(line: 1075, column: 7, scope: !172, inlinedAt: !155)
!226 = !DILocation(line: 1081, column: 7, scope: !227, inlinedAt: !155)
!227 = distinct !DILexicalBlock(scope: !228, file: !1, line: 1079, column: 12)
!228 = distinct !DILexicalBlock(scope: !229, file: !1, line: 1079, column: 9)
!229 = distinct !DILexicalBlock(scope: !223, file: !1, line: 1077, column: 10)
!230 = !DILocation(line: 1083, column: 7, scope: !227, inlinedAt: !155)
!231 = !DILocation(line: 1089, column: 1, scope: !54, inlinedAt: !155)
!232 = !DILocation(line: 101, column: 12, scope: !156)
!233 = !DILocation(line: 105, column: 9, scope: !234)
!234 = distinct !DILexicalBlock(scope: !235, file: !1, line: 105, column: 9)
!235 = distinct !DILexicalBlock(scope: !157, file: !1, line: 104, column: 5)
!236 = !DILocation(line: 105, column: 16, scope: !234)
!237 = !DILocation(line: 105, column: 9, scope: !235)
!238 = !DILocation(line: 106, column: 47, scope: !239)
!239 = distinct !DILexicalBlock(scope: !234, file: !1, line: 105, column: 21)
!240 = !DILocation(line: 107, column: 28, scope: !239)
!241 = !DILocation(line: 108, column: 11, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !1, line: 108, column: 11)
!243 = !DILocation(line: 108, column: 32, scope: !242)
!244 = !DILocation(line: 108, column: 11, scope: !239)
!245 = !DILocation(line: 110, column: 7, scope: !246)
!246 = distinct !DILexicalBlock(scope: !242, file: !1, line: 108, column: 38)
!247 = !DILocation(line: 111, column: 15, scope: !239)
!248 = !DILocation(line: 111, column: 7, scope: !239)
!249 = !DILocation(line: 115, column: 40, scope: !177)
!250 = !DILocation(line: 115, column: 66, scope: !177)
!251 = !DILocation(line: 115, column: 78, scope: !177)
!252 = !DILocation(line: 115, column: 14, scope: !177)
!253 = !DILocation(line: 1052, column: 16, scope: !189, inlinedAt: !176)
!254 = !DILocation(line: 1052, column: 14, scope: !189, inlinedAt: !176)
!255 = !DILocation(line: 1053, column: 7, scope: !256, inlinedAt: !176)
!256 = distinct !DILexicalBlock(scope: !189, file: !1, line: 1053, column: 7)
!257 = !DILocation(line: 1053, column: 18, scope: !256, inlinedAt: !176)
!258 = !DILocation(line: 1053, column: 7, scope: !189, inlinedAt: !176)
!259 = !DILocation(line: 1059, column: 7, scope: !260, inlinedAt: !176)
!260 = distinct !DILexicalBlock(scope: !261, file: !1, line: 1057, column: 12)
!261 = distinct !DILexicalBlock(scope: !262, file: !1, line: 1057, column: 9)
!262 = distinct !DILexicalBlock(scope: !256, file: !1, line: 1055, column: 10)
!263 = !DILocation(line: 1061, column: 7, scope: !260, inlinedAt: !176)
!264 = !DILocation(line: 1067, column: 1, scope: !51, inlinedAt: !176)
!265 = !DILocation(line: 115, column: 12, scope: !177)
!266 = !DILocation(line: 117, column: 13, scope: !177)
!267 = !DILocation(line: 117, column: 5, scope: !177)
!268 = !DILocation(line: 1095, column: 16, scope: !195, inlinedAt: !193)
!269 = !DILocation(line: 1095, column: 14, scope: !195, inlinedAt: !193)
!270 = !DILocation(line: 1096, column: 7, scope: !271, inlinedAt: !193)
!271 = distinct !DILexicalBlock(scope: !195, file: !1, line: 1096, column: 7)
!272 = !DILocation(line: 1096, column: 18, scope: !271, inlinedAt: !193)
!273 = !DILocation(line: 1096, column: 7, scope: !195, inlinedAt: !193)
!274 = !DILocation(line: 1102, column: 7, scope: !275, inlinedAt: !193)
!275 = distinct !DILexicalBlock(scope: !276, file: !1, line: 1100, column: 12)
!276 = distinct !DILexicalBlock(scope: !277, file: !1, line: 1100, column: 9)
!277 = distinct !DILexicalBlock(scope: !271, file: !1, line: 1098, column: 10)
!278 = !DILocation(line: 1104, column: 7, scope: !275, inlinedAt: !193)
!279 = !DILocation(line: 1110, column: 1, scope: !57, inlinedAt: !193)
!280 = !DILocation(line: 120, column: 9, scope: !281)
!281 = distinct !DILexicalBlock(scope: !282, file: !1, line: 120, column: 9)
!282 = distinct !DILexicalBlock(scope: !157, file: !1, line: 119, column: 5)
!283 = !DILocation(line: 120, column: 16, scope: !281)
!284 = !DILocation(line: 120, column: 9, scope: !282)
!285 = !DILocation(line: 121, column: 15, scope: !286)
!286 = distinct !DILexicalBlock(scope: !281, file: !1, line: 120, column: 21)
!287 = !DILocation(line: 121, column: 7, scope: !286)
!288 = !DILocation(line: 124, column: 3, scope: !157)
!289 = !DILocation(line: 126, column: 7, scope: !290)
!290 = distinct !DILexicalBlock(scope: !151, file: !1, line: 126, column: 7)
!291 = !DILocation(line: 126, column: 14, scope: !290)
!292 = !DILocation(line: 126, column: 7, scope: !151)
!293 = !DILocation(line: 127, column: 12, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !1, line: 126, column: 20)
!295 = !DILocation(line: 128, column: 3, scope: !294)
!296 = !DILocation(line: 38, column: 10, scope: !92, inlinedAt: !297)
!297 = distinct !DILocation(line: 130, column: 5, scope: !298)
!298 = distinct !DILexicalBlock(scope: !299, file: !1, line: 129, column: 5)
!299 = distinct !DILexicalBlock(scope: !290, file: !1, line: 128, column: 10)
!300 = !DILocation(line: 133, column: 3, scope: !151)
!301 = !DILocation(line: 135, column: 1, scope: !15)
!302 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !16, file: !1, line: 136, type: !14)
!303 = !DILocation(line: 136, column: 19, scope: !16)
!304 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !16, file: !1, line: 136, type: !14)
!305 = !DILocation(line: 136, column: 38, scope: !16)
!306 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !16, file: !1, line: 137, type: !14)
!307 = !DILocation(line: 137, column: 7, scope: !16)
!308 = !DILocation(line: 137, column: 39, scope: !16)
!309 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !16, file: !1, line: 138, type: !14)
!310 = !DILocation(line: 138, column: 7, scope: !16)
!311 = !DILocation(line: 138, column: 50, scope: !16)
!312 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !16, file: !1, line: 139, type: !14)
!313 = !DILocation(line: 139, column: 7, scope: !16)
!314 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !16, file: !1, line: 140, type: !14)
!315 = !DILocation(line: 140, column: 7, scope: !16)
!316 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !16, file: !1, line: 141, type: !14)
!317 = !DILocation(line: 141, column: 7, scope: !16)
!318 = !DILocation(line: 141, column: 30, scope: !16)
!319 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__IsRemoved", scope: !16, file: !1, line: 142, type: !14)
!320 = !DILocation(line: 142, column: 7, scope: !16)
!321 = !DILocation(line: 142, column: 38, scope: !16)
!322 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__IsStarted", scope: !16, file: !1, line: 143, type: !14)
!323 = !DILocation(line: 143, column: 7, scope: !16)
!324 = !DILocation(line: 143, column: 38, scope: !16)
!325 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__TargetObject", scope: !16, file: !1, line: 144, type: !14)
!326 = !DILocation(line: 144, column: 7, scope: !16)
!327 = !DILocation(line: 144, column: 41, scope: !16)
!328 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__HoldNewRequests", scope: !16, file: !1, line: 145, type: !14)
!329 = !DILocation(line: 145, column: 7, scope: !16)
!330 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__FloppyThread", scope: !16, file: !1, line: 146, type: !14)
!331 = !DILocation(line: 146, column: 7, scope: !16)
!332 = !DILocation(line: 146, column: 41, scope: !16)
!333 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__InterfaceString__Buffer", scope: !16, file: !1, line: 147, type: !14)
!334 = !DILocation(line: 147, column: 7, scope: !16)
!335 = !DILocation(line: 147, column: 52, scope: !16)
!336 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__InterfaceString", scope: !16, file: !1, line: 148, type: !14)
!337 = !DILocation(line: 148, column: 7, scope: !16)
!338 = !DILocation(line: 148, column: 44, scope: !16)
!339 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__ArcName__Length", scope: !16, file: !1, line: 149, type: !14)
!340 = !DILocation(line: 149, column: 7, scope: !16)
!341 = !DILocation(line: 149, column: 44, scope: !16)
!342 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__ArcName", scope: !16, file: !1, line: 150, type: !14)
!343 = !DILocation(line: 150, column: 7, scope: !16)
!344 = !DILocation(line: 150, column: 36, scope: !16)
!345 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__MinorFunction", scope: !16, file: !1, line: 151, type: !14)
!346 = !DILocation(line: 151, column: 7, scope: !16)
!347 = !DILocation(line: 151, column: 30, scope: !16)
!348 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "IoGetConfigurationInformation__FloppyCount", scope: !16, file: !1, line: 152, type: !14)
!349 = !DILocation(line: 152, column: 7, scope: !16)
!350 = !DILocation(line: 152, column: 52, scope: !16)
!351 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp", scope: !16, file: !1, line: 153, type: !14)
!352 = !DILocation(line: 153, column: 7, scope: !16)
!353 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension", scope: !16, file: !1, line: 154, type: !14)
!354 = !DILocation(line: 154, column: 7, scope: !16)
!355 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ntStatus", scope: !16, file: !1, line: 155, type: !14)
!356 = !DILocation(line: 155, column: 7, scope: !16)
!357 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doneEvent", scope: !16, file: !1, line: 156, type: !14)
!358 = !DILocation(line: 156, column: 7, scope: !16)
!359 = !DILocation(line: 156, column: 19, scope: !16)
!360 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___0", scope: !16, file: !1, line: 157, type: !14)
!361 = !DILocation(line: 157, column: 7, scope: !16)
!362 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp", scope: !16, file: !1, line: 158, type: !14)
!363 = !DILocation(line: 158, column: 7, scope: !16)
!364 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp__Control", scope: !16, file: !1, line: 159, type: !14)
!365 = !DILocation(line: 159, column: 7, scope: !16)
!366 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___1", scope: !16, file: !1, line: 160, type: !14)
!367 = !DILocation(line: 160, column: 7, scope: !16)
!368 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Context", scope: !16, file: !1, line: 161, type: !14)
!369 = !DILocation(line: 161, column: 7, scope: !16)
!370 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Control", scope: !16, file: !1, line: 162, type: !14)
!371 = !DILocation(line: 162, column: 7, scope: !16)
!372 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp29", scope: !16, file: !1, line: 163, type: !4)
!373 = !DILocation(line: 163, column: 8, scope: !16)
!374 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp30", scope: !16, file: !1, line: 164, type: !4)
!375 = !DILocation(line: 164, column: 8, scope: !16)
!376 = !DILocation(line: 167, column: 12, scope: !377)
!377 = distinct !DILexicalBlock(scope: !16, file: !1, line: 166, column: 3)
!378 = !DILocation(line: 168, column: 24, scope: !377)
!379 = !DILocation(line: 169, column: 7, scope: !380)
!380 = distinct !DILexicalBlock(scope: !377, file: !1, line: 169, column: 7)
!381 = !DILocation(line: 169, column: 28, scope: !380)
!382 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 1, scope: !44, file: !1, line: 982, type: !14)
!383 = !DILocation(line: 982, column: 29, scope: !44, inlinedAt: !384)
!384 = distinct !DILocation(line: 179, column: 5, scope: !385)
!385 = distinct !DILexicalBlock(scope: !386, file: !1, line: 175, column: 5)
!386 = distinct !DILexicalBlock(scope: !387, file: !1, line: 174, column: 37)
!387 = distinct !DILexicalBlock(scope: !377, file: !1, line: 174, column: 7)
!388 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PriorityBoost", arg: 2, scope: !44, file: !1, line: 982, type: !14)
!389 = !DILocation(line: 982, column: 39, scope: !44, inlinedAt: !384)
!390 = !DILocation(line: 982, column: 29, scope: !44, inlinedAt: !391)
!391 = distinct !DILocation(line: 265, column: 21, scope: !392)
!392 = distinct !DILexicalBlock(scope: !393, file: !1, line: 260, column: 21)
!393 = distinct !DILexicalBlock(scope: !394, file: !1, line: 259, column: 26)
!394 = distinct !DILexicalBlock(scope: !395, file: !1, line: 236, column: 23)
!395 = distinct !DILexicalBlock(scope: !396, file: !1, line: 234, column: 19)
!396 = distinct !DILexicalBlock(scope: !397, file: !1, line: 205, column: 24)
!397 = distinct !DILexicalBlock(scope: !398, file: !1, line: 205, column: 21)
!398 = distinct !DILexicalBlock(scope: !399, file: !1, line: 203, column: 22)
!399 = distinct !DILexicalBlock(scope: !400, file: !1, line: 201, column: 19)
!400 = distinct !DILexicalBlock(scope: !401, file: !1, line: 200, column: 20)
!401 = distinct !DILexicalBlock(scope: !402, file: !1, line: 198, column: 17)
!402 = distinct !DILexicalBlock(scope: !403, file: !1, line: 197, column: 18)
!403 = distinct !DILexicalBlock(scope: !404, file: !1, line: 195, column: 15)
!404 = distinct !DILexicalBlock(scope: !405, file: !1, line: 194, column: 16)
!405 = distinct !DILexicalBlock(scope: !406, file: !1, line: 192, column: 13)
!406 = distinct !DILexicalBlock(scope: !407, file: !1, line: 191, column: 14)
!407 = distinct !DILexicalBlock(scope: !408, file: !1, line: 189, column: 11)
!408 = distinct !DILexicalBlock(scope: !409, file: !1, line: 188, column: 12)
!409 = distinct !DILexicalBlock(scope: !410, file: !1, line: 186, column: 9)
!410 = distinct !DILexicalBlock(scope: !411, file: !1, line: 185, column: 10)
!411 = distinct !DILexicalBlock(scope: !377, file: !1, line: 183, column: 7)
!412 = !DILocation(line: 982, column: 39, scope: !44, inlinedAt: !391)
!413 = !DILocation(line: 982, column: 29, scope: !44, inlinedAt: !414)
!414 = distinct !DILocation(line: 328, column: 21, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !1, line: 323, column: 21)
!416 = distinct !DILexicalBlock(scope: !417, file: !1, line: 289, column: 26)
!417 = distinct !DILexicalBlock(scope: !396, file: !1, line: 274, column: 23)
!418 = !DILocation(line: 982, column: 39, scope: !44, inlinedAt: !414)
!419 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SymbolicLinkName", arg: 1, scope: !41, file: !1, line: 874, type: !14)
!420 = !DILocation(line: 874, column: 35, scope: !41, inlinedAt: !421)
!421 = distinct !DILocation(line: 369, column: 21, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !1, line: 368, column: 21)
!423 = distinct !DILexicalBlock(scope: !424, file: !1, line: 367, column: 72)
!424 = distinct !DILexicalBlock(scope: !396, file: !1, line: 367, column: 23)
!425 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Enable", arg: 2, scope: !41, file: !1, line: 874, type: !14)
!426 = !DILocation(line: 874, column: 58, scope: !41, inlinedAt: !421)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_6", scope: !428, file: !1, line: 878, type: !14)
!428 = distinct !DILexicalBlock(scope: !41, file: !1, line: 877, column: 3)
!429 = !DILocation(line: 878, column: 7, scope: !428, inlinedAt: !421)
!430 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SymbolicLinkName", arg: 1, scope: !32, file: !1, line: 808, type: !14)
!431 = !DILocation(line: 808, column: 30, scope: !32, inlinedAt: !432)
!432 = distinct !DILocation(line: 375, column: 21, scope: !433)
!433 = distinct !DILexicalBlock(scope: !434, file: !1, line: 374, column: 21)
!434 = distinct !DILexicalBlock(scope: !435, file: !1, line: 373, column: 64)
!435 = distinct !DILexicalBlock(scope: !396, file: !1, line: 373, column: 23)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_3", scope: !437, file: !1, line: 812, type: !14)
!437 = distinct !DILexicalBlock(scope: !32, file: !1, line: 811, column: 3)
!438 = !DILocation(line: 812, column: 7, scope: !437, inlinedAt: !432)
!439 = !DILocation(line: 169, column: 7, scope: !377)
!440 = !DILocation(line: 171, column: 3, scope: !441)
!441 = distinct !DILexicalBlock(scope: !380, file: !1, line: 169, column: 34)
!442 = !DILocation(line: 172, column: 23, scope: !377)
!443 = !DILocation(line: 172, column: 21, scope: !377)
!444 = !DILocation(line: 173, column: 11, scope: !377)
!445 = !DILocation(line: 173, column: 9, scope: !377)
!446 = !DILocation(line: 174, column: 7, scope: !387)
!447 = !DILocation(line: 174, column: 7, scope: !377)
!448 = !DILocation(line: 176, column: 32, scope: !385)
!449 = !DILocation(line: 177, column: 27, scope: !385)
!450 = !DILocation(line: 178, column: 14, scope: !385)
!451 = !DILocation(line: 179, column: 24, scope: !385)
!452 = !DILocation(line: 179, column: 5, scope: !385)
!453 = !DILocation(line: 986, column: 7, scope: !454, inlinedAt: !384)
!454 = distinct !DILexicalBlock(scope: !455, file: !1, line: 986, column: 7)
!455 = distinct !DILexicalBlock(scope: !44, file: !1, line: 985, column: 3)
!456 = !DILocation(line: 986, column: 12, scope: !454, inlinedAt: !384)
!457 = !DILocation(line: 986, column: 9, scope: !454, inlinedAt: !384)
!458 = !DILocation(line: 986, column: 7, scope: !455, inlinedAt: !384)
!459 = !DILocation(line: 38, column: 10, scope: !92, inlinedAt: !460)
!460 = distinct !DILocation(line: 990, column: 5, scope: !461, inlinedAt: !384)
!461 = distinct !DILexicalBlock(scope: !462, file: !1, line: 989, column: 5)
!462 = distinct !DILexicalBlock(scope: !454, file: !1, line: 988, column: 10)
!463 = !DILocation(line: 987, column: 9, scope: !464, inlinedAt: !384)
!464 = distinct !DILexicalBlock(scope: !454, file: !1, line: 986, column: 16)
!465 = !DILocation(line: 987, column: 7, scope: !464, inlinedAt: !384)
!466 = !DILocation(line: 993, column: 3, scope: !455, inlinedAt: !384)
!467 = !DILocation(line: 181, column: 5, scope: !386)
!468 = !DILocation(line: 183, column: 7, scope: !411)
!469 = !DILocation(line: 183, column: 28, scope: !411)
!470 = !DILocation(line: 183, column: 7, scope: !377)
!471 = !DILocation(line: 184, column: 5, scope: !472)
!472 = distinct !DILexicalBlock(scope: !411, file: !1, line: 183, column: 34)
!473 = !DILocation(line: 186, column: 9, scope: !409)
!474 = !DILocation(line: 186, column: 30, scope: !409)
!475 = !DILocation(line: 186, column: 9, scope: !410)
!476 = !DILocation(line: 187, column: 7, scope: !477)
!477 = distinct !DILexicalBlock(scope: !409, file: !1, line: 186, column: 36)
!478 = !DILocation(line: 189, column: 11, scope: !407)
!479 = !DILocation(line: 189, column: 32, scope: !407)
!480 = !DILocation(line: 189, column: 11, scope: !408)
!481 = !DILocation(line: 190, column: 9, scope: !482)
!482 = distinct !DILexicalBlock(scope: !407, file: !1, line: 189, column: 38)
!483 = !DILocation(line: 192, column: 13, scope: !405)
!484 = !DILocation(line: 192, column: 34, scope: !405)
!485 = !DILocation(line: 192, column: 13, scope: !406)
!486 = !DILocation(line: 193, column: 11, scope: !487)
!487 = distinct !DILexicalBlock(scope: !405, file: !1, line: 192, column: 40)
!488 = !DILocation(line: 195, column: 15, scope: !403)
!489 = !DILocation(line: 195, column: 36, scope: !403)
!490 = !DILocation(line: 195, column: 15, scope: !404)
!491 = !DILocation(line: 196, column: 13, scope: !492)
!492 = distinct !DILexicalBlock(scope: !403, file: !1, line: 195, column: 42)
!493 = !DILocation(line: 198, column: 17, scope: !401)
!494 = !DILocation(line: 198, column: 38, scope: !401)
!495 = !DILocation(line: 198, column: 17, scope: !402)
!496 = !DILocation(line: 199, column: 15, scope: !497)
!497 = distinct !DILexicalBlock(scope: !401, file: !1, line: 198, column: 44)
!498 = !DILocation(line: 201, column: 19, scope: !399)
!499 = !DILocation(line: 201, column: 40, scope: !399)
!500 = !DILocation(line: 201, column: 19, scope: !400)
!501 = !DILocation(line: 202, column: 17, scope: !502)
!502 = distinct !DILexicalBlock(scope: !399, file: !1, line: 201, column: 46)
!503 = !DILocation(line: 204, column: 17, scope: !398)
!504 = !DILocation(line: 205, column: 21, scope: !398)
!505 = !DILocation(line: 205, column: 24, scope: !397)
!506 = !DILocation(line: 208, column: 48, scope: !507)
!507 = distinct !DILexicalBlock(scope: !396, file: !1, line: 207, column: 19)
!508 = !DILocation(line: 208, column: 62, scope: !507)
!509 = !DILocation(line: 208, column: 30, scope: !507)
!510 = !DILocation(line: 208, column: 28, scope: !507)
!511 = !DILocation(line: 210, column: 19, scope: !396)
!512 = !DILocation(line: 212, column: 23, scope: !513)
!513 = distinct !DILexicalBlock(scope: !396, file: !1, line: 212, column: 23)
!514 = !DILocation(line: 212, column: 44, scope: !513)
!515 = !DILocation(line: 212, column: 23, scope: !396)
!516 = !DILocation(line: 214, column: 19, scope: !517)
!517 = distinct !DILexicalBlock(scope: !513, file: !1, line: 212, column: 50)
!518 = !DILocation(line: 215, column: 25, scope: !519)
!519 = distinct !DILexicalBlock(scope: !396, file: !1, line: 215, column: 23)
!520 = !DILocation(line: 215, column: 23, scope: !396)
!521 = !DILocation(line: 216, column: 25, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !1, line: 216, column: 25)
!523 = distinct !DILexicalBlock(scope: !519, file: !1, line: 215, column: 55)
!524 = !DILocation(line: 216, column: 30, scope: !522)
!525 = !DILocation(line: 216, column: 27, scope: !522)
!526 = !DILocation(line: 216, column: 25, scope: !523)
!527 = !DILocation(line: 217, column: 27, scope: !528)
!528 = distinct !DILexicalBlock(scope: !522, file: !1, line: 216, column: 34)
!529 = !DILocation(line: 217, column: 25, scope: !528)
!530 = !DILocation(line: 218, column: 21, scope: !528)
!531 = !DILocation(line: 38, column: 10, scope: !92, inlinedAt: !532)
!532 = distinct !DILocation(line: 220, column: 23, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !1, line: 219, column: 23)
!534 = distinct !DILexicalBlock(scope: !522, file: !1, line: 218, column: 28)
!535 = !DILocation(line: 224, column: 42, scope: !536)
!536 = distinct !DILexicalBlock(scope: !523, file: !1, line: 223, column: 21)
!537 = !DILocation(line: 225, column: 62, scope: !536)
!538 = !DILocation(line: 226, column: 46, scope: !536)
!539 = !DILocation(line: 226, column: 79, scope: !536)
!540 = !DILocation(line: 226, column: 32, scope: !536)
!541 = !DILocation(line: 226, column: 30, scope: !536)
!542 = !DILocation(line: 228, column: 29, scope: !523)
!543 = !DILocation(line: 228, column: 21, scope: !523)
!544 = !DILocation(line: 231, column: 54, scope: !545)
!545 = distinct !DILexicalBlock(scope: !396, file: !1, line: 230, column: 19)
!546 = !DILocation(line: 232, column: 49, scope: !545)
!547 = !DILocation(line: 232, column: 54, scope: !545)
!548 = !DILocation(line: 232, column: 30, scope: !545)
!549 = !DILocation(line: 232, column: 28, scope: !545)
!550 = !DILocation(line: 235, column: 40, scope: !395)
!551 = !DILocation(line: 235, column: 33, scope: !395)
!552 = !DILocation(line: 235, column: 31, scope: !395)
!553 = !DILocation(line: 236, column: 23, scope: !394)
!554 = !DILocation(line: 236, column: 35, scope: !394)
!555 = !DILocation(line: 236, column: 23, scope: !395)
!556 = !DILocation(line: 238, column: 43, scope: !557)
!557 = distinct !DILexicalBlock(scope: !558, file: !1, line: 237, column: 21)
!558 = distinct !DILexicalBlock(scope: !394, file: !1, line: 236, column: 44)
!559 = !DILocation(line: 238, column: 76, scope: !557)
!560 = !DILocation(line: 239, column: 43, scope: !557)
!561 = !DILocation(line: 238, column: 21, scope: !557)
!562 = !DILocation(line: 241, column: 25, scope: !563)
!563 = distinct !DILexicalBlock(scope: !558, file: !1, line: 241, column: 25)
!564 = !DILocation(line: 241, column: 57, scope: !563)
!565 = !DILocation(line: 241, column: 25, scope: !558)
!566 = !DILocation(line: 243, column: 21, scope: !567)
!567 = distinct !DILexicalBlock(scope: !563, file: !1, line: 241, column: 63)
!568 = !DILocation(line: 244, column: 53, scope: !558)
!569 = !DILocation(line: 245, column: 43, scope: !558)
!570 = !DILocation(line: 246, column: 30, scope: !558)
!571 = !DILocation(line: 247, column: 25, scope: !572)
!572 = distinct !DILexicalBlock(scope: !558, file: !1, line: 247, column: 25)
!573 = !DILocation(line: 247, column: 30, scope: !572)
!574 = !DILocation(line: 247, column: 27, scope: !572)
!575 = !DILocation(line: 247, column: 25, scope: !558)
!576 = !DILocation(line: 248, column: 27, scope: !577)
!577 = distinct !DILexicalBlock(scope: !572, file: !1, line: 247, column: 34)
!578 = !DILocation(line: 248, column: 25, scope: !577)
!579 = !DILocation(line: 249, column: 21, scope: !577)
!580 = !DILocation(line: 38, column: 10, scope: !92, inlinedAt: !581)
!581 = distinct !DILocation(line: 251, column: 23, scope: !582)
!582 = distinct !DILexicalBlock(scope: !583, file: !1, line: 250, column: 23)
!583 = distinct !DILexicalBlock(scope: !572, file: !1, line: 249, column: 28)
!584 = !DILocation(line: 255, column: 42, scope: !585)
!585 = distinct !DILexicalBlock(scope: !558, file: !1, line: 254, column: 21)
!586 = !DILocation(line: 256, column: 62, scope: !585)
!587 = !DILocation(line: 257, column: 46, scope: !585)
!588 = !DILocation(line: 257, column: 79, scope: !585)
!589 = !DILocation(line: 257, column: 32, scope: !585)
!590 = !DILocation(line: 257, column: 30, scope: !585)
!591 = !DILocation(line: 259, column: 19, scope: !558)
!592 = !DILocation(line: 261, column: 30, scope: !392)
!593 = !DILocation(line: 262, column: 45, scope: !392)
!594 = !DILocation(line: 262, column: 43, scope: !392)
!595 = !DILocation(line: 263, column: 32, scope: !392)
!596 = !DILocation(line: 263, column: 30, scope: !392)
!597 = !DILocation(line: 264, column: 48, scope: !392)
!598 = !DILocation(line: 265, column: 40, scope: !392)
!599 = !DILocation(line: 265, column: 21, scope: !392)
!600 = !DILocation(line: 986, column: 7, scope: !454, inlinedAt: !391)
!601 = !DILocation(line: 986, column: 12, scope: !454, inlinedAt: !391)
!602 = !DILocation(line: 986, column: 9, scope: !454, inlinedAt: !391)
!603 = !DILocation(line: 986, column: 7, scope: !455, inlinedAt: !391)
!604 = !DILocation(line: 38, column: 10, scope: !92, inlinedAt: !605)
!605 = distinct !DILocation(line: 990, column: 5, scope: !461, inlinedAt: !391)
!606 = !DILocation(line: 987, column: 9, scope: !464, inlinedAt: !391)
!607 = !DILocation(line: 987, column: 7, scope: !464, inlinedAt: !391)
!608 = !DILocation(line: 993, column: 3, scope: !455, inlinedAt: !391)
!609 = !DILocation(line: 269, column: 19, scope: !396)
!610 = !DILocation(line: 271, column: 23, scope: !611)
!611 = distinct !DILexicalBlock(scope: !396, file: !1, line: 271, column: 23)
!612 = !DILocation(line: 271, column: 44, scope: !611)
!613 = !DILocation(line: 271, column: 23, scope: !396)
!614 = !DILocation(line: 273, column: 19, scope: !615)
!615 = distinct !DILexicalBlock(scope: !611, file: !1, line: 271, column: 50)
!616 = !DILocation(line: 274, column: 25, scope: !417)
!617 = !DILocation(line: 274, column: 23, scope: !396)
!618 = !DILocation(line: 275, column: 43, scope: !619)
!619 = distinct !DILexicalBlock(scope: !417, file: !1, line: 274, column: 55)
!620 = !DILocation(line: 276, column: 30, scope: !619)
!621 = !DILocation(line: 277, column: 25, scope: !622)
!622 = distinct !DILexicalBlock(scope: !619, file: !1, line: 277, column: 25)
!623 = !DILocation(line: 277, column: 30, scope: !622)
!624 = !DILocation(line: 277, column: 27, scope: !622)
!625 = !DILocation(line: 277, column: 25, scope: !619)
!626 = !DILocation(line: 278, column: 27, scope: !627)
!627 = distinct !DILexicalBlock(scope: !622, file: !1, line: 277, column: 34)
!628 = !DILocation(line: 278, column: 25, scope: !627)
!629 = !DILocation(line: 279, column: 21, scope: !627)
!630 = !DILocation(line: 38, column: 10, scope: !92, inlinedAt: !631)
!631 = distinct !DILocation(line: 281, column: 23, scope: !632)
!632 = distinct !DILexicalBlock(scope: !633, file: !1, line: 280, column: 23)
!633 = distinct !DILexicalBlock(scope: !622, file: !1, line: 279, column: 28)
!634 = !DILocation(line: 285, column: 42, scope: !635)
!635 = distinct !DILexicalBlock(scope: !619, file: !1, line: 284, column: 21)
!636 = !DILocation(line: 286, column: 62, scope: !635)
!637 = !DILocation(line: 287, column: 46, scope: !635)
!638 = !DILocation(line: 287, column: 79, scope: !635)
!639 = !DILocation(line: 287, column: 32, scope: !635)
!640 = !DILocation(line: 287, column: 30, scope: !635)
!641 = !DILocation(line: 289, column: 19, scope: !619)
!642 = !DILocation(line: 290, column: 43, scope: !416)
!643 = !DILocation(line: 291, column: 30, scope: !416)
!644 = !DILocation(line: 292, column: 33, scope: !416)
!645 = !DILocation(line: 292, column: 31, scope: !416)
!646 = !DILocation(line: 293, column: 33, scope: !416)
!647 = !DILocation(line: 293, column: 74, scope: !416)
!648 = !DILocation(line: 293, column: 31, scope: !416)
!649 = !DILocation(line: 294, column: 40, scope: !416)
!650 = !DILocation(line: 295, column: 25, scope: !651)
!651 = distinct !DILexicalBlock(scope: !416, file: !1, line: 295, column: 25)
!652 = !DILocation(line: 295, column: 30, scope: !651)
!653 = !DILocation(line: 295, column: 27, scope: !651)
!654 = !DILocation(line: 295, column: 25, scope: !416)
!655 = !DILocation(line: 38, column: 10, scope: !92, inlinedAt: !656)
!656 = distinct !DILocation(line: 297, column: 23, scope: !657)
!657 = distinct !DILexicalBlock(scope: !658, file: !1, line: 296, column: 23)
!658 = distinct !DILexicalBlock(scope: !651, file: !1, line: 295, column: 34)
!659 = !DILocation(line: 299, column: 21, scope: !658)
!660 = !DILocation(line: 300, column: 27, scope: !661)
!661 = distinct !DILexicalBlock(scope: !662, file: !1, line: 300, column: 27)
!662 = distinct !DILexicalBlock(scope: !651, file: !1, line: 299, column: 28)
!663 = !DILocation(line: 300, column: 42, scope: !661)
!664 = !DILocation(line: 300, column: 27, scope: !662)
!665 = !DILocation(line: 38, column: 10, scope: !92, inlinedAt: !666)
!666 = distinct !DILocation(line: 302, column: 25, scope: !667)
!667 = distinct !DILexicalBlock(scope: !668, file: !1, line: 301, column: 25)
!668 = distinct !DILexicalBlock(scope: !661, file: !1, line: 300, column: 48)
!669 = !DILocation(line: 304, column: 23, scope: !668)
!670 = !DILocation(line: 305, column: 40, scope: !671)
!671 = distinct !DILexicalBlock(scope: !661, file: !1, line: 304, column: 30)
!672 = !DILocation(line: 309, column: 33, scope: !673)
!673 = distinct !DILexicalBlock(scope: !416, file: !1, line: 308, column: 21)
!674 = !DILocation(line: 309, column: 74, scope: !673)
!675 = !DILocation(line: 309, column: 31, scope: !673)
!676 = !DILocation(line: 310, column: 38, scope: !673)
!677 = !DILocation(line: 310, column: 36, scope: !673)
!678 = !DILocation(line: 311, column: 36, scope: !673)
!679 = !DILocation(line: 312, column: 46, scope: !673)
!680 = !DILocation(line: 312, column: 79, scope: !673)
!681 = !DILocation(line: 312, column: 32, scope: !673)
!682 = !DILocation(line: 312, column: 30, scope: !673)
!683 = !DILocation(line: 315, column: 42, scope: !684)
!684 = distinct !DILexicalBlock(scope: !416, file: !1, line: 314, column: 21)
!685 = !DILocation(line: 315, column: 35, scope: !684)
!686 = !DILocation(line: 315, column: 33, scope: !684)
!687 = !DILocation(line: 316, column: 25, scope: !688)
!688 = distinct !DILexicalBlock(scope: !684, file: !1, line: 316, column: 25)
!689 = !DILocation(line: 316, column: 37, scope: !688)
!690 = !DILocation(line: 316, column: 25, scope: !684)
!691 = !DILocation(line: 318, column: 45, scope: !692)
!692 = distinct !DILexicalBlock(scope: !693, file: !1, line: 317, column: 23)
!693 = distinct !DILexicalBlock(scope: !688, file: !1, line: 316, column: 46)
!694 = !DILocation(line: 318, column: 56, scope: !692)
!695 = !DILocation(line: 318, column: 67, scope: !692)
!696 = !DILocation(line: 318, column: 23, scope: !692)
!697 = !DILocation(line: 319, column: 34, scope: !692)
!698 = !DILocation(line: 319, column: 32, scope: !692)
!699 = !DILocation(line: 321, column: 21, scope: !693)
!700 = !DILocation(line: 324, column: 56, scope: !415)
!701 = !DILocation(line: 325, column: 45, scope: !415)
!702 = !DILocation(line: 325, column: 43, scope: !415)
!703 = !DILocation(line: 326, column: 32, scope: !415)
!704 = !DILocation(line: 326, column: 30, scope: !415)
!705 = !DILocation(line: 327, column: 48, scope: !415)
!706 = !DILocation(line: 328, column: 40, scope: !415)
!707 = !DILocation(line: 328, column: 21, scope: !415)
!708 = !DILocation(line: 986, column: 7, scope: !454, inlinedAt: !414)
!709 = !DILocation(line: 986, column: 12, scope: !454, inlinedAt: !414)
!710 = !DILocation(line: 986, column: 9, scope: !454, inlinedAt: !414)
!711 = !DILocation(line: 986, column: 7, scope: !455, inlinedAt: !414)
!712 = !DILocation(line: 38, column: 10, scope: !92, inlinedAt: !713)
!713 = distinct !DILocation(line: 990, column: 5, scope: !461, inlinedAt: !414)
!714 = !DILocation(line: 987, column: 9, scope: !464, inlinedAt: !414)
!715 = !DILocation(line: 987, column: 7, scope: !464, inlinedAt: !414)
!716 = !DILocation(line: 993, column: 3, scope: !455, inlinedAt: !414)
!717 = !DILocation(line: 331, column: 19, scope: !396)
!718 = !DILocation(line: 333, column: 48, scope: !396)
!719 = !DILocation(line: 334, column: 41, scope: !396)
!720 = !DILocation(line: 335, column: 28, scope: !396)
!721 = !DILocation(line: 336, column: 23, scope: !722)
!722 = distinct !DILexicalBlock(scope: !396, file: !1, line: 336, column: 23)
!723 = !DILocation(line: 336, column: 28, scope: !722)
!724 = !DILocation(line: 336, column: 25, scope: !722)
!725 = !DILocation(line: 336, column: 23, scope: !396)
!726 = !DILocation(line: 337, column: 25, scope: !727)
!727 = distinct !DILexicalBlock(scope: !722, file: !1, line: 336, column: 32)
!728 = !DILocation(line: 337, column: 23, scope: !727)
!729 = !DILocation(line: 338, column: 19, scope: !727)
!730 = !DILocation(line: 38, column: 10, scope: !92, inlinedAt: !731)
!731 = distinct !DILocation(line: 340, column: 21, scope: !732)
!732 = distinct !DILexicalBlock(scope: !733, file: !1, line: 339, column: 21)
!733 = distinct !DILexicalBlock(scope: !722, file: !1, line: 338, column: 26)
!734 = !DILocation(line: 344, column: 40, scope: !735)
!735 = distinct !DILexicalBlock(scope: !396, file: !1, line: 343, column: 19)
!736 = !DILocation(line: 345, column: 60, scope: !735)
!737 = !DILocation(line: 346, column: 44, scope: !735)
!738 = !DILocation(line: 346, column: 77, scope: !735)
!739 = !DILocation(line: 346, column: 30, scope: !735)
!740 = !DILocation(line: 346, column: 28, scope: !735)
!741 = !DILocation(line: 348, column: 19, scope: !396)
!742 = !DILocation(line: 350, column: 54, scope: !396)
!743 = !DILocation(line: 351, column: 48, scope: !396)
!744 = !DILocation(line: 352, column: 48, scope: !396)
!745 = !DILocation(line: 353, column: 23, scope: !746)
!746 = distinct !DILexicalBlock(scope: !396, file: !1, line: 353, column: 23)
!747 = !DILocation(line: 353, column: 28, scope: !746)
!748 = !DILocation(line: 353, column: 25, scope: !746)
!749 = !DILocation(line: 353, column: 23, scope: !396)
!750 = !DILocation(line: 354, column: 25, scope: !751)
!751 = distinct !DILexicalBlock(scope: !746, file: !1, line: 353, column: 32)
!752 = !DILocation(line: 354, column: 23, scope: !751)
!753 = !DILocation(line: 355, column: 19, scope: !751)
!754 = !DILocation(line: 38, column: 10, scope: !92, inlinedAt: !755)
!755 = distinct !DILocation(line: 357, column: 21, scope: !756)
!756 = distinct !DILexicalBlock(scope: !757, file: !1, line: 356, column: 21)
!757 = distinct !DILexicalBlock(scope: !746, file: !1, line: 355, column: 26)
!758 = !DILocation(line: 361, column: 40, scope: !759)
!759 = distinct !DILexicalBlock(scope: !396, file: !1, line: 360, column: 19)
!760 = !DILocation(line: 362, column: 60, scope: !759)
!761 = !DILocation(line: 363, column: 41, scope: !759)
!762 = !DILocation(line: 364, column: 28, scope: !759)
!763 = !DILocation(line: 365, column: 44, scope: !759)
!764 = !DILocation(line: 365, column: 77, scope: !759)
!765 = !DILocation(line: 365, column: 30, scope: !759)
!766 = !DILocation(line: 365, column: 28, scope: !759)
!767 = !DILocation(line: 367, column: 23, scope: !424)
!768 = !DILocation(line: 367, column: 66, scope: !424)
!769 = !DILocation(line: 367, column: 23, scope: !396)
!770 = !DILocation(line: 369, column: 47, scope: !422)
!771 = !DILocation(line: 369, column: 21, scope: !422)
!772 = !DILocation(line: 879, column: 15, scope: !428, inlinedAt: !421)
!773 = !DILocation(line: 879, column: 13, scope: !428, inlinedAt: !421)
!774 = !DILocation(line: 880, column: 7, scope: !775, inlinedAt: !421)
!775 = distinct !DILexicalBlock(scope: !428, file: !1, line: 880, column: 7)
!776 = !DILocation(line: 880, column: 17, scope: !775, inlinedAt: !421)
!777 = !DILocation(line: 880, column: 7, scope: !428, inlinedAt: !421)
!778 = !DILocation(line: 886, column: 7, scope: !779, inlinedAt: !421)
!779 = distinct !DILexicalBlock(scope: !780, file: !1, line: 884, column: 12)
!780 = distinct !DILexicalBlock(scope: !781, file: !1, line: 884, column: 9)
!781 = distinct !DILexicalBlock(scope: !775, file: !1, line: 882, column: 10)
!782 = !DILocation(line: 888, column: 7, scope: !779, inlinedAt: !421)
!783 = !DILocation(line: 894, column: 1, scope: !41, inlinedAt: !421)
!784 = !DILocation(line: 372, column: 19, scope: !423)
!785 = !DILocation(line: 373, column: 23, scope: !435)
!786 = !DILocation(line: 373, column: 58, scope: !435)
!787 = !DILocation(line: 373, column: 23, scope: !396)
!788 = !DILocation(line: 375, column: 42, scope: !433)
!789 = !DILocation(line: 375, column: 21, scope: !433)
!790 = !DILocation(line: 813, column: 15, scope: !437, inlinedAt: !432)
!791 = !DILocation(line: 813, column: 13, scope: !437, inlinedAt: !432)
!792 = !DILocation(line: 814, column: 7, scope: !793, inlinedAt: !432)
!793 = distinct !DILexicalBlock(scope: !437, file: !1, line: 814, column: 7)
!794 = !DILocation(line: 814, column: 17, scope: !793, inlinedAt: !432)
!795 = !DILocation(line: 814, column: 7, scope: !437, inlinedAt: !432)
!796 = !DILocation(line: 820, column: 7, scope: !797, inlinedAt: !432)
!797 = distinct !DILexicalBlock(scope: !798, file: !1, line: 818, column: 12)
!798 = distinct !DILexicalBlock(scope: !799, file: !1, line: 818, column: 9)
!799 = distinct !DILexicalBlock(scope: !793, file: !1, line: 816, column: 10)
!800 = !DILocation(line: 822, column: 7, scope: !797, inlinedAt: !432)
!801 = !DILocation(line: 828, column: 1, scope: !32, inlinedAt: !432)
!802 = !DILocation(line: 377, column: 19, scope: !434)
!803 = !DILocation(line: 378, column: 62, scope: !396)
!804 = !DILocation(line: 379, column: 19, scope: !396)
!805 = !DILocation(line: 381, column: 23, scope: !806)
!806 = distinct !DILexicalBlock(scope: !396, file: !1, line: 381, column: 23)
!807 = !DILocation(line: 381, column: 28, scope: !806)
!808 = !DILocation(line: 381, column: 25, scope: !806)
!809 = !DILocation(line: 381, column: 23, scope: !396)
!810 = !DILocation(line: 382, column: 25, scope: !811)
!811 = distinct !DILexicalBlock(scope: !806, file: !1, line: 381, column: 32)
!812 = !DILocation(line: 382, column: 23, scope: !811)
!813 = !DILocation(line: 383, column: 19, scope: !811)
!814 = !DILocation(line: 38, column: 10, scope: !92, inlinedAt: !815)
!815 = distinct !DILocation(line: 385, column: 21, scope: !816)
!816 = distinct !DILexicalBlock(scope: !817, file: !1, line: 384, column: 21)
!817 = distinct !DILexicalBlock(scope: !806, file: !1, line: 383, column: 26)
!818 = !DILocation(line: 389, column: 40, scope: !819)
!819 = distinct !DILexicalBlock(scope: !396, file: !1, line: 388, column: 19)
!820 = !DILocation(line: 390, column: 60, scope: !819)
!821 = !DILocation(line: 391, column: 44, scope: !819)
!822 = !DILocation(line: 391, column: 77, scope: !819)
!823 = !DILocation(line: 391, column: 30, scope: !819)
!824 = !DILocation(line: 391, column: 28, scope: !819)
!825 = !DILocation(line: 393, column: 17, scope: !396)
!826 = !DILocation(line: 393, column: 24, scope: !397)
!827 = !DILocation(line: 403, column: 24, scope: !377)
!828 = !DILocation(line: 404, column: 7, scope: !829)
!829 = distinct !DILexicalBlock(scope: !377, file: !1, line: 404, column: 7)
!830 = !DILocation(line: 404, column: 28, scope: !829)
!831 = !DILocation(line: 404, column: 7, scope: !377)
!832 = !DILocation(line: 406, column: 3, scope: !833)
!833 = distinct !DILexicalBlock(scope: !829, file: !1, line: 404, column: 34)
!834 = !DILocation(line: 407, column: 11, scope: !377)
!835 = !DILocation(line: 407, column: 3, scope: !377)
!836 = !DILocation(line: 409, column: 1, scope: !16)
!837 = !DILocation(line: 982, column: 29, scope: !44)
!838 = !DILocation(line: 982, column: 39, scope: !44)
!839 = !DILocation(line: 986, column: 7, scope: !454)
!840 = !DILocation(line: 986, column: 12, scope: !454)
!841 = !DILocation(line: 986, column: 9, scope: !454)
!842 = !DILocation(line: 986, column: 7, scope: !455)
!843 = !DILocation(line: 987, column: 9, scope: !464)
!844 = !DILocation(line: 987, column: 7, scope: !464)
!845 = !DILocation(line: 988, column: 3, scope: !464)
!846 = !DILocation(line: 38, column: 10, scope: !92, inlinedAt: !847)
!847 = distinct !DILocation(line: 990, column: 5, scope: !461)
!848 = !DILocation(line: 993, column: 3, scope: !455)
!849 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !17, file: !1, line: 410, type: !14)
!850 = !DILocation(line: 410, column: 27, scope: !17)
!851 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !17, file: !1, line: 410, type: !14)
!852 = !DILocation(line: 410, column: 46, scope: !17)
!853 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !17, file: !1, line: 411, type: !14)
!854 = !DILocation(line: 411, column: 7, scope: !17)
!855 = !DILocation(line: 411, column: 39, scope: !17)
!856 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !17, file: !1, line: 412, type: !14)
!857 = !DILocation(line: 412, column: 7, scope: !17)
!858 = !DILocation(line: 412, column: 50, scope: !17)
!859 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !17, file: !1, line: 413, type: !14)
!860 = !DILocation(line: 413, column: 7, scope: !17)
!861 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__TargetObject", scope: !17, file: !1, line: 414, type: !14)
!862 = !DILocation(line: 414, column: 7, scope: !17)
!863 = !DILocation(line: 414, column: 41, scope: !17)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__MaxTransferSize", scope: !17, file: !1, line: 415, type: !14)
!865 = !DILocation(line: 415, column: 7, scope: !17)
!866 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__DriveType", scope: !17, file: !1, line: 416, type: !14)
!867 = !DILocation(line: 416, column: 7, scope: !17)
!868 = !DILocation(line: 416, column: 38, scope: !17)
!869 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__PerpendicularMode", scope: !17, file: !1, line: 417, type: !14)
!870 = !DILocation(line: 417, column: 7, scope: !17)
!871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__DeviceUnit", scope: !17, file: !1, line: 418, type: !14)
!872 = !DILocation(line: 418, column: 7, scope: !17)
!873 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__DriveOnValue", scope: !17, file: !1, line: 419, type: !14)
!874 = !DILocation(line: 419, column: 7, scope: !17)
!875 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__UnderlyingPDO", scope: !17, file: !1, line: 420, type: !14)
!876 = !DILocation(line: 420, column: 7, scope: !17)
!877 = !DILocation(line: 420, column: 42, scope: !17)
!878 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__InterfaceString", scope: !17, file: !1, line: 421, type: !14)
!879 = !DILocation(line: 421, column: 7, scope: !17)
!880 = !DILocation(line: 421, column: 44, scope: !17)
!881 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__IsStarted", scope: !17, file: !1, line: 422, type: !14)
!882 = !DILocation(line: 422, column: 7, scope: !17)
!883 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__HoldNewRequests", scope: !17, file: !1, line: 423, type: !14)
!884 = !DILocation(line: 423, column: 7, scope: !17)
!885 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ntStatus", scope: !17, file: !1, line: 424, type: !14)
!886 = !DILocation(line: 424, column: 7, scope: !17)
!887 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pnpStatus", scope: !17, file: !1, line: 425, type: !14)
!888 = !DILocation(line: 425, column: 7, scope: !17)
!889 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doneEvent", scope: !17, file: !1, line: 426, type: !14)
!890 = !DILocation(line: 426, column: 7, scope: !17)
!891 = !DILocation(line: 426, column: 19, scope: !17)
!892 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo", scope: !17, file: !1, line: 427, type: !14)
!893 = !DILocation(line: 427, column: 7, scope: !17)
!894 = !DILocation(line: 427, column: 17, scope: !17)
!895 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__BufferCount", scope: !17, file: !1, line: 428, type: !14)
!896 = !DILocation(line: 428, column: 7, scope: !17)
!897 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__BufferSize", scope: !17, file: !1, line: 429, type: !14)
!898 = !DILocation(line: 429, column: 7, scope: !17)
!899 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__MaxTransferSize", scope: !17, file: !1, line: 430, type: !14)
!900 = !DILocation(line: 430, column: 7, scope: !17)
!901 = !DILocation(line: 430, column: 34, scope: !17)
!902 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__AcpiBios", scope: !17, file: !1, line: 431, type: !14)
!903 = !DILocation(line: 431, column: 7, scope: !17)
!904 = !DILocation(line: 431, column: 27, scope: !17)
!905 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__AcpiFdiSupported", scope: !17, file: !1, line: 432, type: !14)
!906 = !DILocation(line: 432, column: 7, scope: !17)
!907 = !DILocation(line: 432, column: 35, scope: !17)
!908 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__PeripheralNumber", scope: !17, file: !1, line: 433, type: !14)
!909 = !DILocation(line: 433, column: 7, scope: !17)
!910 = !DILocation(line: 433, column: 35, scope: !17)
!911 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__BusType", scope: !17, file: !1, line: 434, type: !14)
!912 = !DILocation(line: 434, column: 7, scope: !17)
!913 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__ControllerNumber", scope: !17, file: !1, line: 435, type: !14)
!914 = !DILocation(line: 435, column: 7, scope: !17)
!915 = !DILocation(line: 435, column: 35, scope: !17)
!916 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__UnitNumber", scope: !17, file: !1, line: 436, type: !14)
!917 = !DILocation(line: 436, column: 7, scope: !17)
!918 = !DILocation(line: 436, column: 29, scope: !17)
!919 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__BusNumber", scope: !17, file: !1, line: 437, type: !14)
!920 = !DILocation(line: 437, column: 7, scope: !17)
!921 = !DILocation(line: 437, column: 28, scope: !17)
!922 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Dc", scope: !17, file: !1, line: 438, type: !14)
!923 = !DILocation(line: 438, column: 7, scope: !17)
!924 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Fp", scope: !17, file: !1, line: 439, type: !14)
!925 = !DILocation(line: 439, column: 7, scope: !17)
!926 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension", scope: !17, file: !1, line: 440, type: !14)
!927 = !DILocation(line: 440, column: 7, scope: !17)
!928 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp", scope: !17, file: !1, line: 441, type: !14)
!929 = !DILocation(line: 441, column: 7, scope: !17)
!930 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___0", scope: !17, file: !1, line: 442, type: !14)
!931 = !DILocation(line: 442, column: 7, scope: !17)
!932 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp", scope: !17, file: !1, line: 443, type: !14)
!933 = !DILocation(line: 443, column: 7, scope: !17)
!934 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp__Control", scope: !17, file: !1, line: 444, type: !14)
!935 = !DILocation(line: 444, column: 7, scope: !17)
!936 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___1", scope: !17, file: !1, line: 445, type: !14)
!937 = !DILocation(line: 445, column: 7, scope: !17)
!938 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Control", scope: !17, file: !1, line: 446, type: !14)
!939 = !DILocation(line: 446, column: 7, scope: !17)
!940 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Context", scope: !17, file: !1, line: 447, type: !14)
!941 = !DILocation(line: 447, column: 7, scope: !17)
!942 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "InterfaceType", scope: !17, file: !1, line: 448, type: !14)
!943 = !DILocation(line: 448, column: 7, scope: !17)
!944 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86", scope: !17, file: !1, line: 449, type: !14)
!945 = !DILocation(line: 449, column: 7, scope: !17)
!946 = !DILocation(line: 449, column: 61, scope: !17)
!947 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp42", scope: !17, file: !1, line: 450, type: !4)
!948 = !DILocation(line: 450, column: 8, scope: !17)
!949 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp43", scope: !17, file: !1, line: 451, type: !14)
!950 = !DILocation(line: 451, column: 7, scope: !17)
!951 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp44", scope: !17, file: !1, line: 452, type: !14)
!952 = !DILocation(line: 452, column: 7, scope: !17)
!953 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp45", scope: !17, file: !1, line: 453, type: !14)
!954 = !DILocation(line: 453, column: 7, scope: !17)
!955 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp46", scope: !17, file: !1, line: 454, type: !14)
!956 = !DILocation(line: 454, column: 7, scope: !17)
!957 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp47", scope: !17, file: !1, line: 455, type: !14)
!958 = !DILocation(line: 455, column: 7, scope: !17)
!959 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp48", scope: !17, file: !1, line: 456, type: !14)
!960 = !DILocation(line: 456, column: 7, scope: !17)
!961 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp49", scope: !17, file: !1, line: 457, type: !14)
!962 = !DILocation(line: 457, column: 7, scope: !17)
!963 = !DILocation(line: 460, column: 8, scope: !964)
!964 = distinct !DILexicalBlock(scope: !17, file: !1, line: 459, column: 3)
!965 = !DILocation(line: 460, column: 6, scope: !964)
!966 = !DILocation(line: 461, column: 8, scope: !964)
!967 = !DILocation(line: 461, column: 6, scope: !964)
!968 = !DILocation(line: 462, column: 23, scope: !964)
!969 = !DILocation(line: 462, column: 21, scope: !964)
!970 = !DILocation(line: 463, column: 11, scope: !964)
!971 = !DILocation(line: 463, column: 9, scope: !964)
!972 = !DILocation(line: 464, column: 15, scope: !964)
!973 = !DILocation(line: 464, column: 13, scope: !964)
!974 = !DILocation(line: 465, column: 15, scope: !964)
!975 = !DILocation(line: 465, column: 56, scope: !964)
!976 = !DILocation(line: 465, column: 13, scope: !964)
!977 = !DILocation(line: 466, column: 22, scope: !964)
!978 = !DILocation(line: 467, column: 7, scope: !979)
!979 = distinct !DILexicalBlock(scope: !964, file: !1, line: 467, column: 7)
!980 = !DILocation(line: 467, column: 12, scope: !979)
!981 = !DILocation(line: 467, column: 9, scope: !979)
!982 = !DILocation(line: 66, column: 31, scope: !11, inlinedAt: !983)
!983 = distinct !DILocation(line: 509, column: 20, scope: !984)
!984 = distinct !DILexicalBlock(scope: !985, file: !1, line: 508, column: 9)
!985 = distinct !DILexicalBlock(scope: !986, file: !1, line: 507, column: 38)
!986 = distinct !DILexicalBlock(scope: !987, file: !1, line: 507, column: 11)
!987 = distinct !DILexicalBlock(scope: !988, file: !1, line: 506, column: 28)
!988 = distinct !DILexicalBlock(scope: !989, file: !1, line: 506, column: 9)
!989 = distinct !DILexicalBlock(scope: !990, file: !1, line: 504, column: 22)
!990 = distinct !DILexicalBlock(scope: !964, file: !1, line: 504, column: 7)
!991 = !DILocation(line: 66, column: 55, scope: !11, inlinedAt: !983)
!992 = !DILocation(line: 982, column: 29, scope: !44, inlinedAt: !993)
!993 = distinct !DILocation(line: 573, column: 3, scope: !994)
!994 = distinct !DILexicalBlock(scope: !964, file: !1, line: 570, column: 3)
!995 = !DILocation(line: 982, column: 39, scope: !44, inlinedAt: !993)
!996 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "BusType", arg: 1, scope: !35, file: !1, line: 829, type: !14)
!997 = !DILocation(line: 829, column: 34, scope: !35, inlinedAt: !998)
!998 = distinct !DILocation(line: 534, column: 20, scope: !999)
!999 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 532, column: 9)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 526, column: 17)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 525, column: 7)
!1002 = distinct !DILexicalBlock(scope: !988, file: !1, line: 518, column: 12)
!1003 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "BusNumber", arg: 2, scope: !35, file: !1, line: 829, type: !14)
!1004 = !DILocation(line: 829, column: 48, scope: !35, inlinedAt: !998)
!1005 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ControllerType", arg: 3, scope: !35, file: !1, line: 829, type: !14)
!1006 = !DILocation(line: 829, column: 64, scope: !35, inlinedAt: !998)
!1007 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ControllerNumber", arg: 4, scope: !35, file: !1, line: 829, type: !14)
!1008 = !DILocation(line: 829, column: 85, scope: !35, inlinedAt: !998)
!1009 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PeripheralType", arg: 5, scope: !35, file: !1, line: 830, type: !14)
!1010 = !DILocation(line: 830, column: 34, scope: !35, inlinedAt: !998)
!1011 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PeripheralNumber", arg: 6, scope: !35, file: !1, line: 830, type: !14)
!1012 = !DILocation(line: 830, column: 55, scope: !35, inlinedAt: !998)
!1013 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "CalloutRoutine", arg: 7, scope: !35, file: !1, line: 830, type: !14)
!1014 = !DILocation(line: 830, column: 78, scope: !35, inlinedAt: !998)
!1015 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 8, scope: !35, file: !1, line: 831, type: !14)
!1016 = !DILocation(line: 831, column: 34, scope: !35, inlinedAt: !998)
!1017 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_4", scope: !1018, file: !1, line: 835, type: !14)
!1018 = distinct !DILexicalBlock(scope: !35, file: !1, line: 834, column: 3)
!1019 = !DILocation(line: 835, column: 7, scope: !1018, inlinedAt: !998)
!1020 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PhysicalDeviceObject", arg: 1, scope: !38, file: !1, line: 852, type: !14)
!1021 = !DILocation(line: 852, column: 35, scope: !38, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 557, column: 19, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 556, column: 7)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !1, line: 547, column: 24)
!1025 = distinct !DILexicalBlock(scope: !989, file: !1, line: 547, column: 9)
!1026 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InterfaceClassGuid", arg: 2, scope: !38, file: !1, line: 852, type: !14)
!1027 = !DILocation(line: 852, column: 62, scope: !38, inlinedAt: !1022)
!1028 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ReferenceString", arg: 3, scope: !38, file: !1, line: 853, type: !14)
!1029 = !DILocation(line: 853, column: 35, scope: !38, inlinedAt: !1022)
!1030 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SymbolicLinkName", arg: 4, scope: !38, file: !1, line: 853, type: !14)
!1031 = !DILocation(line: 853, column: 57, scope: !38, inlinedAt: !1022)
!1032 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_5", scope: !1033, file: !1, line: 857, type: !14)
!1033 = distinct !DILexicalBlock(scope: !38, file: !1, line: 856, column: 3)
!1034 = !DILocation(line: 857, column: 7, scope: !1033, inlinedAt: !1022)
!1035 = !DILocation(line: 874, column: 35, scope: !41, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 562, column: 21, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 561, column: 9)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !1, line: 560, column: 27)
!1039 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 560, column: 11)
!1040 = !DILocation(line: 874, column: 58, scope: !41, inlinedAt: !1036)
!1041 = !DILocation(line: 878, column: 7, scope: !428, inlinedAt: !1036)
!1042 = !DILocation(line: 467, column: 7, scope: !964)
!1043 = !DILocation(line: 38, column: 10, scope: !92, inlinedAt: !1044)
!1044 = distinct !DILocation(line: 469, column: 5, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !1, line: 468, column: 5)
!1046 = distinct !DILexicalBlock(scope: !979, file: !1, line: 467, column: 16)
!1047 = !DILocation(line: 471, column: 3, scope: !1046)
!1048 = !DILocation(line: 472, column: 9, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !1, line: 472, column: 9)
!1050 = distinct !DILexicalBlock(scope: !979, file: !1, line: 471, column: 10)
!1051 = !DILocation(line: 472, column: 24, scope: !1049)
!1052 = !DILocation(line: 472, column: 9, scope: !1050)
!1053 = !DILocation(line: 38, column: 10, scope: !92, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 474, column: 7, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 473, column: 7)
!1056 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 472, column: 30)
!1057 = !DILocation(line: 476, column: 5, scope: !1056)
!1058 = !DILocation(line: 477, column: 22, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 476, column: 12)
!1060 = !DILocation(line: 481, column: 15, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !964, file: !1, line: 480, column: 3)
!1062 = !DILocation(line: 481, column: 56, scope: !1061)
!1063 = !DILocation(line: 481, column: 13, scope: !1061)
!1064 = !DILocation(line: 482, column: 20, scope: !1061)
!1065 = !DILocation(line: 482, column: 18, scope: !1061)
!1066 = !DILocation(line: 483, column: 18, scope: !1061)
!1067 = !DILocation(line: 484, column: 28, scope: !1061)
!1068 = !DILocation(line: 484, column: 61, scope: !1061)
!1069 = !DILocation(line: 484, column: 14, scope: !1061)
!1070 = !DILocation(line: 484, column: 12, scope: !1061)
!1071 = !DILocation(line: 487, column: 24, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !964, file: !1, line: 486, column: 3)
!1073 = !DILocation(line: 487, column: 17, scope: !1072)
!1074 = !DILocation(line: 487, column: 15, scope: !1072)
!1075 = !DILocation(line: 488, column: 7, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1072, file: !1, line: 488, column: 7)
!1077 = !DILocation(line: 488, column: 19, scope: !1076)
!1078 = !DILocation(line: 488, column: 7, scope: !1072)
!1079 = !DILocation(line: 490, column: 38, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 489, column: 5)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !1, line: 488, column: 28)
!1082 = !DILocation(line: 490, column: 49, scope: !1080)
!1083 = !DILocation(line: 490, column: 60, scope: !1080)
!1084 = !DILocation(line: 490, column: 16, scope: !1080)
!1085 = !DILocation(line: 490, column: 14, scope: !1080)
!1086 = !DILocation(line: 491, column: 16, scope: !1080)
!1087 = !DILocation(line: 491, column: 14, scope: !1080)
!1088 = !DILocation(line: 493, column: 3, scope: !1081)
!1089 = !DILocation(line: 496, column: 24, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !964, file: !1, line: 495, column: 3)
!1091 = !DILocation(line: 497, column: 23, scope: !1090)
!1092 = !DILocation(line: 498, column: 15, scope: !1090)
!1093 = !DILocation(line: 499, column: 15, scope: !1090)
!1094 = !DILocation(line: 500, column: 15, scope: !1090)
!1095 = !DILocation(line: 501, column: 15, scope: !1090)
!1096 = !DILocation(line: 502, column: 28, scope: !1090)
!1097 = !DILocation(line: 502, column: 61, scope: !1090)
!1098 = !DILocation(line: 502, column: 74, scope: !1090)
!1099 = !DILocation(line: 502, column: 14, scope: !1090)
!1100 = !DILocation(line: 502, column: 12, scope: !1090)
!1101 = !DILocation(line: 504, column: 7, scope: !990)
!1102 = !DILocation(line: 504, column: 16, scope: !990)
!1103 = !DILocation(line: 504, column: 7, scope: !964)
!1104 = !DILocation(line: 505, column: 42, scope: !989)
!1105 = !DILocation(line: 505, column: 40, scope: !989)
!1106 = !DILocation(line: 506, column: 9, scope: !988)
!1107 = !DILocation(line: 506, column: 9, scope: !989)
!1108 = !DILocation(line: 507, column: 11, scope: !986)
!1109 = !DILocation(line: 507, column: 11, scope: !987)
!1110 = !DILocation(line: 509, column: 42, scope: !984)
!1111 = !DILocation(line: 509, column: 61, scope: !984)
!1112 = !DILocation(line: 509, column: 20, scope: !984)
!1113 = !DILocation(line: 70, column: 3, scope: !117, inlinedAt: !983)
!1114 = !DILocation(line: 509, column: 18, scope: !984)
!1115 = !DILocation(line: 511, column: 13, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !985, file: !1, line: 511, column: 13)
!1117 = !DILocation(line: 511, column: 42, scope: !1116)
!1118 = !DILocation(line: 511, column: 13, scope: !985)
!1119 = !DILocation(line: 514, column: 9, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1116, file: !1, line: 511, column: 48)
!1121 = !DILocation(line: 515, column: 7, scope: !985)
!1122 = !DILocation(line: 516, column: 9, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !986, file: !1, line: 515, column: 14)
!1124 = !DILocation(line: 518, column: 5, scope: !987)
!1125 = !DILocation(line: 518, column: 12, scope: !988)
!1126 = !DILocation(line: 520, column: 11, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 520, column: 11)
!1128 = !DILocation(line: 520, column: 40, scope: !1127)
!1129 = !DILocation(line: 520, column: 11, scope: !1002)
!1130 = !DILocation(line: 523, column: 7, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1127, file: !1, line: 520, column: 46)
!1132 = !DILocation(line: 524, column: 21, scope: !1002)
!1133 = !DILocation(line: 526, column: 7, scope: !1001)
!1134 = !DILocation(line: 526, column: 17, scope: !1001)
!1135 = !DILocation(line: 529, column: 13, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 529, column: 13)
!1137 = !DILocation(line: 529, column: 30, scope: !1136)
!1138 = !DILocation(line: 529, column: 27, scope: !1136)
!1139 = !DILocation(line: 529, column: 13, scope: !1000)
!1140 = !DILocation(line: 530, column: 11, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1136, file: !1, line: 529, column: 52)
!1142 = !DILocation(line: 533, column: 28, scope: !999)
!1143 = !DILocation(line: 533, column: 26, scope: !999)
!1144 = !DILocation(line: 534, column: 45, scope: !999)
!1145 = !DILocation(line: 534, column: 63, scope: !999)
!1146 = !DILocation(line: 535, column: 45, scope: !999)
!1147 = !DILocation(line: 535, column: 49, scope: !999)
!1148 = !DILocation(line: 535, column: 76, scope: !999)
!1149 = !DILocation(line: 535, column: 80, scope: !999)
!1150 = !DILocation(line: 536, column: 45, scope: !999)
!1151 = !DILocation(line: 536, column: 63, scope: !999)
!1152 = !DILocation(line: 534, column: 20, scope: !999)
!1153 = !DILocation(line: 836, column: 15, scope: !1018, inlinedAt: !998)
!1154 = !DILocation(line: 836, column: 13, scope: !1018, inlinedAt: !998)
!1155 = !DILocation(line: 837, column: 7, scope: !1156, inlinedAt: !998)
!1156 = distinct !DILexicalBlock(scope: !1018, file: !1, line: 837, column: 7)
!1157 = !DILocation(line: 837, column: 17, scope: !1156, inlinedAt: !998)
!1158 = !DILocation(line: 837, column: 7, scope: !1018, inlinedAt: !998)
!1159 = !DILocation(line: 843, column: 7, scope: !1160, inlinedAt: !998)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 841, column: 12)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !1, line: 841, column: 9)
!1162 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 839, column: 10)
!1163 = !DILocation(line: 845, column: 7, scope: !1160, inlinedAt: !998)
!1164 = !DILocation(line: 851, column: 1, scope: !35, inlinedAt: !998)
!1165 = !DILocation(line: 534, column: 18, scope: !999)
!1166 = !DILocation(line: 538, column: 13, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 538, column: 13)
!1168 = !DILocation(line: 538, column: 22, scope: !1167)
!1169 = !DILocation(line: 538, column: 13, scope: !1000)
!1170 = !DILocation(line: 539, column: 11, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1167, file: !1, line: 538, column: 28)
!1172 = !DILocation(line: 541, column: 23, scope: !1000)
!1173 = !DILocation(line: 544, column: 7, scope: !1001)
!1174 = !DILocation(line: 547, column: 9, scope: !1025)
!1175 = !DILocation(line: 547, column: 18, scope: !1025)
!1176 = !DILocation(line: 547, column: 9, scope: !989)
!1177 = !DILocation(line: 548, column: 11, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 548, column: 11)
!1179 = !DILocation(line: 548, column: 63, scope: !1178)
!1180 = !DILocation(line: 548, column: 11, scope: !1024)
!1181 = !DILocation(line: 549, column: 41, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 548, column: 69)
!1183 = !DILocation(line: 549, column: 39, scope: !1182)
!1184 = !DILocation(line: 551, column: 7, scope: !1182)
!1185 = !DILocation(line: 552, column: 41, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 551, column: 14)
!1187 = !DILocation(line: 552, column: 39, scope: !1186)
!1188 = !DILocation(line: 557, column: 45, scope: !1023)
!1189 = !DILocation(line: 557, column: 79, scope: !1023)
!1190 = !DILocation(line: 558, column: 48, scope: !1023)
!1191 = !DILocation(line: 557, column: 19, scope: !1023)
!1192 = !DILocation(line: 858, column: 15, scope: !1033, inlinedAt: !1022)
!1193 = !DILocation(line: 858, column: 13, scope: !1033, inlinedAt: !1022)
!1194 = !DILocation(line: 859, column: 7, scope: !1195, inlinedAt: !1022)
!1195 = distinct !DILexicalBlock(scope: !1033, file: !1, line: 859, column: 7)
!1196 = !DILocation(line: 859, column: 17, scope: !1195, inlinedAt: !1022)
!1197 = !DILocation(line: 859, column: 7, scope: !1033, inlinedAt: !1022)
!1198 = !DILocation(line: 865, column: 7, scope: !1199, inlinedAt: !1022)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !1, line: 863, column: 12)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !1, line: 863, column: 9)
!1201 = distinct !DILexicalBlock(scope: !1195, file: !1, line: 861, column: 10)
!1202 = !DILocation(line: 867, column: 7, scope: !1199, inlinedAt: !1022)
!1203 = !DILocation(line: 873, column: 1, scope: !38, inlinedAt: !1022)
!1204 = !DILocation(line: 557, column: 17, scope: !1023)
!1205 = !DILocation(line: 560, column: 11, scope: !1039)
!1206 = !DILocation(line: 560, column: 21, scope: !1039)
!1207 = !DILocation(line: 560, column: 11, scope: !1024)
!1208 = !DILocation(line: 562, column: 47, scope: !1037)
!1209 = !DILocation(line: 562, column: 21, scope: !1037)
!1210 = !DILocation(line: 879, column: 15, scope: !428, inlinedAt: !1036)
!1211 = !DILocation(line: 879, column: 13, scope: !428, inlinedAt: !1036)
!1212 = !DILocation(line: 880, column: 7, scope: !775, inlinedAt: !1036)
!1213 = !DILocation(line: 880, column: 17, scope: !775, inlinedAt: !1036)
!1214 = !DILocation(line: 880, column: 7, scope: !428, inlinedAt: !1036)
!1215 = !DILocation(line: 886, column: 7, scope: !779, inlinedAt: !1036)
!1216 = !DILocation(line: 888, column: 7, scope: !779, inlinedAt: !1036)
!1217 = !DILocation(line: 894, column: 1, scope: !41, inlinedAt: !1036)
!1218 = !DILocation(line: 562, column: 19, scope: !1037)
!1219 = !DILocation(line: 565, column: 7, scope: !1038)
!1220 = !DILocation(line: 566, column: 36, scope: !1024)
!1221 = !DILocation(line: 567, column: 42, scope: !1024)
!1222 = !DILocation(line: 568, column: 5, scope: !1024)
!1223 = !DILocation(line: 569, column: 3, scope: !989)
!1224 = !DILocation(line: 571, column: 27, scope: !994)
!1225 = !DILocation(line: 571, column: 25, scope: !994)
!1226 = !DILocation(line: 572, column: 14, scope: !994)
!1227 = !DILocation(line: 572, column: 12, scope: !994)
!1228 = !DILocation(line: 573, column: 22, scope: !994)
!1229 = !DILocation(line: 573, column: 3, scope: !994)
!1230 = !DILocation(line: 986, column: 7, scope: !454, inlinedAt: !993)
!1231 = !DILocation(line: 986, column: 12, scope: !454, inlinedAt: !993)
!1232 = !DILocation(line: 986, column: 9, scope: !454, inlinedAt: !993)
!1233 = !DILocation(line: 986, column: 7, scope: !455, inlinedAt: !993)
!1234 = !DILocation(line: 38, column: 10, scope: !92, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 990, column: 5, scope: !461, inlinedAt: !993)
!1236 = !DILocation(line: 987, column: 9, scope: !464, inlinedAt: !993)
!1237 = !DILocation(line: 987, column: 7, scope: !464, inlinedAt: !993)
!1238 = !DILocation(line: 993, column: 3, scope: !455, inlinedAt: !993)
!1239 = !DILocation(line: 575, column: 11, scope: !964)
!1240 = !DILocation(line: 575, column: 3, scope: !964)
!1241 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !18, file: !1, line: 578, type: !14)
!1242 = !DILocation(line: 578, column: 27, scope: !18)
!1243 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !18, file: !1, line: 578, type: !14)
!1244 = !DILocation(line: 578, column: 46, scope: !18)
!1245 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 3, scope: !18, file: !1, line: 578, type: !14)
!1246 = !DILocation(line: 578, column: 56, scope: !18)
!1247 = !DILocation(line: 583, column: 14, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 582, column: 3)
!1249 = distinct !DILexicalBlock(scope: !18, file: !1, line: 581, column: 3)
!1250 = !DILocation(line: 583, column: 3, scope: !1248)
!1251 = !DILocation(line: 997, column: 11, scope: !47, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 583, column: 3, scope: !1248)
!1253 = !DILocation(line: 997, column: 7, scope: !47, inlinedAt: !1252)
!1254 = !DILocation(line: 1000, column: 18, scope: !1255, inlinedAt: !1252)
!1255 = distinct !DILexicalBlock(scope: !47, file: !1, line: 999, column: 3)
!1256 = !DILocation(line: 1001, column: 11, scope: !1255, inlinedAt: !1252)
!1257 = !DILocation(line: 1001, column: 3, scope: !1255, inlinedAt: !1252)
!1258 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 1, scope: !47, file: !1, line: 996, type: !14)
!1259 = !DILocation(line: 996, column: 20, scope: !47, inlinedAt: !1252)
!1260 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Increment", arg: 2, scope: !47, file: !1, line: 996, type: !14)
!1261 = !DILocation(line: 996, column: 32, scope: !47, inlinedAt: !1252)
!1262 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Wait", arg: 3, scope: !47, file: !1, line: 996, type: !14)
!1263 = !DILocation(line: 996, column: 48, scope: !47, inlinedAt: !1252)
!1264 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !47, file: !1, line: 997, type: !14)
!1265 = !DILocation(line: 585, column: 3, scope: !1249)
!1266 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !21, file: !1, line: 588, type: !14)
!1267 = !DILocation(line: 588, column: 23, scope: !21)
!1268 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Ioctl", arg: 2, scope: !21, file: !1, line: 588, type: !14)
!1269 = !DILocation(line: 588, column: 42, scope: !21)
!1270 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Data", arg: 3, scope: !21, file: !1, line: 588, type: !14)
!1271 = !DILocation(line: 588, column: 54, scope: !21)
!1272 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ntStatus", scope: !21, file: !1, line: 589, type: !14)
!1273 = !DILocation(line: 589, column: 7, scope: !21)
!1274 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp", scope: !21, file: !1, line: 590, type: !14)
!1275 = !DILocation(line: 590, column: 7, scope: !21)
!1276 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack", scope: !21, file: !1, line: 591, type: !14)
!1277 = !DILocation(line: 591, column: 7, scope: !21)
!1278 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doneEvent", scope: !21, file: !1, line: 592, type: !14)
!1279 = !DILocation(line: 592, column: 7, scope: !21)
!1280 = !DILocation(line: 592, column: 19, scope: !21)
!1281 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ioStatus", scope: !21, file: !1, line: 593, type: !14)
!1282 = !DILocation(line: 593, column: 7, scope: !21)
!1283 = !DILocation(line: 593, column: 18, scope: !21)
!1284 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp__Tail__Overlay__CurrentStackLocation", scope: !21, file: !1, line: 594, type: !14)
!1285 = !DILocation(line: 594, column: 7, scope: !21)
!1286 = !DILocation(line: 594, column: 50, scope: !21)
!1287 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack__Parameters__DeviceIoControl__Type3InputBuffer", scope: !21, file: !1, line: 595, type: !14)
!1288 = !DILocation(line: 595, column: 7, scope: !21)
!1289 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp11", scope: !21, file: !1, line: 596, type: !4)
!1290 = !DILocation(line: 596, column: 8, scope: !21)
!1291 = !DILocation(line: 600, column: 39, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !1, line: 599, column: 3)
!1293 = distinct !DILexicalBlock(scope: !21, file: !1, line: 598, column: 3)
!1294 = !DILocation(line: 600, column: 46, scope: !1292)
!1295 = !DILocation(line: 600, column: 75, scope: !1292)
!1296 = !DILocation(line: 601, column: 39, scope: !1292)
!1297 = !DILocation(line: 600, column: 9, scope: !1292)
!1298 = !DILocation(line: 787, column: 16, scope: !29, inlinedAt: !1299)
!1299 = distinct !DILocation(line: 600, column: 9, scope: !1292)
!1300 = !DILocation(line: 787, column: 7, scope: !29, inlinedAt: !1299)
!1301 = !DILocation(line: 790, column: 13, scope: !1302, inlinedAt: !1299)
!1302 = distinct !DILexicalBlock(scope: !29, file: !1, line: 789, column: 3)
!1303 = !DILocation(line: 792, column: 15, scope: !1302, inlinedAt: !1299)
!1304 = !DILocation(line: 792, column: 13, scope: !1302, inlinedAt: !1299)
!1305 = !DILocation(line: 793, column: 7, scope: !1306, inlinedAt: !1299)
!1306 = distinct !DILexicalBlock(scope: !1302, file: !1, line: 793, column: 7)
!1307 = !DILocation(line: 793, column: 17, scope: !1306, inlinedAt: !1299)
!1308 = !DILocation(line: 793, column: 7, scope: !1302, inlinedAt: !1299)
!1309 = !DILocation(line: 799, column: 15, scope: !1310, inlinedAt: !1299)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !1, line: 797, column: 12)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !1, line: 797, column: 9)
!1312 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 795, column: 10)
!1313 = !DILocation(line: 799, column: 7, scope: !1310, inlinedAt: !1299)
!1314 = !DILocation(line: 801, column: 7, scope: !1310, inlinedAt: !1299)
!1315 = !DILocation(line: 807, column: 1, scope: !29, inlinedAt: !1299)
!1316 = !DILocation(line: 600, column: 7, scope: !1292)
!1317 = !DILocation(line: 603, column: 7, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1293, file: !1, line: 603, column: 7)
!1319 = !DILocation(line: 603, column: 11, scope: !1318)
!1320 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "IoControlCode", arg: 1, scope: !29, file: !1, line: 783, type: !14)
!1321 = !DILocation(line: 783, column: 39, scope: !29, inlinedAt: !1299)
!1322 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 2, scope: !29, file: !1, line: 783, type: !14)
!1323 = !DILocation(line: 783, column: 59, scope: !29, inlinedAt: !1299)
!1324 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InputBuffer", arg: 3, scope: !29, file: !1, line: 783, type: !14)
!1325 = !DILocation(line: 783, column: 78, scope: !29, inlinedAt: !1299)
!1326 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InputBufferLength", arg: 4, scope: !29, file: !1, line: 784, type: !14)
!1327 = !DILocation(line: 784, column: 39, scope: !29, inlinedAt: !1299)
!1328 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "OutputBuffer", arg: 5, scope: !29, file: !1, line: 784, type: !14)
!1329 = !DILocation(line: 784, column: 63, scope: !29, inlinedAt: !1299)
!1330 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "OutputBufferLength", arg: 6, scope: !29, file: !1, line: 784, type: !14)
!1331 = !DILocation(line: 784, column: 82, scope: !29, inlinedAt: !1299)
!1332 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InternalDeviceIoControl", arg: 7, scope: !29, file: !1, line: 785, type: !14)
!1333 = !DILocation(line: 785, column: 39, scope: !29, inlinedAt: !1299)
!1334 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 8, scope: !29, file: !1, line: 785, type: !14)
!1335 = !DILocation(line: 785, column: 69, scope: !29, inlinedAt: !1299)
!1336 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "IoStatusBlock", arg: 9, scope: !29, file: !1, line: 785, type: !14)
!1337 = !DILocation(line: 785, column: 81, scope: !29, inlinedAt: !1299)
!1338 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "malloc", scope: !29, file: !1, line: 787, type: !14)
!1339 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_2", scope: !1302, file: !1, line: 791, type: !14)
!1340 = !DILocation(line: 791, column: 7, scope: !1302, inlinedAt: !1299)
!1341 = !DILocation(line: 603, column: 7, scope: !1293)
!1342 = !DILocation(line: 604, column: 5, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1318, file: !1, line: 603, column: 17)
!1344 = !DILocation(line: 607, column: 14, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1293, file: !1, line: 606, column: 3)
!1346 = !DILocation(line: 607, column: 55, scope: !1345)
!1347 = !DILocation(line: 607, column: 12, scope: !1345)
!1348 = !DILocation(line: 608, column: 61, scope: !1345)
!1349 = !DILocation(line: 608, column: 59, scope: !1345)
!1350 = !DILocation(line: 609, column: 28, scope: !1345)
!1351 = !DILocation(line: 609, column: 42, scope: !1345)
!1352 = !DILocation(line: 609, column: 14, scope: !1345)
!1353 = !DILocation(line: 609, column: 12, scope: !1345)
!1354 = !DILocation(line: 612, column: 24, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1293, file: !1, line: 611, column: 3)
!1356 = !DILocation(line: 612, column: 17, scope: !1355)
!1357 = !DILocation(line: 612, column: 15, scope: !1355)
!1358 = !DILocation(line: 613, column: 7, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1355, file: !1, line: 613, column: 7)
!1360 = !DILocation(line: 613, column: 19, scope: !1359)
!1361 = !DILocation(line: 613, column: 7, scope: !1355)
!1362 = !DILocation(line: 615, column: 27, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !1, line: 614, column: 5)
!1364 = distinct !DILexicalBlock(scope: !1359, file: !1, line: 613, column: 28)
!1365 = !DILocation(line: 615, column: 38, scope: !1363)
!1366 = !DILocation(line: 615, column: 49, scope: !1363)
!1367 = !DILocation(line: 615, column: 5, scope: !1363)
!1368 = !DILocation(line: 616, column: 16, scope: !1363)
!1369 = !DILocation(line: 616, column: 14, scope: !1363)
!1370 = !DILocation(line: 618, column: 3, scope: !1364)
!1371 = !DILocation(line: 620, column: 11, scope: !1293)
!1372 = !DILocation(line: 620, column: 3, scope: !1293)
!1373 = !DILocation(line: 622, column: 1, scope: !21)
!1374 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DisketteExtension", arg: 1, scope: !22, file: !1, line: 623, type: !14)
!1375 = !DILocation(line: 623, column: 38, scope: !22)
!1376 = !DILocation(line: 627, column: 3, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !22, file: !1, line: 626, column: 3)
!1378 = !DILocation(line: 634, column: 7, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !25, file: !1, line: 633, column: 3)
!1380 = !DILocation(line: 634, column: 5, scope: !1379)
!1381 = !DILocation(line: 635, column: 10, scope: !1379)
!1382 = !DILocation(line: 636, column: 18, scope: !1379)
!1383 = !DILocation(line: 637, column: 21, scope: !1379)
!1384 = !DILocation(line: 638, column: 18, scope: !1379)
!1385 = !DILocation(line: 639, column: 13, scope: !1379)
!1386 = !DILocation(line: 640, column: 3, scope: !1379)
!1387 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !26, file: !1, line: 644, type: !14)
!1388 = !DILocation(line: 644, column: 7, scope: !26)
!1389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp", scope: !26, file: !1, line: 645, type: !14)
!1390 = !DILocation(line: 645, column: 7, scope: !26)
!1391 = !DILocation(line: 645, column: 13, scope: !26)
!1392 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pirp", scope: !26, file: !1, line: 646, type: !14)
!1393 = !DILocation(line: 646, column: 7, scope: !26)
!1394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pirp__IoStatus__Status", scope: !26, file: !1, line: 647, type: !14)
!1395 = !DILocation(line: 647, column: 7, scope: !26)
!1396 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp_choice", scope: !26, file: !1, line: 648, type: !14)
!1397 = !DILocation(line: 648, column: 7, scope: !26)
!1398 = !DILocation(line: 648, column: 20, scope: !26)
!1399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devobj", scope: !26, file: !1, line: 649, type: !14)
!1400 = !DILocation(line: 649, column: 7, scope: !26)
!1401 = !DILocation(line: 649, column: 16, scope: !26)
!1402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp8", scope: !26, file: !1, line: 650, type: !14)
!1403 = !DILocation(line: 650, column: 7, scope: !26)
!1404 = !DILocation(line: 652, column: 16, scope: !26)
!1405 = !DILocation(line: 653, column: 14, scope: !26)
!1406 = !DILocation(line: 654, column: 13, scope: !26)
!1407 = !DILocation(line: 655, column: 13, scope: !26)
!1408 = !DILocation(line: 656, column: 18, scope: !26)
!1409 = !DILocation(line: 657, column: 24, scope: !26)
!1410 = !DILocation(line: 658, column: 20, scope: !26)
!1411 = !DILocation(line: 659, column: 24, scope: !26)
!1412 = !DILocation(line: 660, column: 32, scope: !26)
!1413 = !DILocation(line: 661, column: 12, scope: !26)
!1414 = !DILocation(line: 662, column: 5, scope: !26)
!1415 = !DILocation(line: 663, column: 12, scope: !26)
!1416 = !DILocation(line: 664, column: 6, scope: !26)
!1417 = !DILocation(line: 665, column: 6, scope: !26)
!1418 = !DILocation(line: 666, column: 9, scope: !26)
!1419 = !DILocation(line: 667, column: 9, scope: !26)
!1420 = !DILocation(line: 668, column: 8, scope: !26)
!1421 = !DILocation(line: 669, column: 8, scope: !26)
!1422 = !DILocation(line: 670, column: 7, scope: !26)
!1423 = !DILocation(line: 671, column: 10, scope: !26)
!1424 = !DILocation(line: 672, column: 18, scope: !26)
!1425 = !DILocation(line: 673, column: 21, scope: !26)
!1426 = !DILocation(line: 674, column: 18, scope: !26)
!1427 = !DILocation(line: 675, column: 13, scope: !26)
!1428 = !DILocation(line: 679, column: 10, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !1, line: 678, column: 3)
!1430 = distinct !DILexicalBlock(scope: !26, file: !1, line: 677, column: 3)
!1431 = !DILocation(line: 680, column: 10, scope: !1429)
!1432 = !DILocation(line: 680, column: 8, scope: !1429)
!1433 = !DILocation(line: 47, column: 12, scope: !95, inlinedAt: !1434)
!1434 = distinct !DILocation(line: 681, column: 3, scope: !1429)
!1435 = !DILocation(line: 48, column: 6, scope: !95, inlinedAt: !1434)
!1436 = !DILocation(line: 49, column: 6, scope: !95, inlinedAt: !1434)
!1437 = !DILocation(line: 50, column: 9, scope: !95, inlinedAt: !1434)
!1438 = !DILocation(line: 51, column: 9, scope: !95, inlinedAt: !1434)
!1439 = !DILocation(line: 52, column: 8, scope: !95, inlinedAt: !1434)
!1440 = !DILocation(line: 53, column: 8, scope: !95, inlinedAt: !1434)
!1441 = !DILocation(line: 54, column: 7, scope: !95, inlinedAt: !1434)
!1442 = !DILocation(line: 55, column: 7, scope: !95, inlinedAt: !1434)
!1443 = !DILocation(line: 55, column: 5, scope: !95, inlinedAt: !1434)
!1444 = !DILocation(line: 56, column: 10, scope: !95, inlinedAt: !1434)
!1445 = !DILocation(line: 57, column: 18, scope: !95, inlinedAt: !1434)
!1446 = !DILocation(line: 58, column: 21, scope: !95, inlinedAt: !1434)
!1447 = !DILocation(line: 59, column: 18, scope: !95, inlinedAt: !1434)
!1448 = !DILocation(line: 60, column: 13, scope: !95, inlinedAt: !1434)
!1449 = !DILocation(line: 683, column: 7, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1430, file: !1, line: 683, column: 7)
!1451 = !DILocation(line: 683, column: 14, scope: !1450)
!1452 = !DILocation(line: 683, column: 7, scope: !1430)
!1453 = !DILocation(line: 684, column: 9, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1450, file: !1, line: 683, column: 20)
!1455 = !DILocation(line: 684, column: 7, scope: !1454)
!1456 = !DILocation(line: 685, column: 15, scope: !1454)
!1457 = !DILocation(line: 686, column: 22, scope: !1454)
!1458 = !DILocation(line: 686, column: 20, scope: !1454)
!1459 = !DILocation(line: 687, column: 25, scope: !1454)
!1460 = !DILocation(line: 687, column: 23, scope: !1454)
!1461 = !DILocation(line: 688, column: 22, scope: !1454)
!1462 = !DILocation(line: 688, column: 20, scope: !1454)
!1463 = !DILocation(line: 689, column: 14, scope: !1454)
!1464 = !DILocation(line: 689, column: 12, scope: !1454)
!1465 = !DILocation(line: 690, column: 28, scope: !1454)
!1466 = !DILocation(line: 691, column: 14, scope: !1454)
!1467 = !DILocation(line: 692, column: 9, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1454, file: !1, line: 692, column: 9)
!1469 = !DILocation(line: 692, column: 20, scope: !1468)
!1470 = !DILocation(line: 692, column: 9, scope: !1454)
!1471 = !DILocation(line: 693, column: 30, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1468, file: !1, line: 692, column: 26)
!1473 = !DILocation(line: 694, column: 16, scope: !1472)
!1474 = !DILocation(line: 695, column: 5, scope: !1472)
!1475 = !DILocation(line: 634, column: 7, scope: !1379, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 697, column: 5, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1454, file: !1, line: 696, column: 5)
!1478 = !DILocation(line: 634, column: 5, scope: !1379, inlinedAt: !1476)
!1479 = !DILocation(line: 635, column: 10, scope: !1379, inlinedAt: !1476)
!1480 = !DILocation(line: 636, column: 18, scope: !1379, inlinedAt: !1476)
!1481 = !DILocation(line: 637, column: 21, scope: !1379, inlinedAt: !1476)
!1482 = !DILocation(line: 638, column: 18, scope: !1379, inlinedAt: !1476)
!1483 = !DILocation(line: 639, column: 13, scope: !1379, inlinedAt: !1476)
!1484 = !DILocation(line: 700, column: 9, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !1, line: 700, column: 9)
!1486 = distinct !DILexicalBlock(scope: !1454, file: !1, line: 699, column: 5)
!1487 = !DILocation(line: 700, column: 16, scope: !1485)
!1488 = !DILocation(line: 700, column: 9, scope: !1486)
!1489 = !DILocation(line: 701, column: 7, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1485, file: !1, line: 700, column: 21)
!1491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_1", scope: !1454, file: !1, line: 704, type: !14)
!1492 = !DILocation(line: 704, column: 9, scope: !1454)
!1493 = !DILocation(line: 705, column: 17, scope: !1454)
!1494 = !DILocation(line: 705, column: 15, scope: !1454)
!1495 = !DILocation(line: 706, column: 9, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1454, file: !1, line: 706, column: 9)
!1497 = !DILocation(line: 706, column: 19, scope: !1496)
!1498 = !DILocation(line: 706, column: 9, scope: !1454)
!1499 = !DILocation(line: 707, column: 7, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1496, file: !1, line: 706, column: 25)
!1501 = !DILocation(line: 709, column: 7, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1496, file: !1, line: 708, column: 12)
!1503 = !DILocation(line: 710, column: 11, scope: !1502)
!1504 = !DILocation(line: 710, column: 14, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1502, file: !1, line: 710, column: 11)
!1506 = !DILocation(line: 713, column: 28, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !1, line: 712, column: 9)
!1508 = distinct !DILexicalBlock(scope: !1505, file: !1, line: 710, column: 14)
!1509 = !DILocation(line: 713, column: 36, scope: !1507)
!1510 = !DILocation(line: 713, column: 18, scope: !1507)
!1511 = !DILocation(line: 713, column: 16, scope: !1507)
!1512 = !DILocation(line: 715, column: 9, scope: !1508)
!1513 = !DILocation(line: 717, column: 9, scope: !1508)
!1514 = !DILocation(line: 718, column: 14, scope: !1505)
!1515 = !DILocation(line: 722, column: 3, scope: !1454)
!1516 = !DILocation(line: 723, column: 7, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1430, file: !1, line: 723, column: 7)
!1518 = !DILocation(line: 723, column: 14, scope: !1517)
!1519 = !DILocation(line: 723, column: 7, scope: !1430)
!1520 = !DILocation(line: 724, column: 9, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !1, line: 724, column: 9)
!1522 = distinct !DILexicalBlock(scope: !1517, file: !1, line: 723, column: 20)
!1523 = !DILocation(line: 724, column: 14, scope: !1521)
!1524 = !DILocation(line: 724, column: 11, scope: !1521)
!1525 = !DILocation(line: 724, column: 9, scope: !1522)
!1526 = !DILocation(line: 725, column: 11, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1521, file: !1, line: 724, column: 18)
!1528 = !DILocation(line: 725, column: 9, scope: !1527)
!1529 = !DILocation(line: 726, column: 5, scope: !1527)
!1530 = !DILocation(line: 727, column: 7, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1521, file: !1, line: 726, column: 12)
!1532 = !DILocation(line: 729, column: 3, scope: !1522)
!1533 = !DILocation(line: 729, column: 10, scope: !1517)
!1534 = !DILocation(line: 731, column: 9, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !1, line: 731, column: 9)
!1536 = distinct !DILexicalBlock(scope: !1517, file: !1, line: 729, column: 10)
!1537 = !DILocation(line: 731, column: 16, scope: !1535)
!1538 = !DILocation(line: 731, column: 9, scope: !1536)
!1539 = !DILocation(line: 732, column: 11, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !1, line: 732, column: 11)
!1541 = distinct !DILexicalBlock(scope: !1535, file: !1, line: 731, column: 22)
!1542 = !DILocation(line: 732, column: 16, scope: !1540)
!1543 = !DILocation(line: 732, column: 13, scope: !1540)
!1544 = !DILocation(line: 732, column: 11, scope: !1541)
!1545 = !DILocation(line: 733, column: 13, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1540, file: !1, line: 732, column: 22)
!1547 = !DILocation(line: 733, column: 11, scope: !1546)
!1548 = !DILocation(line: 734, column: 7, scope: !1546)
!1549 = !DILocation(line: 735, column: 9, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1540, file: !1, line: 734, column: 14)
!1551 = !DILocation(line: 737, column: 5, scope: !1541)
!1552 = !DILocation(line: 737, column: 12, scope: !1535)
!1553 = !DILocation(line: 739, column: 11, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !1, line: 739, column: 11)
!1555 = distinct !DILexicalBlock(scope: !1535, file: !1, line: 737, column: 12)
!1556 = !DILocation(line: 739, column: 16, scope: !1554)
!1557 = !DILocation(line: 739, column: 13, scope: !1554)
!1558 = !DILocation(line: 739, column: 11, scope: !1555)
!1559 = !DILocation(line: 740, column: 13, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !1, line: 740, column: 13)
!1561 = distinct !DILexicalBlock(scope: !1554, file: !1, line: 739, column: 26)
!1562 = !DILocation(line: 740, column: 20, scope: !1560)
!1563 = !DILocation(line: 740, column: 13, scope: !1561)
!1564 = !DILocation(line: 741, column: 15, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !1, line: 741, column: 15)
!1566 = distinct !DILexicalBlock(scope: !1560, file: !1, line: 740, column: 27)
!1567 = !DILocation(line: 741, column: 20, scope: !1565)
!1568 = !DILocation(line: 741, column: 17, scope: !1565)
!1569 = !DILocation(line: 741, column: 15, scope: !1566)
!1570 = !DILocation(line: 742, column: 17, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !1, line: 742, column: 17)
!1572 = distinct !DILexicalBlock(scope: !1565, file: !1, line: 741, column: 27)
!1573 = !DILocation(line: 742, column: 22, scope: !1571)
!1574 = !DILocation(line: 742, column: 19, scope: !1571)
!1575 = !DILocation(line: 742, column: 17, scope: !1572)
!1576 = !DILocation(line: 743, column: 19, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !1, line: 743, column: 19)
!1578 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 742, column: 27)
!1579 = !DILocation(line: 743, column: 24, scope: !1577)
!1580 = !DILocation(line: 743, column: 21, scope: !1577)
!1581 = !DILocation(line: 743, column: 19, scope: !1578)
!1582 = !DILocation(line: 38, column: 10, scope: !92, inlinedAt: !1583)
!1583 = distinct !DILocation(line: 745, column: 17, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !1, line: 744, column: 17)
!1585 = distinct !DILexicalBlock(scope: !1577, file: !1, line: 743, column: 28)
!1586 = !DILocation(line: 747, column: 15, scope: !1585)
!1587 = !DILocation(line: 748, column: 17, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1577, file: !1, line: 747, column: 22)
!1589 = !DILocation(line: 750, column: 13, scope: !1578)
!1590 = !DILocation(line: 751, column: 15, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 750, column: 20)
!1592 = !DILocation(line: 753, column: 11, scope: !1572)
!1593 = !DILocation(line: 753, column: 18, scope: !1565)
!1594 = !DILocation(line: 755, column: 17, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !1, line: 755, column: 17)
!1596 = distinct !DILexicalBlock(scope: !1565, file: !1, line: 753, column: 18)
!1597 = !DILocation(line: 755, column: 24, scope: !1595)
!1598 = !DILocation(line: 755, column: 17, scope: !1596)
!1599 = !DILocation(line: 756, column: 19, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !1, line: 756, column: 19)
!1601 = distinct !DILexicalBlock(scope: !1595, file: !1, line: 755, column: 30)
!1602 = !DILocation(line: 756, column: 26, scope: !1600)
!1603 = !DILocation(line: 756, column: 19, scope: !1601)
!1604 = !DILocation(line: 757, column: 24, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1600, file: !1, line: 756, column: 34)
!1606 = !DILocation(line: 758, column: 15, scope: !1605)
!1607 = !DILocation(line: 759, column: 13, scope: !1601)
!1608 = !DILocation(line: 760, column: 19, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !1, line: 760, column: 19)
!1610 = distinct !DILexicalBlock(scope: !1595, file: !1, line: 759, column: 20)
!1611 = !DILocation(line: 760, column: 24, scope: !1609)
!1612 = !DILocation(line: 760, column: 21, scope: !1609)
!1613 = !DILocation(line: 760, column: 19, scope: !1610)
!1614 = !DILocation(line: 761, column: 21, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !1, line: 761, column: 21)
!1616 = distinct !DILexicalBlock(scope: !1609, file: !1, line: 760, column: 28)
!1617 = !DILocation(line: 761, column: 28, scope: !1615)
!1618 = !DILocation(line: 761, column: 21, scope: !1616)
!1619 = !DILocation(line: 38, column: 10, scope: !92, inlinedAt: !1620)
!1620 = distinct !DILocation(line: 763, column: 19, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !1, line: 762, column: 19)
!1622 = distinct !DILexicalBlock(scope: !1615, file: !1, line: 761, column: 36)
!1623 = !DILocation(line: 765, column: 17, scope: !1622)
!1624 = !DILocation(line: 766, column: 15, scope: !1616)
!1625 = !DILocation(line: 767, column: 21, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !1, line: 767, column: 21)
!1627 = distinct !DILexicalBlock(scope: !1609, file: !1, line: 766, column: 22)
!1628 = !DILocation(line: 767, column: 31, scope: !1626)
!1629 = !DILocation(line: 767, column: 28, scope: !1626)
!1630 = !DILocation(line: 767, column: 21, scope: !1627)
!1631 = !DILocation(line: 38, column: 10, scope: !92, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 769, column: 19, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !1, line: 768, column: 19)
!1634 = distinct !DILexicalBlock(scope: !1626, file: !1, line: 767, column: 50)
!1635 = !DILocation(line: 771, column: 17, scope: !1634)
!1636 = !DILocation(line: 775, column: 9, scope: !1566)
!1637 = !DILocation(line: 776, column: 7, scope: !1561)
!1638 = !DILocation(line: 779, column: 10, scope: !1430)
!1639 = !DILocation(line: 780, column: 11, scope: !1430)
!1640 = !DILocation(line: 780, column: 3, scope: !1430)
!1641 = !DILocation(line: 782, column: 1, scope: !26)
!1642 = !DILocation(line: 783, column: 39, scope: !29)
!1643 = !DILocation(line: 783, column: 59, scope: !29)
!1644 = !DILocation(line: 783, column: 78, scope: !29)
!1645 = !DILocation(line: 784, column: 39, scope: !29)
!1646 = !DILocation(line: 784, column: 63, scope: !29)
!1647 = !DILocation(line: 784, column: 82, scope: !29)
!1648 = !DILocation(line: 785, column: 39, scope: !29)
!1649 = !DILocation(line: 785, column: 69, scope: !29)
!1650 = !DILocation(line: 785, column: 81, scope: !29)
!1651 = !DILocation(line: 787, column: 7, scope: !29)
!1652 = !DILocation(line: 787, column: 16, scope: !29)
!1653 = !DILocation(line: 790, column: 13, scope: !1302)
!1654 = !DILocation(line: 791, column: 7, scope: !1302)
!1655 = !DILocation(line: 792, column: 15, scope: !1302)
!1656 = !DILocation(line: 792, column: 13, scope: !1302)
!1657 = !DILocation(line: 793, column: 7, scope: !1306)
!1658 = !DILocation(line: 793, column: 17, scope: !1306)
!1659 = !DILocation(line: 793, column: 7, scope: !1302)
!1660 = !DILocation(line: 794, column: 5, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 793, column: 23)
!1662 = !DILocation(line: 796, column: 5, scope: !1312)
!1663 = !DILocation(line: 797, column: 9, scope: !1312)
!1664 = !DILocation(line: 797, column: 12, scope: !1311)
!1665 = !DILocation(line: 799, column: 15, scope: !1310)
!1666 = !DILocation(line: 799, column: 7, scope: !1310)
!1667 = !DILocation(line: 801, column: 7, scope: !1310)
!1668 = !DILocation(line: 807, column: 1, scope: !29)
!1669 = !DILocation(line: 808, column: 30, scope: !32)
!1670 = !DILocation(line: 812, column: 7, scope: !437)
!1671 = !DILocation(line: 813, column: 15, scope: !437)
!1672 = !DILocation(line: 813, column: 13, scope: !437)
!1673 = !DILocation(line: 814, column: 7, scope: !793)
!1674 = !DILocation(line: 814, column: 17, scope: !793)
!1675 = !DILocation(line: 814, column: 7, scope: !437)
!1676 = !DILocation(line: 815, column: 5, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !793, file: !1, line: 814, column: 23)
!1678 = !DILocation(line: 817, column: 5, scope: !799)
!1679 = !DILocation(line: 818, column: 9, scope: !799)
!1680 = !DILocation(line: 818, column: 12, scope: !798)
!1681 = !DILocation(line: 820, column: 7, scope: !797)
!1682 = !DILocation(line: 822, column: 7, scope: !797)
!1683 = !DILocation(line: 828, column: 1, scope: !32)
!1684 = !DILocation(line: 829, column: 34, scope: !35)
!1685 = !DILocation(line: 829, column: 48, scope: !35)
!1686 = !DILocation(line: 829, column: 64, scope: !35)
!1687 = !DILocation(line: 829, column: 85, scope: !35)
!1688 = !DILocation(line: 830, column: 34, scope: !35)
!1689 = !DILocation(line: 830, column: 55, scope: !35)
!1690 = !DILocation(line: 830, column: 78, scope: !35)
!1691 = !DILocation(line: 831, column: 34, scope: !35)
!1692 = !DILocation(line: 835, column: 7, scope: !1018)
!1693 = !DILocation(line: 836, column: 15, scope: !1018)
!1694 = !DILocation(line: 836, column: 13, scope: !1018)
!1695 = !DILocation(line: 837, column: 7, scope: !1156)
!1696 = !DILocation(line: 837, column: 17, scope: !1156)
!1697 = !DILocation(line: 837, column: 7, scope: !1018)
!1698 = !DILocation(line: 838, column: 5, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 837, column: 23)
!1700 = !DILocation(line: 840, column: 5, scope: !1162)
!1701 = !DILocation(line: 841, column: 9, scope: !1162)
!1702 = !DILocation(line: 841, column: 12, scope: !1161)
!1703 = !DILocation(line: 843, column: 7, scope: !1160)
!1704 = !DILocation(line: 845, column: 7, scope: !1160)
!1705 = !DILocation(line: 851, column: 1, scope: !35)
!1706 = !DILocation(line: 852, column: 35, scope: !38)
!1707 = !DILocation(line: 852, column: 62, scope: !38)
!1708 = !DILocation(line: 853, column: 35, scope: !38)
!1709 = !DILocation(line: 853, column: 57, scope: !38)
!1710 = !DILocation(line: 857, column: 7, scope: !1033)
!1711 = !DILocation(line: 858, column: 15, scope: !1033)
!1712 = !DILocation(line: 858, column: 13, scope: !1033)
!1713 = !DILocation(line: 859, column: 7, scope: !1195)
!1714 = !DILocation(line: 859, column: 17, scope: !1195)
!1715 = !DILocation(line: 859, column: 7, scope: !1033)
!1716 = !DILocation(line: 860, column: 5, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1195, file: !1, line: 859, column: 23)
!1718 = !DILocation(line: 862, column: 5, scope: !1201)
!1719 = !DILocation(line: 863, column: 9, scope: !1201)
!1720 = !DILocation(line: 863, column: 12, scope: !1200)
!1721 = !DILocation(line: 865, column: 7, scope: !1199)
!1722 = !DILocation(line: 867, column: 7, scope: !1199)
!1723 = !DILocation(line: 873, column: 1, scope: !38)
!1724 = !DILocation(line: 874, column: 35, scope: !41)
!1725 = !DILocation(line: 874, column: 58, scope: !41)
!1726 = !DILocation(line: 878, column: 7, scope: !428)
!1727 = !DILocation(line: 879, column: 15, scope: !428)
!1728 = !DILocation(line: 879, column: 13, scope: !428)
!1729 = !DILocation(line: 880, column: 7, scope: !775)
!1730 = !DILocation(line: 880, column: 17, scope: !775)
!1731 = !DILocation(line: 880, column: 7, scope: !428)
!1732 = !DILocation(line: 881, column: 5, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !775, file: !1, line: 880, column: 23)
!1734 = !DILocation(line: 883, column: 5, scope: !781)
!1735 = !DILocation(line: 884, column: 9, scope: !781)
!1736 = !DILocation(line: 884, column: 12, scope: !780)
!1737 = !DILocation(line: 886, column: 7, scope: !779)
!1738 = !DILocation(line: 888, column: 7, scope: !779)
!1739 = !DILocation(line: 894, column: 1, scope: !41)
!1740 = !DILocation(line: 899, column: 7, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !1, line: 899, column: 7)
!1742 = distinct !DILexicalBlock(scope: !42, file: !1, line: 898, column: 3)
!1743 = !DILocation(line: 899, column: 12, scope: !1741)
!1744 = !DILocation(line: 899, column: 9, scope: !1741)
!1745 = !DILocation(line: 899, column: 7, scope: !1742)
!1746 = !DILocation(line: 900, column: 9, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1741, file: !1, line: 899, column: 16)
!1748 = !DILocation(line: 900, column: 7, scope: !1747)
!1749 = !DILocation(line: 901, column: 3, scope: !1747)
!1750 = !DILocation(line: 38, column: 10, scope: !92, inlinedAt: !1751)
!1751 = distinct !DILocation(line: 903, column: 5, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !1, line: 902, column: 5)
!1753 = distinct !DILexicalBlock(scope: !1741, file: !1, line: 901, column: 10)
!1754 = !DILocation(line: 906, column: 3, scope: !1742)
!1755 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !43, file: !1, line: 909, type: !14)
!1756 = !DILocation(line: 909, column: 23, scope: !43)
!1757 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !43, file: !1, line: 909, type: !14)
!1758 = !DILocation(line: 909, column: 42, scope: !43)
!1759 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "returnVal2", scope: !43, file: !1, line: 911, type: !14)
!1760 = !DILocation(line: 911, column: 7, scope: !43)
!1761 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compRetStatus1", scope: !43, file: !1, line: 912, type: !14)
!1762 = !DILocation(line: 912, column: 7, scope: !43)
!1763 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lcontext", scope: !43, file: !1, line: 913, type: !14)
!1764 = !DILocation(line: 913, column: 7, scope: !43)
!1765 = !DILocation(line: 913, column: 18, scope: !43)
!1766 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp7", scope: !43, file: !1, line: 914, type: !5)
!1767 = !DILocation(line: 914, column: 17, scope: !43)
!1768 = !DILocation(line: 917, column: 7, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !1, line: 917, column: 7)
!1770 = distinct !DILexicalBlock(scope: !43, file: !1, line: 916, column: 3)
!1771 = !DILocation(line: 996, column: 20, scope: !47, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 583, column: 3, scope: !1248, inlinedAt: !1773)
!1773 = distinct !DILocation(line: 919, column: 22, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !1, line: 918, column: 5)
!1775 = distinct !DILexicalBlock(scope: !1769, file: !1, line: 917, column: 23)
!1776 = !DILocation(line: 996, column: 32, scope: !47, inlinedAt: !1772)
!1777 = !DILocation(line: 996, column: 48, scope: !47, inlinedAt: !1772)
!1778 = !DILocation(line: 997, column: 7, scope: !47, inlinedAt: !1772)
!1779 = !DILocation(line: 578, column: 27, scope: !18, inlinedAt: !1773)
!1780 = !DILocation(line: 578, column: 46, scope: !18, inlinedAt: !1773)
!1781 = !DILocation(line: 578, column: 56, scope: !18, inlinedAt: !1773)
!1782 = !DILocation(line: 917, column: 7, scope: !1770)
!1783 = !DILocation(line: 919, column: 40, scope: !1774)
!1784 = !DILocation(line: 919, column: 54, scope: !1774)
!1785 = !DILocation(line: 919, column: 59, scope: !1774)
!1786 = !DILocation(line: 919, column: 22, scope: !1774)
!1787 = !DILocation(line: 583, column: 14, scope: !1248, inlinedAt: !1773)
!1788 = !DILocation(line: 583, column: 3, scope: !1248, inlinedAt: !1773)
!1789 = !DILocation(line: 997, column: 11, scope: !47, inlinedAt: !1772)
!1790 = !DILocation(line: 1000, column: 18, scope: !1255, inlinedAt: !1772)
!1791 = !DILocation(line: 1001, column: 11, scope: !1255, inlinedAt: !1772)
!1792 = !DILocation(line: 1001, column: 3, scope: !1255, inlinedAt: !1772)
!1793 = !DILocation(line: 585, column: 3, scope: !1249, inlinedAt: !1773)
!1794 = !DILocation(line: 919, column: 20, scope: !1774)
!1795 = !DILocation(line: 922, column: 34, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1775, file: !1, line: 921, column: 5)
!1797 = !DILocation(line: 922, column: 18, scope: !1796)
!1798 = !DILocation(line: 922, column: 16, scope: !1796)
!1799 = !DILocation(line: 923, column: 9, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1796, file: !1, line: 923, column: 9)
!1801 = !DILocation(line: 923, column: 20, scope: !1800)
!1802 = !DILocation(line: 923, column: 9, scope: !1796)
!1803 = !DILocation(line: 899, column: 7, scope: !1741, inlinedAt: !1804)
!1804 = distinct !DILocation(line: 925, column: 7, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !1, line: 924, column: 7)
!1806 = distinct !DILexicalBlock(scope: !1800, file: !1, line: 923, column: 36)
!1807 = !DILocation(line: 899, column: 12, scope: !1741, inlinedAt: !1804)
!1808 = !DILocation(line: 899, column: 9, scope: !1741, inlinedAt: !1804)
!1809 = !DILocation(line: 899, column: 7, scope: !1742, inlinedAt: !1804)
!1810 = !DILocation(line: 38, column: 10, scope: !92, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 903, column: 5, scope: !1752, inlinedAt: !1804)
!1812 = !DILocation(line: 900, column: 9, scope: !1747, inlinedAt: !1804)
!1813 = !DILocation(line: 900, column: 7, scope: !1747, inlinedAt: !1804)
!1814 = !DILocation(line: 927, column: 5, scope: !1806)
!1815 = !DILocation(line: 929, column: 3, scope: !1775)
!1816 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_7", scope: !1770, file: !1, line: 930, type: !14)
!1817 = !DILocation(line: 930, column: 7, scope: !1770)
!1818 = !DILocation(line: 931, column: 15, scope: !1770)
!1819 = !DILocation(line: 931, column: 13, scope: !1770)
!1820 = !DILocation(line: 932, column: 7, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1770, file: !1, line: 932, column: 7)
!1822 = !DILocation(line: 932, column: 17, scope: !1821)
!1823 = !DILocation(line: 932, column: 7, scope: !1770)
!1824 = !DILocation(line: 933, column: 5, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1821, file: !1, line: 932, column: 23)
!1826 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_8", scope: !1827, file: !1, line: 935, type: !14)
!1827 = distinct !DILexicalBlock(scope: !1821, file: !1, line: 934, column: 10)
!1828 = !DILocation(line: 935, column: 9, scope: !1827)
!1829 = !DILocation(line: 936, column: 17, scope: !1827)
!1830 = !DILocation(line: 936, column: 15, scope: !1827)
!1831 = !DILocation(line: 937, column: 9, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1827, file: !1, line: 937, column: 9)
!1833 = !DILocation(line: 937, column: 19, scope: !1832)
!1834 = !DILocation(line: 937, column: 9, scope: !1827)
!1835 = !DILocation(line: 938, column: 7, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1832, file: !1, line: 937, column: 25)
!1837 = !DILocation(line: 940, column: 7, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1832, file: !1, line: 939, column: 12)
!1839 = !DILocation(line: 941, column: 11, scope: !1838)
!1840 = !DILocation(line: 941, column: 14, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1838, file: !1, line: 941, column: 11)
!1842 = !DILocation(line: 943, column: 20, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1841, file: !1, line: 941, column: 14)
!1844 = !DILocation(line: 944, column: 9, scope: !1843)
!1845 = !DILocation(line: 946, column: 20, scope: !1843)
!1846 = !DILocation(line: 947, column: 9, scope: !1843)
!1847 = !DILocation(line: 949, column: 20, scope: !1843)
!1848 = !DILocation(line: 950, column: 9, scope: !1843)
!1849 = !DILocation(line: 951, column: 14, scope: !1841)
!1850 = !DILocation(line: 956, column: 7, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1770, file: !1, line: 956, column: 7)
!1852 = !DILocation(line: 956, column: 12, scope: !1851)
!1853 = !DILocation(line: 956, column: 9, scope: !1851)
!1854 = !DILocation(line: 956, column: 7, scope: !1770)
!1855 = !DILocation(line: 957, column: 9, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1851, file: !1, line: 956, column: 16)
!1857 = !DILocation(line: 957, column: 7, scope: !1856)
!1858 = !DILocation(line: 958, column: 25, scope: !1856)
!1859 = !DILocation(line: 958, column: 23, scope: !1856)
!1860 = !DILocation(line: 959, column: 3, scope: !1856)
!1861 = !DILocation(line: 960, column: 9, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !1, line: 960, column: 9)
!1863 = distinct !DILexicalBlock(scope: !1851, file: !1, line: 959, column: 10)
!1864 = !DILocation(line: 960, column: 14, scope: !1862)
!1865 = !DILocation(line: 960, column: 11, scope: !1862)
!1866 = !DILocation(line: 960, column: 9, scope: !1863)
!1867 = !DILocation(line: 961, column: 11, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !1, line: 961, column: 11)
!1869 = distinct !DILexicalBlock(scope: !1862, file: !1, line: 960, column: 20)
!1870 = !DILocation(line: 961, column: 22, scope: !1868)
!1871 = !DILocation(line: 961, column: 11, scope: !1869)
!1872 = !DILocation(line: 962, column: 13, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1868, file: !1, line: 961, column: 30)
!1874 = !DILocation(line: 962, column: 11, scope: !1873)
!1875 = !DILocation(line: 963, column: 29, scope: !1873)
!1876 = !DILocation(line: 963, column: 27, scope: !1873)
!1877 = !DILocation(line: 964, column: 7, scope: !1873)
!1878 = !DILocation(line: 965, column: 13, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1868, file: !1, line: 964, column: 14)
!1880 = !DILocation(line: 965, column: 11, scope: !1879)
!1881 = !DILocation(line: 966, column: 29, scope: !1879)
!1882 = !DILocation(line: 966, column: 27, scope: !1879)
!1883 = !DILocation(line: 968, column: 5, scope: !1869)
!1884 = !DILocation(line: 969, column: 11, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !1, line: 969, column: 11)
!1886 = distinct !DILexicalBlock(scope: !1862, file: !1, line: 968, column: 12)
!1887 = !DILocation(line: 969, column: 16, scope: !1885)
!1888 = !DILocation(line: 969, column: 13, scope: !1885)
!1889 = !DILocation(line: 969, column: 11, scope: !1886)
!1890 = !DILocation(line: 970, column: 13, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1885, file: !1, line: 969, column: 23)
!1892 = !DILocation(line: 970, column: 11, scope: !1891)
!1893 = !DILocation(line: 971, column: 29, scope: !1891)
!1894 = !DILocation(line: 971, column: 27, scope: !1891)
!1895 = !DILocation(line: 972, column: 7, scope: !1891)
!1896 = !DILocation(line: 38, column: 10, scope: !92, inlinedAt: !1897)
!1897 = distinct !DILocation(line: 974, column: 9, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !1, line: 973, column: 9)
!1899 = distinct !DILexicalBlock(scope: !1885, file: !1, line: 972, column: 14)
!1900 = !DILocation(line: 979, column: 11, scope: !1770)
!1901 = !DILocation(line: 979, column: 3, scope: !1770)
!1902 = !DILocation(line: 996, column: 20, scope: !47)
!1903 = !DILocation(line: 996, column: 32, scope: !47)
!1904 = !DILocation(line: 996, column: 48, scope: !47)
!1905 = !DILocation(line: 997, column: 7, scope: !47)
!1906 = !DILocation(line: 997, column: 11, scope: !47)
!1907 = !DILocation(line: 1000, column: 18, scope: !1255)
!1908 = !DILocation(line: 1001, column: 11, scope: !1255)
!1909 = !DILocation(line: 1001, column: 3, scope: !1255)
!1910 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Object", arg: 1, scope: !48, file: !1, line: 1004, type: !14)
!1911 = !DILocation(line: 1004, column: 31, scope: !48)
!1912 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitReason", arg: 2, scope: !48, file: !1, line: 1004, type: !14)
!1913 = !DILocation(line: 1004, column: 44, scope: !48)
!1914 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitMode", arg: 3, scope: !48, file: !1, line: 1004, type: !14)
!1915 = !DILocation(line: 1004, column: 61, scope: !48)
!1916 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Alertable", arg: 4, scope: !48, file: !1, line: 1004, type: !14)
!1917 = !DILocation(line: 1004, column: 76, scope: !48)
!1918 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Timeout", arg: 5, scope: !48, file: !1, line: 1005, type: !14)
!1919 = !DILocation(line: 1005, column: 31, scope: !48)
!1920 = !DILocation(line: 1009, column: 7, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !1, line: 1009, column: 7)
!1922 = distinct !DILexicalBlock(scope: !48, file: !1, line: 1008, column: 3)
!1923 = !DILocation(line: 1009, column: 12, scope: !1921)
!1924 = !DILocation(line: 1009, column: 9, scope: !1921)
!1925 = !DILocation(line: 1009, column: 7, scope: !1922)
!1926 = !DILocation(line: 1010, column: 9, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !1, line: 1010, column: 9)
!1928 = distinct !DILexicalBlock(scope: !1921, file: !1, line: 1009, column: 18)
!1929 = !DILocation(line: 1010, column: 24, scope: !1927)
!1930 = !DILocation(line: 1010, column: 9, scope: !1928)
!1931 = !DILocation(line: 1011, column: 11, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1927, file: !1, line: 1010, column: 30)
!1933 = !DILocation(line: 1011, column: 9, scope: !1932)
!1934 = !DILocation(line: 1012, column: 22, scope: !1932)
!1935 = !DILocation(line: 1013, column: 5, scope: !1932)
!1936 = !DILocation(line: 1014, column: 7, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1927, file: !1, line: 1013, column: 12)
!1938 = !DILocation(line: 1016, column: 3, scope: !1928)
!1939 = !DILocation(line: 1016, column: 10, scope: !1921)
!1940 = !DILocation(line: 1018, column: 9, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !1, line: 1018, column: 9)
!1942 = distinct !DILexicalBlock(scope: !1921, file: !1, line: 1016, column: 10)
!1943 = !DILocation(line: 1018, column: 19, scope: !1941)
!1944 = !DILocation(line: 1018, column: 9, scope: !1942)
!1945 = !DILocation(line: 1019, column: 11, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1941, file: !1, line: 1018, column: 25)
!1947 = !DILocation(line: 1019, column: 9, scope: !1946)
!1948 = !DILocation(line: 1020, column: 17, scope: !1946)
!1949 = !DILocation(line: 1021, column: 5, scope: !1946)
!1950 = !DILocation(line: 1022, column: 11, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !1, line: 1022, column: 11)
!1952 = distinct !DILexicalBlock(scope: !1941, file: !1, line: 1021, column: 12)
!1953 = !DILocation(line: 1022, column: 16, scope: !1951)
!1954 = !DILocation(line: 1022, column: 13, scope: !1951)
!1955 = !DILocation(line: 1022, column: 11, scope: !1952)
!1956 = !DILocation(line: 38, column: 10, scope: !92, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 1024, column: 9, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !1, line: 1023, column: 9)
!1959 = distinct !DILexicalBlock(scope: !1951, file: !1, line: 1022, column: 22)
!1960 = !DILocation(line: 1026, column: 7, scope: !1959)
!1961 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_9", scope: !1922, file: !1, line: 1029, type: !14)
!1962 = !DILocation(line: 1029, column: 7, scope: !1922)
!1963 = !DILocation(line: 1030, column: 15, scope: !1922)
!1964 = !DILocation(line: 1030, column: 13, scope: !1922)
!1965 = !DILocation(line: 1031, column: 7, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1922, file: !1, line: 1031, column: 7)
!1967 = !DILocation(line: 1031, column: 17, scope: !1966)
!1968 = !DILocation(line: 1031, column: 7, scope: !1922)
!1969 = !DILocation(line: 1032, column: 5, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1966, file: !1, line: 1031, column: 23)
!1971 = !DILocation(line: 1034, column: 5, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1966, file: !1, line: 1033, column: 10)
!1973 = !DILocation(line: 1035, column: 9, scope: !1972)
!1974 = !DILocation(line: 1035, column: 12, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1972, file: !1, line: 1035, column: 9)
!1976 = !DILocation(line: 1037, column: 7, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1975, file: !1, line: 1035, column: 12)
!1978 = !DILocation(line: 1039, column: 7, scope: !1977)
!1979 = !DILocation(line: 1045, column: 1, scope: !48)
!1980 = !DILocation(line: 1046, column: 35, scope: !51)
!1981 = !DILocation(line: 1046, column: 48, scope: !51)
!1982 = !DILocation(line: 1046, column: 68, scope: !51)
!1983 = !DILocation(line: 1046, column: 85, scope: !51)
!1984 = !DILocation(line: 1047, column: 35, scope: !51)
!1985 = !DILocation(line: 1047, column: 48, scope: !51)
!1986 = !DILocation(line: 1051, column: 7, scope: !189)
!1987 = !DILocation(line: 1052, column: 16, scope: !189)
!1988 = !DILocation(line: 1052, column: 14, scope: !189)
!1989 = !DILocation(line: 1053, column: 7, scope: !256)
!1990 = !DILocation(line: 1053, column: 18, scope: !256)
!1991 = !DILocation(line: 1053, column: 7, scope: !189)
!1992 = !DILocation(line: 1054, column: 5, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !256, file: !1, line: 1053, column: 24)
!1994 = !DILocation(line: 1056, column: 5, scope: !262)
!1995 = !DILocation(line: 1057, column: 9, scope: !262)
!1996 = !DILocation(line: 1057, column: 12, scope: !261)
!1997 = !DILocation(line: 1059, column: 7, scope: !260)
!1998 = !DILocation(line: 1061, column: 7, scope: !260)
!1999 = !DILocation(line: 1067, column: 1, scope: !51)
!2000 = !DILocation(line: 1068, column: 30, scope: !54)
!2001 = !DILocation(line: 1068, column: 49, scope: !54)
!2002 = !DILocation(line: 1068, column: 69, scope: !54)
!2003 = !DILocation(line: 1069, column: 30, scope: !54)
!2004 = !DILocation(line: 1069, column: 50, scope: !54)
!2005 = !DILocation(line: 1069, column: 65, scope: !54)
!2006 = !DILocation(line: 1069, column: 84, scope: !54)
!2007 = !DILocation(line: 1073, column: 7, scope: !172)
!2008 = !DILocation(line: 1074, column: 16, scope: !172)
!2009 = !DILocation(line: 1074, column: 14, scope: !172)
!2010 = !DILocation(line: 1075, column: 7, scope: !223)
!2011 = !DILocation(line: 1075, column: 18, scope: !223)
!2012 = !DILocation(line: 1075, column: 7, scope: !172)
!2013 = !DILocation(line: 1076, column: 5, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !223, file: !1, line: 1075, column: 24)
!2015 = !DILocation(line: 1078, column: 5, scope: !229)
!2016 = !DILocation(line: 1079, column: 9, scope: !229)
!2017 = !DILocation(line: 1079, column: 12, scope: !228)
!2018 = !DILocation(line: 1081, column: 7, scope: !227)
!2019 = !DILocation(line: 1083, column: 7, scope: !227)
!2020 = !DILocation(line: 1089, column: 1, scope: !54)
!2021 = !DILocation(line: 1090, column: 17, scope: !57)
!2022 = !DILocation(line: 1094, column: 7, scope: !195)
!2023 = !DILocation(line: 1095, column: 16, scope: !195)
!2024 = !DILocation(line: 1095, column: 14, scope: !195)
!2025 = !DILocation(line: 1096, column: 7, scope: !271)
!2026 = !DILocation(line: 1096, column: 18, scope: !271)
!2027 = !DILocation(line: 1096, column: 7, scope: !195)
!2028 = !DILocation(line: 1097, column: 5, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !271, file: !1, line: 1096, column: 24)
!2030 = !DILocation(line: 1099, column: 5, scope: !277)
!2031 = !DILocation(line: 1100, column: 9, scope: !277)
!2032 = !DILocation(line: 1100, column: 12, scope: !276)
!2033 = !DILocation(line: 1102, column: 7, scope: !275)
!2034 = !DILocation(line: 1104, column: 7, scope: !275)
!2035 = !DILocation(line: 1110, column: 1, scope: !57)
!2036 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !58, file: !1, line: 1111, type: !14)
!2037 = !DILocation(line: 1111, column: 27, scope: !58)
!2038 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !58, file: !1, line: 1111, type: !14)
!2039 = !DILocation(line: 1111, column: 46, scope: !58)
!2040 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !58, file: !1, line: 1112, type: !14)
!2041 = !DILocation(line: 1112, column: 7, scope: !58)
!2042 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !58, file: !1, line: 1113, type: !14)
!2043 = !DILocation(line: 1113, column: 7, scope: !58)
!2044 = !DILocation(line: 1117, column: 12, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !1, line: 1116, column: 3)
!2046 = distinct !DILexicalBlock(scope: !58, file: !1, line: 1115, column: 3)
!2047 = !DILocation(line: 1118, column: 25, scope: !2045)
!2048 = !DILocation(line: 1119, column: 30, scope: !2045)
!2049 = !DILocation(line: 1120, column: 22, scope: !2045)
!2050 = !DILocation(line: 1120, column: 3, scope: !2045)
!2051 = !DILocation(line: 986, column: 7, scope: !454, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 1120, column: 3, scope: !2045)
!2053 = !DILocation(line: 986, column: 12, scope: !454, inlinedAt: !2052)
!2054 = !DILocation(line: 986, column: 9, scope: !454, inlinedAt: !2052)
!2055 = !DILocation(line: 986, column: 7, scope: !455, inlinedAt: !2052)
!2056 = !DILocation(line: 38, column: 10, scope: !92, inlinedAt: !2057)
!2057 = distinct !DILocation(line: 990, column: 5, scope: !461, inlinedAt: !2052)
!2058 = !DILocation(line: 987, column: 9, scope: !464, inlinedAt: !2052)
!2059 = !DILocation(line: 987, column: 7, scope: !464, inlinedAt: !2052)
!2060 = !DILocation(line: 993, column: 3, scope: !455, inlinedAt: !2052)
!2061 = !DILocation(line: 982, column: 29, scope: !44, inlinedAt: !2052)
!2062 = !DILocation(line: 982, column: 39, scope: !44, inlinedAt: !2052)
!2063 = !DILocation(line: 1122, column: 3, scope: !2046)
