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
define void @_BLAST_init() #0 {
  store i32 0, i32* @UNLOADED, align 4, !dbg !93
  store i32 1, i32* @NP, align 4, !dbg !95
  store i32 2, i32* @DC, align 4, !dbg !96
  store i32 3, i32* @SKIP1, align 4, !dbg !97
  store i32 4, i32* @SKIP2, align 4, !dbg !98
  store i32 5, i32* @MPR1, align 4, !dbg !99
  store i32 6, i32* @MPR3, align 4, !dbg !100
  store i32 7, i32* @IPC, align 4, !dbg !101
  %1 = load i32, i32* @UNLOADED, align 4, !dbg !102
  store i32 %1, i32* @s, align 4, !dbg !103
  store i32 0, i32* @pended, align 4, !dbg !104
  store i32 0, i32* @compRegistered, align 4, !dbg !105
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !106
  store i32 0, i32* @setEventCalled, align 4, !dbg !107
  store i32 0, i32* @customIrp, align 4, !dbg !108
  ret void, !dbg !109
}

; Function Attrs: nounwind ssp uwtable
define i32 @FlAcpiConfigureFloppy(i32 %DisketteExtension, i32 %FdcInfo) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %DisketteExtension, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !110, metadata !111), !dbg !112
  store i32 %FdcInfo, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !113, metadata !111), !dbg !114
  ret i32 0, !dbg !115
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
  call void @llvm.dbg.declare(metadata i32* %19, metadata !117, metadata !111), !dbg !118
  store i32 %DisketteExtension, i32* %20, align 4
  call void @llvm.dbg.declare(metadata i32* %20, metadata !119, metadata !111), !dbg !120
  call void @llvm.dbg.declare(metadata i32* %status, metadata !121, metadata !111), !dbg !122
  call void @llvm.dbg.declare(metadata i32* %threadHandle, metadata !123, metadata !111), !dbg !124
  %21 = call i32 @__VERIFIER_nondet_int(), !dbg !125
  store i32 %21, i32* %threadHandle, align 4, !dbg !124
  call void @llvm.dbg.declare(metadata i32* %DisketteExtension__PoweringDown, metadata !126, metadata !111), !dbg !127
  %22 = call i32 @__VERIFIER_nondet_int(), !dbg !128
  store i32 %22, i32* %DisketteExtension__PoweringDown, align 4, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %DisketteExtension__ThreadReferenceCount, metadata !129, metadata !111), !dbg !130
  %23 = call i32 @__VERIFIER_nondet_int(), !dbg !131
  store i32 %23, i32* %DisketteExtension__ThreadReferenceCount, align 4, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %DisketteExtension__FloppyThread, metadata !132, metadata !111), !dbg !133
  %24 = call i32 @__VERIFIER_nondet_int(), !dbg !134
  store i32 %24, i32* %DisketteExtension__FloppyThread, align 4, !dbg !133
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !135, metadata !111), !dbg !136
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !137, metadata !111), !dbg !138
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation__Control, metadata !139, metadata !111), !dbg !140
  call void @llvm.dbg.declare(metadata i32* %ObjAttributes, metadata !141, metadata !111), !dbg !142
  %25 = call i32 @__VERIFIER_nondet_int(), !dbg !143
  store i32 %25, i32* %ObjAttributes, align 4, !dbg !142
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp12, metadata !144, metadata !111), !dbg !145
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp13, metadata !146, metadata !111), !dbg !147
  %26 = load i32, i32* %DisketteExtension__PoweringDown, align 4, !dbg !148
  %27 = icmp eq i32 %26, 1, !dbg !151
  call void @llvm.dbg.declare(metadata i32* %11, metadata !152, metadata !111), !dbg !153
  call void @llvm.dbg.declare(metadata i32* %12, metadata !158, metadata !111), !dbg !159
  call void @llvm.dbg.declare(metadata i32* %13, metadata !160, metadata !111), !dbg !161
  call void @llvm.dbg.declare(metadata i32* %14, metadata !162, metadata !111), !dbg !163
  call void @llvm.dbg.declare(metadata i32* %15, metadata !164, metadata !111), !dbg !165
  call void @llvm.dbg.declare(metadata i32* %16, metadata !166, metadata !111), !dbg !167
  call void @llvm.dbg.declare(metadata i32* %17, metadata !168, metadata !111), !dbg !169
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_14.i, metadata !170, metadata !111), !dbg !172
  call void @llvm.dbg.declare(metadata i32* %4, metadata !173, metadata !111), !dbg !174
  call void @llvm.dbg.declare(metadata i32* %5, metadata !177, metadata !111), !dbg !178
  call void @llvm.dbg.declare(metadata i32* %6, metadata !179, metadata !111), !dbg !180
  call void @llvm.dbg.declare(metadata i32* %7, metadata !181, metadata !111), !dbg !182
  call void @llvm.dbg.declare(metadata i32* %8, metadata !183, metadata !111), !dbg !184
  call void @llvm.dbg.declare(metadata i32* %9, metadata !185, metadata !111), !dbg !186
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_13.i, metadata !187, metadata !111), !dbg !189
  call void @llvm.dbg.declare(metadata i32* %2, metadata !190, metadata !111), !dbg !191
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_15.i, metadata !193, metadata !111), !dbg !195
  br i1 %27, label %28, label %29, !dbg !196

; <label>:28                                      ; preds = %0
  store i32 -1073741101, i32* @myStatus, align 4, !dbg !197
  store i32 -1073741101, i32* %Irp__IoStatus__Status, align 4, !dbg !199
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !200
  store i32 -1073741101, i32* %18, !dbg !201
  br label %131, !dbg !201

; <label>:29                                      ; preds = %0
  %30 = load i32, i32* %DisketteExtension__ThreadReferenceCount, align 4, !dbg !202
  %31 = add nsw i32 %30, 1, !dbg !202
  store i32 %31, i32* %DisketteExtension__ThreadReferenceCount, align 4, !dbg !202
  %32 = load i32, i32* %DisketteExtension__ThreadReferenceCount, align 4, !dbg !203
  %33 = icmp eq i32 %32, 0, !dbg !204
  br i1 %33, label %34, label %125, !dbg !205

; <label>:34                                      ; preds = %29
  %35 = load i32, i32* %DisketteExtension__ThreadReferenceCount, align 4, !dbg !206
  %36 = add nsw i32 %35, 1, !dbg !206
  store i32 %36, i32* %DisketteExtension__ThreadReferenceCount, align 4, !dbg !206
  %37 = load i32, i32* @PagingReferenceCount, align 4, !dbg !207
  %38 = add nsw i32 %37, 1, !dbg !207
  store i32 %38, i32* @PagingReferenceCount, align 4, !dbg !207
  %39 = load i32, i32* @PagingReferenceCount, align 4, !dbg !208
  %40 = icmp eq i32 %39, 1, !dbg !210
  br i1 %40, label %41, label %42, !dbg !211

; <label>:41                                      ; preds = %34
  br label %42, !dbg !212

; <label>:42                                      ; preds = %41, %34
  %43 = load i32, i32* %threadHandle, align 4, !dbg !214
  %44 = load i32, i32* %ObjAttributes, align 4, !dbg !215
  %45 = load i32, i32* @FloppyThread, align 4, !dbg !216
  %46 = load i32, i32* %20, align 4, !dbg !217
  %47 = bitcast i32* %10 to i8*, !dbg !218
  call void @llvm.lifetime.start(i64 4, i8* %47), !dbg !218
  %48 = bitcast i32* %11 to i8*, !dbg !218
  call void @llvm.lifetime.start(i64 4, i8* %48), !dbg !218
  %49 = bitcast i32* %12 to i8*, !dbg !218
  call void @llvm.lifetime.start(i64 4, i8* %49), !dbg !218
  %50 = bitcast i32* %13 to i8*, !dbg !218
  call void @llvm.lifetime.start(i64 4, i8* %50), !dbg !218
  %51 = bitcast i32* %14 to i8*, !dbg !218
  call void @llvm.lifetime.start(i64 4, i8* %51), !dbg !218
  %52 = bitcast i32* %15 to i8*, !dbg !218
  call void @llvm.lifetime.start(i64 4, i8* %52), !dbg !218
  %53 = bitcast i32* %16 to i8*, !dbg !218
  call void @llvm.lifetime.start(i64 4, i8* %53), !dbg !218
  %54 = bitcast i32* %17 to i8*, !dbg !218
  call void @llvm.lifetime.start(i64 4, i8* %54), !dbg !218
  %55 = bitcast i32* %tmp_ndt_14.i to i8*, !dbg !218
  call void @llvm.lifetime.start(i64 4, i8* %55), !dbg !218
  store i32 %43, i32* %11, align 4, !dbg !218
  store i32 0, i32* %12, align 4, !dbg !218
  store i32 %44, i32* %13, align 4, !dbg !218
  store i32 0, i32* %14, align 4, !dbg !218
  store i32 0, i32* %15, align 4, !dbg !218
  store i32 %45, i32* %16, align 4, !dbg !218
  store i32 %46, i32* %17, align 4, !dbg !218
  %56 = call i32 @__VERIFIER_nondet_int() #4, !dbg !219
  store i32 %56, i32* %tmp_ndt_14.i, align 4, !dbg !220
  %57 = load i32, i32* %tmp_ndt_14.i, align 4, !dbg !221
  %58 = icmp eq i32 %57, 0, !dbg !223
  br i1 %58, label %59, label %60, !dbg !224

; <label>:59                                      ; preds = %42
  store i32 0, i32* %10, !dbg !225
  br label %PsCreateSystemThread.exit, !dbg !225

; <label>:60                                      ; preds = %42
  store i32 -1073741823, i32* %10, !dbg !229
  br label %PsCreateSystemThread.exit, !dbg !229

PsCreateSystemThread.exit:                        ; preds = %59, %60
  %61 = load i32, i32* %10, !dbg !230
  %62 = bitcast i32* %10 to i8*, !dbg !230
  call void @llvm.lifetime.end(i64 4, i8* %62), !dbg !230
  %63 = bitcast i32* %11 to i8*, !dbg !230
  call void @llvm.lifetime.end(i64 4, i8* %63), !dbg !230
  %64 = bitcast i32* %12 to i8*, !dbg !230
  call void @llvm.lifetime.end(i64 4, i8* %64), !dbg !230
  %65 = bitcast i32* %13 to i8*, !dbg !230
  call void @llvm.lifetime.end(i64 4, i8* %65), !dbg !230
  %66 = bitcast i32* %14 to i8*, !dbg !230
  call void @llvm.lifetime.end(i64 4, i8* %66), !dbg !230
  %67 = bitcast i32* %15 to i8*, !dbg !230
  call void @llvm.lifetime.end(i64 4, i8* %67), !dbg !230
  %68 = bitcast i32* %16 to i8*, !dbg !230
  call void @llvm.lifetime.end(i64 4, i8* %68), !dbg !230
  %69 = bitcast i32* %17 to i8*, !dbg !230
  call void @llvm.lifetime.end(i64 4, i8* %69), !dbg !230
  %70 = bitcast i32* %tmp_ndt_14.i to i8*, !dbg !230
  call void @llvm.lifetime.end(i64 4, i8* %70), !dbg !230
  store i32 %61, i32* %status, align 4, !dbg !231
  %71 = load i32, i32* %status, align 4, !dbg !232
  %72 = icmp slt i32 %71, 0, !dbg !235
  br i1 %72, label %73, label %81, !dbg !236

; <label>:73                                      ; preds = %PsCreateSystemThread.exit
  store i32 -1, i32* %DisketteExtension__ThreadReferenceCount, align 4, !dbg !237
  %74 = load i32, i32* @PagingReferenceCount, align 4, !dbg !239
  %75 = add nsw i32 %74, -1, !dbg !239
  store i32 %75, i32* @PagingReferenceCount, align 4, !dbg !239
  %76 = load i32, i32* @PagingReferenceCount, align 4, !dbg !240
  %77 = icmp eq i32 %76, 0, !dbg !242
  br i1 %77, label %78, label %79, !dbg !243

; <label>:78                                      ; preds = %73
  br label %79, !dbg !244

; <label>:79                                      ; preds = %78, %73
  %80 = load i32, i32* %status, align 4, !dbg !246
  store i32 %80, i32* %18, !dbg !247
  br label %131, !dbg !247

; <label>:81                                      ; preds = %PsCreateSystemThread.exit
  %82 = load i32, i32* %threadHandle, align 4, !dbg !248
  %83 = load i32, i32* @KernelMode, align 4, !dbg !249
  %84 = load i32, i32* %DisketteExtension__FloppyThread, align 4, !dbg !250
  %85 = bitcast i32* %3 to i8*, !dbg !251
  call void @llvm.lifetime.start(i64 4, i8* %85), !dbg !251
  %86 = bitcast i32* %4 to i8*, !dbg !251
  call void @llvm.lifetime.start(i64 4, i8* %86), !dbg !251
  %87 = bitcast i32* %5 to i8*, !dbg !251
  call void @llvm.lifetime.start(i64 4, i8* %87), !dbg !251
  %88 = bitcast i32* %6 to i8*, !dbg !251
  call void @llvm.lifetime.start(i64 4, i8* %88), !dbg !251
  %89 = bitcast i32* %7 to i8*, !dbg !251
  call void @llvm.lifetime.start(i64 4, i8* %89), !dbg !251
  %90 = bitcast i32* %8 to i8*, !dbg !251
  call void @llvm.lifetime.start(i64 4, i8* %90), !dbg !251
  %91 = bitcast i32* %9 to i8*, !dbg !251
  call void @llvm.lifetime.start(i64 4, i8* %91), !dbg !251
  %92 = bitcast i32* %tmp_ndt_13.i to i8*, !dbg !251
  call void @llvm.lifetime.start(i64 4, i8* %92), !dbg !251
  store i32 %82, i32* %4, align 4, !dbg !251
  store i32 1048576, i32* %5, align 4, !dbg !251
  store i32 0, i32* %6, align 4, !dbg !251
  store i32 %83, i32* %7, align 4, !dbg !251
  store i32 %84, i32* %8, align 4, !dbg !251
  store i32 0, i32* %9, align 4, !dbg !251
  %93 = call i32 @__VERIFIER_nondet_int() #4, !dbg !252
  store i32 %93, i32* %tmp_ndt_13.i, align 4, !dbg !253
  %94 = load i32, i32* %tmp_ndt_13.i, align 4, !dbg !254
  %95 = icmp eq i32 %94, 0, !dbg !256
  br i1 %95, label %96, label %97, !dbg !257

; <label>:96                                      ; preds = %81
  store i32 0, i32* %3, !dbg !258
  br label %ObReferenceObjectByHandle.exit, !dbg !258

; <label>:97                                      ; preds = %81
  store i32 -1073741823, i32* %3, !dbg !262
  br label %ObReferenceObjectByHandle.exit, !dbg !262

ObReferenceObjectByHandle.exit:                   ; preds = %96, %97
  %98 = load i32, i32* %3, !dbg !263
  %99 = bitcast i32* %3 to i8*, !dbg !263
  call void @llvm.lifetime.end(i64 4, i8* %99), !dbg !263
  %100 = bitcast i32* %4 to i8*, !dbg !263
  call void @llvm.lifetime.end(i64 4, i8* %100), !dbg !263
  %101 = bitcast i32* %5 to i8*, !dbg !263
  call void @llvm.lifetime.end(i64 4, i8* %101), !dbg !263
  %102 = bitcast i32* %6 to i8*, !dbg !263
  call void @llvm.lifetime.end(i64 4, i8* %102), !dbg !263
  %103 = bitcast i32* %7 to i8*, !dbg !263
  call void @llvm.lifetime.end(i64 4, i8* %103), !dbg !263
  %104 = bitcast i32* %8 to i8*, !dbg !263
  call void @llvm.lifetime.end(i64 4, i8* %104), !dbg !263
  %105 = bitcast i32* %9 to i8*, !dbg !263
  call void @llvm.lifetime.end(i64 4, i8* %105), !dbg !263
  %106 = bitcast i32* %tmp_ndt_13.i to i8*, !dbg !263
  call void @llvm.lifetime.end(i64 4, i8* %106), !dbg !263
  store i32 %98, i32* %status, align 4, !dbg !264
  %107 = load i32, i32* %threadHandle, align 4, !dbg !265
  %108 = bitcast i32* %1 to i8*, !dbg !266
  call void @llvm.lifetime.start(i64 4, i8* %108), !dbg !266
  %109 = bitcast i32* %2 to i8*, !dbg !266
  call void @llvm.lifetime.start(i64 4, i8* %109), !dbg !266
  %110 = bitcast i32* %tmp_ndt_15.i to i8*, !dbg !266
  call void @llvm.lifetime.start(i64 4, i8* %110), !dbg !266
  store i32 %107, i32* %2, align 4, !dbg !266
  %111 = call i32 @__VERIFIER_nondet_int() #4, !dbg !267
  store i32 %111, i32* %tmp_ndt_15.i, align 4, !dbg !268
  %112 = load i32, i32* %tmp_ndt_15.i, align 4, !dbg !269
  %113 = icmp eq i32 %112, 0, !dbg !271
  br i1 %113, label %114, label %115, !dbg !272

; <label>:114                                     ; preds = %ObReferenceObjectByHandle.exit
  store i32 0, i32* %1, !dbg !273
  br label %ZwClose.exit, !dbg !273

; <label>:115                                     ; preds = %ObReferenceObjectByHandle.exit
  store i32 -1073741823, i32* %1, !dbg !277
  br label %ZwClose.exit, !dbg !277

ZwClose.exit:                                     ; preds = %114, %115
  %116 = load i32, i32* %1, !dbg !278
  %117 = bitcast i32* %1 to i8*, !dbg !278
  call void @llvm.lifetime.end(i64 4, i8* %117), !dbg !278
  %118 = bitcast i32* %2 to i8*, !dbg !278
  call void @llvm.lifetime.end(i64 4, i8* %118), !dbg !278
  %119 = bitcast i32* %tmp_ndt_15.i to i8*, !dbg !278
  call void @llvm.lifetime.end(i64 4, i8* %119), !dbg !278
  %120 = load i32, i32* %status, align 4, !dbg !279
  %121 = icmp slt i32 %120, 0, !dbg !282
  br i1 %121, label %122, label %124, !dbg !283

; <label>:122                                     ; preds = %ZwClose.exit
  %123 = load i32, i32* %status, align 4, !dbg !284
  store i32 %123, i32* %18, !dbg !286
  br label %131, !dbg !286

; <label>:124                                     ; preds = %ZwClose.exit
  br label %125, !dbg !287

; <label>:125                                     ; preds = %124, %29
  %126 = load i32, i32* @pended, align 4, !dbg !288
  %127 = icmp eq i32 %126, 0, !dbg !290
  br i1 %127, label %128, label %129, !dbg !291

; <label>:128                                     ; preds = %125
  store i32 1, i32* @pended, align 4, !dbg !292
  br label %130, !dbg !294

; <label>:129                                     ; preds = %125
  call void (...) @__VERIFIER_error() #5, !dbg !295
  unreachable, !dbg !295

errorFn.exit:                                     ; No predecessors!
  br label %130

; <label>:130                                     ; preds = %errorFn.exit, %128
  store i32 259, i32* %18, !dbg !300
  br label %131, !dbg !300

; <label>:131                                     ; preds = %130, %122, %79, %28
  %132 = load i32, i32* %18, !dbg !301
  ret i32 %132, !dbg !301
}

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind ssp uwtable
define void @errorFn() #0 {
  br label %1, !dbg !302

; <label>:1                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !303
  unreachable, !dbg !303
                                                  ; No predecessors!
  ret void, !dbg !304
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
  call void @llvm.dbg.declare(metadata i32* %13, metadata !305, metadata !111), !dbg !306
  store i32 %Irp, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !307, metadata !111), !dbg !308
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !309, metadata !111), !dbg !310
  %15 = call i32 @__VERIFIER_nondet_int(), !dbg !311
  store i32 %15, i32* %DeviceObject__DeviceExtension, align 4, !dbg !310
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !312, metadata !111), !dbg !313
  %16 = call i32 @__VERIFIER_nondet_int(), !dbg !314
  store i32 %16, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !313
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !315, metadata !111), !dbg !316
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !317, metadata !111), !dbg !318
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !319, metadata !111), !dbg !320
  %17 = call i32 @__VERIFIER_nondet_int(), !dbg !321
  store i32 %17, i32* %Irp__CurrentLocation, align 4, !dbg !320
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__IsRemoved, metadata !322, metadata !111), !dbg !323
  %18 = call i32 @__VERIFIER_nondet_int(), !dbg !324
  store i32 %18, i32* %disketteExtension__IsRemoved, align 4, !dbg !323
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__IsStarted, metadata !325, metadata !111), !dbg !326
  %19 = call i32 @__VERIFIER_nondet_int(), !dbg !327
  store i32 %19, i32* %disketteExtension__IsStarted, align 4, !dbg !326
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__TargetObject, metadata !328, metadata !111), !dbg !329
  %20 = call i32 @__VERIFIER_nondet_int(), !dbg !330
  store i32 %20, i32* %disketteExtension__TargetObject, align 4, !dbg !329
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__HoldNewRequests, metadata !331, metadata !111), !dbg !332
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__FloppyThread, metadata !333, metadata !111), !dbg !334
  %21 = call i32 @__VERIFIER_nondet_int(), !dbg !335
  store i32 %21, i32* %disketteExtension__FloppyThread, align 4, !dbg !334
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__InterfaceString__Buffer, metadata !336, metadata !111), !dbg !337
  %22 = call i32 @__VERIFIER_nondet_int(), !dbg !338
  store i32 %22, i32* %disketteExtension__InterfaceString__Buffer, align 4, !dbg !337
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__InterfaceString, metadata !339, metadata !111), !dbg !340
  %23 = call i32 @__VERIFIER_nondet_int(), !dbg !341
  store i32 %23, i32* %disketteExtension__InterfaceString, align 4, !dbg !340
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__ArcName__Length, metadata !342, metadata !111), !dbg !343
  %24 = call i32 @__VERIFIER_nondet_int(), !dbg !344
  store i32 %24, i32* %disketteExtension__ArcName__Length, align 4, !dbg !343
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__ArcName, metadata !345, metadata !111), !dbg !346
  %25 = call i32 @__VERIFIER_nondet_int(), !dbg !347
  store i32 %25, i32* %disketteExtension__ArcName, align 4, !dbg !346
  call void @llvm.dbg.declare(metadata i32* %irpSp__MinorFunction, metadata !348, metadata !111), !dbg !349
  %26 = call i32 @__VERIFIER_nondet_int(), !dbg !350
  store i32 %26, i32* %irpSp__MinorFunction, align 4, !dbg !349
  call void @llvm.dbg.declare(metadata i32* %IoGetConfigurationInformation__FloppyCount, metadata !351, metadata !111), !dbg !352
  %27 = call i32 @__VERIFIER_nondet_int(), !dbg !353
  store i32 %27, i32* %IoGetConfigurationInformation__FloppyCount, align 4, !dbg !352
  call void @llvm.dbg.declare(metadata i32* %irpSp, metadata !354, metadata !111), !dbg !355
  call void @llvm.dbg.declare(metadata i32* %disketteExtension, metadata !356, metadata !111), !dbg !357
  call void @llvm.dbg.declare(metadata i32* %ntStatus, metadata !358, metadata !111), !dbg !359
  call void @llvm.dbg.declare(metadata i32* %doneEvent, metadata !360, metadata !111), !dbg !361
  %28 = call i32 @__VERIFIER_nondet_int(), !dbg !362
  store i32 %28, i32* %doneEvent, align 4, !dbg !361
  call void @llvm.dbg.declare(metadata i32* %irpSp___0, metadata !363, metadata !111), !dbg !364
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp, metadata !365, metadata !111), !dbg !366
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp__Control, metadata !367, metadata !111), !dbg !368
  call void @llvm.dbg.declare(metadata i32* %irpSp___1, metadata !369, metadata !111), !dbg !370
  call void @llvm.dbg.declare(metadata i32* %irpSp__Context, metadata !371, metadata !111), !dbg !372
  call void @llvm.dbg.declare(metadata i32* %irpSp__Control, metadata !373, metadata !111), !dbg !374
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp29, metadata !375, metadata !111), !dbg !376
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp30, metadata !377, metadata !111), !dbg !378
  store i32 0, i32* %ntStatus, align 4, !dbg !379
  %29 = load i32, i32* @PagingReferenceCount, align 4, !dbg !381
  %30 = add nsw i32 %29, 1, !dbg !381
  store i32 %30, i32* @PagingReferenceCount, align 4, !dbg !381
  %31 = load i32, i32* @PagingReferenceCount, align 4, !dbg !382
  %32 = icmp eq i32 %31, 1, !dbg !384
  call void @llvm.dbg.declare(metadata i32* %10, metadata !385, metadata !111), !dbg !386
  call void @llvm.dbg.declare(metadata i32* %11, metadata !391, metadata !111), !dbg !392
  call void @llvm.dbg.declare(metadata i32* %8, metadata !385, metadata !111), !dbg !393
  call void @llvm.dbg.declare(metadata i32* %9, metadata !391, metadata !111), !dbg !415
  call void @llvm.dbg.declare(metadata i32* %6, metadata !385, metadata !111), !dbg !416
  call void @llvm.dbg.declare(metadata i32* %7, metadata !391, metadata !111), !dbg !421
  call void @llvm.dbg.declare(metadata i32* %4, metadata !422, metadata !111), !dbg !423
  call void @llvm.dbg.declare(metadata i32* %5, metadata !428, metadata !111), !dbg !429
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_9.i, metadata !430, metadata !111), !dbg !432
  call void @llvm.dbg.declare(metadata i32* %2, metadata !433, metadata !111), !dbg !434
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_6.i, metadata !439, metadata !111), !dbg !441
  br i1 %32, label %33, label %34, !dbg !442

; <label>:33                                      ; preds = %0
  br label %34, !dbg !443

; <label>:34                                      ; preds = %33, %0
  %35 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !445
  store i32 %35, i32* %disketteExtension, align 4, !dbg !446
  %36 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !447
  store i32 %36, i32* %irpSp, align 4, !dbg !448
  %37 = load i32, i32* %disketteExtension__IsRemoved, align 4, !dbg !449
  %38 = icmp ne i32 %37, 0, !dbg !449
  br i1 %38, label %39, label %50, !dbg !450

; <label>:39                                      ; preds = %34
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !451
  store i32 -1073741738, i32* %Irp__IoStatus__Status, align 4, !dbg !452
  store i32 -1073741738, i32* @myStatus, align 4, !dbg !453
  %40 = load i32, i32* %14, align 4, !dbg !454
  %41 = bitcast i32* %10 to i8*, !dbg !455
  call void @llvm.lifetime.start(i64 4, i8* %41), !dbg !455
  %42 = bitcast i32* %11 to i8*, !dbg !455
  call void @llvm.lifetime.start(i64 4, i8* %42), !dbg !455
  store i32 %40, i32* %10, align 4, !dbg !455
  store i32 0, i32* %11, align 4, !dbg !455
  %43 = load i32, i32* @s, align 4, !dbg !456
  %44 = load i32, i32* @NP, align 4, !dbg !459
  %45 = icmp eq i32 %43, %44, !dbg !460
  br i1 %45, label %IofCompleteRequest.exit, label %46, !dbg !461

; <label>:46                                      ; preds = %39
  call void (...) @__VERIFIER_error() #5, !dbg !462
  unreachable, !dbg !462

IofCompleteRequest.exit:                          ; preds = %39
  %47 = load i32, i32* @DC, align 4, !dbg !466
  store i32 %47, i32* @s, align 4, !dbg !468
  %48 = bitcast i32* %10 to i8*, !dbg !469
  call void @llvm.lifetime.end(i64 4, i8* %48), !dbg !469
  %49 = bitcast i32* %11 to i8*, !dbg !469
  call void @llvm.lifetime.end(i64 4, i8* %49), !dbg !469
  store i32 -1073741738, i32* %12, !dbg !470
  br label %320, !dbg !470

; <label>:50                                      ; preds = %34
  %51 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !471
  %52 = icmp eq i32 %51, 0, !dbg !472
  br i1 %52, label %53, label %54, !dbg !473

; <label>:53                                      ; preds = %50
  br label %81, !dbg !474

; <label>:54                                      ; preds = %50
  %55 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !476
  %56 = icmp eq i32 %55, 5, !dbg !477
  br i1 %56, label %57, label %58, !dbg !478

; <label>:57                                      ; preds = %54
  br label %85, !dbg !479

; <label>:58                                      ; preds = %54
  %59 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !481
  %60 = icmp eq i32 %59, 1, !dbg !482
  br i1 %60, label %61, label %62, !dbg !483

; <label>:61                                      ; preds = %58
  br label %85, !dbg !484

; <label>:62                                      ; preds = %58
  %63 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !486
  %64 = icmp eq i32 %63, 6, !dbg !487
  br i1 %64, label %65, label %66, !dbg !488

; <label>:65                                      ; preds = %62
  br label %153, !dbg !489

; <label>:66                                      ; preds = %62
  %67 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !491
  %68 = icmp eq i32 %67, 3, !dbg !492
  br i1 %68, label %69, label %70, !dbg !493

; <label>:69                                      ; preds = %66
  br label %153, !dbg !494

; <label>:70                                      ; preds = %66
  %71 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !496
  %72 = icmp eq i32 %71, 4, !dbg !497
  br i1 %72, label %73, label %74, !dbg !498

; <label>:73                                      ; preds = %70
  br label %220, !dbg !499

; <label>:74                                      ; preds = %70
  %75 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !501
  %76 = icmp eq i32 %75, 2, !dbg !502
  br i1 %76, label %77, label %78, !dbg !503

; <label>:77                                      ; preds = %74
  br label %235, !dbg !504

; <label>:78                                      ; preds = %74
  br label %288, !dbg !506
                                                  ; No predecessors!
  br i1 false, label %80, label %303, !dbg !507

; <label>:80                                      ; preds = %79
  br label %81, !dbg !508

; <label>:81                                      ; preds = %80, %53
  %82 = load i32, i32* %13, align 4, !dbg !509
  %83 = load i32, i32* %14, align 4, !dbg !511
  %84 = call i32 @FloppyStartDevice(i32 %82, i32 %83), !dbg !512
  store i32 %84, i32* %ntStatus, align 4, !dbg !513
  br label %304, !dbg !514

; <label>:85                                      ; preds = %61, %57
  %86 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !515
  %87 = icmp eq i32 %86, 5, !dbg !517
  br i1 %87, label %88, label %89, !dbg !518

; <label>:88                                      ; preds = %85
  br label %89, !dbg !519

; <label>:89                                      ; preds = %88, %85
  %90 = load i32, i32* %disketteExtension__IsStarted, align 4, !dbg !521
  %91 = icmp ne i32 %90, 0, !dbg !521
  br i1 %91, label %108, label %92, !dbg !523

; <label>:92                                      ; preds = %89
  %93 = load i32, i32* @s, align 4, !dbg !524
  %94 = load i32, i32* @NP, align 4, !dbg !527
  %95 = icmp eq i32 %93, %94, !dbg !528
  br i1 %95, label %96, label %98, !dbg !529

; <label>:96                                      ; preds = %92
  %97 = load i32, i32* @SKIP1, align 4, !dbg !530
  store i32 %97, i32* @s, align 4, !dbg !532
  br label %99, !dbg !533

; <label>:98                                      ; preds = %92
  call void (...) @__VERIFIER_error() #5, !dbg !534
  unreachable, !dbg !534

errorFn.exit:                                     ; No predecessors!
  br label %99

; <label>:99                                      ; preds = %errorFn.exit, %96
  %100 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !538
  %101 = add nsw i32 %100, 1, !dbg !538
  store i32 %101, i32* %Irp__CurrentLocation, align 4, !dbg !538
  %102 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !540
  %103 = add nsw i32 %102, 1, !dbg !540
  store i32 %103, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !540
  %104 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !541
  %105 = load i32, i32* %14, align 4, !dbg !542
  %106 = call i32 @IofCallDriver(i32 %104, i32 %105), !dbg !543
  store i32 %106, i32* %ntStatus, align 4, !dbg !544
  %107 = load i32, i32* %ntStatus, align 4, !dbg !545
  store i32 %107, i32* %12, !dbg !546
  br label %320, !dbg !546

; <label>:108                                     ; preds = %89
  store i32 1, i32* %disketteExtension__HoldNewRequests, align 4, !dbg !547
  %109 = load i32, i32* %14, align 4, !dbg !549
  %110 = load i32, i32* %disketteExtension, align 4, !dbg !550
  %111 = call i32 @FlQueueIrpToThread(i32 %109, i32 %110), !dbg !551
  store i32 %111, i32* %ntStatus, align 4, !dbg !552
  %112 = load i32, i32* %ntStatus, align 4, !dbg !553
  %113 = sext i32 %112 to i64, !dbg !554
  store i64 %113, i64* %__cil_tmp29, align 8, !dbg !555
  %114 = load i64, i64* %__cil_tmp29, align 8, !dbg !556
  %115 = icmp eq i64 %114, 259, !dbg !557
  br i1 %115, label %116, label %139, !dbg !558

; <label>:116                                     ; preds = %108
  %117 = load i32, i32* %disketteExtension__FloppyThread, align 4, !dbg !559
  %118 = load i32, i32* @Executive, align 4, !dbg !562
  %119 = load i32, i32* @KernelMode, align 4, !dbg !563
  %120 = call i32 @KeWaitForSingleObject(i32 %117, i32 %118, i32 %119, i32 0, i32 0), !dbg !564
  %121 = load i32, i32* %disketteExtension__FloppyThread, align 4, !dbg !565
  %122 = icmp ne i32 %121, 0, !dbg !567
  br i1 %122, label %123, label %124, !dbg !568

; <label>:123                                     ; preds = %116
  br label %124, !dbg !569

; <label>:124                                     ; preds = %123, %116
  store i32 0, i32* %disketteExtension__FloppyThread, align 4, !dbg !571
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !572
  store i32 0, i32* @myStatus, align 4, !dbg !573
  %125 = load i32, i32* @s, align 4, !dbg !574
  %126 = load i32, i32* @NP, align 4, !dbg !576
  %127 = icmp eq i32 %125, %126, !dbg !577
  br i1 %127, label %128, label %130, !dbg !578

; <label>:128                                     ; preds = %124
  %129 = load i32, i32* @SKIP1, align 4, !dbg !579
  store i32 %129, i32* @s, align 4, !dbg !581
  br label %131, !dbg !582

; <label>:130                                     ; preds = %124
  call void (...) @__VERIFIER_error() #5, !dbg !583
  unreachable, !dbg !583

errorFn.exit1:                                    ; No predecessors!
  br label %131

; <label>:131                                     ; preds = %errorFn.exit1, %128
  %132 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !587
  %133 = add nsw i32 %132, 1, !dbg !587
  store i32 %133, i32* %Irp__CurrentLocation, align 4, !dbg !587
  %134 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !589
  %135 = add nsw i32 %134, 1, !dbg !589
  store i32 %135, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !589
  %136 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !590
  %137 = load i32, i32* %14, align 4, !dbg !591
  %138 = call i32 @IofCallDriver(i32 %136, i32 %137), !dbg !592
  store i32 %138, i32* %ntStatus, align 4, !dbg !593
  br label %152, !dbg !594

; <label>:139                                     ; preds = %108
  store i32 -1073741823, i32* %ntStatus, align 4, !dbg !595
  %140 = load i32, i32* %ntStatus, align 4, !dbg !596
  store i32 %140, i32* %Irp__IoStatus__Status, align 4, !dbg !597
  %141 = load i32, i32* %ntStatus, align 4, !dbg !598
  store i32 %141, i32* @myStatus, align 4, !dbg !599
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !600
  %142 = load i32, i32* %14, align 4, !dbg !601
  %143 = bitcast i32* %8 to i8*, !dbg !602
  call void @llvm.lifetime.start(i64 4, i8* %143), !dbg !602
  %144 = bitcast i32* %9 to i8*, !dbg !602
  call void @llvm.lifetime.start(i64 4, i8* %144), !dbg !602
  store i32 %142, i32* %8, align 4, !dbg !602
  store i32 0, i32* %9, align 4, !dbg !602
  %145 = load i32, i32* @s, align 4, !dbg !603
  %146 = load i32, i32* @NP, align 4, !dbg !604
  %147 = icmp eq i32 %145, %146, !dbg !605
  br i1 %147, label %IofCompleteRequest.exit2, label %148, !dbg !606

; <label>:148                                     ; preds = %139
  call void (...) @__VERIFIER_error() #5, !dbg !607
  unreachable, !dbg !607

IofCompleteRequest.exit2:                         ; preds = %139
  %149 = load i32, i32* @DC, align 4, !dbg !609
  store i32 %149, i32* @s, align 4, !dbg !610
  %150 = bitcast i32* %8 to i8*, !dbg !611
  call void @llvm.lifetime.end(i64 4, i8* %150), !dbg !611
  %151 = bitcast i32* %9 to i8*, !dbg !611
  call void @llvm.lifetime.end(i64 4, i8* %151), !dbg !611
  br label %152

; <label>:152                                     ; preds = %IofCompleteRequest.exit2, %131
  br label %304, !dbg !612

; <label>:153                                     ; preds = %69, %65
  %154 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !613
  %155 = icmp eq i32 %154, 6, !dbg !615
  br i1 %155, label %156, label %157, !dbg !616

; <label>:156                                     ; preds = %153
  br label %157, !dbg !617

; <label>:157                                     ; preds = %156, %153
  %158 = load i32, i32* %disketteExtension__IsStarted, align 4, !dbg !619
  %159 = icmp ne i32 %158, 0, !dbg !619
  br i1 %159, label %175, label %160, !dbg !620

; <label>:160                                     ; preds = %157
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !621
  store i32 0, i32* @myStatus, align 4, !dbg !623
  %161 = load i32, i32* @s, align 4, !dbg !624
  %162 = load i32, i32* @NP, align 4, !dbg !626
  %163 = icmp eq i32 %161, %162, !dbg !627
  br i1 %163, label %164, label %166, !dbg !628

; <label>:164                                     ; preds = %160
  %165 = load i32, i32* @SKIP1, align 4, !dbg !629
  store i32 %165, i32* @s, align 4, !dbg !631
  br label %167, !dbg !632

; <label>:166                                     ; preds = %160
  call void (...) @__VERIFIER_error() #5, !dbg !633
  unreachable, !dbg !633

errorFn.exit3:                                    ; No predecessors!
  br label %167

; <label>:167                                     ; preds = %errorFn.exit3, %164
  %168 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !637
  %169 = add nsw i32 %168, 1, !dbg !637
  store i32 %169, i32* %Irp__CurrentLocation, align 4, !dbg !637
  %170 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !639
  %171 = add nsw i32 %170, 1, !dbg !639
  store i32 %171, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !639
  %172 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !640
  %173 = load i32, i32* %14, align 4, !dbg !641
  %174 = call i32 @IofCallDriver(i32 %172, i32 %173), !dbg !642
  store i32 %174, i32* %ntStatus, align 4, !dbg !643
  br label %219, !dbg !644

; <label>:175                                     ; preds = %157
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !645
  store i32 0, i32* @myStatus, align 4, !dbg !646
  %176 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !647
  store i32 %176, i32* %irpSp___0, align 4, !dbg !648
  %177 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !649
  %178 = sub nsw i32 %177, 1, !dbg !650
  store i32 %178, i32* %nextIrpSp, align 4, !dbg !651
  store i32 0, i32* %nextIrpSp__Control, align 4, !dbg !652
  %179 = load i32, i32* @s, align 4, !dbg !653
  %180 = load i32, i32* @NP, align 4, !dbg !655
  %181 = icmp ne i32 %179, %180, !dbg !656
  br i1 %181, label %182, label %183, !dbg !657

; <label>:182                                     ; preds = %175
  call void (...) @__VERIFIER_error() #5, !dbg !658
  unreachable, !dbg !658

errorFn.exit4:                                    ; No predecessors!
  br label %189, !dbg !662

; <label>:183                                     ; preds = %175
  %184 = load i32, i32* @compRegistered, align 4, !dbg !663
  %185 = icmp ne i32 %184, 0, !dbg !666
  br i1 %185, label %186, label %187, !dbg !667

; <label>:186                                     ; preds = %183
  call void (...) @__VERIFIER_error() #5, !dbg !668
  unreachable, !dbg !668

errorFn.exit5:                                    ; No predecessors!
  br label %188, !dbg !672

; <label>:187                                     ; preds = %183
  store i32 1, i32* @compRegistered, align 4, !dbg !673
  br label %188

; <label>:188                                     ; preds = %187, %errorFn.exit5
  br label %189

; <label>:189                                     ; preds = %188, %errorFn.exit4
  %190 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !675
  %191 = sub nsw i32 %190, 1, !dbg !677
  store i32 %191, i32* %irpSp___1, align 4, !dbg !678
  %192 = load i32, i32* %doneEvent, align 4, !dbg !679
  store i32 %192, i32* %irpSp__Context, align 4, !dbg !680
  store i32 224, i32* %irpSp__Control, align 4, !dbg !681
  %193 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !682
  %194 = load i32, i32* %14, align 4, !dbg !683
  %195 = call i32 @IofCallDriver(i32 %193, i32 %194), !dbg !684
  store i32 %195, i32* %ntStatus, align 4, !dbg !685
  %196 = load i32, i32* %ntStatus, align 4, !dbg !686
  %197 = sext i32 %196 to i64, !dbg !688
  store i64 %197, i64* %__cil_tmp30, align 8, !dbg !689
  %198 = load i64, i64* %__cil_tmp30, align 8, !dbg !690
  %199 = icmp eq i64 %198, 259, !dbg !692
  br i1 %199, label %200, label %206, !dbg !693

; <label>:200                                     ; preds = %189
  %201 = load i32, i32* %doneEvent, align 4, !dbg !694
  %202 = load i32, i32* @Executive, align 4, !dbg !697
  %203 = load i32, i32* @KernelMode, align 4, !dbg !698
  %204 = call i32 @KeWaitForSingleObject(i32 %201, i32 %202, i32 %203, i32 0, i32 0), !dbg !699
  %205 = load i32, i32* @myStatus, align 4, !dbg !700
  store i32 %205, i32* %ntStatus, align 4, !dbg !701
  br label %206, !dbg !702

; <label>:206                                     ; preds = %200, %189
  store i32 0, i32* %disketteExtension__HoldNewRequests, align 4, !dbg !703
  %207 = load i32, i32* %ntStatus, align 4, !dbg !704
  store i32 %207, i32* %Irp__IoStatus__Status, align 4, !dbg !705
  %208 = load i32, i32* %ntStatus, align 4, !dbg !706
  store i32 %208, i32* @myStatus, align 4, !dbg !707
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !708
  %209 = load i32, i32* %14, align 4, !dbg !709
  %210 = bitcast i32* %6 to i8*, !dbg !710
  call void @llvm.lifetime.start(i64 4, i8* %210), !dbg !710
  %211 = bitcast i32* %7 to i8*, !dbg !710
  call void @llvm.lifetime.start(i64 4, i8* %211), !dbg !710
  store i32 %209, i32* %6, align 4, !dbg !710
  store i32 0, i32* %7, align 4, !dbg !710
  %212 = load i32, i32* @s, align 4, !dbg !711
  %213 = load i32, i32* @NP, align 4, !dbg !712
  %214 = icmp eq i32 %212, %213, !dbg !713
  br i1 %214, label %IofCompleteRequest.exit6, label %215, !dbg !714

; <label>:215                                     ; preds = %206
  call void (...) @__VERIFIER_error() #5, !dbg !715
  unreachable, !dbg !715

IofCompleteRequest.exit6:                         ; preds = %206
  %216 = load i32, i32* @DC, align 4, !dbg !717
  store i32 %216, i32* @s, align 4, !dbg !718
  %217 = bitcast i32* %6 to i8*, !dbg !719
  call void @llvm.lifetime.end(i64 4, i8* %217), !dbg !719
  %218 = bitcast i32* %7 to i8*, !dbg !719
  call void @llvm.lifetime.end(i64 4, i8* %218), !dbg !719
  br label %219

; <label>:219                                     ; preds = %IofCompleteRequest.exit6, %167
  br label %304, !dbg !720

; <label>:220                                     ; preds = %73
  store i32 0, i32* %disketteExtension__IsStarted, align 4, !dbg !721
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !722
  store i32 0, i32* @myStatus, align 4, !dbg !723
  %221 = load i32, i32* @s, align 4, !dbg !724
  %222 = load i32, i32* @NP, align 4, !dbg !726
  %223 = icmp eq i32 %221, %222, !dbg !727
  br i1 %223, label %224, label %226, !dbg !728

; <label>:224                                     ; preds = %220
  %225 = load i32, i32* @SKIP1, align 4, !dbg !729
  store i32 %225, i32* @s, align 4, !dbg !731
  br label %227, !dbg !732

; <label>:226                                     ; preds = %220
  call void (...) @__VERIFIER_error() #5, !dbg !733
  unreachable, !dbg !733

errorFn.exit7:                                    ; No predecessors!
  br label %227

; <label>:227                                     ; preds = %errorFn.exit7, %224
  %228 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !737
  %229 = add nsw i32 %228, 1, !dbg !737
  store i32 %229, i32* %Irp__CurrentLocation, align 4, !dbg !737
  %230 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !739
  %231 = add nsw i32 %230, 1, !dbg !739
  store i32 %231, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !739
  %232 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !740
  %233 = load i32, i32* %14, align 4, !dbg !741
  %234 = call i32 @IofCallDriver(i32 %232, i32 %233), !dbg !742
  store i32 %234, i32* %ntStatus, align 4, !dbg !743
  br label %304, !dbg !744

; <label>:235                                     ; preds = %77
  store i32 0, i32* %disketteExtension__HoldNewRequests, align 4, !dbg !745
  store i32 0, i32* %disketteExtension__IsStarted, align 4, !dbg !746
  store i32 1, i32* %disketteExtension__IsRemoved, align 4, !dbg !747
  %236 = load i32, i32* @s, align 4, !dbg !748
  %237 = load i32, i32* @NP, align 4, !dbg !750
  %238 = icmp eq i32 %236, %237, !dbg !751
  br i1 %238, label %239, label %241, !dbg !752

; <label>:239                                     ; preds = %235
  %240 = load i32, i32* @SKIP1, align 4, !dbg !753
  store i32 %240, i32* @s, align 4, !dbg !755
  br label %242, !dbg !756

; <label>:241                                     ; preds = %235
  call void (...) @__VERIFIER_error() #5, !dbg !757
  unreachable, !dbg !757

errorFn.exit8:                                    ; No predecessors!
  br label %242

; <label>:242                                     ; preds = %errorFn.exit8, %239
  %243 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !761
  %244 = add nsw i32 %243, 1, !dbg !761
  store i32 %244, i32* %Irp__CurrentLocation, align 4, !dbg !761
  %245 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !763
  %246 = add nsw i32 %245, 1, !dbg !763
  store i32 %246, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !763
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !764
  store i32 0, i32* @myStatus, align 4, !dbg !765
  %247 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !766
  %248 = load i32, i32* %14, align 4, !dbg !767
  %249 = call i32 @IofCallDriver(i32 %247, i32 %248), !dbg !768
  store i32 %249, i32* %ntStatus, align 4, !dbg !769
  %250 = load i32, i32* %disketteExtension__InterfaceString__Buffer, align 4, !dbg !770
  %251 = icmp ne i32 %250, 0, !dbg !771
  br i1 %251, label %252, label %268, !dbg !772

; <label>:252                                     ; preds = %242
  %253 = load i32, i32* %disketteExtension__InterfaceString, align 4, !dbg !773
  %254 = bitcast i32* %3 to i8*, !dbg !774
  call void @llvm.lifetime.start(i64 4, i8* %254), !dbg !774
  %255 = bitcast i32* %4 to i8*, !dbg !774
  call void @llvm.lifetime.start(i64 4, i8* %255), !dbg !774
  %256 = bitcast i32* %5 to i8*, !dbg !774
  call void @llvm.lifetime.start(i64 4, i8* %256), !dbg !774
  %257 = bitcast i32* %tmp_ndt_9.i to i8*, !dbg !774
  call void @llvm.lifetime.start(i64 4, i8* %257), !dbg !774
  store i32 %253, i32* %4, align 4, !dbg !774
  store i32 0, i32* %5, align 4, !dbg !774
  %258 = call i32 @__VERIFIER_nondet_int() #4, !dbg !775
  store i32 %258, i32* %tmp_ndt_9.i, align 4, !dbg !776
  %259 = load i32, i32* %tmp_ndt_9.i, align 4, !dbg !777
  %260 = icmp eq i32 %259, 0, !dbg !779
  br i1 %260, label %261, label %262, !dbg !780

; <label>:261                                     ; preds = %252
  store i32 0, i32* %3, !dbg !781
  br label %IoSetDeviceInterfaceState.exit, !dbg !781

; <label>:262                                     ; preds = %252
  store i32 -1073741823, i32* %3, !dbg !785
  br label %IoSetDeviceInterfaceState.exit, !dbg !785

IoSetDeviceInterfaceState.exit:                   ; preds = %261, %262
  %263 = load i32, i32* %3, !dbg !786
  %264 = bitcast i32* %3 to i8*, !dbg !786
  call void @llvm.lifetime.end(i64 4, i8* %264), !dbg !786
  %265 = bitcast i32* %4 to i8*, !dbg !786
  call void @llvm.lifetime.end(i64 4, i8* %265), !dbg !786
  %266 = bitcast i32* %5 to i8*, !dbg !786
  call void @llvm.lifetime.end(i64 4, i8* %266), !dbg !786
  %267 = bitcast i32* %tmp_ndt_9.i to i8*, !dbg !786
  call void @llvm.lifetime.end(i64 4, i8* %267), !dbg !786
  br label %268, !dbg !787

; <label>:268                                     ; preds = %IoSetDeviceInterfaceState.exit, %242
  %269 = load i32, i32* %disketteExtension__ArcName__Length, align 4, !dbg !788
  %270 = icmp ne i32 %269, 0, !dbg !789
  br i1 %270, label %271, label %285, !dbg !790

; <label>:271                                     ; preds = %268
  %272 = load i32, i32* %disketteExtension__ArcName, align 4, !dbg !791
  %273 = bitcast i32* %1 to i8*, !dbg !792
  call void @llvm.lifetime.start(i64 4, i8* %273), !dbg !792
  %274 = bitcast i32* %2 to i8*, !dbg !792
  call void @llvm.lifetime.start(i64 4, i8* %274), !dbg !792
  %275 = bitcast i32* %tmp_ndt_6.i to i8*, !dbg !792
  call void @llvm.lifetime.start(i64 4, i8* %275), !dbg !792
  store i32 %272, i32* %2, align 4, !dbg !792
  %276 = call i32 @__VERIFIER_nondet_int() #4, !dbg !793
  store i32 %276, i32* %tmp_ndt_6.i, align 4, !dbg !794
  %277 = load i32, i32* %tmp_ndt_6.i, align 4, !dbg !795
  %278 = icmp eq i32 %277, 0, !dbg !797
  br i1 %278, label %279, label %280, !dbg !798

; <label>:279                                     ; preds = %271
  store i32 0, i32* %1, !dbg !799
  br label %IoDeleteSymbolicLink.exit, !dbg !799

; <label>:280                                     ; preds = %271
  store i32 -1073741823, i32* %1, !dbg !803
  br label %IoDeleteSymbolicLink.exit, !dbg !803

IoDeleteSymbolicLink.exit:                        ; preds = %279, %280
  %281 = load i32, i32* %1, !dbg !804
  %282 = bitcast i32* %1 to i8*, !dbg !804
  call void @llvm.lifetime.end(i64 4, i8* %282), !dbg !804
  %283 = bitcast i32* %2 to i8*, !dbg !804
  call void @llvm.lifetime.end(i64 4, i8* %283), !dbg !804
  %284 = bitcast i32* %tmp_ndt_6.i to i8*, !dbg !804
  call void @llvm.lifetime.end(i64 4, i8* %284), !dbg !804
  br label %285, !dbg !805

; <label>:285                                     ; preds = %IoDeleteSymbolicLink.exit, %268
  %286 = load i32, i32* %IoGetConfigurationInformation__FloppyCount, align 4, !dbg !806
  %287 = add nsw i32 %286, -1, !dbg !806
  store i32 %287, i32* %IoGetConfigurationInformation__FloppyCount, align 4, !dbg !806
  br label %304, !dbg !807

; <label>:288                                     ; preds = %78
  %289 = load i32, i32* @s, align 4, !dbg !808
  %290 = load i32, i32* @NP, align 4, !dbg !810
  %291 = icmp eq i32 %289, %290, !dbg !811
  br i1 %291, label %292, label %294, !dbg !812

; <label>:292                                     ; preds = %288
  %293 = load i32, i32* @SKIP1, align 4, !dbg !813
  store i32 %293, i32* @s, align 4, !dbg !815
  br label %295, !dbg !816

; <label>:294                                     ; preds = %288
  call void (...) @__VERIFIER_error() #5, !dbg !817
  unreachable, !dbg !817

errorFn.exit9:                                    ; No predecessors!
  br label %295

; <label>:295                                     ; preds = %errorFn.exit9, %292
  %296 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !821
  %297 = add nsw i32 %296, 1, !dbg !821
  store i32 %297, i32* %Irp__CurrentLocation, align 4, !dbg !821
  %298 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !823
  %299 = add nsw i32 %298, 1, !dbg !823
  store i32 %299, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !823
  %300 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !824
  %301 = load i32, i32* %14, align 4, !dbg !825
  %302 = call i32 @IofCallDriver(i32 %300, i32 %301), !dbg !826
  store i32 %302, i32* %ntStatus, align 4, !dbg !827
  br label %305, !dbg !828

; <label>:303                                     ; preds = %79
  br label %304, !dbg !829

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
  %313 = load i32, i32* @PagingReferenceCount, align 4, !dbg !830
  %314 = add nsw i32 %313, -1, !dbg !830
  store i32 %314, i32* @PagingReferenceCount, align 4, !dbg !830
  %315 = load i32, i32* @PagingReferenceCount, align 4, !dbg !831
  %316 = icmp eq i32 %315, 0, !dbg !833
  br i1 %316, label %317, label %318, !dbg !834

; <label>:317                                     ; preds = %312
  br label %318, !dbg !835

; <label>:318                                     ; preds = %317, %312
  %319 = load i32, i32* %ntStatus, align 4, !dbg !837
  store i32 %319, i32* %12, !dbg !838
  br label %320, !dbg !838

; <label>:320                                     ; preds = %318, %99, %IofCompleteRequest.exit
  %321 = load i32, i32* %12, !dbg !839
  ret i32 %321, !dbg !839
}

; Function Attrs: nounwind ssp uwtable
define void @IofCompleteRequest(i32 %Irp, i32 %PriorityBoost) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %Irp, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !385, metadata !111), !dbg !840
  store i32 %PriorityBoost, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !391, metadata !111), !dbg !841
  %3 = load i32, i32* @s, align 4, !dbg !842
  %4 = load i32, i32* @NP, align 4, !dbg !843
  %5 = icmp eq i32 %3, %4, !dbg !844
  br i1 %5, label %6, label %8, !dbg !845

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* @DC, align 4, !dbg !846
  store i32 %7, i32* @s, align 4, !dbg !847
  br label %9, !dbg !848

; <label>:8                                       ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !849
  unreachable, !dbg !849

errorFn.exit:                                     ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %errorFn.exit, %6
  ret void, !dbg !851
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
  call void @llvm.dbg.declare(metadata i32* %22, metadata !852, metadata !111), !dbg !853
  store i32 %Irp, i32* %23, align 4
  call void @llvm.dbg.declare(metadata i32* %23, metadata !854, metadata !111), !dbg !855
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !856, metadata !111), !dbg !857
  %24 = call i32 @__VERIFIER_nondet_int(), !dbg !858
  store i32 %24, i32* %DeviceObject__DeviceExtension, align 4, !dbg !857
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !859, metadata !111), !dbg !860
  %25 = call i32 @__VERIFIER_nondet_int(), !dbg !861
  store i32 %25, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !860
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !862, metadata !111), !dbg !863
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__TargetObject, metadata !864, metadata !111), !dbg !865
  %26 = call i32 @__VERIFIER_nondet_int(), !dbg !866
  store i32 %26, i32* %disketteExtension__TargetObject, align 4, !dbg !865
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__MaxTransferSize, metadata !867, metadata !111), !dbg !868
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__DriveType, metadata !869, metadata !111), !dbg !870
  %27 = call i32 @__VERIFIER_nondet_int(), !dbg !871
  store i32 %27, i32* %disketteExtension__DriveType, align 4, !dbg !870
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__PerpendicularMode, metadata !872, metadata !111), !dbg !873
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__DeviceUnit, metadata !874, metadata !111), !dbg !875
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__DriveOnValue, metadata !876, metadata !111), !dbg !877
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__UnderlyingPDO, metadata !878, metadata !111), !dbg !879
  %28 = call i32 @__VERIFIER_nondet_int(), !dbg !880
  store i32 %28, i32* %disketteExtension__UnderlyingPDO, align 4, !dbg !879
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__InterfaceString, metadata !881, metadata !111), !dbg !882
  %29 = call i32 @__VERIFIER_nondet_int(), !dbg !883
  store i32 %29, i32* %disketteExtension__InterfaceString, align 4, !dbg !882
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__IsStarted, metadata !884, metadata !111), !dbg !885
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__HoldNewRequests, metadata !886, metadata !111), !dbg !887
  call void @llvm.dbg.declare(metadata i32* %ntStatus, metadata !888, metadata !111), !dbg !889
  call void @llvm.dbg.declare(metadata i32* %pnpStatus, metadata !890, metadata !111), !dbg !891
  call void @llvm.dbg.declare(metadata i32* %doneEvent, metadata !892, metadata !111), !dbg !893
  %30 = call i32 @__VERIFIER_nondet_int(), !dbg !894
  store i32 %30, i32* %doneEvent, align 4, !dbg !893
  call void @llvm.dbg.declare(metadata i32* %fdcInfo, metadata !895, metadata !111), !dbg !896
  %31 = call i32 @__VERIFIER_nondet_int(), !dbg !897
  store i32 %31, i32* %fdcInfo, align 4, !dbg !896
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__BufferCount, metadata !898, metadata !111), !dbg !899
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__BufferSize, metadata !900, metadata !111), !dbg !901
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__MaxTransferSize, metadata !902, metadata !111), !dbg !903
  %32 = call i32 @__VERIFIER_nondet_int(), !dbg !904
  store i32 %32, i32* %fdcInfo__MaxTransferSize, align 4, !dbg !903
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__AcpiBios, metadata !905, metadata !111), !dbg !906
  %33 = call i32 @__VERIFIER_nondet_int(), !dbg !907
  store i32 %33, i32* %fdcInfo__AcpiBios, align 4, !dbg !906
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__AcpiFdiSupported, metadata !908, metadata !111), !dbg !909
  %34 = call i32 @__VERIFIER_nondet_int(), !dbg !910
  store i32 %34, i32* %fdcInfo__AcpiFdiSupported, align 4, !dbg !909
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__PeripheralNumber, metadata !911, metadata !111), !dbg !912
  %35 = call i32 @__VERIFIER_nondet_int(), !dbg !913
  store i32 %35, i32* %fdcInfo__PeripheralNumber, align 4, !dbg !912
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__BusType, metadata !914, metadata !111), !dbg !915
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__ControllerNumber, metadata !916, metadata !111), !dbg !917
  %36 = call i32 @__VERIFIER_nondet_int(), !dbg !918
  store i32 %36, i32* %fdcInfo__ControllerNumber, align 4, !dbg !917
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__UnitNumber, metadata !919, metadata !111), !dbg !920
  %37 = call i32 @__VERIFIER_nondet_int(), !dbg !921
  store i32 %37, i32* %fdcInfo__UnitNumber, align 4, !dbg !920
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__BusNumber, metadata !922, metadata !111), !dbg !923
  %38 = call i32 @__VERIFIER_nondet_int(), !dbg !924
  store i32 %38, i32* %fdcInfo__BusNumber, align 4, !dbg !923
  call void @llvm.dbg.declare(metadata i32* %Dc, metadata !925, metadata !111), !dbg !926
  call void @llvm.dbg.declare(metadata i32* %Fp, metadata !927, metadata !111), !dbg !928
  call void @llvm.dbg.declare(metadata i32* %disketteExtension, metadata !929, metadata !111), !dbg !930
  call void @llvm.dbg.declare(metadata i32* %irpSp, metadata !931, metadata !111), !dbg !932
  call void @llvm.dbg.declare(metadata i32* %irpSp___0, metadata !933, metadata !111), !dbg !934
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp, metadata !935, metadata !111), !dbg !936
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp__Control, metadata !937, metadata !111), !dbg !938
  call void @llvm.dbg.declare(metadata i32* %irpSp___1, metadata !939, metadata !111), !dbg !940
  call void @llvm.dbg.declare(metadata i32* %irpSp__Control, metadata !941, metadata !111), !dbg !942
  call void @llvm.dbg.declare(metadata i32* %irpSp__Context, metadata !943, metadata !111), !dbg !944
  call void @llvm.dbg.declare(metadata i32* %InterfaceType, metadata !945, metadata !111), !dbg !946
  call void @llvm.dbg.declare(metadata i32* %KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86, metadata !947, metadata !111), !dbg !948
  %39 = call i32 @__VERIFIER_nondet_int(), !dbg !949
  store i32 %39, i32* %KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86, align 4, !dbg !948
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp42, metadata !950, metadata !111), !dbg !951
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp43, metadata !952, metadata !111), !dbg !953
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp44, metadata !954, metadata !111), !dbg !955
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp45, metadata !956, metadata !111), !dbg !957
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp46, metadata !958, metadata !111), !dbg !959
  %40 = call i32 @__VERIFIER_nondet_int(), !dbg !960
  store i32 %40, i32* %__cil_tmp46, align 4, !dbg !959
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp47, metadata !961, metadata !111), !dbg !962
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp48, metadata !963, metadata !111), !dbg !964
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp49, metadata !965, metadata !111), !dbg !966
  %41 = load i32, i32* @DiskController, align 4, !dbg !967
  store i32 %41, i32* %Dc, align 4, !dbg !969
  %42 = load i32, i32* @FloppyDiskPeripheral, align 4, !dbg !970
  store i32 %42, i32* %Fp, align 4, !dbg !971
  %43 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !972
  store i32 %43, i32* %disketteExtension, align 4, !dbg !973
  %44 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !974
  store i32 %44, i32* %irpSp, align 4, !dbg !975
  %45 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !976
  store i32 %45, i32* %irpSp___0, align 4, !dbg !977
  %46 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !978
  %47 = sub nsw i32 %46, 1, !dbg !979
  store i32 %47, i32* %nextIrpSp, align 4, !dbg !980
  store i32 0, i32* %nextIrpSp__Control, align 4, !dbg !981
  %48 = load i32, i32* @s, align 4, !dbg !982
  %49 = load i32, i32* @NP, align 4, !dbg !984
  %50 = icmp ne i32 %48, %49, !dbg !985
  call void @llvm.dbg.declare(metadata i32* %20, metadata !110, metadata !111), !dbg !986
  call void @llvm.dbg.declare(metadata i32* %21, metadata !113, metadata !111), !dbg !995
  call void @llvm.dbg.declare(metadata i32* %18, metadata !385, metadata !111), !dbg !996
  call void @llvm.dbg.declare(metadata i32* %19, metadata !391, metadata !111), !dbg !999
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1000, metadata !111), !dbg !1001
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1007, metadata !111), !dbg !1008
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1009, metadata !111), !dbg !1010
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1011, metadata !111), !dbg !1012
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1013, metadata !111), !dbg !1014
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1015, metadata !111), !dbg !1016
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1017, metadata !111), !dbg !1018
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1019, metadata !111), !dbg !1020
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_7.i, metadata !1021, metadata !111), !dbg !1023
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1024, metadata !111), !dbg !1025
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1030, metadata !111), !dbg !1031
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1032, metadata !111), !dbg !1033
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1034, metadata !111), !dbg !1035
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_8.i, metadata !1036, metadata !111), !dbg !1038
  call void @llvm.dbg.declare(metadata i32* %2, metadata !422, metadata !111), !dbg !1039
  call void @llvm.dbg.declare(metadata i32* %3, metadata !428, metadata !111), !dbg !1044
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_9.i, metadata !430, metadata !111), !dbg !1045
  br i1 %50, label %51, label %52, !dbg !1046

; <label>:51                                      ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !1047
  unreachable, !dbg !1047

errorFn.exit:                                     ; No predecessors!
  br label %58, !dbg !1051

; <label>:52                                      ; preds = %0
  %53 = load i32, i32* @compRegistered, align 4, !dbg !1052
  %54 = icmp ne i32 %53, 0, !dbg !1055
  br i1 %54, label %55, label %56, !dbg !1056

; <label>:55                                      ; preds = %52
  call void (...) @__VERIFIER_error() #5, !dbg !1057
  unreachable, !dbg !1057

errorFn.exit1:                                    ; No predecessors!
  br label %57, !dbg !1061

; <label>:56                                      ; preds = %52
  store i32 1, i32* @compRegistered, align 4, !dbg !1062
  br label %57

; <label>:57                                      ; preds = %56, %errorFn.exit1
  br label %58

; <label>:58                                      ; preds = %57, %errorFn.exit
  %59 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1064
  %60 = sub nsw i32 %59, 1, !dbg !1066
  store i32 %60, i32* %irpSp___1, align 4, !dbg !1067
  %61 = load i32, i32* %doneEvent, align 4, !dbg !1068
  store i32 %61, i32* %irpSp__Context, align 4, !dbg !1069
  store i32 224, i32* %irpSp__Control, align 4, !dbg !1070
  %62 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !1071
  %63 = load i32, i32* %23, align 4, !dbg !1072
  %64 = call i32 @IofCallDriver(i32 %62, i32 %63), !dbg !1073
  store i32 %64, i32* %ntStatus, align 4, !dbg !1074
  %65 = load i32, i32* %ntStatus, align 4, !dbg !1075
  %66 = sext i32 %65 to i64, !dbg !1077
  store i64 %66, i64* %__cil_tmp42, align 8, !dbg !1078
  %67 = load i64, i64* %__cil_tmp42, align 8, !dbg !1079
  %68 = icmp eq i64 %67, 259, !dbg !1081
  br i1 %68, label %69, label %75, !dbg !1082

; <label>:69                                      ; preds = %58
  %70 = load i32, i32* %doneEvent, align 4, !dbg !1083
  %71 = load i32, i32* @Executive, align 4, !dbg !1086
  %72 = load i32, i32* @KernelMode, align 4, !dbg !1087
  %73 = call i32 @KeWaitForSingleObject(i32 %70, i32 %71, i32 %72, i32 0, i32 0), !dbg !1088
  store i32 %73, i32* %ntStatus, align 4, !dbg !1089
  %74 = load i32, i32* @myStatus, align 4, !dbg !1090
  store i32 %74, i32* %ntStatus, align 4, !dbg !1091
  br label %75, !dbg !1092

; <label>:75                                      ; preds = %69, %58
  store i32 0, i32* %fdcInfo__BufferCount, align 4, !dbg !1093
  store i32 0, i32* %fdcInfo__BufferSize, align 4, !dbg !1095
  %76 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !1096
  %77 = load i32, i32* %__cil_tmp46, align 4, !dbg !1097
  %78 = load i32, i32* %fdcInfo, align 4, !dbg !1098
  %79 = call i32 @FlFdcDeviceIo(i32 %76, i32 %77, i32 %78), !dbg !1099
  store i32 %79, i32* %ntStatus, align 4, !dbg !1100
  %80 = load i32, i32* %ntStatus, align 4, !dbg !1101
  %81 = icmp sge i32 %80, 0, !dbg !1102
  br i1 %81, label %82, label %211, !dbg !1103

; <label>:82                                      ; preds = %75
  %83 = load i32, i32* %fdcInfo__MaxTransferSize, align 4, !dbg !1104
  store i32 %83, i32* %disketteExtension__MaxTransferSize, align 4, !dbg !1105
  %84 = load i32, i32* %fdcInfo__AcpiBios, align 4, !dbg !1106
  %85 = icmp ne i32 %84, 0, !dbg !1106
  br i1 %85, label %86, label %102, !dbg !1107

; <label>:86                                      ; preds = %82
  %87 = load i32, i32* %fdcInfo__AcpiFdiSupported, align 4, !dbg !1108
  %88 = icmp ne i32 %87, 0, !dbg !1108
  br i1 %88, label %89, label %100, !dbg !1109

; <label>:89                                      ; preds = %86
  %90 = load i32, i32* %disketteExtension, align 4, !dbg !1110
  %91 = load i32, i32* %fdcInfo, align 4, !dbg !1111
  %92 = bitcast i32* %20 to i8*, !dbg !1112
  call void @llvm.lifetime.start(i64 4, i8* %92), !dbg !1112
  %93 = bitcast i32* %21 to i8*, !dbg !1112
  call void @llvm.lifetime.start(i64 4, i8* %93), !dbg !1112
  store i32 %90, i32* %20, align 4, !dbg !1112
  store i32 %91, i32* %21, align 4, !dbg !1112
  %94 = bitcast i32* %20 to i8*, !dbg !1113
  call void @llvm.lifetime.end(i64 4, i8* %94), !dbg !1113
  %95 = bitcast i32* %21 to i8*, !dbg !1113
  call void @llvm.lifetime.end(i64 4, i8* %95), !dbg !1113
  store i32 0, i32* %ntStatus, align 4, !dbg !1114
  %96 = load i32, i32* %disketteExtension__DriveType, align 4, !dbg !1115
  %97 = icmp eq i32 %96, 4, !dbg !1117
  br i1 %97, label %98, label %99, !dbg !1118

; <label>:98                                      ; preds = %89
  br label %99, !dbg !1119

; <label>:99                                      ; preds = %98, %89
  br label %101, !dbg !1121

; <label>:100                                     ; preds = %86
  br label %103, !dbg !1122

; <label>:101                                     ; preds = %99
  br label %158, !dbg !1124

; <label>:102                                     ; preds = %82
  br label %103, !dbg !1125

; <label>:103                                     ; preds = %102, %100
  %104 = load i32, i32* %disketteExtension__DriveType, align 4, !dbg !1126
  %105 = icmp eq i32 %104, 4, !dbg !1128
  br i1 %105, label %106, label %107, !dbg !1129

; <label>:106                                     ; preds = %103
  br label %107, !dbg !1130

; <label>:107                                     ; preds = %106, %103
  store i32 0, i32* %InterfaceType, align 4, !dbg !1132
  br label %108, !dbg !1133

; <label>:108                                     ; preds = %153, %107
  br label %109, !dbg !1134

; <label>:109                                     ; preds = %108
  %110 = load i32, i32* %InterfaceType, align 4, !dbg !1135
  %111 = load i32, i32* @MaximumInterfaceType, align 4, !dbg !1137
  %112 = icmp sge i32 %110, %111, !dbg !1138
  br i1 %112, label %113, label %114, !dbg !1139

; <label>:113                                     ; preds = %109
  br label %157, !dbg !1140

; <label>:114                                     ; preds = %109
  %115 = load i32, i32* %InterfaceType, align 4, !dbg !1142
  store i32 %115, i32* %fdcInfo__BusType, align 4, !dbg !1143
  %116 = load i32, i32* %fdcInfo__BusType, align 4, !dbg !1144
  %117 = load i32, i32* %fdcInfo__BusNumber, align 4, !dbg !1145
  %118 = load i32, i32* %Dc, align 4, !dbg !1146
  %119 = load i32, i32* %fdcInfo__ControllerNumber, align 4, !dbg !1147
  %120 = load i32, i32* %Fp, align 4, !dbg !1148
  %121 = load i32, i32* %fdcInfo__PeripheralNumber, align 4, !dbg !1149
  %122 = load i32, i32* @FlConfigCallBack, align 4, !dbg !1150
  %123 = load i32, i32* %disketteExtension, align 4, !dbg !1151
  %124 = bitcast i32* %9 to i8*, !dbg !1152
  call void @llvm.lifetime.start(i64 4, i8* %124), !dbg !1152
  %125 = bitcast i32* %10 to i8*, !dbg !1152
  call void @llvm.lifetime.start(i64 4, i8* %125), !dbg !1152
  %126 = bitcast i32* %11 to i8*, !dbg !1152
  call void @llvm.lifetime.start(i64 4, i8* %126), !dbg !1152
  %127 = bitcast i32* %12 to i8*, !dbg !1152
  call void @llvm.lifetime.start(i64 4, i8* %127), !dbg !1152
  %128 = bitcast i32* %13 to i8*, !dbg !1152
  call void @llvm.lifetime.start(i64 4, i8* %128), !dbg !1152
  %129 = bitcast i32* %14 to i8*, !dbg !1152
  call void @llvm.lifetime.start(i64 4, i8* %129), !dbg !1152
  %130 = bitcast i32* %15 to i8*, !dbg !1152
  call void @llvm.lifetime.start(i64 4, i8* %130), !dbg !1152
  %131 = bitcast i32* %16 to i8*, !dbg !1152
  call void @llvm.lifetime.start(i64 4, i8* %131), !dbg !1152
  %132 = bitcast i32* %17 to i8*, !dbg !1152
  call void @llvm.lifetime.start(i64 4, i8* %132), !dbg !1152
  %133 = bitcast i32* %tmp_ndt_7.i to i8*, !dbg !1152
  call void @llvm.lifetime.start(i64 4, i8* %133), !dbg !1152
  store i32 %116, i32* %10, align 4, !dbg !1152
  store i32 %117, i32* %11, align 4, !dbg !1152
  store i32 %118, i32* %12, align 4, !dbg !1152
  store i32 %119, i32* %13, align 4, !dbg !1152
  store i32 %120, i32* %14, align 4, !dbg !1152
  store i32 %121, i32* %15, align 4, !dbg !1152
  store i32 %122, i32* %16, align 4, !dbg !1152
  store i32 %123, i32* %17, align 4, !dbg !1152
  %134 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1153
  store i32 %134, i32* %tmp_ndt_7.i, align 4, !dbg !1154
  %135 = load i32, i32* %tmp_ndt_7.i, align 4, !dbg !1155
  %136 = icmp eq i32 %135, 0, !dbg !1157
  br i1 %136, label %137, label %138, !dbg !1158

; <label>:137                                     ; preds = %114
  store i32 0, i32* %9, !dbg !1159
  br label %IoQueryDeviceDescription.exit, !dbg !1159

; <label>:138                                     ; preds = %114
  store i32 -1073741823, i32* %9, !dbg !1163
  br label %IoQueryDeviceDescription.exit, !dbg !1163

IoQueryDeviceDescription.exit:                    ; preds = %137, %138
  %139 = load i32, i32* %9, !dbg !1164
  %140 = bitcast i32* %9 to i8*, !dbg !1164
  call void @llvm.lifetime.end(i64 4, i8* %140), !dbg !1164
  %141 = bitcast i32* %10 to i8*, !dbg !1164
  call void @llvm.lifetime.end(i64 4, i8* %141), !dbg !1164
  %142 = bitcast i32* %11 to i8*, !dbg !1164
  call void @llvm.lifetime.end(i64 4, i8* %142), !dbg !1164
  %143 = bitcast i32* %12 to i8*, !dbg !1164
  call void @llvm.lifetime.end(i64 4, i8* %143), !dbg !1164
  %144 = bitcast i32* %13 to i8*, !dbg !1164
  call void @llvm.lifetime.end(i64 4, i8* %144), !dbg !1164
  %145 = bitcast i32* %14 to i8*, !dbg !1164
  call void @llvm.lifetime.end(i64 4, i8* %145), !dbg !1164
  %146 = bitcast i32* %15 to i8*, !dbg !1164
  call void @llvm.lifetime.end(i64 4, i8* %146), !dbg !1164
  %147 = bitcast i32* %16 to i8*, !dbg !1164
  call void @llvm.lifetime.end(i64 4, i8* %147), !dbg !1164
  %148 = bitcast i32* %17 to i8*, !dbg !1164
  call void @llvm.lifetime.end(i64 4, i8* %148), !dbg !1164
  %149 = bitcast i32* %tmp_ndt_7.i to i8*, !dbg !1164
  call void @llvm.lifetime.end(i64 4, i8* %149), !dbg !1164
  store i32 %139, i32* %ntStatus, align 4, !dbg !1165
  %150 = load i32, i32* %ntStatus, align 4, !dbg !1166
  %151 = icmp sge i32 %150, 0, !dbg !1168
  br i1 %151, label %152, label %153, !dbg !1169

; <label>:152                                     ; preds = %IoQueryDeviceDescription.exit
  br label %157, !dbg !1170

; <label>:153                                     ; preds = %IoQueryDeviceDescription.exit
  %154 = load i32, i32* %InterfaceType, align 4, !dbg !1172
  %155 = add nsw i32 %154, 1, !dbg !1172
  store i32 %155, i32* %InterfaceType, align 4, !dbg !1172
  br label %108, !dbg !1133
                                                  ; No predecessors!
  br label %157, !dbg !1173

; <label>:157                                     ; preds = %156, %152, %113
  br label %158

; <label>:158                                     ; preds = %157, %101
  %159 = load i32, i32* %ntStatus, align 4, !dbg !1174
  %160 = icmp sge i32 %159, 0, !dbg !1175
  br i1 %160, label %161, label %210, !dbg !1176

; <label>:161                                     ; preds = %158
  %162 = load i32, i32* %KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86, align 4, !dbg !1177
  %163 = icmp ne i32 %162, 0, !dbg !1179
  br i1 %163, label %164, label %167, !dbg !1180

; <label>:164                                     ; preds = %161
  %165 = load i32, i32* %fdcInfo__UnitNumber, align 4, !dbg !1181
  store i32 %165, i32* %disketteExtension__DeviceUnit, align 4, !dbg !1183
  %166 = load i32, i32* %fdcInfo__UnitNumber, align 4, !dbg !1184
  store i32 %166, i32* %disketteExtension__DriveOnValue, align 4, !dbg !1185
  br label %169, !dbg !1186

; <label>:167                                     ; preds = %161
  %168 = load i32, i32* %fdcInfo__PeripheralNumber, align 4, !dbg !1187
  store i32 %168, i32* %disketteExtension__DeviceUnit, align 4, !dbg !1189
  br label %169

; <label>:169                                     ; preds = %167, %164
  %170 = load i32, i32* %disketteExtension__UnderlyingPDO, align 4, !dbg !1190
  %171 = load i32, i32* @MOUNTDEV_MOUNTED_DEVICE_GUID, align 4, !dbg !1191
  %172 = load i32, i32* %disketteExtension__InterfaceString, align 4, !dbg !1192
  %173 = bitcast i32* %4 to i8*, !dbg !1193
  call void @llvm.lifetime.start(i64 4, i8* %173), !dbg !1193
  %174 = bitcast i32* %5 to i8*, !dbg !1193
  call void @llvm.lifetime.start(i64 4, i8* %174), !dbg !1193
  %175 = bitcast i32* %6 to i8*, !dbg !1193
  call void @llvm.lifetime.start(i64 4, i8* %175), !dbg !1193
  %176 = bitcast i32* %7 to i8*, !dbg !1193
  call void @llvm.lifetime.start(i64 4, i8* %176), !dbg !1193
  %177 = bitcast i32* %8 to i8*, !dbg !1193
  call void @llvm.lifetime.start(i64 4, i8* %177), !dbg !1193
  %178 = bitcast i32* %tmp_ndt_8.i to i8*, !dbg !1193
  call void @llvm.lifetime.start(i64 4, i8* %178), !dbg !1193
  store i32 %170, i32* %5, align 4, !dbg !1193
  store i32 %171, i32* %6, align 4, !dbg !1193
  store i32 0, i32* %7, align 4, !dbg !1193
  store i32 %172, i32* %8, align 4, !dbg !1193
  %179 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1194
  store i32 %179, i32* %tmp_ndt_8.i, align 4, !dbg !1195
  %180 = load i32, i32* %tmp_ndt_8.i, align 4, !dbg !1196
  %181 = icmp eq i32 %180, 0, !dbg !1198
  br i1 %181, label %182, label %183, !dbg !1199

; <label>:182                                     ; preds = %169
  store i32 0, i32* %4, !dbg !1200
  br label %IoRegisterDeviceInterface.exit, !dbg !1200

; <label>:183                                     ; preds = %169
  store i32 -1073741808, i32* %4, !dbg !1204
  br label %IoRegisterDeviceInterface.exit, !dbg !1204

IoRegisterDeviceInterface.exit:                   ; preds = %182, %183
  %184 = load i32, i32* %4, !dbg !1205
  %185 = bitcast i32* %4 to i8*, !dbg !1205
  call void @llvm.lifetime.end(i64 4, i8* %185), !dbg !1205
  %186 = bitcast i32* %5 to i8*, !dbg !1205
  call void @llvm.lifetime.end(i64 4, i8* %186), !dbg !1205
  %187 = bitcast i32* %6 to i8*, !dbg !1205
  call void @llvm.lifetime.end(i64 4, i8* %187), !dbg !1205
  %188 = bitcast i32* %7 to i8*, !dbg !1205
  call void @llvm.lifetime.end(i64 4, i8* %188), !dbg !1205
  %189 = bitcast i32* %8 to i8*, !dbg !1205
  call void @llvm.lifetime.end(i64 4, i8* %189), !dbg !1205
  %190 = bitcast i32* %tmp_ndt_8.i to i8*, !dbg !1205
  call void @llvm.lifetime.end(i64 4, i8* %190), !dbg !1205
  store i32 %184, i32* %pnpStatus, align 4, !dbg !1206
  %191 = load i32, i32* %pnpStatus, align 4, !dbg !1207
  %192 = icmp sge i32 %191, 0, !dbg !1208
  br i1 %192, label %193, label %209, !dbg !1209

; <label>:193                                     ; preds = %IoRegisterDeviceInterface.exit
  %194 = load i32, i32* %disketteExtension__InterfaceString, align 4, !dbg !1210
  %195 = bitcast i32* %1 to i8*, !dbg !1211
  call void @llvm.lifetime.start(i64 4, i8* %195), !dbg !1211
  %196 = bitcast i32* %2 to i8*, !dbg !1211
  call void @llvm.lifetime.start(i64 4, i8* %196), !dbg !1211
  %197 = bitcast i32* %3 to i8*, !dbg !1211
  call void @llvm.lifetime.start(i64 4, i8* %197), !dbg !1211
  %198 = bitcast i32* %tmp_ndt_9.i to i8*, !dbg !1211
  call void @llvm.lifetime.start(i64 4, i8* %198), !dbg !1211
  store i32 %194, i32* %2, align 4, !dbg !1211
  store i32 1, i32* %3, align 4, !dbg !1211
  %199 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1212
  store i32 %199, i32* %tmp_ndt_9.i, align 4, !dbg !1213
  %200 = load i32, i32* %tmp_ndt_9.i, align 4, !dbg !1214
  %201 = icmp eq i32 %200, 0, !dbg !1215
  br i1 %201, label %202, label %203, !dbg !1216

; <label>:202                                     ; preds = %193
  store i32 0, i32* %1, !dbg !1217
  br label %IoSetDeviceInterfaceState.exit, !dbg !1217

; <label>:203                                     ; preds = %193
  store i32 -1073741823, i32* %1, !dbg !1218
  br label %IoSetDeviceInterfaceState.exit, !dbg !1218

IoSetDeviceInterfaceState.exit:                   ; preds = %202, %203
  %204 = load i32, i32* %1, !dbg !1219
  %205 = bitcast i32* %1 to i8*, !dbg !1219
  call void @llvm.lifetime.end(i64 4, i8* %205), !dbg !1219
  %206 = bitcast i32* %2 to i8*, !dbg !1219
  call void @llvm.lifetime.end(i64 4, i8* %206), !dbg !1219
  %207 = bitcast i32* %3 to i8*, !dbg !1219
  call void @llvm.lifetime.end(i64 4, i8* %207), !dbg !1219
  %208 = bitcast i32* %tmp_ndt_9.i to i8*, !dbg !1219
  call void @llvm.lifetime.end(i64 4, i8* %208), !dbg !1219
  store i32 %204, i32* %pnpStatus, align 4, !dbg !1220
  br label %209, !dbg !1221

; <label>:209                                     ; preds = %IoSetDeviceInterfaceState.exit, %IoRegisterDeviceInterface.exit
  store i32 1, i32* %disketteExtension__IsStarted, align 4, !dbg !1222
  store i32 0, i32* %disketteExtension__HoldNewRequests, align 4, !dbg !1223
  br label %210, !dbg !1224

; <label>:210                                     ; preds = %209, %158
  br label %211, !dbg !1225

; <label>:211                                     ; preds = %210, %75
  %212 = load i32, i32* %ntStatus, align 4, !dbg !1226
  store i32 %212, i32* %Irp__IoStatus__Status, align 4, !dbg !1227
  %213 = load i32, i32* %ntStatus, align 4, !dbg !1228
  store i32 %213, i32* @myStatus, align 4, !dbg !1229
  %214 = load i32, i32* %23, align 4, !dbg !1230
  %215 = bitcast i32* %18 to i8*, !dbg !1231
  call void @llvm.lifetime.start(i64 4, i8* %215), !dbg !1231
  %216 = bitcast i32* %19 to i8*, !dbg !1231
  call void @llvm.lifetime.start(i64 4, i8* %216), !dbg !1231
  store i32 %214, i32* %18, align 4, !dbg !1231
  store i32 0, i32* %19, align 4, !dbg !1231
  %217 = load i32, i32* @s, align 4, !dbg !1232
  %218 = load i32, i32* @NP, align 4, !dbg !1233
  %219 = icmp eq i32 %217, %218, !dbg !1234
  br i1 %219, label %IofCompleteRequest.exit, label %220, !dbg !1235

; <label>:220                                     ; preds = %211
  call void (...) @__VERIFIER_error() #5, !dbg !1236
  unreachable, !dbg !1236

IofCompleteRequest.exit:                          ; preds = %211
  %221 = load i32, i32* @DC, align 4, !dbg !1238
  store i32 %221, i32* @s, align 4, !dbg !1239
  %222 = bitcast i32* %18 to i8*, !dbg !1240
  call void @llvm.lifetime.end(i64 4, i8* %222), !dbg !1240
  %223 = bitcast i32* %19 to i8*, !dbg !1240
  call void @llvm.lifetime.end(i64 4, i8* %223), !dbg !1240
  %224 = load i32, i32* %ntStatus, align 4, !dbg !1241
  ret i32 %224, !dbg !1242
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
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1243, metadata !111), !dbg !1244
  store i32 %Irp, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1245, metadata !111), !dbg !1246
  store i32 %Context, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1247, metadata !111), !dbg !1248
  %7 = load i32, i32* %6, align 4, !dbg !1249
  %8 = bitcast i32* %1 to i8*, !dbg !1252
  call void @llvm.lifetime.start(i64 4, i8* %8), !dbg !1252
  %9 = bitcast i32* %2 to i8*, !dbg !1252
  call void @llvm.lifetime.start(i64 4, i8* %9), !dbg !1252
  %10 = bitcast i32* %3 to i8*, !dbg !1252
  call void @llvm.lifetime.start(i64 4, i8* %10), !dbg !1252
  %11 = bitcast i32* %l.i to i8*, !dbg !1252
  call void @llvm.lifetime.start(i64 4, i8* %11), !dbg !1252
  store i32 %7, i32* %1, align 4, !dbg !1252
  store i32 1, i32* %2, align 4, !dbg !1252
  store i32 0, i32* %3, align 4, !dbg !1252
  %12 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1253
  store i32 %12, i32* %l.i, align 4, !dbg !1255
  store i32 1, i32* @setEventCalled, align 4, !dbg !1256
  %13 = load i32, i32* %l.i, align 4, !dbg !1258
  %14 = bitcast i32* %1 to i8*, !dbg !1259
  call void @llvm.lifetime.end(i64 4, i8* %14), !dbg !1259
  %15 = bitcast i32* %2 to i8*, !dbg !1259
  call void @llvm.lifetime.end(i64 4, i8* %15), !dbg !1259
  %16 = bitcast i32* %3 to i8*, !dbg !1259
  call void @llvm.lifetime.end(i64 4, i8* %16), !dbg !1259
  %17 = bitcast i32* %l.i to i8*, !dbg !1259
  call void @llvm.lifetime.end(i64 4, i8* %17), !dbg !1259
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1260, metadata !111), !dbg !1261
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1262, metadata !111), !dbg !1263
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1264, metadata !111), !dbg !1265
  call void @llvm.dbg.declare(metadata i32* %l.i, metadata !1266, metadata !111), !dbg !1255
  ret i32 -1073741802, !dbg !1267
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
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1268, metadata !111), !dbg !1269
  store i32 %Ioctl, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1270, metadata !111), !dbg !1271
  store i32 %Data, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1272, metadata !111), !dbg !1273
  call void @llvm.dbg.declare(metadata i32* %ntStatus, metadata !1274, metadata !111), !dbg !1275
  call void @llvm.dbg.declare(metadata i32* %irp, metadata !1276, metadata !111), !dbg !1277
  call void @llvm.dbg.declare(metadata i32* %irpStack, metadata !1278, metadata !111), !dbg !1279
  call void @llvm.dbg.declare(metadata i32* %doneEvent, metadata !1280, metadata !111), !dbg !1281
  %15 = call i32 @__VERIFIER_nondet_int(), !dbg !1282
  store i32 %15, i32* %doneEvent, align 4, !dbg !1281
  call void @llvm.dbg.declare(metadata i32* %ioStatus, metadata !1283, metadata !111), !dbg !1284
  %16 = call i32 @__VERIFIER_nondet_int(), !dbg !1285
  store i32 %16, i32* %ioStatus, align 4, !dbg !1284
  call void @llvm.dbg.declare(metadata i32* %irp__Tail__Overlay__CurrentStackLocation, metadata !1286, metadata !111), !dbg !1287
  %17 = call i32 @__VERIFIER_nondet_int(), !dbg !1288
  store i32 %17, i32* %irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1287
  call void @llvm.dbg.declare(metadata i32* %irpStack__Parameters__DeviceIoControl__Type3InputBuffer, metadata !1289, metadata !111), !dbg !1290
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp11, metadata !1291, metadata !111), !dbg !1292
  %18 = load i32, i32* %13, align 4, !dbg !1293
  %19 = load i32, i32* %12, align 4, !dbg !1296
  %20 = load i32, i32* %doneEvent, align 4, !dbg !1297
  %21 = load i32, i32* %ioStatus, align 4, !dbg !1298
  %22 = bitcast i32* %1 to i8*, !dbg !1299
  call void @llvm.lifetime.start(i64 4, i8* %22), !dbg !1299
  %23 = bitcast i32* %2 to i8*, !dbg !1299
  call void @llvm.lifetime.start(i64 4, i8* %23), !dbg !1299
  %24 = bitcast i32* %3 to i8*, !dbg !1299
  call void @llvm.lifetime.start(i64 4, i8* %24), !dbg !1299
  %25 = bitcast i32* %4 to i8*, !dbg !1299
  call void @llvm.lifetime.start(i64 4, i8* %25), !dbg !1299
  %26 = bitcast i32* %5 to i8*, !dbg !1299
  call void @llvm.lifetime.start(i64 4, i8* %26), !dbg !1299
  %27 = bitcast i32* %6 to i8*, !dbg !1299
  call void @llvm.lifetime.start(i64 4, i8* %27), !dbg !1299
  %28 = bitcast i32* %7 to i8*, !dbg !1299
  call void @llvm.lifetime.start(i64 4, i8* %28), !dbg !1299
  %29 = bitcast i32* %8 to i8*, !dbg !1299
  call void @llvm.lifetime.start(i64 4, i8* %29), !dbg !1299
  %30 = bitcast i32* %9 to i8*, !dbg !1299
  call void @llvm.lifetime.start(i64 4, i8* %30), !dbg !1299
  %31 = bitcast i32* %10 to i8*, !dbg !1299
  call void @llvm.lifetime.start(i64 4, i8* %31), !dbg !1299
  %32 = bitcast i32* %malloc.i to i8*, !dbg !1299
  call void @llvm.lifetime.start(i64 4, i8* %32), !dbg !1299
  %33 = bitcast i32* %tmp_ndt_5.i to i8*, !dbg !1299
  call void @llvm.lifetime.start(i64 4, i8* %33), !dbg !1299
  store i32 %18, i32* %2, align 4, !dbg !1299
  store i32 %19, i32* %3, align 4, !dbg !1299
  store i32 0, i32* %4, align 4, !dbg !1299
  store i32 0, i32* %5, align 4, !dbg !1299
  store i32 0, i32* %6, align 4, !dbg !1299
  store i32 0, i32* %7, align 4, !dbg !1299
  store i32 1, i32* %8, align 4, !dbg !1299
  store i32 %20, i32* %9, align 4, !dbg !1299
  store i32 %21, i32* %10, align 4, !dbg !1299
  %34 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1300
  store i32 %34, i32* %malloc.i, align 4, !dbg !1302
  store i32 1, i32* @customIrp, align 4, !dbg !1303
  %35 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1305
  store i32 %35, i32* %tmp_ndt_5.i, align 4, !dbg !1306
  %36 = load i32, i32* %tmp_ndt_5.i, align 4, !dbg !1307
  %37 = icmp eq i32 %36, 0, !dbg !1309
  br i1 %37, label %38, label %40, !dbg !1310

; <label>:38                                      ; preds = %0
  %39 = load i32, i32* %malloc.i, align 4, !dbg !1311
  store i32 %39, i32* %1, !dbg !1315
  br label %IoBuildDeviceIoControlRequest.exit, !dbg !1315

; <label>:40                                      ; preds = %0
  store i32 0, i32* %1, !dbg !1316
  br label %IoBuildDeviceIoControlRequest.exit, !dbg !1316

IoBuildDeviceIoControlRequest.exit:               ; preds = %38, %40
  %41 = load i32, i32* %1, !dbg !1317
  %42 = bitcast i32* %1 to i8*, !dbg !1317
  call void @llvm.lifetime.end(i64 4, i8* %42), !dbg !1317
  %43 = bitcast i32* %2 to i8*, !dbg !1317
  call void @llvm.lifetime.end(i64 4, i8* %43), !dbg !1317
  %44 = bitcast i32* %3 to i8*, !dbg !1317
  call void @llvm.lifetime.end(i64 4, i8* %44), !dbg !1317
  %45 = bitcast i32* %4 to i8*, !dbg !1317
  call void @llvm.lifetime.end(i64 4, i8* %45), !dbg !1317
  %46 = bitcast i32* %5 to i8*, !dbg !1317
  call void @llvm.lifetime.end(i64 4, i8* %46), !dbg !1317
  %47 = bitcast i32* %6 to i8*, !dbg !1317
  call void @llvm.lifetime.end(i64 4, i8* %47), !dbg !1317
  %48 = bitcast i32* %7 to i8*, !dbg !1317
  call void @llvm.lifetime.end(i64 4, i8* %48), !dbg !1317
  %49 = bitcast i32* %8 to i8*, !dbg !1317
  call void @llvm.lifetime.end(i64 4, i8* %49), !dbg !1317
  %50 = bitcast i32* %9 to i8*, !dbg !1317
  call void @llvm.lifetime.end(i64 4, i8* %50), !dbg !1317
  %51 = bitcast i32* %10 to i8*, !dbg !1317
  call void @llvm.lifetime.end(i64 4, i8* %51), !dbg !1317
  %52 = bitcast i32* %malloc.i to i8*, !dbg !1317
  call void @llvm.lifetime.end(i64 4, i8* %52), !dbg !1317
  %53 = bitcast i32* %tmp_ndt_5.i to i8*, !dbg !1317
  call void @llvm.lifetime.end(i64 4, i8* %53), !dbg !1317
  store i32 %41, i32* %irp, align 4, !dbg !1318
  %54 = load i32, i32* %irp, align 4, !dbg !1319
  %55 = icmp eq i32 %54, 0, !dbg !1321
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1322, metadata !111), !dbg !1323
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1324, metadata !111), !dbg !1325
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1326, metadata !111), !dbg !1327
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1328, metadata !111), !dbg !1329
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1330, metadata !111), !dbg !1331
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1332, metadata !111), !dbg !1333
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1334, metadata !111), !dbg !1335
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1336, metadata !111), !dbg !1337
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1338, metadata !111), !dbg !1339
  call void @llvm.dbg.declare(metadata i32* %malloc.i, metadata !1340, metadata !111), !dbg !1302
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_5.i, metadata !1341, metadata !111), !dbg !1342
  br i1 %55, label %56, label %57, !dbg !1343

; <label>:56                                      ; preds = %IoBuildDeviceIoControlRequest.exit
  store i32 -1073741670, i32* %11, !dbg !1344
  br label %76, !dbg !1344

; <label>:57                                      ; preds = %IoBuildDeviceIoControlRequest.exit
  %58 = load i32, i32* %irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1346
  %59 = sub nsw i32 %58, 1, !dbg !1348
  store i32 %59, i32* %irpStack, align 4, !dbg !1349
  %60 = load i32, i32* %14, align 4, !dbg !1350
  store i32 %60, i32* %irpStack__Parameters__DeviceIoControl__Type3InputBuffer, align 4, !dbg !1351
  %61 = load i32, i32* %12, align 4, !dbg !1352
  %62 = load i32, i32* %irp, align 4, !dbg !1353
  %63 = call i32 @IofCallDriver(i32 %61, i32 %62), !dbg !1354
  store i32 %63, i32* %ntStatus, align 4, !dbg !1355
  %64 = load i32, i32* %ntStatus, align 4, !dbg !1356
  %65 = sext i32 %64 to i64, !dbg !1358
  store i64 %65, i64* %__cil_tmp11, align 8, !dbg !1359
  %66 = load i64, i64* %__cil_tmp11, align 8, !dbg !1360
  %67 = icmp eq i64 %66, 259, !dbg !1362
  br i1 %67, label %68, label %74, !dbg !1363

; <label>:68                                      ; preds = %57
  %69 = load i32, i32* %doneEvent, align 4, !dbg !1364
  %70 = load i32, i32* @Suspended, align 4, !dbg !1367
  %71 = load i32, i32* @KernelMode, align 4, !dbg !1368
  %72 = call i32 @KeWaitForSingleObject(i32 %69, i32 %70, i32 %71, i32 0, i32 0), !dbg !1369
  %73 = load i32, i32* @myStatus, align 4, !dbg !1370
  store i32 %73, i32* %ntStatus, align 4, !dbg !1371
  br label %74, !dbg !1372

; <label>:74                                      ; preds = %68, %57
  %75 = load i32, i32* %ntStatus, align 4, !dbg !1373
  store i32 %75, i32* %11, !dbg !1374
  br label %76, !dbg !1374

; <label>:76                                      ; preds = %74, %56
  %77 = load i32, i32* %11, !dbg !1375
  ret i32 %77, !dbg !1375
}

; Function Attrs: nounwind ssp uwtable
define void @FloppyProcessQueuedRequests(i32 %DisketteExtension) #0 {
  %1 = alloca i32, align 4
  store i32 %DisketteExtension, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1376, metadata !111), !dbg !1377
  ret void, !dbg !1378
}

; Function Attrs: nounwind ssp uwtable
define void @stub_driver_init() #0 {
  %1 = load i32, i32* @NP, align 4, !dbg !1380
  store i32 %1, i32* @s, align 4, !dbg !1382
  store i32 0, i32* @pended, align 4, !dbg !1383
  store i32 0, i32* @compRegistered, align 4, !dbg !1384
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !1385
  store i32 0, i32* @setEventCalled, align 4, !dbg !1386
  store i32 0, i32* @customIrp, align 4, !dbg !1387
  ret void, !dbg !1388
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
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1389, metadata !111), !dbg !1390
  call void @llvm.dbg.declare(metadata i32* %irp, metadata !1391, metadata !111), !dbg !1392
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !1393
  store i32 %10, i32* %irp, align 4, !dbg !1392
  call void @llvm.dbg.declare(metadata i32* %pirp, metadata !1394, metadata !111), !dbg !1395
  call void @llvm.dbg.declare(metadata i32* %pirp__IoStatus__Status, metadata !1396, metadata !111), !dbg !1397
  call void @llvm.dbg.declare(metadata i32* %irp_choice, metadata !1398, metadata !111), !dbg !1399
  %11 = call i32 @__VERIFIER_nondet_int(), !dbg !1400
  store i32 %11, i32* %irp_choice, align 4, !dbg !1399
  call void @llvm.dbg.declare(metadata i32* %devobj, metadata !1401, metadata !111), !dbg !1402
  %12 = call i32 @__VERIFIER_nondet_int(), !dbg !1403
  store i32 %12, i32* %devobj, align 4, !dbg !1402
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp8, metadata !1404, metadata !111), !dbg !1405
  store i32 0, i32* @FloppyThread, align 4, !dbg !1406
  store i32 0, i32* @KernelMode, align 4, !dbg !1407
  store i32 0, i32* @Suspended, align 4, !dbg !1408
  store i32 0, i32* @Executive, align 4, !dbg !1409
  store i32 0, i32* @DiskController, align 4, !dbg !1410
  store i32 0, i32* @FloppyDiskPeripheral, align 4, !dbg !1411
  store i32 0, i32* @FlConfigCallBack, align 4, !dbg !1412
  store i32 0, i32* @MaximumInterfaceType, align 4, !dbg !1413
  store i32 0, i32* @MOUNTDEV_MOUNTED_DEVICE_GUID, align 4, !dbg !1414
  store i32 0, i32* @myStatus, align 4, !dbg !1415
  store i32 0, i32* @s, align 4, !dbg !1416
  store i32 0, i32* @UNLOADED, align 4, !dbg !1417
  store i32 0, i32* @NP, align 4, !dbg !1418
  store i32 0, i32* @DC, align 4, !dbg !1419
  store i32 0, i32* @SKIP1, align 4, !dbg !1420
  store i32 0, i32* @SKIP2, align 4, !dbg !1421
  store i32 0, i32* @MPR1, align 4, !dbg !1422
  store i32 0, i32* @MPR3, align 4, !dbg !1423
  store i32 0, i32* @IPC, align 4, !dbg !1424
  store i32 0, i32* @pended, align 4, !dbg !1425
  store i32 0, i32* @compRegistered, align 4, !dbg !1426
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !1427
  store i32 0, i32* @setEventCalled, align 4, !dbg !1428
  store i32 0, i32* @customIrp, align 4, !dbg !1429
  store i32 0, i32* %status, align 4, !dbg !1430
  %13 = load i32, i32* %irp, align 4, !dbg !1433
  store i32 %13, i32* %pirp, align 4, !dbg !1434
  store i32 0, i32* @UNLOADED, align 4, !dbg !1435
  store i32 1, i32* @NP, align 4, !dbg !1437
  store i32 2, i32* @DC, align 4, !dbg !1438
  store i32 3, i32* @SKIP1, align 4, !dbg !1439
  store i32 4, i32* @SKIP2, align 4, !dbg !1440
  store i32 5, i32* @MPR1, align 4, !dbg !1441
  store i32 6, i32* @MPR3, align 4, !dbg !1442
  store i32 7, i32* @IPC, align 4, !dbg !1443
  %14 = load i32, i32* @UNLOADED, align 4, !dbg !1444
  store i32 %14, i32* @s, align 4, !dbg !1445
  store i32 0, i32* @pended, align 4, !dbg !1446
  store i32 0, i32* @compRegistered, align 4, !dbg !1447
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !1448
  store i32 0, i32* @setEventCalled, align 4, !dbg !1449
  store i32 0, i32* @customIrp, align 4, !dbg !1450
  %15 = load i32, i32* %status, align 4, !dbg !1451
  %16 = icmp sge i32 %15, 0, !dbg !1453
  call void @llvm.dbg.declare(metadata i32* %5, metadata !385, metadata !111), !dbg !1454
  call void @llvm.dbg.declare(metadata i32* %6, metadata !391, metadata !111), !dbg !1471
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1472, metadata !111), !dbg !1473
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1474, metadata !111), !dbg !1475
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status.i, metadata !1476, metadata !111), !dbg !1477
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information.i, metadata !1478, metadata !111), !dbg !1479
  call void @llvm.dbg.declare(metadata i32* %1, metadata !385, metadata !111), !dbg !1480
  call void @llvm.dbg.declare(metadata i32* %2, metadata !391, metadata !111), !dbg !1484
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1472, metadata !111), !dbg !1485
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1474, metadata !111), !dbg !1486
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status.i.2, metadata !1476, metadata !111), !dbg !1487
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information.i.3, metadata !1478, metadata !111), !dbg !1488
  br i1 %16, label %17, label %112, !dbg !1489

; <label>:17                                      ; preds = %0
  %18 = load i32, i32* @NP, align 4, !dbg !1490
  store i32 %18, i32* @s, align 4, !dbg !1491
  store i32 0, i32* @customIrp, align 4, !dbg !1492
  %19 = load i32, i32* @customIrp, align 4, !dbg !1493
  store i32 %19, i32* @setEventCalled, align 4, !dbg !1494
  %20 = load i32, i32* @setEventCalled, align 4, !dbg !1495
  store i32 %20, i32* @lowerDriverReturn, align 4, !dbg !1496
  %21 = load i32, i32* @lowerDriverReturn, align 4, !dbg !1497
  store i32 %21, i32* @compRegistered, align 4, !dbg !1498
  %22 = load i32, i32* @compRegistered, align 4, !dbg !1499
  store i32 %22, i32* @pended, align 4, !dbg !1500
  store i32 0, i32* %pirp__IoStatus__Status, align 4, !dbg !1501
  store i32 0, i32* @myStatus, align 4, !dbg !1502
  %23 = load i32, i32* %irp_choice, align 4, !dbg !1503
  %24 = icmp eq i32 %23, 0, !dbg !1505
  br i1 %24, label %25, label %26, !dbg !1506

; <label>:25                                      ; preds = %17
  store i32 -1073741637, i32* %pirp__IoStatus__Status, align 4, !dbg !1507
  store i32 -1073741637, i32* @myStatus, align 4, !dbg !1509
  br label %26, !dbg !1510

; <label>:26                                      ; preds = %25, %17
  %27 = load i32, i32* @NP, align 4, !dbg !1511
  store i32 %27, i32* @s, align 4, !dbg !1514
  store i32 0, i32* @pended, align 4, !dbg !1515
  store i32 0, i32* @compRegistered, align 4, !dbg !1516
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !1517
  store i32 0, i32* @setEventCalled, align 4, !dbg !1518
  store i32 0, i32* @customIrp, align 4, !dbg !1519
  %28 = load i32, i32* %status, align 4, !dbg !1520
  %29 = icmp slt i32 %28, 0, !dbg !1523
  br i1 %29, label %30, label %31, !dbg !1524

; <label>:30                                      ; preds = %26
  store i32 -1, i32* %9, !dbg !1525
  br label %192, !dbg !1525

; <label>:31                                      ; preds = %26
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_1, metadata !1527, metadata !111), !dbg !1528
  %32 = call i32 @__VERIFIER_nondet_int(), !dbg !1529
  store i32 %32, i32* %tmp_ndt_1, align 4, !dbg !1530
  %33 = load i32, i32* %tmp_ndt_1, align 4, !dbg !1531
  %34 = icmp eq i32 %33, 0, !dbg !1532
  br i1 %34, label %35, label %36, !dbg !1533

; <label>:35                                      ; preds = %31
  br label %54, !dbg !1534

; <label>:36                                      ; preds = %31
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_2, metadata !1536, metadata !111), !dbg !1537
  %37 = call i32 @__VERIFIER_nondet_int(), !dbg !1538
  store i32 %37, i32* %tmp_ndt_2, align 4, !dbg !1539
  %38 = load i32, i32* %tmp_ndt_2, align 4, !dbg !1540
  %39 = icmp eq i32 %38, 1, !dbg !1541
  br i1 %39, label %40, label %41, !dbg !1542

; <label>:40                                      ; preds = %36
  br label %75, !dbg !1543

; <label>:41                                      ; preds = %36
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_3, metadata !1545, metadata !111), !dbg !1546
  %42 = call i32 @__VERIFIER_nondet_int(), !dbg !1547
  store i32 %42, i32* %tmp_ndt_3, align 4, !dbg !1548
  %43 = load i32, i32* %tmp_ndt_3, align 4, !dbg !1549
  %44 = icmp eq i32 %43, 2, !dbg !1550
  br i1 %44, label %45, label %46, !dbg !1551

; <label>:45                                      ; preds = %41
  br label %96, !dbg !1552

; <label>:46                                      ; preds = %41
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_4, metadata !1554, metadata !111), !dbg !1555
  %47 = call i32 @__VERIFIER_nondet_int(), !dbg !1556
  store i32 %47, i32* %tmp_ndt_4, align 4, !dbg !1557
  %48 = load i32, i32* %tmp_ndt_4, align 4, !dbg !1558
  %49 = icmp eq i32 %48, 3, !dbg !1559
  br i1 %49, label %50, label %51, !dbg !1560

; <label>:50                                      ; preds = %46
  br label %100, !dbg !1561

; <label>:51                                      ; preds = %46
  br label %104, !dbg !1563
                                                  ; No predecessors!
  br i1 false, label %53, label %105, !dbg !1564

; <label>:53                                      ; preds = %52
  br label %54, !dbg !1565

; <label>:54                                      ; preds = %53, %35
  %55 = load i32, i32* %devobj, align 4, !dbg !1566
  %56 = load i32, i32* %pirp, align 4, !dbg !1567
  %57 = bitcast i32* %7 to i8*, !dbg !1568
  call void @llvm.lifetime.start(i64 4, i8* %57), !dbg !1568
  %58 = bitcast i32* %8 to i8*, !dbg !1568
  call void @llvm.lifetime.start(i64 4, i8* %58), !dbg !1568
  %59 = bitcast i32* %Irp__IoStatus__Status.i to i8*, !dbg !1568
  call void @llvm.lifetime.start(i64 4, i8* %59), !dbg !1568
  %60 = bitcast i32* %Irp__IoStatus__Information.i to i8*, !dbg !1568
  call void @llvm.lifetime.start(i64 4, i8* %60), !dbg !1568
  store i32 %55, i32* %7, align 4, !dbg !1568
  store i32 %56, i32* %8, align 4, !dbg !1568
  store i32 0, i32* @myStatus, align 4, !dbg !1569
  store i32 0, i32* %Irp__IoStatus__Status.i, align 4, !dbg !1570
  store i32 1, i32* %Irp__IoStatus__Information.i, align 4, !dbg !1571
  %61 = load i32, i32* %8, align 4, !dbg !1572
  %62 = bitcast i32* %5 to i8*, !dbg !1573
  call void @llvm.lifetime.start(i64 4, i8* %62) #4, !dbg !1573
  %63 = bitcast i32* %6 to i8*, !dbg !1573
  call void @llvm.lifetime.start(i64 4, i8* %63) #4, !dbg !1573
  store i32 %61, i32* %5, align 4, !dbg !1573
  store i32 0, i32* %6, align 4, !dbg !1573
  %64 = load i32, i32* @s, align 4, !dbg !1574
  %65 = load i32, i32* @NP, align 4, !dbg !1575
  %66 = icmp eq i32 %64, %65, !dbg !1576
  br i1 %66, label %FloppyCreateClose.exit, label %67, !dbg !1577

; <label>:67                                      ; preds = %54
  call void (...) @__VERIFIER_error() #5, !dbg !1578
  unreachable, !dbg !1578

FloppyCreateClose.exit:                           ; preds = %54
  %68 = load i32, i32* @DC, align 4, !dbg !1580
  store i32 %68, i32* @s, align 4, !dbg !1581
  %69 = bitcast i32* %5 to i8*, !dbg !1582
  call void @llvm.lifetime.end(i64 4, i8* %69) #4, !dbg !1582
  %70 = bitcast i32* %6 to i8*, !dbg !1582
  call void @llvm.lifetime.end(i64 4, i8* %70) #4, !dbg !1582
  %71 = bitcast i32* %7 to i8*, !dbg !1583
  call void @llvm.lifetime.end(i64 4, i8* %71), !dbg !1583
  %72 = bitcast i32* %8 to i8*, !dbg !1583
  call void @llvm.lifetime.end(i64 4, i8* %72), !dbg !1583
  %73 = bitcast i32* %Irp__IoStatus__Status.i to i8*, !dbg !1583
  call void @llvm.lifetime.end(i64 4, i8* %73), !dbg !1583
  %74 = bitcast i32* %Irp__IoStatus__Information.i to i8*, !dbg !1583
  call void @llvm.lifetime.end(i64 4, i8* %74), !dbg !1583
  store i32 0, i32* %status, align 4, !dbg !1584
  br label %106, !dbg !1585

; <label>:75                                      ; preds = %40
  %76 = load i32, i32* %devobj, align 4, !dbg !1586
  %77 = load i32, i32* %pirp, align 4, !dbg !1587
  %78 = bitcast i32* %3 to i8*, !dbg !1588
  call void @llvm.lifetime.start(i64 4, i8* %78), !dbg !1588
  %79 = bitcast i32* %4 to i8*, !dbg !1588
  call void @llvm.lifetime.start(i64 4, i8* %79), !dbg !1588
  %80 = bitcast i32* %Irp__IoStatus__Status.i.2 to i8*, !dbg !1588
  call void @llvm.lifetime.start(i64 4, i8* %80), !dbg !1588
  %81 = bitcast i32* %Irp__IoStatus__Information.i.3 to i8*, !dbg !1588
  call void @llvm.lifetime.start(i64 4, i8* %81), !dbg !1588
  store i32 %76, i32* %3, align 4, !dbg !1588
  store i32 %77, i32* %4, align 4, !dbg !1588
  store i32 0, i32* @myStatus, align 4, !dbg !1589
  store i32 0, i32* %Irp__IoStatus__Status.i.2, align 4, !dbg !1590
  store i32 1, i32* %Irp__IoStatus__Information.i.3, align 4, !dbg !1591
  %82 = load i32, i32* %4, align 4, !dbg !1592
  %83 = bitcast i32* %1 to i8*, !dbg !1593
  call void @llvm.lifetime.start(i64 4, i8* %83) #4, !dbg !1593
  %84 = bitcast i32* %2 to i8*, !dbg !1593
  call void @llvm.lifetime.start(i64 4, i8* %84) #4, !dbg !1593
  store i32 %82, i32* %1, align 4, !dbg !1593
  store i32 0, i32* %2, align 4, !dbg !1593
  %85 = load i32, i32* @s, align 4, !dbg !1594
  %86 = load i32, i32* @NP, align 4, !dbg !1595
  %87 = icmp eq i32 %85, %86, !dbg !1596
  br i1 %87, label %FloppyCreateClose.exit4, label %88, !dbg !1597

; <label>:88                                      ; preds = %75
  call void (...) @__VERIFIER_error() #5, !dbg !1598
  unreachable, !dbg !1598

FloppyCreateClose.exit4:                          ; preds = %75
  %89 = load i32, i32* @DC, align 4, !dbg !1600
  store i32 %89, i32* @s, align 4, !dbg !1601
  %90 = bitcast i32* %1 to i8*, !dbg !1602
  call void @llvm.lifetime.end(i64 4, i8* %90) #4, !dbg !1602
  %91 = bitcast i32* %2 to i8*, !dbg !1602
  call void @llvm.lifetime.end(i64 4, i8* %91) #4, !dbg !1602
  %92 = bitcast i32* %3 to i8*, !dbg !1603
  call void @llvm.lifetime.end(i64 4, i8* %92), !dbg !1603
  %93 = bitcast i32* %4 to i8*, !dbg !1603
  call void @llvm.lifetime.end(i64 4, i8* %93), !dbg !1603
  %94 = bitcast i32* %Irp__IoStatus__Status.i.2 to i8*, !dbg !1603
  call void @llvm.lifetime.end(i64 4, i8* %94), !dbg !1603
  %95 = bitcast i32* %Irp__IoStatus__Information.i.3 to i8*, !dbg !1603
  call void @llvm.lifetime.end(i64 4, i8* %95), !dbg !1603
  store i32 0, i32* %status, align 4, !dbg !1604
  br label %106, !dbg !1605

; <label>:96                                      ; preds = %45
  %97 = load i32, i32* %devobj, align 4, !dbg !1606
  %98 = load i32, i32* %pirp, align 4, !dbg !1608
  %99 = call i32 @FloppyDeviceControl(i32 %97, i32 %98), !dbg !1609
  store i32 %99, i32* %status, align 4, !dbg !1610
  br label %106, !dbg !1611

; <label>:100                                     ; preds = %50
  %101 = load i32, i32* %devobj, align 4, !dbg !1612
  %102 = load i32, i32* %pirp, align 4, !dbg !1614
  %103 = call i32 @FloppyPnp(i32 %101, i32 %102), !dbg !1615
  store i32 %103, i32* %status, align 4, !dbg !1616
  br label %106, !dbg !1617

; <label>:104                                     ; preds = %51
  store i32 -1, i32* %9, !dbg !1618
  br label %192, !dbg !1618

; <label>:105                                     ; preds = %52
  br label %106, !dbg !1619

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
  br label %112, !dbg !1620

; <label>:112                                     ; preds = %111, %0
  %113 = load i32, i32* @pended, align 4, !dbg !1621
  %114 = icmp eq i32 %113, 1, !dbg !1623
  br i1 %114, label %115, label %123, !dbg !1624

; <label>:115                                     ; preds = %112
  %116 = load i32, i32* @s, align 4, !dbg !1625
  %117 = load i32, i32* @NP, align 4, !dbg !1628
  %118 = icmp eq i32 %116, %117, !dbg !1629
  br i1 %118, label %119, label %121, !dbg !1630

; <label>:119                                     ; preds = %115
  %120 = load i32, i32* @NP, align 4, !dbg !1631
  store i32 %120, i32* @s, align 4, !dbg !1633
  br label %122, !dbg !1634

; <label>:121                                     ; preds = %115
  br label %124, !dbg !1635

; <label>:122                                     ; preds = %119
  br label %190, !dbg !1637

; <label>:123                                     ; preds = %112
  br label %124, !dbg !1638

; <label>:124                                     ; preds = %123, %121
  %125 = load i32, i32* @pended, align 4, !dbg !1639
  %126 = icmp eq i32 %125, 1, !dbg !1642
  br i1 %126, label %127, label %135, !dbg !1643

; <label>:127                                     ; preds = %124
  %128 = load i32, i32* @s, align 4, !dbg !1644
  %129 = load i32, i32* @MPR3, align 4, !dbg !1647
  %130 = icmp eq i32 %128, %129, !dbg !1648
  br i1 %130, label %131, label %133, !dbg !1649

; <label>:131                                     ; preds = %127
  %132 = load i32, i32* @MPR3, align 4, !dbg !1650
  store i32 %132, i32* @s, align 4, !dbg !1652
  br label %134, !dbg !1653

; <label>:133                                     ; preds = %127
  br label %136, !dbg !1654

; <label>:134                                     ; preds = %131
  br label %189, !dbg !1656

; <label>:135                                     ; preds = %124
  br label %136, !dbg !1657

; <label>:136                                     ; preds = %135, %133
  %137 = load i32, i32* @s, align 4, !dbg !1658
  %138 = load i32, i32* @UNLOADED, align 4, !dbg !1661
  %139 = icmp ne i32 %137, %138, !dbg !1662
  br i1 %139, label %140, label %188, !dbg !1663

; <label>:140                                     ; preds = %136
  %141 = load i32, i32* %status, align 4, !dbg !1664
  %142 = icmp ne i32 %141, -1, !dbg !1667
  br i1 %142, label %143, label %187, !dbg !1668

; <label>:143                                     ; preds = %140
  %144 = load i32, i32* @s, align 4, !dbg !1669
  %145 = load i32, i32* @SKIP2, align 4, !dbg !1672
  %146 = icmp ne i32 %144, %145, !dbg !1673
  br i1 %146, label %147, label %160, !dbg !1674

; <label>:147                                     ; preds = %143
  %148 = load i32, i32* @s, align 4, !dbg !1675
  %149 = load i32, i32* @IPC, align 4, !dbg !1678
  %150 = icmp ne i32 %148, %149, !dbg !1679
  br i1 %150, label %151, label %158, !dbg !1680

; <label>:151                                     ; preds = %147
  %152 = load i32, i32* @s, align 4, !dbg !1681
  %153 = load i32, i32* @DC, align 4, !dbg !1684
  %154 = icmp ne i32 %152, %153, !dbg !1685
  br i1 %154, label %155, label %156, !dbg !1686

; <label>:155                                     ; preds = %151
  call void (...) @__VERIFIER_error() #5, !dbg !1687
  unreachable, !dbg !1687

errorFn.exit5:                                    ; No predecessors!
  br label %157, !dbg !1691

; <label>:156                                     ; preds = %151
  br label %161, !dbg !1692

; <label>:157                                     ; preds = %errorFn.exit5
  br label %159, !dbg !1694

; <label>:158                                     ; preds = %147
  br label %161, !dbg !1695

; <label>:159                                     ; preds = %157
  br label %186, !dbg !1697

; <label>:160                                     ; preds = %143
  br label %161, !dbg !1698

; <label>:161                                     ; preds = %160, %158, %156
  %162 = load i32, i32* @pended, align 4, !dbg !1699
  %163 = icmp eq i32 %162, 1, !dbg !1702
  br i1 %163, label %164, label %169, !dbg !1703

; <label>:164                                     ; preds = %161
  %165 = load i32, i32* %status, align 4, !dbg !1704
  %166 = icmp ne i32 %165, 259, !dbg !1707
  br i1 %166, label %167, label %168, !dbg !1708

; <label>:167                                     ; preds = %164
  store i32 0, i32* %status, align 4, !dbg !1709
  br label %168, !dbg !1711

; <label>:168                                     ; preds = %167, %164
  br label %185, !dbg !1712

; <label>:169                                     ; preds = %161
  %170 = load i32, i32* @s, align 4, !dbg !1713
  %171 = load i32, i32* @DC, align 4, !dbg !1716
  %172 = icmp eq i32 %170, %171, !dbg !1717
  br i1 %172, label %173, label %178, !dbg !1718

; <label>:173                                     ; preds = %169
  %174 = load i32, i32* %status, align 4, !dbg !1719
  %175 = icmp eq i32 %174, 259, !dbg !1722
  br i1 %175, label %176, label %177, !dbg !1723

; <label>:176                                     ; preds = %173
  call void (...) @__VERIFIER_error() #5, !dbg !1724
  unreachable, !dbg !1724

errorFn.exit1:                                    ; No predecessors!
  br label %177, !dbg !1728

; <label>:177                                     ; preds = %errorFn.exit1, %173
  br label %184, !dbg !1729

; <label>:178                                     ; preds = %169
  %179 = load i32, i32* %status, align 4, !dbg !1730
  %180 = load i32, i32* @lowerDriverReturn, align 4, !dbg !1733
  %181 = icmp ne i32 %179, %180, !dbg !1734
  br i1 %181, label %182, label %183, !dbg !1735

; <label>:182                                     ; preds = %178
  call void (...) @__VERIFIER_error() #5, !dbg !1736
  unreachable, !dbg !1736

errorFn.exit:                                     ; No predecessors!
  br label %183, !dbg !1740

; <label>:183                                     ; preds = %errorFn.exit, %178
  br label %184

; <label>:184                                     ; preds = %183, %177
  br label %185

; <label>:185                                     ; preds = %184, %168
  br label %186

; <label>:186                                     ; preds = %185, %159
  br label %187, !dbg !1741

; <label>:187                                     ; preds = %186, %140
  br label %188, !dbg !1742

; <label>:188                                     ; preds = %187, %136
  br label %189

; <label>:189                                     ; preds = %188, %134
  br label %190

; <label>:190                                     ; preds = %189, %122
  store i32 0, i32* %status, align 4, !dbg !1743
  %191 = load i32, i32* %status, align 4, !dbg !1744
  store i32 %191, i32* %9, !dbg !1745
  br label %192, !dbg !1745

; <label>:192                                     ; preds = %190, %104, %30
  %193 = load i32, i32* %9, !dbg !1746
  ret i32 %193, !dbg !1746
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1322, metadata !111), !dbg !1747
  store i32 %DeviceObject, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1324, metadata !111), !dbg !1748
  store i32 %InputBuffer, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1326, metadata !111), !dbg !1749
  store i32 %InputBufferLength, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1328, metadata !111), !dbg !1750
  store i32 %OutputBuffer, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1330, metadata !111), !dbg !1751
  store i32 %OutputBufferLength, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1332, metadata !111), !dbg !1752
  store i32 %InternalDeviceIoControl, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1334, metadata !111), !dbg !1753
  store i32 %Event, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1336, metadata !111), !dbg !1754
  store i32 %IoStatusBlock, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1338, metadata !111), !dbg !1755
  call void @llvm.dbg.declare(metadata i32* %malloc, metadata !1340, metadata !111), !dbg !1756
  %11 = call i32 @__VERIFIER_nondet_int(), !dbg !1757
  store i32 %11, i32* %malloc, align 4, !dbg !1756
  store i32 1, i32* @customIrp, align 4, !dbg !1758
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_5, metadata !1341, metadata !111), !dbg !1759
  %12 = call i32 @__VERIFIER_nondet_int(), !dbg !1760
  store i32 %12, i32* %tmp_ndt_5, align 4, !dbg !1761
  %13 = load i32, i32* %tmp_ndt_5, align 4, !dbg !1762
  %14 = icmp eq i32 %13, 0, !dbg !1763
  br i1 %14, label %15, label %16, !dbg !1764

; <label>:15                                      ; preds = %0
  br label %19, !dbg !1765

; <label>:16                                      ; preds = %0
  br label %21, !dbg !1767
                                                  ; No predecessors!
  br i1 false, label %18, label %22, !dbg !1768

; <label>:18                                      ; preds = %17
  br label %19, !dbg !1769

; <label>:19                                      ; preds = %18, %15
  %20 = load i32, i32* %malloc, align 4, !dbg !1770
  store i32 %20, i32* %1, !dbg !1771
  br label %24, !dbg !1771

; <label>:21                                      ; preds = %16
  store i32 0, i32* %1, !dbg !1772
  br label %24, !dbg !1772

; <label>:22                                      ; preds = %17
  br label %23

; <label>:23                                      ; preds = %22
  br label %24

; <label>:24                                      ; preds = %23, %21, %19
  %25 = load i32, i32* %1, !dbg !1773
  ret i32 %25, !dbg !1773
}

; Function Attrs: nounwind ssp uwtable
define i32 @IoDeleteSymbolicLink(i32 %SymbolicLinkName) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %tmp_ndt_6 = alloca i32, align 4
  store i32 %SymbolicLinkName, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !433, metadata !111), !dbg !1774
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_6, metadata !439, metadata !111), !dbg !1775
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !1776
  store i32 %3, i32* %tmp_ndt_6, align 4, !dbg !1777
  %4 = load i32, i32* %tmp_ndt_6, align 4, !dbg !1778
  %5 = icmp eq i32 %4, 0, !dbg !1779
  br i1 %5, label %6, label %7, !dbg !1780

; <label>:6                                       ; preds = %0
  br label %10, !dbg !1781

; <label>:7                                       ; preds = %0
  br label %11, !dbg !1783
                                                  ; No predecessors!
  br i1 false, label %9, label %12, !dbg !1784

; <label>:9                                       ; preds = %8
  br label %10, !dbg !1785

; <label>:10                                      ; preds = %9, %6
  store i32 0, i32* %1, !dbg !1786
  br label %14, !dbg !1786

; <label>:11                                      ; preds = %7
  store i32 -1073741823, i32* %1, !dbg !1787
  br label %14, !dbg !1787

; <label>:12                                      ; preds = %8
  br label %13

; <label>:13                                      ; preds = %12
  br label %14

; <label>:14                                      ; preds = %13, %11, %10
  %15 = load i32, i32* %1, !dbg !1788
  ret i32 %15, !dbg !1788
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1000, metadata !111), !dbg !1789
  store i32 %BusNumber, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1007, metadata !111), !dbg !1790
  store i32 %ControllerType, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1009, metadata !111), !dbg !1791
  store i32 %ControllerNumber, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1011, metadata !111), !dbg !1792
  store i32 %PeripheralType, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1013, metadata !111), !dbg !1793
  store i32 %PeripheralNumber, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1015, metadata !111), !dbg !1794
  store i32 %CalloutRoutine, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1017, metadata !111), !dbg !1795
  store i32 %Context, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1019, metadata !111), !dbg !1796
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_7, metadata !1021, metadata !111), !dbg !1797
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !1798
  store i32 %10, i32* %tmp_ndt_7, align 4, !dbg !1799
  %11 = load i32, i32* %tmp_ndt_7, align 4, !dbg !1800
  %12 = icmp eq i32 %11, 0, !dbg !1801
  br i1 %12, label %13, label %14, !dbg !1802

; <label>:13                                      ; preds = %0
  br label %17, !dbg !1803

; <label>:14                                      ; preds = %0
  br label %18, !dbg !1805
                                                  ; No predecessors!
  br i1 false, label %16, label %19, !dbg !1806

; <label>:16                                      ; preds = %15
  br label %17, !dbg !1807

; <label>:17                                      ; preds = %16, %13
  store i32 0, i32* %1, !dbg !1808
  br label %21, !dbg !1808

; <label>:18                                      ; preds = %14
  store i32 -1073741823, i32* %1, !dbg !1809
  br label %21, !dbg !1809

; <label>:19                                      ; preds = %15
  br label %20

; <label>:20                                      ; preds = %19
  br label %21

; <label>:21                                      ; preds = %20, %18, %17
  %22 = load i32, i32* %1, !dbg !1810
  ret i32 %22, !dbg !1810
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1024, metadata !111), !dbg !1811
  store i32 %InterfaceClassGuid, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1030, metadata !111), !dbg !1812
  store i32 %ReferenceString, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1032, metadata !111), !dbg !1813
  store i32 %SymbolicLinkName, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1034, metadata !111), !dbg !1814
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_8, metadata !1036, metadata !111), !dbg !1815
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !1816
  store i32 %6, i32* %tmp_ndt_8, align 4, !dbg !1817
  %7 = load i32, i32* %tmp_ndt_8, align 4, !dbg !1818
  %8 = icmp eq i32 %7, 0, !dbg !1819
  br i1 %8, label %9, label %10, !dbg !1820

; <label>:9                                       ; preds = %0
  br label %13, !dbg !1821

; <label>:10                                      ; preds = %0
  br label %14, !dbg !1823
                                                  ; No predecessors!
  br i1 false, label %12, label %15, !dbg !1824

; <label>:12                                      ; preds = %11
  br label %13, !dbg !1825

; <label>:13                                      ; preds = %12, %9
  store i32 0, i32* %1, !dbg !1826
  br label %17, !dbg !1826

; <label>:14                                      ; preds = %10
  store i32 -1073741808, i32* %1, !dbg !1827
  br label %17, !dbg !1827

; <label>:15                                      ; preds = %11
  br label %16

; <label>:16                                      ; preds = %15
  br label %17

; <label>:17                                      ; preds = %16, %14, %13
  %18 = load i32, i32* %1, !dbg !1828
  ret i32 %18, !dbg !1828
}

; Function Attrs: nounwind ssp uwtable
define i32 @IoSetDeviceInterfaceState(i32 %SymbolicLinkName, i32 %Enable) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %tmp_ndt_9 = alloca i32, align 4
  store i32 %SymbolicLinkName, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !422, metadata !111), !dbg !1829
  store i32 %Enable, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !428, metadata !111), !dbg !1830
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_9, metadata !430, metadata !111), !dbg !1831
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !1832
  store i32 %4, i32* %tmp_ndt_9, align 4, !dbg !1833
  %5 = load i32, i32* %tmp_ndt_9, align 4, !dbg !1834
  %6 = icmp eq i32 %5, 0, !dbg !1835
  br i1 %6, label %7, label %8, !dbg !1836

; <label>:7                                       ; preds = %0
  br label %11, !dbg !1837

; <label>:8                                       ; preds = %0
  br label %12, !dbg !1839
                                                  ; No predecessors!
  br i1 false, label %10, label %13, !dbg !1840

; <label>:10                                      ; preds = %9
  br label %11, !dbg !1841

; <label>:11                                      ; preds = %10, %7
  store i32 0, i32* %1, !dbg !1842
  br label %15, !dbg !1842

; <label>:12                                      ; preds = %8
  store i32 -1073741823, i32* %1, !dbg !1843
  br label %15, !dbg !1843

; <label>:13                                      ; preds = %9
  br label %14

; <label>:14                                      ; preds = %13
  br label %15

; <label>:15                                      ; preds = %14, %12, %11
  %16 = load i32, i32* %1, !dbg !1844
  ret i32 %16, !dbg !1844
}

; Function Attrs: nounwind ssp uwtable
define void @stubMoreProcessingRequired() #0 {
  %1 = load i32, i32* @s, align 4, !dbg !1845
  %2 = load i32, i32* @NP, align 4, !dbg !1848
  %3 = icmp eq i32 %1, %2, !dbg !1849
  br i1 %3, label %4, label %6, !dbg !1850

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* @MPR1, align 4, !dbg !1851
  store i32 %5, i32* @s, align 4, !dbg !1853
  br label %7, !dbg !1854

; <label>:6                                       ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !1855
  unreachable, !dbg !1855

errorFn.exit:                                     ; No predecessors!
  br label %7

; <label>:7                                       ; preds = %errorFn.exit, %4
  ret void, !dbg !1859
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
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1860, metadata !111), !dbg !1861
  store i32 %Irp, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1862, metadata !111), !dbg !1863
  call void @llvm.dbg.declare(metadata i32* %returnVal2, metadata !1864, metadata !111), !dbg !1865
  call void @llvm.dbg.declare(metadata i32* %compRetStatus1, metadata !1866, metadata !111), !dbg !1867
  call void @llvm.dbg.declare(metadata i32* %lcontext, metadata !1868, metadata !111), !dbg !1869
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !1870
  store i32 %9, i32* %lcontext, align 4, !dbg !1869
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp7, metadata !1871, metadata !111), !dbg !1872
  %10 = load i32, i32* @compRegistered, align 4, !dbg !1873
  %11 = icmp ne i32 %10, 0, !dbg !1873
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1260, metadata !111), !dbg !1876
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1262, metadata !111), !dbg !1881
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1264, metadata !111), !dbg !1882
  call void @llvm.dbg.declare(metadata i32* %l.i.i, metadata !1266, metadata !111), !dbg !1883
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1243, metadata !111), !dbg !1884
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1245, metadata !111), !dbg !1885
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1247, metadata !111), !dbg !1886
  br i1 %11, label %12, label %44, !dbg !1887

; <label>:12                                      ; preds = %0
  %13 = load i32, i32* %7, align 4, !dbg !1888
  %14 = load i32, i32* %8, align 4, !dbg !1889
  %15 = load i32, i32* %lcontext, align 4, !dbg !1890
  %16 = bitcast i32* %4 to i8*, !dbg !1891
  call void @llvm.lifetime.start(i64 4, i8* %16), !dbg !1891
  %17 = bitcast i32* %5 to i8*, !dbg !1891
  call void @llvm.lifetime.start(i64 4, i8* %17), !dbg !1891
  %18 = bitcast i32* %6 to i8*, !dbg !1891
  call void @llvm.lifetime.start(i64 4, i8* %18), !dbg !1891
  store i32 %13, i32* %4, align 4, !dbg !1891
  store i32 %14, i32* %5, align 4, !dbg !1891
  store i32 %15, i32* %6, align 4, !dbg !1891
  %19 = load i32, i32* %6, align 4, !dbg !1892
  %20 = bitcast i32* %1 to i8*, !dbg !1893
  call void @llvm.lifetime.start(i64 4, i8* %20) #4, !dbg !1893
  %21 = bitcast i32* %2 to i8*, !dbg !1893
  call void @llvm.lifetime.start(i64 4, i8* %21) #4, !dbg !1893
  %22 = bitcast i32* %3 to i8*, !dbg !1893
  call void @llvm.lifetime.start(i64 4, i8* %22) #4, !dbg !1893
  %23 = bitcast i32* %l.i.i to i8*, !dbg !1893
  call void @llvm.lifetime.start(i64 4, i8* %23) #4, !dbg !1893
  store i32 %19, i32* %1, align 4, !dbg !1893
  store i32 1, i32* %2, align 4, !dbg !1893
  store i32 0, i32* %3, align 4, !dbg !1893
  %24 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1894
  store i32 %24, i32* %l.i.i, align 4, !dbg !1883
  store i32 1, i32* @setEventCalled, align 4, !dbg !1895
  %25 = load i32, i32* %l.i.i, align 4, !dbg !1896
  %26 = bitcast i32* %1 to i8*, !dbg !1897
  call void @llvm.lifetime.end(i64 4, i8* %26) #4, !dbg !1897
  %27 = bitcast i32* %2 to i8*, !dbg !1897
  call void @llvm.lifetime.end(i64 4, i8* %27) #4, !dbg !1897
  %28 = bitcast i32* %3 to i8*, !dbg !1897
  call void @llvm.lifetime.end(i64 4, i8* %28) #4, !dbg !1897
  %29 = bitcast i32* %l.i.i to i8*, !dbg !1897
  call void @llvm.lifetime.end(i64 4, i8* %29) #4, !dbg !1897
  %30 = bitcast i32* %4 to i8*, !dbg !1898
  call void @llvm.lifetime.end(i64 4, i8* %30), !dbg !1898
  %31 = bitcast i32* %5 to i8*, !dbg !1898
  call void @llvm.lifetime.end(i64 4, i8* %31), !dbg !1898
  %32 = bitcast i32* %6 to i8*, !dbg !1898
  call void @llvm.lifetime.end(i64 4, i8* %32), !dbg !1898
  store i32 -1073741802, i32* %compRetStatus1, align 4, !dbg !1899
  %33 = load i32, i32* %compRetStatus1, align 4, !dbg !1900
  %34 = sext i32 %33 to i64, !dbg !1902
  store i64 %34, i64* %__cil_tmp7, align 8, !dbg !1903
  %35 = load i64, i64* %__cil_tmp7, align 8, !dbg !1904
  %36 = icmp eq i64 %35, -1073741802, !dbg !1906
  br i1 %36, label %37, label %43, !dbg !1907

; <label>:37                                      ; preds = %12
  %38 = load i32, i32* @s, align 4, !dbg !1908
  %39 = load i32, i32* @NP, align 4, !dbg !1912
  %40 = icmp eq i32 %38, %39, !dbg !1913
  br i1 %40, label %stubMoreProcessingRequired.exit, label %41, !dbg !1914

; <label>:41                                      ; preds = %37
  call void (...) @__VERIFIER_error() #5, !dbg !1915
  unreachable, !dbg !1915

stubMoreProcessingRequired.exit:                  ; preds = %37
  %42 = load i32, i32* @MPR1, align 4, !dbg !1917
  store i32 %42, i32* @s, align 4, !dbg !1918
  br label %43, !dbg !1919

; <label>:43                                      ; preds = %stubMoreProcessingRequired.exit, %12
  br label %44, !dbg !1920

; <label>:44                                      ; preds = %43, %0
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_10, metadata !1921, metadata !111), !dbg !1922
  %45 = call i32 @__VERIFIER_nondet_int(), !dbg !1923
  store i32 %45, i32* %tmp_ndt_10, align 4, !dbg !1924
  %46 = load i32, i32* %tmp_ndt_10, align 4, !dbg !1925
  %47 = icmp eq i32 %46, 0, !dbg !1927
  br i1 %47, label %48, label %49, !dbg !1928

; <label>:48                                      ; preds = %44
  br label %57, !dbg !1929

; <label>:49                                      ; preds = %44
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_11, metadata !1931, metadata !111), !dbg !1933
  %50 = call i32 @__VERIFIER_nondet_int(), !dbg !1934
  store i32 %50, i32* %tmp_ndt_11, align 4, !dbg !1935
  %51 = load i32, i32* %tmp_ndt_11, align 4, !dbg !1936
  %52 = icmp eq i32 %51, 1, !dbg !1938
  br i1 %52, label %53, label %54, !dbg !1939

; <label>:53                                      ; preds = %49
  br label %58, !dbg !1940

; <label>:54                                      ; preds = %49
  br label %59, !dbg !1942
                                                  ; No predecessors!
  br i1 false, label %56, label %60, !dbg !1944

; <label>:56                                      ; preds = %55
  br label %57, !dbg !1945

; <label>:57                                      ; preds = %56, %48
  store i32 0, i32* %returnVal2, align 4, !dbg !1947
  br label %61, !dbg !1949

; <label>:58                                      ; preds = %53
  store i32 -1073741823, i32* %returnVal2, align 4, !dbg !1950
  br label %61, !dbg !1951

; <label>:59                                      ; preds = %54
  store i32 259, i32* %returnVal2, align 4, !dbg !1952
  br label %61, !dbg !1953

; <label>:60                                      ; preds = %55
  br label %61, !dbg !1954

; <label>:61                                      ; preds = %60, %59, %58, %57
  br label %62

; <label>:62                                      ; preds = %61
  br label %63

; <label>:63                                      ; preds = %62
  br label %64

; <label>:64                                      ; preds = %63
  %65 = load i32, i32* @s, align 4, !dbg !1955
  %66 = load i32, i32* @NP, align 4, !dbg !1957
  %67 = icmp eq i32 %65, %66, !dbg !1958
  br i1 %67, label %68, label %71, !dbg !1959

; <label>:68                                      ; preds = %64
  %69 = load i32, i32* @IPC, align 4, !dbg !1960
  store i32 %69, i32* @s, align 4, !dbg !1962
  %70 = load i32, i32* %returnVal2, align 4, !dbg !1963
  store i32 %70, i32* @lowerDriverReturn, align 4, !dbg !1964
  br label %95, !dbg !1965

; <label>:71                                      ; preds = %64
  %72 = load i32, i32* @s, align 4, !dbg !1966
  %73 = load i32, i32* @MPR1, align 4, !dbg !1969
  %74 = icmp eq i32 %72, %73, !dbg !1970
  br i1 %74, label %75, label %85, !dbg !1971

; <label>:75                                      ; preds = %71
  %76 = load i32, i32* %returnVal2, align 4, !dbg !1972
  %77 = icmp eq i32 %76, 259, !dbg !1975
  br i1 %77, label %78, label %81, !dbg !1976

; <label>:78                                      ; preds = %75
  %79 = load i32, i32* @MPR3, align 4, !dbg !1977
  store i32 %79, i32* @s, align 4, !dbg !1979
  %80 = load i32, i32* %returnVal2, align 4, !dbg !1980
  store i32 %80, i32* @lowerDriverReturn, align 4, !dbg !1981
  br label %84, !dbg !1982

; <label>:81                                      ; preds = %75
  %82 = load i32, i32* @NP, align 4, !dbg !1983
  store i32 %82, i32* @s, align 4, !dbg !1985
  %83 = load i32, i32* %returnVal2, align 4, !dbg !1986
  store i32 %83, i32* @lowerDriverReturn, align 4, !dbg !1987
  br label %84

; <label>:84                                      ; preds = %81, %78
  br label %94, !dbg !1988

; <label>:85                                      ; preds = %71
  %86 = load i32, i32* @s, align 4, !dbg !1989
  %87 = load i32, i32* @SKIP1, align 4, !dbg !1992
  %88 = icmp eq i32 %86, %87, !dbg !1993
  br i1 %88, label %89, label %92, !dbg !1994

; <label>:89                                      ; preds = %85
  %90 = load i32, i32* @SKIP2, align 4, !dbg !1995
  store i32 %90, i32* @s, align 4, !dbg !1997
  %91 = load i32, i32* %returnVal2, align 4, !dbg !1998
  store i32 %91, i32* @lowerDriverReturn, align 4, !dbg !1999
  br label %93, !dbg !2000

; <label>:92                                      ; preds = %85
  call void (...) @__VERIFIER_error() #5, !dbg !2001
  unreachable, !dbg !2001

errorFn.exit:                                     ; No predecessors!
  br label %93

; <label>:93                                      ; preds = %errorFn.exit, %89
  br label %94

; <label>:94                                      ; preds = %93, %84
  br label %95

; <label>:95                                      ; preds = %94, %68
  %96 = load i32, i32* %returnVal2, align 4, !dbg !2005
  ret i32 %96, !dbg !2006
}

; Function Attrs: nounwind ssp uwtable
define i32 @KeSetEvent(i32 %Event, i32 %Increment, i32 %Wait) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 %Event, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1260, metadata !111), !dbg !2007
  store i32 %Increment, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1262, metadata !111), !dbg !2008
  store i32 %Wait, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1264, metadata !111), !dbg !2009
  call void @llvm.dbg.declare(metadata i32* %l, metadata !1266, metadata !111), !dbg !2010
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !2011
  store i32 %4, i32* %l, align 4, !dbg !2010
  store i32 1, i32* @setEventCalled, align 4, !dbg !2012
  %5 = load i32, i32* %l, align 4, !dbg !2013
  ret i32 %5, !dbg !2014
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2015, metadata !111), !dbg !2016
  store i32 %WaitReason, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2017, metadata !111), !dbg !2018
  store i32 %WaitMode, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2019, metadata !111), !dbg !2020
  store i32 %Alertable, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2021, metadata !111), !dbg !2022
  store i32 %Timeout, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2023, metadata !111), !dbg !2024
  %7 = load i32, i32* @s, align 4, !dbg !2025
  %8 = load i32, i32* @MPR3, align 4, !dbg !2028
  %9 = icmp eq i32 %7, %8, !dbg !2029
  br i1 %9, label %10, label %17, !dbg !2030

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* @setEventCalled, align 4, !dbg !2031
  %12 = icmp eq i32 %11, 1, !dbg !2034
  br i1 %12, label %13, label %15, !dbg !2035

; <label>:13                                      ; preds = %10
  %14 = load i32, i32* @NP, align 4, !dbg !2036
  store i32 %14, i32* @s, align 4, !dbg !2038
  store i32 0, i32* @setEventCalled, align 4, !dbg !2039
  br label %16, !dbg !2040

; <label>:15                                      ; preds = %10
  br label %18, !dbg !2041

; <label>:16                                      ; preds = %13
  br label %30, !dbg !2043

; <label>:17                                      ; preds = %0
  br label %18, !dbg !2044

; <label>:18                                      ; preds = %17, %15
  %19 = load i32, i32* @customIrp, align 4, !dbg !2045
  %20 = icmp eq i32 %19, 1, !dbg !2048
  br i1 %20, label %21, label %23, !dbg !2049

; <label>:21                                      ; preds = %18
  %22 = load i32, i32* @NP, align 4, !dbg !2050
  store i32 %22, i32* @s, align 4, !dbg !2052
  store i32 0, i32* @customIrp, align 4, !dbg !2053
  br label %29, !dbg !2054

; <label>:23                                      ; preds = %18
  %24 = load i32, i32* @s, align 4, !dbg !2055
  %25 = load i32, i32* @MPR3, align 4, !dbg !2058
  %26 = icmp eq i32 %24, %25, !dbg !2059
  br i1 %26, label %27, label %28, !dbg !2060

; <label>:27                                      ; preds = %23
  call void (...) @__VERIFIER_error() #5, !dbg !2061
  unreachable, !dbg !2061

errorFn.exit:                                     ; No predecessors!
  br label %28, !dbg !2065

; <label>:28                                      ; preds = %errorFn.exit, %23
  br label %29

; <label>:29                                      ; preds = %28, %21
  br label %30

; <label>:30                                      ; preds = %29, %16
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_12, metadata !2066, metadata !111), !dbg !2067
  %31 = call i32 @__VERIFIER_nondet_int(), !dbg !2068
  store i32 %31, i32* %tmp_ndt_12, align 4, !dbg !2069
  %32 = load i32, i32* %tmp_ndt_12, align 4, !dbg !2070
  %33 = icmp eq i32 %32, 0, !dbg !2072
  br i1 %33, label %34, label %35, !dbg !2073

; <label>:34                                      ; preds = %30
  br label %38, !dbg !2074

; <label>:35                                      ; preds = %30
  br label %39, !dbg !2076
                                                  ; No predecessors!
  br i1 false, label %37, label %40, !dbg !2078

; <label>:37                                      ; preds = %36
  br label %38, !dbg !2079

; <label>:38                                      ; preds = %37, %34
  store i32 0, i32* %1, !dbg !2081
  br label %42, !dbg !2081

; <label>:39                                      ; preds = %35
  store i32 -1073741823, i32* %1, !dbg !2083
  br label %42, !dbg !2083

; <label>:40                                      ; preds = %36
  br label %41

; <label>:41                                      ; preds = %40
  br label %42

; <label>:42                                      ; preds = %41, %39, %38
  %43 = load i32, i32* %1, !dbg !2084
  ret i32 %43, !dbg !2084
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !173, metadata !111), !dbg !2085
  store i32 %DesiredAccess, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !177, metadata !111), !dbg !2086
  store i32 %ObjectType, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !179, metadata !111), !dbg !2087
  store i32 %AccessMode, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !181, metadata !111), !dbg !2088
  store i32 %Object, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !183, metadata !111), !dbg !2089
  store i32 %HandleInformation, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !185, metadata !111), !dbg !2090
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_13, metadata !187, metadata !111), !dbg !2091
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !2092
  store i32 %8, i32* %tmp_ndt_13, align 4, !dbg !2093
  %9 = load i32, i32* %tmp_ndt_13, align 4, !dbg !2094
  %10 = icmp eq i32 %9, 0, !dbg !2095
  br i1 %10, label %11, label %12, !dbg !2096

; <label>:11                                      ; preds = %0
  br label %15, !dbg !2097

; <label>:12                                      ; preds = %0
  br label %16, !dbg !2099
                                                  ; No predecessors!
  br i1 false, label %14, label %17, !dbg !2100

; <label>:14                                      ; preds = %13
  br label %15, !dbg !2101

; <label>:15                                      ; preds = %14, %11
  store i32 0, i32* %1, !dbg !2102
  br label %19, !dbg !2102

; <label>:16                                      ; preds = %12
  store i32 -1073741823, i32* %1, !dbg !2103
  br label %19, !dbg !2103

; <label>:17                                      ; preds = %13
  br label %18

; <label>:18                                      ; preds = %17
  br label %19

; <label>:19                                      ; preds = %18, %16, %15
  %20 = load i32, i32* %1, !dbg !2104
  ret i32 %20, !dbg !2104
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !152, metadata !111), !dbg !2105
  store i32 %DesiredAccess, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !158, metadata !111), !dbg !2106
  store i32 %ObjectAttributes, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !160, metadata !111), !dbg !2107
  store i32 %ProcessHandle, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !162, metadata !111), !dbg !2108
  store i32 %ClientId, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !164, metadata !111), !dbg !2109
  store i32 %StartRoutine, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !166, metadata !111), !dbg !2110
  store i32 %StartContext, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !168, metadata !111), !dbg !2111
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_14, metadata !170, metadata !111), !dbg !2112
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !2113
  store i32 %9, i32* %tmp_ndt_14, align 4, !dbg !2114
  %10 = load i32, i32* %tmp_ndt_14, align 4, !dbg !2115
  %11 = icmp eq i32 %10, 0, !dbg !2116
  br i1 %11, label %12, label %13, !dbg !2117

; <label>:12                                      ; preds = %0
  br label %16, !dbg !2118

; <label>:13                                      ; preds = %0
  br label %17, !dbg !2120
                                                  ; No predecessors!
  br i1 false, label %15, label %18, !dbg !2121

; <label>:15                                      ; preds = %14
  br label %16, !dbg !2122

; <label>:16                                      ; preds = %15, %12
  store i32 0, i32* %1, !dbg !2123
  br label %20, !dbg !2123

; <label>:17                                      ; preds = %13
  store i32 -1073741823, i32* %1, !dbg !2124
  br label %20, !dbg !2124

; <label>:18                                      ; preds = %14
  br label %19

; <label>:19                                      ; preds = %18
  br label %20

; <label>:20                                      ; preds = %19, %17, %16
  %21 = load i32, i32* %1, !dbg !2125
  ret i32 %21, !dbg !2125
}

; Function Attrs: nounwind ssp uwtable
define i32 @ZwClose(i32 %Handle) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %tmp_ndt_15 = alloca i32, align 4
  store i32 %Handle, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !190, metadata !111), !dbg !2126
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_15, metadata !193, metadata !111), !dbg !2127
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !2128
  store i32 %3, i32* %tmp_ndt_15, align 4, !dbg !2129
  %4 = load i32, i32* %tmp_ndt_15, align 4, !dbg !2130
  %5 = icmp eq i32 %4, 0, !dbg !2131
  br i1 %5, label %6, label %7, !dbg !2132

; <label>:6                                       ; preds = %0
  br label %10, !dbg !2133

; <label>:7                                       ; preds = %0
  br label %11, !dbg !2135
                                                  ; No predecessors!
  br i1 false, label %9, label %12, !dbg !2136

; <label>:9                                       ; preds = %8
  br label %10, !dbg !2137

; <label>:10                                      ; preds = %9, %6
  store i32 0, i32* %1, !dbg !2138
  br label %14, !dbg !2138

; <label>:11                                      ; preds = %7
  store i32 -1073741823, i32* %1, !dbg !2139
  br label %14, !dbg !2139

; <label>:12                                      ; preds = %8
  br label %13

; <label>:13                                      ; preds = %12
  br label %14

; <label>:14                                      ; preds = %13, %11, %10
  %15 = load i32, i32* %1, !dbg !2140
  ret i32 %15, !dbg !2140
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
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1472, metadata !111), !dbg !2141
  store i32 %Irp, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1474, metadata !111), !dbg !2142
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !1476, metadata !111), !dbg !2143
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !1478, metadata !111), !dbg !2144
  store i32 0, i32* @myStatus, align 4, !dbg !2145
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !2146
  store i32 1, i32* %Irp__IoStatus__Information, align 4, !dbg !2147
  %5 = load i32, i32* %4, align 4, !dbg !2148
  %6 = bitcast i32* %1 to i8*, !dbg !2149
  call void @llvm.lifetime.start(i64 4, i8* %6), !dbg !2149
  %7 = bitcast i32* %2 to i8*, !dbg !2149
  call void @llvm.lifetime.start(i64 4, i8* %7), !dbg !2149
  store i32 %5, i32* %1, align 4, !dbg !2149
  store i32 0, i32* %2, align 4, !dbg !2149
  %8 = load i32, i32* @s, align 4, !dbg !2150
  %9 = load i32, i32* @NP, align 4, !dbg !2152
  %10 = icmp eq i32 %8, %9, !dbg !2153
  br i1 %10, label %IofCompleteRequest.exit, label %11, !dbg !2154

; <label>:11                                      ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !2155
  unreachable, !dbg !2155

IofCompleteRequest.exit:                          ; preds = %0
  %12 = load i32, i32* @DC, align 4, !dbg !2157
  store i32 %12, i32* @s, align 4, !dbg !2158
  %13 = bitcast i32* %1 to i8*, !dbg !2159
  call void @llvm.lifetime.end(i64 4, i8* %13), !dbg !2159
  %14 = bitcast i32* %2 to i8*, !dbg !2159
  call void @llvm.lifetime.end(i64 4, i8* %14), !dbg !2159
  call void @llvm.dbg.declare(metadata i32* %1, metadata !385, metadata !111), !dbg !2160
  call void @llvm.dbg.declare(metadata i32* %2, metadata !391, metadata !111), !dbg !2161
  ret i32 0, !dbg !2162
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
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2163, metadata !111), !dbg !2164
  store i32 %Irp, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2165, metadata !111), !dbg !2166
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__HoldNewRequests, metadata !2167, metadata !111), !dbg !2168
  %11 = call i32 @__VERIFIER_nondet_int(), !dbg !2169
  store i32 %11, i32* %disketteExtension__HoldNewRequests, align 4, !dbg !2168
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__IsRemoved, metadata !2170, metadata !111), !dbg !2171
  %12 = call i32 @__VERIFIER_nondet_int(), !dbg !2172
  store i32 %12, i32* %disketteExtension__IsRemoved, align 4, !dbg !2171
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !2173, metadata !111), !dbg !2174
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__IsStarted, metadata !2175, metadata !111), !dbg !2176
  %13 = call i32 @__VERIFIER_nondet_int(), !dbg !2177
  store i32 %13, i32* %disketteExtension__IsStarted, align 4, !dbg !2176
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !2178, metadata !111), !dbg !2179
  %14 = call i32 @__VERIFIER_nondet_int(), !dbg !2180
  store i32 %14, i32* %Irp__CurrentLocation, align 4, !dbg !2179
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !2181, metadata !111), !dbg !2182
  %15 = call i32 @__VERIFIER_nondet_int(), !dbg !2183
  store i32 %15, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !2182
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__TargetObject, metadata !2184, metadata !111), !dbg !2185
  %16 = call i32 @__VERIFIER_nondet_int(), !dbg !2186
  store i32 %16, i32* %disketteExtension__TargetObject, align 4, !dbg !2185
  call void @llvm.dbg.declare(metadata i32* %irpSp__Parameters__DeviceIoControl__OutputBufferLength, metadata !2187, metadata !111), !dbg !2188
  %17 = call i32 @__VERIFIER_nondet_int(), !dbg !2189
  store i32 %17, i32* %irpSp__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !2188
  call void @llvm.dbg.declare(metadata i32* %sizeof__MOUNTDEV_NAME, metadata !2190, metadata !111), !dbg !2191
  %18 = call i32 @__VERIFIER_nondet_int(), !dbg !2192
  store i32 %18, i32* %sizeof__MOUNTDEV_NAME, align 4, !dbg !2191
  call void @llvm.dbg.declare(metadata i32* %Irp__AssociatedIrp__SystemBuffer, metadata !2193, metadata !111), !dbg !2194
  %19 = call i32 @__VERIFIER_nondet_int(), !dbg !2195
  store i32 %19, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !2194
  call void @llvm.dbg.declare(metadata i32* %mountName__NameLength, metadata !2196, metadata !111), !dbg !2197
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__DeviceName__Length, metadata !2198, metadata !111), !dbg !2199
  %20 = call i32 @__VERIFIER_nondet_int(), !dbg !2200
  store i32 %20, i32* %disketteExtension__DeviceName__Length, align 4, !dbg !2199
  call void @llvm.dbg.declare(metadata i32* %sizeof__USHORT, metadata !2201, metadata !111), !dbg !2202
  %21 = call i32 @__VERIFIER_nondet_int(), !dbg !2203
  store i32 %21, i32* %sizeof__USHORT, align 4, !dbg !2202
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__InterfaceString__Buffer, metadata !2204, metadata !111), !dbg !2205
  %22 = call i32 @__VERIFIER_nondet_int(), !dbg !2206
  store i32 %22, i32* %disketteExtension__InterfaceString__Buffer, align 4, !dbg !2205
  call void @llvm.dbg.declare(metadata i32* %uniqueId__UniqueIdLength, metadata !2207, metadata !111), !dbg !2208
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__InterfaceString__Length, metadata !2209, metadata !111), !dbg !2210
  %23 = call i32 @__VERIFIER_nondet_int(), !dbg !2211
  store i32 %23, i32* %disketteExtension__InterfaceString__Length, align 4, !dbg !2210
  call void @llvm.dbg.declare(metadata i32* %sizeof__MOUNTDEV_UNIQUE_ID, metadata !2212, metadata !111), !dbg !2213
  %24 = call i32 @__VERIFIER_nondet_int(), !dbg !2214
  store i32 %24, i32* %sizeof__MOUNTDEV_UNIQUE_ID, align 4, !dbg !2213
  call void @llvm.dbg.declare(metadata i32* %irpSp__Parameters__DeviceIoControl__InputBufferLength, metadata !2215, metadata !111), !dbg !2216
  %25 = call i32 @__VERIFIER_nondet_int(), !dbg !2217
  store i32 %25, i32* %irpSp__Parameters__DeviceIoControl__InputBufferLength, align 4, !dbg !2216
  call void @llvm.dbg.declare(metadata i32* %sizeof__FORMAT_PARAMETERS, metadata !2218, metadata !111), !dbg !2219
  %26 = call i32 @__VERIFIER_nondet_int(), !dbg !2220
  store i32 %26, i32* %sizeof__FORMAT_PARAMETERS, align 4, !dbg !2219
  call void @llvm.dbg.declare(metadata i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, metadata !2221, metadata !111), !dbg !2222
  %27 = call i32 @__VERIFIER_nondet_int(), !dbg !2223
  store i32 %27, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2222
  call void @llvm.dbg.declare(metadata i32* %sizeof__FORMAT_EX_PARAMETERS, metadata !2224, metadata !111), !dbg !2225
  %28 = call i32 @__VERIFIER_nondet_int(), !dbg !2226
  store i32 %28, i32* %sizeof__FORMAT_EX_PARAMETERS, align 4, !dbg !2225
  call void @llvm.dbg.declare(metadata i32* %formatExParameters__FormatGapLength, metadata !2227, metadata !111), !dbg !2228
  %29 = call i32 @__VERIFIER_nondet_int(), !dbg !2229
  store i32 %29, i32* %formatExParameters__FormatGapLength, align 4, !dbg !2228
  call void @llvm.dbg.declare(metadata i32* %formatExParameters__SectorsPerTrack, metadata !2230, metadata !111), !dbg !2231
  %30 = call i32 @__VERIFIER_nondet_int(), !dbg !2232
  store i32 %30, i32* %formatExParameters__SectorsPerTrack, align 4, !dbg !2231
  call void @llvm.dbg.declare(metadata i32* %sizeof__DISK_GEOMETRY, metadata !2233, metadata !111), !dbg !2234
  %31 = call i32 @__VERIFIER_nondet_int(), !dbg !2235
  store i32 %31, i32* %sizeof__DISK_GEOMETRY, align 4, !dbg !2234
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status___0, metadata !2236, metadata !111), !dbg !2237
  call void @llvm.dbg.declare(metadata i32* %disketteExtension, metadata !2238, metadata !111), !dbg !2239
  %32 = call i32 @__VERIFIER_nondet_int(), !dbg !2240
  store i32 %32, i32* %disketteExtension, align 4, !dbg !2239
  call void @llvm.dbg.declare(metadata i32* %ntStatus, metadata !2241, metadata !111), !dbg !2242
  call void @llvm.dbg.declare(metadata i32* %outputBufferLength, metadata !2243, metadata !111), !dbg !2244
  call void @llvm.dbg.declare(metadata i32* %lowestDriveMediaType, metadata !2245, metadata !111), !dbg !2246
  %33 = call i32 @__VERIFIER_nondet_int(), !dbg !2247
  store i32 %33, i32* %lowestDriveMediaType, align 4, !dbg !2246
  call void @llvm.dbg.declare(metadata i32* %highestDriveMediaType, metadata !2248, metadata !111), !dbg !2249
  %34 = call i32 @__VERIFIER_nondet_int(), !dbg !2250
  store i32 %34, i32* %highestDriveMediaType, align 4, !dbg !2249
  call void @llvm.dbg.declare(metadata i32* %formatExParametersSize, metadata !2251, metadata !111), !dbg !2252
  %35 = call i32 @__VERIFIER_nondet_int(), !dbg !2253
  store i32 %35, i32* %formatExParametersSize, align 4, !dbg !2252
  call void @llvm.dbg.declare(metadata i32* %formatExParameters, metadata !2254, metadata !111), !dbg !2255
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !2256, metadata !111), !dbg !2257
  call void @llvm.dbg.declare(metadata i32* %mountName, metadata !2258, metadata !111), !dbg !2259
  call void @llvm.dbg.declare(metadata i32* %uniqueId, metadata !2260, metadata !111), !dbg !2261
  call void @llvm.dbg.declare(metadata i32* %tmp___0, metadata !2262, metadata !111), !dbg !2263
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp39, metadata !2264, metadata !111), !dbg !2265
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp40, metadata !2266, metadata !111), !dbg !2267
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp41, metadata !2268, metadata !111), !dbg !2269
  %36 = call i32 @__VERIFIER_nondet_int(), !dbg !2270
  store i32 %36, i32* %__cil_tmp41, align 4, !dbg !2269
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp42, metadata !2271, metadata !111), !dbg !2272
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp43, metadata !2273, metadata !111), !dbg !2274
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp44, metadata !2275, metadata !111), !dbg !2276
  %37 = call i32 @__VERIFIER_nondet_int(), !dbg !2277
  store i32 %37, i32* %__cil_tmp44, align 4, !dbg !2276
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp45, metadata !2278, metadata !111), !dbg !2279
  %38 = call i32 @__VERIFIER_nondet_int(), !dbg !2280
  store i32 %38, i32* %__cil_tmp45, align 4, !dbg !2279
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp46, metadata !2281, metadata !111), !dbg !2282
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp47, metadata !2283, metadata !111), !dbg !2284
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp48, metadata !2285, metadata !111), !dbg !2286
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp49, metadata !2287, metadata !111), !dbg !2288
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp50, metadata !2289, metadata !111), !dbg !2290
  %39 = call i32 @__VERIFIER_nondet_int(), !dbg !2291
  store i32 %39, i32* %__cil_tmp50, align 4, !dbg !2290
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp51, metadata !2292, metadata !111), !dbg !2293
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp52, metadata !2294, metadata !111), !dbg !2295
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp53, metadata !2296, metadata !111), !dbg !2297
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp54, metadata !2298, metadata !111), !dbg !2299
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp55, metadata !2300, metadata !111), !dbg !2301
  %40 = call i32 @__VERIFIER_nondet_int(), !dbg !2302
  store i32 %40, i32* %__cil_tmp55, align 4, !dbg !2301
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp56, metadata !2303, metadata !111), !dbg !2304
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp57, metadata !2305, metadata !111), !dbg !2306
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp58, metadata !2307, metadata !111), !dbg !2308
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp59, metadata !2309, metadata !111), !dbg !2310
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp60, metadata !2311, metadata !111), !dbg !2312
  %41 = call i32 @__VERIFIER_nondet_int(), !dbg !2313
  store i32 %41, i32* %__cil_tmp60, align 4, !dbg !2312
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp61, metadata !2314, metadata !111), !dbg !2315
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp62, metadata !2316, metadata !111), !dbg !2317
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp63, metadata !2318, metadata !111), !dbg !2319
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp64, metadata !2320, metadata !111), !dbg !2321
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp65, metadata !2322, metadata !111), !dbg !2323
  %42 = call i32 @__VERIFIER_nondet_int(), !dbg !2324
  store i32 %42, i32* %__cil_tmp65, align 4, !dbg !2323
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp66, metadata !2325, metadata !111), !dbg !2326
  %43 = call i32 @__VERIFIER_nondet_int(), !dbg !2327
  store i32 %43, i32* %__cil_tmp66, align 4, !dbg !2326
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp67, metadata !2328, metadata !111), !dbg !2329
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp68, metadata !2330, metadata !111), !dbg !2331
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp69, metadata !2332, metadata !111), !dbg !2333
  %44 = call i32 @__VERIFIER_nondet_int(), !dbg !2334
  store i32 %44, i32* %__cil_tmp69, align 4, !dbg !2333
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp70, metadata !2335, metadata !111), !dbg !2336
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp71, metadata !2337, metadata !111), !dbg !2338
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp72, metadata !2339, metadata !111), !dbg !2340
  %45 = call i32 @__VERIFIER_nondet_int(), !dbg !2341
  store i32 %45, i32* %__cil_tmp72, align 4, !dbg !2340
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp73, metadata !2342, metadata !111), !dbg !2343
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp74, metadata !2344, metadata !111), !dbg !2345
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp75, metadata !2346, metadata !111), !dbg !2347
  %46 = call i32 @__VERIFIER_nondet_int(), !dbg !2348
  store i32 %46, i32* %__cil_tmp75, align 4, !dbg !2347
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp76, metadata !2349, metadata !111), !dbg !2350
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp77, metadata !2351, metadata !111), !dbg !2352
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp78, metadata !2353, metadata !111), !dbg !2354
  %47 = call i32 @__VERIFIER_nondet_int(), !dbg !2355
  store i32 %47, i32* %__cil_tmp78, align 4, !dbg !2354
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp79, metadata !2356, metadata !111), !dbg !2357
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp80, metadata !2358, metadata !111), !dbg !2359
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp81, metadata !2360, metadata !111), !dbg !2361
  %48 = call i32 @__VERIFIER_nondet_int(), !dbg !2362
  store i32 %48, i32* %__cil_tmp81, align 4, !dbg !2361
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp82, metadata !2363, metadata !111), !dbg !2364
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp83, metadata !2365, metadata !111), !dbg !2366
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp84, metadata !2367, metadata !111), !dbg !2368
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp85, metadata !2369, metadata !111), !dbg !2370
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp86, metadata !2371, metadata !111), !dbg !2372
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp87, metadata !2373, metadata !111), !dbg !2374
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp88, metadata !2375, metadata !111), !dbg !2376
  %49 = call i32 @__VERIFIER_nondet_int(), !dbg !2377
  store i32 %49, i32* %__cil_tmp88, align 4, !dbg !2376
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp89, metadata !2378, metadata !111), !dbg !2379
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp90, metadata !2380, metadata !111), !dbg !2381
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp91, metadata !2382, metadata !111), !dbg !2383
  %50 = load i32, i32* %disketteExtension__HoldNewRequests, align 4, !dbg !2384
  %51 = icmp ne i32 %50, 0, !dbg !2384
  call void @llvm.dbg.declare(metadata i32* %6, metadata !385, metadata !111), !dbg !2387
  call void @llvm.dbg.declare(metadata i32* %7, metadata !391, metadata !111), !dbg !2392
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2393, metadata !111), !dbg !2394
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2435, metadata !111), !dbg !2436
  call void @llvm.dbg.declare(metadata i32* %DriveMediaConstants__driveMediaType__MediaType.i, metadata !2437, metadata !111), !dbg !2438
  call void @llvm.dbg.declare(metadata i32* %FormatParameters__MediaType.i, metadata !2439, metadata !111), !dbg !2440
  call void @llvm.dbg.declare(metadata i32* %FAKE_CONDITION.i, metadata !2441, metadata !111), !dbg !2442
  call void @llvm.dbg.declare(metadata i32* %1, metadata !385, metadata !111), !dbg !2443
  call void @llvm.dbg.declare(metadata i32* %2, metadata !391, metadata !111), !dbg !2449
  br i1 %51, label %52, label %62, !dbg !2450

; <label>:52                                      ; preds = %0
  %53 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2451
  %54 = load i32, i32* %__cil_tmp41, align 4, !dbg !2455
  %55 = icmp ne i32 %53, %54, !dbg !2456
  br i1 %55, label %56, label %61, !dbg !2457

; <label>:56                                      ; preds = %52
  %57 = load i32, i32* %disketteExtension, align 4, !dbg !2458
  %58 = load i32, i32* %10, align 4, !dbg !2461
  %59 = call i32 @FloppyQueueRequest(i32 %57, i32 %58), !dbg !2462
  store i32 %59, i32* %ntStatus, align 4, !dbg !2463
  %60 = load i32, i32* %ntStatus, align 4, !dbg !2464
  store i32 %60, i32* %8, !dbg !2465
  br label %344, !dbg !2465

; <label>:61                                      ; preds = %52
  br label %62, !dbg !2466

; <label>:62                                      ; preds = %61, %0
  %63 = load i32, i32* %disketteExtension__IsRemoved, align 4, !dbg !2467
  %64 = icmp ne i32 %63, 0, !dbg !2467
  br i1 %64, label %65, label %76, !dbg !2468

; <label>:65                                      ; preds = %62
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2469
  store i32 -1073741738, i32* %Irp__IoStatus__Status___0, align 4, !dbg !2470
  store i32 -1073741738, i32* @myStatus, align 4, !dbg !2471
  %66 = load i32, i32* %10, align 4, !dbg !2472
  %67 = bitcast i32* %6 to i8*, !dbg !2473
  call void @llvm.lifetime.start(i64 4, i8* %67), !dbg !2473
  %68 = bitcast i32* %7 to i8*, !dbg !2473
  call void @llvm.lifetime.start(i64 4, i8* %68), !dbg !2473
  store i32 %66, i32* %6, align 4, !dbg !2473
  store i32 0, i32* %7, align 4, !dbg !2473
  %69 = load i32, i32* @s, align 4, !dbg !2474
  %70 = load i32, i32* @NP, align 4, !dbg !2475
  %71 = icmp eq i32 %69, %70, !dbg !2476
  br i1 %71, label %IofCompleteRequest.exit, label %72, !dbg !2477

; <label>:72                                      ; preds = %65
  call void (...) @__VERIFIER_error() #5, !dbg !2478
  unreachable, !dbg !2478

IofCompleteRequest.exit:                          ; preds = %65
  %73 = load i32, i32* @DC, align 4, !dbg !2480
  store i32 %73, i32* @s, align 4, !dbg !2481
  %74 = bitcast i32* %6 to i8*, !dbg !2482
  call void @llvm.lifetime.end(i64 4, i8* %74), !dbg !2482
  %75 = bitcast i32* %7 to i8*, !dbg !2482
  call void @llvm.lifetime.end(i64 4, i8* %75), !dbg !2482
  store i32 -1073741738, i32* %8, !dbg !2483
  br label %344, !dbg !2483

; <label>:76                                      ; preds = %62
  %77 = load i32, i32* %disketteExtension__IsStarted, align 4, !dbg !2484
  %78 = icmp ne i32 %77, 0, !dbg !2484
  br i1 %78, label %95, label %79, !dbg !2486

; <label>:79                                      ; preds = %76
  %80 = load i32, i32* @s, align 4, !dbg !2487
  %81 = load i32, i32* @NP, align 4, !dbg !2490
  %82 = icmp eq i32 %80, %81, !dbg !2491
  br i1 %82, label %83, label %85, !dbg !2492

; <label>:83                                      ; preds = %79
  %84 = load i32, i32* @SKIP1, align 4, !dbg !2493
  store i32 %84, i32* @s, align 4, !dbg !2495
  br label %86, !dbg !2496

; <label>:85                                      ; preds = %79
  call void (...) @__VERIFIER_error() #5, !dbg !2497
  unreachable, !dbg !2497

errorFn.exit:                                     ; No predecessors!
  br label %86

; <label>:86                                      ; preds = %errorFn.exit, %83
  %87 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !2501
  %88 = add nsw i32 %87, 1, !dbg !2501
  store i32 %88, i32* %Irp__CurrentLocation, align 4, !dbg !2501
  %89 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !2503
  %90 = add nsw i32 %89, 1, !dbg !2503
  store i32 %90, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !2503
  %91 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !2504
  %92 = load i32, i32* %10, align 4, !dbg !2505
  %93 = call i32 @IofCallDriver(i32 %91, i32 %92), !dbg !2506
  store i32 %93, i32* %tmp, align 4, !dbg !2507
  %94 = load i32, i32* %tmp, align 4, !dbg !2508
  store i32 %94, i32* %8, !dbg !2509
  br label %344, !dbg !2509

; <label>:95                                      ; preds = %76
  %96 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2510
  %97 = load i32, i32* %__cil_tmp44, align 4, !dbg !2511
  %98 = icmp eq i32 %96, %97, !dbg !2512
  br i1 %98, label %99, label %100, !dbg !2513

; <label>:99                                      ; preds = %95
  br label %158, !dbg !2514

; <label>:100                                     ; preds = %95
  %101 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2516
  %102 = load i32, i32* %__cil_tmp45, align 4, !dbg !2517
  %103 = icmp eq i32 %101, %102, !dbg !2518
  br i1 %103, label %104, label %105, !dbg !2519

; <label>:104                                     ; preds = %100
  br label %178, !dbg !2520

; <label>:105                                     ; preds = %100
  %106 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2522
  %107 = load i32, i32* %__cil_tmp50, align 4, !dbg !2523
  %108 = icmp eq i32 %106, %107, !dbg !2524
  br i1 %108, label %109, label %110, !dbg !2525

; <label>:109                                     ; preds = %105
  br label %203, !dbg !2526

; <label>:110                                     ; preds = %105
  %111 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2528
  %112 = load i32, i32* %__cil_tmp55, align 4, !dbg !2529
  %113 = icmp eq i32 %111, %112, !dbg !2530
  br i1 %113, label %114, label %115, !dbg !2531

; <label>:114                                     ; preds = %110
  br label %204, !dbg !2532

; <label>:115                                     ; preds = %110
  %116 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2534
  %117 = load i32, i32* %__cil_tmp60, align 4, !dbg !2535
  %118 = icmp eq i32 %116, %117, !dbg !2536
  br i1 %118, label %119, label %120, !dbg !2537

; <label>:119                                     ; preds = %115
  br label %267, !dbg !2538

; <label>:120                                     ; preds = %115
  %121 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2540
  %122 = load i32, i32* %__cil_tmp65, align 4, !dbg !2541
  %123 = icmp eq i32 %121, %122, !dbg !2542
  br i1 %123, label %124, label %125, !dbg !2543

; <label>:124                                     ; preds = %120
  br label %268, !dbg !2544

; <label>:125                                     ; preds = %120
  %126 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2546
  %127 = load i32, i32* %__cil_tmp66, align 4, !dbg !2547
  %128 = icmp eq i32 %126, %127, !dbg !2548
  br i1 %128, label %129, label %130, !dbg !2549

; <label>:129                                     ; preds = %125
  br label %269, !dbg !2550

; <label>:130                                     ; preds = %125
  %131 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2552
  %132 = load i32, i32* %__cil_tmp69, align 4, !dbg !2553
  %133 = icmp eq i32 %131, %132, !dbg !2554
  br i1 %133, label %134, label %135, !dbg !2555

; <label>:134                                     ; preds = %130
  br label %270, !dbg !2556

; <label>:135                                     ; preds = %130
  %136 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2558
  %137 = load i32, i32* %__cil_tmp72, align 4, !dbg !2559
  %138 = icmp eq i32 %136, %137, !dbg !2560
  br i1 %138, label %139, label %140, !dbg !2561

; <label>:139                                     ; preds = %135
  br label %274, !dbg !2562

; <label>:140                                     ; preds = %135
  %141 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2564
  %142 = load i32, i32* %__cil_tmp75, align 4, !dbg !2565
  %143 = icmp eq i32 %141, %142, !dbg !2566
  br i1 %143, label %144, label %145, !dbg !2567

; <label>:144                                     ; preds = %140
  br label %275, !dbg !2568

; <label>:145                                     ; preds = %140
  %146 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2570
  %147 = load i32, i32* %__cil_tmp78, align 4, !dbg !2571
  %148 = icmp eq i32 %146, %147, !dbg !2572
  br i1 %148, label %149, label %150, !dbg !2573

; <label>:149                                     ; preds = %145
  br label %292, !dbg !2574

; <label>:150                                     ; preds = %145
  %151 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2576
  %152 = load i32, i32* %__cil_tmp81, align 4, !dbg !2577
  %153 = icmp eq i32 %151, %152, !dbg !2578
  br i1 %153, label %154, label %155, !dbg !2579

; <label>:154                                     ; preds = %150
  br label %293, !dbg !2580

; <label>:155                                     ; preds = %150
  br label %294, !dbg !2582
                                                  ; No predecessors!
  br i1 false, label %157, label %310, !dbg !2583

; <label>:157                                     ; preds = %156
  br label %158, !dbg !2584

; <label>:158                                     ; preds = %157, %99
  %159 = load i32, i32* %irpSp__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !2585
  %160 = load i32, i32* %sizeof__MOUNTDEV_NAME, align 4, !dbg !2587
  %161 = icmp slt i32 %159, %160, !dbg !2588
  br i1 %161, label %162, label %163, !dbg !2589

; <label>:162                                     ; preds = %158
  store i32 -1073741811, i32* %ntStatus, align 4, !dbg !2590
  br label %311, !dbg !2592

; <label>:163                                     ; preds = %158
  %164 = load i32, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !2593
  store i32 %164, i32* %mountName, align 4, !dbg !2594
  %165 = load i32, i32* %disketteExtension__DeviceName__Length, align 4, !dbg !2595
  store i32 %165, i32* %mountName__NameLength, align 4, !dbg !2596
  %166 = load i32, i32* %sizeof__USHORT, align 4, !dbg !2597
  %167 = load i32, i32* %mountName__NameLength, align 4, !dbg !2599
  %168 = add nsw i32 %166, %167, !dbg !2600
  store i32 %168, i32* %__cil_tmp82, align 4, !dbg !2601
  %169 = load i32, i32* %irpSp__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !2602
  %170 = load i32, i32* %__cil_tmp82, align 4, !dbg !2604
  %171 = icmp slt i32 %169, %170, !dbg !2605
  br i1 %171, label %172, label %174, !dbg !2606

; <label>:172                                     ; preds = %163
  store i32 -2147483643, i32* %ntStatus, align 4, !dbg !2607
  %173 = load i32, i32* %sizeof__MOUNTDEV_NAME, align 4, !dbg !2609
  store i32 %173, i32* %Irp__IoStatus__Information, align 4, !dbg !2610
  br label %311, !dbg !2611

; <label>:174                                     ; preds = %163
  store i32 0, i32* %ntStatus, align 4, !dbg !2612
  %175 = load i32, i32* %sizeof__USHORT, align 4, !dbg !2613
  %176 = load i32, i32* %mountName__NameLength, align 4, !dbg !2614
  %177 = add nsw i32 %175, %176, !dbg !2615
  store i32 %177, i32* %Irp__IoStatus__Information, align 4, !dbg !2616
  br label %311, !dbg !2617

; <label>:178                                     ; preds = %104
  %179 = load i32, i32* %disketteExtension__InterfaceString__Buffer, align 4, !dbg !2618
  %180 = icmp ne i32 %179, 0, !dbg !2618
  br i1 %180, label %182, label %181, !dbg !2620

; <label>:181                                     ; preds = %178
  store i32 -1073741811, i32* %ntStatus, align 4, !dbg !2621
  br label %311, !dbg !2623

; <label>:182                                     ; preds = %178
  %183 = load i32, i32* %irpSp__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !2624
  %184 = load i32, i32* %sizeof__MOUNTDEV_UNIQUE_ID, align 4, !dbg !2627
  %185 = icmp slt i32 %183, %184, !dbg !2628
  br i1 %185, label %186, label %187, !dbg !2629

; <label>:186                                     ; preds = %182
  store i32 -1073741811, i32* %ntStatus, align 4, !dbg !2630
  br label %311, !dbg !2632

; <label>:187                                     ; preds = %182
  br label %188

; <label>:188                                     ; preds = %187
  %189 = load i32, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !2633
  store i32 %189, i32* %uniqueId, align 4, !dbg !2634
  %190 = load i32, i32* %disketteExtension__InterfaceString__Length, align 4, !dbg !2635
  store i32 %190, i32* %uniqueId__UniqueIdLength, align 4, !dbg !2636
  %191 = load i32, i32* %sizeof__USHORT, align 4, !dbg !2637
  %192 = load i32, i32* %uniqueId__UniqueIdLength, align 4, !dbg !2639
  %193 = add nsw i32 %191, %192, !dbg !2640
  store i32 %193, i32* %__cil_tmp83, align 4, !dbg !2641
  %194 = load i32, i32* %irpSp__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !2642
  %195 = load i32, i32* %__cil_tmp83, align 4, !dbg !2644
  %196 = icmp slt i32 %194, %195, !dbg !2645
  br i1 %196, label %197, label %199, !dbg !2646

; <label>:197                                     ; preds = %188
  store i32 -2147483643, i32* %ntStatus, align 4, !dbg !2647
  %198 = load i32, i32* %sizeof__MOUNTDEV_UNIQUE_ID, align 4, !dbg !2649
  store i32 %198, i32* %Irp__IoStatus__Information, align 4, !dbg !2650
  br label %311, !dbg !2651

; <label>:199                                     ; preds = %188
  store i32 0, i32* %ntStatus, align 4, !dbg !2652
  %200 = load i32, i32* %sizeof__USHORT, align 4, !dbg !2653
  %201 = load i32, i32* %uniqueId__UniqueIdLength, align 4, !dbg !2654
  %202 = add nsw i32 %200, %201, !dbg !2655
  store i32 %202, i32* %Irp__IoStatus__Information, align 4, !dbg !2656
  br label %311, !dbg !2657

; <label>:203                                     ; preds = %109
  br label %204, !dbg !2657

; <label>:204                                     ; preds = %203, %114
  %205 = load i32, i32* %irpSp__Parameters__DeviceIoControl__InputBufferLength, align 4, !dbg !2658
  %206 = load i32, i32* %sizeof__FORMAT_PARAMETERS, align 4, !dbg !2660
  %207 = icmp slt i32 %205, %206, !dbg !2661
  br i1 %207, label %208, label %209, !dbg !2662

; <label>:208                                     ; preds = %204
  store i32 -1073741811, i32* %ntStatus, align 4, !dbg !2663
  br label %311, !dbg !2665

; <label>:209                                     ; preds = %204
  %210 = load i32, i32* %disketteExtension, align 4, !dbg !2666
  %211 = load i32, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !2667
  %212 = bitcast i32* %3 to i8*, !dbg !2668
  call void @llvm.lifetime.start(i64 4, i8* %212), !dbg !2668
  %213 = bitcast i32* %4 to i8*, !dbg !2668
  call void @llvm.lifetime.start(i64 4, i8* %213), !dbg !2668
  %214 = bitcast i32* %5 to i8*, !dbg !2668
  call void @llvm.lifetime.start(i64 4, i8* %214), !dbg !2668
  %215 = bitcast i32* %DriveMediaConstants__driveMediaType__MediaType.i to i8*, !dbg !2668
  call void @llvm.lifetime.start(i64 4, i8* %215), !dbg !2668
  %216 = bitcast i32* %FormatParameters__MediaType.i to i8*, !dbg !2668
  call void @llvm.lifetime.start(i64 4, i8* %216), !dbg !2668
  %217 = bitcast i32* %FAKE_CONDITION.i to i8*, !dbg !2668
  call void @llvm.lifetime.start(i64 4, i8* %217), !dbg !2668
  store i32 %210, i32* %4, align 4, !dbg !2668
  store i32 %211, i32* %5, align 4, !dbg !2668
  %218 = call i32 @__VERIFIER_nondet_int() #4, !dbg !2669
  store i32 %218, i32* %DriveMediaConstants__driveMediaType__MediaType.i, align 4, !dbg !2438
  %219 = call i32 @__VERIFIER_nondet_int() #4, !dbg !2670
  store i32 %219, i32* %FormatParameters__MediaType.i, align 4, !dbg !2440
  %220 = call i32 @__VERIFIER_nondet_int() #4, !dbg !2671
  store i32 %220, i32* %FAKE_CONDITION.i, align 4, !dbg !2442
  %221 = load i32, i32* %DriveMediaConstants__driveMediaType__MediaType.i, align 4, !dbg !2672
  %222 = load i32, i32* %FormatParameters__MediaType.i, align 4, !dbg !2675
  %223 = icmp ne i32 %221, %222, !dbg !2676
  br i1 %223, label %224, label %225, !dbg !2677

; <label>:224                                     ; preds = %209
  store i32 0, i32* %3, !dbg !2678
  br label %FlCheckFormatParameters.exit, !dbg !2678

; <label>:225                                     ; preds = %209
  %226 = load i32, i32* %FAKE_CONDITION.i, align 4, !dbg !2680
  %227 = icmp ne i32 %226, 0, !dbg !2680
  br i1 %227, label %228, label %229, !dbg !2683

; <label>:228                                     ; preds = %225
  store i32 0, i32* %3, !dbg !2684
  br label %FlCheckFormatParameters.exit, !dbg !2684

; <label>:229                                     ; preds = %225
  store i32 1, i32* %3, !dbg !2686
  br label %FlCheckFormatParameters.exit, !dbg !2686

FlCheckFormatParameters.exit:                     ; preds = %224, %228, %229
  %230 = load i32, i32* %3, !dbg !2688
  %231 = bitcast i32* %3 to i8*, !dbg !2688
  call void @llvm.lifetime.end(i64 4, i8* %231), !dbg !2688
  %232 = bitcast i32* %4 to i8*, !dbg !2688
  call void @llvm.lifetime.end(i64 4, i8* %232), !dbg !2688
  %233 = bitcast i32* %5 to i8*, !dbg !2688
  call void @llvm.lifetime.end(i64 4, i8* %233), !dbg !2688
  %234 = bitcast i32* %DriveMediaConstants__driveMediaType__MediaType.i to i8*, !dbg !2688
  call void @llvm.lifetime.end(i64 4, i8* %234), !dbg !2688
  %235 = bitcast i32* %FormatParameters__MediaType.i to i8*, !dbg !2688
  call void @llvm.lifetime.end(i64 4, i8* %235), !dbg !2688
  %236 = bitcast i32* %FAKE_CONDITION.i to i8*, !dbg !2688
  call void @llvm.lifetime.end(i64 4, i8* %236), !dbg !2688
  store i32 %230, i32* %tmp___0, align 4, !dbg !2689
  %237 = load i32, i32* %tmp___0, align 4, !dbg !2690
  %238 = icmp ne i32 %237, 0, !dbg !2690
  br i1 %238, label %240, label %239, !dbg !2692

; <label>:239                                     ; preds = %FlCheckFormatParameters.exit
  store i32 -1073741811, i32* %ntStatus, align 4, !dbg !2693
  br label %311, !dbg !2695

; <label>:240                                     ; preds = %FlCheckFormatParameters.exit
  %241 = load i32, i32* %irpSp__Parameters__DeviceIoControl__IoControlCode___1, align 4, !dbg !2696
  %242 = load i32, i32* %__cil_tmp88, align 4, !dbg !2699
  %243 = icmp eq i32 %241, %242, !dbg !2700
  br i1 %243, label %244, label %266, !dbg !2701

; <label>:244                                     ; preds = %240
  %245 = load i32, i32* %irpSp__Parameters__DeviceIoControl__InputBufferLength, align 4, !dbg !2702
  %246 = load i32, i32* %sizeof__FORMAT_EX_PARAMETERS, align 4, !dbg !2705
  %247 = icmp slt i32 %245, %246, !dbg !2706
  br i1 %247, label %248, label %249, !dbg !2707

; <label>:248                                     ; preds = %244
  store i32 -1073741811, i32* %ntStatus, align 4, !dbg !2708
  br label %311, !dbg !2710

; <label>:249                                     ; preds = %244
  %250 = load i32, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !2711
  store i32 %250, i32* %formatExParameters, align 4, !dbg !2712
  %251 = load i32, i32* %irpSp__Parameters__DeviceIoControl__InputBufferLength, align 4, !dbg !2713
  %252 = load i32, i32* %formatExParametersSize, align 4, !dbg !2715
  %253 = icmp slt i32 %251, %252, !dbg !2716
  br i1 %253, label %254, label %255, !dbg !2717

; <label>:254                                     ; preds = %249
  store i32 -1073741811, i32* %ntStatus, align 4, !dbg !2718
  br label %311, !dbg !2720

; <label>:255                                     ; preds = %249
  %256 = load i32, i32* %formatExParameters__FormatGapLength, align 4, !dbg !2721
  %257 = icmp sge i32 %256, 256, !dbg !2724
  br i1 %257, label %258, label %259, !dbg !2725

; <label>:258                                     ; preds = %255
  store i32 -1073741811, i32* %ntStatus, align 4, !dbg !2726
  br label %311, !dbg !2728

; <label>:259                                     ; preds = %255
  %260 = load i32, i32* %formatExParameters__SectorsPerTrack, align 4, !dbg !2729
  %261 = icmp sge i32 %260, 256, !dbg !2732
  br i1 %261, label %262, label %263, !dbg !2733

; <label>:262                                     ; preds = %259
  store i32 -1073741811, i32* %ntStatus, align 4, !dbg !2734
  br label %311, !dbg !2736

; <label>:263                                     ; preds = %259
  br label %264

; <label>:264                                     ; preds = %263
  br label %265

; <label>:265                                     ; preds = %264
  br label %266, !dbg !2737

; <label>:266                                     ; preds = %265, %240
  br label %267, !dbg !2738

; <label>:267                                     ; preds = %266, %119
  br label %268, !dbg !2738

; <label>:268                                     ; preds = %267, %124
  br label %269, !dbg !2738

; <label>:269                                     ; preds = %268, %129
  br label %270, !dbg !2738

; <label>:270                                     ; preds = %269, %134
  %271 = load i32, i32* %10, align 4, !dbg !2739
  %272 = load i32, i32* %disketteExtension, align 4, !dbg !2741
  %273 = call i32 @FlQueueIrpToThread(i32 %271, i32 %272), !dbg !2742
  store i32 %273, i32* %ntStatus, align 4, !dbg !2743
  br label %311, !dbg !2744

; <label>:274                                     ; preds = %139
  br label %275, !dbg !2744

; <label>:275                                     ; preds = %274, %144
  %276 = load i32, i32* %irpSp__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !2745
  store i32 %276, i32* %outputBufferLength, align 4, !dbg !2746
  %277 = load i32, i32* %outputBufferLength, align 4, !dbg !2747
  %278 = load i32, i32* %sizeof__DISK_GEOMETRY, align 4, !dbg !2749
  %279 = icmp slt i32 %277, %278, !dbg !2750
  br i1 %279, label %280, label %281, !dbg !2751

; <label>:280                                     ; preds = %275
  store i32 -1073741789, i32* %ntStatus, align 4, !dbg !2752
  br label %311, !dbg !2754

; <label>:281                                     ; preds = %275
  store i32 0, i32* %ntStatus, align 4, !dbg !2755
  %282 = load i32, i32* %highestDriveMediaType, align 4, !dbg !2756
  %283 = load i32, i32* %lowestDriveMediaType, align 4, !dbg !2758
  %284 = sub nsw i32 %282, %283, !dbg !2759
  store i32 %284, i32* %__cil_tmp89, align 4, !dbg !2760
  %285 = load i32, i32* %__cil_tmp89, align 4, !dbg !2761
  %286 = add nsw i32 %285, 1, !dbg !2762
  store i32 %286, i32* %__cil_tmp90, align 4, !dbg !2763
  %287 = load i32, i32* %outputBufferLength, align 4, !dbg !2764
  %288 = load i32, i32* %__cil_tmp90, align 4, !dbg !2766
  %289 = icmp slt i32 %287, %288, !dbg !2767
  br i1 %289, label %290, label %291, !dbg !2768

; <label>:290                                     ; preds = %281
  store i32 -2147483643, i32* %ntStatus, align 4, !dbg !2769
  br label %291, !dbg !2771

; <label>:291                                     ; preds = %290, %281
  br label %311, !dbg !2772

; <label>:292                                     ; preds = %149
  br label %293, !dbg !2772

; <label>:293                                     ; preds = %292, %154
  br label %294, !dbg !2772

; <label>:294                                     ; preds = %293, %155
  %295 = load i32, i32* @s, align 4, !dbg !2773
  %296 = load i32, i32* @NP, align 4, !dbg !2775
  %297 = icmp eq i32 %295, %296, !dbg !2776
  br i1 %297, label %298, label %300, !dbg !2777

; <label>:298                                     ; preds = %294
  %299 = load i32, i32* @SKIP1, align 4, !dbg !2778
  store i32 %299, i32* @s, align 4, !dbg !2780
  br label %301, !dbg !2781

; <label>:300                                     ; preds = %294
  call void (...) @__VERIFIER_error() #5, !dbg !2782
  unreachable, !dbg !2782

errorFn.exit1:                                    ; No predecessors!
  br label %301

; <label>:301                                     ; preds = %errorFn.exit1, %298
  %302 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !2786
  %303 = add nsw i32 %302, 1, !dbg !2786
  store i32 %303, i32* %Irp__CurrentLocation, align 4, !dbg !2786
  %304 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !2788
  %305 = add nsw i32 %304, 1, !dbg !2788
  store i32 %305, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !2788
  %306 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !2789
  %307 = load i32, i32* %10, align 4, !dbg !2790
  %308 = call i32 @IofCallDriver(i32 %306, i32 %307), !dbg !2791
  store i32 %308, i32* %ntStatus, align 4, !dbg !2792
  %309 = load i32, i32* %ntStatus, align 4, !dbg !2793
  store i32 %309, i32* %8, !dbg !2794
  br label %344, !dbg !2794

; <label>:310                                     ; preds = %156
  br label %311, !dbg !2795

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
  %325 = load i32, i32* %ntStatus, align 4, !dbg !2796
  %326 = sext i32 %325 to i64, !dbg !2797
  store i64 %326, i64* %__cil_tmp91, align 8, !dbg !2798
  %327 = load i64, i64* %__cil_tmp91, align 8, !dbg !2799
  %328 = icmp ne i64 %327, 259, !dbg !2800
  br i1 %328, label %329, label %342, !dbg !2801

; <label>:329                                     ; preds = %324
  %330 = load i32, i32* %ntStatus, align 4, !dbg !2802
  store i32 %330, i32* %Irp__IoStatus__Status___0, align 4, !dbg !2803
  %331 = load i32, i32* %ntStatus, align 4, !dbg !2804
  store i32 %331, i32* @myStatus, align 4, !dbg !2805
  %332 = load i32, i32* %10, align 4, !dbg !2806
  %333 = bitcast i32* %1 to i8*, !dbg !2807
  call void @llvm.lifetime.start(i64 4, i8* %333), !dbg !2807
  %334 = bitcast i32* %2 to i8*, !dbg !2807
  call void @llvm.lifetime.start(i64 4, i8* %334), !dbg !2807
  store i32 %332, i32* %1, align 4, !dbg !2807
  store i32 0, i32* %2, align 4, !dbg !2807
  %335 = load i32, i32* @s, align 4, !dbg !2808
  %336 = load i32, i32* @NP, align 4, !dbg !2809
  %337 = icmp eq i32 %335, %336, !dbg !2810
  br i1 %337, label %IofCompleteRequest.exit2, label %338, !dbg !2811

; <label>:338                                     ; preds = %329
  call void (...) @__VERIFIER_error() #5, !dbg !2812
  unreachable, !dbg !2812

IofCompleteRequest.exit2:                         ; preds = %329
  %339 = load i32, i32* @DC, align 4, !dbg !2814
  store i32 %339, i32* @s, align 4, !dbg !2815
  %340 = bitcast i32* %1 to i8*, !dbg !2816
  call void @llvm.lifetime.end(i64 4, i8* %340), !dbg !2816
  %341 = bitcast i32* %2 to i8*, !dbg !2816
  call void @llvm.lifetime.end(i64 4, i8* %341), !dbg !2816
  br label %342, !dbg !2817

; <label>:342                                     ; preds = %IofCompleteRequest.exit2, %324
  %343 = load i32, i32* %ntStatus, align 4, !dbg !2818
  store i32 %343, i32* %8, !dbg !2819
  br label %344, !dbg !2819

; <label>:344                                     ; preds = %342, %301, %86, %IofCompleteRequest.exit, %56
  %345 = load i32, i32* %8, !dbg !2820
  ret i32 %345, !dbg !2820
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
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2821, metadata !111), !dbg !2822
  store i32 %Irp, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2823, metadata !111), !dbg !2824
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !2825, metadata !111), !dbg !2826
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !2827, metadata !111), !dbg !2828
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation__Control, metadata !2829, metadata !111), !dbg !2830
  call void @llvm.dbg.declare(metadata i32* %ntStatus, metadata !2831, metadata !111), !dbg !2832
  call void @llvm.dbg.declare(metadata i32* %FAKE_CONDITION, metadata !2833, metadata !111), !dbg !2834
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !2835
  store i32 %5, i32* %FAKE_CONDITION, align 4, !dbg !2834
  %6 = load i32, i32* @PagingReferenceCount, align 4, !dbg !2836
  %7 = add nsw i32 %6, 1, !dbg !2836
  store i32 %7, i32* @PagingReferenceCount, align 4, !dbg !2836
  %8 = load i32, i32* @PagingReferenceCount, align 4, !dbg !2838
  %9 = icmp eq i32 %8, 1, !dbg !2840
  call void @llvm.dbg.declare(metadata i32* %1, metadata !385, metadata !111), !dbg !2841
  call void @llvm.dbg.declare(metadata i32* %2, metadata !391, metadata !111), !dbg !2846
  br i1 %9, label %10, label %11, !dbg !2847

; <label>:10                                      ; preds = %0
  br label %11, !dbg !2848

; <label>:11                                      ; preds = %10, %0
  %12 = load i32, i32* %FAKE_CONDITION, align 4, !dbg !2850
  %13 = icmp ne i32 %12, 0, !dbg !2850
  br i1 %13, label %14, label %31, !dbg !2851

; <label>:14                                      ; preds = %11
  store i32 -1073741536, i32* %Irp__IoStatus__Status, align 4, !dbg !2852
  store i32 -1073741536, i32* @myStatus, align 4, !dbg !2853
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2854
  %15 = load i32, i32* %4, align 4, !dbg !2855
  %16 = bitcast i32* %1 to i8*, !dbg !2856
  call void @llvm.lifetime.start(i64 4, i8* %16), !dbg !2856
  %17 = bitcast i32* %2 to i8*, !dbg !2856
  call void @llvm.lifetime.start(i64 4, i8* %17), !dbg !2856
  store i32 %15, i32* %1, align 4, !dbg !2856
  store i32 0, i32* %2, align 4, !dbg !2856
  %18 = load i32, i32* @s, align 4, !dbg !2857
  %19 = load i32, i32* @NP, align 4, !dbg !2858
  %20 = icmp eq i32 %18, %19, !dbg !2859
  br i1 %20, label %IofCompleteRequest.exit, label %21, !dbg !2860

; <label>:21                                      ; preds = %14
  call void (...) @__VERIFIER_error() #5, !dbg !2861
  unreachable, !dbg !2861

IofCompleteRequest.exit:                          ; preds = %14
  %22 = load i32, i32* @DC, align 4, !dbg !2863
  store i32 %22, i32* @s, align 4, !dbg !2864
  %23 = bitcast i32* %1 to i8*, !dbg !2865
  call void @llvm.lifetime.end(i64 4, i8* %23), !dbg !2865
  %24 = bitcast i32* %2 to i8*, !dbg !2865
  call void @llvm.lifetime.end(i64 4, i8* %24), !dbg !2865
  %25 = load i32, i32* @PagingReferenceCount, align 4, !dbg !2866
  %26 = add nsw i32 %25, -1, !dbg !2866
  store i32 %26, i32* @PagingReferenceCount, align 4, !dbg !2866
  %27 = load i32, i32* @PagingReferenceCount, align 4, !dbg !2867
  %28 = icmp eq i32 %27, 0, !dbg !2869
  br i1 %28, label %29, label %30, !dbg !2870

; <label>:29                                      ; preds = %IofCompleteRequest.exit
  br label %30, !dbg !2871

; <label>:30                                      ; preds = %29, %IofCompleteRequest.exit
  store i32 -1073741536, i32* %ntStatus, align 4, !dbg !2873
  br label %37, !dbg !2874

; <label>:31                                      ; preds = %11
  store i32 259, i32* %Irp__IoStatus__Status, align 4, !dbg !2875
  store i32 259, i32* @myStatus, align 4, !dbg !2877
  %32 = load i32, i32* @pended, align 4, !dbg !2878
  %33 = icmp eq i32 %32, 0, !dbg !2880
  br i1 %33, label %34, label %35, !dbg !2881

; <label>:34                                      ; preds = %31
  store i32 1, i32* @pended, align 4, !dbg !2882
  br label %36, !dbg !2884

; <label>:35                                      ; preds = %31
  call void (...) @__VERIFIER_error() #5, !dbg !2885
  unreachable, !dbg !2885

errorFn.exit:                                     ; No predecessors!
  br label %36

; <label>:36                                      ; preds = %errorFn.exit, %34
  store i32 259, i32* %ntStatus, align 4, !dbg !2889
  br label %37

; <label>:37                                      ; preds = %36, %30
  %38 = load i32, i32* %ntStatus, align 4, !dbg !2890
  ret i32 %38, !dbg !2891
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2393, metadata !111), !dbg !2892
  store i32 %FormatParameters, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2435, metadata !111), !dbg !2893
  call void @llvm.dbg.declare(metadata i32* %DriveMediaConstants__driveMediaType__MediaType, metadata !2437, metadata !111), !dbg !2894
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !2895
  store i32 %4, i32* %DriveMediaConstants__driveMediaType__MediaType, align 4, !dbg !2894
  call void @llvm.dbg.declare(metadata i32* %FormatParameters__MediaType, metadata !2439, metadata !111), !dbg !2896
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !2897
  store i32 %5, i32* %FormatParameters__MediaType, align 4, !dbg !2896
  call void @llvm.dbg.declare(metadata i32* %FAKE_CONDITION, metadata !2441, metadata !111), !dbg !2898
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !2899
  store i32 %6, i32* %FAKE_CONDITION, align 4, !dbg !2898
  %7 = load i32, i32* %DriveMediaConstants__driveMediaType__MediaType, align 4, !dbg !2900
  %8 = load i32, i32* %FormatParameters__MediaType, align 4, !dbg !2901
  %9 = icmp ne i32 %7, %8, !dbg !2902
  br i1 %9, label %10, label %11, !dbg !2903

; <label>:10                                      ; preds = %0
  store i32 0, i32* %1, !dbg !2904
  br label %16, !dbg !2904

; <label>:11                                      ; preds = %0
  %12 = load i32, i32* %FAKE_CONDITION, align 4, !dbg !2905
  %13 = icmp ne i32 %12, 0, !dbg !2905
  br i1 %13, label %14, label %15, !dbg !2906

; <label>:14                                      ; preds = %11
  store i32 0, i32* %1, !dbg !2907
  br label %16, !dbg !2907

; <label>:15                                      ; preds = %11
  store i32 1, i32* %1, !dbg !2908
  br label %16, !dbg !2908

; <label>:16                                      ; preds = %15, %14, %10
  %17 = load i32, i32* %1, !dbg !2909
  ret i32 %17, !dbg !2909
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
!llvm.module.flags = !{!89, !90, !91}
!llvm.ident = !{!92}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !62)
!1 = !DIFile(filename: "svcomp16/ntdrivers-simplified/floppy_simpl4_true-unreach-call_true-termination.cil.c", directory: ".")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!6 = !{!7, !10, !14, !15, !16, !17, !20, !21, !24, !25, !28, !31, !34, !37, !40, !41, !42, !43, !46, !47, !50, !53, !56, !57, !58, !59, !60, !61}
!7 = !DISubprogram(name: "_BLAST_init", scope: !1, file: !1, line: 35, type: !8, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @_BLAST_init, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !DISubprogram(name: "FlAcpiConfigureFloppy", scope: !1, file: !1, line: 58, type: !11, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @FlAcpiConfigureFloppy, variables: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13, !13}
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !DISubprogram(name: "FlQueueIrpToThread", scope: !1, file: !1, line: 65, type: !11, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @FlQueueIrpToThread, variables: !2)
!15 = !DISubprogram(name: "FloppyPnp", scope: !1, file: !1, line: 128, type: !11, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @FloppyPnp, variables: !2)
!16 = !DISubprogram(name: "FloppyStartDevice", scope: !1, file: !1, line: 402, type: !11, isLocal: false, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @FloppyStartDevice, variables: !2)
!17 = !DISubprogram(name: "FloppyPnpComplete", scope: !1, file: !1, line: 570, type: !18, isLocal: false, isDefinition: true, scopeLine: 571, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @FloppyPnpComplete, variables: !2)
!18 = !DISubroutineType(types: !19)
!19 = !{!13, !13, !13, !13}
!20 = !DISubprogram(name: "FlFdcDeviceIo", scope: !1, file: !1, line: 580, type: !18, isLocal: false, isDefinition: true, scopeLine: 581, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @FlFdcDeviceIo, variables: !2)
!21 = !DISubprogram(name: "FloppyProcessQueuedRequests", scope: !1, file: !1, line: 615, type: !22, isLocal: false, isDefinition: true, scopeLine: 616, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @FloppyProcessQueuedRequests, variables: !2)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !13}
!24 = !DISubprogram(name: "stub_driver_init", scope: !1, file: !1, line: 622, type: !8, isLocal: false, isDefinition: true, scopeLine: 623, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stub_driver_init, variables: !2)
!25 = !DISubprogram(name: "main", scope: !1, file: !1, line: 635, type: !26, isLocal: false, isDefinition: true, scopeLine: 636, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !2)
!26 = !DISubroutineType(types: !27)
!27 = !{!13}
!28 = !DISubprogram(name: "IoBuildDeviceIoControlRequest", scope: !1, file: !1, line: 808, type: !29, isLocal: false, isDefinition: true, scopeLine: 811, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)* @IoBuildDeviceIoControlRequest, variables: !2)
!29 = !DISubroutineType(types: !30)
!30 = !{!13, !13, !13, !13, !13, !13, !13, !13, !13, !13}
!31 = !DISubprogram(name: "IoDeleteSymbolicLink", scope: !1, file: !1, line: 833, type: !32, isLocal: false, isDefinition: true, scopeLine: 834, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32)* @IoDeleteSymbolicLink, variables: !2)
!32 = !DISubroutineType(types: !33)
!33 = !{!13, !13}
!34 = !DISubprogram(name: "IoQueryDeviceDescription", scope: !1, file: !1, line: 854, type: !35, isLocal: false, isDefinition: true, scopeLine: 857, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32, i32, i32, i32)* @IoQueryDeviceDescription, variables: !2)
!35 = !DISubroutineType(types: !36)
!36 = !{!13, !13, !13, !13, !13, !13, !13, !13, !13}
!37 = !DISubprogram(name: "IoRegisterDeviceInterface", scope: !1, file: !1, line: 877, type: !38, isLocal: false, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32)* @IoRegisterDeviceInterface, variables: !2)
!38 = !DISubroutineType(types: !39)
!39 = !{!13, !13, !13, !13, !13}
!40 = !DISubprogram(name: "IoSetDeviceInterfaceState", scope: !1, file: !1, line: 899, type: !11, isLocal: false, isDefinition: true, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @IoSetDeviceInterfaceState, variables: !2)
!41 = !DISubprogram(name: "stubMoreProcessingRequired", scope: !1, file: !1, line: 920, type: !8, isLocal: false, isDefinition: true, scopeLine: 921, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stubMoreProcessingRequired, variables: !2)
!42 = !DISubprogram(name: "IofCallDriver", scope: !1, file: !1, line: 934, type: !11, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @IofCallDriver, variables: !2)
!43 = !DISubprogram(name: "IofCompleteRequest", scope: !1, file: !1, line: 1007, type: !44, isLocal: false, isDefinition: true, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: false, function: void (i32, i32)* @IofCompleteRequest, variables: !2)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !13, !13}
!46 = !DISubprogram(name: "KeSetEvent", scope: !1, file: !1, line: 1021, type: !18, isLocal: false, isDefinition: true, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @KeSetEvent, variables: !2)
!47 = !DISubprogram(name: "KeWaitForSingleObject", scope: !1, file: !1, line: 1029, type: !48, isLocal: false, isDefinition: true, scopeLine: 1031, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32)* @KeWaitForSingleObject, variables: !2)
!48 = !DISubroutineType(types: !49)
!49 = !{!13, !13, !13, !13, !13, !13}
!50 = !DISubprogram(name: "ObReferenceObjectByHandle", scope: !1, file: !1, line: 1071, type: !51, isLocal: false, isDefinition: true, scopeLine: 1073, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32, i32)* @ObReferenceObjectByHandle, variables: !2)
!51 = !DISubroutineType(types: !52)
!52 = !{!13, !13, !13, !13, !13, !13, !13}
!53 = !DISubprogram(name: "PsCreateSystemThread", scope: !1, file: !1, line: 1093, type: !54, isLocal: false, isDefinition: true, scopeLine: 1095, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32, i32, i32)* @PsCreateSystemThread, variables: !2)
!54 = !DISubroutineType(types: !55)
!55 = !{!13, !13, !13, !13, !13, !13, !13, !13}
!56 = !DISubprogram(name: "ZwClose", scope: !1, file: !1, line: 1115, type: !32, isLocal: false, isDefinition: true, scopeLine: 1116, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32)* @ZwClose, variables: !2)
!57 = !DISubprogram(name: "FloppyCreateClose", scope: !1, file: !1, line: 1136, type: !11, isLocal: false, isDefinition: true, scopeLine: 1137, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @FloppyCreateClose, variables: !2)
!58 = !DISubprogram(name: "FloppyDeviceControl", scope: !1, file: !1, line: 1151, type: !11, isLocal: false, isDefinition: true, scopeLine: 1152, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @FloppyDeviceControl, variables: !2)
!59 = !DISubprogram(name: "FlCheckFormatParameters", scope: !1, file: !1, line: 1533, type: !11, isLocal: false, isDefinition: true, scopeLine: 1534, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @FlCheckFormatParameters, variables: !2)
!60 = !DISubprogram(name: "FloppyQueueRequest", scope: !1, file: !1, line: 1550, type: !11, isLocal: false, isDefinition: true, scopeLine: 1551, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @FloppyQueueRequest, variables: !2)
!61 = !DISubprogram(name: "errorFn", scope: !1, file: !1, line: 1591, type: !8, isLocal: false, isDefinition: true, scopeLine: 1592, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @errorFn, variables: !2)
!62 = !{!63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!63 = !DIGlobalVariable(name: "PagingReferenceCount", scope: !0, file: !1, line: 56, type: !13, isLocal: false, isDefinition: true, variable: i32* @PagingReferenceCount)
!64 = !DIGlobalVariable(name: "PagingMutex", scope: !0, file: !1, line: 57, type: !13, isLocal: false, isDefinition: true, variable: i32* @PagingMutex)
!65 = !DIGlobalVariable(name: "FloppyThread", scope: !0, file: !1, line: 10, type: !13, isLocal: false, isDefinition: true, variable: i32* @FloppyThread)
!66 = !DIGlobalVariable(name: "KernelMode", scope: !0, file: !1, line: 11, type: !13, isLocal: false, isDefinition: true, variable: i32* @KernelMode)
!67 = !DIGlobalVariable(name: "Suspended", scope: !0, file: !1, line: 12, type: !13, isLocal: false, isDefinition: true, variable: i32* @Suspended)
!68 = !DIGlobalVariable(name: "Executive", scope: !0, file: !1, line: 13, type: !13, isLocal: false, isDefinition: true, variable: i32* @Executive)
!69 = !DIGlobalVariable(name: "DiskController", scope: !0, file: !1, line: 14, type: !13, isLocal: false, isDefinition: true, variable: i32* @DiskController)
!70 = !DIGlobalVariable(name: "FloppyDiskPeripheral", scope: !0, file: !1, line: 15, type: !13, isLocal: false, isDefinition: true, variable: i32* @FloppyDiskPeripheral)
!71 = !DIGlobalVariable(name: "FlConfigCallBack", scope: !0, file: !1, line: 16, type: !13, isLocal: false, isDefinition: true, variable: i32* @FlConfigCallBack)
!72 = !DIGlobalVariable(name: "MaximumInterfaceType", scope: !0, file: !1, line: 17, type: !13, isLocal: false, isDefinition: true, variable: i32* @MaximumInterfaceType)
!73 = !DIGlobalVariable(name: "MOUNTDEV_MOUNTED_DEVICE_GUID", scope: !0, file: !1, line: 18, type: !13, isLocal: false, isDefinition: true, variable: i32* @MOUNTDEV_MOUNTED_DEVICE_GUID)
!74 = !DIGlobalVariable(name: "myStatus", scope: !0, file: !1, line: 19, type: !13, isLocal: false, isDefinition: true, variable: i32* @myStatus)
!75 = !DIGlobalVariable(name: "s", scope: !0, file: !1, line: 20, type: !13, isLocal: false, isDefinition: true, variable: i32* @s)
!76 = !DIGlobalVariable(name: "UNLOADED", scope: !0, file: !1, line: 21, type: !13, isLocal: false, isDefinition: true, variable: i32* @UNLOADED)
!77 = !DIGlobalVariable(name: "NP", scope: !0, file: !1, line: 22, type: !13, isLocal: false, isDefinition: true, variable: i32* @NP)
!78 = !DIGlobalVariable(name: "DC", scope: !0, file: !1, line: 23, type: !13, isLocal: false, isDefinition: true, variable: i32* @DC)
!79 = !DIGlobalVariable(name: "SKIP1", scope: !0, file: !1, line: 24, type: !13, isLocal: false, isDefinition: true, variable: i32* @SKIP1)
!80 = !DIGlobalVariable(name: "SKIP2", scope: !0, file: !1, line: 25, type: !13, isLocal: false, isDefinition: true, variable: i32* @SKIP2)
!81 = !DIGlobalVariable(name: "MPR1", scope: !0, file: !1, line: 26, type: !13, isLocal: false, isDefinition: true, variable: i32* @MPR1)
!82 = !DIGlobalVariable(name: "MPR3", scope: !0, file: !1, line: 27, type: !13, isLocal: false, isDefinition: true, variable: i32* @MPR3)
!83 = !DIGlobalVariable(name: "IPC", scope: !0, file: !1, line: 28, type: !13, isLocal: false, isDefinition: true, variable: i32* @IPC)
!84 = !DIGlobalVariable(name: "pended", scope: !0, file: !1, line: 29, type: !13, isLocal: false, isDefinition: true, variable: i32* @pended)
!85 = !DIGlobalVariable(name: "compRegistered", scope: !0, file: !1, line: 30, type: !13, isLocal: false, isDefinition: true, variable: i32* @compRegistered)
!86 = !DIGlobalVariable(name: "lowerDriverReturn", scope: !0, file: !1, line: 31, type: !13, isLocal: false, isDefinition: true, variable: i32* @lowerDriverReturn)
!87 = !DIGlobalVariable(name: "setEventCalled", scope: !0, file: !1, line: 32, type: !13, isLocal: false, isDefinition: true, variable: i32* @setEventCalled)
!88 = !DIGlobalVariable(name: "customIrp", scope: !0, file: !1, line: 33, type: !13, isLocal: false, isDefinition: true, variable: i32* @customIrp)
!89 = !{i32 2, !"Dwarf Version", i32 2}
!90 = !{i32 2, !"Debug Info Version", i32 3}
!91 = !{i32 1, !"PIC Level", i32 2}
!92 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!93 = !DILocation(line: 39, column: 12, scope: !94)
!94 = distinct !DILexicalBlock(scope: !7, file: !1, line: 38, column: 3)
!95 = !DILocation(line: 40, column: 6, scope: !94)
!96 = !DILocation(line: 41, column: 6, scope: !94)
!97 = !DILocation(line: 42, column: 9, scope: !94)
!98 = !DILocation(line: 43, column: 9, scope: !94)
!99 = !DILocation(line: 44, column: 8, scope: !94)
!100 = !DILocation(line: 45, column: 8, scope: !94)
!101 = !DILocation(line: 46, column: 7, scope: !94)
!102 = !DILocation(line: 47, column: 7, scope: !94)
!103 = !DILocation(line: 47, column: 5, scope: !94)
!104 = !DILocation(line: 48, column: 10, scope: !94)
!105 = !DILocation(line: 49, column: 18, scope: !94)
!106 = !DILocation(line: 50, column: 21, scope: !94)
!107 = !DILocation(line: 51, column: 18, scope: !94)
!108 = !DILocation(line: 52, column: 13, scope: !94)
!109 = !DILocation(line: 53, column: 3, scope: !94)
!110 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DisketteExtension", arg: 1, scope: !10, file: !1, line: 58, type: !13)
!111 = !DIExpression()
!112 = !DILocation(line: 58, column: 31, scope: !10)
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "FdcInfo", arg: 2, scope: !10, file: !1, line: 58, type: !13)
!114 = !DILocation(line: 58, column: 55, scope: !10)
!115 = !DILocation(line: 62, column: 3, scope: !116)
!116 = distinct !DILexicalBlock(scope: !10, file: !1, line: 61, column: 3)
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 1, scope: !14, file: !1, line: 65, type: !13)
!118 = !DILocation(line: 65, column: 28, scope: !14)
!119 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DisketteExtension", arg: 2, scope: !14, file: !1, line: 65, type: !13)
!120 = !DILocation(line: 65, column: 38, scope: !14)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !14, file: !1, line: 66, type: !13)
!122 = !DILocation(line: 66, column: 7, scope: !14)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "threadHandle", scope: !14, file: !1, line: 67, type: !13)
!124 = !DILocation(line: 67, column: 7, scope: !14)
!125 = !DILocation(line: 67, column: 22, scope: !14)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DisketteExtension__PoweringDown", scope: !14, file: !1, line: 68, type: !13)
!127 = !DILocation(line: 68, column: 7, scope: !14)
!128 = !DILocation(line: 68, column: 41, scope: !14)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DisketteExtension__ThreadReferenceCount", scope: !14, file: !1, line: 69, type: !13)
!130 = !DILocation(line: 69, column: 7, scope: !14)
!131 = !DILocation(line: 69, column: 49, scope: !14)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DisketteExtension__FloppyThread", scope: !14, file: !1, line: 70, type: !13)
!133 = !DILocation(line: 70, column: 7, scope: !14)
!134 = !DILocation(line: 70, column: 41, scope: !14)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !14, file: !1, line: 71, type: !13)
!136 = !DILocation(line: 71, column: 7, scope: !14)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !14, file: !1, line: 72, type: !13)
!138 = !DILocation(line: 72, column: 7, scope: !14)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation__Control", scope: !14, file: !1, line: 73, type: !13)
!140 = !DILocation(line: 73, column: 7, scope: !14)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ObjAttributes", scope: !14, file: !1, line: 74, type: !13)
!142 = !DILocation(line: 74, column: 7, scope: !14)
!143 = !DILocation(line: 74, column: 23, scope: !14)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp12", scope: !14, file: !1, line: 75, type: !13)
!145 = !DILocation(line: 75, column: 7, scope: !14)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp13", scope: !14, file: !1, line: 76, type: !13)
!147 = !DILocation(line: 76, column: 7, scope: !14)
!148 = !DILocation(line: 79, column: 7, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !1, line: 79, column: 7)
!150 = distinct !DILexicalBlock(scope: !14, file: !1, line: 78, column: 3)
!151 = !DILocation(line: 79, column: 39, scope: !149)
!152 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ThreadHandle", arg: 1, scope: !53, file: !1, line: 1093, type: !13)
!153 = !DILocation(line: 1093, column: 30, scope: !53, inlinedAt: !154)
!154 = distinct !DILocation(line: 93, column: 14, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !1, line: 92, column: 5)
!156 = distinct !DILexicalBlock(scope: !157, file: !1, line: 86, column: 53)
!157 = distinct !DILexicalBlock(scope: !150, file: !1, line: 86, column: 7)
!158 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DesiredAccess", arg: 2, scope: !53, file: !1, line: 1093, type: !13)
!159 = !DILocation(line: 1093, column: 49, scope: !53, inlinedAt: !154)
!160 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ObjectAttributes", arg: 3, scope: !53, file: !1, line: 1093, type: !13)
!161 = !DILocation(line: 1093, column: 69, scope: !53, inlinedAt: !154)
!162 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ProcessHandle", arg: 4, scope: !53, file: !1, line: 1094, type: !13)
!163 = !DILocation(line: 1094, column: 30, scope: !53, inlinedAt: !154)
!164 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ClientId", arg: 5, scope: !53, file: !1, line: 1094, type: !13)
!165 = !DILocation(line: 1094, column: 50, scope: !53, inlinedAt: !154)
!166 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "StartRoutine", arg: 6, scope: !53, file: !1, line: 1094, type: !13)
!167 = !DILocation(line: 1094, column: 65, scope: !53, inlinedAt: !154)
!168 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "StartContext", arg: 7, scope: !53, file: !1, line: 1094, type: !13)
!169 = !DILocation(line: 1094, column: 84, scope: !53, inlinedAt: !154)
!170 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_14", scope: !171, file: !1, line: 1098, type: !13)
!171 = distinct !DILexicalBlock(scope: !53, file: !1, line: 1097, column: 3)
!172 = !DILocation(line: 1098, column: 7, scope: !171, inlinedAt: !154)
!173 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Handle", arg: 1, scope: !50, file: !1, line: 1071, type: !13)
!174 = !DILocation(line: 1071, column: 35, scope: !50, inlinedAt: !175)
!175 = distinct !DILocation(line: 107, column: 14, scope: !176)
!176 = distinct !DILexicalBlock(scope: !156, file: !1, line: 106, column: 5)
!177 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DesiredAccess", arg: 2, scope: !50, file: !1, line: 1071, type: !13)
!178 = !DILocation(line: 1071, column: 48, scope: !50, inlinedAt: !175)
!179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ObjectType", arg: 3, scope: !50, file: !1, line: 1071, type: !13)
!180 = !DILocation(line: 1071, column: 68, scope: !50, inlinedAt: !175)
!181 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "AccessMode", arg: 4, scope: !50, file: !1, line: 1071, type: !13)
!182 = !DILocation(line: 1071, column: 85, scope: !50, inlinedAt: !175)
!183 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Object", arg: 5, scope: !50, file: !1, line: 1072, type: !13)
!184 = !DILocation(line: 1072, column: 35, scope: !50, inlinedAt: !175)
!185 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "HandleInformation", arg: 6, scope: !50, file: !1, line: 1072, type: !13)
!186 = !DILocation(line: 1072, column: 48, scope: !50, inlinedAt: !175)
!187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_13", scope: !188, file: !1, line: 1076, type: !13)
!188 = distinct !DILexicalBlock(scope: !50, file: !1, line: 1075, column: 3)
!189 = !DILocation(line: 1076, column: 7, scope: !188, inlinedAt: !175)
!190 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Handle", arg: 1, scope: !56, file: !1, line: 1115, type: !13)
!191 = !DILocation(line: 1115, column: 17, scope: !56, inlinedAt: !192)
!192 = distinct !DILocation(line: 109, column: 5, scope: !176)
!193 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_15", scope: !194, file: !1, line: 1119, type: !13)
!194 = distinct !DILexicalBlock(scope: !56, file: !1, line: 1118, column: 3)
!195 = !DILocation(line: 1119, column: 7, scope: !194, inlinedAt: !192)
!196 = !DILocation(line: 79, column: 7, scope: !150)
!197 = !DILocation(line: 80, column: 14, scope: !198)
!198 = distinct !DILexicalBlock(scope: !149, file: !1, line: 79, column: 45)
!199 = !DILocation(line: 81, column: 27, scope: !198)
!200 = !DILocation(line: 82, column: 32, scope: !198)
!201 = !DILocation(line: 83, column: 5, scope: !198)
!202 = !DILocation(line: 85, column: 43, scope: !150)
!203 = !DILocation(line: 86, column: 7, scope: !157)
!204 = !DILocation(line: 86, column: 47, scope: !157)
!205 = !DILocation(line: 86, column: 7, scope: !150)
!206 = !DILocation(line: 87, column: 45, scope: !156)
!207 = !DILocation(line: 88, column: 26, scope: !156)
!208 = !DILocation(line: 89, column: 9, scope: !209)
!209 = distinct !DILexicalBlock(scope: !156, file: !1, line: 89, column: 9)
!210 = !DILocation(line: 89, column: 30, scope: !209)
!211 = !DILocation(line: 89, column: 9, scope: !156)
!212 = !DILocation(line: 91, column: 5, scope: !213)
!213 = distinct !DILexicalBlock(scope: !209, file: !1, line: 89, column: 36)
!214 = !DILocation(line: 93, column: 35, scope: !155)
!215 = !DILocation(line: 93, column: 52, scope: !155)
!216 = !DILocation(line: 93, column: 73, scope: !155)
!217 = !DILocation(line: 94, column: 35, scope: !155)
!218 = !DILocation(line: 93, column: 14, scope: !155)
!219 = !DILocation(line: 1099, column: 16, scope: !171, inlinedAt: !154)
!220 = !DILocation(line: 1099, column: 14, scope: !171, inlinedAt: !154)
!221 = !DILocation(line: 1100, column: 7, scope: !222, inlinedAt: !154)
!222 = distinct !DILexicalBlock(scope: !171, file: !1, line: 1100, column: 7)
!223 = !DILocation(line: 1100, column: 18, scope: !222, inlinedAt: !154)
!224 = !DILocation(line: 1100, column: 7, scope: !171, inlinedAt: !154)
!225 = !DILocation(line: 1106, column: 7, scope: !226, inlinedAt: !154)
!226 = distinct !DILexicalBlock(scope: !227, file: !1, line: 1104, column: 12)
!227 = distinct !DILexicalBlock(scope: !228, file: !1, line: 1104, column: 9)
!228 = distinct !DILexicalBlock(scope: !222, file: !1, line: 1102, column: 10)
!229 = !DILocation(line: 1108, column: 7, scope: !226, inlinedAt: !154)
!230 = !DILocation(line: 1114, column: 1, scope: !53, inlinedAt: !154)
!231 = !DILocation(line: 93, column: 12, scope: !155)
!232 = !DILocation(line: 97, column: 9, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !1, line: 97, column: 9)
!234 = distinct !DILexicalBlock(scope: !156, file: !1, line: 96, column: 5)
!235 = !DILocation(line: 97, column: 16, scope: !233)
!236 = !DILocation(line: 97, column: 9, scope: !234)
!237 = !DILocation(line: 98, column: 47, scope: !238)
!238 = distinct !DILexicalBlock(scope: !233, file: !1, line: 97, column: 21)
!239 = !DILocation(line: 99, column: 28, scope: !238)
!240 = !DILocation(line: 100, column: 11, scope: !241)
!241 = distinct !DILexicalBlock(scope: !238, file: !1, line: 100, column: 11)
!242 = !DILocation(line: 100, column: 32, scope: !241)
!243 = !DILocation(line: 100, column: 11, scope: !238)
!244 = !DILocation(line: 102, column: 7, scope: !245)
!245 = distinct !DILexicalBlock(scope: !241, file: !1, line: 100, column: 38)
!246 = !DILocation(line: 103, column: 15, scope: !238)
!247 = !DILocation(line: 103, column: 7, scope: !238)
!248 = !DILocation(line: 107, column: 40, scope: !176)
!249 = !DILocation(line: 107, column: 66, scope: !176)
!250 = !DILocation(line: 107, column: 78, scope: !176)
!251 = !DILocation(line: 107, column: 14, scope: !176)
!252 = !DILocation(line: 1077, column: 16, scope: !188, inlinedAt: !175)
!253 = !DILocation(line: 1077, column: 14, scope: !188, inlinedAt: !175)
!254 = !DILocation(line: 1078, column: 7, scope: !255, inlinedAt: !175)
!255 = distinct !DILexicalBlock(scope: !188, file: !1, line: 1078, column: 7)
!256 = !DILocation(line: 1078, column: 18, scope: !255, inlinedAt: !175)
!257 = !DILocation(line: 1078, column: 7, scope: !188, inlinedAt: !175)
!258 = !DILocation(line: 1084, column: 7, scope: !259, inlinedAt: !175)
!259 = distinct !DILexicalBlock(scope: !260, file: !1, line: 1082, column: 12)
!260 = distinct !DILexicalBlock(scope: !261, file: !1, line: 1082, column: 9)
!261 = distinct !DILexicalBlock(scope: !255, file: !1, line: 1080, column: 10)
!262 = !DILocation(line: 1086, column: 7, scope: !259, inlinedAt: !175)
!263 = !DILocation(line: 1092, column: 1, scope: !50, inlinedAt: !175)
!264 = !DILocation(line: 107, column: 12, scope: !176)
!265 = !DILocation(line: 109, column: 13, scope: !176)
!266 = !DILocation(line: 109, column: 5, scope: !176)
!267 = !DILocation(line: 1120, column: 16, scope: !194, inlinedAt: !192)
!268 = !DILocation(line: 1120, column: 14, scope: !194, inlinedAt: !192)
!269 = !DILocation(line: 1121, column: 7, scope: !270, inlinedAt: !192)
!270 = distinct !DILexicalBlock(scope: !194, file: !1, line: 1121, column: 7)
!271 = !DILocation(line: 1121, column: 18, scope: !270, inlinedAt: !192)
!272 = !DILocation(line: 1121, column: 7, scope: !194, inlinedAt: !192)
!273 = !DILocation(line: 1127, column: 7, scope: !274, inlinedAt: !192)
!274 = distinct !DILexicalBlock(scope: !275, file: !1, line: 1125, column: 12)
!275 = distinct !DILexicalBlock(scope: !276, file: !1, line: 1125, column: 9)
!276 = distinct !DILexicalBlock(scope: !270, file: !1, line: 1123, column: 10)
!277 = !DILocation(line: 1129, column: 7, scope: !274, inlinedAt: !192)
!278 = !DILocation(line: 1135, column: 1, scope: !56, inlinedAt: !192)
!279 = !DILocation(line: 112, column: 9, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !1, line: 112, column: 9)
!281 = distinct !DILexicalBlock(scope: !156, file: !1, line: 111, column: 5)
!282 = !DILocation(line: 112, column: 16, scope: !280)
!283 = !DILocation(line: 112, column: 9, scope: !281)
!284 = !DILocation(line: 113, column: 15, scope: !285)
!285 = distinct !DILexicalBlock(scope: !280, file: !1, line: 112, column: 21)
!286 = !DILocation(line: 113, column: 7, scope: !285)
!287 = !DILocation(line: 116, column: 3, scope: !156)
!288 = !DILocation(line: 118, column: 7, scope: !289)
!289 = distinct !DILexicalBlock(scope: !150, file: !1, line: 118, column: 7)
!290 = !DILocation(line: 118, column: 14, scope: !289)
!291 = !DILocation(line: 118, column: 7, scope: !150)
!292 = !DILocation(line: 119, column: 12, scope: !293)
!293 = distinct !DILexicalBlock(scope: !289, file: !1, line: 118, column: 20)
!294 = !DILocation(line: 120, column: 3, scope: !293)
!295 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !297)
!296 = distinct !DILexicalBlock(scope: !61, file: !1, line: 1594, column: 3)
!297 = distinct !DILocation(line: 122, column: 5, scope: !298)
!298 = distinct !DILexicalBlock(scope: !299, file: !1, line: 121, column: 5)
!299 = distinct !DILexicalBlock(scope: !289, file: !1, line: 120, column: 10)
!300 = !DILocation(line: 125, column: 3, scope: !150)
!301 = !DILocation(line: 127, column: 1, scope: !14)
!302 = !DILocation(line: 1594, column: 3, scope: !61)
!303 = !DILocation(line: 1595, column: 10, scope: !296)
!304 = !DILocation(line: 1598, column: 1, scope: !61)
!305 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !15, file: !1, line: 128, type: !13)
!306 = !DILocation(line: 128, column: 19, scope: !15)
!307 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !15, file: !1, line: 128, type: !13)
!308 = !DILocation(line: 128, column: 38, scope: !15)
!309 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !15, file: !1, line: 129, type: !13)
!310 = !DILocation(line: 129, column: 7, scope: !15)
!311 = !DILocation(line: 129, column: 39, scope: !15)
!312 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !15, file: !1, line: 130, type: !13)
!313 = !DILocation(line: 130, column: 7, scope: !15)
!314 = !DILocation(line: 130, column: 50, scope: !15)
!315 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !15, file: !1, line: 131, type: !13)
!316 = !DILocation(line: 131, column: 7, scope: !15)
!317 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !15, file: !1, line: 132, type: !13)
!318 = !DILocation(line: 132, column: 7, scope: !15)
!319 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !15, file: !1, line: 133, type: !13)
!320 = !DILocation(line: 133, column: 7, scope: !15)
!321 = !DILocation(line: 133, column: 30, scope: !15)
!322 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__IsRemoved", scope: !15, file: !1, line: 134, type: !13)
!323 = !DILocation(line: 134, column: 7, scope: !15)
!324 = !DILocation(line: 134, column: 38, scope: !15)
!325 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__IsStarted", scope: !15, file: !1, line: 135, type: !13)
!326 = !DILocation(line: 135, column: 7, scope: !15)
!327 = !DILocation(line: 135, column: 38, scope: !15)
!328 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__TargetObject", scope: !15, file: !1, line: 136, type: !13)
!329 = !DILocation(line: 136, column: 7, scope: !15)
!330 = !DILocation(line: 136, column: 41, scope: !15)
!331 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__HoldNewRequests", scope: !15, file: !1, line: 137, type: !13)
!332 = !DILocation(line: 137, column: 7, scope: !15)
!333 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__FloppyThread", scope: !15, file: !1, line: 138, type: !13)
!334 = !DILocation(line: 138, column: 7, scope: !15)
!335 = !DILocation(line: 138, column: 41, scope: !15)
!336 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__InterfaceString__Buffer", scope: !15, file: !1, line: 139, type: !13)
!337 = !DILocation(line: 139, column: 7, scope: !15)
!338 = !DILocation(line: 139, column: 52, scope: !15)
!339 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__InterfaceString", scope: !15, file: !1, line: 140, type: !13)
!340 = !DILocation(line: 140, column: 7, scope: !15)
!341 = !DILocation(line: 140, column: 44, scope: !15)
!342 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__ArcName__Length", scope: !15, file: !1, line: 141, type: !13)
!343 = !DILocation(line: 141, column: 7, scope: !15)
!344 = !DILocation(line: 141, column: 44, scope: !15)
!345 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__ArcName", scope: !15, file: !1, line: 142, type: !13)
!346 = !DILocation(line: 142, column: 7, scope: !15)
!347 = !DILocation(line: 142, column: 36, scope: !15)
!348 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__MinorFunction", scope: !15, file: !1, line: 143, type: !13)
!349 = !DILocation(line: 143, column: 7, scope: !15)
!350 = !DILocation(line: 143, column: 30, scope: !15)
!351 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "IoGetConfigurationInformation__FloppyCount", scope: !15, file: !1, line: 144, type: !13)
!352 = !DILocation(line: 144, column: 7, scope: !15)
!353 = !DILocation(line: 144, column: 52, scope: !15)
!354 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp", scope: !15, file: !1, line: 145, type: !13)
!355 = !DILocation(line: 145, column: 7, scope: !15)
!356 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension", scope: !15, file: !1, line: 146, type: !13)
!357 = !DILocation(line: 146, column: 7, scope: !15)
!358 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ntStatus", scope: !15, file: !1, line: 147, type: !13)
!359 = !DILocation(line: 147, column: 7, scope: !15)
!360 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doneEvent", scope: !15, file: !1, line: 148, type: !13)
!361 = !DILocation(line: 148, column: 7, scope: !15)
!362 = !DILocation(line: 148, column: 19, scope: !15)
!363 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___0", scope: !15, file: !1, line: 149, type: !13)
!364 = !DILocation(line: 149, column: 7, scope: !15)
!365 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp", scope: !15, file: !1, line: 150, type: !13)
!366 = !DILocation(line: 150, column: 7, scope: !15)
!367 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp__Control", scope: !15, file: !1, line: 151, type: !13)
!368 = !DILocation(line: 151, column: 7, scope: !15)
!369 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___1", scope: !15, file: !1, line: 152, type: !13)
!370 = !DILocation(line: 152, column: 7, scope: !15)
!371 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Context", scope: !15, file: !1, line: 153, type: !13)
!372 = !DILocation(line: 153, column: 7, scope: !15)
!373 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Control", scope: !15, file: !1, line: 154, type: !13)
!374 = !DILocation(line: 154, column: 7, scope: !15)
!375 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp29", scope: !15, file: !1, line: 155, type: !4)
!376 = !DILocation(line: 155, column: 8, scope: !15)
!377 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp30", scope: !15, file: !1, line: 156, type: !4)
!378 = !DILocation(line: 156, column: 8, scope: !15)
!379 = !DILocation(line: 159, column: 12, scope: !380)
!380 = distinct !DILexicalBlock(scope: !15, file: !1, line: 158, column: 3)
!381 = !DILocation(line: 160, column: 24, scope: !380)
!382 = !DILocation(line: 161, column: 7, scope: !383)
!383 = distinct !DILexicalBlock(scope: !380, file: !1, line: 161, column: 7)
!384 = !DILocation(line: 161, column: 28, scope: !383)
!385 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 1, scope: !43, file: !1, line: 1007, type: !13)
!386 = !DILocation(line: 1007, column: 29, scope: !43, inlinedAt: !387)
!387 = distinct !DILocation(line: 171, column: 5, scope: !388)
!388 = distinct !DILexicalBlock(scope: !389, file: !1, line: 167, column: 5)
!389 = distinct !DILexicalBlock(scope: !390, file: !1, line: 166, column: 37)
!390 = distinct !DILexicalBlock(scope: !380, file: !1, line: 166, column: 7)
!391 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PriorityBoost", arg: 2, scope: !43, file: !1, line: 1007, type: !13)
!392 = !DILocation(line: 1007, column: 39, scope: !43, inlinedAt: !387)
!393 = !DILocation(line: 1007, column: 29, scope: !43, inlinedAt: !394)
!394 = distinct !DILocation(line: 257, column: 21, scope: !395)
!395 = distinct !DILexicalBlock(scope: !396, file: !1, line: 252, column: 21)
!396 = distinct !DILexicalBlock(scope: !397, file: !1, line: 251, column: 26)
!397 = distinct !DILexicalBlock(scope: !398, file: !1, line: 228, column: 23)
!398 = distinct !DILexicalBlock(scope: !399, file: !1, line: 226, column: 19)
!399 = distinct !DILexicalBlock(scope: !400, file: !1, line: 197, column: 24)
!400 = distinct !DILexicalBlock(scope: !401, file: !1, line: 197, column: 21)
!401 = distinct !DILexicalBlock(scope: !402, file: !1, line: 195, column: 22)
!402 = distinct !DILexicalBlock(scope: !403, file: !1, line: 193, column: 19)
!403 = distinct !DILexicalBlock(scope: !404, file: !1, line: 192, column: 20)
!404 = distinct !DILexicalBlock(scope: !405, file: !1, line: 190, column: 17)
!405 = distinct !DILexicalBlock(scope: !406, file: !1, line: 189, column: 18)
!406 = distinct !DILexicalBlock(scope: !407, file: !1, line: 187, column: 15)
!407 = distinct !DILexicalBlock(scope: !408, file: !1, line: 186, column: 16)
!408 = distinct !DILexicalBlock(scope: !409, file: !1, line: 184, column: 13)
!409 = distinct !DILexicalBlock(scope: !410, file: !1, line: 183, column: 14)
!410 = distinct !DILexicalBlock(scope: !411, file: !1, line: 181, column: 11)
!411 = distinct !DILexicalBlock(scope: !412, file: !1, line: 180, column: 12)
!412 = distinct !DILexicalBlock(scope: !413, file: !1, line: 178, column: 9)
!413 = distinct !DILexicalBlock(scope: !414, file: !1, line: 177, column: 10)
!414 = distinct !DILexicalBlock(scope: !380, file: !1, line: 175, column: 7)
!415 = !DILocation(line: 1007, column: 39, scope: !43, inlinedAt: !394)
!416 = !DILocation(line: 1007, column: 29, scope: !43, inlinedAt: !417)
!417 = distinct !DILocation(line: 320, column: 21, scope: !418)
!418 = distinct !DILexicalBlock(scope: !419, file: !1, line: 315, column: 21)
!419 = distinct !DILexicalBlock(scope: !420, file: !1, line: 281, column: 26)
!420 = distinct !DILexicalBlock(scope: !399, file: !1, line: 266, column: 23)
!421 = !DILocation(line: 1007, column: 39, scope: !43, inlinedAt: !417)
!422 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SymbolicLinkName", arg: 1, scope: !40, file: !1, line: 899, type: !13)
!423 = !DILocation(line: 899, column: 35, scope: !40, inlinedAt: !424)
!424 = distinct !DILocation(line: 361, column: 21, scope: !425)
!425 = distinct !DILexicalBlock(scope: !426, file: !1, line: 360, column: 21)
!426 = distinct !DILexicalBlock(scope: !427, file: !1, line: 359, column: 72)
!427 = distinct !DILexicalBlock(scope: !399, file: !1, line: 359, column: 23)
!428 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Enable", arg: 2, scope: !40, file: !1, line: 899, type: !13)
!429 = !DILocation(line: 899, column: 58, scope: !40, inlinedAt: !424)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_9", scope: !431, file: !1, line: 903, type: !13)
!431 = distinct !DILexicalBlock(scope: !40, file: !1, line: 902, column: 3)
!432 = !DILocation(line: 903, column: 7, scope: !431, inlinedAt: !424)
!433 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SymbolicLinkName", arg: 1, scope: !31, file: !1, line: 833, type: !13)
!434 = !DILocation(line: 833, column: 30, scope: !31, inlinedAt: !435)
!435 = distinct !DILocation(line: 367, column: 21, scope: !436)
!436 = distinct !DILexicalBlock(scope: !437, file: !1, line: 366, column: 21)
!437 = distinct !DILexicalBlock(scope: !438, file: !1, line: 365, column: 64)
!438 = distinct !DILexicalBlock(scope: !399, file: !1, line: 365, column: 23)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_6", scope: !440, file: !1, line: 837, type: !13)
!440 = distinct !DILexicalBlock(scope: !31, file: !1, line: 836, column: 3)
!441 = !DILocation(line: 837, column: 7, scope: !440, inlinedAt: !435)
!442 = !DILocation(line: 161, column: 7, scope: !380)
!443 = !DILocation(line: 163, column: 3, scope: !444)
!444 = distinct !DILexicalBlock(scope: !383, file: !1, line: 161, column: 34)
!445 = !DILocation(line: 164, column: 23, scope: !380)
!446 = !DILocation(line: 164, column: 21, scope: !380)
!447 = !DILocation(line: 165, column: 11, scope: !380)
!448 = !DILocation(line: 165, column: 9, scope: !380)
!449 = !DILocation(line: 166, column: 7, scope: !390)
!450 = !DILocation(line: 166, column: 7, scope: !380)
!451 = !DILocation(line: 168, column: 32, scope: !388)
!452 = !DILocation(line: 169, column: 27, scope: !388)
!453 = !DILocation(line: 170, column: 14, scope: !388)
!454 = !DILocation(line: 171, column: 24, scope: !388)
!455 = !DILocation(line: 171, column: 5, scope: !388)
!456 = !DILocation(line: 1011, column: 7, scope: !457, inlinedAt: !387)
!457 = distinct !DILexicalBlock(scope: !458, file: !1, line: 1011, column: 7)
!458 = distinct !DILexicalBlock(scope: !43, file: !1, line: 1010, column: 3)
!459 = !DILocation(line: 1011, column: 12, scope: !457, inlinedAt: !387)
!460 = !DILocation(line: 1011, column: 9, scope: !457, inlinedAt: !387)
!461 = !DILocation(line: 1011, column: 7, scope: !458, inlinedAt: !387)
!462 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !463)
!463 = distinct !DILocation(line: 1015, column: 5, scope: !464, inlinedAt: !387)
!464 = distinct !DILexicalBlock(scope: !465, file: !1, line: 1014, column: 5)
!465 = distinct !DILexicalBlock(scope: !457, file: !1, line: 1013, column: 10)
!466 = !DILocation(line: 1012, column: 9, scope: !467, inlinedAt: !387)
!467 = distinct !DILexicalBlock(scope: !457, file: !1, line: 1011, column: 16)
!468 = !DILocation(line: 1012, column: 7, scope: !467, inlinedAt: !387)
!469 = !DILocation(line: 1018, column: 3, scope: !458, inlinedAt: !387)
!470 = !DILocation(line: 173, column: 5, scope: !389)
!471 = !DILocation(line: 175, column: 7, scope: !414)
!472 = !DILocation(line: 175, column: 28, scope: !414)
!473 = !DILocation(line: 175, column: 7, scope: !380)
!474 = !DILocation(line: 176, column: 5, scope: !475)
!475 = distinct !DILexicalBlock(scope: !414, file: !1, line: 175, column: 34)
!476 = !DILocation(line: 178, column: 9, scope: !412)
!477 = !DILocation(line: 178, column: 30, scope: !412)
!478 = !DILocation(line: 178, column: 9, scope: !413)
!479 = !DILocation(line: 179, column: 7, scope: !480)
!480 = distinct !DILexicalBlock(scope: !412, file: !1, line: 178, column: 36)
!481 = !DILocation(line: 181, column: 11, scope: !410)
!482 = !DILocation(line: 181, column: 32, scope: !410)
!483 = !DILocation(line: 181, column: 11, scope: !411)
!484 = !DILocation(line: 182, column: 9, scope: !485)
!485 = distinct !DILexicalBlock(scope: !410, file: !1, line: 181, column: 38)
!486 = !DILocation(line: 184, column: 13, scope: !408)
!487 = !DILocation(line: 184, column: 34, scope: !408)
!488 = !DILocation(line: 184, column: 13, scope: !409)
!489 = !DILocation(line: 185, column: 11, scope: !490)
!490 = distinct !DILexicalBlock(scope: !408, file: !1, line: 184, column: 40)
!491 = !DILocation(line: 187, column: 15, scope: !406)
!492 = !DILocation(line: 187, column: 36, scope: !406)
!493 = !DILocation(line: 187, column: 15, scope: !407)
!494 = !DILocation(line: 188, column: 13, scope: !495)
!495 = distinct !DILexicalBlock(scope: !406, file: !1, line: 187, column: 42)
!496 = !DILocation(line: 190, column: 17, scope: !404)
!497 = !DILocation(line: 190, column: 38, scope: !404)
!498 = !DILocation(line: 190, column: 17, scope: !405)
!499 = !DILocation(line: 191, column: 15, scope: !500)
!500 = distinct !DILexicalBlock(scope: !404, file: !1, line: 190, column: 44)
!501 = !DILocation(line: 193, column: 19, scope: !402)
!502 = !DILocation(line: 193, column: 40, scope: !402)
!503 = !DILocation(line: 193, column: 19, scope: !403)
!504 = !DILocation(line: 194, column: 17, scope: !505)
!505 = distinct !DILexicalBlock(scope: !402, file: !1, line: 193, column: 46)
!506 = !DILocation(line: 196, column: 17, scope: !401)
!507 = !DILocation(line: 197, column: 21, scope: !401)
!508 = !DILocation(line: 197, column: 24, scope: !400)
!509 = !DILocation(line: 200, column: 48, scope: !510)
!510 = distinct !DILexicalBlock(scope: !399, file: !1, line: 199, column: 19)
!511 = !DILocation(line: 200, column: 62, scope: !510)
!512 = !DILocation(line: 200, column: 30, scope: !510)
!513 = !DILocation(line: 200, column: 28, scope: !510)
!514 = !DILocation(line: 202, column: 19, scope: !399)
!515 = !DILocation(line: 204, column: 23, scope: !516)
!516 = distinct !DILexicalBlock(scope: !399, file: !1, line: 204, column: 23)
!517 = !DILocation(line: 204, column: 44, scope: !516)
!518 = !DILocation(line: 204, column: 23, scope: !399)
!519 = !DILocation(line: 206, column: 19, scope: !520)
!520 = distinct !DILexicalBlock(scope: !516, file: !1, line: 204, column: 50)
!521 = !DILocation(line: 207, column: 25, scope: !522)
!522 = distinct !DILexicalBlock(scope: !399, file: !1, line: 207, column: 23)
!523 = !DILocation(line: 207, column: 23, scope: !399)
!524 = !DILocation(line: 208, column: 25, scope: !525)
!525 = distinct !DILexicalBlock(scope: !526, file: !1, line: 208, column: 25)
!526 = distinct !DILexicalBlock(scope: !522, file: !1, line: 207, column: 55)
!527 = !DILocation(line: 208, column: 30, scope: !525)
!528 = !DILocation(line: 208, column: 27, scope: !525)
!529 = !DILocation(line: 208, column: 25, scope: !526)
!530 = !DILocation(line: 209, column: 27, scope: !531)
!531 = distinct !DILexicalBlock(scope: !525, file: !1, line: 208, column: 34)
!532 = !DILocation(line: 209, column: 25, scope: !531)
!533 = !DILocation(line: 210, column: 21, scope: !531)
!534 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !535)
!535 = distinct !DILocation(line: 212, column: 23, scope: !536)
!536 = distinct !DILexicalBlock(scope: !537, file: !1, line: 211, column: 23)
!537 = distinct !DILexicalBlock(scope: !525, file: !1, line: 210, column: 28)
!538 = !DILocation(line: 216, column: 42, scope: !539)
!539 = distinct !DILexicalBlock(scope: !526, file: !1, line: 215, column: 21)
!540 = !DILocation(line: 217, column: 62, scope: !539)
!541 = !DILocation(line: 218, column: 46, scope: !539)
!542 = !DILocation(line: 218, column: 79, scope: !539)
!543 = !DILocation(line: 218, column: 32, scope: !539)
!544 = !DILocation(line: 218, column: 30, scope: !539)
!545 = !DILocation(line: 220, column: 29, scope: !526)
!546 = !DILocation(line: 220, column: 21, scope: !526)
!547 = !DILocation(line: 223, column: 54, scope: !548)
!548 = distinct !DILexicalBlock(scope: !399, file: !1, line: 222, column: 19)
!549 = !DILocation(line: 224, column: 49, scope: !548)
!550 = !DILocation(line: 224, column: 54, scope: !548)
!551 = !DILocation(line: 224, column: 30, scope: !548)
!552 = !DILocation(line: 224, column: 28, scope: !548)
!553 = !DILocation(line: 227, column: 40, scope: !398)
!554 = !DILocation(line: 227, column: 33, scope: !398)
!555 = !DILocation(line: 227, column: 31, scope: !398)
!556 = !DILocation(line: 228, column: 23, scope: !397)
!557 = !DILocation(line: 228, column: 35, scope: !397)
!558 = !DILocation(line: 228, column: 23, scope: !398)
!559 = !DILocation(line: 230, column: 43, scope: !560)
!560 = distinct !DILexicalBlock(scope: !561, file: !1, line: 229, column: 21)
!561 = distinct !DILexicalBlock(scope: !397, file: !1, line: 228, column: 44)
!562 = !DILocation(line: 230, column: 76, scope: !560)
!563 = !DILocation(line: 231, column: 43, scope: !560)
!564 = !DILocation(line: 230, column: 21, scope: !560)
!565 = !DILocation(line: 233, column: 25, scope: !566)
!566 = distinct !DILexicalBlock(scope: !561, file: !1, line: 233, column: 25)
!567 = !DILocation(line: 233, column: 57, scope: !566)
!568 = !DILocation(line: 233, column: 25, scope: !561)
!569 = !DILocation(line: 235, column: 21, scope: !570)
!570 = distinct !DILexicalBlock(scope: !566, file: !1, line: 233, column: 63)
!571 = !DILocation(line: 236, column: 53, scope: !561)
!572 = !DILocation(line: 237, column: 43, scope: !561)
!573 = !DILocation(line: 238, column: 30, scope: !561)
!574 = !DILocation(line: 239, column: 25, scope: !575)
!575 = distinct !DILexicalBlock(scope: !561, file: !1, line: 239, column: 25)
!576 = !DILocation(line: 239, column: 30, scope: !575)
!577 = !DILocation(line: 239, column: 27, scope: !575)
!578 = !DILocation(line: 239, column: 25, scope: !561)
!579 = !DILocation(line: 240, column: 27, scope: !580)
!580 = distinct !DILexicalBlock(scope: !575, file: !1, line: 239, column: 34)
!581 = !DILocation(line: 240, column: 25, scope: !580)
!582 = !DILocation(line: 241, column: 21, scope: !580)
!583 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !584)
!584 = distinct !DILocation(line: 243, column: 23, scope: !585)
!585 = distinct !DILexicalBlock(scope: !586, file: !1, line: 242, column: 23)
!586 = distinct !DILexicalBlock(scope: !575, file: !1, line: 241, column: 28)
!587 = !DILocation(line: 247, column: 42, scope: !588)
!588 = distinct !DILexicalBlock(scope: !561, file: !1, line: 246, column: 21)
!589 = !DILocation(line: 248, column: 62, scope: !588)
!590 = !DILocation(line: 249, column: 46, scope: !588)
!591 = !DILocation(line: 249, column: 79, scope: !588)
!592 = !DILocation(line: 249, column: 32, scope: !588)
!593 = !DILocation(line: 249, column: 30, scope: !588)
!594 = !DILocation(line: 251, column: 19, scope: !561)
!595 = !DILocation(line: 253, column: 30, scope: !395)
!596 = !DILocation(line: 254, column: 45, scope: !395)
!597 = !DILocation(line: 254, column: 43, scope: !395)
!598 = !DILocation(line: 255, column: 32, scope: !395)
!599 = !DILocation(line: 255, column: 30, scope: !395)
!600 = !DILocation(line: 256, column: 48, scope: !395)
!601 = !DILocation(line: 257, column: 40, scope: !395)
!602 = !DILocation(line: 257, column: 21, scope: !395)
!603 = !DILocation(line: 1011, column: 7, scope: !457, inlinedAt: !394)
!604 = !DILocation(line: 1011, column: 12, scope: !457, inlinedAt: !394)
!605 = !DILocation(line: 1011, column: 9, scope: !457, inlinedAt: !394)
!606 = !DILocation(line: 1011, column: 7, scope: !458, inlinedAt: !394)
!607 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !608)
!608 = distinct !DILocation(line: 1015, column: 5, scope: !464, inlinedAt: !394)
!609 = !DILocation(line: 1012, column: 9, scope: !467, inlinedAt: !394)
!610 = !DILocation(line: 1012, column: 7, scope: !467, inlinedAt: !394)
!611 = !DILocation(line: 1018, column: 3, scope: !458, inlinedAt: !394)
!612 = !DILocation(line: 261, column: 19, scope: !399)
!613 = !DILocation(line: 263, column: 23, scope: !614)
!614 = distinct !DILexicalBlock(scope: !399, file: !1, line: 263, column: 23)
!615 = !DILocation(line: 263, column: 44, scope: !614)
!616 = !DILocation(line: 263, column: 23, scope: !399)
!617 = !DILocation(line: 265, column: 19, scope: !618)
!618 = distinct !DILexicalBlock(scope: !614, file: !1, line: 263, column: 50)
!619 = !DILocation(line: 266, column: 25, scope: !420)
!620 = !DILocation(line: 266, column: 23, scope: !399)
!621 = !DILocation(line: 267, column: 43, scope: !622)
!622 = distinct !DILexicalBlock(scope: !420, file: !1, line: 266, column: 55)
!623 = !DILocation(line: 268, column: 30, scope: !622)
!624 = !DILocation(line: 269, column: 25, scope: !625)
!625 = distinct !DILexicalBlock(scope: !622, file: !1, line: 269, column: 25)
!626 = !DILocation(line: 269, column: 30, scope: !625)
!627 = !DILocation(line: 269, column: 27, scope: !625)
!628 = !DILocation(line: 269, column: 25, scope: !622)
!629 = !DILocation(line: 270, column: 27, scope: !630)
!630 = distinct !DILexicalBlock(scope: !625, file: !1, line: 269, column: 34)
!631 = !DILocation(line: 270, column: 25, scope: !630)
!632 = !DILocation(line: 271, column: 21, scope: !630)
!633 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !634)
!634 = distinct !DILocation(line: 273, column: 23, scope: !635)
!635 = distinct !DILexicalBlock(scope: !636, file: !1, line: 272, column: 23)
!636 = distinct !DILexicalBlock(scope: !625, file: !1, line: 271, column: 28)
!637 = !DILocation(line: 277, column: 42, scope: !638)
!638 = distinct !DILexicalBlock(scope: !622, file: !1, line: 276, column: 21)
!639 = !DILocation(line: 278, column: 62, scope: !638)
!640 = !DILocation(line: 279, column: 46, scope: !638)
!641 = !DILocation(line: 279, column: 79, scope: !638)
!642 = !DILocation(line: 279, column: 32, scope: !638)
!643 = !DILocation(line: 279, column: 30, scope: !638)
!644 = !DILocation(line: 281, column: 19, scope: !622)
!645 = !DILocation(line: 282, column: 43, scope: !419)
!646 = !DILocation(line: 283, column: 30, scope: !419)
!647 = !DILocation(line: 284, column: 33, scope: !419)
!648 = !DILocation(line: 284, column: 31, scope: !419)
!649 = !DILocation(line: 285, column: 33, scope: !419)
!650 = !DILocation(line: 285, column: 74, scope: !419)
!651 = !DILocation(line: 285, column: 31, scope: !419)
!652 = !DILocation(line: 286, column: 40, scope: !419)
!653 = !DILocation(line: 287, column: 25, scope: !654)
!654 = distinct !DILexicalBlock(scope: !419, file: !1, line: 287, column: 25)
!655 = !DILocation(line: 287, column: 30, scope: !654)
!656 = !DILocation(line: 287, column: 27, scope: !654)
!657 = !DILocation(line: 287, column: 25, scope: !419)
!658 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !659)
!659 = distinct !DILocation(line: 289, column: 23, scope: !660)
!660 = distinct !DILexicalBlock(scope: !661, file: !1, line: 288, column: 23)
!661 = distinct !DILexicalBlock(scope: !654, file: !1, line: 287, column: 34)
!662 = !DILocation(line: 291, column: 21, scope: !661)
!663 = !DILocation(line: 292, column: 27, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !1, line: 292, column: 27)
!665 = distinct !DILexicalBlock(scope: !654, file: !1, line: 291, column: 28)
!666 = !DILocation(line: 292, column: 42, scope: !664)
!667 = !DILocation(line: 292, column: 27, scope: !665)
!668 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !669)
!669 = distinct !DILocation(line: 294, column: 25, scope: !670)
!670 = distinct !DILexicalBlock(scope: !671, file: !1, line: 293, column: 25)
!671 = distinct !DILexicalBlock(scope: !664, file: !1, line: 292, column: 48)
!672 = !DILocation(line: 296, column: 23, scope: !671)
!673 = !DILocation(line: 297, column: 40, scope: !674)
!674 = distinct !DILexicalBlock(scope: !664, file: !1, line: 296, column: 30)
!675 = !DILocation(line: 301, column: 33, scope: !676)
!676 = distinct !DILexicalBlock(scope: !419, file: !1, line: 300, column: 21)
!677 = !DILocation(line: 301, column: 74, scope: !676)
!678 = !DILocation(line: 301, column: 31, scope: !676)
!679 = !DILocation(line: 302, column: 38, scope: !676)
!680 = !DILocation(line: 302, column: 36, scope: !676)
!681 = !DILocation(line: 303, column: 36, scope: !676)
!682 = !DILocation(line: 304, column: 46, scope: !676)
!683 = !DILocation(line: 304, column: 79, scope: !676)
!684 = !DILocation(line: 304, column: 32, scope: !676)
!685 = !DILocation(line: 304, column: 30, scope: !676)
!686 = !DILocation(line: 307, column: 42, scope: !687)
!687 = distinct !DILexicalBlock(scope: !419, file: !1, line: 306, column: 21)
!688 = !DILocation(line: 307, column: 35, scope: !687)
!689 = !DILocation(line: 307, column: 33, scope: !687)
!690 = !DILocation(line: 308, column: 25, scope: !691)
!691 = distinct !DILexicalBlock(scope: !687, file: !1, line: 308, column: 25)
!692 = !DILocation(line: 308, column: 37, scope: !691)
!693 = !DILocation(line: 308, column: 25, scope: !687)
!694 = !DILocation(line: 310, column: 45, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !1, line: 309, column: 23)
!696 = distinct !DILexicalBlock(scope: !691, file: !1, line: 308, column: 46)
!697 = !DILocation(line: 310, column: 56, scope: !695)
!698 = !DILocation(line: 310, column: 67, scope: !695)
!699 = !DILocation(line: 310, column: 23, scope: !695)
!700 = !DILocation(line: 311, column: 34, scope: !695)
!701 = !DILocation(line: 311, column: 32, scope: !695)
!702 = !DILocation(line: 313, column: 21, scope: !696)
!703 = !DILocation(line: 316, column: 56, scope: !418)
!704 = !DILocation(line: 317, column: 45, scope: !418)
!705 = !DILocation(line: 317, column: 43, scope: !418)
!706 = !DILocation(line: 318, column: 32, scope: !418)
!707 = !DILocation(line: 318, column: 30, scope: !418)
!708 = !DILocation(line: 319, column: 48, scope: !418)
!709 = !DILocation(line: 320, column: 40, scope: !418)
!710 = !DILocation(line: 320, column: 21, scope: !418)
!711 = !DILocation(line: 1011, column: 7, scope: !457, inlinedAt: !417)
!712 = !DILocation(line: 1011, column: 12, scope: !457, inlinedAt: !417)
!713 = !DILocation(line: 1011, column: 9, scope: !457, inlinedAt: !417)
!714 = !DILocation(line: 1011, column: 7, scope: !458, inlinedAt: !417)
!715 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !716)
!716 = distinct !DILocation(line: 1015, column: 5, scope: !464, inlinedAt: !417)
!717 = !DILocation(line: 1012, column: 9, scope: !467, inlinedAt: !417)
!718 = !DILocation(line: 1012, column: 7, scope: !467, inlinedAt: !417)
!719 = !DILocation(line: 1018, column: 3, scope: !458, inlinedAt: !417)
!720 = !DILocation(line: 323, column: 19, scope: !399)
!721 = !DILocation(line: 325, column: 48, scope: !399)
!722 = !DILocation(line: 326, column: 41, scope: !399)
!723 = !DILocation(line: 327, column: 28, scope: !399)
!724 = !DILocation(line: 328, column: 23, scope: !725)
!725 = distinct !DILexicalBlock(scope: !399, file: !1, line: 328, column: 23)
!726 = !DILocation(line: 328, column: 28, scope: !725)
!727 = !DILocation(line: 328, column: 25, scope: !725)
!728 = !DILocation(line: 328, column: 23, scope: !399)
!729 = !DILocation(line: 329, column: 25, scope: !730)
!730 = distinct !DILexicalBlock(scope: !725, file: !1, line: 328, column: 32)
!731 = !DILocation(line: 329, column: 23, scope: !730)
!732 = !DILocation(line: 330, column: 19, scope: !730)
!733 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !734)
!734 = distinct !DILocation(line: 332, column: 21, scope: !735)
!735 = distinct !DILexicalBlock(scope: !736, file: !1, line: 331, column: 21)
!736 = distinct !DILexicalBlock(scope: !725, file: !1, line: 330, column: 26)
!737 = !DILocation(line: 336, column: 40, scope: !738)
!738 = distinct !DILexicalBlock(scope: !399, file: !1, line: 335, column: 19)
!739 = !DILocation(line: 337, column: 60, scope: !738)
!740 = !DILocation(line: 338, column: 44, scope: !738)
!741 = !DILocation(line: 338, column: 77, scope: !738)
!742 = !DILocation(line: 338, column: 30, scope: !738)
!743 = !DILocation(line: 338, column: 28, scope: !738)
!744 = !DILocation(line: 340, column: 19, scope: !399)
!745 = !DILocation(line: 342, column: 54, scope: !399)
!746 = !DILocation(line: 343, column: 48, scope: !399)
!747 = !DILocation(line: 344, column: 48, scope: !399)
!748 = !DILocation(line: 345, column: 23, scope: !749)
!749 = distinct !DILexicalBlock(scope: !399, file: !1, line: 345, column: 23)
!750 = !DILocation(line: 345, column: 28, scope: !749)
!751 = !DILocation(line: 345, column: 25, scope: !749)
!752 = !DILocation(line: 345, column: 23, scope: !399)
!753 = !DILocation(line: 346, column: 25, scope: !754)
!754 = distinct !DILexicalBlock(scope: !749, file: !1, line: 345, column: 32)
!755 = !DILocation(line: 346, column: 23, scope: !754)
!756 = !DILocation(line: 347, column: 19, scope: !754)
!757 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !758)
!758 = distinct !DILocation(line: 349, column: 21, scope: !759)
!759 = distinct !DILexicalBlock(scope: !760, file: !1, line: 348, column: 21)
!760 = distinct !DILexicalBlock(scope: !749, file: !1, line: 347, column: 26)
!761 = !DILocation(line: 353, column: 40, scope: !762)
!762 = distinct !DILexicalBlock(scope: !399, file: !1, line: 352, column: 19)
!763 = !DILocation(line: 354, column: 60, scope: !762)
!764 = !DILocation(line: 355, column: 41, scope: !762)
!765 = !DILocation(line: 356, column: 28, scope: !762)
!766 = !DILocation(line: 357, column: 44, scope: !762)
!767 = !DILocation(line: 357, column: 77, scope: !762)
!768 = !DILocation(line: 357, column: 30, scope: !762)
!769 = !DILocation(line: 357, column: 28, scope: !762)
!770 = !DILocation(line: 359, column: 23, scope: !427)
!771 = !DILocation(line: 359, column: 66, scope: !427)
!772 = !DILocation(line: 359, column: 23, scope: !399)
!773 = !DILocation(line: 361, column: 47, scope: !425)
!774 = !DILocation(line: 361, column: 21, scope: !425)
!775 = !DILocation(line: 904, column: 15, scope: !431, inlinedAt: !424)
!776 = !DILocation(line: 904, column: 13, scope: !431, inlinedAt: !424)
!777 = !DILocation(line: 905, column: 7, scope: !778, inlinedAt: !424)
!778 = distinct !DILexicalBlock(scope: !431, file: !1, line: 905, column: 7)
!779 = !DILocation(line: 905, column: 17, scope: !778, inlinedAt: !424)
!780 = !DILocation(line: 905, column: 7, scope: !431, inlinedAt: !424)
!781 = !DILocation(line: 911, column: 7, scope: !782, inlinedAt: !424)
!782 = distinct !DILexicalBlock(scope: !783, file: !1, line: 909, column: 12)
!783 = distinct !DILexicalBlock(scope: !784, file: !1, line: 909, column: 9)
!784 = distinct !DILexicalBlock(scope: !778, file: !1, line: 907, column: 10)
!785 = !DILocation(line: 913, column: 7, scope: !782, inlinedAt: !424)
!786 = !DILocation(line: 919, column: 1, scope: !40, inlinedAt: !424)
!787 = !DILocation(line: 364, column: 19, scope: !426)
!788 = !DILocation(line: 365, column: 23, scope: !438)
!789 = !DILocation(line: 365, column: 58, scope: !438)
!790 = !DILocation(line: 365, column: 23, scope: !399)
!791 = !DILocation(line: 367, column: 42, scope: !436)
!792 = !DILocation(line: 367, column: 21, scope: !436)
!793 = !DILocation(line: 838, column: 15, scope: !440, inlinedAt: !435)
!794 = !DILocation(line: 838, column: 13, scope: !440, inlinedAt: !435)
!795 = !DILocation(line: 839, column: 7, scope: !796, inlinedAt: !435)
!796 = distinct !DILexicalBlock(scope: !440, file: !1, line: 839, column: 7)
!797 = !DILocation(line: 839, column: 17, scope: !796, inlinedAt: !435)
!798 = !DILocation(line: 839, column: 7, scope: !440, inlinedAt: !435)
!799 = !DILocation(line: 845, column: 7, scope: !800, inlinedAt: !435)
!800 = distinct !DILexicalBlock(scope: !801, file: !1, line: 843, column: 12)
!801 = distinct !DILexicalBlock(scope: !802, file: !1, line: 843, column: 9)
!802 = distinct !DILexicalBlock(scope: !796, file: !1, line: 841, column: 10)
!803 = !DILocation(line: 847, column: 7, scope: !800, inlinedAt: !435)
!804 = !DILocation(line: 853, column: 1, scope: !31, inlinedAt: !435)
!805 = !DILocation(line: 369, column: 19, scope: !437)
!806 = !DILocation(line: 370, column: 62, scope: !399)
!807 = !DILocation(line: 371, column: 19, scope: !399)
!808 = !DILocation(line: 373, column: 23, scope: !809)
!809 = distinct !DILexicalBlock(scope: !399, file: !1, line: 373, column: 23)
!810 = !DILocation(line: 373, column: 28, scope: !809)
!811 = !DILocation(line: 373, column: 25, scope: !809)
!812 = !DILocation(line: 373, column: 23, scope: !399)
!813 = !DILocation(line: 374, column: 25, scope: !814)
!814 = distinct !DILexicalBlock(scope: !809, file: !1, line: 373, column: 32)
!815 = !DILocation(line: 374, column: 23, scope: !814)
!816 = !DILocation(line: 375, column: 19, scope: !814)
!817 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !818)
!818 = distinct !DILocation(line: 377, column: 21, scope: !819)
!819 = distinct !DILexicalBlock(scope: !820, file: !1, line: 376, column: 21)
!820 = distinct !DILexicalBlock(scope: !809, file: !1, line: 375, column: 26)
!821 = !DILocation(line: 381, column: 40, scope: !822)
!822 = distinct !DILexicalBlock(scope: !399, file: !1, line: 380, column: 19)
!823 = !DILocation(line: 382, column: 60, scope: !822)
!824 = !DILocation(line: 383, column: 44, scope: !822)
!825 = !DILocation(line: 383, column: 77, scope: !822)
!826 = !DILocation(line: 383, column: 30, scope: !822)
!827 = !DILocation(line: 383, column: 28, scope: !822)
!828 = !DILocation(line: 385, column: 17, scope: !399)
!829 = !DILocation(line: 385, column: 24, scope: !400)
!830 = !DILocation(line: 395, column: 24, scope: !380)
!831 = !DILocation(line: 396, column: 7, scope: !832)
!832 = distinct !DILexicalBlock(scope: !380, file: !1, line: 396, column: 7)
!833 = !DILocation(line: 396, column: 28, scope: !832)
!834 = !DILocation(line: 396, column: 7, scope: !380)
!835 = !DILocation(line: 398, column: 3, scope: !836)
!836 = distinct !DILexicalBlock(scope: !832, file: !1, line: 396, column: 34)
!837 = !DILocation(line: 399, column: 11, scope: !380)
!838 = !DILocation(line: 399, column: 3, scope: !380)
!839 = !DILocation(line: 401, column: 1, scope: !15)
!840 = !DILocation(line: 1007, column: 29, scope: !43)
!841 = !DILocation(line: 1007, column: 39, scope: !43)
!842 = !DILocation(line: 1011, column: 7, scope: !457)
!843 = !DILocation(line: 1011, column: 12, scope: !457)
!844 = !DILocation(line: 1011, column: 9, scope: !457)
!845 = !DILocation(line: 1011, column: 7, scope: !458)
!846 = !DILocation(line: 1012, column: 9, scope: !467)
!847 = !DILocation(line: 1012, column: 7, scope: !467)
!848 = !DILocation(line: 1013, column: 3, scope: !467)
!849 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !850)
!850 = distinct !DILocation(line: 1015, column: 5, scope: !464)
!851 = !DILocation(line: 1018, column: 3, scope: !458)
!852 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !16, file: !1, line: 402, type: !13)
!853 = !DILocation(line: 402, column: 27, scope: !16)
!854 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !16, file: !1, line: 402, type: !13)
!855 = !DILocation(line: 402, column: 46, scope: !16)
!856 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !16, file: !1, line: 403, type: !13)
!857 = !DILocation(line: 403, column: 7, scope: !16)
!858 = !DILocation(line: 403, column: 39, scope: !16)
!859 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !16, file: !1, line: 404, type: !13)
!860 = !DILocation(line: 404, column: 7, scope: !16)
!861 = !DILocation(line: 404, column: 50, scope: !16)
!862 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !16, file: !1, line: 405, type: !13)
!863 = !DILocation(line: 405, column: 7, scope: !16)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__TargetObject", scope: !16, file: !1, line: 406, type: !13)
!865 = !DILocation(line: 406, column: 7, scope: !16)
!866 = !DILocation(line: 406, column: 41, scope: !16)
!867 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__MaxTransferSize", scope: !16, file: !1, line: 407, type: !13)
!868 = !DILocation(line: 407, column: 7, scope: !16)
!869 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__DriveType", scope: !16, file: !1, line: 408, type: !13)
!870 = !DILocation(line: 408, column: 7, scope: !16)
!871 = !DILocation(line: 408, column: 38, scope: !16)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__PerpendicularMode", scope: !16, file: !1, line: 409, type: !13)
!873 = !DILocation(line: 409, column: 7, scope: !16)
!874 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__DeviceUnit", scope: !16, file: !1, line: 410, type: !13)
!875 = !DILocation(line: 410, column: 7, scope: !16)
!876 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__DriveOnValue", scope: !16, file: !1, line: 411, type: !13)
!877 = !DILocation(line: 411, column: 7, scope: !16)
!878 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__UnderlyingPDO", scope: !16, file: !1, line: 412, type: !13)
!879 = !DILocation(line: 412, column: 7, scope: !16)
!880 = !DILocation(line: 412, column: 42, scope: !16)
!881 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__InterfaceString", scope: !16, file: !1, line: 413, type: !13)
!882 = !DILocation(line: 413, column: 7, scope: !16)
!883 = !DILocation(line: 413, column: 44, scope: !16)
!884 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__IsStarted", scope: !16, file: !1, line: 414, type: !13)
!885 = !DILocation(line: 414, column: 7, scope: !16)
!886 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__HoldNewRequests", scope: !16, file: !1, line: 415, type: !13)
!887 = !DILocation(line: 415, column: 7, scope: !16)
!888 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ntStatus", scope: !16, file: !1, line: 416, type: !13)
!889 = !DILocation(line: 416, column: 7, scope: !16)
!890 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pnpStatus", scope: !16, file: !1, line: 417, type: !13)
!891 = !DILocation(line: 417, column: 7, scope: !16)
!892 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doneEvent", scope: !16, file: !1, line: 418, type: !13)
!893 = !DILocation(line: 418, column: 7, scope: !16)
!894 = !DILocation(line: 418, column: 19, scope: !16)
!895 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo", scope: !16, file: !1, line: 419, type: !13)
!896 = !DILocation(line: 419, column: 7, scope: !16)
!897 = !DILocation(line: 419, column: 17, scope: !16)
!898 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__BufferCount", scope: !16, file: !1, line: 420, type: !13)
!899 = !DILocation(line: 420, column: 7, scope: !16)
!900 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__BufferSize", scope: !16, file: !1, line: 421, type: !13)
!901 = !DILocation(line: 421, column: 7, scope: !16)
!902 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__MaxTransferSize", scope: !16, file: !1, line: 422, type: !13)
!903 = !DILocation(line: 422, column: 7, scope: !16)
!904 = !DILocation(line: 422, column: 34, scope: !16)
!905 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__AcpiBios", scope: !16, file: !1, line: 423, type: !13)
!906 = !DILocation(line: 423, column: 7, scope: !16)
!907 = !DILocation(line: 423, column: 27, scope: !16)
!908 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__AcpiFdiSupported", scope: !16, file: !1, line: 424, type: !13)
!909 = !DILocation(line: 424, column: 7, scope: !16)
!910 = !DILocation(line: 424, column: 35, scope: !16)
!911 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__PeripheralNumber", scope: !16, file: !1, line: 425, type: !13)
!912 = !DILocation(line: 425, column: 7, scope: !16)
!913 = !DILocation(line: 425, column: 35, scope: !16)
!914 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__BusType", scope: !16, file: !1, line: 426, type: !13)
!915 = !DILocation(line: 426, column: 7, scope: !16)
!916 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__ControllerNumber", scope: !16, file: !1, line: 427, type: !13)
!917 = !DILocation(line: 427, column: 7, scope: !16)
!918 = !DILocation(line: 427, column: 35, scope: !16)
!919 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__UnitNumber", scope: !16, file: !1, line: 428, type: !13)
!920 = !DILocation(line: 428, column: 7, scope: !16)
!921 = !DILocation(line: 428, column: 29, scope: !16)
!922 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__BusNumber", scope: !16, file: !1, line: 429, type: !13)
!923 = !DILocation(line: 429, column: 7, scope: !16)
!924 = !DILocation(line: 429, column: 28, scope: !16)
!925 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Dc", scope: !16, file: !1, line: 430, type: !13)
!926 = !DILocation(line: 430, column: 7, scope: !16)
!927 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Fp", scope: !16, file: !1, line: 431, type: !13)
!928 = !DILocation(line: 431, column: 7, scope: !16)
!929 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension", scope: !16, file: !1, line: 432, type: !13)
!930 = !DILocation(line: 432, column: 7, scope: !16)
!931 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp", scope: !16, file: !1, line: 433, type: !13)
!932 = !DILocation(line: 433, column: 7, scope: !16)
!933 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___0", scope: !16, file: !1, line: 434, type: !13)
!934 = !DILocation(line: 434, column: 7, scope: !16)
!935 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp", scope: !16, file: !1, line: 435, type: !13)
!936 = !DILocation(line: 435, column: 7, scope: !16)
!937 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp__Control", scope: !16, file: !1, line: 436, type: !13)
!938 = !DILocation(line: 436, column: 7, scope: !16)
!939 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___1", scope: !16, file: !1, line: 437, type: !13)
!940 = !DILocation(line: 437, column: 7, scope: !16)
!941 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Control", scope: !16, file: !1, line: 438, type: !13)
!942 = !DILocation(line: 438, column: 7, scope: !16)
!943 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Context", scope: !16, file: !1, line: 439, type: !13)
!944 = !DILocation(line: 439, column: 7, scope: !16)
!945 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "InterfaceType", scope: !16, file: !1, line: 440, type: !13)
!946 = !DILocation(line: 440, column: 7, scope: !16)
!947 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86", scope: !16, file: !1, line: 441, type: !13)
!948 = !DILocation(line: 441, column: 7, scope: !16)
!949 = !DILocation(line: 441, column: 61, scope: !16)
!950 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp42", scope: !16, file: !1, line: 442, type: !4)
!951 = !DILocation(line: 442, column: 8, scope: !16)
!952 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp43", scope: !16, file: !1, line: 443, type: !13)
!953 = !DILocation(line: 443, column: 7, scope: !16)
!954 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp44", scope: !16, file: !1, line: 444, type: !13)
!955 = !DILocation(line: 444, column: 7, scope: !16)
!956 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp45", scope: !16, file: !1, line: 445, type: !13)
!957 = !DILocation(line: 445, column: 7, scope: !16)
!958 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp46", scope: !16, file: !1, line: 446, type: !13)
!959 = !DILocation(line: 446, column: 7, scope: !16)
!960 = !DILocation(line: 446, column: 21, scope: !16)
!961 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp47", scope: !16, file: !1, line: 447, type: !13)
!962 = !DILocation(line: 447, column: 7, scope: !16)
!963 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp48", scope: !16, file: !1, line: 448, type: !13)
!964 = !DILocation(line: 448, column: 7, scope: !16)
!965 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp49", scope: !16, file: !1, line: 449, type: !13)
!966 = !DILocation(line: 449, column: 7, scope: !16)
!967 = !DILocation(line: 452, column: 8, scope: !968)
!968 = distinct !DILexicalBlock(scope: !16, file: !1, line: 451, column: 3)
!969 = !DILocation(line: 452, column: 6, scope: !968)
!970 = !DILocation(line: 453, column: 8, scope: !968)
!971 = !DILocation(line: 453, column: 6, scope: !968)
!972 = !DILocation(line: 454, column: 23, scope: !968)
!973 = !DILocation(line: 454, column: 21, scope: !968)
!974 = !DILocation(line: 455, column: 11, scope: !968)
!975 = !DILocation(line: 455, column: 9, scope: !968)
!976 = !DILocation(line: 456, column: 15, scope: !968)
!977 = !DILocation(line: 456, column: 13, scope: !968)
!978 = !DILocation(line: 457, column: 15, scope: !968)
!979 = !DILocation(line: 457, column: 56, scope: !968)
!980 = !DILocation(line: 457, column: 13, scope: !968)
!981 = !DILocation(line: 458, column: 22, scope: !968)
!982 = !DILocation(line: 459, column: 7, scope: !983)
!983 = distinct !DILexicalBlock(scope: !968, file: !1, line: 459, column: 7)
!984 = !DILocation(line: 459, column: 12, scope: !983)
!985 = !DILocation(line: 459, column: 9, scope: !983)
!986 = !DILocation(line: 58, column: 31, scope: !10, inlinedAt: !987)
!987 = distinct !DILocation(line: 501, column: 20, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !1, line: 500, column: 9)
!989 = distinct !DILexicalBlock(scope: !990, file: !1, line: 499, column: 38)
!990 = distinct !DILexicalBlock(scope: !991, file: !1, line: 499, column: 11)
!991 = distinct !DILexicalBlock(scope: !992, file: !1, line: 498, column: 28)
!992 = distinct !DILexicalBlock(scope: !993, file: !1, line: 498, column: 9)
!993 = distinct !DILexicalBlock(scope: !994, file: !1, line: 496, column: 22)
!994 = distinct !DILexicalBlock(scope: !968, file: !1, line: 496, column: 7)
!995 = !DILocation(line: 58, column: 55, scope: !10, inlinedAt: !987)
!996 = !DILocation(line: 1007, column: 29, scope: !43, inlinedAt: !997)
!997 = distinct !DILocation(line: 565, column: 3, scope: !998)
!998 = distinct !DILexicalBlock(scope: !968, file: !1, line: 562, column: 3)
!999 = !DILocation(line: 1007, column: 39, scope: !43, inlinedAt: !997)
!1000 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "BusType", arg: 1, scope: !34, file: !1, line: 854, type: !13)
!1001 = !DILocation(line: 854, column: 34, scope: !34, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 526, column: 20, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 524, column: 9)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !1, line: 518, column: 17)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !1, line: 517, column: 7)
!1006 = distinct !DILexicalBlock(scope: !992, file: !1, line: 510, column: 12)
!1007 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "BusNumber", arg: 2, scope: !34, file: !1, line: 854, type: !13)
!1008 = !DILocation(line: 854, column: 48, scope: !34, inlinedAt: !1002)
!1009 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ControllerType", arg: 3, scope: !34, file: !1, line: 854, type: !13)
!1010 = !DILocation(line: 854, column: 64, scope: !34, inlinedAt: !1002)
!1011 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ControllerNumber", arg: 4, scope: !34, file: !1, line: 854, type: !13)
!1012 = !DILocation(line: 854, column: 85, scope: !34, inlinedAt: !1002)
!1013 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PeripheralType", arg: 5, scope: !34, file: !1, line: 855, type: !13)
!1014 = !DILocation(line: 855, column: 34, scope: !34, inlinedAt: !1002)
!1015 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PeripheralNumber", arg: 6, scope: !34, file: !1, line: 855, type: !13)
!1016 = !DILocation(line: 855, column: 55, scope: !34, inlinedAt: !1002)
!1017 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "CalloutRoutine", arg: 7, scope: !34, file: !1, line: 855, type: !13)
!1018 = !DILocation(line: 855, column: 78, scope: !34, inlinedAt: !1002)
!1019 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 8, scope: !34, file: !1, line: 856, type: !13)
!1020 = !DILocation(line: 856, column: 34, scope: !34, inlinedAt: !1002)
!1021 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_7", scope: !1022, file: !1, line: 860, type: !13)
!1022 = distinct !DILexicalBlock(scope: !34, file: !1, line: 859, column: 3)
!1023 = !DILocation(line: 860, column: 7, scope: !1022, inlinedAt: !1002)
!1024 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PhysicalDeviceObject", arg: 1, scope: !37, file: !1, line: 877, type: !13)
!1025 = !DILocation(line: 877, column: 35, scope: !37, inlinedAt: !1026)
!1026 = distinct !DILocation(line: 549, column: 19, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !1, line: 548, column: 7)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !1, line: 539, column: 24)
!1029 = distinct !DILexicalBlock(scope: !993, file: !1, line: 539, column: 9)
!1030 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InterfaceClassGuid", arg: 2, scope: !37, file: !1, line: 877, type: !13)
!1031 = !DILocation(line: 877, column: 62, scope: !37, inlinedAt: !1026)
!1032 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ReferenceString", arg: 3, scope: !37, file: !1, line: 878, type: !13)
!1033 = !DILocation(line: 878, column: 35, scope: !37, inlinedAt: !1026)
!1034 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SymbolicLinkName", arg: 4, scope: !37, file: !1, line: 878, type: !13)
!1035 = !DILocation(line: 878, column: 57, scope: !37, inlinedAt: !1026)
!1036 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_8", scope: !1037, file: !1, line: 882, type: !13)
!1037 = distinct !DILexicalBlock(scope: !37, file: !1, line: 881, column: 3)
!1038 = !DILocation(line: 882, column: 7, scope: !1037, inlinedAt: !1026)
!1039 = !DILocation(line: 899, column: 35, scope: !40, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 554, column: 21, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 553, column: 9)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 552, column: 27)
!1043 = distinct !DILexicalBlock(scope: !1028, file: !1, line: 552, column: 11)
!1044 = !DILocation(line: 899, column: 58, scope: !40, inlinedAt: !1040)
!1045 = !DILocation(line: 903, column: 7, scope: !431, inlinedAt: !1040)
!1046 = !DILocation(line: 459, column: 7, scope: !968)
!1047 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 461, column: 5, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !1, line: 460, column: 5)
!1050 = distinct !DILexicalBlock(scope: !983, file: !1, line: 459, column: 16)
!1051 = !DILocation(line: 463, column: 3, scope: !1050)
!1052 = !DILocation(line: 464, column: 9, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 464, column: 9)
!1054 = distinct !DILexicalBlock(scope: !983, file: !1, line: 463, column: 10)
!1055 = !DILocation(line: 464, column: 24, scope: !1053)
!1056 = !DILocation(line: 464, column: 9, scope: !1054)
!1057 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 466, column: 7, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !1, line: 465, column: 7)
!1060 = distinct !DILexicalBlock(scope: !1053, file: !1, line: 464, column: 30)
!1061 = !DILocation(line: 468, column: 5, scope: !1060)
!1062 = !DILocation(line: 469, column: 22, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1053, file: !1, line: 468, column: 12)
!1064 = !DILocation(line: 473, column: 15, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !968, file: !1, line: 472, column: 3)
!1066 = !DILocation(line: 473, column: 56, scope: !1065)
!1067 = !DILocation(line: 473, column: 13, scope: !1065)
!1068 = !DILocation(line: 474, column: 20, scope: !1065)
!1069 = !DILocation(line: 474, column: 18, scope: !1065)
!1070 = !DILocation(line: 475, column: 18, scope: !1065)
!1071 = !DILocation(line: 476, column: 28, scope: !1065)
!1072 = !DILocation(line: 476, column: 61, scope: !1065)
!1073 = !DILocation(line: 476, column: 14, scope: !1065)
!1074 = !DILocation(line: 476, column: 12, scope: !1065)
!1075 = !DILocation(line: 479, column: 24, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !968, file: !1, line: 478, column: 3)
!1077 = !DILocation(line: 479, column: 17, scope: !1076)
!1078 = !DILocation(line: 479, column: 15, scope: !1076)
!1079 = !DILocation(line: 480, column: 7, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1076, file: !1, line: 480, column: 7)
!1081 = !DILocation(line: 480, column: 19, scope: !1080)
!1082 = !DILocation(line: 480, column: 7, scope: !1076)
!1083 = !DILocation(line: 482, column: 38, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !1, line: 481, column: 5)
!1085 = distinct !DILexicalBlock(scope: !1080, file: !1, line: 480, column: 28)
!1086 = !DILocation(line: 482, column: 49, scope: !1084)
!1087 = !DILocation(line: 482, column: 60, scope: !1084)
!1088 = !DILocation(line: 482, column: 16, scope: !1084)
!1089 = !DILocation(line: 482, column: 14, scope: !1084)
!1090 = !DILocation(line: 483, column: 16, scope: !1084)
!1091 = !DILocation(line: 483, column: 14, scope: !1084)
!1092 = !DILocation(line: 485, column: 3, scope: !1085)
!1093 = !DILocation(line: 488, column: 24, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !968, file: !1, line: 487, column: 3)
!1095 = !DILocation(line: 489, column: 23, scope: !1094)
!1096 = !DILocation(line: 494, column: 28, scope: !1094)
!1097 = !DILocation(line: 494, column: 61, scope: !1094)
!1098 = !DILocation(line: 494, column: 74, scope: !1094)
!1099 = !DILocation(line: 494, column: 14, scope: !1094)
!1100 = !DILocation(line: 494, column: 12, scope: !1094)
!1101 = !DILocation(line: 496, column: 7, scope: !994)
!1102 = !DILocation(line: 496, column: 16, scope: !994)
!1103 = !DILocation(line: 496, column: 7, scope: !968)
!1104 = !DILocation(line: 497, column: 42, scope: !993)
!1105 = !DILocation(line: 497, column: 40, scope: !993)
!1106 = !DILocation(line: 498, column: 9, scope: !992)
!1107 = !DILocation(line: 498, column: 9, scope: !993)
!1108 = !DILocation(line: 499, column: 11, scope: !990)
!1109 = !DILocation(line: 499, column: 11, scope: !991)
!1110 = !DILocation(line: 501, column: 42, scope: !988)
!1111 = !DILocation(line: 501, column: 61, scope: !988)
!1112 = !DILocation(line: 501, column: 20, scope: !988)
!1113 = !DILocation(line: 62, column: 3, scope: !116, inlinedAt: !987)
!1114 = !DILocation(line: 501, column: 18, scope: !988)
!1115 = !DILocation(line: 503, column: 13, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !989, file: !1, line: 503, column: 13)
!1117 = !DILocation(line: 503, column: 42, scope: !1116)
!1118 = !DILocation(line: 503, column: 13, scope: !989)
!1119 = !DILocation(line: 506, column: 9, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1116, file: !1, line: 503, column: 48)
!1121 = !DILocation(line: 507, column: 7, scope: !989)
!1122 = !DILocation(line: 508, column: 9, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !990, file: !1, line: 507, column: 14)
!1124 = !DILocation(line: 510, column: 5, scope: !991)
!1125 = !DILocation(line: 510, column: 12, scope: !992)
!1126 = !DILocation(line: 512, column: 11, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1006, file: !1, line: 512, column: 11)
!1128 = !DILocation(line: 512, column: 40, scope: !1127)
!1129 = !DILocation(line: 512, column: 11, scope: !1006)
!1130 = !DILocation(line: 515, column: 7, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1127, file: !1, line: 512, column: 46)
!1132 = !DILocation(line: 516, column: 21, scope: !1006)
!1133 = !DILocation(line: 518, column: 7, scope: !1005)
!1134 = !DILocation(line: 518, column: 17, scope: !1005)
!1135 = !DILocation(line: 521, column: 13, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 521, column: 13)
!1137 = !DILocation(line: 521, column: 30, scope: !1136)
!1138 = !DILocation(line: 521, column: 27, scope: !1136)
!1139 = !DILocation(line: 521, column: 13, scope: !1004)
!1140 = !DILocation(line: 522, column: 11, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1136, file: !1, line: 521, column: 52)
!1142 = !DILocation(line: 525, column: 28, scope: !1003)
!1143 = !DILocation(line: 525, column: 26, scope: !1003)
!1144 = !DILocation(line: 526, column: 45, scope: !1003)
!1145 = !DILocation(line: 526, column: 63, scope: !1003)
!1146 = !DILocation(line: 527, column: 45, scope: !1003)
!1147 = !DILocation(line: 527, column: 49, scope: !1003)
!1148 = !DILocation(line: 527, column: 76, scope: !1003)
!1149 = !DILocation(line: 527, column: 80, scope: !1003)
!1150 = !DILocation(line: 528, column: 45, scope: !1003)
!1151 = !DILocation(line: 528, column: 63, scope: !1003)
!1152 = !DILocation(line: 526, column: 20, scope: !1003)
!1153 = !DILocation(line: 861, column: 15, scope: !1022, inlinedAt: !1002)
!1154 = !DILocation(line: 861, column: 13, scope: !1022, inlinedAt: !1002)
!1155 = !DILocation(line: 862, column: 7, scope: !1156, inlinedAt: !1002)
!1156 = distinct !DILexicalBlock(scope: !1022, file: !1, line: 862, column: 7)
!1157 = !DILocation(line: 862, column: 17, scope: !1156, inlinedAt: !1002)
!1158 = !DILocation(line: 862, column: 7, scope: !1022, inlinedAt: !1002)
!1159 = !DILocation(line: 868, column: 7, scope: !1160, inlinedAt: !1002)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 866, column: 12)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !1, line: 866, column: 9)
!1162 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 864, column: 10)
!1163 = !DILocation(line: 870, column: 7, scope: !1160, inlinedAt: !1002)
!1164 = !DILocation(line: 876, column: 1, scope: !34, inlinedAt: !1002)
!1165 = !DILocation(line: 526, column: 18, scope: !1003)
!1166 = !DILocation(line: 530, column: 13, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 530, column: 13)
!1168 = !DILocation(line: 530, column: 22, scope: !1167)
!1169 = !DILocation(line: 530, column: 13, scope: !1004)
!1170 = !DILocation(line: 531, column: 11, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1167, file: !1, line: 530, column: 28)
!1172 = !DILocation(line: 533, column: 23, scope: !1004)
!1173 = !DILocation(line: 536, column: 7, scope: !1005)
!1174 = !DILocation(line: 539, column: 9, scope: !1029)
!1175 = !DILocation(line: 539, column: 18, scope: !1029)
!1176 = !DILocation(line: 539, column: 9, scope: !993)
!1177 = !DILocation(line: 540, column: 11, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1028, file: !1, line: 540, column: 11)
!1179 = !DILocation(line: 540, column: 63, scope: !1178)
!1180 = !DILocation(line: 540, column: 11, scope: !1028)
!1181 = !DILocation(line: 541, column: 41, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 540, column: 69)
!1183 = !DILocation(line: 541, column: 39, scope: !1182)
!1184 = !DILocation(line: 542, column: 43, scope: !1182)
!1185 = !DILocation(line: 542, column: 41, scope: !1182)
!1186 = !DILocation(line: 543, column: 7, scope: !1182)
!1187 = !DILocation(line: 544, column: 41, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 543, column: 14)
!1189 = !DILocation(line: 544, column: 39, scope: !1188)
!1190 = !DILocation(line: 549, column: 45, scope: !1027)
!1191 = !DILocation(line: 549, column: 79, scope: !1027)
!1192 = !DILocation(line: 550, column: 48, scope: !1027)
!1193 = !DILocation(line: 549, column: 19, scope: !1027)
!1194 = !DILocation(line: 883, column: 15, scope: !1037, inlinedAt: !1026)
!1195 = !DILocation(line: 883, column: 13, scope: !1037, inlinedAt: !1026)
!1196 = !DILocation(line: 884, column: 7, scope: !1197, inlinedAt: !1026)
!1197 = distinct !DILexicalBlock(scope: !1037, file: !1, line: 884, column: 7)
!1198 = !DILocation(line: 884, column: 17, scope: !1197, inlinedAt: !1026)
!1199 = !DILocation(line: 884, column: 7, scope: !1037, inlinedAt: !1026)
!1200 = !DILocation(line: 890, column: 7, scope: !1201, inlinedAt: !1026)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !1, line: 888, column: 12)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !1, line: 888, column: 9)
!1203 = distinct !DILexicalBlock(scope: !1197, file: !1, line: 886, column: 10)
!1204 = !DILocation(line: 892, column: 7, scope: !1201, inlinedAt: !1026)
!1205 = !DILocation(line: 898, column: 1, scope: !37, inlinedAt: !1026)
!1206 = !DILocation(line: 549, column: 17, scope: !1027)
!1207 = !DILocation(line: 552, column: 11, scope: !1043)
!1208 = !DILocation(line: 552, column: 21, scope: !1043)
!1209 = !DILocation(line: 552, column: 11, scope: !1028)
!1210 = !DILocation(line: 554, column: 47, scope: !1041)
!1211 = !DILocation(line: 554, column: 21, scope: !1041)
!1212 = !DILocation(line: 904, column: 15, scope: !431, inlinedAt: !1040)
!1213 = !DILocation(line: 904, column: 13, scope: !431, inlinedAt: !1040)
!1214 = !DILocation(line: 905, column: 7, scope: !778, inlinedAt: !1040)
!1215 = !DILocation(line: 905, column: 17, scope: !778, inlinedAt: !1040)
!1216 = !DILocation(line: 905, column: 7, scope: !431, inlinedAt: !1040)
!1217 = !DILocation(line: 911, column: 7, scope: !782, inlinedAt: !1040)
!1218 = !DILocation(line: 913, column: 7, scope: !782, inlinedAt: !1040)
!1219 = !DILocation(line: 919, column: 1, scope: !40, inlinedAt: !1040)
!1220 = !DILocation(line: 554, column: 19, scope: !1041)
!1221 = !DILocation(line: 557, column: 7, scope: !1042)
!1222 = !DILocation(line: 558, column: 36, scope: !1028)
!1223 = !DILocation(line: 559, column: 42, scope: !1028)
!1224 = !DILocation(line: 560, column: 5, scope: !1028)
!1225 = !DILocation(line: 561, column: 3, scope: !993)
!1226 = !DILocation(line: 563, column: 27, scope: !998)
!1227 = !DILocation(line: 563, column: 25, scope: !998)
!1228 = !DILocation(line: 564, column: 14, scope: !998)
!1229 = !DILocation(line: 564, column: 12, scope: !998)
!1230 = !DILocation(line: 565, column: 22, scope: !998)
!1231 = !DILocation(line: 565, column: 3, scope: !998)
!1232 = !DILocation(line: 1011, column: 7, scope: !457, inlinedAt: !997)
!1233 = !DILocation(line: 1011, column: 12, scope: !457, inlinedAt: !997)
!1234 = !DILocation(line: 1011, column: 9, scope: !457, inlinedAt: !997)
!1235 = !DILocation(line: 1011, column: 7, scope: !458, inlinedAt: !997)
!1236 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 1015, column: 5, scope: !464, inlinedAt: !997)
!1238 = !DILocation(line: 1012, column: 9, scope: !467, inlinedAt: !997)
!1239 = !DILocation(line: 1012, column: 7, scope: !467, inlinedAt: !997)
!1240 = !DILocation(line: 1018, column: 3, scope: !458, inlinedAt: !997)
!1241 = !DILocation(line: 567, column: 11, scope: !968)
!1242 = !DILocation(line: 567, column: 3, scope: !968)
!1243 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !17, file: !1, line: 570, type: !13)
!1244 = !DILocation(line: 570, column: 27, scope: !17)
!1245 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !17, file: !1, line: 570, type: !13)
!1246 = !DILocation(line: 570, column: 46, scope: !17)
!1247 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 3, scope: !17, file: !1, line: 570, type: !13)
!1248 = !DILocation(line: 570, column: 56, scope: !17)
!1249 = !DILocation(line: 575, column: 14, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !1, line: 574, column: 3)
!1251 = distinct !DILexicalBlock(scope: !17, file: !1, line: 573, column: 3)
!1252 = !DILocation(line: 575, column: 3, scope: !1250)
!1253 = !DILocation(line: 1022, column: 11, scope: !46, inlinedAt: !1254)
!1254 = distinct !DILocation(line: 575, column: 3, scope: !1250)
!1255 = !DILocation(line: 1022, column: 7, scope: !46, inlinedAt: !1254)
!1256 = !DILocation(line: 1025, column: 18, scope: !1257, inlinedAt: !1254)
!1257 = distinct !DILexicalBlock(scope: !46, file: !1, line: 1024, column: 3)
!1258 = !DILocation(line: 1026, column: 11, scope: !1257, inlinedAt: !1254)
!1259 = !DILocation(line: 1026, column: 3, scope: !1257, inlinedAt: !1254)
!1260 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 1, scope: !46, file: !1, line: 1021, type: !13)
!1261 = !DILocation(line: 1021, column: 20, scope: !46, inlinedAt: !1254)
!1262 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Increment", arg: 2, scope: !46, file: !1, line: 1021, type: !13)
!1263 = !DILocation(line: 1021, column: 32, scope: !46, inlinedAt: !1254)
!1264 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Wait", arg: 3, scope: !46, file: !1, line: 1021, type: !13)
!1265 = !DILocation(line: 1021, column: 48, scope: !46, inlinedAt: !1254)
!1266 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !46, file: !1, line: 1022, type: !13)
!1267 = !DILocation(line: 577, column: 3, scope: !1251)
!1268 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !20, file: !1, line: 580, type: !13)
!1269 = !DILocation(line: 580, column: 23, scope: !20)
!1270 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Ioctl", arg: 2, scope: !20, file: !1, line: 580, type: !13)
!1271 = !DILocation(line: 580, column: 42, scope: !20)
!1272 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Data", arg: 3, scope: !20, file: !1, line: 580, type: !13)
!1273 = !DILocation(line: 580, column: 54, scope: !20)
!1274 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ntStatus", scope: !20, file: !1, line: 581, type: !13)
!1275 = !DILocation(line: 581, column: 7, scope: !20)
!1276 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp", scope: !20, file: !1, line: 582, type: !13)
!1277 = !DILocation(line: 582, column: 7, scope: !20)
!1278 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack", scope: !20, file: !1, line: 583, type: !13)
!1279 = !DILocation(line: 583, column: 7, scope: !20)
!1280 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doneEvent", scope: !20, file: !1, line: 584, type: !13)
!1281 = !DILocation(line: 584, column: 7, scope: !20)
!1282 = !DILocation(line: 584, column: 19, scope: !20)
!1283 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ioStatus", scope: !20, file: !1, line: 585, type: !13)
!1284 = !DILocation(line: 585, column: 7, scope: !20)
!1285 = !DILocation(line: 585, column: 18, scope: !20)
!1286 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp__Tail__Overlay__CurrentStackLocation", scope: !20, file: !1, line: 586, type: !13)
!1287 = !DILocation(line: 586, column: 7, scope: !20)
!1288 = !DILocation(line: 586, column: 50, scope: !20)
!1289 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack__Parameters__DeviceIoControl__Type3InputBuffer", scope: !20, file: !1, line: 587, type: !13)
!1290 = !DILocation(line: 587, column: 7, scope: !20)
!1291 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp11", scope: !20, file: !1, line: 588, type: !4)
!1292 = !DILocation(line: 588, column: 8, scope: !20)
!1293 = !DILocation(line: 592, column: 39, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !1, line: 591, column: 3)
!1295 = distinct !DILexicalBlock(scope: !20, file: !1, line: 590, column: 3)
!1296 = !DILocation(line: 592, column: 46, scope: !1294)
!1297 = !DILocation(line: 592, column: 75, scope: !1294)
!1298 = !DILocation(line: 593, column: 39, scope: !1294)
!1299 = !DILocation(line: 592, column: 9, scope: !1294)
!1300 = !DILocation(line: 812, column: 16, scope: !28, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 592, column: 9, scope: !1294)
!1302 = !DILocation(line: 812, column: 7, scope: !28, inlinedAt: !1301)
!1303 = !DILocation(line: 815, column: 13, scope: !1304, inlinedAt: !1301)
!1304 = distinct !DILexicalBlock(scope: !28, file: !1, line: 814, column: 3)
!1305 = !DILocation(line: 817, column: 15, scope: !1304, inlinedAt: !1301)
!1306 = !DILocation(line: 817, column: 13, scope: !1304, inlinedAt: !1301)
!1307 = !DILocation(line: 818, column: 7, scope: !1308, inlinedAt: !1301)
!1308 = distinct !DILexicalBlock(scope: !1304, file: !1, line: 818, column: 7)
!1309 = !DILocation(line: 818, column: 17, scope: !1308, inlinedAt: !1301)
!1310 = !DILocation(line: 818, column: 7, scope: !1304, inlinedAt: !1301)
!1311 = !DILocation(line: 824, column: 15, scope: !1312, inlinedAt: !1301)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !1, line: 822, column: 12)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !1, line: 822, column: 9)
!1314 = distinct !DILexicalBlock(scope: !1308, file: !1, line: 820, column: 10)
!1315 = !DILocation(line: 824, column: 7, scope: !1312, inlinedAt: !1301)
!1316 = !DILocation(line: 826, column: 7, scope: !1312, inlinedAt: !1301)
!1317 = !DILocation(line: 832, column: 1, scope: !28, inlinedAt: !1301)
!1318 = !DILocation(line: 592, column: 7, scope: !1294)
!1319 = !DILocation(line: 595, column: 7, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1295, file: !1, line: 595, column: 7)
!1321 = !DILocation(line: 595, column: 11, scope: !1320)
!1322 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "IoControlCode", arg: 1, scope: !28, file: !1, line: 808, type: !13)
!1323 = !DILocation(line: 808, column: 39, scope: !28, inlinedAt: !1301)
!1324 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 2, scope: !28, file: !1, line: 808, type: !13)
!1325 = !DILocation(line: 808, column: 59, scope: !28, inlinedAt: !1301)
!1326 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InputBuffer", arg: 3, scope: !28, file: !1, line: 808, type: !13)
!1327 = !DILocation(line: 808, column: 78, scope: !28, inlinedAt: !1301)
!1328 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InputBufferLength", arg: 4, scope: !28, file: !1, line: 809, type: !13)
!1329 = !DILocation(line: 809, column: 39, scope: !28, inlinedAt: !1301)
!1330 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "OutputBuffer", arg: 5, scope: !28, file: !1, line: 809, type: !13)
!1331 = !DILocation(line: 809, column: 63, scope: !28, inlinedAt: !1301)
!1332 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "OutputBufferLength", arg: 6, scope: !28, file: !1, line: 809, type: !13)
!1333 = !DILocation(line: 809, column: 82, scope: !28, inlinedAt: !1301)
!1334 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InternalDeviceIoControl", arg: 7, scope: !28, file: !1, line: 810, type: !13)
!1335 = !DILocation(line: 810, column: 39, scope: !28, inlinedAt: !1301)
!1336 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 8, scope: !28, file: !1, line: 810, type: !13)
!1337 = !DILocation(line: 810, column: 69, scope: !28, inlinedAt: !1301)
!1338 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "IoStatusBlock", arg: 9, scope: !28, file: !1, line: 810, type: !13)
!1339 = !DILocation(line: 810, column: 81, scope: !28, inlinedAt: !1301)
!1340 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "malloc", scope: !28, file: !1, line: 812, type: !13)
!1341 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_5", scope: !1304, file: !1, line: 816, type: !13)
!1342 = !DILocation(line: 816, column: 7, scope: !1304, inlinedAt: !1301)
!1343 = !DILocation(line: 595, column: 7, scope: !1295)
!1344 = !DILocation(line: 596, column: 5, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1320, file: !1, line: 595, column: 17)
!1346 = !DILocation(line: 599, column: 14, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1295, file: !1, line: 598, column: 3)
!1348 = !DILocation(line: 599, column: 55, scope: !1347)
!1349 = !DILocation(line: 599, column: 12, scope: !1347)
!1350 = !DILocation(line: 600, column: 61, scope: !1347)
!1351 = !DILocation(line: 600, column: 59, scope: !1347)
!1352 = !DILocation(line: 601, column: 28, scope: !1347)
!1353 = !DILocation(line: 601, column: 42, scope: !1347)
!1354 = !DILocation(line: 601, column: 14, scope: !1347)
!1355 = !DILocation(line: 601, column: 12, scope: !1347)
!1356 = !DILocation(line: 604, column: 24, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1295, file: !1, line: 603, column: 3)
!1358 = !DILocation(line: 604, column: 17, scope: !1357)
!1359 = !DILocation(line: 604, column: 15, scope: !1357)
!1360 = !DILocation(line: 605, column: 7, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1357, file: !1, line: 605, column: 7)
!1362 = !DILocation(line: 605, column: 19, scope: !1361)
!1363 = !DILocation(line: 605, column: 7, scope: !1357)
!1364 = !DILocation(line: 607, column: 27, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 606, column: 5)
!1366 = distinct !DILexicalBlock(scope: !1361, file: !1, line: 605, column: 28)
!1367 = !DILocation(line: 607, column: 38, scope: !1365)
!1368 = !DILocation(line: 607, column: 49, scope: !1365)
!1369 = !DILocation(line: 607, column: 5, scope: !1365)
!1370 = !DILocation(line: 608, column: 16, scope: !1365)
!1371 = !DILocation(line: 608, column: 14, scope: !1365)
!1372 = !DILocation(line: 610, column: 3, scope: !1366)
!1373 = !DILocation(line: 612, column: 11, scope: !1295)
!1374 = !DILocation(line: 612, column: 3, scope: !1295)
!1375 = !DILocation(line: 614, column: 1, scope: !20)
!1376 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DisketteExtension", arg: 1, scope: !21, file: !1, line: 615, type: !13)
!1377 = !DILocation(line: 615, column: 38, scope: !21)
!1378 = !DILocation(line: 619, column: 3, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !21, file: !1, line: 618, column: 3)
!1380 = !DILocation(line: 626, column: 7, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !24, file: !1, line: 625, column: 3)
!1382 = !DILocation(line: 626, column: 5, scope: !1381)
!1383 = !DILocation(line: 627, column: 10, scope: !1381)
!1384 = !DILocation(line: 628, column: 18, scope: !1381)
!1385 = !DILocation(line: 629, column: 21, scope: !1381)
!1386 = !DILocation(line: 630, column: 18, scope: !1381)
!1387 = !DILocation(line: 631, column: 13, scope: !1381)
!1388 = !DILocation(line: 632, column: 3, scope: !1381)
!1389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !25, file: !1, line: 636, type: !13)
!1390 = !DILocation(line: 636, column: 7, scope: !25)
!1391 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp", scope: !25, file: !1, line: 637, type: !13)
!1392 = !DILocation(line: 637, column: 7, scope: !25)
!1393 = !DILocation(line: 637, column: 13, scope: !25)
!1394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pirp", scope: !25, file: !1, line: 638, type: !13)
!1395 = !DILocation(line: 638, column: 7, scope: !25)
!1396 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pirp__IoStatus__Status", scope: !25, file: !1, line: 639, type: !13)
!1397 = !DILocation(line: 639, column: 7, scope: !25)
!1398 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp_choice", scope: !25, file: !1, line: 640, type: !13)
!1399 = !DILocation(line: 640, column: 7, scope: !25)
!1400 = !DILocation(line: 640, column: 20, scope: !25)
!1401 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devobj", scope: !25, file: !1, line: 641, type: !13)
!1402 = !DILocation(line: 641, column: 7, scope: !25)
!1403 = !DILocation(line: 641, column: 16, scope: !25)
!1404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp8", scope: !25, file: !1, line: 642, type: !13)
!1405 = !DILocation(line: 642, column: 7, scope: !25)
!1406 = !DILocation(line: 644, column: 16, scope: !25)
!1407 = !DILocation(line: 645, column: 14, scope: !25)
!1408 = !DILocation(line: 646, column: 13, scope: !25)
!1409 = !DILocation(line: 647, column: 13, scope: !25)
!1410 = !DILocation(line: 648, column: 18, scope: !25)
!1411 = !DILocation(line: 649, column: 24, scope: !25)
!1412 = !DILocation(line: 650, column: 20, scope: !25)
!1413 = !DILocation(line: 651, column: 24, scope: !25)
!1414 = !DILocation(line: 652, column: 32, scope: !25)
!1415 = !DILocation(line: 653, column: 12, scope: !25)
!1416 = !DILocation(line: 654, column: 5, scope: !25)
!1417 = !DILocation(line: 655, column: 12, scope: !25)
!1418 = !DILocation(line: 656, column: 6, scope: !25)
!1419 = !DILocation(line: 657, column: 6, scope: !25)
!1420 = !DILocation(line: 658, column: 9, scope: !25)
!1421 = !DILocation(line: 659, column: 8, scope: !25)
!1422 = !DILocation(line: 660, column: 8, scope: !25)
!1423 = !DILocation(line: 661, column: 8, scope: !25)
!1424 = !DILocation(line: 662, column: 7, scope: !25)
!1425 = !DILocation(line: 663, column: 10, scope: !25)
!1426 = !DILocation(line: 664, column: 18, scope: !25)
!1427 = !DILocation(line: 665, column: 21, scope: !25)
!1428 = !DILocation(line: 666, column: 18, scope: !25)
!1429 = !DILocation(line: 667, column: 13, scope: !25)
!1430 = !DILocation(line: 671, column: 10, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !1, line: 670, column: 3)
!1432 = distinct !DILexicalBlock(scope: !25, file: !1, line: 669, column: 3)
!1433 = !DILocation(line: 672, column: 10, scope: !1431)
!1434 = !DILocation(line: 672, column: 8, scope: !1431)
!1435 = !DILocation(line: 39, column: 12, scope: !94, inlinedAt: !1436)
!1436 = distinct !DILocation(line: 673, column: 3, scope: !1431)
!1437 = !DILocation(line: 40, column: 6, scope: !94, inlinedAt: !1436)
!1438 = !DILocation(line: 41, column: 6, scope: !94, inlinedAt: !1436)
!1439 = !DILocation(line: 42, column: 9, scope: !94, inlinedAt: !1436)
!1440 = !DILocation(line: 43, column: 9, scope: !94, inlinedAt: !1436)
!1441 = !DILocation(line: 44, column: 8, scope: !94, inlinedAt: !1436)
!1442 = !DILocation(line: 45, column: 8, scope: !94, inlinedAt: !1436)
!1443 = !DILocation(line: 46, column: 7, scope: !94, inlinedAt: !1436)
!1444 = !DILocation(line: 47, column: 7, scope: !94, inlinedAt: !1436)
!1445 = !DILocation(line: 47, column: 5, scope: !94, inlinedAt: !1436)
!1446 = !DILocation(line: 48, column: 10, scope: !94, inlinedAt: !1436)
!1447 = !DILocation(line: 49, column: 18, scope: !94, inlinedAt: !1436)
!1448 = !DILocation(line: 50, column: 21, scope: !94, inlinedAt: !1436)
!1449 = !DILocation(line: 51, column: 18, scope: !94, inlinedAt: !1436)
!1450 = !DILocation(line: 52, column: 13, scope: !94, inlinedAt: !1436)
!1451 = !DILocation(line: 675, column: 7, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1432, file: !1, line: 675, column: 7)
!1453 = !DILocation(line: 675, column: 14, scope: !1452)
!1454 = !DILocation(line: 1007, column: 29, scope: !43, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 1145, column: 3, scope: !1456, inlinedAt: !1458)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !1, line: 1141, column: 3)
!1457 = distinct !DILexicalBlock(scope: !57, file: !1, line: 1140, column: 3)
!1458 = distinct !DILocation(line: 720, column: 24, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !1, line: 719, column: 15)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !1, line: 717, column: 20)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !1, line: 717, column: 17)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !1, line: 715, column: 18)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !1, line: 713, column: 15)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !1, line: 710, column: 16)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !1, line: 708, column: 13)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !1, line: 705, column: 14)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !1, line: 703, column: 11)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !1, line: 700, column: 12)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !1, line: 698, column: 9)
!1470 = distinct !DILexicalBlock(scope: !1452, file: !1, line: 675, column: 20)
!1471 = !DILocation(line: 1007, column: 39, scope: !43, inlinedAt: !1455)
!1472 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !57, file: !1, line: 1136, type: !13)
!1473 = !DILocation(line: 1136, column: 27, scope: !57, inlinedAt: !1458)
!1474 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !57, file: !1, line: 1136, type: !13)
!1475 = !DILocation(line: 1136, column: 46, scope: !57, inlinedAt: !1458)
!1476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !57, file: !1, line: 1137, type: !13)
!1477 = !DILocation(line: 1137, column: 7, scope: !57, inlinedAt: !1458)
!1478 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !57, file: !1, line: 1138, type: !13)
!1479 = !DILocation(line: 1138, column: 7, scope: !57, inlinedAt: !1458)
!1480 = !DILocation(line: 1007, column: 29, scope: !43, inlinedAt: !1481)
!1481 = distinct !DILocation(line: 1145, column: 3, scope: !1456, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 725, column: 24, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1460, file: !1, line: 724, column: 15)
!1484 = !DILocation(line: 1007, column: 39, scope: !43, inlinedAt: !1481)
!1485 = !DILocation(line: 1136, column: 27, scope: !57, inlinedAt: !1482)
!1486 = !DILocation(line: 1136, column: 46, scope: !57, inlinedAt: !1482)
!1487 = !DILocation(line: 1137, column: 7, scope: !57, inlinedAt: !1482)
!1488 = !DILocation(line: 1138, column: 7, scope: !57, inlinedAt: !1482)
!1489 = !DILocation(line: 675, column: 7, scope: !1432)
!1490 = !DILocation(line: 676, column: 9, scope: !1470)
!1491 = !DILocation(line: 676, column: 7, scope: !1470)
!1492 = !DILocation(line: 677, column: 15, scope: !1470)
!1493 = !DILocation(line: 678, column: 22, scope: !1470)
!1494 = !DILocation(line: 678, column: 20, scope: !1470)
!1495 = !DILocation(line: 679, column: 25, scope: !1470)
!1496 = !DILocation(line: 679, column: 23, scope: !1470)
!1497 = !DILocation(line: 680, column: 22, scope: !1470)
!1498 = !DILocation(line: 680, column: 20, scope: !1470)
!1499 = !DILocation(line: 681, column: 14, scope: !1470)
!1500 = !DILocation(line: 681, column: 12, scope: !1470)
!1501 = !DILocation(line: 682, column: 28, scope: !1470)
!1502 = !DILocation(line: 683, column: 14, scope: !1470)
!1503 = !DILocation(line: 684, column: 9, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1470, file: !1, line: 684, column: 9)
!1505 = !DILocation(line: 684, column: 20, scope: !1504)
!1506 = !DILocation(line: 684, column: 9, scope: !1470)
!1507 = !DILocation(line: 685, column: 30, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1504, file: !1, line: 684, column: 26)
!1509 = !DILocation(line: 686, column: 16, scope: !1508)
!1510 = !DILocation(line: 687, column: 5, scope: !1508)
!1511 = !DILocation(line: 626, column: 7, scope: !1381, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 689, column: 5, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1470, file: !1, line: 688, column: 5)
!1514 = !DILocation(line: 626, column: 5, scope: !1381, inlinedAt: !1512)
!1515 = !DILocation(line: 627, column: 10, scope: !1381, inlinedAt: !1512)
!1516 = !DILocation(line: 628, column: 18, scope: !1381, inlinedAt: !1512)
!1517 = !DILocation(line: 629, column: 21, scope: !1381, inlinedAt: !1512)
!1518 = !DILocation(line: 630, column: 18, scope: !1381, inlinedAt: !1512)
!1519 = !DILocation(line: 631, column: 13, scope: !1381, inlinedAt: !1512)
!1520 = !DILocation(line: 692, column: 9, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !1, line: 692, column: 9)
!1522 = distinct !DILexicalBlock(scope: !1470, file: !1, line: 691, column: 5)
!1523 = !DILocation(line: 692, column: 16, scope: !1521)
!1524 = !DILocation(line: 692, column: 9, scope: !1522)
!1525 = !DILocation(line: 693, column: 7, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1521, file: !1, line: 692, column: 21)
!1527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_1", scope: !1470, file: !1, line: 696, type: !13)
!1528 = !DILocation(line: 696, column: 9, scope: !1470)
!1529 = !DILocation(line: 697, column: 17, scope: !1470)
!1530 = !DILocation(line: 697, column: 15, scope: !1470)
!1531 = !DILocation(line: 698, column: 9, scope: !1469)
!1532 = !DILocation(line: 698, column: 19, scope: !1469)
!1533 = !DILocation(line: 698, column: 9, scope: !1470)
!1534 = !DILocation(line: 699, column: 7, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1469, file: !1, line: 698, column: 25)
!1536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_2", scope: !1468, file: !1, line: 701, type: !13)
!1537 = !DILocation(line: 701, column: 11, scope: !1468)
!1538 = !DILocation(line: 702, column: 19, scope: !1468)
!1539 = !DILocation(line: 702, column: 17, scope: !1468)
!1540 = !DILocation(line: 703, column: 11, scope: !1467)
!1541 = !DILocation(line: 703, column: 21, scope: !1467)
!1542 = !DILocation(line: 703, column: 11, scope: !1468)
!1543 = !DILocation(line: 704, column: 9, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1467, file: !1, line: 703, column: 27)
!1545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_3", scope: !1466, file: !1, line: 706, type: !13)
!1546 = !DILocation(line: 706, column: 13, scope: !1466)
!1547 = !DILocation(line: 707, column: 21, scope: !1466)
!1548 = !DILocation(line: 707, column: 19, scope: !1466)
!1549 = !DILocation(line: 708, column: 13, scope: !1465)
!1550 = !DILocation(line: 708, column: 23, scope: !1465)
!1551 = !DILocation(line: 708, column: 13, scope: !1466)
!1552 = !DILocation(line: 709, column: 11, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1465, file: !1, line: 708, column: 29)
!1554 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_4", scope: !1464, file: !1, line: 711, type: !13)
!1555 = !DILocation(line: 711, column: 15, scope: !1464)
!1556 = !DILocation(line: 712, column: 23, scope: !1464)
!1557 = !DILocation(line: 712, column: 21, scope: !1464)
!1558 = !DILocation(line: 713, column: 15, scope: !1463)
!1559 = !DILocation(line: 713, column: 25, scope: !1463)
!1560 = !DILocation(line: 713, column: 15, scope: !1464)
!1561 = !DILocation(line: 714, column: 13, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1463, file: !1, line: 713, column: 31)
!1563 = !DILocation(line: 716, column: 13, scope: !1462)
!1564 = !DILocation(line: 717, column: 17, scope: !1462)
!1565 = !DILocation(line: 717, column: 20, scope: !1461)
!1566 = !DILocation(line: 720, column: 42, scope: !1459)
!1567 = !DILocation(line: 720, column: 50, scope: !1459)
!1568 = !DILocation(line: 720, column: 24, scope: !1459)
!1569 = !DILocation(line: 1142, column: 12, scope: !1456, inlinedAt: !1458)
!1570 = !DILocation(line: 1143, column: 25, scope: !1456, inlinedAt: !1458)
!1571 = !DILocation(line: 1144, column: 30, scope: !1456, inlinedAt: !1458)
!1572 = !DILocation(line: 1145, column: 22, scope: !1456, inlinedAt: !1458)
!1573 = !DILocation(line: 1145, column: 3, scope: !1456, inlinedAt: !1458)
!1574 = !DILocation(line: 1011, column: 7, scope: !457, inlinedAt: !1455)
!1575 = !DILocation(line: 1011, column: 12, scope: !457, inlinedAt: !1455)
!1576 = !DILocation(line: 1011, column: 9, scope: !457, inlinedAt: !1455)
!1577 = !DILocation(line: 1011, column: 7, scope: !458, inlinedAt: !1455)
!1578 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !1579)
!1579 = distinct !DILocation(line: 1015, column: 5, scope: !464, inlinedAt: !1455)
!1580 = !DILocation(line: 1012, column: 9, scope: !467, inlinedAt: !1455)
!1581 = !DILocation(line: 1012, column: 7, scope: !467, inlinedAt: !1455)
!1582 = !DILocation(line: 1018, column: 3, scope: !458, inlinedAt: !1455)
!1583 = !DILocation(line: 1147, column: 3, scope: !1457, inlinedAt: !1458)
!1584 = !DILocation(line: 720, column: 22, scope: !1459)
!1585 = !DILocation(line: 722, column: 15, scope: !1460)
!1586 = !DILocation(line: 725, column: 42, scope: !1483)
!1587 = !DILocation(line: 725, column: 50, scope: !1483)
!1588 = !DILocation(line: 725, column: 24, scope: !1483)
!1589 = !DILocation(line: 1142, column: 12, scope: !1456, inlinedAt: !1482)
!1590 = !DILocation(line: 1143, column: 25, scope: !1456, inlinedAt: !1482)
!1591 = !DILocation(line: 1144, column: 30, scope: !1456, inlinedAt: !1482)
!1592 = !DILocation(line: 1145, column: 22, scope: !1456, inlinedAt: !1482)
!1593 = !DILocation(line: 1145, column: 3, scope: !1456, inlinedAt: !1482)
!1594 = !DILocation(line: 1011, column: 7, scope: !457, inlinedAt: !1481)
!1595 = !DILocation(line: 1011, column: 12, scope: !457, inlinedAt: !1481)
!1596 = !DILocation(line: 1011, column: 9, scope: !457, inlinedAt: !1481)
!1597 = !DILocation(line: 1011, column: 7, scope: !458, inlinedAt: !1481)
!1598 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 1015, column: 5, scope: !464, inlinedAt: !1481)
!1600 = !DILocation(line: 1012, column: 9, scope: !467, inlinedAt: !1481)
!1601 = !DILocation(line: 1012, column: 7, scope: !467, inlinedAt: !1481)
!1602 = !DILocation(line: 1018, column: 3, scope: !458, inlinedAt: !1481)
!1603 = !DILocation(line: 1147, column: 3, scope: !1457, inlinedAt: !1482)
!1604 = !DILocation(line: 725, column: 22, scope: !1483)
!1605 = !DILocation(line: 727, column: 15, scope: !1460)
!1606 = !DILocation(line: 730, column: 44, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1460, file: !1, line: 729, column: 15)
!1608 = !DILocation(line: 730, column: 52, scope: !1607)
!1609 = !DILocation(line: 730, column: 24, scope: !1607)
!1610 = !DILocation(line: 730, column: 22, scope: !1607)
!1611 = !DILocation(line: 732, column: 15, scope: !1460)
!1612 = !DILocation(line: 735, column: 34, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1460, file: !1, line: 734, column: 15)
!1614 = !DILocation(line: 735, column: 42, scope: !1613)
!1615 = !DILocation(line: 735, column: 24, scope: !1613)
!1616 = !DILocation(line: 735, column: 22, scope: !1613)
!1617 = !DILocation(line: 737, column: 15, scope: !1460)
!1618 = !DILocation(line: 739, column: 15, scope: !1460)
!1619 = !DILocation(line: 740, column: 20, scope: !1461)
!1620 = !DILocation(line: 747, column: 3, scope: !1470)
!1621 = !DILocation(line: 748, column: 7, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1432, file: !1, line: 748, column: 7)
!1623 = !DILocation(line: 748, column: 14, scope: !1622)
!1624 = !DILocation(line: 748, column: 7, scope: !1432)
!1625 = !DILocation(line: 749, column: 9, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !1, line: 749, column: 9)
!1627 = distinct !DILexicalBlock(scope: !1622, file: !1, line: 748, column: 20)
!1628 = !DILocation(line: 749, column: 14, scope: !1626)
!1629 = !DILocation(line: 749, column: 11, scope: !1626)
!1630 = !DILocation(line: 749, column: 9, scope: !1627)
!1631 = !DILocation(line: 750, column: 11, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1626, file: !1, line: 749, column: 18)
!1633 = !DILocation(line: 750, column: 9, scope: !1632)
!1634 = !DILocation(line: 751, column: 5, scope: !1632)
!1635 = !DILocation(line: 752, column: 7, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1626, file: !1, line: 751, column: 12)
!1637 = !DILocation(line: 754, column: 3, scope: !1627)
!1638 = !DILocation(line: 754, column: 10, scope: !1622)
!1639 = !DILocation(line: 756, column: 9, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !1, line: 756, column: 9)
!1641 = distinct !DILexicalBlock(scope: !1622, file: !1, line: 754, column: 10)
!1642 = !DILocation(line: 756, column: 16, scope: !1640)
!1643 = !DILocation(line: 756, column: 9, scope: !1641)
!1644 = !DILocation(line: 757, column: 11, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !1, line: 757, column: 11)
!1646 = distinct !DILexicalBlock(scope: !1640, file: !1, line: 756, column: 22)
!1647 = !DILocation(line: 757, column: 16, scope: !1645)
!1648 = !DILocation(line: 757, column: 13, scope: !1645)
!1649 = !DILocation(line: 757, column: 11, scope: !1646)
!1650 = !DILocation(line: 758, column: 13, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1645, file: !1, line: 757, column: 22)
!1652 = !DILocation(line: 758, column: 11, scope: !1651)
!1653 = !DILocation(line: 759, column: 7, scope: !1651)
!1654 = !DILocation(line: 760, column: 9, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1645, file: !1, line: 759, column: 14)
!1656 = !DILocation(line: 762, column: 5, scope: !1646)
!1657 = !DILocation(line: 762, column: 12, scope: !1640)
!1658 = !DILocation(line: 764, column: 11, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !1, line: 764, column: 11)
!1660 = distinct !DILexicalBlock(scope: !1640, file: !1, line: 762, column: 12)
!1661 = !DILocation(line: 764, column: 16, scope: !1659)
!1662 = !DILocation(line: 764, column: 13, scope: !1659)
!1663 = !DILocation(line: 764, column: 11, scope: !1660)
!1664 = !DILocation(line: 765, column: 13, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !1, line: 765, column: 13)
!1666 = distinct !DILexicalBlock(scope: !1659, file: !1, line: 764, column: 26)
!1667 = !DILocation(line: 765, column: 20, scope: !1665)
!1668 = !DILocation(line: 765, column: 13, scope: !1666)
!1669 = !DILocation(line: 766, column: 15, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !1, line: 766, column: 15)
!1671 = distinct !DILexicalBlock(scope: !1665, file: !1, line: 765, column: 27)
!1672 = !DILocation(line: 766, column: 20, scope: !1670)
!1673 = !DILocation(line: 766, column: 17, scope: !1670)
!1674 = !DILocation(line: 766, column: 15, scope: !1671)
!1675 = !DILocation(line: 767, column: 17, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !1, line: 767, column: 17)
!1677 = distinct !DILexicalBlock(scope: !1670, file: !1, line: 766, column: 27)
!1678 = !DILocation(line: 767, column: 22, scope: !1676)
!1679 = !DILocation(line: 767, column: 19, scope: !1676)
!1680 = !DILocation(line: 767, column: 17, scope: !1677)
!1681 = !DILocation(line: 768, column: 19, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !1, line: 768, column: 19)
!1683 = distinct !DILexicalBlock(scope: !1676, file: !1, line: 767, column: 27)
!1684 = !DILocation(line: 768, column: 24, scope: !1682)
!1685 = !DILocation(line: 768, column: 21, scope: !1682)
!1686 = !DILocation(line: 768, column: 19, scope: !1683)
!1687 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 770, column: 17, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !1, line: 769, column: 17)
!1690 = distinct !DILexicalBlock(scope: !1682, file: !1, line: 768, column: 28)
!1691 = !DILocation(line: 772, column: 15, scope: !1690)
!1692 = !DILocation(line: 773, column: 17, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1682, file: !1, line: 772, column: 22)
!1694 = !DILocation(line: 775, column: 13, scope: !1683)
!1695 = !DILocation(line: 776, column: 15, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1676, file: !1, line: 775, column: 20)
!1697 = !DILocation(line: 778, column: 11, scope: !1677)
!1698 = !DILocation(line: 778, column: 18, scope: !1670)
!1699 = !DILocation(line: 780, column: 17, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !1, line: 780, column: 17)
!1701 = distinct !DILexicalBlock(scope: !1670, file: !1, line: 778, column: 18)
!1702 = !DILocation(line: 780, column: 24, scope: !1700)
!1703 = !DILocation(line: 780, column: 17, scope: !1701)
!1704 = !DILocation(line: 781, column: 19, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !1, line: 781, column: 19)
!1706 = distinct !DILexicalBlock(scope: !1700, file: !1, line: 780, column: 30)
!1707 = !DILocation(line: 781, column: 26, scope: !1705)
!1708 = !DILocation(line: 781, column: 19, scope: !1706)
!1709 = !DILocation(line: 782, column: 24, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1705, file: !1, line: 781, column: 34)
!1711 = !DILocation(line: 783, column: 15, scope: !1710)
!1712 = !DILocation(line: 784, column: 13, scope: !1706)
!1713 = !DILocation(line: 785, column: 19, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !1, line: 785, column: 19)
!1715 = distinct !DILexicalBlock(scope: !1700, file: !1, line: 784, column: 20)
!1716 = !DILocation(line: 785, column: 24, scope: !1714)
!1717 = !DILocation(line: 785, column: 21, scope: !1714)
!1718 = !DILocation(line: 785, column: 19, scope: !1715)
!1719 = !DILocation(line: 786, column: 21, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !1, line: 786, column: 21)
!1721 = distinct !DILexicalBlock(scope: !1714, file: !1, line: 785, column: 28)
!1722 = !DILocation(line: 786, column: 28, scope: !1720)
!1723 = !DILocation(line: 786, column: 21, scope: !1721)
!1724 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 788, column: 19, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !1, line: 787, column: 19)
!1727 = distinct !DILexicalBlock(scope: !1720, file: !1, line: 786, column: 36)
!1728 = !DILocation(line: 790, column: 17, scope: !1727)
!1729 = !DILocation(line: 791, column: 15, scope: !1721)
!1730 = !DILocation(line: 792, column: 21, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !1, line: 792, column: 21)
!1732 = distinct !DILexicalBlock(scope: !1714, file: !1, line: 791, column: 22)
!1733 = !DILocation(line: 792, column: 31, scope: !1731)
!1734 = !DILocation(line: 792, column: 28, scope: !1731)
!1735 = !DILocation(line: 792, column: 21, scope: !1732)
!1736 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 794, column: 19, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !1, line: 793, column: 19)
!1739 = distinct !DILexicalBlock(scope: !1731, file: !1, line: 792, column: 50)
!1740 = !DILocation(line: 796, column: 17, scope: !1739)
!1741 = !DILocation(line: 800, column: 9, scope: !1671)
!1742 = !DILocation(line: 801, column: 7, scope: !1666)
!1743 = !DILocation(line: 804, column: 10, scope: !1432)
!1744 = !DILocation(line: 805, column: 11, scope: !1432)
!1745 = !DILocation(line: 805, column: 3, scope: !1432)
!1746 = !DILocation(line: 807, column: 1, scope: !25)
!1747 = !DILocation(line: 808, column: 39, scope: !28)
!1748 = !DILocation(line: 808, column: 59, scope: !28)
!1749 = !DILocation(line: 808, column: 78, scope: !28)
!1750 = !DILocation(line: 809, column: 39, scope: !28)
!1751 = !DILocation(line: 809, column: 63, scope: !28)
!1752 = !DILocation(line: 809, column: 82, scope: !28)
!1753 = !DILocation(line: 810, column: 39, scope: !28)
!1754 = !DILocation(line: 810, column: 69, scope: !28)
!1755 = !DILocation(line: 810, column: 81, scope: !28)
!1756 = !DILocation(line: 812, column: 7, scope: !28)
!1757 = !DILocation(line: 812, column: 16, scope: !28)
!1758 = !DILocation(line: 815, column: 13, scope: !1304)
!1759 = !DILocation(line: 816, column: 7, scope: !1304)
!1760 = !DILocation(line: 817, column: 15, scope: !1304)
!1761 = !DILocation(line: 817, column: 13, scope: !1304)
!1762 = !DILocation(line: 818, column: 7, scope: !1308)
!1763 = !DILocation(line: 818, column: 17, scope: !1308)
!1764 = !DILocation(line: 818, column: 7, scope: !1304)
!1765 = !DILocation(line: 819, column: 5, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1308, file: !1, line: 818, column: 23)
!1767 = !DILocation(line: 821, column: 5, scope: !1314)
!1768 = !DILocation(line: 822, column: 9, scope: !1314)
!1769 = !DILocation(line: 822, column: 12, scope: !1313)
!1770 = !DILocation(line: 824, column: 15, scope: !1312)
!1771 = !DILocation(line: 824, column: 7, scope: !1312)
!1772 = !DILocation(line: 826, column: 7, scope: !1312)
!1773 = !DILocation(line: 832, column: 1, scope: !28)
!1774 = !DILocation(line: 833, column: 30, scope: !31)
!1775 = !DILocation(line: 837, column: 7, scope: !440)
!1776 = !DILocation(line: 838, column: 15, scope: !440)
!1777 = !DILocation(line: 838, column: 13, scope: !440)
!1778 = !DILocation(line: 839, column: 7, scope: !796)
!1779 = !DILocation(line: 839, column: 17, scope: !796)
!1780 = !DILocation(line: 839, column: 7, scope: !440)
!1781 = !DILocation(line: 840, column: 5, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !796, file: !1, line: 839, column: 23)
!1783 = !DILocation(line: 842, column: 5, scope: !802)
!1784 = !DILocation(line: 843, column: 9, scope: !802)
!1785 = !DILocation(line: 843, column: 12, scope: !801)
!1786 = !DILocation(line: 845, column: 7, scope: !800)
!1787 = !DILocation(line: 847, column: 7, scope: !800)
!1788 = !DILocation(line: 853, column: 1, scope: !31)
!1789 = !DILocation(line: 854, column: 34, scope: !34)
!1790 = !DILocation(line: 854, column: 48, scope: !34)
!1791 = !DILocation(line: 854, column: 64, scope: !34)
!1792 = !DILocation(line: 854, column: 85, scope: !34)
!1793 = !DILocation(line: 855, column: 34, scope: !34)
!1794 = !DILocation(line: 855, column: 55, scope: !34)
!1795 = !DILocation(line: 855, column: 78, scope: !34)
!1796 = !DILocation(line: 856, column: 34, scope: !34)
!1797 = !DILocation(line: 860, column: 7, scope: !1022)
!1798 = !DILocation(line: 861, column: 15, scope: !1022)
!1799 = !DILocation(line: 861, column: 13, scope: !1022)
!1800 = !DILocation(line: 862, column: 7, scope: !1156)
!1801 = !DILocation(line: 862, column: 17, scope: !1156)
!1802 = !DILocation(line: 862, column: 7, scope: !1022)
!1803 = !DILocation(line: 863, column: 5, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 862, column: 23)
!1805 = !DILocation(line: 865, column: 5, scope: !1162)
!1806 = !DILocation(line: 866, column: 9, scope: !1162)
!1807 = !DILocation(line: 866, column: 12, scope: !1161)
!1808 = !DILocation(line: 868, column: 7, scope: !1160)
!1809 = !DILocation(line: 870, column: 7, scope: !1160)
!1810 = !DILocation(line: 876, column: 1, scope: !34)
!1811 = !DILocation(line: 877, column: 35, scope: !37)
!1812 = !DILocation(line: 877, column: 62, scope: !37)
!1813 = !DILocation(line: 878, column: 35, scope: !37)
!1814 = !DILocation(line: 878, column: 57, scope: !37)
!1815 = !DILocation(line: 882, column: 7, scope: !1037)
!1816 = !DILocation(line: 883, column: 15, scope: !1037)
!1817 = !DILocation(line: 883, column: 13, scope: !1037)
!1818 = !DILocation(line: 884, column: 7, scope: !1197)
!1819 = !DILocation(line: 884, column: 17, scope: !1197)
!1820 = !DILocation(line: 884, column: 7, scope: !1037)
!1821 = !DILocation(line: 885, column: 5, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1197, file: !1, line: 884, column: 23)
!1823 = !DILocation(line: 887, column: 5, scope: !1203)
!1824 = !DILocation(line: 888, column: 9, scope: !1203)
!1825 = !DILocation(line: 888, column: 12, scope: !1202)
!1826 = !DILocation(line: 890, column: 7, scope: !1201)
!1827 = !DILocation(line: 892, column: 7, scope: !1201)
!1828 = !DILocation(line: 898, column: 1, scope: !37)
!1829 = !DILocation(line: 899, column: 35, scope: !40)
!1830 = !DILocation(line: 899, column: 58, scope: !40)
!1831 = !DILocation(line: 903, column: 7, scope: !431)
!1832 = !DILocation(line: 904, column: 15, scope: !431)
!1833 = !DILocation(line: 904, column: 13, scope: !431)
!1834 = !DILocation(line: 905, column: 7, scope: !778)
!1835 = !DILocation(line: 905, column: 17, scope: !778)
!1836 = !DILocation(line: 905, column: 7, scope: !431)
!1837 = !DILocation(line: 906, column: 5, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !778, file: !1, line: 905, column: 23)
!1839 = !DILocation(line: 908, column: 5, scope: !784)
!1840 = !DILocation(line: 909, column: 9, scope: !784)
!1841 = !DILocation(line: 909, column: 12, scope: !783)
!1842 = !DILocation(line: 911, column: 7, scope: !782)
!1843 = !DILocation(line: 913, column: 7, scope: !782)
!1844 = !DILocation(line: 919, column: 1, scope: !40)
!1845 = !DILocation(line: 924, column: 7, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !1, line: 924, column: 7)
!1847 = distinct !DILexicalBlock(scope: !41, file: !1, line: 923, column: 3)
!1848 = !DILocation(line: 924, column: 12, scope: !1846)
!1849 = !DILocation(line: 924, column: 9, scope: !1846)
!1850 = !DILocation(line: 924, column: 7, scope: !1847)
!1851 = !DILocation(line: 925, column: 9, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1846, file: !1, line: 924, column: 16)
!1853 = !DILocation(line: 925, column: 7, scope: !1852)
!1854 = !DILocation(line: 926, column: 3, scope: !1852)
!1855 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !1856)
!1856 = distinct !DILocation(line: 928, column: 5, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !1, line: 927, column: 5)
!1858 = distinct !DILexicalBlock(scope: !1846, file: !1, line: 926, column: 10)
!1859 = !DILocation(line: 931, column: 3, scope: !1847)
!1860 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !42, file: !1, line: 934, type: !13)
!1861 = !DILocation(line: 934, column: 23, scope: !42)
!1862 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !42, file: !1, line: 934, type: !13)
!1863 = !DILocation(line: 934, column: 42, scope: !42)
!1864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "returnVal2", scope: !42, file: !1, line: 936, type: !13)
!1865 = !DILocation(line: 936, column: 7, scope: !42)
!1866 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compRetStatus1", scope: !42, file: !1, line: 937, type: !13)
!1867 = !DILocation(line: 937, column: 7, scope: !42)
!1868 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lcontext", scope: !42, file: !1, line: 938, type: !13)
!1869 = !DILocation(line: 938, column: 7, scope: !42)
!1870 = !DILocation(line: 938, column: 18, scope: !42)
!1871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp7", scope: !42, file: !1, line: 939, type: !5)
!1872 = !DILocation(line: 939, column: 17, scope: !42)
!1873 = !DILocation(line: 942, column: 7, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !1, line: 942, column: 7)
!1875 = distinct !DILexicalBlock(scope: !42, file: !1, line: 941, column: 3)
!1876 = !DILocation(line: 1021, column: 20, scope: !46, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 575, column: 3, scope: !1250, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 944, column: 22, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !1, line: 943, column: 5)
!1880 = distinct !DILexicalBlock(scope: !1874, file: !1, line: 942, column: 23)
!1881 = !DILocation(line: 1021, column: 32, scope: !46, inlinedAt: !1877)
!1882 = !DILocation(line: 1021, column: 48, scope: !46, inlinedAt: !1877)
!1883 = !DILocation(line: 1022, column: 7, scope: !46, inlinedAt: !1877)
!1884 = !DILocation(line: 570, column: 27, scope: !17, inlinedAt: !1878)
!1885 = !DILocation(line: 570, column: 46, scope: !17, inlinedAt: !1878)
!1886 = !DILocation(line: 570, column: 56, scope: !17, inlinedAt: !1878)
!1887 = !DILocation(line: 942, column: 7, scope: !1875)
!1888 = !DILocation(line: 944, column: 40, scope: !1879)
!1889 = !DILocation(line: 944, column: 54, scope: !1879)
!1890 = !DILocation(line: 944, column: 59, scope: !1879)
!1891 = !DILocation(line: 944, column: 22, scope: !1879)
!1892 = !DILocation(line: 575, column: 14, scope: !1250, inlinedAt: !1878)
!1893 = !DILocation(line: 575, column: 3, scope: !1250, inlinedAt: !1878)
!1894 = !DILocation(line: 1022, column: 11, scope: !46, inlinedAt: !1877)
!1895 = !DILocation(line: 1025, column: 18, scope: !1257, inlinedAt: !1877)
!1896 = !DILocation(line: 1026, column: 11, scope: !1257, inlinedAt: !1877)
!1897 = !DILocation(line: 1026, column: 3, scope: !1257, inlinedAt: !1877)
!1898 = !DILocation(line: 577, column: 3, scope: !1251, inlinedAt: !1878)
!1899 = !DILocation(line: 944, column: 20, scope: !1879)
!1900 = !DILocation(line: 947, column: 34, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1880, file: !1, line: 946, column: 5)
!1902 = !DILocation(line: 947, column: 18, scope: !1901)
!1903 = !DILocation(line: 947, column: 16, scope: !1901)
!1904 = !DILocation(line: 948, column: 9, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1901, file: !1, line: 948, column: 9)
!1906 = !DILocation(line: 948, column: 20, scope: !1905)
!1907 = !DILocation(line: 948, column: 9, scope: !1901)
!1908 = !DILocation(line: 924, column: 7, scope: !1846, inlinedAt: !1909)
!1909 = distinct !DILocation(line: 950, column: 7, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !1, line: 949, column: 7)
!1911 = distinct !DILexicalBlock(scope: !1905, file: !1, line: 948, column: 36)
!1912 = !DILocation(line: 924, column: 12, scope: !1846, inlinedAt: !1909)
!1913 = !DILocation(line: 924, column: 9, scope: !1846, inlinedAt: !1909)
!1914 = !DILocation(line: 924, column: 7, scope: !1847, inlinedAt: !1909)
!1915 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !1916)
!1916 = distinct !DILocation(line: 928, column: 5, scope: !1857, inlinedAt: !1909)
!1917 = !DILocation(line: 925, column: 9, scope: !1852, inlinedAt: !1909)
!1918 = !DILocation(line: 925, column: 7, scope: !1852, inlinedAt: !1909)
!1919 = !DILocation(line: 952, column: 5, scope: !1911)
!1920 = !DILocation(line: 954, column: 3, scope: !1880)
!1921 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_10", scope: !1875, file: !1, line: 955, type: !13)
!1922 = !DILocation(line: 955, column: 7, scope: !1875)
!1923 = !DILocation(line: 956, column: 16, scope: !1875)
!1924 = !DILocation(line: 956, column: 14, scope: !1875)
!1925 = !DILocation(line: 957, column: 7, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1875, file: !1, line: 957, column: 7)
!1927 = !DILocation(line: 957, column: 18, scope: !1926)
!1928 = !DILocation(line: 957, column: 7, scope: !1875)
!1929 = !DILocation(line: 958, column: 5, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1926, file: !1, line: 957, column: 24)
!1931 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_11", scope: !1932, file: !1, line: 960, type: !13)
!1932 = distinct !DILexicalBlock(scope: !1926, file: !1, line: 959, column: 10)
!1933 = !DILocation(line: 960, column: 9, scope: !1932)
!1934 = !DILocation(line: 961, column: 18, scope: !1932)
!1935 = !DILocation(line: 961, column: 16, scope: !1932)
!1936 = !DILocation(line: 962, column: 9, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1932, file: !1, line: 962, column: 9)
!1938 = !DILocation(line: 962, column: 20, scope: !1937)
!1939 = !DILocation(line: 962, column: 9, scope: !1932)
!1940 = !DILocation(line: 963, column: 7, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1937, file: !1, line: 962, column: 26)
!1942 = !DILocation(line: 965, column: 7, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1937, file: !1, line: 964, column: 12)
!1944 = !DILocation(line: 966, column: 11, scope: !1943)
!1945 = !DILocation(line: 966, column: 14, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1943, file: !1, line: 966, column: 11)
!1947 = !DILocation(line: 968, column: 20, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1946, file: !1, line: 966, column: 14)
!1949 = !DILocation(line: 969, column: 9, scope: !1948)
!1950 = !DILocation(line: 971, column: 20, scope: !1948)
!1951 = !DILocation(line: 972, column: 9, scope: !1948)
!1952 = !DILocation(line: 974, column: 20, scope: !1948)
!1953 = !DILocation(line: 975, column: 9, scope: !1948)
!1954 = !DILocation(line: 976, column: 14, scope: !1946)
!1955 = !DILocation(line: 981, column: 7, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1875, file: !1, line: 981, column: 7)
!1957 = !DILocation(line: 981, column: 12, scope: !1956)
!1958 = !DILocation(line: 981, column: 9, scope: !1956)
!1959 = !DILocation(line: 981, column: 7, scope: !1875)
!1960 = !DILocation(line: 982, column: 9, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1956, file: !1, line: 981, column: 16)
!1962 = !DILocation(line: 982, column: 7, scope: !1961)
!1963 = !DILocation(line: 983, column: 25, scope: !1961)
!1964 = !DILocation(line: 983, column: 23, scope: !1961)
!1965 = !DILocation(line: 984, column: 3, scope: !1961)
!1966 = !DILocation(line: 985, column: 9, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !1, line: 985, column: 9)
!1968 = distinct !DILexicalBlock(scope: !1956, file: !1, line: 984, column: 10)
!1969 = !DILocation(line: 985, column: 14, scope: !1967)
!1970 = !DILocation(line: 985, column: 11, scope: !1967)
!1971 = !DILocation(line: 985, column: 9, scope: !1968)
!1972 = !DILocation(line: 986, column: 11, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !1, line: 986, column: 11)
!1974 = distinct !DILexicalBlock(scope: !1967, file: !1, line: 985, column: 20)
!1975 = !DILocation(line: 986, column: 22, scope: !1973)
!1976 = !DILocation(line: 986, column: 11, scope: !1974)
!1977 = !DILocation(line: 987, column: 13, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1973, file: !1, line: 986, column: 30)
!1979 = !DILocation(line: 987, column: 11, scope: !1978)
!1980 = !DILocation(line: 988, column: 29, scope: !1978)
!1981 = !DILocation(line: 988, column: 27, scope: !1978)
!1982 = !DILocation(line: 989, column: 7, scope: !1978)
!1983 = !DILocation(line: 990, column: 13, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1973, file: !1, line: 989, column: 14)
!1985 = !DILocation(line: 990, column: 11, scope: !1984)
!1986 = !DILocation(line: 991, column: 29, scope: !1984)
!1987 = !DILocation(line: 991, column: 27, scope: !1984)
!1988 = !DILocation(line: 993, column: 5, scope: !1974)
!1989 = !DILocation(line: 994, column: 11, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !1, line: 994, column: 11)
!1991 = distinct !DILexicalBlock(scope: !1967, file: !1, line: 993, column: 12)
!1992 = !DILocation(line: 994, column: 16, scope: !1990)
!1993 = !DILocation(line: 994, column: 13, scope: !1990)
!1994 = !DILocation(line: 994, column: 11, scope: !1991)
!1995 = !DILocation(line: 995, column: 13, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1990, file: !1, line: 994, column: 23)
!1997 = !DILocation(line: 995, column: 11, scope: !1996)
!1998 = !DILocation(line: 996, column: 29, scope: !1996)
!1999 = !DILocation(line: 996, column: 27, scope: !1996)
!2000 = !DILocation(line: 997, column: 7, scope: !1996)
!2001 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !2002)
!2002 = distinct !DILocation(line: 999, column: 9, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !1, line: 998, column: 9)
!2004 = distinct !DILexicalBlock(scope: !1990, file: !1, line: 997, column: 14)
!2005 = !DILocation(line: 1004, column: 11, scope: !1875)
!2006 = !DILocation(line: 1004, column: 3, scope: !1875)
!2007 = !DILocation(line: 1021, column: 20, scope: !46)
!2008 = !DILocation(line: 1021, column: 32, scope: !46)
!2009 = !DILocation(line: 1021, column: 48, scope: !46)
!2010 = !DILocation(line: 1022, column: 7, scope: !46)
!2011 = !DILocation(line: 1022, column: 11, scope: !46)
!2012 = !DILocation(line: 1025, column: 18, scope: !1257)
!2013 = !DILocation(line: 1026, column: 11, scope: !1257)
!2014 = !DILocation(line: 1026, column: 3, scope: !1257)
!2015 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Object", arg: 1, scope: !47, file: !1, line: 1029, type: !13)
!2016 = !DILocation(line: 1029, column: 31, scope: !47)
!2017 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitReason", arg: 2, scope: !47, file: !1, line: 1029, type: !13)
!2018 = !DILocation(line: 1029, column: 44, scope: !47)
!2019 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitMode", arg: 3, scope: !47, file: !1, line: 1029, type: !13)
!2020 = !DILocation(line: 1029, column: 61, scope: !47)
!2021 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Alertable", arg: 4, scope: !47, file: !1, line: 1029, type: !13)
!2022 = !DILocation(line: 1029, column: 76, scope: !47)
!2023 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Timeout", arg: 5, scope: !47, file: !1, line: 1030, type: !13)
!2024 = !DILocation(line: 1030, column: 31, scope: !47)
!2025 = !DILocation(line: 1034, column: 7, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !1, line: 1034, column: 7)
!2027 = distinct !DILexicalBlock(scope: !47, file: !1, line: 1033, column: 3)
!2028 = !DILocation(line: 1034, column: 12, scope: !2026)
!2029 = !DILocation(line: 1034, column: 9, scope: !2026)
!2030 = !DILocation(line: 1034, column: 7, scope: !2027)
!2031 = !DILocation(line: 1035, column: 9, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !1, line: 1035, column: 9)
!2033 = distinct !DILexicalBlock(scope: !2026, file: !1, line: 1034, column: 18)
!2034 = !DILocation(line: 1035, column: 24, scope: !2032)
!2035 = !DILocation(line: 1035, column: 9, scope: !2033)
!2036 = !DILocation(line: 1036, column: 11, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2032, file: !1, line: 1035, column: 30)
!2038 = !DILocation(line: 1036, column: 9, scope: !2037)
!2039 = !DILocation(line: 1037, column: 22, scope: !2037)
!2040 = !DILocation(line: 1038, column: 5, scope: !2037)
!2041 = !DILocation(line: 1039, column: 7, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2032, file: !1, line: 1038, column: 12)
!2043 = !DILocation(line: 1041, column: 3, scope: !2033)
!2044 = !DILocation(line: 1041, column: 10, scope: !2026)
!2045 = !DILocation(line: 1043, column: 9, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !1, line: 1043, column: 9)
!2047 = distinct !DILexicalBlock(scope: !2026, file: !1, line: 1041, column: 10)
!2048 = !DILocation(line: 1043, column: 19, scope: !2046)
!2049 = !DILocation(line: 1043, column: 9, scope: !2047)
!2050 = !DILocation(line: 1044, column: 11, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2046, file: !1, line: 1043, column: 25)
!2052 = !DILocation(line: 1044, column: 9, scope: !2051)
!2053 = !DILocation(line: 1045, column: 17, scope: !2051)
!2054 = !DILocation(line: 1046, column: 5, scope: !2051)
!2055 = !DILocation(line: 1047, column: 11, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !1, line: 1047, column: 11)
!2057 = distinct !DILexicalBlock(scope: !2046, file: !1, line: 1046, column: 12)
!2058 = !DILocation(line: 1047, column: 16, scope: !2056)
!2059 = !DILocation(line: 1047, column: 13, scope: !2056)
!2060 = !DILocation(line: 1047, column: 11, scope: !2057)
!2061 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !2062)
!2062 = distinct !DILocation(line: 1049, column: 9, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !1, line: 1048, column: 9)
!2064 = distinct !DILexicalBlock(scope: !2056, file: !1, line: 1047, column: 22)
!2065 = !DILocation(line: 1051, column: 7, scope: !2064)
!2066 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_12", scope: !2027, file: !1, line: 1054, type: !13)
!2067 = !DILocation(line: 1054, column: 7, scope: !2027)
!2068 = !DILocation(line: 1055, column: 16, scope: !2027)
!2069 = !DILocation(line: 1055, column: 14, scope: !2027)
!2070 = !DILocation(line: 1056, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2027, file: !1, line: 1056, column: 7)
!2072 = !DILocation(line: 1056, column: 18, scope: !2071)
!2073 = !DILocation(line: 1056, column: 7, scope: !2027)
!2074 = !DILocation(line: 1057, column: 5, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2071, file: !1, line: 1056, column: 24)
!2076 = !DILocation(line: 1059, column: 5, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2071, file: !1, line: 1058, column: 10)
!2078 = !DILocation(line: 1060, column: 9, scope: !2077)
!2079 = !DILocation(line: 1060, column: 12, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2077, file: !1, line: 1060, column: 9)
!2081 = !DILocation(line: 1062, column: 7, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2080, file: !1, line: 1060, column: 12)
!2083 = !DILocation(line: 1064, column: 7, scope: !2082)
!2084 = !DILocation(line: 1070, column: 1, scope: !47)
!2085 = !DILocation(line: 1071, column: 35, scope: !50)
!2086 = !DILocation(line: 1071, column: 48, scope: !50)
!2087 = !DILocation(line: 1071, column: 68, scope: !50)
!2088 = !DILocation(line: 1071, column: 85, scope: !50)
!2089 = !DILocation(line: 1072, column: 35, scope: !50)
!2090 = !DILocation(line: 1072, column: 48, scope: !50)
!2091 = !DILocation(line: 1076, column: 7, scope: !188)
!2092 = !DILocation(line: 1077, column: 16, scope: !188)
!2093 = !DILocation(line: 1077, column: 14, scope: !188)
!2094 = !DILocation(line: 1078, column: 7, scope: !255)
!2095 = !DILocation(line: 1078, column: 18, scope: !255)
!2096 = !DILocation(line: 1078, column: 7, scope: !188)
!2097 = !DILocation(line: 1079, column: 5, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !255, file: !1, line: 1078, column: 24)
!2099 = !DILocation(line: 1081, column: 5, scope: !261)
!2100 = !DILocation(line: 1082, column: 9, scope: !261)
!2101 = !DILocation(line: 1082, column: 12, scope: !260)
!2102 = !DILocation(line: 1084, column: 7, scope: !259)
!2103 = !DILocation(line: 1086, column: 7, scope: !259)
!2104 = !DILocation(line: 1092, column: 1, scope: !50)
!2105 = !DILocation(line: 1093, column: 30, scope: !53)
!2106 = !DILocation(line: 1093, column: 49, scope: !53)
!2107 = !DILocation(line: 1093, column: 69, scope: !53)
!2108 = !DILocation(line: 1094, column: 30, scope: !53)
!2109 = !DILocation(line: 1094, column: 50, scope: !53)
!2110 = !DILocation(line: 1094, column: 65, scope: !53)
!2111 = !DILocation(line: 1094, column: 84, scope: !53)
!2112 = !DILocation(line: 1098, column: 7, scope: !171)
!2113 = !DILocation(line: 1099, column: 16, scope: !171)
!2114 = !DILocation(line: 1099, column: 14, scope: !171)
!2115 = !DILocation(line: 1100, column: 7, scope: !222)
!2116 = !DILocation(line: 1100, column: 18, scope: !222)
!2117 = !DILocation(line: 1100, column: 7, scope: !171)
!2118 = !DILocation(line: 1101, column: 5, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !222, file: !1, line: 1100, column: 24)
!2120 = !DILocation(line: 1103, column: 5, scope: !228)
!2121 = !DILocation(line: 1104, column: 9, scope: !228)
!2122 = !DILocation(line: 1104, column: 12, scope: !227)
!2123 = !DILocation(line: 1106, column: 7, scope: !226)
!2124 = !DILocation(line: 1108, column: 7, scope: !226)
!2125 = !DILocation(line: 1114, column: 1, scope: !53)
!2126 = !DILocation(line: 1115, column: 17, scope: !56)
!2127 = !DILocation(line: 1119, column: 7, scope: !194)
!2128 = !DILocation(line: 1120, column: 16, scope: !194)
!2129 = !DILocation(line: 1120, column: 14, scope: !194)
!2130 = !DILocation(line: 1121, column: 7, scope: !270)
!2131 = !DILocation(line: 1121, column: 18, scope: !270)
!2132 = !DILocation(line: 1121, column: 7, scope: !194)
!2133 = !DILocation(line: 1122, column: 5, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !270, file: !1, line: 1121, column: 24)
!2135 = !DILocation(line: 1124, column: 5, scope: !276)
!2136 = !DILocation(line: 1125, column: 9, scope: !276)
!2137 = !DILocation(line: 1125, column: 12, scope: !275)
!2138 = !DILocation(line: 1127, column: 7, scope: !274)
!2139 = !DILocation(line: 1129, column: 7, scope: !274)
!2140 = !DILocation(line: 1135, column: 1, scope: !56)
!2141 = !DILocation(line: 1136, column: 27, scope: !57)
!2142 = !DILocation(line: 1136, column: 46, scope: !57)
!2143 = !DILocation(line: 1137, column: 7, scope: !57)
!2144 = !DILocation(line: 1138, column: 7, scope: !57)
!2145 = !DILocation(line: 1142, column: 12, scope: !1456)
!2146 = !DILocation(line: 1143, column: 25, scope: !1456)
!2147 = !DILocation(line: 1144, column: 30, scope: !1456)
!2148 = !DILocation(line: 1145, column: 22, scope: !1456)
!2149 = !DILocation(line: 1145, column: 3, scope: !1456)
!2150 = !DILocation(line: 1011, column: 7, scope: !457, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 1145, column: 3, scope: !1456)
!2152 = !DILocation(line: 1011, column: 12, scope: !457, inlinedAt: !2151)
!2153 = !DILocation(line: 1011, column: 9, scope: !457, inlinedAt: !2151)
!2154 = !DILocation(line: 1011, column: 7, scope: !458, inlinedAt: !2151)
!2155 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !2156)
!2156 = distinct !DILocation(line: 1015, column: 5, scope: !464, inlinedAt: !2151)
!2157 = !DILocation(line: 1012, column: 9, scope: !467, inlinedAt: !2151)
!2158 = !DILocation(line: 1012, column: 7, scope: !467, inlinedAt: !2151)
!2159 = !DILocation(line: 1018, column: 3, scope: !458, inlinedAt: !2151)
!2160 = !DILocation(line: 1007, column: 29, scope: !43, inlinedAt: !2151)
!2161 = !DILocation(line: 1007, column: 39, scope: !43, inlinedAt: !2151)
!2162 = !DILocation(line: 1147, column: 3, scope: !1457)
!2163 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !58, file: !1, line: 1151, type: !13)
!2164 = !DILocation(line: 1151, column: 29, scope: !58)
!2165 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !58, file: !1, line: 1151, type: !13)
!2166 = !DILocation(line: 1151, column: 48, scope: !58)
!2167 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__HoldNewRequests", scope: !58, file: !1, line: 1152, type: !13)
!2168 = !DILocation(line: 1152, column: 7, scope: !58)
!2169 = !DILocation(line: 1152, column: 44, scope: !58)
!2170 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__IsRemoved", scope: !58, file: !1, line: 1153, type: !13)
!2171 = !DILocation(line: 1153, column: 7, scope: !58)
!2172 = !DILocation(line: 1153, column: 38, scope: !58)
!2173 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !58, file: !1, line: 1154, type: !13)
!2174 = !DILocation(line: 1154, column: 7, scope: !58)
!2175 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__IsStarted", scope: !58, file: !1, line: 1155, type: !13)
!2176 = !DILocation(line: 1155, column: 7, scope: !58)
!2177 = !DILocation(line: 1155, column: 38, scope: !58)
!2178 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !58, file: !1, line: 1156, type: !13)
!2179 = !DILocation(line: 1156, column: 7, scope: !58)
!2180 = !DILocation(line: 1156, column: 30, scope: !58)
!2181 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !58, file: !1, line: 1157, type: !13)
!2182 = !DILocation(line: 1157, column: 7, scope: !58)
!2183 = !DILocation(line: 1157, column: 50, scope: !58)
!2184 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__TargetObject", scope: !58, file: !1, line: 1158, type: !13)
!2185 = !DILocation(line: 1158, column: 7, scope: !58)
!2186 = !DILocation(line: 1158, column: 41, scope: !58)
!2187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Parameters__DeviceIoControl__OutputBufferLength", scope: !58, file: !1, line: 1159, type: !13)
!2188 = !DILocation(line: 1159, column: 7, scope: !58)
!2189 = !DILocation(line: 1159, column: 64, scope: !58)
!2190 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__MOUNTDEV_NAME", scope: !58, file: !1, line: 1160, type: !13)
!2191 = !DILocation(line: 1160, column: 7, scope: !58)
!2192 = !DILocation(line: 1160, column: 31, scope: !58)
!2193 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__AssociatedIrp__SystemBuffer", scope: !58, file: !1, line: 1161, type: !13)
!2194 = !DILocation(line: 1161, column: 7, scope: !58)
!2195 = !DILocation(line: 1161, column: 42, scope: !58)
!2196 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mountName__NameLength", scope: !58, file: !1, line: 1162, type: !13)
!2197 = !DILocation(line: 1162, column: 7, scope: !58)
!2198 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__DeviceName__Length", scope: !58, file: !1, line: 1163, type: !13)
!2199 = !DILocation(line: 1163, column: 7, scope: !58)
!2200 = !DILocation(line: 1163, column: 47, scope: !58)
!2201 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__USHORT", scope: !58, file: !1, line: 1164, type: !13)
!2202 = !DILocation(line: 1164, column: 7, scope: !58)
!2203 = !DILocation(line: 1164, column: 24, scope: !58)
!2204 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__InterfaceString__Buffer", scope: !58, file: !1, line: 1165, type: !13)
!2205 = !DILocation(line: 1165, column: 7, scope: !58)
!2206 = !DILocation(line: 1165, column: 52, scope: !58)
!2207 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "uniqueId__UniqueIdLength", scope: !58, file: !1, line: 1166, type: !13)
!2208 = !DILocation(line: 1166, column: 7, scope: !58)
!2209 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__InterfaceString__Length", scope: !58, file: !1, line: 1167, type: !13)
!2210 = !DILocation(line: 1167, column: 7, scope: !58)
!2211 = !DILocation(line: 1167, column: 52, scope: !58)
!2212 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__MOUNTDEV_UNIQUE_ID", scope: !58, file: !1, line: 1168, type: !13)
!2213 = !DILocation(line: 1168, column: 7, scope: !58)
!2214 = !DILocation(line: 1168, column: 36, scope: !58)
!2215 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Parameters__DeviceIoControl__InputBufferLength", scope: !58, file: !1, line: 1169, type: !13)
!2216 = !DILocation(line: 1169, column: 7, scope: !58)
!2217 = !DILocation(line: 1169, column: 63, scope: !58)
!2218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__FORMAT_PARAMETERS", scope: !58, file: !1, line: 1170, type: !13)
!2219 = !DILocation(line: 1170, column: 7, scope: !58)
!2220 = !DILocation(line: 1170, column: 35, scope: !58)
!2221 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Parameters__DeviceIoControl__IoControlCode___1", scope: !58, file: !1, line: 1171, type: !13)
!2222 = !DILocation(line: 1171, column: 7, scope: !58)
!2223 = !DILocation(line: 1171, column: 63, scope: !58)
!2224 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__FORMAT_EX_PARAMETERS", scope: !58, file: !1, line: 1172, type: !13)
!2225 = !DILocation(line: 1172, column: 7, scope: !58)
!2226 = !DILocation(line: 1172, column: 38, scope: !58)
!2227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "formatExParameters__FormatGapLength", scope: !58, file: !1, line: 1173, type: !13)
!2228 = !DILocation(line: 1173, column: 7, scope: !58)
!2229 = !DILocation(line: 1173, column: 45, scope: !58)
!2230 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "formatExParameters__SectorsPerTrack", scope: !58, file: !1, line: 1174, type: !13)
!2231 = !DILocation(line: 1174, column: 7, scope: !58)
!2232 = !DILocation(line: 1174, column: 45, scope: !58)
!2233 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__DISK_GEOMETRY", scope: !58, file: !1, line: 1175, type: !13)
!2234 = !DILocation(line: 1175, column: 7, scope: !58)
!2235 = !DILocation(line: 1175, column: 31, scope: !58)
!2236 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status___0", scope: !58, file: !1, line: 1176, type: !13)
!2237 = !DILocation(line: 1176, column: 7, scope: !58)
!2238 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension", scope: !58, file: !1, line: 1177, type: !13)
!2239 = !DILocation(line: 1177, column: 7, scope: !58)
!2240 = !DILocation(line: 1177, column: 27, scope: !58)
!2241 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ntStatus", scope: !58, file: !1, line: 1178, type: !13)
!2242 = !DILocation(line: 1178, column: 7, scope: !58)
!2243 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outputBufferLength", scope: !58, file: !1, line: 1179, type: !13)
!2244 = !DILocation(line: 1179, column: 7, scope: !58)
!2245 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lowestDriveMediaType", scope: !58, file: !1, line: 1180, type: !13)
!2246 = !DILocation(line: 1180, column: 7, scope: !58)
!2247 = !DILocation(line: 1180, column: 30, scope: !58)
!2248 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "highestDriveMediaType", scope: !58, file: !1, line: 1181, type: !13)
!2249 = !DILocation(line: 1181, column: 7, scope: !58)
!2250 = !DILocation(line: 1181, column: 31, scope: !58)
!2251 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "formatExParametersSize", scope: !58, file: !1, line: 1182, type: !13)
!2252 = !DILocation(line: 1182, column: 7, scope: !58)
!2253 = !DILocation(line: 1182, column: 32, scope: !58)
!2254 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "formatExParameters", scope: !58, file: !1, line: 1183, type: !13)
!2255 = !DILocation(line: 1183, column: 7, scope: !58)
!2256 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !58, file: !1, line: 1184, type: !13)
!2257 = !DILocation(line: 1184, column: 7, scope: !58)
!2258 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mountName", scope: !58, file: !1, line: 1185, type: !13)
!2259 = !DILocation(line: 1185, column: 7, scope: !58)
!2260 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "uniqueId", scope: !58, file: !1, line: 1186, type: !13)
!2261 = !DILocation(line: 1186, column: 7, scope: !58)
!2262 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___0", scope: !58, file: !1, line: 1187, type: !13)
!2263 = !DILocation(line: 1187, column: 7, scope: !58)
!2264 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp39", scope: !58, file: !1, line: 1188, type: !13)
!2265 = !DILocation(line: 1188, column: 7, scope: !58)
!2266 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp40", scope: !58, file: !1, line: 1189, type: !13)
!2267 = !DILocation(line: 1189, column: 7, scope: !58)
!2268 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp41", scope: !58, file: !1, line: 1190, type: !13)
!2269 = !DILocation(line: 1190, column: 7, scope: !58)
!2270 = !DILocation(line: 1190, column: 21, scope: !58)
!2271 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp42", scope: !58, file: !1, line: 1191, type: !13)
!2272 = !DILocation(line: 1191, column: 7, scope: !58)
!2273 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp43", scope: !58, file: !1, line: 1192, type: !13)
!2274 = !DILocation(line: 1192, column: 7, scope: !58)
!2275 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp44", scope: !58, file: !1, line: 1193, type: !13)
!2276 = !DILocation(line: 1193, column: 7, scope: !58)
!2277 = !DILocation(line: 1193, column: 21, scope: !58)
!2278 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp45", scope: !58, file: !1, line: 1194, type: !13)
!2279 = !DILocation(line: 1194, column: 7, scope: !58)
!2280 = !DILocation(line: 1194, column: 21, scope: !58)
!2281 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp46", scope: !58, file: !1, line: 1195, type: !13)
!2282 = !DILocation(line: 1195, column: 7, scope: !58)
!2283 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp47", scope: !58, file: !1, line: 1196, type: !13)
!2284 = !DILocation(line: 1196, column: 7, scope: !58)
!2285 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp48", scope: !58, file: !1, line: 1197, type: !13)
!2286 = !DILocation(line: 1197, column: 7, scope: !58)
!2287 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp49", scope: !58, file: !1, line: 1198, type: !13)
!2288 = !DILocation(line: 1198, column: 7, scope: !58)
!2289 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp50", scope: !58, file: !1, line: 1199, type: !13)
!2290 = !DILocation(line: 1199, column: 7, scope: !58)
!2291 = !DILocation(line: 1199, column: 21, scope: !58)
!2292 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp51", scope: !58, file: !1, line: 1200, type: !13)
!2293 = !DILocation(line: 1200, column: 7, scope: !58)
!2294 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp52", scope: !58, file: !1, line: 1201, type: !13)
!2295 = !DILocation(line: 1201, column: 7, scope: !58)
!2296 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp53", scope: !58, file: !1, line: 1202, type: !13)
!2297 = !DILocation(line: 1202, column: 7, scope: !58)
!2298 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp54", scope: !58, file: !1, line: 1203, type: !13)
!2299 = !DILocation(line: 1203, column: 7, scope: !58)
!2300 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp55", scope: !58, file: !1, line: 1204, type: !13)
!2301 = !DILocation(line: 1204, column: 7, scope: !58)
!2302 = !DILocation(line: 1204, column: 21, scope: !58)
!2303 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp56", scope: !58, file: !1, line: 1205, type: !13)
!2304 = !DILocation(line: 1205, column: 7, scope: !58)
!2305 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp57", scope: !58, file: !1, line: 1206, type: !13)
!2306 = !DILocation(line: 1206, column: 7, scope: !58)
!2307 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp58", scope: !58, file: !1, line: 1207, type: !13)
!2308 = !DILocation(line: 1207, column: 7, scope: !58)
!2309 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp59", scope: !58, file: !1, line: 1208, type: !13)
!2310 = !DILocation(line: 1208, column: 7, scope: !58)
!2311 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp60", scope: !58, file: !1, line: 1209, type: !13)
!2312 = !DILocation(line: 1209, column: 7, scope: !58)
!2313 = !DILocation(line: 1209, column: 21, scope: !58)
!2314 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp61", scope: !58, file: !1, line: 1210, type: !13)
!2315 = !DILocation(line: 1210, column: 7, scope: !58)
!2316 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp62", scope: !58, file: !1, line: 1211, type: !13)
!2317 = !DILocation(line: 1211, column: 7, scope: !58)
!2318 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp63", scope: !58, file: !1, line: 1212, type: !13)
!2319 = !DILocation(line: 1212, column: 7, scope: !58)
!2320 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp64", scope: !58, file: !1, line: 1213, type: !13)
!2321 = !DILocation(line: 1213, column: 7, scope: !58)
!2322 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp65", scope: !58, file: !1, line: 1214, type: !13)
!2323 = !DILocation(line: 1214, column: 7, scope: !58)
!2324 = !DILocation(line: 1214, column: 21, scope: !58)
!2325 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp66", scope: !58, file: !1, line: 1215, type: !13)
!2326 = !DILocation(line: 1215, column: 7, scope: !58)
!2327 = !DILocation(line: 1215, column: 21, scope: !58)
!2328 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp67", scope: !58, file: !1, line: 1216, type: !13)
!2329 = !DILocation(line: 1216, column: 7, scope: !58)
!2330 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp68", scope: !58, file: !1, line: 1217, type: !13)
!2331 = !DILocation(line: 1217, column: 7, scope: !58)
!2332 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp69", scope: !58, file: !1, line: 1218, type: !13)
!2333 = !DILocation(line: 1218, column: 7, scope: !58)
!2334 = !DILocation(line: 1218, column: 21, scope: !58)
!2335 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp70", scope: !58, file: !1, line: 1219, type: !13)
!2336 = !DILocation(line: 1219, column: 7, scope: !58)
!2337 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp71", scope: !58, file: !1, line: 1220, type: !13)
!2338 = !DILocation(line: 1220, column: 7, scope: !58)
!2339 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp72", scope: !58, file: !1, line: 1221, type: !13)
!2340 = !DILocation(line: 1221, column: 7, scope: !58)
!2341 = !DILocation(line: 1221, column: 21, scope: !58)
!2342 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp73", scope: !58, file: !1, line: 1222, type: !13)
!2343 = !DILocation(line: 1222, column: 7, scope: !58)
!2344 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp74", scope: !58, file: !1, line: 1223, type: !13)
!2345 = !DILocation(line: 1223, column: 7, scope: !58)
!2346 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp75", scope: !58, file: !1, line: 1224, type: !13)
!2347 = !DILocation(line: 1224, column: 7, scope: !58)
!2348 = !DILocation(line: 1224, column: 21, scope: !58)
!2349 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp76", scope: !58, file: !1, line: 1225, type: !13)
!2350 = !DILocation(line: 1225, column: 7, scope: !58)
!2351 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp77", scope: !58, file: !1, line: 1226, type: !13)
!2352 = !DILocation(line: 1226, column: 7, scope: !58)
!2353 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp78", scope: !58, file: !1, line: 1227, type: !13)
!2354 = !DILocation(line: 1227, column: 7, scope: !58)
!2355 = !DILocation(line: 1227, column: 21, scope: !58)
!2356 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp79", scope: !58, file: !1, line: 1228, type: !13)
!2357 = !DILocation(line: 1228, column: 7, scope: !58)
!2358 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp80", scope: !58, file: !1, line: 1229, type: !13)
!2359 = !DILocation(line: 1229, column: 7, scope: !58)
!2360 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp81", scope: !58, file: !1, line: 1230, type: !13)
!2361 = !DILocation(line: 1230, column: 7, scope: !58)
!2362 = !DILocation(line: 1230, column: 21, scope: !58)
!2363 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp82", scope: !58, file: !1, line: 1231, type: !13)
!2364 = !DILocation(line: 1231, column: 7, scope: !58)
!2365 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp83", scope: !58, file: !1, line: 1232, type: !13)
!2366 = !DILocation(line: 1232, column: 7, scope: !58)
!2367 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp84", scope: !58, file: !1, line: 1233, type: !13)
!2368 = !DILocation(line: 1233, column: 7, scope: !58)
!2369 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp85", scope: !58, file: !1, line: 1234, type: !13)
!2370 = !DILocation(line: 1234, column: 7, scope: !58)
!2371 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp86", scope: !58, file: !1, line: 1235, type: !13)
!2372 = !DILocation(line: 1235, column: 7, scope: !58)
!2373 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp87", scope: !58, file: !1, line: 1236, type: !13)
!2374 = !DILocation(line: 1236, column: 7, scope: !58)
!2375 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp88", scope: !58, file: !1, line: 1237, type: !13)
!2376 = !DILocation(line: 1237, column: 7, scope: !58)
!2377 = !DILocation(line: 1237, column: 21, scope: !58)
!2378 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp89", scope: !58, file: !1, line: 1238, type: !13)
!2379 = !DILocation(line: 1238, column: 7, scope: !58)
!2380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp90", scope: !58, file: !1, line: 1239, type: !13)
!2381 = !DILocation(line: 1239, column: 7, scope: !58)
!2382 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp91", scope: !58, file: !1, line: 1240, type: !4)
!2383 = !DILocation(line: 1240, column: 8, scope: !58)
!2384 = !DILocation(line: 1243, column: 7, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !1, line: 1243, column: 7)
!2386 = distinct !DILexicalBlock(scope: !58, file: !1, line: 1242, column: 3)
!2387 = !DILocation(line: 1007, column: 29, scope: !43, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 1261, column: 5, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !1, line: 1257, column: 5)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !1, line: 1256, column: 37)
!2391 = distinct !DILexicalBlock(scope: !2386, file: !1, line: 1256, column: 7)
!2392 = !DILocation(line: 1007, column: 39, scope: !43, inlinedAt: !2388)
!2393 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DisketteExtension", arg: 1, scope: !59, file: !1, line: 1533, type: !13)
!2394 = !DILocation(line: 1533, column: 33, scope: !59, inlinedAt: !2395)
!2395 = distinct !DILocation(line: 1418, column: 39, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 1417, column: 29)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !1, line: 1369, column: 34)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !1, line: 1369, column: 31)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !1, line: 1367, column: 32)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !1, line: 1365, column: 29)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !1, line: 1361, column: 25)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !1, line: 1360, column: 30)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !1, line: 1358, column: 27)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !1, line: 1354, column: 23)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !1, line: 1353, column: 28)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !1, line: 1351, column: 25)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !1, line: 1347, column: 21)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !1, line: 1346, column: 26)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !1, line: 1344, column: 23)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !1, line: 1340, column: 19)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !1, line: 1339, column: 24)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !1, line: 1337, column: 21)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !1, line: 1333, column: 17)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !1, line: 1332, column: 22)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !1, line: 1330, column: 19)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !1, line: 1328, column: 15)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !1, line: 1327, column: 20)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !1, line: 1325, column: 17)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !1, line: 1319, column: 13)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !1, line: 1318, column: 18)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !1, line: 1316, column: 15)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !1, line: 1310, column: 11)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !1, line: 1309, column: 16)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !1, line: 1307, column: 13)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !1, line: 1301, column: 9)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !1, line: 1300, column: 14)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !1, line: 1298, column: 11)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !1, line: 1292, column: 7)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !1, line: 1291, column: 12)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !1, line: 1289, column: 9)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !1, line: 1287, column: 5)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !1, line: 1286, column: 10)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !1, line: 1284, column: 7)
!2434 = distinct !DILexicalBlock(scope: !2386, file: !1, line: 1280, column: 3)
!2435 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "FormatParameters", arg: 2, scope: !59, file: !1, line: 1533, type: !13)
!2436 = !DILocation(line: 1533, column: 57, scope: !59, inlinedAt: !2395)
!2437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DriveMediaConstants__driveMediaType__MediaType", scope: !59, file: !1, line: 1534, type: !13)
!2438 = !DILocation(line: 1534, column: 7, scope: !59, inlinedAt: !2395)
!2439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "FormatParameters__MediaType", scope: !59, file: !1, line: 1535, type: !13)
!2440 = !DILocation(line: 1535, column: 7, scope: !59, inlinedAt: !2395)
!2441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "FAKE_CONDITION", scope: !59, file: !1, line: 1536, type: !13)
!2442 = !DILocation(line: 1536, column: 7, scope: !59, inlinedAt: !2395)
!2443 = !DILocation(line: 1007, column: 29, scope: !43, inlinedAt: !2444)
!2444 = distinct !DILocation(line: 1526, column: 5, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !1, line: 1523, column: 5)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !1, line: 1522, column: 28)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !1, line: 1522, column: 7)
!2448 = distinct !DILexicalBlock(scope: !2386, file: !1, line: 1520, column: 3)
!2449 = !DILocation(line: 1007, column: 39, scope: !43, inlinedAt: !2444)
!2450 = !DILocation(line: 1243, column: 7, scope: !2386)
!2451 = !DILocation(line: 1248, column: 9, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !1, line: 1248, column: 9)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !1, line: 1244, column: 5)
!2454 = distinct !DILexicalBlock(scope: !2385, file: !1, line: 1243, column: 43)
!2455 = !DILocation(line: 1248, column: 66, scope: !2452)
!2456 = !DILocation(line: 1248, column: 63, scope: !2452)
!2457 = !DILocation(line: 1248, column: 9, scope: !2453)
!2458 = !DILocation(line: 1250, column: 37, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !1, line: 1249, column: 7)
!2460 = distinct !DILexicalBlock(scope: !2452, file: !1, line: 1248, column: 79)
!2461 = !DILocation(line: 1250, column: 56, scope: !2459)
!2462 = !DILocation(line: 1250, column: 18, scope: !2459)
!2463 = !DILocation(line: 1250, column: 16, scope: !2459)
!2464 = !DILocation(line: 1252, column: 15, scope: !2460)
!2465 = !DILocation(line: 1252, column: 7, scope: !2460)
!2466 = !DILocation(line: 1255, column: 3, scope: !2454)
!2467 = !DILocation(line: 1256, column: 7, scope: !2391)
!2468 = !DILocation(line: 1256, column: 7, scope: !2386)
!2469 = !DILocation(line: 1258, column: 32, scope: !2389)
!2470 = !DILocation(line: 1259, column: 31, scope: !2389)
!2471 = !DILocation(line: 1260, column: 14, scope: !2389)
!2472 = !DILocation(line: 1261, column: 24, scope: !2389)
!2473 = !DILocation(line: 1261, column: 5, scope: !2389)
!2474 = !DILocation(line: 1011, column: 7, scope: !457, inlinedAt: !2388)
!2475 = !DILocation(line: 1011, column: 12, scope: !457, inlinedAt: !2388)
!2476 = !DILocation(line: 1011, column: 9, scope: !457, inlinedAt: !2388)
!2477 = !DILocation(line: 1011, column: 7, scope: !458, inlinedAt: !2388)
!2478 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 1015, column: 5, scope: !464, inlinedAt: !2388)
!2480 = !DILocation(line: 1012, column: 9, scope: !467, inlinedAt: !2388)
!2481 = !DILocation(line: 1012, column: 7, scope: !467, inlinedAt: !2388)
!2482 = !DILocation(line: 1018, column: 3, scope: !458, inlinedAt: !2388)
!2483 = !DILocation(line: 1263, column: 5, scope: !2390)
!2484 = !DILocation(line: 1265, column: 9, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2386, file: !1, line: 1265, column: 7)
!2486 = !DILocation(line: 1265, column: 7, scope: !2386)
!2487 = !DILocation(line: 1266, column: 9, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !1, line: 1266, column: 9)
!2489 = distinct !DILexicalBlock(scope: !2485, file: !1, line: 1265, column: 39)
!2490 = !DILocation(line: 1266, column: 14, scope: !2488)
!2491 = !DILocation(line: 1266, column: 11, scope: !2488)
!2492 = !DILocation(line: 1266, column: 9, scope: !2489)
!2493 = !DILocation(line: 1267, column: 11, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2488, file: !1, line: 1266, column: 18)
!2495 = !DILocation(line: 1267, column: 9, scope: !2494)
!2496 = !DILocation(line: 1268, column: 5, scope: !2494)
!2497 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 1270, column: 7, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2500, file: !1, line: 1269, column: 7)
!2500 = distinct !DILexicalBlock(scope: !2488, file: !1, line: 1268, column: 12)
!2501 = !DILocation(line: 1274, column: 26, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2489, file: !1, line: 1273, column: 5)
!2503 = !DILocation(line: 1275, column: 46, scope: !2502)
!2504 = !DILocation(line: 1276, column: 25, scope: !2502)
!2505 = !DILocation(line: 1276, column: 58, scope: !2502)
!2506 = !DILocation(line: 1276, column: 11, scope: !2502)
!2507 = !DILocation(line: 1276, column: 9, scope: !2502)
!2508 = !DILocation(line: 1278, column: 13, scope: !2489)
!2509 = !DILocation(line: 1278, column: 5, scope: !2489)
!2510 = !DILocation(line: 1284, column: 7, scope: !2433)
!2511 = !DILocation(line: 1284, column: 64, scope: !2433)
!2512 = !DILocation(line: 1284, column: 61, scope: !2433)
!2513 = !DILocation(line: 1284, column: 7, scope: !2434)
!2514 = !DILocation(line: 1285, column: 5, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2433, file: !1, line: 1284, column: 77)
!2516 = !DILocation(line: 1289, column: 9, scope: !2430)
!2517 = !DILocation(line: 1289, column: 66, scope: !2430)
!2518 = !DILocation(line: 1289, column: 63, scope: !2430)
!2519 = !DILocation(line: 1289, column: 9, scope: !2431)
!2520 = !DILocation(line: 1290, column: 7, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2430, file: !1, line: 1289, column: 79)
!2522 = !DILocation(line: 1298, column: 11, scope: !2427)
!2523 = !DILocation(line: 1298, column: 68, scope: !2427)
!2524 = !DILocation(line: 1298, column: 65, scope: !2427)
!2525 = !DILocation(line: 1298, column: 11, scope: !2428)
!2526 = !DILocation(line: 1299, column: 9, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2427, file: !1, line: 1298, column: 81)
!2528 = !DILocation(line: 1307, column: 13, scope: !2424)
!2529 = !DILocation(line: 1307, column: 70, scope: !2424)
!2530 = !DILocation(line: 1307, column: 67, scope: !2424)
!2531 = !DILocation(line: 1307, column: 13, scope: !2425)
!2532 = !DILocation(line: 1308, column: 11, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2424, file: !1, line: 1307, column: 83)
!2534 = !DILocation(line: 1316, column: 15, scope: !2421)
!2535 = !DILocation(line: 1316, column: 72, scope: !2421)
!2536 = !DILocation(line: 1316, column: 69, scope: !2421)
!2537 = !DILocation(line: 1316, column: 15, scope: !2422)
!2538 = !DILocation(line: 1317, column: 13, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2421, file: !1, line: 1316, column: 85)
!2540 = !DILocation(line: 1325, column: 17, scope: !2418)
!2541 = !DILocation(line: 1325, column: 74, scope: !2418)
!2542 = !DILocation(line: 1325, column: 71, scope: !2418)
!2543 = !DILocation(line: 1325, column: 17, scope: !2419)
!2544 = !DILocation(line: 1326, column: 15, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2418, file: !1, line: 1325, column: 87)
!2546 = !DILocation(line: 1330, column: 19, scope: !2415)
!2547 = !DILocation(line: 1330, column: 76, scope: !2415)
!2548 = !DILocation(line: 1330, column: 73, scope: !2415)
!2549 = !DILocation(line: 1330, column: 19, scope: !2416)
!2550 = !DILocation(line: 1331, column: 17, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2415, file: !1, line: 1330, column: 89)
!2552 = !DILocation(line: 1337, column: 21, scope: !2412)
!2553 = !DILocation(line: 1337, column: 78, scope: !2412)
!2554 = !DILocation(line: 1337, column: 75, scope: !2412)
!2555 = !DILocation(line: 1337, column: 21, scope: !2413)
!2556 = !DILocation(line: 1338, column: 19, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2412, file: !1, line: 1337, column: 91)
!2558 = !DILocation(line: 1344, column: 23, scope: !2409)
!2559 = !DILocation(line: 1344, column: 80, scope: !2409)
!2560 = !DILocation(line: 1344, column: 77, scope: !2409)
!2561 = !DILocation(line: 1344, column: 23, scope: !2410)
!2562 = !DILocation(line: 1345, column: 21, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2409, file: !1, line: 1344, column: 93)
!2564 = !DILocation(line: 1351, column: 25, scope: !2406)
!2565 = !DILocation(line: 1351, column: 82, scope: !2406)
!2566 = !DILocation(line: 1351, column: 79, scope: !2406)
!2567 = !DILocation(line: 1351, column: 25, scope: !2407)
!2568 = !DILocation(line: 1352, column: 23, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2406, file: !1, line: 1351, column: 95)
!2570 = !DILocation(line: 1358, column: 27, scope: !2403)
!2571 = !DILocation(line: 1358, column: 84, scope: !2403)
!2572 = !DILocation(line: 1358, column: 81, scope: !2403)
!2573 = !DILocation(line: 1358, column: 27, scope: !2404)
!2574 = !DILocation(line: 1359, column: 25, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2403, file: !1, line: 1358, column: 97)
!2576 = !DILocation(line: 1365, column: 29, scope: !2400)
!2577 = !DILocation(line: 1365, column: 86, scope: !2400)
!2578 = !DILocation(line: 1365, column: 83, scope: !2400)
!2579 = !DILocation(line: 1365, column: 29, scope: !2401)
!2580 = !DILocation(line: 1366, column: 27, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2400, file: !1, line: 1365, column: 99)
!2582 = !DILocation(line: 1368, column: 27, scope: !2399)
!2583 = !DILocation(line: 1369, column: 31, scope: !2399)
!2584 = !DILocation(line: 1369, column: 34, scope: !2398)
!2585 = !DILocation(line: 1371, column: 33, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 1371, column: 33)
!2587 = !DILocation(line: 1371, column: 90, scope: !2586)
!2588 = !DILocation(line: 1371, column: 88, scope: !2586)
!2589 = !DILocation(line: 1371, column: 33, scope: !2397)
!2590 = !DILocation(line: 1372, column: 40, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2586, file: !1, line: 1371, column: 113)
!2592 = !DILocation(line: 1373, column: 31, scope: !2591)
!2593 = !DILocation(line: 1375, column: 41, scope: !2397)
!2594 = !DILocation(line: 1375, column: 39, scope: !2397)
!2595 = !DILocation(line: 1376, column: 53, scope: !2397)
!2596 = !DILocation(line: 1376, column: 51, scope: !2397)
!2597 = !DILocation(line: 1378, column: 43, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 1377, column: 29)
!2599 = !DILocation(line: 1378, column: 60, scope: !2598)
!2600 = !DILocation(line: 1378, column: 58, scope: !2598)
!2601 = !DILocation(line: 1378, column: 41, scope: !2598)
!2602 = !DILocation(line: 1379, column: 33, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2598, file: !1, line: 1379, column: 33)
!2604 = !DILocation(line: 1379, column: 90, scope: !2603)
!2605 = !DILocation(line: 1379, column: 88, scope: !2603)
!2606 = !DILocation(line: 1379, column: 33, scope: !2598)
!2607 = !DILocation(line: 1380, column: 40, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2603, file: !1, line: 1379, column: 103)
!2609 = !DILocation(line: 1381, column: 60, scope: !2608)
!2610 = !DILocation(line: 1381, column: 58, scope: !2608)
!2611 = !DILocation(line: 1382, column: 31, scope: !2608)
!2612 = !DILocation(line: 1385, column: 38, scope: !2397)
!2613 = !DILocation(line: 1386, column: 58, scope: !2397)
!2614 = !DILocation(line: 1386, column: 75, scope: !2397)
!2615 = !DILocation(line: 1386, column: 73, scope: !2397)
!2616 = !DILocation(line: 1386, column: 56, scope: !2397)
!2617 = !DILocation(line: 1387, column: 29, scope: !2397)
!2618 = !DILocation(line: 1389, column: 35, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 1389, column: 33)
!2620 = !DILocation(line: 1389, column: 33, scope: !2397)
!2621 = !DILocation(line: 1390, column: 40, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2619, file: !1, line: 1389, column: 79)
!2623 = !DILocation(line: 1391, column: 31, scope: !2622)
!2624 = !DILocation(line: 1393, column: 35, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !1, line: 1393, column: 35)
!2626 = distinct !DILexicalBlock(scope: !2619, file: !1, line: 1392, column: 36)
!2627 = !DILocation(line: 1393, column: 92, scope: !2625)
!2628 = !DILocation(line: 1393, column: 90, scope: !2625)
!2629 = !DILocation(line: 1393, column: 35, scope: !2626)
!2630 = !DILocation(line: 1394, column: 42, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2625, file: !1, line: 1393, column: 120)
!2632 = !DILocation(line: 1395, column: 33, scope: !2631)
!2633 = !DILocation(line: 1398, column: 40, scope: !2397)
!2634 = !DILocation(line: 1398, column: 38, scope: !2397)
!2635 = !DILocation(line: 1399, column: 56, scope: !2397)
!2636 = !DILocation(line: 1399, column: 54, scope: !2397)
!2637 = !DILocation(line: 1401, column: 43, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 1400, column: 29)
!2639 = !DILocation(line: 1401, column: 60, scope: !2638)
!2640 = !DILocation(line: 1401, column: 58, scope: !2638)
!2641 = !DILocation(line: 1401, column: 41, scope: !2638)
!2642 = !DILocation(line: 1402, column: 33, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2638, file: !1, line: 1402, column: 33)
!2644 = !DILocation(line: 1402, column: 90, scope: !2643)
!2645 = !DILocation(line: 1402, column: 88, scope: !2643)
!2646 = !DILocation(line: 1402, column: 33, scope: !2638)
!2647 = !DILocation(line: 1403, column: 40, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2643, file: !1, line: 1402, column: 103)
!2649 = !DILocation(line: 1404, column: 60, scope: !2648)
!2650 = !DILocation(line: 1404, column: 58, scope: !2648)
!2651 = !DILocation(line: 1405, column: 31, scope: !2648)
!2652 = !DILocation(line: 1408, column: 38, scope: !2397)
!2653 = !DILocation(line: 1409, column: 58, scope: !2397)
!2654 = !DILocation(line: 1409, column: 75, scope: !2397)
!2655 = !DILocation(line: 1409, column: 73, scope: !2397)
!2656 = !DILocation(line: 1409, column: 56, scope: !2397)
!2657 = !DILocation(line: 1410, column: 29, scope: !2397)
!2658 = !DILocation(line: 1413, column: 33, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 1413, column: 33)
!2660 = !DILocation(line: 1413, column: 89, scope: !2659)
!2661 = !DILocation(line: 1413, column: 87, scope: !2659)
!2662 = !DILocation(line: 1413, column: 33, scope: !2397)
!2663 = !DILocation(line: 1414, column: 40, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2659, file: !1, line: 1413, column: 116)
!2665 = !DILocation(line: 1415, column: 31, scope: !2664)
!2666 = !DILocation(line: 1418, column: 63, scope: !2396)
!2667 = !DILocation(line: 1418, column: 82, scope: !2396)
!2668 = !DILocation(line: 1418, column: 39, scope: !2396)
!2669 = !DILocation(line: 1534, column: 56, scope: !59, inlinedAt: !2395)
!2670 = !DILocation(line: 1535, column: 37, scope: !59, inlinedAt: !2395)
!2671 = !DILocation(line: 1536, column: 24, scope: !59, inlinedAt: !2395)
!2672 = !DILocation(line: 1539, column: 7, scope: !2673, inlinedAt: !2395)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !1, line: 1539, column: 7)
!2674 = distinct !DILexicalBlock(scope: !59, file: !1, line: 1538, column: 3)
!2675 = !DILocation(line: 1539, column: 57, scope: !2673, inlinedAt: !2395)
!2676 = !DILocation(line: 1539, column: 54, scope: !2673, inlinedAt: !2395)
!2677 = !DILocation(line: 1539, column: 7, scope: !2674, inlinedAt: !2395)
!2678 = !DILocation(line: 1540, column: 5, scope: !2679, inlinedAt: !2395)
!2679 = distinct !DILexicalBlock(scope: !2673, file: !1, line: 1539, column: 86)
!2680 = !DILocation(line: 1542, column: 9, scope: !2681, inlinedAt: !2395)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !1, line: 1542, column: 9)
!2682 = distinct !DILexicalBlock(scope: !2673, file: !1, line: 1541, column: 10)
!2683 = !DILocation(line: 1542, column: 9, scope: !2682, inlinedAt: !2395)
!2684 = !DILocation(line: 1543, column: 7, scope: !2685, inlinedAt: !2395)
!2685 = distinct !DILexicalBlock(scope: !2681, file: !1, line: 1542, column: 25)
!2686 = !DILocation(line: 1545, column: 7, scope: !2687, inlinedAt: !2395)
!2687 = distinct !DILexicalBlock(scope: !2681, file: !1, line: 1544, column: 12)
!2688 = !DILocation(line: 1549, column: 1, scope: !59, inlinedAt: !2395)
!2689 = !DILocation(line: 1418, column: 37, scope: !2396)
!2690 = !DILocation(line: 1420, column: 35, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 1420, column: 33)
!2692 = !DILocation(line: 1420, column: 33, scope: !2397)
!2693 = !DILocation(line: 1421, column: 40, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2691, file: !1, line: 1420, column: 44)
!2695 = !DILocation(line: 1422, column: 31, scope: !2694)
!2696 = !DILocation(line: 1430, column: 33, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !1, line: 1430, column: 33)
!2698 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 1424, column: 29)
!2699 = !DILocation(line: 1430, column: 90, scope: !2697)
!2700 = !DILocation(line: 1430, column: 87, scope: !2697)
!2701 = !DILocation(line: 1430, column: 33, scope: !2698)
!2702 = !DILocation(line: 1431, column: 35, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !1, line: 1431, column: 35)
!2704 = distinct !DILexicalBlock(scope: !2697, file: !1, line: 1430, column: 103)
!2705 = !DILocation(line: 1431, column: 91, scope: !2703)
!2706 = !DILocation(line: 1431, column: 89, scope: !2703)
!2707 = !DILocation(line: 1431, column: 35, scope: !2704)
!2708 = !DILocation(line: 1432, column: 42, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2703, file: !1, line: 1431, column: 121)
!2710 = !DILocation(line: 1433, column: 33, scope: !2709)
!2711 = !DILocation(line: 1435, column: 52, scope: !2704)
!2712 = !DILocation(line: 1435, column: 50, scope: !2704)
!2713 = !DILocation(line: 1436, column: 35, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2704, file: !1, line: 1436, column: 35)
!2715 = !DILocation(line: 1436, column: 91, scope: !2714)
!2716 = !DILocation(line: 1436, column: 89, scope: !2714)
!2717 = !DILocation(line: 1436, column: 35, scope: !2704)
!2718 = !DILocation(line: 1437, column: 42, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2714, file: !1, line: 1436, column: 115)
!2720 = !DILocation(line: 1438, column: 33, scope: !2719)
!2721 = !DILocation(line: 1440, column: 37, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !1, line: 1440, column: 37)
!2723 = distinct !DILexicalBlock(scope: !2714, file: !1, line: 1439, column: 38)
!2724 = !DILocation(line: 1440, column: 73, scope: !2722)
!2725 = !DILocation(line: 1440, column: 37, scope: !2723)
!2726 = !DILocation(line: 1441, column: 44, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2722, file: !1, line: 1440, column: 81)
!2728 = !DILocation(line: 1442, column: 35, scope: !2727)
!2729 = !DILocation(line: 1444, column: 39, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !1, line: 1444, column: 39)
!2731 = distinct !DILexicalBlock(scope: !2722, file: !1, line: 1443, column: 40)
!2732 = !DILocation(line: 1444, column: 75, scope: !2730)
!2733 = !DILocation(line: 1444, column: 39, scope: !2731)
!2734 = !DILocation(line: 1445, column: 46, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2730, file: !1, line: 1444, column: 83)
!2736 = !DILocation(line: 1446, column: 37, scope: !2735)
!2737 = !DILocation(line: 1450, column: 29, scope: !2704)
!2738 = !DILocation(line: 1451, column: 29, scope: !2698)
!2739 = !DILocation(line: 1457, column: 59, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 1456, column: 29)
!2741 = !DILocation(line: 1457, column: 64, scope: !2740)
!2742 = !DILocation(line: 1457, column: 40, scope: !2740)
!2743 = !DILocation(line: 1457, column: 38, scope: !2740)
!2744 = !DILocation(line: 1459, column: 29, scope: !2397)
!2745 = !DILocation(line: 1462, column: 50, scope: !2397)
!2746 = !DILocation(line: 1462, column: 48, scope: !2397)
!2747 = !DILocation(line: 1463, column: 33, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 1463, column: 33)
!2749 = !DILocation(line: 1463, column: 54, scope: !2748)
!2750 = !DILocation(line: 1463, column: 52, scope: !2748)
!2751 = !DILocation(line: 1463, column: 33, scope: !2397)
!2752 = !DILocation(line: 1464, column: 40, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2748, file: !1, line: 1463, column: 77)
!2754 = !DILocation(line: 1465, column: 31, scope: !2753)
!2755 = !DILocation(line: 1467, column: 38, scope: !2397)
!2756 = !DILocation(line: 1469, column: 43, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 1468, column: 29)
!2758 = !DILocation(line: 1469, column: 67, scope: !2757)
!2759 = !DILocation(line: 1469, column: 65, scope: !2757)
!2760 = !DILocation(line: 1469, column: 41, scope: !2757)
!2761 = !DILocation(line: 1470, column: 43, scope: !2757)
!2762 = !DILocation(line: 1470, column: 55, scope: !2757)
!2763 = !DILocation(line: 1470, column: 41, scope: !2757)
!2764 = !DILocation(line: 1471, column: 33, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2757, file: !1, line: 1471, column: 33)
!2766 = !DILocation(line: 1471, column: 54, scope: !2765)
!2767 = !DILocation(line: 1471, column: 52, scope: !2765)
!2768 = !DILocation(line: 1471, column: 33, scope: !2757)
!2769 = !DILocation(line: 1472, column: 40, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2765, file: !1, line: 1471, column: 67)
!2771 = !DILocation(line: 1473, column: 29, scope: !2770)
!2772 = !DILocation(line: 1475, column: 29, scope: !2397)
!2773 = !DILocation(line: 1479, column: 33, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 1479, column: 33)
!2775 = !DILocation(line: 1479, column: 38, scope: !2774)
!2776 = !DILocation(line: 1479, column: 35, scope: !2774)
!2777 = !DILocation(line: 1479, column: 33, scope: !2397)
!2778 = !DILocation(line: 1480, column: 35, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2774, file: !1, line: 1479, column: 42)
!2780 = !DILocation(line: 1480, column: 33, scope: !2779)
!2781 = !DILocation(line: 1481, column: 29, scope: !2779)
!2782 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 1483, column: 31, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !1, line: 1482, column: 31)
!2785 = distinct !DILexicalBlock(scope: !2774, file: !1, line: 1481, column: 36)
!2786 = !DILocation(line: 1487, column: 50, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 1486, column: 29)
!2788 = !DILocation(line: 1488, column: 70, scope: !2787)
!2789 = !DILocation(line: 1489, column: 54, scope: !2787)
!2790 = !DILocation(line: 1490, column: 54, scope: !2787)
!2791 = !DILocation(line: 1489, column: 40, scope: !2787)
!2792 = !DILocation(line: 1489, column: 38, scope: !2787)
!2793 = !DILocation(line: 1492, column: 37, scope: !2397)
!2794 = !DILocation(line: 1492, column: 29, scope: !2397)
!2795 = !DILocation(line: 1493, column: 34, scope: !2398)
!2796 = !DILocation(line: 1521, column: 24, scope: !2448)
!2797 = !DILocation(line: 1521, column: 17, scope: !2448)
!2798 = !DILocation(line: 1521, column: 15, scope: !2448)
!2799 = !DILocation(line: 1522, column: 7, scope: !2447)
!2800 = !DILocation(line: 1522, column: 19, scope: !2447)
!2801 = !DILocation(line: 1522, column: 7, scope: !2448)
!2802 = !DILocation(line: 1524, column: 33, scope: !2445)
!2803 = !DILocation(line: 1524, column: 31, scope: !2445)
!2804 = !DILocation(line: 1525, column: 16, scope: !2445)
!2805 = !DILocation(line: 1525, column: 14, scope: !2445)
!2806 = !DILocation(line: 1526, column: 24, scope: !2445)
!2807 = !DILocation(line: 1526, column: 5, scope: !2445)
!2808 = !DILocation(line: 1011, column: 7, scope: !457, inlinedAt: !2444)
!2809 = !DILocation(line: 1011, column: 12, scope: !457, inlinedAt: !2444)
!2810 = !DILocation(line: 1011, column: 9, scope: !457, inlinedAt: !2444)
!2811 = !DILocation(line: 1011, column: 7, scope: !458, inlinedAt: !2444)
!2812 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 1015, column: 5, scope: !464, inlinedAt: !2444)
!2814 = !DILocation(line: 1012, column: 9, scope: !467, inlinedAt: !2444)
!2815 = !DILocation(line: 1012, column: 7, scope: !467, inlinedAt: !2444)
!2816 = !DILocation(line: 1018, column: 3, scope: !458, inlinedAt: !2444)
!2817 = !DILocation(line: 1528, column: 3, scope: !2446)
!2818 = !DILocation(line: 1530, column: 11, scope: !2386)
!2819 = !DILocation(line: 1530, column: 3, scope: !2386)
!2820 = !DILocation(line: 1532, column: 1, scope: !58)
!2821 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DisketteExtension", arg: 1, scope: !60, file: !1, line: 1550, type: !13)
!2822 = !DILocation(line: 1550, column: 28, scope: !60)
!2823 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !60, file: !1, line: 1550, type: !13)
!2824 = !DILocation(line: 1550, column: 52, scope: !60)
!2825 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !60, file: !1, line: 1551, type: !13)
!2826 = !DILocation(line: 1551, column: 7, scope: !60)
!2827 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !60, file: !1, line: 1552, type: !13)
!2828 = !DILocation(line: 1552, column: 7, scope: !60)
!2829 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation__Control", scope: !60, file: !1, line: 1553, type: !13)
!2830 = !DILocation(line: 1553, column: 7, scope: !60)
!2831 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ntStatus", scope: !60, file: !1, line: 1554, type: !13)
!2832 = !DILocation(line: 1554, column: 7, scope: !60)
!2833 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "FAKE_CONDITION", scope: !60, file: !1, line: 1555, type: !13)
!2834 = !DILocation(line: 1555, column: 7, scope: !60)
!2835 = !DILocation(line: 1555, column: 24, scope: !60)
!2836 = !DILocation(line: 1558, column: 24, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !60, file: !1, line: 1557, column: 3)
!2838 = !DILocation(line: 1559, column: 7, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2837, file: !1, line: 1559, column: 7)
!2840 = !DILocation(line: 1559, column: 28, scope: !2839)
!2841 = !DILocation(line: 1007, column: 29, scope: !43, inlinedAt: !2842)
!2842 = distinct !DILocation(line: 1567, column: 5, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !1, line: 1563, column: 5)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !1, line: 1562, column: 23)
!2845 = distinct !DILexicalBlock(scope: !2837, file: !1, line: 1562, column: 7)
!2846 = !DILocation(line: 1007, column: 39, scope: !43, inlinedAt: !2842)
!2847 = !DILocation(line: 1559, column: 7, scope: !2837)
!2848 = !DILocation(line: 1561, column: 3, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2839, file: !1, line: 1559, column: 34)
!2850 = !DILocation(line: 1562, column: 7, scope: !2845)
!2851 = !DILocation(line: 1562, column: 7, scope: !2837)
!2852 = !DILocation(line: 1564, column: 27, scope: !2843)
!2853 = !DILocation(line: 1565, column: 14, scope: !2843)
!2854 = !DILocation(line: 1566, column: 32, scope: !2843)
!2855 = !DILocation(line: 1567, column: 24, scope: !2843)
!2856 = !DILocation(line: 1567, column: 5, scope: !2843)
!2857 = !DILocation(line: 1011, column: 7, scope: !457, inlinedAt: !2842)
!2858 = !DILocation(line: 1011, column: 12, scope: !457, inlinedAt: !2842)
!2859 = !DILocation(line: 1011, column: 9, scope: !457, inlinedAt: !2842)
!2860 = !DILocation(line: 1011, column: 7, scope: !458, inlinedAt: !2842)
!2861 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !2862)
!2862 = distinct !DILocation(line: 1015, column: 5, scope: !464, inlinedAt: !2842)
!2863 = !DILocation(line: 1012, column: 9, scope: !467, inlinedAt: !2842)
!2864 = !DILocation(line: 1012, column: 7, scope: !467, inlinedAt: !2842)
!2865 = !DILocation(line: 1018, column: 3, scope: !458, inlinedAt: !2842)
!2866 = !DILocation(line: 1568, column: 26, scope: !2843)
!2867 = !DILocation(line: 1570, column: 9, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2844, file: !1, line: 1570, column: 9)
!2869 = !DILocation(line: 1570, column: 30, scope: !2868)
!2870 = !DILocation(line: 1570, column: 9, scope: !2844)
!2871 = !DILocation(line: 1572, column: 5, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2868, file: !1, line: 1570, column: 36)
!2873 = !DILocation(line: 1573, column: 14, scope: !2844)
!2874 = !DILocation(line: 1574, column: 3, scope: !2844)
!2875 = !DILocation(line: 1575, column: 27, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2845, file: !1, line: 1574, column: 10)
!2877 = !DILocation(line: 1576, column: 14, scope: !2876)
!2878 = !DILocation(line: 1578, column: 9, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2876, file: !1, line: 1578, column: 9)
!2880 = !DILocation(line: 1578, column: 16, scope: !2879)
!2881 = !DILocation(line: 1578, column: 9, scope: !2876)
!2882 = !DILocation(line: 1579, column: 14, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2879, file: !1, line: 1578, column: 22)
!2884 = !DILocation(line: 1580, column: 5, scope: !2883)
!2885 = !DILocation(line: 1595, column: 10, scope: !296, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 1582, column: 7, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !1, line: 1581, column: 7)
!2888 = distinct !DILexicalBlock(scope: !2879, file: !1, line: 1580, column: 12)
!2889 = !DILocation(line: 1585, column: 14, scope: !2876)
!2890 = !DILocation(line: 1587, column: 11, scope: !2837)
!2891 = !DILocation(line: 1587, column: 3, scope: !2837)
!2892 = !DILocation(line: 1533, column: 33, scope: !59)
!2893 = !DILocation(line: 1533, column: 57, scope: !59)
!2894 = !DILocation(line: 1534, column: 7, scope: !59)
!2895 = !DILocation(line: 1534, column: 56, scope: !59)
!2896 = !DILocation(line: 1535, column: 7, scope: !59)
!2897 = !DILocation(line: 1535, column: 37, scope: !59)
!2898 = !DILocation(line: 1536, column: 7, scope: !59)
!2899 = !DILocation(line: 1536, column: 24, scope: !59)
!2900 = !DILocation(line: 1539, column: 7, scope: !2673)
!2901 = !DILocation(line: 1539, column: 57, scope: !2673)
!2902 = !DILocation(line: 1539, column: 54, scope: !2673)
!2903 = !DILocation(line: 1539, column: 7, scope: !2674)
!2904 = !DILocation(line: 1540, column: 5, scope: !2679)
!2905 = !DILocation(line: 1542, column: 9, scope: !2681)
!2906 = !DILocation(line: 1542, column: 9, scope: !2682)
!2907 = !DILocation(line: 1543, column: 7, scope: !2685)
!2908 = !DILocation(line: 1545, column: 7, scope: !2687)
!2909 = !DILocation(line: 1549, column: 1, scope: !59)
