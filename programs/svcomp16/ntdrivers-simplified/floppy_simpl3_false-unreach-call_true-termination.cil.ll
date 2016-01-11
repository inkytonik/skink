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
  br label %1, !dbg !89

; <label>:1                                       ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !90
  unreachable, !dbg !90
                                                  ; No predecessors!
  ret void, !dbg !92
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

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
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind ssp uwtable
define i32 @FlQueueIrpToThread(i32 %Irp, i32 %DisketteExtension) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %tmp_ndt_11.i = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %tmp_ndt_9.i = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %tmp_ndt_10.i = alloca i32, align 4
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
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_10.i, metadata !170, metadata !111), !dbg !172
  call void @llvm.dbg.declare(metadata i32* %4, metadata !173, metadata !111), !dbg !174
  call void @llvm.dbg.declare(metadata i32* %5, metadata !177, metadata !111), !dbg !178
  call void @llvm.dbg.declare(metadata i32* %6, metadata !179, metadata !111), !dbg !180
  call void @llvm.dbg.declare(metadata i32* %7, metadata !181, metadata !111), !dbg !182
  call void @llvm.dbg.declare(metadata i32* %8, metadata !183, metadata !111), !dbg !184
  call void @llvm.dbg.declare(metadata i32* %9, metadata !185, metadata !111), !dbg !186
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_9.i, metadata !187, metadata !111), !dbg !189
  call void @llvm.dbg.declare(metadata i32* %2, metadata !190, metadata !111), !dbg !191
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_11.i, metadata !193, metadata !111), !dbg !195
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
  %55 = bitcast i32* %tmp_ndt_10.i to i8*, !dbg !218
  call void @llvm.lifetime.start(i64 4, i8* %55), !dbg !218
  store i32 %43, i32* %11, align 4, !dbg !218
  store i32 0, i32* %12, align 4, !dbg !218
  store i32 %44, i32* %13, align 4, !dbg !218
  store i32 0, i32* %14, align 4, !dbg !218
  store i32 0, i32* %15, align 4, !dbg !218
  store i32 %45, i32* %16, align 4, !dbg !218
  store i32 %46, i32* %17, align 4, !dbg !218
  %56 = call i32 @__VERIFIER_nondet_int() #4, !dbg !219
  store i32 %56, i32* %tmp_ndt_10.i, align 4, !dbg !220
  %57 = load i32, i32* %tmp_ndt_10.i, align 4, !dbg !221
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
  %70 = bitcast i32* %tmp_ndt_10.i to i8*, !dbg !230
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
  %92 = bitcast i32* %tmp_ndt_9.i to i8*, !dbg !251
  call void @llvm.lifetime.start(i64 4, i8* %92), !dbg !251
  store i32 %82, i32* %4, align 4, !dbg !251
  store i32 1048576, i32* %5, align 4, !dbg !251
  store i32 0, i32* %6, align 4, !dbg !251
  store i32 %83, i32* %7, align 4, !dbg !251
  store i32 %84, i32* %8, align 4, !dbg !251
  store i32 0, i32* %9, align 4, !dbg !251
  %93 = call i32 @__VERIFIER_nondet_int() #4, !dbg !252
  store i32 %93, i32* %tmp_ndt_9.i, align 4, !dbg !253
  %94 = load i32, i32* %tmp_ndt_9.i, align 4, !dbg !254
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
  %106 = bitcast i32* %tmp_ndt_9.i to i8*, !dbg !263
  call void @llvm.lifetime.end(i64 4, i8* %106), !dbg !263
  store i32 %98, i32* %status, align 4, !dbg !264
  %107 = load i32, i32* %threadHandle, align 4, !dbg !265
  %108 = bitcast i32* %1 to i8*, !dbg !266
  call void @llvm.lifetime.start(i64 4, i8* %108), !dbg !266
  %109 = bitcast i32* %2 to i8*, !dbg !266
  call void @llvm.lifetime.start(i64 4, i8* %109), !dbg !266
  %110 = bitcast i32* %tmp_ndt_11.i to i8*, !dbg !266
  call void @llvm.lifetime.start(i64 4, i8* %110), !dbg !266
  store i32 %107, i32* %2, align 4, !dbg !266
  %111 = call i32 @__VERIFIER_nondet_int() #4, !dbg !267
  store i32 %111, i32* %tmp_ndt_11.i, align 4, !dbg !268
  %112 = load i32, i32* %tmp_ndt_11.i, align 4, !dbg !269
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
  %119 = bitcast i32* %tmp_ndt_11.i to i8*, !dbg !278
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
  call void (...) @__VERIFIER_error() #6, !dbg !295
  unreachable, !dbg !295

errorFn.exit:                                     ; No predecessors!
  br label %130

; <label>:130                                     ; preds = %errorFn.exit, %128
  store i32 259, i32* %18, !dbg !299
  br label %131, !dbg !299

; <label>:131                                     ; preds = %130, %122, %79, %28
  %132 = load i32, i32* %18, !dbg !300
  ret i32 %132, !dbg !300
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
  call void @llvm.dbg.declare(metadata i32* %13, metadata !301, metadata !111), !dbg !302
  store i32 %Irp, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !303, metadata !111), !dbg !304
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !305, metadata !111), !dbg !306
  %15 = call i32 @__VERIFIER_nondet_int(), !dbg !307
  store i32 %15, i32* %DeviceObject__DeviceExtension, align 4, !dbg !306
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !308, metadata !111), !dbg !309
  %16 = call i32 @__VERIFIER_nondet_int(), !dbg !310
  store i32 %16, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !309
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !311, metadata !111), !dbg !312
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !313, metadata !111), !dbg !314
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !315, metadata !111), !dbg !316
  %17 = call i32 @__VERIFIER_nondet_int(), !dbg !317
  store i32 %17, i32* %Irp__CurrentLocation, align 4, !dbg !316
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__IsRemoved, metadata !318, metadata !111), !dbg !319
  %18 = call i32 @__VERIFIER_nondet_int(), !dbg !320
  store i32 %18, i32* %disketteExtension__IsRemoved, align 4, !dbg !319
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__IsStarted, metadata !321, metadata !111), !dbg !322
  %19 = call i32 @__VERIFIER_nondet_int(), !dbg !323
  store i32 %19, i32* %disketteExtension__IsStarted, align 4, !dbg !322
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__TargetObject, metadata !324, metadata !111), !dbg !325
  %20 = call i32 @__VERIFIER_nondet_int(), !dbg !326
  store i32 %20, i32* %disketteExtension__TargetObject, align 4, !dbg !325
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__HoldNewRequests, metadata !327, metadata !111), !dbg !328
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__FloppyThread, metadata !329, metadata !111), !dbg !330
  %21 = call i32 @__VERIFIER_nondet_int(), !dbg !331
  store i32 %21, i32* %disketteExtension__FloppyThread, align 4, !dbg !330
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__InterfaceString__Buffer, metadata !332, metadata !111), !dbg !333
  %22 = call i32 @__VERIFIER_nondet_int(), !dbg !334
  store i32 %22, i32* %disketteExtension__InterfaceString__Buffer, align 4, !dbg !333
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__InterfaceString, metadata !335, metadata !111), !dbg !336
  %23 = call i32 @__VERIFIER_nondet_int(), !dbg !337
  store i32 %23, i32* %disketteExtension__InterfaceString, align 4, !dbg !336
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__ArcName__Length, metadata !338, metadata !111), !dbg !339
  %24 = call i32 @__VERIFIER_nondet_int(), !dbg !340
  store i32 %24, i32* %disketteExtension__ArcName__Length, align 4, !dbg !339
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__ArcName, metadata !341, metadata !111), !dbg !342
  %25 = call i32 @__VERIFIER_nondet_int(), !dbg !343
  store i32 %25, i32* %disketteExtension__ArcName, align 4, !dbg !342
  call void @llvm.dbg.declare(metadata i32* %irpSp__MinorFunction, metadata !344, metadata !111), !dbg !345
  %26 = call i32 @__VERIFIER_nondet_int(), !dbg !346
  store i32 %26, i32* %irpSp__MinorFunction, align 4, !dbg !345
  call void @llvm.dbg.declare(metadata i32* %IoGetConfigurationInformation__FloppyCount, metadata !347, metadata !111), !dbg !348
  %27 = call i32 @__VERIFIER_nondet_int(), !dbg !349
  store i32 %27, i32* %IoGetConfigurationInformation__FloppyCount, align 4, !dbg !348
  call void @llvm.dbg.declare(metadata i32* %irpSp, metadata !350, metadata !111), !dbg !351
  call void @llvm.dbg.declare(metadata i32* %disketteExtension, metadata !352, metadata !111), !dbg !353
  call void @llvm.dbg.declare(metadata i32* %ntStatus, metadata !354, metadata !111), !dbg !355
  call void @llvm.dbg.declare(metadata i32* %doneEvent, metadata !356, metadata !111), !dbg !357
  %28 = call i32 @__VERIFIER_nondet_int(), !dbg !358
  store i32 %28, i32* %doneEvent, align 4, !dbg !357
  call void @llvm.dbg.declare(metadata i32* %irpSp___0, metadata !359, metadata !111), !dbg !360
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp, metadata !361, metadata !111), !dbg !362
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp__Control, metadata !363, metadata !111), !dbg !364
  call void @llvm.dbg.declare(metadata i32* %irpSp___1, metadata !365, metadata !111), !dbg !366
  call void @llvm.dbg.declare(metadata i32* %irpSp__Context, metadata !367, metadata !111), !dbg !368
  call void @llvm.dbg.declare(metadata i32* %irpSp__Control, metadata !369, metadata !111), !dbg !370
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp29, metadata !371, metadata !111), !dbg !372
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp30, metadata !373, metadata !111), !dbg !374
  store i32 0, i32* %ntStatus, align 4, !dbg !375
  %29 = load i32, i32* @PagingReferenceCount, align 4, !dbg !377
  %30 = add nsw i32 %29, 1, !dbg !377
  store i32 %30, i32* @PagingReferenceCount, align 4, !dbg !377
  %31 = load i32, i32* @PagingReferenceCount, align 4, !dbg !378
  %32 = icmp eq i32 %31, 1, !dbg !380
  call void @llvm.dbg.declare(metadata i32* %10, metadata !381, metadata !111), !dbg !382
  call void @llvm.dbg.declare(metadata i32* %11, metadata !387, metadata !111), !dbg !388
  call void @llvm.dbg.declare(metadata i32* %8, metadata !381, metadata !111), !dbg !389
  call void @llvm.dbg.declare(metadata i32* %9, metadata !387, metadata !111), !dbg !411
  call void @llvm.dbg.declare(metadata i32* %6, metadata !381, metadata !111), !dbg !412
  call void @llvm.dbg.declare(metadata i32* %7, metadata !387, metadata !111), !dbg !417
  call void @llvm.dbg.declare(metadata i32* %4, metadata !418, metadata !111), !dbg !419
  call void @llvm.dbg.declare(metadata i32* %5, metadata !424, metadata !111), !dbg !425
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_6.i, metadata !426, metadata !111), !dbg !428
  call void @llvm.dbg.declare(metadata i32* %2, metadata !429, metadata !111), !dbg !430
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_3.i, metadata !435, metadata !111), !dbg !437
  br i1 %32, label %33, label %34, !dbg !438

; <label>:33                                      ; preds = %0
  br label %34, !dbg !439

; <label>:34                                      ; preds = %33, %0
  %35 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !441
  store i32 %35, i32* %disketteExtension, align 4, !dbg !442
  %36 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !443
  store i32 %36, i32* %irpSp, align 4, !dbg !444
  %37 = load i32, i32* %disketteExtension__IsRemoved, align 4, !dbg !445
  %38 = icmp ne i32 %37, 0, !dbg !445
  br i1 %38, label %39, label %50, !dbg !446

; <label>:39                                      ; preds = %34
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !447
  store i32 -1073741738, i32* %Irp__IoStatus__Status, align 4, !dbg !448
  store i32 -1073741738, i32* @myStatus, align 4, !dbg !449
  %40 = load i32, i32* %14, align 4, !dbg !450
  %41 = bitcast i32* %10 to i8*, !dbg !451
  call void @llvm.lifetime.start(i64 4, i8* %41), !dbg !451
  %42 = bitcast i32* %11 to i8*, !dbg !451
  call void @llvm.lifetime.start(i64 4, i8* %42), !dbg !451
  store i32 %40, i32* %10, align 4, !dbg !451
  store i32 0, i32* %11, align 4, !dbg !451
  %43 = load i32, i32* @s, align 4, !dbg !452
  %44 = load i32, i32* @NP, align 4, !dbg !455
  %45 = icmp eq i32 %43, %44, !dbg !456
  br i1 %45, label %IofCompleteRequest.exit, label %46, !dbg !457

; <label>:46                                      ; preds = %39
  call void (...) @__VERIFIER_error() #6, !dbg !458
  unreachable, !dbg !458

IofCompleteRequest.exit:                          ; preds = %39
  %47 = load i32, i32* @DC, align 4, !dbg !462
  store i32 %47, i32* @s, align 4, !dbg !464
  %48 = bitcast i32* %10 to i8*, !dbg !465
  call void @llvm.lifetime.end(i64 4, i8* %48), !dbg !465
  %49 = bitcast i32* %11 to i8*, !dbg !465
  call void @llvm.lifetime.end(i64 4, i8* %49), !dbg !465
  store i32 -1073741738, i32* %12, !dbg !466
  br label %320, !dbg !466

; <label>:50                                      ; preds = %34
  %51 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !467
  %52 = icmp eq i32 %51, 0, !dbg !468
  br i1 %52, label %53, label %54, !dbg !469

; <label>:53                                      ; preds = %50
  br label %81, !dbg !470

; <label>:54                                      ; preds = %50
  %55 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !472
  %56 = icmp eq i32 %55, 5, !dbg !473
  br i1 %56, label %57, label %58, !dbg !474

; <label>:57                                      ; preds = %54
  br label %85, !dbg !475

; <label>:58                                      ; preds = %54
  %59 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !477
  %60 = icmp eq i32 %59, 1, !dbg !478
  br i1 %60, label %61, label %62, !dbg !479

; <label>:61                                      ; preds = %58
  br label %85, !dbg !480

; <label>:62                                      ; preds = %58
  %63 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !482
  %64 = icmp eq i32 %63, 6, !dbg !483
  br i1 %64, label %65, label %66, !dbg !484

; <label>:65                                      ; preds = %62
  br label %153, !dbg !485

; <label>:66                                      ; preds = %62
  %67 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !487
  %68 = icmp eq i32 %67, 3, !dbg !488
  br i1 %68, label %69, label %70, !dbg !489

; <label>:69                                      ; preds = %66
  br label %153, !dbg !490

; <label>:70                                      ; preds = %66
  %71 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !492
  %72 = icmp eq i32 %71, 4, !dbg !493
  br i1 %72, label %73, label %74, !dbg !494

; <label>:73                                      ; preds = %70
  br label %220, !dbg !495

; <label>:74                                      ; preds = %70
  %75 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !497
  %76 = icmp eq i32 %75, 2, !dbg !498
  br i1 %76, label %77, label %78, !dbg !499

; <label>:77                                      ; preds = %74
  br label %235, !dbg !500

; <label>:78                                      ; preds = %74
  br label %288, !dbg !502
                                                  ; No predecessors!
  br i1 false, label %80, label %303, !dbg !503

; <label>:80                                      ; preds = %79
  br label %81, !dbg !504

; <label>:81                                      ; preds = %80, %53
  %82 = load i32, i32* %13, align 4, !dbg !505
  %83 = load i32, i32* %14, align 4, !dbg !507
  %84 = call i32 @FloppyStartDevice(i32 %82, i32 %83), !dbg !508
  store i32 %84, i32* %ntStatus, align 4, !dbg !509
  br label %304, !dbg !510

; <label>:85                                      ; preds = %61, %57
  %86 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !511
  %87 = icmp eq i32 %86, 5, !dbg !513
  br i1 %87, label %88, label %89, !dbg !514

; <label>:88                                      ; preds = %85
  br label %89, !dbg !515

; <label>:89                                      ; preds = %88, %85
  %90 = load i32, i32* %disketteExtension__IsStarted, align 4, !dbg !517
  %91 = icmp ne i32 %90, 0, !dbg !517
  br i1 %91, label %108, label %92, !dbg !519

; <label>:92                                      ; preds = %89
  %93 = load i32, i32* @s, align 4, !dbg !520
  %94 = load i32, i32* @NP, align 4, !dbg !523
  %95 = icmp eq i32 %93, %94, !dbg !524
  br i1 %95, label %96, label %98, !dbg !525

; <label>:96                                      ; preds = %92
  %97 = load i32, i32* @SKIP1, align 4, !dbg !526
  store i32 %97, i32* @s, align 4, !dbg !528
  br label %99, !dbg !529

; <label>:98                                      ; preds = %92
  call void (...) @__VERIFIER_error() #6, !dbg !530
  unreachable, !dbg !530

errorFn.exit:                                     ; No predecessors!
  br label %99

; <label>:99                                      ; preds = %errorFn.exit, %96
  %100 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !534
  %101 = add nsw i32 %100, 1, !dbg !534
  store i32 %101, i32* %Irp__CurrentLocation, align 4, !dbg !534
  %102 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !536
  %103 = add nsw i32 %102, 1, !dbg !536
  store i32 %103, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !536
  %104 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !537
  %105 = load i32, i32* %14, align 4, !dbg !538
  %106 = call i32 @IofCallDriver(i32 %104, i32 %105), !dbg !539
  store i32 %106, i32* %ntStatus, align 4, !dbg !540
  %107 = load i32, i32* %ntStatus, align 4, !dbg !541
  store i32 %107, i32* %12, !dbg !542
  br label %320, !dbg !542

; <label>:108                                     ; preds = %89
  store i32 1, i32* %disketteExtension__HoldNewRequests, align 4, !dbg !543
  %109 = load i32, i32* %14, align 4, !dbg !545
  %110 = load i32, i32* %disketteExtension, align 4, !dbg !546
  %111 = call i32 @FlQueueIrpToThread(i32 %109, i32 %110), !dbg !547
  store i32 %111, i32* %ntStatus, align 4, !dbg !548
  %112 = load i32, i32* %ntStatus, align 4, !dbg !549
  %113 = sext i32 %112 to i64, !dbg !550
  store i64 %113, i64* %__cil_tmp29, align 8, !dbg !551
  %114 = load i64, i64* %__cil_tmp29, align 8, !dbg !552
  %115 = icmp eq i64 %114, 259, !dbg !553
  br i1 %115, label %116, label %139, !dbg !554

; <label>:116                                     ; preds = %108
  %117 = load i32, i32* %disketteExtension__FloppyThread, align 4, !dbg !555
  %118 = load i32, i32* @Executive, align 4, !dbg !558
  %119 = load i32, i32* @KernelMode, align 4, !dbg !559
  %120 = call i32 @KeWaitForSingleObject(i32 %117, i32 %118, i32 %119, i32 0, i32 0), !dbg !560
  %121 = load i32, i32* %disketteExtension__FloppyThread, align 4, !dbg !561
  %122 = icmp ne i32 %121, 0, !dbg !563
  br i1 %122, label %123, label %124, !dbg !564

; <label>:123                                     ; preds = %116
  br label %124, !dbg !565

; <label>:124                                     ; preds = %123, %116
  store i32 0, i32* %disketteExtension__FloppyThread, align 4, !dbg !567
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !568
  store i32 0, i32* @myStatus, align 4, !dbg !569
  %125 = load i32, i32* @s, align 4, !dbg !570
  %126 = load i32, i32* @NP, align 4, !dbg !572
  %127 = icmp eq i32 %125, %126, !dbg !573
  br i1 %127, label %128, label %130, !dbg !574

; <label>:128                                     ; preds = %124
  %129 = load i32, i32* @SKIP1, align 4, !dbg !575
  store i32 %129, i32* @s, align 4, !dbg !577
  br label %131, !dbg !578

; <label>:130                                     ; preds = %124
  call void (...) @__VERIFIER_error() #6, !dbg !579
  unreachable, !dbg !579

errorFn.exit1:                                    ; No predecessors!
  br label %131

; <label>:131                                     ; preds = %errorFn.exit1, %128
  %132 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !583
  %133 = add nsw i32 %132, 1, !dbg !583
  store i32 %133, i32* %Irp__CurrentLocation, align 4, !dbg !583
  %134 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !585
  %135 = add nsw i32 %134, 1, !dbg !585
  store i32 %135, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !585
  %136 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !586
  %137 = load i32, i32* %14, align 4, !dbg !587
  %138 = call i32 @IofCallDriver(i32 %136, i32 %137), !dbg !588
  store i32 %138, i32* %ntStatus, align 4, !dbg !589
  br label %152, !dbg !590

; <label>:139                                     ; preds = %108
  store i32 -1073741823, i32* %ntStatus, align 4, !dbg !591
  %140 = load i32, i32* %ntStatus, align 4, !dbg !592
  store i32 %140, i32* %Irp__IoStatus__Status, align 4, !dbg !593
  %141 = load i32, i32* %ntStatus, align 4, !dbg !594
  store i32 %141, i32* @myStatus, align 4, !dbg !595
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !596
  %142 = load i32, i32* %14, align 4, !dbg !597
  %143 = bitcast i32* %8 to i8*, !dbg !598
  call void @llvm.lifetime.start(i64 4, i8* %143), !dbg !598
  %144 = bitcast i32* %9 to i8*, !dbg !598
  call void @llvm.lifetime.start(i64 4, i8* %144), !dbg !598
  store i32 %142, i32* %8, align 4, !dbg !598
  store i32 0, i32* %9, align 4, !dbg !598
  %145 = load i32, i32* @s, align 4, !dbg !599
  %146 = load i32, i32* @NP, align 4, !dbg !600
  %147 = icmp eq i32 %145, %146, !dbg !601
  br i1 %147, label %IofCompleteRequest.exit2, label %148, !dbg !602

; <label>:148                                     ; preds = %139
  call void (...) @__VERIFIER_error() #6, !dbg !603
  unreachable, !dbg !603

IofCompleteRequest.exit2:                         ; preds = %139
  %149 = load i32, i32* @DC, align 4, !dbg !605
  store i32 %149, i32* @s, align 4, !dbg !606
  %150 = bitcast i32* %8 to i8*, !dbg !607
  call void @llvm.lifetime.end(i64 4, i8* %150), !dbg !607
  %151 = bitcast i32* %9 to i8*, !dbg !607
  call void @llvm.lifetime.end(i64 4, i8* %151), !dbg !607
  br label %152

; <label>:152                                     ; preds = %IofCompleteRequest.exit2, %131
  br label %304, !dbg !608

; <label>:153                                     ; preds = %69, %65
  %154 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !609
  %155 = icmp eq i32 %154, 6, !dbg !611
  br i1 %155, label %156, label %157, !dbg !612

; <label>:156                                     ; preds = %153
  br label %157, !dbg !613

; <label>:157                                     ; preds = %156, %153
  %158 = load i32, i32* %disketteExtension__IsStarted, align 4, !dbg !615
  %159 = icmp ne i32 %158, 0, !dbg !615
  br i1 %159, label %175, label %160, !dbg !616

; <label>:160                                     ; preds = %157
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !617
  store i32 0, i32* @myStatus, align 4, !dbg !619
  %161 = load i32, i32* @s, align 4, !dbg !620
  %162 = load i32, i32* @NP, align 4, !dbg !622
  %163 = icmp eq i32 %161, %162, !dbg !623
  br i1 %163, label %164, label %166, !dbg !624

; <label>:164                                     ; preds = %160
  %165 = load i32, i32* @SKIP1, align 4, !dbg !625
  store i32 %165, i32* @s, align 4, !dbg !627
  br label %167, !dbg !628

; <label>:166                                     ; preds = %160
  call void (...) @__VERIFIER_error() #6, !dbg !629
  unreachable, !dbg !629

errorFn.exit3:                                    ; No predecessors!
  br label %167

; <label>:167                                     ; preds = %errorFn.exit3, %164
  %168 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !633
  %169 = add nsw i32 %168, 1, !dbg !633
  store i32 %169, i32* %Irp__CurrentLocation, align 4, !dbg !633
  %170 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !635
  %171 = add nsw i32 %170, 1, !dbg !635
  store i32 %171, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !635
  %172 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !636
  %173 = load i32, i32* %14, align 4, !dbg !637
  %174 = call i32 @IofCallDriver(i32 %172, i32 %173), !dbg !638
  store i32 %174, i32* %ntStatus, align 4, !dbg !639
  br label %219, !dbg !640

; <label>:175                                     ; preds = %157
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !641
  store i32 0, i32* @myStatus, align 4, !dbg !642
  %176 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !643
  store i32 %176, i32* %irpSp___0, align 4, !dbg !644
  %177 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !645
  %178 = sub nsw i32 %177, 1, !dbg !646
  store i32 %178, i32* %nextIrpSp, align 4, !dbg !647
  store i32 0, i32* %nextIrpSp__Control, align 4, !dbg !648
  %179 = load i32, i32* @s, align 4, !dbg !649
  %180 = load i32, i32* @NP, align 4, !dbg !651
  %181 = icmp ne i32 %179, %180, !dbg !652
  br i1 %181, label %182, label %183, !dbg !653

; <label>:182                                     ; preds = %175
  call void (...) @__VERIFIER_error() #6, !dbg !654
  unreachable, !dbg !654

errorFn.exit4:                                    ; No predecessors!
  br label %189, !dbg !658

; <label>:183                                     ; preds = %175
  %184 = load i32, i32* @compRegistered, align 4, !dbg !659
  %185 = icmp ne i32 %184, 0, !dbg !662
  br i1 %185, label %186, label %187, !dbg !663

; <label>:186                                     ; preds = %183
  call void (...) @__VERIFIER_error() #6, !dbg !664
  unreachable, !dbg !664

errorFn.exit5:                                    ; No predecessors!
  br label %188, !dbg !668

; <label>:187                                     ; preds = %183
  store i32 1, i32* @compRegistered, align 4, !dbg !669
  br label %188

; <label>:188                                     ; preds = %187, %errorFn.exit5
  br label %189

; <label>:189                                     ; preds = %188, %errorFn.exit4
  %190 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !671
  %191 = sub nsw i32 %190, 1, !dbg !673
  store i32 %191, i32* %irpSp___1, align 4, !dbg !674
  %192 = load i32, i32* %doneEvent, align 4, !dbg !675
  store i32 %192, i32* %irpSp__Context, align 4, !dbg !676
  store i32 224, i32* %irpSp__Control, align 4, !dbg !677
  %193 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !678
  %194 = load i32, i32* %14, align 4, !dbg !679
  %195 = call i32 @IofCallDriver(i32 %193, i32 %194), !dbg !680
  store i32 %195, i32* %ntStatus, align 4, !dbg !681
  %196 = load i32, i32* %ntStatus, align 4, !dbg !682
  %197 = sext i32 %196 to i64, !dbg !684
  store i64 %197, i64* %__cil_tmp30, align 8, !dbg !685
  %198 = load i64, i64* %__cil_tmp30, align 8, !dbg !686
  %199 = icmp eq i64 %198, 259, !dbg !688
  br i1 %199, label %200, label %206, !dbg !689

; <label>:200                                     ; preds = %189
  %201 = load i32, i32* %doneEvent, align 4, !dbg !690
  %202 = load i32, i32* @Executive, align 4, !dbg !693
  %203 = load i32, i32* @KernelMode, align 4, !dbg !694
  %204 = call i32 @KeWaitForSingleObject(i32 %201, i32 %202, i32 %203, i32 0, i32 0), !dbg !695
  %205 = load i32, i32* @myStatus, align 4, !dbg !696
  store i32 %205, i32* %ntStatus, align 4, !dbg !697
  br label %206, !dbg !698

; <label>:206                                     ; preds = %200, %189
  store i32 0, i32* %disketteExtension__HoldNewRequests, align 4, !dbg !699
  %207 = load i32, i32* %ntStatus, align 4, !dbg !700
  store i32 %207, i32* %Irp__IoStatus__Status, align 4, !dbg !701
  %208 = load i32, i32* %ntStatus, align 4, !dbg !702
  store i32 %208, i32* @myStatus, align 4, !dbg !703
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !704
  %209 = load i32, i32* %14, align 4, !dbg !705
  %210 = bitcast i32* %6 to i8*, !dbg !706
  call void @llvm.lifetime.start(i64 4, i8* %210), !dbg !706
  %211 = bitcast i32* %7 to i8*, !dbg !706
  call void @llvm.lifetime.start(i64 4, i8* %211), !dbg !706
  store i32 %209, i32* %6, align 4, !dbg !706
  store i32 0, i32* %7, align 4, !dbg !706
  %212 = load i32, i32* @s, align 4, !dbg !707
  %213 = load i32, i32* @NP, align 4, !dbg !708
  %214 = icmp eq i32 %212, %213, !dbg !709
  br i1 %214, label %IofCompleteRequest.exit6, label %215, !dbg !710

; <label>:215                                     ; preds = %206
  call void (...) @__VERIFIER_error() #6, !dbg !711
  unreachable, !dbg !711

IofCompleteRequest.exit6:                         ; preds = %206
  %216 = load i32, i32* @DC, align 4, !dbg !713
  store i32 %216, i32* @s, align 4, !dbg !714
  %217 = bitcast i32* %6 to i8*, !dbg !715
  call void @llvm.lifetime.end(i64 4, i8* %217), !dbg !715
  %218 = bitcast i32* %7 to i8*, !dbg !715
  call void @llvm.lifetime.end(i64 4, i8* %218), !dbg !715
  br label %219

