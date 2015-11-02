; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

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
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind ssp uwtable
define i32 @FlQueueIrpToThread(i32 %Irp, i32 %DisketteExtension) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %tmp_ndt_15.i = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %tmp_ndt_13.i = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %tmp_ndt_14.i = alloca i32, align 4
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
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_14.i, metadata !171, metadata !112), !dbg !173
  call void @llvm.dbg.declare(metadata i32* %4, metadata !174, metadata !112), !dbg !175
  call void @llvm.dbg.declare(metadata i32* %5, metadata !178, metadata !112), !dbg !179
  call void @llvm.dbg.declare(metadata i32* %6, metadata !180, metadata !112), !dbg !181
  call void @llvm.dbg.declare(metadata i32* %7, metadata !182, metadata !112), !dbg !183
  call void @llvm.dbg.declare(metadata i32* %8, metadata !184, metadata !112), !dbg !185
  call void @llvm.dbg.declare(metadata i32* %9, metadata !186, metadata !112), !dbg !187
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_13.i, metadata !188, metadata !112), !dbg !190
  call void @llvm.dbg.declare(metadata i32* %2, metadata !191, metadata !112), !dbg !192
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_15.i, metadata !194, metadata !112), !dbg !196
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
  %55 = bitcast i32* %tmp_ndt_14.i to i8*, !dbg !219
  call void @llvm.lifetime.start(i64 4, i8* %55), !dbg !219
  store i32 %43, i32* %11, align 4, !dbg !219
  store i32 0, i32* %12, align 4, !dbg !219
  store i32 %44, i32* %13, align 4, !dbg !219
  store i32 0, i32* %14, align 4, !dbg !219
  store i32 0, i32* %15, align 4, !dbg !219
  store i32 %45, i32* %16, align 4, !dbg !219
  store i32 %46, i32* %17, align 4, !dbg !219
  %56 = call i32 @__VERIFIER_nondet_int() #4, !dbg !220
  store i32 %56, i32* %tmp_ndt_14.i, align 4, !dbg !221
  %57 = load i32, i32* %tmp_ndt_14.i, align 4, !dbg !222
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
  %70 = bitcast i32* %tmp_ndt_14.i to i8*, !dbg !231
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
  %92 = bitcast i32* %tmp_ndt_13.i to i8*, !dbg !252
  call void @llvm.lifetime.start(i64 4, i8* %92), !dbg !252
  store i32 %82, i32* %4, align 4, !dbg !252
  store i32 1048576, i32* %5, align 4, !dbg !252
  store i32 0, i32* %6, align 4, !dbg !252
  store i32 %83, i32* %7, align 4, !dbg !252
  store i32 %84, i32* %8, align 4, !dbg !252
  store i32 0, i32* %9, align 4, !dbg !252
  %93 = call i32 @__VERIFIER_nondet_int() #4, !dbg !253
  store i32 %93, i32* %tmp_ndt_13.i, align 4, !dbg !254
  %94 = load i32, i32* %tmp_ndt_13.i, align 4, !dbg !255
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
  %106 = bitcast i32* %tmp_ndt_13.i to i8*, !dbg !264
  call void @llvm.lifetime.end(i64 4, i8* %106), !dbg !264
  store i32 %98, i32* %status, align 4, !dbg !265
  %107 = load i32, i32* %threadHandle, align 4, !dbg !266
  %108 = bitcast i32* %1 to i8*, !dbg !267
  call void @llvm.lifetime.start(i64 4, i8* %108), !dbg !267
  %109 = bitcast i32* %2 to i8*, !dbg !267
  call void @llvm.lifetime.start(i64 4, i8* %109), !dbg !267
  %110 = bitcast i32* %tmp_ndt_15.i to i8*, !dbg !267
  call void @llvm.lifetime.start(i64 4, i8* %110), !dbg !267
  store i32 %107, i32* %2, align 4, !dbg !267
  %111 = call i32 @__VERIFIER_nondet_int() #4, !dbg !268
  store i32 %111, i32* %tmp_ndt_15.i, align 4, !dbg !269
  %112 = load i32, i32* %tmp_ndt_15.i, align 4, !dbg !270
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
  %119 = bitcast i32* %tmp_ndt_15.i to i8*, !dbg !279
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
  call void (...) @__VERIFIER_error() #5, !dbg !296
  unreachable, !dbg !296

errorFn.exit:                                     ; No predecessors!
  br label %130

; <label>:130                                     ; preds = %errorFn.exit, %128
  store i32 259, i32* %18, !dbg !301
  br label %131, !dbg !301

; <label>:131                                     ; preds = %130, %122, %79, %28
  %132 = load i32, i32* %18, !dbg !302
  ret i32 %132, !dbg !302
}

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind ssp uwtable
define void @errorFn() #0 {
  br label %1, !dbg !303

; <label>:1                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !304
  unreachable, !dbg !304
                                                  ; No predecessors!
  ret void, !dbg !305
}

; Function Attrs: nounwind ssp uwtable
define i32 @FloppyPnp(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %tmp_ndt_6.i = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %tmp_ndt_9.i = alloca i32, align 4
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
  call void @llvm.dbg.declare(metadata i32* %13, metadata !306, metadata !112), !dbg !307
  store i32 %Irp, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !308, metadata !112), !dbg !309
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !310, metadata !112), !dbg !311
  %15 = call i32 @__VERIFIER_nondet_int(), !dbg !312
  store i32 %15, i32* %DeviceObject__DeviceExtension, align 4, !dbg !311
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !313, metadata !112), !dbg !314
  %16 = call i32 @__VERIFIER_nondet_int(), !dbg !315
  store i32 %16, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !314
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !316, metadata !112), !dbg !317
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !318, metadata !112), !dbg !319
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !320, metadata !112), !dbg !321
  %17 = call i32 @__VERIFIER_nondet_int(), !dbg !322
  store i32 %17, i32* %Irp__CurrentLocation, align 4, !dbg !321
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__IsRemoved, metadata !323, metadata !112), !dbg !324
  %18 = call i32 @__VERIFIER_nondet_int(), !dbg !325
  store i32 %18, i32* %disketteExtension__IsRemoved, align 4, !dbg !324
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__IsStarted, metadata !326, metadata !112), !dbg !327
  %19 = call i32 @__VERIFIER_nondet_int(), !dbg !328
  store i32 %19, i32* %disketteExtension__IsStarted, align 4, !dbg !327
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__TargetObject, metadata !329, metadata !112), !dbg !330
  %20 = call i32 @__VERIFIER_nondet_int(), !dbg !331
  store i32 %20, i32* %disketteExtension__TargetObject, align 4, !dbg !330
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__HoldNewRequests, metadata !332, metadata !112), !dbg !333
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__FloppyThread, metadata !334, metadata !112), !dbg !335
  %21 = call i32 @__VERIFIER_nondet_int(), !dbg !336
  store i32 %21, i32* %disketteExtension__FloppyThread, align 4, !dbg !335
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__InterfaceString__Buffer, metadata !337, metadata !112), !dbg !338
  %22 = call i32 @__VERIFIER_nondet_int(), !dbg !339
  store i32 %22, i32* %disketteExtension__InterfaceString__Buffer, align 4, !dbg !338
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__InterfaceString, metadata !340, metadata !112), !dbg !341
  %23 = call i32 @__VERIFIER_nondet_int(), !dbg !342
  store i32 %23, i32* %disketteExtension__InterfaceString, align 4, !dbg !341
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__ArcName__Length, metadata !343, metadata !112), !dbg !344
  %24 = call i32 @__VERIFIER_nondet_int(), !dbg !345
  store i32 %24, i32* %disketteExtension__ArcName__Length, align 4, !dbg !344
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__ArcName, metadata !346, metadata !112), !dbg !347
  %25 = call i32 @__VERIFIER_nondet_int(), !dbg !348
  store i32 %25, i32* %disketteExtension__ArcName, align 4, !dbg !347
  call void @llvm.dbg.declare(metadata i32* %irpSp__MinorFunction, metadata !349, metadata !112), !dbg !350
  %26 = call i32 @__VERIFIER_nondet_int(), !dbg !351
  store i32 %26, i32* %irpSp__MinorFunction, align 4, !dbg !350
  call void @llvm.dbg.declare(metadata i32* %IoGetConfigurationInformation__FloppyCount, metadata !352, metadata !112), !dbg !353
  %27 = call i32 @__VERIFIER_nondet_int(), !dbg !354
  store i32 %27, i32* %IoGetConfigurationInformation__FloppyCount, align 4, !dbg !353
  call void @llvm.dbg.declare(metadata i32* %irpSp, metadata !355, metadata !112), !dbg !356
  call void @llvm.dbg.declare(metadata i32* %disketteExtension, metadata !357, metadata !112), !dbg !358
  call void @llvm.dbg.declare(metadata i32* %ntStatus, metadata !359, metadata !112), !dbg !360
  call void @llvm.dbg.declare(metadata i32* %doneEvent, metadata !361, metadata !112), !dbg !362
  %28 = call i32 @__VERIFIER_nondet_int(), !dbg !363
  store i32 %28, i32* %doneEvent, align 4, !dbg !362
  call void @llvm.dbg.declare(metadata i32* %irpSp___0, metadata !364, metadata !112), !dbg !365
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp, metadata !366, metadata !112), !dbg !367
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp__Control, metadata !368, metadata !112), !dbg !369
  call void @llvm.dbg.declare(metadata i32* %irpSp___1, metadata !370, metadata !112), !dbg !371
  call void @llvm.dbg.declare(metadata i32* %irpSp__Context, metadata !372, metadata !112), !dbg !373
  call void @llvm.dbg.declare(metadata i32* %irpSp__Control, metadata !374, metadata !112), !dbg !375
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp29, metadata !376, metadata !112), !dbg !377
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp30, metadata !378, metadata !112), !dbg !379
  store i32 0, i32* %ntStatus, align 4, !dbg !380
  %29 = load i32, i32* @PagingReferenceCount, align 4, !dbg !382
  %30 = add nsw i32 %29, 1, !dbg !382
  store i32 %30, i32* @PagingReferenceCount, align 4, !dbg !382
  %31 = load i32, i32* @PagingReferenceCount, align 4, !dbg !383
  %32 = icmp eq i32 %31, 1, !dbg !385
  call void @llvm.dbg.declare(metadata i32* %10, metadata !386, metadata !112), !dbg !387
  call void @llvm.dbg.declare(metadata i32* %11, metadata !392, metadata !112), !dbg !393
  call void @llvm.dbg.declare(metadata i32* %8, metadata !386, metadata !112), !dbg !394
  call void @llvm.dbg.declare(metadata i32* %9, metadata !392, metadata !112), !dbg !416
  call void @llvm.dbg.declare(metadata i32* %6, metadata !386, metadata !112), !dbg !417
  call void @llvm.dbg.declare(metadata i32* %7, metadata !392, metadata !112), !dbg !422
  call void @llvm.dbg.declare(metadata i32* %4, metadata !423, metadata !112), !dbg !424
  call void @llvm.dbg.declare(metadata i32* %5, metadata !429, metadata !112), !dbg !430
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_9.i, metadata !431, metadata !112), !dbg !433
  call void @llvm.dbg.declare(metadata i32* %2, metadata !434, metadata !112), !dbg !435
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_6.i, metadata !440, metadata !112), !dbg !442
  br i1 %32, label %33, label %34, !dbg !443

; <label>:33                                      ; preds = %0
  br label %34, !dbg !444

; <label>:34                                      ; preds = %33, %0
  %35 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !446
  store i32 %35, i32* %disketteExtension, align 4, !dbg !447
  %36 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !448
  store i32 %36, i32* %irpSp, align 4, !dbg !449
  %37 = load i32, i32* %disketteExtension__IsRemoved, align 4, !dbg !450
  %38 = icmp ne i32 %37, 0, !dbg !450
  br i1 %38, label %39, label %50, !dbg !451

; <label>:39                                      ; preds = %34
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !452
  store i32 -1073741738, i32* %Irp__IoStatus__Status, align 4, !dbg !453
  store i32 -1073741738, i32* @myStatus, align 4, !dbg !454
  %40 = load i32, i32* %14, align 4, !dbg !455
  %41 = bitcast i32* %10 to i8*, !dbg !456
  call void @llvm.lifetime.start(i64 4, i8* %41), !dbg !456
  %42 = bitcast i32* %11 to i8*, !dbg !456
  call void @llvm.lifetime.start(i64 4, i8* %42), !dbg !456
  store i32 %40, i32* %10, align 4, !dbg !456
  store i32 0, i32* %11, align 4, !dbg !456
  %43 = load i32, i32* @s, align 4, !dbg !457
  %44 = load i32, i32* @NP, align 4, !dbg !460
  %45 = icmp eq i32 %43, %44, !dbg !461
  br i1 %45, label %IofCompleteRequest.exit, label %46, !dbg !462

; <label>:46                                      ; preds = %39
  call void (...) @__VERIFIER_error() #5, !dbg !463
  unreachable, !dbg !463

IofCompleteRequest.exit:                          ; preds = %39
  %47 = load i32, i32* @DC, align 4, !dbg !467
  store i32 %47, i32* @s, align 4, !dbg !469
  %48 = bitcast i32* %10 to i8*, !dbg !470
  call void @llvm.lifetime.end(i64 4, i8* %48), !dbg !470
  %49 = bitcast i32* %11 to i8*, !dbg !470
  call void @llvm.lifetime.end(i64 4, i8* %49), !dbg !470
  store i32 -1073741738, i32* %12, !dbg !471
  br label %320, !dbg !471

; <label>:50                                      ; preds = %34
  %51 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !472
  %52 = icmp eq i32 %51, 0, !dbg !473
  br i1 %52, label %53, label %54, !dbg !474

; <label>:53                                      ; preds = %50
  br label %81, !dbg !475

; <label>:54                                      ; preds = %50
  %55 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !477
  %56 = icmp eq i32 %55, 5, !dbg !478
  br i1 %56, label %57, label %58, !dbg !479

; <label>:57                                      ; preds = %54
  br label %85, !dbg !480

; <label>:58                                      ; preds = %54
  %59 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !482
  %60 = icmp eq i32 %59, 1, !dbg !483
  br i1 %60, label %61, label %62, !dbg !484

; <label>:61                                      ; preds = %58
  br label %85, !dbg !485

; <label>:62                                      ; preds = %58
  %63 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !487
  %64 = icmp eq i32 %63, 6, !dbg !488
  br i1 %64, label %65, label %66, !dbg !489

; <label>:65                                      ; preds = %62
  br label %153, !dbg !490

; <label>:66                                      ; preds = %62
  %67 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !492
  %68 = icmp eq i32 %67, 3, !dbg !493
  br i1 %68, label %69, label %70, !dbg !494

; <label>:69                                      ; preds = %66
  br label %153, !dbg !495

; <label>:70                                      ; preds = %66
  %71 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !497
  %72 = icmp eq i32 %71, 4, !dbg !498
  br i1 %72, label %73, label %74, !dbg !499

; <label>:73                                      ; preds = %70
  br label %220, !dbg !500

; <label>:74                                      ; preds = %70
  %75 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !502
  %76 = icmp eq i32 %75, 2, !dbg !503
  br i1 %76, label %77, label %78, !dbg !504

; <label>:77                                      ; preds = %74
  br label %235, !dbg !505

; <label>:78                                      ; preds = %74
  br label %288, !dbg !507
                                                  ; No predecessors!
  br i1 false, label %80, label %303, !dbg !508

; <label>:80                                      ; preds = %79
  br label %81, !dbg !509

; <label>:81                                      ; preds = %80, %53
  %82 = load i32, i32* %13, align 4, !dbg !510
  %83 = load i32, i32* %14, align 4, !dbg !512
  %84 = call i32 @FloppyStartDevice(i32 %82, i32 %83), !dbg !513
  store i32 %84, i32* %ntStatus, align 4, !dbg !514
  br label %304, !dbg !515

; <label>:85                                      ; preds = %61, %57
  %86 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !516
  %87 = icmp eq i32 %86, 5, !dbg !518
  br i1 %87, label %88, label %89, !dbg !519

; <label>:88                                      ; preds = %85
  br label %89, !dbg !520

; <label>:89                                      ; preds = %88, %85
  %90 = load i32, i32* %disketteExtension__IsStarted, align 4, !dbg !522
  %91 = icmp ne i32 %90, 0, !dbg !522
  br i1 %91, label %108, label %92, !dbg !524

; <label>:92                                      ; preds = %89
  %93 = load i32, i32* @s, align 4, !dbg !525
  %94 = load i32, i32* @NP, align 4, !dbg !528
  %95 = icmp eq i32 %93, %94, !dbg !529
  br i1 %95, label %96, label %98, !dbg !530

; <label>:96                                      ; preds = %92
  %97 = load i32, i32* @SKIP1, align 4, !dbg !531
  store i32 %97, i32* @s, align 4, !dbg !533
  br label %99, !dbg !534

; <label>:98                                      ; preds = %92
  call void (...) @__VERIFIER_error() #5, !dbg !535
  unreachable, !dbg !535

errorFn.exit:                                     ; No predecessors!
  br label %99

; <label>:99                                      ; preds = %errorFn.exit, %96
  %100 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !539
  %101 = add nsw i32 %100, 1, !dbg !539
  store i32 %101, i32* %Irp__CurrentLocation, align 4, !dbg !539
  %102 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !541
  %103 = add nsw i32 %102, 1, !dbg !541
  store i32 %103, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !541
  %104 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !542
  %105 = load i32, i32* %14, align 4, !dbg !543
  %106 = call i32 @IofCallDriver(i32 %104, i32 %105), !dbg !544
  store i32 %106, i32* %ntStatus, align 4, !dbg !545
  %107 = load i32, i32* %ntStatus, align 4, !dbg !546
  store i32 %107, i32* %12, !dbg !547
  br label %320, !dbg !547

; <label>:108                                     ; preds = %89
  store i32 1, i32* %disketteExtension__HoldNewRequests, align 4, !dbg !548
  %109 = load i32, i32* %14, align 4, !dbg !550
  %110 = load i32, i32* %disketteExtension, align 4, !dbg !551
  %111 = call i32 @FlQueueIrpToThread(i32 %109, i32 %110), !dbg !552
  store i32 %111, i32* %ntStatus, align 4, !dbg !553
  %112 = load i32, i32* %ntStatus, align 4, !dbg !554
  %113 = sext i32 %112 to i64, !dbg !555
  store i64 %113, i64* %__cil_tmp29, align 8, !dbg !556
  %114 = load i64, i64* %__cil_tmp29, align 8, !dbg !557
  %115 = icmp eq i64 %114, 259, !dbg !558
  br i1 %115, label %116, label %139, !dbg !559

; <label>:116                                     ; preds = %108
  %117 = load i32, i32* %disketteExtension__FloppyThread, align 4, !dbg !560
  %118 = load i32, i32* @Executive, align 4, !dbg !563
  %119 = load i32, i32* @KernelMode, align 4, !dbg !564
  %120 = call i32 @KeWaitForSingleObject(i32 %117, i32 %118, i32 %119, i32 0, i32 0), !dbg !565
  %121 = load i32, i32* %disketteExtension__FloppyThread, align 4, !dbg !566
  %122 = icmp ne i32 %121, 0, !dbg !568
  br i1 %122, label %123, label %124, !dbg !569

; <label>:123                                     ; preds = %116
  br label %124, !dbg !570

; <label>:124                                     ; preds = %123, %116
  store i32 0, i32* %disketteExtension__FloppyThread, align 4, !dbg !572
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !573
  store i32 0, i32* @myStatus, align 4, !dbg !574
  %125 = load i32, i32* @s, align 4, !dbg !575
  %126 = load i32, i32* @NP, align 4, !dbg !577
  %127 = icmp eq i32 %125, %126, !dbg !578
  br i1 %127, label %128, label %130, !dbg !579

; <label>:128                                     ; preds = %124
  %129 = load i32, i32* @SKIP1, align 4, !dbg !580
  store i32 %129, i32* @s, align 4, !dbg !582
  br label %131, !dbg !583

; <label>:130                                     ; preds = %124
  call void (...) @__VERIFIER_error() #5, !dbg !584
  unreachable, !dbg !584

errorFn.exit1:                                    ; No predecessors!
  br label %131

; <label>:131                                     ; preds = %errorFn.exit1, %128
  %132 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !588
  %133 = add nsw i32 %132, 1, !dbg !588
  store i32 %133, i32* %Irp__CurrentLocation, align 4, !dbg !588
  %134 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !590
  %135 = add nsw i32 %134, 1, !dbg !590
  store i32 %135, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !590
  %136 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !591
  %137 = load i32, i32* %14, align 4, !dbg !592
  %138 = call i32 @IofCallDriver(i32 %136, i32 %137), !dbg !593
  store i32 %138, i32* %ntStatus, align 4, !dbg !594
  br label %152, !dbg !595

; <label>:139                                     ; preds = %108
  store i32 -1073741823, i32* %ntStatus, align 4, !dbg !596
  %140 = load i32, i32* %ntStatus, align 4, !dbg !597
  store i32 %140, i32* %Irp__IoStatus__Status, align 4, !dbg !598
  %141 = load i32, i32* %ntStatus, align 4, !dbg !599
  store i32 %141, i32* @myStatus, align 4, !dbg !600
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !601
  %142 = load i32, i32* %14, align 4, !dbg !602
  %143 = bitcast i32* %8 to i8*, !dbg !603
  call void @llvm.lifetime.start(i64 4, i8* %143), !dbg !603
  %144 = bitcast i32* %9 to i8*, !dbg !603
  call void @llvm.lifetime.start(i64 4, i8* %144), !dbg !603
  store i32 %142, i32* %8, align 4, !dbg !603
  store i32 0, i32* %9, align 4, !dbg !603
  %145 = load i32, i32* @s, align 4, !dbg !604
  %146 = load i32, i32* @NP, align 4, !dbg !605
  %147 = icmp eq i32 %145, %146, !dbg !606
  br i1 %147, label %IofCompleteRequest.exit2, label %148, !dbg !607

; <label>:148                                     ; preds = %139
  call void (...) @__VERIFIER_error() #5, !dbg !608
  unreachable, !dbg !608

IofCompleteRequest.exit2:                         ; preds = %139
  %149 = load i32, i32* @DC, align 4, !dbg !610
  store i32 %149, i32* @s, align 4, !dbg !611
  %150 = bitcast i32* %8 to i8*, !dbg !612
  call void @llvm.lifetime.end(i64 4, i8* %150), !dbg !612
  %151 = bitcast i32* %9 to i8*, !dbg !612
  call void @llvm.lifetime.end(i64 4, i8* %151), !dbg !612
  br label %152

; <label>:152                                     ; preds = %IofCompleteRequest.exit2, %131
  br label %304, !dbg !613

; <label>:153                                     ; preds = %69, %65
  %154 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !614
  %155 = icmp eq i32 %154, 6, !dbg !616
  br i1 %155, label %156, label %157, !dbg !617

; <label>:156                                     ; preds = %153
  br label %157, !dbg !618

; <label>:157                                     ; preds = %156, %153
  %158 = load i32, i32* %disketteExtension__IsStarted, align 4, !dbg !620
  %159 = icmp ne i32 %158, 0, !dbg !620
  br i1 %159, label %175, label %160, !dbg !621

; <label>:160                                     ; preds = %157
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !622
  store i32 0, i32* @myStatus, align 4, !dbg !624
  %161 = load i32, i32* @s, align 4, !dbg !625
  %162 = load i32, i32* @NP, align 4, !dbg !627
  %163 = icmp eq i32 %161, %162, !dbg !628
  br i1 %163, label %164, label %166, !dbg !629

; <label>:164                                     ; preds = %160
  %165 = load i32, i32* @SKIP1, align 4, !dbg !630
  store i32 %165, i32* @s, align 4, !dbg !632
  br label %167, !dbg !633

; <label>:166                                     ; preds = %160
  call void (...) @__VERIFIER_error() #5, !dbg !634
  unreachable, !dbg !634

errorFn.exit3:                                    ; No predecessors!
  br label %167

; <label>:167                                     ; preds = %errorFn.exit3, %164
  %168 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !638
  %169 = add nsw i32 %168, 1, !dbg !638
  store i32 %169, i32* %Irp__CurrentLocation, align 4, !dbg !638
  %170 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !640
  %171 = add nsw i32 %170, 1, !dbg !640
  store i32 %171, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !640
  %172 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !641
  %173 = load i32, i32* %14, align 4, !dbg !642
  %174 = call i32 @IofCallDriver(i32 %172, i32 %173), !dbg !643
  store i32 %174, i32* %ntStatus, align 4, !dbg !644
  br label %219, !dbg !645

; <label>:175                                     ; preds = %157
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !646
  store i32 0, i32* @myStatus, align 4, !dbg !647
  %176 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !648
  store i32 %176, i32* %irpSp___0, align 4, !dbg !649
  %177 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !650
  %178 = sub nsw i32 %177, 1, !dbg !651
  store i32 %178, i32* %nextIrpSp, align 4, !dbg !652
  store i32 0, i32* %nextIrpSp__Control, align 4, !dbg !653
  %179 = load i32, i32* @s, align 4, !dbg !654
  %180 = load i32, i32* @NP, align 4, !dbg !656
  %181 = icmp ne i32 %179, %180, !dbg !657
  br i1 %181, label %182, label %183, !dbg !658

; <label>:182                                     ; preds = %175
  call void (...) @__VERIFIER_error() #5, !dbg !659
  unreachable, !dbg !659

errorFn.exit4:                                    ; No predecessors!
  br label %189, !dbg !663

; <label>:183                                     ; preds = %175
  %184 = load i32, i32* @compRegistered, align 4, !dbg !664
  %185 = icmp ne i32 %184, 0, !dbg !667
  br i1 %185, label %186, label %187, !dbg !668

; <label>:186                                     ; preds = %183
  call void (...) @__VERIFIER_error() #5, !dbg !669
  unreachable, !dbg !669

errorFn.exit5:                                    ; No predecessors!
  br label %188, !dbg !673

; <label>:187                                     ; preds = %183
  store i32 1, i32* @compRegistered, align 4, !dbg !674
  br label %188

; <label>:188                                     ; preds = %187, %errorFn.exit5
  br label %189

; <label>:189                                     ; preds = %188, %errorFn.exit4
  %190 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !676
  %191 = sub nsw i32 %190, 1, !dbg !678
  store i32 %191, i32* %irpSp___1, align 4, !dbg !679
  %192 = load i32, i32* %doneEvent, align 4, !dbg !680
  store i32 %192, i32* %irpSp__Context, align 4, !dbg !681
  store i32 224, i32* %irpSp__Control, align 4, !dbg !682
  %193 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !683
  %194 = load i32, i32* %14, align 4, !dbg !684
  %195 = call i32 @IofCallDriver(i32 %193, i32 %194), !dbg !685
  store i32 %195, i32* %ntStatus, align 4, !dbg !686
  %196 = load i32, i32* %ntStatus, align 4, !dbg !687
  %197 = sext i32 %196 to i64, !dbg !689
  store i64 %197, i64* %__cil_tmp30, align 8, !dbg !690
  %198 = load i64, i64* %__cil_tmp30, align 8, !dbg !691
  %199 = icmp eq i64 %198, 259, !dbg !693
  br i1 %199, label %200, label %206, !dbg !694

; <label>:200                                     ; preds = %189
  %201 = load i32, i32* %doneEvent, align 4, !dbg !695
  %202 = load i32, i32* @Executive, align 4, !dbg !698
  %203 = load i32, i32* @KernelMode, align 4, !dbg !699
  %204 = call i32 @KeWaitForSingleObject(i32 %201, i32 %202, i32 %203, i32 0, i32 0), !dbg !700
  %205 = load i32, i32* @myStatus, align 4, !dbg !701
  store i32 %205, i32* %ntStatus, align 4, !dbg !702
  br label %206, !dbg !703

; <label>:206                                     ; preds = %200, %189
  store i32 0, i32* %disketteExtension__HoldNewRequests, align 4, !dbg !704
  %207 = load i32, i32* %ntStatus, align 4, !dbg !705
  store i32 %207, i32* %Irp__IoStatus__Status, align 4, !dbg !706
  %208 = load i32, i32* %ntStatus, align 4, !dbg !707
  store i32 %208, i32* @myStatus, align 4, !dbg !708
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !709
  %209 = load i32, i32* %14, align 4, !dbg !710
  %210 = bitcast i32* %6 to i8*, !dbg !711
  call void @llvm.lifetime.start(i64 4, i8* %210), !dbg !711
  %211 = bitcast i32* %7 to i8*, !dbg !711
  call void @llvm.lifetime.start(i64 4, i8* %211), !dbg !711
  store i32 %209, i32* %6, align 4, !dbg !711
  store i32 0, i32* %7, align 4, !dbg !711
  %212 = load i32, i32* @s, align 4, !dbg !712
  %213 = load i32, i32* @NP, align 4, !dbg !713
  %214 = icmp eq i32 %212, %213, !dbg !714
  br i1 %214, label %IofCompleteRequest.exit6, label %215, !dbg !715

; <label>:215                                     ; preds = %206
  call void (...) @__VERIFIER_error() #5, !dbg !716
  unreachable, !dbg !716

IofCompleteRequest.exit6:                         ; preds = %206
  %216 = load i32, i32* @DC, align 4, !dbg !718
  store i32 %216, i32* @s, align 4, !dbg !719
  %217 = bitcast i32* %6 to i8*, !dbg !720
  call void @llvm.lifetime.end(i64 4, i8* %217), !dbg !720
  %218 = bitcast i32* %7 to i8*, !dbg !720
  call void @llvm.lifetime.end(i64 4, i8* %218), !dbg !720
  br label %219

; <label>:219                                     ; preds = %IofCompleteRequest.exit6, %167
  br label %304, !dbg !721

; <label>:220                                     ; preds = %73
  store i32 0, i32* %disketteExtension__IsStarted, align 4, !dbg !722
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !723
  store i32 0, i32* @myStatus, align 4, !dbg !724
  %221 = load i32, i32* @s, align 4, !dbg !725
  %222 = load i32, i32* @NP, align 4, !dbg !727
  %223 = icmp eq i32 %221, %222, !dbg !728
  br i1 %223, label %224, label %226, !dbg !729

; <label>:224                                     ; preds = %220
  %225 = load i32, i32* @SKIP1, align 4, !dbg !730
  store i32 %225, i32* @s, align 4, !dbg !732
  br label %227, !dbg !733

; <label>:226                                     ; preds = %220
  call void (...) @__VERIFIER_error() #5, !dbg !734
  unreachable, !dbg !734

errorFn.exit7:                                    ; No predecessors!
  br label %227

; <label>:227                                     ; preds = %errorFn.exit7, %224
  %228 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !738
  %229 = add nsw i32 %228, 1, !dbg !738
  store i32 %229, i32* %Irp__CurrentLocation, align 4, !dbg !738
  %230 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !740
  %231 = add nsw i32 %230, 1, !dbg !740
  store i32 %231, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !740
  %232 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !741
  %233 = load i32, i32* %14, align 4, !dbg !742
  %234 = call i32 @IofCallDriver(i32 %232, i32 %233), !dbg !743
  store i32 %234, i32* %ntStatus, align 4, !dbg !744
  br label %304, !dbg !745

; <label>:235                                     ; preds = %77
  store i32 0, i32* %disketteExtension__HoldNewRequests, align 4, !dbg !746
  store i32 0, i32* %disketteExtension__IsStarted, align 4, !dbg !747
  store i32 1, i32* %disketteExtension__IsRemoved, align 4, !dbg !748
  %236 = load i32, i32* @s, align 4, !dbg !749
  %237 = load i32, i32* @NP, align 4, !dbg !751
  %238 = icmp eq i32 %236, %237, !dbg !752
  br i1 %238, label %239, label %241, !dbg !753

; <label>:239                                     ; preds = %235
  %240 = load i32, i32* @SKIP1, align 4, !dbg !754
  store i32 %240, i32* @s, align 4, !dbg !756
  br label %242, !dbg !757

; <label>:241                                     ; preds = %235
  call void (...) @__VERIFIER_error() #5, !dbg !758
  unreachable, !dbg !758

errorFn.exit8:                                    ; No predecessors!
  br label %242

; <label>:242                                     ; preds = %errorFn.exit8, %239
  %243 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !762
  %244 = add nsw i32 %243, 1, !dbg !762
  store i32 %244, i32* %Irp__CurrentLocation, align 4, !dbg !762
  %245 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !764
  %246 = add nsw i32 %245, 1, !dbg !764
  store i32 %246, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !764
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !765
  store i32 0, i32* @myStatus, align 4, !dbg !766
  %247 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !767
  %248 = load i32, i32* %14, align 4, !dbg !768
  %249 = call i32 @IofCallDriver(i32 %247, i32 %248), !dbg !769
  store i32 %249, i32* %ntStatus, align 4, !dbg !770
  %250 = load i32, i32* %disketteExtension__InterfaceString__Buffer, align 4, !dbg !771
  %251 = icmp ne i32 %250, 0, !dbg !772
  br i1 %251, label %252, label %268, !dbg !773

; <label>:252                                     ; preds = %242
  %253 = load i32, i32* %disketteExtension__InterfaceString, align 4, !dbg !774
  %254 = bitcast i32* %3 to i8*, !dbg !775
  call void @llvm.lifetime.start(i64 4, i8* %254), !dbg !775
  %255 = bitcast i32* %4 to i8*, !dbg !775
  call void @llvm.lifetime.start(i64 4, i8* %255), !dbg !775
  %256 = bitcast i32* %5 to i8*, !dbg !775
  call void @llvm.lifetime.start(i64 4, i8* %256), !dbg !775
  %257 = bitcast i32* %tmp_ndt_9.i to i8*, !dbg !775
  call void @llvm.lifetime.start(i64 4, i8* %257), !dbg !775
  store i32 %253, i32* %4, align 4, !dbg !775
  store i32 0, i32* %5, align 4, !dbg !775
  %258 = call i32 @__VERIFIER_nondet_int() #4, !dbg !776
  store i32 %258, i32* %tmp_ndt_9.i, align 4, !dbg !777
  %259 = load i32, i32* %tmp_ndt_9.i, align 4, !dbg !778
  %260 = icmp eq i32 %259, 0, !dbg !780
  br i1 %260, label %261, label %262, !dbg !781

; <label>:261                                     ; preds = %252
  store i32 0, i32* %3, !dbg !782
  br label %IoSetDeviceInterfaceState.exit, !dbg !782

; <label>:262                                     ; preds = %252
  store i32 -1073741823, i32* %3, !dbg !786
  br label %IoSetDeviceInterfaceState.exit, !dbg !786

IoSetDeviceInterfaceState.exit:                   ; preds = %261, %262
  %263 = load i32, i32* %3, !dbg !787
  %264 = bitcast i32* %3 to i8*, !dbg !787
  call void @llvm.lifetime.end(i64 4, i8* %264), !dbg !787
  %265 = bitcast i32* %4 to i8*, !dbg !787
  call void @llvm.lifetime.end(i64 4, i8* %265), !dbg !787
  %266 = bitcast i32* %5 to i8*, !dbg !787
  call void @llvm.lifetime.end(i64 4, i8* %266), !dbg !787
  %267 = bitcast i32* %tmp_ndt_9.i to i8*, !dbg !787
  call void @llvm.lifetime.end(i64 4, i8* %267), !dbg !787
  br label %268, !dbg !788

; <label>:268                                     ; preds = %IoSetDeviceInterfaceState.exit, %242
  %269 = load i32, i32* %disketteExtension__ArcName__Length, align 4, !dbg !789
  %270 = icmp ne i32 %269, 0, !dbg !790
  br i1 %270, label %271, label %285, !dbg !791

; <label>:271                                     ; preds = %268
  %272 = load i32, i32* %disketteExtension__ArcName, align 4, !dbg !792
  %273 = bitcast i32* %1 to i8*, !dbg !793
  call void @llvm.lifetime.start(i64 4, i8* %273), !dbg !793
  %274 = bitcast i32* %2 to i8*, !dbg !793
  call void @llvm.lifetime.start(i64 4, i8* %274), !dbg !793
  %275 = bitcast i32* %tmp_ndt_6.i to i8*, !dbg !793
  call void @llvm.lifetime.start(i64 4, i8* %275), !dbg !793
  store i32 %272, i32* %2, align 4, !dbg !793
  %276 = call i32 @__VERIFIER_nondet_int() #4, !dbg !794
  store i32 %276, i32* %tmp_ndt_6.i, align 4, !dbg !795
  %277 = load i32, i32* %tmp_ndt_6.i, align 4, !dbg !796
  %278 = icmp eq i32 %277, 0, !dbg !798
  br i1 %278, label %279, label %280, !dbg !799

; <label>:279                                     ; preds = %271
  store i32 0, i32* %1, !dbg !800
  br label %IoDeleteSymbolicLink.exit, !dbg !800

; <label>:280                                     ; preds = %271
  store i32 -1073741823, i32* %1, !dbg !804
  br label %IoDeleteSymbolicLink.exit, !dbg !804

IoDeleteSymbolicLink.exit:                        ; preds = %279, %280
  %281 = load i32, i32* %1, !dbg !805
  %282 = bitcast i32* %1 to i8*, !dbg !805
  call void @llvm.lifetime.end(i64 4, i8* %282), !dbg !805
  %283 = bitcast i32* %2 to i8*, !dbg !805
  call void @llvm.lifetime.end(i64 4, i8* %283), !dbg !805
  %284 = bitcast i32* %tmp_ndt_6.i to i8*, !dbg !805
  call void @llvm.lifetime.end(i64 4, i8* %284), !dbg !805
  br label %285, !dbg !806

; <label>:285                                     ; preds = %IoDeleteSymbolicLink.exit, %268
  %286 = load i32, i32* %IoGetConfigurationInformation__FloppyCount, align 4, !dbg !807
  %287 = add nsw i32 %286, -1, !dbg !807
  store i32 %287, i32* %IoGetConfigurationInformation__FloppyCount, align 4, !dbg !807
  br label %304, !dbg !808

; <label>:288                                     ; preds = %78
  %289 = load i32, i32* @s, align 4, !dbg !809
  %290 = load i32, i32* @NP, align 4, !dbg !811
  %291 = icmp eq i32 %289, %290, !dbg !812
  br i1 %291, label %292, label %294, !dbg !813

; <label>:292                                     ; preds = %288
  %293 = load i32, i32* @SKIP1, align 4, !dbg !814
  store i32 %293, i32* @s, align 4, !dbg !816
  br label %295, !dbg !817

; <label>:294                                     ; preds = %288
  call void (...) @__VERIFIER_error() #5, !dbg !818
  unreachable, !dbg !818

errorFn.exit9:                                    ; No predecessors!
  br label %295

; <label>:295                                     ; preds = %errorFn.exit9, %292
  %296 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !822
  %297 = add nsw i32 %296, 1, !dbg !822
  store i32 %297, i32* %Irp__CurrentLocation, align 4, !dbg !822
  %298 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !824
  %299 = add nsw i32 %298, 1, !dbg !824
  store i32 %299, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !824
  %300 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !825
  %301 = load i32, i32* %14, align 4, !dbg !826
  %302 = call i32 @IofCallDriver(i32 %300, i32 %301), !dbg !827
  store i32 %302, i32* %ntStatus, align 4, !dbg !828
  br label %305, !dbg !829

; <label>:303                                     ; preds = %79
  br label %304, !dbg !830

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
  %313 = load i32, i32* @PagingReferenceCount, align 4, !dbg !831
  %314 = add nsw i32 %313, -1, !dbg !831
  store i32 %314, i32* @PagingReferenceCount, align 4, !dbg !831
  %315 = load i32, i32* @PagingReferenceCount, align 4, !dbg !832
  %316 = icmp eq i32 %315, 0, !dbg !834
  br i1 %316, label %317, label %318, !dbg !835

; <label>:317                                     ; preds = %312
  br label %318, !dbg !836

; <label>:318                                     ; preds = %317, %312
  %319 = load i32, i32* %ntStatus, align 4, !dbg !838
  store i32 %319, i32* %12, !dbg !839
  br label %320, !dbg !839

; <label>:320                                     ; preds = %318, %99, %IofCompleteRequest.exit
  %321 = load i32, i32* %12, !dbg !840
  ret i32 %321, !dbg !840
}

; Function Attrs: nounwind ssp uwtable
define void @IofCompleteRequest(i32 %Irp, i32 %PriorityBoost) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %Irp, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !386, metadata !112), !dbg !841
  store i32 %PriorityBoost, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !392, metadata !112), !dbg !842
  %3 = load i32, i32* @s, align 4, !dbg !843
  %4 = load i32, i32* @NP, align 4, !dbg !844
  %5 = icmp eq i32 %3, %4, !dbg !845
  br i1 %5, label %6, label %8, !dbg !846

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* @DC, align 4, !dbg !847
  store i32 %7, i32* @s, align 4, !dbg !848
  br label %9, !dbg !849

; <label>:8                                       ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !850
  unreachable, !dbg !850

errorFn.exit:                                     ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %errorFn.exit, %6
  ret void, !dbg !852
}

; Function Attrs: nounwind ssp uwtable
define i32 @FloppyStartDevice(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %tmp_ndt_9.i = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %tmp_ndt_8.i = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %tmp_ndt_7.i = alloca i32, align 4
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
  call void @llvm.dbg.declare(metadata i32* %22, metadata !853, metadata !112), !dbg !854
  store i32 %Irp, i32* %23, align 4
  call void @llvm.dbg.declare(metadata i32* %23, metadata !855, metadata !112), !dbg !856
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !857, metadata !112), !dbg !858
  %24 = call i32 @__VERIFIER_nondet_int(), !dbg !859
  store i32 %24, i32* %DeviceObject__DeviceExtension, align 4, !dbg !858
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !860, metadata !112), !dbg !861
  %25 = call i32 @__VERIFIER_nondet_int(), !dbg !862
  store i32 %25, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !861
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !863, metadata !112), !dbg !864
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__TargetObject, metadata !865, metadata !112), !dbg !866
  %26 = call i32 @__VERIFIER_nondet_int(), !dbg !867
  store i32 %26, i32* %disketteExtension__TargetObject, align 4, !dbg !866
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__MaxTransferSize, metadata !868, metadata !112), !dbg !869
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__DriveType, metadata !870, metadata !112), !dbg !871
  %27 = call i32 @__VERIFIER_nondet_int(), !dbg !872
  store i32 %27, i32* %disketteExtension__DriveType, align 4, !dbg !871
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__PerpendicularMode, metadata !873, metadata !112), !dbg !874
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__DeviceUnit, metadata !875, metadata !112), !dbg !876
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__DriveOnValue, metadata !877, metadata !112), !dbg !878
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__UnderlyingPDO, metadata !879, metadata !112), !dbg !880
  %28 = call i32 @__VERIFIER_nondet_int(), !dbg !881
  store i32 %28, i32* %disketteExtension__UnderlyingPDO, align 4, !dbg !880
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__InterfaceString, metadata !882, metadata !112), !dbg !883
  %29 = call i32 @__VERIFIER_nondet_int(), !dbg !884
  store i32 %29, i32* %disketteExtension__InterfaceString, align 4, !dbg !883
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__IsStarted, metadata !885, metadata !112), !dbg !886
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__HoldNewRequests, metadata !887, metadata !112), !dbg !888
  call void @llvm.dbg.declare(metadata i32* %ntStatus, metadata !889, metadata !112), !dbg !890
  call void @llvm.dbg.declare(metadata i32* %pnpStatus, metadata !891, metadata !112), !dbg !892
  call void @llvm.dbg.declare(metadata i32* %doneEvent, metadata !893, metadata !112), !dbg !894
  %30 = call i32 @__VERIFIER_nondet_int(), !dbg !895
  store i32 %30, i32* %doneEvent, align 4, !dbg !894
  call void @llvm.dbg.declare(metadata i32* %fdcInfo, metadata !896, metadata !112), !dbg !897
  %31 = call i32 @__VERIFIER_nondet_int(), !dbg !898
  store i32 %31, i32* %fdcInfo, align 4, !dbg !897
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__BufferCount, metadata !899, metadata !112), !dbg !900
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__BufferSize, metadata !901, metadata !112), !dbg !902
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__MaxTransferSize, metadata !903, metadata !112), !dbg !904
  %32 = call i32 @__VERIFIER_nondet_int(), !dbg !905
  store i32 %32, i32* %fdcInfo__MaxTransferSize, align 4, !dbg !904
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__AcpiBios, metadata !906, metadata !112), !dbg !907
  %33 = call i32 @__VERIFIER_nondet_int(), !dbg !908
  store i32 %33, i32* %fdcInfo__AcpiBios, align 4, !dbg !907
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__AcpiFdiSupported, metadata !909, metadata !112), !dbg !910
  %34 = call i32 @__VERIFIER_nondet_int(), !dbg !911
  store i32 %34, i32* %fdcInfo__AcpiFdiSupported, align 4, !dbg !910
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__PeripheralNumber, metadata !912, metadata !112), !dbg !913
  %35 = call i32 @__VERIFIER_nondet_int(), !dbg !914
  store i32 %35, i32* %fdcInfo__PeripheralNumber, align 4, !dbg !913
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__BusType, metadata !915, metadata !112), !dbg !916
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__ControllerNumber, metadata !917, metadata !112), !dbg !918
  %36 = call i32 @__VERIFIER_nondet_int(), !dbg !919
  store i32 %36, i32* %fdcInfo__ControllerNumber, align 4, !dbg !918
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__UnitNumber, metadata !920, metadata !112), !dbg !921
  %37 = call i32 @__VERIFIER_nondet_int(), !dbg !922
  store i32 %37, i32* %fdcInfo__UnitNumber, align 4, !dbg !921
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__BusNumber, metadata !923, metadata !112), !dbg !924
  %38 = call i32 @__VERIFIER_nondet_int(), !dbg !925
  store i32 %38, i32* %fdcInfo__BusNumber, align 4, !dbg !924
  call void @llvm.dbg.declare(metadata i32* %Dc, metadata !926, metadata !112), !dbg !927
  call void @llvm.dbg.declare(metadata i32* %Fp, metadata !928, metadata !112), !dbg !929
  call void @llvm.dbg.declare(metadata i32* %disketteExtension, metadata !930, metadata !112), !dbg !931
  call void @llvm.dbg.declare(metadata i32* %irpSp, metadata !932, metadata !112), !dbg !933
  call void @llvm.dbg.declare(metadata i32* %irpSp___0, metadata !934, metadata !112), !dbg !935
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp, metadata !936, metadata !112), !dbg !937
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp__Control, metadata !938, metadata !112), !dbg !939
  call void @llvm.dbg.declare(metadata i32* %irpSp___1, metadata !940, metadata !112), !dbg !941
  call void @llvm.dbg.declare(metadata i32* %irpSp__Control, metadata !942, metadata !112), !dbg !943
  call void @llvm.dbg.declare(metadata i32* %irpSp__Context, metadata !944, metadata !112), !dbg !945
  call void @llvm.dbg.declare(metadata i32* %InterfaceType, metadata !946, metadata !112), !dbg !947
  call void @llvm.dbg.declare(metadata i32* %KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86, metadata !948, metadata !112), !dbg !949
  %39 = call i32 @__VERIFIER_nondet_int(), !dbg !950
  store i32 %39, i32* %KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86, align 4, !dbg !949
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp42, metadata !951, metadata !112), !dbg !952
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp43, metadata !953, metadata !112), !dbg !954
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp44, metadata !955, metadata !112), !dbg !956
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp45, metadata !957, metadata !112), !dbg !958
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp46, metadata !959, metadata !112), !dbg !960
  %40 = call i32 @__VERIFIER_nondet_int(), !dbg !961
  store i32 %40, i32* %__cil_tmp46, align 4, !dbg !960
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp47, metadata !962, metadata !112), !dbg !963
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp48, metadata !964, metadata !112), !dbg !965
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp49, metadata !966, metadata !112), !dbg !967
  %41 = load i32, i32* @DiskController, align 4, !dbg !968
  store i32 %41, i32* %Dc, align 4, !dbg !970
  %42 = load i32, i32* @FloppyDiskPeripheral, align 4, !dbg !971
  store i32 %42, i32* %Fp, align 4, !dbg !972
  %43 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !973
  store i32 %43, i32* %disketteExtension, align 4, !dbg !974
  %44 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !975
  store i32 %44, i32* %irpSp, align 4, !dbg !976
  %45 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !977
  store i32 %45, i32* %irpSp___0, align 4, !dbg !978
  %46 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !979
  %47 = sub nsw i32 %46, 1, !dbg !980
  store i32 %47, i32* %nextIrpSp, align 4, !dbg !981
  store i32 0, i32* %nextIrpSp__Control, align 4, !dbg !982
  %48 = load i32, i32* @s, align 4, !dbg !983
  %49 = load i32, i32* @NP, align 4, !dbg !985
  %50 = icmp ne i32 %48, %49, !dbg !986
  call void @llvm.dbg.declare(metadata i32* %20, metadata !111, metadata !112), !dbg !987
  call void @llvm.dbg.declare(metadata i32* %21, metadata !114, metadata !112), !dbg !996
  call void @llvm.dbg.declare(metadata i32* %18, metadata !386, metadata !112), !dbg !997
  call void @llvm.dbg.declare(metadata i32* %19, metadata !392, metadata !112), !dbg !1000
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1001, metadata !112), !dbg !1002
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1008, metadata !112), !dbg !1009
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1010, metadata !112), !dbg !1011
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1012, metadata !112), !dbg !1013
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1014, metadata !112), !dbg !1015
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1016, metadata !112), !dbg !1017
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1018, metadata !112), !dbg !1019
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1020, metadata !112), !dbg !1021
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_7.i, metadata !1022, metadata !112), !dbg !1024
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1025, metadata !112), !dbg !1026
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1031, metadata !112), !dbg !1032
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1033, metadata !112), !dbg !1034
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1035, metadata !112), !dbg !1036
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_8.i, metadata !1037, metadata !112), !dbg !1039
  call void @llvm.dbg.declare(metadata i32* %2, metadata !423, metadata !112), !dbg !1040
  call void @llvm.dbg.declare(metadata i32* %3, metadata !429, metadata !112), !dbg !1045
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_9.i, metadata !431, metadata !112), !dbg !1046
  br i1 %50, label %51, label %52, !dbg !1047

; <label>:51                                      ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !1048
  unreachable, !dbg !1048

errorFn.exit:                                     ; No predecessors!
  br label %58, !dbg !1052

; <label>:52                                      ; preds = %0
  %53 = load i32, i32* @compRegistered, align 4, !dbg !1053
  %54 = icmp ne i32 %53, 0, !dbg !1056
  br i1 %54, label %55, label %56, !dbg !1057

; <label>:55                                      ; preds = %52
  call void (...) @__VERIFIER_error() #5, !dbg !1058
  unreachable, !dbg !1058

errorFn.exit1:                                    ; No predecessors!
  br label %57, !dbg !1062

; <label>:56                                      ; preds = %52
  store i32 1, i32* @compRegistered, align 4, !dbg !1063
  br label %57

; <label>:57                                      ; preds = %56, %errorFn.exit1
  br label %58

; <label>:58                                      ; preds = %57, %errorFn.exit
  %59 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1065
  %60 = sub nsw i32 %59, 1, !dbg !1067
  store i32 %60, i32* %irpSp___1, align 4, !dbg !1068
  %61 = load i32, i32* %doneEvent, align 4, !dbg !1069
  store i32 %61, i32* %irpSp__Context, align 4, !dbg !1070
  store i32 224, i32* %irpSp__Control, align 4, !dbg !1071
  %62 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !1072
  %63 = load i32, i32* %23, align 4, !dbg !1073
  %64 = call i32 @IofCallDriver(i32 %62, i32 %63), !dbg !1074
  store i32 %64, i32* %ntStatus, align 4, !dbg !1075
  %65 = load i32, i32* %ntStatus, align 4, !dbg !1076
  %66 = sext i32 %65 to i64, !dbg !1078
  store i64 %66, i64* %__cil_tmp42, align 8, !dbg !1079
  %67 = load i64, i64* %__cil_tmp42, align 8, !dbg !1080
  %68 = icmp eq i64 %67, 259, !dbg !1082
  br i1 %68, label %69, label %75, !dbg !1083

; <label>:69                                      ; preds = %58
  %70 = load i32, i32* %doneEvent, align 4, !dbg !1084
  %71 = load i32, i32* @Executive, align 4, !dbg !1087
  %72 = load i32, i32* @KernelMode, align 4, !dbg !1088
  %73 = call i32 @KeWaitForSingleObject(i32 %70, i32 %71, i32 %72, i32 0, i32 0), !dbg !1089
  store i32 %73, i32* %ntStatus, align 4, !dbg !1090
  %74 = load i32, i32* @myStatus, align 4, !dbg !1091
  store i32 %74, i32* %ntStatus, align 4, !dbg !1092
  br label %75, !dbg !1093

; <label>:75                                      ; preds = %69, %58
  store i32 0, i32* %fdcInfo__BufferCount, align 4, !dbg !1094
  store i32 0, i32* %fdcInfo__BufferSize, align 4, !dbg !1096
  %76 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !1097
  %77 = load i32, i32* %__cil_tmp46, align 4, !dbg !1098
  %78 = load i32, i32* %fdcInfo, align 4, !dbg !1099
  %79 = call i32 @FlFdcDeviceIo(i32 %76, i32 %77, i32 %78), !dbg !1100
  store i32 %79, i32* %ntStatus, align 4, !dbg !1101
  %80 = load i32, i32* %ntStatus, align 4, !dbg !1102
  %81 = icmp sge i32 %80, 0, !dbg !1103
  br i1 %81, label %82, label %211, !dbg !1104

; <label>:82                                      ; preds = %75
  %83 = load i32, i32* %fdcInfo__MaxTransferSize, align 4, !dbg !1105
  store i32 %83, i32* %disketteExtension__MaxTransferSize, align 4, !dbg !1106
  %84 = load i32, i32* %fdcInfo__AcpiBios, align 4, !dbg !1107
  %85 = icmp ne i32 %84, 0, !dbg !1107
  br i1 %85, label %86, label %102, !dbg !1108

; <label>:86                                      ; preds = %82
  %87 = load i32, i32* %fdcInfo__AcpiFdiSupported, align 4, !dbg !1109
  %88 = icmp ne i32 %87, 0, !dbg !1109
  br i1 %88, label %89, label %100, !dbg !1110

; <label>:89                                      ; preds = %86
  %90 = load i32, i32* %disketteExtension, align 4, !dbg !1111
  %91 = load i32, i32* %fdcInfo, align 4, !dbg !1112
  %92 = bitcast i32* %20 to i8*, !dbg !1113
  call void @llvm.lifetime.start(i64 4, i8* %92), !dbg !1113
  %93 = bitcast i32* %21 to i8*, !dbg !1113
  call void @llvm.lifetime.start(i64 4, i8* %93), !dbg !1113
  store i32 %90, i32* %20, align 4, !dbg !1113
  store i32 %91, i32* %21, align 4, !dbg !1113
  %94 = bitcast i32* %20 to i8*, !dbg !1114
  call void @llvm.lifetime.end(i64 4, i8* %94), !dbg !1114
  %95 = bitcast i32* %21 to i8*, !dbg !1114
  call void @llvm.lifetime.end(i64 4, i8* %95), !dbg !1114
  store i32 0, i32* %ntStatus, align 4, !dbg !1115
  %96 = load i32, i32* %disketteExtension__DriveType, align 4, !dbg !1116
  %97 = icmp eq i32 %96, 4, !dbg !1118
  br i1 %97, label %98, label %99, !dbg !1119

; <label>:98                                      ; preds = %89
  br label %99, !dbg !1120

; <label>:99                                      ; preds = %98, %89
  br label %101, !dbg !1122

; <label>:100                                     ; preds = %86
  br label %103, !dbg !1123

; <label>:101                                     ; preds = %99
  br label %158, !dbg !1125

; <label>:102                                     ; preds = %82
  br label %103, !dbg !1126

; <label>:103                                     ; preds = %102, %100
  %104 = load i32, i32* %disketteExtension__DriveType, align 4, !dbg !1127
  %105 = icmp eq i32 %104, 4, !dbg !1129
  br i1 %105, label %106, label %107, !dbg !1130

; <label>:106                                     ; preds = %103
  br label %107, !dbg !1131

; <label>:107                                     ; preds = %106, %103
  store i32 0, i32* %InterfaceType, align 4, !dbg !1133
  br label %108, !dbg !1134

; <label>:108                                     ; preds = %153, %107
  br label %109, !dbg !1135

; <label>:109                                     ; preds = %108
  %110 = load i32, i32* %InterfaceType, align 4, !dbg !1136
  %111 = load i32, i32* @MaximumInterfaceType, align 4, !dbg !1138
  %112 = icmp sge i32 %110, %111, !dbg !1139
  br i1 %112, label %113, label %114, !dbg !1140

; <label>:113                                     ; preds = %109
  br label %157, !dbg !1141

; <label>:114                                     ; preds = %109
  %115 = load i32, i32* %InterfaceType, align 4, !dbg !1143
  store i32 %115, i32* %fdcInfo__BusType, align 4, !dbg !1144
  %116 = load i32, i32* %fdcInfo__BusType, align 4, !dbg !1145
  %117 = load i32, i32* %fdcInfo__BusNumber, align 4, !dbg !1146
  %118 = load i32, i32* %Dc, align 4, !dbg !1147
  %119 = load i32, i32* %fdcInfo__ControllerNumber, align 4, !dbg !1148
  %120 = load i32, i32* %Fp, align 4, !dbg !1149
  %121 = load i32, i32* %fdcInfo__PeripheralNumber, align 4, !dbg !1150
  %122 = load i32, i32* @FlConfigCallBack, align 4, !dbg !1151
  %123 = load i32, i32* %disketteExtension, align 4, !dbg !1152
  %124 = bitcast i32* %9 to i8*, !dbg !1153
  call void @llvm.lifetime.start(i64 4, i8* %124), !dbg !1153
  %125 = bitcast i32* %10 to i8*, !dbg !1153
  call void @llvm.lifetime.start(i64 4, i8* %125), !dbg !1153
  %126 = bitcast i32* %11 to i8*, !dbg !1153
  call void @llvm.lifetime.start(i64 4, i8* %126), !dbg !1153
  %127 = bitcast i32* %12 to i8*, !dbg !1153
  call void @llvm.lifetime.start(i64 4, i8* %127), !dbg !1153
  %128 = bitcast i32* %13 to i8*, !dbg !1153
  call void @llvm.lifetime.start(i64 4, i8* %128), !dbg !1153
  %129 = bitcast i32* %14 to i8*, !dbg !1153
  call void @llvm.lifetime.start(i64 4, i8* %129), !dbg !1153
  %130 = bitcast i32* %15 to i8*, !dbg !1153
  call void @llvm.lifetime.start(i64 4, i8* %130), !dbg !1153
  %131 = bitcast i32* %16 to i8*, !dbg !1153
  call void @llvm.lifetime.start(i64 4, i8* %131), !dbg !1153
  %132 = bitcast i32* %17 to i8*, !dbg !1153
  call void @llvm.lifetime.start(i64 4, i8* %132), !dbg !1153
  %133 = bitcast i32* %tmp_ndt_7.i to i8*, !dbg !1153
  call void @llvm.lifetime.start(i64 4, i8* %133), !dbg !1153
  store i32 %116, i32* %10, align 4, !dbg !1153
  store i32 %117, i32* %11, align 4, !dbg !1153
  store i32 %118, i32* %12, align 4, !dbg !1153
  store i32 %119, i32* %13, align 4, !dbg !1153
  store i32 %120, i32* %14, align 4, !dbg !1153
  store i32 %121, i32* %15, align 4, !dbg !1153
  store i32 %122, i32* %16, align 4, !dbg !1153
  store i32 %123, i32* %17, align 4, !dbg !1153
  %134 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1154
  store i32 %134, i32* %tmp_ndt_7.i, align 4, !dbg !1155
  %135 = load i32, i32* %tmp_ndt_7.i, align 4, !dbg !1156
  %136 = icmp eq i32 %135, 0, !dbg !1158
  br i1 %136, label %137, label %138, !dbg !1159

; <label>:137                                     ; preds = %114
  store i32 0, i32* %9, !dbg !1160
  br label %IoQueryDeviceDescription.exit, !dbg !1160

; <label>:138                                     ; preds = %114
  store i32 -1073741823, i32* %9, !dbg !1164
  br label %IoQueryDeviceDescription.exit, !dbg !1164

IoQueryDeviceDescription.exit:                    ; preds = %137, %138
  %139 = load i32, i32* %9, !dbg !1165
  %140 = bitcast i32* %9 to i8*, !dbg !1165
  call void @llvm.lifetime.end(i64 4, i8* %140), !dbg !1165
  %141 = bitcast i32* %10 to i8*, !dbg !1165
  call void @llvm.lifetime.end(i64 4, i8* %141), !dbg !1165
  %142 = bitcast i32* %11 to i8*, !dbg !1165
  call void @llvm.lifetime.end(i64 4, i8* %142), !dbg !1165
  %143 = bitcast i32* %12 to i8*, !dbg !1165
  call void @llvm.lifetime.end(i64 4, i8* %143), !dbg !1165
  %144 = bitcast i32* %13 to i8*, !dbg !1165
  call void @llvm.lifetime.end(i64 4, i8* %144), !dbg !1165
  %145 = bitcast i32* %14 to i8*, !dbg !1165
  call void @llvm.lifetime.end(i64 4, i8* %145), !dbg !1165
  %146 = bitcast i32* %15 to i8*, !dbg !1165
  call void @llvm.lifetime.end(i64 4, i8* %146), !dbg !1165
  %147 = bitcast i32* %16 to i8*, !dbg !1165
  call void @llvm.lifetime.end(i64 4, i8* %147), !dbg !1165
  %148 = bitcast i32* %17 to i8*, !dbg !1165
  call void @llvm.lifetime.end(i64 4, i8* %148), !dbg !1165
  %149 = bitcast i32* %tmp_ndt_7.i to i8*, !dbg !1165
  call void @llvm.lifetime.end(i64 4, i8* %149), !dbg !1165
  store i32 %139, i32* %ntStatus, align 4, !dbg !1166
  %150 = load i32, i32* %ntStatus, align 4, !dbg !1167
  %151 = icmp sge i32 %150, 0, !dbg !1169
  br i1 %151, label %152, label %153, !dbg !1170

; <label>:152                                     ; preds = %IoQueryDeviceDescription.exit
  br label %157, !dbg !1171

; <label>:153                                     ; preds = %IoQueryDeviceDescription.exit
  %154 = load i32, i32* %InterfaceType, align 4, !dbg !1173
  %155 = add nsw i32 %154, 1, !dbg !1173
  store i32 %155, i32* %InterfaceType, align 4, !dbg !1173
  br label %108, !dbg !1134
                                                  ; No predecessors!
  br label %157, !dbg !1174

; <label>:157                                     ; preds = %156, %152, %113
  br label %158

; <label>:158                                     ; preds = %157, %101
  %159 = load i32, i32* %ntStatus, align 4, !dbg !1175
  %160 = icmp sge i32 %159, 0, !dbg !1176
  br i1 %160, label %161, label %210, !dbg !1177

; <label>:161                                     ; preds = %158
  %162 = load i32, i32* %KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86, align 4, !dbg !1178
  %163 = icmp ne i32 %162, 0, !dbg !1180
  br i1 %163, label %164, label %167, !dbg !1181

; <label>:164                                     ; preds = %161
  %165 = load i32, i32* %fdcInfo__UnitNumber, align 4, !dbg !1182
  store i32 %165, i32* %disketteExtension__DeviceUnit, align 4, !dbg !1184
  %166 = load i32, i32* %fdcInfo__UnitNumber, align 4, !dbg !1185
  store i32 %166, i32* %disketteExtension__DriveOnValue, align 4, !dbg !1186
  br label %169, !dbg !1187

; <label>:167                                     ; preds = %161
  %168 = load i32, i32* %fdcInfo__PeripheralNumber, align 4, !dbg !1188
  store i32 %168, i32* %disketteExtension__DeviceUnit, align 4, !dbg !1190
  br label %169

; <label>:169                                     ; preds = %167, %164
  %170 = load i32, i32* %disketteExtension__UnderlyingPDO, align 4, !dbg !1191
  %171 = load i32, i32* @MOUNTDEV_MOUNTED_DEVICE_GUID, align 4, !dbg !1192
  %172 = load i32, i32* %disketteExtension__InterfaceString, align 4, !dbg !1193
  %173 = bitcast i32* %4 to i8*, !dbg !1194
  call void @llvm.lifetime.start(i64 4, i8* %173), !dbg !1194
  %174 = bitcast i32* %5 to i8*, !dbg !1194
  call void @llvm.lifetime.start(i64 4, i8* %174), !dbg !1194
  %175 = bitcast i32* %6 to i8*, !dbg !1194
  call void @llvm.lifetime.start(i64 4, i8* %175), !dbg !1194
  %176 = bitcast i32* %7 to i8*, !dbg !1194
  call void @llvm.lifetime.start(i64 4, i8* %176), !dbg !1194
  %177 = bitcast i32* %8 to i8*, !dbg !1194
  call void @llvm.lifetime.start(i64 4, i8* %177), !dbg !1194
  %178 = bitcast i32* %tmp_ndt_8.i to i8*, !dbg !1194
  call void @llvm.lifetime.start(i64 4, i8* %178), !dbg !1194
  store i32 %170, i32* %5, align 4, !dbg !1194
  store i32 %171, i32* %6, align 4, !dbg !1194
  store i32 0, i32* %7, align 4, !dbg !1194
  store i32 %172, i32* %8, align 4, !dbg !1194
  %179 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1195
  store i32 %179, i32* %tmp_ndt_8.i, align 4, !dbg !1196
  %180 = load i32, i32* %tmp_ndt_8.i, align 4, !dbg !1197
  %181 = icmp eq i32 %180, 0, !dbg !1199
  br i1 %181, label %182, label %183, !dbg !1200

; <label>:182                                     ; preds = %169
  store i32 0, i32* %4, !dbg !1201
  br label %IoRegisterDeviceInterface.exit, !dbg !1201

; <label>:183                                     ; preds = %169
  store i32 -1073741808, i32* %4, !dbg !1205
  br label %IoRegisterDeviceInterface.exit, !dbg !1205

IoRegisterDeviceInterface.exit:                   ; preds = %182, %183
  %184 = load i32, i32* %4, !dbg !1206
  %185 = bitcast i32* %4 to i8*, !dbg !1206
  call void @llvm.lifetime.end(i64 4, i8* %185), !dbg !1206
  %186 = bitcast i32* %5 to i8*, !dbg !1206
  call void @llvm.lifetime.end(i64 4, i8* %186), !dbg !1206
  %187 = bitcast i32* %6 to i8*, !dbg !1206
  call void @llvm.lifetime.end(i64 4, i8* %187), !dbg !1206
  %188 = bitcast i32* %7 to i8*, !dbg !1206
  call void @llvm.lifetime.end(i64 4, i8* %188), !dbg !1206
  %189 = bitcast i32* %8 to i8*, !dbg !1206
  call void @llvm.lifetime.end(i64 4, i8* %189), !dbg !1206
  %190 = bitcast i32* %tmp_ndt_8.i to i8*, !dbg !1206
  call void @llvm.lifetime.end(i64 4, i8* %190), !dbg !1206
  store i32 %184, i32* %pnpStatus, align 4, !dbg !1207
  %191 = load i32, i32* %pnpStatus, align 4, !dbg !1208
  %192 = icmp sge i32 %191, 0, !dbg !1209
  br i1 %192, label %193, label %209, !dbg !1210

; <label>:193                                     ; preds = %IoRegisterDeviceInterface.exit
  %194 = load i32, i32* %disketteExtension__InterfaceString, align 4, !dbg !1211
  %195 = bitcast i32* %1 to i8*, !dbg !1212
  call void @llvm.lifetime.start(i64 4, i8* %195), !dbg !1212
  %196 = bitcast i32* %2 to i8*, !dbg !1212
  call void @llvm.lifetime.start(i64 4, i8* %196), !dbg !1212
  %197 = bitcast i32* %3 to i8*, !dbg !1212
  call void @llvm.lifetime.start(i64 4, i8* %197), !dbg !1212
  %198 = bitcast i32* %tmp_ndt_9.i to i8*, !dbg !1212
  call void @llvm.lifetime.start(i64 4, i8* %198), !dbg !1212
  store i32 %194, i32* %2, align 4, !dbg !1212
  store i32 1, i32* %3, align 4, !dbg !1212
  %199 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1213
  store i32 %199, i32* %tmp_ndt_9.i, align 4, !dbg !1214
  %200 = load i32, i32* %tmp_ndt_9.i, align 4, !dbg !1215
  %201 = icmp eq i32 %200, 0, !dbg !1216
  br i1 %201, label %202, label %203, !dbg !1217

; <label>:202                                     ; preds = %193
  store i32 0, i32* %1, !dbg !1218
  br label %IoSetDeviceInterfaceState.exit, !dbg !1218

; <label>:203                                     ; preds = %193
  store i32 -1073741823, i32* %1, !dbg !1219
  br label %IoSetDeviceInterfaceState.exit, !dbg !1219

IoSetDeviceInterfaceState.exit:                   ; preds = %202, %203
  %204 = load i32, i32* %1, !dbg !1220
  %205 = bitcast i32* %1 to i8*, !dbg !1220
  call void @llvm.lifetime.end(i64 4, i8* %205), !dbg !1220
  %206 = bitcast i32* %2 to i8*, !dbg !1220
  call void @llvm.lifetime.end(i64 4, i8* %206), !dbg !1220
  %207 = bitcast i32* %3 to i8*, !dbg !1220
  call void @llvm.lifetime.end(i64 4, i8* %207), !dbg !1220
  %208 = bitcast i32* %tmp_ndt_9.i to i8*, !dbg !1220
  call void @llvm.lifetime.end(i64 4, i8* %208), !dbg !1220
  store i32 %204, i32* %pnpStatus, align 4, !dbg !1221
  br label %209, !dbg !1222

; <label>:209                                     ; preds = %IoSetDeviceInterfaceState.exit, %IoRegisterDeviceInterface.exit
  store i32 1, i32* %disketteExtension__IsStarted, align 4, !dbg !1223
  store i32 0, i32* %disketteExtension__HoldNewRequests, align 4, !dbg !1224
  br label %210, !dbg !1225

; <label>:210                                     ; preds = %209, %158
  br label %211, !dbg !1226

; <label>:211                                     ; preds = %210, %75
  %212 = load i32, i32* %ntStatus, align 4, !dbg !1227
  store i32 %212, i32* %Irp__IoStatus__Status, align 4, !dbg !1228
  %213 = load i32, i32* %ntStatus, align 4, !dbg !1229
  store i32 %213, i32* @myStatus, align 4, !dbg !1230
  %214 = load i32, i32* %23, align 4, !dbg !1231
  %215 = bitcast i32* %18 to i8*, !dbg !1232
  call void @llvm.lifetime.start(i64 4, i8* %215), !dbg !1232
  %216 = bitcast i32* %19 to i8*, !dbg !1232
  call void @llvm.lifetime.start(i64 4, i8* %216), !dbg !1232
  store i32 %214, i32* %18, align 4, !dbg !1232
  store i32 0, i32* %19, align 4, !dbg !1232
  %217 = load i32, i32* @s, align 4, !dbg !1233
  %218 = load i32, i32* @NP, align 4, !dbg !1234
  %219 = icmp eq i32 %217, %218, !dbg !1235
  br i1 %219, label %IofCompleteRequest.exit, label %220, !dbg !1236

; <label>:220                                     ; preds = %211
  call void (...) @__VERIFIER_error() #5, !dbg !1237
  unreachable, !dbg !1237

IofCompleteRequest.exit:                          ; preds = %211
  %221 = load i32, i32* @DC, align 4, !dbg !1239
  store i32 %221, i32* @s, align 4, !dbg !1240
  %222 = bitcast i32* %18 to i8*, !dbg !1241
  call void @llvm.lifetime.end(i64 4, i8* %222), !dbg !1241
  %223 = bitcast i32* %19 to i8*, !dbg !1241
  call void @llvm.lifetime.end(i64 4, i8* %223), !dbg !1241
  %224 = load i32, i32* %ntStatus, align 4, !dbg !1242
  ret i32 %224, !dbg !1243
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
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1244, metadata !112), !dbg !1245
  store i32 %Irp, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1246, metadata !112), !dbg !1247
  store i32 %Context, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1248, metadata !112), !dbg !1249
  %7 = load i32, i32* %6, align 4, !dbg !1250
  %8 = bitcast i32* %1 to i8*, !dbg !1253
  call void @llvm.lifetime.start(i64 4, i8* %8), !dbg !1253
  %9 = bitcast i32* %2 to i8*, !dbg !1253
  call void @llvm.lifetime.start(i64 4, i8* %9), !dbg !1253
  %10 = bitcast i32* %3 to i8*, !dbg !1253
  call void @llvm.lifetime.start(i64 4, i8* %10), !dbg !1253
  %11 = bitcast i32* %l.i to i8*, !dbg !1253
  call void @llvm.lifetime.start(i64 4, i8* %11), !dbg !1253
  store i32 %7, i32* %1, align 4, !dbg !1253
  store i32 1, i32* %2, align 4, !dbg !1253
  store i32 0, i32* %3, align 4, !dbg !1253
  %12 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1254
  store i32 %12, i32* %l.i, align 4, !dbg !1256
  store i32 1, i32* @setEventCalled, align 4, !dbg !1257
  %13 = load i32, i32* %l.i, align 4, !dbg !1259
  %14 = bitcast i32* %1 to i8*, !dbg !1260
  call void @llvm.lifetime.end(i64 4, i8* %14), !dbg !1260
  %15 = bitcast i32* %2 to i8*, !dbg !1260
  call void @llvm.lifetime.end(i64 4, i8* %15), !dbg !1260
  %16 = bitcast i32* %3 to i8*, !dbg !1260
  call void @llvm.lifetime.end(i64 4, i8* %16), !dbg !1260
  %17 = bitcast i32* %l.i to i8*, !dbg !1260
  call void @llvm.lifetime.end(i64 4, i8* %17), !dbg !1260
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1261, metadata !112), !dbg !1262
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1263, metadata !112), !dbg !1264
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1265, metadata !112), !dbg !1266
  call void @llvm.dbg.declare(metadata i32* %l.i, metadata !1267, metadata !112), !dbg !1256
  ret i32 -1073741802, !dbg !1268
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
  %tmp_ndt_5.i = alloca i32, align 4
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
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1269, metadata !112), !dbg !1270
  store i32 %Ioctl, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1271, metadata !112), !dbg !1272
  store i32 %Data, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1273, metadata !112), !dbg !1274
  call void @llvm.dbg.declare(metadata i32* %ntStatus, metadata !1275, metadata !112), !dbg !1276
  call void @llvm.dbg.declare(metadata i32* %irp, metadata !1277, metadata !112), !dbg !1278
  call void @llvm.dbg.declare(metadata i32* %irpStack, metadata !1279, metadata !112), !dbg !1280
  call void @llvm.dbg.declare(metadata i32* %doneEvent, metadata !1281, metadata !112), !dbg !1282
  %15 = call i32 @__VERIFIER_nondet_int(), !dbg !1283
  store i32 %15, i32* %doneEvent, align 4, !dbg !1282
  call void @llvm.dbg.declare(metadata i32* %ioStatus, metadata !1284, metadata !112), !dbg !1285
  %16 = call i32 @__VERIFIER_nondet_int(), !dbg !1286
  store i32 %16, i32* %ioStatus, align 4, !dbg !1285
  call void @llvm.dbg.declare(metadata i32* %irp__Tail__Overlay__CurrentStackLocation, metadata !1287, metadata !112), !dbg !1288
  %17 = call i32 @__VERIFIER_nondet_int(), !dbg !1289
  store i32 %17, i32* %irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1288
  call void @llvm.dbg.declare(metadata i32* %irpStack__Parameters__DeviceIoControl__Type3InputBuffer, metadata !1290, metadata !112), !dbg !1291
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp11, metadata !1292, metadata !112), !dbg !1293
  %18 = load i32, i32* %13, align 4, !dbg !1294
  %19 = load i32, i32* %12, align 4, !dbg !1297
  %20 = load i32, i32* %doneEvent, align 4, !dbg !1298
  %21 = load i32, i32* %ioStatus, align 4, !dbg !1299
  %22 = bitcast i32* %1 to i8*, !dbg !1300
  call void @llvm.lifetime.start(i64 4, i8* %22), !dbg !1300
  %23 = bitcast i32* %2 to i8*, !dbg !1300
  call void @llvm.lifetime.start(i64 4, i8* %23), !dbg !1300
  %24 = bitcast i32* %3 to i8*, !dbg !1300
  call void @llvm.lifetime.start(i64 4, i8* %24), !dbg !1300
  %25 = bitcast i32* %4 to i8*, !dbg !1300
  call void @llvm.lifetime.start(i64 4, i8* %25), !dbg !1300
  %26 = bitcast i32* %5 to i8*, !dbg !1300
  call void @llvm.lifetime.start(i64 4, i8* %26), !dbg !1300
  %27 = bitcast i32* %6 to i8*, !dbg !1300
  call void @llvm.lifetime.start(i64 4, i8* %27), !dbg !1300
  %28 = bitcast i32* %7 to i8*, !dbg !1300
  call void @llvm.lifetime.start(i64 4, i8* %28), !dbg !1300
  %29 = bitcast i32* %8 to i8*, !dbg !1300
  call void @llvm.lifetime.start(i64 4, i8* %29), !dbg !1300
  %30 = bitcast i32* %9 to i8*, !dbg !1300
  call void @llvm.lifetime.start(i64 4, i8* %30), !dbg !1300
  %31 = bitcast i32* %10 to i8*, !dbg !1300
  call void @llvm.lifetime.start(i64 4, i8* %31), !dbg !1300
  %32 = bitcast i32* %malloc.i to i8*, !dbg !1300
  call void @llvm.lifetime.start(i64 4, i8* %32), !dbg !1300
  %33 = bitcast i32* %tmp_ndt_5.i to i8*, !dbg !1300
  call void @llvm.lifetime.start(i64 4, i8* %33), !dbg !1300
  store i32 %18, i32* %2, align 4, !dbg !1300
  store i32 %19, i32* %3, align 4, !dbg !1300
  store i32 0, i32* %4, align 4, !dbg !1300
  store i32 0, i32* %5, align 4, !dbg !1300
  store i32 0, i32* %6, align 4, !dbg !1300
  store i32 0, i32* %7, align 4, !dbg !1300
  store i32 1, i32* %8, align 4, !dbg !1300
  store i32 %20, i32* %9, align 4, !dbg !1300
  store i32 %21, i32* %10, align 4, !dbg !1300
  %34 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1301
  store i32 %34, i32* %malloc.i, align 4, !dbg !1303
  store i32 1, i32* @customIrp, align 4, !dbg !1304
  %35 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1306
  store i32 %35, i32* %tmp_ndt_5.i, align 4, !dbg !1307
  %36 = load i32, i32* %tmp_ndt_5.i, align 4, !dbg !1308
  %37 = icmp eq i32 %36, 0, !dbg !1310
  br i1 %37, label %38, label %40, !dbg !1311

; <label>:38                                      ; preds = %0
  %39 = load i32, i32* %malloc.i, align 4, !dbg !1312
  store i32 %39, i32* %1, !dbg !1316
  br label %IoBuildDeviceIoControlRequest.exit, !dbg !1316

; <label>:40                                      ; preds = %0
  store i32 0, i32* %1, !dbg !1317
  br label %IoBuildDeviceIoControlRequest.exit, !dbg !1317

IoBuildDeviceIoControlRequest.exit:               ; preds = %38, %40
  %41 = load i32, i32* %1, !dbg !1318
  %42 = bitcast i32* %1 to i8*, !dbg !1318
  call void @llvm.lifetime.end(i64 4, i8* %42), !dbg !1318
  %43 = bitcast i32* %2 to i8*, !dbg !1318
  call void @llvm.lifetime.end(i64 4, i8* %43), !dbg !1318
  %44 = bitcast i32* %3 to i8*, !dbg !1318
  call void @llvm.lifetime.end(i64 4, i8* %44), !dbg !1318
  %45 = bitcast i32* %4 to i8*, !dbg !1318
  call void @llvm.lifetime.end(i64 4, i8* %45), !dbg !1318
  %46 = bitcast i32* %5 to i8*, !dbg !1318
  call void @llvm.lifetime.end(i64 4, i8* %46), !dbg !1318
  %47 = bitcast i32* %6 to i8*, !dbg !1318
  call void @llvm.lifetime.end(i64 4, i8* %47), !dbg !1318
  %48 = bitcast i32* %7 to i8*, !dbg !1318
  call void @llvm.lifetime.end(i64 4, i8* %48), !dbg !1318
  %49 = bitcast i32* %8 to i8*, !dbg !1318
  call void @llvm.lifetime.end(i64 4, i8* %49), !dbg !1318
  %50 = bitcast i32* %9 to i8*, !dbg !1318
  call void @llvm.lifetime.end(i64 4, i8* %50), !dbg !1318
  %51 = bitcast i32* %10 to i8*, !dbg !1318
  call void @llvm.lifetime.end(i64 4, i8* %51), !dbg !1318
  %52 = bitcast i32* %malloc.i to i8*, !dbg !1318
  call void @llvm.lifetime.end(i64 4, i8* %52), !dbg !1318
  %53 = bitcast i32* %tmp_ndt_5.i to i8*, !dbg !1318
  call void @llvm.lifetime.end(i64 4, i8* %53), !dbg !1318
  store i32 %41, i32* %irp, align 4, !dbg !1319
  %54 = load i32, i32* %irp, align 4, !dbg !1320
  %55 = icmp eq i32 %54, 0, !dbg !1322
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1323, metadata !112), !dbg !1324
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1325, metadata !112), !dbg !1326
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1327, metadata !112), !dbg !1328
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1329, metadata !112), !dbg !1330
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1331, metadata !112), !dbg !1332
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1333, metadata !112), !dbg !1334
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1335, metadata !112), !dbg !1336
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1337, metadata !112), !dbg !1338
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1339, metadata !112), !dbg !1340
  call void @llvm.dbg.declare(metadata i32* %malloc.i, metadata !1341, metadata !112), !dbg !1303
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_5.i, metadata !1342, metadata !112), !dbg !1343
  br i1 %55, label %56, label %57, !dbg !1344

; <label>:56                                      ; preds = %IoBuildDeviceIoControlRequest.exit
  store i32 -1073741670, i32* %11, !dbg !1345
  br label %76, !dbg !1345

; <label>:57                                      ; preds = %IoBuildDeviceIoControlRequest.exit
  %58 = load i32, i32* %irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1347
  %59 = sub nsw i32 %58, 1, !dbg !1349
  store i32 %59, i32* %irpStack, align 4, !dbg !1350
  %60 = load i32, i32* %14, align 4, !dbg !1351
  store i32 %60, i32* %irpStack__Parameters__DeviceIoControl__Type3InputBuffer, align 4, !dbg !1352
  %61 = load i32, i32* %12, align 4, !dbg !1353
  %62 = load i32, i32* %irp, align 4, !dbg !1354
  %63 = call i32 @IofCallDriver(i32 %61, i32 %62), !dbg !1355
  store i32 %63, i32* %ntStatus, align 4, !dbg !1356
  %64 = load i32, i32* %ntStatus, align 4, !dbg !1357
  %65 = sext i32 %64 to i64, !dbg !1359
  store i64 %65, i64* %__cil_tmp11, align 8, !dbg !1360
  %66 = load i64, i64* %__cil_tmp11, align 8, !dbg !1361
  %67 = icmp eq i64 %66, 259, !dbg !1363
  br i1 %67, label %68, label %74, !dbg !1364

; <label>:68                                      ; preds = %57
  %69 = load i32, i32* %doneEvent, align 4, !dbg !1365
  %70 = load i32, i32* @Suspended, align 4, !dbg !1368
  %71 = load i32, i32* @KernelMode, align 4, !dbg !1369
  %72 = call i32 @KeWaitForSingleObject(i32 %69, i32 %70, i32 %71, i32 0, i32 0), !dbg !1370
  %73 = load i32, i32* @myStatus, align 4, !dbg !1371
  store i32 %73, i32* %ntStatus, align 4, !dbg !1372
  br label %74, !dbg !1373

; <label>:74                                      ; preds = %68, %57
  %75 = load i32, i32* %ntStatus, align 4, !dbg !1374
  store i32 %75, i32* %11, !dbg !1375
  br label %76, !dbg !1375

; <label>:76                                      ; preds = %74, %56
  %77 = load i32, i32* %11, !dbg !1376
  ret i32 %77, !dbg !1376
}

; Function Attrs: nounwind ssp uwtable
define void @FloppyProcessQueuedRequests(i32 %DisketteExtension) #0 {
  %1 = alloca i32, align 4
  store i32 %DisketteExtension, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1377, metadata !112), !dbg !1378
  ret void, !dbg !1379
}

; Function Attrs: nounwind ssp uwtable
define void @stub_driver_init() #0 {
  %1 = load i32, i32* @NP, align 4, !dbg !1381
  store i32 %1, i32* @s, align 4, !dbg !1383
  store i32 0, i32* @pended, align 4, !dbg !1384
  store i32 0, i32* @compRegistered, align 4, !dbg !1385
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !1386
  store i32 0, i32* @setEventCalled, align 4, !dbg !1387
  store i32 0, i32* @customIrp, align 4, !dbg !1388
  ret void, !dbg !1389
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %Irp__IoStatus__Status.i.2 = alloca i32, align 4
  %Irp__IoStatus__Information.i.3 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %Irp__IoStatus__Status.i = alloca i32, align 4
  %Irp__IoStatus__Information.i = alloca i32, align 4
  %9 = alloca i32, align 4
  %status = alloca i32, align 4
  %irp = alloca i32, align 4
  %pirp = alloca i32, align 4
  %pirp__IoStatus__Status = alloca i32, align 4
  %irp_choice = alloca i32, align 4
  %devobj = alloca i32, align 4
  %__cil_tmp8 = alloca i32, align 4
  %tmp_ndt_1 = alloca i32, align 4
  %tmp_ndt_2 = alloca i32, align 4
  %tmp_ndt_3 = alloca i32, align 4
  %tmp_ndt_4 = alloca i32, align 4
  store i32 0, i32* %9
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1390, metadata !112), !dbg !1391
  call void @llvm.dbg.declare(metadata i32* %irp, metadata !1392, metadata !112), !dbg !1393
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !1394
  store i32 %10, i32* %irp, align 4, !dbg !1393
  call void @llvm.dbg.declare(metadata i32* %pirp, metadata !1395, metadata !112), !dbg !1396
  call void @llvm.dbg.declare(metadata i32* %pirp__IoStatus__Status, metadata !1397, metadata !112), !dbg !1398
  call void @llvm.dbg.declare(metadata i32* %irp_choice, metadata !1399, metadata !112), !dbg !1400
  %11 = call i32 @__VERIFIER_nondet_int(), !dbg !1401
  store i32 %11, i32* %irp_choice, align 4, !dbg !1400
  call void @llvm.dbg.declare(metadata i32* %devobj, metadata !1402, metadata !112), !dbg !1403
  %12 = call i32 @__VERIFIER_nondet_int(), !dbg !1404
  store i32 %12, i32* %devobj, align 4, !dbg !1403
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp8, metadata !1405, metadata !112), !dbg !1406
  store i32 0, i32* @FloppyThread, align 4, !dbg !1407
  store i32 0, i32* @KernelMode, align 4, !dbg !1408
  store i32 0, i32* @Suspended, align 4, !dbg !1409
  store i32 0, i32* @Executive, align 4, !dbg !1410
  store i32 0, i32* @DiskController, align 4, !dbg !1411
  store i32 0, i32* @FloppyDiskPeripheral, align 4, !dbg !1412
  store i32 0, i32* @FlConfigCallBack, align 4, !dbg !1413
  store i32 0, i32* @MaximumInterfaceType, align 4, !dbg !1414
  store i32 0, i32* @MOUNTDEV_MOUNTED_DEVICE_GUID, align 4, !dbg !1415
  store i32 0, i32* @myStatus, align 4, !dbg !1416
  store i32 0, i32* @s, align 4, !dbg !1417
  store i32 0, i32* @UNLOADED, align 4, !dbg !1418
  store i32 0, i32* @NP, align 4, !dbg !1419
  store i32 0, i32* @DC, align 4, !dbg !1420
  store i32 0, i32* @SKIP1, align 4, !dbg !1421
  store i32 0, i32* @SKIP2, align 4, !dbg !1422
  store i32 0, i32* @MPR1, align 4, !dbg !1423
  store i32 0, i32* @MPR3, align 4, !dbg !1424
  store i32 0, i32* @IPC, align 4, !dbg !1425
  store i32 0, i32* @pended, align 4, !dbg !1426
  store i32 0, i32* @compRegistered, align 4, !dbg !1427
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !1428
  store i32 0, i32* @setEventCalled, align 4, !dbg !1429
  store i32 0, i32* @customIrp, align 4, !dbg !1430
  store i32 0, i32* %status, align 4, !dbg !1431
  %13 = load i32, i32* %irp, align 4, !dbg !1434
  store i32 %13, i32* %pirp, align 4, !dbg !1435
  store i32 0, i32* @UNLOADED, align 4, !dbg !1436
  store i32 1, i32* @NP, align 4, !dbg !1438
  store i32 2, i32* @DC, align 4, !dbg !1439
  store i32 3, i32* @SKIP1, align 4, !dbg !1440
  store i32 4, i32* @SKIP2, align 4, !dbg !1441
  store i32 5, i32* @MPR1, align 4, !dbg !1442
  store i32 6, i32* @MPR3, align 4, !dbg !1443
  store i32 7, i32* @IPC, align 4, !dbg !1444
  %14 = load i32, i32* @UNLOADED, align 4, !dbg !1445
  store i32 %14, i32* @s, align 4, !dbg !1446
  store i32 0, i32* @pended, align 4, !dbg !1447
  store i32 0, i32* @compRegistered, align 4, !dbg !1448
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !1449
  store i32 0, i32* @setEventCalled, align 4, !dbg !1450
  store i32 0, i32* @customIrp, align 4, !dbg !1451
  %15 = load i32, i32* %status, align 4, !dbg !1452
  %16 = icmp sge i32 %15, 0, !dbg !1454
  call void @llvm.dbg.declare(metadata i32* %5, metadata !386, metadata !112), !dbg !1455
  call void @llvm.dbg.declare(metadata i32* %6, metadata !392, metadata !112), !dbg !1472
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1473, metadata !112), !dbg !1474
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1475, metadata !112), !dbg !1476
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status.i, metadata !1477, metadata !112), !dbg !1478
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information.i, metadata !1479, metadata !112), !dbg !1480
  call void @llvm.dbg.declare(metadata i32* %1, metadata !386, metadata !112), !dbg !1481
  call void @llvm.dbg.declare(metadata i32* %2, metadata !392, metadata !112), !dbg !1485
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1473, metadata !112), !dbg !1486
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1475, metadata !112), !dbg !1487
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status.i.2, metadata !1477, metadata !112), !dbg !1488
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information.i.3, metadata !1479, metadata !112), !dbg !1489
  br i1 %16, label %17, label %112, !dbg !1490

; <label>:17                                      ; preds = %0
  %18 = load i32, i32* @NP, align 4, !dbg !1491
  store i32 %18, i32* @s, align 4, !dbg !1492
  store i32 0, i32* @customIrp, align 4, !dbg !1493
  %19 = load i32, i32* @customIrp, align 4, !dbg !1494
  store i32 %19, i32* @setEventCalled, align 4, !dbg !1495
  %20 = load i32, i32* @setEventCalled, align 4, !dbg !1496
  store i32 %20, i32* @lowerDriverReturn, align 4, !dbg !1497
  %21 = load i32, i32* @lowerDriverReturn, align 4, !dbg !1498
  store i32 %21, i32* @compRegistered, align 4, !dbg !1499
  %22 = load i32, i32* @compRegistered, align 4, !dbg !1500
  store i32 %22, i32* @pended, align 4, !dbg !1501
  store i32 0, i32* %pirp__IoStatus__Status, align 4, !dbg !1502
  store i32 0, i32* @myStatus, align 4, !dbg !1503
  %23 = load i32, i32* %irp_choice, align 4, !dbg !1504
  %24 = icmp eq i32 %23, 0, !dbg !1506
  br i1 %24, label %25, label %26, !dbg !1507

; <label>:25                                      ; preds = %17
  store i32 -1073741637, i32* %pirp__IoStatus__Status, align 4, !dbg !1508
  store i32 -1073741637, i32* @myStatus, align 4, !dbg !1510
  br label %26, !dbg !1511

; <label>:26                                      ; preds = %25, %17
  %27 = load i32, i32* @NP, align 4, !dbg !1512
  store i32 %27, i32* @s, align 4, !dbg !1515
  store i32 0, i32* @pended, align 4, !dbg !1516
  store i32 0, i32* @compRegistered, align 4, !dbg !1517
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !1518
  store i32 0, i32* @setEventCalled, align 4, !dbg !1519
  store i32 0, i32* @customIrp, align 4, !dbg !1520
  %28 = load i32, i32* %status, align 4, !dbg !1521
  %29 = icmp slt i32 %28, 0, !dbg !1524
  br i1 %29, label %30, label %31, !dbg !1525

; <label>:30                                      ; preds = %26
  store i32 -1, i32* %9, !dbg !1526
  br label %192, !dbg !1526

; <label>:31                                      ; preds = %26
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_1, metadata !1528, metadata !112), !dbg !1529
  %32 = call i32 @__VERIFIER_nondet_int(), !dbg !1530
  store i32 %32, i32* %tmp_ndt_1, align 4, !dbg !1531
  %33 = load i32, i32* %tmp_ndt_1, align 4, !dbg !1532
  %34 = icmp eq i32 %33, 0, !dbg !1533
  br i1 %34, label %35, label %36, !dbg !1534

; <label>:35                                      ; preds = %31
  br label %54, !dbg !1535

; <label>:36                                      ; preds = %31
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_2, metadata !1537, metadata !112), !dbg !1538
  %37 = call i32 @__VERIFIER_nondet_int(), !dbg !1539
  store i32 %37, i32* %tmp_ndt_2, align 4, !dbg !1540
  %38 = load i32, i32* %tmp_ndt_2, align 4, !dbg !1541
  %39 = icmp eq i32 %38, 1, !dbg !1542
  br i1 %39, label %40, label %41, !dbg !1543

; <label>:40                                      ; preds = %36
  br label %75, !dbg !1544

; <label>:41                                      ; preds = %36
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_3, metadata !1546, metadata !112), !dbg !1547
  %42 = call i32 @__VERIFIER_nondet_int(), !dbg !1548
  store i32 %42, i32* %tmp_ndt_3, align 4, !dbg !1549
  %43 = load i32, i32* %tmp_ndt_3, align 4, !dbg !1550
  %44 = icmp eq i32 %43, 2, !dbg !1551
  br i1 %44, label %45, label %46, !dbg !1552

; <label>:45                                      ; preds = %41
  br label %96, !dbg !1553

; <label>:46                                      ; preds = %41
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_4, metadata !1555, metadata !112), !dbg !1556
  %47 = call i32 @__VERIFIER_nondet_int(), !dbg !1557
  store i32 %47, i32* %tmp_ndt_4, align 4, !dbg !1558
  %48 = load i32, i32* %tmp_ndt_4, align 4, !dbg !1559
  %49 = icmp eq i32 %48, 3, !dbg !1560
  br i1 %49, label %50, label %51, !dbg !1561

; <label>:50                                      ; preds = %46
  br label %100, !dbg !1562

; <label>:51                                      ; preds = %46
  br label %104, !dbg !1564
                                                  ; No predecessors!
  br i1 false, label %53, label %105, !dbg !1565

; <label>:53                                      ; preds = %52
  br label %54, !dbg !1566

; <label>:54                                      ; preds = %53, %35
  %55 = load i32, i32* %devobj, align 4, !dbg !1567
  %56 = load i32, i32* %pirp, align 4, !dbg !1568
  %57 = bitcast i32* %7 to i8*, !dbg !1569
  call void @llvm.lifetime.start(i64 4, i8* %57), !dbg !1569
  %58 = bitcast i32* %8 to i8*, !dbg !1569
  call void @llvm.lifetime.start(i64 4, i8* %58), !dbg !1569
  %59 = bitcast i32* %Irp__IoStatus__Status.i to i8*, !dbg !1569
  call void @llvm.lifetime.start(i64 4, i8* %59), !dbg !1569
  %60 = bitcast i32* %Irp__IoStatus__Information.i to i8*, !dbg !1569
  call void @llvm.lifetime.start(i64 4, i8* %60), !dbg !1569
  store i32 %55, i32* %7, align 4, !dbg !1569
  store i32 %56, i32* %8, align 4, !dbg !1569
  store i32 0, i32* @myStatus, align 4, !dbg !1570
  store i32 0, i32* %Irp__IoStatus__Status.i, align 4, !dbg !1571
  store i32 1, i32* %Irp__IoStatus__Information.i, align 4, !dbg !1572
  %61 = load i32, i32* %8, align 4, !dbg !1573
  %62 = bitcast i32* %5 to i8*, !dbg !1574
  call void @llvm.lifetime.start(i64 4, i8* %62) #4, !dbg !1574
  %63 = bitcast i32* %6 to i8*, !dbg !1574
  call void @llvm.lifetime.start(i64 4, i8* %63) #4, !dbg !1574
  store i32 %61, i32* %5, align 4, !dbg !1574
  store i32 0, i32* %6, align 4, !dbg !1574
  %64 = load i32, i32* @s, align 4, !dbg !1575
  %65 = load i32, i32* @NP, align 4, !dbg !1576
  %66 = icmp eq i32 %64, %65, !dbg !1577
  br i1 %66, label %FloppyCreateClose.exit, label %67, !dbg !1578

; <label>:67                                      ; preds = %54
  call void (...) @__VERIFIER_error() #5, !dbg !1579
  unreachable, !dbg !1579

FloppyCreateClose.exit:                           ; preds = %54
  %68 = load i32, i32* @DC, align 4, !dbg !1581
  store i32 %68, i32* @s, align 4, !dbg !1582
  %69 = bitcast i32* %5 to i8*, !dbg !1583
  call void @llvm.lifetime.end(i64 4, i8* %69) #4, !dbg !1583
  %70 = bitcast i32* %6 to i8*, !dbg !1583
  call void @llvm.lifetime.end(i64 4, i8* %70) #4, !dbg !1583
  %71 = bitcast i32* %7 to i8*, !dbg !1584
  call void @llvm.lifetime.end(i64 4, i8* %71), !dbg !1584
  %72 = bitcast i32* %8 to i8*, !dbg !1584
  call void @llvm.lifetime.end(i64 4, i8* %72), !dbg !1584
  %73 = bitcast i32* %Irp__IoStatus__Status.i to i8*, !dbg !1584
  call void @llvm.lifetime.end(i64 4, i8* %73), !dbg !1584
  %74 = bitcast i32* %Irp__IoStatus__Information.i to i8*, !dbg !1584
  call void @llvm.lifetime.end(i64 4, i8* %74), !dbg !1584
  store i32 0, i32* %status, align 4, !dbg !1585
  br label %106, !dbg !1586

; <label>:75                                      ; preds = %40
  %76 = load i32, i32* %devobj, align 4, !dbg !1587
  %77 = load i32, i32* %pirp, align 4, !dbg !1588
  %78 = bitcast i32* %3 to i8*, !dbg !1589
  call void @llvm.lifetime.start(i64 4, i8* %78), !dbg !1589
  %79 = bitcast i32* %4 to i8*, !dbg !1589
  call void @llvm.lifetime.start(i64 4, i8* %79), !dbg !1589
  %80 = bitcast i32* %Irp__IoStatus__Status.i.2 to i8*, !dbg !1589
  call void @llvm.lifetime.start(i64 4, i8* %80), !dbg !1589
  %81 = bitcast i32* %Irp__IoStatus__Information.i.3 to i8*, !dbg !1589
  call void @llvm.lifetime.start(i64 4, i8* %81), !dbg !1589
  store i32 %76, i32* %3, align 4, !dbg !1589
  store i32 %77, i32* %4, align 4, !dbg !1589
  store i32 0, i32* @myStatus, align 4, !dbg !1590
  store i32 0, i32* %Irp__IoStatus__Status.i.2, align 4, !dbg !1591
  store i32 1, i32* %Irp__IoStatus__Information.i.3, align 4, !dbg !1592
  %82 = load i32, i32* %4, align 4, !dbg !1593
  %83 = bitcast i32* %1 to i8*, !dbg !1594
  call void @llvm.lifetime.start(i64 4, i8* %83) #4, !dbg !1594
  %84 = bitcast i32* %2 to i8*, !dbg !1594
  call void @llvm.lifetime.start(i64 4, i8* %84) #4, !dbg !1594
  store i32 %82, i32* %1, align 4, !dbg !1594
  store i32 0, i32* %2, align 4, !dbg !1594
  %85 = load i32, i32* @s, align 4, !dbg !1595
  %86 = load i32, i32* @NP, align 4, !dbg !1596
  %87 = icmp eq i32 %85, %86, !dbg !1597
  br i1 %87, label %FloppyCreateClose.exit4, label %88, !dbg !1598

; <label>:88                                      ; preds = %75
  call void (...) @__VERIFIER_error() #5, !dbg !1599
  unreachable, !dbg !1599

FloppyCreateClose.exit4:                          ; preds = %75
  %89 = load i32, i32* @DC, align 4, !dbg !1601
  store i32 %89, i32* @s, align 4, !dbg !1602
  %90 = bitcast i32* %1 to i8*, !dbg !1603
  call void @llvm.lifetime.end(i64 4, i8* %90) #4, !dbg !1603
  %91 = bitcast i32* %2 to i8*, !dbg !1603
  call void @llvm.lifetime.end(i64 4, i8* %91) #4, !dbg !1603
  %92 = bitcast i32* %3 to i8*, !dbg !1604
  call void @llvm.lifetime.end(i64 4, i8* %92), !dbg !1604
  %93 = bitcast i32* %4 to i8*, !dbg !1604
  call void @llvm.lifetime.end(i64 4, i8* %93), !dbg !1604
  %94 = bitcast i32* %Irp__IoStatus__Status.i.2 to i8*, !dbg !1604
  call void @llvm.lifetime.end(i64 4, i8* %94), !dbg !1604
  %95 = bitcast i32* %Irp__IoStatus__Information.i.3 to i8*, !dbg !1604
  call void @llvm.lifetime.end(i64 4, i8* %95), !dbg !1604
  store i32 0, i32* %status, align 4, !dbg !1605
  br label %106, !dbg !1606

; <label>:96                                      ; preds = %45
  %97 = load i32, i32* %devobj, align 4, !dbg !1607
  %98 = load i32, i32* %pirp, align 4, !dbg !1609
  %99 = call i32 @FloppyDeviceControl(i32 %97, i32 %98), !dbg !1610
  store i32 %99, i32* %status, align 4, !dbg !1611
  br label %106, !dbg !1612

; <label>:100                                     ; preds = %50
  %101 = load i32, i32* %devobj, align 4, !dbg !1613
  %102 = load i32, i32* %pirp, align 4, !dbg !1615
  %103 = call i32 @FloppyPnp(i32 %101, i32 %102), !dbg !1616
  store i32 %103, i32* %status, align 4, !dbg !1617
  br label %106, !dbg !1618

; <label>:104                                     ; preds = %51
  store i32 -1, i32* %9, !dbg !1619
  br label %192, !dbg !1619

; <label>:105                                     ; preds = %52
  br label %106, !dbg !1620

; <label>:106                                     ; preds = %105, %100, %96, %FloppyCreateClose.exit4, %FloppyCreateClose.exit
  br label %107

; <label>:107                                     ; preds = %106
  br label %108

; <label>:108                                     ; preds = %107
  br label %109

; <label>:109                                     ; preds = %108
  br label %110

; <label>:110                                     ; preds = %109
  br label %111

; <label>:111                                     ; preds = %110
  br label %112, !dbg !1621

; <label>:112                                     ; preds = %111, %0
  %113 = load i32, i32* @pended, align 4, !dbg !1622
  %114 = icmp eq i32 %113, 1, !dbg !1624
  br i1 %114, label %115, label %123, !dbg !1625

; <label>:115                                     ; preds = %112
  %116 = load i32, i32* @s, align 4, !dbg !1626
  %117 = load i32, i32* @NP, align 4, !dbg !1629
  %118 = icmp eq i32 %116, %117, !dbg !1630
  br i1 %118, label %119, label %121, !dbg !1631

; <label>:119                                     ; preds = %115
  %120 = load i32, i32* @NP, align 4, !dbg !1632
  store i32 %120, i32* @s, align 4, !dbg !1634
  br label %122, !dbg !1635

; <label>:121                                     ; preds = %115
  br label %124, !dbg !1636

; <label>:122                                     ; preds = %119
  br label %190, !dbg !1638

; <label>:123                                     ; preds = %112
  br label %124, !dbg !1639

; <label>:124                                     ; preds = %123, %121
  %125 = load i32, i32* @pended, align 4, !dbg !1640
  %126 = icmp eq i32 %125, 1, !dbg !1643
  br i1 %126, label %127, label %135, !dbg !1644

; <label>:127                                     ; preds = %124
  %128 = load i32, i32* @s, align 4, !dbg !1645
  %129 = load i32, i32* @MPR3, align 4, !dbg !1648
  %130 = icmp eq i32 %128, %129, !dbg !1649
  br i1 %130, label %131, label %133, !dbg !1650

; <label>:131                                     ; preds = %127
  %132 = load i32, i32* @MPR3, align 4, !dbg !1651
  store i32 %132, i32* @s, align 4, !dbg !1653
  br label %134, !dbg !1654

; <label>:133                                     ; preds = %127
  br label %136, !dbg !1655

; <label>:134                                     ; preds = %131
  br label %189, !dbg !1657

; <label>:135                                     ; preds = %124
  br label %136, !dbg !1658

; <label>:136                                     ; preds = %135, %133
  %137 = load i32, i32* @s, align 4, !dbg !1659
  %138 = load i32, i32* @UNLOADED, align 4, !dbg !1662
  %139 = icmp ne i32 %137, %138, !dbg !1663
  br i1 %139, label %140, label %188, !dbg !1664

; <label>:140                                     ; preds = %136
  %141 = load i32, i32* %status, align 4, !dbg !1665
  %142 = icmp ne i32 %141, -1, !dbg !1668
  br i1 %142, label %143, label %187, !dbg !1669

; <label>:143                                     ; preds = %140
  %144 = load i32, i32* @s, align 4, !dbg !1670
  %145 = load i32, i32* @SKIP2, align 4, !dbg !1673
  %146 = icmp ne i32 %144, %145, !dbg !1674
  br i1 %146, label %147, label %160, !dbg !1675

; <label>:147                                     ; preds = %143
  %148 = load i32, i32* @s, align 4, !dbg !1676
  %149 = load i32, i32* @IPC, align 4, !dbg !1679
  %150 = icmp ne i32 %148, %149, !dbg !1680
  br i1 %150, label %151, label %158, !dbg !1681

; <label>:151                                     ; preds = %147
  %152 = load i32, i32* @s, align 4, !dbg !1682
  %153 = load i32, i32* @DC, align 4, !dbg !1685
  %154 = icmp ne i32 %152, %153, !dbg !1686
  br i1 %154, label %155, label %156, !dbg !1687

; <label>:155                                     ; preds = %151
  call void (...) @__VERIFIER_error() #5, !dbg !1688
  unreachable, !dbg !1688

errorFn.exit5:                                    ; No predecessors!
  br label %157, !dbg !1692

; <label>:156                                     ; preds = %151
  br label %161, !dbg !1693

; <label>:157                                     ; preds = %errorFn.exit5
  br label %159, !dbg !1695

; <label>:158                                     ; preds = %147
  br label %161, !dbg !1696

; <label>:159                                     ; preds = %157
  br label %186, !dbg !1698

; <label>:160                                     ; preds = %143
  br label %161, !dbg !1699

; <label>:161                                     ; preds = %160, %158, %156
  %162 = load i32, i32* @pended, align 4, !dbg !1700
  %163 = icmp eq i32 %162, 1, !dbg !1703
  br i1 %163, label %164, label %169, !dbg !1704

; <label>:164                                     ; preds = %161
  %165 = load i32, i32* %status, align 4, !dbg !1705
  %166 = icmp ne i32 %165, 259, !dbg !1708
  br i1 %166, label %167, label %168, !dbg !1709

; <label>:167                                     ; preds = %164
  store i32 0, i32* %status, align 4, !dbg !1710
  br label %168, !dbg !1712

; <label>:168                                     ; preds = %167, %164
  br label %185, !dbg !1713

; <label>:169                                     ; preds = %161
  %170 = load i32, i32* @s, align 4, !dbg !1714
  %171 = load i32, i32* @DC, align 4, !dbg !1717
  %172 = icmp eq i32 %170, %171, !dbg !1718
  br i1 %172, label %173, label %178, !dbg !1719

; <label>:173                                     ; preds = %169
  %174 = load i32, i32* %status, align 4, !dbg !1720
  %175 = icmp eq i32 %174, 259, !dbg !1723
  br i1 %175, label %176, label %177, !dbg !1724

; <label>:176                                     ; preds = %173
  call void (...) @__VERIFIER_error() #5, !dbg !1725
  unreachable, !dbg !1725

errorFn.exit1:                                    ; No predecessors!
  br label %177, !dbg !1729

; <label>:177                                     ; preds = %errorFn.exit1, %173
  br label %184, !dbg !1730

; <label>:178                                     ; preds = %169
  %179 = load i32, i32* %status, align 4, !dbg !1731
  %180 = load i32, i32* @lowerDriverReturn, align 4, !dbg !1734
  %181 = icmp ne i32 %179, %180, !dbg !1735
  br i1 %181, label %182, label %183, !dbg !1736

; <label>:182                                     ; preds = %178
  call void (...) @__VERIFIER_error() #5, !dbg !1737
  unreachable, !dbg !1737

errorFn.exit:                                     ; No predecessors!
  br label %183, !dbg !1741

; <label>:183                                     ; preds = %errorFn.exit, %178
  br label %184

; <label>:184                                     ; preds = %183, %177
  br label %185

; <label>:185                                     ; preds = %184, %168
  br label %186

; <label>:186                                     ; preds = %185, %159
  br label %187, !dbg !1742

; <label>:187                                     ; preds = %186, %140
  br label %188, !dbg !1743

; <label>:188                                     ; preds = %187, %136
  br label %189

; <label>:189                                     ; preds = %188, %134
  br label %190

; <label>:190                                     ; preds = %189, %122
  store i32 0, i32* %status, align 4, !dbg !1744
  %191 = load i32, i32* %status, align 4, !dbg !1745
  store i32 %191, i32* %9, !dbg !1746
  br label %192, !dbg !1746

; <label>:192                                     ; preds = %190, %104, %30
  %193 = load i32, i32* %9, !dbg !1747
  ret i32 %193, !dbg !1747
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
  %tmp_ndt_5 = alloca i32, align 4
  store i32 %IoControlCode, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1323, metadata !112), !dbg !1748
  store i32 %DeviceObject, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1325, metadata !112), !dbg !1749
  store i32 %InputBuffer, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1327, metadata !112), !dbg !1750
  store i32 %InputBufferLength, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1329, metadata !112), !dbg !1751
  store i32 %OutputBuffer, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1331, metadata !112), !dbg !1752
  store i32 %OutputBufferLength, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1333, metadata !112), !dbg !1753
  store i32 %InternalDeviceIoControl, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1335, metadata !112), !dbg !1754
  store i32 %Event, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1337, metadata !112), !dbg !1755
  store i32 %IoStatusBlock, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1339, metadata !112), !dbg !1756
  call void @llvm.dbg.declare(metadata i32* %malloc, metadata !1341, metadata !112), !dbg !1757
  %11 = call i32 @__VERIFIER_nondet_int(), !dbg !1758
  store i32 %11, i32* %malloc, align 4, !dbg !1757
  store i32 1, i32* @customIrp, align 4, !dbg !1759
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_5, metadata !1342, metadata !112), !dbg !1760
  %12 = call i32 @__VERIFIER_nondet_int(), !dbg !1761
  store i32 %12, i32* %tmp_ndt_5, align 4, !dbg !1762
  %13 = load i32, i32* %tmp_ndt_5, align 4, !dbg !1763
  %14 = icmp eq i32 %13, 0, !dbg !1764
  br i1 %14, label %15, label %16, !dbg !1765

; <label>:15                                      ; preds = %0
  br label %19, !dbg !1766

; <label>:16                                      ; preds = %0
  br label %21, !dbg !1768
                                                  ; No predecessors!
  br i1 false, label %18, label %22, !dbg !1769

; <label>:18                                      ; preds = %17
  br label %19, !dbg !1770

; <label>:19                                      ; preds = %18, %15
  %20 = load i32, i32* %malloc, align 4, !dbg !1771
  store i32 %20, i32* %1, !dbg !1772
  br label %24, !dbg !1772

; <label>:21                                      ; preds = %16
  store i32 0, i32* %1, !dbg !1773
  br label %24, !dbg !1773

; <label>:22                                      ; preds = %17
  br label %23

; <label>:23                                      ; preds = %22
  br label %24

; <label>:24                                      ; preds = %23, %21, %19
  %25 = load i32, i32* %1, !dbg !1774
  ret i32 %25, !dbg !1774
}

; Function Attrs: nounwind ssp uwtable
define i32 @IoDeleteSymbolicLink(i32 %SymbolicLinkName) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %tmp_ndt_6 = alloca i32, align 4
  store i32 %SymbolicLinkName, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !434, metadata !112), !dbg !1775
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_6, metadata !440, metadata !112), !dbg !1776
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !1777
  store i32 %3, i32* %tmp_ndt_6, align 4, !dbg !1778
  %4 = load i32, i32* %tmp_ndt_6, align 4, !dbg !1779
  %5 = icmp eq i32 %4, 0, !dbg !1780
  br i1 %5, label %6, label %7, !dbg !1781

; <label>:6                                       ; preds = %0
  br label %10, !dbg !1782

; <label>:7                                       ; preds = %0
  br label %11, !dbg !1784
                                                  ; No predecessors!
  br i1 false, label %9, label %12, !dbg !1785

; <label>:9                                       ; preds = %8
  br label %10, !dbg !1786

; <label>:10                                      ; preds = %9, %6
  store i32 0, i32* %1, !dbg !1787
  br label %14, !dbg !1787

; <label>:11                                      ; preds = %7
  store i32 -1073741823, i32* %1, !dbg !1788
  br label %14, !dbg !1788

; <label>:12                                      ; preds = %8
  br label %13

; <label>:13                                      ; preds = %12
  br label %14

; <label>:14                                      ; preds = %13, %11, %10
  %15 = load i32, i32* %1, !dbg !1789
  ret i32 %15, !dbg !1789
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
  %tmp_ndt_7 = alloca i32, align 4
  store i32 %BusType, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1001, metadata !112), !dbg !1790
  store i32 %BusNumber, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1008, metadata !112), !dbg !1791
  store i32 %ControllerType, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1010, metadata !112), !dbg !1792
  store i32 %ControllerNumber, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1012, metadata !112), !dbg !1793
  store i32 %PeripheralType, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1014, metadata !112), !dbg !1794
  store i32 %PeripheralNumber, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1016, metadata !112), !dbg !1795
  store i32 %CalloutRoutine, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1018, metadata !112), !dbg !1796
  store i32 %Context, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1020, metadata !112), !dbg !1797
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_7, metadata !1022, metadata !112), !dbg !1798
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !1799
  store i32 %10, i32* %tmp_ndt_7, align 4, !dbg !1800
  %11 = load i32, i32* %tmp_ndt_7, align 4, !dbg !1801
  %12 = icmp eq i32 %11, 0, !dbg !1802
  br i1 %12, label %13, label %14, !dbg !1803

; <label>:13                                      ; preds = %0
  br label %17, !dbg !1804

; <label>:14                                      ; preds = %0
  br label %18, !dbg !1806
                                                  ; No predecessors!
  br i1 false, label %16, label %19, !dbg !1807

; <label>:16                                      ; preds = %15
  br label %17, !dbg !1808

; <label>:17                                      ; preds = %16, %13
  store i32 0, i32* %1, !dbg !1809
  br label %21, !dbg !1809

; <label>:18                                      ; preds = %14
  store i32 -1073741823, i32* %1, !dbg !1810
  br label %21, !dbg !1810

; <label>:19                                      ; preds = %15
  br label %20

; <label>:20                                      ; preds = %19
  br label %21

; <label>:21                                      ; preds = %20, %18, %17
  %22 = load i32, i32* %1, !dbg !1811
  ret i32 %22, !dbg !1811
}

; Function Attrs: nounwind ssp uwtable
define i32 @IoRegisterDeviceInterface(i32 %PhysicalDeviceObject, i32 %InterfaceClassGuid, i32 %ReferenceString, i32 %SymbolicLinkName) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %tmp_ndt_8 = alloca i32, align 4
  store i32 %PhysicalDeviceObject, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1025, metadata !112), !dbg !1812
  store i32 %InterfaceClassGuid, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1031, metadata !112), !dbg !1813
  store i32 %ReferenceString, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1033, metadata !112), !dbg !1814
  store i32 %SymbolicLinkName, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1035, metadata !112), !dbg !1815
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_8, metadata !1037, metadata !112), !dbg !1816
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !1817
  store i32 %6, i32* %tmp_ndt_8, align 4, !dbg !1818
  %7 = load i32, i32* %tmp_ndt_8, align 4, !dbg !1819
  %8 = icmp eq i32 %7, 0, !dbg !1820
  br i1 %8, label %9, label %10, !dbg !1821

; <label>:9                                       ; preds = %0
  br label %13, !dbg !1822

; <label>:10                                      ; preds = %0
  br label %14, !dbg !1824
                                                  ; No predecessors!
  br i1 false, label %12, label %15, !dbg !1825

; <label>:12                                      ; preds = %11
  br label %13, !dbg !1826

; <label>:13                                      ; preds = %12, %9
  store i32 0, i32* %1, !dbg !1827
  br label %17, !dbg !1827

; <label>:14                                      ; preds = %10
  store i32 -1073741808, i32* %1, !dbg !1828
  br label %17, !dbg !1828

; <label>:15                                      ; preds = %11
  br label %16

; <label>:16                                      ; preds = %15
  br label %17

; <label>:17                                      ; preds = %16, %14, %13
  %18 = load i32, i32* %1, !dbg !1829
  ret i32 %18, !dbg !1829
}

; Function Attrs: nounwind ssp uwtable
define i32 @IoSetDeviceInterfaceState(i32 %SymbolicLinkName, i32 %Enable) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %tmp_ndt_9 = alloca i32, align 4
  store i32 %SymbolicLinkName, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !423, metadata !112), !dbg !1830
  store i32 %Enable, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !429, metadata !112), !dbg !1831
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_9, metadata !431, metadata !112), !dbg !1832
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !1833
  store i32 %4, i32* %tmp_ndt_9, align 4, !dbg !1834
  %5 = load i32, i32* %tmp_ndt_9, align 4, !dbg !1835
  %6 = icmp eq i32 %5, 0, !dbg !1836
  br i1 %6, label %7, label %8, !dbg !1837

; <label>:7                                       ; preds = %0
  br label %11, !dbg !1838

; <label>:8                                       ; preds = %0
  br label %12, !dbg !1840
                                                  ; No predecessors!
  br i1 false, label %10, label %13, !dbg !1841

; <label>:10                                      ; preds = %9
  br label %11, !dbg !1842

; <label>:11                                      ; preds = %10, %7
  store i32 0, i32* %1, !dbg !1843
  br label %15, !dbg !1843

; <label>:12                                      ; preds = %8
  store i32 -1073741823, i32* %1, !dbg !1844
  br label %15, !dbg !1844

; <label>:13                                      ; preds = %9
  br label %14

; <label>:14                                      ; preds = %13
  br label %15

; <label>:15                                      ; preds = %14, %12, %11
  %16 = load i32, i32* %1, !dbg !1845
  ret i32 %16, !dbg !1845
}

; Function Attrs: nounwind ssp uwtable
define void @stubMoreProcessingRequired() #0 {
  %1 = load i32, i32* @s, align 4, !dbg !1846
  %2 = load i32, i32* @NP, align 4, !dbg !1849
  %3 = icmp eq i32 %1, %2, !dbg !1850
  br i1 %3, label %4, label %6, !dbg !1851

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* @MPR1, align 4, !dbg !1852
  store i32 %5, i32* @s, align 4, !dbg !1854
  br label %7, !dbg !1855

; <label>:6                                       ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !1856
  unreachable, !dbg !1856

errorFn.exit:                                     ; No predecessors!
  br label %7

; <label>:7                                       ; preds = %errorFn.exit, %4
  ret void, !dbg !1860
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
  %tmp_ndt_10 = alloca i32, align 4
  %tmp_ndt_11 = alloca i32, align 4
  store i32 %DeviceObject, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1861, metadata !112), !dbg !1862
  store i32 %Irp, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1863, metadata !112), !dbg !1864
  call void @llvm.dbg.declare(metadata i32* %returnVal2, metadata !1865, metadata !112), !dbg !1866
  call void @llvm.dbg.declare(metadata i32* %compRetStatus1, metadata !1867, metadata !112), !dbg !1868
  call void @llvm.dbg.declare(metadata i32* %lcontext, metadata !1869, metadata !112), !dbg !1870
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !1871
  store i32 %9, i32* %lcontext, align 4, !dbg !1870
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp7, metadata !1872, metadata !112), !dbg !1873
  %10 = load i32, i32* @compRegistered, align 4, !dbg !1874
  %11 = icmp ne i32 %10, 0, !dbg !1874
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1261, metadata !112), !dbg !1877
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1263, metadata !112), !dbg !1882
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1265, metadata !112), !dbg !1883
  call void @llvm.dbg.declare(metadata i32* %l.i.i, metadata !1267, metadata !112), !dbg !1884
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1244, metadata !112), !dbg !1885
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1246, metadata !112), !dbg !1886
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1248, metadata !112), !dbg !1887
  br i1 %11, label %12, label %44, !dbg !1888

; <label>:12                                      ; preds = %0
  %13 = load i32, i32* %7, align 4, !dbg !1889
  %14 = load i32, i32* %8, align 4, !dbg !1890
  %15 = load i32, i32* %lcontext, align 4, !dbg !1891
  %16 = bitcast i32* %4 to i8*, !dbg !1892
  call void @llvm.lifetime.start(i64 4, i8* %16), !dbg !1892
  %17 = bitcast i32* %5 to i8*, !dbg !1892
  call void @llvm.lifetime.start(i64 4, i8* %17), !dbg !1892
  %18 = bitcast i32* %6 to i8*, !dbg !1892
  call void @llvm.lifetime.start(i64 4, i8* %18), !dbg !1892
  store i32 %13, i32* %4, align 4, !dbg !1892
  store i32 %14, i32* %5, align 4, !dbg !1892
  store i32 %15, i32* %6, align 4, !dbg !1892
  %19 = load i32, i32* %6, align 4, !dbg !1893
  %20 = bitcast i32* %1 to i8*, !dbg !1894
  call void @llvm.lifetime.start(i64 4, i8* %20) #4, !dbg !1894
  %21 = bitcast i32* %2 to i8*, !dbg !1894
  call void @llvm.lifetime.start(i64 4, i8* %21) #4, !dbg !1894
  %22 = bitcast i32* %3 to i8*, !dbg !1894
  call void @llvm.lifetime.start(i64 4, i8* %22) #4, !dbg !1894
  %23 = bitcast i32* %l.i.i to i8*, !dbg !1894
  call void @llvm.lifetime.start(i64 4, i8* %23) #4, !dbg !1894
  store i32 %19, i32* %1, align 4, !dbg !1894
  store i32 1, i32* %2, align 4, !dbg !1894
  store i32 0, i32* %3, align 4, !dbg !1894
  %24 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1895
  store i32 %24, i32* %l.i.i, align 4, !dbg !1884
  store i32 1, i32* @setEventCalled, align 4, !dbg !1896
  %25 = load i32, i32* %l.i.i, align 4, !dbg !1897
  %26 = bitcast i32* %1 to i8*, !dbg !1898
  call void @llvm.lifetime.end(i64 4, i8* %26) #4, !dbg !1898
  %27 = bitcast i32* %2 to i8*, !dbg !1898
  call void @llvm.lifetime.end(i64 4, i8* %27) #4, !dbg !1898
  %28 = bitcast i32* %3 to i8*, !dbg !1898
  call void @llvm.lifetime.end(i64 4, i8* %28) #4, !dbg !1898
  %29 = bitcast i32* %l.i.i to i8*, !dbg !1898
  call void @llvm.lifetime.end(i64 4, i8* %29) #4, !dbg !1898
  %30 = bitcast i32* %4 to i8*, !dbg !1899
  call void @llvm.lifetime.end(i64 4, i8* %30), !dbg !1899
  %31 = bitcast i32* %5 to i8*, !dbg !1899
  call void @llvm.lifetime.end(i64 4, i8* %31), !dbg !1899
  %32 = bitcast i32* %6 to i8*, !dbg !1899
  call void @llvm.lifetime.end(i64 4, i8* %32), !dbg !1899
  store i32 -1073741802, i32* %compRetStatus1, align 4, !dbg !1900
  %33 = load i32, i32* %compRetStatus1, align 4, !dbg !1901
  %34 = sext i32 %33 to i64, !dbg !1903
  store i64 %34, i64* %__cil_tmp7, align 8, !dbg !1904
  %35 = load i64, i64* %__cil_tmp7, align 8, !dbg !1905
  %36 = icmp eq i64 %35, -1073741802, !dbg !1907
  br i1 %36, label %37, label %43, !dbg !1908

; <label>:37                                      ; preds = %12
  %38 = load i32, i32* @s, align 4, !dbg !1909
  %39 = load i32, i32* @NP, align 4, !dbg !1913
  %40 = icmp eq i32 %38, %39, !dbg !1914
  br i1 %40, label %stubMoreProcessingRequired.exit, label %41, !dbg !1915

; <label>:41                                      ; preds = %37
  call void (...) @__VERIFIER_error() #5, !dbg !1916
  unreachable, !dbg !1916

stubMoreProcessingRequired.exit:                  ; preds = %37
  %42 = load i32, i32* @MPR1, align 4, !dbg !1918
  store i32 %42, i32* @s, align 4, !dbg !1919
  br label %43, !dbg !1920

; <label>:43                                      ; preds = %stubMoreProcessingRequired.exit, %12
  br label %44, !dbg !1921

; <label>:44                                      ; preds = %43, %0
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_10, metadata !1922, metadata !112), !dbg !1923
  %45 = call i32 @__VERIFIER_nondet_int(), !dbg !1924
  store i32 %45, i32* %tmp_ndt_10, align 4, !dbg !1925
  %46 = load i32, i32* %tmp_ndt_10, align 4, !dbg !1926
  %47 = icmp eq i32 %46, 0, !dbg !1928
  br i1 %47, label %48, label %49, !dbg !1929

; <label>:48                                      ; preds = %44
  br label %57, !dbg !1930

; <label>:49                                      ; preds = %44
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_11, metadata !1932, metadata !112), !dbg !1934
  %50 = call i32 @__VERIFIER_nondet_int(), !dbg !1935
  store i32 %50, i32* %tmp_ndt_11, align 4, !dbg !1936
  %51 = load i32, i32* %tmp_ndt_11, align 4, !dbg !1937
  %52 = icmp eq i32 %51, 1, !dbg !1939
  br i1 %52, label %53, label %54, !dbg !1940

; <label>:53                                      ; preds = %49
  br label %58, !dbg !1941

; <label>:54                                      ; preds = %49
  br label %59, !dbg !1943
                                                  ; No predecessors!
  br i1 false, label %56, label %60, !dbg !1945

; <label>:56                                      ; preds = %55
  br label %57, !dbg !1946

; <label>:57                                      ; preds = %56, %48
  store i32 0, i32* %returnVal2, align 4, !dbg !1948
  br label %61, !dbg !1950

; <label>:58                                      ; preds = %53
  store i32 -1073741823, i32* %returnVal2, align 4, !dbg !1951
  br label %61, !dbg !1952

; <label>:59                                      ; preds = %54
  store i32 259, i32* %returnVal2, align 4, !dbg !1953
  br label %61, !dbg !1954

; <label>:60                                      ; preds = %55
  br label %61, !dbg !1955

; <label>:61                                      ; preds = %60, %59, %58, %57
  br label %62

; <label>:62                                      ; preds = %61
  br label %63

; <label>:63                                      ; preds = %62
  br label %64

; <label>:64                                      ; preds = %63
  %65 = load i32, i32* @s, align 4, !dbg !1956
  %66 = load i32, i32* @NP, align 4, !dbg !1958
  %67 = icmp eq i32 %65, %66, !dbg !1959
  br i1 %67, label %68, label %71, !dbg !1960

; <label>:68                                      ; preds = %64
  %69 = load i32, i32* @IPC, align 4, !dbg !1961
  store i32 %69, i32* @s, align 4, !dbg !1963
  %70 = load i32, i32* %returnVal2, align 4, !dbg !1964
  store i32 %70, i32* @lowerDriverReturn, align 4, !dbg !1965
  br label %95, !dbg !1966

; <label>:71                                      ; preds = %64
  %72 = load i32, i32* @s, align 4, !dbg !1967
  %73 = load i32, i32* @MPR1, align 4, !dbg !1970
  %74 = icmp eq i32 %72, %73, !dbg !1971
  br i1 %74, label %75, label %85, !dbg !1972

; <label>:75                                      ; preds = %71
  %76 = load i32, i32* %returnVal2, align 4, !dbg !1973
  %77 = icmp eq i32 %76, 259, !dbg !1976
  br i1 %77, label %78, label %81, !dbg !1977

; <label>:78                                      ; preds = %75
  %79 = load i32, i32* @MPR3, align 4, !dbg !1978
  store i32 %79, i32* @s, align 4, !dbg !1980
  %80 = load i32, i32* %returnVal2, align 4, !dbg !1981
  store i32 %80, i32* @lowerDriverReturn, align 4, !dbg !1982
  br label %84, !dbg !1983

; <label>:81                                      ; preds = %75
  %82 = load i32, i32* @NP, align 4, !dbg !1984
  store i32 %82, i32* @s, align 4, !dbg !1986
  %83 = load i32, i32* %returnVal2, align 4, !dbg !1987
  store i32 %83, i32* @lowerDriverReturn, align 4, !dbg !1988
  br label %84

; <label>:84                                      ; preds = %81, %78
  br label %94, !dbg !1989

; <label>:85                                      ; preds = %71
  %86 = load i32, i32* @s, align 4, !dbg !1990
  %87 = load i32, i32* @SKIP1, align 4, !dbg !1993
  %88 = icmp eq i32 %86, %87, !dbg !1994
  br i1 %88, label %89, label %92, !dbg !1995

; <label>:89                                      ; preds = %85
  %90 = load i32, i32* @SKIP2, align 4, !dbg !1996
  store i32 %90, i32* @s, align 4, !dbg !1998
  %91 = load i32, i32* %returnVal2, align 4, !dbg !1999
  store i32 %91, i32* @lowerDriverReturn, align 4, !dbg !2000
  br label %93, !dbg !2001

; <label>:92                                      ; preds = %85
  call void (...) @__VERIFIER_error() #5, !dbg !2002
  unreachable, !dbg !2002

errorFn.exit:                                     ; No predecessors!
  br label %93

; <label>:93                                      ; preds = %errorFn.exit, %89
  br label %94

; <label>:94                                      ; preds = %93, %84
  br label %95

; <label>:95                                      ; preds = %94, %68
  %96 = load i32, i32* %returnVal2, align 4, !dbg !2006
  ret i32 %96, !dbg !2007
}

; Function Attrs: nounwind ssp uwtable
define i32 @KeSetEvent(i32 %Event, i32 %Increment, i32 %Wait) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 %Event, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1261, metadata !112), !dbg !2008
  store i32 %Increment, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1263, metadata !112), !dbg !2009
  store i32 %Wait, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1265, metadata !112), !dbg !2010
  call void @llvm.dbg.declare(metadata i32* %l, metadata !1267, metadata !112), !dbg !2011
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !2012
  store i32 %4, i32* %l, align 4, !dbg !2011
  store i32 1, i32* @setEventCalled, align 4, !dbg !2013
  %5 = load i32, i32* %l, align 4, !dbg !2014
  ret i32 %5, !dbg !2015
}

; Function Attrs: nounwind ssp uwtable
define i32 @KeWaitForSingleObject(i32 %Object, i32 %WaitReason, i32 %WaitMode, i32 %Alertable, i32 %Timeout) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %tmp_ndt_12 = alloca i32, align 4
  store i32 %Object, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2016, metadata !112), !dbg !2017
  store i32 %WaitReason, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2018, metadata !112), !dbg !2019
  store i32 %WaitMode, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2020, metadata !112), !dbg !2021
  store i32 %Alertable, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2022, metadata !112), !dbg !2023
  store i32 %Timeout, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2024, metadata !112), !dbg !2025
  %7 = load i32, i32* @s, align 4, !dbg !2026
  %8 = load i32, i32* @MPR3, align 4, !dbg !2029
  %9 = icmp eq i32 %7, %8, !dbg !2030
  br i1 %9, label %10, label %17, !dbg !2031

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* @setEventCalled, align 4, !dbg !2032
  %12 = icmp eq i32 %11, 1, !dbg !2035
  br i1 %12, label %13, label %15, !dbg !2036

; <label>:13                                      ; preds = %10
  %14 = load i32, i32* @NP, align 4, !dbg !2037
  store i32 %14, i32* @s, align 4, !dbg !2039
  store i32 0, i32* @setEventCalled, align 4, !dbg !2040
  br label %16, !dbg !2041

; <label>:15                                      ; preds = %10
  br label %18, !dbg !2042

; <label>:16                                      ; preds = %13
  br label %30, !dbg !2044

; <label>:17                                      ; preds = %0
  br label %18, !dbg !2045

; <label>:18                                      ; preds = %17, %15
  %19 = load i32, i32* @customIrp, align 4, !dbg !2046
  %20 = icmp eq i32 %19, 1, !dbg !2049
  br i1 %20, label %21, label %23, !dbg !2050

; <label>:21                                      ; preds = %18
  %22 = load i32, i32* @NP, align 4, !dbg !2051
  store i32 %22, i32* @s, align 4, !dbg !2053
  store i32 0, i32* @customIrp, align 4, !dbg !2054
  br label %29, !dbg !2055

; <label>:23                                      ; preds = %18
  %24 = load i32, i32* @s, align 4, !dbg !2056
  %25 = load i32, i32* @MPR3, align 4, !dbg !2059
  %26 = icmp eq i32 %24, %25, !dbg !2060
  br i1 %26, label %27, label %28, !dbg !2061

; <label>:27                                      ; preds = %23
  call void (...) @__VERIFIER_error() #5, !dbg !2062
  unreachable, !dbg !2062

errorFn.exit:                                     ; No predecessors!
  br label %28, !dbg !2066

; <label>:28                                      ; preds = %errorFn.exit, %23
  br label %29

; <label>:29                                      ; preds = %28, %21
  br label %30

; <label>:30                                      ; preds = %29, %16
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_12, metadata !2067, metadata !112), !dbg !2068
  %31 = call i32 @__VERIFIER_nondet_int(), !dbg !2069
  store i32 %31, i32* %tmp_ndt_12, align 4, !dbg !2070
  %32 = load i32, i32* %tmp_ndt_12, align 4, !dbg !2071
  %33 = icmp eq i32 %32, 0, !dbg !2073
  br i1 %33, label %34, label %35, !dbg !2074

; <label>:34                                      ; preds = %30
  br label %38, !dbg !2075

; <label>:35                                      ; preds = %30
  br label %39, !dbg !2077
                                                  ; No predecessors!
  br i1 false, label %37, label %40, !dbg !2079

; <label>:37                                      ; preds = %36
  br label %38, !dbg !2080

; <label>:38                                      ; preds = %37, %34
  store i32 0, i32* %1, !dbg !2082
  br label %42, !dbg !2082

; <label>:39                                      ; preds = %35
  store i32 -1073741823, i32* %1, !dbg !2084
  br label %42, !dbg !2084

; <label>:40                                      ; preds = %36
  br label %41

; <label>:41                                      ; preds = %40
  br label %42

; <label>:42                                      ; preds = %41, %39, %38
  %43 = load i32, i32* %1, !dbg !2085
  ret i32 %43, !dbg !2085
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
  %tmp_ndt_13 = alloca i32, align 4
  store i32 %Handle, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !174, metadata !112), !dbg !2086
  store i32 %DesiredAccess, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !178, metadata !112), !dbg !2087
  store i32 %ObjectType, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !180, metadata !112), !dbg !2088
  store i32 %AccessMode, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !182, metadata !112), !dbg !2089
  store i32 %Object, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !184, metadata !112), !dbg !2090
  store i32 %HandleInformation, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !186, metadata !112), !dbg !2091
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_13, metadata !188, metadata !112), !dbg !2092
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !2093
  store i32 %8, i32* %tmp_ndt_13, align 4, !dbg !2094
  %9 = load i32, i32* %tmp_ndt_13, align 4, !dbg !2095
  %10 = icmp eq i32 %9, 0, !dbg !2096
  br i1 %10, label %11, label %12, !dbg !2097

; <label>:11                                      ; preds = %0
  br label %15, !dbg !2098

; <label>:12                                      ; preds = %0
  br label %16, !dbg !2100
                                                  ; No predecessors!
  br i1 false, label %14, label %17, !dbg !2101

; <label>:14                                      ; preds = %13
  br label %15, !dbg !2102

; <label>:15                                      ; preds = %14, %11
  store i32 0, i32* %1, !dbg !2103
  br label %19, !dbg !2103

; <label>:16                                      ; preds = %12
  store i32 -1073741823, i32* %1, !dbg !2104
  br label %19, !dbg !2104

; <label>:17                                      ; preds = %13
  br label %18

; <label>:18                                      ; preds = %17
  br label %19

; <label>:19                                      ; preds = %18, %16, %15
  %20 = load i32, i32* %1, !dbg !2105
  ret i32 %20, !dbg !2105
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
  %tmp_ndt_14 = alloca i32, align 4
  store i32 %ThreadHandle, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !153, metadata !112), !dbg !2106
  store i32 %DesiredAccess, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !159, metadata !112), !dbg !2107
  store i32 %ObjectAttributes, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !161, metadata !112), !dbg !2108
  store i32 %ProcessHandle, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !163, metadata !112), !dbg !2109
  store i32 %ClientId, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !165, metadata !112), !dbg !2110
  store i32 %StartRoutine, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !167, metadata !112), !dbg !2111
  store i32 %StartContext, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !169, metadata !112), !dbg !2112
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_14, metadata !171, metadata !112), !dbg !2113
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !2114
  store i32 %9, i32* %tmp_ndt_14, align 4, !dbg !2115
  %10 = load i32, i32* %tmp_ndt_14, align 4, !dbg !2116
  %11 = icmp eq i32 %10, 0, !dbg !2117
  br i1 %11, label %12, label %13, !dbg !2118

; <label>:12                                      ; preds = %0
  br label %16, !dbg !2119

; <label>:13                                      ; preds = %0
  br label %17, !dbg !2121
                                                  ; No predecessors!
  br i1 false, label %15, label %18, !dbg !2122

; <label>:15                                      ; preds = %14
  br label %16, !dbg !2123

; <label>:16                                      ; preds = %15, %12
  store i32 0, i32* %1, !dbg !2124
  br label %20, !dbg !2124

; <label>:17                                      ; preds = %13
  store i32 -1073741823, i32* %1, !dbg !2125
  br label %20, !dbg !2125

; <label>:18                                      ; preds = %14
  br label %19

; <label>:19                                      ; preds = %18
  br label %20

; <label>:20                                      ; preds = %19, %17, %16
  %21 = load i32, i32* %1, !dbg !2126
  ret i32 %21, !dbg !2126
}

; Function Attrs: nounwind ssp uwtable
define i32 @ZwClose(i32 %Handle) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %tmp_ndt_15 = alloca i32, align 4
  store i32 %Handle, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !191, metadata !112), !dbg !2127
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_15, metadata !194, metadata !112), !dbg !2128
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !2129
  store i32 %3, i32* %tmp_ndt_15, align 4, !dbg !2130
  %4 = load i32, i32* %tmp_ndt_15, align 4, !dbg !2131
  %5 = icmp eq i32 %4, 0, !dbg !2132
  br i1 %5, label %6, label %7, !dbg !2133

; <label>:6                                       ; preds = %0
  br label %10, !dbg !2134

; <label>:7                                       ; preds = %0
  br label %11, !dbg !2136
                                                  ; No predecessors!
  br i1 false, label %9, label %12, !dbg !2137

; <label>:9                                       ; preds = %8
  br label %10, !dbg !2138

; <label>:10                                      ; preds = %9, %6
  store i32 0, i32* %1, !dbg !2139
  br label %14, !dbg !2139

; <label>:11                                      ; preds = %7
  store i32 -1073741823, i32* %1, !dbg !2140
  br label %14, !dbg !2140

; <label>:12                                      ; preds = %8
  br label %13

; <label>:13                                      ; preds = %12
  br label %14

; <label>:14                                      ; preds = %13, %11, %10
  %15 = load i32, i32* %1, !dbg !2141
  ret i32 %15, !dbg !2141
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
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1473, metadata !112), !dbg !2142
  store i32 %Irp, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1475, metadata !112), !dbg !2143
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !1477, metadata !112), !dbg !2144
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !1479, metadata !112), !dbg !2145
  store i32 0, i32* @myStatus, align 4, !dbg !2146
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !2147
  store i32 1, i32* %Irp__IoStatus__Information, align 4, !dbg !2148
  %5 = load i32, i32* %4, align 4, !dbg !2149
  %6 = bitcast i32* %1 to i8*, !dbg !2150
  call void @llvm.lifetime.start(i64 4, i8* %6), !dbg !2150
  %7 = bitcast i32* %2 to i8*, !dbg !2150
  call void @llvm.lifetime.start(i64 4, i8* %7), !dbg !2150
  store i32 %5, i32* %1, align 4, !dbg !2150
  store i32 0, i32* %2, align 4, !dbg !2150
  %8 = load i32, i32* @s, align 4, !dbg !2151
  %9 = load i32, i32* @NP, align 4, !dbg !2153
  %10 = icmp eq i32 %8, %9, !dbg !2154
  br i1 %10, label %IofCompleteRequest.exit, label %11, !dbg !2155

; <label>:11                                      ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !2156
  unreachable, !dbg !2156

IofCompleteRequest.exit:                          ; preds = %0
  %12 = load i32, i32* @DC, align 4, !dbg !2158
  store i32 %12, i32* @s, align 4, !dbg !2159
  %13 = bitcast i32* %1 to i8*, !dbg !2160
  call void @llvm.lifetime.end(i64 4, i8* %13), !dbg !2160
  %14 = bitcast i32* %2 to i8*, !dbg !2160
  call void @llvm.lifetime.end(i64 4, i8* %14), !dbg !2160
  call void @llvm.dbg.declare(metadata i32* %1, metadata !386, metadata !112), !dbg !2161
  call void @llvm.dbg.declare(metadata i32* %2, metadata !392, metadata !112), !dbg !2162
  ret i32 0, !dbg !2163
}

; Function Attrs: nounwind ssp uwtable
define i32 @FloppyDeviceControl(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %DriveMediaConstants__driveMediaType__MediaType.i = alloca i32, align 4
  %FormatParameters__MediaType.i = alloca i32, align 4
  %FAKE_CONDITION.i = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %disketteExtension__HoldNewRequests = alloca i32, align 4
  %disketteExtension__IsRemoved = alloca i32, align 4
  %Irp__IoStatus__Information = alloca i32, align 4
  %disketteExtension__IsStarted = alloca i32, align 4
  %Irp__CurrentLocation = alloca i32, align 4
  %Irp__Tail__Overlay__CurrentStackLocation = alloca i32, align 4
  %disketteExtension__TargetObject = alloca i32, align 4
  %irpSp__Parameters__DeviceIoControl__OutputBufferLength = alloca i32, align 4
  %sizeof__MOUNTDEV_NAME = alloca i32, align 4
  %Irp__AssociatedIrp__SystemBuffer = alloca i32, align 4
  %mountName__NameLength = alloca i32, align 4
  %disketteExtension__DeviceName__Length = alloca i32, align 4
  %sizeof__USHORT = alloca i32, align 4
  %disketteExtension__InterfaceString__Buffer = alloca i32, align 4
  %uniqueId__UniqueIdLength = alloca i32, align 4
  %disketteExtension__InterfaceString__Length = alloca i32, align 4
  %sizeof__MOUNTDEV_UNIQUE_ID = alloca i32, align 4
  %irpSp__Parameters__DeviceIoControl__InputBufferLength = alloca i32, align 4
  %sizeof__FORMAT_PARAMETERS = alloca i32, align 4
  %irpSp__Parameters__DeviceIoControl__IoControlCode___1 = alloca i32, align 4
  %sizeof__FORMAT_EX_PARAMETERS = alloca i32, align 4
  %formatExParameters__FormatGapLength = alloca i32, align 4
  %formatExParameters__SectorsPerTrack = alloca i32, align 4
  %sizeof__DISK_GEOMETRY = alloca i32, align 4
  %Irp__IoStatus__Status___0 = alloca i32, align 4
  %disketteExtension = alloca i32, align 4
  %ntStatus = alloca i32, align 4
  %outputBufferLength = alloca i32, align 4
  %lowestDriveMediaType = alloca i32, align 4
  %highestDriveMediaType = alloca i32, align 4
  %formatExParametersSize = alloca i32, align 4
  %formatExParameters = alloca i32, align 4
  %tmp = alloca i32, align 4
  %mountName = alloca i32, align 4
  %uniqueId = alloca i32, align 4
  %tmp___0 = alloca i32, align 4
  %__cil_tmp39 = alloca i32, align 4
  %__cil_tmp40 = alloca i32, align 4
  %__cil_tmp41 = alloca i32, align 4
  %__cil_tmp42 = alloca i32, align 4
  %__cil_tmp43 = alloca i32, align 4
  %__cil_tmp44 = alloca i32, align 4
  %__cil_tmp45 = alloca i32, align 4
  %__cil_tmp46 = alloca i32, align 4
  %__cil_tmp47 = alloca i32, align 4
  %__cil_tmp48 = alloca i32, align 4
  %__cil_tmp49 = alloca i32, align 4
  %__cil_tmp50 = alloca i32, align 4
  %__cil_tmp51 = alloca i32, align 4
  %__cil_tmp52 = alloca i32, align 4
  %__cil_tmp53 = alloca i32, align 4
  %__cil_tmp54 = alloca i32, align 4
  %__cil_tmp55 = alloca i32, align 4
  %__cil_tmp56 = alloca i32, align 4
  %__cil_tmp57 = alloca i32, align 4
  %__cil_tmp58 = alloca i32, align 4
  %__cil_tmp59 = alloca i32, align 4
  %__cil_tmp60 = alloca i32, align 4
  %__cil_tmp61 = alloca i32, align 4
  %__cil_tmp62 = alloca i32, align 4
  %__cil_tmp63 = alloca i32, align 4
  %__cil_tmp64 = alloca i32, align 4
  %__cil_tmp65 = alloca i32, align 4
  %__cil_tmp66 = alloca i32, align 4
  %__cil_tmp67 = alloca i32, align 4
  %__cil_tmp68 = alloca i32, align 4
  %__cil_tmp69 = alloca i32, align 4
  %__cil_tmp70 = alloca i32, align 4
  %__cil_tmp71 = alloca i32, align 4
  %__cil_tmp72 = alloca i32, align 4
  %__cil_tmp73 = alloca i32, align 4
  %__cil_tmp74 = alloca i32, align 4
  %__cil_tmp75 = alloca i32, align 4
  %__cil_tmp76 = alloca i32, align 4
  %__cil_tmp77 = alloca i32, align 4
  %__cil_tmp78 = alloca i32, align 4
  %__cil_tmp79 = alloca i32, align 4
  %__cil_tmp80 = alloca i32, align 4
  %__cil_tmp81 = alloca i32, align 4
  %__cil_tmp82 = alloca i32, align 4
  %__cil_tmp83 = alloca i32, align 4
  %__cil_tmp84 = alloca i32, align 4
  %__cil_tmp85 = alloca i32, align 4
  %__cil_tmp86 = alloca i32, align 4
  %__cil_tmp87 = alloca i32, align 4
  %__cil_tmp88 = alloca i32, align 4
  %__cil_tmp89 = alloca i32, align 4
  %__cil_tmp90 = alloca i32, align 4
  %__cil_tmp91 = alloca i64, align 8
  store i32 %DeviceObject, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2164, metadata !112), !dbg !2165
  store i32 %Irp, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2166, metadata !112), !dbg !2167
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__HoldNewRequests, metadata !2168, metadata !112), !dbg !2169
  %11 = call i32 @__VERIFIER_nondet_int(), !dbg !2170
  store i32 %11, i32* %disketteExtension__HoldNewRequests, align 4, !dbg !2169
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__IsRemoved, metadata !2171, metadata !112), !dbg !2172
  %12 = call i32 @__VERIFIER_nondet_int(), !dbg !2173
  store i32 %12, i32* %disketteExtension__IsRemoved, align 4, !dbg !2172
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !2174, metadata !112), !dbg !2175
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__IsStarted, metadata !2176, metadata !112), !dbg !2177
  %13 = call i32 @__VERIFIER_nondet_int(), !dbg !2178
  store i32 %13, i32* %disketteExtension__IsStarted, align 4, !dbg !2177
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !2179, metadata !112), !dbg !2180
  %14 = call i32 @__VERIFIER_nondet_int(), !dbg !2181
  store i32 %14, i32* %Irp__CurrentLocation, align 4, !dbg !2180
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !2182, metadata !112), !dbg !2183
  %15 = call i32 @__VERIFIER_nondet_int(), !dbg !2184
  store i32 %15, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !2183
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__TargetObject, metadata !2185, metadata !112), !dbg !2186
  %16 = call i32 @__VERIFIER_nondet_int(), !dbg !2187
  store i32 %16, i32* %disketteExtension__TargetObject, align 4, !dbg !2186
  call void @llvm.dbg.declare(metadata i32* %irpSp__Parameters__DeviceIoControl__OutputBufferLength, metadata !2188, metadata !112), !dbg !2189
  %17 = call i32 @__VERIFIER_nondet_int(), !dbg !2190
  store i32 %17, i32* %irpSp__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !2189
  call void @llvm.dbg.declare(metadata i32* %sizeof__MOUNTDEV_NAME, metadata !2191, metadata !112), !dbg !2192
  %18 = call i32 @__VERIFIER_nondet_int(), !dbg !2193
  store i32 %18, i32* %sizeof__MOUNTDEV_NAME, align 4, !dbg !2192
  call void @llvm.dbg.declare(metadata i32* %Irp__AssociatedIrp__SystemBuffer, metadata !2194, metadata !112), !dbg !2195
  %19 = call i32 @__VERIFIER_nondet_int(), !dbg !2196
  store i32 %19, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !2195
  call void @llvm.dbg.declare(metadata i32* %mountName__NameLength, metadata !2197, metadata !112), !dbg !2198
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__DeviceName__Length, metadata !2199, metadata !112), !dbg !2200
  %20 = call i32 @__VERIFIER_nondet_int(), !dbg !2201
  store i32 %20, i32* %disketteExtension__DeviceName__Length, align 4, !dbg !2200
  call void @llvm.dbg.declare(metadata i32* %sizeof__USHORT, metadata !2202, metadata !112), !dbg !2203
  %21 = call i32 @__VERIFIER_nondet_int(), !dbg !2204
  store i32 %21, i32* %sizeof__USHORT, align 4, !dbg !2203
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__InterfaceString__Buffer, metadata !2205, metadata !112), !dbg !2206
  %22 = call i32 @__VERIFIER_nondet_int(), !dbg !2207
  store i32 %22, i32* %disketteExtension__InterfaceString__Buffer, align 4, !dbg !2206
  call void @llvm.dbg.declare(metadata i32* %uniqueId__UniqueIdLength, metadata !2208, metadata !112), !dbg !2209
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__InterfaceString__Length, metadata !2210, metadata !112), !dbg !2211
  %23 = call i32 @__VERIFIER_nondet_int(), !dbg !2212
  store i32 %23, i32* %disketteExtension__InterfaceString__Length, align 4, !dbg !2211
  call void @llvm.dbg.declare(metadata i32* %sizeof__MOUNTDEV_UNIQUE_ID, metadata !2213, metadata !112), !dbg !2214
  %24 = call i32 @__VERIFIER_nondet_int(), !dbg !2215
  store i32 %24, i32* %sizeof__MOUNTDEV_UNIQUE_ID, align 4, !dbg !2214
  call void @llvm.dbg.declare(metadata i32* %irpSp__Parameters__DeviceIoControl__InputBufferLength, metadata !2216, metadata !112), !dbg !2217
  %25 = call i32 @__VERIFIER_nondet_int(), !dbg !2218
  store i32 %25, i32* %irpSp__Parameters__DeviceIoControl__InputBufferLength, align 4, !dbg !2217
  call void @llvm.dbg.declare(metadata i32* %sizeof__FORMAT_PARAMETERS, metadata !2219, metadata !112), !dbg !2220
  %26 = call i32 @__VERIFIER_nondet_int(), !dbg !2221
  store i32 %26, i32* %sizeof__FORMAT_PARAMETERS, align 4, !dbg !2220
  call void @llvm.dbg.declare(metadata i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, metadata !2222, metadata !112), !dbg !2223
  %27 = call i32 @__VERIFIER_nondet_int(), !dbg !2224
  store i32 %27, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2223
  call void @llvm.dbg.declare(metadata i32* %sizeof__FORMAT_EX_PARAMETERS, metadata !2225, metadata !112), !dbg !2226
  %28 = call i32 @__VERIFIER_nondet_int(), !dbg !2227
  store i32 %28, i32* %sizeof__FORMAT_EX_PARAMETERS, align 4, !dbg !2226
  call void @llvm.dbg.declare(metadata i32* %formatExParameters__FormatGapLength, metadata !2228, metadata !112), !dbg !2229
  %29 = call i32 @__VERIFIER_nondet_int(), !dbg !2230
  store i32 %29, i32* %formatExParameters__FormatGapLength, align 4, !dbg !2229
  call void @llvm.dbg.declare(metadata i32* %formatExParameters__SectorsPerTrack, metadata !2231, metadata !112), !dbg !2232
  %30 = call i32 @__VERIFIER_nondet_int(), !dbg !2233
  store i32 %30, i32* %formatExParameters__SectorsPerTrack, align 4, !dbg !2232
  call void @llvm.dbg.declare(metadata i32* %sizeof__DISK_GEOMETRY, metadata !2234, metadata !112), !dbg !2235
  %31 = call i32 @__VERIFIER_nondet_int(), !dbg !2236
  store i32 %31, i32* %sizeof__DISK_GEOMETRY, align 4, !dbg !2235
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status___0, metadata !2237, metadata !112), !dbg !2238
  call void @llvm.dbg.declare(metadata i32* %disketteExtension, metadata !2239, metadata !112), !dbg !2240
  %32 = call i32 @__VERIFIER_nondet_int(), !dbg !2241
  store i32 %32, i32* %disketteExtension, align 4, !dbg !2240
  call void @llvm.dbg.declare(metadata i32* %ntStatus, metadata !2242, metadata !112), !dbg !2243
  call void @llvm.dbg.declare(metadata i32* %outputBufferLength, metadata !2244, metadata !112), !dbg !2245
  call void @llvm.dbg.declare(metadata i32* %lowestDriveMediaType, metadata !2246, metadata !112), !dbg !2247
  %33 = call i32 @__VERIFIER_nondet_int(), !dbg !2248
  store i32 %33, i32* %lowestDriveMediaType, align 4, !dbg !2247
  call void @llvm.dbg.declare(metadata i32* %highestDriveMediaType, metadata !2249, metadata !112), !dbg !2250
  %34 = call i32 @__VERIFIER_nondet_int(), !dbg !2251
  store i32 %34, i32* %highestDriveMediaType, align 4, !dbg !2250
  call void @llvm.dbg.declare(metadata i32* %formatExParametersSize, metadata !2252, metadata !112), !dbg !2253
  %35 = call i32 @__VERIFIER_nondet_int(), !dbg !2254
  store i32 %35, i32* %formatExParametersSize, align 4, !dbg !2253
  call void @llvm.dbg.declare(metadata i32* %formatExParameters, metadata !2255, metadata !112), !dbg !2256
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !2257, metadata !112), !dbg !2258
  call void @llvm.dbg.declare(metadata i32* %mountName, metadata !2259, metadata !112), !dbg !2260
  call void @llvm.dbg.declare(metadata i32* %uniqueId, metadata !2261, metadata !112), !dbg !2262
  call void @llvm.dbg.declare(metadata i32* %tmp___0, metadata !2263, metadata !112), !dbg !2264
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp39, metadata !2265, metadata !112), !dbg !2266
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp40, metadata !2267, metadata !112), !dbg !2268
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp41, metadata !2269, metadata !112), !dbg !2270
  %36 = call i32 @__VERIFIER_nondet_int(), !dbg !2271
  store i32 %36, i32* %__cil_tmp41, align 4, !dbg !2270
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp42, metadata !2272, metadata !112), !dbg !2273
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp43, metadata !2274, metadata !112), !dbg !2275
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp44, metadata !2276, metadata !112), !dbg !2277
  %37 = call i32 @__VERIFIER_nondet_int(), !dbg !2278
  store i32 %37, i32* %__cil_tmp44, align 4, !dbg !2277
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp45, metadata !2279, metadata !112), !dbg !2280
  %38 = call i32 @__VERIFIER_nondet_int(), !dbg !2281
  store i32 %38, i32* %__cil_tmp45, align 4, !dbg !2280
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp46, metadata !2282, metadata !112), !dbg !2283
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp47, metadata !2284, metadata !112), !dbg !2285
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp48, metadata !2286, metadata !112), !dbg !2287
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp49, metadata !2288, metadata !112), !dbg !2289
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp50, metadata !2290, metadata !112), !dbg !2291
  %39 = call i32 @__VERIFIER_nondet_int(), !dbg !2292
  store i32 %39, i32* %__cil_tmp50, align 4, !dbg !2291
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp51, metadata !2293, metadata !112), !dbg !2294
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp52, metadata !2295, metadata !112), !dbg !2296
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp53, metadata !2297, metadata !112), !dbg !2298
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp54, metadata !2299, metadata !112), !dbg !2300
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp55, metadata !2301, metadata !112), !dbg !2302
  %40 = call i32 @__VERIFIER_nondet_int(), !dbg !2303
  store i32 %40, i32* %__cil_tmp55, align 4, !dbg !2302
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp56, metadata !2304, metadata !112), !dbg !2305
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp57, metadata !2306, metadata !112), !dbg !2307
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp58, metadata !2308, metadata !112), !dbg !2309
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp59, metadata !2310, metadata !112), !dbg !2311
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp60, metadata !2312, metadata !112), !dbg !2313
  %41 = call i32 @__VERIFIER_nondet_int(), !dbg !2314
  store i32 %41, i32* %__cil_tmp60, align 4, !dbg !2313
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp61, metadata !2315, metadata !112), !dbg !2316
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp62, metadata !2317, metadata !112), !dbg !2318
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp63, metadata !2319, metadata !112), !dbg !2320
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp64, metadata !2321, metadata !112), !dbg !2322
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp65, metadata !2323, metadata !112), !dbg !2324
  %42 = call i32 @__VERIFIER_nondet_int(), !dbg !2325
  store i32 %42, i32* %__cil_tmp65, align 4, !dbg !2324
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp66, metadata !2326, metadata !112), !dbg !2327
  %43 = call i32 @__VERIFIER_nondet_int(), !dbg !2328
  store i32 %43, i32* %__cil_tmp66, align 4, !dbg !2327
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp67, metadata !2329, metadata !112), !dbg !2330
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp68, metadata !2331, metadata !112), !dbg !2332
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp69, metadata !2333, metadata !112), !dbg !2334
  %44 = call i32 @__VERIFIER_nondet_int(), !dbg !2335
  store i32 %44, i32* %__cil_tmp69, align 4, !dbg !2334
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp70, metadata !2336, metadata !112), !dbg !2337
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp71, metadata !2338, metadata !112), !dbg !2339
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp72, metadata !2340, metadata !112), !dbg !2341
  %45 = call i32 @__VERIFIER_nondet_int(), !dbg !2342
  store i32 %45, i32* %__cil_tmp72, align 4, !dbg !2341
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp73, metadata !2343, metadata !112), !dbg !2344
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp74, metadata !2345, metadata !112), !dbg !2346
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp75, metadata !2347, metadata !112), !dbg !2348
  %46 = call i32 @__VERIFIER_nondet_int(), !dbg !2349
  store i32 %46, i32* %__cil_tmp75, align 4, !dbg !2348
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp76, metadata !2350, metadata !112), !dbg !2351
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp77, metadata !2352, metadata !112), !dbg !2353
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp78, metadata !2354, metadata !112), !dbg !2355
  %47 = call i32 @__VERIFIER_nondet_int(), !dbg !2356
  store i32 %47, i32* %__cil_tmp78, align 4, !dbg !2355
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp79, metadata !2357, metadata !112), !dbg !2358
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp80, metadata !2359, metadata !112), !dbg !2360
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp81, metadata !2361, metadata !112), !dbg !2362
  %48 = call i32 @__VERIFIER_nondet_int(), !dbg !2363
  store i32 %48, i32* %__cil_tmp81, align 4, !dbg !2362
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp82, metadata !2364, metadata !112), !dbg !2365
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp83, metadata !2366, metadata !112), !dbg !2367
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp84, metadata !2368, metadata !112), !dbg !2369
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp85, metadata !2370, metadata !112), !dbg !2371
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp86, metadata !2372, metadata !112), !dbg !2373
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp87, metadata !2374, metadata !112), !dbg !2375
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp88, metadata !2376, metadata !112), !dbg !2377
  %49 = call i32 @__VERIFIER_nondet_int(), !dbg !2378
  store i32 %49, i32* %__cil_tmp88, align 4, !dbg !2377
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp89, metadata !2379, metadata !112), !dbg !2380
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp90, metadata !2381, metadata !112), !dbg !2382
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp91, metadata !2383, metadata !112), !dbg !2384
  %50 = load i32, i32* %disketteExtension__HoldNewRequests, align 4, !dbg !2385
  %51 = icmp ne i32 %50, 0, !dbg !2385
  call void @llvm.dbg.declare(metadata i32* %6, metadata !386, metadata !112), !dbg !2388
  call void @llvm.dbg.declare(metadata i32* %7, metadata !392, metadata !112), !dbg !2393
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2394, metadata !112), !dbg !2395
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2436, metadata !112), !dbg !2437
  call void @llvm.dbg.declare(metadata i32* %DriveMediaConstants__driveMediaType__MediaType.i, metadata !2438, metadata !112), !dbg !2439
  call void @llvm.dbg.declare(metadata i32* %FormatParameters__MediaType.i, metadata !2440, metadata !112), !dbg !2441
  call void @llvm.dbg.declare(metadata i32* %FAKE_CONDITION.i, metadata !2442, metadata !112), !dbg !2443
  call void @llvm.dbg.declare(metadata i32* %1, metadata !386, metadata !112), !dbg !2444
  call void @llvm.dbg.declare(metadata i32* %2, metadata !392, metadata !112), !dbg !2450
  br i1 %51, label %52, label %62, !dbg !2451

; <label>:52                                      ; preds = %0
  %53 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2452
  %54 = load i32, i32* %__cil_tmp41, align 4, !dbg !2456
  %55 = icmp ne i32 %53, %54, !dbg !2457
  br i1 %55, label %56, label %61, !dbg !2458

; <label>:56                                      ; preds = %52
  %57 = load i32, i32* %disketteExtension, align 4, !dbg !2459
  %58 = load i32, i32* %10, align 4, !dbg !2462
  %59 = call i32 @FloppyQueueRequest(i32 %57, i32 %58), !dbg !2463
  store i32 %59, i32* %ntStatus, align 4, !dbg !2464
  %60 = load i32, i32* %ntStatus, align 4, !dbg !2465
  store i32 %60, i32* %8, !dbg !2466
  br label %344, !dbg !2466

; <label>:61                                      ; preds = %52
  br label %62, !dbg !2467

; <label>:62                                      ; preds = %61, %0
  %63 = load i32, i32* %disketteExtension__IsRemoved, align 4, !dbg !2468
  %64 = icmp ne i32 %63, 0, !dbg !2468
  br i1 %64, label %65, label %76, !dbg !2469

; <label>:65                                      ; preds = %62
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2470
  store i32 -1073741738, i32* %Irp__IoStatus__Status___0, align 4, !dbg !2471
  store i32 -1073741738, i32* @myStatus, align 4, !dbg !2472
  %66 = load i32, i32* %10, align 4, !dbg !2473
  %67 = bitcast i32* %6 to i8*, !dbg !2474
  call void @llvm.lifetime.start(i64 4, i8* %67), !dbg !2474
  %68 = bitcast i32* %7 to i8*, !dbg !2474
  call void @llvm.lifetime.start(i64 4, i8* %68), !dbg !2474
  store i32 %66, i32* %6, align 4, !dbg !2474
  store i32 0, i32* %7, align 4, !dbg !2474
  %69 = load i32, i32* @s, align 4, !dbg !2475
  %70 = load i32, i32* @NP, align 4, !dbg !2476
  %71 = icmp eq i32 %69, %70, !dbg !2477
  br i1 %71, label %IofCompleteRequest.exit, label %72, !dbg !2478

; <label>:72                                      ; preds = %65
  call void (...) @__VERIFIER_error() #5, !dbg !2479
  unreachable, !dbg !2479

IofCompleteRequest.exit:                          ; preds = %65
  %73 = load i32, i32* @DC, align 4, !dbg !2481
  store i32 %73, i32* @s, align 4, !dbg !2482
  %74 = bitcast i32* %6 to i8*, !dbg !2483
  call void @llvm.lifetime.end(i64 4, i8* %74), !dbg !2483
  %75 = bitcast i32* %7 to i8*, !dbg !2483
  call void @llvm.lifetime.end(i64 4, i8* %75), !dbg !2483
  store i32 -1073741738, i32* %8, !dbg !2484
  br label %344, !dbg !2484

; <label>:76                                      ; preds = %62
  %77 = load i32, i32* %disketteExtension__IsStarted, align 4, !dbg !2485
  %78 = icmp ne i32 %77, 0, !dbg !2485
  br i1 %78, label %95, label %79, !dbg !2487

; <label>:79                                      ; preds = %76
  %80 = load i32, i32* @s, align 4, !dbg !2488
  %81 = load i32, i32* @NP, align 4, !dbg !2491
  %82 = icmp eq i32 %80, %81, !dbg !2492
  br i1 %82, label %83, label %85, !dbg !2493

; <label>:83                                      ; preds = %79
  %84 = load i32, i32* @SKIP1, align 4, !dbg !2494
  store i32 %84, i32* @s, align 4, !dbg !2496
  br label %86, !dbg !2497

; <label>:85                                      ; preds = %79
  call void (...) @__VERIFIER_error() #5, !dbg !2498
  unreachable, !dbg !2498

errorFn.exit:                                     ; No predecessors!
  br label %86

; <label>:86                                      ; preds = %errorFn.exit, %83
  %87 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !2502
  %88 = add nsw i32 %87, 1, !dbg !2502
  store i32 %88, i32* %Irp__CurrentLocation, align 4, !dbg !2502
  %89 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !2504
  %90 = add nsw i32 %89, 1, !dbg !2504
  store i32 %90, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !2504
  %91 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !2505
  %92 = load i32, i32* %10, align 4, !dbg !2506
  %93 = call i32 @IofCallDriver(i32 %91, i32 %92), !dbg !2507
  store i32 %93, i32* %tmp, align 4, !dbg !2508
  %94 = load i32, i32* %tmp, align 4, !dbg !2509
  store i32 %94, i32* %8, !dbg !2510
  br label %344, !dbg !2510

; <label>:95                                      ; preds = %76
  %96 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2511
  %97 = load i32, i32* %__cil_tmp44, align 4, !dbg !2512
  %98 = icmp eq i32 %96, %97, !dbg !2513
  br i1 %98, label %99, label %100, !dbg !2514

; <label>:99                                      ; preds = %95
  br label %158, !dbg !2515

; <label>:100                                     ; preds = %95
  %101 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2517
  %102 = load i32, i32* %__cil_tmp45, align 4, !dbg !2518
  %103 = icmp eq i32 %101, %102, !dbg !2519
  br i1 %103, label %104, label %105, !dbg !2520

; <label>:104                                     ; preds = %100
  br label %178, !dbg !2521

; <label>:105                                     ; preds = %100
  %106 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2523
  %107 = load i32, i32* %__cil_tmp50, align 4, !dbg !2524
  %108 = icmp eq i32 %106, %107, !dbg !2525
  br i1 %108, label %109, label %110, !dbg !2526

; <label>:109                                     ; preds = %105
  br label %203, !dbg !2527

; <label>:110                                     ; preds = %105
  %111 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2529
  %112 = load i32, i32* %__cil_tmp55, align 4, !dbg !2530
  %113 = icmp eq i32 %111, %112, !dbg !2531
  br i1 %113, label %114, label %115, !dbg !2532

; <label>:114                                     ; preds = %110
  br label %204, !dbg !2533

; <label>:115                                     ; preds = %110
  %116 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2535
  %117 = load i32, i32* %__cil_tmp60, align 4, !dbg !2536
  %118 = icmp eq i32 %116, %117, !dbg !2537
  br i1 %118, label %119, label %120, !dbg !2538

; <label>:119                                     ; preds = %115
  br label %267, !dbg !2539

; <label>:120                                     ; preds = %115
  %121 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2541
  %122 = load i32, i32* %__cil_tmp65, align 4, !dbg !2542
  %123 = icmp eq i32 %121, %122, !dbg !2543
  br i1 %123, label %124, label %125, !dbg !2544

; <label>:124                                     ; preds = %120
  br label %268, !dbg !2545

; <label>:125                                     ; preds = %120
  %126 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2547
  %127 = load i32, i32* %__cil_tmp66, align 4, !dbg !2548
  %128 = icmp eq i32 %126, %127, !dbg !2549
  br i1 %128, label %129, label %130, !dbg !2550

; <label>:129                                     ; preds = %125
  br label %269, !dbg !2551

; <label>:130                                     ; preds = %125
  %131 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2553
  %132 = load i32, i32* %__cil_tmp69, align 4, !dbg !2554
  %133 = icmp eq i32 %131, %132, !dbg !2555
  br i1 %133, label %134, label %135, !dbg !2556

; <label>:134                                     ; preds = %130
  br label %270, !dbg !2557

; <label>:135                                     ; preds = %130
  %136 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2559
  %137 = load i32, i32* %__cil_tmp72, align 4, !dbg !2560
  %138 = icmp eq i32 %136, %137, !dbg !2561
  br i1 %138, label %139, label %140, !dbg !2562

; <label>:139                                     ; preds = %135
  br label %274, !dbg !2563

; <label>:140                                     ; preds = %135
  %141 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2565
  %142 = load i32, i32* %__cil_tmp75, align 4, !dbg !2566
  %143 = icmp eq i32 %141, %142, !dbg !2567
  br i1 %143, label %144, label %145, !dbg !2568

; <label>:144                                     ; preds = %140
  br label %275, !dbg !2569

; <label>:145                                     ; preds = %140
  %146 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2571
  %147 = load i32, i32* %__cil_tmp78, align 4, !dbg !2572
  %148 = icmp eq i32 %146, %147, !dbg !2573
  br i1 %148, label %149, label %150, !dbg !2574

; <label>:149                                     ; preds = %145
  br label %292, !dbg !2575

; <label>:150                                     ; preds = %145
  %151 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2577
  %152 = load i32, i32* %__cil_tmp81, align 4, !dbg !2578
  %153 = icmp eq i32 %151, %152, !dbg !2579
  br i1 %153, label %154, label %155, !dbg !2580

; <label>:154                                     ; preds = %150
  br label %293, !dbg !2581

; <label>:155                                     ; preds = %150
  br label %294, !dbg !2583
                                                  ; No predecessors!
  br i1 false, label %157, label %310, !dbg !2584

; <label>:157                                     ; preds = %156
  br label %158, !dbg !2585

; <label>:158                                     ; preds = %157, %99
  %159 = load i32, i32* %irpSp__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !2586
  %160 = load i32, i32* %sizeof__MOUNTDEV_NAME, align 4, !dbg !2588
  %161 = icmp slt i32 %159, %160, !dbg !2589
  br i1 %161, label %162, label %163, !dbg !2590

; <label>:162                                     ; preds = %158
  store i32 -1073741811, i32* %ntStatus, align 4, !dbg !2591
  br label %311, !dbg !2593

; <label>:163                                     ; preds = %158
  %164 = load i32, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !2594
  store i32 %164, i32* %mountName, align 4, !dbg !2595
  %165 = load i32, i32* %disketteExtension__DeviceName__Length, align 4, !dbg !2596
  store i32 %165, i32* %mountName__NameLength, align 4, !dbg !2597
  %166 = load i32, i32* %sizeof__USHORT, align 4, !dbg !2598
  %167 = load i32, i32* %mountName__NameLength, align 4, !dbg !2600
  %168 = add nsw i32 %166, %167, !dbg !2601
  store i32 %168, i32* %__cil_tmp82, align 4, !dbg !2602
  %169 = load i32, i32* %irpSp__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !2603
  %170 = load i32, i32* %__cil_tmp82, align 4, !dbg !2605
  %171 = icmp slt i32 %169, %170, !dbg !2606
  br i1 %171, label %172, label %174, !dbg !2607

; <label>:172                                     ; preds = %163
  store i32 -2147483643, i32* %ntStatus, align 4, !dbg !2608
  %173 = load i32, i32* %sizeof__MOUNTDEV_NAME, align 4, !dbg !2610
  store i32 %173, i32* %Irp__IoStatus__Information, align 4, !dbg !2611
  br label %311, !dbg !2612

; <label>:174                                     ; preds = %163
  store i32 0, i32* %ntStatus, align 4, !dbg !2613
  %175 = load i32, i32* %sizeof__USHORT, align 4, !dbg !2614
  %176 = load i32, i32* %mountName__NameLength, align 4, !dbg !2615
  %177 = add nsw i32 %175, %176, !dbg !2616
  store i32 %177, i32* %Irp__IoStatus__Information, align 4, !dbg !2617
  br label %311, !dbg !2618

; <label>:178                                     ; preds = %104
  %179 = load i32, i32* %disketteExtension__InterfaceString__Buffer, align 4, !dbg !2619
  %180 = icmp ne i32 %179, 0, !dbg !2619
  br i1 %180, label %182, label %181, !dbg !2621

; <label>:181                                     ; preds = %178
  store i32 -1073741811, i32* %ntStatus, align 4, !dbg !2622
  br label %311, !dbg !2624

; <label>:182                                     ; preds = %178
  %183 = load i32, i32* %irpSp__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !2625
  %184 = load i32, i32* %sizeof__MOUNTDEV_UNIQUE_ID, align 4, !dbg !2628
  %185 = icmp slt i32 %183, %184, !dbg !2629
  br i1 %185, label %186, label %187, !dbg !2630

; <label>:186                                     ; preds = %182
  store i32 -1073741811, i32* %ntStatus, align 4, !dbg !2631
  br label %311, !dbg !2633

; <label>:187                                     ; preds = %182
  br label %188

; <label>:188                                     ; preds = %187
  %189 = load i32, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !2634
  store i32 %189, i32* %uniqueId, align 4, !dbg !2635
  %190 = load i32, i32* %disketteExtension__InterfaceString__Length, align 4, !dbg !2636
  store i32 %190, i32* %uniqueId__UniqueIdLength, align 4, !dbg !2637
  %191 = load i32, i32* %sizeof__USHORT, align 4, !dbg !2638
  %192 = load i32, i32* %uniqueId__UniqueIdLength, align 4, !dbg !2640
  %193 = add nsw i32 %191, %192, !dbg !2641
  store i32 %193, i32* %__cil_tmp83, align 4, !dbg !2642
  %194 = load i32, i32* %irpSp__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !2643
  %195 = load i32, i32* %__cil_tmp83, align 4, !dbg !2645
  %196 = icmp slt i32 %194, %195, !dbg !2646
  br i1 %196, label %197, label %199, !dbg !2647

; <label>:197                                     ; preds = %188
  store i32 -2147483643, i32* %ntStatus, align 4, !dbg !2648
  %198 = load i32, i32* %sizeof__MOUNTDEV_UNIQUE_ID, align 4, !dbg !2650
  store i32 %198, i32* %Irp__IoStatus__Information, align 4, !dbg !2651
  br label %311, !dbg !2652

; <label>:199                                     ; preds = %188
  store i32 0, i32* %ntStatus, align 4, !dbg !2653
  %200 = load i32, i32* %sizeof__USHORT, align 4, !dbg !2654
  %201 = load i32, i32* %uniqueId__UniqueIdLength, align 4, !dbg !2655
  %202 = add nsw i32 %200, %201, !dbg !2656
  store i32 %202, i32* %Irp__IoStatus__Information, align 4, !dbg !2657
  br label %311, !dbg !2658

; <label>:203                                     ; preds = %109
  br label %204, !dbg !2658

; <label>:204                                     ; preds = %203, %114
  %205 = load i32, i32* %irpSp__Parameters__DeviceIoControl__InputBufferLength, align 4, !dbg !2659
  %206 = load i32, i32* %sizeof__FORMAT_PARAMETERS, align 4, !dbg !2661
  %207 = icmp slt i32 %205, %206, !dbg !2662
  br i1 %207, label %208, label %209, !dbg !2663

; <label>:208                                     ; preds = %204
  store i32 -1073741811, i32* %ntStatus, align 4, !dbg !2664
  br label %311, !dbg !2666

; <label>:209                                     ; preds = %204
  %210 = load i32, i32* %disketteExtension, align 4, !dbg !2667
  %211 = load i32, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !2668
  %212 = bitcast i32* %3 to i8*, !dbg !2669
  call void @llvm.lifetime.start(i64 4, i8* %212), !dbg !2669
  %213 = bitcast i32* %4 to i8*, !dbg !2669
  call void @llvm.lifetime.start(i64 4, i8* %213), !dbg !2669
  %214 = bitcast i32* %5 to i8*, !dbg !2669
  call void @llvm.lifetime.start(i64 4, i8* %214), !dbg !2669
  %215 = bitcast i32* %DriveMediaConstants__driveMediaType__MediaType.i to i8*, !dbg !2669
  call void @llvm.lifetime.start(i64 4, i8* %215), !dbg !2669
  %216 = bitcast i32* %FormatParameters__MediaType.i to i8*, !dbg !2669
  call void @llvm.lifetime.start(i64 4, i8* %216), !dbg !2669
  %217 = bitcast i32* %FAKE_CONDITION.i to i8*, !dbg !2669
  call void @llvm.lifetime.start(i64 4, i8* %217), !dbg !2669
  store i32 %210, i32* %4, align 4, !dbg !2669
  store i32 %211, i32* %5, align 4, !dbg !2669
  %218 = call i32 @__VERIFIER_nondet_int() #4, !dbg !2670
  store i32 %218, i32* %DriveMediaConstants__driveMediaType__MediaType.i, align 4, !dbg !2439
  %219 = call i32 @__VERIFIER_nondet_int() #4, !dbg !2671
  store i32 %219, i32* %FormatParameters__MediaType.i, align 4, !dbg !2441
  %220 = call i32 @__VERIFIER_nondet_int() #4, !dbg !2672
  store i32 %220, i32* %FAKE_CONDITION.i, align 4, !dbg !2443
  %221 = load i32, i32* %DriveMediaConstants__driveMediaType__MediaType.i, align 4, !dbg !2673
  %222 = load i32, i32* %FormatParameters__MediaType.i, align 4, !dbg !2676
  %223 = icmp ne i32 %221, %222, !dbg !2677
  br i1 %223, label %224, label %225, !dbg !2678

; <label>:224                                     ; preds = %209
  store i32 0, i32* %3, !dbg !2679
  br label %FlCheckFormatParameters.exit, !dbg !2679

; <label>:225                                     ; preds = %209
  %226 = load i32, i32* %FAKE_CONDITION.i, align 4, !dbg !2681
  %227 = icmp ne i32 %226, 0, !dbg !2681
  br i1 %227, label %228, label %229, !dbg !2684

; <label>:228                                     ; preds = %225
  store i32 0, i32* %3, !dbg !2685
  br label %FlCheckFormatParameters.exit, !dbg !2685

; <label>:229                                     ; preds = %225
  store i32 1, i32* %3, !dbg !2687
  br label %FlCheckFormatParameters.exit, !dbg !2687

FlCheckFormatParameters.exit:                     ; preds = %224, %228, %229
  %230 = load i32, i32* %3, !dbg !2689
  %231 = bitcast i32* %3 to i8*, !dbg !2689
  call void @llvm.lifetime.end(i64 4, i8* %231), !dbg !2689
  %232 = bitcast i32* %4 to i8*, !dbg !2689
  call void @llvm.lifetime.end(i64 4, i8* %232), !dbg !2689
  %233 = bitcast i32* %5 to i8*, !dbg !2689
  call void @llvm.lifetime.end(i64 4, i8* %233), !dbg !2689
  %234 = bitcast i32* %DriveMediaConstants__driveMediaType__MediaType.i to i8*, !dbg !2689
  call void @llvm.lifetime.end(i64 4, i8* %234), !dbg !2689
  %235 = bitcast i32* %FormatParameters__MediaType.i to i8*, !dbg !2689
  call void @llvm.lifetime.end(i64 4, i8* %235), !dbg !2689
  %236 = bitcast i32* %FAKE_CONDITION.i to i8*, !dbg !2689
  call void @llvm.lifetime.end(i64 4, i8* %236), !dbg !2689
  store i32 %230, i32* %tmp___0, align 4, !dbg !2690
  %237 = load i32, i32* %tmp___0, align 4, !dbg !2691
  %238 = icmp ne i32 %237, 0, !dbg !2691
  br i1 %238, label %240, label %239, !dbg !2693

; <label>:239                                     ; preds = %FlCheckFormatParameters.exit
  store i32 -1073741811, i32* %ntStatus, align 4, !dbg !2694
  br label %311, !dbg !2696

; <label>:240                                     ; preds = %FlCheckFormatParameters.exit
  %241 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2697
  %242 = load i32, i32* %__cil_tmp88, align 4, !dbg !2700
  %243 = icmp eq i32 %241, %242, !dbg !2701
  br i1 %243, label %244, label %266, !dbg !2702

; <label>:244                                     ; preds = %240
  %245 = load i32, i32* %irpSp__Parameters__DeviceIoControl__InputBufferLength, align 4, !dbg !2703
  %246 = load i32, i32* %sizeof__FORMAT_EX_PARAMETERS, align 4, !dbg !2706
  %247 = icmp slt i32 %245, %246, !dbg !2707
  br i1 %247, label %248, label %249, !dbg !2708

; <label>:248                                     ; preds = %244
  store i32 -1073741811, i32* %ntStatus, align 4, !dbg !2709
  br label %311, !dbg !2711

; <label>:249                                     ; preds = %244
  %250 = load i32, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !2712
  store i32 %250, i32* %formatExParameters, align 4, !dbg !2713
  %251 = load i32, i32* %irpSp__Parameters__DeviceIoControl__InputBufferLength, align 4, !dbg !2714
  %252 = load i32, i32* %formatExParametersSize, align 4, !dbg !2716
  %253 = icmp slt i32 %251, %252, !dbg !2717
  br i1 %253, label %254, label %255, !dbg !2718

; <label>:254                                     ; preds = %249
  store i32 -1073741811, i32* %ntStatus, align 4, !dbg !2719
  br label %311, !dbg !2721

; <label>:255                                     ; preds = %249
  %256 = load i32, i32* %formatExParameters__FormatGapLength, align 4, !dbg !2722
  %257 = icmp sge i32 %256, 256, !dbg !2725
  br i1 %257, label %258, label %259, !dbg !2726

; <label>:258                                     ; preds = %255
  store i32 -1073741811, i32* %ntStatus, align 4, !dbg !2727
  br label %311, !dbg !2729

; <label>:259                                     ; preds = %255
  %260 = load i32, i32* %formatExParameters__SectorsPerTrack, align 4, !dbg !2730
  %261 = icmp sge i32 %260, 256, !dbg !2733
  br i1 %261, label %262, label %263, !dbg !2734

; <label>:262                                     ; preds = %259
  store i32 -1073741811, i32* %ntStatus, align 4, !dbg !2735
  br label %311, !dbg !2737

; <label>:263                                     ; preds = %259
  br label %264

; <label>:264                                     ; preds = %263
  br label %265

; <label>:265                                     ; preds = %264
  br label %266, !dbg !2738

; <label>:266                                     ; preds = %265, %240
  br label %267, !dbg !2739

; <label>:267                                     ; preds = %266, %119
  br label %268, !dbg !2739

; <label>:268                                     ; preds = %267, %124
  br label %269, !dbg !2739

; <label>:269                                     ; preds = %268, %129
  br label %270, !dbg !2739

; <label>:270                                     ; preds = %269, %134
  %271 = load i32, i32* %10, align 4, !dbg !2740
  %272 = load i32, i32* %disketteExtension, align 4, !dbg !2742
  %273 = call i32 @FlQueueIrpToThread(i32 %271, i32 %272), !dbg !2743
  store i32 %273, i32* %ntStatus, align 4, !dbg !2744
  br label %311, !dbg !2745

; <label>:274                                     ; preds = %139
  br label %275, !dbg !2745

; <label>:275                                     ; preds = %274, %144
  %276 = load i32, i32* %irpSp__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !2746
  store i32 %276, i32* %outputBufferLength, align 4, !dbg !2747
  %277 = load i32, i32* %outputBufferLength, align 4, !dbg !2748
  %278 = load i32, i32* %sizeof__DISK_GEOMETRY, align 4, !dbg !2750
  %279 = icmp slt i32 %277, %278, !dbg !2751
  br i1 %279, label %280, label %281, !dbg !2752

; <label>:280                                     ; preds = %275
  store i32 -1073741789, i32* %ntStatus, align 4, !dbg !2753
  br label %311, !dbg !2755

; <label>:281                                     ; preds = %275
  store i32 0, i32* %ntStatus, align 4, !dbg !2756
  %282 = load i32, i32* %highestDriveMediaType, align 4, !dbg !2757
  %283 = load i32, i32* %lowestDriveMediaType, align 4, !dbg !2759
  %284 = sub nsw i32 %282, %283, !dbg !2760
  store i32 %284, i32* %__cil_tmp89, align 4, !dbg !2761
  %285 = load i32, i32* %__cil_tmp89, align 4, !dbg !2757
  %286 = add nsw i32 %285, 1, !dbg !2762
  store i32 %286, i32* %__cil_tmp90, align 4, !dbg !2761
  %287 = load i32, i32* %outputBufferLength, align 4, !dbg !2763
  %288 = load i32, i32* %__cil_tmp90, align 4, !dbg !2765
  %289 = icmp slt i32 %287, %288, !dbg !2766
  br i1 %289, label %290, label %291, !dbg !2767

; <label>:290                                     ; preds = %281
  store i32 -2147483643, i32* %ntStatus, align 4, !dbg !2768
  br label %291, !dbg !2770

; <label>:291                                     ; preds = %290, %281
  br label %311, !dbg !2771

; <label>:292                                     ; preds = %149
  br label %293, !dbg !2771

; <label>:293                                     ; preds = %292, %154
  br label %294, !dbg !2771

; <label>:294                                     ; preds = %293, %155
  %295 = load i32, i32* @s, align 4, !dbg !2772
  %296 = load i32, i32* @NP, align 4, !dbg !2774
  %297 = icmp eq i32 %295, %296, !dbg !2775
  br i1 %297, label %298, label %300, !dbg !2776

; <label>:298                                     ; preds = %294
  %299 = load i32, i32* @SKIP1, align 4, !dbg !2777
  store i32 %299, i32* @s, align 4, !dbg !2779
  br label %301, !dbg !2780

; <label>:300                                     ; preds = %294
  call void (...) @__VERIFIER_error() #5, !dbg !2781
  unreachable, !dbg !2781

errorFn.exit1:                                    ; No predecessors!
  br label %301

; <label>:301                                     ; preds = %errorFn.exit1, %298
  %302 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !2785
  %303 = add nsw i32 %302, 1, !dbg !2785
  store i32 %303, i32* %Irp__CurrentLocation, align 4, !dbg !2785
  %304 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !2787
  %305 = add nsw i32 %304, 1, !dbg !2787
  store i32 %305, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !2787
  %306 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !2788
  %307 = load i32, i32* %10, align 4, !dbg !2789
  %308 = call i32 @IofCallDriver(i32 %306, i32 %307), !dbg !2790
  store i32 %308, i32* %ntStatus, align 4, !dbg !2791
  %309 = load i32, i32* %ntStatus, align 4, !dbg !2792
  store i32 %309, i32* %8, !dbg !2793
  br label %344, !dbg !2793

; <label>:310                                     ; preds = %156
  br label %311, !dbg !2794

; <label>:311                                     ; preds = %310, %291, %280, %270, %262, %258, %254, %248, %239, %208, %199, %197, %186, %181, %174, %172, %162
  br label %312

; <label>:312                                     ; preds = %311
  br label %313

; <label>:313                                     ; preds = %312
  br label %314

; <label>:314                                     ; preds = %313
  br label %315

; <label>:315                                     ; preds = %314
  br label %316

; <label>:316                                     ; preds = %315
  br label %317

; <label>:317                                     ; preds = %316
  br label %318

; <label>:318                                     ; preds = %317
  br label %319

; <label>:319                                     ; preds = %318
  br label %320

; <label>:320                                     ; preds = %319
  br label %321

; <label>:321                                     ; preds = %320
  br label %322

; <label>:322                                     ; preds = %321
  br label %323

; <label>:323                                     ; preds = %322
  br label %324

; <label>:324                                     ; preds = %323
  %325 = load i32, i32* %ntStatus, align 4, !dbg !2795
  %326 = sext i32 %325 to i64, !dbg !2796
  store i64 %326, i64* %__cil_tmp91, align 8, !dbg !2797
  %327 = load i64, i64* %__cil_tmp91, align 8, !dbg !2798
  %328 = icmp ne i64 %327, 259, !dbg !2799
  br i1 %328, label %329, label %342, !dbg !2800

; <label>:329                                     ; preds = %324
  %330 = load i32, i32* %ntStatus, align 4, !dbg !2801
  store i32 %330, i32* %Irp__IoStatus__Status___0, align 4, !dbg !2802
  %331 = load i32, i32* %ntStatus, align 4, !dbg !2803
  store i32 %331, i32* @myStatus, align 4, !dbg !2804
  %332 = load i32, i32* %10, align 4, !dbg !2805
  %333 = bitcast i32* %1 to i8*, !dbg !2806
  call void @llvm.lifetime.start(i64 4, i8* %333), !dbg !2806
  %334 = bitcast i32* %2 to i8*, !dbg !2806
  call void @llvm.lifetime.start(i64 4, i8* %334), !dbg !2806
  store i32 %332, i32* %1, align 4, !dbg !2806
  store i32 0, i32* %2, align 4, !dbg !2806
  %335 = load i32, i32* @s, align 4, !dbg !2807
  %336 = load i32, i32* @NP, align 4, !dbg !2808
  %337 = icmp eq i32 %335, %336, !dbg !2809
  br i1 %337, label %IofCompleteRequest.exit2, label %338, !dbg !2810

; <label>:338                                     ; preds = %329
  call void (...) @__VERIFIER_error() #5, !dbg !2811
  unreachable, !dbg !2811

IofCompleteRequest.exit2:                         ; preds = %329
  %339 = load i32, i32* @DC, align 4, !dbg !2813
  store i32 %339, i32* @s, align 4, !dbg !2814
  %340 = bitcast i32* %1 to i8*, !dbg !2815
  call void @llvm.lifetime.end(i64 4, i8* %340), !dbg !2815
  %341 = bitcast i32* %2 to i8*, !dbg !2815
  call void @llvm.lifetime.end(i64 4, i8* %341), !dbg !2815
  br label %342, !dbg !2816

; <label>:342                                     ; preds = %IofCompleteRequest.exit2, %324
  %343 = load i32, i32* %ntStatus, align 4, !dbg !2817
  store i32 %343, i32* %8, !dbg !2818
  br label %344, !dbg !2818

; <label>:344                                     ; preds = %342, %301, %86, %IofCompleteRequest.exit, %56
  %345 = load i32, i32* %8, !dbg !2819
  ret i32 %345, !dbg !2819
}

; Function Attrs: nounwind ssp uwtable
define i32 @FloppyQueueRequest(i32 %DisketteExtension, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %Irp__IoStatus__Status = alloca i32, align 4
  %Irp__IoStatus__Information = alloca i32, align 4
  %Irp__Tail__Overlay__CurrentStackLocation__Control = alloca i32, align 4
  %ntStatus = alloca i32, align 4
  %FAKE_CONDITION = alloca i32, align 4
  store i32 %DisketteExtension, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2820, metadata !112), !dbg !2821
  store i32 %Irp, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2822, metadata !112), !dbg !2823
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !2824, metadata !112), !dbg !2825
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !2826, metadata !112), !dbg !2827
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation__Control, metadata !2828, metadata !112), !dbg !2829
  call void @llvm.dbg.declare(metadata i32* %ntStatus, metadata !2830, metadata !112), !dbg !2831
  call void @llvm.dbg.declare(metadata i32* %FAKE_CONDITION, metadata !2832, metadata !112), !dbg !2833
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !2834
  store i32 %5, i32* %FAKE_CONDITION, align 4, !dbg !2833
  %6 = load i32, i32* @PagingReferenceCount, align 4, !dbg !2835
  %7 = add nsw i32 %6, 1, !dbg !2835
  store i32 %7, i32* @PagingReferenceCount, align 4, !dbg !2835
  %8 = load i32, i32* @PagingReferenceCount, align 4, !dbg !2837
  %9 = icmp eq i32 %8, 1, !dbg !2839
  call void @llvm.dbg.declare(metadata i32* %1, metadata !386, metadata !112), !dbg !2840
  call void @llvm.dbg.declare(metadata i32* %2, metadata !392, metadata !112), !dbg !2845
  br i1 %9, label %10, label %11, !dbg !2846

; <label>:10                                      ; preds = %0
  br label %11, !dbg !2847

; <label>:11                                      ; preds = %10, %0
  %12 = load i32, i32* %FAKE_CONDITION, align 4, !dbg !2849
  %13 = icmp ne i32 %12, 0, !dbg !2849
  br i1 %13, label %14, label %31, !dbg !2850

; <label>:14                                      ; preds = %11
  store i32 -1073741536, i32* %Irp__IoStatus__Status, align 4, !dbg !2851
  store i32 -1073741536, i32* @myStatus, align 4, !dbg !2852
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2853
  %15 = load i32, i32* %4, align 4, !dbg !2854
  %16 = bitcast i32* %1 to i8*, !dbg !2855
  call void @llvm.lifetime.start(i64 4, i8* %16), !dbg !2855
  %17 = bitcast i32* %2 to i8*, !dbg !2855
  call void @llvm.lifetime.start(i64 4, i8* %17), !dbg !2855
  store i32 %15, i32* %1, align 4, !dbg !2855
  store i32 0, i32* %2, align 4, !dbg !2855
  %18 = load i32, i32* @s, align 4, !dbg !2856
  %19 = load i32, i32* @NP, align 4, !dbg !2857
  %20 = icmp eq i32 %18, %19, !dbg !2858
  br i1 %20, label %IofCompleteRequest.exit, label %21, !dbg !2859

; <label>:21                                      ; preds = %14
  call void (...) @__VERIFIER_error() #5, !dbg !2860
  unreachable, !dbg !2860

IofCompleteRequest.exit:                          ; preds = %14
  %22 = load i32, i32* @DC, align 4, !dbg !2862
  store i32 %22, i32* @s, align 4, !dbg !2863
  %23 = bitcast i32* %1 to i8*, !dbg !2864
  call void @llvm.lifetime.end(i64 4, i8* %23), !dbg !2864
  %24 = bitcast i32* %2 to i8*, !dbg !2864
  call void @llvm.lifetime.end(i64 4, i8* %24), !dbg !2864
  %25 = load i32, i32* @PagingReferenceCount, align 4, !dbg !2865
  %26 = add nsw i32 %25, -1, !dbg !2865
  store i32 %26, i32* @PagingReferenceCount, align 4, !dbg !2865
  %27 = load i32, i32* @PagingReferenceCount, align 4, !dbg !2866
  %28 = icmp eq i32 %27, 0, !dbg !2868
  br i1 %28, label %29, label %30, !dbg !2869

; <label>:29                                      ; preds = %IofCompleteRequest.exit
  br label %30, !dbg !2870

; <label>:30                                      ; preds = %29, %IofCompleteRequest.exit
  store i32 -1073741536, i32* %ntStatus, align 4, !dbg !2872
  br label %37, !dbg !2873

; <label>:31                                      ; preds = %11
  store i32 259, i32* %Irp__IoStatus__Status, align 4, !dbg !2874
  store i32 259, i32* @myStatus, align 4, !dbg !2876
  %32 = load i32, i32* @pended, align 4, !dbg !2877
  %33 = icmp eq i32 %32, 0, !dbg !2879
  br i1 %33, label %34, label %35, !dbg !2880

; <label>:34                                      ; preds = %31
  store i32 1, i32* @pended, align 4, !dbg !2881
  br label %36, !dbg !2883

; <label>:35                                      ; preds = %31
  call void (...) @__VERIFIER_error() #5, !dbg !2884
  unreachable, !dbg !2884

errorFn.exit:                                     ; No predecessors!
  br label %36

; <label>:36                                      ; preds = %errorFn.exit, %34
  store i32 259, i32* %ntStatus, align 4, !dbg !2888
  br label %37

; <label>:37                                      ; preds = %36, %30
  %38 = load i32, i32* %ntStatus, align 4, !dbg !2889
  ret i32 %38, !dbg !2890
}

; Function Attrs: nounwind ssp uwtable
define i32 @FlCheckFormatParameters(i32 %DisketteExtension, i32 %FormatParameters) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %DriveMediaConstants__driveMediaType__MediaType = alloca i32, align 4
  %FormatParameters__MediaType = alloca i32, align 4
  %FAKE_CONDITION = alloca i32, align 4
  store i32 %DisketteExtension, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2394, metadata !112), !dbg !2891
  store i32 %FormatParameters, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2436, metadata !112), !dbg !2892
  call void @llvm.dbg.declare(metadata i32* %DriveMediaConstants__driveMediaType__MediaType, metadata !2438, metadata !112), !dbg !2893
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !2894
  store i32 %4, i32* %DriveMediaConstants__driveMediaType__MediaType, align 4, !dbg !2893
  call void @llvm.dbg.declare(metadata i32* %FormatParameters__MediaType, metadata !2440, metadata !112), !dbg !2895
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !2896
  store i32 %5, i32* %FormatParameters__MediaType, align 4, !dbg !2895
  call void @llvm.dbg.declare(metadata i32* %FAKE_CONDITION, metadata !2442, metadata !112), !dbg !2897
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !2898
  store i32 %6, i32* %FAKE_CONDITION, align 4, !dbg !2897
  %7 = load i32, i32* %DriveMediaConstants__driveMediaType__MediaType, align 4, !dbg !2899
  %8 = load i32, i32* %FormatParameters__MediaType, align 4, !dbg !2900
  %9 = icmp ne i32 %7, %8, !dbg !2901
  br i1 %9, label %10, label %11, !dbg !2902

; <label>:10                                      ; preds = %0
  store i32 0, i32* %1, !dbg !2903
  br label %16, !dbg !2903

; <label>:11                                      ; preds = %0
  %12 = load i32, i32* %FAKE_CONDITION, align 4, !dbg !2904
  %13 = icmp ne i32 %12, 0, !dbg !2904
  br i1 %13, label %14, label %15, !dbg !2905

; <label>:14                                      ; preds = %11
  store i32 0, i32* %1, !dbg !2906
  br label %16, !dbg !2906

; <label>:15                                      ; preds = %11
  store i32 1, i32* %1, !dbg !2907
  br label %16, !dbg !2907

; <label>:16                                      ; preds = %15, %14, %10
  %17 = load i32, i32* %1, !dbg !2908
  ret i32 %17, !dbg !2908
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }
attributes #6 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!90, !91, !92}
!llvm.ident = !{!93}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !63)
!1 = !DIFile(filename: "programs/svcomp16/ntdrivers-simplified/floppy_simpl4_true-unreach-call_true-termination.cil.c", directory: ".")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!6 = !{!7, !10, !15, !16, !17, !18, !21, !22, !25, !26, !29, !32, !35, !38, !41, !42, !43, !44, !47, !48, !51, !54, !57, !58, !59, !60, !61, !62}
!7 = !DISubprogram(name: "_BLAST_init", scope: !1, file: !1, line: 35, type: !8, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @_BLAST_init, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !DISubprogram(name: "FlAcpiConfigureFloppy", scope: !11, file: !11, line: 94, type: !12, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @FlAcpiConfigureFloppy, variables: !2)
!11 = !DIFile(filename: "programs/svcomp16/ntdrivers-simplified/floppy_simpl4.cil.c", directory: ".")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14, !14}
!14 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!15 = !DISubprogram(name: "FlQueueIrpToThread", scope: !11, file: !11, line: 101, type: !12, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @FlQueueIrpToThread, variables: !2)
!16 = !DISubprogram(name: "FloppyPnp", scope: !11, file: !11, line: 170, type: !12, isLocal: false, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @FloppyPnp, variables: !2)
!17 = !DISubprogram(name: "FloppyStartDevice", scope: !11, file: !11, line: 463, type: !12, isLocal: false, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @FloppyStartDevice, variables: !2)
!18 = !DISubprogram(name: "FloppyPnpComplete", scope: !11, file: !11, line: 631, type: !19, isLocal: false, isDefinition: true, scopeLine: 632, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @FloppyPnpComplete, variables: !2)
!19 = !DISubroutineType(types: !20)
!20 = !{!14, !14, !14, !14}
!21 = !DISubprogram(name: "FlFdcDeviceIo", scope: !11, file: !11, line: 641, type: !19, isLocal: false, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @FlFdcDeviceIo, variables: !2)
!22 = !DISubprogram(name: "FloppyProcessQueuedRequests", scope: !11, file: !11, line: 676, type: !23, isLocal: false, isDefinition: true, scopeLine: 677, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @FloppyProcessQueuedRequests, variables: !2)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !14}
!25 = !DISubprogram(name: "stub_driver_init", scope: !11, file: !11, line: 683, type: !8, isLocal: false, isDefinition: true, scopeLine: 684, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stub_driver_init, variables: !2)
!26 = !DISubprogram(name: "main", scope: !11, file: !11, line: 696, type: !27, isLocal: false, isDefinition: true, scopeLine: 697, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !2)
!27 = !DISubroutineType(types: !28)
!28 = !{!14}
!29 = !DISubprogram(name: "IoBuildDeviceIoControlRequest", scope: !11, file: !11, line: 852, type: !30, isLocal: false, isDefinition: true, scopeLine: 855, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)* @IoBuildDeviceIoControlRequest, variables: !2)
!30 = !DISubroutineType(types: !31)
!31 = !{!14, !14, !14, !14, !14, !14, !14, !14, !14, !14}
!32 = !DISubprogram(name: "IoDeleteSymbolicLink", scope: !11, file: !11, line: 877, type: !33, isLocal: false, isDefinition: true, scopeLine: 878, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32)* @IoDeleteSymbolicLink, variables: !2)
!33 = !DISubroutineType(types: !34)
!34 = !{!14, !14}
!35 = !DISubprogram(name: "IoQueryDeviceDescription", scope: !11, file: !11, line: 898, type: !36, isLocal: false, isDefinition: true, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32, i32, i32, i32)* @IoQueryDeviceDescription, variables: !2)
!36 = !DISubroutineType(types: !37)
!37 = !{!14, !14, !14, !14, !14, !14, !14, !14, !14}
!38 = !DISubprogram(name: "IoRegisterDeviceInterface", scope: !11, file: !11, line: 921, type: !39, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32)* @IoRegisterDeviceInterface, variables: !2)
!39 = !DISubroutineType(types: !40)
!40 = !{!14, !14, !14, !14, !14}
!41 = !DISubprogram(name: "IoSetDeviceInterfaceState", scope: !11, file: !11, line: 943, type: !12, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @IoSetDeviceInterfaceState, variables: !2)
!42 = !DISubprogram(name: "stubMoreProcessingRequired", scope: !11, file: !11, line: 964, type: !8, isLocal: false, isDefinition: true, scopeLine: 965, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stubMoreProcessingRequired, variables: !2)
!43 = !DISubprogram(name: "IofCallDriver", scope: !11, file: !11, line: 978, type: !12, isLocal: false, isDefinition: true, scopeLine: 979, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @IofCallDriver, variables: !2)
!44 = !DISubprogram(name: "IofCompleteRequest", scope: !11, file: !11, line: 1049, type: !45, isLocal: false, isDefinition: true, scopeLine: 1050, flags: DIFlagPrototyped, isOptimized: false, function: void (i32, i32)* @IofCompleteRequest, variables: !2)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !14, !14}
!47 = !DISubprogram(name: "KeSetEvent", scope: !11, file: !11, line: 1063, type: !19, isLocal: false, isDefinition: true, scopeLine: 1064, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @KeSetEvent, variables: !2)
!48 = !DISubprogram(name: "KeWaitForSingleObject", scope: !11, file: !11, line: 1071, type: !49, isLocal: false, isDefinition: true, scopeLine: 1073, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32)* @KeWaitForSingleObject, variables: !2)
!49 = !DISubroutineType(types: !50)
!50 = !{!14, !14, !14, !14, !14, !14}
!51 = !DISubprogram(name: "ObReferenceObjectByHandle", scope: !11, file: !11, line: 1115, type: !52, isLocal: false, isDefinition: true, scopeLine: 1117, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32, i32)* @ObReferenceObjectByHandle, variables: !2)
!52 = !DISubroutineType(types: !53)
!53 = !{!14, !14, !14, !14, !14, !14, !14}
!54 = !DISubprogram(name: "PsCreateSystemThread", scope: !11, file: !11, line: 1137, type: !55, isLocal: false, isDefinition: true, scopeLine: 1139, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32, i32, i32)* @PsCreateSystemThread, variables: !2)
!55 = !DISubroutineType(types: !56)
!56 = !{!14, !14, !14, !14, !14, !14, !14, !14}
!57 = !DISubprogram(name: "ZwClose", scope: !11, file: !11, line: 1159, type: !33, isLocal: false, isDefinition: true, scopeLine: 1160, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32)* @ZwClose, variables: !2)
!58 = !DISubprogram(name: "FloppyCreateClose", scope: !11, file: !11, line: 1180, type: !12, isLocal: false, isDefinition: true, scopeLine: 1181, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @FloppyCreateClose, variables: !2)
!59 = !DISubprogram(name: "FloppyDeviceControl", scope: !11, file: !11, line: 1195, type: !12, isLocal: false, isDefinition: true, scopeLine: 1196, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @FloppyDeviceControl, variables: !2)
!60 = !DISubprogram(name: "FlCheckFormatParameters", scope: !11, file: !11, line: 1469, type: !12, isLocal: false, isDefinition: true, scopeLine: 1470, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @FlCheckFormatParameters, variables: !2)
!61 = !DISubprogram(name: "FloppyQueueRequest", scope: !11, file: !11, line: 1486, type: !12, isLocal: false, isDefinition: true, scopeLine: 1487, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @FloppyQueueRequest, variables: !2)
!62 = !DISubprogram(name: "errorFn", scope: !11, file: !11, line: 1531, type: !8, isLocal: false, isDefinition: true, scopeLine: 1532, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @errorFn, variables: !2)
!63 = !{!64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89}
!64 = !DIGlobalVariable(name: "PagingReferenceCount", scope: !0, file: !11, line: 92, type: !14, isLocal: false, isDefinition: true, variable: i32* @PagingReferenceCount)
!65 = !DIGlobalVariable(name: "PagingMutex", scope: !0, file: !11, line: 93, type: !14, isLocal: false, isDefinition: true, variable: i32* @PagingMutex)
!66 = !DIGlobalVariable(name: "FloppyThread", scope: !0, file: !1, line: 10, type: !14, isLocal: false, isDefinition: true, variable: i32* @FloppyThread)
!67 = !DIGlobalVariable(name: "KernelMode", scope: !0, file: !1, line: 11, type: !14, isLocal: false, isDefinition: true, variable: i32* @KernelMode)
!68 = !DIGlobalVariable(name: "Suspended", scope: !0, file: !1, line: 12, type: !14, isLocal: false, isDefinition: true, variable: i32* @Suspended)
!69 = !DIGlobalVariable(name: "Executive", scope: !0, file: !1, line: 13, type: !14, isLocal: false, isDefinition: true, variable: i32* @Executive)
!70 = !DIGlobalVariable(name: "DiskController", scope: !0, file: !1, line: 14, type: !14, isLocal: false, isDefinition: true, variable: i32* @DiskController)
!71 = !DIGlobalVariable(name: "FloppyDiskPeripheral", scope: !0, file: !1, line: 15, type: !14, isLocal: false, isDefinition: true, variable: i32* @FloppyDiskPeripheral)
!72 = !DIGlobalVariable(name: "FlConfigCallBack", scope: !0, file: !1, line: 16, type: !14, isLocal: false, isDefinition: true, variable: i32* @FlConfigCallBack)
!73 = !DIGlobalVariable(name: "MaximumInterfaceType", scope: !0, file: !1, line: 17, type: !14, isLocal: false, isDefinition: true, variable: i32* @MaximumInterfaceType)
!74 = !DIGlobalVariable(name: "MOUNTDEV_MOUNTED_DEVICE_GUID", scope: !0, file: !1, line: 18, type: !14, isLocal: false, isDefinition: true, variable: i32* @MOUNTDEV_MOUNTED_DEVICE_GUID)
!75 = !DIGlobalVariable(name: "myStatus", scope: !0, file: !1, line: 19, type: !14, isLocal: false, isDefinition: true, variable: i32* @myStatus)
!76 = !DIGlobalVariable(name: "s", scope: !0, file: !1, line: 20, type: !14, isLocal: false, isDefinition: true, variable: i32* @s)
!77 = !DIGlobalVariable(name: "UNLOADED", scope: !0, file: !1, line: 21, type: !14, isLocal: false, isDefinition: true, variable: i32* @UNLOADED)
!78 = !DIGlobalVariable(name: "NP", scope: !0, file: !1, line: 22, type: !14, isLocal: false, isDefinition: true, variable: i32* @NP)
!79 = !DIGlobalVariable(name: "DC", scope: !0, file: !1, line: 23, type: !14, isLocal: false, isDefinition: true, variable: i32* @DC)
!80 = !DIGlobalVariable(name: "SKIP1", scope: !0, file: !1, line: 24, type: !14, isLocal: false, isDefinition: true, variable: i32* @SKIP1)
!81 = !DIGlobalVariable(name: "SKIP2", scope: !0, file: !1, line: 25, type: !14, isLocal: false, isDefinition: true, variable: i32* @SKIP2)
!82 = !DIGlobalVariable(name: "MPR1", scope: !0, file: !1, line: 26, type: !14, isLocal: false, isDefinition: true, variable: i32* @MPR1)
!83 = !DIGlobalVariable(name: "MPR3", scope: !0, file: !1, line: 27, type: !14, isLocal: false, isDefinition: true, variable: i32* @MPR3)
!84 = !DIGlobalVariable(name: "IPC", scope: !0, file: !1, line: 28, type: !14, isLocal: false, isDefinition: true, variable: i32* @IPC)
!85 = !DIGlobalVariable(name: "pended", scope: !0, file: !1, line: 29, type: !14, isLocal: false, isDefinition: true, variable: i32* @pended)
!86 = !DIGlobalVariable(name: "compRegistered", scope: !0, file: !1, line: 30, type: !14, isLocal: false, isDefinition: true, variable: i32* @compRegistered)
!87 = !DIGlobalVariable(name: "lowerDriverReturn", scope: !0, file: !1, line: 31, type: !14, isLocal: false, isDefinition: true, variable: i32* @lowerDriverReturn)
!88 = !DIGlobalVariable(name: "setEventCalled", scope: !0, file: !1, line: 32, type: !14, isLocal: false, isDefinition: true, variable: i32* @setEventCalled)
!89 = !DIGlobalVariable(name: "customIrp", scope: !0, file: !1, line: 33, type: !14, isLocal: false, isDefinition: true, variable: i32* @customIrp)
!90 = !{i32 2, !"Dwarf Version", i32 2}
!91 = !{i32 2, !"Debug Info Version", i32 3}
!92 = !{i32 1, !"PIC Level", i32 2}
!93 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!94 = !DILocation(line: 75, column: 12, scope: !95)
!95 = distinct !DILexicalBlock(scope: !7, file: !1, line: 38, column: 3)
!96 = !DILocation(line: 76, column: 6, scope: !95)
!97 = !DILocation(line: 77, column: 6, scope: !95)
!98 = !DILocation(line: 78, column: 9, scope: !95)
!99 = !DILocation(line: 79, column: 9, scope: !95)
!100 = !DILocation(line: 80, column: 8, scope: !95)
!101 = !DILocation(line: 81, column: 8, scope: !95)
!102 = !DILocation(line: 82, column: 7, scope: !95)
!103 = !DILocation(line: 83, column: 7, scope: !95)
!104 = !DILocation(line: 83, column: 5, scope: !95)
!105 = !DILocation(line: 84, column: 10, scope: !95)
!106 = !DILocation(line: 85, column: 18, scope: !95)
!107 = !DILocation(line: 86, column: 21, scope: !95)
!108 = !DILocation(line: 87, column: 18, scope: !95)
!109 = !DILocation(line: 88, column: 13, scope: !95)
!110 = !DILocation(line: 89, column: 3, scope: !95)
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DisketteExtension", arg: 1, scope: !10, file: !11, line: 94, type: !14)
!112 = !DIExpression()
!113 = !DILocation(line: 94, column: 31, scope: !10)
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "FdcInfo", arg: 2, scope: !10, file: !11, line: 94, type: !14)
!115 = !DILocation(line: 94, column: 55, scope: !10)
!116 = !DILocation(line: 98, column: 3, scope: !117)
!117 = distinct !DILexicalBlock(scope: !10, file: !11, line: 97, column: 3)
!118 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 1, scope: !15, file: !11, line: 101, type: !14)
!119 = !DILocation(line: 101, column: 28, scope: !15)
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DisketteExtension", arg: 2, scope: !15, file: !11, line: 101, type: !14)
!121 = !DILocation(line: 101, column: 38, scope: !15)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !15, file: !11, line: 102, type: !14)
!123 = !DILocation(line: 102, column: 7, scope: !15)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "threadHandle", scope: !15, file: !11, line: 103, type: !14)
!125 = !DILocation(line: 103, column: 7, scope: !15)
!126 = !DILocation(line: 103, column: 22, scope: !15)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DisketteExtension__PoweringDown", scope: !15, file: !11, line: 104, type: !14)
!128 = !DILocation(line: 104, column: 7, scope: !15)
!129 = !DILocation(line: 104, column: 41, scope: !15)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DisketteExtension__ThreadReferenceCount", scope: !15, file: !11, line: 105, type: !14)
!131 = !DILocation(line: 105, column: 7, scope: !15)
!132 = !DILocation(line: 105, column: 49, scope: !15)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DisketteExtension__FloppyThread", scope: !15, file: !11, line: 106, type: !14)
!134 = !DILocation(line: 106, column: 7, scope: !15)
!135 = !DILocation(line: 106, column: 41, scope: !15)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !15, file: !11, line: 107, type: !14)
!137 = !DILocation(line: 107, column: 7, scope: !15)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !15, file: !11, line: 108, type: !14)
!139 = !DILocation(line: 108, column: 7, scope: !15)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation__Control", scope: !15, file: !11, line: 109, type: !14)
!141 = !DILocation(line: 109, column: 7, scope: !15)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ObjAttributes", scope: !15, file: !11, line: 110, type: !14)
!143 = !DILocation(line: 110, column: 7, scope: !15)
!144 = !DILocation(line: 110, column: 23, scope: !15)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp12", scope: !15, file: !11, line: 111, type: !14)
!146 = !DILocation(line: 111, column: 7, scope: !15)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp13", scope: !15, file: !11, line: 112, type: !14)
!148 = !DILocation(line: 112, column: 7, scope: !15)
!149 = !DILocation(line: 113, column: 7, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !11, line: 113, column: 7)
!151 = distinct !DILexicalBlock(scope: !15, file: !11, line: 114, column: 3)
!152 = !DILocation(line: 113, column: 39, scope: !150)
!153 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ThreadHandle", arg: 1, scope: !54, file: !11, line: 1137, type: !14)
!154 = !DILocation(line: 1137, column: 30, scope: !54, inlinedAt: !155)
!155 = distinct !DILocation(line: 131, column: 14, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !11, line: 128, column: 5)
!157 = distinct !DILexicalBlock(scope: !158, file: !11, line: 122, column: 53)
!158 = distinct !DILexicalBlock(scope: !151, file: !11, line: 122, column: 7)
!159 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DesiredAccess", arg: 2, scope: !54, file: !11, line: 1137, type: !14)
!160 = !DILocation(line: 1137, column: 49, scope: !54, inlinedAt: !155)
!161 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ObjectAttributes", arg: 3, scope: !54, file: !11, line: 1137, type: !14)
!162 = !DILocation(line: 1137, column: 69, scope: !54, inlinedAt: !155)
!163 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ProcessHandle", arg: 4, scope: !54, file: !11, line: 1138, type: !14)
!164 = !DILocation(line: 1138, column: 30, scope: !54, inlinedAt: !155)
!165 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ClientId", arg: 5, scope: !54, file: !11, line: 1138, type: !14)
!166 = !DILocation(line: 1138, column: 50, scope: !54, inlinedAt: !155)
!167 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "StartRoutine", arg: 6, scope: !54, file: !11, line: 1138, type: !14)
!168 = !DILocation(line: 1138, column: 65, scope: !54, inlinedAt: !155)
!169 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "StartContext", arg: 7, scope: !54, file: !11, line: 1138, type: !14)
!170 = !DILocation(line: 1138, column: 84, scope: !54, inlinedAt: !155)
!171 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_14", scope: !172, file: !11, line: 1142, type: !14)
!172 = distinct !DILexicalBlock(scope: !54, file: !11, line: 1141, column: 3)
!173 = !DILocation(line: 1142, column: 7, scope: !172, inlinedAt: !155)
!174 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Handle", arg: 1, scope: !51, file: !11, line: 1115, type: !14)
!175 = !DILocation(line: 1115, column: 35, scope: !51, inlinedAt: !176)
!176 = distinct !DILocation(line: 147, column: 14, scope: !177)
!177 = distinct !DILexicalBlock(scope: !157, file: !11, line: 145, column: 5)
!178 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DesiredAccess", arg: 2, scope: !51, file: !11, line: 1115, type: !14)
!179 = !DILocation(line: 1115, column: 48, scope: !51, inlinedAt: !176)
!180 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ObjectType", arg: 3, scope: !51, file: !11, line: 1115, type: !14)
!181 = !DILocation(line: 1115, column: 68, scope: !51, inlinedAt: !176)
!182 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "AccessMode", arg: 4, scope: !51, file: !11, line: 1115, type: !14)
!183 = !DILocation(line: 1115, column: 85, scope: !51, inlinedAt: !176)
!184 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Object", arg: 5, scope: !51, file: !11, line: 1116, type: !14)
!185 = !DILocation(line: 1116, column: 35, scope: !51, inlinedAt: !176)
!186 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "HandleInformation", arg: 6, scope: !51, file: !11, line: 1116, type: !14)
!187 = !DILocation(line: 1116, column: 48, scope: !51, inlinedAt: !176)
!188 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_13", scope: !189, file: !11, line: 1120, type: !14)
!189 = distinct !DILexicalBlock(scope: !51, file: !11, line: 1119, column: 3)
!190 = !DILocation(line: 1120, column: 7, scope: !189, inlinedAt: !176)
!191 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Handle", arg: 1, scope: !57, file: !11, line: 1159, type: !14)
!192 = !DILocation(line: 1159, column: 17, scope: !57, inlinedAt: !193)
!193 = distinct !DILocation(line: 149, column: 5, scope: !177)
!194 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_15", scope: !195, file: !11, line: 1163, type: !14)
!195 = distinct !DILexicalBlock(scope: !57, file: !11, line: 1162, column: 3)
!196 = !DILocation(line: 1163, column: 7, scope: !195, inlinedAt: !193)
!197 = !DILocation(line: 113, column: 7, scope: !151)
!198 = !DILocation(line: 114, column: 14, scope: !199)
!199 = distinct !DILexicalBlock(scope: !150, file: !11, line: 113, column: 45)
!200 = !DILocation(line: 115, column: 27, scope: !199)
!201 = !DILocation(line: 116, column: 32, scope: !199)
!202 = !DILocation(line: 117, column: 5, scope: !199)
!203 = !DILocation(line: 121, column: 43, scope: !151)
!204 = !DILocation(line: 122, column: 7, scope: !158)
!205 = !DILocation(line: 122, column: 47, scope: !158)
!206 = !DILocation(line: 122, column: 7, scope: !151)
!207 = !DILocation(line: 123, column: 45, scope: !157)
!208 = !DILocation(line: 124, column: 26, scope: !157)
!209 = !DILocation(line: 125, column: 9, scope: !210)
!210 = distinct !DILexicalBlock(scope: !157, file: !11, line: 125, column: 9)
!211 = !DILocation(line: 125, column: 30, scope: !210)
!212 = !DILocation(line: 125, column: 9, scope: !157)
!213 = !DILocation(line: 127, column: 5, scope: !214)
!214 = distinct !DILexicalBlock(scope: !210, file: !11, line: 125, column: 36)
!215 = !DILocation(line: 131, column: 35, scope: !156)
!216 = !DILocation(line: 131, column: 52, scope: !156)
!217 = !DILocation(line: 131, column: 73, scope: !156)
!218 = !DILocation(line: 132, column: 35, scope: !156)
!219 = !DILocation(line: 131, column: 14, scope: !156)
!220 = !DILocation(line: 1143, column: 16, scope: !172, inlinedAt: !155)
!221 = !DILocation(line: 1143, column: 14, scope: !172, inlinedAt: !155)
!222 = !DILocation(line: 1144, column: 7, scope: !223, inlinedAt: !155)
!223 = distinct !DILexicalBlock(scope: !172, file: !11, line: 1144, column: 7)
!224 = !DILocation(line: 1144, column: 18, scope: !223, inlinedAt: !155)
!225 = !DILocation(line: 1144, column: 7, scope: !172, inlinedAt: !155)
!226 = !DILocation(line: 1149, column: 7, scope: !227, inlinedAt: !155)
!227 = distinct !DILexicalBlock(scope: !228, file: !11, line: 1147, column: 12)
!228 = distinct !DILexicalBlock(scope: !229, file: !11, line: 1147, column: 9)
!229 = distinct !DILexicalBlock(scope: !223, file: !11, line: 1146, column: 10)
!230 = !DILocation(line: 1151, column: 7, scope: !227, inlinedAt: !155)
!231 = !DILocation(line: 1157, column: 1, scope: !54, inlinedAt: !155)
!232 = !DILocation(line: 131, column: 12, scope: !156)
!233 = !DILocation(line: 134, column: 9, scope: !234)
!234 = distinct !DILexicalBlock(scope: !235, file: !11, line: 134, column: 9)
!235 = distinct !DILexicalBlock(scope: !157, file: !11, line: 134, column: 5)
!236 = !DILocation(line: 134, column: 16, scope: !234)
!237 = !DILocation(line: 134, column: 9, scope: !235)
!238 = !DILocation(line: 135, column: 47, scope: !239)
!239 = distinct !DILexicalBlock(scope: !234, file: !11, line: 134, column: 21)
!240 = !DILocation(line: 136, column: 28, scope: !239)
!241 = !DILocation(line: 137, column: 11, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !11, line: 137, column: 11)
!243 = !DILocation(line: 137, column: 32, scope: !242)
!244 = !DILocation(line: 137, column: 11, scope: !239)
!245 = !DILocation(line: 139, column: 7, scope: !246)
!246 = distinct !DILexicalBlock(scope: !242, file: !11, line: 137, column: 38)
!247 = !DILocation(line: 142, column: 15, scope: !239)
!248 = !DILocation(line: 142, column: 7, scope: !239)
!249 = !DILocation(line: 147, column: 40, scope: !177)
!250 = !DILocation(line: 147, column: 66, scope: !177)
!251 = !DILocation(line: 147, column: 78, scope: !177)
!252 = !DILocation(line: 147, column: 14, scope: !177)
!253 = !DILocation(line: 1121, column: 16, scope: !189, inlinedAt: !176)
!254 = !DILocation(line: 1121, column: 14, scope: !189, inlinedAt: !176)
!255 = !DILocation(line: 1122, column: 7, scope: !256, inlinedAt: !176)
!256 = distinct !DILexicalBlock(scope: !189, file: !11, line: 1122, column: 7)
!257 = !DILocation(line: 1122, column: 18, scope: !256, inlinedAt: !176)
!258 = !DILocation(line: 1122, column: 7, scope: !189, inlinedAt: !176)
!259 = !DILocation(line: 1127, column: 7, scope: !260, inlinedAt: !176)
!260 = distinct !DILexicalBlock(scope: !261, file: !11, line: 1125, column: 12)
!261 = distinct !DILexicalBlock(scope: !262, file: !11, line: 1125, column: 9)
!262 = distinct !DILexicalBlock(scope: !256, file: !11, line: 1124, column: 10)
!263 = !DILocation(line: 1129, column: 7, scope: !260, inlinedAt: !176)
!264 = !DILocation(line: 1135, column: 1, scope: !51, inlinedAt: !176)
!265 = !DILocation(line: 147, column: 12, scope: !177)
!266 = !DILocation(line: 149, column: 13, scope: !177)
!267 = !DILocation(line: 149, column: 5, scope: !177)
!268 = !DILocation(line: 1164, column: 16, scope: !195, inlinedAt: !193)
!269 = !DILocation(line: 1164, column: 14, scope: !195, inlinedAt: !193)
!270 = !DILocation(line: 1165, column: 7, scope: !271, inlinedAt: !193)
!271 = distinct !DILexicalBlock(scope: !195, file: !11, line: 1165, column: 7)
!272 = !DILocation(line: 1165, column: 18, scope: !271, inlinedAt: !193)
!273 = !DILocation(line: 1165, column: 7, scope: !195, inlinedAt: !193)
!274 = !DILocation(line: 1170, column: 7, scope: !275, inlinedAt: !193)
!275 = distinct !DILexicalBlock(scope: !276, file: !11, line: 1168, column: 12)
!276 = distinct !DILexicalBlock(scope: !277, file: !11, line: 1168, column: 9)
!277 = distinct !DILexicalBlock(scope: !271, file: !11, line: 1167, column: 10)
!278 = !DILocation(line: 1172, column: 7, scope: !275, inlinedAt: !193)
!279 = !DILocation(line: 1178, column: 1, scope: !57, inlinedAt: !193)
!280 = !DILocation(line: 151, column: 9, scope: !281)
!281 = distinct !DILexicalBlock(scope: !282, file: !11, line: 151, column: 9)
!282 = distinct !DILexicalBlock(scope: !157, file: !11, line: 151, column: 5)
!283 = !DILocation(line: 151, column: 16, scope: !281)
!284 = !DILocation(line: 151, column: 9, scope: !282)
!285 = !DILocation(line: 152, column: 15, scope: !286)
!286 = distinct !DILexicalBlock(scope: !281, file: !11, line: 151, column: 21)
!287 = !DILocation(line: 152, column: 7, scope: !286)
!288 = !DILocation(line: 155, column: 3, scope: !157)
!289 = !DILocation(line: 160, column: 7, scope: !290)
!290 = distinct !DILexicalBlock(scope: !151, file: !11, line: 160, column: 7)
!291 = !DILocation(line: 160, column: 14, scope: !290)
!292 = !DILocation(line: 160, column: 7, scope: !151)
!293 = !DILocation(line: 161, column: 12, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !11, line: 160, column: 20)
!295 = !DILocation(line: 162, column: 3, scope: !294)
!296 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !298)
!297 = distinct !DILexicalBlock(scope: !62, file: !11, line: 1534, column: 3)
!298 = distinct !DILocation(line: 164, column: 5, scope: !299)
!299 = distinct !DILexicalBlock(scope: !300, file: !11, line: 163, column: 5)
!300 = distinct !DILexicalBlock(scope: !290, file: !11, line: 162, column: 10)
!301 = !DILocation(line: 167, column: 3, scope: !151)
!302 = !DILocation(line: 169, column: 1, scope: !15)
!303 = !DILocation(line: 1534, column: 3, scope: !62)
!304 = !DILocation(line: 1535, column: 10, scope: !297)
!305 = !DILocation(line: 55, column: 1, scope: !62)
!306 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !16, file: !11, line: 170, type: !14)
!307 = !DILocation(line: 170, column: 19, scope: !16)
!308 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !16, file: !11, line: 170, type: !14)
!309 = !DILocation(line: 170, column: 38, scope: !16)
!310 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !16, file: !11, line: 171, type: !14)
!311 = !DILocation(line: 171, column: 7, scope: !16)
!312 = !DILocation(line: 171, column: 39, scope: !16)
!313 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !16, file: !11, line: 172, type: !14)
!314 = !DILocation(line: 172, column: 7, scope: !16)
!315 = !DILocation(line: 172, column: 50, scope: !16)
!316 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !16, file: !11, line: 173, type: !14)
!317 = !DILocation(line: 173, column: 7, scope: !16)
!318 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !16, file: !11, line: 174, type: !14)
!319 = !DILocation(line: 174, column: 7, scope: !16)
!320 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !16, file: !11, line: 175, type: !14)
!321 = !DILocation(line: 175, column: 7, scope: !16)
!322 = !DILocation(line: 175, column: 30, scope: !16)
!323 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__IsRemoved", scope: !16, file: !11, line: 176, type: !14)
!324 = !DILocation(line: 176, column: 7, scope: !16)
!325 = !DILocation(line: 176, column: 38, scope: !16)
!326 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__IsStarted", scope: !16, file: !11, line: 177, type: !14)
!327 = !DILocation(line: 177, column: 7, scope: !16)
!328 = !DILocation(line: 177, column: 38, scope: !16)
!329 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__TargetObject", scope: !16, file: !11, line: 178, type: !14)
!330 = !DILocation(line: 178, column: 7, scope: !16)
!331 = !DILocation(line: 178, column: 41, scope: !16)
!332 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__HoldNewRequests", scope: !16, file: !11, line: 179, type: !14)
!333 = !DILocation(line: 179, column: 7, scope: !16)
!334 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__FloppyThread", scope: !16, file: !11, line: 180, type: !14)
!335 = !DILocation(line: 180, column: 7, scope: !16)
!336 = !DILocation(line: 180, column: 41, scope: !16)
!337 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__InterfaceString__Buffer", scope: !16, file: !11, line: 181, type: !14)
!338 = !DILocation(line: 181, column: 7, scope: !16)
!339 = !DILocation(line: 181, column: 52, scope: !16)
!340 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__InterfaceString", scope: !16, file: !11, line: 182, type: !14)
!341 = !DILocation(line: 182, column: 7, scope: !16)
!342 = !DILocation(line: 182, column: 44, scope: !16)
!343 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__ArcName__Length", scope: !16, file: !11, line: 183, type: !14)
!344 = !DILocation(line: 183, column: 7, scope: !16)
!345 = !DILocation(line: 183, column: 44, scope: !16)
!346 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__ArcName", scope: !16, file: !11, line: 184, type: !14)
!347 = !DILocation(line: 184, column: 7, scope: !16)
!348 = !DILocation(line: 184, column: 36, scope: !16)
!349 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__MinorFunction", scope: !16, file: !11, line: 185, type: !14)
!350 = !DILocation(line: 185, column: 7, scope: !16)
!351 = !DILocation(line: 185, column: 30, scope: !16)
!352 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "IoGetConfigurationInformation__FloppyCount", scope: !16, file: !11, line: 186, type: !14)
!353 = !DILocation(line: 186, column: 7, scope: !16)
!354 = !DILocation(line: 186, column: 52, scope: !16)
!355 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp", scope: !16, file: !11, line: 187, type: !14)
!356 = !DILocation(line: 187, column: 7, scope: !16)
!357 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension", scope: !16, file: !11, line: 188, type: !14)
!358 = !DILocation(line: 188, column: 7, scope: !16)
!359 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ntStatus", scope: !16, file: !11, line: 189, type: !14)
!360 = !DILocation(line: 189, column: 7, scope: !16)
!361 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doneEvent", scope: !16, file: !11, line: 190, type: !14)
!362 = !DILocation(line: 190, column: 7, scope: !16)
!363 = !DILocation(line: 190, column: 19, scope: !16)
!364 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___0", scope: !16, file: !11, line: 191, type: !14)
!365 = !DILocation(line: 191, column: 7, scope: !16)
!366 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp", scope: !16, file: !11, line: 192, type: !14)
!367 = !DILocation(line: 192, column: 7, scope: !16)
!368 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp__Control", scope: !16, file: !11, line: 193, type: !14)
!369 = !DILocation(line: 193, column: 7, scope: !16)
!370 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___1", scope: !16, file: !11, line: 194, type: !14)
!371 = !DILocation(line: 194, column: 7, scope: !16)
!372 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Context", scope: !16, file: !11, line: 195, type: !14)
!373 = !DILocation(line: 195, column: 7, scope: !16)
!374 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Control", scope: !16, file: !11, line: 196, type: !14)
!375 = !DILocation(line: 196, column: 7, scope: !16)
!376 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp29", scope: !16, file: !11, line: 197, type: !4)
!377 = !DILocation(line: 197, column: 8, scope: !16)
!378 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp30", scope: !16, file: !11, line: 198, type: !4)
!379 = !DILocation(line: 198, column: 8, scope: !16)
!380 = !DILocation(line: 199, column: 12, scope: !381)
!381 = distinct !DILexicalBlock(scope: !16, file: !11, line: 200, column: 3)
!382 = !DILocation(line: 200, column: 24, scope: !381)
!383 = !DILocation(line: 201, column: 7, scope: !384)
!384 = distinct !DILexicalBlock(scope: !381, file: !11, line: 201, column: 7)
!385 = !DILocation(line: 201, column: 28, scope: !384)
!386 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 1, scope: !44, file: !11, line: 1049, type: !14)
!387 = !DILocation(line: 1049, column: 29, scope: !44, inlinedAt: !388)
!388 = distinct !DILocation(line: 213, column: 5, scope: !389)
!389 = distinct !DILexicalBlock(scope: !390, file: !11, line: 209, column: 5)
!390 = distinct !DILexicalBlock(scope: !391, file: !11, line: 208, column: 37)
!391 = distinct !DILexicalBlock(scope: !381, file: !11, line: 208, column: 7)
!392 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PriorityBoost", arg: 2, scope: !44, file: !11, line: 1049, type: !14)
!393 = !DILocation(line: 1049, column: 39, scope: !44, inlinedAt: !388)
!394 = !DILocation(line: 1049, column: 29, scope: !44, inlinedAt: !395)
!395 = distinct !DILocation(line: 307, column: 21, scope: !396)
!396 = distinct !DILexicalBlock(scope: !397, file: !11, line: 302, column: 21)
!397 = distinct !DILexicalBlock(scope: !398, file: !11, line: 301, column: 26)
!398 = distinct !DILexicalBlock(scope: !399, file: !11, line: 276, column: 23)
!399 = distinct !DILexicalBlock(scope: !400, file: !11, line: 276, column: 19)
!400 = distinct !DILexicalBlock(scope: !401, file: !11, line: 242, column: 24)
!401 = distinct !DILexicalBlock(scope: !402, file: !11, line: 242, column: 21)
!402 = distinct !DILexicalBlock(scope: !403, file: !11, line: 239, column: 22)
!403 = distinct !DILexicalBlock(scope: !404, file: !11, line: 237, column: 19)
!404 = distinct !DILexicalBlock(scope: !405, file: !11, line: 236, column: 20)
!405 = distinct !DILexicalBlock(scope: !406, file: !11, line: 234, column: 17)
!406 = distinct !DILexicalBlock(scope: !407, file: !11, line: 233, column: 18)
!407 = distinct !DILexicalBlock(scope: !408, file: !11, line: 231, column: 15)
!408 = distinct !DILexicalBlock(scope: !409, file: !11, line: 230, column: 16)
!409 = distinct !DILexicalBlock(scope: !410, file: !11, line: 228, column: 13)
!410 = distinct !DILexicalBlock(scope: !411, file: !11, line: 227, column: 14)
!411 = distinct !DILexicalBlock(scope: !412, file: !11, line: 225, column: 11)
!412 = distinct !DILexicalBlock(scope: !413, file: !11, line: 224, column: 12)
!413 = distinct !DILexicalBlock(scope: !414, file: !11, line: 222, column: 9)
!414 = distinct !DILexicalBlock(scope: !415, file: !11, line: 221, column: 10)
!415 = distinct !DILexicalBlock(scope: !381, file: !11, line: 219, column: 7)
!416 = !DILocation(line: 1049, column: 39, scope: !44, inlinedAt: !395)
!417 = !DILocation(line: 1049, column: 29, scope: !44, inlinedAt: !418)
!418 = distinct !DILocation(line: 374, column: 21, scope: !419)
!419 = distinct !DILexicalBlock(scope: !420, file: !11, line: 368, column: 21)
!420 = distinct !DILexicalBlock(scope: !421, file: !11, line: 333, column: 26)
!421 = distinct !DILexicalBlock(scope: !400, file: !11, line: 318, column: 23)
!422 = !DILocation(line: 1049, column: 39, scope: !44, inlinedAt: !418)
!423 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SymbolicLinkName", arg: 1, scope: !41, file: !11, line: 943, type: !14)
!424 = !DILocation(line: 943, column: 35, scope: !41, inlinedAt: !425)
!425 = distinct !DILocation(line: 415, column: 21, scope: !426)
!426 = distinct !DILexicalBlock(scope: !427, file: !11, line: 414, column: 21)
!427 = distinct !DILexicalBlock(scope: !428, file: !11, line: 413, column: 72)
!428 = distinct !DILexicalBlock(scope: !400, file: !11, line: 413, column: 23)
!429 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Enable", arg: 2, scope: !41, file: !11, line: 943, type: !14)
!430 = !DILocation(line: 943, column: 58, scope: !41, inlinedAt: !425)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_9", scope: !432, file: !11, line: 947, type: !14)
!432 = distinct !DILexicalBlock(scope: !41, file: !11, line: 946, column: 3)
!433 = !DILocation(line: 947, column: 7, scope: !432, inlinedAt: !425)
!434 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SymbolicLinkName", arg: 1, scope: !32, file: !11, line: 877, type: !14)
!435 = !DILocation(line: 877, column: 30, scope: !32, inlinedAt: !436)
!436 = distinct !DILocation(line: 423, column: 21, scope: !437)
!437 = distinct !DILexicalBlock(scope: !438, file: !11, line: 422, column: 21)
!438 = distinct !DILexicalBlock(scope: !439, file: !11, line: 421, column: 64)
!439 = distinct !DILexicalBlock(scope: !400, file: !11, line: 421, column: 23)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_6", scope: !441, file: !11, line: 881, type: !14)
!441 = distinct !DILexicalBlock(scope: !32, file: !11, line: 880, column: 3)
!442 = !DILocation(line: 881, column: 7, scope: !441, inlinedAt: !436)
!443 = !DILocation(line: 201, column: 7, scope: !381)
!444 = !DILocation(line: 203, column: 3, scope: !445)
!445 = distinct !DILexicalBlock(scope: !384, file: !11, line: 201, column: 34)
!446 = !DILocation(line: 206, column: 23, scope: !381)
!447 = !DILocation(line: 206, column: 21, scope: !381)
!448 = !DILocation(line: 207, column: 11, scope: !381)
!449 = !DILocation(line: 207, column: 9, scope: !381)
!450 = !DILocation(line: 208, column: 7, scope: !391)
!451 = !DILocation(line: 208, column: 7, scope: !381)
!452 = !DILocation(line: 210, column: 32, scope: !389)
!453 = !DILocation(line: 211, column: 27, scope: !389)
!454 = !DILocation(line: 212, column: 14, scope: !389)
!455 = !DILocation(line: 213, column: 24, scope: !389)
!456 = !DILocation(line: 213, column: 5, scope: !389)
!457 = !DILocation(line: 1053, column: 7, scope: !458, inlinedAt: !388)
!458 = distinct !DILexicalBlock(scope: !459, file: !11, line: 1053, column: 7)
!459 = distinct !DILexicalBlock(scope: !44, file: !11, line: 1052, column: 3)
!460 = !DILocation(line: 1053, column: 12, scope: !458, inlinedAt: !388)
!461 = !DILocation(line: 1053, column: 9, scope: !458, inlinedAt: !388)
!462 = !DILocation(line: 1053, column: 7, scope: !459, inlinedAt: !388)
!463 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !464)
!464 = distinct !DILocation(line: 1057, column: 5, scope: !465, inlinedAt: !388)
!465 = distinct !DILexicalBlock(scope: !466, file: !11, line: 1056, column: 5)
!466 = distinct !DILexicalBlock(scope: !458, file: !11, line: 1055, column: 10)
!467 = !DILocation(line: 1054, column: 9, scope: !468, inlinedAt: !388)
!468 = distinct !DILexicalBlock(scope: !458, file: !11, line: 1053, column: 16)
!469 = !DILocation(line: 1054, column: 7, scope: !468, inlinedAt: !388)
!470 = !DILocation(line: 1060, column: 3, scope: !459, inlinedAt: !388)
!471 = !DILocation(line: 215, column: 5, scope: !390)
!472 = !DILocation(line: 219, column: 7, scope: !415)
!473 = !DILocation(line: 219, column: 28, scope: !415)
!474 = !DILocation(line: 219, column: 7, scope: !381)
!475 = !DILocation(line: 220, column: 5, scope: !476)
!476 = distinct !DILexicalBlock(scope: !415, file: !11, line: 219, column: 34)
!477 = !DILocation(line: 222, column: 9, scope: !413)
!478 = !DILocation(line: 222, column: 30, scope: !413)
!479 = !DILocation(line: 222, column: 9, scope: !414)
!480 = !DILocation(line: 223, column: 7, scope: !481)
!481 = distinct !DILexicalBlock(scope: !413, file: !11, line: 222, column: 36)
!482 = !DILocation(line: 225, column: 11, scope: !411)
!483 = !DILocation(line: 225, column: 32, scope: !411)
!484 = !DILocation(line: 225, column: 11, scope: !412)
!485 = !DILocation(line: 226, column: 9, scope: !486)
!486 = distinct !DILexicalBlock(scope: !411, file: !11, line: 225, column: 38)
!487 = !DILocation(line: 228, column: 13, scope: !409)
!488 = !DILocation(line: 228, column: 34, scope: !409)
!489 = !DILocation(line: 228, column: 13, scope: !410)
!490 = !DILocation(line: 229, column: 11, scope: !491)
!491 = distinct !DILexicalBlock(scope: !409, file: !11, line: 228, column: 40)
!492 = !DILocation(line: 231, column: 15, scope: !407)
!493 = !DILocation(line: 231, column: 36, scope: !407)
!494 = !DILocation(line: 231, column: 15, scope: !408)
!495 = !DILocation(line: 232, column: 13, scope: !496)
!496 = distinct !DILexicalBlock(scope: !407, file: !11, line: 231, column: 42)
!497 = !DILocation(line: 234, column: 17, scope: !405)
!498 = !DILocation(line: 234, column: 38, scope: !405)
!499 = !DILocation(line: 234, column: 17, scope: !406)
!500 = !DILocation(line: 235, column: 15, scope: !501)
!501 = distinct !DILexicalBlock(scope: !405, file: !11, line: 234, column: 44)
!502 = !DILocation(line: 237, column: 19, scope: !403)
!503 = !DILocation(line: 237, column: 40, scope: !403)
!504 = !DILocation(line: 237, column: 19, scope: !404)
!505 = !DILocation(line: 238, column: 17, scope: !506)
!506 = distinct !DILexicalBlock(scope: !403, file: !11, line: 237, column: 46)
!507 = !DILocation(line: 240, column: 17, scope: !402)
!508 = !DILocation(line: 242, column: 21, scope: !402)
!509 = !DILocation(line: 242, column: 24, scope: !401)
!510 = !DILocation(line: 245, column: 48, scope: !511)
!511 = distinct !DILexicalBlock(scope: !400, file: !11, line: 244, column: 19)
!512 = !DILocation(line: 245, column: 62, scope: !511)
!513 = !DILocation(line: 245, column: 30, scope: !511)
!514 = !DILocation(line: 245, column: 28, scope: !511)
!515 = !DILocation(line: 247, column: 19, scope: !400)
!516 = !DILocation(line: 250, column: 23, scope: !517)
!517 = distinct !DILexicalBlock(scope: !400, file: !11, line: 250, column: 23)
!518 = !DILocation(line: 250, column: 44, scope: !517)
!519 = !DILocation(line: 250, column: 23, scope: !400)
!520 = !DILocation(line: 252, column: 19, scope: !521)
!521 = distinct !DILexicalBlock(scope: !517, file: !11, line: 250, column: 50)
!522 = !DILocation(line: 255, column: 25, scope: !523)
!523 = distinct !DILexicalBlock(scope: !400, file: !11, line: 255, column: 23)
!524 = !DILocation(line: 255, column: 23, scope: !400)
!525 = !DILocation(line: 256, column: 25, scope: !526)
!526 = distinct !DILexicalBlock(scope: !527, file: !11, line: 256, column: 25)
!527 = distinct !DILexicalBlock(scope: !523, file: !11, line: 255, column: 55)
!528 = !DILocation(line: 256, column: 30, scope: !526)
!529 = !DILocation(line: 256, column: 27, scope: !526)
!530 = !DILocation(line: 256, column: 25, scope: !527)
!531 = !DILocation(line: 257, column: 27, scope: !532)
!532 = distinct !DILexicalBlock(scope: !526, file: !11, line: 256, column: 34)
!533 = !DILocation(line: 257, column: 25, scope: !532)
!534 = !DILocation(line: 258, column: 21, scope: !532)
!535 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !536)
!536 = distinct !DILocation(line: 260, column: 23, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !11, line: 259, column: 23)
!538 = distinct !DILexicalBlock(scope: !526, file: !11, line: 258, column: 28)
!539 = !DILocation(line: 264, column: 42, scope: !540)
!540 = distinct !DILexicalBlock(scope: !527, file: !11, line: 263, column: 21)
!541 = !DILocation(line: 265, column: 62, scope: !540)
!542 = !DILocation(line: 266, column: 46, scope: !540)
!543 = !DILocation(line: 266, column: 79, scope: !540)
!544 = !DILocation(line: 266, column: 32, scope: !540)
!545 = !DILocation(line: 266, column: 30, scope: !540)
!546 = !DILocation(line: 268, column: 29, scope: !527)
!547 = !DILocation(line: 268, column: 21, scope: !527)
!548 = !DILocation(line: 273, column: 54, scope: !549)
!549 = distinct !DILexicalBlock(scope: !400, file: !11, line: 270, column: 19)
!550 = !DILocation(line: 274, column: 49, scope: !549)
!551 = !DILocation(line: 274, column: 54, scope: !549)
!552 = !DILocation(line: 274, column: 30, scope: !549)
!553 = !DILocation(line: 274, column: 28, scope: !549)
!554 = !DILocation(line: 276, column: 40, scope: !399)
!555 = !DILocation(line: 276, column: 33, scope: !399)
!556 = !DILocation(line: 276, column: 31, scope: !399)
!557 = !DILocation(line: 276, column: 23, scope: !398)
!558 = !DILocation(line: 276, column: 35, scope: !398)
!559 = !DILocation(line: 276, column: 23, scope: !399)
!560 = !DILocation(line: 278, column: 43, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !11, line: 277, column: 21)
!562 = distinct !DILexicalBlock(scope: !398, file: !11, line: 276, column: 44)
!563 = !DILocation(line: 278, column: 76, scope: !561)
!564 = !DILocation(line: 279, column: 43, scope: !561)
!565 = !DILocation(line: 278, column: 21, scope: !561)
!566 = !DILocation(line: 281, column: 25, scope: !567)
!567 = distinct !DILexicalBlock(scope: !562, file: !11, line: 281, column: 25)
!568 = !DILocation(line: 281, column: 57, scope: !567)
!569 = !DILocation(line: 281, column: 25, scope: !562)
!570 = !DILocation(line: 283, column: 21, scope: !571)
!571 = distinct !DILexicalBlock(scope: !567, file: !11, line: 281, column: 63)
!572 = !DILocation(line: 286, column: 53, scope: !562)
!573 = !DILocation(line: 287, column: 43, scope: !562)
!574 = !DILocation(line: 288, column: 30, scope: !562)
!575 = !DILocation(line: 289, column: 25, scope: !576)
!576 = distinct !DILexicalBlock(scope: !562, file: !11, line: 289, column: 25)
!577 = !DILocation(line: 289, column: 30, scope: !576)
!578 = !DILocation(line: 289, column: 27, scope: !576)
!579 = !DILocation(line: 289, column: 25, scope: !562)
!580 = !DILocation(line: 290, column: 27, scope: !581)
!581 = distinct !DILexicalBlock(scope: !576, file: !11, line: 289, column: 34)
!582 = !DILocation(line: 290, column: 25, scope: !581)
!583 = !DILocation(line: 291, column: 21, scope: !581)
!584 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !585)
!585 = distinct !DILocation(line: 293, column: 23, scope: !586)
!586 = distinct !DILexicalBlock(scope: !587, file: !11, line: 292, column: 23)
!587 = distinct !DILexicalBlock(scope: !576, file: !11, line: 291, column: 28)
!588 = !DILocation(line: 297, column: 42, scope: !589)
!589 = distinct !DILexicalBlock(scope: !562, file: !11, line: 296, column: 21)
!590 = !DILocation(line: 298, column: 62, scope: !589)
!591 = !DILocation(line: 299, column: 46, scope: !589)
!592 = !DILocation(line: 299, column: 79, scope: !589)
!593 = !DILocation(line: 299, column: 32, scope: !589)
!594 = !DILocation(line: 299, column: 30, scope: !589)
!595 = !DILocation(line: 301, column: 19, scope: !562)
!596 = !DILocation(line: 303, column: 30, scope: !396)
!597 = !DILocation(line: 304, column: 45, scope: !396)
!598 = !DILocation(line: 304, column: 43, scope: !396)
!599 = !DILocation(line: 305, column: 32, scope: !396)
!600 = !DILocation(line: 305, column: 30, scope: !396)
!601 = !DILocation(line: 306, column: 48, scope: !396)
!602 = !DILocation(line: 307, column: 40, scope: !396)
!603 = !DILocation(line: 307, column: 21, scope: !396)
!604 = !DILocation(line: 1053, column: 7, scope: !458, inlinedAt: !395)
!605 = !DILocation(line: 1053, column: 12, scope: !458, inlinedAt: !395)
!606 = !DILocation(line: 1053, column: 9, scope: !458, inlinedAt: !395)
!607 = !DILocation(line: 1053, column: 7, scope: !459, inlinedAt: !395)
!608 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !609)
!609 = distinct !DILocation(line: 1057, column: 5, scope: !465, inlinedAt: !395)
!610 = !DILocation(line: 1054, column: 9, scope: !468, inlinedAt: !395)
!611 = !DILocation(line: 1054, column: 7, scope: !468, inlinedAt: !395)
!612 = !DILocation(line: 1060, column: 3, scope: !459, inlinedAt: !395)
!613 = !DILocation(line: 311, column: 19, scope: !400)
!614 = !DILocation(line: 313, column: 23, scope: !615)
!615 = distinct !DILexicalBlock(scope: !400, file: !11, line: 313, column: 23)
!616 = !DILocation(line: 313, column: 44, scope: !615)
!617 = !DILocation(line: 313, column: 23, scope: !400)
!618 = !DILocation(line: 315, column: 19, scope: !619)
!619 = distinct !DILexicalBlock(scope: !615, file: !11, line: 313, column: 50)
!620 = !DILocation(line: 318, column: 25, scope: !421)
!621 = !DILocation(line: 318, column: 23, scope: !400)
!622 = !DILocation(line: 319, column: 43, scope: !623)
!623 = distinct !DILexicalBlock(scope: !421, file: !11, line: 318, column: 55)
!624 = !DILocation(line: 320, column: 30, scope: !623)
!625 = !DILocation(line: 321, column: 25, scope: !626)
!626 = distinct !DILexicalBlock(scope: !623, file: !11, line: 321, column: 25)
!627 = !DILocation(line: 321, column: 30, scope: !626)
!628 = !DILocation(line: 321, column: 27, scope: !626)
!629 = !DILocation(line: 321, column: 25, scope: !623)
!630 = !DILocation(line: 322, column: 27, scope: !631)
!631 = distinct !DILexicalBlock(scope: !626, file: !11, line: 321, column: 34)
!632 = !DILocation(line: 322, column: 25, scope: !631)
!633 = !DILocation(line: 323, column: 21, scope: !631)
!634 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !635)
!635 = distinct !DILocation(line: 325, column: 23, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !11, line: 324, column: 23)
!637 = distinct !DILexicalBlock(scope: !626, file: !11, line: 323, column: 28)
!638 = !DILocation(line: 329, column: 42, scope: !639)
!639 = distinct !DILexicalBlock(scope: !623, file: !11, line: 328, column: 21)
!640 = !DILocation(line: 330, column: 62, scope: !639)
!641 = !DILocation(line: 331, column: 46, scope: !639)
!642 = !DILocation(line: 331, column: 79, scope: !639)
!643 = !DILocation(line: 331, column: 32, scope: !639)
!644 = !DILocation(line: 331, column: 30, scope: !639)
!645 = !DILocation(line: 333, column: 19, scope: !623)
!646 = !DILocation(line: 334, column: 43, scope: !420)
!647 = !DILocation(line: 335, column: 30, scope: !420)
!648 = !DILocation(line: 336, column: 33, scope: !420)
!649 = !DILocation(line: 336, column: 31, scope: !420)
!650 = !DILocation(line: 337, column: 33, scope: !420)
!651 = !DILocation(line: 337, column: 74, scope: !420)
!652 = !DILocation(line: 337, column: 31, scope: !420)
!653 = !DILocation(line: 338, column: 40, scope: !420)
!654 = !DILocation(line: 339, column: 25, scope: !655)
!655 = distinct !DILexicalBlock(scope: !420, file: !11, line: 339, column: 25)
!656 = !DILocation(line: 339, column: 30, scope: !655)
!657 = !DILocation(line: 339, column: 27, scope: !655)
!658 = !DILocation(line: 339, column: 25, scope: !420)
!659 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !660)
!660 = distinct !DILocation(line: 341, column: 23, scope: !661)
!661 = distinct !DILexicalBlock(scope: !662, file: !11, line: 340, column: 23)
!662 = distinct !DILexicalBlock(scope: !655, file: !11, line: 339, column: 34)
!663 = !DILocation(line: 343, column: 21, scope: !662)
!664 = !DILocation(line: 344, column: 27, scope: !665)
!665 = distinct !DILexicalBlock(scope: !666, file: !11, line: 344, column: 27)
!666 = distinct !DILexicalBlock(scope: !655, file: !11, line: 343, column: 28)
!667 = !DILocation(line: 344, column: 42, scope: !665)
!668 = !DILocation(line: 344, column: 27, scope: !666)
!669 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !670)
!670 = distinct !DILocation(line: 346, column: 25, scope: !671)
!671 = distinct !DILexicalBlock(scope: !672, file: !11, line: 345, column: 25)
!672 = distinct !DILexicalBlock(scope: !665, file: !11, line: 344, column: 48)
!673 = !DILocation(line: 348, column: 23, scope: !672)
!674 = !DILocation(line: 349, column: 40, scope: !675)
!675 = distinct !DILexicalBlock(scope: !665, file: !11, line: 348, column: 30)
!676 = !DILocation(line: 353, column: 33, scope: !677)
!677 = distinct !DILexicalBlock(scope: !420, file: !11, line: 352, column: 21)
!678 = !DILocation(line: 353, column: 74, scope: !677)
!679 = !DILocation(line: 353, column: 31, scope: !677)
!680 = !DILocation(line: 354, column: 38, scope: !677)
!681 = !DILocation(line: 354, column: 36, scope: !677)
!682 = !DILocation(line: 355, column: 36, scope: !677)
!683 = !DILocation(line: 359, column: 46, scope: !677)
!684 = !DILocation(line: 359, column: 79, scope: !677)
!685 = !DILocation(line: 359, column: 32, scope: !677)
!686 = !DILocation(line: 359, column: 30, scope: !677)
!687 = !DILocation(line: 361, column: 42, scope: !688)
!688 = distinct !DILexicalBlock(scope: !420, file: !11, line: 361, column: 21)
!689 = !DILocation(line: 361, column: 35, scope: !688)
!690 = !DILocation(line: 361, column: 33, scope: !688)
!691 = !DILocation(line: 361, column: 25, scope: !692)
!692 = distinct !DILexicalBlock(scope: !688, file: !11, line: 361, column: 25)
!693 = !DILocation(line: 361, column: 37, scope: !692)
!694 = !DILocation(line: 361, column: 25, scope: !688)
!695 = !DILocation(line: 363, column: 45, scope: !696)
!696 = distinct !DILexicalBlock(scope: !697, file: !11, line: 362, column: 23)
!697 = distinct !DILexicalBlock(scope: !692, file: !11, line: 361, column: 46)
!698 = !DILocation(line: 363, column: 56, scope: !696)
!699 = !DILocation(line: 363, column: 67, scope: !696)
!700 = !DILocation(line: 363, column: 23, scope: !696)
!701 = !DILocation(line: 364, column: 34, scope: !696)
!702 = !DILocation(line: 364, column: 32, scope: !696)
!703 = !DILocation(line: 366, column: 21, scope: !697)
!704 = !DILocation(line: 370, column: 56, scope: !419)
!705 = !DILocation(line: 371, column: 45, scope: !419)
!706 = !DILocation(line: 371, column: 43, scope: !419)
!707 = !DILocation(line: 372, column: 32, scope: !419)
!708 = !DILocation(line: 372, column: 30, scope: !419)
!709 = !DILocation(line: 373, column: 48, scope: !419)
!710 = !DILocation(line: 374, column: 40, scope: !419)
!711 = !DILocation(line: 374, column: 21, scope: !419)
!712 = !DILocation(line: 1053, column: 7, scope: !458, inlinedAt: !418)
!713 = !DILocation(line: 1053, column: 12, scope: !458, inlinedAt: !418)
!714 = !DILocation(line: 1053, column: 9, scope: !458, inlinedAt: !418)
!715 = !DILocation(line: 1053, column: 7, scope: !459, inlinedAt: !418)
!716 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !717)
!717 = distinct !DILocation(line: 1057, column: 5, scope: !465, inlinedAt: !418)
!718 = !DILocation(line: 1054, column: 9, scope: !468, inlinedAt: !418)
!719 = !DILocation(line: 1054, column: 7, scope: !468, inlinedAt: !418)
!720 = !DILocation(line: 1060, column: 3, scope: !459, inlinedAt: !418)
!721 = !DILocation(line: 377, column: 19, scope: !400)
!722 = !DILocation(line: 379, column: 48, scope: !400)
!723 = !DILocation(line: 380, column: 41, scope: !400)
!724 = !DILocation(line: 381, column: 28, scope: !400)
!725 = !DILocation(line: 382, column: 23, scope: !726)
!726 = distinct !DILexicalBlock(scope: !400, file: !11, line: 382, column: 23)
!727 = !DILocation(line: 382, column: 28, scope: !726)
!728 = !DILocation(line: 382, column: 25, scope: !726)
!729 = !DILocation(line: 382, column: 23, scope: !400)
!730 = !DILocation(line: 383, column: 25, scope: !731)
!731 = distinct !DILexicalBlock(scope: !726, file: !11, line: 382, column: 32)
!732 = !DILocation(line: 383, column: 23, scope: !731)
!733 = !DILocation(line: 384, column: 19, scope: !731)
!734 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !735)
!735 = distinct !DILocation(line: 386, column: 21, scope: !736)
!736 = distinct !DILexicalBlock(scope: !737, file: !11, line: 385, column: 21)
!737 = distinct !DILexicalBlock(scope: !726, file: !11, line: 384, column: 26)
!738 = !DILocation(line: 390, column: 40, scope: !739)
!739 = distinct !DILexicalBlock(scope: !400, file: !11, line: 389, column: 19)
!740 = !DILocation(line: 391, column: 60, scope: !739)
!741 = !DILocation(line: 392, column: 44, scope: !739)
!742 = !DILocation(line: 392, column: 77, scope: !739)
!743 = !DILocation(line: 392, column: 30, scope: !739)
!744 = !DILocation(line: 392, column: 28, scope: !739)
!745 = !DILocation(line: 394, column: 19, scope: !400)
!746 = !DILocation(line: 396, column: 54, scope: !400)
!747 = !DILocation(line: 397, column: 48, scope: !400)
!748 = !DILocation(line: 398, column: 48, scope: !400)
!749 = !DILocation(line: 399, column: 23, scope: !750)
!750 = distinct !DILexicalBlock(scope: !400, file: !11, line: 399, column: 23)
!751 = !DILocation(line: 399, column: 28, scope: !750)
!752 = !DILocation(line: 399, column: 25, scope: !750)
!753 = !DILocation(line: 399, column: 23, scope: !400)
!754 = !DILocation(line: 400, column: 25, scope: !755)
!755 = distinct !DILexicalBlock(scope: !750, file: !11, line: 399, column: 32)
!756 = !DILocation(line: 400, column: 23, scope: !755)
!757 = !DILocation(line: 401, column: 19, scope: !755)
!758 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !759)
!759 = distinct !DILocation(line: 403, column: 21, scope: !760)
!760 = distinct !DILexicalBlock(scope: !761, file: !11, line: 402, column: 21)
!761 = distinct !DILexicalBlock(scope: !750, file: !11, line: 401, column: 26)
!762 = !DILocation(line: 407, column: 40, scope: !763)
!763 = distinct !DILexicalBlock(scope: !400, file: !11, line: 406, column: 19)
!764 = !DILocation(line: 408, column: 60, scope: !763)
!765 = !DILocation(line: 409, column: 41, scope: !763)
!766 = !DILocation(line: 410, column: 28, scope: !763)
!767 = !DILocation(line: 411, column: 44, scope: !763)
!768 = !DILocation(line: 411, column: 77, scope: !763)
!769 = !DILocation(line: 411, column: 30, scope: !763)
!770 = !DILocation(line: 411, column: 28, scope: !763)
!771 = !DILocation(line: 413, column: 23, scope: !428)
!772 = !DILocation(line: 413, column: 66, scope: !428)
!773 = !DILocation(line: 413, column: 23, scope: !400)
!774 = !DILocation(line: 415, column: 47, scope: !426)
!775 = !DILocation(line: 415, column: 21, scope: !426)
!776 = !DILocation(line: 948, column: 15, scope: !432, inlinedAt: !425)
!777 = !DILocation(line: 948, column: 13, scope: !432, inlinedAt: !425)
!778 = !DILocation(line: 949, column: 7, scope: !779, inlinedAt: !425)
!779 = distinct !DILexicalBlock(scope: !432, file: !11, line: 949, column: 7)
!780 = !DILocation(line: 949, column: 17, scope: !779, inlinedAt: !425)
!781 = !DILocation(line: 949, column: 7, scope: !432, inlinedAt: !425)
!782 = !DILocation(line: 954, column: 7, scope: !783, inlinedAt: !425)
!783 = distinct !DILexicalBlock(scope: !784, file: !11, line: 952, column: 12)
!784 = distinct !DILexicalBlock(scope: !785, file: !11, line: 952, column: 9)
!785 = distinct !DILexicalBlock(scope: !779, file: !11, line: 951, column: 10)
!786 = !DILocation(line: 956, column: 7, scope: !783, inlinedAt: !425)
!787 = !DILocation(line: 962, column: 1, scope: !41, inlinedAt: !425)
!788 = !DILocation(line: 418, column: 19, scope: !427)
!789 = !DILocation(line: 421, column: 23, scope: !439)
!790 = !DILocation(line: 421, column: 58, scope: !439)
!791 = !DILocation(line: 421, column: 23, scope: !400)
!792 = !DILocation(line: 423, column: 42, scope: !437)
!793 = !DILocation(line: 423, column: 21, scope: !437)
!794 = !DILocation(line: 882, column: 15, scope: !441, inlinedAt: !436)
!795 = !DILocation(line: 882, column: 13, scope: !441, inlinedAt: !436)
!796 = !DILocation(line: 883, column: 7, scope: !797, inlinedAt: !436)
!797 = distinct !DILexicalBlock(scope: !441, file: !11, line: 883, column: 7)
!798 = !DILocation(line: 883, column: 17, scope: !797, inlinedAt: !436)
!799 = !DILocation(line: 883, column: 7, scope: !441, inlinedAt: !436)
!800 = !DILocation(line: 888, column: 7, scope: !801, inlinedAt: !436)
!801 = distinct !DILexicalBlock(scope: !802, file: !11, line: 886, column: 12)
!802 = distinct !DILexicalBlock(scope: !803, file: !11, line: 886, column: 9)
!803 = distinct !DILexicalBlock(scope: !797, file: !11, line: 885, column: 10)
!804 = !DILocation(line: 890, column: 7, scope: !801, inlinedAt: !436)
!805 = !DILocation(line: 896, column: 1, scope: !32, inlinedAt: !436)
!806 = !DILocation(line: 425, column: 19, scope: !438)
!807 = !DILocation(line: 428, column: 62, scope: !400)
!808 = !DILocation(line: 429, column: 19, scope: !400)
!809 = !DILocation(line: 431, column: 23, scope: !810)
!810 = distinct !DILexicalBlock(scope: !400, file: !11, line: 431, column: 23)
!811 = !DILocation(line: 431, column: 28, scope: !810)
!812 = !DILocation(line: 431, column: 25, scope: !810)
!813 = !DILocation(line: 431, column: 23, scope: !400)
!814 = !DILocation(line: 432, column: 25, scope: !815)
!815 = distinct !DILexicalBlock(scope: !810, file: !11, line: 431, column: 32)
!816 = !DILocation(line: 432, column: 23, scope: !815)
!817 = !DILocation(line: 433, column: 19, scope: !815)
!818 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !819)
!819 = distinct !DILocation(line: 435, column: 21, scope: !820)
!820 = distinct !DILexicalBlock(scope: !821, file: !11, line: 434, column: 21)
!821 = distinct !DILexicalBlock(scope: !810, file: !11, line: 433, column: 26)
!822 = !DILocation(line: 439, column: 40, scope: !823)
!823 = distinct !DILexicalBlock(scope: !400, file: !11, line: 438, column: 19)
!824 = !DILocation(line: 440, column: 60, scope: !823)
!825 = !DILocation(line: 441, column: 44, scope: !823)
!826 = !DILocation(line: 441, column: 77, scope: !823)
!827 = !DILocation(line: 441, column: 30, scope: !823)
!828 = !DILocation(line: 441, column: 28, scope: !823)
!829 = !DILocation(line: 443, column: 17, scope: !400)
!830 = !DILocation(line: 443, column: 24, scope: !401)
!831 = !DILocation(line: 454, column: 24, scope: !381)
!832 = !DILocation(line: 455, column: 7, scope: !833)
!833 = distinct !DILexicalBlock(scope: !381, file: !11, line: 455, column: 7)
!834 = !DILocation(line: 455, column: 28, scope: !833)
!835 = !DILocation(line: 455, column: 7, scope: !381)
!836 = !DILocation(line: 457, column: 3, scope: !837)
!837 = distinct !DILexicalBlock(scope: !833, file: !11, line: 455, column: 34)
!838 = !DILocation(line: 460, column: 11, scope: !381)
!839 = !DILocation(line: 460, column: 3, scope: !381)
!840 = !DILocation(line: 462, column: 1, scope: !16)
!841 = !DILocation(line: 1049, column: 29, scope: !44)
!842 = !DILocation(line: 1049, column: 39, scope: !44)
!843 = !DILocation(line: 1053, column: 7, scope: !458)
!844 = !DILocation(line: 1053, column: 12, scope: !458)
!845 = !DILocation(line: 1053, column: 9, scope: !458)
!846 = !DILocation(line: 1053, column: 7, scope: !459)
!847 = !DILocation(line: 1054, column: 9, scope: !468)
!848 = !DILocation(line: 1054, column: 7, scope: !468)
!849 = !DILocation(line: 1055, column: 3, scope: !468)
!850 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !851)
!851 = distinct !DILocation(line: 1057, column: 5, scope: !465)
!852 = !DILocation(line: 1060, column: 3, scope: !459)
!853 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !17, file: !11, line: 463, type: !14)
!854 = !DILocation(line: 463, column: 27, scope: !17)
!855 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !17, file: !11, line: 463, type: !14)
!856 = !DILocation(line: 463, column: 46, scope: !17)
!857 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !17, file: !11, line: 464, type: !14)
!858 = !DILocation(line: 464, column: 7, scope: !17)
!859 = !DILocation(line: 464, column: 39, scope: !17)
!860 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !17, file: !11, line: 465, type: !14)
!861 = !DILocation(line: 465, column: 7, scope: !17)
!862 = !DILocation(line: 465, column: 50, scope: !17)
!863 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !17, file: !11, line: 466, type: !14)
!864 = !DILocation(line: 466, column: 7, scope: !17)
!865 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__TargetObject", scope: !17, file: !11, line: 467, type: !14)
!866 = !DILocation(line: 467, column: 7, scope: !17)
!867 = !DILocation(line: 467, column: 41, scope: !17)
!868 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__MaxTransferSize", scope: !17, file: !11, line: 468, type: !14)
!869 = !DILocation(line: 468, column: 7, scope: !17)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__DriveType", scope: !17, file: !11, line: 469, type: !14)
!871 = !DILocation(line: 469, column: 7, scope: !17)
!872 = !DILocation(line: 469, column: 38, scope: !17)
!873 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__PerpendicularMode", scope: !17, file: !11, line: 470, type: !14)
!874 = !DILocation(line: 470, column: 7, scope: !17)
!875 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__DeviceUnit", scope: !17, file: !11, line: 471, type: !14)
!876 = !DILocation(line: 471, column: 7, scope: !17)
!877 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__DriveOnValue", scope: !17, file: !11, line: 472, type: !14)
!878 = !DILocation(line: 472, column: 7, scope: !17)
!879 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__UnderlyingPDO", scope: !17, file: !11, line: 473, type: !14)
!880 = !DILocation(line: 473, column: 7, scope: !17)
!881 = !DILocation(line: 473, column: 42, scope: !17)
!882 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__InterfaceString", scope: !17, file: !11, line: 474, type: !14)
!883 = !DILocation(line: 474, column: 7, scope: !17)
!884 = !DILocation(line: 474, column: 44, scope: !17)
!885 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__IsStarted", scope: !17, file: !11, line: 475, type: !14)
!886 = !DILocation(line: 475, column: 7, scope: !17)
!887 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__HoldNewRequests", scope: !17, file: !11, line: 476, type: !14)
!888 = !DILocation(line: 476, column: 7, scope: !17)
!889 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ntStatus", scope: !17, file: !11, line: 477, type: !14)
!890 = !DILocation(line: 477, column: 7, scope: !17)
!891 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pnpStatus", scope: !17, file: !11, line: 478, type: !14)
!892 = !DILocation(line: 478, column: 7, scope: !17)
!893 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doneEvent", scope: !17, file: !11, line: 479, type: !14)
!894 = !DILocation(line: 479, column: 7, scope: !17)
!895 = !DILocation(line: 479, column: 19, scope: !17)
!896 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo", scope: !17, file: !11, line: 480, type: !14)
!897 = !DILocation(line: 480, column: 7, scope: !17)
!898 = !DILocation(line: 480, column: 17, scope: !17)
!899 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__BufferCount", scope: !17, file: !11, line: 481, type: !14)
!900 = !DILocation(line: 481, column: 7, scope: !17)
!901 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__BufferSize", scope: !17, file: !11, line: 482, type: !14)
!902 = !DILocation(line: 482, column: 7, scope: !17)
!903 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__MaxTransferSize", scope: !17, file: !11, line: 483, type: !14)
!904 = !DILocation(line: 483, column: 7, scope: !17)
!905 = !DILocation(line: 483, column: 34, scope: !17)
!906 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__AcpiBios", scope: !17, file: !11, line: 484, type: !14)
!907 = !DILocation(line: 484, column: 7, scope: !17)
!908 = !DILocation(line: 484, column: 27, scope: !17)
!909 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__AcpiFdiSupported", scope: !17, file: !11, line: 485, type: !14)
!910 = !DILocation(line: 485, column: 7, scope: !17)
!911 = !DILocation(line: 485, column: 35, scope: !17)
!912 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__PeripheralNumber", scope: !17, file: !11, line: 486, type: !14)
!913 = !DILocation(line: 486, column: 7, scope: !17)
!914 = !DILocation(line: 486, column: 35, scope: !17)
!915 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__BusType", scope: !17, file: !11, line: 487, type: !14)
!916 = !DILocation(line: 487, column: 7, scope: !17)
!917 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__ControllerNumber", scope: !17, file: !11, line: 488, type: !14)
!918 = !DILocation(line: 488, column: 7, scope: !17)
!919 = !DILocation(line: 488, column: 35, scope: !17)
!920 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__UnitNumber", scope: !17, file: !11, line: 489, type: !14)
!921 = !DILocation(line: 489, column: 7, scope: !17)
!922 = !DILocation(line: 489, column: 29, scope: !17)
!923 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__BusNumber", scope: !17, file: !11, line: 490, type: !14)
!924 = !DILocation(line: 490, column: 7, scope: !17)
!925 = !DILocation(line: 490, column: 28, scope: !17)
!926 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Dc", scope: !17, file: !11, line: 491, type: !14)
!927 = !DILocation(line: 491, column: 7, scope: !17)
!928 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Fp", scope: !17, file: !11, line: 492, type: !14)
!929 = !DILocation(line: 492, column: 7, scope: !17)
!930 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension", scope: !17, file: !11, line: 493, type: !14)
!931 = !DILocation(line: 493, column: 7, scope: !17)
!932 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp", scope: !17, file: !11, line: 494, type: !14)
!933 = !DILocation(line: 494, column: 7, scope: !17)
!934 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___0", scope: !17, file: !11, line: 495, type: !14)
!935 = !DILocation(line: 495, column: 7, scope: !17)
!936 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp", scope: !17, file: !11, line: 496, type: !14)
!937 = !DILocation(line: 496, column: 7, scope: !17)
!938 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp__Control", scope: !17, file: !11, line: 497, type: !14)
!939 = !DILocation(line: 497, column: 7, scope: !17)
!940 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___1", scope: !17, file: !11, line: 498, type: !14)
!941 = !DILocation(line: 498, column: 7, scope: !17)
!942 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Control", scope: !17, file: !11, line: 499, type: !14)
!943 = !DILocation(line: 499, column: 7, scope: !17)
!944 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Context", scope: !17, file: !11, line: 500, type: !14)
!945 = !DILocation(line: 500, column: 7, scope: !17)
!946 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "InterfaceType", scope: !17, file: !11, line: 501, type: !14)
!947 = !DILocation(line: 501, column: 7, scope: !17)
!948 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86", scope: !17, file: !11, line: 502, type: !14)
!949 = !DILocation(line: 502, column: 7, scope: !17)
!950 = !DILocation(line: 502, column: 61, scope: !17)
!951 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp42", scope: !17, file: !11, line: 503, type: !4)
!952 = !DILocation(line: 503, column: 8, scope: !17)
!953 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp43", scope: !17, file: !11, line: 504, type: !14)
!954 = !DILocation(line: 504, column: 7, scope: !17)
!955 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp44", scope: !17, file: !11, line: 505, type: !14)
!956 = !DILocation(line: 505, column: 7, scope: !17)
!957 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp45", scope: !17, file: !11, line: 506, type: !14)
!958 = !DILocation(line: 506, column: 7, scope: !17)
!959 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp46", scope: !17, file: !11, line: 507, type: !14)
!960 = !DILocation(line: 507, column: 7, scope: !17)
!961 = !DILocation(line: 507, column: 21, scope: !17)
!962 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp47", scope: !17, file: !11, line: 508, type: !14)
!963 = !DILocation(line: 508, column: 7, scope: !17)
!964 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp48", scope: !17, file: !11, line: 509, type: !14)
!965 = !DILocation(line: 509, column: 7, scope: !17)
!966 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp49", scope: !17, file: !11, line: 510, type: !14)
!967 = !DILocation(line: 510, column: 7, scope: !17)
!968 = !DILocation(line: 505, column: 8, scope: !969)
!969 = distinct !DILexicalBlock(scope: !17, file: !11, line: 512, column: 3)
!970 = !DILocation(line: 505, column: 6, scope: !969)
!971 = !DILocation(line: 506, column: 8, scope: !969)
!972 = !DILocation(line: 506, column: 6, scope: !969)
!973 = !DILocation(line: 507, column: 23, scope: !969)
!974 = !DILocation(line: 507, column: 21, scope: !969)
!975 = !DILocation(line: 508, column: 11, scope: !969)
!976 = !DILocation(line: 508, column: 9, scope: !969)
!977 = !DILocation(line: 509, column: 15, scope: !969)
!978 = !DILocation(line: 509, column: 13, scope: !969)
!979 = !DILocation(line: 510, column: 15, scope: !969)
!980 = !DILocation(line: 510, column: 56, scope: !969)
!981 = !DILocation(line: 510, column: 13, scope: !969)
!982 = !DILocation(line: 511, column: 22, scope: !969)
!983 = !DILocation(line: 512, column: 7, scope: !984)
!984 = distinct !DILexicalBlock(scope: !969, file: !11, line: 512, column: 7)
!985 = !DILocation(line: 512, column: 12, scope: !984)
!986 = !DILocation(line: 512, column: 9, scope: !984)
!987 = !DILocation(line: 94, column: 31, scope: !10, inlinedAt: !988)
!988 = distinct !DILocation(line: 553, column: 20, scope: !989)
!989 = distinct !DILexicalBlock(scope: !990, file: !11, line: 552, column: 9)
!990 = distinct !DILexicalBlock(scope: !991, file: !11, line: 551, column: 38)
!991 = distinct !DILexicalBlock(scope: !992, file: !11, line: 551, column: 11)
!992 = distinct !DILexicalBlock(scope: !993, file: !11, line: 550, column: 28)
!993 = distinct !DILexicalBlock(scope: !994, file: !11, line: 550, column: 9)
!994 = distinct !DILexicalBlock(scope: !995, file: !11, line: 548, column: 22)
!995 = distinct !DILexicalBlock(scope: !969, file: !11, line: 548, column: 7)
!996 = !DILocation(line: 94, column: 55, scope: !10, inlinedAt: !988)
!997 = !DILocation(line: 1049, column: 29, scope: !44, inlinedAt: !998)
!998 = distinct !DILocation(line: 626, column: 3, scope: !999)
!999 = distinct !DILexicalBlock(scope: !969, file: !11, line: 619, column: 3)
!1000 = !DILocation(line: 1049, column: 39, scope: !44, inlinedAt: !998)
!1001 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "BusType", arg: 1, scope: !35, file: !11, line: 898, type: !14)
!1002 = !DILocation(line: 898, column: 34, scope: !35, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 581, column: 20, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !11, line: 577, column: 9)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !11, line: 572, column: 17)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !11, line: 571, column: 7)
!1007 = distinct !DILexicalBlock(scope: !993, file: !11, line: 561, column: 12)
!1008 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "BusNumber", arg: 2, scope: !35, file: !11, line: 898, type: !14)
!1009 = !DILocation(line: 898, column: 48, scope: !35, inlinedAt: !1003)
!1010 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ControllerType", arg: 3, scope: !35, file: !11, line: 898, type: !14)
!1011 = !DILocation(line: 898, column: 64, scope: !35, inlinedAt: !1003)
!1012 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ControllerNumber", arg: 4, scope: !35, file: !11, line: 898, type: !14)
!1013 = !DILocation(line: 898, column: 85, scope: !35, inlinedAt: !1003)
!1014 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PeripheralType", arg: 5, scope: !35, file: !11, line: 899, type: !14)
!1015 = !DILocation(line: 899, column: 34, scope: !35, inlinedAt: !1003)
!1016 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PeripheralNumber", arg: 6, scope: !35, file: !11, line: 899, type: !14)
!1017 = !DILocation(line: 899, column: 55, scope: !35, inlinedAt: !1003)
!1018 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "CalloutRoutine", arg: 7, scope: !35, file: !11, line: 899, type: !14)
!1019 = !DILocation(line: 899, column: 78, scope: !35, inlinedAt: !1003)
!1020 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 8, scope: !35, file: !11, line: 900, type: !14)
!1021 = !DILocation(line: 900, column: 34, scope: !35, inlinedAt: !1003)
!1022 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_7", scope: !1023, file: !11, line: 904, type: !14)
!1023 = distinct !DILexicalBlock(scope: !35, file: !11, line: 903, column: 3)
!1024 = !DILocation(line: 904, column: 7, scope: !1023, inlinedAt: !1003)
!1025 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PhysicalDeviceObject", arg: 1, scope: !38, file: !11, line: 921, type: !14)
!1026 = !DILocation(line: 921, column: 35, scope: !38, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 604, column: 19, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !11, line: 603, column: 7)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !11, line: 595, column: 24)
!1030 = distinct !DILexicalBlock(scope: !994, file: !11, line: 595, column: 9)
!1031 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InterfaceClassGuid", arg: 2, scope: !38, file: !11, line: 921, type: !14)
!1032 = !DILocation(line: 921, column: 62, scope: !38, inlinedAt: !1027)
!1033 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ReferenceString", arg: 3, scope: !38, file: !11, line: 922, type: !14)
!1034 = !DILocation(line: 922, column: 35, scope: !38, inlinedAt: !1027)
!1035 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SymbolicLinkName", arg: 4, scope: !38, file: !11, line: 922, type: !14)
!1036 = !DILocation(line: 922, column: 57, scope: !38, inlinedAt: !1027)
!1037 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_8", scope: !1038, file: !11, line: 926, type: !14)
!1038 = distinct !DILexicalBlock(scope: !38, file: !11, line: 925, column: 3)
!1039 = !DILocation(line: 926, column: 7, scope: !1038, inlinedAt: !1027)
!1040 = !DILocation(line: 943, column: 35, scope: !41, inlinedAt: !1041)
!1041 = distinct !DILocation(line: 609, column: 21, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !11, line: 608, column: 9)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !11, line: 607, column: 27)
!1044 = distinct !DILexicalBlock(scope: !1029, file: !11, line: 607, column: 11)
!1045 = !DILocation(line: 943, column: 58, scope: !41, inlinedAt: !1041)
!1046 = !DILocation(line: 947, column: 7, scope: !432, inlinedAt: !1041)
!1047 = !DILocation(line: 512, column: 7, scope: !969)
!1048 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !1049)
!1049 = distinct !DILocation(line: 514, column: 5, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !11, line: 513, column: 5)
!1051 = distinct !DILexicalBlock(scope: !984, file: !11, line: 512, column: 16)
!1052 = !DILocation(line: 516, column: 3, scope: !1051)
!1053 = !DILocation(line: 517, column: 9, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !11, line: 517, column: 9)
!1055 = distinct !DILexicalBlock(scope: !984, file: !11, line: 516, column: 10)
!1056 = !DILocation(line: 517, column: 24, scope: !1054)
!1057 = !DILocation(line: 517, column: 9, scope: !1055)
!1058 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 519, column: 7, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !11, line: 518, column: 7)
!1061 = distinct !DILexicalBlock(scope: !1054, file: !11, line: 517, column: 30)
!1062 = !DILocation(line: 521, column: 5, scope: !1061)
!1063 = !DILocation(line: 522, column: 22, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1054, file: !11, line: 521, column: 12)
!1065 = !DILocation(line: 526, column: 15, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !969, file: !11, line: 525, column: 3)
!1067 = !DILocation(line: 526, column: 56, scope: !1066)
!1068 = !DILocation(line: 526, column: 13, scope: !1066)
!1069 = !DILocation(line: 527, column: 20, scope: !1066)
!1070 = !DILocation(line: 527, column: 18, scope: !1066)
!1071 = !DILocation(line: 528, column: 18, scope: !1066)
!1072 = !DILocation(line: 532, column: 28, scope: !1066)
!1073 = !DILocation(line: 532, column: 61, scope: !1066)
!1074 = !DILocation(line: 532, column: 14, scope: !1066)
!1075 = !DILocation(line: 532, column: 12, scope: !1066)
!1076 = !DILocation(line: 534, column: 24, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !969, file: !11, line: 534, column: 3)
!1078 = !DILocation(line: 534, column: 17, scope: !1077)
!1079 = !DILocation(line: 534, column: 15, scope: !1077)
!1080 = !DILocation(line: 534, column: 7, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1077, file: !11, line: 534, column: 7)
!1082 = !DILocation(line: 534, column: 19, scope: !1081)
!1083 = !DILocation(line: 534, column: 7, scope: !1077)
!1084 = !DILocation(line: 536, column: 38, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !11, line: 535, column: 5)
!1086 = distinct !DILexicalBlock(scope: !1081, file: !11, line: 534, column: 28)
!1087 = !DILocation(line: 536, column: 49, scope: !1085)
!1088 = !DILocation(line: 536, column: 60, scope: !1085)
!1089 = !DILocation(line: 536, column: 16, scope: !1085)
!1090 = !DILocation(line: 536, column: 14, scope: !1085)
!1091 = !DILocation(line: 537, column: 16, scope: !1085)
!1092 = !DILocation(line: 537, column: 14, scope: !1085)
!1093 = !DILocation(line: 539, column: 3, scope: !1086)
!1094 = !DILocation(line: 543, column: 24, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !969, file: !11, line: 541, column: 3)
!1096 = !DILocation(line: 544, column: 23, scope: !1095)
!1097 = !DILocation(line: 545, column: 28, scope: !1095)
!1098 = !DILocation(line: 545, column: 61, scope: !1095)
!1099 = !DILocation(line: 545, column: 74, scope: !1095)
!1100 = !DILocation(line: 545, column: 14, scope: !1095)
!1101 = !DILocation(line: 545, column: 12, scope: !1095)
!1102 = !DILocation(line: 548, column: 7, scope: !995)
!1103 = !DILocation(line: 548, column: 16, scope: !995)
!1104 = !DILocation(line: 548, column: 7, scope: !969)
!1105 = !DILocation(line: 549, column: 42, scope: !994)
!1106 = !DILocation(line: 549, column: 40, scope: !994)
!1107 = !DILocation(line: 550, column: 9, scope: !993)
!1108 = !DILocation(line: 550, column: 9, scope: !994)
!1109 = !DILocation(line: 551, column: 11, scope: !991)
!1110 = !DILocation(line: 551, column: 11, scope: !992)
!1111 = !DILocation(line: 553, column: 42, scope: !989)
!1112 = !DILocation(line: 553, column: 61, scope: !989)
!1113 = !DILocation(line: 553, column: 20, scope: !989)
!1114 = !DILocation(line: 98, column: 3, scope: !117, inlinedAt: !988)
!1115 = !DILocation(line: 553, column: 18, scope: !989)
!1116 = !DILocation(line: 555, column: 13, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !990, file: !11, line: 555, column: 13)
!1118 = !DILocation(line: 555, column: 42, scope: !1117)
!1119 = !DILocation(line: 555, column: 13, scope: !990)
!1120 = !DILocation(line: 557, column: 9, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1117, file: !11, line: 555, column: 48)
!1122 = !DILocation(line: 558, column: 7, scope: !990)
!1123 = !DILocation(line: 559, column: 9, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !991, file: !11, line: 558, column: 14)
!1125 = !DILocation(line: 561, column: 5, scope: !992)
!1126 = !DILocation(line: 561, column: 12, scope: !993)
!1127 = !DILocation(line: 565, column: 11, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1007, file: !11, line: 565, column: 11)
!1129 = !DILocation(line: 565, column: 40, scope: !1128)
!1130 = !DILocation(line: 565, column: 11, scope: !1007)
!1131 = !DILocation(line: 567, column: 7, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !11, line: 565, column: 46)
!1133 = !DILocation(line: 570, column: 21, scope: !1007)
!1134 = !DILocation(line: 572, column: 7, scope: !1006)
!1135 = !DILocation(line: 572, column: 17, scope: !1006)
!1136 = !DILocation(line: 574, column: 13, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1005, file: !11, line: 574, column: 13)
!1138 = !DILocation(line: 574, column: 30, scope: !1137)
!1139 = !DILocation(line: 574, column: 27, scope: !1137)
!1140 = !DILocation(line: 574, column: 13, scope: !1005)
!1141 = !DILocation(line: 575, column: 11, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1137, file: !11, line: 574, column: 52)
!1143 = !DILocation(line: 580, column: 28, scope: !1004)
!1144 = !DILocation(line: 580, column: 26, scope: !1004)
!1145 = !DILocation(line: 581, column: 45, scope: !1004)
!1146 = !DILocation(line: 581, column: 63, scope: !1004)
!1147 = !DILocation(line: 582, column: 45, scope: !1004)
!1148 = !DILocation(line: 582, column: 49, scope: !1004)
!1149 = !DILocation(line: 582, column: 76, scope: !1004)
!1150 = !DILocation(line: 582, column: 80, scope: !1004)
!1151 = !DILocation(line: 583, column: 45, scope: !1004)
!1152 = !DILocation(line: 583, column: 63, scope: !1004)
!1153 = !DILocation(line: 581, column: 20, scope: !1004)
!1154 = !DILocation(line: 905, column: 15, scope: !1023, inlinedAt: !1003)
!1155 = !DILocation(line: 905, column: 13, scope: !1023, inlinedAt: !1003)
!1156 = !DILocation(line: 906, column: 7, scope: !1157, inlinedAt: !1003)
!1157 = distinct !DILexicalBlock(scope: !1023, file: !11, line: 906, column: 7)
!1158 = !DILocation(line: 906, column: 17, scope: !1157, inlinedAt: !1003)
!1159 = !DILocation(line: 906, column: 7, scope: !1023, inlinedAt: !1003)
!1160 = !DILocation(line: 911, column: 7, scope: !1161, inlinedAt: !1003)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !11, line: 909, column: 12)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !11, line: 909, column: 9)
!1163 = distinct !DILexicalBlock(scope: !1157, file: !11, line: 908, column: 10)
!1164 = !DILocation(line: 913, column: 7, scope: !1161, inlinedAt: !1003)
!1165 = !DILocation(line: 919, column: 1, scope: !35, inlinedAt: !1003)
!1166 = !DILocation(line: 581, column: 18, scope: !1004)
!1167 = !DILocation(line: 585, column: 13, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1005, file: !11, line: 585, column: 13)
!1169 = !DILocation(line: 585, column: 22, scope: !1168)
!1170 = !DILocation(line: 585, column: 13, scope: !1005)
!1171 = !DILocation(line: 586, column: 11, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1168, file: !11, line: 585, column: 28)
!1173 = !DILocation(line: 590, column: 23, scope: !1005)
!1174 = !DILocation(line: 593, column: 7, scope: !1006)
!1175 = !DILocation(line: 595, column: 9, scope: !1030)
!1176 = !DILocation(line: 595, column: 18, scope: !1030)
!1177 = !DILocation(line: 595, column: 9, scope: !994)
!1178 = !DILocation(line: 596, column: 11, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1029, file: !11, line: 596, column: 11)
!1180 = !DILocation(line: 596, column: 63, scope: !1179)
!1181 = !DILocation(line: 596, column: 11, scope: !1029)
!1182 = !DILocation(line: 597, column: 41, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1179, file: !11, line: 596, column: 69)
!1184 = !DILocation(line: 597, column: 39, scope: !1183)
!1185 = !DILocation(line: 598, column: 43, scope: !1183)
!1186 = !DILocation(line: 598, column: 41, scope: !1183)
!1187 = !DILocation(line: 599, column: 7, scope: !1183)
!1188 = !DILocation(line: 600, column: 41, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1179, file: !11, line: 599, column: 14)
!1190 = !DILocation(line: 600, column: 39, scope: !1189)
!1191 = !DILocation(line: 604, column: 45, scope: !1028)
!1192 = !DILocation(line: 604, column: 79, scope: !1028)
!1193 = !DILocation(line: 605, column: 48, scope: !1028)
!1194 = !DILocation(line: 604, column: 19, scope: !1028)
!1195 = !DILocation(line: 927, column: 15, scope: !1038, inlinedAt: !1027)
!1196 = !DILocation(line: 927, column: 13, scope: !1038, inlinedAt: !1027)
!1197 = !DILocation(line: 928, column: 7, scope: !1198, inlinedAt: !1027)
!1198 = distinct !DILexicalBlock(scope: !1038, file: !11, line: 928, column: 7)
!1199 = !DILocation(line: 928, column: 17, scope: !1198, inlinedAt: !1027)
!1200 = !DILocation(line: 928, column: 7, scope: !1038, inlinedAt: !1027)
!1201 = !DILocation(line: 933, column: 7, scope: !1202, inlinedAt: !1027)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !11, line: 931, column: 12)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !11, line: 931, column: 9)
!1204 = distinct !DILexicalBlock(scope: !1198, file: !11, line: 930, column: 10)
!1205 = !DILocation(line: 935, column: 7, scope: !1202, inlinedAt: !1027)
!1206 = !DILocation(line: 941, column: 1, scope: !38, inlinedAt: !1027)
!1207 = !DILocation(line: 604, column: 17, scope: !1028)
!1208 = !DILocation(line: 607, column: 11, scope: !1044)
!1209 = !DILocation(line: 607, column: 21, scope: !1044)
!1210 = !DILocation(line: 607, column: 11, scope: !1029)
!1211 = !DILocation(line: 609, column: 47, scope: !1042)
!1212 = !DILocation(line: 609, column: 21, scope: !1042)
!1213 = !DILocation(line: 948, column: 15, scope: !432, inlinedAt: !1041)
!1214 = !DILocation(line: 948, column: 13, scope: !432, inlinedAt: !1041)
!1215 = !DILocation(line: 949, column: 7, scope: !779, inlinedAt: !1041)
!1216 = !DILocation(line: 949, column: 17, scope: !779, inlinedAt: !1041)
!1217 = !DILocation(line: 949, column: 7, scope: !432, inlinedAt: !1041)
!1218 = !DILocation(line: 954, column: 7, scope: !783, inlinedAt: !1041)
!1219 = !DILocation(line: 956, column: 7, scope: !783, inlinedAt: !1041)
!1220 = !DILocation(line: 962, column: 1, scope: !41, inlinedAt: !1041)
!1221 = !DILocation(line: 609, column: 19, scope: !1042)
!1222 = !DILocation(line: 612, column: 7, scope: !1043)
!1223 = !DILocation(line: 615, column: 36, scope: !1029)
!1224 = !DILocation(line: 616, column: 42, scope: !1029)
!1225 = !DILocation(line: 617, column: 5, scope: !1029)
!1226 = !DILocation(line: 618, column: 3, scope: !994)
!1227 = !DILocation(line: 624, column: 27, scope: !999)
!1228 = !DILocation(line: 624, column: 25, scope: !999)
!1229 = !DILocation(line: 625, column: 14, scope: !999)
!1230 = !DILocation(line: 625, column: 12, scope: !999)
!1231 = !DILocation(line: 626, column: 22, scope: !999)
!1232 = !DILocation(line: 626, column: 3, scope: !999)
!1233 = !DILocation(line: 1053, column: 7, scope: !458, inlinedAt: !998)
!1234 = !DILocation(line: 1053, column: 12, scope: !458, inlinedAt: !998)
!1235 = !DILocation(line: 1053, column: 9, scope: !458, inlinedAt: !998)
!1236 = !DILocation(line: 1053, column: 7, scope: !459, inlinedAt: !998)
!1237 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !1238)
!1238 = distinct !DILocation(line: 1057, column: 5, scope: !465, inlinedAt: !998)
!1239 = !DILocation(line: 1054, column: 9, scope: !468, inlinedAt: !998)
!1240 = !DILocation(line: 1054, column: 7, scope: !468, inlinedAt: !998)
!1241 = !DILocation(line: 1060, column: 3, scope: !459, inlinedAt: !998)
!1242 = !DILocation(line: 628, column: 11, scope: !969)
!1243 = !DILocation(line: 628, column: 3, scope: !969)
!1244 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !18, file: !11, line: 631, type: !14)
!1245 = !DILocation(line: 631, column: 27, scope: !18)
!1246 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !18, file: !11, line: 631, type: !14)
!1247 = !DILocation(line: 631, column: 46, scope: !18)
!1248 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 3, scope: !18, file: !11, line: 631, type: !14)
!1249 = !DILocation(line: 631, column: 56, scope: !18)
!1250 = !DILocation(line: 636, column: 14, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !11, line: 635, column: 3)
!1252 = distinct !DILexicalBlock(scope: !18, file: !11, line: 634, column: 3)
!1253 = !DILocation(line: 636, column: 3, scope: !1251)
!1254 = !DILocation(line: 1064, column: 11, scope: !47, inlinedAt: !1255)
!1255 = distinct !DILocation(line: 636, column: 3, scope: !1251)
!1256 = !DILocation(line: 1064, column: 7, scope: !47, inlinedAt: !1255)
!1257 = !DILocation(line: 1067, column: 18, scope: !1258, inlinedAt: !1255)
!1258 = distinct !DILexicalBlock(scope: !47, file: !11, line: 1066, column: 3)
!1259 = !DILocation(line: 1068, column: 11, scope: !1258, inlinedAt: !1255)
!1260 = !DILocation(line: 1068, column: 3, scope: !1258, inlinedAt: !1255)
!1261 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 1, scope: !47, file: !11, line: 1063, type: !14)
!1262 = !DILocation(line: 1063, column: 20, scope: !47, inlinedAt: !1255)
!1263 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Increment", arg: 2, scope: !47, file: !11, line: 1063, type: !14)
!1264 = !DILocation(line: 1063, column: 32, scope: !47, inlinedAt: !1255)
!1265 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Wait", arg: 3, scope: !47, file: !11, line: 1063, type: !14)
!1266 = !DILocation(line: 1063, column: 48, scope: !47, inlinedAt: !1255)
!1267 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !47, file: !11, line: 1064, type: !14)
!1268 = !DILocation(line: 638, column: 3, scope: !1252)
!1269 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !21, file: !11, line: 641, type: !14)
!1270 = !DILocation(line: 641, column: 23, scope: !21)
!1271 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Ioctl", arg: 2, scope: !21, file: !11, line: 641, type: !14)
!1272 = !DILocation(line: 641, column: 42, scope: !21)
!1273 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Data", arg: 3, scope: !21, file: !11, line: 641, type: !14)
!1274 = !DILocation(line: 641, column: 54, scope: !21)
!1275 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ntStatus", scope: !21, file: !11, line: 642, type: !14)
!1276 = !DILocation(line: 642, column: 7, scope: !21)
!1277 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp", scope: !21, file: !11, line: 643, type: !14)
!1278 = !DILocation(line: 643, column: 7, scope: !21)
!1279 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack", scope: !21, file: !11, line: 644, type: !14)
!1280 = !DILocation(line: 644, column: 7, scope: !21)
!1281 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doneEvent", scope: !21, file: !11, line: 645, type: !14)
!1282 = !DILocation(line: 645, column: 7, scope: !21)
!1283 = !DILocation(line: 645, column: 19, scope: !21)
!1284 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ioStatus", scope: !21, file: !11, line: 646, type: !14)
!1285 = !DILocation(line: 646, column: 7, scope: !21)
!1286 = !DILocation(line: 646, column: 18, scope: !21)
!1287 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp__Tail__Overlay__CurrentStackLocation", scope: !21, file: !11, line: 647, type: !14)
!1288 = !DILocation(line: 647, column: 7, scope: !21)
!1289 = !DILocation(line: 647, column: 50, scope: !21)
!1290 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack__Parameters__DeviceIoControl__Type3InputBuffer", scope: !21, file: !11, line: 648, type: !14)
!1291 = !DILocation(line: 648, column: 7, scope: !21)
!1292 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp11", scope: !21, file: !11, line: 649, type: !4)
!1293 = !DILocation(line: 649, column: 8, scope: !21)
!1294 = !DILocation(line: 652, column: 39, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !11, line: 652, column: 3)
!1296 = distinct !DILexicalBlock(scope: !21, file: !11, line: 651, column: 3)
!1297 = !DILocation(line: 652, column: 46, scope: !1295)
!1298 = !DILocation(line: 652, column: 75, scope: !1295)
!1299 = !DILocation(line: 653, column: 39, scope: !1295)
!1300 = !DILocation(line: 652, column: 9, scope: !1295)
!1301 = !DILocation(line: 856, column: 16, scope: !29, inlinedAt: !1302)
!1302 = distinct !DILocation(line: 652, column: 9, scope: !1295)
!1303 = !DILocation(line: 856, column: 7, scope: !29, inlinedAt: !1302)
!1304 = !DILocation(line: 859, column: 13, scope: !1305, inlinedAt: !1302)
!1305 = distinct !DILexicalBlock(scope: !29, file: !11, line: 858, column: 3)
!1306 = !DILocation(line: 861, column: 15, scope: !1305, inlinedAt: !1302)
!1307 = !DILocation(line: 861, column: 13, scope: !1305, inlinedAt: !1302)
!1308 = !DILocation(line: 862, column: 7, scope: !1309, inlinedAt: !1302)
!1309 = distinct !DILexicalBlock(scope: !1305, file: !11, line: 862, column: 7)
!1310 = !DILocation(line: 862, column: 17, scope: !1309, inlinedAt: !1302)
!1311 = !DILocation(line: 862, column: 7, scope: !1305, inlinedAt: !1302)
!1312 = !DILocation(line: 867, column: 15, scope: !1313, inlinedAt: !1302)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !11, line: 865, column: 12)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !11, line: 865, column: 9)
!1315 = distinct !DILexicalBlock(scope: !1309, file: !11, line: 864, column: 10)
!1316 = !DILocation(line: 867, column: 7, scope: !1313, inlinedAt: !1302)
!1317 = !DILocation(line: 869, column: 7, scope: !1313, inlinedAt: !1302)
!1318 = !DILocation(line: 875, column: 1, scope: !29, inlinedAt: !1302)
!1319 = !DILocation(line: 652, column: 7, scope: !1295)
!1320 = !DILocation(line: 655, column: 7, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1296, file: !11, line: 655, column: 7)
!1322 = !DILocation(line: 655, column: 11, scope: !1321)
!1323 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "IoControlCode", arg: 1, scope: !29, file: !11, line: 852, type: !14)
!1324 = !DILocation(line: 852, column: 39, scope: !29, inlinedAt: !1302)
!1325 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 2, scope: !29, file: !11, line: 852, type: !14)
!1326 = !DILocation(line: 852, column: 59, scope: !29, inlinedAt: !1302)
!1327 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InputBuffer", arg: 3, scope: !29, file: !11, line: 852, type: !14)
!1328 = !DILocation(line: 852, column: 78, scope: !29, inlinedAt: !1302)
!1329 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InputBufferLength", arg: 4, scope: !29, file: !11, line: 853, type: !14)
!1330 = !DILocation(line: 853, column: 39, scope: !29, inlinedAt: !1302)
!1331 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "OutputBuffer", arg: 5, scope: !29, file: !11, line: 853, type: !14)
!1332 = !DILocation(line: 853, column: 63, scope: !29, inlinedAt: !1302)
!1333 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "OutputBufferLength", arg: 6, scope: !29, file: !11, line: 853, type: !14)
!1334 = !DILocation(line: 853, column: 82, scope: !29, inlinedAt: !1302)
!1335 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InternalDeviceIoControl", arg: 7, scope: !29, file: !11, line: 854, type: !14)
!1336 = !DILocation(line: 854, column: 39, scope: !29, inlinedAt: !1302)
!1337 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 8, scope: !29, file: !11, line: 854, type: !14)
!1338 = !DILocation(line: 854, column: 69, scope: !29, inlinedAt: !1302)
!1339 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "IoStatusBlock", arg: 9, scope: !29, file: !11, line: 854, type: !14)
!1340 = !DILocation(line: 854, column: 81, scope: !29, inlinedAt: !1302)
!1341 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "malloc", scope: !29, file: !11, line: 856, type: !14)
!1342 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_5", scope: !1305, file: !11, line: 860, type: !14)
!1343 = !DILocation(line: 860, column: 7, scope: !1305, inlinedAt: !1302)
!1344 = !DILocation(line: 655, column: 7, scope: !1296)
!1345 = !DILocation(line: 656, column: 5, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1321, file: !11, line: 655, column: 17)
!1347 = !DILocation(line: 661, column: 14, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1296, file: !11, line: 658, column: 3)
!1349 = !DILocation(line: 661, column: 55, scope: !1348)
!1350 = !DILocation(line: 661, column: 12, scope: !1348)
!1351 = !DILocation(line: 662, column: 61, scope: !1348)
!1352 = !DILocation(line: 662, column: 59, scope: !1348)
!1353 = !DILocation(line: 663, column: 28, scope: !1348)
!1354 = !DILocation(line: 663, column: 42, scope: !1348)
!1355 = !DILocation(line: 663, column: 14, scope: !1348)
!1356 = !DILocation(line: 663, column: 12, scope: !1348)
!1357 = !DILocation(line: 665, column: 24, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1296, file: !11, line: 665, column: 3)
!1359 = !DILocation(line: 665, column: 17, scope: !1358)
!1360 = !DILocation(line: 665, column: 15, scope: !1358)
!1361 = !DILocation(line: 665, column: 7, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1358, file: !11, line: 665, column: 7)
!1363 = !DILocation(line: 665, column: 19, scope: !1362)
!1364 = !DILocation(line: 665, column: 7, scope: !1358)
!1365 = !DILocation(line: 667, column: 27, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !11, line: 666, column: 5)
!1367 = distinct !DILexicalBlock(scope: !1362, file: !11, line: 665, column: 28)
!1368 = !DILocation(line: 667, column: 38, scope: !1366)
!1369 = !DILocation(line: 667, column: 49, scope: !1366)
!1370 = !DILocation(line: 667, column: 5, scope: !1366)
!1371 = !DILocation(line: 668, column: 16, scope: !1366)
!1372 = !DILocation(line: 668, column: 14, scope: !1366)
!1373 = !DILocation(line: 670, column: 3, scope: !1367)
!1374 = !DILocation(line: 673, column: 11, scope: !1296)
!1375 = !DILocation(line: 673, column: 3, scope: !1296)
!1376 = !DILocation(line: 675, column: 1, scope: !21)
!1377 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DisketteExtension", arg: 1, scope: !22, file: !11, line: 676, type: !14)
!1378 = !DILocation(line: 676, column: 38, scope: !22)
!1379 = !DILocation(line: 680, column: 3, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !22, file: !11, line: 679, column: 3)
!1381 = !DILocation(line: 687, column: 7, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !25, file: !11, line: 686, column: 3)
!1383 = !DILocation(line: 687, column: 5, scope: !1382)
!1384 = !DILocation(line: 688, column: 10, scope: !1382)
!1385 = !DILocation(line: 689, column: 18, scope: !1382)
!1386 = !DILocation(line: 690, column: 21, scope: !1382)
!1387 = !DILocation(line: 691, column: 18, scope: !1382)
!1388 = !DILocation(line: 692, column: 13, scope: !1382)
!1389 = !DILocation(line: 693, column: 3, scope: !1382)
!1390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !26, file: !11, line: 697, type: !14)
!1391 = !DILocation(line: 697, column: 7, scope: !26)
!1392 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp", scope: !26, file: !11, line: 698, type: !14)
!1393 = !DILocation(line: 698, column: 7, scope: !26)
!1394 = !DILocation(line: 698, column: 13, scope: !26)
!1395 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pirp", scope: !26, file: !11, line: 699, type: !14)
!1396 = !DILocation(line: 699, column: 7, scope: !26)
!1397 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pirp__IoStatus__Status", scope: !26, file: !11, line: 700, type: !14)
!1398 = !DILocation(line: 700, column: 7, scope: !26)
!1399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp_choice", scope: !26, file: !11, line: 701, type: !14)
!1400 = !DILocation(line: 701, column: 7, scope: !26)
!1401 = !DILocation(line: 701, column: 20, scope: !26)
!1402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devobj", scope: !26, file: !11, line: 702, type: !14)
!1403 = !DILocation(line: 702, column: 7, scope: !26)
!1404 = !DILocation(line: 702, column: 16, scope: !26)
!1405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp8", scope: !26, file: !11, line: 703, type: !14)
!1406 = !DILocation(line: 703, column: 7, scope: !26)
!1407 = !DILocation(line: 705, column: 16, scope: !26)
!1408 = !DILocation(line: 706, column: 14, scope: !26)
!1409 = !DILocation(line: 707, column: 13, scope: !26)
!1410 = !DILocation(line: 708, column: 13, scope: !26)
!1411 = !DILocation(line: 709, column: 18, scope: !26)
!1412 = !DILocation(line: 710, column: 24, scope: !26)
!1413 = !DILocation(line: 711, column: 20, scope: !26)
!1414 = !DILocation(line: 712, column: 24, scope: !26)
!1415 = !DILocation(line: 713, column: 32, scope: !26)
!1416 = !DILocation(line: 714, column: 12, scope: !26)
!1417 = !DILocation(line: 715, column: 5, scope: !26)
!1418 = !DILocation(line: 716, column: 12, scope: !26)
!1419 = !DILocation(line: 717, column: 6, scope: !26)
!1420 = !DILocation(line: 718, column: 6, scope: !26)
!1421 = !DILocation(line: 719, column: 9, scope: !26)
!1422 = !DILocation(line: 720, column: 8, scope: !26)
!1423 = !DILocation(line: 721, column: 8, scope: !26)
!1424 = !DILocation(line: 722, column: 8, scope: !26)
!1425 = !DILocation(line: 723, column: 7, scope: !26)
!1426 = !DILocation(line: 724, column: 10, scope: !26)
!1427 = !DILocation(line: 725, column: 18, scope: !26)
!1428 = !DILocation(line: 726, column: 21, scope: !26)
!1429 = !DILocation(line: 727, column: 18, scope: !26)
!1430 = !DILocation(line: 728, column: 13, scope: !26)
!1431 = !DILocation(line: 707, column: 10, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !11, line: 731, column: 3)
!1433 = distinct !DILexicalBlock(scope: !26, file: !11, line: 730, column: 3)
!1434 = !DILocation(line: 708, column: 10, scope: !1432)
!1435 = !DILocation(line: 708, column: 8, scope: !1432)
!1436 = !DILocation(line: 75, column: 12, scope: !95, inlinedAt: !1437)
!1437 = distinct !DILocation(line: 709, column: 3, scope: !1432)
!1438 = !DILocation(line: 76, column: 6, scope: !95, inlinedAt: !1437)
!1439 = !DILocation(line: 77, column: 6, scope: !95, inlinedAt: !1437)
!1440 = !DILocation(line: 78, column: 9, scope: !95, inlinedAt: !1437)
!1441 = !DILocation(line: 79, column: 9, scope: !95, inlinedAt: !1437)
!1442 = !DILocation(line: 80, column: 8, scope: !95, inlinedAt: !1437)
!1443 = !DILocation(line: 81, column: 8, scope: !95, inlinedAt: !1437)
!1444 = !DILocation(line: 82, column: 7, scope: !95, inlinedAt: !1437)
!1445 = !DILocation(line: 83, column: 7, scope: !95, inlinedAt: !1437)
!1446 = !DILocation(line: 83, column: 5, scope: !95, inlinedAt: !1437)
!1447 = !DILocation(line: 84, column: 10, scope: !95, inlinedAt: !1437)
!1448 = !DILocation(line: 85, column: 18, scope: !95, inlinedAt: !1437)
!1449 = !DILocation(line: 86, column: 21, scope: !95, inlinedAt: !1437)
!1450 = !DILocation(line: 87, column: 18, scope: !95, inlinedAt: !1437)
!1451 = !DILocation(line: 88, column: 13, scope: !95, inlinedAt: !1437)
!1452 = !DILocation(line: 711, column: 7, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1433, file: !11, line: 711, column: 7)
!1454 = !DILocation(line: 711, column: 14, scope: !1453)
!1455 = !DILocation(line: 1049, column: 29, scope: !44, inlinedAt: !1456)
!1456 = distinct !DILocation(line: 1189, column: 3, scope: !1457, inlinedAt: !1459)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !11, line: 1185, column: 3)
!1458 = distinct !DILexicalBlock(scope: !58, file: !11, line: 1184, column: 3)
!1459 = distinct !DILocation(line: 751, column: 24, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !11, line: 750, column: 15)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !11, line: 748, column: 20)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !11, line: 748, column: 17)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !11, line: 747, column: 18)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !11, line: 745, column: 15)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !11, line: 744, column: 16)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !11, line: 742, column: 13)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !11, line: 741, column: 14)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !11, line: 739, column: 11)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !11, line: 738, column: 12)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !11, line: 736, column: 9)
!1471 = distinct !DILexicalBlock(scope: !1453, file: !11, line: 711, column: 20)
!1472 = !DILocation(line: 1049, column: 39, scope: !44, inlinedAt: !1456)
!1473 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !58, file: !11, line: 1180, type: !14)
!1474 = !DILocation(line: 1180, column: 27, scope: !58, inlinedAt: !1459)
!1475 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !58, file: !11, line: 1180, type: !14)
!1476 = !DILocation(line: 1180, column: 46, scope: !58, inlinedAt: !1459)
!1477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !58, file: !11, line: 1181, type: !14)
!1478 = !DILocation(line: 1181, column: 7, scope: !58, inlinedAt: !1459)
!1479 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !58, file: !11, line: 1182, type: !14)
!1480 = !DILocation(line: 1182, column: 7, scope: !58, inlinedAt: !1459)
!1481 = !DILocation(line: 1049, column: 29, scope: !44, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 1189, column: 3, scope: !1457, inlinedAt: !1483)
!1483 = distinct !DILocation(line: 756, column: 24, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1461, file: !11, line: 755, column: 15)
!1485 = !DILocation(line: 1049, column: 39, scope: !44, inlinedAt: !1482)
!1486 = !DILocation(line: 1180, column: 27, scope: !58, inlinedAt: !1483)
!1487 = !DILocation(line: 1180, column: 46, scope: !58, inlinedAt: !1483)
!1488 = !DILocation(line: 1181, column: 7, scope: !58, inlinedAt: !1483)
!1489 = !DILocation(line: 1182, column: 7, scope: !58, inlinedAt: !1483)
!1490 = !DILocation(line: 711, column: 7, scope: !1433)
!1491 = !DILocation(line: 712, column: 9, scope: !1471)
!1492 = !DILocation(line: 712, column: 7, scope: !1471)
!1493 = !DILocation(line: 713, column: 15, scope: !1471)
!1494 = !DILocation(line: 714, column: 22, scope: !1471)
!1495 = !DILocation(line: 714, column: 20, scope: !1471)
!1496 = !DILocation(line: 715, column: 25, scope: !1471)
!1497 = !DILocation(line: 715, column: 23, scope: !1471)
!1498 = !DILocation(line: 716, column: 22, scope: !1471)
!1499 = !DILocation(line: 716, column: 20, scope: !1471)
!1500 = !DILocation(line: 717, column: 14, scope: !1471)
!1501 = !DILocation(line: 717, column: 12, scope: !1471)
!1502 = !DILocation(line: 718, column: 28, scope: !1471)
!1503 = !DILocation(line: 719, column: 14, scope: !1471)
!1504 = !DILocation(line: 720, column: 9, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1471, file: !11, line: 720, column: 9)
!1506 = !DILocation(line: 720, column: 20, scope: !1505)
!1507 = !DILocation(line: 720, column: 9, scope: !1471)
!1508 = !DILocation(line: 721, column: 30, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1505, file: !11, line: 720, column: 26)
!1510 = !DILocation(line: 722, column: 16, scope: !1509)
!1511 = !DILocation(line: 723, column: 5, scope: !1509)
!1512 = !DILocation(line: 687, column: 7, scope: !1382, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 727, column: 5, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1471, file: !11, line: 724, column: 5)
!1515 = !DILocation(line: 687, column: 5, scope: !1382, inlinedAt: !1513)
!1516 = !DILocation(line: 688, column: 10, scope: !1382, inlinedAt: !1513)
!1517 = !DILocation(line: 689, column: 18, scope: !1382, inlinedAt: !1513)
!1518 = !DILocation(line: 690, column: 21, scope: !1382, inlinedAt: !1513)
!1519 = !DILocation(line: 691, column: 18, scope: !1382, inlinedAt: !1513)
!1520 = !DILocation(line: 692, column: 13, scope: !1382, inlinedAt: !1513)
!1521 = !DILocation(line: 729, column: 9, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !11, line: 729, column: 9)
!1523 = distinct !DILexicalBlock(scope: !1471, file: !11, line: 729, column: 5)
!1524 = !DILocation(line: 729, column: 16, scope: !1522)
!1525 = !DILocation(line: 729, column: 9, scope: !1523)
!1526 = !DILocation(line: 730, column: 7, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1522, file: !11, line: 729, column: 21)
!1528 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_1", scope: !1471, file: !11, line: 734, type: !14)
!1529 = !DILocation(line: 734, column: 9, scope: !1471)
!1530 = !DILocation(line: 735, column: 17, scope: !1471)
!1531 = !DILocation(line: 735, column: 15, scope: !1471)
!1532 = !DILocation(line: 736, column: 9, scope: !1470)
!1533 = !DILocation(line: 736, column: 19, scope: !1470)
!1534 = !DILocation(line: 736, column: 9, scope: !1471)
!1535 = !DILocation(line: 737, column: 7, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1470, file: !11, line: 736, column: 25)
!1537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_2", scope: !1469, file: !11, line: 737, type: !14)
!1538 = !DILocation(line: 737, column: 11, scope: !1469)
!1539 = !DILocation(line: 738, column: 19, scope: !1469)
!1540 = !DILocation(line: 738, column: 17, scope: !1469)
!1541 = !DILocation(line: 739, column: 11, scope: !1468)
!1542 = !DILocation(line: 739, column: 21, scope: !1468)
!1543 = !DILocation(line: 739, column: 11, scope: !1469)
!1544 = !DILocation(line: 740, column: 9, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1468, file: !11, line: 739, column: 27)
!1546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_3", scope: !1467, file: !11, line: 740, type: !14)
!1547 = !DILocation(line: 740, column: 13, scope: !1467)
!1548 = !DILocation(line: 741, column: 21, scope: !1467)
!1549 = !DILocation(line: 741, column: 19, scope: !1467)
!1550 = !DILocation(line: 742, column: 13, scope: !1466)
!1551 = !DILocation(line: 742, column: 23, scope: !1466)
!1552 = !DILocation(line: 742, column: 13, scope: !1467)
!1553 = !DILocation(line: 743, column: 11, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1466, file: !11, line: 742, column: 29)
!1555 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_4", scope: !1465, file: !11, line: 743, type: !14)
!1556 = !DILocation(line: 743, column: 15, scope: !1465)
!1557 = !DILocation(line: 744, column: 23, scope: !1465)
!1558 = !DILocation(line: 744, column: 21, scope: !1465)
!1559 = !DILocation(line: 745, column: 15, scope: !1464)
!1560 = !DILocation(line: 745, column: 25, scope: !1464)
!1561 = !DILocation(line: 745, column: 15, scope: !1465)
!1562 = !DILocation(line: 746, column: 13, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1464, file: !11, line: 745, column: 31)
!1564 = !DILocation(line: 748, column: 13, scope: !1463)
!1565 = !DILocation(line: 748, column: 17, scope: !1463)
!1566 = !DILocation(line: 748, column: 20, scope: !1462)
!1567 = !DILocation(line: 751, column: 42, scope: !1460)
!1568 = !DILocation(line: 751, column: 50, scope: !1460)
!1569 = !DILocation(line: 751, column: 24, scope: !1460)
!1570 = !DILocation(line: 1186, column: 12, scope: !1457, inlinedAt: !1459)
!1571 = !DILocation(line: 1187, column: 25, scope: !1457, inlinedAt: !1459)
!1572 = !DILocation(line: 1188, column: 30, scope: !1457, inlinedAt: !1459)
!1573 = !DILocation(line: 1189, column: 22, scope: !1457, inlinedAt: !1459)
!1574 = !DILocation(line: 1189, column: 3, scope: !1457, inlinedAt: !1459)
!1575 = !DILocation(line: 1053, column: 7, scope: !458, inlinedAt: !1456)
!1576 = !DILocation(line: 1053, column: 12, scope: !458, inlinedAt: !1456)
!1577 = !DILocation(line: 1053, column: 9, scope: !458, inlinedAt: !1456)
!1578 = !DILocation(line: 1053, column: 7, scope: !459, inlinedAt: !1456)
!1579 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 1057, column: 5, scope: !465, inlinedAt: !1456)
!1581 = !DILocation(line: 1054, column: 9, scope: !468, inlinedAt: !1456)
!1582 = !DILocation(line: 1054, column: 7, scope: !468, inlinedAt: !1456)
!1583 = !DILocation(line: 1060, column: 3, scope: !459, inlinedAt: !1456)
!1584 = !DILocation(line: 1191, column: 3, scope: !1458, inlinedAt: !1459)
!1585 = !DILocation(line: 751, column: 22, scope: !1460)
!1586 = !DILocation(line: 753, column: 15, scope: !1461)
!1587 = !DILocation(line: 756, column: 42, scope: !1484)
!1588 = !DILocation(line: 756, column: 50, scope: !1484)
!1589 = !DILocation(line: 756, column: 24, scope: !1484)
!1590 = !DILocation(line: 1186, column: 12, scope: !1457, inlinedAt: !1483)
!1591 = !DILocation(line: 1187, column: 25, scope: !1457, inlinedAt: !1483)
!1592 = !DILocation(line: 1188, column: 30, scope: !1457, inlinedAt: !1483)
!1593 = !DILocation(line: 1189, column: 22, scope: !1457, inlinedAt: !1483)
!1594 = !DILocation(line: 1189, column: 3, scope: !1457, inlinedAt: !1483)
!1595 = !DILocation(line: 1053, column: 7, scope: !458, inlinedAt: !1482)
!1596 = !DILocation(line: 1053, column: 12, scope: !458, inlinedAt: !1482)
!1597 = !DILocation(line: 1053, column: 9, scope: !458, inlinedAt: !1482)
!1598 = !DILocation(line: 1053, column: 7, scope: !459, inlinedAt: !1482)
!1599 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !1600)
!1600 = distinct !DILocation(line: 1057, column: 5, scope: !465, inlinedAt: !1482)
!1601 = !DILocation(line: 1054, column: 9, scope: !468, inlinedAt: !1482)
!1602 = !DILocation(line: 1054, column: 7, scope: !468, inlinedAt: !1482)
!1603 = !DILocation(line: 1060, column: 3, scope: !459, inlinedAt: !1482)
!1604 = !DILocation(line: 1191, column: 3, scope: !1458, inlinedAt: !1483)
!1605 = !DILocation(line: 756, column: 22, scope: !1484)
!1606 = !DILocation(line: 758, column: 15, scope: !1461)
!1607 = !DILocation(line: 761, column: 44, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1461, file: !11, line: 760, column: 15)
!1609 = !DILocation(line: 761, column: 52, scope: !1608)
!1610 = !DILocation(line: 761, column: 24, scope: !1608)
!1611 = !DILocation(line: 761, column: 22, scope: !1608)
!1612 = !DILocation(line: 763, column: 15, scope: !1461)
!1613 = !DILocation(line: 766, column: 34, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1461, file: !11, line: 765, column: 15)
!1615 = !DILocation(line: 766, column: 42, scope: !1614)
!1616 = !DILocation(line: 766, column: 24, scope: !1614)
!1617 = !DILocation(line: 766, column: 22, scope: !1614)
!1618 = !DILocation(line: 768, column: 15, scope: !1461)
!1619 = !DILocation(line: 770, column: 15, scope: !1461)
!1620 = !DILocation(line: 771, column: 20, scope: !1462)
!1621 = !DILocation(line: 778, column: 3, scope: !1471)
!1622 = !DILocation(line: 782, column: 7, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1433, file: !11, line: 782, column: 7)
!1624 = !DILocation(line: 782, column: 14, scope: !1623)
!1625 = !DILocation(line: 782, column: 7, scope: !1433)
!1626 = !DILocation(line: 783, column: 9, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !11, line: 783, column: 9)
!1628 = distinct !DILexicalBlock(scope: !1623, file: !11, line: 782, column: 20)
!1629 = !DILocation(line: 783, column: 14, scope: !1627)
!1630 = !DILocation(line: 783, column: 11, scope: !1627)
!1631 = !DILocation(line: 783, column: 9, scope: !1628)
!1632 = !DILocation(line: 784, column: 11, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1627, file: !11, line: 783, column: 18)
!1634 = !DILocation(line: 784, column: 9, scope: !1633)
!1635 = !DILocation(line: 785, column: 5, scope: !1633)
!1636 = !DILocation(line: 786, column: 7, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1627, file: !11, line: 785, column: 12)
!1638 = !DILocation(line: 788, column: 3, scope: !1628)
!1639 = !DILocation(line: 788, column: 10, scope: !1623)
!1640 = !DILocation(line: 790, column: 9, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !11, line: 790, column: 9)
!1642 = distinct !DILexicalBlock(scope: !1623, file: !11, line: 788, column: 10)
!1643 = !DILocation(line: 790, column: 16, scope: !1641)
!1644 = !DILocation(line: 790, column: 9, scope: !1642)
!1645 = !DILocation(line: 791, column: 11, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !11, line: 791, column: 11)
!1647 = distinct !DILexicalBlock(scope: !1641, file: !11, line: 790, column: 22)
!1648 = !DILocation(line: 791, column: 16, scope: !1646)
!1649 = !DILocation(line: 791, column: 13, scope: !1646)
!1650 = !DILocation(line: 791, column: 11, scope: !1647)
!1651 = !DILocation(line: 792, column: 13, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1646, file: !11, line: 791, column: 22)
!1653 = !DILocation(line: 792, column: 11, scope: !1652)
!1654 = !DILocation(line: 793, column: 7, scope: !1652)
!1655 = !DILocation(line: 794, column: 9, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1646, file: !11, line: 793, column: 14)
!1657 = !DILocation(line: 796, column: 5, scope: !1647)
!1658 = !DILocation(line: 796, column: 12, scope: !1641)
!1659 = !DILocation(line: 798, column: 11, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !11, line: 798, column: 11)
!1661 = distinct !DILexicalBlock(scope: !1641, file: !11, line: 796, column: 12)
!1662 = !DILocation(line: 798, column: 16, scope: !1660)
!1663 = !DILocation(line: 798, column: 13, scope: !1660)
!1664 = !DILocation(line: 798, column: 11, scope: !1661)
!1665 = !DILocation(line: 801, column: 13, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !11, line: 801, column: 13)
!1667 = distinct !DILexicalBlock(scope: !1660, file: !11, line: 798, column: 26)
!1668 = !DILocation(line: 801, column: 20, scope: !1666)
!1669 = !DILocation(line: 801, column: 13, scope: !1667)
!1670 = !DILocation(line: 804, column: 15, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !11, line: 804, column: 15)
!1672 = distinct !DILexicalBlock(scope: !1666, file: !11, line: 801, column: 27)
!1673 = !DILocation(line: 804, column: 20, scope: !1671)
!1674 = !DILocation(line: 804, column: 17, scope: !1671)
!1675 = !DILocation(line: 804, column: 15, scope: !1672)
!1676 = !DILocation(line: 805, column: 17, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !11, line: 805, column: 17)
!1678 = distinct !DILexicalBlock(scope: !1671, file: !11, line: 804, column: 27)
!1679 = !DILocation(line: 805, column: 22, scope: !1677)
!1680 = !DILocation(line: 805, column: 19, scope: !1677)
!1681 = !DILocation(line: 805, column: 17, scope: !1678)
!1682 = !DILocation(line: 806, column: 19, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !11, line: 806, column: 19)
!1684 = distinct !DILexicalBlock(scope: !1677, file: !11, line: 805, column: 27)
!1685 = !DILocation(line: 806, column: 24, scope: !1683)
!1686 = !DILocation(line: 806, column: 21, scope: !1683)
!1687 = !DILocation(line: 806, column: 19, scope: !1684)
!1688 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !1689)
!1689 = distinct !DILocation(line: 808, column: 17, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !11, line: 807, column: 17)
!1691 = distinct !DILexicalBlock(scope: !1683, file: !11, line: 806, column: 28)
!1692 = !DILocation(line: 810, column: 15, scope: !1691)
!1693 = !DILocation(line: 811, column: 17, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1683, file: !11, line: 810, column: 22)
!1695 = !DILocation(line: 813, column: 13, scope: !1684)
!1696 = !DILocation(line: 814, column: 15, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1677, file: !11, line: 813, column: 20)
!1698 = !DILocation(line: 816, column: 11, scope: !1678)
!1699 = !DILocation(line: 816, column: 18, scope: !1671)
!1700 = !DILocation(line: 818, column: 17, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !11, line: 818, column: 17)
!1702 = distinct !DILexicalBlock(scope: !1671, file: !11, line: 816, column: 18)
!1703 = !DILocation(line: 818, column: 24, scope: !1701)
!1704 = !DILocation(line: 818, column: 17, scope: !1702)
!1705 = !DILocation(line: 819, column: 19, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !11, line: 819, column: 19)
!1707 = distinct !DILexicalBlock(scope: !1701, file: !11, line: 818, column: 30)
!1708 = !DILocation(line: 819, column: 26, scope: !1706)
!1709 = !DILocation(line: 819, column: 19, scope: !1707)
!1710 = !DILocation(line: 820, column: 24, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1706, file: !11, line: 819, column: 34)
!1712 = !DILocation(line: 821, column: 15, scope: !1711)
!1713 = !DILocation(line: 822, column: 13, scope: !1707)
!1714 = !DILocation(line: 825, column: 19, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !11, line: 825, column: 19)
!1716 = distinct !DILexicalBlock(scope: !1701, file: !11, line: 822, column: 20)
!1717 = !DILocation(line: 825, column: 24, scope: !1715)
!1718 = !DILocation(line: 825, column: 21, scope: !1715)
!1719 = !DILocation(line: 825, column: 19, scope: !1716)
!1720 = !DILocation(line: 826, column: 21, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !11, line: 826, column: 21)
!1722 = distinct !DILexicalBlock(scope: !1715, file: !11, line: 825, column: 28)
!1723 = !DILocation(line: 826, column: 28, scope: !1721)
!1724 = !DILocation(line: 826, column: 21, scope: !1722)
!1725 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !1726)
!1726 = distinct !DILocation(line: 828, column: 19, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !11, line: 827, column: 19)
!1728 = distinct !DILexicalBlock(scope: !1721, file: !11, line: 826, column: 36)
!1729 = !DILocation(line: 830, column: 17, scope: !1728)
!1730 = !DILocation(line: 831, column: 15, scope: !1722)
!1731 = !DILocation(line: 834, column: 21, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !11, line: 834, column: 21)
!1733 = distinct !DILexicalBlock(scope: !1715, file: !11, line: 831, column: 22)
!1734 = !DILocation(line: 834, column: 31, scope: !1732)
!1735 = !DILocation(line: 834, column: 28, scope: !1732)
!1736 = !DILocation(line: 834, column: 21, scope: !1733)
!1737 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !1738)
!1738 = distinct !DILocation(line: 836, column: 19, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !11, line: 835, column: 19)
!1740 = distinct !DILexicalBlock(scope: !1732, file: !11, line: 834, column: 50)
!1741 = !DILocation(line: 838, column: 17, scope: !1740)
!1742 = !DILocation(line: 842, column: 9, scope: !1672)
!1743 = !DILocation(line: 843, column: 7, scope: !1667)
!1744 = !DILocation(line: 848, column: 10, scope: !1433)
!1745 = !DILocation(line: 849, column: 11, scope: !1433)
!1746 = !DILocation(line: 849, column: 3, scope: !1433)
!1747 = !DILocation(line: 851, column: 1, scope: !26)
!1748 = !DILocation(line: 852, column: 39, scope: !29)
!1749 = !DILocation(line: 852, column: 59, scope: !29)
!1750 = !DILocation(line: 852, column: 78, scope: !29)
!1751 = !DILocation(line: 853, column: 39, scope: !29)
!1752 = !DILocation(line: 853, column: 63, scope: !29)
!1753 = !DILocation(line: 853, column: 82, scope: !29)
!1754 = !DILocation(line: 854, column: 39, scope: !29)
!1755 = !DILocation(line: 854, column: 69, scope: !29)
!1756 = !DILocation(line: 854, column: 81, scope: !29)
!1757 = !DILocation(line: 856, column: 7, scope: !29)
!1758 = !DILocation(line: 856, column: 16, scope: !29)
!1759 = !DILocation(line: 859, column: 13, scope: !1305)
!1760 = !DILocation(line: 860, column: 7, scope: !1305)
!1761 = !DILocation(line: 861, column: 15, scope: !1305)
!1762 = !DILocation(line: 861, column: 13, scope: !1305)
!1763 = !DILocation(line: 862, column: 7, scope: !1309)
!1764 = !DILocation(line: 862, column: 17, scope: !1309)
!1765 = !DILocation(line: 862, column: 7, scope: !1305)
!1766 = !DILocation(line: 863, column: 5, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1309, file: !11, line: 862, column: 23)
!1768 = !DILocation(line: 865, column: 5, scope: !1315)
!1769 = !DILocation(line: 865, column: 9, scope: !1315)
!1770 = !DILocation(line: 865, column: 12, scope: !1314)
!1771 = !DILocation(line: 867, column: 15, scope: !1313)
!1772 = !DILocation(line: 867, column: 7, scope: !1313)
!1773 = !DILocation(line: 869, column: 7, scope: !1313)
!1774 = !DILocation(line: 875, column: 1, scope: !29)
!1775 = !DILocation(line: 877, column: 30, scope: !32)
!1776 = !DILocation(line: 881, column: 7, scope: !441)
!1777 = !DILocation(line: 882, column: 15, scope: !441)
!1778 = !DILocation(line: 882, column: 13, scope: !441)
!1779 = !DILocation(line: 883, column: 7, scope: !797)
!1780 = !DILocation(line: 883, column: 17, scope: !797)
!1781 = !DILocation(line: 883, column: 7, scope: !441)
!1782 = !DILocation(line: 884, column: 5, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !797, file: !11, line: 883, column: 23)
!1784 = !DILocation(line: 886, column: 5, scope: !803)
!1785 = !DILocation(line: 886, column: 9, scope: !803)
!1786 = !DILocation(line: 886, column: 12, scope: !802)
!1787 = !DILocation(line: 888, column: 7, scope: !801)
!1788 = !DILocation(line: 890, column: 7, scope: !801)
!1789 = !DILocation(line: 896, column: 1, scope: !32)
!1790 = !DILocation(line: 898, column: 34, scope: !35)
!1791 = !DILocation(line: 898, column: 48, scope: !35)
!1792 = !DILocation(line: 898, column: 64, scope: !35)
!1793 = !DILocation(line: 898, column: 85, scope: !35)
!1794 = !DILocation(line: 899, column: 34, scope: !35)
!1795 = !DILocation(line: 899, column: 55, scope: !35)
!1796 = !DILocation(line: 899, column: 78, scope: !35)
!1797 = !DILocation(line: 900, column: 34, scope: !35)
!1798 = !DILocation(line: 904, column: 7, scope: !1023)
!1799 = !DILocation(line: 905, column: 15, scope: !1023)
!1800 = !DILocation(line: 905, column: 13, scope: !1023)
!1801 = !DILocation(line: 906, column: 7, scope: !1157)
!1802 = !DILocation(line: 906, column: 17, scope: !1157)
!1803 = !DILocation(line: 906, column: 7, scope: !1023)
!1804 = !DILocation(line: 907, column: 5, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1157, file: !11, line: 906, column: 23)
!1806 = !DILocation(line: 909, column: 5, scope: !1163)
!1807 = !DILocation(line: 909, column: 9, scope: !1163)
!1808 = !DILocation(line: 909, column: 12, scope: !1162)
!1809 = !DILocation(line: 911, column: 7, scope: !1161)
!1810 = !DILocation(line: 913, column: 7, scope: !1161)
!1811 = !DILocation(line: 919, column: 1, scope: !35)
!1812 = !DILocation(line: 921, column: 35, scope: !38)
!1813 = !DILocation(line: 921, column: 62, scope: !38)
!1814 = !DILocation(line: 922, column: 35, scope: !38)
!1815 = !DILocation(line: 922, column: 57, scope: !38)
!1816 = !DILocation(line: 926, column: 7, scope: !1038)
!1817 = !DILocation(line: 927, column: 15, scope: !1038)
!1818 = !DILocation(line: 927, column: 13, scope: !1038)
!1819 = !DILocation(line: 928, column: 7, scope: !1198)
!1820 = !DILocation(line: 928, column: 17, scope: !1198)
!1821 = !DILocation(line: 928, column: 7, scope: !1038)
!1822 = !DILocation(line: 929, column: 5, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1198, file: !11, line: 928, column: 23)
!1824 = !DILocation(line: 931, column: 5, scope: !1204)
!1825 = !DILocation(line: 931, column: 9, scope: !1204)
!1826 = !DILocation(line: 931, column: 12, scope: !1203)
!1827 = !DILocation(line: 933, column: 7, scope: !1202)
!1828 = !DILocation(line: 935, column: 7, scope: !1202)
!1829 = !DILocation(line: 941, column: 1, scope: !38)
!1830 = !DILocation(line: 943, column: 35, scope: !41)
!1831 = !DILocation(line: 943, column: 58, scope: !41)
!1832 = !DILocation(line: 947, column: 7, scope: !432)
!1833 = !DILocation(line: 948, column: 15, scope: !432)
!1834 = !DILocation(line: 948, column: 13, scope: !432)
!1835 = !DILocation(line: 949, column: 7, scope: !779)
!1836 = !DILocation(line: 949, column: 17, scope: !779)
!1837 = !DILocation(line: 949, column: 7, scope: !432)
!1838 = !DILocation(line: 950, column: 5, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !779, file: !11, line: 949, column: 23)
!1840 = !DILocation(line: 952, column: 5, scope: !785)
!1841 = !DILocation(line: 952, column: 9, scope: !785)
!1842 = !DILocation(line: 952, column: 12, scope: !784)
!1843 = !DILocation(line: 954, column: 7, scope: !783)
!1844 = !DILocation(line: 956, column: 7, scope: !783)
!1845 = !DILocation(line: 962, column: 1, scope: !41)
!1846 = !DILocation(line: 968, column: 7, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !11, line: 968, column: 7)
!1848 = distinct !DILexicalBlock(scope: !42, file: !11, line: 967, column: 3)
!1849 = !DILocation(line: 968, column: 12, scope: !1847)
!1850 = !DILocation(line: 968, column: 9, scope: !1847)
!1851 = !DILocation(line: 968, column: 7, scope: !1848)
!1852 = !DILocation(line: 969, column: 9, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1847, file: !11, line: 968, column: 16)
!1854 = !DILocation(line: 969, column: 7, scope: !1853)
!1855 = !DILocation(line: 970, column: 3, scope: !1853)
!1856 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !1857)
!1857 = distinct !DILocation(line: 972, column: 5, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !11, line: 971, column: 5)
!1859 = distinct !DILexicalBlock(scope: !1847, file: !11, line: 970, column: 10)
!1860 = !DILocation(line: 975, column: 3, scope: !1848)
!1861 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !43, file: !11, line: 978, type: !14)
!1862 = !DILocation(line: 978, column: 23, scope: !43)
!1863 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !43, file: !11, line: 978, type: !14)
!1864 = !DILocation(line: 978, column: 42, scope: !43)
!1865 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "returnVal2", scope: !43, file: !11, line: 980, type: !14)
!1866 = !DILocation(line: 980, column: 7, scope: !43)
!1867 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compRetStatus1", scope: !43, file: !11, line: 981, type: !14)
!1868 = !DILocation(line: 981, column: 7, scope: !43)
!1869 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lcontext", scope: !43, file: !11, line: 982, type: !14)
!1870 = !DILocation(line: 982, column: 7, scope: !43)
!1871 = !DILocation(line: 982, column: 18, scope: !43)
!1872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp7", scope: !43, file: !11, line: 983, type: !5)
!1873 = !DILocation(line: 983, column: 17, scope: !43)
!1874 = !DILocation(line: 985, column: 7, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !11, line: 985, column: 7)
!1876 = distinct !DILexicalBlock(scope: !43, file: !11, line: 985, column: 3)
!1877 = !DILocation(line: 1063, column: 20, scope: !47, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 636, column: 3, scope: !1251, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 987, column: 22, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !11, line: 986, column: 5)
!1881 = distinct !DILexicalBlock(scope: !1875, file: !11, line: 985, column: 23)
!1882 = !DILocation(line: 1063, column: 32, scope: !47, inlinedAt: !1878)
!1883 = !DILocation(line: 1063, column: 48, scope: !47, inlinedAt: !1878)
!1884 = !DILocation(line: 1064, column: 7, scope: !47, inlinedAt: !1878)
!1885 = !DILocation(line: 631, column: 27, scope: !18, inlinedAt: !1879)
!1886 = !DILocation(line: 631, column: 46, scope: !18, inlinedAt: !1879)
!1887 = !DILocation(line: 631, column: 56, scope: !18, inlinedAt: !1879)
!1888 = !DILocation(line: 985, column: 7, scope: !1876)
!1889 = !DILocation(line: 987, column: 40, scope: !1880)
!1890 = !DILocation(line: 987, column: 54, scope: !1880)
!1891 = !DILocation(line: 987, column: 59, scope: !1880)
!1892 = !DILocation(line: 987, column: 22, scope: !1880)
!1893 = !DILocation(line: 636, column: 14, scope: !1251, inlinedAt: !1879)
!1894 = !DILocation(line: 636, column: 3, scope: !1251, inlinedAt: !1879)
!1895 = !DILocation(line: 1064, column: 11, scope: !47, inlinedAt: !1878)
!1896 = !DILocation(line: 1067, column: 18, scope: !1258, inlinedAt: !1878)
!1897 = !DILocation(line: 1068, column: 11, scope: !1258, inlinedAt: !1878)
!1898 = !DILocation(line: 1068, column: 3, scope: !1258, inlinedAt: !1878)
!1899 = !DILocation(line: 638, column: 3, scope: !1252, inlinedAt: !1879)
!1900 = !DILocation(line: 987, column: 20, scope: !1880)
!1901 = !DILocation(line: 989, column: 34, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1881, file: !11, line: 989, column: 5)
!1903 = !DILocation(line: 989, column: 18, scope: !1902)
!1904 = !DILocation(line: 989, column: 16, scope: !1902)
!1905 = !DILocation(line: 989, column: 9, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1902, file: !11, line: 989, column: 9)
!1907 = !DILocation(line: 989, column: 20, scope: !1906)
!1908 = !DILocation(line: 989, column: 9, scope: !1902)
!1909 = !DILocation(line: 968, column: 7, scope: !1847, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 991, column: 7, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !11, line: 990, column: 7)
!1912 = distinct !DILexicalBlock(scope: !1906, file: !11, line: 989, column: 36)
!1913 = !DILocation(line: 968, column: 12, scope: !1847, inlinedAt: !1910)
!1914 = !DILocation(line: 968, column: 9, scope: !1847, inlinedAt: !1910)
!1915 = !DILocation(line: 968, column: 7, scope: !1848, inlinedAt: !1910)
!1916 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 972, column: 5, scope: !1858, inlinedAt: !1910)
!1918 = !DILocation(line: 969, column: 9, scope: !1853, inlinedAt: !1910)
!1919 = !DILocation(line: 969, column: 7, scope: !1853, inlinedAt: !1910)
!1920 = !DILocation(line: 993, column: 5, scope: !1912)
!1921 = !DILocation(line: 995, column: 3, scope: !1881)
!1922 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_10", scope: !1876, file: !11, line: 999, type: !14)
!1923 = !DILocation(line: 999, column: 7, scope: !1876)
!1924 = !DILocation(line: 1000, column: 16, scope: !1876)
!1925 = !DILocation(line: 1000, column: 14, scope: !1876)
!1926 = !DILocation(line: 1001, column: 7, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1876, file: !11, line: 1001, column: 7)
!1928 = !DILocation(line: 1001, column: 18, scope: !1927)
!1929 = !DILocation(line: 1001, column: 7, scope: !1876)
!1930 = !DILocation(line: 1002, column: 5, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1927, file: !11, line: 1001, column: 24)
!1932 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_11", scope: !1933, file: !11, line: 1002, type: !14)
!1933 = distinct !DILexicalBlock(scope: !1927, file: !11, line: 1003, column: 10)
!1934 = !DILocation(line: 1002, column: 9, scope: !1933)
!1935 = !DILocation(line: 1003, column: 18, scope: !1933)
!1936 = !DILocation(line: 1003, column: 16, scope: !1933)
!1937 = !DILocation(line: 1004, column: 9, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1933, file: !11, line: 1004, column: 9)
!1939 = !DILocation(line: 1004, column: 20, scope: !1938)
!1940 = !DILocation(line: 1004, column: 9, scope: !1933)
!1941 = !DILocation(line: 1005, column: 7, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1938, file: !11, line: 1004, column: 26)
!1943 = !DILocation(line: 1007, column: 7, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1938, file: !11, line: 1006, column: 12)
!1945 = !DILocation(line: 1007, column: 11, scope: !1944)
!1946 = !DILocation(line: 1007, column: 14, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1944, file: !11, line: 1007, column: 11)
!1948 = !DILocation(line: 1009, column: 20, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1947, file: !11, line: 1007, column: 14)
!1950 = !DILocation(line: 1010, column: 9, scope: !1949)
!1951 = !DILocation(line: 1012, column: 20, scope: !1949)
!1952 = !DILocation(line: 1013, column: 9, scope: !1949)
!1953 = !DILocation(line: 1015, column: 20, scope: !1949)
!1954 = !DILocation(line: 1016, column: 9, scope: !1949)
!1955 = !DILocation(line: 1017, column: 14, scope: !1947)
!1956 = !DILocation(line: 1023, column: 7, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1876, file: !11, line: 1023, column: 7)
!1958 = !DILocation(line: 1023, column: 12, scope: !1957)
!1959 = !DILocation(line: 1023, column: 9, scope: !1957)
!1960 = !DILocation(line: 1023, column: 7, scope: !1876)
!1961 = !DILocation(line: 1024, column: 9, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1957, file: !11, line: 1023, column: 16)
!1963 = !DILocation(line: 1024, column: 7, scope: !1962)
!1964 = !DILocation(line: 1025, column: 25, scope: !1962)
!1965 = !DILocation(line: 1025, column: 23, scope: !1962)
!1966 = !DILocation(line: 1026, column: 3, scope: !1962)
!1967 = !DILocation(line: 1027, column: 9, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !11, line: 1027, column: 9)
!1969 = distinct !DILexicalBlock(scope: !1957, file: !11, line: 1026, column: 10)
!1970 = !DILocation(line: 1027, column: 14, scope: !1968)
!1971 = !DILocation(line: 1027, column: 11, scope: !1968)
!1972 = !DILocation(line: 1027, column: 9, scope: !1969)
!1973 = !DILocation(line: 1028, column: 11, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !11, line: 1028, column: 11)
!1975 = distinct !DILexicalBlock(scope: !1968, file: !11, line: 1027, column: 20)
!1976 = !DILocation(line: 1028, column: 22, scope: !1974)
!1977 = !DILocation(line: 1028, column: 11, scope: !1975)
!1978 = !DILocation(line: 1029, column: 13, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1974, file: !11, line: 1028, column: 30)
!1980 = !DILocation(line: 1029, column: 11, scope: !1979)
!1981 = !DILocation(line: 1030, column: 29, scope: !1979)
!1982 = !DILocation(line: 1030, column: 27, scope: !1979)
!1983 = !DILocation(line: 1031, column: 7, scope: !1979)
!1984 = !DILocation(line: 1032, column: 13, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1974, file: !11, line: 1031, column: 14)
!1986 = !DILocation(line: 1032, column: 11, scope: !1985)
!1987 = !DILocation(line: 1033, column: 29, scope: !1985)
!1988 = !DILocation(line: 1033, column: 27, scope: !1985)
!1989 = !DILocation(line: 1035, column: 5, scope: !1975)
!1990 = !DILocation(line: 1036, column: 11, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !11, line: 1036, column: 11)
!1992 = distinct !DILexicalBlock(scope: !1968, file: !11, line: 1035, column: 12)
!1993 = !DILocation(line: 1036, column: 16, scope: !1991)
!1994 = !DILocation(line: 1036, column: 13, scope: !1991)
!1995 = !DILocation(line: 1036, column: 11, scope: !1992)
!1996 = !DILocation(line: 1037, column: 13, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1991, file: !11, line: 1036, column: 23)
!1998 = !DILocation(line: 1037, column: 11, scope: !1997)
!1999 = !DILocation(line: 1038, column: 29, scope: !1997)
!2000 = !DILocation(line: 1038, column: 27, scope: !1997)
!2001 = !DILocation(line: 1039, column: 7, scope: !1997)
!2002 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 1041, column: 9, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !11, line: 1040, column: 9)
!2005 = distinct !DILexicalBlock(scope: !1991, file: !11, line: 1039, column: 14)
!2006 = !DILocation(line: 1046, column: 11, scope: !1876)
!2007 = !DILocation(line: 1046, column: 3, scope: !1876)
!2008 = !DILocation(line: 1063, column: 20, scope: !47)
!2009 = !DILocation(line: 1063, column: 32, scope: !47)
!2010 = !DILocation(line: 1063, column: 48, scope: !47)
!2011 = !DILocation(line: 1064, column: 7, scope: !47)
!2012 = !DILocation(line: 1064, column: 11, scope: !47)
!2013 = !DILocation(line: 1067, column: 18, scope: !1258)
!2014 = !DILocation(line: 1068, column: 11, scope: !1258)
!2015 = !DILocation(line: 1068, column: 3, scope: !1258)
!2016 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Object", arg: 1, scope: !48, file: !11, line: 1071, type: !14)
!2017 = !DILocation(line: 1071, column: 31, scope: !48)
!2018 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitReason", arg: 2, scope: !48, file: !11, line: 1071, type: !14)
!2019 = !DILocation(line: 1071, column: 44, scope: !48)
!2020 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitMode", arg: 3, scope: !48, file: !11, line: 1071, type: !14)
!2021 = !DILocation(line: 1071, column: 61, scope: !48)
!2022 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Alertable", arg: 4, scope: !48, file: !11, line: 1071, type: !14)
!2023 = !DILocation(line: 1071, column: 76, scope: !48)
!2024 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Timeout", arg: 5, scope: !48, file: !11, line: 1072, type: !14)
!2025 = !DILocation(line: 1072, column: 31, scope: !48)
!2026 = !DILocation(line: 1076, column: 7, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !11, line: 1076, column: 7)
!2028 = distinct !DILexicalBlock(scope: !48, file: !11, line: 1075, column: 3)
!2029 = !DILocation(line: 1076, column: 12, scope: !2027)
!2030 = !DILocation(line: 1076, column: 9, scope: !2027)
!2031 = !DILocation(line: 1076, column: 7, scope: !2028)
!2032 = !DILocation(line: 1077, column: 9, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !11, line: 1077, column: 9)
!2034 = distinct !DILexicalBlock(scope: !2027, file: !11, line: 1076, column: 18)
!2035 = !DILocation(line: 1077, column: 24, scope: !2033)
!2036 = !DILocation(line: 1077, column: 9, scope: !2034)
!2037 = !DILocation(line: 1078, column: 11, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2033, file: !11, line: 1077, column: 30)
!2039 = !DILocation(line: 1078, column: 9, scope: !2038)
!2040 = !DILocation(line: 1079, column: 22, scope: !2038)
!2041 = !DILocation(line: 1080, column: 5, scope: !2038)
!2042 = !DILocation(line: 1081, column: 7, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2033, file: !11, line: 1080, column: 12)
!2044 = !DILocation(line: 1083, column: 3, scope: !2034)
!2045 = !DILocation(line: 1083, column: 10, scope: !2027)
!2046 = !DILocation(line: 1085, column: 9, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !11, line: 1085, column: 9)
!2048 = distinct !DILexicalBlock(scope: !2027, file: !11, line: 1083, column: 10)
!2049 = !DILocation(line: 1085, column: 19, scope: !2047)
!2050 = !DILocation(line: 1085, column: 9, scope: !2048)
!2051 = !DILocation(line: 1086, column: 11, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2047, file: !11, line: 1085, column: 25)
!2053 = !DILocation(line: 1086, column: 9, scope: !2052)
!2054 = !DILocation(line: 1087, column: 17, scope: !2052)
!2055 = !DILocation(line: 1088, column: 5, scope: !2052)
!2056 = !DILocation(line: 1089, column: 11, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !11, line: 1089, column: 11)
!2058 = distinct !DILexicalBlock(scope: !2047, file: !11, line: 1088, column: 12)
!2059 = !DILocation(line: 1089, column: 16, scope: !2057)
!2060 = !DILocation(line: 1089, column: 13, scope: !2057)
!2061 = !DILocation(line: 1089, column: 11, scope: !2058)
!2062 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !2063)
!2063 = distinct !DILocation(line: 1091, column: 9, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !11, line: 1090, column: 9)
!2065 = distinct !DILexicalBlock(scope: !2057, file: !11, line: 1089, column: 22)
!2066 = !DILocation(line: 1093, column: 7, scope: !2065)
!2067 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_12", scope: !2028, file: !11, line: 1098, type: !14)
!2068 = !DILocation(line: 1098, column: 7, scope: !2028)
!2069 = !DILocation(line: 1099, column: 16, scope: !2028)
!2070 = !DILocation(line: 1099, column: 14, scope: !2028)
!2071 = !DILocation(line: 1100, column: 7, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2028, file: !11, line: 1100, column: 7)
!2073 = !DILocation(line: 1100, column: 18, scope: !2072)
!2074 = !DILocation(line: 1100, column: 7, scope: !2028)
!2075 = !DILocation(line: 1101, column: 5, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2072, file: !11, line: 1100, column: 24)
!2077 = !DILocation(line: 1103, column: 5, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2072, file: !11, line: 1102, column: 10)
!2079 = !DILocation(line: 1103, column: 9, scope: !2078)
!2080 = !DILocation(line: 1103, column: 12, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2078, file: !11, line: 1103, column: 9)
!2082 = !DILocation(line: 1105, column: 7, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2081, file: !11, line: 1103, column: 12)
!2084 = !DILocation(line: 1107, column: 7, scope: !2083)
!2085 = !DILocation(line: 1113, column: 1, scope: !48)
!2086 = !DILocation(line: 1115, column: 35, scope: !51)
!2087 = !DILocation(line: 1115, column: 48, scope: !51)
!2088 = !DILocation(line: 1115, column: 68, scope: !51)
!2089 = !DILocation(line: 1115, column: 85, scope: !51)
!2090 = !DILocation(line: 1116, column: 35, scope: !51)
!2091 = !DILocation(line: 1116, column: 48, scope: !51)
!2092 = !DILocation(line: 1120, column: 7, scope: !189)
!2093 = !DILocation(line: 1121, column: 16, scope: !189)
!2094 = !DILocation(line: 1121, column: 14, scope: !189)
!2095 = !DILocation(line: 1122, column: 7, scope: !256)
!2096 = !DILocation(line: 1122, column: 18, scope: !256)
!2097 = !DILocation(line: 1122, column: 7, scope: !189)
!2098 = !DILocation(line: 1123, column: 5, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !256, file: !11, line: 1122, column: 24)
!2100 = !DILocation(line: 1125, column: 5, scope: !262)
!2101 = !DILocation(line: 1125, column: 9, scope: !262)
!2102 = !DILocation(line: 1125, column: 12, scope: !261)
!2103 = !DILocation(line: 1127, column: 7, scope: !260)
!2104 = !DILocation(line: 1129, column: 7, scope: !260)
!2105 = !DILocation(line: 1135, column: 1, scope: !51)
!2106 = !DILocation(line: 1137, column: 30, scope: !54)
!2107 = !DILocation(line: 1137, column: 49, scope: !54)
!2108 = !DILocation(line: 1137, column: 69, scope: !54)
!2109 = !DILocation(line: 1138, column: 30, scope: !54)
!2110 = !DILocation(line: 1138, column: 50, scope: !54)
!2111 = !DILocation(line: 1138, column: 65, scope: !54)
!2112 = !DILocation(line: 1138, column: 84, scope: !54)
!2113 = !DILocation(line: 1142, column: 7, scope: !172)
!2114 = !DILocation(line: 1143, column: 16, scope: !172)
!2115 = !DILocation(line: 1143, column: 14, scope: !172)
!2116 = !DILocation(line: 1144, column: 7, scope: !223)
!2117 = !DILocation(line: 1144, column: 18, scope: !223)
!2118 = !DILocation(line: 1144, column: 7, scope: !172)
!2119 = !DILocation(line: 1145, column: 5, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !223, file: !11, line: 1144, column: 24)
!2121 = !DILocation(line: 1147, column: 5, scope: !229)
!2122 = !DILocation(line: 1147, column: 9, scope: !229)
!2123 = !DILocation(line: 1147, column: 12, scope: !228)
!2124 = !DILocation(line: 1149, column: 7, scope: !227)
!2125 = !DILocation(line: 1151, column: 7, scope: !227)
!2126 = !DILocation(line: 1157, column: 1, scope: !54)
!2127 = !DILocation(line: 1159, column: 17, scope: !57)
!2128 = !DILocation(line: 1163, column: 7, scope: !195)
!2129 = !DILocation(line: 1164, column: 16, scope: !195)
!2130 = !DILocation(line: 1164, column: 14, scope: !195)
!2131 = !DILocation(line: 1165, column: 7, scope: !271)
!2132 = !DILocation(line: 1165, column: 18, scope: !271)
!2133 = !DILocation(line: 1165, column: 7, scope: !195)
!2134 = !DILocation(line: 1166, column: 5, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !271, file: !11, line: 1165, column: 24)
!2136 = !DILocation(line: 1168, column: 5, scope: !277)
!2137 = !DILocation(line: 1168, column: 9, scope: !277)
!2138 = !DILocation(line: 1168, column: 12, scope: !276)
!2139 = !DILocation(line: 1170, column: 7, scope: !275)
!2140 = !DILocation(line: 1172, column: 7, scope: !275)
!2141 = !DILocation(line: 1178, column: 1, scope: !57)
!2142 = !DILocation(line: 1180, column: 27, scope: !58)
!2143 = !DILocation(line: 1180, column: 46, scope: !58)
!2144 = !DILocation(line: 1181, column: 7, scope: !58)
!2145 = !DILocation(line: 1182, column: 7, scope: !58)
!2146 = !DILocation(line: 1186, column: 12, scope: !1457)
!2147 = !DILocation(line: 1187, column: 25, scope: !1457)
!2148 = !DILocation(line: 1188, column: 30, scope: !1457)
!2149 = !DILocation(line: 1189, column: 22, scope: !1457)
!2150 = !DILocation(line: 1189, column: 3, scope: !1457)
!2151 = !DILocation(line: 1053, column: 7, scope: !458, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 1189, column: 3, scope: !1457)
!2153 = !DILocation(line: 1053, column: 12, scope: !458, inlinedAt: !2152)
!2154 = !DILocation(line: 1053, column: 9, scope: !458, inlinedAt: !2152)
!2155 = !DILocation(line: 1053, column: 7, scope: !459, inlinedAt: !2152)
!2156 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !2157)
!2157 = distinct !DILocation(line: 1057, column: 5, scope: !465, inlinedAt: !2152)
!2158 = !DILocation(line: 1054, column: 9, scope: !468, inlinedAt: !2152)
!2159 = !DILocation(line: 1054, column: 7, scope: !468, inlinedAt: !2152)
!2160 = !DILocation(line: 1060, column: 3, scope: !459, inlinedAt: !2152)
!2161 = !DILocation(line: 1049, column: 29, scope: !44, inlinedAt: !2152)
!2162 = !DILocation(line: 1049, column: 39, scope: !44, inlinedAt: !2152)
!2163 = !DILocation(line: 1191, column: 3, scope: !1458)
!2164 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !59, file: !11, line: 1195, type: !14)
!2165 = !DILocation(line: 1195, column: 29, scope: !59)
!2166 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !59, file: !11, line: 1195, type: !14)
!2167 = !DILocation(line: 1195, column: 48, scope: !59)
!2168 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__HoldNewRequests", scope: !59, file: !11, line: 1196, type: !14)
!2169 = !DILocation(line: 1196, column: 7, scope: !59)
!2170 = !DILocation(line: 1196, column: 44, scope: !59)
!2171 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__IsRemoved", scope: !59, file: !11, line: 1197, type: !14)
!2172 = !DILocation(line: 1197, column: 7, scope: !59)
!2173 = !DILocation(line: 1197, column: 38, scope: !59)
!2174 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !59, file: !11, line: 1198, type: !14)
!2175 = !DILocation(line: 1198, column: 7, scope: !59)
!2176 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__IsStarted", scope: !59, file: !11, line: 1199, type: !14)
!2177 = !DILocation(line: 1199, column: 7, scope: !59)
!2178 = !DILocation(line: 1199, column: 38, scope: !59)
!2179 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !59, file: !11, line: 1200, type: !14)
!2180 = !DILocation(line: 1200, column: 7, scope: !59)
!2181 = !DILocation(line: 1200, column: 30, scope: !59)
!2182 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !59, file: !11, line: 1201, type: !14)
!2183 = !DILocation(line: 1201, column: 7, scope: !59)
!2184 = !DILocation(line: 1201, column: 50, scope: !59)
!2185 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__TargetObject", scope: !59, file: !11, line: 1202, type: !14)
!2186 = !DILocation(line: 1202, column: 7, scope: !59)
!2187 = !DILocation(line: 1202, column: 41, scope: !59)
!2188 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Parameters__DeviceIoControl__OutputBufferLength", scope: !59, file: !11, line: 1203, type: !14)
!2189 = !DILocation(line: 1203, column: 7, scope: !59)
!2190 = !DILocation(line: 1203, column: 64, scope: !59)
!2191 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__MOUNTDEV_NAME", scope: !59, file: !11, line: 1204, type: !14)
!2192 = !DILocation(line: 1204, column: 7, scope: !59)
!2193 = !DILocation(line: 1204, column: 31, scope: !59)
!2194 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__AssociatedIrp__SystemBuffer", scope: !59, file: !11, line: 1205, type: !14)
!2195 = !DILocation(line: 1205, column: 7, scope: !59)
!2196 = !DILocation(line: 1205, column: 42, scope: !59)
!2197 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mountName__NameLength", scope: !59, file: !11, line: 1206, type: !14)
!2198 = !DILocation(line: 1206, column: 7, scope: !59)
!2199 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__DeviceName__Length", scope: !59, file: !11, line: 1207, type: !14)
!2200 = !DILocation(line: 1207, column: 7, scope: !59)
!2201 = !DILocation(line: 1207, column: 47, scope: !59)
!2202 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__USHORT", scope: !59, file: !11, line: 1208, type: !14)
!2203 = !DILocation(line: 1208, column: 7, scope: !59)
!2204 = !DILocation(line: 1208, column: 24, scope: !59)
!2205 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__InterfaceString__Buffer", scope: !59, file: !11, line: 1209, type: !14)
!2206 = !DILocation(line: 1209, column: 7, scope: !59)
!2207 = !DILocation(line: 1209, column: 52, scope: !59)
!2208 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "uniqueId__UniqueIdLength", scope: !59, file: !11, line: 1210, type: !14)
!2209 = !DILocation(line: 1210, column: 7, scope: !59)
!2210 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__InterfaceString__Length", scope: !59, file: !11, line: 1211, type: !14)
!2211 = !DILocation(line: 1211, column: 7, scope: !59)
!2212 = !DILocation(line: 1211, column: 52, scope: !59)
!2213 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__MOUNTDEV_UNIQUE_ID", scope: !59, file: !11, line: 1212, type: !14)
!2214 = !DILocation(line: 1212, column: 7, scope: !59)
!2215 = !DILocation(line: 1212, column: 36, scope: !59)
!2216 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Parameters__DeviceIoControl__InputBufferLength", scope: !59, file: !11, line: 1213, type: !14)
!2217 = !DILocation(line: 1213, column: 7, scope: !59)
!2218 = !DILocation(line: 1213, column: 63, scope: !59)
!2219 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__FORMAT_PARAMETERS", scope: !59, file: !11, line: 1214, type: !14)
!2220 = !DILocation(line: 1214, column: 7, scope: !59)
!2221 = !DILocation(line: 1214, column: 35, scope: !59)
!2222 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Parameters__DeviceIoControl__IoControlCode___1", scope: !59, file: !11, line: 1215, type: !14)
!2223 = !DILocation(line: 1215, column: 7, scope: !59)
!2224 = !DILocation(line: 1215, column: 63, scope: !59)
!2225 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__FORMAT_EX_PARAMETERS", scope: !59, file: !11, line: 1216, type: !14)
!2226 = !DILocation(line: 1216, column: 7, scope: !59)
!2227 = !DILocation(line: 1216, column: 38, scope: !59)
!2228 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "formatExParameters__FormatGapLength", scope: !59, file: !11, line: 1217, type: !14)
!2229 = !DILocation(line: 1217, column: 7, scope: !59)
!2230 = !DILocation(line: 1217, column: 45, scope: !59)
!2231 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "formatExParameters__SectorsPerTrack", scope: !59, file: !11, line: 1218, type: !14)
!2232 = !DILocation(line: 1218, column: 7, scope: !59)
!2233 = !DILocation(line: 1218, column: 45, scope: !59)
!2234 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__DISK_GEOMETRY", scope: !59, file: !11, line: 1219, type: !14)
!2235 = !DILocation(line: 1219, column: 7, scope: !59)
!2236 = !DILocation(line: 1219, column: 31, scope: !59)
!2237 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status___0", scope: !59, file: !11, line: 1220, type: !14)
!2238 = !DILocation(line: 1220, column: 7, scope: !59)
!2239 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension", scope: !59, file: !11, line: 1221, type: !14)
!2240 = !DILocation(line: 1221, column: 7, scope: !59)
!2241 = !DILocation(line: 1221, column: 27, scope: !59)
!2242 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ntStatus", scope: !59, file: !11, line: 1222, type: !14)
!2243 = !DILocation(line: 1222, column: 7, scope: !59)
!2244 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outputBufferLength", scope: !59, file: !11, line: 1223, type: !14)
!2245 = !DILocation(line: 1223, column: 7, scope: !59)
!2246 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lowestDriveMediaType", scope: !59, file: !11, line: 1224, type: !14)
!2247 = !DILocation(line: 1224, column: 7, scope: !59)
!2248 = !DILocation(line: 1224, column: 30, scope: !59)
!2249 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "highestDriveMediaType", scope: !59, file: !11, line: 1225, type: !14)
!2250 = !DILocation(line: 1225, column: 7, scope: !59)
!2251 = !DILocation(line: 1225, column: 31, scope: !59)
!2252 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "formatExParametersSize", scope: !59, file: !11, line: 1226, type: !14)
!2253 = !DILocation(line: 1226, column: 7, scope: !59)
!2254 = !DILocation(line: 1226, column: 32, scope: !59)
!2255 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "formatExParameters", scope: !59, file: !11, line: 1227, type: !14)
!2256 = !DILocation(line: 1227, column: 7, scope: !59)
!2257 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !59, file: !11, line: 1228, type: !14)
!2258 = !DILocation(line: 1228, column: 7, scope: !59)
!2259 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mountName", scope: !59, file: !11, line: 1229, type: !14)
!2260 = !DILocation(line: 1229, column: 7, scope: !59)
!2261 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "uniqueId", scope: !59, file: !11, line: 1230, type: !14)
!2262 = !DILocation(line: 1230, column: 7, scope: !59)
!2263 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___0", scope: !59, file: !11, line: 1231, type: !14)
!2264 = !DILocation(line: 1231, column: 7, scope: !59)
!2265 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp39", scope: !59, file: !11, line: 1232, type: !14)
!2266 = !DILocation(line: 1232, column: 7, scope: !59)
!2267 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp40", scope: !59, file: !11, line: 1233, type: !14)
!2268 = !DILocation(line: 1233, column: 7, scope: !59)
!2269 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp41", scope: !59, file: !11, line: 1234, type: !14)
!2270 = !DILocation(line: 1234, column: 7, scope: !59)
!2271 = !DILocation(line: 1234, column: 21, scope: !59)
!2272 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp42", scope: !59, file: !11, line: 1235, type: !14)
!2273 = !DILocation(line: 1235, column: 7, scope: !59)
!2274 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp43", scope: !59, file: !11, line: 1236, type: !14)
!2275 = !DILocation(line: 1236, column: 7, scope: !59)
!2276 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp44", scope: !59, file: !11, line: 1237, type: !14)
!2277 = !DILocation(line: 1237, column: 7, scope: !59)
!2278 = !DILocation(line: 1237, column: 21, scope: !59)
!2279 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp45", scope: !59, file: !11, line: 1238, type: !14)
!2280 = !DILocation(line: 1238, column: 7, scope: !59)
!2281 = !DILocation(line: 1238, column: 21, scope: !59)
!2282 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp46", scope: !59, file: !11, line: 1239, type: !14)
!2283 = !DILocation(line: 1239, column: 7, scope: !59)
!2284 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp47", scope: !59, file: !11, line: 1240, type: !14)
!2285 = !DILocation(line: 1240, column: 7, scope: !59)
!2286 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp48", scope: !59, file: !11, line: 1241, type: !14)
!2287 = !DILocation(line: 1241, column: 7, scope: !59)
!2288 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp49", scope: !59, file: !11, line: 1242, type: !14)
!2289 = !DILocation(line: 1242, column: 7, scope: !59)
!2290 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp50", scope: !59, file: !11, line: 1243, type: !14)
!2291 = !DILocation(line: 1243, column: 7, scope: !59)
!2292 = !DILocation(line: 1243, column: 21, scope: !59)
!2293 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp51", scope: !59, file: !11, line: 1244, type: !14)
!2294 = !DILocation(line: 1244, column: 7, scope: !59)
!2295 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp52", scope: !59, file: !11, line: 1245, type: !14)
!2296 = !DILocation(line: 1245, column: 7, scope: !59)
!2297 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp53", scope: !59, file: !11, line: 1246, type: !14)
!2298 = !DILocation(line: 1246, column: 7, scope: !59)
!2299 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp54", scope: !59, file: !11, line: 1247, type: !14)
!2300 = !DILocation(line: 1247, column: 7, scope: !59)
!2301 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp55", scope: !59, file: !11, line: 1248, type: !14)
!2302 = !DILocation(line: 1248, column: 7, scope: !59)
!2303 = !DILocation(line: 1248, column: 21, scope: !59)
!2304 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp56", scope: !59, file: !11, line: 1249, type: !14)
!2305 = !DILocation(line: 1249, column: 7, scope: !59)
!2306 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp57", scope: !59, file: !11, line: 1250, type: !14)
!2307 = !DILocation(line: 1250, column: 7, scope: !59)
!2308 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp58", scope: !59, file: !11, line: 1251, type: !14)
!2309 = !DILocation(line: 1251, column: 7, scope: !59)
!2310 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp59", scope: !59, file: !11, line: 1252, type: !14)
!2311 = !DILocation(line: 1252, column: 7, scope: !59)
!2312 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp60", scope: !59, file: !11, line: 1253, type: !14)
!2313 = !DILocation(line: 1253, column: 7, scope: !59)
!2314 = !DILocation(line: 1253, column: 21, scope: !59)
!2315 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp61", scope: !59, file: !11, line: 1254, type: !14)
!2316 = !DILocation(line: 1254, column: 7, scope: !59)
!2317 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp62", scope: !59, file: !11, line: 1255, type: !14)
!2318 = !DILocation(line: 1255, column: 7, scope: !59)
!2319 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp63", scope: !59, file: !11, line: 1256, type: !14)
!2320 = !DILocation(line: 1256, column: 7, scope: !59)
!2321 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp64", scope: !59, file: !11, line: 1257, type: !14)
!2322 = !DILocation(line: 1257, column: 7, scope: !59)
!2323 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp65", scope: !59, file: !11, line: 1258, type: !14)
!2324 = !DILocation(line: 1258, column: 7, scope: !59)
!2325 = !DILocation(line: 1258, column: 21, scope: !59)
!2326 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp66", scope: !59, file: !11, line: 1259, type: !14)
!2327 = !DILocation(line: 1259, column: 7, scope: !59)
!2328 = !DILocation(line: 1259, column: 21, scope: !59)
!2329 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp67", scope: !59, file: !11, line: 1260, type: !14)
!2330 = !DILocation(line: 1260, column: 7, scope: !59)
!2331 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp68", scope: !59, file: !11, line: 1261, type: !14)
!2332 = !DILocation(line: 1261, column: 7, scope: !59)
!2333 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp69", scope: !59, file: !11, line: 1262, type: !14)
!2334 = !DILocation(line: 1262, column: 7, scope: !59)
!2335 = !DILocation(line: 1262, column: 21, scope: !59)
!2336 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp70", scope: !59, file: !11, line: 1263, type: !14)
!2337 = !DILocation(line: 1263, column: 7, scope: !59)
!2338 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp71", scope: !59, file: !11, line: 1264, type: !14)
!2339 = !DILocation(line: 1264, column: 7, scope: !59)
!2340 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp72", scope: !59, file: !11, line: 1265, type: !14)
!2341 = !DILocation(line: 1265, column: 7, scope: !59)
!2342 = !DILocation(line: 1265, column: 21, scope: !59)
!2343 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp73", scope: !59, file: !11, line: 1266, type: !14)
!2344 = !DILocation(line: 1266, column: 7, scope: !59)
!2345 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp74", scope: !59, file: !11, line: 1267, type: !14)
!2346 = !DILocation(line: 1267, column: 7, scope: !59)
!2347 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp75", scope: !59, file: !11, line: 1268, type: !14)
!2348 = !DILocation(line: 1268, column: 7, scope: !59)
!2349 = !DILocation(line: 1268, column: 21, scope: !59)
!2350 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp76", scope: !59, file: !11, line: 1269, type: !14)
!2351 = !DILocation(line: 1269, column: 7, scope: !59)
!2352 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp77", scope: !59, file: !11, line: 1270, type: !14)
!2353 = !DILocation(line: 1270, column: 7, scope: !59)
!2354 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp78", scope: !59, file: !11, line: 1271, type: !14)
!2355 = !DILocation(line: 1271, column: 7, scope: !59)
!2356 = !DILocation(line: 1271, column: 21, scope: !59)
!2357 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp79", scope: !59, file: !11, line: 1272, type: !14)
!2358 = !DILocation(line: 1272, column: 7, scope: !59)
!2359 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp80", scope: !59, file: !11, line: 1273, type: !14)
!2360 = !DILocation(line: 1273, column: 7, scope: !59)
!2361 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp81", scope: !59, file: !11, line: 1274, type: !14)
!2362 = !DILocation(line: 1274, column: 7, scope: !59)
!2363 = !DILocation(line: 1274, column: 21, scope: !59)
!2364 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp82", scope: !59, file: !11, line: 1275, type: !14)
!2365 = !DILocation(line: 1275, column: 7, scope: !59)
!2366 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp83", scope: !59, file: !11, line: 1276, type: !14)
!2367 = !DILocation(line: 1276, column: 7, scope: !59)
!2368 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp84", scope: !59, file: !11, line: 1277, type: !14)
!2369 = !DILocation(line: 1277, column: 7, scope: !59)
!2370 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp85", scope: !59, file: !11, line: 1278, type: !14)
!2371 = !DILocation(line: 1278, column: 7, scope: !59)
!2372 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp86", scope: !59, file: !11, line: 1279, type: !14)
!2373 = !DILocation(line: 1279, column: 7, scope: !59)
!2374 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp87", scope: !59, file: !11, line: 1280, type: !14)
!2375 = !DILocation(line: 1280, column: 7, scope: !59)
!2376 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp88", scope: !59, file: !11, line: 1281, type: !14)
!2377 = !DILocation(line: 1281, column: 7, scope: !59)
!2378 = !DILocation(line: 1281, column: 21, scope: !59)
!2379 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp89", scope: !59, file: !11, line: 1282, type: !14)
!2380 = !DILocation(line: 1282, column: 7, scope: !59)
!2381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp90", scope: !59, file: !11, line: 1283, type: !14)
!2382 = !DILocation(line: 1283, column: 7, scope: !59)
!2383 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp91", scope: !59, file: !11, line: 1284, type: !4)
!2384 = !DILocation(line: 1284, column: 8, scope: !59)
!2385 = !DILocation(line: 1234, column: 7, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !11, line: 1234, column: 7)
!2387 = distinct !DILexicalBlock(scope: !59, file: !11, line: 1286, column: 3)
!2388 = !DILocation(line: 1049, column: 29, scope: !44, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 1251, column: 5, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !11, line: 1247, column: 5)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !11, line: 1246, column: 37)
!2392 = distinct !DILexicalBlock(scope: !2387, file: !11, line: 1246, column: 7)
!2393 = !DILocation(line: 1049, column: 39, scope: !44, inlinedAt: !2389)
!2394 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DisketteExtension", arg: 1, scope: !60, file: !11, line: 1469, type: !14)
!2395 = !DILocation(line: 1469, column: 33, scope: !60, inlinedAt: !2396)
!2396 = distinct !DILocation(line: 1365, column: 39, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !11, line: 1362, column: 29)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !11, line: 1312, column: 34)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !11, line: 1312, column: 31)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !11, line: 1309, column: 32)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !11, line: 1307, column: 29)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !11, line: 1307, column: 25)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !11, line: 1306, column: 30)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !11, line: 1304, column: 27)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !11, line: 1304, column: 23)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !11, line: 1303, column: 28)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !11, line: 1301, column: 25)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !11, line: 1301, column: 21)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !11, line: 1300, column: 26)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !11, line: 1298, column: 23)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !11, line: 1298, column: 19)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !11, line: 1297, column: 24)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !11, line: 1295, column: 21)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !11, line: 1295, column: 17)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !11, line: 1294, column: 22)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !11, line: 1292, column: 19)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !11, line: 1292, column: 15)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !11, line: 1291, column: 20)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !11, line: 1289, column: 17)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !11, line: 1289, column: 13)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !11, line: 1288, column: 18)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !11, line: 1286, column: 15)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !11, line: 1286, column: 11)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !11, line: 1285, column: 16)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !11, line: 1283, column: 13)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !11, line: 1283, column: 9)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !11, line: 1282, column: 14)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !11, line: 1280, column: 11)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !11, line: 1280, column: 7)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !11, line: 1279, column: 12)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !11, line: 1277, column: 9)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !11, line: 1277, column: 5)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !11, line: 1276, column: 10)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !11, line: 1274, column: 7)
!2435 = distinct !DILexicalBlock(scope: !2387, file: !11, line: 1272, column: 3)
!2436 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "FormatParameters", arg: 2, scope: !60, file: !11, line: 1469, type: !14)
!2437 = !DILocation(line: 1469, column: 57, scope: !60, inlinedAt: !2396)
!2438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DriveMediaConstants__driveMediaType__MediaType", scope: !60, file: !11, line: 1470, type: !14)
!2439 = !DILocation(line: 1470, column: 7, scope: !60, inlinedAt: !2396)
!2440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "FormatParameters__MediaType", scope: !60, file: !11, line: 1471, type: !14)
!2441 = !DILocation(line: 1471, column: 7, scope: !60, inlinedAt: !2396)
!2442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "FAKE_CONDITION", scope: !60, file: !11, line: 1472, type: !14)
!2443 = !DILocation(line: 1472, column: 7, scope: !60, inlinedAt: !2396)
!2444 = !DILocation(line: 1049, column: 29, scope: !44, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 1461, column: 5, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !11, line: 1458, column: 5)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !11, line: 1457, column: 28)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !11, line: 1457, column: 7)
!2449 = distinct !DILexicalBlock(scope: !2387, file: !11, line: 1468, column: 3)
!2450 = !DILocation(line: 1049, column: 39, scope: !44, inlinedAt: !2445)
!2451 = !DILocation(line: 1234, column: 7, scope: !2387)
!2452 = !DILocation(line: 1235, column: 9, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !11, line: 1235, column: 9)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !11, line: 1235, column: 5)
!2455 = distinct !DILexicalBlock(scope: !2386, file: !11, line: 1234, column: 43)
!2456 = !DILocation(line: 1235, column: 66, scope: !2453)
!2457 = !DILocation(line: 1235, column: 63, scope: !2453)
!2458 = !DILocation(line: 1235, column: 9, scope: !2454)
!2459 = !DILocation(line: 1237, column: 37, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !11, line: 1236, column: 7)
!2461 = distinct !DILexicalBlock(scope: !2453, file: !11, line: 1235, column: 79)
!2462 = !DILocation(line: 1237, column: 56, scope: !2460)
!2463 = !DILocation(line: 1237, column: 18, scope: !2460)
!2464 = !DILocation(line: 1237, column: 16, scope: !2460)
!2465 = !DILocation(line: 1239, column: 15, scope: !2461)
!2466 = !DILocation(line: 1239, column: 7, scope: !2461)
!2467 = !DILocation(line: 1242, column: 3, scope: !2455)
!2468 = !DILocation(line: 1246, column: 7, scope: !2392)
!2469 = !DILocation(line: 1246, column: 7, scope: !2387)
!2470 = !DILocation(line: 1248, column: 32, scope: !2390)
!2471 = !DILocation(line: 1249, column: 31, scope: !2390)
!2472 = !DILocation(line: 1250, column: 14, scope: !2390)
!2473 = !DILocation(line: 1251, column: 24, scope: !2390)
!2474 = !DILocation(line: 1251, column: 5, scope: !2390)
!2475 = !DILocation(line: 1053, column: 7, scope: !458, inlinedAt: !2389)
!2476 = !DILocation(line: 1053, column: 12, scope: !458, inlinedAt: !2389)
!2477 = !DILocation(line: 1053, column: 9, scope: !458, inlinedAt: !2389)
!2478 = !DILocation(line: 1053, column: 7, scope: !459, inlinedAt: !2389)
!2479 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 1057, column: 5, scope: !465, inlinedAt: !2389)
!2481 = !DILocation(line: 1054, column: 9, scope: !468, inlinedAt: !2389)
!2482 = !DILocation(line: 1054, column: 7, scope: !468, inlinedAt: !2389)
!2483 = !DILocation(line: 1060, column: 3, scope: !459, inlinedAt: !2389)
!2484 = !DILocation(line: 1253, column: 5, scope: !2391)
!2485 = !DILocation(line: 1257, column: 9, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2387, file: !11, line: 1257, column: 7)
!2487 = !DILocation(line: 1257, column: 7, scope: !2387)
!2488 = !DILocation(line: 1258, column: 9, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !11, line: 1258, column: 9)
!2490 = distinct !DILexicalBlock(scope: !2486, file: !11, line: 1257, column: 39)
!2491 = !DILocation(line: 1258, column: 14, scope: !2489)
!2492 = !DILocation(line: 1258, column: 11, scope: !2489)
!2493 = !DILocation(line: 1258, column: 9, scope: !2490)
!2494 = !DILocation(line: 1259, column: 11, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2489, file: !11, line: 1258, column: 18)
!2496 = !DILocation(line: 1259, column: 9, scope: !2495)
!2497 = !DILocation(line: 1260, column: 5, scope: !2495)
!2498 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 1262, column: 7, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !11, line: 1261, column: 7)
!2501 = distinct !DILexicalBlock(scope: !2489, file: !11, line: 1260, column: 12)
!2502 = !DILocation(line: 1266, column: 26, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2490, file: !11, line: 1265, column: 5)
!2504 = !DILocation(line: 1267, column: 46, scope: !2503)
!2505 = !DILocation(line: 1268, column: 25, scope: !2503)
!2506 = !DILocation(line: 1268, column: 58, scope: !2503)
!2507 = !DILocation(line: 1268, column: 11, scope: !2503)
!2508 = !DILocation(line: 1268, column: 9, scope: !2503)
!2509 = !DILocation(line: 1270, column: 13, scope: !2490)
!2510 = !DILocation(line: 1270, column: 5, scope: !2490)
!2511 = !DILocation(line: 1274, column: 7, scope: !2434)
!2512 = !DILocation(line: 1274, column: 64, scope: !2434)
!2513 = !DILocation(line: 1274, column: 61, scope: !2434)
!2514 = !DILocation(line: 1274, column: 7, scope: !2435)
!2515 = !DILocation(line: 1275, column: 5, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2434, file: !11, line: 1274, column: 77)
!2517 = !DILocation(line: 1277, column: 9, scope: !2431)
!2518 = !DILocation(line: 1277, column: 66, scope: !2431)
!2519 = !DILocation(line: 1277, column: 63, scope: !2431)
!2520 = !DILocation(line: 1277, column: 9, scope: !2432)
!2521 = !DILocation(line: 1278, column: 7, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2431, file: !11, line: 1277, column: 79)
!2523 = !DILocation(line: 1280, column: 11, scope: !2428)
!2524 = !DILocation(line: 1280, column: 68, scope: !2428)
!2525 = !DILocation(line: 1280, column: 65, scope: !2428)
!2526 = !DILocation(line: 1280, column: 11, scope: !2429)
!2527 = !DILocation(line: 1281, column: 9, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2428, file: !11, line: 1280, column: 81)
!2529 = !DILocation(line: 1283, column: 13, scope: !2425)
!2530 = !DILocation(line: 1283, column: 70, scope: !2425)
!2531 = !DILocation(line: 1283, column: 67, scope: !2425)
!2532 = !DILocation(line: 1283, column: 13, scope: !2426)
!2533 = !DILocation(line: 1284, column: 11, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2425, file: !11, line: 1283, column: 83)
!2535 = !DILocation(line: 1286, column: 15, scope: !2422)
!2536 = !DILocation(line: 1286, column: 72, scope: !2422)
!2537 = !DILocation(line: 1286, column: 69, scope: !2422)
!2538 = !DILocation(line: 1286, column: 15, scope: !2423)
!2539 = !DILocation(line: 1287, column: 13, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2422, file: !11, line: 1286, column: 85)
!2541 = !DILocation(line: 1289, column: 17, scope: !2419)
!2542 = !DILocation(line: 1289, column: 74, scope: !2419)
!2543 = !DILocation(line: 1289, column: 71, scope: !2419)
!2544 = !DILocation(line: 1289, column: 17, scope: !2420)
!2545 = !DILocation(line: 1290, column: 15, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2419, file: !11, line: 1289, column: 87)
!2547 = !DILocation(line: 1292, column: 19, scope: !2416)
!2548 = !DILocation(line: 1292, column: 76, scope: !2416)
!2549 = !DILocation(line: 1292, column: 73, scope: !2416)
!2550 = !DILocation(line: 1292, column: 19, scope: !2417)
!2551 = !DILocation(line: 1293, column: 17, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2416, file: !11, line: 1292, column: 89)
!2553 = !DILocation(line: 1295, column: 21, scope: !2413)
!2554 = !DILocation(line: 1295, column: 78, scope: !2413)
!2555 = !DILocation(line: 1295, column: 75, scope: !2413)
!2556 = !DILocation(line: 1295, column: 21, scope: !2414)
!2557 = !DILocation(line: 1296, column: 19, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2413, file: !11, line: 1295, column: 91)
!2559 = !DILocation(line: 1298, column: 23, scope: !2410)
!2560 = !DILocation(line: 1298, column: 80, scope: !2410)
!2561 = !DILocation(line: 1298, column: 77, scope: !2410)
!2562 = !DILocation(line: 1298, column: 23, scope: !2411)
!2563 = !DILocation(line: 1299, column: 21, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2410, file: !11, line: 1298, column: 93)
!2565 = !DILocation(line: 1301, column: 25, scope: !2407)
!2566 = !DILocation(line: 1301, column: 82, scope: !2407)
!2567 = !DILocation(line: 1301, column: 79, scope: !2407)
!2568 = !DILocation(line: 1301, column: 25, scope: !2408)
!2569 = !DILocation(line: 1302, column: 23, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2407, file: !11, line: 1301, column: 95)
!2571 = !DILocation(line: 1304, column: 27, scope: !2404)
!2572 = !DILocation(line: 1304, column: 84, scope: !2404)
!2573 = !DILocation(line: 1304, column: 81, scope: !2404)
!2574 = !DILocation(line: 1304, column: 27, scope: !2405)
!2575 = !DILocation(line: 1305, column: 25, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2404, file: !11, line: 1304, column: 97)
!2577 = !DILocation(line: 1307, column: 29, scope: !2401)
!2578 = !DILocation(line: 1307, column: 86, scope: !2401)
!2579 = !DILocation(line: 1307, column: 83, scope: !2401)
!2580 = !DILocation(line: 1307, column: 29, scope: !2402)
!2581 = !DILocation(line: 1308, column: 27, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2401, file: !11, line: 1307, column: 99)
!2583 = !DILocation(line: 1310, column: 27, scope: !2400)
!2584 = !DILocation(line: 1312, column: 31, scope: !2400)
!2585 = !DILocation(line: 1312, column: 34, scope: !2399)
!2586 = !DILocation(line: 1314, column: 33, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2398, file: !11, line: 1314, column: 33)
!2588 = !DILocation(line: 1314, column: 90, scope: !2587)
!2589 = !DILocation(line: 1314, column: 88, scope: !2587)
!2590 = !DILocation(line: 1314, column: 33, scope: !2398)
!2591 = !DILocation(line: 1315, column: 40, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2587, file: !11, line: 1314, column: 113)
!2593 = !DILocation(line: 1316, column: 31, scope: !2592)
!2594 = !DILocation(line: 1320, column: 41, scope: !2398)
!2595 = !DILocation(line: 1320, column: 39, scope: !2398)
!2596 = !DILocation(line: 1321, column: 53, scope: !2398)
!2597 = !DILocation(line: 1321, column: 51, scope: !2398)
!2598 = !DILocation(line: 1322, column: 43, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2398, file: !11, line: 1322, column: 29)
!2600 = !DILocation(line: 1322, column: 60, scope: !2599)
!2601 = !DILocation(line: 1322, column: 58, scope: !2599)
!2602 = !DILocation(line: 1322, column: 41, scope: !2599)
!2603 = !DILocation(line: 1322, column: 33, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2599, file: !11, line: 1322, column: 33)
!2605 = !DILocation(line: 1322, column: 90, scope: !2604)
!2606 = !DILocation(line: 1322, column: 88, scope: !2604)
!2607 = !DILocation(line: 1322, column: 33, scope: !2599)
!2608 = !DILocation(line: 1323, column: 40, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2604, file: !11, line: 1322, column: 103)
!2610 = !DILocation(line: 1324, column: 60, scope: !2609)
!2611 = !DILocation(line: 1324, column: 58, scope: !2609)
!2612 = !DILocation(line: 1325, column: 31, scope: !2609)
!2613 = !DILocation(line: 1329, column: 38, scope: !2398)
!2614 = !DILocation(line: 1330, column: 58, scope: !2398)
!2615 = !DILocation(line: 1330, column: 75, scope: !2398)
!2616 = !DILocation(line: 1330, column: 73, scope: !2398)
!2617 = !DILocation(line: 1330, column: 56, scope: !2398)
!2618 = !DILocation(line: 1331, column: 29, scope: !2398)
!2619 = !DILocation(line: 1333, column: 35, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2398, file: !11, line: 1333, column: 33)
!2621 = !DILocation(line: 1333, column: 33, scope: !2398)
!2622 = !DILocation(line: 1334, column: 40, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2620, file: !11, line: 1333, column: 79)
!2624 = !DILocation(line: 1335, column: 31, scope: !2623)
!2625 = !DILocation(line: 1337, column: 35, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !11, line: 1337, column: 35)
!2627 = distinct !DILexicalBlock(scope: !2620, file: !11, line: 1336, column: 36)
!2628 = !DILocation(line: 1337, column: 92, scope: !2626)
!2629 = !DILocation(line: 1337, column: 90, scope: !2626)
!2630 = !DILocation(line: 1337, column: 35, scope: !2627)
!2631 = !DILocation(line: 1338, column: 42, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2626, file: !11, line: 1337, column: 120)
!2633 = !DILocation(line: 1339, column: 33, scope: !2632)
!2634 = !DILocation(line: 1344, column: 40, scope: !2398)
!2635 = !DILocation(line: 1344, column: 38, scope: !2398)
!2636 = !DILocation(line: 1345, column: 56, scope: !2398)
!2637 = !DILocation(line: 1345, column: 54, scope: !2398)
!2638 = !DILocation(line: 1346, column: 43, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2398, file: !11, line: 1346, column: 29)
!2640 = !DILocation(line: 1346, column: 60, scope: !2639)
!2641 = !DILocation(line: 1346, column: 58, scope: !2639)
!2642 = !DILocation(line: 1346, column: 41, scope: !2639)
!2643 = !DILocation(line: 1346, column: 33, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2639, file: !11, line: 1346, column: 33)
!2645 = !DILocation(line: 1346, column: 90, scope: !2644)
!2646 = !DILocation(line: 1346, column: 88, scope: !2644)
!2647 = !DILocation(line: 1346, column: 33, scope: !2639)
!2648 = !DILocation(line: 1347, column: 40, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2644, file: !11, line: 1346, column: 103)
!2650 = !DILocation(line: 1348, column: 60, scope: !2649)
!2651 = !DILocation(line: 1348, column: 58, scope: !2649)
!2652 = !DILocation(line: 1349, column: 31, scope: !2649)
!2653 = !DILocation(line: 1353, column: 38, scope: !2398)
!2654 = !DILocation(line: 1354, column: 58, scope: !2398)
!2655 = !DILocation(line: 1354, column: 75, scope: !2398)
!2656 = !DILocation(line: 1354, column: 73, scope: !2398)
!2657 = !DILocation(line: 1354, column: 56, scope: !2398)
!2658 = !DILocation(line: 1355, column: 29, scope: !2398)
!2659 = !DILocation(line: 1358, column: 33, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2398, file: !11, line: 1358, column: 33)
!2661 = !DILocation(line: 1358, column: 89, scope: !2660)
!2662 = !DILocation(line: 1358, column: 87, scope: !2660)
!2663 = !DILocation(line: 1358, column: 33, scope: !2398)
!2664 = !DILocation(line: 1359, column: 40, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2660, file: !11, line: 1358, column: 116)
!2666 = !DILocation(line: 1360, column: 31, scope: !2665)
!2667 = !DILocation(line: 1365, column: 63, scope: !2397)
!2668 = !DILocation(line: 1365, column: 82, scope: !2397)
!2669 = !DILocation(line: 1365, column: 39, scope: !2397)
!2670 = !DILocation(line: 1470, column: 56, scope: !60, inlinedAt: !2396)
!2671 = !DILocation(line: 1471, column: 37, scope: !60, inlinedAt: !2396)
!2672 = !DILocation(line: 1472, column: 24, scope: !60, inlinedAt: !2396)
!2673 = !DILocation(line: 1475, column: 7, scope: !2674, inlinedAt: !2396)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !11, line: 1475, column: 7)
!2675 = distinct !DILexicalBlock(scope: !60, file: !11, line: 1474, column: 3)
!2676 = !DILocation(line: 1475, column: 57, scope: !2674, inlinedAt: !2396)
!2677 = !DILocation(line: 1475, column: 54, scope: !2674, inlinedAt: !2396)
!2678 = !DILocation(line: 1475, column: 7, scope: !2675, inlinedAt: !2396)
!2679 = !DILocation(line: 1476, column: 5, scope: !2680, inlinedAt: !2396)
!2680 = distinct !DILexicalBlock(scope: !2674, file: !11, line: 1475, column: 86)
!2681 = !DILocation(line: 1478, column: 9, scope: !2682, inlinedAt: !2396)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !11, line: 1478, column: 9)
!2683 = distinct !DILexicalBlock(scope: !2674, file: !11, line: 1477, column: 10)
!2684 = !DILocation(line: 1478, column: 9, scope: !2683, inlinedAt: !2396)
!2685 = !DILocation(line: 1479, column: 7, scope: !2686, inlinedAt: !2396)
!2686 = distinct !DILexicalBlock(scope: !2682, file: !11, line: 1478, column: 25)
!2687 = !DILocation(line: 1481, column: 7, scope: !2688, inlinedAt: !2396)
!2688 = distinct !DILexicalBlock(scope: !2682, file: !11, line: 1480, column: 12)
!2689 = !DILocation(line: 1485, column: 1, scope: !60, inlinedAt: !2396)
!2690 = !DILocation(line: 1365, column: 37, scope: !2397)
!2691 = !DILocation(line: 1367, column: 35, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2398, file: !11, line: 1367, column: 33)
!2693 = !DILocation(line: 1367, column: 33, scope: !2398)
!2694 = !DILocation(line: 1370, column: 40, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2692, file: !11, line: 1367, column: 44)
!2696 = !DILocation(line: 1371, column: 31, scope: !2695)
!2697 = !DILocation(line: 1373, column: 33, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2699, file: !11, line: 1373, column: 33)
!2699 = distinct !DILexicalBlock(scope: !2398, file: !11, line: 1373, column: 29)
!2700 = !DILocation(line: 1373, column: 90, scope: !2698)
!2701 = !DILocation(line: 1373, column: 87, scope: !2698)
!2702 = !DILocation(line: 1373, column: 33, scope: !2699)
!2703 = !DILocation(line: 1374, column: 35, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !11, line: 1374, column: 35)
!2705 = distinct !DILexicalBlock(scope: !2698, file: !11, line: 1373, column: 103)
!2706 = !DILocation(line: 1374, column: 91, scope: !2704)
!2707 = !DILocation(line: 1374, column: 89, scope: !2704)
!2708 = !DILocation(line: 1374, column: 35, scope: !2705)
!2709 = !DILocation(line: 1375, column: 42, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2704, file: !11, line: 1374, column: 121)
!2711 = !DILocation(line: 1376, column: 33, scope: !2710)
!2712 = !DILocation(line: 1380, column: 52, scope: !2705)
!2713 = !DILocation(line: 1380, column: 50, scope: !2705)
!2714 = !DILocation(line: 1381, column: 35, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2705, file: !11, line: 1381, column: 35)
!2716 = !DILocation(line: 1381, column: 91, scope: !2715)
!2717 = !DILocation(line: 1381, column: 89, scope: !2715)
!2718 = !DILocation(line: 1381, column: 35, scope: !2705)
!2719 = !DILocation(line: 1382, column: 42, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2715, file: !11, line: 1381, column: 115)
!2721 = !DILocation(line: 1383, column: 33, scope: !2720)
!2722 = !DILocation(line: 1385, column: 37, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !11, line: 1385, column: 37)
!2724 = distinct !DILexicalBlock(scope: !2715, file: !11, line: 1384, column: 38)
!2725 = !DILocation(line: 1385, column: 73, scope: !2723)
!2726 = !DILocation(line: 1385, column: 37, scope: !2724)
!2727 = !DILocation(line: 1386, column: 44, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2723, file: !11, line: 1385, column: 81)
!2729 = !DILocation(line: 1387, column: 35, scope: !2728)
!2730 = !DILocation(line: 1389, column: 39, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !11, line: 1389, column: 39)
!2732 = distinct !DILexicalBlock(scope: !2723, file: !11, line: 1388, column: 40)
!2733 = !DILocation(line: 1389, column: 75, scope: !2731)
!2734 = !DILocation(line: 1389, column: 39, scope: !2732)
!2735 = !DILocation(line: 1390, column: 46, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2731, file: !11, line: 1389, column: 83)
!2737 = !DILocation(line: 1391, column: 37, scope: !2736)
!2738 = !DILocation(line: 1395, column: 29, scope: !2705)
!2739 = !DILocation(line: 1396, column: 29, scope: !2699)
!2740 = !DILocation(line: 1405, column: 59, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2398, file: !11, line: 1401, column: 29)
!2742 = !DILocation(line: 1405, column: 64, scope: !2741)
!2743 = !DILocation(line: 1405, column: 40, scope: !2741)
!2744 = !DILocation(line: 1405, column: 38, scope: !2741)
!2745 = !DILocation(line: 1407, column: 29, scope: !2398)
!2746 = !DILocation(line: 1410, column: 50, scope: !2398)
!2747 = !DILocation(line: 1410, column: 48, scope: !2398)
!2748 = !DILocation(line: 1411, column: 33, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2398, file: !11, line: 1411, column: 33)
!2750 = !DILocation(line: 1411, column: 54, scope: !2749)
!2751 = !DILocation(line: 1411, column: 52, scope: !2749)
!2752 = !DILocation(line: 1411, column: 33, scope: !2398)
!2753 = !DILocation(line: 1412, column: 40, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2749, file: !11, line: 1411, column: 77)
!2755 = !DILocation(line: 1413, column: 31, scope: !2754)
!2756 = !DILocation(line: 1417, column: 38, scope: !2398)
!2757 = !DILocation(line: 1418, column: 43, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2398, file: !11, line: 1418, column: 29)
!2759 = !DILocation(line: 1418, column: 67, scope: !2758)
!2760 = !DILocation(line: 1418, column: 65, scope: !2758)
!2761 = !DILocation(line: 1418, column: 41, scope: !2758)
!2762 = !DILocation(line: 1418, column: 55, scope: !2758)
!2763 = !DILocation(line: 1418, column: 33, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2758, file: !11, line: 1418, column: 33)
!2765 = !DILocation(line: 1418, column: 54, scope: !2764)
!2766 = !DILocation(line: 1418, column: 52, scope: !2764)
!2767 = !DILocation(line: 1418, column: 33, scope: !2758)
!2768 = !DILocation(line: 1419, column: 40, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2764, file: !11, line: 1418, column: 67)
!2770 = !DILocation(line: 1420, column: 29, scope: !2769)
!2771 = !DILocation(line: 1422, column: 29, scope: !2398)
!2772 = !DILocation(line: 1427, column: 33, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2398, file: !11, line: 1427, column: 33)
!2774 = !DILocation(line: 1427, column: 38, scope: !2773)
!2775 = !DILocation(line: 1427, column: 35, scope: !2773)
!2776 = !DILocation(line: 1427, column: 33, scope: !2398)
!2777 = !DILocation(line: 1428, column: 35, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2773, file: !11, line: 1427, column: 42)
!2779 = !DILocation(line: 1428, column: 33, scope: !2778)
!2780 = !DILocation(line: 1429, column: 29, scope: !2778)
!2781 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !2782)
!2782 = distinct !DILocation(line: 1431, column: 31, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !11, line: 1430, column: 31)
!2784 = distinct !DILexicalBlock(scope: !2773, file: !11, line: 1429, column: 36)
!2785 = !DILocation(line: 1435, column: 50, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2398, file: !11, line: 1434, column: 29)
!2787 = !DILocation(line: 1436, column: 70, scope: !2786)
!2788 = !DILocation(line: 1437, column: 54, scope: !2786)
!2789 = !DILocation(line: 1438, column: 54, scope: !2786)
!2790 = !DILocation(line: 1437, column: 40, scope: !2786)
!2791 = !DILocation(line: 1437, column: 38, scope: !2786)
!2792 = !DILocation(line: 1440, column: 37, scope: !2398)
!2793 = !DILocation(line: 1440, column: 29, scope: !2398)
!2794 = !DILocation(line: 1441, column: 34, scope: !2399)
!2795 = !DILocation(line: 1457, column: 24, scope: !2449)
!2796 = !DILocation(line: 1457, column: 17, scope: !2449)
!2797 = !DILocation(line: 1457, column: 15, scope: !2449)
!2798 = !DILocation(line: 1457, column: 7, scope: !2448)
!2799 = !DILocation(line: 1457, column: 19, scope: !2448)
!2800 = !DILocation(line: 1457, column: 7, scope: !2449)
!2801 = !DILocation(line: 1459, column: 33, scope: !2446)
!2802 = !DILocation(line: 1459, column: 31, scope: !2446)
!2803 = !DILocation(line: 1460, column: 16, scope: !2446)
!2804 = !DILocation(line: 1460, column: 14, scope: !2446)
!2805 = !DILocation(line: 1461, column: 24, scope: !2446)
!2806 = !DILocation(line: 1461, column: 5, scope: !2446)
!2807 = !DILocation(line: 1053, column: 7, scope: !458, inlinedAt: !2445)
!2808 = !DILocation(line: 1053, column: 12, scope: !458, inlinedAt: !2445)
!2809 = !DILocation(line: 1053, column: 9, scope: !458, inlinedAt: !2445)
!2810 = !DILocation(line: 1053, column: 7, scope: !459, inlinedAt: !2445)
!2811 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 1057, column: 5, scope: !465, inlinedAt: !2445)
!2813 = !DILocation(line: 1054, column: 9, scope: !468, inlinedAt: !2445)
!2814 = !DILocation(line: 1054, column: 7, scope: !468, inlinedAt: !2445)
!2815 = !DILocation(line: 1060, column: 3, scope: !459, inlinedAt: !2445)
!2816 = !DILocation(line: 1463, column: 3, scope: !2447)
!2817 = !DILocation(line: 1466, column: 11, scope: !2387)
!2818 = !DILocation(line: 1466, column: 3, scope: !2387)
!2819 = !DILocation(line: 1468, column: 1, scope: !59)
!2820 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DisketteExtension", arg: 1, scope: !61, file: !11, line: 1486, type: !14)
!2821 = !DILocation(line: 1486, column: 28, scope: !61)
!2822 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !61, file: !11, line: 1486, type: !14)
!2823 = !DILocation(line: 1486, column: 52, scope: !61)
!2824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !61, file: !11, line: 1487, type: !14)
!2825 = !DILocation(line: 1487, column: 7, scope: !61)
!2826 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !61, file: !11, line: 1488, type: !14)
!2827 = !DILocation(line: 1488, column: 7, scope: !61)
!2828 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation__Control", scope: !61, file: !11, line: 1489, type: !14)
!2829 = !DILocation(line: 1489, column: 7, scope: !61)
!2830 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ntStatus", scope: !61, file: !11, line: 1490, type: !14)
!2831 = !DILocation(line: 1490, column: 7, scope: !61)
!2832 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "FAKE_CONDITION", scope: !61, file: !11, line: 1491, type: !14)
!2833 = !DILocation(line: 1491, column: 7, scope: !61)
!2834 = !DILocation(line: 1491, column: 24, scope: !61)
!2835 = !DILocation(line: 1494, column: 24, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !61, file: !11, line: 1493, column: 3)
!2837 = !DILocation(line: 1495, column: 7, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2836, file: !11, line: 1495, column: 7)
!2839 = !DILocation(line: 1495, column: 28, scope: !2838)
!2840 = !DILocation(line: 1049, column: 29, scope: !44, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 1505, column: 5, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !11, line: 1501, column: 5)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !11, line: 1500, column: 23)
!2844 = distinct !DILexicalBlock(scope: !2836, file: !11, line: 1500, column: 7)
!2845 = !DILocation(line: 1049, column: 39, scope: !44, inlinedAt: !2841)
!2846 = !DILocation(line: 1495, column: 7, scope: !2836)
!2847 = !DILocation(line: 1497, column: 3, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2838, file: !11, line: 1495, column: 34)
!2849 = !DILocation(line: 1500, column: 7, scope: !2844)
!2850 = !DILocation(line: 1500, column: 7, scope: !2836)
!2851 = !DILocation(line: 1502, column: 27, scope: !2842)
!2852 = !DILocation(line: 1503, column: 14, scope: !2842)
!2853 = !DILocation(line: 1504, column: 32, scope: !2842)
!2854 = !DILocation(line: 1505, column: 24, scope: !2842)
!2855 = !DILocation(line: 1505, column: 5, scope: !2842)
!2856 = !DILocation(line: 1053, column: 7, scope: !458, inlinedAt: !2841)
!2857 = !DILocation(line: 1053, column: 12, scope: !458, inlinedAt: !2841)
!2858 = !DILocation(line: 1053, column: 9, scope: !458, inlinedAt: !2841)
!2859 = !DILocation(line: 1053, column: 7, scope: !459, inlinedAt: !2841)
!2860 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !2861)
!2861 = distinct !DILocation(line: 1057, column: 5, scope: !465, inlinedAt: !2841)
!2862 = !DILocation(line: 1054, column: 9, scope: !468, inlinedAt: !2841)
!2863 = !DILocation(line: 1054, column: 7, scope: !468, inlinedAt: !2841)
!2864 = !DILocation(line: 1060, column: 3, scope: !459, inlinedAt: !2841)
!2865 = !DILocation(line: 1506, column: 26, scope: !2842)
!2866 = !DILocation(line: 1508, column: 9, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2843, file: !11, line: 1508, column: 9)
!2868 = !DILocation(line: 1508, column: 30, scope: !2867)
!2869 = !DILocation(line: 1508, column: 9, scope: !2843)
!2870 = !DILocation(line: 1510, column: 5, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2867, file: !11, line: 1508, column: 36)
!2872 = !DILocation(line: 1513, column: 14, scope: !2843)
!2873 = !DILocation(line: 1514, column: 3, scope: !2843)
!2874 = !DILocation(line: 1515, column: 27, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2844, file: !11, line: 1514, column: 10)
!2876 = !DILocation(line: 1516, column: 14, scope: !2875)
!2877 = !DILocation(line: 1518, column: 9, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2875, file: !11, line: 1518, column: 9)
!2879 = !DILocation(line: 1518, column: 16, scope: !2878)
!2880 = !DILocation(line: 1518, column: 9, scope: !2875)
!2881 = !DILocation(line: 1519, column: 14, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2878, file: !11, line: 1518, column: 22)
!2883 = !DILocation(line: 1520, column: 5, scope: !2882)
!2884 = !DILocation(line: 1535, column: 10, scope: !297, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 1522, column: 7, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !11, line: 1521, column: 7)
!2887 = distinct !DILexicalBlock(scope: !2878, file: !11, line: 1520, column: 12)
!2888 = !DILocation(line: 1525, column: 14, scope: !2875)
!2889 = !DILocation(line: 1527, column: 11, scope: !2836)
!2890 = !DILocation(line: 1527, column: 3, scope: !2836)
!2891 = !DILocation(line: 1469, column: 33, scope: !60)
!2892 = !DILocation(line: 1469, column: 57, scope: !60)
!2893 = !DILocation(line: 1470, column: 7, scope: !60)
!2894 = !DILocation(line: 1470, column: 56, scope: !60)
!2895 = !DILocation(line: 1471, column: 7, scope: !60)
!2896 = !DILocation(line: 1471, column: 37, scope: !60)
!2897 = !DILocation(line: 1472, column: 7, scope: !60)
!2898 = !DILocation(line: 1472, column: 24, scope: !60)
!2899 = !DILocation(line: 1475, column: 7, scope: !2674)
!2900 = !DILocation(line: 1475, column: 57, scope: !2674)
!2901 = !DILocation(line: 1475, column: 54, scope: !2674)
!2902 = !DILocation(line: 1475, column: 7, scope: !2675)
!2903 = !DILocation(line: 1476, column: 5, scope: !2680)
!2904 = !DILocation(line: 1478, column: 9, scope: !2682)
!2905 = !DILocation(line: 1478, column: 9, scope: !2683)
!2906 = !DILocation(line: 1479, column: 7, scope: !2686)
!2907 = !DILocation(line: 1481, column: 7, scope: !2688)
!2908 = !DILocation(line: 1485, column: 1, scope: !60)