; <label>:219                                     ; preds = %IofCompleteRequest.exit6, %167
  br label %304, !dbg !716

; <label>:220                                     ; preds = %73
  store i32 0, i32* %disketteExtension__IsStarted, align 4, !dbg !717
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !718
  store i32 0, i32* @myStatus, align 4, !dbg !719
  %221 = load i32, i32* @s, align 4, !dbg !720
  %222 = load i32, i32* @NP, align 4, !dbg !722
  %223 = icmp eq i32 %221, %222, !dbg !723
  br i1 %223, label %224, label %226, !dbg !724

; <label>:224                                     ; preds = %220
  %225 = load i32, i32* @SKIP1, align 4, !dbg !725
  store i32 %225, i32* @s, align 4, !dbg !727
  br label %227, !dbg !728

; <label>:226                                     ; preds = %220
  call void (...) @__VERIFIER_error() #6, !dbg !729
  unreachable, !dbg !729

errorFn.exit7:                                    ; No predecessors!
  br label %227

; <label>:227                                     ; preds = %errorFn.exit7, %224
  %228 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !733
  %229 = add nsw i32 %228, 1, !dbg !733
  store i32 %229, i32* %Irp__CurrentLocation, align 4, !dbg !733
  %230 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !735
  %231 = add nsw i32 %230, 1, !dbg !735
  store i32 %231, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !735
  %232 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !736
  %233 = load i32, i32* %14, align 4, !dbg !737
  %234 = call i32 @IofCallDriver(i32 %232, i32 %233), !dbg !738
  store i32 %234, i32* %ntStatus, align 4, !dbg !739
  br label %304, !dbg !740

; <label>:235                                     ; preds = %77
  store i32 0, i32* %disketteExtension__HoldNewRequests, align 4, !dbg !741
  store i32 0, i32* %disketteExtension__IsStarted, align 4, !dbg !742
  store i32 1, i32* %disketteExtension__IsRemoved, align 4, !dbg !743
  %236 = load i32, i32* @s, align 4, !dbg !744
  %237 = load i32, i32* @NP, align 4, !dbg !746
  %238 = icmp eq i32 %236, %237, !dbg !747
  br i1 %238, label %239, label %241, !dbg !748

; <label>:239                                     ; preds = %235
  %240 = load i32, i32* @SKIP1, align 4, !dbg !749
  store i32 %240, i32* @s, align 4, !dbg !751
  br label %242, !dbg !752

; <label>:241                                     ; preds = %235
  call void (...) @__VERIFIER_error() #6, !dbg !753
  unreachable, !dbg !753

errorFn.exit8:                                    ; No predecessors!
  br label %242

; <label>:242                                     ; preds = %errorFn.exit8, %239
  %243 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !757
  %244 = add nsw i32 %243, 1, !dbg !757
  store i32 %244, i32* %Irp__CurrentLocation, align 4, !dbg !757
  %245 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !759
  %246 = add nsw i32 %245, 1, !dbg !759
  store i32 %246, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !759
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !760
  store i32 0, i32* @myStatus, align 4, !dbg !761
  %247 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !762
  %248 = load i32, i32* %14, align 4, !dbg !763
  %249 = call i32 @IofCallDriver(i32 %247, i32 %248), !dbg !764
  store i32 %249, i32* %ntStatus, align 4, !dbg !765
  %250 = load i32, i32* %disketteExtension__InterfaceString__Buffer, align 4, !dbg !766
  %251 = icmp ne i32 %250, 0, !dbg !767
  br i1 %251, label %252, label %268, !dbg !768

; <label>:252                                     ; preds = %242
  %253 = load i32, i32* %disketteExtension__InterfaceString, align 4, !dbg !769
  %254 = bitcast i32* %3 to i8*, !dbg !770
  call void @llvm.lifetime.start(i64 4, i8* %254), !dbg !770
  %255 = bitcast i32* %4 to i8*, !dbg !770
  call void @llvm.lifetime.start(i64 4, i8* %255), !dbg !770
  %256 = bitcast i32* %5 to i8*, !dbg !770
  call void @llvm.lifetime.start(i64 4, i8* %256), !dbg !770
  %257 = bitcast i32* %tmp_ndt_6.i to i8*, !dbg !770
  call void @llvm.lifetime.start(i64 4, i8* %257), !dbg !770
  store i32 %253, i32* %4, align 4, !dbg !770
  store i32 0, i32* %5, align 4, !dbg !770
  %258 = call i32 @__VERIFIER_nondet_int() #4, !dbg !771
  store i32 %258, i32* %tmp_ndt_6.i, align 4, !dbg !772
  %259 = load i32, i32* %tmp_ndt_6.i, align 4, !dbg !773
  %260 = icmp eq i32 %259, 0, !dbg !775
  br i1 %260, label %261, label %262, !dbg !776

; <label>:261                                     ; preds = %252
  store i32 0, i32* %3, !dbg !777
  br label %IoSetDeviceInterfaceState.exit, !dbg !777

; <label>:262                                     ; preds = %252
  store i32 -1073741823, i32* %3, !dbg !781
  br label %IoSetDeviceInterfaceState.exit, !dbg !781

IoSetDeviceInterfaceState.exit:                   ; preds = %261, %262
  %263 = load i32, i32* %3, !dbg !782
  %264 = bitcast i32* %3 to i8*, !dbg !782
  call void @llvm.lifetime.end(i64 4, i8* %264), !dbg !782
  %265 = bitcast i32* %4 to i8*, !dbg !782
  call void @llvm.lifetime.end(i64 4, i8* %265), !dbg !782
  %266 = bitcast i32* %5 to i8*, !dbg !782
  call void @llvm.lifetime.end(i64 4, i8* %266), !dbg !782
  %267 = bitcast i32* %tmp_ndt_6.i to i8*, !dbg !782
  call void @llvm.lifetime.end(i64 4, i8* %267), !dbg !782
  br label %268, !dbg !783

; <label>:268                                     ; preds = %IoSetDeviceInterfaceState.exit, %242
  %269 = load i32, i32* %disketteExtension__ArcName__Length, align 4, !dbg !784
  %270 = icmp ne i32 %269, 0, !dbg !785
  br i1 %270, label %271, label %285, !dbg !786

; <label>:271                                     ; preds = %268
  %272 = load i32, i32* %disketteExtension__ArcName, align 4, !dbg !787
  %273 = bitcast i32* %1 to i8*, !dbg !788
  call void @llvm.lifetime.start(i64 4, i8* %273), !dbg !788
  %274 = bitcast i32* %2 to i8*, !dbg !788
  call void @llvm.lifetime.start(i64 4, i8* %274), !dbg !788
  %275 = bitcast i32* %tmp_ndt_3.i to i8*, !dbg !788
  call void @llvm.lifetime.start(i64 4, i8* %275), !dbg !788
  store i32 %272, i32* %2, align 4, !dbg !788
  %276 = call i32 @__VERIFIER_nondet_int() #4, !dbg !789
  store i32 %276, i32* %tmp_ndt_3.i, align 4, !dbg !790
  %277 = load i32, i32* %tmp_ndt_3.i, align 4, !dbg !791
  %278 = icmp eq i32 %277, 0, !dbg !793
  br i1 %278, label %279, label %280, !dbg !794

; <label>:279                                     ; preds = %271
  store i32 0, i32* %1, !dbg !795
  br label %IoDeleteSymbolicLink.exit, !dbg !795

; <label>:280                                     ; preds = %271
  store i32 -1073741823, i32* %1, !dbg !799
  br label %IoDeleteSymbolicLink.exit, !dbg !799

IoDeleteSymbolicLink.exit:                        ; preds = %279, %280
  %281 = load i32, i32* %1, !dbg !800
  %282 = bitcast i32* %1 to i8*, !dbg !800
  call void @llvm.lifetime.end(i64 4, i8* %282), !dbg !800
  %283 = bitcast i32* %2 to i8*, !dbg !800
  call void @llvm.lifetime.end(i64 4, i8* %283), !dbg !800
  %284 = bitcast i32* %tmp_ndt_3.i to i8*, !dbg !800
  call void @llvm.lifetime.end(i64 4, i8* %284), !dbg !800
  br label %285, !dbg !801

; <label>:285                                     ; preds = %IoDeleteSymbolicLink.exit, %268
  %286 = load i32, i32* %IoGetConfigurationInformation__FloppyCount, align 4, !dbg !802
  %287 = add nsw i32 %286, -1, !dbg !802
  store i32 %287, i32* %IoGetConfigurationInformation__FloppyCount, align 4, !dbg !802
  br label %304, !dbg !803

; <label>:288                                     ; preds = %78
  %289 = load i32, i32* @s, align 4, !dbg !804
  %290 = load i32, i32* @NP, align 4, !dbg !806
  %291 = icmp eq i32 %289, %290, !dbg !807
  br i1 %291, label %292, label %294, !dbg !808

; <label>:292                                     ; preds = %288
  %293 = load i32, i32* @SKIP1, align 4, !dbg !809
  store i32 %293, i32* @s, align 4, !dbg !811
  br label %295, !dbg !812

; <label>:294                                     ; preds = %288
  call void (...) @__VERIFIER_error() #6, !dbg !813
  unreachable, !dbg !813

errorFn.exit9:                                    ; No predecessors!
  br label %295

; <label>:295                                     ; preds = %errorFn.exit9, %292
  %296 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !817
  %297 = add nsw i32 %296, 1, !dbg !817
  store i32 %297, i32* %Irp__CurrentLocation, align 4, !dbg !817
  %298 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !819
  %299 = add nsw i32 %298, 1, !dbg !819
  store i32 %299, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !819
  %300 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !820
  %301 = load i32, i32* %14, align 4, !dbg !821
  %302 = call i32 @IofCallDriver(i32 %300, i32 %301), !dbg !822
  store i32 %302, i32* %ntStatus, align 4, !dbg !823
  br label %305, !dbg !824

; <label>:303                                     ; preds = %79
  br label %304, !dbg !825

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
  %313 = load i32, i32* @PagingReferenceCount, align 4, !dbg !826
  %314 = add nsw i32 %313, -1, !dbg !826
  store i32 %314, i32* @PagingReferenceCount, align 4, !dbg !826
  %315 = load i32, i32* @PagingReferenceCount, align 4, !dbg !827
  %316 = icmp eq i32 %315, 0, !dbg !829
  br i1 %316, label %317, label %318, !dbg !830

; <label>:317                                     ; preds = %312
  br label %318, !dbg !831

; <label>:318                                     ; preds = %317, %312
  %319 = load i32, i32* %ntStatus, align 4, !dbg !833
  store i32 %319, i32* %12, !dbg !834
  br label %320, !dbg !834

; <label>:320                                     ; preds = %318, %99, %IofCompleteRequest.exit
  %321 = load i32, i32* %12, !dbg !835
  ret i32 %321, !dbg !835
}

; Function Attrs: nounwind ssp uwtable
define void @IofCompleteRequest(i32 %Irp, i32 %PriorityBoost) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %Irp, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !381, metadata !111), !dbg !836
  store i32 %PriorityBoost, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !387, metadata !111), !dbg !837
  %3 = load i32, i32* @s, align 4, !dbg !838
  %4 = load i32, i32* @NP, align 4, !dbg !839
  %5 = icmp eq i32 %3, %4, !dbg !840
  br i1 %5, label %6, label %8, !dbg !841

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* @DC, align 4, !dbg !842
  store i32 %7, i32* @s, align 4, !dbg !843
  br label %9, !dbg !844

; <label>:8                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !845
  unreachable, !dbg !845

errorFn.exit:                                     ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %errorFn.exit, %6
  ret void, !dbg !847
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
  call void @llvm.dbg.declare(metadata i32* %22, metadata !848, metadata !111), !dbg !849
  store i32 %Irp, i32* %23, align 4
  call void @llvm.dbg.declare(metadata i32* %23, metadata !850, metadata !111), !dbg !851
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !852, metadata !111), !dbg !853
  %24 = call i32 @__VERIFIER_nondet_int(), !dbg !854
  store i32 %24, i32* %DeviceObject__DeviceExtension, align 4, !dbg !853
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !855, metadata !111), !dbg !856
  %25 = call i32 @__VERIFIER_nondet_int(), !dbg !857
  store i32 %25, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !856
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !858, metadata !111), !dbg !859
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__TargetObject, metadata !860, metadata !111), !dbg !861
  %26 = call i32 @__VERIFIER_nondet_int(), !dbg !862
  store i32 %26, i32* %disketteExtension__TargetObject, align 4, !dbg !861
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__MaxTransferSize, metadata !863, metadata !111), !dbg !864
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__DriveType, metadata !865, metadata !111), !dbg !866
  %27 = call i32 @__VERIFIER_nondet_int(), !dbg !867
  store i32 %27, i32* %disketteExtension__DriveType, align 4, !dbg !866
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__PerpendicularMode, metadata !868, metadata !111), !dbg !869
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__DeviceUnit, metadata !870, metadata !111), !dbg !871
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__DriveOnValue, metadata !872, metadata !111), !dbg !873
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__UnderlyingPDO, metadata !874, metadata !111), !dbg !875
  %28 = call i32 @__VERIFIER_nondet_int(), !dbg !876
  store i32 %28, i32* %disketteExtension__UnderlyingPDO, align 4, !dbg !875
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__InterfaceString, metadata !877, metadata !111), !dbg !878
  %29 = call i32 @__VERIFIER_nondet_int(), !dbg !879
  store i32 %29, i32* %disketteExtension__InterfaceString, align 4, !dbg !878
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__IsStarted, metadata !880, metadata !111), !dbg !881
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__HoldNewRequests, metadata !882, metadata !111), !dbg !883
  call void @llvm.dbg.declare(metadata i32* %ntStatus, metadata !884, metadata !111), !dbg !885
  call void @llvm.dbg.declare(metadata i32* %pnpStatus, metadata !886, metadata !111), !dbg !887
  call void @llvm.dbg.declare(metadata i32* %doneEvent, metadata !888, metadata !111), !dbg !889
  %30 = call i32 @__VERIFIER_nondet_int(), !dbg !890
  store i32 %30, i32* %doneEvent, align 4, !dbg !889
  call void @llvm.dbg.declare(metadata i32* %fdcInfo, metadata !891, metadata !111), !dbg !892
  %31 = call i32 @__VERIFIER_nondet_int(), !dbg !893
  store i32 %31, i32* %fdcInfo, align 4, !dbg !892
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__BufferCount, metadata !894, metadata !111), !dbg !895
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__BufferSize, metadata !896, metadata !111), !dbg !897
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__MaxTransferSize, metadata !898, metadata !111), !dbg !899
  %32 = call i32 @__VERIFIER_nondet_int(), !dbg !900
  store i32 %32, i32* %fdcInfo__MaxTransferSize, align 4, !dbg !899
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__AcpiBios, metadata !901, metadata !111), !dbg !902
  %33 = call i32 @__VERIFIER_nondet_int(), !dbg !903
  store i32 %33, i32* %fdcInfo__AcpiBios, align 4, !dbg !902
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__AcpiFdiSupported, metadata !904, metadata !111), !dbg !905
  %34 = call i32 @__VERIFIER_nondet_int(), !dbg !906
  store i32 %34, i32* %fdcInfo__AcpiFdiSupported, align 4, !dbg !905
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__PeripheralNumber, metadata !907, metadata !111), !dbg !908
  %35 = call i32 @__VERIFIER_nondet_int(), !dbg !909
  store i32 %35, i32* %fdcInfo__PeripheralNumber, align 4, !dbg !908
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__BusType, metadata !910, metadata !111), !dbg !911
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__ControllerNumber, metadata !912, metadata !111), !dbg !913
  %36 = call i32 @__VERIFIER_nondet_int(), !dbg !914
  store i32 %36, i32* %fdcInfo__ControllerNumber, align 4, !dbg !913
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__UnitNumber, metadata !915, metadata !111), !dbg !916
  %37 = call i32 @__VERIFIER_nondet_int(), !dbg !917
  store i32 %37, i32* %fdcInfo__UnitNumber, align 4, !dbg !916
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__BusNumber, metadata !918, metadata !111), !dbg !919
  %38 = call i32 @__VERIFIER_nondet_int(), !dbg !920
  store i32 %38, i32* %fdcInfo__BusNumber, align 4, !dbg !919
  call void @llvm.dbg.declare(metadata i32* %Dc, metadata !921, metadata !111), !dbg !922
  call void @llvm.dbg.declare(metadata i32* %Fp, metadata !923, metadata !111), !dbg !924
  call void @llvm.dbg.declare(metadata i32* %disketteExtension, metadata !925, metadata !111), !dbg !926
  call void @llvm.dbg.declare(metadata i32* %irpSp, metadata !927, metadata !111), !dbg !928
  call void @llvm.dbg.declare(metadata i32* %irpSp___0, metadata !929, metadata !111), !dbg !930
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp, metadata !931, metadata !111), !dbg !932
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp__Control, metadata !933, metadata !111), !dbg !934
  call void @llvm.dbg.declare(metadata i32* %irpSp___1, metadata !935, metadata !111), !dbg !936
  call void @llvm.dbg.declare(metadata i32* %irpSp__Control, metadata !937, metadata !111), !dbg !938
  call void @llvm.dbg.declare(metadata i32* %irpSp__Context, metadata !939, metadata !111), !dbg !940
  call void @llvm.dbg.declare(metadata i32* %InterfaceType, metadata !941, metadata !111), !dbg !942
  call void @llvm.dbg.declare(metadata i32* %KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86, metadata !943, metadata !111), !dbg !944
  %39 = call i32 @__VERIFIER_nondet_int(), !dbg !945
  store i32 %39, i32* %KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86, align 4, !dbg !944
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp42, metadata !946, metadata !111), !dbg !947
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp43, metadata !948, metadata !111), !dbg !949
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp44, metadata !950, metadata !111), !dbg !951
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp45, metadata !952, metadata !111), !dbg !953
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp46, metadata !954, metadata !111), !dbg !955
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp47, metadata !956, metadata !111), !dbg !957
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp48, metadata !958, metadata !111), !dbg !959
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp49, metadata !960, metadata !111), !dbg !961
  %40 = load i32, i32* @DiskController, align 4, !dbg !962
  store i32 %40, i32* %Dc, align 4, !dbg !964
  %41 = load i32, i32* @FloppyDiskPeripheral, align 4, !dbg !965
  store i32 %41, i32* %Fp, align 4, !dbg !966
  %42 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !967
  store i32 %42, i32* %disketteExtension, align 4, !dbg !968
  %43 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !969
  store i32 %43, i32* %irpSp, align 4, !dbg !970
  %44 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !971
  store i32 %44, i32* %irpSp___0, align 4, !dbg !972
  %45 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !973
  %46 = sub nsw i32 %45, 1, !dbg !974
  store i32 %46, i32* %nextIrpSp, align 4, !dbg !975
  store i32 0, i32* %nextIrpSp__Control, align 4, !dbg !976
  %47 = load i32, i32* @s, align 4, !dbg !977
  %48 = load i32, i32* @NP, align 4, !dbg !979
  %49 = icmp ne i32 %47, %48, !dbg !980
  call void @llvm.dbg.declare(metadata i32* %20, metadata !110, metadata !111), !dbg !981
  call void @llvm.dbg.declare(metadata i32* %21, metadata !113, metadata !111), !dbg !990
  call void @llvm.dbg.declare(metadata i32* %18, metadata !381, metadata !111), !dbg !991
  call void @llvm.dbg.declare(metadata i32* %19, metadata !387, metadata !111), !dbg !994
  call void @llvm.dbg.declare(metadata i32* %10, metadata !995, metadata !111), !dbg !996
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1002, metadata !111), !dbg !1003
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1004, metadata !111), !dbg !1005
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1006, metadata !111), !dbg !1007
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1008, metadata !111), !dbg !1009
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1010, metadata !111), !dbg !1011
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1012, metadata !111), !dbg !1013
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1014, metadata !111), !dbg !1015
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_4.i, metadata !1016, metadata !111), !dbg !1018
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1019, metadata !111), !dbg !1020
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1025, metadata !111), !dbg !1026
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1027, metadata !111), !dbg !1028
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1029, metadata !111), !dbg !1030
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_5.i, metadata !1031, metadata !111), !dbg !1033
  call void @llvm.dbg.declare(metadata i32* %2, metadata !418, metadata !111), !dbg !1034
  call void @llvm.dbg.declare(metadata i32* %3, metadata !424, metadata !111), !dbg !1039
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_6.i, metadata !426, metadata !111), !dbg !1040
  br i1 %49, label %50, label %51, !dbg !1041

; <label>:50                                      ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !1042
  unreachable, !dbg !1042

errorFn.exit:                                     ; No predecessors!
  br label %57, !dbg !1046

; <label>:51                                      ; preds = %0
  %52 = load i32, i32* @compRegistered, align 4, !dbg !1047
  %53 = icmp ne i32 %52, 0, !dbg !1050
  br i1 %53, label %54, label %55, !dbg !1051

; <label>:54                                      ; preds = %51
  call void (...) @__VERIFIER_error() #6, !dbg !1052
  unreachable, !dbg !1052

errorFn.exit1:                                    ; No predecessors!
  br label %56, !dbg !1056

; <label>:55                                      ; preds = %51
  store i32 1, i32* @compRegistered, align 4, !dbg !1057
  br label %56

; <label>:56                                      ; preds = %55, %errorFn.exit1
  br label %57

; <label>:57                                      ; preds = %56, %errorFn.exit
  %58 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1059
  %59 = sub nsw i32 %58, 1, !dbg !1061
  store i32 %59, i32* %irpSp___1, align 4, !dbg !1062
  %60 = load i32, i32* %doneEvent, align 4, !dbg !1063
  store i32 %60, i32* %irpSp__Context, align 4, !dbg !1064
  store i32 224, i32* %irpSp__Control, align 4, !dbg !1065
  %61 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !1066
  %62 = load i32, i32* %23, align 4, !dbg !1067
  %63 = call i32 @IofCallDriver(i32 %61, i32 %62), !dbg !1068
  store i32 %63, i32* %ntStatus, align 4, !dbg !1069
  %64 = load i32, i32* %ntStatus, align 4, !dbg !1070
  %65 = sext i32 %64 to i64, !dbg !1072
  store i64 %65, i64* %__cil_tmp42, align 8, !dbg !1073
  %66 = load i64, i64* %__cil_tmp42, align 8, !dbg !1074
  %67 = icmp eq i64 %66, 259, !dbg !1076
  br i1 %67, label %68, label %74, !dbg !1077

; <label>:68                                      ; preds = %57
  %69 = load i32, i32* %doneEvent, align 4, !dbg !1078
  %70 = load i32, i32* @Executive, align 4, !dbg !1081
  %71 = load i32, i32* @KernelMode, align 4, !dbg !1082
  %72 = call i32 @KeWaitForSingleObject(i32 %69, i32 %70, i32 %71, i32 0, i32 0), !dbg !1083
  store i32 %72, i32* %ntStatus, align 4, !dbg !1084
  %73 = load i32, i32* @myStatus, align 4, !dbg !1085
  store i32 %73, i32* %ntStatus, align 4, !dbg !1086
  br label %74, !dbg !1087

; <label>:74                                      ; preds = %68, %57
  store i32 0, i32* %fdcInfo__BufferCount, align 4, !dbg !1088
  store i32 0, i32* %fdcInfo__BufferSize, align 4, !dbg !1090
  store i32 3080, i32* %__cil_tmp43, align 4, !dbg !1091
  store i32 458752, i32* %__cil_tmp44, align 4, !dbg !1092
  store i32 461832, i32* %__cil_tmp45, align 4, !dbg !1093
  store i32 461835, i32* %__cil_tmp46, align 4, !dbg !1094
  %75 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !1095
  %76 = load i32, i32* %__cil_tmp46, align 4, !dbg !1096
  %77 = load i32, i32* %fdcInfo, align 4, !dbg !1097
  %78 = call i32 @FlFdcDeviceIo(i32 %75, i32 %76, i32 %77), !dbg !1098
  store i32 %78, i32* %ntStatus, align 4, !dbg !1099
  %79 = load i32, i32* %ntStatus, align 4, !dbg !1100
  %80 = icmp sge i32 %79, 0, !dbg !1101
  br i1 %80, label %81, label %209, !dbg !1102

; <label>:81                                      ; preds = %74
  %82 = load i32, i32* %fdcInfo__MaxTransferSize, align 4, !dbg !1103
  store i32 %82, i32* %disketteExtension__MaxTransferSize, align 4, !dbg !1104
  %83 = load i32, i32* %fdcInfo__AcpiBios, align 4, !dbg !1105
  %84 = icmp ne i32 %83, 0, !dbg !1105
  br i1 %84, label %85, label %101, !dbg !1106

; <label>:85                                      ; preds = %81
  %86 = load i32, i32* %fdcInfo__AcpiFdiSupported, align 4, !dbg !1107
  %87 = icmp ne i32 %86, 0, !dbg !1107
  br i1 %87, label %88, label %99, !dbg !1108

; <label>:88                                      ; preds = %85
  %89 = load i32, i32* %disketteExtension, align 4, !dbg !1109
  %90 = load i32, i32* %fdcInfo, align 4, !dbg !1110
  %91 = bitcast i32* %20 to i8*, !dbg !1111
  call void @llvm.lifetime.start(i64 4, i8* %91), !dbg !1111
  %92 = bitcast i32* %21 to i8*, !dbg !1111
  call void @llvm.lifetime.start(i64 4, i8* %92), !dbg !1111
  store i32 %89, i32* %20, align 4, !dbg !1111
  store i32 %90, i32* %21, align 4, !dbg !1111
  %93 = bitcast i32* %20 to i8*, !dbg !1112
  call void @llvm.lifetime.end(i64 4, i8* %93), !dbg !1112
  %94 = bitcast i32* %21 to i8*, !dbg !1112
  call void @llvm.lifetime.end(i64 4, i8* %94), !dbg !1112
  store i32 0, i32* %ntStatus, align 4, !dbg !1113
  %95 = load i32, i32* %disketteExtension__DriveType, align 4, !dbg !1114
  %96 = icmp eq i32 %95, 4, !dbg !1116
  br i1 %96, label %97, label %98, !dbg !1117

; <label>:97                                      ; preds = %88
  br label %98, !dbg !1118

; <label>:98                                      ; preds = %97, %88
  br label %100, !dbg !1120

; <label>:99                                      ; preds = %85
  br label %102, !dbg !1121

; <label>:100                                     ; preds = %98
  br label %157, !dbg !1123

; <label>:101                                     ; preds = %81
  br label %102, !dbg !1124

; <label>:102                                     ; preds = %101, %99
  %103 = load i32, i32* %disketteExtension__DriveType, align 4, !dbg !1125
  %104 = icmp eq i32 %103, 4, !dbg !1127
  br i1 %104, label %105, label %106, !dbg !1128

; <label>:105                                     ; preds = %102
  br label %106, !dbg !1129

; <label>:106                                     ; preds = %105, %102
  store i32 0, i32* %InterfaceType, align 4, !dbg !1131
  br label %107, !dbg !1132

; <label>:107                                     ; preds = %152, %106
  br label %108, !dbg !1133

; <label>:108                                     ; preds = %107
  %109 = load i32, i32* %InterfaceType, align 4, !dbg !1134
  %110 = load i32, i32* @MaximumInterfaceType, align 4, !dbg !1136
  %111 = icmp sge i32 %109, %110, !dbg !1137
  br i1 %111, label %112, label %113, !dbg !1138

; <label>:112                                     ; preds = %108
  br label %156, !dbg !1139

; <label>:113                                     ; preds = %108
  %114 = load i32, i32* %InterfaceType, align 4, !dbg !1141
  store i32 %114, i32* %fdcInfo__BusType, align 4, !dbg !1142
  %115 = load i32, i32* %fdcInfo__BusType, align 4, !dbg !1143
  %116 = load i32, i32* %fdcInfo__BusNumber, align 4, !dbg !1144
  %117 = load i32, i32* %Dc, align 4, !dbg !1145
  %118 = load i32, i32* %fdcInfo__ControllerNumber, align 4, !dbg !1146
  %119 = load i32, i32* %Fp, align 4, !dbg !1147
  %120 = load i32, i32* %fdcInfo__PeripheralNumber, align 4, !dbg !1148
  %121 = load i32, i32* @FlConfigCallBack, align 4, !dbg !1149
  %122 = load i32, i32* %disketteExtension, align 4, !dbg !1150
  %123 = bitcast i32* %9 to i8*, !dbg !1151
  call void @llvm.lifetime.start(i64 4, i8* %123), !dbg !1151
  %124 = bitcast i32* %10 to i8*, !dbg !1151
  call void @llvm.lifetime.start(i64 4, i8* %124), !dbg !1151
  %125 = bitcast i32* %11 to i8*, !dbg !1151
  call void @llvm.lifetime.start(i64 4, i8* %125), !dbg !1151
  %126 = bitcast i32* %12 to i8*, !dbg !1151
  call void @llvm.lifetime.start(i64 4, i8* %126), !dbg !1151
  %127 = bitcast i32* %13 to i8*, !dbg !1151
  call void @llvm.lifetime.start(i64 4, i8* %127), !dbg !1151
  %128 = bitcast i32* %14 to i8*, !dbg !1151
  call void @llvm.lifetime.start(i64 4, i8* %128), !dbg !1151
  %129 = bitcast i32* %15 to i8*, !dbg !1151
  call void @llvm.lifetime.start(i64 4, i8* %129), !dbg !1151
  %130 = bitcast i32* %16 to i8*, !dbg !1151
  call void @llvm.lifetime.start(i64 4, i8* %130), !dbg !1151
  %131 = bitcast i32* %17 to i8*, !dbg !1151
  call void @llvm.lifetime.start(i64 4, i8* %131), !dbg !1151
  %132 = bitcast i32* %tmp_ndt_4.i to i8*, !dbg !1151
  call void @llvm.lifetime.start(i64 4, i8* %132), !dbg !1151
  store i32 %115, i32* %10, align 4, !dbg !1151
  store i32 %116, i32* %11, align 4, !dbg !1151
  store i32 %117, i32* %12, align 4, !dbg !1151
  store i32 %118, i32* %13, align 4, !dbg !1151
  store i32 %119, i32* %14, align 4, !dbg !1151
  store i32 %120, i32* %15, align 4, !dbg !1151
  store i32 %121, i32* %16, align 4, !dbg !1151
  store i32 %122, i32* %17, align 4, !dbg !1151
  %133 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1152
  store i32 %133, i32* %tmp_ndt_4.i, align 4, !dbg !1153
  %134 = load i32, i32* %tmp_ndt_4.i, align 4, !dbg !1154
  %135 = icmp eq i32 %134, 0, !dbg !1156
  br i1 %135, label %136, label %137, !dbg !1157

; <label>:136                                     ; preds = %113
  store i32 0, i32* %9, !dbg !1158
  br label %IoQueryDeviceDescription.exit, !dbg !1158

; <label>:137                                     ; preds = %113
  store i32 -1073741823, i32* %9, !dbg !1162
  br label %IoQueryDeviceDescription.exit, !dbg !1162

IoQueryDeviceDescription.exit:                    ; preds = %136, %137
  %138 = load i32, i32* %9, !dbg !1163
  %139 = bitcast i32* %9 to i8*, !dbg !1163
  call void @llvm.lifetime.end(i64 4, i8* %139), !dbg !1163
  %140 = bitcast i32* %10 to i8*, !dbg !1163
  call void @llvm.lifetime.end(i64 4, i8* %140), !dbg !1163
  %141 = bitcast i32* %11 to i8*, !dbg !1163
  call void @llvm.lifetime.end(i64 4, i8* %141), !dbg !1163
  %142 = bitcast i32* %12 to i8*, !dbg !1163
  call void @llvm.lifetime.end(i64 4, i8* %142), !dbg !1163
  %143 = bitcast i32* %13 to i8*, !dbg !1163
  call void @llvm.lifetime.end(i64 4, i8* %143), !dbg !1163
  %144 = bitcast i32* %14 to i8*, !dbg !1163
  call void @llvm.lifetime.end(i64 4, i8* %144), !dbg !1163
  %145 = bitcast i32* %15 to i8*, !dbg !1163
  call void @llvm.lifetime.end(i64 4, i8* %145), !dbg !1163
  %146 = bitcast i32* %16 to i8*, !dbg !1163
  call void @llvm.lifetime.end(i64 4, i8* %146), !dbg !1163
  %147 = bitcast i32* %17 to i8*, !dbg !1163
  call void @llvm.lifetime.end(i64 4, i8* %147), !dbg !1163
  %148 = bitcast i32* %tmp_ndt_4.i to i8*, !dbg !1163
  call void @llvm.lifetime.end(i64 4, i8* %148), !dbg !1163
  store i32 %138, i32* %ntStatus, align 4, !dbg !1164
  %149 = load i32, i32* %ntStatus, align 4, !dbg !1165
  %150 = icmp sge i32 %149, 0, !dbg !1167
  br i1 %150, label %151, label %152, !dbg !1168

; <label>:151                                     ; preds = %IoQueryDeviceDescription.exit
  br label %156, !dbg !1169

; <label>:152                                     ; preds = %IoQueryDeviceDescription.exit
  %153 = load i32, i32* %InterfaceType, align 4, !dbg !1171
  %154 = add nsw i32 %153, 1, !dbg !1171
  store i32 %154, i32* %InterfaceType, align 4, !dbg !1171
  br label %107, !dbg !1132
                                                  ; No predecessors!
  br label %156, !dbg !1172

; <label>:156                                     ; preds = %155, %151, %112
  br label %157

; <label>:157                                     ; preds = %156, %100
  %158 = load i32, i32* %ntStatus, align 4, !dbg !1173
  %159 = icmp sge i32 %158, 0, !dbg !1174
  br i1 %159, label %160, label %208, !dbg !1175

; <label>:160                                     ; preds = %157
  %161 = load i32, i32* %KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86, align 4, !dbg !1176
  %162 = icmp ne i32 %161, 0, !dbg !1178
  br i1 %162, label %163, label %165, !dbg !1179

; <label>:163                                     ; preds = %160
  %164 = load i32, i32* %fdcInfo__UnitNumber, align 4, !dbg !1180
  store i32 %164, i32* %disketteExtension__DeviceUnit, align 4, !dbg !1182
  br label %167, !dbg !1183

; <label>:165                                     ; preds = %160
  %166 = load i32, i32* %fdcInfo__PeripheralNumber, align 4, !dbg !1184
  store i32 %166, i32* %disketteExtension__DeviceUnit, align 4, !dbg !1186
  br label %167

; <label>:167                                     ; preds = %165, %163
  %168 = load i32, i32* %disketteExtension__UnderlyingPDO, align 4, !dbg !1187
  %169 = load i32, i32* @MOUNTDEV_MOUNTED_DEVICE_GUID, align 4, !dbg !1188
  %170 = load i32, i32* %disketteExtension__InterfaceString, align 4, !dbg !1189
  %171 = bitcast i32* %4 to i8*, !dbg !1190
  call void @llvm.lifetime.start(i64 4, i8* %171), !dbg !1190
  %172 = bitcast i32* %5 to i8*, !dbg !1190
  call void @llvm.lifetime.start(i64 4, i8* %172), !dbg !1190
  %173 = bitcast i32* %6 to i8*, !dbg !1190
  call void @llvm.lifetime.start(i64 4, i8* %173), !dbg !1190
  %174 = bitcast i32* %7 to i8*, !dbg !1190
  call void @llvm.lifetime.start(i64 4, i8* %174), !dbg !1190
  %175 = bitcast i32* %8 to i8*, !dbg !1190
  call void @llvm.lifetime.start(i64 4, i8* %175), !dbg !1190
  %176 = bitcast i32* %tmp_ndt_5.i to i8*, !dbg !1190
  call void @llvm.lifetime.start(i64 4, i8* %176), !dbg !1190
  store i32 %168, i32* %5, align 4, !dbg !1190
  store i32 %169, i32* %6, align 4, !dbg !1190
  store i32 0, i32* %7, align 4, !dbg !1190
  store i32 %170, i32* %8, align 4, !dbg !1190
  %177 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1191
  store i32 %177, i32* %tmp_ndt_5.i, align 4, !dbg !1192
  %178 = load i32, i32* %tmp_ndt_5.i, align 4, !dbg !1193
  %179 = icmp eq i32 %178, 0, !dbg !1195
  br i1 %179, label %180, label %181, !dbg !1196

; <label>:180                                     ; preds = %167
  store i32 0, i32* %4, !dbg !1197
  br label %IoRegisterDeviceInterface.exit, !dbg !1197

; <label>:181                                     ; preds = %167
  store i32 -1073741808, i32* %4, !dbg !1201
  br label %IoRegisterDeviceInterface.exit, !dbg !1201

IoRegisterDeviceInterface.exit:                   ; preds = %180, %181
  %182 = load i32, i32* %4, !dbg !1202
  %183 = bitcast i32* %4 to i8*, !dbg !1202
  call void @llvm.lifetime.end(i64 4, i8* %183), !dbg !1202
  %184 = bitcast i32* %5 to i8*, !dbg !1202
  call void @llvm.lifetime.end(i64 4, i8* %184), !dbg !1202
  %185 = bitcast i32* %6 to i8*, !dbg !1202
  call void @llvm.lifetime.end(i64 4, i8* %185), !dbg !1202
  %186 = bitcast i32* %7 to i8*, !dbg !1202
  call void @llvm.lifetime.end(i64 4, i8* %186), !dbg !1202
  %187 = bitcast i32* %8 to i8*, !dbg !1202
  call void @llvm.lifetime.end(i64 4, i8* %187), !dbg !1202
  %188 = bitcast i32* %tmp_ndt_5.i to i8*, !dbg !1202
  call void @llvm.lifetime.end(i64 4, i8* %188), !dbg !1202
  store i32 %182, i32* %pnpStatus, align 4, !dbg !1203
  %189 = load i32, i32* %pnpStatus, align 4, !dbg !1204
  %190 = icmp sge i32 %189, 0, !dbg !1205
  br i1 %190, label %191, label %207, !dbg !1206

; <label>:191                                     ; preds = %IoRegisterDeviceInterface.exit
  %192 = load i32, i32* %disketteExtension__InterfaceString, align 4, !dbg !1207
  %193 = bitcast i32* %1 to i8*, !dbg !1208
  call void @llvm.lifetime.start(i64 4, i8* %193), !dbg !1208
  %194 = bitcast i32* %2 to i8*, !dbg !1208
  call void @llvm.lifetime.start(i64 4, i8* %194), !dbg !1208
  %195 = bitcast i32* %3 to i8*, !dbg !1208
  call void @llvm.lifetime.start(i64 4, i8* %195), !dbg !1208
  %196 = bitcast i32* %tmp_ndt_6.i to i8*, !dbg !1208
  call void @llvm.lifetime.start(i64 4, i8* %196), !dbg !1208
  store i32 %192, i32* %2, align 4, !dbg !1208
  store i32 1, i32* %3, align 4, !dbg !1208
  %197 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1209
  store i32 %197, i32* %tmp_ndt_6.i, align 4, !dbg !1210
  %198 = load i32, i32* %tmp_ndt_6.i, align 4, !dbg !1211
  %199 = icmp eq i32 %198, 0, !dbg !1212
  br i1 %199, label %200, label %201, !dbg !1213

; <label>:200                                     ; preds = %191
  store i32 0, i32* %1, !dbg !1214
  br label %IoSetDeviceInterfaceState.exit, !dbg !1214

; <label>:201                                     ; preds = %191
  store i32 -1073741823, i32* %1, !dbg !1215
  br label %IoSetDeviceInterfaceState.exit, !dbg !1215

IoSetDeviceInterfaceState.exit:                   ; preds = %200, %201
  %202 = load i32, i32* %1, !dbg !1216
  %203 = bitcast i32* %1 to i8*, !dbg !1216
  call void @llvm.lifetime.end(i64 4, i8* %203), !dbg !1216
  %204 = bitcast i32* %2 to i8*, !dbg !1216
  call void @llvm.lifetime.end(i64 4, i8* %204), !dbg !1216
  %205 = bitcast i32* %3 to i8*, !dbg !1216
  call void @llvm.lifetime.end(i64 4, i8* %205), !dbg !1216
  %206 = bitcast i32* %tmp_ndt_6.i to i8*, !dbg !1216
  call void @llvm.lifetime.end(i64 4, i8* %206), !dbg !1216
  store i32 %202, i32* %pnpStatus, align 4, !dbg !1217
  br label %207, !dbg !1218

; <label>:207                                     ; preds = %IoSetDeviceInterfaceState.exit, %IoRegisterDeviceInterface.exit
  store i32 1, i32* %disketteExtension__IsStarted, align 4, !dbg !1219
  store i32 0, i32* %disketteExtension__HoldNewRequests, align 4, !dbg !1220
  br label %208, !dbg !1221

; <label>:208                                     ; preds = %207, %157
  br label %209, !dbg !1222

; <label>:209                                     ; preds = %208, %74
  %210 = load i32, i32* %ntStatus, align 4, !dbg !1223
  store i32 %210, i32* %Irp__IoStatus__Status, align 4, !dbg !1224
  %211 = load i32, i32* %ntStatus, align 4, !dbg !1225
  store i32 %211, i32* @myStatus, align 4, !dbg !1226
  %212 = load i32, i32* %23, align 4, !dbg !1227
  %213 = bitcast i32* %18 to i8*, !dbg !1228
  call void @llvm.lifetime.start(i64 4, i8* %213), !dbg !1228
  %214 = bitcast i32* %19 to i8*, !dbg !1228
  call void @llvm.lifetime.start(i64 4, i8* %214), !dbg !1228
  store i32 %212, i32* %18, align 4, !dbg !1228
  store i32 0, i32* %19, align 4, !dbg !1228
  %215 = load i32, i32* @s, align 4, !dbg !1229
  %216 = load i32, i32* @NP, align 4, !dbg !1230
  %217 = icmp eq i32 %215, %216, !dbg !1231
  br i1 %217, label %IofCompleteRequest.exit, label %218, !dbg !1232

; <label>:218                                     ; preds = %209
  call void (...) @__VERIFIER_error() #6, !dbg !1233
  unreachable, !dbg !1233

IofCompleteRequest.exit:                          ; preds = %209
  %219 = load i32, i32* @DC, align 4, !dbg !1235
  store i32 %219, i32* @s, align 4, !dbg !1236
  %220 = bitcast i32* %18 to i8*, !dbg !1237
  call void @llvm.lifetime.end(i64 4, i8* %220), !dbg !1237
  %221 = bitcast i32* %19 to i8*, !dbg !1237
  call void @llvm.lifetime.end(i64 4, i8* %221), !dbg !1237
  %222 = load i32, i32* %ntStatus, align 4, !dbg !1238
  ret i32 %222, !dbg !1239
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
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1240, metadata !111), !dbg !1241
  store i32 %Irp, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1242, metadata !111), !dbg !1243
  store i32 %Context, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1244, metadata !111), !dbg !1245
  %7 = load i32, i32* %6, align 4, !dbg !1246
  %8 = bitcast i32* %1 to i8*, !dbg !1249
  call void @llvm.lifetime.start(i64 4, i8* %8), !dbg !1249
  %9 = bitcast i32* %2 to i8*, !dbg !1249
  call void @llvm.lifetime.start(i64 4, i8* %9), !dbg !1249
  %10 = bitcast i32* %3 to i8*, !dbg !1249
  call void @llvm.lifetime.start(i64 4, i8* %10), !dbg !1249
  %11 = bitcast i32* %l.i to i8*, !dbg !1249
  call void @llvm.lifetime.start(i64 4, i8* %11), !dbg !1249
  store i32 %7, i32* %1, align 4, !dbg !1249
  store i32 1, i32* %2, align 4, !dbg !1249
  store i32 0, i32* %3, align 4, !dbg !1249
  %12 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1250
  store i32 %12, i32* %l.i, align 4, !dbg !1252
  store i32 1, i32* @setEventCalled, align 4, !dbg !1253
  %13 = load i32, i32* %l.i, align 4, !dbg !1255
  %14 = bitcast i32* %1 to i8*, !dbg !1256
  call void @llvm.lifetime.end(i64 4, i8* %14), !dbg !1256
  %15 = bitcast i32* %2 to i8*, !dbg !1256
  call void @llvm.lifetime.end(i64 4, i8* %15), !dbg !1256
  %16 = bitcast i32* %3 to i8*, !dbg !1256
  call void @llvm.lifetime.end(i64 4, i8* %16), !dbg !1256
  %17 = bitcast i32* %l.i to i8*, !dbg !1256
  call void @llvm.lifetime.end(i64 4, i8* %17), !dbg !1256
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1257, metadata !111), !dbg !1258
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1259, metadata !111), !dbg !1260
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1261, metadata !111), !dbg !1262
  call void @llvm.dbg.declare(metadata i32* %l.i, metadata !1263, metadata !111), !dbg !1252
  ret i32 -1073741802, !dbg !1264
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
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1265, metadata !111), !dbg !1266
  store i32 %Ioctl, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1267, metadata !111), !dbg !1268
  store i32 %Data, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1269, metadata !111), !dbg !1270
  call void @llvm.dbg.declare(metadata i32* %ntStatus, metadata !1271, metadata !111), !dbg !1272
  call void @llvm.dbg.declare(metadata i32* %irp, metadata !1273, metadata !111), !dbg !1274
  call void @llvm.dbg.declare(metadata i32* %irpStack, metadata !1275, metadata !111), !dbg !1276
  call void @llvm.dbg.declare(metadata i32* %doneEvent, metadata !1277, metadata !111), !dbg !1278
  %15 = call i32 @__VERIFIER_nondet_int(), !dbg !1279
  store i32 %15, i32* %doneEvent, align 4, !dbg !1278
  call void @llvm.dbg.declare(metadata i32* %ioStatus, metadata !1280, metadata !111), !dbg !1281
  %16 = call i32 @__VERIFIER_nondet_int(), !dbg !1282
  store i32 %16, i32* %ioStatus, align 4, !dbg !1281
  call void @llvm.dbg.declare(metadata i32* %irp__Tail__Overlay__CurrentStackLocation, metadata !1283, metadata !111), !dbg !1284
  %17 = call i32 @__VERIFIER_nondet_int(), !dbg !1285
  store i32 %17, i32* %irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1284
  call void @llvm.dbg.declare(metadata i32* %irpStack__Parameters__DeviceIoControl__Type3InputBuffer, metadata !1286, metadata !111), !dbg !1287
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp11, metadata !1288, metadata !111), !dbg !1289
  %18 = load i32, i32* %13, align 4, !dbg !1290
  %19 = load i32, i32* %12, align 4, !dbg !1293
  %20 = load i32, i32* %doneEvent, align 4, !dbg !1294
  %21 = load i32, i32* %ioStatus, align 4, !dbg !1295
  %22 = bitcast i32* %1 to i8*, !dbg !1296
  call void @llvm.lifetime.start(i64 4, i8* %22), !dbg !1296
  %23 = bitcast i32* %2 to i8*, !dbg !1296
  call void @llvm.lifetime.start(i64 4, i8* %23), !dbg !1296
  %24 = bitcast i32* %3 to i8*, !dbg !1296
  call void @llvm.lifetime.start(i64 4, i8* %24), !dbg !1296
  %25 = bitcast i32* %4 to i8*, !dbg !1296
  call void @llvm.lifetime.start(i64 4, i8* %25), !dbg !1296
  %26 = bitcast i32* %5 to i8*, !dbg !1296
  call void @llvm.lifetime.start(i64 4, i8* %26), !dbg !1296
  %27 = bitcast i32* %6 to i8*, !dbg !1296
  call void @llvm.lifetime.start(i64 4, i8* %27), !dbg !1296
  %28 = bitcast i32* %7 to i8*, !dbg !1296
  call void @llvm.lifetime.start(i64 4, i8* %28), !dbg !1296
  %29 = bitcast i32* %8 to i8*, !dbg !1296
  call void @llvm.lifetime.start(i64 4, i8* %29), !dbg !1296
  %30 = bitcast i32* %9 to i8*, !dbg !1296
  call void @llvm.lifetime.start(i64 4, i8* %30), !dbg !1296
  %31 = bitcast i32* %10 to i8*, !dbg !1296
  call void @llvm.lifetime.start(i64 4, i8* %31), !dbg !1296
  %32 = bitcast i32* %malloc.i to i8*, !dbg !1296
  call void @llvm.lifetime.start(i64 4, i8* %32), !dbg !1296
  %33 = bitcast i32* %tmp_ndt_2.i to i8*, !dbg !1296
  call void @llvm.lifetime.start(i64 4, i8* %33), !dbg !1296
  store i32 %18, i32* %2, align 4, !dbg !1296
  store i32 %19, i32* %3, align 4, !dbg !1296
  store i32 0, i32* %4, align 4, !dbg !1296
  store i32 0, i32* %5, align 4, !dbg !1296
  store i32 0, i32* %6, align 4, !dbg !1296
  store i32 0, i32* %7, align 4, !dbg !1296
  store i32 1, i32* %8, align 4, !dbg !1296
  store i32 %20, i32* %9, align 4, !dbg !1296
  store i32 %21, i32* %10, align 4, !dbg !1296
  %34 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1297
  store i32 %34, i32* %malloc.i, align 4, !dbg !1299
  store i32 1, i32* @customIrp, align 4, !dbg !1300
  %35 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1302
  store i32 %35, i32* %tmp_ndt_2.i, align 4, !dbg !1303
  %36 = load i32, i32* %tmp_ndt_2.i, align 4, !dbg !1304
  %37 = icmp eq i32 %36, 0, !dbg !1306
  br i1 %37, label %38, label %40, !dbg !1307

; <label>:38                                      ; preds = %0
  %39 = load i32, i32* %malloc.i, align 4, !dbg !1308
  store i32 %39, i32* %1, !dbg !1312
  br label %IoBuildDeviceIoControlRequest.exit, !dbg !1312

; <label>:40                                      ; preds = %0
  store i32 0, i32* %1, !dbg !1313
  br label %IoBuildDeviceIoControlRequest.exit, !dbg !1313

IoBuildDeviceIoControlRequest.exit:               ; preds = %38, %40
  %41 = load i32, i32* %1, !dbg !1314
  %42 = bitcast i32* %1 to i8*, !dbg !1314
  call void @llvm.lifetime.end(i64 4, i8* %42), !dbg !1314
  %43 = bitcast i32* %2 to i8*, !dbg !1314
  call void @llvm.lifetime.end(i64 4, i8* %43), !dbg !1314
  %44 = bitcast i32* %3 to i8*, !dbg !1314
  call void @llvm.lifetime.end(i64 4, i8* %44), !dbg !1314
  %45 = bitcast i32* %4 to i8*, !dbg !1314
  call void @llvm.lifetime.end(i64 4, i8* %45), !dbg !1314
  %46 = bitcast i32* %5 to i8*, !dbg !1314
  call void @llvm.lifetime.end(i64 4, i8* %46), !dbg !1314
  %47 = bitcast i32* %6 to i8*, !dbg !1314
  call void @llvm.lifetime.end(i64 4, i8* %47), !dbg !1314
  %48 = bitcast i32* %7 to i8*, !dbg !1314
  call void @llvm.lifetime.end(i64 4, i8* %48), !dbg !1314
  %49 = bitcast i32* %8 to i8*, !dbg !1314
  call void @llvm.lifetime.end(i64 4, i8* %49), !dbg !1314
  %50 = bitcast i32* %9 to i8*, !dbg !1314
  call void @llvm.lifetime.end(i64 4, i8* %50), !dbg !1314
  %51 = bitcast i32* %10 to i8*, !dbg !1314
  call void @llvm.lifetime.end(i64 4, i8* %51), !dbg !1314
  %52 = bitcast i32* %malloc.i to i8*, !dbg !1314
  call void @llvm.lifetime.end(i64 4, i8* %52), !dbg !1314
  %53 = bitcast i32* %tmp_ndt_2.i to i8*, !dbg !1314
  call void @llvm.lifetime.end(i64 4, i8* %53), !dbg !1314
  store i32 %41, i32* %irp, align 4, !dbg !1315
  %54 = load i32, i32* %irp, align 4, !dbg !1316
  %55 = icmp eq i32 %54, 0, !dbg !1318
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1319, metadata !111), !dbg !1320
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1321, metadata !111), !dbg !1322
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1323, metadata !111), !dbg !1324
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1325, metadata !111), !dbg !1326
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1327, metadata !111), !dbg !1328
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1329, metadata !111), !dbg !1330
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1331, metadata !111), !dbg !1332
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1333, metadata !111), !dbg !1334
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1335, metadata !111), !dbg !1336
  call void @llvm.dbg.declare(metadata i32* %malloc.i, metadata !1337, metadata !111), !dbg !1299
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_2.i, metadata !1338, metadata !111), !dbg !1339
  br i1 %55, label %56, label %57, !dbg !1340

; <label>:56                                      ; preds = %IoBuildDeviceIoControlRequest.exit
  store i32 -1073741670, i32* %11, !dbg !1341
  br label %76, !dbg !1341

; <label>:57                                      ; preds = %IoBuildDeviceIoControlRequest.exit
  %58 = load i32, i32* %irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1343
  %59 = sub nsw i32 %58, 1, !dbg !1345
  store i32 %59, i32* %irpStack, align 4, !dbg !1346
  %60 = load i32, i32* %14, align 4, !dbg !1347
  store i32 %60, i32* %irpStack__Parameters__DeviceIoControl__Type3InputBuffer, align 4, !dbg !1348
  %61 = load i32, i32* %12, align 4, !dbg !1349
  %62 = load i32, i32* %irp, align 4, !dbg !1350
  %63 = call i32 @IofCallDriver(i32 %61, i32 %62), !dbg !1351
  store i32 %63, i32* %ntStatus, align 4, !dbg !1352
  %64 = load i32, i32* %ntStatus, align 4, !dbg !1353
  %65 = sext i32 %64 to i64, !dbg !1355
  store i64 %65, i64* %__cil_tmp11, align 8, !dbg !1356
  %66 = load i64, i64* %__cil_tmp11, align 8, !dbg !1357
  %67 = icmp eq i64 %66, 259, !dbg !1359
  br i1 %67, label %68, label %74, !dbg !1360

; <label>:68                                      ; preds = %57
  %69 = load i32, i32* %doneEvent, align 4, !dbg !1361
  %70 = load i32, i32* @Suspended, align 4, !dbg !1364
  %71 = load i32, i32* @KernelMode, align 4, !dbg !1365
  %72 = call i32 @KeWaitForSingleObject(i32 %69, i32 %70, i32 %71, i32 0, i32 0), !dbg !1366
  %73 = load i32, i32* @myStatus, align 4, !dbg !1367
  store i32 %73, i32* %ntStatus, align 4, !dbg !1368
  br label %74, !dbg !1369

; <label>:74                                      ; preds = %68, %57
  %75 = load i32, i32* %ntStatus, align 4, !dbg !1370
  store i32 %75, i32* %11, !dbg !1371
  br label %76, !dbg !1371

; <label>:76                                      ; preds = %74, %56
  %77 = load i32, i32* %11, !dbg !1372
  ret i32 %77, !dbg !1372
}

; Function Attrs: nounwind ssp uwtable
define void @FloppyProcessQueuedRequests(i32 %DisketteExtension) #0 {
  %1 = alloca i32, align 4
  store i32 %DisketteExtension, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1373, metadata !111), !dbg !1374
  ret void, !dbg !1375
}

; Function Attrs: nounwind ssp uwtable
define void @stub_driver_init() #0 {
  %1 = load i32, i32* @NP, align 4, !dbg !1377
  store i32 %1, i32* @s, align 4, !dbg !1379
  store i32 0, i32* @pended, align 4, !dbg !1380
  store i32 0, i32* @compRegistered, align 4, !dbg !1381
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !1382
  store i32 0, i32* @setEventCalled, align 4, !dbg !1383
  store i32 0, i32* @customIrp, align 4, !dbg !1384
  ret void, !dbg !1385
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
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1386, metadata !111), !dbg !1387
  call void @llvm.dbg.declare(metadata i32* %irp, metadata !1388, metadata !111), !dbg !1389
  %2 = call i32 @__VERIFIER_nondet_int(), !dbg !1390
  store i32 %2, i32* %irp, align 4, !dbg !1389
  call void @llvm.dbg.declare(metadata i32* %pirp, metadata !1391, metadata !111), !dbg !1392
  call void @llvm.dbg.declare(metadata i32* %pirp__IoStatus__Status, metadata !1393, metadata !111), !dbg !1394
  call void @llvm.dbg.declare(metadata i32* %irp_choice, metadata !1395, metadata !111), !dbg !1396
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !1397
  store i32 %3, i32* %irp_choice, align 4, !dbg !1396
  call void @llvm.dbg.declare(metadata i32* %devobj, metadata !1398, metadata !111), !dbg !1399
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !1400
  store i32 %4, i32* %devobj, align 4, !dbg !1399
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp8, metadata !1401, metadata !111), !dbg !1402
  store i32 0, i32* @FloppyThread, align 4, !dbg !1403
  store i32 0, i32* @KernelMode, align 4, !dbg !1404
  store i32 0, i32* @Suspended, align 4, !dbg !1405
  store i32 0, i32* @Executive, align 4, !dbg !1406
  store i32 0, i32* @DiskController, align 4, !dbg !1407
  store i32 0, i32* @FloppyDiskPeripheral, align 4, !dbg !1408
  store i32 0, i32* @FlConfigCallBack, align 4, !dbg !1409
  store i32 0, i32* @MaximumInterfaceType, align 4, !dbg !1410
  store i32 0, i32* @MOUNTDEV_MOUNTED_DEVICE_GUID, align 4, !dbg !1411
  store i32 0, i32* @myStatus, align 4, !dbg !1412
  store i32 0, i32* @s, align 4, !dbg !1413
  store i32 0, i32* @UNLOADED, align 4, !dbg !1414
  store i32 0, i32* @NP, align 4, !dbg !1415
  store i32 0, i32* @DC, align 4, !dbg !1416
  store i32 0, i32* @SKIP1, align 4, !dbg !1417
  store i32 0, i32* @SKIP2, align 4, !dbg !1418
  store i32 0, i32* @MPR1, align 4, !dbg !1419
  store i32 0, i32* @MPR3, align 4, !dbg !1420
  store i32 0, i32* @IPC, align 4, !dbg !1421
  store i32 0, i32* @pended, align 4, !dbg !1422
  store i32 0, i32* @compRegistered, align 4, !dbg !1423
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !1424
  store i32 0, i32* @setEventCalled, align 4, !dbg !1425
  store i32 0, i32* @customIrp, align 4, !dbg !1426
  store i32 0, i32* %status, align 4, !dbg !1427
  %5 = load i32, i32* %irp, align 4, !dbg !1430
  store i32 %5, i32* %pirp, align 4, !dbg !1431
  store i32 0, i32* @UNLOADED, align 4, !dbg !1432
  store i32 1, i32* @NP, align 4, !dbg !1434
  store i32 2, i32* @DC, align 4, !dbg !1435
  store i32 3, i32* @SKIP1, align 4, !dbg !1436
  store i32 4, i32* @SKIP2, align 4, !dbg !1437
  store i32 5, i32* @MPR1, align 4, !dbg !1438
  store i32 6, i32* @MPR3, align 4, !dbg !1439
  store i32 7, i32* @IPC, align 4, !dbg !1440
  %6 = load i32, i32* @UNLOADED, align 4, !dbg !1441
  store i32 %6, i32* @s, align 4, !dbg !1442
  store i32 0, i32* @pended, align 4, !dbg !1443
  store i32 0, i32* @compRegistered, align 4, !dbg !1444
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !1445
  store i32 0, i32* @setEventCalled, align 4, !dbg !1446
  store i32 0, i32* @customIrp, align 4, !dbg !1447
  %7 = load i32, i32* %status, align 4, !dbg !1448
  %8 = icmp sge i32 %7, 0, !dbg !1450
  br i1 %8, label %9, label %40, !dbg !1451

; <label>:9                                       ; preds = %0
  %10 = load i32, i32* @NP, align 4, !dbg !1452
  store i32 %10, i32* @s, align 4, !dbg !1454
  store i32 0, i32* @customIrp, align 4, !dbg !1455
  %11 = load i32, i32* @customIrp, align 4, !dbg !1456
  store i32 %11, i32* @setEventCalled, align 4, !dbg !1457
  %12 = load i32, i32* @setEventCalled, align 4, !dbg !1458
  store i32 %12, i32* @lowerDriverReturn, align 4, !dbg !1459
  %13 = load i32, i32* @lowerDriverReturn, align 4, !dbg !1460
  store i32 %13, i32* @compRegistered, align 4, !dbg !1461
  %14 = load i32, i32* @compRegistered, align 4, !dbg !1462
  store i32 %14, i32* @pended, align 4, !dbg !1463
  store i32 0, i32* %pirp__IoStatus__Status, align 4, !dbg !1464
  store i32 0, i32* @myStatus, align 4, !dbg !1465
  %15 = load i32, i32* %irp_choice, align 4, !dbg !1466
  %16 = icmp eq i32 %15, 0, !dbg !1468
  br i1 %16, label %17, label %18, !dbg !1469

; <label>:17                                      ; preds = %9
  store i32 -1073741637, i32* %pirp__IoStatus__Status, align 4, !dbg !1470
  store i32 -1073741637, i32* @myStatus, align 4, !dbg !1472
  br label %18, !dbg !1473

; <label>:18                                      ; preds = %17, %9
  %19 = load i32, i32* @NP, align 4, !dbg !1474
  store i32 %19, i32* @s, align 4, !dbg !1477
  store i32 0, i32* @pended, align 4, !dbg !1478
  store i32 0, i32* @compRegistered, align 4, !dbg !1479
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !1480
  store i32 0, i32* @setEventCalled, align 4, !dbg !1481
  store i32 0, i32* @customIrp, align 4, !dbg !1482
  %20 = load i32, i32* %status, align 4, !dbg !1483
  %21 = icmp slt i32 %20, 0, !dbg !1486
  br i1 %21, label %22, label %23, !dbg !1487

; <label>:22                                      ; preds = %18
  store i32 -1, i32* %1, !dbg !1488
  br label %120, !dbg !1488

; <label>:23                                      ; preds = %18
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_1, metadata !1490, metadata !111), !dbg !1491
  %24 = call i32 @__VERIFIER_nondet_int(), !dbg !1492
  store i32 %24, i32* %tmp_ndt_1, align 4, !dbg !1493
  %25 = load i32, i32* %tmp_ndt_1, align 4, !dbg !1494
  %26 = icmp eq i32 %25, 3, !dbg !1496
  br i1 %26, label %27, label %28, !dbg !1497

; <label>:27                                      ; preds = %23
  br label %31, !dbg !1498

; <label>:28                                      ; preds = %23
  br label %35, !dbg !1500
                                                  ; No predecessors!
  br i1 false, label %30, label %36, !dbg !1502

; <label>:30                                      ; preds = %29
  br label %31, !dbg !1503

; <label>:31                                      ; preds = %30, %27
  %32 = load i32, i32* %devobj, align 4, !dbg !1505
  %33 = load i32, i32* %pirp, align 4, !dbg !1508
  %34 = call i32 @FloppyPnp(i32 %32, i32 %33), !dbg !1509
  store i32 %34, i32* %status, align 4, !dbg !1510
  br label %37, !dbg !1511

; <label>:35                                      ; preds = %28
  store i32 -1, i32* %1, !dbg !1512
  br label %120, !dbg !1512

; <label>:36                                      ; preds = %29
  br label %37, !dbg !1513

; <label>:37                                      ; preds = %36, %31
  br label %38

; <label>:38                                      ; preds = %37
  br label %39

; <label>:39                                      ; preds = %38
  br label %40, !dbg !1514

; <label>:40                                      ; preds = %39, %0
  %41 = load i32, i32* @pended, align 4, !dbg !1515
  %42 = icmp eq i32 %41, 1, !dbg !1517
  br i1 %42, label %43, label %51, !dbg !1518

; <label>:43                                      ; preds = %40
  %44 = load i32, i32* @s, align 4, !dbg !1519
  %45 = load i32, i32* @NP, align 4, !dbg !1522
  %46 = icmp eq i32 %44, %45, !dbg !1523
  br i1 %46, label %47, label %49, !dbg !1524

; <label>:47                                      ; preds = %43
  %48 = load i32, i32* @NP, align 4, !dbg !1525
  store i32 %48, i32* @s, align 4, !dbg !1527
  br label %50, !dbg !1528

; <label>:49                                      ; preds = %43
  br label %52, !dbg !1529

; <label>:50                                      ; preds = %47
  br label %118, !dbg !1531

; <label>:51                                      ; preds = %40
  br label %52, !dbg !1532

; <label>:52                                      ; preds = %51, %49
  %53 = load i32, i32* @pended, align 4, !dbg !1533
  %54 = icmp eq i32 %53, 1, !dbg !1536
  br i1 %54, label %55, label %63, !dbg !1537

; <label>:55                                      ; preds = %52
  %56 = load i32, i32* @s, align 4, !dbg !1538
  %57 = load i32, i32* @MPR3, align 4, !dbg !1541
  %58 = icmp eq i32 %56, %57, !dbg !1542
  br i1 %58, label %59, label %61, !dbg !1543

; <label>:59                                      ; preds = %55
  %60 = load i32, i32* @MPR3, align 4, !dbg !1544
  store i32 %60, i32* @s, align 4, !dbg !1546
  br label %62, !dbg !1547

; <label>:61                                      ; preds = %55
  br label %64, !dbg !1548

; <label>:62                                      ; preds = %59
  br label %117, !dbg !1550

; <label>:63                                      ; preds = %52
  br label %64, !dbg !1551

; <label>:64                                      ; preds = %63, %61
  %65 = load i32, i32* @s, align 4, !dbg !1552
  %66 = load i32, i32* @UNLOADED, align 4, !dbg !1555
  %67 = icmp ne i32 %65, %66, !dbg !1556
  br i1 %67, label %68, label %116, !dbg !1557

; <label>:68                                      ; preds = %64
  %69 = load i32, i32* %status, align 4, !dbg !1558
  %70 = icmp ne i32 %69, -1, !dbg !1561
  br i1 %70, label %71, label %115, !dbg !1562

; <label>:71                                      ; preds = %68
  %72 = load i32, i32* @s, align 4, !dbg !1563
  %73 = load i32, i32* @SKIP2, align 4, !dbg !1566
  %74 = icmp ne i32 %72, %73, !dbg !1567
  br i1 %74, label %75, label %88, !dbg !1568

; <label>:75                                      ; preds = %71
  %76 = load i32, i32* @s, align 4, !dbg !1569
  %77 = load i32, i32* @IPC, align 4, !dbg !1572
  %78 = icmp ne i32 %76, %77, !dbg !1573
  br i1 %78, label %79, label %86, !dbg !1574

; <label>:79                                      ; preds = %75
  %80 = load i32, i32* @s, align 4, !dbg !1575
  %81 = load i32, i32* @DC, align 4, !dbg !1578
  %82 = icmp ne i32 %80, %81, !dbg !1579
  br i1 %82, label %83, label %84, !dbg !1580

; <label>:83                                      ; preds = %79
  call void (...) @__VERIFIER_error() #6, !dbg !1581
  unreachable, !dbg !1581

errorFn.exit2:                                    ; No predecessors!
  br label %85, !dbg !1585

; <label>:84                                      ; preds = %79
  br label %89, !dbg !1586

; <label>:85                                      ; preds = %errorFn.exit2
  br label %87, !dbg !1588

; <label>:86                                      ; preds = %75
  br label %89, !dbg !1589

; <label>:87                                      ; preds = %85
  br label %114, !dbg !1591

; <label>:88                                      ; preds = %71
  br label %89, !dbg !1592

; <label>:89                                      ; preds = %88, %86, %84
  %90 = load i32, i32* @pended, align 4, !dbg !1593
  %91 = icmp eq i32 %90, 1, !dbg !1596
  br i1 %91, label %92, label %97, !dbg !1597

; <label>:92                                      ; preds = %89
  %93 = load i32, i32* %status, align 4, !dbg !1598
  %94 = icmp ne i32 %93, 259, !dbg !1601
  br i1 %94, label %95, label %96, !dbg !1602

; <label>:95                                      ; preds = %92
  call void (...) @__VERIFIER_error() #6, !dbg !1603
  unreachable, !dbg !1603

errorFn.exit3:                                    ; No predecessors!
  br label %96, !dbg !1606

; <label>:96                                      ; preds = %errorFn.exit3, %92
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1319, metadata !111), !dbg !1642
  store i32 %DeviceObject, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1321, metadata !111), !dbg !1643
  store i32 %InputBuffer, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1323, metadata !111), !dbg !1644
  store i32 %InputBufferLength, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1325, metadata !111), !dbg !1645
  store i32 %OutputBuffer, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1327, metadata !111), !dbg !1646
  store i32 %OutputBufferLength, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1329, metadata !111), !dbg !1647
  store i32 %InternalDeviceIoControl, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1331, metadata !111), !dbg !1648
  store i32 %Event, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1333, metadata !111), !dbg !1649
  store i32 %IoStatusBlock, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1335, metadata !111), !dbg !1650
  call void @llvm.dbg.declare(metadata i32* %malloc, metadata !1337, metadata !111), !dbg !1651
  %11 = call i32 @__VERIFIER_nondet_int(), !dbg !1652
  store i32 %11, i32* %malloc, align 4, !dbg !1651
  store i32 1, i32* @customIrp, align 4, !dbg !1653
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_2, metadata !1338, metadata !111), !dbg !1654
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !429, metadata !111), !dbg !1669
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_3, metadata !435, metadata !111), !dbg !1670
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !995, metadata !111), !dbg !1684
  store i32 %BusNumber, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1002, metadata !111), !dbg !1685
  store i32 %ControllerType, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1004, metadata !111), !dbg !1686
  store i32 %ControllerNumber, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1006, metadata !111), !dbg !1687
  store i32 %PeripheralType, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1008, metadata !111), !dbg !1688
  store i32 %PeripheralNumber, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1010, metadata !111), !dbg !1689
  store i32 %CalloutRoutine, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1012, metadata !111), !dbg !1690
  store i32 %Context, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1014, metadata !111), !dbg !1691
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_4, metadata !1016, metadata !111), !dbg !1692
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1019, metadata !111), !dbg !1706
  store i32 %InterfaceClassGuid, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1025, metadata !111), !dbg !1707
  store i32 %ReferenceString, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1027, metadata !111), !dbg !1708
  store i32 %SymbolicLinkName, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1029, metadata !111), !dbg !1709
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_5, metadata !1031, metadata !111), !dbg !1710
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !418, metadata !111), !dbg !1724
  store i32 %Enable, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !424, metadata !111), !dbg !1725
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_6, metadata !426, metadata !111), !dbg !1726
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
  %tmp_ndt_12 = alloca i32, align 4
  %tmp_ndt_7 = alloca i32, align 4
  store i32 %DeviceObject, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1755, metadata !111), !dbg !1756
  store i32 %Irp, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1757, metadata !111), !dbg !1758
  call void @llvm.dbg.declare(metadata i32* %returnVal2, metadata !1759, metadata !111), !dbg !1760
  call void @llvm.dbg.declare(metadata i32* %compRetStatus1, metadata !1761, metadata !111), !dbg !1762
  call void @llvm.dbg.declare(metadata i32* %lcontext, metadata !1763, metadata !111), !dbg !1764
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !1765
  store i32 %9, i32* %lcontext, align 4, !dbg !1764
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp7, metadata !1766, metadata !111), !dbg !1767
  %10 = load i32, i32* @compRegistered, align 4, !dbg !1768
  %11 = icmp ne i32 %10, 0, !dbg !1768
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1257, metadata !111), !dbg !1771
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1259, metadata !111), !dbg !1776
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1261, metadata !111), !dbg !1777
  call void @llvm.dbg.declare(metadata i32* %l.i.i, metadata !1263, metadata !111), !dbg !1778
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1240, metadata !111), !dbg !1779
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1242, metadata !111), !dbg !1780
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1244, metadata !111), !dbg !1781
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
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_12, metadata !1816, metadata !111), !dbg !1817
  %45 = call i32 @__VERIFIER_nondet_int(), !dbg !1818
  store i32 %45, i32* %tmp_ndt_12, align 4, !dbg !1819
  %46 = load i32, i32* %tmp_ndt_12, align 4, !dbg !1820
  %47 = icmp eq i32 %46, 0, !dbg !1822
  br i1 %47, label %48, label %49, !dbg !1823

; <label>:48                                      ; preds = %44
  br label %57, !dbg !1824

; <label>:49                                      ; preds = %44
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_7, metadata !1826, metadata !111), !dbg !1828
  %50 = call i32 @__VERIFIER_nondet_int(), !dbg !1829
  store i32 %50, i32* %tmp_ndt_7, align 4, !dbg !1830
  %51 = load i32, i32* %tmp_ndt_7, align 4, !dbg !1831
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
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1257, metadata !111), !dbg !1902
  store i32 %Increment, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1259, metadata !111), !dbg !1903
  store i32 %Wait, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1261, metadata !111), !dbg !1904
  call void @llvm.dbg.declare(metadata i32* %l, metadata !1263, metadata !111), !dbg !1905
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
  %tmp_ndt_8 = alloca i32, align 4
  store i32 %Object, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1910, metadata !111), !dbg !1911
  store i32 %WaitReason, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1912, metadata !111), !dbg !1913
  store i32 %WaitMode, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1914, metadata !111), !dbg !1915
  store i32 %Alertable, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1916, metadata !111), !dbg !1917
  store i32 %Timeout, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1918, metadata !111), !dbg !1919
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
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_8, metadata !1961, metadata !111), !dbg !1962
  %31 = call i32 @__VERIFIER_nondet_int(), !dbg !1963
  store i32 %31, i32* %tmp_ndt_8, align 4, !dbg !1964
  %32 = load i32, i32* %tmp_ndt_8, align 4, !dbg !1965
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
  %tmp_ndt_9 = alloca i32, align 4
  store i32 %Handle, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !173, metadata !111), !dbg !1980
  store i32 %DesiredAccess, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !177, metadata !111), !dbg !1981
  store i32 %ObjectType, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !179, metadata !111), !dbg !1982
  store i32 %AccessMode, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !181, metadata !111), !dbg !1983
  store i32 %Object, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !183, metadata !111), !dbg !1984
  store i32 %HandleInformation, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !185, metadata !111), !dbg !1985
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_9, metadata !187, metadata !111), !dbg !1986
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !1987
  store i32 %8, i32* %tmp_ndt_9, align 4, !dbg !1988
  %9 = load i32, i32* %tmp_ndt_9, align 4, !dbg !1989
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
  %tmp_ndt_10 = alloca i32, align 4
  store i32 %ThreadHandle, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !152, metadata !111), !dbg !2000
  store i32 %DesiredAccess, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !158, metadata !111), !dbg !2001
  store i32 %ObjectAttributes, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !160, metadata !111), !dbg !2002
  store i32 %ProcessHandle, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !162, metadata !111), !dbg !2003
  store i32 %ClientId, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !164, metadata !111), !dbg !2004
  store i32 %StartRoutine, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !166, metadata !111), !dbg !2005
  store i32 %StartContext, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !168, metadata !111), !dbg !2006
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_10, metadata !170, metadata !111), !dbg !2007
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !2008
  store i32 %9, i32* %tmp_ndt_10, align 4, !dbg !2009
  %10 = load i32, i32* %tmp_ndt_10, align 4, !dbg !2010
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
  %tmp_ndt_11 = alloca i32, align 4
  store i32 %Handle, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !190, metadata !111), !dbg !2021
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_11, metadata !193, metadata !111), !dbg !2022
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !2023
  store i32 %3, i32* %tmp_ndt_11, align 4, !dbg !2024
  %4 = load i32, i32* %tmp_ndt_11, align 4, !dbg !2025
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
!llvm.module.flags = !{!85, !86, !87}
!llvm.ident = !{!88}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !58)
!1 = !DIFile(filename: "svcomp16/ntdrivers-simplified/floppy_simpl3_false-unreach-call_true-termination.cil.c", directory: ".")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!6 = !{!7, !10, !11, !15, !16, !17, !18, !21, !22, !25, !26, !29, !32, !35, !38, !41, !42, !43, !44, !47, !48, !51, !54, !57}
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
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84}
!59 = !DIGlobalVariable(name: "PagingReferenceCount", scope: !0, file: !1, line: 64, type: !14, isLocal: false, isDefinition: true, variable: i32* @PagingReferenceCount)
!60 = !DIGlobalVariable(name: "PagingMutex", scope: !0, file: !1, line: 65, type: !14, isLocal: false, isDefinition: true, variable: i32* @PagingMutex)
!61 = !DIGlobalVariable(name: "FloppyThread", scope: !0, file: !1, line: 9, type: !14, isLocal: false, isDefinition: true, variable: i32* @FloppyThread)
!62 = !DIGlobalVariable(name: "KernelMode", scope: !0, file: !1, line: 10, type: !14, isLocal: false, isDefinition: true, variable: i32* @KernelMode)
!63 = !DIGlobalVariable(name: "Suspended", scope: !0, file: !1, line: 11, type: !14, isLocal: false, isDefinition: true, variable: i32* @Suspended)
!64 = !DIGlobalVariable(name: "Executive", scope: !0, file: !1, line: 12, type: !14, isLocal: false, isDefinition: true, variable: i32* @Executive)
!65 = !DIGlobalVariable(name: "DiskController", scope: !0, file: !1, line: 13, type: !14, isLocal: false, isDefinition: true, variable: i32* @DiskController)
!66 = !DIGlobalVariable(name: "FloppyDiskPeripheral", scope: !0, file: !1, line: 14, type: !14, isLocal: false, isDefinition: true, variable: i32* @FloppyDiskPeripheral)
!67 = !DIGlobalVariable(name: "FlConfigCallBack", scope: !0, file: !1, line: 15, type: !14, isLocal: false, isDefinition: true, variable: i32* @FlConfigCallBack)
!68 = !DIGlobalVariable(name: "MaximumInterfaceType", scope: !0, file: !1, line: 16, type: !14, isLocal: false, isDefinition: true, variable: i32* @MaximumInterfaceType)
!69 = !DIGlobalVariable(name: "MOUNTDEV_MOUNTED_DEVICE_GUID", scope: !0, file: !1, line: 17, type: !14, isLocal: false, isDefinition: true, variable: i32* @MOUNTDEV_MOUNTED_DEVICE_GUID)
!70 = !DIGlobalVariable(name: "myStatus", scope: !0, file: !1, line: 18, type: !14, isLocal: false, isDefinition: true, variable: i32* @myStatus)
!71 = !DIGlobalVariable(name: "s", scope: !0, file: !1, line: 19, type: !14, isLocal: false, isDefinition: true, variable: i32* @s)
!72 = !DIGlobalVariable(name: "UNLOADED", scope: !0, file: !1, line: 20, type: !14, isLocal: false, isDefinition: true, variable: i32* @UNLOADED)
!73 = !DIGlobalVariable(name: "NP", scope: !0, file: !1, line: 21, type: !14, isLocal: false, isDefinition: true, variable: i32* @NP)
!74 = !DIGlobalVariable(name: "DC", scope: !0, file: !1, line: 22, type: !14, isLocal: false, isDefinition: true, variable: i32* @DC)
!75 = !DIGlobalVariable(name: "SKIP1", scope: !0, file: !1, line: 23, type: !14, isLocal: false, isDefinition: true, variable: i32* @SKIP1)
!76 = !DIGlobalVariable(name: "SKIP2", scope: !0, file: !1, line: 24, type: !14, isLocal: false, isDefinition: true, variable: i32* @SKIP2)
!77 = !DIGlobalVariable(name: "MPR1", scope: !0, file: !1, line: 25, type: !14, isLocal: false, isDefinition: true, variable: i32* @MPR1)
!78 = !DIGlobalVariable(name: "MPR3", scope: !0, file: !1, line: 26, type: !14, isLocal: false, isDefinition: true, variable: i32* @MPR3)
!79 = !DIGlobalVariable(name: "IPC", scope: !0, file: !1, line: 27, type: !14, isLocal: false, isDefinition: true, variable: i32* @IPC)
!80 = !DIGlobalVariable(name: "pended", scope: !0, file: !1, line: 28, type: !14, isLocal: false, isDefinition: true, variable: i32* @pended)
!81 = !DIGlobalVariable(name: "compRegistered", scope: !0, file: !1, line: 29, type: !14, isLocal: false, isDefinition: true, variable: i32* @compRegistered)
!82 = !DIGlobalVariable(name: "lowerDriverReturn", scope: !0, file: !1, line: 30, type: !14, isLocal: false, isDefinition: true, variable: i32* @lowerDriverReturn)
!83 = !DIGlobalVariable(name: "setEventCalled", scope: !0, file: !1, line: 31, type: !14, isLocal: false, isDefinition: true, variable: i32* @setEventCalled)
!84 = !DIGlobalVariable(name: "customIrp", scope: !0, file: !1, line: 32, type: !14, isLocal: false, isDefinition: true, variable: i32* @customIrp)
!85 = !{i32 2, !"Dwarf Version", i32 2}
!86 = !{i32 2, !"Debug Info Version", i32 3}
!87 = !{i32 1, !"PIC Level", i32 2}
!88 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!89 = !DILocation(line: 37, column: 3, scope: !7)
!90 = !DILocation(line: 38, column: 10, scope: !91)
!91 = distinct !DILexicalBlock(scope: !7, file: !1, line: 37, column: 3)
!92 = !DILocation(line: 41, column: 1, scope: !7)
!93 = !DILocation(line: 47, column: 12, scope: !94)
!94 = distinct !DILexicalBlock(scope: !10, file: !1, line: 46, column: 3)
!95 = !DILocation(line: 48, column: 6, scope: !94)
!96 = !DILocation(line: 49, column: 6, scope: !94)
!97 = !DILocation(line: 50, column: 9, scope: !94)
!98 = !DILocation(line: 51, column: 9, scope: !94)
!99 = !DILocation(line: 52, column: 8, scope: !94)
!100 = !DILocation(line: 53, column: 8, scope: !94)
!101 = !DILocation(line: 54, column: 7, scope: !94)
!102 = !DILocation(line: 55, column: 7, scope: !94)
!103 = !DILocation(line: 55, column: 5, scope: !94)
!104 = !DILocation(line: 56, column: 10, scope: !94)
!105 = !DILocation(line: 57, column: 18, scope: !94)
!106 = !DILocation(line: 58, column: 21, scope: !94)
!107 = !DILocation(line: 59, column: 18, scope: !94)
!108 = !DILocation(line: 60, column: 13, scope: !94)
!109 = !DILocation(line: 61, column: 3, scope: !94)
!110 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DisketteExtension", arg: 1, scope: !11, file: !1, line: 66, type: !14)
!111 = !DIExpression()
!112 = !DILocation(line: 66, column: 31, scope: !11)
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "FdcInfo", arg: 2, scope: !11, file: !1, line: 66, type: !14)
!114 = !DILocation(line: 66, column: 55, scope: !11)
!115 = !DILocation(line: 70, column: 3, scope: !116)
!116 = distinct !DILexicalBlock(scope: !11, file: !1, line: 69, column: 3)
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 1, scope: !15, file: !1, line: 73, type: !14)
!118 = !DILocation(line: 73, column: 28, scope: !15)
!119 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DisketteExtension", arg: 2, scope: !15, file: !1, line: 73, type: !14)
!120 = !DILocation(line: 73, column: 38, scope: !15)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !15, file: !1, line: 74, type: !14)
!122 = !DILocation(line: 74, column: 7, scope: !15)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "threadHandle", scope: !15, file: !1, line: 75, type: !14)
!124 = !DILocation(line: 75, column: 7, scope: !15)
!125 = !DILocation(line: 75, column: 22, scope: !15)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DisketteExtension__PoweringDown", scope: !15, file: !1, line: 76, type: !14)
!127 = !DILocation(line: 76, column: 7, scope: !15)
!128 = !DILocation(line: 76, column: 41, scope: !15)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DisketteExtension__ThreadReferenceCount", scope: !15, file: !1, line: 77, type: !14)
!130 = !DILocation(line: 77, column: 7, scope: !15)
!131 = !DILocation(line: 77, column: 49, scope: !15)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DisketteExtension__FloppyThread", scope: !15, file: !1, line: 78, type: !14)
!133 = !DILocation(line: 78, column: 7, scope: !15)
!134 = !DILocation(line: 78, column: 41, scope: !15)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !15, file: !1, line: 79, type: !14)
!136 = !DILocation(line: 79, column: 7, scope: !15)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !15, file: !1, line: 80, type: !14)
!138 = !DILocation(line: 80, column: 7, scope: !15)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation__Control", scope: !15, file: !1, line: 81, type: !14)
!140 = !DILocation(line: 81, column: 7, scope: !15)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ObjAttributes", scope: !15, file: !1, line: 82, type: !14)
!142 = !DILocation(line: 82, column: 7, scope: !15)
!143 = !DILocation(line: 82, column: 23, scope: !15)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp12", scope: !15, file: !1, line: 83, type: !14)
!145 = !DILocation(line: 83, column: 7, scope: !15)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp13", scope: !15, file: !1, line: 84, type: !14)
!147 = !DILocation(line: 84, column: 7, scope: !15)
!148 = !DILocation(line: 87, column: 7, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !1, line: 87, column: 7)
!150 = distinct !DILexicalBlock(scope: !15, file: !1, line: 86, column: 3)
!151 = !DILocation(line: 87, column: 39, scope: !149)
!152 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ThreadHandle", arg: 1, scope: !54, file: !1, line: 1068, type: !14)
!153 = !DILocation(line: 1068, column: 30, scope: !54, inlinedAt: !154)
!154 = distinct !DILocation(line: 101, column: 14, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !1, line: 100, column: 5)
!156 = distinct !DILexicalBlock(scope: !157, file: !1, line: 94, column: 53)
!157 = distinct !DILexicalBlock(scope: !150, file: !1, line: 94, column: 7)
!158 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DesiredAccess", arg: 2, scope: !54, file: !1, line: 1068, type: !14)
!159 = !DILocation(line: 1068, column: 49, scope: !54, inlinedAt: !154)
!160 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ObjectAttributes", arg: 3, scope: !54, file: !1, line: 1068, type: !14)
!161 = !DILocation(line: 1068, column: 69, scope: !54, inlinedAt: !154)
!162 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ProcessHandle", arg: 4, scope: !54, file: !1, line: 1069, type: !14)
!163 = !DILocation(line: 1069, column: 30, scope: !54, inlinedAt: !154)
!164 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ClientId", arg: 5, scope: !54, file: !1, line: 1069, type: !14)
!165 = !DILocation(line: 1069, column: 50, scope: !54, inlinedAt: !154)
!166 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "StartRoutine", arg: 6, scope: !54, file: !1, line: 1069, type: !14)
!167 = !DILocation(line: 1069, column: 65, scope: !54, inlinedAt: !154)
!168 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "StartContext", arg: 7, scope: !54, file: !1, line: 1069, type: !14)
!169 = !DILocation(line: 1069, column: 84, scope: !54, inlinedAt: !154)
!170 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_10", scope: !171, file: !1, line: 1073, type: !14)
!171 = distinct !DILexicalBlock(scope: !54, file: !1, line: 1072, column: 3)
!172 = !DILocation(line: 1073, column: 7, scope: !171, inlinedAt: !154)
!173 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Handle", arg: 1, scope: !51, file: !1, line: 1046, type: !14)
!174 = !DILocation(line: 1046, column: 35, scope: !51, inlinedAt: !175)
!175 = distinct !DILocation(line: 115, column: 14, scope: !176)
!176 = distinct !DILexicalBlock(scope: !156, file: !1, line: 114, column: 5)
!177 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DesiredAccess", arg: 2, scope: !51, file: !1, line: 1046, type: !14)
!178 = !DILocation(line: 1046, column: 48, scope: !51, inlinedAt: !175)
!179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ObjectType", arg: 3, scope: !51, file: !1, line: 1046, type: !14)
!180 = !DILocation(line: 1046, column: 68, scope: !51, inlinedAt: !175)
!181 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "AccessMode", arg: 4, scope: !51, file: !1, line: 1046, type: !14)
!182 = !DILocation(line: 1046, column: 85, scope: !51, inlinedAt: !175)
!183 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Object", arg: 5, scope: !51, file: !1, line: 1047, type: !14)
!184 = !DILocation(line: 1047, column: 35, scope: !51, inlinedAt: !175)
!185 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "HandleInformation", arg: 6, scope: !51, file: !1, line: 1047, type: !14)
!186 = !DILocation(line: 1047, column: 48, scope: !51, inlinedAt: !175)
!187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_9", scope: !188, file: !1, line: 1051, type: !14)
!188 = distinct !DILexicalBlock(scope: !51, file: !1, line: 1050, column: 3)
!189 = !DILocation(line: 1051, column: 7, scope: !188, inlinedAt: !175)
!190 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Handle", arg: 1, scope: !57, file: !1, line: 1090, type: !14)
!191 = !DILocation(line: 1090, column: 17, scope: !57, inlinedAt: !192)
!192 = distinct !DILocation(line: 117, column: 5, scope: !176)
!193 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_11", scope: !194, file: !1, line: 1094, type: !14)
!194 = distinct !DILexicalBlock(scope: !57, file: !1, line: 1093, column: 3)
!195 = !DILocation(line: 1094, column: 7, scope: !194, inlinedAt: !192)
!196 = !DILocation(line: 87, column: 7, scope: !150)
!197 = !DILocation(line: 88, column: 14, scope: !198)
!198 = distinct !DILexicalBlock(scope: !149, file: !1, line: 87, column: 45)
!199 = !DILocation(line: 89, column: 27, scope: !198)
!200 = !DILocation(line: 90, column: 32, scope: !198)
!201 = !DILocation(line: 91, column: 5, scope: !198)
!202 = !DILocation(line: 93, column: 43, scope: !150)
!203 = !DILocation(line: 94, column: 7, scope: !157)
!204 = !DILocation(line: 94, column: 47, scope: !157)
!205 = !DILocation(line: 94, column: 7, scope: !150)
!206 = !DILocation(line: 95, column: 45, scope: !156)
!207 = !DILocation(line: 96, column: 26, scope: !156)
!208 = !DILocation(line: 97, column: 9, scope: !209)
!209 = distinct !DILexicalBlock(scope: !156, file: !1, line: 97, column: 9)
!210 = !DILocation(line: 97, column: 30, scope: !209)
!211 = !DILocation(line: 97, column: 9, scope: !156)
!212 = !DILocation(line: 99, column: 5, scope: !213)
!213 = distinct !DILexicalBlock(scope: !209, file: !1, line: 97, column: 36)
!214 = !DILocation(line: 101, column: 35, scope: !155)
!215 = !DILocation(line: 101, column: 52, scope: !155)
!216 = !DILocation(line: 101, column: 73, scope: !155)
!217 = !DILocation(line: 102, column: 35, scope: !155)
!218 = !DILocation(line: 101, column: 14, scope: !155)
!219 = !DILocation(line: 1074, column: 16, scope: !171, inlinedAt: !154)
!220 = !DILocation(line: 1074, column: 14, scope: !171, inlinedAt: !154)
!221 = !DILocation(line: 1075, column: 7, scope: !222, inlinedAt: !154)
!222 = distinct !DILexicalBlock(scope: !171, file: !1, line: 1075, column: 7)
!223 = !DILocation(line: 1075, column: 18, scope: !222, inlinedAt: !154)
!224 = !DILocation(line: 1075, column: 7, scope: !171, inlinedAt: !154)
!225 = !DILocation(line: 1081, column: 7, scope: !226, inlinedAt: !154)
!226 = distinct !DILexicalBlock(scope: !227, file: !1, line: 1079, column: 12)
!227 = distinct !DILexicalBlock(scope: !228, file: !1, line: 1079, column: 9)
!228 = distinct !DILexicalBlock(scope: !222, file: !1, line: 1077, column: 10)
!229 = !DILocation(line: 1083, column: 7, scope: !226, inlinedAt: !154)
!230 = !DILocation(line: 1089, column: 1, scope: !54, inlinedAt: !154)
!231 = !DILocation(line: 101, column: 12, scope: !155)
!232 = !DILocation(line: 105, column: 9, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !1, line: 105, column: 9)
!234 = distinct !DILexicalBlock(scope: !156, file: !1, line: 104, column: 5)
!235 = !DILocation(line: 105, column: 16, scope: !233)
!236 = !DILocation(line: 105, column: 9, scope: !234)
!237 = !DILocation(line: 106, column: 47, scope: !238)
!238 = distinct !DILexicalBlock(scope: !233, file: !1, line: 105, column: 21)
!239 = !DILocation(line: 107, column: 28, scope: !238)
!240 = !DILocation(line: 108, column: 11, scope: !241)
!241 = distinct !DILexicalBlock(scope: !238, file: !1, line: 108, column: 11)
!242 = !DILocation(line: 108, column: 32, scope: !241)
!243 = !DILocation(line: 108, column: 11, scope: !238)
!244 = !DILocation(line: 110, column: 7, scope: !245)
!245 = distinct !DILexicalBlock(scope: !241, file: !1, line: 108, column: 38)
!246 = !DILocation(line: 111, column: 15, scope: !238)
!247 = !DILocation(line: 111, column: 7, scope: !238)
!248 = !DILocation(line: 115, column: 40, scope: !176)
!249 = !DILocation(line: 115, column: 66, scope: !176)
!250 = !DILocation(line: 115, column: 78, scope: !176)
!251 = !DILocation(line: 115, column: 14, scope: !176)
!252 = !DILocation(line: 1052, column: 15, scope: !188, inlinedAt: !175)
!253 = !DILocation(line: 1052, column: 13, scope: !188, inlinedAt: !175)
!254 = !DILocation(line: 1053, column: 7, scope: !255, inlinedAt: !175)
!255 = distinct !DILexicalBlock(scope: !188, file: !1, line: 1053, column: 7)
!256 = !DILocation(line: 1053, column: 17, scope: !255, inlinedAt: !175)
!257 = !DILocation(line: 1053, column: 7, scope: !188, inlinedAt: !175)
!258 = !DILocation(line: 1059, column: 7, scope: !259, inlinedAt: !175)
!259 = distinct !DILexicalBlock(scope: !260, file: !1, line: 1057, column: 12)
!260 = distinct !DILexicalBlock(scope: !261, file: !1, line: 1057, column: 9)
!261 = distinct !DILexicalBlock(scope: !255, file: !1, line: 1055, column: 10)
!262 = !DILocation(line: 1061, column: 7, scope: !259, inlinedAt: !175)
!263 = !DILocation(line: 1067, column: 1, scope: !51, inlinedAt: !175)
!264 = !DILocation(line: 115, column: 12, scope: !176)
!265 = !DILocation(line: 117, column: 13, scope: !176)
!266 = !DILocation(line: 117, column: 5, scope: !176)
!267 = !DILocation(line: 1095, column: 16, scope: !194, inlinedAt: !192)
!268 = !DILocation(line: 1095, column: 14, scope: !194, inlinedAt: !192)
!269 = !DILocation(line: 1096, column: 7, scope: !270, inlinedAt: !192)
!270 = distinct !DILexicalBlock(scope: !194, file: !1, line: 1096, column: 7)
!271 = !DILocation(line: 1096, column: 18, scope: !270, inlinedAt: !192)
!272 = !DILocation(line: 1096, column: 7, scope: !194, inlinedAt: !192)
!273 = !DILocation(line: 1102, column: 7, scope: !274, inlinedAt: !192)
!274 = distinct !DILexicalBlock(scope: !275, file: !1, line: 1100, column: 12)
!275 = distinct !DILexicalBlock(scope: !276, file: !1, line: 1100, column: 9)
!276 = distinct !DILexicalBlock(scope: !270, file: !1, line: 1098, column: 10)
!277 = !DILocation(line: 1104, column: 7, scope: !274, inlinedAt: !192)
!278 = !DILocation(line: 1110, column: 1, scope: !57, inlinedAt: !192)
!279 = !DILocation(line: 120, column: 9, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !1, line: 120, column: 9)
!281 = distinct !DILexicalBlock(scope: !156, file: !1, line: 119, column: 5)
!282 = !DILocation(line: 120, column: 16, scope: !280)
!283 = !DILocation(line: 120, column: 9, scope: !281)
!284 = !DILocation(line: 121, column: 15, scope: !285)
!285 = distinct !DILexicalBlock(scope: !280, file: !1, line: 120, column: 21)
!286 = !DILocation(line: 121, column: 7, scope: !285)
!287 = !DILocation(line: 124, column: 3, scope: !156)
!288 = !DILocation(line: 126, column: 7, scope: !289)
!289 = distinct !DILexicalBlock(scope: !150, file: !1, line: 126, column: 7)
!290 = !DILocation(line: 126, column: 14, scope: !289)
!291 = !DILocation(line: 126, column: 7, scope: !150)
!292 = !DILocation(line: 127, column: 12, scope: !293)
!293 = distinct !DILexicalBlock(scope: !289, file: !1, line: 126, column: 20)
!294 = !DILocation(line: 128, column: 3, scope: !293)
!295 = !DILocation(line: 38, column: 10, scope: !91, inlinedAt: !296)
!296 = distinct !DILocation(line: 130, column: 5, scope: !297)
!297 = distinct !DILexicalBlock(scope: !298, file: !1, line: 129, column: 5)
!298 = distinct !DILexicalBlock(scope: !289, file: !1, line: 128, column: 10)
!299 = !DILocation(line: 133, column: 3, scope: !150)
!300 = !DILocation(line: 135, column: 1, scope: !15)
!301 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !16, file: !1, line: 136, type: !14)
!302 = !DILocation(line: 136, column: 19, scope: !16)
!303 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !16, file: !1, line: 136, type: !14)
!304 = !DILocation(line: 136, column: 38, scope: !16)
!305 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !16, file: !1, line: 137, type: !14)
!306 = !DILocation(line: 137, column: 7, scope: !16)
!307 = !DILocation(line: 137, column: 39, scope: !16)
!308 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !16, file: !1, line: 138, type: !14)
!309 = !DILocation(line: 138, column: 7, scope: !16)
!310 = !DILocation(line: 138, column: 50, scope: !16)
!311 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !16, file: !1, line: 139, type: !14)
!312 = !DILocation(line: 139, column: 7, scope: !16)
!313 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !16, file: !1, line: 140, type: !14)
!314 = !DILocation(line: 140, column: 7, scope: !16)
!315 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !16, file: !1, line: 141, type: !14)
!316 = !DILocation(line: 141, column: 7, scope: !16)
!317 = !DILocation(line: 141, column: 30, scope: !16)
!318 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__IsRemoved", scope: !16, file: !1, line: 142, type: !14)
!319 = !DILocation(line: 142, column: 7, scope: !16)
!320 = !DILocation(line: 142, column: 38, scope: !16)
!321 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__IsStarted", scope: !16, file: !1, line: 143, type: !14)
!322 = !DILocation(line: 143, column: 7, scope: !16)
!323 = !DILocation(line: 143, column: 38, scope: !16)
!324 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__TargetObject", scope: !16, file: !1, line: 144, type: !14)
!325 = !DILocation(line: 144, column: 7, scope: !16)
!326 = !DILocation(line: 144, column: 41, scope: !16)
!327 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__HoldNewRequests", scope: !16, file: !1, line: 145, type: !14)
!328 = !DILocation(line: 145, column: 7, scope: !16)
!329 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__FloppyThread", scope: !16, file: !1, line: 146, type: !14)
!330 = !DILocation(line: 146, column: 7, scope: !16)
!331 = !DILocation(line: 146, column: 41, scope: !16)
!332 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__InterfaceString__Buffer", scope: !16, file: !1, line: 147, type: !14)
!333 = !DILocation(line: 147, column: 7, scope: !16)
!334 = !DILocation(line: 147, column: 52, scope: !16)
!335 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__InterfaceString", scope: !16, file: !1, line: 148, type: !14)
!336 = !DILocation(line: 148, column: 7, scope: !16)
!337 = !DILocation(line: 148, column: 44, scope: !16)
!338 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__ArcName__Length", scope: !16, file: !1, line: 149, type: !14)
!339 = !DILocation(line: 149, column: 7, scope: !16)
!340 = !DILocation(line: 149, column: 44, scope: !16)
!341 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__ArcName", scope: !16, file: !1, line: 150, type: !14)
!342 = !DILocation(line: 150, column: 7, scope: !16)
!343 = !DILocation(line: 150, column: 36, scope: !16)
!344 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__MinorFunction", scope: !16, file: !1, line: 151, type: !14)
!345 = !DILocation(line: 151, column: 7, scope: !16)
!346 = !DILocation(line: 151, column: 30, scope: !16)
!347 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "IoGetConfigurationInformation__FloppyCount", scope: !16, file: !1, line: 152, type: !14)
!348 = !DILocation(line: 152, column: 7, scope: !16)
!349 = !DILocation(line: 152, column: 52, scope: !16)
!350 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp", scope: !16, file: !1, line: 153, type: !14)
!351 = !DILocation(line: 153, column: 7, scope: !16)
!352 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension", scope: !16, file: !1, line: 154, type: !14)
!353 = !DILocation(line: 154, column: 7, scope: !16)
!354 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ntStatus", scope: !16, file: !1, line: 155, type: !14)
!355 = !DILocation(line: 155, column: 7, scope: !16)
!356 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doneEvent", scope: !16, file: !1, line: 156, type: !14)
!357 = !DILocation(line: 156, column: 7, scope: !16)
!358 = !DILocation(line: 156, column: 19, scope: !16)
!359 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___0", scope: !16, file: !1, line: 157, type: !14)
!360 = !DILocation(line: 157, column: 7, scope: !16)
!361 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp", scope: !16, file: !1, line: 158, type: !14)
!362 = !DILocation(line: 158, column: 7, scope: !16)
!363 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp__Control", scope: !16, file: !1, line: 159, type: !14)
!364 = !DILocation(line: 159, column: 7, scope: !16)
!365 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___1", scope: !16, file: !1, line: 160, type: !14)
!366 = !DILocation(line: 160, column: 7, scope: !16)
!367 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Context", scope: !16, file: !1, line: 161, type: !14)
!368 = !DILocation(line: 161, column: 7, scope: !16)
!369 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Control", scope: !16, file: !1, line: 162, type: !14)
!370 = !DILocation(line: 162, column: 7, scope: !16)
!371 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp29", scope: !16, file: !1, line: 163, type: !4)
!372 = !DILocation(line: 163, column: 8, scope: !16)
!373 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp30", scope: !16, file: !1, line: 164, type: !4)
!374 = !DILocation(line: 164, column: 8, scope: !16)
!375 = !DILocation(line: 167, column: 12, scope: !376)
!376 = distinct !DILexicalBlock(scope: !16, file: !1, line: 166, column: 3)
!377 = !DILocation(line: 168, column: 24, scope: !376)
!378 = !DILocation(line: 169, column: 7, scope: !379)
!379 = distinct !DILexicalBlock(scope: !376, file: !1, line: 169, column: 7)
!380 = !DILocation(line: 169, column: 28, scope: !379)
!381 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 1, scope: !44, file: !1, line: 982, type: !14)
!382 = !DILocation(line: 982, column: 29, scope: !44, inlinedAt: !383)
!383 = distinct !DILocation(line: 179, column: 5, scope: !384)
!384 = distinct !DILexicalBlock(scope: !385, file: !1, line: 175, column: 5)
!385 = distinct !DILexicalBlock(scope: !386, file: !1, line: 174, column: 37)
!386 = distinct !DILexicalBlock(scope: !376, file: !1, line: 174, column: 7)
!387 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PriorityBoost", arg: 2, scope: !44, file: !1, line: 982, type: !14)
!388 = !DILocation(line: 982, column: 39, scope: !44, inlinedAt: !383)
!389 = !DILocation(line: 982, column: 29, scope: !44, inlinedAt: !390)
!390 = distinct !DILocation(line: 265, column: 21, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !1, line: 260, column: 21)
!392 = distinct !DILexicalBlock(scope: !393, file: !1, line: 259, column: 26)
!393 = distinct !DILexicalBlock(scope: !394, file: !1, line: 236, column: 23)
!394 = distinct !DILexicalBlock(scope: !395, file: !1, line: 234, column: 19)
!395 = distinct !DILexicalBlock(scope: !396, file: !1, line: 205, column: 24)
!396 = distinct !DILexicalBlock(scope: !397, file: !1, line: 205, column: 21)
!397 = distinct !DILexicalBlock(scope: !398, file: !1, line: 203, column: 22)
!398 = distinct !DILexicalBlock(scope: !399, file: !1, line: 201, column: 19)
!399 = distinct !DILexicalBlock(scope: !400, file: !1, line: 200, column: 20)
!400 = distinct !DILexicalBlock(scope: !401, file: !1, line: 198, column: 17)
!401 = distinct !DILexicalBlock(scope: !402, file: !1, line: 197, column: 18)
!402 = distinct !DILexicalBlock(scope: !403, file: !1, line: 195, column: 15)
!403 = distinct !DILexicalBlock(scope: !404, file: !1, line: 194, column: 16)
!404 = distinct !DILexicalBlock(scope: !405, file: !1, line: 192, column: 13)
!405 = distinct !DILexicalBlock(scope: !406, file: !1, line: 191, column: 14)
!406 = distinct !DILexicalBlock(scope: !407, file: !1, line: 189, column: 11)
!407 = distinct !DILexicalBlock(scope: !408, file: !1, line: 188, column: 12)
!408 = distinct !DILexicalBlock(scope: !409, file: !1, line: 186, column: 9)
!409 = distinct !DILexicalBlock(scope: !410, file: !1, line: 185, column: 10)
!410 = distinct !DILexicalBlock(scope: !376, file: !1, line: 183, column: 7)
!411 = !DILocation(line: 982, column: 39, scope: !44, inlinedAt: !390)
!412 = !DILocation(line: 982, column: 29, scope: !44, inlinedAt: !413)
!413 = distinct !DILocation(line: 328, column: 21, scope: !414)
!414 = distinct !DILexicalBlock(scope: !415, file: !1, line: 323, column: 21)
!415 = distinct !DILexicalBlock(scope: !416, file: !1, line: 289, column: 26)
!416 = distinct !DILexicalBlock(scope: !395, file: !1, line: 274, column: 23)
!417 = !DILocation(line: 982, column: 39, scope: !44, inlinedAt: !413)
!418 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SymbolicLinkName", arg: 1, scope: !41, file: !1, line: 874, type: !14)
!419 = !DILocation(line: 874, column: 35, scope: !41, inlinedAt: !420)
!420 = distinct !DILocation(line: 369, column: 21, scope: !421)
!421 = distinct !DILexicalBlock(scope: !422, file: !1, line: 368, column: 21)
!422 = distinct !DILexicalBlock(scope: !423, file: !1, line: 367, column: 72)
!423 = distinct !DILexicalBlock(scope: !395, file: !1, line: 367, column: 23)
!424 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Enable", arg: 2, scope: !41, file: !1, line: 874, type: !14)
!425 = !DILocation(line: 874, column: 58, scope: !41, inlinedAt: !420)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_6", scope: !427, file: !1, line: 878, type: !14)
!427 = distinct !DILexicalBlock(scope: !41, file: !1, line: 877, column: 3)
!428 = !DILocation(line: 878, column: 7, scope: !427, inlinedAt: !420)
!429 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SymbolicLinkName", arg: 1, scope: !32, file: !1, line: 808, type: !14)
!430 = !DILocation(line: 808, column: 30, scope: !32, inlinedAt: !431)
!431 = distinct !DILocation(line: 375, column: 21, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !1, line: 374, column: 21)
!433 = distinct !DILexicalBlock(scope: !434, file: !1, line: 373, column: 64)
!434 = distinct !DILexicalBlock(scope: !395, file: !1, line: 373, column: 23)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_3", scope: !436, file: !1, line: 812, type: !14)
!436 = distinct !DILexicalBlock(scope: !32, file: !1, line: 811, column: 3)
!437 = !DILocation(line: 812, column: 7, scope: !436, inlinedAt: !431)
!438 = !DILocation(line: 169, column: 7, scope: !376)
!439 = !DILocation(line: 171, column: 3, scope: !440)
!440 = distinct !DILexicalBlock(scope: !379, file: !1, line: 169, column: 34)
!441 = !DILocation(line: 172, column: 23, scope: !376)
!442 = !DILocation(line: 172, column: 21, scope: !376)
!443 = !DILocation(line: 173, column: 11, scope: !376)
!444 = !DILocation(line: 173, column: 9, scope: !376)
!445 = !DILocation(line: 174, column: 7, scope: !386)
!446 = !DILocation(line: 174, column: 7, scope: !376)
!447 = !DILocation(line: 176, column: 32, scope: !384)
!448 = !DILocation(line: 177, column: 27, scope: !384)
!449 = !DILocation(line: 178, column: 14, scope: !384)
!450 = !DILocation(line: 179, column: 24, scope: !384)
!451 = !DILocation(line: 179, column: 5, scope: !384)
!452 = !DILocation(line: 986, column: 7, scope: !453, inlinedAt: !383)
!453 = distinct !DILexicalBlock(scope: !454, file: !1, line: 986, column: 7)
!454 = distinct !DILexicalBlock(scope: !44, file: !1, line: 985, column: 3)
!455 = !DILocation(line: 986, column: 12, scope: !453, inlinedAt: !383)
!456 = !DILocation(line: 986, column: 9, scope: !453, inlinedAt: !383)
!457 = !DILocation(line: 986, column: 7, scope: !454, inlinedAt: !383)
!458 = !DILocation(line: 38, column: 10, scope: !91, inlinedAt: !459)
!459 = distinct !DILocation(line: 990, column: 5, scope: !460, inlinedAt: !383)
!460 = distinct !DILexicalBlock(scope: !461, file: !1, line: 989, column: 5)
!461 = distinct !DILexicalBlock(scope: !453, file: !1, line: 988, column: 10)
!462 = !DILocation(line: 987, column: 9, scope: !463, inlinedAt: !383)
!463 = distinct !DILexicalBlock(scope: !453, file: !1, line: 986, column: 16)
!464 = !DILocation(line: 987, column: 7, scope: !463, inlinedAt: !383)
!465 = !DILocation(line: 993, column: 3, scope: !454, inlinedAt: !383)
!466 = !DILocation(line: 181, column: 5, scope: !385)
!467 = !DILocation(line: 183, column: 7, scope: !410)
!468 = !DILocation(line: 183, column: 28, scope: !410)
!469 = !DILocation(line: 183, column: 7, scope: !376)
!470 = !DILocation(line: 184, column: 5, scope: !471)
!471 = distinct !DILexicalBlock(scope: !410, file: !1, line: 183, column: 34)
!472 = !DILocation(line: 186, column: 9, scope: !408)
!473 = !DILocation(line: 186, column: 30, scope: !408)
!474 = !DILocation(line: 186, column: 9, scope: !409)
!475 = !DILocation(line: 187, column: 7, scope: !476)
!476 = distinct !DILexicalBlock(scope: !408, file: !1, line: 186, column: 36)
!477 = !DILocation(line: 189, column: 11, scope: !406)
!478 = !DILocation(line: 189, column: 32, scope: !406)
!479 = !DILocation(line: 189, column: 11, scope: !407)
!480 = !DILocation(line: 190, column: 9, scope: !481)
!481 = distinct !DILexicalBlock(scope: !406, file: !1, line: 189, column: 38)
!482 = !DILocation(line: 192, column: 13, scope: !404)
!483 = !DILocation(line: 192, column: 34, scope: !404)
!484 = !DILocation(line: 192, column: 13, scope: !405)
!485 = !DILocation(line: 193, column: 11, scope: !486)
!486 = distinct !DILexicalBlock(scope: !404, file: !1, line: 192, column: 40)
!487 = !DILocation(line: 195, column: 15, scope: !402)
!488 = !DILocation(line: 195, column: 36, scope: !402)
!489 = !DILocation(line: 195, column: 15, scope: !403)
!490 = !DILocation(line: 196, column: 13, scope: !491)
!491 = distinct !DILexicalBlock(scope: !402, file: !1, line: 195, column: 42)
!492 = !DILocation(line: 198, column: 17, scope: !400)
!493 = !DILocation(line: 198, column: 38, scope: !400)
!494 = !DILocation(line: 198, column: 17, scope: !401)
!495 = !DILocation(line: 199, column: 15, scope: !496)
!496 = distinct !DILexicalBlock(scope: !400, file: !1, line: 198, column: 44)
!497 = !DILocation(line: 201, column: 19, scope: !398)
!498 = !DILocation(line: 201, column: 40, scope: !398)
!499 = !DILocation(line: 201, column: 19, scope: !399)
!500 = !DILocation(line: 202, column: 17, scope: !501)
!501 = distinct !DILexicalBlock(scope: !398, file: !1, line: 201, column: 46)
!502 = !DILocation(line: 204, column: 17, scope: !397)
!503 = !DILocation(line: 205, column: 21, scope: !397)
!504 = !DILocation(line: 205, column: 24, scope: !396)
!505 = !DILocation(line: 208, column: 48, scope: !506)
!506 = distinct !DILexicalBlock(scope: !395, file: !1, line: 207, column: 19)
!507 = !DILocation(line: 208, column: 62, scope: !506)
!508 = !DILocation(line: 208, column: 30, scope: !506)
!509 = !DILocation(line: 208, column: 28, scope: !506)
!510 = !DILocation(line: 210, column: 19, scope: !395)
!511 = !DILocation(line: 212, column: 23, scope: !512)
!512 = distinct !DILexicalBlock(scope: !395, file: !1, line: 212, column: 23)
!513 = !DILocation(line: 212, column: 44, scope: !512)
!514 = !DILocation(line: 212, column: 23, scope: !395)
!515 = !DILocation(line: 214, column: 19, scope: !516)
!516 = distinct !DILexicalBlock(scope: !512, file: !1, line: 212, column: 50)
!517 = !DILocation(line: 215, column: 25, scope: !518)
!518 = distinct !DILexicalBlock(scope: !395, file: !1, line: 215, column: 23)
!519 = !DILocation(line: 215, column: 23, scope: !395)
!520 = !DILocation(line: 216, column: 25, scope: !521)
!521 = distinct !DILexicalBlock(scope: !522, file: !1, line: 216, column: 25)
!522 = distinct !DILexicalBlock(scope: !518, file: !1, line: 215, column: 55)
!523 = !DILocation(line: 216, column: 30, scope: !521)
!524 = !DILocation(line: 216, column: 27, scope: !521)
!525 = !DILocation(line: 216, column: 25, scope: !522)
!526 = !DILocation(line: 217, column: 27, scope: !527)
!527 = distinct !DILexicalBlock(scope: !521, file: !1, line: 216, column: 34)
!528 = !DILocation(line: 217, column: 25, scope: !527)
!529 = !DILocation(line: 218, column: 21, scope: !527)
!530 = !DILocation(line: 38, column: 10, scope: !91, inlinedAt: !531)
!531 = distinct !DILocation(line: 220, column: 23, scope: !532)
!532 = distinct !DILexicalBlock(scope: !533, file: !1, line: 219, column: 23)
!533 = distinct !DILexicalBlock(scope: !521, file: !1, line: 218, column: 28)
!534 = !DILocation(line: 224, column: 42, scope: !535)
!535 = distinct !DILexicalBlock(scope: !522, file: !1, line: 223, column: 21)
!536 = !DILocation(line: 225, column: 62, scope: !535)
!537 = !DILocation(line: 226, column: 46, scope: !535)
!538 = !DILocation(line: 226, column: 79, scope: !535)
!539 = !DILocation(line: 226, column: 32, scope: !535)
!540 = !DILocation(line: 226, column: 30, scope: !535)
!541 = !DILocation(line: 228, column: 29, scope: !522)
!542 = !DILocation(line: 228, column: 21, scope: !522)
!543 = !DILocation(line: 231, column: 54, scope: !544)
!544 = distinct !DILexicalBlock(scope: !395, file: !1, line: 230, column: 19)
!545 = !DILocation(line: 232, column: 49, scope: !544)
!546 = !DILocation(line: 232, column: 54, scope: !544)
!547 = !DILocation(line: 232, column: 30, scope: !544)
!548 = !DILocation(line: 232, column: 28, scope: !544)
!549 = !DILocation(line: 235, column: 40, scope: !394)
!550 = !DILocation(line: 235, column: 33, scope: !394)
!551 = !DILocation(line: 235, column: 31, scope: !394)
!552 = !DILocation(line: 236, column: 23, scope: !393)
!553 = !DILocation(line: 236, column: 35, scope: !393)
!554 = !DILocation(line: 236, column: 23, scope: !394)
!555 = !DILocation(line: 238, column: 43, scope: !556)
!556 = distinct !DILexicalBlock(scope: !557, file: !1, line: 237, column: 21)
!557 = distinct !DILexicalBlock(scope: !393, file: !1, line: 236, column: 44)
!558 = !DILocation(line: 238, column: 76, scope: !556)
!559 = !DILocation(line: 239, column: 43, scope: !556)
!560 = !DILocation(line: 238, column: 21, scope: !556)
!561 = !DILocation(line: 241, column: 25, scope: !562)
!562 = distinct !DILexicalBlock(scope: !557, file: !1, line: 241, column: 25)
!563 = !DILocation(line: 241, column: 57, scope: !562)
!564 = !DILocation(line: 241, column: 25, scope: !557)
!565 = !DILocation(line: 243, column: 21, scope: !566)
!566 = distinct !DILexicalBlock(scope: !562, file: !1, line: 241, column: 63)
!567 = !DILocation(line: 244, column: 53, scope: !557)
!568 = !DILocation(line: 245, column: 43, scope: !557)
!569 = !DILocation(line: 246, column: 30, scope: !557)
!570 = !DILocation(line: 247, column: 25, scope: !571)
!571 = distinct !DILexicalBlock(scope: !557, file: !1, line: 247, column: 25)
!572 = !DILocation(line: 247, column: 30, scope: !571)
!573 = !DILocation(line: 247, column: 27, scope: !571)
!574 = !DILocation(line: 247, column: 25, scope: !557)
!575 = !DILocation(line: 248, column: 27, scope: !576)
!576 = distinct !DILexicalBlock(scope: !571, file: !1, line: 247, column: 34)
!577 = !DILocation(line: 248, column: 25, scope: !576)
!578 = !DILocation(line: 249, column: 21, scope: !576)
!579 = !DILocation(line: 38, column: 10, scope: !91, inlinedAt: !580)
!580 = distinct !DILocation(line: 251, column: 23, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !1, line: 250, column: 23)
!582 = distinct !DILexicalBlock(scope: !571, file: !1, line: 249, column: 28)
!583 = !DILocation(line: 255, column: 42, scope: !584)
!584 = distinct !DILexicalBlock(scope: !557, file: !1, line: 254, column: 21)
!585 = !DILocation(line: 256, column: 62, scope: !584)
!586 = !DILocation(line: 257, column: 46, scope: !584)
!587 = !DILocation(line: 257, column: 79, scope: !584)
!588 = !DILocation(line: 257, column: 32, scope: !584)
!589 = !DILocation(line: 257, column: 30, scope: !584)
!590 = !DILocation(line: 259, column: 19, scope: !557)
!591 = !DILocation(line: 261, column: 30, scope: !391)
!592 = !DILocation(line: 262, column: 45, scope: !391)
!593 = !DILocation(line: 262, column: 43, scope: !391)
!594 = !DILocation(line: 263, column: 32, scope: !391)
!595 = !DILocation(line: 263, column: 30, scope: !391)
!596 = !DILocation(line: 264, column: 48, scope: !391)
!597 = !DILocation(line: 265, column: 40, scope: !391)
!598 = !DILocation(line: 265, column: 21, scope: !391)
!599 = !DILocation(line: 986, column: 7, scope: !453, inlinedAt: !390)
!600 = !DILocation(line: 986, column: 12, scope: !453, inlinedAt: !390)
!601 = !DILocation(line: 986, column: 9, scope: !453, inlinedAt: !390)
!602 = !DILocation(line: 986, column: 7, scope: !454, inlinedAt: !390)
!603 = !DILocation(line: 38, column: 10, scope: !91, inlinedAt: !604)
!604 = distinct !DILocation(line: 990, column: 5, scope: !460, inlinedAt: !390)
!605 = !DILocation(line: 987, column: 9, scope: !463, inlinedAt: !390)
!606 = !DILocation(line: 987, column: 7, scope: !463, inlinedAt: !390)
!607 = !DILocation(line: 993, column: 3, scope: !454, inlinedAt: !390)
!608 = !DILocation(line: 269, column: 19, scope: !395)
!609 = !DILocation(line: 271, column: 23, scope: !610)
!610 = distinct !DILexicalBlock(scope: !395, file: !1, line: 271, column: 23)
!611 = !DILocation(line: 271, column: 44, scope: !610)
!612 = !DILocation(line: 271, column: 23, scope: !395)
!613 = !DILocation(line: 273, column: 19, scope: !614)
!614 = distinct !DILexicalBlock(scope: !610, file: !1, line: 271, column: 50)
!615 = !DILocation(line: 274, column: 25, scope: !416)
!616 = !DILocation(line: 274, column: 23, scope: !395)
!617 = !DILocation(line: 275, column: 43, scope: !618)
!618 = distinct !DILexicalBlock(scope: !416, file: !1, line: 274, column: 55)
!619 = !DILocation(line: 276, column: 30, scope: !618)
!620 = !DILocation(line: 277, column: 25, scope: !621)
!621 = distinct !DILexicalBlock(scope: !618, file: !1, line: 277, column: 25)
!622 = !DILocation(line: 277, column: 30, scope: !621)
!623 = !DILocation(line: 277, column: 27, scope: !621)
!624 = !DILocation(line: 277, column: 25, scope: !618)
!625 = !DILocation(line: 278, column: 27, scope: !626)
!626 = distinct !DILexicalBlock(scope: !621, file: !1, line: 277, column: 34)
!627 = !DILocation(line: 278, column: 25, scope: !626)
!628 = !DILocation(line: 279, column: 21, scope: !626)
!629 = !DILocation(line: 38, column: 10, scope: !91, inlinedAt: !630)
!630 = distinct !DILocation(line: 281, column: 23, scope: !631)
!631 = distinct !DILexicalBlock(scope: !632, file: !1, line: 280, column: 23)
!632 = distinct !DILexicalBlock(scope: !621, file: !1, line: 279, column: 28)
!633 = !DILocation(line: 285, column: 42, scope: !634)
!634 = distinct !DILexicalBlock(scope: !618, file: !1, line: 284, column: 21)
!635 = !DILocation(line: 286, column: 62, scope: !634)
!636 = !DILocation(line: 287, column: 46, scope: !634)
!637 = !DILocation(line: 287, column: 79, scope: !634)
!638 = !DILocation(line: 287, column: 32, scope: !634)
!639 = !DILocation(line: 287, column: 30, scope: !634)
!640 = !DILocation(line: 289, column: 19, scope: !618)
!641 = !DILocation(line: 290, column: 43, scope: !415)
!642 = !DILocation(line: 291, column: 30, scope: !415)
!643 = !DILocation(line: 292, column: 33, scope: !415)
!644 = !DILocation(line: 292, column: 31, scope: !415)
!645 = !DILocation(line: 293, column: 33, scope: !415)
!646 = !DILocation(line: 293, column: 74, scope: !415)
!647 = !DILocation(line: 293, column: 31, scope: !415)
!648 = !DILocation(line: 294, column: 40, scope: !415)
!649 = !DILocation(line: 295, column: 25, scope: !650)
!650 = distinct !DILexicalBlock(scope: !415, file: !1, line: 295, column: 25)
!651 = !DILocation(line: 295, column: 30, scope: !650)
!652 = !DILocation(line: 295, column: 27, scope: !650)
!653 = !DILocation(line: 295, column: 25, scope: !415)
!654 = !DILocation(line: 38, column: 10, scope: !91, inlinedAt: !655)
!655 = distinct !DILocation(line: 297, column: 23, scope: !656)
!656 = distinct !DILexicalBlock(scope: !657, file: !1, line: 296, column: 23)
!657 = distinct !DILexicalBlock(scope: !650, file: !1, line: 295, column: 34)
!658 = !DILocation(line: 299, column: 21, scope: !657)
!659 = !DILocation(line: 300, column: 27, scope: !660)
!660 = distinct !DILexicalBlock(scope: !661, file: !1, line: 300, column: 27)
!661 = distinct !DILexicalBlock(scope: !650, file: !1, line: 299, column: 28)
!662 = !DILocation(line: 300, column: 42, scope: !660)
!663 = !DILocation(line: 300, column: 27, scope: !661)
!664 = !DILocation(line: 38, column: 10, scope: !91, inlinedAt: !665)
!665 = distinct !DILocation(line: 302, column: 25, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !1, line: 301, column: 25)
!667 = distinct !DILexicalBlock(scope: !660, file: !1, line: 300, column: 48)
!668 = !DILocation(line: 304, column: 23, scope: !667)
!669 = !DILocation(line: 305, column: 40, scope: !670)
!670 = distinct !DILexicalBlock(scope: !660, file: !1, line: 304, column: 30)
!671 = !DILocation(line: 309, column: 33, scope: !672)
!672 = distinct !DILexicalBlock(scope: !415, file: !1, line: 308, column: 21)
!673 = !DILocation(line: 309, column: 74, scope: !672)
!674 = !DILocation(line: 309, column: 31, scope: !672)
!675 = !DILocation(line: 310, column: 38, scope: !672)
!676 = !DILocation(line: 310, column: 36, scope: !672)
!677 = !DILocation(line: 311, column: 36, scope: !672)
!678 = !DILocation(line: 312, column: 46, scope: !672)
!679 = !DILocation(line: 312, column: 79, scope: !672)
!680 = !DILocation(line: 312, column: 32, scope: !672)
!681 = !DILocation(line: 312, column: 30, scope: !672)
!682 = !DILocation(line: 315, column: 42, scope: !683)
!683 = distinct !DILexicalBlock(scope: !415, file: !1, line: 314, column: 21)
!684 = !DILocation(line: 315, column: 35, scope: !683)
!685 = !DILocation(line: 315, column: 33, scope: !683)
!686 = !DILocation(line: 316, column: 25, scope: !687)
!687 = distinct !DILexicalBlock(scope: !683, file: !1, line: 316, column: 25)
!688 = !DILocation(line: 316, column: 37, scope: !687)
!689 = !DILocation(line: 316, column: 25, scope: !683)
!690 = !DILocation(line: 318, column: 45, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !1, line: 317, column: 23)
!692 = distinct !DILexicalBlock(scope: !687, file: !1, line: 316, column: 46)
!693 = !DILocation(line: 318, column: 56, scope: !691)
!694 = !DILocation(line: 318, column: 67, scope: !691)
!695 = !DILocation(line: 318, column: 23, scope: !691)
!696 = !DILocation(line: 319, column: 34, scope: !691)
!697 = !DILocation(line: 319, column: 32, scope: !691)
!698 = !DILocation(line: 321, column: 21, scope: !692)
!699 = !DILocation(line: 324, column: 56, scope: !414)
!700 = !DILocation(line: 325, column: 45, scope: !414)
!701 = !DILocation(line: 325, column: 43, scope: !414)
!702 = !DILocation(line: 326, column: 32, scope: !414)
!703 = !DILocation(line: 326, column: 30, scope: !414)
!704 = !DILocation(line: 327, column: 48, scope: !414)
!705 = !DILocation(line: 328, column: 40, scope: !414)
!706 = !DILocation(line: 328, column: 21, scope: !414)
!707 = !DILocation(line: 986, column: 7, scope: !453, inlinedAt: !413)
!708 = !DILocation(line: 986, column: 12, scope: !453, inlinedAt: !413)
!709 = !DILocation(line: 986, column: 9, scope: !453, inlinedAt: !413)
!710 = !DILocation(line: 986, column: 7, scope: !454, inlinedAt: !413)
!711 = !DILocation(line: 38, column: 10, scope: !91, inlinedAt: !712)
!712 = distinct !DILocation(line: 990, column: 5, scope: !460, inlinedAt: !413)
!713 = !DILocation(line: 987, column: 9, scope: !463, inlinedAt: !413)
!714 = !DILocation(line: 987, column: 7, scope: !463, inlinedAt: !413)
!715 = !DILocation(line: 993, column: 3, scope: !454, inlinedAt: !413)
!716 = !DILocation(line: 331, column: 19, scope: !395)
!717 = !DILocation(line: 333, column: 48, scope: !395)
!718 = !DILocation(line: 334, column: 41, scope: !395)
!719 = !DILocation(line: 335, column: 28, scope: !395)
!720 = !DILocation(line: 336, column: 23, scope: !721)
!721 = distinct !DILexicalBlock(scope: !395, file: !1, line: 336, column: 23)
!722 = !DILocation(line: 336, column: 28, scope: !721)
!723 = !DILocation(line: 336, column: 25, scope: !721)
!724 = !DILocation(line: 336, column: 23, scope: !395)
!725 = !DILocation(line: 337, column: 25, scope: !726)
!726 = distinct !DILexicalBlock(scope: !721, file: !1, line: 336, column: 32)
!727 = !DILocation(line: 337, column: 23, scope: !726)
!728 = !DILocation(line: 338, column: 19, scope: !726)
!729 = !DILocation(line: 38, column: 10, scope: !91, inlinedAt: !730)
!730 = distinct !DILocation(line: 340, column: 21, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !1, line: 339, column: 21)
!732 = distinct !DILexicalBlock(scope: !721, file: !1, line: 338, column: 26)
!733 = !DILocation(line: 344, column: 40, scope: !734)
!734 = distinct !DILexicalBlock(scope: !395, file: !1, line: 343, column: 19)
!735 = !DILocation(line: 345, column: 60, scope: !734)
!736 = !DILocation(line: 346, column: 44, scope: !734)
!737 = !DILocation(line: 346, column: 77, scope: !734)
!738 = !DILocation(line: 346, column: 30, scope: !734)
!739 = !DILocation(line: 346, column: 28, scope: !734)
!740 = !DILocation(line: 348, column: 19, scope: !395)
!741 = !DILocation(line: 350, column: 54, scope: !395)
!742 = !DILocation(line: 351, column: 48, scope: !395)
!743 = !DILocation(line: 352, column: 48, scope: !395)
!744 = !DILocation(line: 353, column: 23, scope: !745)
!745 = distinct !DILexicalBlock(scope: !395, file: !1, line: 353, column: 23)
!746 = !DILocation(line: 353, column: 28, scope: !745)
!747 = !DILocation(line: 353, column: 25, scope: !745)
!748 = !DILocation(line: 353, column: 23, scope: !395)
!749 = !DILocation(line: 354, column: 25, scope: !750)
!750 = distinct !DILexicalBlock(scope: !745, file: !1, line: 353, column: 32)
!751 = !DILocation(line: 354, column: 23, scope: !750)
!752 = !DILocation(line: 355, column: 19, scope: !750)
!753 = !DILocation(line: 38, column: 10, scope: !91, inlinedAt: !754)
!754 = distinct !DILocation(line: 357, column: 21, scope: !755)
!755 = distinct !DILexicalBlock(scope: !756, file: !1, line: 356, column: 21)
!756 = distinct !DILexicalBlock(scope: !745, file: !1, line: 355, column: 26)
!757 = !DILocation(line: 361, column: 40, scope: !758)
!758 = distinct !DILexicalBlock(scope: !395, file: !1, line: 360, column: 19)
!759 = !DILocation(line: 362, column: 60, scope: !758)
!760 = !DILocation(line: 363, column: 41, scope: !758)
!761 = !DILocation(line: 364, column: 28, scope: !758)
!762 = !DILocation(line: 365, column: 44, scope: !758)
!763 = !DILocation(line: 365, column: 77, scope: !758)
!764 = !DILocation(line: 365, column: 30, scope: !758)
!765 = !DILocation(line: 365, column: 28, scope: !758)
!766 = !DILocation(line: 367, column: 23, scope: !423)
!767 = !DILocation(line: 367, column: 66, scope: !423)
!768 = !DILocation(line: 367, column: 23, scope: !395)
!769 = !DILocation(line: 369, column: 47, scope: !421)
!770 = !DILocation(line: 369, column: 21, scope: !421)
!771 = !DILocation(line: 879, column: 15, scope: !427, inlinedAt: !420)
!772 = !DILocation(line: 879, column: 13, scope: !427, inlinedAt: !420)
!773 = !DILocation(line: 880, column: 7, scope: !774, inlinedAt: !420)
!774 = distinct !DILexicalBlock(scope: !427, file: !1, line: 880, column: 7)
!775 = !DILocation(line: 880, column: 17, scope: !774, inlinedAt: !420)
!776 = !DILocation(line: 880, column: 7, scope: !427, inlinedAt: !420)
!777 = !DILocation(line: 886, column: 7, scope: !778, inlinedAt: !420)
!778 = distinct !DILexicalBlock(scope: !779, file: !1, line: 884, column: 12)
!779 = distinct !DILexicalBlock(scope: !780, file: !1, line: 884, column: 9)
!780 = distinct !DILexicalBlock(scope: !774, file: !1, line: 882, column: 10)
!781 = !DILocation(line: 888, column: 7, scope: !778, inlinedAt: !420)
!782 = !DILocation(line: 894, column: 1, scope: !41, inlinedAt: !420)
!783 = !DILocation(line: 372, column: 19, scope: !422)
!784 = !DILocation(line: 373, column: 23, scope: !434)
!785 = !DILocation(line: 373, column: 58, scope: !434)
!786 = !DILocation(line: 373, column: 23, scope: !395)
!787 = !DILocation(line: 375, column: 42, scope: !432)
!788 = !DILocation(line: 375, column: 21, scope: !432)
!789 = !DILocation(line: 813, column: 15, scope: !436, inlinedAt: !431)
!790 = !DILocation(line: 813, column: 13, scope: !436, inlinedAt: !431)
!791 = !DILocation(line: 814, column: 7, scope: !792, inlinedAt: !431)
!792 = distinct !DILexicalBlock(scope: !436, file: !1, line: 814, column: 7)
!793 = !DILocation(line: 814, column: 17, scope: !792, inlinedAt: !431)
!794 = !DILocation(line: 814, column: 7, scope: !436, inlinedAt: !431)
!795 = !DILocation(line: 820, column: 7, scope: !796, inlinedAt: !431)
!796 = distinct !DILexicalBlock(scope: !797, file: !1, line: 818, column: 12)
!797 = distinct !DILexicalBlock(scope: !798, file: !1, line: 818, column: 9)
!798 = distinct !DILexicalBlock(scope: !792, file: !1, line: 816, column: 10)
!799 = !DILocation(line: 822, column: 7, scope: !796, inlinedAt: !431)
!800 = !DILocation(line: 828, column: 1, scope: !32, inlinedAt: !431)
!801 = !DILocation(line: 377, column: 19, scope: !433)
!802 = !DILocation(line: 378, column: 62, scope: !395)
!803 = !DILocation(line: 379, column: 19, scope: !395)
!804 = !DILocation(line: 381, column: 23, scope: !805)
!805 = distinct !DILexicalBlock(scope: !395, file: !1, line: 381, column: 23)
!806 = !DILocation(line: 381, column: 28, scope: !805)
!807 = !DILocation(line: 381, column: 25, scope: !805)
!808 = !DILocation(line: 381, column: 23, scope: !395)
!809 = !DILocation(line: 382, column: 25, scope: !810)
!810 = distinct !DILexicalBlock(scope: !805, file: !1, line: 381, column: 32)
!811 = !DILocation(line: 382, column: 23, scope: !810)
!812 = !DILocation(line: 383, column: 19, scope: !810)
!813 = !DILocation(line: 38, column: 10, scope: !91, inlinedAt: !814)
!814 = distinct !DILocation(line: 385, column: 21, scope: !815)
!815 = distinct !DILexicalBlock(scope: !816, file: !1, line: 384, column: 21)
!816 = distinct !DILexicalBlock(scope: !805, file: !1, line: 383, column: 26)
!817 = !DILocation(line: 389, column: 40, scope: !818)
!818 = distinct !DILexicalBlock(scope: !395, file: !1, line: 388, column: 19)
!819 = !DILocation(line: 390, column: 60, scope: !818)
!820 = !DILocation(line: 391, column: 44, scope: !818)
!821 = !DILocation(line: 391, column: 77, scope: !818)
!822 = !DILocation(line: 391, column: 30, scope: !818)
!823 = !DILocation(line: 391, column: 28, scope: !818)
!824 = !DILocation(line: 393, column: 17, scope: !395)
!825 = !DILocation(line: 393, column: 24, scope: !396)
!826 = !DILocation(line: 403, column: 24, scope: !376)
!827 = !DILocation(line: 404, column: 7, scope: !828)
!828 = distinct !DILexicalBlock(scope: !376, file: !1, line: 404, column: 7)
!829 = !DILocation(line: 404, column: 28, scope: !828)
!830 = !DILocation(line: 404, column: 7, scope: !376)
!831 = !DILocation(line: 406, column: 3, scope: !832)
!832 = distinct !DILexicalBlock(scope: !828, file: !1, line: 404, column: 34)
!833 = !DILocation(line: 407, column: 11, scope: !376)
!834 = !DILocation(line: 407, column: 3, scope: !376)
!835 = !DILocation(line: 409, column: 1, scope: !16)
!836 = !DILocation(line: 982, column: 29, scope: !44)
!837 = !DILocation(line: 982, column: 39, scope: !44)
!838 = !DILocation(line: 986, column: 7, scope: !453)
!839 = !DILocation(line: 986, column: 12, scope: !453)
!840 = !DILocation(line: 986, column: 9, scope: !453)
!841 = !DILocation(line: 986, column: 7, scope: !454)
!842 = !DILocation(line: 987, column: 9, scope: !463)
!843 = !DILocation(line: 987, column: 7, scope: !463)
!844 = !DILocation(line: 988, column: 3, scope: !463)
!845 = !DILocation(line: 38, column: 10, scope: !91, inlinedAt: !846)
!846 = distinct !DILocation(line: 990, column: 5, scope: !460)
!847 = !DILocation(line: 993, column: 3, scope: !454)
!848 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !17, file: !1, line: 410, type: !14)
!849 = !DILocation(line: 410, column: 27, scope: !17)
!850 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !17, file: !1, line: 410, type: !14)
!851 = !DILocation(line: 410, column: 46, scope: !17)
!852 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !17, file: !1, line: 411, type: !14)
!853 = !DILocation(line: 411, column: 7, scope: !17)
!854 = !DILocation(line: 411, column: 39, scope: !17)
!855 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !17, file: !1, line: 412, type: !14)
!856 = !DILocation(line: 412, column: 7, scope: !17)
!857 = !DILocation(line: 412, column: 50, scope: !17)
!858 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !17, file: !1, line: 413, type: !14)
!859 = !DILocation(line: 413, column: 7, scope: !17)
!860 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__TargetObject", scope: !17, file: !1, line: 414, type: !14)
!861 = !DILocation(line: 414, column: 7, scope: !17)
!862 = !DILocation(line: 414, column: 41, scope: !17)
!863 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__MaxTransferSize", scope: !17, file: !1, line: 415, type: !14)
!864 = !DILocation(line: 415, column: 7, scope: !17)
!865 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__DriveType", scope: !17, file: !1, line: 416, type: !14)
!866 = !DILocation(line: 416, column: 7, scope: !17)
!867 = !DILocation(line: 416, column: 38, scope: !17)
!868 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__PerpendicularMode", scope: !17, file: !1, line: 417, type: !14)
!869 = !DILocation(line: 417, column: 7, scope: !17)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__DeviceUnit", scope: !17, file: !1, line: 418, type: !14)
!871 = !DILocation(line: 418, column: 7, scope: !17)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__DriveOnValue", scope: !17, file: !1, line: 419, type: !14)
!873 = !DILocation(line: 419, column: 7, scope: !17)
!874 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__UnderlyingPDO", scope: !17, file: !1, line: 420, type: !14)
!875 = !DILocation(line: 420, column: 7, scope: !17)
!876 = !DILocation(line: 420, column: 42, scope: !17)
!877 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__InterfaceString", scope: !17, file: !1, line: 421, type: !14)
!878 = !DILocation(line: 421, column: 7, scope: !17)
!879 = !DILocation(line: 421, column: 44, scope: !17)
!880 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__IsStarted", scope: !17, file: !1, line: 422, type: !14)
!881 = !DILocation(line: 422, column: 7, scope: !17)
!882 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__HoldNewRequests", scope: !17, file: !1, line: 423, type: !14)
!883 = !DILocation(line: 423, column: 7, scope: !17)
!884 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ntStatus", scope: !17, file: !1, line: 424, type: !14)
!885 = !DILocation(line: 424, column: 7, scope: !17)
!886 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pnpStatus", scope: !17, file: !1, line: 425, type: !14)
!887 = !DILocation(line: 425, column: 7, scope: !17)
!888 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doneEvent", scope: !17, file: !1, line: 426, type: !14)
!889 = !DILocation(line: 426, column: 7, scope: !17)
!890 = !DILocation(line: 426, column: 19, scope: !17)
!891 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo", scope: !17, file: !1, line: 427, type: !14)
!892 = !DILocation(line: 427, column: 7, scope: !17)
!893 = !DILocation(line: 427, column: 17, scope: !17)
!894 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__BufferCount", scope: !17, file: !1, line: 428, type: !14)
!895 = !DILocation(line: 428, column: 7, scope: !17)
!896 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__BufferSize", scope: !17, file: !1, line: 429, type: !14)
!897 = !DILocation(line: 429, column: 7, scope: !17)
!898 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__MaxTransferSize", scope: !17, file: !1, line: 430, type: !14)
!899 = !DILocation(line: 430, column: 7, scope: !17)
!900 = !DILocation(line: 430, column: 34, scope: !17)
!901 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__AcpiBios", scope: !17, file: !1, line: 431, type: !14)
!902 = !DILocation(line: 431, column: 7, scope: !17)
!903 = !DILocation(line: 431, column: 27, scope: !17)
!904 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__AcpiFdiSupported", scope: !17, file: !1, line: 432, type: !14)
!905 = !DILocation(line: 432, column: 7, scope: !17)
!906 = !DILocation(line: 432, column: 35, scope: !17)
!907 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__PeripheralNumber", scope: !17, file: !1, line: 433, type: !14)
!908 = !DILocation(line: 433, column: 7, scope: !17)
!909 = !DILocation(line: 433, column: 35, scope: !17)
!910 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__BusType", scope: !17, file: !1, line: 434, type: !14)
!911 = !DILocation(line: 434, column: 7, scope: !17)
!912 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__ControllerNumber", scope: !17, file: !1, line: 435, type: !14)
!913 = !DILocation(line: 435, column: 7, scope: !17)
!914 = !DILocation(line: 435, column: 35, scope: !17)
!915 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__UnitNumber", scope: !17, file: !1, line: 436, type: !14)
!916 = !DILocation(line: 436, column: 7, scope: !17)
!917 = !DILocation(line: 436, column: 29, scope: !17)
!918 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__BusNumber", scope: !17, file: !1, line: 437, type: !14)
!919 = !DILocation(line: 437, column: 7, scope: !17)
!920 = !DILocation(line: 437, column: 28, scope: !17)
!921 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Dc", scope: !17, file: !1, line: 438, type: !14)
!922 = !DILocation(line: 438, column: 7, scope: !17)
!923 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Fp", scope: !17, file: !1, line: 439, type: !14)
!924 = !DILocation(line: 439, column: 7, scope: !17)
!925 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension", scope: !17, file: !1, line: 440, type: !14)
!926 = !DILocation(line: 440, column: 7, scope: !17)
!927 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp", scope: !17, file: !1, line: 441, type: !14)
!928 = !DILocation(line: 441, column: 7, scope: !17)
!929 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___0", scope: !17, file: !1, line: 442, type: !14)
!930 = !DILocation(line: 442, column: 7, scope: !17)
!931 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp", scope: !17, file: !1, line: 443, type: !14)
!932 = !DILocation(line: 443, column: 7, scope: !17)
!933 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp__Control", scope: !17, file: !1, line: 444, type: !14)
!934 = !DILocation(line: 444, column: 7, scope: !17)
!935 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___1", scope: !17, file: !1, line: 445, type: !14)
!936 = !DILocation(line: 445, column: 7, scope: !17)
!937 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Control", scope: !17, file: !1, line: 446, type: !14)
!938 = !DILocation(line: 446, column: 7, scope: !17)
!939 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Context", scope: !17, file: !1, line: 447, type: !14)
!940 = !DILocation(line: 447, column: 7, scope: !17)
!941 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "InterfaceType", scope: !17, file: !1, line: 448, type: !14)
!942 = !DILocation(line: 448, column: 7, scope: !17)
!943 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86", scope: !17, file: !1, line: 449, type: !14)
!944 = !DILocation(line: 449, column: 7, scope: !17)
!945 = !DILocation(line: 449, column: 61, scope: !17)
!946 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp42", scope: !17, file: !1, line: 450, type: !4)
!947 = !DILocation(line: 450, column: 8, scope: !17)
!948 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp43", scope: !17, file: !1, line: 451, type: !14)
!949 = !DILocation(line: 451, column: 7, scope: !17)
!950 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp44", scope: !17, file: !1, line: 452, type: !14)
!951 = !DILocation(line: 452, column: 7, scope: !17)
!952 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp45", scope: !17, file: !1, line: 453, type: !14)
!953 = !DILocation(line: 453, column: 7, scope: !17)
!954 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp46", scope: !17, file: !1, line: 454, type: !14)
!955 = !DILocation(line: 454, column: 7, scope: !17)
!956 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp47", scope: !17, file: !1, line: 455, type: !14)
!957 = !DILocation(line: 455, column: 7, scope: !17)
!958 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp48", scope: !17, file: !1, line: 456, type: !14)
!959 = !DILocation(line: 456, column: 7, scope: !17)
!960 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp49", scope: !17, file: !1, line: 457, type: !14)
!961 = !DILocation(line: 457, column: 7, scope: !17)
!962 = !DILocation(line: 460, column: 8, scope: !963)
!963 = distinct !DILexicalBlock(scope: !17, file: !1, line: 459, column: 3)
!964 = !DILocation(line: 460, column: 6, scope: !963)
!965 = !DILocation(line: 461, column: 8, scope: !963)
!966 = !DILocation(line: 461, column: 6, scope: !963)
!967 = !DILocation(line: 462, column: 23, scope: !963)
!968 = !DILocation(line: 462, column: 21, scope: !963)
!969 = !DILocation(line: 463, column: 11, scope: !963)
!970 = !DILocation(line: 463, column: 9, scope: !963)
!971 = !DILocation(line: 464, column: 15, scope: !963)
!972 = !DILocation(line: 464, column: 13, scope: !963)
!973 = !DILocation(line: 465, column: 15, scope: !963)
!974 = !DILocation(line: 465, column: 56, scope: !963)
!975 = !DILocation(line: 465, column: 13, scope: !963)
!976 = !DILocation(line: 466, column: 22, scope: !963)
!977 = !DILocation(line: 467, column: 7, scope: !978)
!978 = distinct !DILexicalBlock(scope: !963, file: !1, line: 467, column: 7)
!979 = !DILocation(line: 467, column: 12, scope: !978)
!980 = !DILocation(line: 467, column: 9, scope: !978)
!981 = !DILocation(line: 66, column: 31, scope: !11, inlinedAt: !982)
!982 = distinct !DILocation(line: 509, column: 20, scope: !983)
!983 = distinct !DILexicalBlock(scope: !984, file: !1, line: 508, column: 9)
!984 = distinct !DILexicalBlock(scope: !985, file: !1, line: 507, column: 38)
!985 = distinct !DILexicalBlock(scope: !986, file: !1, line: 507, column: 11)
!986 = distinct !DILexicalBlock(scope: !987, file: !1, line: 506, column: 28)
!987 = distinct !DILexicalBlock(scope: !988, file: !1, line: 506, column: 9)
!988 = distinct !DILexicalBlock(scope: !989, file: !1, line: 504, column: 22)
!989 = distinct !DILexicalBlock(scope: !963, file: !1, line: 504, column: 7)
!990 = !DILocation(line: 66, column: 55, scope: !11, inlinedAt: !982)
!991 = !DILocation(line: 982, column: 29, scope: !44, inlinedAt: !992)
!992 = distinct !DILocation(line: 573, column: 3, scope: !993)
!993 = distinct !DILexicalBlock(scope: !963, file: !1, line: 570, column: 3)
!994 = !DILocation(line: 982, column: 39, scope: !44, inlinedAt: !992)
!995 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "BusType", arg: 1, scope: !35, file: !1, line: 829, type: !14)
!996 = !DILocation(line: 829, column: 34, scope: !35, inlinedAt: !997)
!997 = distinct !DILocation(line: 534, column: 20, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !1, line: 532, column: 9)
!999 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 526, column: 17)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 525, column: 7)
!1001 = distinct !DILexicalBlock(scope: !987, file: !1, line: 518, column: 12)
!1002 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "BusNumber", arg: 2, scope: !35, file: !1, line: 829, type: !14)
!1003 = !DILocation(line: 829, column: 48, scope: !35, inlinedAt: !997)
!1004 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ControllerType", arg: 3, scope: !35, file: !1, line: 829, type: !14)
!1005 = !DILocation(line: 829, column: 64, scope: !35, inlinedAt: !997)
!1006 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ControllerNumber", arg: 4, scope: !35, file: !1, line: 829, type: !14)
!1007 = !DILocation(line: 829, column: 85, scope: !35, inlinedAt: !997)
!1008 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PeripheralType", arg: 5, scope: !35, file: !1, line: 830, type: !14)
!1009 = !DILocation(line: 830, column: 34, scope: !35, inlinedAt: !997)
!1010 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PeripheralNumber", arg: 6, scope: !35, file: !1, line: 830, type: !14)
!1011 = !DILocation(line: 830, column: 55, scope: !35, inlinedAt: !997)
!1012 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "CalloutRoutine", arg: 7, scope: !35, file: !1, line: 830, type: !14)
!1013 = !DILocation(line: 830, column: 78, scope: !35, inlinedAt: !997)
!1014 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 8, scope: !35, file: !1, line: 831, type: !14)
!1015 = !DILocation(line: 831, column: 34, scope: !35, inlinedAt: !997)
!1016 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_4", scope: !1017, file: !1, line: 835, type: !14)
!1017 = distinct !DILexicalBlock(scope: !35, file: !1, line: 834, column: 3)
!1018 = !DILocation(line: 835, column: 7, scope: !1017, inlinedAt: !997)
!1019 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PhysicalDeviceObject", arg: 1, scope: !38, file: !1, line: 852, type: !14)
!1020 = !DILocation(line: 852, column: 35, scope: !38, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 557, column: 19, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 556, column: 7)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 547, column: 24)
!1024 = distinct !DILexicalBlock(scope: !988, file: !1, line: 547, column: 9)
!1025 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InterfaceClassGuid", arg: 2, scope: !38, file: !1, line: 852, type: !14)
!1026 = !DILocation(line: 852, column: 62, scope: !38, inlinedAt: !1021)
!1027 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ReferenceString", arg: 3, scope: !38, file: !1, line: 853, type: !14)
!1028 = !DILocation(line: 853, column: 35, scope: !38, inlinedAt: !1021)
!1029 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SymbolicLinkName", arg: 4, scope: !38, file: !1, line: 853, type: !14)
!1030 = !DILocation(line: 853, column: 57, scope: !38, inlinedAt: !1021)
!1031 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_5", scope: !1032, file: !1, line: 857, type: !14)
!1032 = distinct !DILexicalBlock(scope: !38, file: !1, line: 856, column: 3)
!1033 = !DILocation(line: 857, column: 7, scope: !1032, inlinedAt: !1021)
!1034 = !DILocation(line: 874, column: 35, scope: !41, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 562, column: 21, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !1, line: 561, column: 9)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 560, column: 27)
!1038 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 560, column: 11)
!1039 = !DILocation(line: 874, column: 58, scope: !41, inlinedAt: !1035)
!1040 = !DILocation(line: 878, column: 7, scope: !427, inlinedAt: !1035)
!1041 = !DILocation(line: 467, column: 7, scope: !963)
!1042 = !DILocation(line: 38, column: 10, scope: !91, inlinedAt: !1043)
!1043 = distinct !DILocation(line: 469, column: 5, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 468, column: 5)
!1045 = distinct !DILexicalBlock(scope: !978, file: !1, line: 467, column: 16)
!1046 = !DILocation(line: 471, column: 3, scope: !1045)
!1047 = !DILocation(line: 472, column: 9, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 472, column: 9)
!1049 = distinct !DILexicalBlock(scope: !978, file: !1, line: 471, column: 10)
!1050 = !DILocation(line: 472, column: 24, scope: !1048)
!1051 = !DILocation(line: 472, column: 9, scope: !1049)
!1052 = !DILocation(line: 38, column: 10, scope: !91, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 474, column: 7, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 473, column: 7)
!1055 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 472, column: 30)
!1056 = !DILocation(line: 476, column: 5, scope: !1055)
!1057 = !DILocation(line: 477, column: 22, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 476, column: 12)
!1059 = !DILocation(line: 481, column: 15, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !963, file: !1, line: 480, column: 3)
!1061 = !DILocation(line: 481, column: 56, scope: !1060)
!1062 = !DILocation(line: 481, column: 13, scope: !1060)
!1063 = !DILocation(line: 482, column: 20, scope: !1060)
!1064 = !DILocation(line: 482, column: 18, scope: !1060)
!1065 = !DILocation(line: 483, column: 18, scope: !1060)
!1066 = !DILocation(line: 484, column: 28, scope: !1060)
!1067 = !DILocation(line: 484, column: 61, scope: !1060)
!1068 = !DILocation(line: 484, column: 14, scope: !1060)
!1069 = !DILocation(line: 484, column: 12, scope: !1060)
!1070 = !DILocation(line: 487, column: 24, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !963, file: !1, line: 486, column: 3)
!1072 = !DILocation(line: 487, column: 17, scope: !1071)
!1073 = !DILocation(line: 487, column: 15, scope: !1071)
!1074 = !DILocation(line: 488, column: 7, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1071, file: !1, line: 488, column: 7)
!1076 = !DILocation(line: 488, column: 19, scope: !1075)
!1077 = !DILocation(line: 488, column: 7, scope: !1071)
!1078 = !DILocation(line: 490, column: 38, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !1, line: 489, column: 5)
!1080 = distinct !DILexicalBlock(scope: !1075, file: !1, line: 488, column: 28)
!1081 = !DILocation(line: 490, column: 49, scope: !1079)
!1082 = !DILocation(line: 490, column: 60, scope: !1079)
!1083 = !DILocation(line: 490, column: 16, scope: !1079)
!1084 = !DILocation(line: 490, column: 14, scope: !1079)
!1085 = !DILocation(line: 491, column: 16, scope: !1079)
!1086 = !DILocation(line: 491, column: 14, scope: !1079)
!1087 = !DILocation(line: 493, column: 3, scope: !1080)
!1088 = !DILocation(line: 496, column: 24, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !963, file: !1, line: 495, column: 3)
!1090 = !DILocation(line: 497, column: 23, scope: !1089)
!1091 = !DILocation(line: 498, column: 15, scope: !1089)
!1092 = !DILocation(line: 499, column: 15, scope: !1089)
!1093 = !DILocation(line: 500, column: 15, scope: !1089)
!1094 = !DILocation(line: 501, column: 15, scope: !1089)
!1095 = !DILocation(line: 502, column: 28, scope: !1089)
!1096 = !DILocation(line: 502, column: 61, scope: !1089)
!1097 = !DILocation(line: 502, column: 74, scope: !1089)
!1098 = !DILocation(line: 502, column: 14, scope: !1089)
!1099 = !DILocation(line: 502, column: 12, scope: !1089)
!1100 = !DILocation(line: 504, column: 7, scope: !989)
!1101 = !DILocation(line: 504, column: 16, scope: !989)
!1102 = !DILocation(line: 504, column: 7, scope: !963)
!1103 = !DILocation(line: 505, column: 42, scope: !988)
!1104 = !DILocation(line: 505, column: 40, scope: !988)
!1105 = !DILocation(line: 506, column: 9, scope: !987)
!1106 = !DILocation(line: 506, column: 9, scope: !988)
!1107 = !DILocation(line: 507, column: 11, scope: !985)
!1108 = !DILocation(line: 507, column: 11, scope: !986)
!1109 = !DILocation(line: 509, column: 42, scope: !983)
!1110 = !DILocation(line: 509, column: 61, scope: !983)
!1111 = !DILocation(line: 509, column: 20, scope: !983)
!1112 = !DILocation(line: 70, column: 3, scope: !116, inlinedAt: !982)
!1113 = !DILocation(line: 509, column: 18, scope: !983)
!1114 = !DILocation(line: 511, column: 13, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !984, file: !1, line: 511, column: 13)
!1116 = !DILocation(line: 511, column: 42, scope: !1115)
!1117 = !DILocation(line: 511, column: 13, scope: !984)
!1118 = !DILocation(line: 514, column: 9, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1115, file: !1, line: 511, column: 48)
!1120 = !DILocation(line: 515, column: 7, scope: !984)
!1121 = !DILocation(line: 516, column: 9, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !985, file: !1, line: 515, column: 14)
!1123 = !DILocation(line: 518, column: 5, scope: !986)
!1124 = !DILocation(line: 518, column: 12, scope: !987)
!1125 = !DILocation(line: 520, column: 11, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 520, column: 11)
!1127 = !DILocation(line: 520, column: 40, scope: !1126)
!1128 = !DILocation(line: 520, column: 11, scope: !1001)
!1129 = !DILocation(line: 523, column: 7, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1126, file: !1, line: 520, column: 46)
!1131 = !DILocation(line: 524, column: 21, scope: !1001)
!1132 = !DILocation(line: 526, column: 7, scope: !1000)
!1133 = !DILocation(line: 526, column: 17, scope: !1000)
!1134 = !DILocation(line: 529, column: 13, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !999, file: !1, line: 529, column: 13)
!1136 = !DILocation(line: 529, column: 30, scope: !1135)
!1137 = !DILocation(line: 529, column: 27, scope: !1135)
!1138 = !DILocation(line: 529, column: 13, scope: !999)
!1139 = !DILocation(line: 530, column: 11, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1135, file: !1, line: 529, column: 52)
!1141 = !DILocation(line: 533, column: 28, scope: !998)
!1142 = !DILocation(line: 533, column: 26, scope: !998)
!1143 = !DILocation(line: 534, column: 45, scope: !998)
!1144 = !DILocation(line: 534, column: 63, scope: !998)
!1145 = !DILocation(line: 535, column: 45, scope: !998)
!1146 = !DILocation(line: 535, column: 49, scope: !998)
!1147 = !DILocation(line: 535, column: 76, scope: !998)
!1148 = !DILocation(line: 535, column: 80, scope: !998)
!1149 = !DILocation(line: 536, column: 45, scope: !998)
!1150 = !DILocation(line: 536, column: 63, scope: !998)
!1151 = !DILocation(line: 534, column: 20, scope: !998)
!1152 = !DILocation(line: 836, column: 15, scope: !1017, inlinedAt: !997)
!1153 = !DILocation(line: 836, column: 13, scope: !1017, inlinedAt: !997)
!1154 = !DILocation(line: 837, column: 7, scope: !1155, inlinedAt: !997)
!1155 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 837, column: 7)
!1156 = !DILocation(line: 837, column: 17, scope: !1155, inlinedAt: !997)
!1157 = !DILocation(line: 837, column: 7, scope: !1017, inlinedAt: !997)
!1158 = !DILocation(line: 843, column: 7, scope: !1159, inlinedAt: !997)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !1, line: 841, column: 12)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 841, column: 9)
!1161 = distinct !DILexicalBlock(scope: !1155, file: !1, line: 839, column: 10)
!1162 = !DILocation(line: 845, column: 7, scope: !1159, inlinedAt: !997)
!1163 = !DILocation(line: 851, column: 1, scope: !35, inlinedAt: !997)
!1164 = !DILocation(line: 534, column: 18, scope: !998)
!1165 = !DILocation(line: 538, column: 13, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !999, file: !1, line: 538, column: 13)
!1167 = !DILocation(line: 538, column: 22, scope: !1166)
!1168 = !DILocation(line: 538, column: 13, scope: !999)
!1169 = !DILocation(line: 539, column: 11, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1166, file: !1, line: 538, column: 28)
!1171 = !DILocation(line: 541, column: 23, scope: !999)
!1172 = !DILocation(line: 544, column: 7, scope: !1000)
!1173 = !DILocation(line: 547, column: 9, scope: !1024)
!1174 = !DILocation(line: 547, column: 18, scope: !1024)
!1175 = !DILocation(line: 547, column: 9, scope: !988)
!1176 = !DILocation(line: 548, column: 11, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 548, column: 11)
!1178 = !DILocation(line: 548, column: 63, scope: !1177)
!1179 = !DILocation(line: 548, column: 11, scope: !1023)
!1180 = !DILocation(line: 549, column: 41, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1177, file: !1, line: 548, column: 69)
!1182 = !DILocation(line: 549, column: 39, scope: !1181)
!1183 = !DILocation(line: 551, column: 7, scope: !1181)
!1184 = !DILocation(line: 552, column: 41, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1177, file: !1, line: 551, column: 14)
!1186 = !DILocation(line: 552, column: 39, scope: !1185)
!1187 = !DILocation(line: 557, column: 45, scope: !1022)
!1188 = !DILocation(line: 557, column: 79, scope: !1022)
!1189 = !DILocation(line: 558, column: 48, scope: !1022)
!1190 = !DILocation(line: 557, column: 19, scope: !1022)
!1191 = !DILocation(line: 858, column: 15, scope: !1032, inlinedAt: !1021)
!1192 = !DILocation(line: 858, column: 13, scope: !1032, inlinedAt: !1021)
!1193 = !DILocation(line: 859, column: 7, scope: !1194, inlinedAt: !1021)
!1194 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 859, column: 7)
!1195 = !DILocation(line: 859, column: 17, scope: !1194, inlinedAt: !1021)
!1196 = !DILocation(line: 859, column: 7, scope: !1032, inlinedAt: !1021)
!1197 = !DILocation(line: 865, column: 7, scope: !1198, inlinedAt: !1021)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !1, line: 863, column: 12)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !1, line: 863, column: 9)
!1200 = distinct !DILexicalBlock(scope: !1194, file: !1, line: 861, column: 10)
!1201 = !DILocation(line: 867, column: 7, scope: !1198, inlinedAt: !1021)
!1202 = !DILocation(line: 873, column: 1, scope: !38, inlinedAt: !1021)
!1203 = !DILocation(line: 557, column: 17, scope: !1022)
!1204 = !DILocation(line: 560, column: 11, scope: !1038)
!1205 = !DILocation(line: 560, column: 21, scope: !1038)
!1206 = !DILocation(line: 560, column: 11, scope: !1023)
!1207 = !DILocation(line: 562, column: 47, scope: !1036)
!1208 = !DILocation(line: 562, column: 21, scope: !1036)
!1209 = !DILocation(line: 879, column: 15, scope: !427, inlinedAt: !1035)
!1210 = !DILocation(line: 879, column: 13, scope: !427, inlinedAt: !1035)
!1211 = !DILocation(line: 880, column: 7, scope: !774, inlinedAt: !1035)
!1212 = !DILocation(line: 880, column: 17, scope: !774, inlinedAt: !1035)
!1213 = !DILocation(line: 880, column: 7, scope: !427, inlinedAt: !1035)
!1214 = !DILocation(line: 886, column: 7, scope: !778, inlinedAt: !1035)
!1215 = !DILocation(line: 888, column: 7, scope: !778, inlinedAt: !1035)
!1216 = !DILocation(line: 894, column: 1, scope: !41, inlinedAt: !1035)
!1217 = !DILocation(line: 562, column: 19, scope: !1036)
!1218 = !DILocation(line: 565, column: 7, scope: !1037)
!1219 = !DILocation(line: 566, column: 36, scope: !1023)
!1220 = !DILocation(line: 567, column: 42, scope: !1023)
!1221 = !DILocation(line: 568, column: 5, scope: !1023)
!1222 = !DILocation(line: 569, column: 3, scope: !988)
!1223 = !DILocation(line: 571, column: 27, scope: !993)
!1224 = !DILocation(line: 571, column: 25, scope: !993)
!1225 = !DILocation(line: 572, column: 14, scope: !993)
!1226 = !DILocation(line: 572, column: 12, scope: !993)
!1227 = !DILocation(line: 573, column: 22, scope: !993)
!1228 = !DILocation(line: 573, column: 3, scope: !993)
!1229 = !DILocation(line: 986, column: 7, scope: !453, inlinedAt: !992)
!1230 = !DILocation(line: 986, column: 12, scope: !453, inlinedAt: !992)
!1231 = !DILocation(line: 986, column: 9, scope: !453, inlinedAt: !992)
!1232 = !DILocation(line: 986, column: 7, scope: !454, inlinedAt: !992)
!1233 = !DILocation(line: 38, column: 10, scope: !91, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 990, column: 5, scope: !460, inlinedAt: !992)
!1235 = !DILocation(line: 987, column: 9, scope: !463, inlinedAt: !992)
!1236 = !DILocation(line: 987, column: 7, scope: !463, inlinedAt: !992)
!1237 = !DILocation(line: 993, column: 3, scope: !454, inlinedAt: !992)
!1238 = !DILocation(line: 575, column: 11, scope: !963)
!1239 = !DILocation(line: 575, column: 3, scope: !963)
!1240 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !18, file: !1, line: 578, type: !14)
!1241 = !DILocation(line: 578, column: 27, scope: !18)
!1242 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !18, file: !1, line: 578, type: !14)
!1243 = !DILocation(line: 578, column: 46, scope: !18)
!1244 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 3, scope: !18, file: !1, line: 578, type: !14)
!1245 = !DILocation(line: 578, column: 56, scope: !18)
!1246 = !DILocation(line: 583, column: 14, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !1, line: 582, column: 3)
!1248 = distinct !DILexicalBlock(scope: !18, file: !1, line: 581, column: 3)
!1249 = !DILocation(line: 583, column: 3, scope: !1247)
!1250 = !DILocation(line: 997, column: 11, scope: !47, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 583, column: 3, scope: !1247)
!1252 = !DILocation(line: 997, column: 7, scope: !47, inlinedAt: !1251)
!1253 = !DILocation(line: 1000, column: 18, scope: !1254, inlinedAt: !1251)
!1254 = distinct !DILexicalBlock(scope: !47, file: !1, line: 999, column: 3)
!1255 = !DILocation(line: 1001, column: 11, scope: !1254, inlinedAt: !1251)
!1256 = !DILocation(line: 1001, column: 3, scope: !1254, inlinedAt: !1251)
!1257 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 1, scope: !47, file: !1, line: 996, type: !14)
!1258 = !DILocation(line: 996, column: 20, scope: !47, inlinedAt: !1251)
!1259 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Increment", arg: 2, scope: !47, file: !1, line: 996, type: !14)
!1260 = !DILocation(line: 996, column: 32, scope: !47, inlinedAt: !1251)
!1261 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Wait", arg: 3, scope: !47, file: !1, line: 996, type: !14)
!1262 = !DILocation(line: 996, column: 48, scope: !47, inlinedAt: !1251)
!1263 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !47, file: !1, line: 997, type: !14)
!1264 = !DILocation(line: 585, column: 3, scope: !1248)
!1265 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !21, file: !1, line: 588, type: !14)
!1266 = !DILocation(line: 588, column: 23, scope: !21)
!1267 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Ioctl", arg: 2, scope: !21, file: !1, line: 588, type: !14)
!1268 = !DILocation(line: 588, column: 42, scope: !21)
!1269 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Data", arg: 3, scope: !21, file: !1, line: 588, type: !14)
!1270 = !DILocation(line: 588, column: 54, scope: !21)
!1271 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ntStatus", scope: !21, file: !1, line: 589, type: !14)
!1272 = !DILocation(line: 589, column: 7, scope: !21)
!1273 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp", scope: !21, file: !1, line: 590, type: !14)
!1274 = !DILocation(line: 590, column: 7, scope: !21)
!1275 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack", scope: !21, file: !1, line: 591, type: !14)
!1276 = !DILocation(line: 591, column: 7, scope: !21)
!1277 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doneEvent", scope: !21, file: !1, line: 592, type: !14)
!1278 = !DILocation(line: 592, column: 7, scope: !21)
!1279 = !DILocation(line: 592, column: 19, scope: !21)
!1280 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ioStatus", scope: !21, file: !1, line: 593, type: !14)
!1281 = !DILocation(line: 593, column: 7, scope: !21)
!1282 = !DILocation(line: 593, column: 18, scope: !21)
!1283 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp__Tail__Overlay__CurrentStackLocation", scope: !21, file: !1, line: 594, type: !14)
!1284 = !DILocation(line: 594, column: 7, scope: !21)
!1285 = !DILocation(line: 594, column: 50, scope: !21)
!1286 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack__Parameters__DeviceIoControl__Type3InputBuffer", scope: !21, file: !1, line: 595, type: !14)
!1287 = !DILocation(line: 595, column: 7, scope: !21)
!1288 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp11", scope: !21, file: !1, line: 596, type: !4)
!1289 = !DILocation(line: 596, column: 8, scope: !21)
!1290 = !DILocation(line: 600, column: 39, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !1, line: 599, column: 3)
!1292 = distinct !DILexicalBlock(scope: !21, file: !1, line: 598, column: 3)
!1293 = !DILocation(line: 600, column: 46, scope: !1291)
!1294 = !DILocation(line: 600, column: 75, scope: !1291)
!1295 = !DILocation(line: 601, column: 39, scope: !1291)
!1296 = !DILocation(line: 600, column: 9, scope: !1291)
!1297 = !DILocation(line: 787, column: 16, scope: !29, inlinedAt: !1298)
!1298 = distinct !DILocation(line: 600, column: 9, scope: !1291)
!1299 = !DILocation(line: 787, column: 7, scope: !29, inlinedAt: !1298)
!1300 = !DILocation(line: 790, column: 13, scope: !1301, inlinedAt: !1298)
!1301 = distinct !DILexicalBlock(scope: !29, file: !1, line: 789, column: 3)
!1302 = !DILocation(line: 792, column: 15, scope: !1301, inlinedAt: !1298)
!1303 = !DILocation(line: 792, column: 13, scope: !1301, inlinedAt: !1298)
!1304 = !DILocation(line: 793, column: 7, scope: !1305, inlinedAt: !1298)
!1305 = distinct !DILexicalBlock(scope: !1301, file: !1, line: 793, column: 7)
!1306 = !DILocation(line: 793, column: 17, scope: !1305, inlinedAt: !1298)
!1307 = !DILocation(line: 793, column: 7, scope: !1301, inlinedAt: !1298)
!1308 = !DILocation(line: 799, column: 15, scope: !1309, inlinedAt: !1298)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 797, column: 12)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !1, line: 797, column: 9)
!1311 = distinct !DILexicalBlock(scope: !1305, file: !1, line: 795, column: 10)
!1312 = !DILocation(line: 799, column: 7, scope: !1309, inlinedAt: !1298)
!1313 = !DILocation(line: 801, column: 7, scope: !1309, inlinedAt: !1298)
!1314 = !DILocation(line: 807, column: 1, scope: !29, inlinedAt: !1298)
!1315 = !DILocation(line: 600, column: 7, scope: !1291)
!1316 = !DILocation(line: 603, column: 7, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1292, file: !1, line: 603, column: 7)
!1318 = !DILocation(line: 603, column: 11, scope: !1317)
!1319 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "IoControlCode", arg: 1, scope: !29, file: !1, line: 783, type: !14)
!1320 = !DILocation(line: 783, column: 39, scope: !29, inlinedAt: !1298)
!1321 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 2, scope: !29, file: !1, line: 783, type: !14)
!1322 = !DILocation(line: 783, column: 59, scope: !29, inlinedAt: !1298)
!1323 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InputBuffer", arg: 3, scope: !29, file: !1, line: 783, type: !14)
!1324 = !DILocation(line: 783, column: 78, scope: !29, inlinedAt: !1298)
!1325 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InputBufferLength", arg: 4, scope: !29, file: !1, line: 784, type: !14)
!1326 = !DILocation(line: 784, column: 39, scope: !29, inlinedAt: !1298)
!1327 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "OutputBuffer", arg: 5, scope: !29, file: !1, line: 784, type: !14)
!1328 = !DILocation(line: 784, column: 63, scope: !29, inlinedAt: !1298)
!1329 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "OutputBufferLength", arg: 6, scope: !29, file: !1, line: 784, type: !14)
!1330 = !DILocation(line: 784, column: 82, scope: !29, inlinedAt: !1298)
!1331 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InternalDeviceIoControl", arg: 7, scope: !29, file: !1, line: 785, type: !14)
!1332 = !DILocation(line: 785, column: 39, scope: !29, inlinedAt: !1298)
!1333 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 8, scope: !29, file: !1, line: 785, type: !14)
!1334 = !DILocation(line: 785, column: 69, scope: !29, inlinedAt: !1298)
!1335 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "IoStatusBlock", arg: 9, scope: !29, file: !1, line: 785, type: !14)
!1336 = !DILocation(line: 785, column: 81, scope: !29, inlinedAt: !1298)
!1337 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "malloc", scope: !29, file: !1, line: 787, type: !14)
!1338 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_2", scope: !1301, file: !1, line: 791, type: !14)
!1339 = !DILocation(line: 791, column: 7, scope: !1301, inlinedAt: !1298)
!1340 = !DILocation(line: 603, column: 7, scope: !1292)
!1341 = !DILocation(line: 604, column: 5, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1317, file: !1, line: 603, column: 17)
!1343 = !DILocation(line: 607, column: 14, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1292, file: !1, line: 606, column: 3)
!1345 = !DILocation(line: 607, column: 55, scope: !1344)
!1346 = !DILocation(line: 607, column: 12, scope: !1344)
!1347 = !DILocation(line: 608, column: 61, scope: !1344)
!1348 = !DILocation(line: 608, column: 59, scope: !1344)
!1349 = !DILocation(line: 609, column: 28, scope: !1344)
!1350 = !DILocation(line: 609, column: 42, scope: !1344)
!1351 = !DILocation(line: 609, column: 14, scope: !1344)
!1352 = !DILocation(line: 609, column: 12, scope: !1344)
!1353 = !DILocation(line: 612, column: 24, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1292, file: !1, line: 611, column: 3)
!1355 = !DILocation(line: 612, column: 17, scope: !1354)
!1356 = !DILocation(line: 612, column: 15, scope: !1354)
!1357 = !DILocation(line: 613, column: 7, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1354, file: !1, line: 613, column: 7)
!1359 = !DILocation(line: 613, column: 19, scope: !1358)
!1360 = !DILocation(line: 613, column: 7, scope: !1354)
!1361 = !DILocation(line: 615, column: 27, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !1, line: 614, column: 5)
!1363 = distinct !DILexicalBlock(scope: !1358, file: !1, line: 613, column: 28)
!1364 = !DILocation(line: 615, column: 38, scope: !1362)
!1365 = !DILocation(line: 615, column: 49, scope: !1362)
!1366 = !DILocation(line: 615, column: 5, scope: !1362)
!1367 = !DILocation(line: 616, column: 16, scope: !1362)
!1368 = !DILocation(line: 616, column: 14, scope: !1362)
!1369 = !DILocation(line: 618, column: 3, scope: !1363)
!1370 = !DILocation(line: 620, column: 11, scope: !1292)
!1371 = !DILocation(line: 620, column: 3, scope: !1292)
!1372 = !DILocation(line: 622, column: 1, scope: !21)
!1373 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DisketteExtension", arg: 1, scope: !22, file: !1, line: 623, type: !14)
!1374 = !DILocation(line: 623, column: 38, scope: !22)
!1375 = !DILocation(line: 627, column: 3, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !22, file: !1, line: 626, column: 3)
!1377 = !DILocation(line: 634, column: 7, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !25, file: !1, line: 633, column: 3)
!1379 = !DILocation(line: 634, column: 5, scope: !1378)
!1380 = !DILocation(line: 635, column: 10, scope: !1378)
!1381 = !DILocation(line: 636, column: 18, scope: !1378)
!1382 = !DILocation(line: 637, column: 21, scope: !1378)
!1383 = !DILocation(line: 638, column: 18, scope: !1378)
!1384 = !DILocation(line: 639, column: 13, scope: !1378)
!1385 = !DILocation(line: 640, column: 3, scope: !1378)
!1386 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !26, file: !1, line: 644, type: !14)
!1387 = !DILocation(line: 644, column: 7, scope: !26)
!1388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp", scope: !26, file: !1, line: 645, type: !14)
!1389 = !DILocation(line: 645, column: 7, scope: !26)
!1390 = !DILocation(line: 645, column: 13, scope: !26)
!1391 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pirp", scope: !26, file: !1, line: 646, type: !14)
!1392 = !DILocation(line: 646, column: 7, scope: !26)
!1393 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pirp__IoStatus__Status", scope: !26, file: !1, line: 647, type: !14)
!1394 = !DILocation(line: 647, column: 7, scope: !26)
!1395 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp_choice", scope: !26, file: !1, line: 648, type: !14)
!1396 = !DILocation(line: 648, column: 7, scope: !26)
!1397 = !DILocation(line: 648, column: 20, scope: !26)
!1398 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devobj", scope: !26, file: !1, line: 649, type: !14)
!1399 = !DILocation(line: 649, column: 7, scope: !26)
!1400 = !DILocation(line: 649, column: 16, scope: !26)
!1401 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp8", scope: !26, file: !1, line: 650, type: !14)
!1402 = !DILocation(line: 650, column: 7, scope: !26)
!1403 = !DILocation(line: 652, column: 16, scope: !26)
!1404 = !DILocation(line: 653, column: 14, scope: !26)
!1405 = !DILocation(line: 654, column: 13, scope: !26)
!1406 = !DILocation(line: 655, column: 13, scope: !26)
!1407 = !DILocation(line: 656, column: 18, scope: !26)
!1408 = !DILocation(line: 657, column: 24, scope: !26)
!1409 = !DILocation(line: 658, column: 20, scope: !26)
!1410 = !DILocation(line: 659, column: 24, scope: !26)
!1411 = !DILocation(line: 660, column: 32, scope: !26)
!1412 = !DILocation(line: 661, column: 12, scope: !26)
!1413 = !DILocation(line: 662, column: 5, scope: !26)
!1414 = !DILocation(line: 663, column: 12, scope: !26)
!1415 = !DILocation(line: 664, column: 6, scope: !26)
!1416 = !DILocation(line: 665, column: 6, scope: !26)
!1417 = !DILocation(line: 666, column: 9, scope: !26)
!1418 = !DILocation(line: 667, column: 9, scope: !26)
!1419 = !DILocation(line: 668, column: 8, scope: !26)
!1420 = !DILocation(line: 669, column: 8, scope: !26)
!1421 = !DILocation(line: 670, column: 7, scope: !26)
!1422 = !DILocation(line: 671, column: 10, scope: !26)
!1423 = !DILocation(line: 672, column: 18, scope: !26)
!1424 = !DILocation(line: 673, column: 21, scope: !26)
!1425 = !DILocation(line: 674, column: 18, scope: !26)
!1426 = !DILocation(line: 675, column: 13, scope: !26)
!1427 = !DILocation(line: 679, column: 10, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !1, line: 678, column: 3)
!1429 = distinct !DILexicalBlock(scope: !26, file: !1, line: 677, column: 3)
!1430 = !DILocation(line: 680, column: 10, scope: !1428)
!1431 = !DILocation(line: 680, column: 8, scope: !1428)
!1432 = !DILocation(line: 47, column: 12, scope: !94, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 681, column: 3, scope: !1428)
!1434 = !DILocation(line: 48, column: 6, scope: !94, inlinedAt: !1433)
!1435 = !DILocation(line: 49, column: 6, scope: !94, inlinedAt: !1433)
!1436 = !DILocation(line: 50, column: 9, scope: !94, inlinedAt: !1433)
!1437 = !DILocation(line: 51, column: 9, scope: !94, inlinedAt: !1433)
!1438 = !DILocation(line: 52, column: 8, scope: !94, inlinedAt: !1433)
!1439 = !DILocation(line: 53, column: 8, scope: !94, inlinedAt: !1433)
!1440 = !DILocation(line: 54, column: 7, scope: !94, inlinedAt: !1433)
!1441 = !DILocation(line: 55, column: 7, scope: !94, inlinedAt: !1433)
!1442 = !DILocation(line: 55, column: 5, scope: !94, inlinedAt: !1433)
!1443 = !DILocation(line: 56, column: 10, scope: !94, inlinedAt: !1433)
!1444 = !DILocation(line: 57, column: 18, scope: !94, inlinedAt: !1433)
!1445 = !DILocation(line: 58, column: 21, scope: !94, inlinedAt: !1433)
!1446 = !DILocation(line: 59, column: 18, scope: !94, inlinedAt: !1433)
!1447 = !DILocation(line: 60, column: 13, scope: !94, inlinedAt: !1433)
!1448 = !DILocation(line: 683, column: 7, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1429, file: !1, line: 683, column: 7)
!1450 = !DILocation(line: 683, column: 14, scope: !1449)
!1451 = !DILocation(line: 683, column: 7, scope: !1429)
!1452 = !DILocation(line: 684, column: 9, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1449, file: !1, line: 683, column: 20)
!1454 = !DILocation(line: 684, column: 7, scope: !1453)
!1455 = !DILocation(line: 685, column: 15, scope: !1453)
!1456 = !DILocation(line: 686, column: 22, scope: !1453)
!1457 = !DILocation(line: 686, column: 20, scope: !1453)
!1458 = !DILocation(line: 687, column: 25, scope: !1453)
!1459 = !DILocation(line: 687, column: 23, scope: !1453)
!1460 = !DILocation(line: 688, column: 22, scope: !1453)
!1461 = !DILocation(line: 688, column: 20, scope: !1453)
!1462 = !DILocation(line: 689, column: 14, scope: !1453)
!1463 = !DILocation(line: 689, column: 12, scope: !1453)
!1464 = !DILocation(line: 690, column: 28, scope: !1453)
!1465 = !DILocation(line: 691, column: 14, scope: !1453)
!1466 = !DILocation(line: 692, column: 9, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1453, file: !1, line: 692, column: 9)
!1468 = !DILocation(line: 692, column: 20, scope: !1467)
!1469 = !DILocation(line: 692, column: 9, scope: !1453)
!1470 = !DILocation(line: 693, column: 30, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1467, file: !1, line: 692, column: 26)
!1472 = !DILocation(line: 694, column: 16, scope: !1471)
!1473 = !DILocation(line: 695, column: 5, scope: !1471)
!1474 = !DILocation(line: 634, column: 7, scope: !1378, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 697, column: 5, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1453, file: !1, line: 696, column: 5)
!1477 = !DILocation(line: 634, column: 5, scope: !1378, inlinedAt: !1475)
!1478 = !DILocation(line: 635, column: 10, scope: !1378, inlinedAt: !1475)
!1479 = !DILocation(line: 636, column: 18, scope: !1378, inlinedAt: !1475)
!1480 = !DILocation(line: 637, column: 21, scope: !1378, inlinedAt: !1475)
!1481 = !DILocation(line: 638, column: 18, scope: !1378, inlinedAt: !1475)
!1482 = !DILocation(line: 639, column: 13, scope: !1378, inlinedAt: !1475)
!1483 = !DILocation(line: 700, column: 9, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !1, line: 700, column: 9)
!1485 = distinct !DILexicalBlock(scope: !1453, file: !1, line: 699, column: 5)
!1486 = !DILocation(line: 700, column: 16, scope: !1484)
!1487 = !DILocation(line: 700, column: 9, scope: !1485)
!1488 = !DILocation(line: 701, column: 7, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1484, file: !1, line: 700, column: 21)
!1490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_1", scope: !1453, file: !1, line: 704, type: !14)
!1491 = !DILocation(line: 704, column: 9, scope: !1453)
!1492 = !DILocation(line: 705, column: 17, scope: !1453)
!1493 = !DILocation(line: 705, column: 15, scope: !1453)
!1494 = !DILocation(line: 706, column: 9, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1453, file: !1, line: 706, column: 9)
!1496 = !DILocation(line: 706, column: 19, scope: !1495)
!1497 = !DILocation(line: 706, column: 9, scope: !1453)
!1498 = !DILocation(line: 707, column: 7, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1495, file: !1, line: 706, column: 25)
!1500 = !DILocation(line: 709, column: 7, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1495, file: !1, line: 708, column: 12)
!1502 = !DILocation(line: 710, column: 11, scope: !1501)
!1503 = !DILocation(line: 710, column: 14, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1501, file: !1, line: 710, column: 11)
!1505 = !DILocation(line: 713, column: 28, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !1, line: 712, column: 9)
!1507 = distinct !DILexicalBlock(scope: !1504, file: !1, line: 710, column: 14)
!1508 = !DILocation(line: 713, column: 36, scope: !1506)
!1509 = !DILocation(line: 713, column: 18, scope: !1506)
!1510 = !DILocation(line: 713, column: 16, scope: !1506)
!1511 = !DILocation(line: 715, column: 9, scope: !1507)
!1512 = !DILocation(line: 717, column: 9, scope: !1507)
!1513 = !DILocation(line: 718, column: 14, scope: !1504)
!1514 = !DILocation(line: 722, column: 3, scope: !1453)
!1515 = !DILocation(line: 723, column: 7, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1429, file: !1, line: 723, column: 7)
!1517 = !DILocation(line: 723, column: 14, scope: !1516)
!1518 = !DILocation(line: 723, column: 7, scope: !1429)
!1519 = !DILocation(line: 724, column: 9, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !1, line: 724, column: 9)
!1521 = distinct !DILexicalBlock(scope: !1516, file: !1, line: 723, column: 20)
!1522 = !DILocation(line: 724, column: 14, scope: !1520)
!1523 = !DILocation(line: 724, column: 11, scope: !1520)
!1524 = !DILocation(line: 724, column: 9, scope: !1521)
!1525 = !DILocation(line: 725, column: 11, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1520, file: !1, line: 724, column: 18)
!1527 = !DILocation(line: 725, column: 9, scope: !1526)
!1528 = !DILocation(line: 726, column: 5, scope: !1526)
!1529 = !DILocation(line: 727, column: 7, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1520, file: !1, line: 726, column: 12)
!1531 = !DILocation(line: 729, column: 3, scope: !1521)
!1532 = !DILocation(line: 729, column: 10, scope: !1516)
!1533 = !DILocation(line: 731, column: 9, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !1, line: 731, column: 9)
!1535 = distinct !DILexicalBlock(scope: !1516, file: !1, line: 729, column: 10)
!1536 = !DILocation(line: 731, column: 16, scope: !1534)
!1537 = !DILocation(line: 731, column: 9, scope: !1535)
!1538 = !DILocation(line: 732, column: 11, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !1, line: 732, column: 11)
!1540 = distinct !DILexicalBlock(scope: !1534, file: !1, line: 731, column: 22)
!1541 = !DILocation(line: 732, column: 16, scope: !1539)
!1542 = !DILocation(line: 732, column: 13, scope: !1539)
!1543 = !DILocation(line: 732, column: 11, scope: !1540)
!1544 = !DILocation(line: 733, column: 13, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1539, file: !1, line: 732, column: 22)
!1546 = !DILocation(line: 733, column: 11, scope: !1545)
!1547 = !DILocation(line: 734, column: 7, scope: !1545)
!1548 = !DILocation(line: 735, column: 9, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1539, file: !1, line: 734, column: 14)
!1550 = !DILocation(line: 737, column: 5, scope: !1540)
!1551 = !DILocation(line: 737, column: 12, scope: !1534)
!1552 = !DILocation(line: 739, column: 11, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !1, line: 739, column: 11)
!1554 = distinct !DILexicalBlock(scope: !1534, file: !1, line: 737, column: 12)
!1555 = !DILocation(line: 739, column: 16, scope: !1553)
!1556 = !DILocation(line: 739, column: 13, scope: !1553)
!1557 = !DILocation(line: 739, column: 11, scope: !1554)
!1558 = !DILocation(line: 740, column: 13, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !1, line: 740, column: 13)
!1560 = distinct !DILexicalBlock(scope: !1553, file: !1, line: 739, column: 26)
!1561 = !DILocation(line: 740, column: 20, scope: !1559)
!1562 = !DILocation(line: 740, column: 13, scope: !1560)
!1563 = !DILocation(line: 741, column: 15, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !1, line: 741, column: 15)
!1565 = distinct !DILexicalBlock(scope: !1559, file: !1, line: 740, column: 27)
!1566 = !DILocation(line: 741, column: 20, scope: !1564)
!1567 = !DILocation(line: 741, column: 17, scope: !1564)
!1568 = !DILocation(line: 741, column: 15, scope: !1565)
!1569 = !DILocation(line: 742, column: 17, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 742, column: 17)
!1571 = distinct !DILexicalBlock(scope: !1564, file: !1, line: 741, column: 27)
!1572 = !DILocation(line: 742, column: 22, scope: !1570)
!1573 = !DILocation(line: 742, column: 19, scope: !1570)
!1574 = !DILocation(line: 742, column: 17, scope: !1571)
!1575 = !DILocation(line: 743, column: 19, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !1, line: 743, column: 19)
!1577 = distinct !DILexicalBlock(scope: !1570, file: !1, line: 742, column: 27)
!1578 = !DILocation(line: 743, column: 24, scope: !1576)
!1579 = !DILocation(line: 743, column: 21, scope: !1576)
!1580 = !DILocation(line: 743, column: 19, scope: !1577)
!1581 = !DILocation(line: 38, column: 10, scope: !91, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 745, column: 17, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !1, line: 744, column: 17)
!1584 = distinct !DILexicalBlock(scope: !1576, file: !1, line: 743, column: 28)
!1585 = !DILocation(line: 747, column: 15, scope: !1584)
!1586 = !DILocation(line: 748, column: 17, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1576, file: !1, line: 747, column: 22)
!1588 = !DILocation(line: 750, column: 13, scope: !1577)
!1589 = !DILocation(line: 751, column: 15, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1570, file: !1, line: 750, column: 20)
!1591 = !DILocation(line: 753, column: 11, scope: !1571)
!1592 = !DILocation(line: 753, column: 18, scope: !1564)
!1593 = !DILocation(line: 755, column: 17, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !1, line: 755, column: 17)
!1595 = distinct !DILexicalBlock(scope: !1564, file: !1, line: 753, column: 18)
!1596 = !DILocation(line: 755, column: 24, scope: !1594)
!1597 = !DILocation(line: 755, column: 17, scope: !1595)
!1598 = !DILocation(line: 756, column: 19, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !1, line: 756, column: 19)
!1600 = distinct !DILexicalBlock(scope: !1594, file: !1, line: 755, column: 30)
!1601 = !DILocation(line: 756, column: 26, scope: !1599)
!1602 = !DILocation(line: 756, column: 19, scope: !1600)
!1603 = !DILocation(line: 38, column: 10, scope: !91, inlinedAt: !1604)
!1604 = distinct !DILocation(line: 757, column: 17, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1599, file: !1, line: 756, column: 34)
!1606 = !DILocation(line: 758, column: 15, scope: !1605)
!1607 = !DILocation(line: 759, column: 13, scope: !1600)
!1608 = !DILocation(line: 760, column: 19, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !1, line: 760, column: 19)
!1610 = distinct !DILexicalBlock(scope: !1594, file: !1, line: 759, column: 20)
!1611 = !DILocation(line: 760, column: 24, scope: !1609)
!1612 = !DILocation(line: 760, column: 21, scope: !1609)
!1613 = !DILocation(line: 760, column: 19, scope: !1610)
!1614 = !DILocation(line: 761, column: 21, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !1, line: 761, column: 21)
!1616 = distinct !DILexicalBlock(scope: !1609, file: !1, line: 760, column: 28)
!1617 = !DILocation(line: 761, column: 28, scope: !1615)
!1618 = !DILocation(line: 761, column: 21, scope: !1616)
!1619 = !DILocation(line: 38, column: 10, scope: !91, inlinedAt: !1620)
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
!1631 = !DILocation(line: 38, column: 10, scope: !91, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 769, column: 19, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !1, line: 768, column: 19)
!1634 = distinct !DILexicalBlock(scope: !1626, file: !1, line: 767, column: 50)
!1635 = !DILocation(line: 771, column: 17, scope: !1634)
!1636 = !DILocation(line: 775, column: 9, scope: !1565)
!1637 = !DILocation(line: 776, column: 7, scope: !1560)
!1638 = !DILocation(line: 779, column: 10, scope: !1429)
!1639 = !DILocation(line: 780, column: 11, scope: !1429)
!1640 = !DILocation(line: 780, column: 3, scope: !1429)
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
!1653 = !DILocation(line: 790, column: 13, scope: !1301)
!1654 = !DILocation(line: 791, column: 7, scope: !1301)
!1655 = !DILocation(line: 792, column: 15, scope: !1301)
!1656 = !DILocation(line: 792, column: 13, scope: !1301)
!1657 = !DILocation(line: 793, column: 7, scope: !1305)
!1658 = !DILocation(line: 793, column: 17, scope: !1305)
!1659 = !DILocation(line: 793, column: 7, scope: !1301)
!1660 = !DILocation(line: 794, column: 5, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1305, file: !1, line: 793, column: 23)
!1662 = !DILocation(line: 796, column: 5, scope: !1311)
!1663 = !DILocation(line: 797, column: 9, scope: !1311)
!1664 = !DILocation(line: 797, column: 12, scope: !1310)
!1665 = !DILocation(line: 799, column: 15, scope: !1309)
!1666 = !DILocation(line: 799, column: 7, scope: !1309)
!1667 = !DILocation(line: 801, column: 7, scope: !1309)
!1668 = !DILocation(line: 807, column: 1, scope: !29)
!1669 = !DILocation(line: 808, column: 30, scope: !32)
!1670 = !DILocation(line: 812, column: 7, scope: !436)
!1671 = !DILocation(line: 813, column: 15, scope: !436)
!1672 = !DILocation(line: 813, column: 13, scope: !436)
!1673 = !DILocation(line: 814, column: 7, scope: !792)
!1674 = !DILocation(line: 814, column: 17, scope: !792)
!1675 = !DILocation(line: 814, column: 7, scope: !436)
!1676 = !DILocation(line: 815, column: 5, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !792, file: !1, line: 814, column: 23)
!1678 = !DILocation(line: 817, column: 5, scope: !798)
!1679 = !DILocation(line: 818, column: 9, scope: !798)
!1680 = !DILocation(line: 818, column: 12, scope: !797)
!1681 = !DILocation(line: 820, column: 7, scope: !796)
!1682 = !DILocation(line: 822, column: 7, scope: !796)
!1683 = !DILocation(line: 828, column: 1, scope: !32)
!1684 = !DILocation(line: 829, column: 34, scope: !35)
!1685 = !DILocation(line: 829, column: 48, scope: !35)
!1686 = !DILocation(line: 829, column: 64, scope: !35)
!1687 = !DILocation(line: 829, column: 85, scope: !35)
!1688 = !DILocation(line: 830, column: 34, scope: !35)
!1689 = !DILocation(line: 830, column: 55, scope: !35)
!1690 = !DILocation(line: 830, column: 78, scope: !35)
!1691 = !DILocation(line: 831, column: 34, scope: !35)
!1692 = !DILocation(line: 835, column: 7, scope: !1017)
!1693 = !DILocation(line: 836, column: 15, scope: !1017)
!1694 = !DILocation(line: 836, column: 13, scope: !1017)
!1695 = !DILocation(line: 837, column: 7, scope: !1155)
!1696 = !DILocation(line: 837, column: 17, scope: !1155)
!1697 = !DILocation(line: 837, column: 7, scope: !1017)
!1698 = !DILocation(line: 838, column: 5, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1155, file: !1, line: 837, column: 23)
!1700 = !DILocation(line: 840, column: 5, scope: !1161)
!1701 = !DILocation(line: 841, column: 9, scope: !1161)
!1702 = !DILocation(line: 841, column: 12, scope: !1160)
!1703 = !DILocation(line: 843, column: 7, scope: !1159)
!1704 = !DILocation(line: 845, column: 7, scope: !1159)
!1705 = !DILocation(line: 851, column: 1, scope: !35)
!1706 = !DILocation(line: 852, column: 35, scope: !38)
!1707 = !DILocation(line: 852, column: 62, scope: !38)
!1708 = !DILocation(line: 853, column: 35, scope: !38)
!1709 = !DILocation(line: 853, column: 57, scope: !38)
!1710 = !DILocation(line: 857, column: 7, scope: !1032)
!1711 = !DILocation(line: 858, column: 15, scope: !1032)
!1712 = !DILocation(line: 858, column: 13, scope: !1032)
!1713 = !DILocation(line: 859, column: 7, scope: !1194)
!1714 = !DILocation(line: 859, column: 17, scope: !1194)
!1715 = !DILocation(line: 859, column: 7, scope: !1032)
!1716 = !DILocation(line: 860, column: 5, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1194, file: !1, line: 859, column: 23)
!1718 = !DILocation(line: 862, column: 5, scope: !1200)
!1719 = !DILocation(line: 863, column: 9, scope: !1200)
!1720 = !DILocation(line: 863, column: 12, scope: !1199)
!1721 = !DILocation(line: 865, column: 7, scope: !1198)
!1722 = !DILocation(line: 867, column: 7, scope: !1198)
!1723 = !DILocation(line: 873, column: 1, scope: !38)
!1724 = !DILocation(line: 874, column: 35, scope: !41)
!1725 = !DILocation(line: 874, column: 58, scope: !41)
!1726 = !DILocation(line: 878, column: 7, scope: !427)
!1727 = !DILocation(line: 879, column: 15, scope: !427)
!1728 = !DILocation(line: 879, column: 13, scope: !427)
!1729 = !DILocation(line: 880, column: 7, scope: !774)
!1730 = !DILocation(line: 880, column: 17, scope: !774)
!1731 = !DILocation(line: 880, column: 7, scope: !427)
!1732 = !DILocation(line: 881, column: 5, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !774, file: !1, line: 880, column: 23)
!1734 = !DILocation(line: 883, column: 5, scope: !780)
!1735 = !DILocation(line: 884, column: 9, scope: !780)
!1736 = !DILocation(line: 884, column: 12, scope: !779)
!1737 = !DILocation(line: 886, column: 7, scope: !778)
!1738 = !DILocation(line: 888, column: 7, scope: !778)
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
!1750 = !DILocation(line: 38, column: 10, scope: !91, inlinedAt: !1751)
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
!1772 = distinct !DILocation(line: 583, column: 3, scope: !1247, inlinedAt: !1773)
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
!1787 = !DILocation(line: 583, column: 14, scope: !1247, inlinedAt: !1773)
!1788 = !DILocation(line: 583, column: 3, scope: !1247, inlinedAt: !1773)
!1789 = !DILocation(line: 997, column: 11, scope: !47, inlinedAt: !1772)
!1790 = !DILocation(line: 1000, column: 18, scope: !1254, inlinedAt: !1772)
!1791 = !DILocation(line: 1001, column: 11, scope: !1254, inlinedAt: !1772)
!1792 = !DILocation(line: 1001, column: 3, scope: !1254, inlinedAt: !1772)
!1793 = !DILocation(line: 585, column: 3, scope: !1248, inlinedAt: !1773)
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
!1810 = !DILocation(line: 38, column: 10, scope: !91, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 903, column: 5, scope: !1752, inlinedAt: !1804)
!1812 = !DILocation(line: 900, column: 9, scope: !1747, inlinedAt: !1804)
!1813 = !DILocation(line: 900, column: 7, scope: !1747, inlinedAt: !1804)
!1814 = !DILocation(line: 927, column: 5, scope: !1806)
!1815 = !DILocation(line: 929, column: 3, scope: !1775)
!1816 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_12", scope: !1770, file: !1, line: 930, type: !14)
!1817 = !DILocation(line: 930, column: 7, scope: !1770)
!1818 = !DILocation(line: 931, column: 16, scope: !1770)
!1819 = !DILocation(line: 931, column: 14, scope: !1770)
!1820 = !DILocation(line: 932, column: 7, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1770, file: !1, line: 932, column: 7)
!1822 = !DILocation(line: 932, column: 18, scope: !1821)
!1823 = !DILocation(line: 932, column: 7, scope: !1770)
!1824 = !DILocation(line: 933, column: 5, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1821, file: !1, line: 932, column: 24)
!1826 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_7", scope: !1827, file: !1, line: 935, type: !14)
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
!1896 = !DILocation(line: 38, column: 10, scope: !91, inlinedAt: !1897)
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
!1907 = !DILocation(line: 1000, column: 18, scope: !1254)
!1908 = !DILocation(line: 1001, column: 11, scope: !1254)
!1909 = !DILocation(line: 1001, column: 3, scope: !1254)
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
!1956 = !DILocation(line: 38, column: 10, scope: !91, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 1024, column: 9, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !1, line: 1023, column: 9)
!1959 = distinct !DILexicalBlock(scope: !1951, file: !1, line: 1022, column: 22)
!1960 = !DILocation(line: 1026, column: 7, scope: !1959)
!1961 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_8", scope: !1922, file: !1, line: 1029, type: !14)
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
!1986 = !DILocation(line: 1051, column: 7, scope: !188)
!1987 = !DILocation(line: 1052, column: 15, scope: !188)
!1988 = !DILocation(line: 1052, column: 13, scope: !188)
!1989 = !DILocation(line: 1053, column: 7, scope: !255)
!1990 = !DILocation(line: 1053, column: 17, scope: !255)
!1991 = !DILocation(line: 1053, column: 7, scope: !188)
!1992 = !DILocation(line: 1054, column: 5, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !255, file: !1, line: 1053, column: 23)
!1994 = !DILocation(line: 1056, column: 5, scope: !261)
!1995 = !DILocation(line: 1057, column: 9, scope: !261)
!1996 = !DILocation(line: 1057, column: 12, scope: !260)
!1997 = !DILocation(line: 1059, column: 7, scope: !259)
!1998 = !DILocation(line: 1061, column: 7, scope: !259)
!1999 = !DILocation(line: 1067, column: 1, scope: !51)
!2000 = !DILocation(line: 1068, column: 30, scope: !54)
!2001 = !DILocation(line: 1068, column: 49, scope: !54)
!2002 = !DILocation(line: 1068, column: 69, scope: !54)
!2003 = !DILocation(line: 1069, column: 30, scope: !54)
!2004 = !DILocation(line: 1069, column: 50, scope: !54)
!2005 = !DILocation(line: 1069, column: 65, scope: !54)
!2006 = !DILocation(line: 1069, column: 84, scope: !54)
!2007 = !DILocation(line: 1073, column: 7, scope: !171)
!2008 = !DILocation(line: 1074, column: 16, scope: !171)
!2009 = !DILocation(line: 1074, column: 14, scope: !171)
!2010 = !DILocation(line: 1075, column: 7, scope: !222)
!2011 = !DILocation(line: 1075, column: 18, scope: !222)
!2012 = !DILocation(line: 1075, column: 7, scope: !171)
!2013 = !DILocation(line: 1076, column: 5, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !222, file: !1, line: 1075, column: 24)
!2015 = !DILocation(line: 1078, column: 5, scope: !228)
!2016 = !DILocation(line: 1079, column: 9, scope: !228)
!2017 = !DILocation(line: 1079, column: 12, scope: !227)
!2018 = !DILocation(line: 1081, column: 7, scope: !226)
!2019 = !DILocation(line: 1083, column: 7, scope: !226)
!2020 = !DILocation(line: 1089, column: 1, scope: !54)
!2021 = !DILocation(line: 1090, column: 17, scope: !57)
!2022 = !DILocation(line: 1094, column: 7, scope: !194)
!2023 = !DILocation(line: 1095, column: 16, scope: !194)
!2024 = !DILocation(line: 1095, column: 14, scope: !194)
!2025 = !DILocation(line: 1096, column: 7, scope: !270)
!2026 = !DILocation(line: 1096, column: 18, scope: !270)
!2027 = !DILocation(line: 1096, column: 7, scope: !194)
!2028 = !DILocation(line: 1097, column: 5, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !270, file: !1, line: 1096, column: 24)
!2030 = !DILocation(line: 1099, column: 5, scope: !276)
!2031 = !DILocation(line: 1100, column: 9, scope: !276)
!2032 = !DILocation(line: 1100, column: 12, scope: !275)
!2033 = !DILocation(line: 1102, column: 7, scope: !274)
!2034 = !DILocation(line: 1104, column: 7, scope: !274)
!2035 = !DILocation(line: 1110, column: 1, scope: !57)
