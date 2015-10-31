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
@compFptr = common global i32 0, align 4
@compRegistered = common global i32 0, align 4
@lowerDriverReturn = common global i32 0, align 4
@setEventCalled = common global i32 0, align 4
@customIrp = common global i32 0, align 4
@Executive = common global i32 0, align 4
@KernelMode = common global i32 0, align 4
@myStatus = common global i32 0, align 4
@DeviceUsageTypePaging = common global i32 0, align 4
@Suspended = common global i32 0, align 4
@routine = common global i32 0, align 4
@pirp = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @errorFn() #0 {
  br label %1, !dbg !82

; <label>:1                                       ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !83
  unreachable, !dbg !83
                                                  ; No predecessors!
  ret void, !dbg !85
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

; Function Attrs: nounwind ssp uwtable
define void @_BLAST_init() #0 {
  store i32 0, i32* @UNLOADED, align 4, !dbg !86
  store i32 1, i32* @NP, align 4, !dbg !88
  store i32 2, i32* @DC, align 4, !dbg !89
  store i32 3, i32* @SKIP1, align 4, !dbg !90
  store i32 4, i32* @SKIP2, align 4, !dbg !91
  store i32 5, i32* @MPR1, align 4, !dbg !92
  store i32 6, i32* @MPR3, align 4, !dbg !93
  store i32 7, i32* @IPC, align 4, !dbg !94
  %1 = load i32, i32* @UNLOADED, align 4, !dbg !95
  store i32 %1, i32* @s, align 4, !dbg !96
  store i32 0, i32* @pended, align 4, !dbg !97
  store i32 0, i32* @compFptr, align 4, !dbg !98
  store i32 0, i32* @compRegistered, align 4, !dbg !99
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !100
  store i32 0, i32* @setEventCalled, align 4, !dbg !101
  store i32 0, i32* @customIrp, align 4, !dbg !102
  ret void, !dbg !103
}

; Function Attrs: nounwind ssp uwtable
define i32 @SendSrbSynchronous(i32 %Extension, i32 %Srb, i32 %Buffer, i32 %BufferLength) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %ioStatus__Status = alloca i32, align 4
  %ioctl = alloca i32, align 4
  %event = alloca i32, align 4
  %irp = alloca i32, align 4
  %status = alloca i32, align 4
  %__cil_tmp10 = alloca i32, align 4
  %__cil_tmp11 = alloca i32, align 4
  %__cil_tmp12 = alloca i32, align 4
  %__cil_tmp13 = alloca i32, align 4
  %__cil_tmp14 = alloca i32, align 4
  %__cil_tmp15 = alloca i32, align 4
  %__cil_tmp16 = alloca i32, align 4
  %__cil_tmp17 = alloca i32, align 4
  %__cil_tmp18 = alloca i64, align 8
  store i32 %Extension, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !104, metadata !105), !dbg !106
  store i32 %Srb, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !107, metadata !105), !dbg !108
  store i32 %Buffer, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !109, metadata !105), !dbg !110
  store i32 %BufferLength, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !111, metadata !105), !dbg !112
  call void @llvm.dbg.declare(metadata i32* %ioStatus__Status, metadata !113, metadata !105), !dbg !114
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !115
  store i32 %6, i32* %ioStatus__Status, align 4, !dbg !114
  call void @llvm.dbg.declare(metadata i32* %ioctl, metadata !116, metadata !105), !dbg !117
  call void @llvm.dbg.declare(metadata i32* %event, metadata !118, metadata !105), !dbg !119
  %7 = call i32 @__VERIFIER_nondet_int(), !dbg !120
  store i32 %7, i32* %event, align 4, !dbg !119
  call void @llvm.dbg.declare(metadata i32* %irp, metadata !121, metadata !105), !dbg !122
  call void @llvm.dbg.declare(metadata i32* %status, metadata !123, metadata !105), !dbg !124
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !125
  store i32 %8, i32* %status, align 4, !dbg !124
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp10, metadata !126, metadata !105), !dbg !127
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp11, metadata !128, metadata !105), !dbg !129
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp12, metadata !130, metadata !105), !dbg !131
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp13, metadata !132, metadata !105), !dbg !133
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp14, metadata !134, metadata !105), !dbg !135
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp15, metadata !136, metadata !105), !dbg !137
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp16, metadata !138, metadata !105), !dbg !139
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp17, metadata !140, metadata !105), !dbg !141
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp18, metadata !142, metadata !105), !dbg !143
  store i32 0, i32* %irp, align 4, !dbg !144
  %9 = load i32, i32* %4, align 4, !dbg !146
  %10 = icmp ne i32 %9, 0, !dbg !146
  br i1 %10, label %11, label %12, !dbg !148

; <label>:11                                      ; preds = %0
  store i32 4116, i32* %__cil_tmp10, align 4, !dbg !149
  store i32 49152, i32* %__cil_tmp11, align 4, !dbg !149
  store i32 262144, i32* %__cil_tmp12, align 4, !dbg !149
  store i32 311296, i32* %__cil_tmp13, align 4, !dbg !149
  store i32 315412, i32* %ioctl, align 4, !dbg !151
  br label %13, !dbg !152

; <label>:12                                      ; preds = %0
  store i32 4100, i32* %__cil_tmp14, align 4, !dbg !153
  store i32 49152, i32* %__cil_tmp15, align 4, !dbg !153
  store i32 262144, i32* %__cil_tmp16, align 4, !dbg !153
  store i32 311296, i32* %__cil_tmp17, align 4, !dbg !153
  store i32 315396, i32* %ioctl, align 4, !dbg !155
  br label %13

; <label>:13                                      ; preds = %12, %11
  %14 = load i32, i32* %irp, align 4, !dbg !156
  %15 = icmp ne i32 %14, 0, !dbg !156
  br i1 %15, label %17, label %16, !dbg !158

; <label>:16                                      ; preds = %13
  store i32 -1073741670, i32* %1, !dbg !159
  br label %30, !dbg !159

; <label>:17                                      ; preds = %13
  %18 = load i32, i32* %status, align 4, !dbg !161
  %19 = sext i32 %18 to i64, !dbg !163
  store i64 %19, i64* %__cil_tmp18, align 8, !dbg !164
  %20 = load i64, i64* %__cil_tmp18, align 8, !dbg !165
  %21 = icmp eq i64 %20, 259, !dbg !167
  br i1 %21, label %22, label %28, !dbg !168

; <label>:22                                      ; preds = %17
  %23 = load i32, i32* %event, align 4, !dbg !169
  %24 = load i32, i32* @Executive, align 4, !dbg !172
  %25 = load i32, i32* @KernelMode, align 4, !dbg !173
  %26 = call i32 @KeWaitForSingleObject(i32 %23, i32 %24, i32 %25, i32 0, i32 0), !dbg !174
  %27 = load i32, i32* %ioStatus__Status, align 4, !dbg !175
  store i32 %27, i32* %status, align 4, !dbg !176
  br label %28, !dbg !177

; <label>:28                                      ; preds = %22, %17
  %29 = load i32, i32* %status, align 4, !dbg !178
  store i32 %29, i32* %1, !dbg !179
  br label %30, !dbg !179

; <label>:30                                      ; preds = %28, %16
  %31 = load i32, i32* %1, !dbg !180
  ret i32 %31, !dbg !180
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i32 @__VERIFIER_nondet_int() #3

; Function Attrs: nounwind ssp uwtable
define i32 @CdAudioSignalCompletion(i32 %DeviceObject, i32 %Irp, i32 %Event) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %l.i = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %DeviceObject, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !181, metadata !105), !dbg !182
  store i32 %Irp, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !183, metadata !105), !dbg !184
  store i32 %Event, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !185, metadata !105), !dbg !186
  %7 = load i32, i32* %6, align 4, !dbg !187
  %8 = bitcast i32* %1 to i8*, !dbg !190
  call void @llvm.lifetime.start(i64 4, i8* %8), !dbg !190
  %9 = bitcast i32* %2 to i8*, !dbg !190
  call void @llvm.lifetime.start(i64 4, i8* %9), !dbg !190
  %10 = bitcast i32* %3 to i8*, !dbg !190
  call void @llvm.lifetime.start(i64 4, i8* %10), !dbg !190
  %11 = bitcast i32* %l.i to i8*, !dbg !190
  call void @llvm.lifetime.start(i64 4, i8* %11), !dbg !190
  store i32 %7, i32* %1, align 4, !dbg !190
  store i32 0, i32* %2, align 4, !dbg !190
  store i32 0, i32* %3, align 4, !dbg !190
  %12 = call i32 @__VERIFIER_nondet_int() #4, !dbg !191
  store i32 %12, i32* %l.i, align 4, !dbg !193
  store i32 1, i32* @setEventCalled, align 4, !dbg !194
  %13 = load i32, i32* %l.i, align 4, !dbg !196
  %14 = bitcast i32* %1 to i8*, !dbg !197
  call void @llvm.lifetime.end(i64 4, i8* %14), !dbg !197
  %15 = bitcast i32* %2 to i8*, !dbg !197
  call void @llvm.lifetime.end(i64 4, i8* %15), !dbg !197
  %16 = bitcast i32* %3 to i8*, !dbg !197
  call void @llvm.lifetime.end(i64 4, i8* %16), !dbg !197
  %17 = bitcast i32* %l.i to i8*, !dbg !197
  call void @llvm.lifetime.end(i64 4, i8* %17), !dbg !197
  call void @llvm.dbg.declare(metadata i32* %1, metadata !198, metadata !105), !dbg !199
  call void @llvm.dbg.declare(metadata i32* %2, metadata !200, metadata !105), !dbg !201
  call void @llvm.dbg.declare(metadata i32* %3, metadata !202, metadata !105), !dbg !203
  call void @llvm.dbg.declare(metadata i32* %l.i, metadata !204, metadata !105), !dbg !193
  ret i32 -1073741802, !dbg !205
}

; Function Attrs: nounwind ssp uwtable
define i32 @CdAudioStartDevice(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %tmp_ndt_9.i = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %deviceExtension__Active = alloca i32, align 4
  %deviceExtension = alloca i32, align 4
  %status = alloca i32, align 4
  %srb = alloca i32, align 4
  %srb__Cdb = alloca i32, align 4
  %cdb = alloca i32, align 4
  %inquiryDataPtr = alloca i32, align 4
  %attempt = alloca i32, align 4
  %tmp = alloca i32, align 4
  %deviceParameterHandle = alloca i32, align 4
  %keyValue = alloca i32, align 4
  store i32 %DeviceObject, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !206, metadata !105), !dbg !207
  store i32 %Irp, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !208, metadata !105), !dbg !209
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__Active, metadata !210, metadata !105), !dbg !211
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !212
  store i32 %6, i32* %deviceExtension__Active, align 4, !dbg !211
  call void @llvm.dbg.declare(metadata i32* %deviceExtension, metadata !213, metadata !105), !dbg !214
  %7 = call i32 @__VERIFIER_nondet_int(), !dbg !215
  store i32 %7, i32* %deviceExtension, align 4, !dbg !214
  call void @llvm.dbg.declare(metadata i32* %status, metadata !216, metadata !105), !dbg !217
  call void @llvm.dbg.declare(metadata i32* %srb, metadata !218, metadata !105), !dbg !219
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !220
  store i32 %8, i32* %srb, align 4, !dbg !219
  call void @llvm.dbg.declare(metadata i32* %srb__Cdb, metadata !221, metadata !105), !dbg !222
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !223
  store i32 %9, i32* %srb__Cdb, align 4, !dbg !222
  call void @llvm.dbg.declare(metadata i32* %cdb, metadata !224, metadata !105), !dbg !225
  call void @llvm.dbg.declare(metadata i32* %inquiryDataPtr, metadata !226, metadata !105), !dbg !227
  call void @llvm.dbg.declare(metadata i32* %attempt, metadata !228, metadata !105), !dbg !229
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !230, metadata !105), !dbg !231
  call void @llvm.dbg.declare(metadata i32* %deviceParameterHandle, metadata !232, metadata !105), !dbg !233
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !234
  store i32 %10, i32* %deviceParameterHandle, align 4, !dbg !233
  call void @llvm.dbg.declare(metadata i32* %keyValue, metadata !235, metadata !105), !dbg !236
  %11 = load i32, i32* %4, align 4, !dbg !237
  %12 = load i32, i32* %5, align 4, !dbg !240
  %13 = call i32 @CdAudioForwardIrpSynchronous(i32 %11, i32 %12), !dbg !241
  store i32 %13, i32* %status, align 4, !dbg !242
  %14 = load i32, i32* %status, align 4, !dbg !243
  %15 = icmp slt i32 %14, 0, !dbg !246
  call void @llvm.dbg.declare(metadata i32* %2, metadata !247, metadata !105), !dbg !248
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_9.i, metadata !251, metadata !105), !dbg !253
  br i1 %15, label %16, label %18, !dbg !254

; <label>:16                                      ; preds = %0
  %17 = load i32, i32* %status, align 4, !dbg !255
  store i32 %17, i32* %3, !dbg !257
  br label %74, !dbg !257

; <label>:18                                      ; preds = %0
  %19 = load i32, i32* %deviceExtension__Active, align 4, !dbg !258
  %20 = icmp eq i32 %19, 255, !dbg !260
  br i1 %20, label %21, label %51, !dbg !261

; <label>:21                                      ; preds = %18
  %22 = load i32, i32* %srb__Cdb, align 4, !dbg !262
  store i32 %22, i32* %cdb, align 4, !dbg !264
  store i32 0, i32* %inquiryDataPtr, align 4, !dbg !265
  store i32 0, i32* %attempt, align 4, !dbg !266
  %23 = load i32, i32* %inquiryDataPtr, align 4, !dbg !267
  %24 = icmp ne i32 %23, 0, !dbg !267
  br i1 %24, label %26, label %25, !dbg !269

; <label>:25                                      ; preds = %21
  store i32 0, i32* %deviceExtension__Active, align 4, !dbg !270
  store i32 0, i32* %3, !dbg !272
  br label %74, !dbg !272

; <label>:26                                      ; preds = %21
  store i32 -1073741823, i32* %status, align 4, !dbg !273
  br label %27, !dbg !274

; <label>:27                                      ; preds = %40, %26
  br label %28, !dbg !276

; <label>:28                                      ; preds = %27
  %29 = load i32, i32* %status, align 4, !dbg !277
  %30 = icmp slt i32 %29, 0, !dbg !281
  br i1 %30, label %31, label %39, !dbg !282

; <label>:31                                      ; preds = %28
  %32 = load i32, i32* %attempt, align 4, !dbg !283
  store i32 %32, i32* %tmp, align 4, !dbg !285
  %33 = load i32, i32* %attempt, align 4, !dbg !286
  %34 = add nsw i32 %33, 1, !dbg !286
  store i32 %34, i32* %attempt, align 4, !dbg !286
  %35 = load i32, i32* %tmp, align 4, !dbg !287
  %36 = icmp sge i32 %35, 4, !dbg !289
  br i1 %36, label %37, label %38, !dbg !290

; <label>:37                                      ; preds = %31
  br label %46, !dbg !291

; <label>:38                                      ; preds = %31
  br label %40, !dbg !293

; <label>:39                                      ; preds = %28
  br label %46, !dbg !294

; <label>:40                                      ; preds = %38
  %41 = load i32, i32* %deviceExtension, align 4, !dbg !296
  %42 = load i32, i32* %srb, align 4, !dbg !298
  %43 = load i32, i32* %inquiryDataPtr, align 4, !dbg !299
  %44 = call i32 @SendSrbSynchronous(i32 %41, i32 %42, i32 %43, i32 36), !dbg !300
  store i32 %44, i32* %status, align 4, !dbg !301
  br label %27, !dbg !274
                                                  ; No predecessors!
  br label %46, !dbg !302

; <label>:46                                      ; preds = %45, %39, %37
  %47 = load i32, i32* %status, align 4, !dbg !303
  %48 = icmp slt i32 %47, 0, !dbg !306
  br i1 %48, label %49, label %50, !dbg !307

; <label>:49                                      ; preds = %46
  store i32 0, i32* %deviceExtension__Active, align 4, !dbg !308
  store i32 0, i32* %3, !dbg !310
  br label %74, !dbg !310

; <label>:50                                      ; preds = %46
  store i32 0, i32* %deviceExtension__Active, align 4, !dbg !311
  br label %51, !dbg !312

; <label>:51                                      ; preds = %50, %18
  %52 = load i32, i32* %deviceExtension__Active, align 4, !dbg !313
  store i32 %52, i32* %keyValue, align 4, !dbg !314
  %53 = load i32, i32* %status, align 4, !dbg !315
  %54 = icmp slt i32 %53, 0, !dbg !318
  br i1 %54, label %55, label %56, !dbg !319

; <label>:55                                      ; preds = %51
  store i32 0, i32* %3, !dbg !320
  br label %74, !dbg !320

; <label>:56                                      ; preds = %51
  %57 = load i32, i32* %status, align 4, !dbg !322
  %58 = icmp slt i32 %57, 0, !dbg !325
  br i1 %58, label %59, label %60, !dbg !326

; <label>:59                                      ; preds = %56
  br label %60, !dbg !327

; <label>:60                                      ; preds = %59, %56
  %61 = load i32, i32* %deviceParameterHandle, align 4, !dbg !329
  %62 = bitcast i32* %1 to i8*, !dbg !330
  call void @llvm.lifetime.start(i64 4, i8* %62), !dbg !330
  %63 = bitcast i32* %2 to i8*, !dbg !330
  call void @llvm.lifetime.start(i64 4, i8* %63), !dbg !330
  %64 = bitcast i32* %tmp_ndt_9.i to i8*, !dbg !330
  call void @llvm.lifetime.start(i64 4, i8* %64), !dbg !330
  store i32 %61, i32* %2, align 4, !dbg !330
  %65 = call i32 @__VERIFIER_nondet_int() #4, !dbg !331
  store i32 %65, i32* %tmp_ndt_9.i, align 4, !dbg !332
  %66 = load i32, i32* %tmp_ndt_9.i, align 4, !dbg !333
  %67 = icmp eq i32 %66, 0, !dbg !335
  br i1 %67, label %68, label %69, !dbg !336

; <label>:68                                      ; preds = %60
  store i32 0, i32* %1, !dbg !337
  br label %ZwClose.exit, !dbg !337

; <label>:69                                      ; preds = %60
  store i32 -1073741823, i32* %1, !dbg !341
  br label %ZwClose.exit, !dbg !341

ZwClose.exit:                                     ; preds = %68, %69
  %70 = load i32, i32* %1, !dbg !342
  %71 = bitcast i32* %1 to i8*, !dbg !342
  call void @llvm.lifetime.end(i64 4, i8* %71), !dbg !342
  %72 = bitcast i32* %2 to i8*, !dbg !342
  call void @llvm.lifetime.end(i64 4, i8* %72), !dbg !342
  %73 = bitcast i32* %tmp_ndt_9.i to i8*, !dbg !342
  call void @llvm.lifetime.end(i64 4, i8* %73), !dbg !342
  store i32 0, i32* %3, !dbg !343
  br label %74, !dbg !343

; <label>:74                                      ; preds = %ZwClose.exit, %55, %49, %25, %16
  %75 = load i32, i32* %3, !dbg !344
  ret i32 %75, !dbg !344
}

; Function Attrs: nounwind ssp uwtable
define i32 @CdAudioPnp(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %l.i = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %Irp__Tail__Overlay__CurrentStackLocation = alloca i32, align 4
  %irpSp__MinorFunction = alloca i32, align 4
  %Irp__IoStatus__Status = alloca i32, align 4
  %irpSp__Parameters__UsageNotification__Type = alloca i32, align 4
  %deviceExtension__PagingPathCountEvent = alloca i32, align 4
  %irpSp__Parameters__UsageNotification__InPath = alloca i32, align 4
  %deviceExtension__PagingPathCount = alloca i32, align 4
  %DeviceObject__Flags = alloca i32, align 4
  %irpSp = alloca i32, align 4
  %status = alloca i32, align 4
  %setPagable = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp___0 = alloca i32, align 4
  store i32 %DeviceObject, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !345, metadata !105), !dbg !346
  store i32 %Irp, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !347, metadata !105), !dbg !348
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !349, metadata !105), !dbg !350
  %11 = call i32 @__VERIFIER_nondet_int(), !dbg !351
  store i32 %11, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !350
  call void @llvm.dbg.declare(metadata i32* %irpSp__MinorFunction, metadata !352, metadata !105), !dbg !353
  %12 = call i32 @__VERIFIER_nondet_int(), !dbg !354
  store i32 %12, i32* %irpSp__MinorFunction, align 4, !dbg !353
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !355, metadata !105), !dbg !356
  call void @llvm.dbg.declare(metadata i32* %irpSp__Parameters__UsageNotification__Type, metadata !357, metadata !105), !dbg !358
  %13 = call i32 @__VERIFIER_nondet_int(), !dbg !359
  store i32 %13, i32* %irpSp__Parameters__UsageNotification__Type, align 4, !dbg !358
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__PagingPathCountEvent, metadata !360, metadata !105), !dbg !361
  %14 = call i32 @__VERIFIER_nondet_int(), !dbg !362
  store i32 %14, i32* %deviceExtension__PagingPathCountEvent, align 4, !dbg !361
  call void @llvm.dbg.declare(metadata i32* %irpSp__Parameters__UsageNotification__InPath, metadata !363, metadata !105), !dbg !364
  %15 = call i32 @__VERIFIER_nondet_int(), !dbg !365
  store i32 %15, i32* %irpSp__Parameters__UsageNotification__InPath, align 4, !dbg !364
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__PagingPathCount, metadata !366, metadata !105), !dbg !367
  %16 = call i32 @__VERIFIER_nondet_int(), !dbg !368
  store i32 %16, i32* %deviceExtension__PagingPathCount, align 4, !dbg !367
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__Flags, metadata !369, metadata !105), !dbg !370
  call void @llvm.dbg.declare(metadata i32* %irpSp, metadata !371, metadata !105), !dbg !372
  call void @llvm.dbg.declare(metadata i32* %status, metadata !373, metadata !105), !dbg !374
  call void @llvm.dbg.declare(metadata i32* %setPagable, metadata !375, metadata !105), !dbg !376
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !377, metadata !105), !dbg !378
  call void @llvm.dbg.declare(metadata i32* %tmp___0, metadata !379, metadata !105), !dbg !380
  %17 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !381
  store i32 %17, i32* %irpSp, align 4, !dbg !383
  store i32 -1073741637, i32* %status, align 4, !dbg !384
  %18 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !385
  %19 = icmp eq i32 %18, 0, !dbg !387
  call void @llvm.dbg.declare(metadata i32* %6, metadata !388, metadata !105), !dbg !389
  call void @llvm.dbg.declare(metadata i32* %7, metadata !397, metadata !105), !dbg !398
  call void @llvm.dbg.declare(metadata i32* %3, metadata !198, metadata !105), !dbg !399
  call void @llvm.dbg.declare(metadata i32* %4, metadata !200, metadata !105), !dbg !402
  call void @llvm.dbg.declare(metadata i32* %5, metadata !202, metadata !105), !dbg !403
  call void @llvm.dbg.declare(metadata i32* %l.i, metadata !204, metadata !105), !dbg !404
  call void @llvm.dbg.declare(metadata i32* %1, metadata !388, metadata !105), !dbg !405
  call void @llvm.dbg.declare(metadata i32* %2, metadata !397, metadata !105), !dbg !407
  br i1 %19, label %20, label %21, !dbg !408

; <label>:20                                      ; preds = %0
  br label %28, !dbg !409

; <label>:21                                      ; preds = %0
  %22 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !411
  %23 = icmp eq i32 %22, 22, !dbg !412
  br i1 %23, label %24, label %25, !dbg !413

; <label>:24                                      ; preds = %21
  br label %45, !dbg !414

; <label>:25                                      ; preds = %21
  br label %120, !dbg !416
                                                  ; No predecessors!
  br i1 false, label %27, label %125, !dbg !417

; <label>:27                                      ; preds = %26
  br label %28, !dbg !418

; <label>:28                                      ; preds = %27, %20
  %29 = load i32, i32* %9, align 4, !dbg !419
  %30 = load i32, i32* %10, align 4, !dbg !420
  %31 = call i32 @CdAudioStartDevice(i32 %29, i32 %30), !dbg !421
  store i32 %31, i32* %status, align 4, !dbg !422
  %32 = load i32, i32* %status, align 4, !dbg !423
  store i32 %32, i32* %Irp__IoStatus__Status, align 4, !dbg !424
  %33 = load i32, i32* %status, align 4, !dbg !425
  store i32 %33, i32* @myStatus, align 4, !dbg !426
  %34 = load i32, i32* %10, align 4, !dbg !427
  %35 = bitcast i32* %6 to i8*, !dbg !428
  call void @llvm.lifetime.start(i64 4, i8* %35), !dbg !428
  %36 = bitcast i32* %7 to i8*, !dbg !428
  call void @llvm.lifetime.start(i64 4, i8* %36), !dbg !428
  store i32 %34, i32* %6, align 4, !dbg !428
  store i32 0, i32* %7, align 4, !dbg !428
  %37 = load i32, i32* @s, align 4, !dbg !429
  %38 = load i32, i32* @NP, align 4, !dbg !432
  %39 = icmp eq i32 %37, %38, !dbg !433
  br i1 %39, label %IofCompleteRequest.exit, label %40, !dbg !434

; <label>:40                                      ; preds = %28
  call void (...) @__VERIFIER_error() #6, !dbg !435
  unreachable, !dbg !435

IofCompleteRequest.exit:                          ; preds = %28
  %41 = load i32, i32* @DC, align 4, !dbg !439
  store i32 %41, i32* @s, align 4, !dbg !441
  %42 = bitcast i32* %6 to i8*, !dbg !442
  call void @llvm.lifetime.end(i64 4, i8* %42), !dbg !442
  %43 = bitcast i32* %7 to i8*, !dbg !442
  call void @llvm.lifetime.end(i64 4, i8* %43), !dbg !442
  %44 = load i32, i32* %status, align 4, !dbg !443
  store i32 %44, i32* %8, !dbg !444
  br label %130, !dbg !444

; <label>:45                                      ; preds = %24
  %46 = load i32, i32* %irpSp__Parameters__UsageNotification__Type, align 4, !dbg !445
  %47 = load i32, i32* @DeviceUsageTypePaging, align 4, !dbg !447
  %48 = icmp ne i32 %46, %47, !dbg !448
  br i1 %48, label %49, label %54, !dbg !449

; <label>:49                                      ; preds = %45
  %50 = load i32, i32* %9, align 4, !dbg !450
  %51 = load i32, i32* %10, align 4, !dbg !453
  %52 = call i32 @CdAudioSendToNextDriver(i32 %50, i32 %51), !dbg !454
  store i32 %52, i32* %tmp, align 4, !dbg !455
  %53 = load i32, i32* %tmp, align 4, !dbg !456
  store i32 %53, i32* %8, !dbg !457
  br label %130, !dbg !457

; <label>:54                                      ; preds = %45
  %55 = load i32, i32* %deviceExtension__PagingPathCountEvent, align 4, !dbg !458
  %56 = load i32, i32* @Executive, align 4, !dbg !460
  %57 = load i32, i32* @KernelMode, align 4, !dbg !461
  %58 = call i32 @KeWaitForSingleObject(i32 %55, i32 %56, i32 %57, i32 0, i32 0), !dbg !462
  store i32 %58, i32* %status, align 4, !dbg !463
  store i32 0, i32* %setPagable, align 4, !dbg !464
  %59 = load i32, i32* %irpSp__Parameters__UsageNotification__InPath, align 4, !dbg !465
  %60 = icmp ne i32 %59, 0, !dbg !465
  br i1 %60, label %61, label %66, !dbg !467

; <label>:61                                      ; preds = %54
  %62 = load i32, i32* %deviceExtension__PagingPathCount, align 4, !dbg !468
  %63 = icmp ne i32 %62, 1, !dbg !471
  br i1 %63, label %64, label %65, !dbg !472

; <label>:64                                      ; preds = %61
  br label %67, !dbg !473

; <label>:65                                      ; preds = %61
  br label %73, !dbg !475

; <label>:66                                      ; preds = %54
  br label %67, !dbg !476

; <label>:67                                      ; preds = %66, %64
  %68 = load i32, i32* %status, align 4, !dbg !477
  %69 = load i32, i32* %status, align 4, !dbg !480
  %70 = icmp eq i32 %68, %69, !dbg !481
  br i1 %70, label %71, label %72, !dbg !482

; <label>:71                                      ; preds = %67
  store i32 1, i32* %setPagable, align 4, !dbg !483
  br label %72, !dbg !485

; <label>:72                                      ; preds = %71, %67
  br label %73

; <label>:73                                      ; preds = %72, %65
  %74 = load i32, i32* %9, align 4, !dbg !486
  %75 = load i32, i32* %10, align 4, !dbg !488
  %76 = call i32 @CdAudioForwardIrpSynchronous(i32 %74, i32 %75), !dbg !489
  store i32 %76, i32* %status, align 4, !dbg !490
  %77 = load i32, i32* %status, align 4, !dbg !491
  %78 = icmp sge i32 %77, 0, !dbg !493
  br i1 %78, label %79, label %92, !dbg !494

; <label>:79                                      ; preds = %73
  %80 = load i32, i32* %irpSp__Parameters__UsageNotification__InPath, align 4, !dbg !495
  %81 = icmp ne i32 %80, 0, !dbg !495
  br i1 %81, label %82, label %83, !dbg !498

; <label>:82                                      ; preds = %79
  br label %83, !dbg !499

; <label>:83                                      ; preds = %82, %79
  %84 = load i32, i32* %irpSp__Parameters__UsageNotification__InPath, align 4, !dbg !501
  %85 = icmp ne i32 %84, 0, !dbg !501
  br i1 %85, label %86, label %91, !dbg !503

; <label>:86                                      ; preds = %83
  %87 = load i32, i32* %deviceExtension__PagingPathCount, align 4, !dbg !504
  %88 = icmp eq i32 %87, 1, !dbg !507
  br i1 %88, label %89, label %90, !dbg !508

; <label>:89                                      ; preds = %86
  br label %90, !dbg !509

; <label>:90                                      ; preds = %89, %86
  br label %91, !dbg !511

; <label>:91                                      ; preds = %90, %83
  br label %97, !dbg !512

; <label>:92                                      ; preds = %73
  %93 = load i32, i32* %setPagable, align 4, !dbg !513
  %94 = icmp eq i32 %93, 1, !dbg !516
  br i1 %94, label %95, label %96, !dbg !517

; <label>:95                                      ; preds = %92
  store i32 0, i32* %setPagable, align 4, !dbg !518
  br label %96, !dbg !520

; <label>:96                                      ; preds = %95, %92
  br label %97

; <label>:97                                      ; preds = %96, %91
  %98 = load i32, i32* %deviceExtension__PagingPathCountEvent, align 4, !dbg !521
  %99 = bitcast i32* %3 to i8*, !dbg !522
  call void @llvm.lifetime.start(i64 4, i8* %99), !dbg !522
  %100 = bitcast i32* %4 to i8*, !dbg !522
  call void @llvm.lifetime.start(i64 4, i8* %100), !dbg !522
  %101 = bitcast i32* %5 to i8*, !dbg !522
  call void @llvm.lifetime.start(i64 4, i8* %101), !dbg !522
  %102 = bitcast i32* %l.i to i8*, !dbg !522
  call void @llvm.lifetime.start(i64 4, i8* %102), !dbg !522
  store i32 %98, i32* %3, align 4, !dbg !522
  store i32 0, i32* %4, align 4, !dbg !522
  store i32 0, i32* %5, align 4, !dbg !522
  %103 = call i32 @__VERIFIER_nondet_int() #4, !dbg !523
  store i32 %103, i32* %l.i, align 4, !dbg !404
  store i32 1, i32* @setEventCalled, align 4, !dbg !524
  %104 = load i32, i32* %l.i, align 4, !dbg !525
  %105 = bitcast i32* %3 to i8*, !dbg !526
  call void @llvm.lifetime.end(i64 4, i8* %105), !dbg !526
  %106 = bitcast i32* %4 to i8*, !dbg !526
  call void @llvm.lifetime.end(i64 4, i8* %106), !dbg !526
  %107 = bitcast i32* %5 to i8*, !dbg !526
  call void @llvm.lifetime.end(i64 4, i8* %107), !dbg !526
  %108 = bitcast i32* %l.i to i8*, !dbg !526
  call void @llvm.lifetime.end(i64 4, i8* %108), !dbg !526
  %109 = load i32, i32* %10, align 4, !dbg !527
  %110 = bitcast i32* %1 to i8*, !dbg !528
  call void @llvm.lifetime.start(i64 4, i8* %110), !dbg !528
  %111 = bitcast i32* %2 to i8*, !dbg !528
  call void @llvm.lifetime.start(i64 4, i8* %111), !dbg !528
  store i32 %109, i32* %1, align 4, !dbg !528
  store i32 0, i32* %2, align 4, !dbg !528
  %112 = load i32, i32* @s, align 4, !dbg !529
  %113 = load i32, i32* @NP, align 4, !dbg !530
  %114 = icmp eq i32 %112, %113, !dbg !531
  br i1 %114, label %IofCompleteRequest.exit1, label %115, !dbg !532

; <label>:115                                     ; preds = %97
  call void (...) @__VERIFIER_error() #6, !dbg !533
  unreachable, !dbg !533

IofCompleteRequest.exit1:                         ; preds = %97
  %116 = load i32, i32* @DC, align 4, !dbg !535
  store i32 %116, i32* @s, align 4, !dbg !536
  %117 = bitcast i32* %1 to i8*, !dbg !537
  call void @llvm.lifetime.end(i64 4, i8* %117), !dbg !537
  %118 = bitcast i32* %2 to i8*, !dbg !537
  call void @llvm.lifetime.end(i64 4, i8* %118), !dbg !537
  %119 = load i32, i32* %status, align 4, !dbg !538
  store i32 %119, i32* %8, !dbg !539
  br label %130, !dbg !539

; <label>:120                                     ; preds = %25
  %121 = load i32, i32* %9, align 4, !dbg !540
  %122 = load i32, i32* %10, align 4, !dbg !542
  %123 = call i32 @CdAudioSendToNextDriver(i32 %121, i32 %122), !dbg !543
  store i32 %123, i32* %tmp___0, align 4, !dbg !544
  %124 = load i32, i32* %tmp___0, align 4, !dbg !545
  store i32 %124, i32* %8, !dbg !546
  br label %130, !dbg !546

; <label>:125                                     ; preds = %26
  br label %126, !dbg !547

; <label>:126                                     ; preds = %125
  br label %127

; <label>:127                                     ; preds = %126
  br label %128

; <label>:128                                     ; preds = %127
  br label %129

; <label>:129                                     ; preds = %128
  store i32 0, i32* %8, !dbg !548
  br label %130, !dbg !548

; <label>:130                                     ; preds = %129, %120, %IofCompleteRequest.exit1, %49, %IofCompleteRequest.exit
  %131 = load i32, i32* %8, !dbg !549
  ret i32 %131, !dbg !549
}

; Function Attrs: nounwind ssp uwtable
define void @IofCompleteRequest(i32 %Irp, i32 %PriorityBoost) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %Irp, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !388, metadata !105), !dbg !550
  store i32 %PriorityBoost, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !397, metadata !105), !dbg !551
  %3 = load i32, i32* @s, align 4, !dbg !552
  %4 = load i32, i32* @NP, align 4, !dbg !553
  %5 = icmp eq i32 %3, %4, !dbg !554
  br i1 %5, label %6, label %8, !dbg !555

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* @DC, align 4, !dbg !556
  store i32 %7, i32* @s, align 4, !dbg !557
  br label %9, !dbg !558

; <label>:8                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !559
  unreachable, !dbg !559

errorFn.exit:                                     ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %errorFn.exit, %6
  ret void, !dbg !561
}

; Function Attrs: nounwind ssp uwtable
define i32 @CdAudioDeviceControl(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %deviceExtension__Active = alloca i32, align 4
  %status = alloca i32, align 4
  store i32 %DeviceObject, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !562, metadata !105), !dbg !563
  store i32 %Irp, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !564, metadata !105), !dbg !565
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__Active, metadata !566, metadata !105), !dbg !567
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !568
  store i32 %3, i32* %deviceExtension__Active, align 4, !dbg !567
  call void @llvm.dbg.declare(metadata i32* %status, metadata !569, metadata !105), !dbg !570
  %4 = load i32, i32* %deviceExtension__Active, align 4, !dbg !571
  %5 = icmp eq i32 %4, 2, !dbg !574
  br i1 %5, label %6, label %7, !dbg !575

; <label>:6                                       ; preds = %0
  br label %22, !dbg !576

; <label>:7                                       ; preds = %0
  %8 = load i32, i32* %deviceExtension__Active, align 4, !dbg !578
  %9 = icmp eq i32 %8, 3, !dbg !581
  br i1 %9, label %10, label %11, !dbg !582

; <label>:10                                      ; preds = %7
  br label %26, !dbg !583

; <label>:11                                      ; preds = %7
  %12 = load i32, i32* %deviceExtension__Active, align 4, !dbg !585
  %13 = icmp eq i32 %12, 1, !dbg !588
  br i1 %13, label %14, label %15, !dbg !589

; <label>:14                                      ; preds = %11
  br label %30, !dbg !590

; <label>:15                                      ; preds = %11
  %16 = load i32, i32* %deviceExtension__Active, align 4, !dbg !592
  %17 = icmp eq i32 %16, 7, !dbg !595
  br i1 %17, label %18, label %19, !dbg !596

; <label>:18                                      ; preds = %15
  br label %34, !dbg !597

; <label>:19                                      ; preds = %15
  br label %38, !dbg !599
                                                  ; No predecessors!
  br i1 false, label %21, label %42, !dbg !601

; <label>:21                                      ; preds = %20
  br label %22, !dbg !602

; <label>:22                                      ; preds = %21, %6
  %23 = load i32, i32* %1, align 4, !dbg !604
  %24 = load i32, i32* %2, align 4, !dbg !607
  %25 = call i32 @CdAudio535DeviceControl(i32 %23, i32 %24), !dbg !608
  store i32 %25, i32* %status, align 4, !dbg !609
  br label %43, !dbg !610

; <label>:26                                      ; preds = %10
  %27 = load i32, i32* %1, align 4, !dbg !611
  %28 = load i32, i32* %2, align 4, !dbg !613
  %29 = call i32 @CdAudio435DeviceControl(i32 %27, i32 %28), !dbg !614
  store i32 %29, i32* %status, align 4, !dbg !615
  br label %43, !dbg !616

; <label>:30                                      ; preds = %14
  %31 = load i32, i32* %1, align 4, !dbg !617
  %32 = load i32, i32* %2, align 4, !dbg !619
  %33 = call i32 @CdAudioAtapiDeviceControl(i32 %31, i32 %32), !dbg !620
  store i32 %33, i32* %status, align 4, !dbg !621
  br label %43, !dbg !622

; <label>:34                                      ; preds = %18
  %35 = load i32, i32* %1, align 4, !dbg !623
  %36 = load i32, i32* %2, align 4, !dbg !625
  %37 = call i32 @CdAudioHPCdrDeviceControl(i32 %35, i32 %36), !dbg !626
  store i32 %37, i32* %status, align 4, !dbg !627
  br label %43, !dbg !628

; <label>:38                                      ; preds = %19
  store i32 0, i32* %deviceExtension__Active, align 4, !dbg !629
  %39 = load i32, i32* %1, align 4, !dbg !631
  %40 = load i32, i32* %2, align 4, !dbg !632
  %41 = call i32 @CdAudioSendToNextDriver(i32 %39, i32 %40), !dbg !633
  store i32 %41, i32* %status, align 4, !dbg !634
  br label %44, !dbg !635

; <label>:42                                      ; preds = %20
  br label %43, !dbg !636

; <label>:43                                      ; preds = %42, %34, %30, %26, %22
  br label %44

; <label>:44                                      ; preds = %43, %38
  br label %45

; <label>:45                                      ; preds = %44
  br label %46

; <label>:46                                      ; preds = %45
  br label %47

; <label>:47                                      ; preds = %46
  br label %48

; <label>:48                                      ; preds = %47
  %49 = load i32, i32* %status, align 4, !dbg !637
  ret i32 %49, !dbg !638
}

; Function Attrs: nounwind ssp uwtable
define i32 @CdAudioSendToNextDriver(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %Irp__CurrentLocation = alloca i32, align 4
  %Irp__Tail__Overlay__CurrentStackLocation = alloca i32, align 4
  %deviceExtension__TargetDeviceObject = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %DeviceObject, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !639, metadata !105), !dbg !640
  store i32 %Irp, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !641, metadata !105), !dbg !642
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !643, metadata !105), !dbg !644
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !645
  store i32 %3, i32* %Irp__CurrentLocation, align 4, !dbg !644
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !646, metadata !105), !dbg !647
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !648
  store i32 %4, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !647
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__TargetDeviceObject, metadata !649, metadata !105), !dbg !650
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !651
  store i32 %5, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !650
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !652, metadata !105), !dbg !653
  %6 = load i32, i32* @s, align 4, !dbg !654
  %7 = load i32, i32* @NP, align 4, !dbg !657
  %8 = icmp eq i32 %6, %7, !dbg !658
  br i1 %8, label %9, label %11, !dbg !659

; <label>:9                                       ; preds = %0
  %10 = load i32, i32* @SKIP1, align 4, !dbg !660
  store i32 %10, i32* @s, align 4, !dbg !662
  br label %12, !dbg !663

; <label>:11                                      ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !664
  unreachable, !dbg !664

errorFn.exit:                                     ; No predecessors!
  br label %12

; <label>:12                                      ; preds = %errorFn.exit, %9
  %13 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !668
  %14 = add nsw i32 %13, 1, !dbg !668
  store i32 %14, i32* %Irp__CurrentLocation, align 4, !dbg !668
  %15 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !670
  %16 = add nsw i32 %15, 1, !dbg !670
  store i32 %16, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !670
  %17 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !671
  %18 = load i32, i32* %2, align 4, !dbg !672
  %19 = call i32 @IofCallDriver(i32 %17, i32 %18), !dbg !673
  store i32 %19, i32* %tmp, align 4, !dbg !674
  %20 = load i32, i32* %tmp, align 4, !dbg !675
  ret i32 %20, !dbg !676
}

; Function Attrs: nounwind ssp uwtable
define i32 @CdAudioIsPlayActive(i32 %DeviceObject) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %deviceExtension__PlayActive = alloca i32, align 4
  %ioStatus__Status = alloca i32, align 4
  %currentBuffer__Header__AudioStatus = alloca i32, align 4
  %irp_CdAudioIsPlayActive = alloca i32, align 4
  %event = alloca i32, align 4
  %status = alloca i32, align 4
  %currentBuffer = alloca i32, align 4
  %returnValue = alloca i32, align 4
  %__cil_tmp10 = alloca i64, align 8
  %__cil_tmp11 = alloca i32, align 4
  store i32 %DeviceObject, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !677, metadata !105), !dbg !678
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__PlayActive, metadata !679, metadata !105), !dbg !680
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !681
  store i32 %3, i32* %deviceExtension__PlayActive, align 4, !dbg !680
  call void @llvm.dbg.declare(metadata i32* %ioStatus__Status, metadata !682, metadata !105), !dbg !683
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !684
  store i32 %4, i32* %ioStatus__Status, align 4, !dbg !683
  call void @llvm.dbg.declare(metadata i32* %currentBuffer__Header__AudioStatus, metadata !685, metadata !105), !dbg !686
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !687
  store i32 %5, i32* %currentBuffer__Header__AudioStatus, align 4, !dbg !686
  call void @llvm.dbg.declare(metadata i32* %irp_CdAudioIsPlayActive, metadata !688, metadata !105), !dbg !689
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !690
  store i32 %6, i32* %irp_CdAudioIsPlayActive, align 4, !dbg !689
  call void @llvm.dbg.declare(metadata i32* %event, metadata !691, metadata !105), !dbg !692
  %7 = call i32 @__VERIFIER_nondet_int(), !dbg !693
  store i32 %7, i32* %event, align 4, !dbg !692
  call void @llvm.dbg.declare(metadata i32* %status, metadata !694, metadata !105), !dbg !695
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !696
  store i32 %8, i32* %status, align 4, !dbg !695
  call void @llvm.dbg.declare(metadata i32* %currentBuffer, metadata !697, metadata !105), !dbg !698
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !699
  store i32 %9, i32* %currentBuffer, align 4, !dbg !698
  call void @llvm.dbg.declare(metadata i32* %returnValue, metadata !700, metadata !105), !dbg !701
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp10, metadata !702, metadata !105), !dbg !703
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp11, metadata !704, metadata !105), !dbg !705
  %10 = load i32, i32* %deviceExtension__PlayActive, align 4, !dbg !706
  %11 = icmp ne i32 %10, 0, !dbg !706
  br i1 %11, label %13, label %12, !dbg !709

; <label>:12                                      ; preds = %0
  store i32 0, i32* %1, !dbg !710
  br label %43, !dbg !710

; <label>:13                                      ; preds = %0
  %14 = load i32, i32* %currentBuffer, align 4, !dbg !712
  %15 = icmp eq i32 %14, 0, !dbg !714
  br i1 %15, label %16, label %17, !dbg !715

; <label>:16                                      ; preds = %13
  store i32 0, i32* %1, !dbg !716
  br label %43, !dbg !716

; <label>:17                                      ; preds = %13
  %18 = load i32, i32* %irp_CdAudioIsPlayActive, align 4, !dbg !718
  %19 = icmp eq i32 %18, 0, !dbg !720
  br i1 %19, label %20, label %21, !dbg !721

; <label>:20                                      ; preds = %17
  store i32 0, i32* %1, !dbg !722
  br label %43, !dbg !722

; <label>:21                                      ; preds = %17
  %22 = load i32, i32* %status, align 4, !dbg !724
  %23 = sext i32 %22 to i64, !dbg !726
  store i64 %23, i64* %__cil_tmp10, align 8, !dbg !727
  %24 = load i64, i64* %__cil_tmp10, align 8, !dbg !728
  %25 = icmp eq i64 %24, 259, !dbg !730
  br i1 %25, label %26, label %32, !dbg !731

; <label>:26                                      ; preds = %21
  %27 = load i32, i32* %event, align 4, !dbg !732
  %28 = load i32, i32* @Suspended, align 4, !dbg !735
  %29 = load i32, i32* @KernelMode, align 4, !dbg !736
  %30 = call i32 @KeWaitForSingleObject(i32 %27, i32 %28, i32 %29, i32 0, i32 0), !dbg !737
  %31 = load i32, i32* %ioStatus__Status, align 4, !dbg !738
  store i32 %31, i32* %status, align 4, !dbg !739
  br label %32, !dbg !740

; <label>:32                                      ; preds = %26, %21
  %33 = load i32, i32* %status, align 4, !dbg !741
  %34 = icmp slt i32 %33, 0, !dbg !744
  br i1 %34, label %35, label %36, !dbg !745

; <label>:35                                      ; preds = %32
  store i32 0, i32* %1, !dbg !746
  br label %43, !dbg !746

; <label>:36                                      ; preds = %32
  %37 = load i32, i32* %currentBuffer__Header__AudioStatus, align 4, !dbg !748
  %38 = icmp eq i32 %37, 17, !dbg !750
  br i1 %38, label %39, label %40, !dbg !751

; <label>:39                                      ; preds = %36
  store i32 1, i32* %returnValue, align 4, !dbg !752
  br label %41, !dbg !754

; <label>:40                                      ; preds = %36
  store i32 0, i32* %returnValue, align 4, !dbg !755
  store i32 0, i32* %deviceExtension__PlayActive, align 4, !dbg !757
  br label %41

; <label>:41                                      ; preds = %40, %39
  %42 = load i32, i32* %returnValue, align 4, !dbg !758
  store i32 %42, i32* %1, !dbg !759
  br label %43, !dbg !759

; <label>:43                                      ; preds = %41, %35, %20, %16, %12
  %44 = load i32, i32* %1, !dbg !760
  ret i32 %44, !dbg !760
}

; Function Attrs: nounwind ssp uwtable
define i32 @CdAudio535DeviceControl(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %__cil_tmp4.i.11 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %__cil_tmp4.i.9 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %__cil_tmp4.i.7 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %__cil_tmp4.i.5 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %__cil_tmp4.i.3 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %__cil_tmp4.i.1 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %__cil_tmp4.i = alloca i64, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %Irp__Tail__Overlay__CurrentStackLocation = alloca i32, align 4
  %DeviceObject__DeviceExtension = alloca i32, align 4
  %deviceExtension__TargetDeviceObject = alloca i32, align 4
  %Irp__AssociatedIrp__SystemBuffer = alloca i32, align 4
  %srb__Cdb = alloca i32, align 4
  %currentIrpStack__Parameters__DeviceIoControl__IoControlCode = alloca i32, align 4
  %Irp__IoStatus__Information = alloca i32, align 4
  %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength = alloca i32, align 4
  %currentIrpStack__Parameters__DeviceIoControl__InputBufferLength = alloca i32, align 4
  %srb__CdbLength = alloca i32, align 4
  %cdb__CDB10__OperationCode = alloca i32, align 4
  %srb__TimeOutValue = alloca i32, align 4
  %sizeof__READ_CAPACITY_DATA = alloca i32, align 4
  %lastSession__LogicalBlockAddress = alloca i32, align 4
  %cdaudioDataOut__FirstTrack = alloca i32, align 4
  %cdaudioDataOut__LastTrack = alloca i32, align 4
  %sizeof__CDROM_TOC = alloca i32, align 4
  %sizeof__SUB_Q_CURRENT_POSITION = alloca i32, align 4
  %userPtr__Format = alloca i32, align 4
  %sizeof__CDROM_PLAY_AUDIO_MSF = alloca i32, align 4
  %inputBuffer__StartingM = alloca i32, align 4
  %inputBuffer__EndingM = alloca i32, align 4
  %inputBuffer__StartingS = alloca i32, align 4
  %inputBuffer__EndingS = alloca i32, align 4
  %inputBuffer__StartingF = alloca i32, align 4
  %inputBuffer__EndingF = alloca i32, align 4
  %cdb__PLAY_AUDIO_MSF__OperationCode = alloca i32, align 4
  %sizeof__CDROM_SEEK_AUDIO_MSF = alloca i32, align 4
  %currentIrpStack = alloca i32, align 4
  %deviceExtension = alloca i32, align 4
  %cdaudioDataOut = alloca i32, align 4
  %srb = alloca i32, align 4
  %lastSession = alloca i32, align 4
  %cdb = alloca i32, align 4
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %bytesTransfered = alloca i32, align 4
  %Toc = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp___0 = alloca i32, align 4
  %tmp___1 = alloca i32, align 4
  %tmp___2 = alloca i32, align 4
  %tmp___3 = alloca i32, align 4
  %tmp___4 = alloca i32, align 4
  %tracksToReturn = alloca i32, align 4
  %tracksOnCd = alloca i32, align 4
  %tracksInBuffer = alloca i32, align 4
  %userPtr = alloca i32, align 4
  %SubQPtr = alloca i32, align 4
  %tmp___5 = alloca i32, align 4
  %tmp___6 = alloca i32, align 4
  %inputBuffer = alloca i32, align 4
  %inputBuffer___0 = alloca i32, align 4
  %tmp___7 = alloca i32, align 4
  %tmp___8 = alloca i32, align 4
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
  %__cil_tmp91 = alloca i32, align 4
  %__cil_tmp92 = alloca i32, align 4
  %__cil_tmp93 = alloca i32, align 4
  %__cil_tmp94 = alloca i32, align 4
  %__cil_tmp95 = alloca i32, align 4
  %__cil_tmp96 = alloca i32, align 4
  %__cil_tmp97 = alloca i32, align 4
  %__cil_tmp98 = alloca i32, align 4
  %__cil_tmp99 = alloca i32, align 4
  %__cil_tmp100 = alloca i32, align 4
  %__cil_tmp101 = alloca i32, align 4
  %__cil_tmp102 = alloca i32, align 4
  %__cil_tmp103 = alloca i32, align 4
  %__cil_tmp104 = alloca i32, align 4
  %__cil_tmp105 = alloca i32, align 4
  %__cil_tmp106 = alloca i32, align 4
  %__cil_tmp107 = alloca i64, align 8
  %__cil_tmp108 = alloca i64, align 8
  %__cil_tmp109 = alloca i32, align 4
  %__cil_tmp110 = alloca i32, align 4
  store i32 %DeviceObject, i32* %37, align 4
  call void @llvm.dbg.declare(metadata i32* %37, metadata !761, metadata !105), !dbg !762
  store i32 %Irp, i32* %38, align 4
  call void @llvm.dbg.declare(metadata i32* %38, metadata !763, metadata !105), !dbg !764
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !765, metadata !105), !dbg !766
  %39 = call i32 @__VERIFIER_nondet_int(), !dbg !767
  store i32 %39, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !766
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !768, metadata !105), !dbg !769
  %40 = call i32 @__VERIFIER_nondet_int(), !dbg !770
  store i32 %40, i32* %DeviceObject__DeviceExtension, align 4, !dbg !769
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__TargetDeviceObject, metadata !771, metadata !105), !dbg !772
  %41 = call i32 @__VERIFIER_nondet_int(), !dbg !773
  store i32 %41, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !772
  call void @llvm.dbg.declare(metadata i32* %Irp__AssociatedIrp__SystemBuffer, metadata !774, metadata !105), !dbg !775
  %42 = call i32 @__VERIFIER_nondet_int(), !dbg !776
  store i32 %42, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !775
  call void @llvm.dbg.declare(metadata i32* %srb__Cdb, metadata !777, metadata !105), !dbg !778
  %43 = call i32 @__VERIFIER_nondet_int(), !dbg !779
  store i32 %43, i32* %srb__Cdb, align 4, !dbg !778
  call void @llvm.dbg.declare(metadata i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, metadata !780, metadata !105), !dbg !781
  %44 = call i32 @__VERIFIER_nondet_int(), !dbg !782
  store i32 %44, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !781
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !783, metadata !105), !dbg !784
  call void @llvm.dbg.declare(metadata i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, metadata !785, metadata !105), !dbg !786
  %45 = call i32 @__VERIFIER_nondet_int(), !dbg !787
  store i32 %45, i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !786
  call void @llvm.dbg.declare(metadata i32* %currentIrpStack__Parameters__DeviceIoControl__InputBufferLength, metadata !788, metadata !105), !dbg !789
  %46 = call i32 @__VERIFIER_nondet_int(), !dbg !790
  store i32 %46, i32* %currentIrpStack__Parameters__DeviceIoControl__InputBufferLength, align 4, !dbg !789
  call void @llvm.dbg.declare(metadata i32* %srb__CdbLength, metadata !791, metadata !105), !dbg !792
  call void @llvm.dbg.declare(metadata i32* %cdb__CDB10__OperationCode, metadata !793, metadata !105), !dbg !794
  call void @llvm.dbg.declare(metadata i32* %srb__TimeOutValue, metadata !795, metadata !105), !dbg !796
  call void @llvm.dbg.declare(metadata i32* %sizeof__READ_CAPACITY_DATA, metadata !797, metadata !105), !dbg !798
  %47 = call i32 @__VERIFIER_nondet_int(), !dbg !799
  store i32 %47, i32* %sizeof__READ_CAPACITY_DATA, align 4, !dbg !798
  call void @llvm.dbg.declare(metadata i32* %lastSession__LogicalBlockAddress, metadata !800, metadata !105), !dbg !801
  %48 = call i32 @__VERIFIER_nondet_int(), !dbg !802
  store i32 %48, i32* %lastSession__LogicalBlockAddress, align 4, !dbg !801
  call void @llvm.dbg.declare(metadata i32* %cdaudioDataOut__FirstTrack, metadata !803, metadata !105), !dbg !804
  %49 = call i32 @__VERIFIER_nondet_int(), !dbg !805
  store i32 %49, i32* %cdaudioDataOut__FirstTrack, align 4, !dbg !804
  call void @llvm.dbg.declare(metadata i32* %cdaudioDataOut__LastTrack, metadata !806, metadata !105), !dbg !807
  %50 = call i32 @__VERIFIER_nondet_int(), !dbg !808
  store i32 %50, i32* %cdaudioDataOut__LastTrack, align 4, !dbg !807
  call void @llvm.dbg.declare(metadata i32* %sizeof__CDROM_TOC, metadata !809, metadata !105), !dbg !810
  %51 = call i32 @__VERIFIER_nondet_int(), !dbg !811
  store i32 %51, i32* %sizeof__CDROM_TOC, align 4, !dbg !810
  call void @llvm.dbg.declare(metadata i32* %sizeof__SUB_Q_CURRENT_POSITION, metadata !812, metadata !105), !dbg !813
  %52 = call i32 @__VERIFIER_nondet_int(), !dbg !814
  store i32 %52, i32* %sizeof__SUB_Q_CURRENT_POSITION, align 4, !dbg !813
  call void @llvm.dbg.declare(metadata i32* %userPtr__Format, metadata !815, metadata !105), !dbg !816
  %53 = call i32 @__VERIFIER_nondet_int(), !dbg !817
  store i32 %53, i32* %userPtr__Format, align 4, !dbg !816
  call void @llvm.dbg.declare(metadata i32* %sizeof__CDROM_PLAY_AUDIO_MSF, metadata !818, metadata !105), !dbg !819
  %54 = call i32 @__VERIFIER_nondet_int(), !dbg !820
  store i32 %54, i32* %sizeof__CDROM_PLAY_AUDIO_MSF, align 4, !dbg !819
  call void @llvm.dbg.declare(metadata i32* %inputBuffer__StartingM, metadata !821, metadata !105), !dbg !822
  %55 = call i32 @__VERIFIER_nondet_int(), !dbg !823
  store i32 %55, i32* %inputBuffer__StartingM, align 4, !dbg !822
  call void @llvm.dbg.declare(metadata i32* %inputBuffer__EndingM, metadata !824, metadata !105), !dbg !825
  %56 = call i32 @__VERIFIER_nondet_int(), !dbg !826
  store i32 %56, i32* %inputBuffer__EndingM, align 4, !dbg !825
  call void @llvm.dbg.declare(metadata i32* %inputBuffer__StartingS, metadata !827, metadata !105), !dbg !828
  %57 = call i32 @__VERIFIER_nondet_int(), !dbg !829
  store i32 %57, i32* %inputBuffer__StartingS, align 4, !dbg !828
  call void @llvm.dbg.declare(metadata i32* %inputBuffer__EndingS, metadata !830, metadata !105), !dbg !831
  %58 = call i32 @__VERIFIER_nondet_int(), !dbg !832
  store i32 %58, i32* %inputBuffer__EndingS, align 4, !dbg !831
  call void @llvm.dbg.declare(metadata i32* %inputBuffer__StartingF, metadata !833, metadata !105), !dbg !834
  %59 = call i32 @__VERIFIER_nondet_int(), !dbg !835
  store i32 %59, i32* %inputBuffer__StartingF, align 4, !dbg !834
  call void @llvm.dbg.declare(metadata i32* %inputBuffer__EndingF, metadata !836, metadata !105), !dbg !837
  %60 = call i32 @__VERIFIER_nondet_int(), !dbg !838
  store i32 %60, i32* %inputBuffer__EndingF, align 4, !dbg !837
  call void @llvm.dbg.declare(metadata i32* %cdb__PLAY_AUDIO_MSF__OperationCode, metadata !839, metadata !105), !dbg !840
  %61 = call i32 @__VERIFIER_nondet_int(), !dbg !841
  store i32 %61, i32* %cdb__PLAY_AUDIO_MSF__OperationCode, align 4, !dbg !840
  call void @llvm.dbg.declare(metadata i32* %sizeof__CDROM_SEEK_AUDIO_MSF, metadata !842, metadata !105), !dbg !843
  %62 = call i32 @__VERIFIER_nondet_int(), !dbg !844
  store i32 %62, i32* %sizeof__CDROM_SEEK_AUDIO_MSF, align 4, !dbg !843
  call void @llvm.dbg.declare(metadata i32* %currentIrpStack, metadata !845, metadata !105), !dbg !846
  call void @llvm.dbg.declare(metadata i32* %deviceExtension, metadata !847, metadata !105), !dbg !848
  call void @llvm.dbg.declare(metadata i32* %cdaudioDataOut, metadata !849, metadata !105), !dbg !850
  call void @llvm.dbg.declare(metadata i32* %srb, metadata !851, metadata !105), !dbg !852
  %63 = call i32 @__VERIFIER_nondet_int(), !dbg !853
  store i32 %63, i32* %srb, align 4, !dbg !852
  call void @llvm.dbg.declare(metadata i32* %lastSession, metadata !854, metadata !105), !dbg !855
  %64 = call i32 @__VERIFIER_nondet_int(), !dbg !856
  store i32 %64, i32* %lastSession, align 4, !dbg !855
  call void @llvm.dbg.declare(metadata i32* %cdb, metadata !857, metadata !105), !dbg !858
  call void @llvm.dbg.declare(metadata i32* %status, metadata !859, metadata !105), !dbg !860
  call void @llvm.dbg.declare(metadata i32* %i, metadata !861, metadata !105), !dbg !862
  %65 = call i32 @__VERIFIER_nondet_int(), !dbg !863
  store i32 %65, i32* %i, align 4, !dbg !862
  call void @llvm.dbg.declare(metadata i32* %bytesTransfered, metadata !864, metadata !105), !dbg !865
  %66 = call i32 @__VERIFIER_nondet_int(), !dbg !866
  store i32 %66, i32* %bytesTransfered, align 4, !dbg !865
  call void @llvm.dbg.declare(metadata i32* %Toc, metadata !867, metadata !105), !dbg !868
  %67 = call i32 @__VERIFIER_nondet_int(), !dbg !869
  store i32 %67, i32* %Toc, align 4, !dbg !868
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !870, metadata !105), !dbg !871
  call void @llvm.dbg.declare(metadata i32* %tmp___0, metadata !872, metadata !105), !dbg !873
  call void @llvm.dbg.declare(metadata i32* %tmp___1, metadata !874, metadata !105), !dbg !875
  call void @llvm.dbg.declare(metadata i32* %tmp___2, metadata !876, metadata !105), !dbg !877
  call void @llvm.dbg.declare(metadata i32* %tmp___3, metadata !878, metadata !105), !dbg !879
  call void @llvm.dbg.declare(metadata i32* %tmp___4, metadata !880, metadata !105), !dbg !881
  call void @llvm.dbg.declare(metadata i32* %tracksToReturn, metadata !882, metadata !105), !dbg !883
  call void @llvm.dbg.declare(metadata i32* %tracksOnCd, metadata !884, metadata !105), !dbg !885
  call void @llvm.dbg.declare(metadata i32* %tracksInBuffer, metadata !886, metadata !105), !dbg !887
  call void @llvm.dbg.declare(metadata i32* %userPtr, metadata !888, metadata !105), !dbg !889
  call void @llvm.dbg.declare(metadata i32* %SubQPtr, metadata !890, metadata !105), !dbg !891
  %68 = call i32 @__VERIFIER_nondet_int(), !dbg !892
  store i32 %68, i32* %SubQPtr, align 4, !dbg !891
  call void @llvm.dbg.declare(metadata i32* %tmp___5, metadata !893, metadata !105), !dbg !894
  call void @llvm.dbg.declare(metadata i32* %tmp___6, metadata !895, metadata !105), !dbg !896
  call void @llvm.dbg.declare(metadata i32* %inputBuffer, metadata !897, metadata !105), !dbg !898
  call void @llvm.dbg.declare(metadata i32* %inputBuffer___0, metadata !899, metadata !105), !dbg !900
  call void @llvm.dbg.declare(metadata i32* %tmp___7, metadata !901, metadata !105), !dbg !902
  call void @llvm.dbg.declare(metadata i32* %tmp___8, metadata !903, metadata !105), !dbg !904
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp58, metadata !905, metadata !105), !dbg !906
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp59, metadata !907, metadata !105), !dbg !908
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp60, metadata !909, metadata !105), !dbg !910
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp61, metadata !911, metadata !105), !dbg !912
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp62, metadata !913, metadata !105), !dbg !914
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp63, metadata !915, metadata !105), !dbg !916
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp64, metadata !917, metadata !105), !dbg !918
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp65, metadata !919, metadata !105), !dbg !920
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp66, metadata !921, metadata !105), !dbg !922
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp67, metadata !923, metadata !105), !dbg !924
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp68, metadata !925, metadata !105), !dbg !926
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp69, metadata !927, metadata !105), !dbg !928
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp70, metadata !929, metadata !105), !dbg !930
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp71, metadata !931, metadata !105), !dbg !932
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp72, metadata !933, metadata !105), !dbg !934
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp73, metadata !935, metadata !105), !dbg !936
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp74, metadata !937, metadata !105), !dbg !938
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp75, metadata !939, metadata !105), !dbg !940
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp76, metadata !941, metadata !105), !dbg !942
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp77, metadata !943, metadata !105), !dbg !944
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp78, metadata !945, metadata !105), !dbg !946
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp79, metadata !947, metadata !105), !dbg !948
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp80, metadata !949, metadata !105), !dbg !950
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp81, metadata !951, metadata !105), !dbg !952
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp82, metadata !953, metadata !105), !dbg !954
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp83, metadata !955, metadata !105), !dbg !956
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp84, metadata !957, metadata !105), !dbg !958
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp85, metadata !959, metadata !105), !dbg !960
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp86, metadata !961, metadata !105), !dbg !962
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp87, metadata !963, metadata !105), !dbg !964
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp88, metadata !965, metadata !105), !dbg !966
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp89, metadata !967, metadata !105), !dbg !968
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp90, metadata !969, metadata !105), !dbg !970
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp91, metadata !971, metadata !105), !dbg !972
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp92, metadata !973, metadata !105), !dbg !974
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp93, metadata !975, metadata !105), !dbg !976
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp94, metadata !977, metadata !105), !dbg !978
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp95, metadata !979, metadata !105), !dbg !980
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp96, metadata !981, metadata !105), !dbg !982
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp97, metadata !983, metadata !105), !dbg !984
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp98, metadata !985, metadata !105), !dbg !986
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp99, metadata !987, metadata !105), !dbg !988
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp100, metadata !989, metadata !105), !dbg !990
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp101, metadata !991, metadata !105), !dbg !992
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp102, metadata !993, metadata !105), !dbg !994
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp103, metadata !995, metadata !105), !dbg !996
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp104, metadata !997, metadata !105), !dbg !998
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp105, metadata !999, metadata !105), !dbg !1000
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp106, metadata !1001, metadata !105), !dbg !1002
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp107, metadata !1003, metadata !105), !dbg !1004
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp108, metadata !1005, metadata !105), !dbg !1006
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp109, metadata !1007, metadata !105), !dbg !1008
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp110, metadata !1009, metadata !105), !dbg !1010
  %69 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1011
  store i32 %69, i32* %currentIrpStack, align 4, !dbg !1013
  %70 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !1014
  store i32 %70, i32* %deviceExtension, align 4, !dbg !1015
  %71 = load i32, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !1016
  store i32 %71, i32* %cdaudioDataOut, align 4, !dbg !1017
  %72 = load i32, i32* %srb__Cdb, align 4, !dbg !1018
  store i32 %72, i32* %cdb, align 4, !dbg !1019
  store i32 56, i32* %__cil_tmp58, align 4, !dbg !1020
  store i32 16384, i32* %__cil_tmp59, align 4, !dbg !1020
  store i32 131072, i32* %__cil_tmp60, align 4, !dbg !1020
  store i32 147456, i32* %__cil_tmp61, align 4, !dbg !1020
  store i32 147512, i32* %__cil_tmp62, align 4, !dbg !1020
  %73 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1022
  %74 = load i32, i32* %__cil_tmp62, align 4, !dbg !1024
  %75 = icmp eq i32 %73, %74, !dbg !1025
  call void @llvm.dbg.declare(metadata i32* %31, metadata !388, metadata !105), !dbg !1026
  call void @llvm.dbg.declare(metadata i32* %32, metadata !397, metadata !105), !dbg !1064
  call void @llvm.dbg.declare(metadata i32* %33, metadata !1065, metadata !105), !dbg !1066
  call void @llvm.dbg.declare(metadata i32* %34, metadata !1067, metadata !105), !dbg !1068
  call void @llvm.dbg.declare(metadata i32* %35, metadata !1069, metadata !105), !dbg !1070
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp4.i, metadata !1071, metadata !105), !dbg !1072
  call void @llvm.dbg.declare(metadata i32* %26, metadata !388, metadata !105), !dbg !1073
  call void @llvm.dbg.declare(metadata i32* %27, metadata !397, metadata !105), !dbg !1080
  call void @llvm.dbg.declare(metadata i32* %28, metadata !1065, metadata !105), !dbg !1081
  call void @llvm.dbg.declare(metadata i32* %29, metadata !1067, metadata !105), !dbg !1082
  call void @llvm.dbg.declare(metadata i32* %30, metadata !1069, metadata !105), !dbg !1083
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp4.i.1, metadata !1071, metadata !105), !dbg !1084
  call void @llvm.dbg.declare(metadata i32* %21, metadata !388, metadata !105), !dbg !1085
  call void @llvm.dbg.declare(metadata i32* %22, metadata !397, metadata !105), !dbg !1091
  call void @llvm.dbg.declare(metadata i32* %23, metadata !1065, metadata !105), !dbg !1092
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1067, metadata !105), !dbg !1093
  call void @llvm.dbg.declare(metadata i32* %25, metadata !1069, metadata !105), !dbg !1094
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp4.i.3, metadata !1071, metadata !105), !dbg !1095
  call void @llvm.dbg.declare(metadata i32* %16, metadata !388, metadata !105), !dbg !1096
  call void @llvm.dbg.declare(metadata i32* %17, metadata !397, metadata !105), !dbg !1105
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1065, metadata !105), !dbg !1106
  call void @llvm.dbg.declare(metadata i32* %19, metadata !1067, metadata !105), !dbg !1107
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1069, metadata !105), !dbg !1108
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp4.i.5, metadata !1071, metadata !105), !dbg !1109
  call void @llvm.dbg.declare(metadata i32* %11, metadata !388, metadata !105), !dbg !1110
  call void @llvm.dbg.declare(metadata i32* %12, metadata !397, metadata !105), !dbg !1116
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1065, metadata !105), !dbg !1117
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1067, metadata !105), !dbg !1118
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1069, metadata !105), !dbg !1119
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp4.i.7, metadata !1071, metadata !105), !dbg !1120
  call void @llvm.dbg.declare(metadata i32* %6, metadata !388, metadata !105), !dbg !1121
  call void @llvm.dbg.declare(metadata i32* %7, metadata !397, metadata !105), !dbg !1127
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1065, metadata !105), !dbg !1128
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1067, metadata !105), !dbg !1129
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1069, metadata !105), !dbg !1130
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp4.i.9, metadata !1071, metadata !105), !dbg !1131
  call void @llvm.dbg.declare(metadata i32* %1, metadata !388, metadata !105), !dbg !1132
  call void @llvm.dbg.declare(metadata i32* %2, metadata !397, metadata !105), !dbg !1136
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1065, metadata !105), !dbg !1137
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1067, metadata !105), !dbg !1138
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1069, metadata !105), !dbg !1139
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp4.i.11, metadata !1071, metadata !105), !dbg !1140
  br i1 %75, label %76, label %77, !dbg !1141

; <label>:76                                      ; preds = %0
  br label %125, !dbg !1142

; <label>:77                                      ; preds = %0
  store i32 16384, i32* %__cil_tmp63, align 4, !dbg !1144
  store i32 131072, i32* %__cil_tmp64, align 4, !dbg !1144
  store i32 147456, i32* %__cil_tmp65, align 4, !dbg !1144
  %78 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1145
  %79 = load i32, i32* %__cil_tmp65, align 4, !dbg !1146
  %80 = icmp eq i32 %78, %79, !dbg !1147
  br i1 %80, label %81, label %82, !dbg !1148

; <label>:81                                      ; preds = %77
  br label %215, !dbg !1149

; <label>:82                                      ; preds = %77
  store i32 44, i32* %__cil_tmp66, align 4, !dbg !1151
  store i32 16384, i32* %__cil_tmp67, align 4, !dbg !1151
  store i32 131072, i32* %__cil_tmp68, align 4, !dbg !1151
  store i32 147456, i32* %__cil_tmp69, align 4, !dbg !1151
  store i32 147500, i32* %__cil_tmp70, align 4, !dbg !1151
  %83 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1152
  %84 = load i32, i32* %__cil_tmp70, align 4, !dbg !1153
  %85 = icmp eq i32 %83, %84, !dbg !1154
  br i1 %85, label %86, label %87, !dbg !1155

; <label>:86                                      ; preds = %82
  br label %335, !dbg !1156

; <label>:87                                      ; preds = %82
  store i32 24, i32* %__cil_tmp71, align 4, !dbg !1158
  store i32 16384, i32* %__cil_tmp72, align 4, !dbg !1158
  store i32 131072, i32* %__cil_tmp73, align 4, !dbg !1158
  store i32 147456, i32* %__cil_tmp74, align 4, !dbg !1158
  store i32 147480, i32* %__cil_tmp75, align 4, !dbg !1158
  %88 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1159
  %89 = load i32, i32* %__cil_tmp75, align 4, !dbg !1160
  %90 = icmp eq i32 %88, %89, !dbg !1161
  br i1 %90, label %91, label %92, !dbg !1162

; <label>:91                                      ; preds = %87
  br label %421, !dbg !1163

; <label>:92                                      ; preds = %87
  store i32 4, i32* %__cil_tmp76, align 4, !dbg !1165
  store i32 16384, i32* %__cil_tmp77, align 4, !dbg !1165
  store i32 131072, i32* %__cil_tmp78, align 4, !dbg !1165
  store i32 147456, i32* %__cil_tmp79, align 4, !dbg !1165
  store i32 147460, i32* %__cil_tmp80, align 4, !dbg !1165
  %93 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1166
  %94 = load i32, i32* %__cil_tmp80, align 4, !dbg !1167
  %95 = icmp eq i32 %93, %94, !dbg !1168
  br i1 %95, label %96, label %97, !dbg !1169

; <label>:96                                      ; preds = %92
  br label %454, !dbg !1170

; <label>:97                                      ; preds = %92
  store i32 2056, i32* %__cil_tmp81, align 4, !dbg !1172
  store i32 16384, i32* %__cil_tmp82, align 4, !dbg !1172
  store i32 131072, i32* %__cil_tmp83, align 4, !dbg !1172
  store i32 147456, i32* %__cil_tmp84, align 4, !dbg !1172
  store i32 149512, i32* %__cil_tmp85, align 4, !dbg !1172
  %98 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1173
  %99 = load i32, i32* %__cil_tmp85, align 4, !dbg !1174
  %100 = icmp eq i32 %98, %99, !dbg !1175
  br i1 %100, label %101, label %102, !dbg !1176

; <label>:101                                     ; preds = %97
  br label %468, !dbg !1177

; <label>:102                                     ; preds = %97
  store i32 52, i32* %__cil_tmp86, align 4, !dbg !1179
  store i32 16384, i32* %__cil_tmp87, align 4, !dbg !1179
  store i32 131072, i32* %__cil_tmp88, align 4, !dbg !1179
  store i32 147456, i32* %__cil_tmp89, align 4, !dbg !1179
  store i32 147508, i32* %__cil_tmp90, align 4, !dbg !1179
  %103 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1180
  %104 = load i32, i32* %__cil_tmp90, align 4, !dbg !1181
  %105 = icmp eq i32 %103, %104, !dbg !1182
  br i1 %105, label %106, label %107, !dbg !1183

; <label>:106                                     ; preds = %102
  br label %472, !dbg !1184

; <label>:107                                     ; preds = %102
  store i32 20, i32* %__cil_tmp91, align 4, !dbg !1186
  store i32 16384, i32* %__cil_tmp92, align 4, !dbg !1186
  store i32 131072, i32* %__cil_tmp93, align 4, !dbg !1186
  store i32 147456, i32* %__cil_tmp94, align 4, !dbg !1186
  store i32 147476, i32* %__cil_tmp95, align 4, !dbg !1186
  %108 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1187
  %109 = load i32, i32* %__cil_tmp95, align 4, !dbg !1188
  %110 = icmp eq i32 %108, %109, !dbg !1189
  br i1 %110, label %111, label %112, !dbg !1190

; <label>:111                                     ; preds = %107
  br label %473, !dbg !1191

; <label>:112                                     ; preds = %107
  store i32 40, i32* %__cil_tmp96, align 4, !dbg !1193
  store i32 16384, i32* %__cil_tmp97, align 4, !dbg !1193
  store i32 131072, i32* %__cil_tmp98, align 4, !dbg !1193
  store i32 147456, i32* %__cil_tmp99, align 4, !dbg !1193
  store i32 147496, i32* %__cil_tmp100, align 4, !dbg !1194
  %113 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1195
  %114 = load i32, i32* %__cil_tmp100, align 4, !dbg !1196
  %115 = icmp eq i32 %113, %114, !dbg !1197
  br i1 %115, label %116, label %117, !dbg !1198

; <label>:116                                     ; preds = %112
  br label %474, !dbg !1199

; <label>:117                                     ; preds = %112
  store i32 2048, i32* %__cil_tmp101, align 4, !dbg !1201
  store i32 16384, i32* %__cil_tmp102, align 4, !dbg !1201
  store i32 131072, i32* %__cil_tmp103, align 4, !dbg !1201
  store i32 147456, i32* %__cil_tmp104, align 4, !dbg !1201
  store i32 149504, i32* %__cil_tmp105, align 4, !dbg !1201
  %118 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1202
  %119 = load i32, i32* %__cil_tmp105, align 4, !dbg !1203
  %120 = icmp eq i32 %118, %119, !dbg !1204
  br i1 %120, label %121, label %122, !dbg !1205

; <label>:121                                     ; preds = %117
  br label %475, !dbg !1206

; <label>:122                                     ; preds = %117
  br label %478, !dbg !1208
                                                  ; No predecessors!
  br i1 false, label %124, label %483, !dbg !1209

; <label>:124                                     ; preds = %123
  br label %125, !dbg !1210

; <label>:125                                     ; preds = %124, %76
  %126 = load i32, i32* %37, align 4, !dbg !1211
  %127 = call i32 @CdAudioIsPlayActive(i32 %126), !dbg !1213
  store i32 %127, i32* %tmp, align 4, !dbg !1214
  %128 = load i32, i32* %tmp, align 4, !dbg !1215
  %129 = icmp ne i32 %128, 0, !dbg !1215
  br i1 %129, label %130, label %131, !dbg !1217

; <label>:130                                     ; preds = %125
  store i32 -2147483631, i32* %status, align 4, !dbg !1218
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1220
  br label %484, !dbg !1221

; <label>:131                                     ; preds = %125
  %132 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !1222
  %133 = icmp ne i32 %132, 0, !dbg !1222
  br i1 %133, label %134, label %135, !dbg !1224

; <label>:134                                     ; preds = %131
  store i32 -1073741789, i32* %status, align 4, !dbg !1225
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1227
  br label %484, !dbg !1228

; <label>:135                                     ; preds = %131
  %136 = load i32, i32* %lastSession, align 4, !dbg !1229
  %137 = icmp eq i32 %136, 0, !dbg !1230
  br i1 %137, label %138, label %169, !dbg !1231

; <label>:138                                     ; preds = %135
  store i32 -1073741670, i32* %status, align 4, !dbg !1232
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1233
  %139 = load i32, i32* %status, align 4, !dbg !1234
  %140 = load i32, i32* %38, align 4, !dbg !1235
  %141 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1236
  %142 = bitcast i32* %33 to i8*, !dbg !1237
  call void @llvm.lifetime.start(i64 4, i8* %142), !dbg !1237
  %143 = bitcast i32* %34 to i8*, !dbg !1237
  call void @llvm.lifetime.start(i64 4, i8* %143), !dbg !1237
  %144 = bitcast i32* %35 to i8*, !dbg !1237
  call void @llvm.lifetime.start(i64 4, i8* %144), !dbg !1237
  %145 = bitcast i64* %__cil_tmp4.i to i8*, !dbg !1237
  call void @llvm.lifetime.start(i64 8, i8* %145), !dbg !1237
  store i32 %139, i32* %33, align 4, !dbg !1237
  store i32 %140, i32* %34, align 4, !dbg !1237
  store i32 %141, i32* %35, align 4, !dbg !1237
  %146 = load i32, i32* %33, align 4, !dbg !1238
  %147 = sext i32 %146 to i64, !dbg !1240
  store i64 %147, i64* %__cil_tmp4.i, align 8, !dbg !1241
  %148 = load i64, i64* %__cil_tmp4.i, align 8, !dbg !1242
  %149 = icmp eq i64 %148, -2147483626, !dbg !1244
  br i1 %149, label %150, label %151, !dbg !1245

; <label>:150                                     ; preds = %138
  br label %151, !dbg !1246

; <label>:151                                     ; preds = %150, %138
  %152 = load i32, i32* %33, align 4, !dbg !1248
  store i32 %152, i32* @myStatus, align 4, !dbg !1249
  %153 = load i32, i32* %34, align 4, !dbg !1250
  %154 = bitcast i32* %31 to i8*, !dbg !1251
  call void @llvm.lifetime.start(i64 4, i8* %154) #4, !dbg !1251
  %155 = bitcast i32* %32 to i8*, !dbg !1251
  call void @llvm.lifetime.start(i64 4, i8* %155) #4, !dbg !1251
  store i32 %153, i32* %31, align 4, !dbg !1251
  store i32 0, i32* %32, align 4, !dbg !1251
  %156 = load i32, i32* @s, align 4, !dbg !1252
  %157 = load i32, i32* @NP, align 4, !dbg !1253
  %158 = icmp eq i32 %156, %157, !dbg !1254
  br i1 %158, label %AG_SetStatusAndReturn.exit, label %159, !dbg !1255

; <label>:159                                     ; preds = %151
  call void (...) @__VERIFIER_error() #6, !dbg !1256
  unreachable, !dbg !1256

AG_SetStatusAndReturn.exit:                       ; preds = %151
  %160 = load i32, i32* @DC, align 4, !dbg !1258
  store i32 %160, i32* @s, align 4, !dbg !1259
  %161 = bitcast i32* %31 to i8*, !dbg !1260
  call void @llvm.lifetime.end(i64 4, i8* %161) #4, !dbg !1260
  %162 = bitcast i32* %32 to i8*, !dbg !1260
  call void @llvm.lifetime.end(i64 4, i8* %162) #4, !dbg !1260
  %163 = load i32, i32* %33, align 4, !dbg !1261
  %164 = bitcast i32* %33 to i8*, !dbg !1262
  call void @llvm.lifetime.end(i64 4, i8* %164), !dbg !1262
  %165 = bitcast i32* %34 to i8*, !dbg !1262
  call void @llvm.lifetime.end(i64 4, i8* %165), !dbg !1262
  %166 = bitcast i32* %35 to i8*, !dbg !1262
  call void @llvm.lifetime.end(i64 4, i8* %166), !dbg !1262
  %167 = bitcast i64* %__cil_tmp4.i to i8*, !dbg !1262
  call void @llvm.lifetime.end(i64 8, i8* %167), !dbg !1262
  store i32 %163, i32* %tmp___0, align 4, !dbg !1263
  %168 = load i32, i32* %tmp___0, align 4, !dbg !1264
  store i32 %168, i32* %36, !dbg !1265
  br label %526, !dbg !1265

; <label>:169                                     ; preds = %135
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !1266
  store i32 38, i32* %cdb__CDB10__OperationCode, align 4, !dbg !1268
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !1269
  %170 = load i32, i32* %deviceExtension, align 4, !dbg !1270
  %171 = load i32, i32* %srb, align 4, !dbg !1271
  %172 = load i32, i32* %lastSession, align 4, !dbg !1272
  %173 = load i32, i32* %sizeof__READ_CAPACITY_DATA, align 4, !dbg !1273
  %174 = call i32 @SendSrbSynchronous(i32 %170, i32 %171, i32 %172, i32 %173), !dbg !1274
  store i32 %174, i32* %status, align 4, !dbg !1275
  %175 = load i32, i32* %status, align 4, !dbg !1276
  %176 = icmp slt i32 %175, 0, !dbg !1277
  br i1 %176, label %177, label %208, !dbg !1278

; <label>:177                                     ; preds = %169
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1279
  %178 = load i32, i32* %status, align 4, !dbg !1280
  %179 = load i32, i32* %38, align 4, !dbg !1281
  %180 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1282
  %181 = bitcast i32* %28 to i8*, !dbg !1283
  call void @llvm.lifetime.start(i64 4, i8* %181), !dbg !1283
  %182 = bitcast i32* %29 to i8*, !dbg !1283
  call void @llvm.lifetime.start(i64 4, i8* %182), !dbg !1283
  %183 = bitcast i32* %30 to i8*, !dbg !1283
  call void @llvm.lifetime.start(i64 4, i8* %183), !dbg !1283
  %184 = bitcast i64* %__cil_tmp4.i.1 to i8*, !dbg !1283
  call void @llvm.lifetime.start(i64 8, i8* %184), !dbg !1283
  store i32 %178, i32* %28, align 4, !dbg !1283
  store i32 %179, i32* %29, align 4, !dbg !1283
  store i32 %180, i32* %30, align 4, !dbg !1283
  %185 = load i32, i32* %28, align 4, !dbg !1284
  %186 = sext i32 %185 to i64, !dbg !1285
  store i64 %186, i64* %__cil_tmp4.i.1, align 8, !dbg !1286
  %187 = load i64, i64* %__cil_tmp4.i.1, align 8, !dbg !1287
  %188 = icmp eq i64 %187, -2147483626, !dbg !1288
  br i1 %188, label %189, label %190, !dbg !1289

; <label>:189                                     ; preds = %177
  br label %190, !dbg !1290

; <label>:190                                     ; preds = %189, %177
  %191 = load i32, i32* %28, align 4, !dbg !1291
  store i32 %191, i32* @myStatus, align 4, !dbg !1292
  %192 = load i32, i32* %29, align 4, !dbg !1293
  %193 = bitcast i32* %26 to i8*, !dbg !1294
  call void @llvm.lifetime.start(i64 4, i8* %193) #4, !dbg !1294
  %194 = bitcast i32* %27 to i8*, !dbg !1294
  call void @llvm.lifetime.start(i64 4, i8* %194) #4, !dbg !1294
  store i32 %192, i32* %26, align 4, !dbg !1294
  store i32 0, i32* %27, align 4, !dbg !1294
  %195 = load i32, i32* @s, align 4, !dbg !1295
  %196 = load i32, i32* @NP, align 4, !dbg !1296
  %197 = icmp eq i32 %195, %196, !dbg !1297
  br i1 %197, label %AG_SetStatusAndReturn.exit2, label %198, !dbg !1298

; <label>:198                                     ; preds = %190
  call void (...) @__VERIFIER_error() #6, !dbg !1299
  unreachable, !dbg !1299

AG_SetStatusAndReturn.exit2:                      ; preds = %190
  %199 = load i32, i32* @DC, align 4, !dbg !1301
  store i32 %199, i32* @s, align 4, !dbg !1302
  %200 = bitcast i32* %26 to i8*, !dbg !1303
  call void @llvm.lifetime.end(i64 4, i8* %200) #4, !dbg !1303
  %201 = bitcast i32* %27 to i8*, !dbg !1303
  call void @llvm.lifetime.end(i64 4, i8* %201) #4, !dbg !1303
  %202 = load i32, i32* %28, align 4, !dbg !1304
  %203 = bitcast i32* %28 to i8*, !dbg !1305
  call void @llvm.lifetime.end(i64 4, i8* %203), !dbg !1305
  %204 = bitcast i32* %29 to i8*, !dbg !1305
  call void @llvm.lifetime.end(i64 4, i8* %204), !dbg !1305
  %205 = bitcast i32* %30 to i8*, !dbg !1305
  call void @llvm.lifetime.end(i64 4, i8* %205), !dbg !1305
  %206 = bitcast i64* %__cil_tmp4.i.1 to i8*, !dbg !1305
  call void @llvm.lifetime.end(i64 8, i8* %206), !dbg !1305
  store i32 %202, i32* %tmp___1, align 4, !dbg !1306
  %207 = load i32, i32* %tmp___1, align 4, !dbg !1307
  store i32 %207, i32* %36, !dbg !1308
  br label %526, !dbg !1308

; <label>:208                                     ; preds = %169
  store i32 0, i32* %status, align 4, !dbg !1309
  br label %209

; <label>:209                                     ; preds = %208
  %210 = load i32, i32* %bytesTransfered, align 4, !dbg !1311
  store i32 %210, i32* %Irp__IoStatus__Information, align 4, !dbg !1312
  %211 = load i32, i32* %lastSession__LogicalBlockAddress, align 4, !dbg !1313
  %212 = icmp eq i32 %211, 0, !dbg !1315
  br i1 %212, label %213, label %214, !dbg !1316

; <label>:213                                     ; preds = %209
  br label %484, !dbg !1317

; <label>:214                                     ; preds = %209
  store i32 1, i32* %cdaudioDataOut__FirstTrack, align 4, !dbg !1319
  store i32 2, i32* %cdaudioDataOut__LastTrack, align 4, !dbg !1320
  br label %484, !dbg !1321

; <label>:215                                     ; preds = %81
  %216 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !1322
  %217 = icmp ne i32 %216, 0, !dbg !1322
  br i1 %217, label %218, label %219, !dbg !1324

; <label>:218                                     ; preds = %215
  store i32 -1073741789, i32* %status, align 4, !dbg !1325
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1327
  br label %484, !dbg !1328

; <label>:219                                     ; preds = %215
  %220 = load i32, i32* %37, align 4, !dbg !1329
  %221 = call i32 @CdAudioIsPlayActive(i32 %220), !dbg !1331
  store i32 %221, i32* %tmp___2, align 4, !dbg !1332
  %222 = load i32, i32* %tmp___2, align 4, !dbg !1333
  %223 = icmp ne i32 %222, 0, !dbg !1333
  br i1 %223, label %224, label %225, !dbg !1335

; <label>:224                                     ; preds = %219
  store i32 -2147483631, i32* %status, align 4, !dbg !1336
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1338
  br label %484, !dbg !1339

; <label>:225                                     ; preds = %219
  %226 = load i32, i32* %Toc, align 4, !dbg !1340
  %227 = icmp eq i32 %226, 0, !dbg !1341
  br i1 %227, label %228, label %259, !dbg !1342

; <label>:228                                     ; preds = %225
  store i32 -1073741670, i32* %status, align 4, !dbg !1343
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1344
  %229 = load i32, i32* %status, align 4, !dbg !1345
  %230 = load i32, i32* %38, align 4, !dbg !1346
  %231 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1347
  %232 = bitcast i32* %23 to i8*, !dbg !1348
  call void @llvm.lifetime.start(i64 4, i8* %232), !dbg !1348
  %233 = bitcast i32* %24 to i8*, !dbg !1348
  call void @llvm.lifetime.start(i64 4, i8* %233), !dbg !1348
  %234 = bitcast i32* %25 to i8*, !dbg !1348
  call void @llvm.lifetime.start(i64 4, i8* %234), !dbg !1348
  %235 = bitcast i64* %__cil_tmp4.i.3 to i8*, !dbg !1348
  call void @llvm.lifetime.start(i64 8, i8* %235), !dbg !1348
  store i32 %229, i32* %23, align 4, !dbg !1348
  store i32 %230, i32* %24, align 4, !dbg !1348
  store i32 %231, i32* %25, align 4, !dbg !1348
  %236 = load i32, i32* %23, align 4, !dbg !1349
  %237 = sext i32 %236 to i64, !dbg !1350
  store i64 %237, i64* %__cil_tmp4.i.3, align 8, !dbg !1351
  %238 = load i64, i64* %__cil_tmp4.i.3, align 8, !dbg !1352
  %239 = icmp eq i64 %238, -2147483626, !dbg !1353
  br i1 %239, label %240, label %241, !dbg !1354

; <label>:240                                     ; preds = %228
  br label %241, !dbg !1355

; <label>:241                                     ; preds = %240, %228
  %242 = load i32, i32* %23, align 4, !dbg !1356
  store i32 %242, i32* @myStatus, align 4, !dbg !1357
  %243 = load i32, i32* %24, align 4, !dbg !1358
  %244 = bitcast i32* %21 to i8*, !dbg !1359
  call void @llvm.lifetime.start(i64 4, i8* %244) #4, !dbg !1359
  %245 = bitcast i32* %22 to i8*, !dbg !1359
  call void @llvm.lifetime.start(i64 4, i8* %245) #4, !dbg !1359
  store i32 %243, i32* %21, align 4, !dbg !1359
  store i32 0, i32* %22, align 4, !dbg !1359
  %246 = load i32, i32* @s, align 4, !dbg !1360
  %247 = load i32, i32* @NP, align 4, !dbg !1361
  %248 = icmp eq i32 %246, %247, !dbg !1362
  br i1 %248, label %AG_SetStatusAndReturn.exit4, label %249, !dbg !1363

; <label>:249                                     ; preds = %241
  call void (...) @__VERIFIER_error() #6, !dbg !1364
  unreachable, !dbg !1364

AG_SetStatusAndReturn.exit4:                      ; preds = %241
  %250 = load i32, i32* @DC, align 4, !dbg !1366
  store i32 %250, i32* @s, align 4, !dbg !1367
  %251 = bitcast i32* %21 to i8*, !dbg !1368
  call void @llvm.lifetime.end(i64 4, i8* %251) #4, !dbg !1368
  %252 = bitcast i32* %22 to i8*, !dbg !1368
  call void @llvm.lifetime.end(i64 4, i8* %252) #4, !dbg !1368
  %253 = load i32, i32* %23, align 4, !dbg !1369
  %254 = bitcast i32* %23 to i8*, !dbg !1370
  call void @llvm.lifetime.end(i64 4, i8* %254), !dbg !1370
  %255 = bitcast i32* %24 to i8*, !dbg !1370
  call void @llvm.lifetime.end(i64 4, i8* %255), !dbg !1370
  %256 = bitcast i32* %25 to i8*, !dbg !1370
  call void @llvm.lifetime.end(i64 4, i8* %256), !dbg !1370
  %257 = bitcast i64* %__cil_tmp4.i.3 to i8*, !dbg !1370
  call void @llvm.lifetime.end(i64 8, i8* %257), !dbg !1370
  store i32 %253, i32* %tmp___3, align 4, !dbg !1371
  %258 = load i32, i32* %tmp___3, align 4, !dbg !1372
  store i32 %258, i32* %36, !dbg !1373
  br label %526, !dbg !1373

; <label>:259                                     ; preds = %225
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !1374
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !1376
  %260 = load i32, i32* %deviceExtension, align 4, !dbg !1377
  %261 = load i32, i32* %srb, align 4, !dbg !1378
  %262 = load i32, i32* %Toc, align 4, !dbg !1379
  %263 = load i32, i32* %sizeof__CDROM_TOC, align 4, !dbg !1380
  %264 = call i32 @SendSrbSynchronous(i32 %260, i32 %261, i32 %262, i32 %263), !dbg !1381
  store i32 %264, i32* %status, align 4, !dbg !1382
  %265 = load i32, i32* %status, align 4, !dbg !1383
  %266 = icmp sge i32 %265, 0, !dbg !1384
  br i1 %266, label %267, label %275, !dbg !1385

; <label>:267                                     ; preds = %259
  %268 = load i32, i32* %status, align 4, !dbg !1386
  %269 = sext i32 %268 to i64, !dbg !1389
  store i64 %269, i64* %__cil_tmp107, align 8, !dbg !1390
  %270 = load i64, i64* %__cil_tmp107, align 8, !dbg !1391
  %271 = icmp ne i64 %270, -1073741764, !dbg !1393
  br i1 %271, label %272, label %273, !dbg !1394

; <label>:272                                     ; preds = %267
  store i32 0, i32* %status, align 4, !dbg !1395
  br label %274, !dbg !1397

; <label>:273                                     ; preds = %267
  br label %276, !dbg !1398

; <label>:274                                     ; preds = %272
  br label %313, !dbg !1400

; <label>:275                                     ; preds = %259
  br label %276, !dbg !1401

; <label>:276                                     ; preds = %275, %273
  %277 = load i32, i32* %status, align 4, !dbg !1402
  %278 = sext i32 %277 to i64, !dbg !1403
  store i64 %278, i64* %__cil_tmp108, align 8, !dbg !1404
  %279 = load i64, i64* %__cil_tmp108, align 8, !dbg !1405
  %280 = icmp ne i64 %279, -1073741764, !dbg !1406
  br i1 %280, label %281, label %312, !dbg !1407

; <label>:281                                     ; preds = %276
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1408
  %282 = load i32, i32* %status, align 4, !dbg !1409
  %283 = load i32, i32* %38, align 4, !dbg !1410
  %284 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1411
  %285 = bitcast i32* %18 to i8*, !dbg !1412
  call void @llvm.lifetime.start(i64 4, i8* %285), !dbg !1412
  %286 = bitcast i32* %19 to i8*, !dbg !1412
  call void @llvm.lifetime.start(i64 4, i8* %286), !dbg !1412
  %287 = bitcast i32* %20 to i8*, !dbg !1412
  call void @llvm.lifetime.start(i64 4, i8* %287), !dbg !1412
  %288 = bitcast i64* %__cil_tmp4.i.5 to i8*, !dbg !1412
  call void @llvm.lifetime.start(i64 8, i8* %288), !dbg !1412
  store i32 %282, i32* %18, align 4, !dbg !1412
  store i32 %283, i32* %19, align 4, !dbg !1412
  store i32 %284, i32* %20, align 4, !dbg !1412
  %289 = load i32, i32* %18, align 4, !dbg !1413
  %290 = sext i32 %289 to i64, !dbg !1414
  store i64 %290, i64* %__cil_tmp4.i.5, align 8, !dbg !1415
  %291 = load i64, i64* %__cil_tmp4.i.5, align 8, !dbg !1416
  %292 = icmp eq i64 %291, -2147483626, !dbg !1417
  br i1 %292, label %293, label %294, !dbg !1418

; <label>:293                                     ; preds = %281
  br label %294, !dbg !1419

; <label>:294                                     ; preds = %293, %281
  %295 = load i32, i32* %18, align 4, !dbg !1420
  store i32 %295, i32* @myStatus, align 4, !dbg !1421
  %296 = load i32, i32* %19, align 4, !dbg !1422
  %297 = bitcast i32* %16 to i8*, !dbg !1423
  call void @llvm.lifetime.start(i64 4, i8* %297) #4, !dbg !1423
  %298 = bitcast i32* %17 to i8*, !dbg !1423
  call void @llvm.lifetime.start(i64 4, i8* %298) #4, !dbg !1423
  store i32 %296, i32* %16, align 4, !dbg !1423
  store i32 0, i32* %17, align 4, !dbg !1423
  %299 = load i32, i32* @s, align 4, !dbg !1424
  %300 = load i32, i32* @NP, align 4, !dbg !1425
  %301 = icmp eq i32 %299, %300, !dbg !1426
  br i1 %301, label %AG_SetStatusAndReturn.exit6, label %302, !dbg !1427

; <label>:302                                     ; preds = %294
  call void (...) @__VERIFIER_error() #6, !dbg !1428
  unreachable, !dbg !1428

AG_SetStatusAndReturn.exit6:                      ; preds = %294
  %303 = load i32, i32* @DC, align 4, !dbg !1430
  store i32 %303, i32* @s, align 4, !dbg !1431
  %304 = bitcast i32* %16 to i8*, !dbg !1432
  call void @llvm.lifetime.end(i64 4, i8* %304) #4, !dbg !1432
  %305 = bitcast i32* %17 to i8*, !dbg !1432
  call void @llvm.lifetime.end(i64 4, i8* %305) #4, !dbg !1432
  %306 = load i32, i32* %18, align 4, !dbg !1433
  %307 = bitcast i32* %18 to i8*, !dbg !1434
  call void @llvm.lifetime.end(i64 4, i8* %307), !dbg !1434
  %308 = bitcast i32* %19 to i8*, !dbg !1434
  call void @llvm.lifetime.end(i64 4, i8* %308), !dbg !1434
  %309 = bitcast i32* %20 to i8*, !dbg !1434
  call void @llvm.lifetime.end(i64 4, i8* %309), !dbg !1434
  %310 = bitcast i64* %__cil_tmp4.i.5 to i8*, !dbg !1434
  call void @llvm.lifetime.end(i64 8, i8* %310), !dbg !1434
  store i32 %306, i32* %tmp___4, align 4, !dbg !1435
  %311 = load i32, i32* %tmp___4, align 4, !dbg !1436
  store i32 %311, i32* %36, !dbg !1437
  br label %526, !dbg !1437

; <label>:312                                     ; preds = %276
  br label %313

; <label>:313                                     ; preds = %312, %274
  %314 = load i32, i32* %cdaudioDataOut__LastTrack, align 4, !dbg !1438
  %315 = load i32, i32* %cdaudioDataOut__FirstTrack, align 4, !dbg !1439
  %316 = sub nsw i32 %314, %315, !dbg !1440
  store i32 %316, i32* %__cil_tmp109, align 4, !dbg !1441
  %317 = load i32, i32* %__cil_tmp109, align 4, !dbg !1441
  %318 = add nsw i32 %317, 1, !dbg !1442
  store i32 %318, i32* %tracksOnCd, align 4, !dbg !1443
  %319 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !1444
  store i32 %319, i32* %tracksInBuffer, align 4, !dbg !1445
  %320 = load i32, i32* %tracksInBuffer, align 4, !dbg !1446
  %321 = load i32, i32* %tracksOnCd, align 4, !dbg !1448
  %322 = icmp slt i32 %320, %321, !dbg !1449
  br i1 %322, label %323, label %325, !dbg !1450

; <label>:323                                     ; preds = %313
  %324 = load i32, i32* %tracksInBuffer, align 4, !dbg !1451
  store i32 %324, i32* %tracksToReturn, align 4, !dbg !1453
  br label %327, !dbg !1454

; <label>:325                                     ; preds = %313
  %326 = load i32, i32* %tracksOnCd, align 4, !dbg !1455
  store i32 %326, i32* %tracksToReturn, align 4, !dbg !1457
  br label %327

; <label>:327                                     ; preds = %325, %323
  %328 = load i32, i32* %tracksInBuffer, align 4, !dbg !1458
  %329 = load i32, i32* %tracksOnCd, align 4, !dbg !1460
  %330 = icmp sgt i32 %328, %329, !dbg !1461
  br i1 %330, label %331, label %334, !dbg !1462

; <label>:331                                     ; preds = %327
  %332 = load i32, i32* %i, align 4, !dbg !1463
  %333 = add nsw i32 %332, 1, !dbg !1463
  store i32 %333, i32* %i, align 4, !dbg !1463
  br label %334, !dbg !1465

; <label>:334                                     ; preds = %331, %327
  br label %484, !dbg !1466

; <label>:335                                     ; preds = %86
  %336 = load i32, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !1467
  store i32 %336, i32* %userPtr, align 4, !dbg !1468
  %337 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !1469
  %338 = load i32, i32* %sizeof__SUB_Q_CURRENT_POSITION, align 4, !dbg !1471
  %339 = icmp slt i32 %337, %338, !dbg !1472
  br i1 %339, label %340, label %341, !dbg !1473

; <label>:340                                     ; preds = %335
  store i32 -1073741789, i32* %status, align 4, !dbg !1474
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1476
  br label %484, !dbg !1477

; <label>:341                                     ; preds = %335
  %342 = load i32, i32* %SubQPtr, align 4, !dbg !1478
  %343 = icmp eq i32 %342, 0, !dbg !1479
  br i1 %343, label %344, label %375, !dbg !1480

; <label>:344                                     ; preds = %341
  store i32 -1073741670, i32* %status, align 4, !dbg !1481
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1482
  %345 = load i32, i32* %status, align 4, !dbg !1483
  %346 = load i32, i32* %38, align 4, !dbg !1484
  %347 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1485
  %348 = bitcast i32* %13 to i8*, !dbg !1486
  call void @llvm.lifetime.start(i64 4, i8* %348), !dbg !1486
  %349 = bitcast i32* %14 to i8*, !dbg !1486
  call void @llvm.lifetime.start(i64 4, i8* %349), !dbg !1486
  %350 = bitcast i32* %15 to i8*, !dbg !1486
  call void @llvm.lifetime.start(i64 4, i8* %350), !dbg !1486
  %351 = bitcast i64* %__cil_tmp4.i.7 to i8*, !dbg !1486
  call void @llvm.lifetime.start(i64 8, i8* %351), !dbg !1486
  store i32 %345, i32* %13, align 4, !dbg !1486
  store i32 %346, i32* %14, align 4, !dbg !1486
  store i32 %347, i32* %15, align 4, !dbg !1486
  %352 = load i32, i32* %13, align 4, !dbg !1487
  %353 = sext i32 %352 to i64, !dbg !1488
  store i64 %353, i64* %__cil_tmp4.i.7, align 8, !dbg !1489
  %354 = load i64, i64* %__cil_tmp4.i.7, align 8, !dbg !1490
  %355 = icmp eq i64 %354, -2147483626, !dbg !1491
  br i1 %355, label %356, label %357, !dbg !1492

; <label>:356                                     ; preds = %344
  br label %357, !dbg !1493

; <label>:357                                     ; preds = %356, %344
  %358 = load i32, i32* %13, align 4, !dbg !1494
  store i32 %358, i32* @myStatus, align 4, !dbg !1495
  %359 = load i32, i32* %14, align 4, !dbg !1496
  %360 = bitcast i32* %11 to i8*, !dbg !1497
  call void @llvm.lifetime.start(i64 4, i8* %360) #4, !dbg !1497
  %361 = bitcast i32* %12 to i8*, !dbg !1497
  call void @llvm.lifetime.start(i64 4, i8* %361) #4, !dbg !1497
  store i32 %359, i32* %11, align 4, !dbg !1497
  store i32 0, i32* %12, align 4, !dbg !1497
  %362 = load i32, i32* @s, align 4, !dbg !1498
  %363 = load i32, i32* @NP, align 4, !dbg !1499
  %364 = icmp eq i32 %362, %363, !dbg !1500
  br i1 %364, label %AG_SetStatusAndReturn.exit8, label %365, !dbg !1501

; <label>:365                                     ; preds = %357
  call void (...) @__VERIFIER_error() #6, !dbg !1502
  unreachable, !dbg !1502

AG_SetStatusAndReturn.exit8:                      ; preds = %357
  %366 = load i32, i32* @DC, align 4, !dbg !1504
  store i32 %366, i32* @s, align 4, !dbg !1505
  %367 = bitcast i32* %11 to i8*, !dbg !1506
  call void @llvm.lifetime.end(i64 4, i8* %367) #4, !dbg !1506
  %368 = bitcast i32* %12 to i8*, !dbg !1506
  call void @llvm.lifetime.end(i64 4, i8* %368) #4, !dbg !1506
  %369 = load i32, i32* %13, align 4, !dbg !1507
  %370 = bitcast i32* %13 to i8*, !dbg !1508
  call void @llvm.lifetime.end(i64 4, i8* %370), !dbg !1508
  %371 = bitcast i32* %14 to i8*, !dbg !1508
  call void @llvm.lifetime.end(i64 4, i8* %371), !dbg !1508
  %372 = bitcast i32* %15 to i8*, !dbg !1508
  call void @llvm.lifetime.end(i64 4, i8* %372), !dbg !1508
  %373 = bitcast i64* %__cil_tmp4.i.7 to i8*, !dbg !1508
  call void @llvm.lifetime.end(i64 8, i8* %373), !dbg !1508
  store i32 %369, i32* %tmp___5, align 4, !dbg !1509
  %374 = load i32, i32* %tmp___5, align 4, !dbg !1510
  store i32 %374, i32* %36, !dbg !1511
  br label %526, !dbg !1511

; <label>:375                                     ; preds = %341
  %376 = load i32, i32* %userPtr__Format, align 4, !dbg !1512
  %377 = icmp ne i32 %376, 1, !dbg !1513
  br i1 %377, label %378, label %409, !dbg !1514

; <label>:378                                     ; preds = %375
  store i32 -1073741823, i32* %status, align 4, !dbg !1515
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1516
  %379 = load i32, i32* %status, align 4, !dbg !1517
  %380 = load i32, i32* %38, align 4, !dbg !1518
  %381 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1519
  %382 = bitcast i32* %8 to i8*, !dbg !1520
  call void @llvm.lifetime.start(i64 4, i8* %382), !dbg !1520
  %383 = bitcast i32* %9 to i8*, !dbg !1520
  call void @llvm.lifetime.start(i64 4, i8* %383), !dbg !1520
  %384 = bitcast i32* %10 to i8*, !dbg !1520
  call void @llvm.lifetime.start(i64 4, i8* %384), !dbg !1520
  %385 = bitcast i64* %__cil_tmp4.i.9 to i8*, !dbg !1520
  call void @llvm.lifetime.start(i64 8, i8* %385), !dbg !1520
  store i32 %379, i32* %8, align 4, !dbg !1520
  store i32 %380, i32* %9, align 4, !dbg !1520
  store i32 %381, i32* %10, align 4, !dbg !1520
  %386 = load i32, i32* %8, align 4, !dbg !1521
  %387 = sext i32 %386 to i64, !dbg !1522
  store i64 %387, i64* %__cil_tmp4.i.9, align 8, !dbg !1523
  %388 = load i64, i64* %__cil_tmp4.i.9, align 8, !dbg !1524
  %389 = icmp eq i64 %388, -2147483626, !dbg !1525
  br i1 %389, label %390, label %391, !dbg !1526

; <label>:390                                     ; preds = %378
  br label %391, !dbg !1527

; <label>:391                                     ; preds = %390, %378
  %392 = load i32, i32* %8, align 4, !dbg !1528
  store i32 %392, i32* @myStatus, align 4, !dbg !1529
  %393 = load i32, i32* %9, align 4, !dbg !1530
  %394 = bitcast i32* %6 to i8*, !dbg !1531
  call void @llvm.lifetime.start(i64 4, i8* %394) #4, !dbg !1531
  %395 = bitcast i32* %7 to i8*, !dbg !1531
  call void @llvm.lifetime.start(i64 4, i8* %395) #4, !dbg !1531
  store i32 %393, i32* %6, align 4, !dbg !1531
  store i32 0, i32* %7, align 4, !dbg !1531
  %396 = load i32, i32* @s, align 4, !dbg !1532
  %397 = load i32, i32* @NP, align 4, !dbg !1533
  %398 = icmp eq i32 %396, %397, !dbg !1534
  br i1 %398, label %AG_SetStatusAndReturn.exit10, label %399, !dbg !1535

; <label>:399                                     ; preds = %391
  call void (...) @__VERIFIER_error() #6, !dbg !1536
  unreachable, !dbg !1536

AG_SetStatusAndReturn.exit10:                     ; preds = %391
  %400 = load i32, i32* @DC, align 4, !dbg !1538
  store i32 %400, i32* @s, align 4, !dbg !1539
  %401 = bitcast i32* %6 to i8*, !dbg !1540
  call void @llvm.lifetime.end(i64 4, i8* %401) #4, !dbg !1540
  %402 = bitcast i32* %7 to i8*, !dbg !1540
  call void @llvm.lifetime.end(i64 4, i8* %402) #4, !dbg !1540
  %403 = load i32, i32* %8, align 4, !dbg !1541
  %404 = bitcast i32* %8 to i8*, !dbg !1542
  call void @llvm.lifetime.end(i64 4, i8* %404), !dbg !1542
  %405 = bitcast i32* %9 to i8*, !dbg !1542
  call void @llvm.lifetime.end(i64 4, i8* %405), !dbg !1542
  %406 = bitcast i32* %10 to i8*, !dbg !1542
  call void @llvm.lifetime.end(i64 4, i8* %406), !dbg !1542
  %407 = bitcast i64* %__cil_tmp4.i.9 to i8*, !dbg !1542
  call void @llvm.lifetime.end(i64 8, i8* %407), !dbg !1542
  store i32 %403, i32* %tmp___6, align 4, !dbg !1543
  %408 = load i32, i32* %tmp___6, align 4, !dbg !1544
  store i32 %408, i32* %36, !dbg !1545
  br label %526, !dbg !1545

; <label>:409                                     ; preds = %375
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !1546
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !1548
  %410 = load i32, i32* %deviceExtension, align 4, !dbg !1549
  %411 = load i32, i32* %srb, align 4, !dbg !1550
  %412 = load i32, i32* %SubQPtr, align 4, !dbg !1551
  %413 = load i32, i32* %sizeof__SUB_Q_CURRENT_POSITION, align 4, !dbg !1552
  %414 = call i32 @SendSrbSynchronous(i32 %410, i32 %411, i32 %412, i32 %413), !dbg !1553
  store i32 %414, i32* %status, align 4, !dbg !1554
  %415 = load i32, i32* %status, align 4, !dbg !1555
  %416 = icmp sge i32 %415, 0, !dbg !1557
  br i1 %416, label %417, label %419, !dbg !1558

; <label>:417                                     ; preds = %409
  %418 = load i32, i32* %sizeof__SUB_Q_CURRENT_POSITION, align 4, !dbg !1559
  store i32 %418, i32* %Irp__IoStatus__Information, align 4, !dbg !1561
  br label %420, !dbg !1562

; <label>:419                                     ; preds = %409
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1563
  br label %420

; <label>:420                                     ; preds = %419, %417
  br label %484, !dbg !1565

; <label>:421                                     ; preds = %91
  %422 = load i32, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !1566
  store i32 %422, i32* %inputBuffer, align 4, !dbg !1567
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1568
  %423 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__InputBufferLength, align 4, !dbg !1569
  %424 = load i32, i32* %sizeof__CDROM_PLAY_AUDIO_MSF, align 4, !dbg !1571
  %425 = icmp slt i32 %423, %424, !dbg !1572
  br i1 %425, label %426, label %427, !dbg !1573

; <label>:426                                     ; preds = %421
  store i32 -1073741820, i32* %status, align 4, !dbg !1574
  br label %484, !dbg !1576

; <label>:427                                     ; preds = %421
  %428 = load i32, i32* %inputBuffer__StartingM, align 4, !dbg !1577
  %429 = load i32, i32* %inputBuffer__EndingM, align 4, !dbg !1579
  %430 = icmp eq i32 %428, %429, !dbg !1580
  br i1 %430, label %431, label %442, !dbg !1581

; <label>:431                                     ; preds = %427
  %432 = load i32, i32* %inputBuffer__StartingS, align 4, !dbg !1582
  %433 = load i32, i32* %inputBuffer__EndingS, align 4, !dbg !1585
  %434 = icmp eq i32 %432, %433, !dbg !1586
  br i1 %434, label %435, label %441, !dbg !1587

; <label>:435                                     ; preds = %431
  %436 = load i32, i32* %inputBuffer__StartingF, align 4, !dbg !1588
  %437 = load i32, i32* %inputBuffer__EndingF, align 4, !dbg !1591
  %438 = icmp eq i32 %436, %437, !dbg !1592
  br i1 %438, label %439, label %440, !dbg !1593

; <label>:439                                     ; preds = %435
  br label %440, !dbg !1594

; <label>:440                                     ; preds = %439, %435
  br label %441, !dbg !1596

; <label>:441                                     ; preds = %440, %431
  br label %442, !dbg !1597

; <label>:442                                     ; preds = %441, %427
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !1598
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !1600
  %443 = load i32, i32* %deviceExtension, align 4, !dbg !1601
  %444 = load i32, i32* %srb, align 4, !dbg !1602
  %445 = call i32 @SendSrbSynchronous(i32 %443, i32 %444, i32 0, i32 0), !dbg !1603
  store i32 %445, i32* %status, align 4, !dbg !1604
  %446 = load i32, i32* %status, align 4, !dbg !1605
  %447 = icmp sge i32 %446, 0, !dbg !1607
  br i1 %447, label %448, label %453, !dbg !1608

; <label>:448                                     ; preds = %442
  %449 = load i32, i32* %cdb__PLAY_AUDIO_MSF__OperationCode, align 4, !dbg !1609
  %450 = icmp eq i32 %449, 71, !dbg !1612
  br i1 %450, label %451, label %452, !dbg !1613

; <label>:451                                     ; preds = %448
  br label %452, !dbg !1614

; <label>:452                                     ; preds = %451, %448
  br label %453, !dbg !1616

; <label>:453                                     ; preds = %452, %442
  br label %484, !dbg !1617

; <label>:454                                     ; preds = %96
  %455 = load i32, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !1618
  store i32 %455, i32* %inputBuffer___0, align 4, !dbg !1619
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1620
  %456 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__InputBufferLength, align 4, !dbg !1621
  %457 = load i32, i32* %sizeof__CDROM_SEEK_AUDIO_MSF, align 4, !dbg !1623
  %458 = icmp slt i32 %456, %457, !dbg !1624
  br i1 %458, label %459, label %460, !dbg !1625

; <label>:459                                     ; preds = %454
  store i32 -1073741820, i32* %status, align 4, !dbg !1626
  br label %484, !dbg !1628

; <label>:460                                     ; preds = %454
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !1629
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !1631
  %461 = load i32, i32* %deviceExtension, align 4, !dbg !1632
  %462 = load i32, i32* %srb, align 4, !dbg !1633
  %463 = call i32 @SendSrbSynchronous(i32 %461, i32 %462, i32 0, i32 0), !dbg !1634
  store i32 %463, i32* %status, align 4, !dbg !1635
  %464 = load i32, i32* %status, align 4, !dbg !1636
  %465 = icmp slt i32 %464, 0, !dbg !1639
  br i1 %465, label %466, label %467, !dbg !1640

; <label>:466                                     ; preds = %460
  br label %467, !dbg !1641

; <label>:467                                     ; preds = %466, %460
  br label %484, !dbg !1643

; <label>:468                                     ; preds = %101
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1644
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !1646
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !1647
  %469 = load i32, i32* %deviceExtension, align 4, !dbg !1648
  %470 = load i32, i32* %srb, align 4, !dbg !1649
  %471 = call i32 @SendSrbSynchronous(i32 %469, i32 %470, i32 0, i32 0), !dbg !1650
  store i32 %471, i32* %status, align 4, !dbg !1651
  br label %484, !dbg !1652

; <label>:472                                     ; preds = %106
  br label %473, !dbg !1652

; <label>:473                                     ; preds = %472, %111
  br label %474, !dbg !1652

; <label>:474                                     ; preds = %473, %116
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1653
  store i32 -1073741808, i32* %status, align 4, !dbg !1654
  br label %484, !dbg !1655

; <label>:475                                     ; preds = %121
  %476 = load i32, i32* %37, align 4, !dbg !1656
  %477 = call i32 @CdAudioIsPlayActive(i32 %476), !dbg !1658
  br label %478, !dbg !1659

; <label>:478                                     ; preds = %475, %122
  %479 = load i32, i32* %37, align 4, !dbg !1660
  %480 = load i32, i32* %38, align 4, !dbg !1662
  %481 = call i32 @CdAudioSendToNextDriver(i32 %479, i32 %480), !dbg !1663
  store i32 %481, i32* %tmp___7, align 4, !dbg !1664
  %482 = load i32, i32* %tmp___7, align 4, !dbg !1665
  store i32 %482, i32* %36, !dbg !1666
  br label %526, !dbg !1666

; <label>:483                                     ; preds = %123
  br label %484, !dbg !1667

; <label>:484                                     ; preds = %483, %474, %468, %467, %459, %453, %426, %420, %340, %334, %224, %218, %214, %213, %134, %130
  br label %485

; <label>:485                                     ; preds = %484
  br label %486

; <label>:486                                     ; preds = %485
  br label %487

; <label>:487                                     ; preds = %486
  br label %488

; <label>:488                                     ; preds = %487
  br label %489

; <label>:489                                     ; preds = %488
  br label %490

; <label>:490                                     ; preds = %489
  br label %491

; <label>:491                                     ; preds = %490
  br label %492

; <label>:492                                     ; preds = %491
  br label %493

; <label>:493                                     ; preds = %492
  br label %494

; <label>:494                                     ; preds = %493
  br label %495

; <label>:495                                     ; preds = %494
  %496 = load i32, i32* %status, align 4, !dbg !1668
  %497 = load i32, i32* %38, align 4, !dbg !1669
  %498 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1670
  %499 = bitcast i32* %3 to i8*, !dbg !1671
  call void @llvm.lifetime.start(i64 4, i8* %499), !dbg !1671
  %500 = bitcast i32* %4 to i8*, !dbg !1671
  call void @llvm.lifetime.start(i64 4, i8* %500), !dbg !1671
  %501 = bitcast i32* %5 to i8*, !dbg !1671
  call void @llvm.lifetime.start(i64 4, i8* %501), !dbg !1671
  %502 = bitcast i64* %__cil_tmp4.i.11 to i8*, !dbg !1671
  call void @llvm.lifetime.start(i64 8, i8* %502), !dbg !1671
  store i32 %496, i32* %3, align 4, !dbg !1671
  store i32 %497, i32* %4, align 4, !dbg !1671
  store i32 %498, i32* %5, align 4, !dbg !1671
  %503 = load i32, i32* %3, align 4, !dbg !1672
  %504 = sext i32 %503 to i64, !dbg !1673
  store i64 %504, i64* %__cil_tmp4.i.11, align 8, !dbg !1674
  %505 = load i64, i64* %__cil_tmp4.i.11, align 8, !dbg !1675
  %506 = icmp eq i64 %505, -2147483626, !dbg !1676
  br i1 %506, label %507, label %508, !dbg !1677

; <label>:507                                     ; preds = %495
  br label %508, !dbg !1678

; <label>:508                                     ; preds = %507, %495
  %509 = load i32, i32* %3, align 4, !dbg !1679
  store i32 %509, i32* @myStatus, align 4, !dbg !1680
  %510 = load i32, i32* %4, align 4, !dbg !1681
  %511 = bitcast i32* %1 to i8*, !dbg !1682
  call void @llvm.lifetime.start(i64 4, i8* %511) #4, !dbg !1682
  %512 = bitcast i32* %2 to i8*, !dbg !1682
  call void @llvm.lifetime.start(i64 4, i8* %512) #4, !dbg !1682
  store i32 %510, i32* %1, align 4, !dbg !1682
  store i32 0, i32* %2, align 4, !dbg !1682
  %513 = load i32, i32* @s, align 4, !dbg !1683
  %514 = load i32, i32* @NP, align 4, !dbg !1684
  %515 = icmp eq i32 %513, %514, !dbg !1685
  br i1 %515, label %AG_SetStatusAndReturn.exit12, label %516, !dbg !1686

; <label>:516                                     ; preds = %508
  call void (...) @__VERIFIER_error() #6, !dbg !1687
  unreachable, !dbg !1687

AG_SetStatusAndReturn.exit12:                     ; preds = %508
  %517 = load i32, i32* @DC, align 4, !dbg !1689
  store i32 %517, i32* @s, align 4, !dbg !1690
  %518 = bitcast i32* %1 to i8*, !dbg !1691
  call void @llvm.lifetime.end(i64 4, i8* %518) #4, !dbg !1691
  %519 = bitcast i32* %2 to i8*, !dbg !1691
  call void @llvm.lifetime.end(i64 4, i8* %519) #4, !dbg !1691
  %520 = load i32, i32* %3, align 4, !dbg !1692
  %521 = bitcast i32* %3 to i8*, !dbg !1693
  call void @llvm.lifetime.end(i64 4, i8* %521), !dbg !1693
  %522 = bitcast i32* %4 to i8*, !dbg !1693
  call void @llvm.lifetime.end(i64 4, i8* %522), !dbg !1693
  %523 = bitcast i32* %5 to i8*, !dbg !1693
  call void @llvm.lifetime.end(i64 4, i8* %523), !dbg !1693
  %524 = bitcast i64* %__cil_tmp4.i.11 to i8*, !dbg !1693
  call void @llvm.lifetime.end(i64 8, i8* %524), !dbg !1693
  store i32 %520, i32* %tmp___8, align 4, !dbg !1694
  %525 = load i32, i32* %tmp___8, align 4, !dbg !1695
  store i32 %525, i32* %36, !dbg !1696
  br label %526, !dbg !1696

; <label>:526                                     ; preds = %AG_SetStatusAndReturn.exit12, %478, %AG_SetStatusAndReturn.exit10, %AG_SetStatusAndReturn.exit8, %AG_SetStatusAndReturn.exit6, %AG_SetStatusAndReturn.exit4, %AG_SetStatusAndReturn.exit2, %AG_SetStatusAndReturn.exit
  %527 = load i32, i32* %36, !dbg !1697
  ret i32 %527, !dbg !1697
}

; Function Attrs: nounwind ssp uwtable
define i32 @AG_SetStatusAndReturn(i32 %status, i32 %Irp, i32 %deviceExtension__TargetDeviceObject) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %__cil_tmp4 = alloca i64, align 8
  store i32 %status, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1065, metadata !105), !dbg !1698
  store i32 %Irp, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1067, metadata !105), !dbg !1699
  store i32 %deviceExtension__TargetDeviceObject, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1069, metadata !105), !dbg !1700
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp4, metadata !1071, metadata !105), !dbg !1701
  %6 = load i32, i32* %3, align 4, !dbg !1702
  %7 = sext i32 %6 to i64, !dbg !1703
  store i64 %7, i64* %__cil_tmp4, align 8, !dbg !1704
  %8 = load i64, i64* %__cil_tmp4, align 8, !dbg !1705
  %9 = icmp eq i64 %8, -2147483626, !dbg !1706
  call void @llvm.dbg.declare(metadata i32* %1, metadata !388, metadata !105), !dbg !1707
  call void @llvm.dbg.declare(metadata i32* %2, metadata !397, metadata !105), !dbg !1709
  br i1 %9, label %10, label %11, !dbg !1710

; <label>:10                                      ; preds = %0
  br label %11, !dbg !1711

; <label>:11                                      ; preds = %10, %0
  %12 = load i32, i32* %3, align 4, !dbg !1712
  store i32 %12, i32* @myStatus, align 4, !dbg !1713
  %13 = load i32, i32* %4, align 4, !dbg !1714
  %14 = bitcast i32* %1 to i8*, !dbg !1715
  call void @llvm.lifetime.start(i64 4, i8* %14), !dbg !1715
  %15 = bitcast i32* %2 to i8*, !dbg !1715
  call void @llvm.lifetime.start(i64 4, i8* %15), !dbg !1715
  store i32 %13, i32* %1, align 4, !dbg !1715
  store i32 0, i32* %2, align 4, !dbg !1715
  %16 = load i32, i32* @s, align 4, !dbg !1716
  %17 = load i32, i32* @NP, align 4, !dbg !1717
  %18 = icmp eq i32 %16, %17, !dbg !1718
  br i1 %18, label %IofCompleteRequest.exit, label %19, !dbg !1719

; <label>:19                                      ; preds = %11
  call void (...) @__VERIFIER_error() #6, !dbg !1720
  unreachable, !dbg !1720

IofCompleteRequest.exit:                          ; preds = %11
  %20 = load i32, i32* @DC, align 4, !dbg !1722
  store i32 %20, i32* @s, align 4, !dbg !1723
  %21 = bitcast i32* %1 to i8*, !dbg !1724
  call void @llvm.lifetime.end(i64 4, i8* %21), !dbg !1724
  %22 = bitcast i32* %2 to i8*, !dbg !1724
  call void @llvm.lifetime.end(i64 4, i8* %22), !dbg !1724
  %23 = load i32, i32* %3, align 4, !dbg !1725
  ret i32 %23, !dbg !1726
}

; Function Attrs: nounwind ssp uwtable
define i32 @CdAudio435DeviceControl(i32 %DeviceObject, i32 %Irp) #0 {
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
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %currentIrpStack__Parameters__DeviceIoControl__IoControlCode = alloca i32, align 4
  %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength = alloca i32, align 4
  %currentIrpStack__Parameters__DeviceIoControl__InputBufferLength = alloca i32, align 4
  %TrackData__0 = alloca i32, align 4
  %Irp__IoStatus__Information = alloca i32, align 4
  %srb__TimeOutValue = alloca i32, align 4
  %srb__CdbLength = alloca i32, align 4
  %sizeof__CDROM_TOC = alloca i32, align 4
  %cdaudioDataOut__LastTrack = alloca i32, align 4
  %cdaudioDataOut__FirstTrack = alloca i32, align 4
  %sizeof__CDROM_PLAY_AUDIO_MSF = alloca i32, align 4
  %sizeof__CDROM_SEEK_AUDIO_MSF = alloca i32, align 4
  %deviceExtension__Paused = alloca i32, align 4
  %deviceExtension__PlayActive = alloca i32, align 4
  %sizeof__SUB_Q_CHANNEL_DATA = alloca i32, align 4
  %sizeof__SUB_Q_CURRENT_POSITION = alloca i32, align 4
  %deviceExtension = alloca i32, align 4
  %srb = alloca i32, align 4
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %bytesTransfered = alloca i32, align 4
  %Toc = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tracksToReturn = alloca i32, align 4
  %tracksOnCd = alloca i32, align 4
  %tracksInBuffer = alloca i32, align 4
  %SubQPtr = alloca i32, align 4
  %userPtr__Format = alloca i32, align 4
  %SubQPtr___0 = alloca i32, align 4
  %tmp___0 = alloca i32, align 4
  %tmp___1 = alloca i32, align 4
  %tmp___2 = alloca i32, align 4
  %__cil_tmp35 = alloca i32, align 4
  %__cil_tmp36 = alloca i32, align 4
  %__cil_tmp37 = alloca i32, align 4
  %__cil_tmp38 = alloca i32, align 4
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
  %__cil_tmp91 = alloca i32, align 4
  %__cil_tmp92 = alloca i32, align 4
  %__cil_tmp93 = alloca i64, align 8
  %__cil_tmp94 = alloca i32, align 4
  %__cil_tmp95 = alloca i64, align 8
  %__cil_tmp96 = alloca i64, align 8
  %__cil_tmp97 = alloca i64, align 8
  %__cil_tmp98 = alloca i32, align 4
  %__cil_tmp99 = alloca i32, align 4
  %__cil_tmp100 = alloca i32, align 4
  %__cil_tmp101 = alloca i32, align 4
  %__cil_tmp102 = alloca i32, align 4
  %__cil_tmp103 = alloca i32, align 4
  %__cil_tmp104 = alloca i64, align 8
  %__cil_tmp105 = alloca i64, align 8
  %__cil_tmp106 = alloca i64, align 8
  %__cil_tmp107 = alloca i64, align 8
  %__cil_tmp108 = alloca i32, align 4
  %__cil_tmp109 = alloca i64, align 8
  %__cil_tmp110 = alloca i32, align 4
  %__cil_tmp111 = alloca i64, align 8
  %__cil_tmp112 = alloca i64, align 8
  %__cil_tmp113 = alloca i64, align 8
  %__cil_tmp114 = alloca i64, align 8
  %__cil_tmp115 = alloca i64, align 8
  %__cil_tmp116 = alloca i64, align 8
  store i32 %DeviceObject, i32* %26, align 4
  call void @llvm.dbg.declare(metadata i32* %26, metadata !1727, metadata !105), !dbg !1728
  store i32 %Irp, i32* %27, align 4
  call void @llvm.dbg.declare(metadata i32* %27, metadata !1729, metadata !105), !dbg !1730
  call void @llvm.dbg.declare(metadata i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, metadata !1731, metadata !105), !dbg !1732
  %28 = call i32 @__VERIFIER_nondet_int(), !dbg !1733
  store i32 %28, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1732
  call void @llvm.dbg.declare(metadata i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, metadata !1734, metadata !105), !dbg !1735
  %29 = call i32 @__VERIFIER_nondet_int(), !dbg !1736
  store i32 %29, i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !1735
  call void @llvm.dbg.declare(metadata i32* %currentIrpStack__Parameters__DeviceIoControl__InputBufferLength, metadata !1737, metadata !105), !dbg !1738
  %30 = call i32 @__VERIFIER_nondet_int(), !dbg !1739
  store i32 %30, i32* %currentIrpStack__Parameters__DeviceIoControl__InputBufferLength, align 4, !dbg !1738
  call void @llvm.dbg.declare(metadata i32* %TrackData__0, metadata !1740, metadata !105), !dbg !1741
  %31 = call i32 @__VERIFIER_nondet_int(), !dbg !1742
  store i32 %31, i32* %TrackData__0, align 4, !dbg !1741
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !1743, metadata !105), !dbg !1744
  call void @llvm.dbg.declare(metadata i32* %srb__TimeOutValue, metadata !1745, metadata !105), !dbg !1746
  call void @llvm.dbg.declare(metadata i32* %srb__CdbLength, metadata !1747, metadata !105), !dbg !1748
  call void @llvm.dbg.declare(metadata i32* %sizeof__CDROM_TOC, metadata !1749, metadata !105), !dbg !1750
  %32 = call i32 @__VERIFIER_nondet_int(), !dbg !1751
  store i32 %32, i32* %sizeof__CDROM_TOC, align 4, !dbg !1750
  call void @llvm.dbg.declare(metadata i32* %cdaudioDataOut__LastTrack, metadata !1752, metadata !105), !dbg !1753
  %33 = call i32 @__VERIFIER_nondet_int(), !dbg !1754
  store i32 %33, i32* %cdaudioDataOut__LastTrack, align 4, !dbg !1753
  call void @llvm.dbg.declare(metadata i32* %cdaudioDataOut__FirstTrack, metadata !1755, metadata !105), !dbg !1756
  %34 = call i32 @__VERIFIER_nondet_int(), !dbg !1757
  store i32 %34, i32* %cdaudioDataOut__FirstTrack, align 4, !dbg !1756
  call void @llvm.dbg.declare(metadata i32* %sizeof__CDROM_PLAY_AUDIO_MSF, metadata !1758, metadata !105), !dbg !1759
  %35 = call i32 @__VERIFIER_nondet_int(), !dbg !1760
  store i32 %35, i32* %sizeof__CDROM_PLAY_AUDIO_MSF, align 4, !dbg !1759
  call void @llvm.dbg.declare(metadata i32* %sizeof__CDROM_SEEK_AUDIO_MSF, metadata !1761, metadata !105), !dbg !1762
  %36 = call i32 @__VERIFIER_nondet_int(), !dbg !1763
  store i32 %36, i32* %sizeof__CDROM_SEEK_AUDIO_MSF, align 4, !dbg !1762
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__Paused, metadata !1764, metadata !105), !dbg !1765
  %37 = call i32 @__VERIFIER_nondet_int(), !dbg !1766
  store i32 %37, i32* %deviceExtension__Paused, align 4, !dbg !1765
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__PlayActive, metadata !1767, metadata !105), !dbg !1768
  call void @llvm.dbg.declare(metadata i32* %sizeof__SUB_Q_CHANNEL_DATA, metadata !1769, metadata !105), !dbg !1770
  %38 = call i32 @__VERIFIER_nondet_int(), !dbg !1771
  store i32 %38, i32* %sizeof__SUB_Q_CHANNEL_DATA, align 4, !dbg !1770
  call void @llvm.dbg.declare(metadata i32* %sizeof__SUB_Q_CURRENT_POSITION, metadata !1772, metadata !105), !dbg !1773
  %39 = call i32 @__VERIFIER_nondet_int(), !dbg !1774
  store i32 %39, i32* %sizeof__SUB_Q_CURRENT_POSITION, align 4, !dbg !1773
  call void @llvm.dbg.declare(metadata i32* %deviceExtension, metadata !1775, metadata !105), !dbg !1776
  %40 = call i32 @__VERIFIER_nondet_int(), !dbg !1777
  store i32 %40, i32* %deviceExtension, align 4, !dbg !1776
  call void @llvm.dbg.declare(metadata i32* %srb, metadata !1778, metadata !105), !dbg !1779
  %41 = call i32 @__VERIFIER_nondet_int(), !dbg !1780
  store i32 %41, i32* %srb, align 4, !dbg !1779
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1781, metadata !105), !dbg !1782
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1783, metadata !105), !dbg !1784
  %42 = call i32 @__VERIFIER_nondet_int(), !dbg !1785
  store i32 %42, i32* %i, align 4, !dbg !1784
  call void @llvm.dbg.declare(metadata i32* %bytesTransfered, metadata !1786, metadata !105), !dbg !1787
  call void @llvm.dbg.declare(metadata i32* %Toc, metadata !1788, metadata !105), !dbg !1789
  %43 = call i32 @__VERIFIER_nondet_int(), !dbg !1790
  store i32 %43, i32* %Toc, align 4, !dbg !1789
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !1791, metadata !105), !dbg !1792
  call void @llvm.dbg.declare(metadata i32* %tracksToReturn, metadata !1793, metadata !105), !dbg !1794
  call void @llvm.dbg.declare(metadata i32* %tracksOnCd, metadata !1795, metadata !105), !dbg !1796
  call void @llvm.dbg.declare(metadata i32* %tracksInBuffer, metadata !1797, metadata !105), !dbg !1798
  call void @llvm.dbg.declare(metadata i32* %SubQPtr, metadata !1799, metadata !105), !dbg !1800
  %44 = call i32 @__VERIFIER_nondet_int(), !dbg !1801
  store i32 %44, i32* %SubQPtr, align 4, !dbg !1800
  call void @llvm.dbg.declare(metadata i32* %userPtr__Format, metadata !1802, metadata !105), !dbg !1803
  %45 = call i32 @__VERIFIER_nondet_int(), !dbg !1804
  store i32 %45, i32* %userPtr__Format, align 4, !dbg !1803
  call void @llvm.dbg.declare(metadata i32* %SubQPtr___0, metadata !1805, metadata !105), !dbg !1806
  %46 = call i32 @__VERIFIER_nondet_int(), !dbg !1807
  store i32 %46, i32* %SubQPtr___0, align 4, !dbg !1806
  call void @llvm.dbg.declare(metadata i32* %tmp___0, metadata !1808, metadata !105), !dbg !1809
  call void @llvm.dbg.declare(metadata i32* %tmp___1, metadata !1810, metadata !105), !dbg !1811
  call void @llvm.dbg.declare(metadata i32* %tmp___2, metadata !1812, metadata !105), !dbg !1813
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp35, metadata !1814, metadata !105), !dbg !1815
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp36, metadata !1816, metadata !105), !dbg !1817
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp37, metadata !1818, metadata !105), !dbg !1819
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp38, metadata !1820, metadata !105), !dbg !1821
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp39, metadata !1822, metadata !105), !dbg !1823
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp40, metadata !1824, metadata !105), !dbg !1825
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp41, metadata !1826, metadata !105), !dbg !1827
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp42, metadata !1828, metadata !105), !dbg !1829
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp43, metadata !1830, metadata !105), !dbg !1831
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp44, metadata !1832, metadata !105), !dbg !1833
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp45, metadata !1834, metadata !105), !dbg !1835
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp46, metadata !1836, metadata !105), !dbg !1837
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp47, metadata !1838, metadata !105), !dbg !1839
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp48, metadata !1840, metadata !105), !dbg !1841
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp49, metadata !1842, metadata !105), !dbg !1843
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp50, metadata !1844, metadata !105), !dbg !1845
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp51, metadata !1846, metadata !105), !dbg !1847
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp52, metadata !1848, metadata !105), !dbg !1849
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp53, metadata !1850, metadata !105), !dbg !1851
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp54, metadata !1852, metadata !105), !dbg !1853
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp55, metadata !1854, metadata !105), !dbg !1855
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp56, metadata !1856, metadata !105), !dbg !1857
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp57, metadata !1858, metadata !105), !dbg !1859
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp58, metadata !1860, metadata !105), !dbg !1861
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp59, metadata !1862, metadata !105), !dbg !1863
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp60, metadata !1864, metadata !105), !dbg !1865
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp61, metadata !1866, metadata !105), !dbg !1867
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp62, metadata !1868, metadata !105), !dbg !1869
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp63, metadata !1870, metadata !105), !dbg !1871
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp64, metadata !1872, metadata !105), !dbg !1873
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp65, metadata !1874, metadata !105), !dbg !1875
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp66, metadata !1876, metadata !105), !dbg !1877
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp67, metadata !1878, metadata !105), !dbg !1879
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp68, metadata !1880, metadata !105), !dbg !1881
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp69, metadata !1882, metadata !105), !dbg !1883
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp70, metadata !1884, metadata !105), !dbg !1885
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp71, metadata !1886, metadata !105), !dbg !1887
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp72, metadata !1888, metadata !105), !dbg !1889
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp73, metadata !1890, metadata !105), !dbg !1891
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp74, metadata !1892, metadata !105), !dbg !1893
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp75, metadata !1894, metadata !105), !dbg !1895
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp76, metadata !1896, metadata !105), !dbg !1897
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp77, metadata !1898, metadata !105), !dbg !1899
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp78, metadata !1900, metadata !105), !dbg !1901
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp79, metadata !1902, metadata !105), !dbg !1903
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp80, metadata !1904, metadata !105), !dbg !1905
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp81, metadata !1906, metadata !105), !dbg !1907
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp82, metadata !1908, metadata !105), !dbg !1909
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp83, metadata !1910, metadata !105), !dbg !1911
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp84, metadata !1912, metadata !105), !dbg !1913
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp85, metadata !1914, metadata !105), !dbg !1915
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp86, metadata !1916, metadata !105), !dbg !1917
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp87, metadata !1918, metadata !105), !dbg !1919
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp88, metadata !1920, metadata !105), !dbg !1921
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp89, metadata !1922, metadata !105), !dbg !1923
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp90, metadata !1924, metadata !105), !dbg !1925
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp91, metadata !1926, metadata !105), !dbg !1927
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp92, metadata !1928, metadata !105), !dbg !1929
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp93, metadata !1930, metadata !105), !dbg !1931
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp94, metadata !1932, metadata !105), !dbg !1933
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp95, metadata !1934, metadata !105), !dbg !1935
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp96, metadata !1936, metadata !105), !dbg !1937
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp97, metadata !1938, metadata !105), !dbg !1939
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp98, metadata !1940, metadata !105), !dbg !1941
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp99, metadata !1942, metadata !105), !dbg !1943
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp100, metadata !1944, metadata !105), !dbg !1945
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp101, metadata !1946, metadata !105), !dbg !1947
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp102, metadata !1948, metadata !105), !dbg !1949
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp103, metadata !1950, metadata !105), !dbg !1951
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp104, metadata !1952, metadata !105), !dbg !1953
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp105, metadata !1954, metadata !105), !dbg !1955
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp106, metadata !1956, metadata !105), !dbg !1957
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp107, metadata !1958, metadata !105), !dbg !1959
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp108, metadata !1960, metadata !105), !dbg !1961
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp109, metadata !1962, metadata !105), !dbg !1963
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp110, metadata !1964, metadata !105), !dbg !1965
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp111, metadata !1966, metadata !105), !dbg !1967
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp112, metadata !1968, metadata !105), !dbg !1969
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp113, metadata !1970, metadata !105), !dbg !1971
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp114, metadata !1972, metadata !105), !dbg !1973
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp115, metadata !1974, metadata !105), !dbg !1975
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp116, metadata !1976, metadata !105), !dbg !1977
  store i32 16384, i32* %__cil_tmp35, align 4, !dbg !1978
  store i32 131072, i32* %__cil_tmp36, align 4, !dbg !1978
  store i32 147456, i32* %__cil_tmp37, align 4, !dbg !1978
  %47 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1981
  %48 = load i32, i32* %__cil_tmp37, align 4, !dbg !1983
  %49 = icmp eq i32 %47, %48, !dbg !1984
  call void @llvm.dbg.declare(metadata i32* %23, metadata !388, metadata !105), !dbg !1985
  call void @llvm.dbg.declare(metadata i32* %24, metadata !397, metadata !105), !dbg !2026
  call void @llvm.dbg.declare(metadata i32* %21, metadata !388, metadata !105), !dbg !2027
  call void @llvm.dbg.declare(metadata i32* %22, metadata !397, metadata !105), !dbg !2039
  call void @llvm.dbg.declare(metadata i32* %19, metadata !388, metadata !105), !dbg !2040
  call void @llvm.dbg.declare(metadata i32* %20, metadata !397, metadata !105), !dbg !2046
  call void @llvm.dbg.declare(metadata i32* %17, metadata !388, metadata !105), !dbg !2047
  call void @llvm.dbg.declare(metadata i32* %18, metadata !397, metadata !105), !dbg !2052
  call void @llvm.dbg.declare(metadata i32* %15, metadata !388, metadata !105), !dbg !2053
  call void @llvm.dbg.declare(metadata i32* %16, metadata !397, metadata !105), !dbg !2058
  call void @llvm.dbg.declare(metadata i32* %13, metadata !388, metadata !105), !dbg !2059
  call void @llvm.dbg.declare(metadata i32* %14, metadata !397, metadata !105), !dbg !2065
  call void @llvm.dbg.declare(metadata i32* %11, metadata !388, metadata !105), !dbg !2066
  call void @llvm.dbg.declare(metadata i32* %12, metadata !397, metadata !105), !dbg !2072
  call void @llvm.dbg.declare(metadata i32* %9, metadata !388, metadata !105), !dbg !2073
  call void @llvm.dbg.declare(metadata i32* %10, metadata !397, metadata !105), !dbg !2078
  call void @llvm.dbg.declare(metadata i32* %7, metadata !388, metadata !105), !dbg !2079
  call void @llvm.dbg.declare(metadata i32* %8, metadata !397, metadata !105), !dbg !2084
  call void @llvm.dbg.declare(metadata i32* %5, metadata !388, metadata !105), !dbg !2085
  call void @llvm.dbg.declare(metadata i32* %6, metadata !397, metadata !105), !dbg !2090
  call void @llvm.dbg.declare(metadata i32* %3, metadata !388, metadata !105), !dbg !2091
  call void @llvm.dbg.declare(metadata i32* %4, metadata !397, metadata !105), !dbg !2096
  call void @llvm.dbg.declare(metadata i32* %1, metadata !388, metadata !105), !dbg !2097
  call void @llvm.dbg.declare(metadata i32* %2, metadata !397, metadata !105), !dbg !2100
  br i1 %49, label %50, label %51, !dbg !2101

; <label>:50                                      ; preds = %0
  br label %109, !dbg !2102

; <label>:51                                      ; preds = %0
  store i32 24, i32* %__cil_tmp38, align 4, !dbg !2104
  store i32 16384, i32* %__cil_tmp39, align 4, !dbg !2104
  store i32 131072, i32* %__cil_tmp40, align 4, !dbg !2104
  store i32 147456, i32* %__cil_tmp41, align 4, !dbg !2104
  store i32 147480, i32* %__cil_tmp42, align 4, !dbg !2104
  %52 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2105
  %53 = load i32, i32* %__cil_tmp42, align 4, !dbg !2106
  %54 = icmp eq i32 %52, %53, !dbg !2107
  br i1 %54, label %55, label %56, !dbg !2108

; <label>:55                                      ; preds = %51
  br label %215, !dbg !2109

; <label>:56                                      ; preds = %51
  store i32 8, i32* %__cil_tmp43, align 4, !dbg !2111
  store i32 16384, i32* %__cil_tmp44, align 4, !dbg !2111
  store i32 131072, i32* %__cil_tmp45, align 4, !dbg !2111
  store i32 147456, i32* %__cil_tmp46, align 4, !dbg !2111
  store i32 147464, i32* %__cil_tmp47, align 4, !dbg !2111
  %57 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2112
  %58 = load i32, i32* %__cil_tmp47, align 4, !dbg !2113
  %59 = icmp eq i32 %57, %58, !dbg !2114
  br i1 %59, label %60, label %61, !dbg !2115

; <label>:60                                      ; preds = %56
  br label %216, !dbg !2116

; <label>:61                                      ; preds = %56
  store i32 4, i32* %__cil_tmp48, align 4, !dbg !2118
  store i32 16384, i32* %__cil_tmp49, align 4, !dbg !2118
  store i32 131072, i32* %__cil_tmp50, align 4, !dbg !2118
  store i32 147456, i32* %__cil_tmp51, align 4, !dbg !2118
  store i32 147460, i32* %__cil_tmp52, align 4, !dbg !2118
  %62 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2119
  %63 = load i32, i32* %__cil_tmp52, align 4, !dbg !2120
  %64 = icmp eq i32 %62, %63, !dbg !2121
  br i1 %64, label %65, label %66, !dbg !2122

; <label>:65                                      ; preds = %61
  br label %259, !dbg !2123

; <label>:66                                      ; preds = %61
  store i32 12, i32* %__cil_tmp53, align 4, !dbg !2125
  store i32 16384, i32* %__cil_tmp54, align 4, !dbg !2125
  store i32 131072, i32* %__cil_tmp55, align 4, !dbg !2125
  store i32 147456, i32* %__cil_tmp56, align 4, !dbg !2125
  store i32 147468, i32* %__cil_tmp57, align 4, !dbg !2125
  %67 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2126
  %68 = load i32, i32* %__cil_tmp57, align 4, !dbg !2127
  %69 = icmp eq i32 %67, %68, !dbg !2128
  br i1 %69, label %70, label %71, !dbg !2129

; <label>:70                                      ; preds = %66
  br label %278, !dbg !2130

; <label>:71                                      ; preds = %66
  store i32 16, i32* %__cil_tmp58, align 4, !dbg !2132
  store i32 16384, i32* %__cil_tmp59, align 4, !dbg !2132
  store i32 131072, i32* %__cil_tmp60, align 4, !dbg !2132
  store i32 147456, i32* %__cil_tmp61, align 4, !dbg !2132
  store i32 147472, i32* %__cil_tmp62, align 4, !dbg !2132
  %72 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2133
  %73 = load i32, i32* %__cil_tmp62, align 4, !dbg !2134
  %74 = icmp eq i32 %72, %73, !dbg !2135
  br i1 %74, label %75, label %76, !dbg !2136

; <label>:75                                      ; preds = %71
  br label %375, !dbg !2137

; <label>:76                                      ; preds = %71
  store i32 44, i32* %__cil_tmp63, align 4, !dbg !2139
  store i32 16384, i32* %__cil_tmp64, align 4, !dbg !2139
  store i32 131072, i32* %__cil_tmp65, align 4, !dbg !2139
  store i32 147456, i32* %__cil_tmp66, align 4, !dbg !2139
  store i32 147500, i32* %__cil_tmp67, align 4, !dbg !2139
  %77 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2140
  %78 = load i32, i32* %__cil_tmp67, align 4, !dbg !2141
  %79 = icmp eq i32 %77, %78, !dbg !2142
  br i1 %79, label %80, label %81, !dbg !2143

; <label>:80                                      ; preds = %76
  br label %405, !dbg !2144

; <label>:81                                      ; preds = %76
  store i32 2056, i32* %__cil_tmp68, align 4, !dbg !2146
  store i32 16384, i32* %__cil_tmp69, align 4, !dbg !2146
  store i32 131072, i32* %__cil_tmp70, align 4, !dbg !2146
  store i32 147456, i32* %__cil_tmp71, align 4, !dbg !2146
  store i32 149512, i32* %__cil_tmp72, align 4, !dbg !2146
  %82 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2147
  %83 = load i32, i32* %__cil_tmp72, align 4, !dbg !2148
  %84 = icmp eq i32 %82, %83, !dbg !2149
  br i1 %84, label %85, label %86, !dbg !2150

; <label>:85                                      ; preds = %81
  br label %470, !dbg !2151

; <label>:86                                      ; preds = %81
  store i32 52, i32* %__cil_tmp73, align 4, !dbg !2153
  store i32 16384, i32* %__cil_tmp74, align 4, !dbg !2153
  store i32 131072, i32* %__cil_tmp75, align 4, !dbg !2153
  store i32 147456, i32* %__cil_tmp76, align 4, !dbg !2153
  store i32 147508, i32* %__cil_tmp77, align 4, !dbg !2153
  %87 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2154
  %88 = load i32, i32* %__cil_tmp77, align 4, !dbg !2155
  %89 = icmp eq i32 %87, %88, !dbg !2156
  br i1 %89, label %90, label %91, !dbg !2157

; <label>:90                                      ; preds = %86
  br label %474, !dbg !2158

; <label>:91                                      ; preds = %86
  store i32 20, i32* %__cil_tmp78, align 4, !dbg !2160
  store i32 16384, i32* %__cil_tmp79, align 4, !dbg !2160
  store i32 131072, i32* %__cil_tmp80, align 4, !dbg !2160
  store i32 147456, i32* %__cil_tmp81, align 4, !dbg !2160
  store i32 147476, i32* %__cil_tmp82, align 4, !dbg !2160
  %92 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2161
  %93 = load i32, i32* %__cil_tmp82, align 4, !dbg !2162
  %94 = icmp eq i32 %92, %93, !dbg !2163
  br i1 %94, label %95, label %96, !dbg !2164

; <label>:95                                      ; preds = %91
  br label %475, !dbg !2165

; <label>:96                                      ; preds = %91
  store i32 40, i32* %__cil_tmp83, align 4, !dbg !2167
  store i32 16384, i32* %__cil_tmp84, align 4, !dbg !2167
  store i32 131072, i32* %__cil_tmp85, align 4, !dbg !2167
  store i32 147456, i32* %__cil_tmp86, align 4, !dbg !2167
  store i32 147496, i32* %__cil_tmp87, align 4, !dbg !2167
  %97 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2168
  %98 = load i32, i32* %__cil_tmp87, align 4, !dbg !2169
  %99 = icmp eq i32 %97, %98, !dbg !2170
  br i1 %99, label %100, label %101, !dbg !2171

; <label>:100                                     ; preds = %96
  br label %476, !dbg !2172

; <label>:101                                     ; preds = %96
  store i32 2048, i32* %__cil_tmp88, align 4, !dbg !2174
  store i32 16384, i32* %__cil_tmp89, align 4, !dbg !2174
  store i32 131072, i32* %__cil_tmp90, align 4, !dbg !2174
  store i32 147456, i32* %__cil_tmp91, align 4, !dbg !2174
  store i32 149504, i32* %__cil_tmp92, align 4, !dbg !2174
  %102 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2175
  %103 = load i32, i32* %__cil_tmp92, align 4, !dbg !2176
  %104 = icmp eq i32 %102, %103, !dbg !2177
  br i1 %104, label %105, label %106, !dbg !2178

; <label>:105                                     ; preds = %101
  br label %477, !dbg !2179

; <label>:106                                     ; preds = %101
  br label %506, !dbg !2181
                                                  ; No predecessors!
  br i1 false, label %108, label %511, !dbg !2182

; <label>:108                                     ; preds = %107
  br label %109, !dbg !2183

; <label>:109                                     ; preds = %108, %50
  %110 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !2184
  %111 = load i32, i32* %TrackData__0, align 4, !dbg !2186
  %112 = icmp slt i32 %110, %111, !dbg !2187
  br i1 %112, label %113, label %114, !dbg !2188

; <label>:113                                     ; preds = %109
  store i32 -1073741789, i32* %status, align 4, !dbg !2189
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2191
  br label %512, !dbg !2192

; <label>:114                                     ; preds = %109
  %115 = load i32, i32* %26, align 4, !dbg !2193
  %116 = call i32 @CdAudioIsPlayActive(i32 %115), !dbg !2195
  store i32 %116, i32* %tmp, align 4, !dbg !2196
  %117 = load i32, i32* %tmp, align 4, !dbg !2197
  %118 = icmp ne i32 %117, 0, !dbg !2197
  br i1 %118, label %119, label %120, !dbg !2199

; <label>:119                                     ; preds = %114
  store i32 -2147483631, i32* %status, align 4, !dbg !2200
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2202
  br label %512, !dbg !2203

; <label>:120                                     ; preds = %114
  %121 = load i32, i32* %Toc, align 4, !dbg !2204
  %122 = icmp eq i32 %121, 0, !dbg !2205
  br i1 %122, label %123, label %142, !dbg !2206

; <label>:123                                     ; preds = %120
  store i32 -1073741670, i32* %status, align 4, !dbg !2207
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2208
  %124 = load i32, i32* %status, align 4, !dbg !2209
  %125 = sext i32 %124 to i64, !dbg !2211
  store i64 %125, i64* %__cil_tmp93, align 8, !dbg !2212
  %126 = load i64, i64* %__cil_tmp93, align 8, !dbg !2213
  %127 = icmp eq i64 %126, -2147483626, !dbg !2215
  br i1 %127, label %128, label %129, !dbg !2216

; <label>:128                                     ; preds = %123
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2217
  br label %129, !dbg !2219

; <label>:129                                     ; preds = %128, %123
  %130 = load i32, i32* %status, align 4, !dbg !2220
  store i32 %130, i32* @myStatus, align 4, !dbg !2221
  %131 = load i32, i32* %27, align 4, !dbg !2222
  %132 = bitcast i32* %23 to i8*, !dbg !2223
  call void @llvm.lifetime.start(i64 4, i8* %132), !dbg !2223
  %133 = bitcast i32* %24 to i8*, !dbg !2223
  call void @llvm.lifetime.start(i64 4, i8* %133), !dbg !2223
  store i32 %131, i32* %23, align 4, !dbg !2223
  store i32 0, i32* %24, align 4, !dbg !2223
  %134 = load i32, i32* @s, align 4, !dbg !2224
  %135 = load i32, i32* @NP, align 4, !dbg !2225
  %136 = icmp eq i32 %134, %135, !dbg !2226
  br i1 %136, label %IofCompleteRequest.exit, label %137, !dbg !2227

; <label>:137                                     ; preds = %129
  call void (...) @__VERIFIER_error() #6, !dbg !2228
  unreachable, !dbg !2228

IofCompleteRequest.exit:                          ; preds = %129
  %138 = load i32, i32* @DC, align 4, !dbg !2230
  store i32 %138, i32* @s, align 4, !dbg !2231
  %139 = bitcast i32* %23 to i8*, !dbg !2232
  call void @llvm.lifetime.end(i64 4, i8* %139), !dbg !2232
  %140 = bitcast i32* %24 to i8*, !dbg !2232
  call void @llvm.lifetime.end(i64 4, i8* %140), !dbg !2232
  %141 = load i32, i32* %status, align 4, !dbg !2233
  store i32 %141, i32* %25, !dbg !2234
  br label %544, !dbg !2234

; <label>:142                                     ; preds = %120
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !2235
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !2237
  %143 = load i32, i32* %deviceExtension, align 4, !dbg !2238
  %144 = load i32, i32* %srb, align 4, !dbg !2239
  %145 = load i32, i32* %Toc, align 4, !dbg !2240
  %146 = load i32, i32* %sizeof__CDROM_TOC, align 4, !dbg !2241
  %147 = call i32 @SendSrbSynchronous(i32 %143, i32 %144, i32 %145, i32 %146), !dbg !2242
  store i32 %147, i32* %status, align 4, !dbg !2243
  %148 = load i32, i32* %status, align 4, !dbg !2244
  %149 = icmp slt i32 %148, 0, !dbg !2245
  br i1 %149, label %150, label %182, !dbg !2246

; <label>:150                                     ; preds = %142
  %151 = load i32, i32* %status, align 4, !dbg !2247
  %152 = sext i32 %151 to i64, !dbg !2248
  store i64 %152, i64* %__cil_tmp95, align 8, !dbg !2249
  %153 = load i64, i64* %__cil_tmp95, align 8, !dbg !2250
  %154 = icmp ne i64 %153, -1073741764, !dbg !2251
  br i1 %154, label %155, label %180, !dbg !2252

; <label>:155                                     ; preds = %150
  %156 = load i32, i32* %status, align 4, !dbg !2253
  %157 = sext i32 %156 to i64, !dbg !2254
  store i64 %157, i64* %__cil_tmp96, align 8, !dbg !2255
  %158 = load i64, i64* %__cil_tmp96, align 8, !dbg !2256
  %159 = icmp ne i64 %158, -1073741764, !dbg !2257
  br i1 %159, label %160, label %179, !dbg !2258

; <label>:160                                     ; preds = %155
  %161 = load i32, i32* %status, align 4, !dbg !2259
  %162 = sext i32 %161 to i64, !dbg !2261
  store i64 %162, i64* %__cil_tmp97, align 8, !dbg !2262
  %163 = load i64, i64* %__cil_tmp97, align 8, !dbg !2263
  %164 = icmp eq i64 %163, -2147483626, !dbg !2265
  br i1 %164, label %165, label %166, !dbg !2266

; <label>:165                                     ; preds = %160
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2267
  br label %166, !dbg !2269

; <label>:166                                     ; preds = %165, %160
  %167 = load i32, i32* %status, align 4, !dbg !2270
  store i32 %167, i32* @myStatus, align 4, !dbg !2271
  %168 = load i32, i32* %27, align 4, !dbg !2272
  %169 = bitcast i32* %21 to i8*, !dbg !2273
  call void @llvm.lifetime.start(i64 4, i8* %169), !dbg !2273
  %170 = bitcast i32* %22 to i8*, !dbg !2273
  call void @llvm.lifetime.start(i64 4, i8* %170), !dbg !2273
  store i32 %168, i32* %21, align 4, !dbg !2273
  store i32 0, i32* %22, align 4, !dbg !2273
  %171 = load i32, i32* @s, align 4, !dbg !2274
  %172 = load i32, i32* @NP, align 4, !dbg !2275
  %173 = icmp eq i32 %171, %172, !dbg !2276
  br i1 %173, label %IofCompleteRequest.exit1, label %174, !dbg !2277

; <label>:174                                     ; preds = %166
  call void (...) @__VERIFIER_error() #6, !dbg !2278
  unreachable, !dbg !2278

IofCompleteRequest.exit1:                         ; preds = %166
  %175 = load i32, i32* @DC, align 4, !dbg !2280
  store i32 %175, i32* @s, align 4, !dbg !2281
  %176 = bitcast i32* %21 to i8*, !dbg !2282
  call void @llvm.lifetime.end(i64 4, i8* %176), !dbg !2282
  %177 = bitcast i32* %22 to i8*, !dbg !2282
  call void @llvm.lifetime.end(i64 4, i8* %177), !dbg !2282
  %178 = load i32, i32* %status, align 4, !dbg !2283
  store i32 %178, i32* %25, !dbg !2284
  br label %544, !dbg !2284

; <label>:179                                     ; preds = %155
  br label %181, !dbg !2285

; <label>:180                                     ; preds = %150
  store i32 0, i32* %status, align 4, !dbg !2286
  br label %181

; <label>:181                                     ; preds = %180, %179
  br label %183, !dbg !2288

; <label>:182                                     ; preds = %142
  store i32 0, i32* %status, align 4, !dbg !2289
  br label %183

; <label>:183                                     ; preds = %182, %181
  %184 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !2291
  %185 = load i32, i32* %sizeof__CDROM_TOC, align 4, !dbg !2293
  %186 = icmp sgt i32 %184, %185, !dbg !2294
  br i1 %186, label %187, label %189, !dbg !2295

; <label>:187                                     ; preds = %183
  %188 = load i32, i32* %sizeof__CDROM_TOC, align 4, !dbg !2296
  store i32 %188, i32* %bytesTransfered, align 4, !dbg !2298
  br label %191, !dbg !2299

; <label>:189                                     ; preds = %183
  %190 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !2300
  store i32 %190, i32* %bytesTransfered, align 4, !dbg !2302
  br label %191

; <label>:191                                     ; preds = %189, %187
  %192 = load i32, i32* %cdaudioDataOut__LastTrack, align 4, !dbg !2303
  %193 = load i32, i32* %cdaudioDataOut__FirstTrack, align 4, !dbg !2304
  %194 = sub nsw i32 %192, %193, !dbg !2305
  store i32 %194, i32* %__cil_tmp98, align 4, !dbg !2306
  %195 = load i32, i32* %__cil_tmp98, align 4, !dbg !2307
  %196 = add nsw i32 %195, 1, !dbg !2308
  store i32 %196, i32* %tracksOnCd, align 4, !dbg !2309
  %197 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !2310
  %198 = load i32, i32* %TrackData__0, align 4, !dbg !2311
  %199 = sub nsw i32 %197, %198, !dbg !2312
  store i32 %199, i32* %tracksInBuffer, align 4, !dbg !2313
  %200 = load i32, i32* %tracksInBuffer, align 4, !dbg !2314
  %201 = load i32, i32* %tracksOnCd, align 4, !dbg !2316
  %202 = icmp slt i32 %200, %201, !dbg !2317
  br i1 %202, label %203, label %205, !dbg !2318

; <label>:203                                     ; preds = %191
  %204 = load i32, i32* %tracksInBuffer, align 4, !dbg !2319
  store i32 %204, i32* %tracksToReturn, align 4, !dbg !2321
  br label %207, !dbg !2322

; <label>:205                                     ; preds = %191
  %206 = load i32, i32* %tracksOnCd, align 4, !dbg !2323
  store i32 %206, i32* %tracksToReturn, align 4, !dbg !2325
  br label %207

; <label>:207                                     ; preds = %205, %203
  %208 = load i32, i32* %tracksInBuffer, align 4, !dbg !2326
  %209 = load i32, i32* %tracksOnCd, align 4, !dbg !2328
  %210 = icmp sgt i32 %208, %209, !dbg !2329
  br i1 %210, label %211, label %214, !dbg !2330

; <label>:211                                     ; preds = %207
  %212 = load i32, i32* %i, align 4, !dbg !2331
  %213 = add nsw i32 %212, 1, !dbg !2331
  store i32 %213, i32* %i, align 4, !dbg !2331
  br label %214, !dbg !2333

; <label>:214                                     ; preds = %211, %207
  br label %512, !dbg !2334

; <label>:215                                     ; preds = %55
  br label %216, !dbg !2334

; <label>:216                                     ; preds = %215, %60
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2335
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !2337
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !2338
  %217 = load i32, i32* %deviceExtension, align 4, !dbg !2339
  %218 = load i32, i32* %srb, align 4, !dbg !2340
  %219 = call i32 @SendSrbSynchronous(i32 %217, i32 %218, i32 0, i32 0), !dbg !2341
  store i32 %219, i32* %status, align 4, !dbg !2342
  %220 = load i32, i32* %status, align 4, !dbg !2343
  %221 = icmp sge i32 %220, 0, !dbg !2345
  br i1 %221, label %222, label %223, !dbg !2346

; <label>:222                                     ; preds = %216
  br label %223, !dbg !2347

; <label>:223                                     ; preds = %222, %216
  store i32 8, i32* %__cil_tmp99, align 4, !dbg !2349
  store i32 16384, i32* %__cil_tmp100, align 4, !dbg !2350
  store i32 131072, i32* %__cil_tmp101, align 4, !dbg !2350
  store i32 147456, i32* %__cil_tmp102, align 4, !dbg !2350
  store i32 147464, i32* %__cil_tmp103, align 4, !dbg !2350
  %224 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2351
  %225 = load i32, i32* %__cil_tmp103, align 4, !dbg !2352
  %226 = icmp eq i32 %224, %225, !dbg !2353
  br i1 %226, label %227, label %246, !dbg !2354

; <label>:227                                     ; preds = %223
  %228 = load i32, i32* %status, align 4, !dbg !2355
  %229 = sext i32 %228 to i64, !dbg !2357
  store i64 %229, i64* %__cil_tmp104, align 8, !dbg !2358
  %230 = load i64, i64* %__cil_tmp104, align 8, !dbg !2359
  %231 = icmp eq i64 %230, -2147483626, !dbg !2361
  br i1 %231, label %232, label %233, !dbg !2362

; <label>:232                                     ; preds = %227
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2363
  br label %233, !dbg !2365

; <label>:233                                     ; preds = %232, %227
  %234 = load i32, i32* %status, align 4, !dbg !2366
  store i32 %234, i32* @myStatus, align 4, !dbg !2367
  %235 = load i32, i32* %27, align 4, !dbg !2368
  %236 = bitcast i32* %19 to i8*, !dbg !2369
  call void @llvm.lifetime.start(i64 4, i8* %236), !dbg !2369
  %237 = bitcast i32* %20 to i8*, !dbg !2369
  call void @llvm.lifetime.start(i64 4, i8* %237), !dbg !2369
  store i32 %235, i32* %19, align 4, !dbg !2369
  store i32 0, i32* %20, align 4, !dbg !2369
  %238 = load i32, i32* @s, align 4, !dbg !2370
  %239 = load i32, i32* @NP, align 4, !dbg !2371
  %240 = icmp eq i32 %238, %239, !dbg !2372
  br i1 %240, label %IofCompleteRequest.exit2, label %241, !dbg !2373

; <label>:241                                     ; preds = %233
  call void (...) @__VERIFIER_error() #6, !dbg !2374
  unreachable, !dbg !2374

IofCompleteRequest.exit2:                         ; preds = %233
  %242 = load i32, i32* @DC, align 4, !dbg !2376
  store i32 %242, i32* @s, align 4, !dbg !2377
  %243 = bitcast i32* %19 to i8*, !dbg !2378
  call void @llvm.lifetime.end(i64 4, i8* %243), !dbg !2378
  %244 = bitcast i32* %20 to i8*, !dbg !2378
  call void @llvm.lifetime.end(i64 4, i8* %244), !dbg !2378
  %245 = load i32, i32* %status, align 4, !dbg !2379
  store i32 %245, i32* %25, !dbg !2380
  br label %544, !dbg !2380

; <label>:246                                     ; preds = %223
  %247 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__InputBufferLength, align 4, !dbg !2381
  %248 = load i32, i32* %sizeof__CDROM_PLAY_AUDIO_MSF, align 4, !dbg !2383
  %249 = icmp slt i32 %247, %248, !dbg !2384
  br i1 %249, label %250, label %251, !dbg !2385

; <label>:250                                     ; preds = %246
  store i32 -1073741820, i32* %status, align 4, !dbg !2386
  br label %512, !dbg !2388

; <label>:251                                     ; preds = %246
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !2389
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !2391
  %252 = load i32, i32* %deviceExtension, align 4, !dbg !2392
  %253 = load i32, i32* %srb, align 4, !dbg !2393
  %254 = call i32 @SendSrbSynchronous(i32 %252, i32 %253, i32 0, i32 0), !dbg !2394
  store i32 %254, i32* %status, align 4, !dbg !2395
  %255 = load i32, i32* %status, align 4, !dbg !2396
  %256 = icmp sge i32 %255, 0, !dbg !2398
  br i1 %256, label %257, label %258, !dbg !2399

; <label>:257                                     ; preds = %251
  br label %258, !dbg !2400

; <label>:258                                     ; preds = %257, %251
  br label %512, !dbg !2402

; <label>:259                                     ; preds = %65
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2403
  %260 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__InputBufferLength, align 4, !dbg !2404
  %261 = load i32, i32* %sizeof__CDROM_SEEK_AUDIO_MSF, align 4, !dbg !2406
  %262 = icmp slt i32 %260, %261, !dbg !2407
  br i1 %262, label %263, label %264, !dbg !2408

; <label>:263                                     ; preds = %259
  store i32 -1073741820, i32* %status, align 4, !dbg !2409
  br label %512, !dbg !2411

; <label>:264                                     ; preds = %259
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !2412
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !2414
  %265 = load i32, i32* %deviceExtension, align 4, !dbg !2415
  %266 = load i32, i32* %srb, align 4, !dbg !2416
  %267 = call i32 @SendSrbSynchronous(i32 %265, i32 %266, i32 0, i32 0), !dbg !2417
  store i32 %267, i32* %status, align 4, !dbg !2418
  %268 = load i32, i32* %status, align 4, !dbg !2419
  %269 = icmp slt i32 %268, 0, !dbg !2421
  br i1 %269, label %270, label %277, !dbg !2422

; <label>:270                                     ; preds = %264
  %271 = load i32, i32* %status, align 4, !dbg !2423
  %272 = sext i32 %271 to i64, !dbg !2426
  store i64 %272, i64* %__cil_tmp105, align 8, !dbg !2427
  %273 = load i64, i64* %__cil_tmp105, align 8, !dbg !2428
  %274 = icmp eq i64 %273, -1073741808, !dbg !2430
  br i1 %274, label %275, label %276, !dbg !2431

; <label>:275                                     ; preds = %270
  store i32 -1073741803, i32* %status, align 4, !dbg !2432
  br label %276, !dbg !2434

; <label>:276                                     ; preds = %275, %270
  br label %277, !dbg !2435

; <label>:277                                     ; preds = %276, %264
  br label %512, !dbg !2436

; <label>:278                                     ; preds = %70
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2437
  %279 = load i32, i32* %SubQPtr, align 4, !dbg !2438
  %280 = icmp eq i32 %279, 0, !dbg !2439
  br i1 %280, label %281, label %300, !dbg !2440

; <label>:281                                     ; preds = %278
  store i32 -1073741670, i32* %status, align 4, !dbg !2441
  %282 = load i32, i32* %status, align 4, !dbg !2442
  %283 = sext i32 %282 to i64, !dbg !2444
  store i64 %283, i64* %__cil_tmp106, align 8, !dbg !2445
  %284 = load i64, i64* %__cil_tmp106, align 8, !dbg !2446
  %285 = icmp eq i64 %284, -2147483626, !dbg !2448
  br i1 %285, label %286, label %287, !dbg !2449

; <label>:286                                     ; preds = %281
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2450
  br label %287, !dbg !2452

; <label>:287                                     ; preds = %286, %281
  %288 = load i32, i32* %status, align 4, !dbg !2453
  store i32 %288, i32* @myStatus, align 4, !dbg !2454
  %289 = load i32, i32* %27, align 4, !dbg !2455
  %290 = bitcast i32* %17 to i8*, !dbg !2456
  call void @llvm.lifetime.start(i64 4, i8* %290), !dbg !2456
  %291 = bitcast i32* %18 to i8*, !dbg !2456
  call void @llvm.lifetime.start(i64 4, i8* %291), !dbg !2456
  store i32 %289, i32* %17, align 4, !dbg !2456
  store i32 0, i32* %18, align 4, !dbg !2456
  %292 = load i32, i32* @s, align 4, !dbg !2457
  %293 = load i32, i32* @NP, align 4, !dbg !2458
  %294 = icmp eq i32 %292, %293, !dbg !2459
  br i1 %294, label %IofCompleteRequest.exit3, label %295, !dbg !2460

; <label>:295                                     ; preds = %287
  call void (...) @__VERIFIER_error() #6, !dbg !2461
  unreachable, !dbg !2461

IofCompleteRequest.exit3:                         ; preds = %287
  %296 = load i32, i32* @DC, align 4, !dbg !2463
  store i32 %296, i32* @s, align 4, !dbg !2464
  %297 = bitcast i32* %17 to i8*, !dbg !2465
  call void @llvm.lifetime.end(i64 4, i8* %297), !dbg !2465
  %298 = bitcast i32* %18 to i8*, !dbg !2465
  call void @llvm.lifetime.end(i64 4, i8* %298), !dbg !2465
  %299 = load i32, i32* %status, align 4, !dbg !2466
  store i32 %299, i32* %25, !dbg !2467
  br label %544, !dbg !2467

; <label>:300                                     ; preds = %278
  %301 = load i32, i32* %deviceExtension__Paused, align 4, !dbg !2468
  %302 = icmp eq i32 %301, 1, !dbg !2469
  br i1 %302, label %303, label %322, !dbg !2470

; <label>:303                                     ; preds = %300
  store i32 0, i32* %status, align 4, !dbg !2471
  %304 = load i32, i32* %status, align 4, !dbg !2472
  %305 = sext i32 %304 to i64, !dbg !2474
  store i64 %305, i64* %__cil_tmp107, align 8, !dbg !2475
  %306 = load i64, i64* %__cil_tmp107, align 8, !dbg !2476
  %307 = icmp eq i64 %306, -2147483626, !dbg !2478
  br i1 %307, label %308, label %309, !dbg !2479

; <label>:308                                     ; preds = %303
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2480
  br label %309, !dbg !2482

; <label>:309                                     ; preds = %308, %303
  %310 = load i32, i32* %status, align 4, !dbg !2483
  store i32 %310, i32* @myStatus, align 4, !dbg !2484
  %311 = load i32, i32* %27, align 4, !dbg !2485
  %312 = bitcast i32* %15 to i8*, !dbg !2486
  call void @llvm.lifetime.start(i64 4, i8* %312), !dbg !2486
  %313 = bitcast i32* %16 to i8*, !dbg !2486
  call void @llvm.lifetime.start(i64 4, i8* %313), !dbg !2486
  store i32 %311, i32* %15, align 4, !dbg !2486
  store i32 0, i32* %16, align 4, !dbg !2486
  %314 = load i32, i32* @s, align 4, !dbg !2487
  %315 = load i32, i32* @NP, align 4, !dbg !2488
  %316 = icmp eq i32 %314, %315, !dbg !2489
  br i1 %316, label %IofCompleteRequest.exit4, label %317, !dbg !2490

; <label>:317                                     ; preds = %309
  call void (...) @__VERIFIER_error() #6, !dbg !2491
  unreachable, !dbg !2491

IofCompleteRequest.exit4:                         ; preds = %309
  %318 = load i32, i32* @DC, align 4, !dbg !2493
  store i32 %318, i32* @s, align 4, !dbg !2494
  %319 = bitcast i32* %15 to i8*, !dbg !2495
  call void @llvm.lifetime.end(i64 4, i8* %319), !dbg !2495
  %320 = bitcast i32* %16 to i8*, !dbg !2495
  call void @llvm.lifetime.end(i64 4, i8* %320), !dbg !2495
  %321 = load i32, i32* %status, align 4, !dbg !2496
  store i32 %321, i32* %25, !dbg !2497
  br label %544, !dbg !2497

; <label>:322                                     ; preds = %300
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !2498
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !2500
  %323 = load i32, i32* %deviceExtension, align 4, !dbg !2501
  %324 = load i32, i32* %srb, align 4, !dbg !2502
  %325 = load i32, i32* %SubQPtr, align 4, !dbg !2503
  %326 = load i32, i32* %sizeof__SUB_Q_CHANNEL_DATA, align 4, !dbg !2504
  %327 = call i32 @SendSrbSynchronous(i32 %323, i32 %324, i32 %325, i32 %326), !dbg !2505
  store i32 %327, i32* %status, align 4, !dbg !2506
  %328 = load i32, i32* %status, align 4, !dbg !2507
  %329 = icmp slt i32 %328, 0, !dbg !2508
  br i1 %329, label %330, label %349, !dbg !2509

; <label>:330                                     ; preds = %322
  %331 = load i32, i32* %status, align 4, !dbg !2510
  %332 = sext i32 %331 to i64, !dbg !2512
  store i64 %332, i64* %__cil_tmp109, align 8, !dbg !2513
  %333 = load i64, i64* %__cil_tmp109, align 8, !dbg !2514
  %334 = icmp eq i64 %333, -2147483626, !dbg !2516
  br i1 %334, label %335, label %336, !dbg !2517

; <label>:335                                     ; preds = %330
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2518
  br label %336, !dbg !2520

; <label>:336                                     ; preds = %335, %330
  %337 = load i32, i32* %status, align 4, !dbg !2521
  store i32 %337, i32* @myStatus, align 4, !dbg !2522
  %338 = load i32, i32* %27, align 4, !dbg !2523
  %339 = bitcast i32* %13 to i8*, !dbg !2524
  call void @llvm.lifetime.start(i64 4, i8* %339), !dbg !2524
  %340 = bitcast i32* %14 to i8*, !dbg !2524
  call void @llvm.lifetime.start(i64 4, i8* %340), !dbg !2524
  store i32 %338, i32* %13, align 4, !dbg !2524
  store i32 0, i32* %14, align 4, !dbg !2524
  %341 = load i32, i32* @s, align 4, !dbg !2525
  %342 = load i32, i32* @NP, align 4, !dbg !2526
  %343 = icmp eq i32 %341, %342, !dbg !2527
  br i1 %343, label %IofCompleteRequest.exit5, label %344, !dbg !2528

; <label>:344                                     ; preds = %336
  call void (...) @__VERIFIER_error() #6, !dbg !2529
  unreachable, !dbg !2529

IofCompleteRequest.exit5:                         ; preds = %336
  %345 = load i32, i32* @DC, align 4, !dbg !2531
  store i32 %345, i32* @s, align 4, !dbg !2532
  %346 = bitcast i32* %13 to i8*, !dbg !2533
  call void @llvm.lifetime.end(i64 4, i8* %346), !dbg !2533
  %347 = bitcast i32* %14 to i8*, !dbg !2533
  call void @llvm.lifetime.end(i64 4, i8* %347), !dbg !2533
  %348 = load i32, i32* %status, align 4, !dbg !2534
  store i32 %348, i32* %25, !dbg !2535
  br label %544, !dbg !2535

; <label>:349                                     ; preds = %322
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !2536
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !2538
  %350 = load i32, i32* %deviceExtension, align 4, !dbg !2539
  %351 = load i32, i32* %srb, align 4, !dbg !2540
  %352 = call i32 @SendSrbSynchronous(i32 %350, i32 %351, i32 0, i32 0), !dbg !2541
  store i32 %352, i32* %status, align 4, !dbg !2542
  %353 = load i32, i32* %status, align 4, !dbg !2543
  %354 = icmp slt i32 %353, 0, !dbg !2544
  br i1 %354, label %355, label %374, !dbg !2545

; <label>:355                                     ; preds = %349
  %356 = load i32, i32* %status, align 4, !dbg !2546
  %357 = sext i32 %356 to i64, !dbg !2548
  store i64 %357, i64* %__cil_tmp111, align 8, !dbg !2549
  %358 = load i64, i64* %__cil_tmp111, align 8, !dbg !2550
  %359 = icmp eq i64 %358, -2147483626, !dbg !2552
  br i1 %359, label %360, label %361, !dbg !2553

; <label>:360                                     ; preds = %355
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2554
  br label %361, !dbg !2556

; <label>:361                                     ; preds = %360, %355
  %362 = load i32, i32* %status, align 4, !dbg !2557
  store i32 %362, i32* @myStatus, align 4, !dbg !2558
  %363 = load i32, i32* %27, align 4, !dbg !2559
  %364 = bitcast i32* %11 to i8*, !dbg !2560
  call void @llvm.lifetime.start(i64 4, i8* %364), !dbg !2560
  %365 = bitcast i32* %12 to i8*, !dbg !2560
  call void @llvm.lifetime.start(i64 4, i8* %365), !dbg !2560
  store i32 %363, i32* %11, align 4, !dbg !2560
  store i32 0, i32* %12, align 4, !dbg !2560
  %366 = load i32, i32* @s, align 4, !dbg !2561
  %367 = load i32, i32* @NP, align 4, !dbg !2562
  %368 = icmp eq i32 %366, %367, !dbg !2563
  br i1 %368, label %IofCompleteRequest.exit6, label %369, !dbg !2564

; <label>:369                                     ; preds = %361
  call void (...) @__VERIFIER_error() #6, !dbg !2565
  unreachable, !dbg !2565

IofCompleteRequest.exit6:                         ; preds = %361
  %370 = load i32, i32* @DC, align 4, !dbg !2567
  store i32 %370, i32* @s, align 4, !dbg !2568
  %371 = bitcast i32* %11 to i8*, !dbg !2569
  call void @llvm.lifetime.end(i64 4, i8* %371), !dbg !2569
  %372 = bitcast i32* %12 to i8*, !dbg !2569
  call void @llvm.lifetime.end(i64 4, i8* %372), !dbg !2569
  %373 = load i32, i32* %status, align 4, !dbg !2570
  store i32 %373, i32* %25, !dbg !2571
  br label %544, !dbg !2571

; <label>:374                                     ; preds = %349
  br label %512, !dbg !2572

; <label>:375                                     ; preds = %75
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2573
  %376 = load i32, i32* %deviceExtension__Paused, align 4, !dbg !2574
  %377 = icmp eq i32 %376, 0, !dbg !2575
  br i1 %377, label %378, label %397, !dbg !2576

; <label>:378                                     ; preds = %375
  store i32 -1073741823, i32* %status, align 4, !dbg !2577
  %379 = load i32, i32* %status, align 4, !dbg !2578
  %380 = sext i32 %379 to i64, !dbg !2580
  store i64 %380, i64* %__cil_tmp112, align 8, !dbg !2581
  %381 = load i64, i64* %__cil_tmp112, align 8, !dbg !2582
  %382 = icmp eq i64 %381, -2147483626, !dbg !2584
  br i1 %382, label %383, label %384, !dbg !2585

; <label>:383                                     ; preds = %378
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2586
  br label %384, !dbg !2588

; <label>:384                                     ; preds = %383, %378
  %385 = load i32, i32* %status, align 4, !dbg !2589
  store i32 %385, i32* @myStatus, align 4, !dbg !2590
  %386 = load i32, i32* %27, align 4, !dbg !2591
  %387 = bitcast i32* %9 to i8*, !dbg !2592
  call void @llvm.lifetime.start(i64 4, i8* %387), !dbg !2592
  %388 = bitcast i32* %10 to i8*, !dbg !2592
  call void @llvm.lifetime.start(i64 4, i8* %388), !dbg !2592
  store i32 %386, i32* %9, align 4, !dbg !2592
  store i32 0, i32* %10, align 4, !dbg !2592
  %389 = load i32, i32* @s, align 4, !dbg !2593
  %390 = load i32, i32* @NP, align 4, !dbg !2594
  %391 = icmp eq i32 %389, %390, !dbg !2595
  br i1 %391, label %IofCompleteRequest.exit7, label %392, !dbg !2596

; <label>:392                                     ; preds = %384
  call void (...) @__VERIFIER_error() #6, !dbg !2597
  unreachable, !dbg !2597

IofCompleteRequest.exit7:                         ; preds = %384
  %393 = load i32, i32* @DC, align 4, !dbg !2599
  store i32 %393, i32* @s, align 4, !dbg !2600
  %394 = bitcast i32* %9 to i8*, !dbg !2601
  call void @llvm.lifetime.end(i64 4, i8* %394), !dbg !2601
  %395 = bitcast i32* %10 to i8*, !dbg !2601
  call void @llvm.lifetime.end(i64 4, i8* %395), !dbg !2601
  %396 = load i32, i32* %status, align 4, !dbg !2602
  store i32 %396, i32* %25, !dbg !2603
  br label %544, !dbg !2603

; <label>:397                                     ; preds = %375
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !2604
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !2606
  %398 = load i32, i32* %deviceExtension, align 4, !dbg !2607
  %399 = load i32, i32* %srb, align 4, !dbg !2608
  %400 = call i32 @SendSrbSynchronous(i32 %398, i32 %399, i32 0, i32 0), !dbg !2609
  store i32 %400, i32* %status, align 4, !dbg !2610
  %401 = load i32, i32* %status, align 4, !dbg !2611
  %402 = icmp sge i32 %401, 0, !dbg !2613
  br i1 %402, label %403, label %404, !dbg !2614

; <label>:403                                     ; preds = %397
  store i32 1, i32* %deviceExtension__PlayActive, align 4, !dbg !2615
  store i32 0, i32* %deviceExtension__Paused, align 4, !dbg !2617
  br label %404, !dbg !2618

; <label>:404                                     ; preds = %403, %397
  br label %512, !dbg !2619

; <label>:405                                     ; preds = %80
  %406 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !2620
  %407 = load i32, i32* %sizeof__SUB_Q_CURRENT_POSITION, align 4, !dbg !2622
  %408 = icmp slt i32 %406, %407, !dbg !2623
  br i1 %408, label %409, label %410, !dbg !2624

; <label>:409                                     ; preds = %405
  store i32 -1073741789, i32* %status, align 4, !dbg !2625
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2627
  br label %512, !dbg !2628

; <label>:410                                     ; preds = %405
  %411 = load i32, i32* %SubQPtr___0, align 4, !dbg !2629
  %412 = icmp eq i32 %411, 0, !dbg !2630
  br i1 %412, label %413, label %432, !dbg !2631

; <label>:413                                     ; preds = %410
  store i32 -1073741670, i32* %status, align 4, !dbg !2632
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2633
  %414 = load i32, i32* %status, align 4, !dbg !2634
  %415 = sext i32 %414 to i64, !dbg !2636
  store i64 %415, i64* %__cil_tmp113, align 8, !dbg !2637
  %416 = load i64, i64* %__cil_tmp113, align 8, !dbg !2638
  %417 = icmp eq i64 %416, -2147483626, !dbg !2640
  br i1 %417, label %418, label %419, !dbg !2641

; <label>:418                                     ; preds = %413
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2642
  br label %419, !dbg !2644

; <label>:419                                     ; preds = %418, %413
  %420 = load i32, i32* %status, align 4, !dbg !2645
  store i32 %420, i32* @myStatus, align 4, !dbg !2646
  %421 = load i32, i32* %27, align 4, !dbg !2647
  %422 = bitcast i32* %7 to i8*, !dbg !2648
  call void @llvm.lifetime.start(i64 4, i8* %422), !dbg !2648
  %423 = bitcast i32* %8 to i8*, !dbg !2648
  call void @llvm.lifetime.start(i64 4, i8* %423), !dbg !2648
  store i32 %421, i32* %7, align 4, !dbg !2648
  store i32 0, i32* %8, align 4, !dbg !2648
  %424 = load i32, i32* @s, align 4, !dbg !2649
  %425 = load i32, i32* @NP, align 4, !dbg !2650
  %426 = icmp eq i32 %424, %425, !dbg !2651
  br i1 %426, label %IofCompleteRequest.exit8, label %427, !dbg !2652

; <label>:427                                     ; preds = %419
  call void (...) @__VERIFIER_error() #6, !dbg !2653
  unreachable, !dbg !2653

IofCompleteRequest.exit8:                         ; preds = %419
  %428 = load i32, i32* @DC, align 4, !dbg !2655
  store i32 %428, i32* @s, align 4, !dbg !2656
  %429 = bitcast i32* %7 to i8*, !dbg !2657
  call void @llvm.lifetime.end(i64 4, i8* %429), !dbg !2657
  %430 = bitcast i32* %8 to i8*, !dbg !2657
  call void @llvm.lifetime.end(i64 4, i8* %430), !dbg !2657
  %431 = load i32, i32* %status, align 4, !dbg !2658
  store i32 %431, i32* %25, !dbg !2659
  br label %544, !dbg !2659

; <label>:432                                     ; preds = %410
  %433 = load i32, i32* %userPtr__Format, align 4, !dbg !2660
  %434 = icmp ne i32 %433, 1, !dbg !2661
  br i1 %434, label %435, label %454, !dbg !2662

; <label>:435                                     ; preds = %432
  store i32 -1073741823, i32* %status, align 4, !dbg !2663
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2664
  %436 = load i32, i32* %status, align 4, !dbg !2665
  %437 = sext i32 %436 to i64, !dbg !2667
  store i64 %437, i64* %__cil_tmp114, align 8, !dbg !2668
  %438 = load i64, i64* %__cil_tmp114, align 8, !dbg !2669
  %439 = icmp eq i64 %438, -2147483626, !dbg !2671
  br i1 %439, label %440, label %441, !dbg !2672

; <label>:440                                     ; preds = %435
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2673
  br label %441, !dbg !2675

; <label>:441                                     ; preds = %440, %435
  %442 = load i32, i32* %status, align 4, !dbg !2676
  store i32 %442, i32* @myStatus, align 4, !dbg !2677
  %443 = load i32, i32* %27, align 4, !dbg !2678
  %444 = bitcast i32* %5 to i8*, !dbg !2679
  call void @llvm.lifetime.start(i64 4, i8* %444), !dbg !2679
  %445 = bitcast i32* %6 to i8*, !dbg !2679
  call void @llvm.lifetime.start(i64 4, i8* %445), !dbg !2679
  store i32 %443, i32* %5, align 4, !dbg !2679
  store i32 0, i32* %6, align 4, !dbg !2679
  %446 = load i32, i32* @s, align 4, !dbg !2680
  %447 = load i32, i32* @NP, align 4, !dbg !2681
  %448 = icmp eq i32 %446, %447, !dbg !2682
  br i1 %448, label %IofCompleteRequest.exit9, label %449, !dbg !2683

; <label>:449                                     ; preds = %441
  call void (...) @__VERIFIER_error() #6, !dbg !2684
  unreachable, !dbg !2684

IofCompleteRequest.exit9:                         ; preds = %441
  %450 = load i32, i32* @DC, align 4, !dbg !2686
  store i32 %450, i32* @s, align 4, !dbg !2687
  %451 = bitcast i32* %5 to i8*, !dbg !2688
  call void @llvm.lifetime.end(i64 4, i8* %451), !dbg !2688
  %452 = bitcast i32* %6 to i8*, !dbg !2688
  call void @llvm.lifetime.end(i64 4, i8* %452), !dbg !2688
  %453 = load i32, i32* %status, align 4, !dbg !2689
  store i32 %453, i32* %25, !dbg !2690
  br label %544, !dbg !2690

; <label>:454                                     ; preds = %432
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !2691
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !2693
  %455 = load i32, i32* %deviceExtension, align 4, !dbg !2694
  %456 = load i32, i32* %srb, align 4, !dbg !2695
  %457 = load i32, i32* %SubQPtr___0, align 4, !dbg !2696
  %458 = load i32, i32* %sizeof__SUB_Q_CHANNEL_DATA, align 4, !dbg !2697
  %459 = call i32 @SendSrbSynchronous(i32 %455, i32 %456, i32 %457, i32 %458), !dbg !2698
  store i32 %459, i32* %status, align 4, !dbg !2699
  %460 = load i32, i32* %status, align 4, !dbg !2700
  %461 = icmp sge i32 %460, 0, !dbg !2702
  br i1 %461, label %462, label %468, !dbg !2703

; <label>:462                                     ; preds = %454
  %463 = load i32, i32* %deviceExtension__Paused, align 4, !dbg !2704
  %464 = icmp eq i32 %463, 1, !dbg !2707
  br i1 %464, label %465, label %466, !dbg !2708

; <label>:465                                     ; preds = %462
  store i32 0, i32* %deviceExtension__PlayActive, align 4, !dbg !2709
  br label %466, !dbg !2711

; <label>:466                                     ; preds = %465, %462
  %467 = load i32, i32* %sizeof__SUB_Q_CURRENT_POSITION, align 4, !dbg !2712
  store i32 %467, i32* %Irp__IoStatus__Information, align 4, !dbg !2713
  br label %469, !dbg !2714

; <label>:468                                     ; preds = %454
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2715
  br label %469

; <label>:469                                     ; preds = %468, %466
  br label %512, !dbg !2717

; <label>:470                                     ; preds = %85
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2718
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !2720
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !2721
  %471 = load i32, i32* %deviceExtension, align 4, !dbg !2722
  %472 = load i32, i32* %srb, align 4, !dbg !2723
  %473 = call i32 @SendSrbSynchronous(i32 %471, i32 %472, i32 0, i32 0), !dbg !2724
  store i32 %473, i32* %status, align 4, !dbg !2725
  br label %512, !dbg !2726

; <label>:474                                     ; preds = %90
  br label %475, !dbg !2726

; <label>:475                                     ; preds = %474, %95
  br label %476, !dbg !2726

; <label>:476                                     ; preds = %475, %100
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2727
  store i32 -1073741808, i32* %status, align 4, !dbg !2728
  br label %512, !dbg !2729

; <label>:477                                     ; preds = %105
  %478 = load i32, i32* %26, align 4, !dbg !2730
  %479 = call i32 @CdAudioIsPlayActive(i32 %478), !dbg !2732
  store i32 %479, i32* %tmp___1, align 4, !dbg !2733
  %480 = load i32, i32* %tmp___1, align 4, !dbg !2734
  %481 = icmp eq i32 %480, 1, !dbg !2735
  br i1 %481, label %482, label %501, !dbg !2736

; <label>:482                                     ; preds = %477
  store i32 1, i32* %deviceExtension__PlayActive, align 4, !dbg !2737
  store i32 0, i32* %status, align 4, !dbg !2738
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2739
  %483 = load i32, i32* %status, align 4, !dbg !2740
  %484 = sext i32 %483 to i64, !dbg !2742
  store i64 %484, i64* %__cil_tmp115, align 8, !dbg !2743
  %485 = load i64, i64* %__cil_tmp115, align 8, !dbg !2744
  %486 = icmp eq i64 %485, -2147483626, !dbg !2746
  br i1 %486, label %487, label %488, !dbg !2747

; <label>:487                                     ; preds = %482
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2748
  br label %488, !dbg !2750

; <label>:488                                     ; preds = %487, %482
  %489 = load i32, i32* %status, align 4, !dbg !2751
  store i32 %489, i32* @myStatus, align 4, !dbg !2752
  %490 = load i32, i32* %27, align 4, !dbg !2753
  %491 = bitcast i32* %3 to i8*, !dbg !2754
  call void @llvm.lifetime.start(i64 4, i8* %491), !dbg !2754
  %492 = bitcast i32* %4 to i8*, !dbg !2754
  call void @llvm.lifetime.start(i64 4, i8* %492), !dbg !2754
  store i32 %490, i32* %3, align 4, !dbg !2754
  store i32 0, i32* %4, align 4, !dbg !2754
  %493 = load i32, i32* @s, align 4, !dbg !2755
  %494 = load i32, i32* @NP, align 4, !dbg !2756
  %495 = icmp eq i32 %493, %494, !dbg !2757
  br i1 %495, label %IofCompleteRequest.exit10, label %496, !dbg !2758

; <label>:496                                     ; preds = %488
  call void (...) @__VERIFIER_error() #6, !dbg !2759
  unreachable, !dbg !2759

IofCompleteRequest.exit10:                        ; preds = %488
  %497 = load i32, i32* @DC, align 4, !dbg !2761
  store i32 %497, i32* @s, align 4, !dbg !2762
  %498 = bitcast i32* %3 to i8*, !dbg !2763
  call void @llvm.lifetime.end(i64 4, i8* %498), !dbg !2763
  %499 = bitcast i32* %4 to i8*, !dbg !2763
  call void @llvm.lifetime.end(i64 4, i8* %499), !dbg !2763
  %500 = load i32, i32* %status, align 4, !dbg !2764
  store i32 %500, i32* %25, !dbg !2765
  br label %544, !dbg !2765

; <label>:501                                     ; preds = %477
  store i32 0, i32* %deviceExtension__PlayActive, align 4, !dbg !2766
  %502 = load i32, i32* %26, align 4, !dbg !2769
  %503 = load i32, i32* %27, align 4, !dbg !2770
  %504 = call i32 @CdAudioSendToNextDriver(i32 %502, i32 %503), !dbg !2771
  store i32 %504, i32* %tmp___0, align 4, !dbg !2772
  %505 = load i32, i32* %tmp___0, align 4, !dbg !2773
  store i32 %505, i32* %25, !dbg !2774
  br label %544, !dbg !2774

; <label>:506                                     ; preds = %106
  %507 = load i32, i32* %26, align 4, !dbg !2775
  %508 = load i32, i32* %27, align 4, !dbg !2777
  %509 = call i32 @CdAudioSendToNextDriver(i32 %507, i32 %508), !dbg !2778
  store i32 %509, i32* %tmp___2, align 4, !dbg !2779
  %510 = load i32, i32* %tmp___2, align 4, !dbg !2780
  store i32 %510, i32* %25, !dbg !2781
  br label %544, !dbg !2781

; <label>:511                                     ; preds = %107
  br label %512, !dbg !2782

; <label>:512                                     ; preds = %511, %476, %470, %469, %409, %404, %374, %277, %263, %258, %250, %214, %119, %113
  br label %513

; <label>:513                                     ; preds = %512
  br label %514

; <label>:514                                     ; preds = %513
  br label %515

; <label>:515                                     ; preds = %514
  br label %516

; <label>:516                                     ; preds = %515
  br label %517

; <label>:517                                     ; preds = %516
  br label %518

; <label>:518                                     ; preds = %517
  br label %519

; <label>:519                                     ; preds = %518
  br label %520

; <label>:520                                     ; preds = %519
  br label %521

; <label>:521                                     ; preds = %520
  br label %522

; <label>:522                                     ; preds = %521
  br label %523

; <label>:523                                     ; preds = %522
  br label %524

; <label>:524                                     ; preds = %523
  br label %525

; <label>:525                                     ; preds = %524
  %526 = load i32, i32* %status, align 4, !dbg !2783
  %527 = sext i32 %526 to i64, !dbg !2785
  store i64 %527, i64* %__cil_tmp116, align 8, !dbg !2786
  %528 = load i64, i64* %__cil_tmp116, align 8, !dbg !2787
  %529 = icmp eq i64 %528, -2147483626, !dbg !2789
  br i1 %529, label %530, label %531, !dbg !2790

; <label>:530                                     ; preds = %525
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2791
  br label %531, !dbg !2793

; <label>:531                                     ; preds = %530, %525
  %532 = load i32, i32* %status, align 4, !dbg !2794
  store i32 %532, i32* @myStatus, align 4, !dbg !2795
  %533 = load i32, i32* %27, align 4, !dbg !2796
  %534 = bitcast i32* %1 to i8*, !dbg !2797
  call void @llvm.lifetime.start(i64 4, i8* %534), !dbg !2797
  %535 = bitcast i32* %2 to i8*, !dbg !2797
  call void @llvm.lifetime.start(i64 4, i8* %535), !dbg !2797
  store i32 %533, i32* %1, align 4, !dbg !2797
  store i32 0, i32* %2, align 4, !dbg !2797
  %536 = load i32, i32* @s, align 4, !dbg !2798
  %537 = load i32, i32* @NP, align 4, !dbg !2799
  %538 = icmp eq i32 %536, %537, !dbg !2800
  br i1 %538, label %IofCompleteRequest.exit11, label %539, !dbg !2801

; <label>:539                                     ; preds = %531
  call void (...) @__VERIFIER_error() #6, !dbg !2802
  unreachable, !dbg !2802

IofCompleteRequest.exit11:                        ; preds = %531
  %540 = load i32, i32* @DC, align 4, !dbg !2804
  store i32 %540, i32* @s, align 4, !dbg !2805
  %541 = bitcast i32* %1 to i8*, !dbg !2806
  call void @llvm.lifetime.end(i64 4, i8* %541), !dbg !2806
  %542 = bitcast i32* %2 to i8*, !dbg !2806
  call void @llvm.lifetime.end(i64 4, i8* %542), !dbg !2806
  %543 = load i32, i32* %status, align 4, !dbg !2807
  store i32 %543, i32* %25, !dbg !2808
  br label %544, !dbg !2808

; <label>:544                                     ; preds = %IofCompleteRequest.exit11, %506, %501, %IofCompleteRequest.exit10, %IofCompleteRequest.exit9, %IofCompleteRequest.exit8, %IofCompleteRequest.exit7, %IofCompleteRequest.exit6, %IofCompleteRequest.exit5, %IofCompleteRequest.exit4, %IofCompleteRequest.exit3, %IofCompleteRequest.exit2, %IofCompleteRequest.exit1, %IofCompleteRequest.exit
  %545 = load i32, i32* %25, !dbg !2809
  ret i32 %545, !dbg !2809
}

; Function Attrs: nounwind ssp uwtable
define i32 @CdAudioAtapiDeviceControl(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %currentIrpStack__Parameters__DeviceIoControl__IoControlCode = alloca i32, align 4
  %Irp__IoStatus__Information = alloca i32, align 4
  %deviceExtension__PlayActive = alloca i32, align 4
  %srb__CdbLength = alloca i32, align 4
  %srb__TimeOutValue = alloca i32, align 4
  %Irp__IoStatus__Status = alloca i32, align 4
  %status = alloca i32, align 4
  %deviceExtension = alloca i32, align 4
  %srb = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__cil_tmp13 = alloca i32, align 4
  %__cil_tmp14 = alloca i32, align 4
  %__cil_tmp15 = alloca i32, align 4
  %__cil_tmp16 = alloca i32, align 4
  %__cil_tmp17 = alloca i32, align 4
  %__cil_tmp18 = alloca i32, align 4
  store i32 %DeviceObject, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2810, metadata !105), !dbg !2811
  store i32 %Irp, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2812, metadata !105), !dbg !2813
  call void @llvm.dbg.declare(metadata i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, metadata !2814, metadata !105), !dbg !2815
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !2816
  store i32 %8, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2815
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !2817, metadata !105), !dbg !2818
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__PlayActive, metadata !2819, metadata !105), !dbg !2820
  call void @llvm.dbg.declare(metadata i32* %srb__CdbLength, metadata !2821, metadata !105), !dbg !2822
  call void @llvm.dbg.declare(metadata i32* %srb__TimeOutValue, metadata !2823, metadata !105), !dbg !2824
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !2825, metadata !105), !dbg !2826
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2827, metadata !105), !dbg !2828
  call void @llvm.dbg.declare(metadata i32* %deviceExtension, metadata !2829, metadata !105), !dbg !2830
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !2831
  store i32 %9, i32* %deviceExtension, align 4, !dbg !2830
  call void @llvm.dbg.declare(metadata i32* %srb, metadata !2832, metadata !105), !dbg !2833
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !2834
  store i32 %10, i32* %srb, align 4, !dbg !2833
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !2835, metadata !105), !dbg !2836
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp13, metadata !2837, metadata !105), !dbg !2838
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp14, metadata !2839, metadata !105), !dbg !2840
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp15, metadata !2841, metadata !105), !dbg !2842
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp16, metadata !2843, metadata !105), !dbg !2844
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp17, metadata !2845, metadata !105), !dbg !2846
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp18, metadata !2847, metadata !105), !dbg !2848
  store i32 8, i32* %__cil_tmp13, align 4, !dbg !2849
  store i32 16384, i32* %__cil_tmp14, align 4, !dbg !2849
  store i32 131072, i32* %__cil_tmp15, align 4, !dbg !2849
  store i32 147456, i32* %__cil_tmp16, align 4, !dbg !2849
  store i32 147464, i32* %__cil_tmp17, align 4, !dbg !2849
  %11 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2852
  %12 = load i32, i32* %__cil_tmp17, align 4, !dbg !2854
  %13 = icmp eq i32 %11, %12, !dbg !2855
  call void @llvm.dbg.declare(metadata i32* %3, metadata !388, metadata !105), !dbg !2856
  call void @llvm.dbg.declare(metadata i32* %4, metadata !397, metadata !105), !dbg !2863
  call void @llvm.dbg.declare(metadata i32* %1, metadata !388, metadata !105), !dbg !2864
  call void @llvm.dbg.declare(metadata i32* %2, metadata !397, metadata !105), !dbg !2867
  br i1 %13, label %14, label %35, !dbg !2868

; <label>:14                                      ; preds = %0
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2869
  store i32 0, i32* %deviceExtension__PlayActive, align 4, !dbg !2871
  store i32 12, i32* %srb__CdbLength, align 4, !dbg !2872
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !2873
  %15 = load i32, i32* %deviceExtension, align 4, !dbg !2874
  %16 = load i32, i32* %srb, align 4, !dbg !2875
  %17 = call i32 @SendSrbSynchronous(i32 %15, i32 %16, i32 0, i32 0), !dbg !2876
  store i32 %17, i32* %status, align 4, !dbg !2877
  %18 = load i32, i32* %status, align 4, !dbg !2878
  %19 = icmp slt i32 %18, 0, !dbg !2879
  br i1 %19, label %20, label %34, !dbg !2880

; <label>:20                                      ; preds = %14
  %21 = load i32, i32* %status, align 4, !dbg !2881
  store i32 %21, i32* %Irp__IoStatus__Status, align 4, !dbg !2882
  %22 = load i32, i32* %status, align 4, !dbg !2883
  store i32 %22, i32* @myStatus, align 4, !dbg !2884
  %23 = load i32, i32* %7, align 4, !dbg !2885
  %24 = bitcast i32* %3 to i8*, !dbg !2886
  call void @llvm.lifetime.start(i64 4, i8* %24), !dbg !2886
  %25 = bitcast i32* %4 to i8*, !dbg !2886
  call void @llvm.lifetime.start(i64 4, i8* %25), !dbg !2886
  store i32 %23, i32* %3, align 4, !dbg !2886
  store i32 0, i32* %4, align 4, !dbg !2886
  %26 = load i32, i32* @s, align 4, !dbg !2887
  %27 = load i32, i32* @NP, align 4, !dbg !2888
  %28 = icmp eq i32 %26, %27, !dbg !2889
  br i1 %28, label %IofCompleteRequest.exit, label %29, !dbg !2890

; <label>:29                                      ; preds = %20
  call void (...) @__VERIFIER_error() #6, !dbg !2891
  unreachable, !dbg !2891

IofCompleteRequest.exit:                          ; preds = %20
  %30 = load i32, i32* @DC, align 4, !dbg !2893
  store i32 %30, i32* @s, align 4, !dbg !2894
  %31 = bitcast i32* %3 to i8*, !dbg !2895
  call void @llvm.lifetime.end(i64 4, i8* %31), !dbg !2895
  %32 = bitcast i32* %4 to i8*, !dbg !2895
  call void @llvm.lifetime.end(i64 4, i8* %32), !dbg !2895
  %33 = load i32, i32* %status, align 4, !dbg !2896
  store i32 %33, i32* %5, !dbg !2897
  br label %54, !dbg !2897

; <label>:34                                      ; preds = %14
  br label %40, !dbg !2898

; <label>:35                                      ; preds = %0
  %36 = load i32, i32* %6, align 4, !dbg !2899
  %37 = load i32, i32* %7, align 4, !dbg !2902
  %38 = call i32 @CdAudioSendToNextDriver(i32 %36, i32 %37), !dbg !2903
  store i32 %38, i32* %tmp, align 4, !dbg !2904
  %39 = load i32, i32* %tmp, align 4, !dbg !2905
  store i32 %39, i32* %5, !dbg !2906
  br label %54, !dbg !2906

; <label>:40                                      ; preds = %34
  %41 = load i32, i32* %status, align 4, !dbg !2907
  store i32 %41, i32* %Irp__IoStatus__Status, align 4, !dbg !2908
  %42 = load i32, i32* %status, align 4, !dbg !2909
  store i32 %42, i32* @myStatus, align 4, !dbg !2910
  %43 = load i32, i32* %7, align 4, !dbg !2911
  %44 = bitcast i32* %1 to i8*, !dbg !2912
  call void @llvm.lifetime.start(i64 4, i8* %44), !dbg !2912
  %45 = bitcast i32* %2 to i8*, !dbg !2912
  call void @llvm.lifetime.start(i64 4, i8* %45), !dbg !2912
  store i32 %43, i32* %1, align 4, !dbg !2912
  store i32 0, i32* %2, align 4, !dbg !2912
  %46 = load i32, i32* @s, align 4, !dbg !2913
  %47 = load i32, i32* @NP, align 4, !dbg !2914
  %48 = icmp eq i32 %46, %47, !dbg !2915
  br i1 %48, label %IofCompleteRequest.exit1, label %49, !dbg !2916

; <label>:49                                      ; preds = %40
  call void (...) @__VERIFIER_error() #6, !dbg !2917
  unreachable, !dbg !2917

IofCompleteRequest.exit1:                         ; preds = %40
  %50 = load i32, i32* @DC, align 4, !dbg !2919
  store i32 %50, i32* @s, align 4, !dbg !2920
  %51 = bitcast i32* %1 to i8*, !dbg !2921
  call void @llvm.lifetime.end(i64 4, i8* %51), !dbg !2921
  %52 = bitcast i32* %2 to i8*, !dbg !2921
  call void @llvm.lifetime.end(i64 4, i8* %52), !dbg !2921
  %53 = load i32, i32* %status, align 4, !dbg !2922
  store i32 %53, i32* %5, !dbg !2923
  br label %54, !dbg !2923

; <label>:54                                      ; preds = %IofCompleteRequest.exit1, %35, %IofCompleteRequest.exit
  %55 = load i32, i32* %5, !dbg !2924
  ret i32 %55, !dbg !2924
}

; Function Attrs: nounwind ssp uwtable
define void @HpCdrProcessLastSession(i32 %Toc) #0 {
  %1 = alloca i32, align 4
  %index = alloca i32, align 4
  store i32 %Toc, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2925, metadata !105), !dbg !2926
  call void @llvm.dbg.declare(metadata i32* %index, metadata !2927, metadata !105), !dbg !2928
  %2 = call i32 @__VERIFIER_nondet_int(), !dbg !2929
  store i32 %2, i32* %index, align 4, !dbg !2928
  %3 = load i32, i32* %index, align 4, !dbg !2930
  %4 = icmp ne i32 %3, 0, !dbg !2930
  br i1 %4, label %5, label %8, !dbg !2933

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %index, align 4, !dbg !2934
  %7 = add nsw i32 %6, -1, !dbg !2934
  store i32 %7, i32* %index, align 4, !dbg !2934
  br label %8, !dbg !2936

; <label>:8                                       ; preds = %5, %0
  ret void, !dbg !2937
}

; Function Attrs: nounwind ssp uwtable
define i32 @HPCdrCompletion(i32 %DeviceObject, i32 %Irp, i32 %Context) #0 {
  %1 = alloca i32, align 4
  %index.i = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %Irp__PendingReturned = alloca i32, align 4
  %Irp__AssociatedIrp__SystemBuffer = alloca i32, align 4
  store i32 %DeviceObject, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2938, metadata !105), !dbg !2939
  store i32 %Irp, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2940, metadata !105), !dbg !2941
  store i32 %Context, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2942, metadata !105), !dbg !2943
  call void @llvm.dbg.declare(metadata i32* %Irp__PendingReturned, metadata !2944, metadata !105), !dbg !2945
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !2946
  store i32 %5, i32* %Irp__PendingReturned, align 4, !dbg !2945
  call void @llvm.dbg.declare(metadata i32* %Irp__AssociatedIrp__SystemBuffer, metadata !2947, metadata !105), !dbg !2948
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !2949
  store i32 %6, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !2948
  %7 = load i32, i32* %Irp__PendingReturned, align 4, !dbg !2950
  %8 = icmp ne i32 %7, 0, !dbg !2950
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2925, metadata !105), !dbg !2953
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2927, metadata !105), !dbg !2958
  br i1 %8, label %9, label %15, !dbg !2959

; <label>:9                                       ; preds = %0
  %10 = load i32, i32* @pended, align 4, !dbg !2960
  %11 = icmp eq i32 %10, 0, !dbg !2963
  br i1 %11, label %12, label %13, !dbg !2964

; <label>:12                                      ; preds = %9
  store i32 1, i32* @pended, align 4, !dbg !2965
  br label %14, !dbg !2967

; <label>:13                                      ; preds = %9
  call void (...) @__VERIFIER_error() #6, !dbg !2968
  unreachable, !dbg !2968

errorFn.exit:                                     ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %errorFn.exit, %12
  br label %15, !dbg !2972

; <label>:15                                      ; preds = %14, %0
  %16 = load i32, i32* @myStatus, align 4, !dbg !2973
  %17 = icmp sge i32 %16, 0, !dbg !2974
  br i1 %17, label %18, label %30, !dbg !2975

; <label>:18                                      ; preds = %15
  %19 = load i32, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !2976
  %20 = bitcast i32* %1 to i8*, !dbg !2977
  call void @llvm.lifetime.start(i64 4, i8* %20), !dbg !2977
  %21 = bitcast i32* %index.i to i8*, !dbg !2977
  call void @llvm.lifetime.start(i64 4, i8* %21), !dbg !2977
  store i32 %19, i32* %1, align 4, !dbg !2977
  %22 = call i32 @__VERIFIER_nondet_int() #4, !dbg !2978
  store i32 %22, i32* %index.i, align 4, !dbg !2958
  %23 = load i32, i32* %index.i, align 4, !dbg !2979
  %24 = icmp ne i32 %23, 0, !dbg !2979
  br i1 %24, label %25, label %HpCdrProcessLastSession.exit, !dbg !2980

; <label>:25                                      ; preds = %18
  %26 = load i32, i32* %index.i, align 4, !dbg !2981
  %27 = add nsw i32 %26, -1, !dbg !2981
  store i32 %27, i32* %index.i, align 4, !dbg !2981
  br label %HpCdrProcessLastSession.exit, !dbg !2982

HpCdrProcessLastSession.exit:                     ; preds = %18, %25
  %28 = bitcast i32* %1 to i8*, !dbg !2983
  call void @llvm.lifetime.end(i64 4, i8* %28), !dbg !2983
  %29 = bitcast i32* %index.i to i8*, !dbg !2983
  call void @llvm.lifetime.end(i64 4, i8* %29), !dbg !2983
  br label %30, !dbg !2984

; <label>:30                                      ; preds = %HpCdrProcessLastSession.exit, %15
  %31 = load i32, i32* @myStatus, align 4, !dbg !2985
  ret i32 %31, !dbg !2986
}

; Function Attrs: nounwind ssp uwtable
define i32 @CdAudioHPCdrDeviceControl(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %currentIrpStack__Parameters__DeviceIoControl__IoControlCode = alloca i32, align 4
  %deviceExtension__TargetDeviceObject = alloca i32, align 4
  %irpSp__Control = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp___0 = alloca i32, align 4
  %__cil_tmp8 = alloca i32, align 4
  %__cil_tmp9 = alloca i32, align 4
  %__cil_tmp10 = alloca i32, align 4
  %__cil_tmp11 = alloca i32, align 4
  %__cil_tmp12 = alloca i32, align 4
  store i32 %DeviceObject, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2987, metadata !105), !dbg !2988
  store i32 %Irp, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2989, metadata !105), !dbg !2990
  call void @llvm.dbg.declare(metadata i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, metadata !2991, metadata !105), !dbg !2992
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !2993
  store i32 %4, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2992
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__TargetDeviceObject, metadata !2994, metadata !105), !dbg !2995
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !2996
  store i32 %5, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !2995
  call void @llvm.dbg.declare(metadata i32* %irpSp__Control, metadata !2997, metadata !105), !dbg !2998
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !2999, metadata !105), !dbg !3000
  call void @llvm.dbg.declare(metadata i32* %tmp___0, metadata !3001, metadata !105), !dbg !3002
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp8, metadata !3003, metadata !105), !dbg !3004
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp9, metadata !3005, metadata !105), !dbg !3006
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp10, metadata !3007, metadata !105), !dbg !3008
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp11, metadata !3009, metadata !105), !dbg !3010
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp12, metadata !3011, metadata !105), !dbg !3012
  store i32 56, i32* %__cil_tmp8, align 4, !dbg !3013
  store i32 16384, i32* %__cil_tmp9, align 4, !dbg !3013
  store i32 131072, i32* %__cil_tmp10, align 4, !dbg !3016
  store i32 147456, i32* %__cil_tmp11, align 4, !dbg !3016
  store i32 147512, i32* %__cil_tmp12, align 4, !dbg !3016
  %6 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !3017
  %7 = load i32, i32* %__cil_tmp12, align 4, !dbg !3019
  %8 = icmp eq i32 %6, %7, !dbg !3020
  br i1 %8, label %9, label %25, !dbg !3021

; <label>:9                                       ; preds = %0
  %10 = load i32, i32* @s, align 4, !dbg !3022
  %11 = load i32, i32* @NP, align 4, !dbg !3025
  %12 = icmp ne i32 %10, %11, !dbg !3026
  br i1 %12, label %13, label %14, !dbg !3027

; <label>:13                                      ; preds = %9
  call void (...) @__VERIFIER_error() #6, !dbg !3028
  unreachable, !dbg !3028

errorFn.exit:                                     ; No predecessors!
  br label %20, !dbg !3032

; <label>:14                                      ; preds = %9
  %15 = load i32, i32* @compRegistered, align 4, !dbg !3033
  %16 = icmp ne i32 %15, 0, !dbg !3036
  br i1 %16, label %17, label %18, !dbg !3037

; <label>:17                                      ; preds = %14
  call void (...) @__VERIFIER_error() #6, !dbg !3038
  unreachable, !dbg !3038

errorFn.exit1:                                    ; No predecessors!
  br label %19, !dbg !3042

; <label>:18                                      ; preds = %14
  store i32 1, i32* @compRegistered, align 4, !dbg !3043
  store i32 0, i32* @routine, align 4, !dbg !3045
  br label %19

; <label>:19                                      ; preds = %18, %errorFn.exit1
  br label %20

; <label>:20                                      ; preds = %19, %errorFn.exit
  store i32 224, i32* %irpSp__Control, align 4, !dbg !3046
  %21 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !3048
  %22 = load i32, i32* %3, align 4, !dbg !3049
  %23 = call i32 @IofCallDriver(i32 %21, i32 %22), !dbg !3050
  store i32 %23, i32* %tmp, align 4, !dbg !3051
  %24 = load i32, i32* %tmp, align 4, !dbg !3052
  store i32 %24, i32* %1, !dbg !3053
  br label %30, !dbg !3053

; <label>:25                                      ; preds = %0
  %26 = load i32, i32* %2, align 4, !dbg !3054
  %27 = load i32, i32* %3, align 4, !dbg !3057
  %28 = call i32 @CdAudioSendToNextDriver(i32 %26, i32 %27), !dbg !3058
  store i32 %28, i32* %tmp___0, align 4, !dbg !3059
  %29 = load i32, i32* %tmp___0, align 4, !dbg !3060
  store i32 %29, i32* %1, !dbg !3061
  br label %30, !dbg !3061

; <label>:30                                      ; preds = %25, %20
  %31 = load i32, i32* %1, !dbg !3062
  ret i32 %31, !dbg !3062
}

; Function Attrs: nounwind ssp uwtable
define i32 @CdAudioForwardIrpSynchronous(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %deviceExtension__TargetDeviceObject = alloca i32, align 4
  %event = alloca i32, align 4
  %status = alloca i32, align 4
  %irpSp__Control = alloca i32, align 4
  store i32 %DeviceObject, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3063, metadata !105), !dbg !3064
  store i32 %Irp, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3065, metadata !105), !dbg !3066
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__TargetDeviceObject, metadata !3067, metadata !105), !dbg !3068
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !3069
  store i32 %3, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !3068
  call void @llvm.dbg.declare(metadata i32* %event, metadata !3070, metadata !105), !dbg !3071
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !3072
  store i32 %4, i32* %event, align 4, !dbg !3071
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3073, metadata !105), !dbg !3074
  call void @llvm.dbg.declare(metadata i32* %irpSp__Control, metadata !3075, metadata !105), !dbg !3076
  %5 = load i32, i32* @s, align 4, !dbg !3077
  %6 = load i32, i32* @NP, align 4, !dbg !3080
  %7 = icmp ne i32 %5, %6, !dbg !3081
  br i1 %7, label %8, label %9, !dbg !3082

; <label>:8                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !3083
  unreachable, !dbg !3083

errorFn.exit:                                     ; No predecessors!
  br label %15, !dbg !3087

; <label>:9                                       ; preds = %0
  %10 = load i32, i32* @compRegistered, align 4, !dbg !3088
  %11 = icmp ne i32 %10, 0, !dbg !3091
  br i1 %11, label %12, label %13, !dbg !3092

; <label>:12                                      ; preds = %9
  call void (...) @__VERIFIER_error() #6, !dbg !3093
  unreachable, !dbg !3093

errorFn.exit1:                                    ; No predecessors!
  br label %14, !dbg !3097

; <label>:13                                      ; preds = %9
  store i32 1, i32* @compRegistered, align 4, !dbg !3098
  store i32 1, i32* @routine, align 4, !dbg !3100
  br label %14

; <label>:14                                      ; preds = %13, %errorFn.exit1
  br label %15

; <label>:15                                      ; preds = %14, %errorFn.exit
  store i32 224, i32* %irpSp__Control, align 4, !dbg !3101
  %16 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !3103
  %17 = load i32, i32* %2, align 4, !dbg !3104
  %18 = call i32 @IofCallDriver(i32 %16, i32 %17), !dbg !3105
  store i32 %18, i32* %status, align 4, !dbg !3106
  store i32 259, i32* %status, align 4, !dbg !3107
  %19 = load i32, i32* %status, align 4, !dbg !3108
  %20 = icmp ne i32 %19, 0, !dbg !3108
  br i1 %20, label %21, label %27, !dbg !3110

; <label>:21                                      ; preds = %15
  %22 = load i32, i32* %event, align 4, !dbg !3111
  %23 = load i32, i32* @Executive, align 4, !dbg !3114
  %24 = load i32, i32* @KernelMode, align 4, !dbg !3115
  %25 = call i32 @KeWaitForSingleObject(i32 %22, i32 %23, i32 %24, i32 0, i32 0), !dbg !3116
  %26 = load i32, i32* @myStatus, align 4, !dbg !3117
  store i32 %26, i32* %status, align 4, !dbg !3118
  br label %27, !dbg !3119

; <label>:27                                      ; preds = %21, %15
  %28 = load i32, i32* %status, align 4, !dbg !3120
  ret i32 %28, !dbg !3121
}

; Function Attrs: nounwind ssp uwtable
define void @CdAudioUnload(i32 %DriverObject) #0 {
  %1 = alloca i32, align 4
  store i32 %DriverObject, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3122, metadata !105), !dbg !3123
  ret void, !dbg !3124
}

; Function Attrs: nounwind ssp uwtable
define i32 @CdAudioPower(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %Irp__CurrentLocation = alloca i32, align 4
  %Irp__Tail__Overlay__CurrentStackLocation = alloca i32, align 4
  %deviceExtension__TargetDeviceObject = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %DeviceObject, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3126, metadata !105), !dbg !3127
  store i32 %Irp, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3128, metadata !105), !dbg !3129
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !3130, metadata !105), !dbg !3131
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !3132
  store i32 %3, i32* %Irp__CurrentLocation, align 4, !dbg !3131
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !3133, metadata !105), !dbg !3134
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !3135
  store i32 %4, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !3134
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__TargetDeviceObject, metadata !3136, metadata !105), !dbg !3137
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !3138
  store i32 %5, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !3137
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !3139, metadata !105), !dbg !3140
  %6 = load i32, i32* @s, align 4, !dbg !3141
  %7 = load i32, i32* @NP, align 4, !dbg !3144
  %8 = icmp eq i32 %6, %7, !dbg !3145
  br i1 %8, label %9, label %11, !dbg !3146

; <label>:9                                       ; preds = %0
  %10 = load i32, i32* @SKIP1, align 4, !dbg !3147
  store i32 %10, i32* @s, align 4, !dbg !3149
  br label %12, !dbg !3150

; <label>:11                                      ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !3151
  unreachable, !dbg !3151

errorFn.exit:                                     ; No predecessors!
  br label %12

; <label>:12                                      ; preds = %errorFn.exit, %9
  %13 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !3155
  %14 = add nsw i32 %13, 1, !dbg !3155
  store i32 %14, i32* %Irp__CurrentLocation, align 4, !dbg !3155
  %15 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !3157
  %16 = add nsw i32 %15, 1, !dbg !3157
  store i32 %16, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !3157
  %17 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !3158
  %18 = load i32, i32* %2, align 4, !dbg !3159
  %19 = call i32 @PoCallDriver(i32 %17, i32 %18), !dbg !3160
  store i32 %19, i32* %tmp, align 4, !dbg !3161
  %20 = load i32, i32* %tmp, align 4, !dbg !3162
  ret i32 %20, !dbg !3163
}

; Function Attrs: nounwind ssp uwtable
define void @stub_driver_init() #0 {
  %1 = load i32, i32* @NP, align 4, !dbg !3164
  store i32 %1, i32* @s, align 4, !dbg !3166
  store i32 0, i32* @customIrp, align 4, !dbg !3167
  %2 = load i32, i32* @customIrp, align 4, !dbg !3168
  store i32 %2, i32* @setEventCalled, align 4, !dbg !3169
  %3 = load i32, i32* @setEventCalled, align 4, !dbg !3170
  store i32 %3, i32* @lowerDriverReturn, align 4, !dbg !3171
  %4 = load i32, i32* @lowerDriverReturn, align 4, !dbg !3172
  store i32 %4, i32* @compRegistered, align 4, !dbg !3173
  %5 = load i32, i32* @compRegistered, align 4, !dbg !3174
  store i32 %5, i32* @compFptr, align 4, !dbg !3175
  %6 = load i32, i32* @compFptr, align 4, !dbg !3176
  store i32 %6, i32* @pended, align 4, !dbg !3177
  ret void, !dbg !3178
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %pirp__IoStatus__Status = alloca i32, align 4
  %d = alloca i32, align 4
  %status = alloca i32, align 4
  %irp = alloca i32, align 4
  %we_should_unload = alloca i32, align 4
  %irp_choice = alloca i32, align 4
  %devobj = alloca i32, align 4
  %__cil_tmp9 = alloca i32, align 4
  %tmp_ndt_1 = alloca i32, align 4
  %tmp_ndt_2 = alloca i32, align 4
  %tmp_ndt_3 = alloca i32, align 4
  store i32 0, i32* %2
  call void @llvm.dbg.declare(metadata i32* %pirp__IoStatus__Status, metadata !3179, metadata !105), !dbg !3180
  call void @llvm.dbg.declare(metadata i32* %d, metadata !3181, metadata !105), !dbg !3182
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !3183
  store i32 %3, i32* %d, align 4, !dbg !3182
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3184, metadata !105), !dbg !3185
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !3186
  store i32 %4, i32* %status, align 4, !dbg !3185
  call void @llvm.dbg.declare(metadata i32* %irp, metadata !3187, metadata !105), !dbg !3188
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !3189
  store i32 %5, i32* %irp, align 4, !dbg !3188
  call void @llvm.dbg.declare(metadata i32* %we_should_unload, metadata !3190, metadata !105), !dbg !3191
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !3192
  store i32 %6, i32* %we_should_unload, align 4, !dbg !3191
  call void @llvm.dbg.declare(metadata i32* %irp_choice, metadata !3193, metadata !105), !dbg !3194
  %7 = call i32 @__VERIFIER_nondet_int(), !dbg !3195
  store i32 %7, i32* %irp_choice, align 4, !dbg !3194
  call void @llvm.dbg.declare(metadata i32* %devobj, metadata !3196, metadata !105), !dbg !3197
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !3198
  store i32 %8, i32* %devobj, align 4, !dbg !3197
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp9, metadata !3199, metadata !105), !dbg !3200
  store i32 0, i32* @s, align 4, !dbg !3201
  store i32 0, i32* @UNLOADED, align 4, !dbg !3204
  store i32 0, i32* @NP, align 4, !dbg !3205
  store i32 0, i32* @DC, align 4, !dbg !3206
  store i32 0, i32* @SKIP1, align 4, !dbg !3207
  store i32 0, i32* @SKIP2, align 4, !dbg !3208
  store i32 0, i32* @MPR1, align 4, !dbg !3209
  store i32 0, i32* @MPR3, align 4, !dbg !3210
  store i32 0, i32* @IPC, align 4, !dbg !3211
  store i32 0, i32* @pended, align 4, !dbg !3212
  store i32 0, i32* @compFptr, align 4, !dbg !3213
  store i32 0, i32* @compRegistered, align 4, !dbg !3214
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !3215
  store i32 0, i32* @setEventCalled, align 4, !dbg !3216
  store i32 0, i32* @customIrp, align 4, !dbg !3217
  store i32 0, i32* @routine, align 4, !dbg !3218
  store i32 0, i32* @myStatus, align 4, !dbg !3219
  store i32 0, i32* @pirp, align 4, !dbg !3220
  store i32 0, i32* @Executive, align 4, !dbg !3221
  store i32 5, i32* @Suspended, align 4, !dbg !3222
  store i32 0, i32* @KernelMode, align 4, !dbg !3223
  store i32 1, i32* @DeviceUsageTypePaging, align 4, !dbg !3224
  %9 = load i32, i32* %irp, align 4, !dbg !3225
  store i32 %9, i32* @pirp, align 4, !dbg !3226
  store i32 0, i32* @UNLOADED, align 4, !dbg !3227
  store i32 1, i32* @NP, align 4, !dbg !3229
  store i32 2, i32* @DC, align 4, !dbg !3230
  store i32 3, i32* @SKIP1, align 4, !dbg !3231
  store i32 4, i32* @SKIP2, align 4, !dbg !3232
  store i32 5, i32* @MPR1, align 4, !dbg !3233
  store i32 6, i32* @MPR3, align 4, !dbg !3234
  store i32 7, i32* @IPC, align 4, !dbg !3235
  %10 = load i32, i32* @UNLOADED, align 4, !dbg !3236
  store i32 %10, i32* @s, align 4, !dbg !3237
  store i32 0, i32* @pended, align 4, !dbg !3238
  store i32 0, i32* @compFptr, align 4, !dbg !3239
  store i32 0, i32* @compRegistered, align 4, !dbg !3240
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !3241
  store i32 0, i32* @setEventCalled, align 4, !dbg !3242
  store i32 0, i32* @customIrp, align 4, !dbg !3243
  %11 = load i32, i32* %status, align 4, !dbg !3244
  %12 = icmp sge i32 %11, 0, !dbg !3246
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3122, metadata !105), !dbg !3247
  br i1 %12, label %13, label %77, !dbg !3253

; <label>:13                                      ; preds = %0
  %14 = load i32, i32* @NP, align 4, !dbg !3254
  store i32 %14, i32* @s, align 4, !dbg !3255
  store i32 0, i32* @customIrp, align 4, !dbg !3256
  %15 = load i32, i32* @customIrp, align 4, !dbg !3257
  store i32 %15, i32* @setEventCalled, align 4, !dbg !3258
  %16 = load i32, i32* @setEventCalled, align 4, !dbg !3259
  store i32 %16, i32* @lowerDriverReturn, align 4, !dbg !3260
  %17 = load i32, i32* @lowerDriverReturn, align 4, !dbg !3261
  store i32 %17, i32* @compRegistered, align 4, !dbg !3262
  %18 = load i32, i32* @compRegistered, align 4, !dbg !3263
  store i32 %18, i32* @compFptr, align 4, !dbg !3264
  %19 = load i32, i32* @compFptr, align 4, !dbg !3265
  store i32 %19, i32* @pended, align 4, !dbg !3266
  store i32 0, i32* %pirp__IoStatus__Status, align 4, !dbg !3267
  store i32 0, i32* @myStatus, align 4, !dbg !3268
  %20 = load i32, i32* %irp_choice, align 4, !dbg !3269
  %21 = icmp eq i32 %20, 0, !dbg !3271
  br i1 %21, label %22, label %23, !dbg !3272

; <label>:22                                      ; preds = %13
  store i32 -1073741637, i32* %pirp__IoStatus__Status, align 4, !dbg !3273
  store i32 -1073741637, i32* @myStatus, align 4, !dbg !3275
  br label %23, !dbg !3276

; <label>:23                                      ; preds = %22, %13
  %24 = load i32, i32* @NP, align 4, !dbg !3277
  store i32 %24, i32* @s, align 4, !dbg !3280
  store i32 0, i32* @customIrp, align 4, !dbg !3281
  %25 = load i32, i32* @customIrp, align 4, !dbg !3282
  store i32 %25, i32* @setEventCalled, align 4, !dbg !3283
  %26 = load i32, i32* @setEventCalled, align 4, !dbg !3284
  store i32 %26, i32* @lowerDriverReturn, align 4, !dbg !3285
  %27 = load i32, i32* @lowerDriverReturn, align 4, !dbg !3286
  store i32 %27, i32* @compRegistered, align 4, !dbg !3287
  %28 = load i32, i32* @compRegistered, align 4, !dbg !3288
  store i32 %28, i32* @compFptr, align 4, !dbg !3289
  %29 = load i32, i32* @compFptr, align 4, !dbg !3290
  store i32 %29, i32* @pended, align 4, !dbg !3291
  %30 = load i32, i32* %status, align 4, !dbg !3292
  %31 = icmp slt i32 %30, 0, !dbg !3295
  br i1 %31, label %32, label %33, !dbg !3296

; <label>:32                                      ; preds = %23
  store i32 -1, i32* %2, !dbg !3297
  br label %158, !dbg !3297

; <label>:33                                      ; preds = %23
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_1, metadata !3299, metadata !105), !dbg !3300
  %34 = call i32 @__VERIFIER_nondet_int(), !dbg !3301
  store i32 %34, i32* %tmp_ndt_1, align 4, !dbg !3302
  %35 = load i32, i32* %tmp_ndt_1, align 4, !dbg !3303
  %36 = icmp eq i32 %35, 2, !dbg !3305
  br i1 %36, label %37, label %38, !dbg !3306

; <label>:37                                      ; preds = %33
  br label %51, !dbg !3307

; <label>:38                                      ; preds = %33
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_2, metadata !3309, metadata !105), !dbg !3311
  %39 = call i32 @__VERIFIER_nondet_int(), !dbg !3312
  store i32 %39, i32* %tmp_ndt_2, align 4, !dbg !3313
  %40 = load i32, i32* %tmp_ndt_2, align 4, !dbg !3314
  %41 = icmp eq i32 %40, 3, !dbg !3316
  br i1 %41, label %42, label %43, !dbg !3317

; <label>:42                                      ; preds = %38
  br label %55, !dbg !3318

; <label>:43                                      ; preds = %38
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_3, metadata !3320, metadata !105), !dbg !3322
  %44 = call i32 @__VERIFIER_nondet_int(), !dbg !3323
  store i32 %44, i32* %tmp_ndt_3, align 4, !dbg !3324
  %45 = load i32, i32* %tmp_ndt_3, align 4, !dbg !3325
  %46 = icmp eq i32 %45, 4, !dbg !3327
  br i1 %46, label %47, label %48, !dbg !3328

; <label>:47                                      ; preds = %43
  br label %59, !dbg !3329

; <label>:48                                      ; preds = %43
  br label %63, !dbg !3331
                                                  ; No predecessors!
  br i1 false, label %50, label %64, !dbg !3333

; <label>:50                                      ; preds = %49
  br label %51, !dbg !3334

; <label>:51                                      ; preds = %50, %37
  %52 = load i32, i32* %devobj, align 4, !dbg !3336
  %53 = load i32, i32* @pirp, align 4, !dbg !3339
  %54 = call i32 @CdAudioDeviceControl(i32 %52, i32 %53), !dbg !3340
  store i32 %54, i32* %status, align 4, !dbg !3341
  br label %65, !dbg !3342

; <label>:55                                      ; preds = %42
  %56 = load i32, i32* %devobj, align 4, !dbg !3343
  %57 = load i32, i32* @pirp, align 4, !dbg !3345
  %58 = call i32 @CdAudioPnp(i32 %56, i32 %57), !dbg !3346
  store i32 %58, i32* %status, align 4, !dbg !3347
  br label %65, !dbg !3348

; <label>:59                                      ; preds = %47
  %60 = load i32, i32* %devobj, align 4, !dbg !3349
  %61 = load i32, i32* @pirp, align 4, !dbg !3351
  %62 = call i32 @CdAudioPower(i32 %60, i32 %61), !dbg !3352
  store i32 %62, i32* %status, align 4, !dbg !3353
  br label %65, !dbg !3354

; <label>:63                                      ; preds = %48
  store i32 -1, i32* %2, !dbg !3355
  br label %158, !dbg !3355

; <label>:64                                      ; preds = %49
  br label %65, !dbg !3356

; <label>:65                                      ; preds = %64, %59, %55, %51
  br label %66

; <label>:66                                      ; preds = %65
  br label %67

; <label>:67                                      ; preds = %66
  br label %68

; <label>:68                                      ; preds = %67
  br label %69

; <label>:69                                      ; preds = %68
  %70 = load i32, i32* %we_should_unload, align 4, !dbg !3357
  %71 = icmp ne i32 %70, 0, !dbg !3357
  br i1 %71, label %72, label %76, !dbg !3358

; <label>:72                                      ; preds = %69
  %73 = load i32, i32* %d, align 4, !dbg !3359
  %74 = bitcast i32* %1 to i8*, !dbg !3360
  call void @llvm.lifetime.start(i64 4, i8* %74), !dbg !3360
  store i32 %73, i32* %1, align 4, !dbg !3360
  %75 = bitcast i32* %1 to i8*, !dbg !3361
  call void @llvm.lifetime.end(i64 4, i8* %75), !dbg !3361
  br label %76, !dbg !3362

; <label>:76                                      ; preds = %72, %69
  br label %77, !dbg !3363

; <label>:77                                      ; preds = %76, %0
  %78 = load i32, i32* @pended, align 4, !dbg !3364
  %79 = icmp eq i32 %78, 1, !dbg !3366
  br i1 %79, label %80, label %88, !dbg !3367

; <label>:80                                      ; preds = %77
  %81 = load i32, i32* @s, align 4, !dbg !3368
  %82 = load i32, i32* @NP, align 4, !dbg !3371
  %83 = icmp eq i32 %81, %82, !dbg !3372
  br i1 %83, label %84, label %86, !dbg !3373

; <label>:84                                      ; preds = %80
  %85 = load i32, i32* @NP, align 4, !dbg !3374
  store i32 %85, i32* @s, align 4, !dbg !3376
  br label %87, !dbg !3377

; <label>:86                                      ; preds = %80
  br label %89, !dbg !3378

; <label>:87                                      ; preds = %84
  br label %156, !dbg !3380

; <label>:88                                      ; preds = %77
  br label %89, !dbg !3381

; <label>:89                                      ; preds = %88, %86
  %90 = load i32, i32* @pended, align 4, !dbg !3382
  %91 = icmp eq i32 %90, 1, !dbg !3385
  br i1 %91, label %92, label %100, !dbg !3386

; <label>:92                                      ; preds = %89
  %93 = load i32, i32* @s, align 4, !dbg !3387
  %94 = load i32, i32* @MPR3, align 4, !dbg !3390
  %95 = icmp eq i32 %93, %94, !dbg !3391
  br i1 %95, label %96, label %98, !dbg !3392

; <label>:96                                      ; preds = %92
  %97 = load i32, i32* @MPR3, align 4, !dbg !3393
  store i32 %97, i32* @s, align 4, !dbg !3395
  br label %99, !dbg !3396

; <label>:98                                      ; preds = %92
  br label %101, !dbg !3397

; <label>:99                                      ; preds = %96
  br label %155, !dbg !3399

; <label>:100                                     ; preds = %89
  br label %101, !dbg !3400

; <label>:101                                     ; preds = %100, %98
  %102 = load i32, i32* @s, align 4, !dbg !3401
  %103 = load i32, i32* @UNLOADED, align 4, !dbg !3404
  %104 = icmp ne i32 %102, %103, !dbg !3405
  br i1 %104, label %105, label %154, !dbg !3406

; <label>:105                                     ; preds = %101
  %106 = load i32, i32* %status, align 4, !dbg !3407
  %107 = icmp ne i32 %106, -1, !dbg !3410
  br i1 %107, label %108, label %153, !dbg !3411

; <label>:108                                     ; preds = %105
  %109 = load i32, i32* @s, align 4, !dbg !3412
  %110 = load i32, i32* @SKIP2, align 4, !dbg !3415
  %111 = icmp ne i32 %109, %110, !dbg !3416
  br i1 %111, label %112, label %125, !dbg !3417

; <label>:112                                     ; preds = %108
  %113 = load i32, i32* @s, align 4, !dbg !3418
  %114 = load i32, i32* @IPC, align 4, !dbg !3421
  %115 = icmp ne i32 %113, %114, !dbg !3422
  br i1 %115, label %116, label %123, !dbg !3423

; <label>:116                                     ; preds = %112
  %117 = load i32, i32* @s, align 4, !dbg !3424
  %118 = load i32, i32* @DC, align 4, !dbg !3427
  %119 = icmp ne i32 %117, %118, !dbg !3428
  br i1 %119, label %120, label %121, !dbg !3429

; <label>:120                                     ; preds = %116
  call void (...) @__VERIFIER_error() #6, !dbg !3430
  unreachable, !dbg !3430

errorFn.exit3:                                    ; No predecessors!
  br label %122, !dbg !3434

; <label>:121                                     ; preds = %116
  br label %126, !dbg !3435

; <label>:122                                     ; preds = %errorFn.exit3
  br label %124, !dbg !3437

; <label>:123                                     ; preds = %112
  br label %126, !dbg !3438

; <label>:124                                     ; preds = %122
  br label %152, !dbg !3440

; <label>:125                                     ; preds = %108
  br label %126, !dbg !3441

; <label>:126                                     ; preds = %125, %123, %121
  %127 = load i32, i32* @pended, align 4, !dbg !3442
  %128 = icmp ne i32 %127, 1, !dbg !3445
  br i1 %128, label %129, label %145, !dbg !3446

; <label>:129                                     ; preds = %126
  %130 = load i32, i32* @s, align 4, !dbg !3447
  %131 = load i32, i32* @DC, align 4, !dbg !3450
  %132 = icmp eq i32 %130, %131, !dbg !3451
  br i1 %132, label %133, label %138, !dbg !3452

; <label>:133                                     ; preds = %129
  %134 = load i32, i32* %status, align 4, !dbg !3453
  %135 = icmp eq i32 %134, 259, !dbg !3456
  br i1 %135, label %136, label %137, !dbg !3457

; <label>:136                                     ; preds = %133
  call void (...) @__VERIFIER_error() #6, !dbg !3458
  unreachable, !dbg !3458

errorFn.exit2:                                    ; No predecessors!
  br label %137, !dbg !3461

; <label>:137                                     ; preds = %errorFn.exit2, %133
  br label %144, !dbg !3462

; <label>:138                                     ; preds = %129
  %139 = load i32, i32* %status, align 4, !dbg !3463
  %140 = load i32, i32* @lowerDriverReturn, align 4, !dbg !3466
  %141 = icmp ne i32 %139, %140, !dbg !3467
  br i1 %141, label %142, label %143, !dbg !3468

; <label>:142                                     ; preds = %138
  call void (...) @__VERIFIER_error() #6, !dbg !3469
  unreachable, !dbg !3469

errorFn.exit1:                                    ; No predecessors!
  br label %143, !dbg !3472

; <label>:143                                     ; preds = %errorFn.exit1, %138
  br label %144

; <label>:144                                     ; preds = %143, %137
  br label %151, !dbg !3473

; <label>:145                                     ; preds = %126
  %146 = load i32, i32* %status, align 4, !dbg !3474
  %147 = icmp ne i32 %146, 259, !dbg !3477
  br i1 %147, label %148, label %149, !dbg !3478

; <label>:148                                     ; preds = %145
  call void (...) @__VERIFIER_error() #6, !dbg !3479
  unreachable, !dbg !3479

errorFn.exit:                                     ; No predecessors!
  br label %150, !dbg !3483

; <label>:149                                     ; preds = %145
  br label %150

; <label>:150                                     ; preds = %149, %errorFn.exit
  br label %151

; <label>:151                                     ; preds = %150, %144
  br label %152

; <label>:152                                     ; preds = %151, %124
  br label %153, !dbg !3484

; <label>:153                                     ; preds = %152, %105
  br label %154, !dbg !3485

; <label>:154                                     ; preds = %153, %101
  br label %155

; <label>:155                                     ; preds = %154, %99
  br label %156

; <label>:156                                     ; preds = %155, %87
  %157 = load i32, i32* %status, align 4, !dbg !3486
  store i32 %157, i32* %2, !dbg !3487
  br label %158, !dbg !3487

; <label>:158                                     ; preds = %156, %63, %32
  %159 = load i32, i32* %2, !dbg !3488
  ret i32 %159, !dbg !3488
}

; Function Attrs: nounwind ssp uwtable
define void @stubMoreProcessingRequired() #0 {
  %1 = load i32, i32* @s, align 4, !dbg !3489
  %2 = load i32, i32* @NP, align 4, !dbg !3492
  %3 = icmp eq i32 %1, %2, !dbg !3493
  br i1 %3, label %4, label %6, !dbg !3494

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* @MPR1, align 4, !dbg !3495
  store i32 %5, i32* @s, align 4, !dbg !3497
  br label %7, !dbg !3498

; <label>:6                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !3499
  unreachable, !dbg !3499

errorFn.exit:                                     ; No predecessors!
  br label %7

; <label>:7                                       ; preds = %errorFn.exit, %4
  ret void, !dbg !3503
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
  %Irp__PendingReturned = alloca i32, align 4
  %returnVal2 = alloca i32, align 4
  %compRetStatus = alloca i32, align 4
  %lcontext = alloca i32, align 4
  %__cil_tmp8 = alloca i64, align 8
  %tmp_ndt_4 = alloca i32, align 4
  %tmp_ndt_5 = alloca i32, align 4
  store i32 %DeviceObject, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3504, metadata !105), !dbg !3505
  store i32 %Irp, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3506, metadata !105), !dbg !3507
  call void @llvm.dbg.declare(metadata i32* %Irp__PendingReturned, metadata !3508, metadata !105), !dbg !3509
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !3510
  store i32 %9, i32* %Irp__PendingReturned, align 4, !dbg !3509
  call void @llvm.dbg.declare(metadata i32* %returnVal2, metadata !3511, metadata !105), !dbg !3512
  call void @llvm.dbg.declare(metadata i32* %compRetStatus, metadata !3513, metadata !105), !dbg !3514
  call void @llvm.dbg.declare(metadata i32* %lcontext, metadata !3515, metadata !105), !dbg !3516
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !3517
  store i32 %10, i32* %lcontext, align 4, !dbg !3516
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp8, metadata !3518, metadata !105), !dbg !3519
  %11 = load i32, i32* @compRegistered, align 4, !dbg !3520
  %12 = icmp ne i32 %11, 0, !dbg !3520
  call void @llvm.dbg.declare(metadata i32* %1, metadata !198, metadata !105), !dbg !3523
  call void @llvm.dbg.declare(metadata i32* %2, metadata !200, metadata !105), !dbg !3532
  call void @llvm.dbg.declare(metadata i32* %3, metadata !202, metadata !105), !dbg !3533
  call void @llvm.dbg.declare(metadata i32* %l.i.i, metadata !204, metadata !105), !dbg !3534
  call void @llvm.dbg.declare(metadata i32* %4, metadata !181, metadata !105), !dbg !3535
  call void @llvm.dbg.declare(metadata i32* %5, metadata !183, metadata !105), !dbg !3536
  call void @llvm.dbg.declare(metadata i32* %6, metadata !185, metadata !105), !dbg !3537
  br i1 %12, label %13, label %58, !dbg !3538

; <label>:13                                      ; preds = %0
  %14 = load i32, i32* @routine, align 4, !dbg !3539
  %15 = icmp eq i32 %14, 0, !dbg !3540
  br i1 %15, label %16, label %21, !dbg !3541

; <label>:16                                      ; preds = %13
  %17 = load i32, i32* %7, align 4, !dbg !3542
  %18 = load i32, i32* %8, align 4, !dbg !3545
  %19 = load i32, i32* %lcontext, align 4, !dbg !3546
  %20 = call i32 @HPCdrCompletion(i32 %17, i32 %18, i32 %19), !dbg !3547
  store i32 %20, i32* %compRetStatus, align 4, !dbg !3548
  br label %46, !dbg !3549

; <label>:21                                      ; preds = %13
  %22 = load i32, i32* @routine, align 4, !dbg !3550
  %23 = icmp eq i32 %22, 1, !dbg !3551
  br i1 %23, label %24, label %45, !dbg !3552

; <label>:24                                      ; preds = %21
  %25 = load i32, i32* %7, align 4, !dbg !3553
  %26 = load i32, i32* %8, align 4, !dbg !3554
  %27 = load i32, i32* %lcontext, align 4, !dbg !3555
  %28 = bitcast i32* %4 to i8*, !dbg !3556
  call void @llvm.lifetime.start(i64 4, i8* %28), !dbg !3556
  %29 = bitcast i32* %5 to i8*, !dbg !3556
  call void @llvm.lifetime.start(i64 4, i8* %29), !dbg !3556
  %30 = bitcast i32* %6 to i8*, !dbg !3556
  call void @llvm.lifetime.start(i64 4, i8* %30), !dbg !3556
  store i32 %25, i32* %4, align 4, !dbg !3556
  store i32 %26, i32* %5, align 4, !dbg !3556
  store i32 %27, i32* %6, align 4, !dbg !3556
  %31 = load i32, i32* %6, align 4, !dbg !3557
  %32 = bitcast i32* %1 to i8*, !dbg !3558
  call void @llvm.lifetime.start(i64 4, i8* %32) #4, !dbg !3558
  %33 = bitcast i32* %2 to i8*, !dbg !3558
  call void @llvm.lifetime.start(i64 4, i8* %33) #4, !dbg !3558
  %34 = bitcast i32* %3 to i8*, !dbg !3558
  call void @llvm.lifetime.start(i64 4, i8* %34) #4, !dbg !3558
  %35 = bitcast i32* %l.i.i to i8*, !dbg !3558
  call void @llvm.lifetime.start(i64 4, i8* %35) #4, !dbg !3558
  store i32 %31, i32* %1, align 4, !dbg !3558
  store i32 0, i32* %2, align 4, !dbg !3558
  store i32 0, i32* %3, align 4, !dbg !3558
  %36 = call i32 @__VERIFIER_nondet_int() #4, !dbg !3559
  store i32 %36, i32* %l.i.i, align 4, !dbg !3534
  store i32 1, i32* @setEventCalled, align 4, !dbg !3560
  %37 = load i32, i32* %l.i.i, align 4, !dbg !3561
  %38 = bitcast i32* %1 to i8*, !dbg !3562
  call void @llvm.lifetime.end(i64 4, i8* %38) #4, !dbg !3562
  %39 = bitcast i32* %2 to i8*, !dbg !3562
  call void @llvm.lifetime.end(i64 4, i8* %39) #4, !dbg !3562
  %40 = bitcast i32* %3 to i8*, !dbg !3562
  call void @llvm.lifetime.end(i64 4, i8* %40) #4, !dbg !3562
  %41 = bitcast i32* %l.i.i to i8*, !dbg !3562
  call void @llvm.lifetime.end(i64 4, i8* %41) #4, !dbg !3562
  %42 = bitcast i32* %4 to i8*, !dbg !3563
  call void @llvm.lifetime.end(i64 4, i8* %42), !dbg !3563
  %43 = bitcast i32* %5 to i8*, !dbg !3563
  call void @llvm.lifetime.end(i64 4, i8* %43), !dbg !3563
  %44 = bitcast i32* %6 to i8*, !dbg !3563
  call void @llvm.lifetime.end(i64 4, i8* %44), !dbg !3563
  store i32 -1073741802, i32* %compRetStatus, align 4, !dbg !3564
  br label %45, !dbg !3565

; <label>:45                                      ; preds = %24, %21
  br label %46

; <label>:46                                      ; preds = %45, %16
  %47 = load i32, i32* %compRetStatus, align 4, !dbg !3566
  %48 = sext i32 %47 to i64, !dbg !3568
  store i64 %48, i64* %__cil_tmp8, align 8, !dbg !3569
  %49 = load i64, i64* %__cil_tmp8, align 8, !dbg !3570
  %50 = icmp eq i64 %49, -1073741802, !dbg !3572
  br i1 %50, label %51, label %57, !dbg !3573

; <label>:51                                      ; preds = %46
  %52 = load i32, i32* @s, align 4, !dbg !3574
  %53 = load i32, i32* @NP, align 4, !dbg !3578
  %54 = icmp eq i32 %52, %53, !dbg !3579
  br i1 %54, label %stubMoreProcessingRequired.exit, label %55, !dbg !3580

; <label>:55                                      ; preds = %51
  call void (...) @__VERIFIER_error() #6, !dbg !3581
  unreachable, !dbg !3581

stubMoreProcessingRequired.exit:                  ; preds = %51
  %56 = load i32, i32* @MPR1, align 4, !dbg !3583
  store i32 %56, i32* @s, align 4, !dbg !3584
  br label %57, !dbg !3585

; <label>:57                                      ; preds = %stubMoreProcessingRequired.exit, %46
  br label %58, !dbg !3586

; <label>:58                                      ; preds = %57, %0
  %59 = load i32, i32* %Irp__PendingReturned, align 4, !dbg !3587
  %60 = icmp ne i32 %59, 0, !dbg !3587
  br i1 %60, label %61, label %62, !dbg !3589

; <label>:61                                      ; preds = %58
  store i32 259, i32* %returnVal2, align 4, !dbg !3590
  br label %83, !dbg !3592

; <label>:62                                      ; preds = %58
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_4, metadata !3593, metadata !105), !dbg !3595
  %63 = call i32 @__VERIFIER_nondet_int(), !dbg !3596
  store i32 %63, i32* %tmp_ndt_4, align 4, !dbg !3597
  %64 = load i32, i32* %tmp_ndt_4, align 4, !dbg !3598
  %65 = icmp eq i32 %64, 0, !dbg !3600
  br i1 %65, label %66, label %67, !dbg !3601

; <label>:66                                      ; preds = %62
  br label %75, !dbg !3602

; <label>:67                                      ; preds = %62
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_5, metadata !3604, metadata !105), !dbg !3606
  %68 = call i32 @__VERIFIER_nondet_int(), !dbg !3607
  store i32 %68, i32* %tmp_ndt_5, align 4, !dbg !3608
  %69 = load i32, i32* %tmp_ndt_5, align 4, !dbg !3609
  %70 = icmp eq i32 %69, 1, !dbg !3611
  br i1 %70, label %71, label %72, !dbg !3612

; <label>:71                                      ; preds = %67
  br label %76, !dbg !3613

; <label>:72                                      ; preds = %67
  br label %77, !dbg !3615
                                                  ; No predecessors!
  br i1 false, label %74, label %78, !dbg !3617

; <label>:74                                      ; preds = %73
  br label %75, !dbg !3618

; <label>:75                                      ; preds = %74, %66
  store i32 0, i32* %returnVal2, align 4, !dbg !3620
  br label %79, !dbg !3622

; <label>:76                                      ; preds = %71
  store i32 -1073741823, i32* %returnVal2, align 4, !dbg !3623
  br label %79, !dbg !3624

; <label>:77                                      ; preds = %72
  store i32 259, i32* %returnVal2, align 4, !dbg !3625
  br label %79, !dbg !3626

; <label>:78                                      ; preds = %73
  br label %79, !dbg !3627

; <label>:79                                      ; preds = %78, %77, %76, %75
  br label %80

; <label>:80                                      ; preds = %79
  br label %81

; <label>:81                                      ; preds = %80
  br label %82

; <label>:82                                      ; preds = %81
  br label %83

; <label>:83                                      ; preds = %82, %61
  %84 = load i32, i32* @s, align 4, !dbg !3628
  %85 = load i32, i32* @NP, align 4, !dbg !3630
  %86 = icmp eq i32 %84, %85, !dbg !3631
  br i1 %86, label %87, label %90, !dbg !3632

; <label>:87                                      ; preds = %83
  %88 = load i32, i32* @IPC, align 4, !dbg !3633
  store i32 %88, i32* @s, align 4, !dbg !3635
  %89 = load i32, i32* %returnVal2, align 4, !dbg !3636
  store i32 %89, i32* @lowerDriverReturn, align 4, !dbg !3637
  br label %114, !dbg !3638

; <label>:90                                      ; preds = %83
  %91 = load i32, i32* @s, align 4, !dbg !3639
  %92 = load i32, i32* @MPR1, align 4, !dbg !3642
  %93 = icmp eq i32 %91, %92, !dbg !3643
  br i1 %93, label %94, label %104, !dbg !3644

; <label>:94                                      ; preds = %90
  %95 = load i32, i32* %returnVal2, align 4, !dbg !3645
  %96 = icmp eq i32 %95, 259, !dbg !3648
  br i1 %96, label %97, label %100, !dbg !3649

; <label>:97                                      ; preds = %94
  %98 = load i32, i32* @MPR3, align 4, !dbg !3650
  store i32 %98, i32* @s, align 4, !dbg !3652
  %99 = load i32, i32* %returnVal2, align 4, !dbg !3653
  store i32 %99, i32* @lowerDriverReturn, align 4, !dbg !3654
  br label %103, !dbg !3655

; <label>:100                                     ; preds = %94
  %101 = load i32, i32* @NP, align 4, !dbg !3656
  store i32 %101, i32* @s, align 4, !dbg !3658
  %102 = load i32, i32* %returnVal2, align 4, !dbg !3659
  store i32 %102, i32* @lowerDriverReturn, align 4, !dbg !3660
  br label %103

; <label>:103                                     ; preds = %100, %97
  br label %113, !dbg !3661

; <label>:104                                     ; preds = %90
  %105 = load i32, i32* @s, align 4, !dbg !3662
  %106 = load i32, i32* @SKIP1, align 4, !dbg !3665
  %107 = icmp eq i32 %105, %106, !dbg !3666
  br i1 %107, label %108, label %111, !dbg !3667

; <label>:108                                     ; preds = %104
  %109 = load i32, i32* @SKIP2, align 4, !dbg !3668
  store i32 %109, i32* @s, align 4, !dbg !3670
  %110 = load i32, i32* %returnVal2, align 4, !dbg !3671
  store i32 %110, i32* @lowerDriverReturn, align 4, !dbg !3672
  br label %112, !dbg !3673

; <label>:111                                     ; preds = %104
  call void (...) @__VERIFIER_error() #6, !dbg !3674
  unreachable, !dbg !3674

errorFn.exit:                                     ; No predecessors!
  br label %112

; <label>:112                                     ; preds = %errorFn.exit, %108
  br label %113

; <label>:113                                     ; preds = %112, %103
  br label %114

; <label>:114                                     ; preds = %113, %87
  %115 = load i32, i32* %returnVal2, align 4, !dbg !3678
  ret i32 %115, !dbg !3679
}

; Function Attrs: nounwind ssp uwtable
define i32 @KeSetEvent(i32 %Event, i32 %Increment, i32 %Wait) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 %Event, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !198, metadata !105), !dbg !3680
  store i32 %Increment, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !200, metadata !105), !dbg !3681
  store i32 %Wait, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !202, metadata !105), !dbg !3682
  call void @llvm.dbg.declare(metadata i32* %l, metadata !204, metadata !105), !dbg !3683
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !3684
  store i32 %4, i32* %l, align 4, !dbg !3683
  store i32 1, i32* @setEventCalled, align 4, !dbg !3685
  %5 = load i32, i32* %l, align 4, !dbg !3686
  ret i32 %5, !dbg !3687
}

; Function Attrs: nounwind ssp uwtable
define i32 @KeWaitForSingleObject(i32 %Object, i32 %WaitReason, i32 %WaitMode, i32 %Alertable, i32 %Timeout) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %tmp_ndt_6 = alloca i32, align 4
  store i32 %Object, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3688, metadata !105), !dbg !3689
  store i32 %WaitReason, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3690, metadata !105), !dbg !3691
  store i32 %WaitMode, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3692, metadata !105), !dbg !3693
  store i32 %Alertable, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3694, metadata !105), !dbg !3695
  store i32 %Timeout, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3696, metadata !105), !dbg !3697
  %7 = load i32, i32* @s, align 4, !dbg !3698
  %8 = load i32, i32* @MPR3, align 4, !dbg !3701
  %9 = icmp eq i32 %7, %8, !dbg !3702
  br i1 %9, label %10, label %17, !dbg !3703

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* @setEventCalled, align 4, !dbg !3704
  %12 = icmp eq i32 %11, 1, !dbg !3707
  br i1 %12, label %13, label %15, !dbg !3708

; <label>:13                                      ; preds = %10
  %14 = load i32, i32* @NP, align 4, !dbg !3709
  store i32 %14, i32* @s, align 4, !dbg !3711
  store i32 0, i32* @setEventCalled, align 4, !dbg !3712
  br label %16, !dbg !3713

; <label>:15                                      ; preds = %10
  br label %18, !dbg !3714

; <label>:16                                      ; preds = %13
  br label %30, !dbg !3716

; <label>:17                                      ; preds = %0
  br label %18, !dbg !3717

; <label>:18                                      ; preds = %17, %15
  %19 = load i32, i32* @customIrp, align 4, !dbg !3718
  %20 = icmp eq i32 %19, 1, !dbg !3721
  br i1 %20, label %21, label %23, !dbg !3722

; <label>:21                                      ; preds = %18
  %22 = load i32, i32* @NP, align 4, !dbg !3723
  store i32 %22, i32* @s, align 4, !dbg !3725
  store i32 0, i32* @customIrp, align 4, !dbg !3726
  br label %29, !dbg !3727

; <label>:23                                      ; preds = %18
  %24 = load i32, i32* @s, align 4, !dbg !3728
  %25 = load i32, i32* @MPR3, align 4, !dbg !3731
  %26 = icmp eq i32 %24, %25, !dbg !3732
  br i1 %26, label %27, label %28, !dbg !3733

; <label>:27                                      ; preds = %23
  call void (...) @__VERIFIER_error() #6, !dbg !3734
  unreachable, !dbg !3734

errorFn.exit:                                     ; No predecessors!
  br label %28, !dbg !3738

; <label>:28                                      ; preds = %errorFn.exit, %23
  br label %29

; <label>:29                                      ; preds = %28, %21
  br label %30

; <label>:30                                      ; preds = %29, %16
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_6, metadata !3739, metadata !105), !dbg !3740
  %31 = call i32 @__VERIFIER_nondet_int(), !dbg !3741
  store i32 %31, i32* %tmp_ndt_6, align 4, !dbg !3742
  %32 = load i32, i32* %tmp_ndt_6, align 4, !dbg !3743
  %33 = icmp eq i32 %32, 0, !dbg !3745
  br i1 %33, label %34, label %35, !dbg !3746

; <label>:34                                      ; preds = %30
  br label %38, !dbg !3747

; <label>:35                                      ; preds = %30
  br label %39, !dbg !3749
                                                  ; No predecessors!
  br i1 false, label %37, label %40, !dbg !3751

; <label>:37                                      ; preds = %36
  br label %38, !dbg !3752

; <label>:38                                      ; preds = %37, %34
  store i32 0, i32* %1, !dbg !3754
  br label %42, !dbg !3754

; <label>:39                                      ; preds = %35
  store i32 -1073741823, i32* %1, !dbg !3756
  br label %42, !dbg !3756

; <label>:40                                      ; preds = %36
  br label %41

; <label>:41                                      ; preds = %40
  br label %42

; <label>:42                                      ; preds = %41, %39, %38
  %43 = load i32, i32* %1, !dbg !3757
  ret i32 %43, !dbg !3757
}

; Function Attrs: nounwind ssp uwtable
define i32 @PoCallDriver(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %l.i.i = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %compRetStatus = alloca i32, align 4
  %returnVal = alloca i32, align 4
  %lcontext = alloca i32, align 4
  %__cil_tmp7 = alloca i64, align 8
  %__cil_tmp8 = alloca i64, align 8
  %tmp_ndt_7 = alloca i32, align 4
  %tmp_ndt_8 = alloca i32, align 4
  store i32 %DeviceObject, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3758, metadata !105), !dbg !3759
  store i32 %Irp, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3760, metadata !105), !dbg !3761
  call void @llvm.dbg.declare(metadata i32* %compRetStatus, metadata !3762, metadata !105), !dbg !3763
  call void @llvm.dbg.declare(metadata i32* %returnVal, metadata !3764, metadata !105), !dbg !3765
  call void @llvm.dbg.declare(metadata i32* %lcontext, metadata !3766, metadata !105), !dbg !3767
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !3768
  store i32 %9, i32* %lcontext, align 4, !dbg !3767
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp7, metadata !3769, metadata !105), !dbg !3770
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp8, metadata !3771, metadata !105), !dbg !3772
  %10 = load i32, i32* @compRegistered, align 4, !dbg !3773
  %11 = icmp ne i32 %10, 0, !dbg !3773
  call void @llvm.dbg.declare(metadata i32* %1, metadata !198, metadata !105), !dbg !3776
  call void @llvm.dbg.declare(metadata i32* %2, metadata !200, metadata !105), !dbg !3785
  call void @llvm.dbg.declare(metadata i32* %3, metadata !202, metadata !105), !dbg !3786
  call void @llvm.dbg.declare(metadata i32* %l.i.i, metadata !204, metadata !105), !dbg !3787
  call void @llvm.dbg.declare(metadata i32* %4, metadata !181, metadata !105), !dbg !3788
  call void @llvm.dbg.declare(metadata i32* %5, metadata !183, metadata !105), !dbg !3789
  call void @llvm.dbg.declare(metadata i32* %6, metadata !185, metadata !105), !dbg !3790
  br i1 %11, label %12, label %57, !dbg !3791

; <label>:12                                      ; preds = %0
  %13 = load i32, i32* @routine, align 4, !dbg !3792
  %14 = icmp eq i32 %13, 0, !dbg !3793
  br i1 %14, label %15, label %20, !dbg !3794

; <label>:15                                      ; preds = %12
  %16 = load i32, i32* %7, align 4, !dbg !3795
  %17 = load i32, i32* %8, align 4, !dbg !3798
  %18 = load i32, i32* %lcontext, align 4, !dbg !3799
  %19 = call i32 @HPCdrCompletion(i32 %16, i32 %17, i32 %18), !dbg !3800
  store i32 %19, i32* %compRetStatus, align 4, !dbg !3801
  br label %45, !dbg !3802

; <label>:20                                      ; preds = %12
  %21 = load i32, i32* @routine, align 4, !dbg !3803
  %22 = icmp eq i32 %21, 1, !dbg !3804
  br i1 %22, label %23, label %44, !dbg !3805

; <label>:23                                      ; preds = %20
  %24 = load i32, i32* %7, align 4, !dbg !3806
  %25 = load i32, i32* %8, align 4, !dbg !3807
  %26 = load i32, i32* %lcontext, align 4, !dbg !3808
  %27 = bitcast i32* %4 to i8*, !dbg !3809
  call void @llvm.lifetime.start(i64 4, i8* %27), !dbg !3809
  %28 = bitcast i32* %5 to i8*, !dbg !3809
  call void @llvm.lifetime.start(i64 4, i8* %28), !dbg !3809
  %29 = bitcast i32* %6 to i8*, !dbg !3809
  call void @llvm.lifetime.start(i64 4, i8* %29), !dbg !3809
  store i32 %24, i32* %4, align 4, !dbg !3809
  store i32 %25, i32* %5, align 4, !dbg !3809
  store i32 %26, i32* %6, align 4, !dbg !3809
  %30 = load i32, i32* %6, align 4, !dbg !3810
  %31 = bitcast i32* %1 to i8*, !dbg !3811
  call void @llvm.lifetime.start(i64 4, i8* %31) #4, !dbg !3811
  %32 = bitcast i32* %2 to i8*, !dbg !3811
  call void @llvm.lifetime.start(i64 4, i8* %32) #4, !dbg !3811
  %33 = bitcast i32* %3 to i8*, !dbg !3811
  call void @llvm.lifetime.start(i64 4, i8* %33) #4, !dbg !3811
  %34 = bitcast i32* %l.i.i to i8*, !dbg !3811
  call void @llvm.lifetime.start(i64 4, i8* %34) #4, !dbg !3811
  store i32 %30, i32* %1, align 4, !dbg !3811
  store i32 0, i32* %2, align 4, !dbg !3811
  store i32 0, i32* %3, align 4, !dbg !3811
  %35 = call i32 @__VERIFIER_nondet_int() #4, !dbg !3812
  store i32 %35, i32* %l.i.i, align 4, !dbg !3787
  store i32 1, i32* @setEventCalled, align 4, !dbg !3813
  %36 = load i32, i32* %l.i.i, align 4, !dbg !3814
  %37 = bitcast i32* %1 to i8*, !dbg !3815
  call void @llvm.lifetime.end(i64 4, i8* %37) #4, !dbg !3815
  %38 = bitcast i32* %2 to i8*, !dbg !3815
  call void @llvm.lifetime.end(i64 4, i8* %38) #4, !dbg !3815
  %39 = bitcast i32* %3 to i8*, !dbg !3815
  call void @llvm.lifetime.end(i64 4, i8* %39) #4, !dbg !3815
  %40 = bitcast i32* %l.i.i to i8*, !dbg !3815
  call void @llvm.lifetime.end(i64 4, i8* %40) #4, !dbg !3815
  %41 = bitcast i32* %4 to i8*, !dbg !3816
  call void @llvm.lifetime.end(i64 4, i8* %41), !dbg !3816
  %42 = bitcast i32* %5 to i8*, !dbg !3816
  call void @llvm.lifetime.end(i64 4, i8* %42), !dbg !3816
  %43 = bitcast i32* %6 to i8*, !dbg !3816
  call void @llvm.lifetime.end(i64 4, i8* %43), !dbg !3816
  store i32 -1073741802, i32* %compRetStatus, align 4, !dbg !3817
  br label %44, !dbg !3818

; <label>:44                                      ; preds = %23, %20
  br label %45

; <label>:45                                      ; preds = %44, %15
  %46 = load i32, i32* %compRetStatus, align 4, !dbg !3819
  %47 = sext i32 %46 to i64, !dbg !3821
  store i64 %47, i64* %__cil_tmp7, align 8, !dbg !3822
  %48 = load i64, i64* %__cil_tmp7, align 8, !dbg !3823
  %49 = icmp eq i64 %48, -1073741802, !dbg !3825
  br i1 %49, label %50, label %56, !dbg !3826

; <label>:50                                      ; preds = %45
  %51 = load i32, i32* @s, align 4, !dbg !3827
  %52 = load i32, i32* @NP, align 4, !dbg !3831
  %53 = icmp eq i32 %51, %52, !dbg !3832
  br i1 %53, label %stubMoreProcessingRequired.exit, label %54, !dbg !3833

; <label>:54                                      ; preds = %50
  call void (...) @__VERIFIER_error() #6, !dbg !3834
  unreachable, !dbg !3834

stubMoreProcessingRequired.exit:                  ; preds = %50
  %55 = load i32, i32* @MPR1, align 4, !dbg !3836
  store i32 %55, i32* @s, align 4, !dbg !3837
  br label %56, !dbg !3838

; <label>:56                                      ; preds = %stubMoreProcessingRequired.exit, %45
  br label %57, !dbg !3839

; <label>:57                                      ; preds = %56, %0
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_7, metadata !3840, metadata !105), !dbg !3841
  %58 = call i32 @__VERIFIER_nondet_int(), !dbg !3842
  store i32 %58, i32* %tmp_ndt_7, align 4, !dbg !3843
  %59 = load i32, i32* %tmp_ndt_7, align 4, !dbg !3844
  %60 = icmp eq i32 %59, 0, !dbg !3846
  br i1 %60, label %61, label %62, !dbg !3847

; <label>:61                                      ; preds = %57
  br label %70, !dbg !3848

; <label>:62                                      ; preds = %57
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_8, metadata !3850, metadata !105), !dbg !3852
  %63 = call i32 @__VERIFIER_nondet_int(), !dbg !3853
  store i32 %63, i32* %tmp_ndt_8, align 4, !dbg !3854
  %64 = load i32, i32* %tmp_ndt_8, align 4, !dbg !3855
  %65 = icmp eq i32 %64, 1, !dbg !3857
  br i1 %65, label %66, label %67, !dbg !3858

; <label>:66                                      ; preds = %62
  br label %71, !dbg !3859

; <label>:67                                      ; preds = %62
  br label %72, !dbg !3861
                                                  ; No predecessors!
  br i1 false, label %69, label %73, !dbg !3863

; <label>:69                                      ; preds = %68
  br label %70, !dbg !3864

; <label>:70                                      ; preds = %69, %61
  store i32 0, i32* %returnVal, align 4, !dbg !3866
  br label %74, !dbg !3868

; <label>:71                                      ; preds = %66
  store i32 -1073741823, i32* %returnVal, align 4, !dbg !3869
  br label %74, !dbg !3870

; <label>:72                                      ; preds = %67
  store i32 259, i32* %returnVal, align 4, !dbg !3871
  br label %74, !dbg !3872

; <label>:73                                      ; preds = %68
  br label %74, !dbg !3873

; <label>:74                                      ; preds = %73, %72, %71, %70
  br label %75

; <label>:75                                      ; preds = %74
  br label %76

; <label>:76                                      ; preds = %75
  br label %77

; <label>:77                                      ; preds = %76
  %78 = load i32, i32* @s, align 4, !dbg !3874
  %79 = load i32, i32* @NP, align 4, !dbg !3876
  %80 = icmp eq i32 %78, %79, !dbg !3877
  br i1 %80, label %81, label %84, !dbg !3878

; <label>:81                                      ; preds = %77
  %82 = load i32, i32* @IPC, align 4, !dbg !3879
  store i32 %82, i32* @s, align 4, !dbg !3881
  %83 = load i32, i32* %returnVal, align 4, !dbg !3882
  store i32 %83, i32* @lowerDriverReturn, align 4, !dbg !3883
  br label %110, !dbg !3884

; <label>:84                                      ; preds = %77
  %85 = load i32, i32* @s, align 4, !dbg !3885
  %86 = load i32, i32* @MPR1, align 4, !dbg !3888
  %87 = icmp eq i32 %85, %86, !dbg !3889
  br i1 %87, label %88, label %100, !dbg !3890

; <label>:88                                      ; preds = %84
  %89 = load i32, i32* %returnVal, align 4, !dbg !3891
  %90 = sext i32 %89 to i64, !dbg !3894
  store i64 %90, i64* %__cil_tmp8, align 8, !dbg !3895
  %91 = load i64, i64* %__cil_tmp8, align 8, !dbg !3896
  %92 = icmp eq i64 %91, 259, !dbg !3898
  br i1 %92, label %93, label %96, !dbg !3899

; <label>:93                                      ; preds = %88
  %94 = load i32, i32* @MPR3, align 4, !dbg !3900
  store i32 %94, i32* @s, align 4, !dbg !3902
  %95 = load i32, i32* %returnVal, align 4, !dbg !3903
  store i32 %95, i32* @lowerDriverReturn, align 4, !dbg !3904
  br label %99, !dbg !3905

; <label>:96                                      ; preds = %88
  %97 = load i32, i32* @NP, align 4, !dbg !3906
  store i32 %97, i32* @s, align 4, !dbg !3908
  %98 = load i32, i32* %returnVal, align 4, !dbg !3909
  store i32 %98, i32* @lowerDriverReturn, align 4, !dbg !3910
  br label %99

; <label>:99                                      ; preds = %96, %93
  br label %109, !dbg !3911

; <label>:100                                     ; preds = %84
  %101 = load i32, i32* @s, align 4, !dbg !3912
  %102 = load i32, i32* @SKIP1, align 4, !dbg !3915
  %103 = icmp eq i32 %101, %102, !dbg !3916
  br i1 %103, label %104, label %107, !dbg !3917

; <label>:104                                     ; preds = %100
  %105 = load i32, i32* @SKIP2, align 4, !dbg !3918
  store i32 %105, i32* @s, align 4, !dbg !3920
  %106 = load i32, i32* %returnVal, align 4, !dbg !3921
  store i32 %106, i32* @lowerDriverReturn, align 4, !dbg !3922
  br label %108, !dbg !3923

; <label>:107                                     ; preds = %100
  call void (...) @__VERIFIER_error() #6, !dbg !3924
  unreachable, !dbg !3924

errorFn.exit:                                     ; No predecessors!
  br label %108

; <label>:108                                     ; preds = %errorFn.exit, %104
  br label %109

; <label>:109                                     ; preds = %108, %99
  br label %110

; <label>:110                                     ; preds = %109, %81
  %111 = load i32, i32* %returnVal, align 4, !dbg !3928
  ret i32 %111, !dbg !3929
}

; Function Attrs: nounwind ssp uwtable
define i32 @ZwClose(i32 %Handle) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %tmp_ndt_9 = alloca i32, align 4
  store i32 %Handle, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !247, metadata !105), !dbg !3930
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_9, metadata !251, metadata !105), !dbg !3931
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !3932
  store i32 %3, i32* %tmp_ndt_9, align 4, !dbg !3933
  %4 = load i32, i32* %tmp_ndt_9, align 4, !dbg !3934
  %5 = icmp eq i32 %4, 0, !dbg !3935
  br i1 %5, label %6, label %7, !dbg !3936

; <label>:6                                       ; preds = %0
  br label %10, !dbg !3937

; <label>:7                                       ; preds = %0
  br label %11, !dbg !3939
                                                  ; No predecessors!
  br i1 false, label %9, label %12, !dbg !3940

; <label>:9                                       ; preds = %8
  br label %10, !dbg !3941

; <label>:10                                      ; preds = %9, %6
  store i32 0, i32* %1, !dbg !3942
  br label %14, !dbg !3942

; <label>:11                                      ; preds = %7
  store i32 -1073741823, i32* %1, !dbg !3943
  br label %14, !dbg !3943

; <label>:12                                      ; preds = %8
  br label %13

; <label>:13                                      ; preds = %12
  br label %14

; <label>:14                                      ; preds = %13, %11, %10
  %15 = load i32, i32* %1, !dbg !3944
  ret i32 %15, !dbg !3944
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
!llvm.module.flags = !{!78, !79, !80}
!llvm.ident = !{!81}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !55)
!1 = !DIFile(filename: "../sv-comp-2016/c/ntdrivers-simplified/cdaudio_simpl1_false-unreach-call_true-termination.cil.c", directory: "/Users/franck/development/perentiemq")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!6 = !{!7, !10, !12, !16, !19, !22, !23, !24, !25, !28, !29, !30, !31, !32, !35, !36, !37, !38, !39, !40, !41, !44, !45, !46, !49, !50, !53, !54}
!7 = !DISubprogram(name: "errorFn", scope: !1, file: !1, line: 32, type: !8, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @errorFn, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !DISubprogram(name: "_BLAST_init", scope: !11, file: !11, line: 63, type: !8, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @_BLAST_init, variables: !2)
!11 = !DIFile(filename: "cdaudio_simpl1.cil.c", directory: "/Users/franck/development/perentiemq")
!12 = !DISubprogram(name: "SendSrbSynchronous", scope: !11, file: !11, line: 85, type: !13, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32)* @SendSrbSynchronous, variables: !2)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !15, !15, !15, !15}
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DISubprogram(name: "CdAudioSignalCompletion", scope: !11, file: !11, line: 115, type: !17, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @CdAudioSignalCompletion, variables: !2)
!17 = !DISubroutineType(types: !18)
!18 = !{!15, !15, !15, !15}
!19 = !DISubprogram(name: "CdAudioStartDevice", scope: !11, file: !11, line: 125, type: !20, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @CdAudioStartDevice, variables: !2)
!20 = !DISubroutineType(types: !21)
!21 = !{!15, !15, !15}
!22 = !DISubprogram(name: "CdAudioPnp", scope: !11, file: !11, line: 205, type: !20, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @CdAudioPnp, variables: !2)
!23 = !DISubprogram(name: "CdAudioDeviceControl", scope: !11, file: !11, line: 315, type: !20, isLocal: false, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @CdAudioDeviceControl, variables: !2)
!24 = !DISubprogram(name: "CdAudioSendToNextDriver", scope: !11, file: !11, line: 371, type: !20, isLocal: false, isDefinition: true, scopeLine: 372, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @CdAudioSendToNextDriver, variables: !2)
!25 = !DISubprogram(name: "CdAudioIsPlayActive", scope: !11, file: !11, line: 393, type: !26, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32)* @CdAudioIsPlayActive, variables: !2)
!26 = !DISubroutineType(types: !27)
!27 = !{!15, !15}
!28 = !DISubprogram(name: "CdAudio535DeviceControl", scope: !11, file: !11, line: 441, type: !20, isLocal: false, isDefinition: true, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @CdAudio535DeviceControl, variables: !2)
!29 = !DISubprogram(name: "AG_SetStatusAndReturn", scope: !11, file: !11, line: 795, type: !17, isLocal: false, isDefinition: true, scopeLine: 796, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @AG_SetStatusAndReturn, variables: !2)
!30 = !DISubprogram(name: "CdAudio435DeviceControl", scope: !11, file: !11, line: 811, type: !20, isLocal: false, isDefinition: true, scopeLine: 812, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @CdAudio435DeviceControl, variables: !2)
!31 = !DISubprogram(name: "CdAudioAtapiDeviceControl", scope: !11, file: !11, line: 1264, type: !20, isLocal: false, isDefinition: true, scopeLine: 1265, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @CdAudioAtapiDeviceControl, variables: !2)
!32 = !DISubprogram(name: "HpCdrProcessLastSession", scope: !11, file: !11, line: 1309, type: !33, isLocal: false, isDefinition: true, scopeLine: 1310, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @HpCdrProcessLastSession, variables: !2)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !15}
!35 = !DISubprogram(name: "HPCdrCompletion", scope: !11, file: !11, line: 1321, type: !17, isLocal: false, isDefinition: true, scopeLine: 1322, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @HPCdrCompletion, variables: !2)
!36 = !DISubprogram(name: "CdAudioHPCdrDeviceControl", scope: !11, file: !11, line: 1347, type: !20, isLocal: false, isDefinition: true, scopeLine: 1348, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @CdAudioHPCdrDeviceControl, variables: !2)
!37 = !DISubprogram(name: "CdAudioForwardIrpSynchronous", scope: !11, file: !11, line: 1387, type: !20, isLocal: false, isDefinition: true, scopeLine: 1388, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @CdAudioForwardIrpSynchronous, variables: !2)
!38 = !DISubprogram(name: "CdAudioUnload", scope: !11, file: !11, line: 1427, type: !33, isLocal: false, isDefinition: true, scopeLine: 1428, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @CdAudioUnload, variables: !2)
!39 = !DISubprogram(name: "CdAudioPower", scope: !11, file: !11, line: 1434, type: !20, isLocal: false, isDefinition: true, scopeLine: 1435, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @CdAudioPower, variables: !2)
!40 = !DISubprogram(name: "stub_driver_init", scope: !11, file: !11, line: 1456, type: !8, isLocal: false, isDefinition: true, scopeLine: 1457, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stub_driver_init, variables: !2)
!41 = !DISubprogram(name: "main", scope: !11, file: !11, line: 1470, type: !42, isLocal: false, isDefinition: true, scopeLine: 1471, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !2)
!42 = !DISubroutineType(types: !43)
!43 = !{!15}
!44 = !DISubprogram(name: "stubMoreProcessingRequired", scope: !11, file: !11, line: 1620, type: !8, isLocal: false, isDefinition: true, scopeLine: 1621, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stubMoreProcessingRequired, variables: !2)
!45 = !DISubprogram(name: "IofCallDriver", scope: !11, file: !11, line: 1634, type: !20, isLocal: false, isDefinition: true, scopeLine: 1635, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @IofCallDriver, variables: !2)
!46 = !DISubprogram(name: "IofCompleteRequest", scope: !11, file: !11, line: 1720, type: !47, isLocal: false, isDefinition: true, scopeLine: 1721, flags: DIFlagPrototyped, isOptimized: false, function: void (i32, i32)* @IofCompleteRequest, variables: !2)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !15, !15}
!49 = !DISubprogram(name: "KeSetEvent", scope: !11, file: !11, line: 1734, type: !17, isLocal: false, isDefinition: true, scopeLine: 1735, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @KeSetEvent, variables: !2)
!50 = !DISubprogram(name: "KeWaitForSingleObject", scope: !11, file: !11, line: 1742, type: !51, isLocal: false, isDefinition: true, scopeLine: 1744, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32)* @KeWaitForSingleObject, variables: !2)
!51 = !DISubroutineType(types: !52)
!52 = !{!15, !15, !15, !15, !15, !15}
!53 = !DISubprogram(name: "PoCallDriver", scope: !11, file: !11, line: 1786, type: !20, isLocal: false, isDefinition: true, scopeLine: 1787, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @PoCallDriver, variables: !2)
!54 = !DISubprogram(name: "ZwClose", scope: !11, file: !11, line: 1867, type: !26, isLocal: false, isDefinition: true, scopeLine: 1868, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32)* @ZwClose, variables: !2)
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77}
!56 = !DIGlobalVariable(name: "s", scope: !0, file: !1, line: 9, type: !15, isLocal: false, isDefinition: true, variable: i32* @s)
!57 = !DIGlobalVariable(name: "UNLOADED", scope: !0, file: !1, line: 10, type: !15, isLocal: false, isDefinition: true, variable: i32* @UNLOADED)
!58 = !DIGlobalVariable(name: "NP", scope: !0, file: !1, line: 11, type: !15, isLocal: false, isDefinition: true, variable: i32* @NP)
!59 = !DIGlobalVariable(name: "DC", scope: !0, file: !1, line: 12, type: !15, isLocal: false, isDefinition: true, variable: i32* @DC)
!60 = !DIGlobalVariable(name: "SKIP1", scope: !0, file: !1, line: 13, type: !15, isLocal: false, isDefinition: true, variable: i32* @SKIP1)
!61 = !DIGlobalVariable(name: "SKIP2", scope: !0, file: !1, line: 14, type: !15, isLocal: false, isDefinition: true, variable: i32* @SKIP2)
!62 = !DIGlobalVariable(name: "MPR1", scope: !0, file: !1, line: 15, type: !15, isLocal: false, isDefinition: true, variable: i32* @MPR1)
!63 = !DIGlobalVariable(name: "MPR3", scope: !0, file: !1, line: 16, type: !15, isLocal: false, isDefinition: true, variable: i32* @MPR3)
!64 = !DIGlobalVariable(name: "IPC", scope: !0, file: !1, line: 17, type: !15, isLocal: false, isDefinition: true, variable: i32* @IPC)
!65 = !DIGlobalVariable(name: "pended", scope: !0, file: !1, line: 18, type: !15, isLocal: false, isDefinition: true, variable: i32* @pended)
!66 = !DIGlobalVariable(name: "compFptr", scope: !0, file: !1, line: 19, type: !15, isLocal: false, isDefinition: true, variable: i32* @compFptr)
!67 = !DIGlobalVariable(name: "compRegistered", scope: !0, file: !1, line: 20, type: !15, isLocal: false, isDefinition: true, variable: i32* @compRegistered)
!68 = !DIGlobalVariable(name: "lowerDriverReturn", scope: !0, file: !1, line: 21, type: !15, isLocal: false, isDefinition: true, variable: i32* @lowerDriverReturn)
!69 = !DIGlobalVariable(name: "setEventCalled", scope: !0, file: !1, line: 22, type: !15, isLocal: false, isDefinition: true, variable: i32* @setEventCalled)
!70 = !DIGlobalVariable(name: "customIrp", scope: !0, file: !1, line: 23, type: !15, isLocal: false, isDefinition: true, variable: i32* @customIrp)
!71 = !DIGlobalVariable(name: "routine", scope: !0, file: !1, line: 24, type: !15, isLocal: false, isDefinition: true, variable: i32* @routine)
!72 = !DIGlobalVariable(name: "myStatus", scope: !0, file: !1, line: 25, type: !15, isLocal: false, isDefinition: true, variable: i32* @myStatus)
!73 = !DIGlobalVariable(name: "pirp", scope: !0, file: !1, line: 26, type: !15, isLocal: false, isDefinition: true, variable: i32* @pirp)
!74 = !DIGlobalVariable(name: "Executive", scope: !0, file: !1, line: 27, type: !15, isLocal: false, isDefinition: true, variable: i32* @Executive)
!75 = !DIGlobalVariable(name: "Suspended", scope: !0, file: !1, line: 28, type: !15, isLocal: false, isDefinition: true, variable: i32* @Suspended)
!76 = !DIGlobalVariable(name: "KernelMode", scope: !0, file: !1, line: 29, type: !15, isLocal: false, isDefinition: true, variable: i32* @KernelMode)
!77 = !DIGlobalVariable(name: "DeviceUsageTypePaging", scope: !0, file: !1, line: 30, type: !15, isLocal: false, isDefinition: true, variable: i32* @DeviceUsageTypePaging)
!78 = !{i32 2, !"Dwarf Version", i32 2}
!79 = !{i32 2, !"Debug Info Version", i32 3}
!80 = !{i32 1, !"PIC Level", i32 2}
!81 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!82 = !DILocation(line: 35, column: 3, scope: !7)
!83 = !DILocation(line: 36, column: 10, scope: !84)
!84 = distinct !DILexicalBlock(scope: !7, file: !1, line: 35, column: 3)
!85 = !DILocation(line: 62, column: 1, scope: !7)
!86 = !DILocation(line: 67, column: 12, scope: !87)
!87 = distinct !DILexicalBlock(scope: !10, file: !11, line: 66, column: 3)
!88 = !DILocation(line: 68, column: 6, scope: !87)
!89 = !DILocation(line: 69, column: 6, scope: !87)
!90 = !DILocation(line: 70, column: 9, scope: !87)
!91 = !DILocation(line: 71, column: 9, scope: !87)
!92 = !DILocation(line: 72, column: 8, scope: !87)
!93 = !DILocation(line: 73, column: 8, scope: !87)
!94 = !DILocation(line: 74, column: 7, scope: !87)
!95 = !DILocation(line: 75, column: 7, scope: !87)
!96 = !DILocation(line: 75, column: 5, scope: !87)
!97 = !DILocation(line: 76, column: 10, scope: !87)
!98 = !DILocation(line: 77, column: 12, scope: !87)
!99 = !DILocation(line: 78, column: 18, scope: !87)
!100 = !DILocation(line: 79, column: 21, scope: !87)
!101 = !DILocation(line: 80, column: 18, scope: !87)
!102 = !DILocation(line: 81, column: 13, scope: !87)
!103 = !DILocation(line: 82, column: 3, scope: !87)
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Extension", arg: 1, scope: !12, file: !11, line: 85, type: !15)
!105 = !DIExpression()
!106 = !DILocation(line: 85, column: 28, scope: !12)
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Srb", arg: 2, scope: !12, file: !11, line: 85, type: !15)
!108 = !DILocation(line: 85, column: 44, scope: !12)
!109 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Buffer", arg: 3, scope: !12, file: !11, line: 85, type: !15)
!110 = !DILocation(line: 85, column: 54, scope: !12)
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "BufferLength", arg: 4, scope: !12, file: !11, line: 85, type: !15)
!112 = !DILocation(line: 85, column: 67, scope: !12)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ioStatus__Status", scope: !12, file: !11, line: 86, type: !15)
!114 = !DILocation(line: 86, column: 7, scope: !12)
!115 = !DILocation(line: 86, column: 26, scope: !12)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ioctl", scope: !12, file: !11, line: 87, type: !15)
!117 = !DILocation(line: 87, column: 7, scope: !12)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "event", scope: !12, file: !11, line: 88, type: !15)
!119 = !DILocation(line: 88, column: 7, scope: !12)
!120 = !DILocation(line: 88, column: 15, scope: !12)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp", scope: !12, file: !11, line: 89, type: !15)
!122 = !DILocation(line: 89, column: 7, scope: !12)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !12, file: !11, line: 90, type: !15)
!124 = !DILocation(line: 90, column: 7, scope: !12)
!125 = !DILocation(line: 90, column: 16, scope: !12)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp10", scope: !12, file: !11, line: 91, type: !15)
!127 = !DILocation(line: 91, column: 7, scope: !12)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp11", scope: !12, file: !11, line: 92, type: !15)
!129 = !DILocation(line: 92, column: 7, scope: !12)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp12", scope: !12, file: !11, line: 93, type: !15)
!131 = !DILocation(line: 93, column: 7, scope: !12)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp13", scope: !12, file: !11, line: 94, type: !15)
!133 = !DILocation(line: 94, column: 7, scope: !12)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp14", scope: !12, file: !11, line: 95, type: !15)
!135 = !DILocation(line: 95, column: 7, scope: !12)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp15", scope: !12, file: !11, line: 96, type: !15)
!137 = !DILocation(line: 96, column: 7, scope: !12)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp16", scope: !12, file: !11, line: 97, type: !15)
!139 = !DILocation(line: 97, column: 7, scope: !12)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp17", scope: !12, file: !11, line: 98, type: !15)
!141 = !DILocation(line: 98, column: 7, scope: !12)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp18", scope: !12, file: !11, line: 99, type: !4)
!143 = !DILocation(line: 99, column: 8, scope: !12)
!144 = !DILocation(line: 93, column: 7, scope: !145)
!145 = distinct !DILexicalBlock(scope: !12, file: !11, line: 101, column: 3)
!146 = !DILocation(line: 94, column: 7, scope: !147)
!147 = distinct !DILexicalBlock(scope: !145, file: !11, line: 94, column: 7)
!148 = !DILocation(line: 94, column: 7, scope: !145)
!149 = !DILocation(line: 95, column: 17, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !11, line: 94, column: 15)
!151 = !DILocation(line: 95, column: 11, scope: !150)
!152 = !DILocation(line: 96, column: 3, scope: !150)
!153 = !DILocation(line: 97, column: 17, scope: !154)
!154 = distinct !DILexicalBlock(scope: !147, file: !11, line: 96, column: 10)
!155 = !DILocation(line: 97, column: 11, scope: !154)
!156 = !DILocation(line: 99, column: 9, scope: !157)
!157 = distinct !DILexicalBlock(scope: !145, file: !11, line: 99, column: 7)
!158 = !DILocation(line: 99, column: 7, scope: !145)
!159 = !DILocation(line: 100, column: 5, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !11, line: 99, column: 14)
!161 = !DILocation(line: 104, column: 24, scope: !162)
!162 = distinct !DILexicalBlock(scope: !145, file: !11, line: 102, column: 3)
!163 = !DILocation(line: 104, column: 17, scope: !162)
!164 = !DILocation(line: 104, column: 15, scope: !162)
!165 = !DILocation(line: 104, column: 7, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !11, line: 104, column: 7)
!167 = !DILocation(line: 104, column: 19, scope: !166)
!168 = !DILocation(line: 104, column: 7, scope: !162)
!169 = !DILocation(line: 106, column: 27, scope: !170)
!170 = distinct !DILexicalBlock(scope: !171, file: !11, line: 105, column: 5)
!171 = distinct !DILexicalBlock(scope: !166, file: !11, line: 104, column: 28)
!172 = !DILocation(line: 106, column: 34, scope: !170)
!173 = !DILocation(line: 106, column: 45, scope: !170)
!174 = !DILocation(line: 106, column: 5, scope: !170)
!175 = !DILocation(line: 107, column: 14, scope: !170)
!176 = !DILocation(line: 107, column: 12, scope: !170)
!177 = !DILocation(line: 109, column: 3, scope: !171)
!178 = !DILocation(line: 112, column: 11, scope: !145)
!179 = !DILocation(line: 112, column: 3, scope: !145)
!180 = !DILocation(line: 114, column: 1, scope: !12)
!181 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !16, file: !11, line: 115, type: !15)
!182 = !DILocation(line: 115, column: 33, scope: !16)
!183 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !16, file: !11, line: 115, type: !15)
!184 = !DILocation(line: 115, column: 52, scope: !16)
!185 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 3, scope: !16, file: !11, line: 115, type: !15)
!186 = !DILocation(line: 115, column: 62, scope: !16)
!187 = !DILocation(line: 120, column: 14, scope: !188)
!188 = distinct !DILexicalBlock(scope: !189, file: !11, line: 119, column: 3)
!189 = distinct !DILexicalBlock(scope: !16, file: !11, line: 118, column: 3)
!190 = !DILocation(line: 120, column: 3, scope: !188)
!191 = !DILocation(line: 1735, column: 11, scope: !49, inlinedAt: !192)
!192 = distinct !DILocation(line: 120, column: 3, scope: !188)
!193 = !DILocation(line: 1735, column: 7, scope: !49, inlinedAt: !192)
!194 = !DILocation(line: 1738, column: 18, scope: !195, inlinedAt: !192)
!195 = distinct !DILexicalBlock(scope: !49, file: !11, line: 1737, column: 3)
!196 = !DILocation(line: 1739, column: 11, scope: !195, inlinedAt: !192)
!197 = !DILocation(line: 1739, column: 3, scope: !195, inlinedAt: !192)
!198 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 1, scope: !49, file: !11, line: 1734, type: !15)
!199 = !DILocation(line: 1734, column: 20, scope: !49, inlinedAt: !192)
!200 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Increment", arg: 2, scope: !49, file: !11, line: 1734, type: !15)
!201 = !DILocation(line: 1734, column: 32, scope: !49, inlinedAt: !192)
!202 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Wait", arg: 3, scope: !49, file: !11, line: 1734, type: !15)
!203 = !DILocation(line: 1734, column: 48, scope: !49, inlinedAt: !192)
!204 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !49, file: !11, line: 1735, type: !15)
!205 = !DILocation(line: 122, column: 3, scope: !189)
!206 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !19, file: !11, line: 125, type: !15)
!207 = !DILocation(line: 125, column: 28, scope: !19)
!208 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !19, file: !11, line: 125, type: !15)
!209 = !DILocation(line: 125, column: 47, scope: !19)
!210 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__Active", scope: !19, file: !11, line: 126, type: !15)
!211 = !DILocation(line: 126, column: 7, scope: !19)
!212 = !DILocation(line: 126, column: 33, scope: !19)
!213 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !19, file: !11, line: 127, type: !15)
!214 = !DILocation(line: 127, column: 7, scope: !19)
!215 = !DILocation(line: 127, column: 25, scope: !19)
!216 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !19, file: !11, line: 128, type: !15)
!217 = !DILocation(line: 128, column: 7, scope: !19)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srb", scope: !19, file: !11, line: 129, type: !15)
!219 = !DILocation(line: 129, column: 7, scope: !19)
!220 = !DILocation(line: 129, column: 13, scope: !19)
!221 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srb__Cdb", scope: !19, file: !11, line: 130, type: !15)
!222 = !DILocation(line: 130, column: 7, scope: !19)
!223 = !DILocation(line: 130, column: 18, scope: !19)
!224 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cdb", scope: !19, file: !11, line: 131, type: !15)
!225 = !DILocation(line: 131, column: 7, scope: !19)
!226 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inquiryDataPtr", scope: !19, file: !11, line: 132, type: !15)
!227 = !DILocation(line: 132, column: 7, scope: !19)
!228 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "attempt", scope: !19, file: !11, line: 133, type: !15)
!229 = !DILocation(line: 133, column: 7, scope: !19)
!230 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !19, file: !11, line: 134, type: !15)
!231 = !DILocation(line: 134, column: 7, scope: !19)
!232 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceParameterHandle", scope: !19, file: !11, line: 135, type: !15)
!233 = !DILocation(line: 135, column: 7, scope: !19)
!234 = !DILocation(line: 135, column: 31, scope: !19)
!235 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "keyValue", scope: !19, file: !11, line: 136, type: !15)
!236 = !DILocation(line: 136, column: 7, scope: !19)
!237 = !DILocation(line: 140, column: 41, scope: !238)
!238 = distinct !DILexicalBlock(scope: !239, file: !11, line: 138, column: 3)
!239 = distinct !DILexicalBlock(scope: !19, file: !11, line: 137, column: 3)
!240 = !DILocation(line: 140, column: 55, scope: !238)
!241 = !DILocation(line: 140, column: 12, scope: !238)
!242 = !DILocation(line: 140, column: 10, scope: !238)
!243 = !DILocation(line: 142, column: 7, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !11, line: 142, column: 7)
!245 = distinct !DILexicalBlock(scope: !239, file: !11, line: 142, column: 3)
!246 = !DILocation(line: 142, column: 14, scope: !244)
!247 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Handle", arg: 1, scope: !54, file: !11, line: 1867, type: !15)
!248 = !DILocation(line: 1867, column: 17, scope: !54, inlinedAt: !249)
!249 = distinct !DILocation(line: 200, column: 3, scope: !250)
!250 = distinct !DILexicalBlock(scope: !239, file: !11, line: 198, column: 3)
!251 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_9", scope: !252, file: !11, line: 1871, type: !15)
!252 = distinct !DILexicalBlock(scope: !54, file: !11, line: 1870, column: 3)
!253 = !DILocation(line: 1871, column: 7, scope: !252, inlinedAt: !249)
!254 = !DILocation(line: 142, column: 7, scope: !245)
!255 = !DILocation(line: 143, column: 13, scope: !256)
!256 = distinct !DILexicalBlock(scope: !244, file: !11, line: 142, column: 19)
!257 = !DILocation(line: 143, column: 5, scope: !256)
!258 = !DILocation(line: 147, column: 7, scope: !259)
!259 = distinct !DILexicalBlock(scope: !239, file: !11, line: 147, column: 7)
!260 = !DILocation(line: 147, column: 31, scope: !259)
!261 = !DILocation(line: 147, column: 7, scope: !239)
!262 = !DILocation(line: 148, column: 11, scope: !263)
!263 = distinct !DILexicalBlock(scope: !259, file: !11, line: 147, column: 39)
!264 = !DILocation(line: 148, column: 9, scope: !263)
!265 = !DILocation(line: 149, column: 20, scope: !263)
!266 = !DILocation(line: 150, column: 13, scope: !263)
!267 = !DILocation(line: 151, column: 11, scope: !268)
!268 = distinct !DILexicalBlock(scope: !263, file: !11, line: 151, column: 9)
!269 = !DILocation(line: 151, column: 9, scope: !263)
!270 = !DILocation(line: 152, column: 31, scope: !271)
!271 = distinct !DILexicalBlock(scope: !268, file: !11, line: 151, column: 27)
!272 = !DILocation(line: 153, column: 7, scope: !271)
!273 = !DILocation(line: 157, column: 12, scope: !263)
!274 = !DILocation(line: 159, column: 5, scope: !275)
!275 = distinct !DILexicalBlock(scope: !263, file: !11, line: 158, column: 5)
!276 = !DILocation(line: 159, column: 15, scope: !275)
!277 = !DILocation(line: 161, column: 11, scope: !278)
!278 = distinct !DILexicalBlock(scope: !279, file: !11, line: 161, column: 11)
!279 = distinct !DILexicalBlock(scope: !280, file: !11, line: 162, column: 7)
!280 = distinct !DILexicalBlock(scope: !275, file: !11, line: 159, column: 15)
!281 = !DILocation(line: 161, column: 18, scope: !278)
!282 = !DILocation(line: 161, column: 11, scope: !279)
!283 = !DILocation(line: 162, column: 15, scope: !284)
!284 = distinct !DILexicalBlock(scope: !278, file: !11, line: 161, column: 23)
!285 = !DILocation(line: 162, column: 13, scope: !284)
!286 = !DILocation(line: 163, column: 17, scope: !284)
!287 = !DILocation(line: 164, column: 13, scope: !288)
!288 = distinct !DILexicalBlock(scope: !284, file: !11, line: 164, column: 13)
!289 = !DILocation(line: 164, column: 17, scope: !288)
!290 = !DILocation(line: 164, column: 13, scope: !284)
!291 = !DILocation(line: 165, column: 11, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !11, line: 164, column: 23)
!293 = !DILocation(line: 167, column: 7, scope: !284)
!294 = !DILocation(line: 168, column: 9, scope: !295)
!295 = distinct !DILexicalBlock(scope: !278, file: !11, line: 167, column: 14)
!296 = !DILocation(line: 173, column: 35, scope: !297)
!297 = distinct !DILexicalBlock(scope: !280, file: !11, line: 171, column: 7)
!298 = !DILocation(line: 173, column: 52, scope: !297)
!299 = !DILocation(line: 173, column: 57, scope: !297)
!300 = !DILocation(line: 173, column: 16, scope: !297)
!301 = !DILocation(line: 173, column: 14, scope: !297)
!302 = !DILocation(line: 177, column: 5, scope: !275)
!303 = !DILocation(line: 178, column: 9, scope: !304)
!304 = distinct !DILexicalBlock(scope: !305, file: !11, line: 178, column: 9)
!305 = distinct !DILexicalBlock(scope: !263, file: !11, line: 179, column: 5)
!306 = !DILocation(line: 178, column: 16, scope: !304)
!307 = !DILocation(line: 178, column: 9, scope: !305)
!308 = !DILocation(line: 179, column: 31, scope: !309)
!309 = distinct !DILexicalBlock(scope: !304, file: !11, line: 178, column: 21)
!310 = !DILocation(line: 180, column: 7, scope: !309)
!311 = !DILocation(line: 184, column: 29, scope: !263)
!312 = !DILocation(line: 185, column: 3, scope: !263)
!313 = !DILocation(line: 188, column: 14, scope: !239)
!314 = !DILocation(line: 188, column: 12, scope: !239)
!315 = !DILocation(line: 189, column: 7, scope: !316)
!316 = distinct !DILexicalBlock(scope: !317, file: !11, line: 189, column: 7)
!317 = distinct !DILexicalBlock(scope: !239, file: !11, line: 189, column: 3)
!318 = !DILocation(line: 189, column: 14, scope: !316)
!319 = !DILocation(line: 189, column: 7, scope: !317)
!320 = !DILocation(line: 190, column: 5, scope: !321)
!321 = distinct !DILexicalBlock(scope: !316, file: !11, line: 189, column: 19)
!322 = !DILocation(line: 194, column: 7, scope: !323)
!323 = distinct !DILexicalBlock(scope: !324, file: !11, line: 194, column: 7)
!324 = distinct !DILexicalBlock(scope: !239, file: !11, line: 193, column: 3)
!325 = !DILocation(line: 194, column: 14, scope: !323)
!326 = !DILocation(line: 194, column: 7, scope: !324)
!327 = !DILocation(line: 196, column: 3, scope: !328)
!328 = distinct !DILexicalBlock(scope: !323, file: !11, line: 194, column: 19)
!329 = !DILocation(line: 200, column: 11, scope: !250)
!330 = !DILocation(line: 200, column: 3, scope: !250)
!331 = !DILocation(line: 1872, column: 15, scope: !252, inlinedAt: !249)
!332 = !DILocation(line: 1872, column: 13, scope: !252, inlinedAt: !249)
!333 = !DILocation(line: 1873, column: 7, scope: !334, inlinedAt: !249)
!334 = distinct !DILexicalBlock(scope: !252, file: !11, line: 1873, column: 7)
!335 = !DILocation(line: 1873, column: 17, scope: !334, inlinedAt: !249)
!336 = !DILocation(line: 1873, column: 7, scope: !252, inlinedAt: !249)
!337 = !DILocation(line: 1878, column: 7, scope: !338, inlinedAt: !249)
!338 = distinct !DILexicalBlock(scope: !339, file: !11, line: 1876, column: 12)
!339 = distinct !DILexicalBlock(scope: !340, file: !11, line: 1876, column: 9)
!340 = distinct !DILexicalBlock(scope: !334, file: !11, line: 1875, column: 10)
!341 = !DILocation(line: 1880, column: 7, scope: !338, inlinedAt: !249)
!342 = !DILocation(line: 1886, column: 1, scope: !54, inlinedAt: !249)
!343 = !DILocation(line: 202, column: 3, scope: !239)
!344 = !DILocation(line: 204, column: 1, scope: !19)
!345 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !22, file: !11, line: 205, type: !15)
!346 = !DILocation(line: 205, column: 20, scope: !22)
!347 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !22, file: !11, line: 205, type: !15)
!348 = !DILocation(line: 205, column: 39, scope: !22)
!349 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !22, file: !11, line: 206, type: !15)
!350 = !DILocation(line: 206, column: 7, scope: !22)
!351 = !DILocation(line: 206, column: 50, scope: !22)
!352 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__MinorFunction", scope: !22, file: !11, line: 207, type: !15)
!353 = !DILocation(line: 207, column: 7, scope: !22)
!354 = !DILocation(line: 207, column: 30, scope: !22)
!355 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !22, file: !11, line: 208, type: !15)
!356 = !DILocation(line: 208, column: 7, scope: !22)
!357 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Parameters__UsageNotification__Type", scope: !22, file: !11, line: 209, type: !15)
!358 = !DILocation(line: 209, column: 7, scope: !22)
!359 = !DILocation(line: 209, column: 52, scope: !22)
!360 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__PagingPathCountEvent", scope: !22, file: !11, line: 210, type: !15)
!361 = !DILocation(line: 210, column: 7, scope: !22)
!362 = !DILocation(line: 210, column: 47, scope: !22)
!363 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Parameters__UsageNotification__InPath", scope: !22, file: !11, line: 211, type: !15)
!364 = !DILocation(line: 211, column: 7, scope: !22)
!365 = !DILocation(line: 211, column: 54, scope: !22)
!366 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__PagingPathCount", scope: !22, file: !11, line: 212, type: !15)
!367 = !DILocation(line: 212, column: 7, scope: !22)
!368 = !DILocation(line: 212, column: 42, scope: !22)
!369 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__Flags", scope: !22, file: !11, line: 213, type: !15)
!370 = !DILocation(line: 213, column: 7, scope: !22)
!371 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp", scope: !22, file: !11, line: 214, type: !15)
!372 = !DILocation(line: 214, column: 7, scope: !22)
!373 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !22, file: !11, line: 215, type: !15)
!374 = !DILocation(line: 215, column: 7, scope: !22)
!375 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "setPagable", scope: !22, file: !11, line: 216, type: !15)
!376 = !DILocation(line: 216, column: 7, scope: !22)
!377 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !22, file: !11, line: 217, type: !15)
!378 = !DILocation(line: 217, column: 7, scope: !22)
!379 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___0", scope: !22, file: !11, line: 218, type: !15)
!380 = !DILocation(line: 218, column: 7, scope: !22)
!381 = !DILocation(line: 221, column: 11, scope: !382)
!382 = distinct !DILexicalBlock(scope: !22, file: !11, line: 220, column: 3)
!383 = !DILocation(line: 221, column: 9, scope: !382)
!384 = !DILocation(line: 222, column: 10, scope: !382)
!385 = !DILocation(line: 223, column: 7, scope: !386)
!386 = distinct !DILexicalBlock(scope: !382, file: !11, line: 223, column: 7)
!387 = !DILocation(line: 223, column: 28, scope: !386)
!388 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 1, scope: !46, file: !11, line: 1720, type: !15)
!389 = !DILocation(line: 1720, column: 29, scope: !46, inlinedAt: !390)
!390 = distinct !DILocation(line: 237, column: 9, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !11, line: 233, column: 9)
!392 = distinct !DILexicalBlock(scope: !393, file: !11, line: 231, column: 14)
!393 = distinct !DILexicalBlock(scope: !394, file: !11, line: 231, column: 11)
!394 = distinct !DILexicalBlock(scope: !395, file: !11, line: 228, column: 12)
!395 = distinct !DILexicalBlock(scope: !396, file: !11, line: 226, column: 9)
!396 = distinct !DILexicalBlock(scope: !386, file: !11, line: 225, column: 10)
!397 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PriorityBoost", arg: 2, scope: !46, file: !11, line: 1720, type: !15)
!398 = !DILocation(line: 1720, column: 39, scope: !46, inlinedAt: !390)
!399 = !DILocation(line: 1734, column: 20, scope: !49, inlinedAt: !400)
!400 = distinct !DILocation(line: 296, column: 9, scope: !401)
!401 = distinct !DILexicalBlock(scope: !392, file: !11, line: 293, column: 9)
!402 = !DILocation(line: 1734, column: 32, scope: !49, inlinedAt: !400)
!403 = !DILocation(line: 1734, column: 48, scope: !49, inlinedAt: !400)
!404 = !DILocation(line: 1735, column: 7, scope: !49, inlinedAt: !400)
!405 = !DILocation(line: 1720, column: 29, scope: !46, inlinedAt: !406)
!406 = distinct !DILocation(line: 297, column: 9, scope: !401)
!407 = !DILocation(line: 1720, column: 39, scope: !46, inlinedAt: !406)
!408 = !DILocation(line: 223, column: 7, scope: !382)
!409 = !DILocation(line: 224, column: 5, scope: !410)
!410 = distinct !DILexicalBlock(scope: !386, file: !11, line: 223, column: 34)
!411 = !DILocation(line: 226, column: 9, scope: !395)
!412 = !DILocation(line: 226, column: 30, scope: !395)
!413 = !DILocation(line: 226, column: 9, scope: !396)
!414 = !DILocation(line: 227, column: 7, scope: !415)
!415 = distinct !DILexicalBlock(scope: !395, file: !11, line: 226, column: 37)
!416 = !DILocation(line: 229, column: 7, scope: !394)
!417 = !DILocation(line: 231, column: 11, scope: !394)
!418 = !DILocation(line: 231, column: 14, scope: !393)
!419 = !DILocation(line: 234, column: 37, scope: !391)
!420 = !DILocation(line: 234, column: 51, scope: !391)
!421 = !DILocation(line: 234, column: 18, scope: !391)
!422 = !DILocation(line: 234, column: 16, scope: !391)
!423 = !DILocation(line: 235, column: 33, scope: !391)
!424 = !DILocation(line: 235, column: 31, scope: !391)
!425 = !DILocation(line: 236, column: 20, scope: !391)
!426 = !DILocation(line: 236, column: 18, scope: !391)
!427 = !DILocation(line: 237, column: 28, scope: !391)
!428 = !DILocation(line: 237, column: 9, scope: !391)
!429 = !DILocation(line: 1724, column: 7, scope: !430, inlinedAt: !390)
!430 = distinct !DILexicalBlock(scope: !431, file: !11, line: 1724, column: 7)
!431 = distinct !DILexicalBlock(scope: !46, file: !11, line: 1723, column: 3)
!432 = !DILocation(line: 1724, column: 12, scope: !430, inlinedAt: !390)
!433 = !DILocation(line: 1724, column: 9, scope: !430, inlinedAt: !390)
!434 = !DILocation(line: 1724, column: 7, scope: !431, inlinedAt: !390)
!435 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !436)
!436 = distinct !DILocation(line: 1728, column: 5, scope: !437, inlinedAt: !390)
!437 = distinct !DILexicalBlock(scope: !438, file: !11, line: 1727, column: 5)
!438 = distinct !DILexicalBlock(scope: !430, file: !11, line: 1726, column: 10)
!439 = !DILocation(line: 1725, column: 9, scope: !440, inlinedAt: !390)
!440 = distinct !DILexicalBlock(scope: !430, file: !11, line: 1724, column: 16)
!441 = !DILocation(line: 1725, column: 7, scope: !440, inlinedAt: !390)
!442 = !DILocation(line: 1731, column: 3, scope: !431, inlinedAt: !390)
!443 = !DILocation(line: 239, column: 17, scope: !392)
!444 = !DILocation(line: 239, column: 9, scope: !392)
!445 = !DILocation(line: 241, column: 13, scope: !446)
!446 = distinct !DILexicalBlock(scope: !392, file: !11, line: 241, column: 13)
!447 = !DILocation(line: 241, column: 59, scope: !446)
!448 = !DILocation(line: 241, column: 56, scope: !446)
!449 = !DILocation(line: 241, column: 13, scope: !392)
!450 = !DILocation(line: 243, column: 41, scope: !451)
!451 = distinct !DILexicalBlock(scope: !452, file: !11, line: 242, column: 11)
!452 = distinct !DILexicalBlock(scope: !446, file: !11, line: 241, column: 82)
!453 = !DILocation(line: 243, column: 55, scope: !451)
!454 = !DILocation(line: 243, column: 17, scope: !451)
!455 = !DILocation(line: 243, column: 15, scope: !451)
!456 = !DILocation(line: 245, column: 19, scope: !452)
!457 = !DILocation(line: 245, column: 11, scope: !452)
!458 = !DILocation(line: 250, column: 40, scope: !459)
!459 = distinct !DILexicalBlock(scope: !392, file: !11, line: 247, column: 9)
!460 = !DILocation(line: 250, column: 79, scope: !459)
!461 = !DILocation(line: 251, column: 40, scope: !459)
!462 = !DILocation(line: 250, column: 18, scope: !459)
!463 = !DILocation(line: 250, column: 16, scope: !459)
!464 = !DILocation(line: 252, column: 20, scope: !459)
!465 = !DILocation(line: 254, column: 13, scope: !466)
!466 = distinct !DILexicalBlock(scope: !392, file: !11, line: 254, column: 13)
!467 = !DILocation(line: 254, column: 13, scope: !392)
!468 = !DILocation(line: 255, column: 15, scope: !469)
!469 = distinct !DILexicalBlock(scope: !470, file: !11, line: 255, column: 15)
!470 = distinct !DILexicalBlock(scope: !466, file: !11, line: 254, column: 59)
!471 = !DILocation(line: 255, column: 48, scope: !469)
!472 = !DILocation(line: 255, column: 15, scope: !470)
!473 = !DILocation(line: 256, column: 13, scope: !474)
!474 = distinct !DILexicalBlock(scope: !469, file: !11, line: 255, column: 54)
!475 = !DILocation(line: 258, column: 9, scope: !470)
!476 = !DILocation(line: 258, column: 16, scope: !466)
!477 = !DILocation(line: 262, column: 15, scope: !478)
!478 = distinct !DILexicalBlock(scope: !479, file: !11, line: 262, column: 15)
!479 = distinct !DILexicalBlock(scope: !466, file: !11, line: 258, column: 16)
!480 = !DILocation(line: 262, column: 25, scope: !478)
!481 = !DILocation(line: 262, column: 22, scope: !478)
!482 = !DILocation(line: 262, column: 15, scope: !479)
!483 = !DILocation(line: 266, column: 24, scope: !484)
!484 = distinct !DILexicalBlock(scope: !478, file: !11, line: 262, column: 33)
!485 = !DILocation(line: 267, column: 11, scope: !484)
!486 = !DILocation(line: 270, column: 47, scope: !487)
!487 = distinct !DILexicalBlock(scope: !392, file: !11, line: 269, column: 9)
!488 = !DILocation(line: 270, column: 61, scope: !487)
!489 = !DILocation(line: 270, column: 18, scope: !487)
!490 = !DILocation(line: 270, column: 16, scope: !487)
!491 = !DILocation(line: 272, column: 13, scope: !492)
!492 = distinct !DILexicalBlock(scope: !392, file: !11, line: 272, column: 13)
!493 = !DILocation(line: 272, column: 20, scope: !492)
!494 = !DILocation(line: 272, column: 13, scope: !392)
!495 = !DILocation(line: 273, column: 15, scope: !496)
!496 = distinct !DILexicalBlock(scope: !497, file: !11, line: 273, column: 15)
!497 = distinct !DILexicalBlock(scope: !492, file: !11, line: 272, column: 26)
!498 = !DILocation(line: 273, column: 15, scope: !497)
!499 = !DILocation(line: 275, column: 11, scope: !500)
!500 = distinct !DILexicalBlock(scope: !496, file: !11, line: 273, column: 61)
!501 = !DILocation(line: 278, column: 15, scope: !502)
!502 = distinct !DILexicalBlock(scope: !497, file: !11, line: 278, column: 15)
!503 = !DILocation(line: 278, column: 15, scope: !497)
!504 = !DILocation(line: 279, column: 17, scope: !505)
!505 = distinct !DILexicalBlock(scope: !506, file: !11, line: 279, column: 17)
!506 = distinct !DILexicalBlock(scope: !502, file: !11, line: 278, column: 61)
!507 = !DILocation(line: 279, column: 50, scope: !505)
!508 = !DILocation(line: 279, column: 17, scope: !506)
!509 = !DILocation(line: 281, column: 13, scope: !510)
!510 = distinct !DILexicalBlock(scope: !505, file: !11, line: 279, column: 56)
!511 = !DILocation(line: 282, column: 11, scope: !506)
!512 = !DILocation(line: 283, column: 9, scope: !497)
!513 = !DILocation(line: 288, column: 15, scope: !514)
!514 = distinct !DILexicalBlock(scope: !515, file: !11, line: 288, column: 15)
!515 = distinct !DILexicalBlock(scope: !492, file: !11, line: 283, column: 16)
!516 = !DILocation(line: 288, column: 26, scope: !514)
!517 = !DILocation(line: 288, column: 15, scope: !515)
!518 = !DILocation(line: 290, column: 24, scope: !519)
!519 = distinct !DILexicalBlock(scope: !514, file: !11, line: 288, column: 32)
!520 = !DILocation(line: 291, column: 11, scope: !519)
!521 = !DILocation(line: 296, column: 20, scope: !401)
!522 = !DILocation(line: 296, column: 9, scope: !401)
!523 = !DILocation(line: 1735, column: 11, scope: !49, inlinedAt: !400)
!524 = !DILocation(line: 1738, column: 18, scope: !195, inlinedAt: !400)
!525 = !DILocation(line: 1739, column: 11, scope: !195, inlinedAt: !400)
!526 = !DILocation(line: 1739, column: 3, scope: !195, inlinedAt: !400)
!527 = !DILocation(line: 297, column: 28, scope: !401)
!528 = !DILocation(line: 297, column: 9, scope: !401)
!529 = !DILocation(line: 1724, column: 7, scope: !430, inlinedAt: !406)
!530 = !DILocation(line: 1724, column: 12, scope: !430, inlinedAt: !406)
!531 = !DILocation(line: 1724, column: 9, scope: !430, inlinedAt: !406)
!532 = !DILocation(line: 1724, column: 7, scope: !431, inlinedAt: !406)
!533 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !534)
!534 = distinct !DILocation(line: 1728, column: 5, scope: !437, inlinedAt: !406)
!535 = !DILocation(line: 1725, column: 9, scope: !440, inlinedAt: !406)
!536 = !DILocation(line: 1725, column: 7, scope: !440, inlinedAt: !406)
!537 = !DILocation(line: 1731, column: 3, scope: !431, inlinedAt: !406)
!538 = !DILocation(line: 299, column: 17, scope: !392)
!539 = !DILocation(line: 299, column: 9, scope: !392)
!540 = !DILocation(line: 303, column: 43, scope: !541)
!541 = distinct !DILexicalBlock(scope: !392, file: !11, line: 302, column: 9)
!542 = !DILocation(line: 303, column: 57, scope: !541)
!543 = !DILocation(line: 303, column: 19, scope: !541)
!544 = !DILocation(line: 303, column: 17, scope: !541)
!545 = !DILocation(line: 305, column: 17, scope: !392)
!546 = !DILocation(line: 305, column: 9, scope: !392)
!547 = !DILocation(line: 306, column: 14, scope: !393)
!548 = !DILocation(line: 312, column: 3, scope: !382)
!549 = !DILocation(line: 314, column: 1, scope: !22)
!550 = !DILocation(line: 1720, column: 29, scope: !46)
!551 = !DILocation(line: 1720, column: 39, scope: !46)
!552 = !DILocation(line: 1724, column: 7, scope: !430)
!553 = !DILocation(line: 1724, column: 12, scope: !430)
!554 = !DILocation(line: 1724, column: 9, scope: !430)
!555 = !DILocation(line: 1724, column: 7, scope: !431)
!556 = !DILocation(line: 1725, column: 9, scope: !440)
!557 = !DILocation(line: 1725, column: 7, scope: !440)
!558 = !DILocation(line: 1726, column: 3, scope: !440)
!559 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !560)
!560 = distinct !DILocation(line: 1728, column: 5, scope: !437)
!561 = !DILocation(line: 1731, column: 3, scope: !431)
!562 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !23, file: !11, line: 315, type: !15)
!563 = !DILocation(line: 315, column: 30, scope: !23)
!564 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !23, file: !11, line: 315, type: !15)
!565 = !DILocation(line: 315, column: 49, scope: !23)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__Active", scope: !23, file: !11, line: 316, type: !15)
!567 = !DILocation(line: 316, column: 7, scope: !23)
!568 = !DILocation(line: 316, column: 33, scope: !23)
!569 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !23, file: !11, line: 317, type: !15)
!570 = !DILocation(line: 317, column: 7, scope: !23)
!571 = !DILocation(line: 320, column: 7, scope: !572)
!572 = distinct !DILexicalBlock(scope: !573, file: !11, line: 320, column: 7)
!573 = distinct !DILexicalBlock(scope: !23, file: !11, line: 319, column: 3)
!574 = !DILocation(line: 320, column: 31, scope: !572)
!575 = !DILocation(line: 320, column: 7, scope: !573)
!576 = !DILocation(line: 321, column: 5, scope: !577)
!577 = distinct !DILexicalBlock(scope: !572, file: !11, line: 320, column: 37)
!578 = !DILocation(line: 323, column: 9, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !11, line: 323, column: 9)
!580 = distinct !DILexicalBlock(scope: !572, file: !11, line: 322, column: 10)
!581 = !DILocation(line: 323, column: 33, scope: !579)
!582 = !DILocation(line: 323, column: 9, scope: !580)
!583 = !DILocation(line: 324, column: 7, scope: !584)
!584 = distinct !DILexicalBlock(scope: !579, file: !11, line: 323, column: 39)
!585 = !DILocation(line: 326, column: 11, scope: !586)
!586 = distinct !DILexicalBlock(scope: !587, file: !11, line: 326, column: 11)
!587 = distinct !DILexicalBlock(scope: !579, file: !11, line: 325, column: 12)
!588 = !DILocation(line: 326, column: 35, scope: !586)
!589 = !DILocation(line: 326, column: 11, scope: !587)
!590 = !DILocation(line: 327, column: 9, scope: !591)
!591 = distinct !DILexicalBlock(scope: !586, file: !11, line: 326, column: 41)
!592 = !DILocation(line: 329, column: 13, scope: !593)
!593 = distinct !DILexicalBlock(scope: !594, file: !11, line: 329, column: 13)
!594 = distinct !DILexicalBlock(scope: !586, file: !11, line: 328, column: 14)
!595 = !DILocation(line: 329, column: 37, scope: !593)
!596 = !DILocation(line: 329, column: 13, scope: !594)
!597 = !DILocation(line: 330, column: 11, scope: !598)
!598 = distinct !DILexicalBlock(scope: !593, file: !11, line: 329, column: 43)
!599 = !DILocation(line: 332, column: 11, scope: !600)
!600 = distinct !DILexicalBlock(scope: !593, file: !11, line: 331, column: 16)
!601 = !DILocation(line: 334, column: 15, scope: !600)
!602 = !DILocation(line: 334, column: 18, scope: !603)
!603 = distinct !DILexicalBlock(scope: !600, file: !11, line: 334, column: 15)
!604 = !DILocation(line: 337, column: 46, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !11, line: 336, column: 13)
!606 = distinct !DILexicalBlock(scope: !603, file: !11, line: 334, column: 18)
!607 = !DILocation(line: 337, column: 60, scope: !605)
!608 = !DILocation(line: 337, column: 22, scope: !605)
!609 = !DILocation(line: 337, column: 20, scope: !605)
!610 = !DILocation(line: 339, column: 13, scope: !606)
!611 = !DILocation(line: 342, column: 46, scope: !612)
!612 = distinct !DILexicalBlock(scope: !606, file: !11, line: 341, column: 13)
!613 = !DILocation(line: 342, column: 60, scope: !612)
!614 = !DILocation(line: 342, column: 22, scope: !612)
!615 = !DILocation(line: 342, column: 20, scope: !612)
!616 = !DILocation(line: 344, column: 13, scope: !606)
!617 = !DILocation(line: 347, column: 48, scope: !618)
!618 = distinct !DILexicalBlock(scope: !606, file: !11, line: 346, column: 13)
!619 = !DILocation(line: 347, column: 62, scope: !618)
!620 = !DILocation(line: 347, column: 22, scope: !618)
!621 = !DILocation(line: 347, column: 20, scope: !618)
!622 = !DILocation(line: 349, column: 13, scope: !606)
!623 = !DILocation(line: 352, column: 48, scope: !624)
!624 = distinct !DILexicalBlock(scope: !606, file: !11, line: 351, column: 13)
!625 = !DILocation(line: 352, column: 62, scope: !624)
!626 = !DILocation(line: 352, column: 22, scope: !624)
!627 = !DILocation(line: 352, column: 20, scope: !624)
!628 = !DILocation(line: 354, column: 13, scope: !606)
!629 = !DILocation(line: 357, column: 37, scope: !630)
!630 = distinct !DILexicalBlock(scope: !606, file: !11, line: 356, column: 13)
!631 = !DILocation(line: 358, column: 46, scope: !630)
!632 = !DILocation(line: 358, column: 60, scope: !630)
!633 = !DILocation(line: 358, column: 22, scope: !630)
!634 = !DILocation(line: 358, column: 20, scope: !630)
!635 = !DILocation(line: 360, column: 11, scope: !606)
!636 = !DILocation(line: 360, column: 18, scope: !603)
!637 = !DILocation(line: 368, column: 11, scope: !573)
!638 = !DILocation(line: 368, column: 3, scope: !573)
!639 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !24, file: !11, line: 371, type: !15)
!640 = !DILocation(line: 371, column: 33, scope: !24)
!641 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !24, file: !11, line: 371, type: !15)
!642 = !DILocation(line: 371, column: 52, scope: !24)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !24, file: !11, line: 372, type: !15)
!644 = !DILocation(line: 372, column: 7, scope: !24)
!645 = !DILocation(line: 372, column: 30, scope: !24)
!646 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !24, file: !11, line: 373, type: !15)
!647 = !DILocation(line: 373, column: 7, scope: !24)
!648 = !DILocation(line: 373, column: 50, scope: !24)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__TargetDeviceObject", scope: !24, file: !11, line: 374, type: !15)
!650 = !DILocation(line: 374, column: 7, scope: !24)
!651 = !DILocation(line: 374, column: 45, scope: !24)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !24, file: !11, line: 375, type: !15)
!653 = !DILocation(line: 375, column: 7, scope: !24)
!654 = !DILocation(line: 378, column: 7, scope: !655)
!655 = distinct !DILexicalBlock(scope: !656, file: !11, line: 378, column: 7)
!656 = distinct !DILexicalBlock(scope: !24, file: !11, line: 377, column: 3)
!657 = !DILocation(line: 378, column: 12, scope: !655)
!658 = !DILocation(line: 378, column: 9, scope: !655)
!659 = !DILocation(line: 378, column: 7, scope: !656)
!660 = !DILocation(line: 379, column: 9, scope: !661)
!661 = distinct !DILexicalBlock(scope: !655, file: !11, line: 378, column: 16)
!662 = !DILocation(line: 379, column: 7, scope: !661)
!663 = !DILocation(line: 380, column: 3, scope: !661)
!664 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !665)
!665 = distinct !DILocation(line: 382, column: 5, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !11, line: 381, column: 5)
!667 = distinct !DILexicalBlock(scope: !655, file: !11, line: 380, column: 10)
!668 = !DILocation(line: 386, column: 24, scope: !669)
!669 = distinct !DILexicalBlock(scope: !656, file: !11, line: 385, column: 3)
!670 = !DILocation(line: 387, column: 44, scope: !669)
!671 = !DILocation(line: 388, column: 23, scope: !669)
!672 = !DILocation(line: 388, column: 60, scope: !669)
!673 = !DILocation(line: 388, column: 9, scope: !669)
!674 = !DILocation(line: 388, column: 7, scope: !669)
!675 = !DILocation(line: 390, column: 11, scope: !656)
!676 = !DILocation(line: 390, column: 3, scope: !656)
!677 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !25, file: !11, line: 393, type: !15)
!678 = !DILocation(line: 393, column: 29, scope: !25)
!679 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__PlayActive", scope: !25, file: !11, line: 394, type: !15)
!680 = !DILocation(line: 394, column: 7, scope: !25)
!681 = !DILocation(line: 394, column: 37, scope: !25)
!682 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ioStatus__Status", scope: !25, file: !11, line: 395, type: !15)
!683 = !DILocation(line: 395, column: 7, scope: !25)
!684 = !DILocation(line: 395, column: 26, scope: !25)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentBuffer__Header__AudioStatus", scope: !25, file: !11, line: 396, type: !15)
!686 = !DILocation(line: 396, column: 7, scope: !25)
!687 = !DILocation(line: 396, column: 44, scope: !25)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp_CdAudioIsPlayActive", scope: !25, file: !11, line: 397, type: !15)
!689 = !DILocation(line: 397, column: 7, scope: !25)
!690 = !DILocation(line: 397, column: 33, scope: !25)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "event", scope: !25, file: !11, line: 398, type: !15)
!692 = !DILocation(line: 398, column: 7, scope: !25)
!693 = !DILocation(line: 398, column: 15, scope: !25)
!694 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !25, file: !11, line: 399, type: !15)
!695 = !DILocation(line: 399, column: 7, scope: !25)
!696 = !DILocation(line: 399, column: 16, scope: !25)
!697 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentBuffer", scope: !25, file: !11, line: 400, type: !15)
!698 = !DILocation(line: 400, column: 7, scope: !25)
!699 = !DILocation(line: 400, column: 23, scope: !25)
!700 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "returnValue", scope: !25, file: !11, line: 401, type: !15)
!701 = !DILocation(line: 401, column: 7, scope: !25)
!702 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp10", scope: !25, file: !11, line: 402, type: !4)
!703 = !DILocation(line: 402, column: 8, scope: !25)
!704 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp11", scope: !25, file: !11, line: 403, type: !15)
!705 = !DILocation(line: 403, column: 7, scope: !25)
!706 = !DILocation(line: 404, column: 9, scope: !707)
!707 = distinct !DILexicalBlock(scope: !708, file: !11, line: 404, column: 7)
!708 = distinct !DILexicalBlock(scope: !25, file: !11, line: 405, column: 3)
!709 = !DILocation(line: 404, column: 7, scope: !708)
!710 = !DILocation(line: 405, column: 5, scope: !711)
!711 = distinct !DILexicalBlock(scope: !707, file: !11, line: 404, column: 38)
!712 = !DILocation(line: 409, column: 7, scope: !713)
!713 = distinct !DILexicalBlock(scope: !708, file: !11, line: 409, column: 7)
!714 = !DILocation(line: 409, column: 21, scope: !713)
!715 = !DILocation(line: 409, column: 7, scope: !708)
!716 = !DILocation(line: 410, column: 5, scope: !717)
!717 = distinct !DILexicalBlock(scope: !713, file: !11, line: 409, column: 27)
!718 = !DILocation(line: 414, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !708, file: !11, line: 414, column: 7)
!720 = !DILocation(line: 414, column: 31, scope: !719)
!721 = !DILocation(line: 414, column: 7, scope: !708)
!722 = !DILocation(line: 415, column: 5, scope: !723)
!723 = distinct !DILexicalBlock(scope: !719, file: !11, line: 414, column: 37)
!724 = !DILocation(line: 419, column: 24, scope: !725)
!725 = distinct !DILexicalBlock(scope: !708, file: !11, line: 417, column: 3)
!726 = !DILocation(line: 419, column: 17, scope: !725)
!727 = !DILocation(line: 419, column: 15, scope: !725)
!728 = !DILocation(line: 419, column: 7, scope: !729)
!729 = distinct !DILexicalBlock(scope: !725, file: !11, line: 419, column: 7)
!730 = !DILocation(line: 419, column: 19, scope: !729)
!731 = !DILocation(line: 419, column: 7, scope: !725)
!732 = !DILocation(line: 421, column: 27, scope: !733)
!733 = distinct !DILexicalBlock(scope: !734, file: !11, line: 420, column: 5)
!734 = distinct !DILexicalBlock(scope: !729, file: !11, line: 419, column: 28)
!735 = !DILocation(line: 421, column: 34, scope: !733)
!736 = !DILocation(line: 421, column: 45, scope: !733)
!737 = !DILocation(line: 421, column: 5, scope: !733)
!738 = !DILocation(line: 422, column: 14, scope: !733)
!739 = !DILocation(line: 422, column: 12, scope: !733)
!740 = !DILocation(line: 424, column: 3, scope: !734)
!741 = !DILocation(line: 427, column: 7, scope: !742)
!742 = distinct !DILexicalBlock(scope: !743, file: !11, line: 427, column: 7)
!743 = distinct !DILexicalBlock(scope: !708, file: !11, line: 426, column: 3)
!744 = !DILocation(line: 427, column: 14, scope: !742)
!745 = !DILocation(line: 427, column: 7, scope: !743)
!746 = !DILocation(line: 428, column: 5, scope: !747)
!747 = distinct !DILexicalBlock(scope: !742, file: !11, line: 427, column: 19)
!748 = !DILocation(line: 432, column: 7, scope: !749)
!749 = distinct !DILexicalBlock(scope: !708, file: !11, line: 432, column: 7)
!750 = !DILocation(line: 432, column: 42, scope: !749)
!751 = !DILocation(line: 432, column: 7, scope: !708)
!752 = !DILocation(line: 433, column: 17, scope: !753)
!753 = distinct !DILexicalBlock(scope: !749, file: !11, line: 432, column: 49)
!754 = !DILocation(line: 434, column: 3, scope: !753)
!755 = !DILocation(line: 435, column: 17, scope: !756)
!756 = distinct !DILexicalBlock(scope: !749, file: !11, line: 434, column: 10)
!757 = !DILocation(line: 436, column: 33, scope: !756)
!758 = !DILocation(line: 438, column: 11, scope: !708)
!759 = !DILocation(line: 438, column: 3, scope: !708)
!760 = !DILocation(line: 440, column: 1, scope: !25)
!761 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !28, file: !11, line: 441, type: !15)
!762 = !DILocation(line: 441, column: 33, scope: !28)
!763 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !28, file: !11, line: 441, type: !15)
!764 = !DILocation(line: 441, column: 52, scope: !28)
!765 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !28, file: !11, line: 442, type: !15)
!766 = !DILocation(line: 442, column: 7, scope: !28)
!767 = !DILocation(line: 442, column: 50, scope: !28)
!768 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !28, file: !11, line: 443, type: !15)
!769 = !DILocation(line: 443, column: 7, scope: !28)
!770 = !DILocation(line: 443, column: 39, scope: !28)
!771 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__TargetDeviceObject", scope: !28, file: !11, line: 444, type: !15)
!772 = !DILocation(line: 444, column: 7, scope: !28)
!773 = !DILocation(line: 444, column: 45, scope: !28)
!774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__AssociatedIrp__SystemBuffer", scope: !28, file: !11, line: 445, type: !15)
!775 = !DILocation(line: 445, column: 7, scope: !28)
!776 = !DILocation(line: 445, column: 42, scope: !28)
!777 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srb__Cdb", scope: !28, file: !11, line: 446, type: !15)
!778 = !DILocation(line: 446, column: 7, scope: !28)
!779 = !DILocation(line: 446, column: 18, scope: !28)
!780 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentIrpStack__Parameters__DeviceIoControl__IoControlCode", scope: !28, file: !11, line: 447, type: !15)
!781 = !DILocation(line: 447, column: 7, scope: !28)
!782 = !DILocation(line: 447, column: 69, scope: !28)
!783 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !28, file: !11, line: 448, type: !15)
!784 = !DILocation(line: 448, column: 7, scope: !28)
!785 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength", scope: !28, file: !11, line: 449, type: !15)
!786 = !DILocation(line: 449, column: 7, scope: !28)
!787 = !DILocation(line: 449, column: 74, scope: !28)
!788 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentIrpStack__Parameters__DeviceIoControl__InputBufferLength", scope: !28, file: !11, line: 450, type: !15)
!789 = !DILocation(line: 450, column: 7, scope: !28)
!790 = !DILocation(line: 450, column: 73, scope: !28)
!791 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srb__CdbLength", scope: !28, file: !11, line: 451, type: !15)
!792 = !DILocation(line: 451, column: 7, scope: !28)
!793 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cdb__CDB10__OperationCode", scope: !28, file: !11, line: 452, type: !15)
!794 = !DILocation(line: 452, column: 7, scope: !28)
!795 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srb__TimeOutValue", scope: !28, file: !11, line: 453, type: !15)
!796 = !DILocation(line: 453, column: 7, scope: !28)
!797 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__READ_CAPACITY_DATA", scope: !28, file: !11, line: 454, type: !15)
!798 = !DILocation(line: 454, column: 7, scope: !28)
!799 = !DILocation(line: 454, column: 36, scope: !28)
!800 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lastSession__LogicalBlockAddress", scope: !28, file: !11, line: 455, type: !15)
!801 = !DILocation(line: 455, column: 7, scope: !28)
!802 = !DILocation(line: 455, column: 42, scope: !28)
!803 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cdaudioDataOut__FirstTrack", scope: !28, file: !11, line: 456, type: !15)
!804 = !DILocation(line: 456, column: 7, scope: !28)
!805 = !DILocation(line: 456, column: 36, scope: !28)
!806 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cdaudioDataOut__LastTrack", scope: !28, file: !11, line: 457, type: !15)
!807 = !DILocation(line: 457, column: 7, scope: !28)
!808 = !DILocation(line: 457, column: 35, scope: !28)
!809 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__CDROM_TOC", scope: !28, file: !11, line: 458, type: !15)
!810 = !DILocation(line: 458, column: 7, scope: !28)
!811 = !DILocation(line: 458, column: 27, scope: !28)
!812 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__SUB_Q_CURRENT_POSITION", scope: !28, file: !11, line: 459, type: !15)
!813 = !DILocation(line: 459, column: 7, scope: !28)
!814 = !DILocation(line: 459, column: 40, scope: !28)
!815 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "userPtr__Format", scope: !28, file: !11, line: 460, type: !15)
!816 = !DILocation(line: 460, column: 7, scope: !28)
!817 = !DILocation(line: 460, column: 25, scope: !28)
!818 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__CDROM_PLAY_AUDIO_MSF", scope: !28, file: !11, line: 461, type: !15)
!819 = !DILocation(line: 461, column: 7, scope: !28)
!820 = !DILocation(line: 461, column: 38, scope: !28)
!821 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inputBuffer__StartingM", scope: !28, file: !11, line: 462, type: !15)
!822 = !DILocation(line: 462, column: 7, scope: !28)
!823 = !DILocation(line: 462, column: 32, scope: !28)
!824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inputBuffer__EndingM", scope: !28, file: !11, line: 463, type: !15)
!825 = !DILocation(line: 463, column: 7, scope: !28)
!826 = !DILocation(line: 463, column: 30, scope: !28)
!827 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inputBuffer__StartingS", scope: !28, file: !11, line: 464, type: !15)
!828 = !DILocation(line: 464, column: 7, scope: !28)
!829 = !DILocation(line: 464, column: 32, scope: !28)
!830 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inputBuffer__EndingS", scope: !28, file: !11, line: 465, type: !15)
!831 = !DILocation(line: 465, column: 7, scope: !28)
!832 = !DILocation(line: 465, column: 30, scope: !28)
!833 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inputBuffer__StartingF", scope: !28, file: !11, line: 466, type: !15)
!834 = !DILocation(line: 466, column: 7, scope: !28)
!835 = !DILocation(line: 466, column: 32, scope: !28)
!836 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inputBuffer__EndingF", scope: !28, file: !11, line: 467, type: !15)
!837 = !DILocation(line: 467, column: 7, scope: !28)
!838 = !DILocation(line: 467, column: 30, scope: !28)
!839 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cdb__PLAY_AUDIO_MSF__OperationCode", scope: !28, file: !11, line: 468, type: !15)
!840 = !DILocation(line: 468, column: 7, scope: !28)
!841 = !DILocation(line: 468, column: 44, scope: !28)
!842 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__CDROM_SEEK_AUDIO_MSF", scope: !28, file: !11, line: 469, type: !15)
!843 = !DILocation(line: 469, column: 7, scope: !28)
!844 = !DILocation(line: 469, column: 38, scope: !28)
!845 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentIrpStack", scope: !28, file: !11, line: 470, type: !15)
!846 = !DILocation(line: 470, column: 7, scope: !28)
!847 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !28, file: !11, line: 471, type: !15)
!848 = !DILocation(line: 471, column: 7, scope: !28)
!849 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cdaudioDataOut", scope: !28, file: !11, line: 472, type: !15)
!850 = !DILocation(line: 472, column: 7, scope: !28)
!851 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srb", scope: !28, file: !11, line: 473, type: !15)
!852 = !DILocation(line: 473, column: 7, scope: !28)
!853 = !DILocation(line: 473, column: 13, scope: !28)
!854 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lastSession", scope: !28, file: !11, line: 474, type: !15)
!855 = !DILocation(line: 474, column: 7, scope: !28)
!856 = !DILocation(line: 474, column: 21, scope: !28)
!857 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cdb", scope: !28, file: !11, line: 475, type: !15)
!858 = !DILocation(line: 475, column: 7, scope: !28)
!859 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !28, file: !11, line: 476, type: !15)
!860 = !DILocation(line: 476, column: 7, scope: !28)
!861 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !28, file: !11, line: 477, type: !15)
!862 = !DILocation(line: 477, column: 7, scope: !28)
!863 = !DILocation(line: 477, column: 11, scope: !28)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytesTransfered", scope: !28, file: !11, line: 478, type: !15)
!865 = !DILocation(line: 478, column: 7, scope: !28)
!866 = !DILocation(line: 478, column: 25, scope: !28)
!867 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Toc", scope: !28, file: !11, line: 479, type: !15)
!868 = !DILocation(line: 479, column: 7, scope: !28)
!869 = !DILocation(line: 479, column: 13, scope: !28)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !28, file: !11, line: 480, type: !15)
!871 = !DILocation(line: 480, column: 7, scope: !28)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___0", scope: !28, file: !11, line: 481, type: !15)
!873 = !DILocation(line: 481, column: 7, scope: !28)
!874 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___1", scope: !28, file: !11, line: 482, type: !15)
!875 = !DILocation(line: 482, column: 7, scope: !28)
!876 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___2", scope: !28, file: !11, line: 483, type: !15)
!877 = !DILocation(line: 483, column: 7, scope: !28)
!878 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___3", scope: !28, file: !11, line: 484, type: !15)
!879 = !DILocation(line: 484, column: 7, scope: !28)
!880 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___4", scope: !28, file: !11, line: 485, type: !15)
!881 = !DILocation(line: 485, column: 7, scope: !28)
!882 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tracksToReturn", scope: !28, file: !11, line: 486, type: !15)
!883 = !DILocation(line: 486, column: 7, scope: !28)
!884 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tracksOnCd", scope: !28, file: !11, line: 487, type: !15)
!885 = !DILocation(line: 487, column: 7, scope: !28)
!886 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tracksInBuffer", scope: !28, file: !11, line: 488, type: !15)
!887 = !DILocation(line: 488, column: 7, scope: !28)
!888 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "userPtr", scope: !28, file: !11, line: 489, type: !15)
!889 = !DILocation(line: 489, column: 7, scope: !28)
!890 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "SubQPtr", scope: !28, file: !11, line: 490, type: !15)
!891 = !DILocation(line: 490, column: 7, scope: !28)
!892 = !DILocation(line: 490, column: 17, scope: !28)
!893 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___5", scope: !28, file: !11, line: 491, type: !15)
!894 = !DILocation(line: 491, column: 7, scope: !28)
!895 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___6", scope: !28, file: !11, line: 492, type: !15)
!896 = !DILocation(line: 492, column: 7, scope: !28)
!897 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inputBuffer", scope: !28, file: !11, line: 493, type: !15)
!898 = !DILocation(line: 493, column: 7, scope: !28)
!899 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inputBuffer___0", scope: !28, file: !11, line: 494, type: !15)
!900 = !DILocation(line: 494, column: 7, scope: !28)
!901 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___7", scope: !28, file: !11, line: 495, type: !15)
!902 = !DILocation(line: 495, column: 7, scope: !28)
!903 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___8", scope: !28, file: !11, line: 496, type: !15)
!904 = !DILocation(line: 496, column: 7, scope: !28)
!905 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp58", scope: !28, file: !11, line: 497, type: !15)
!906 = !DILocation(line: 497, column: 7, scope: !28)
!907 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp59", scope: !28, file: !11, line: 498, type: !15)
!908 = !DILocation(line: 498, column: 7, scope: !28)
!909 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp60", scope: !28, file: !11, line: 499, type: !15)
!910 = !DILocation(line: 499, column: 7, scope: !28)
!911 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp61", scope: !28, file: !11, line: 500, type: !15)
!912 = !DILocation(line: 500, column: 7, scope: !28)
!913 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp62", scope: !28, file: !11, line: 501, type: !15)
!914 = !DILocation(line: 501, column: 7, scope: !28)
!915 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp63", scope: !28, file: !11, line: 502, type: !15)
!916 = !DILocation(line: 502, column: 7, scope: !28)
!917 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp64", scope: !28, file: !11, line: 503, type: !15)
!918 = !DILocation(line: 503, column: 7, scope: !28)
!919 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp65", scope: !28, file: !11, line: 504, type: !15)
!920 = !DILocation(line: 504, column: 7, scope: !28)
!921 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp66", scope: !28, file: !11, line: 505, type: !15)
!922 = !DILocation(line: 505, column: 7, scope: !28)
!923 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp67", scope: !28, file: !11, line: 506, type: !15)
!924 = !DILocation(line: 506, column: 7, scope: !28)
!925 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp68", scope: !28, file: !11, line: 507, type: !15)
!926 = !DILocation(line: 507, column: 7, scope: !28)
!927 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp69", scope: !28, file: !11, line: 508, type: !15)
!928 = !DILocation(line: 508, column: 7, scope: !28)
!929 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp70", scope: !28, file: !11, line: 509, type: !15)
!930 = !DILocation(line: 509, column: 7, scope: !28)
!931 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp71", scope: !28, file: !11, line: 510, type: !15)
!932 = !DILocation(line: 510, column: 7, scope: !28)
!933 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp72", scope: !28, file: !11, line: 511, type: !15)
!934 = !DILocation(line: 511, column: 7, scope: !28)
!935 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp73", scope: !28, file: !11, line: 512, type: !15)
!936 = !DILocation(line: 512, column: 7, scope: !28)
!937 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp74", scope: !28, file: !11, line: 513, type: !15)
!938 = !DILocation(line: 513, column: 7, scope: !28)
!939 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp75", scope: !28, file: !11, line: 514, type: !15)
!940 = !DILocation(line: 514, column: 7, scope: !28)
!941 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp76", scope: !28, file: !11, line: 515, type: !15)
!942 = !DILocation(line: 515, column: 7, scope: !28)
!943 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp77", scope: !28, file: !11, line: 516, type: !15)
!944 = !DILocation(line: 516, column: 7, scope: !28)
!945 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp78", scope: !28, file: !11, line: 517, type: !15)
!946 = !DILocation(line: 517, column: 7, scope: !28)
!947 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp79", scope: !28, file: !11, line: 518, type: !15)
!948 = !DILocation(line: 518, column: 7, scope: !28)
!949 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp80", scope: !28, file: !11, line: 519, type: !15)
!950 = !DILocation(line: 519, column: 7, scope: !28)
!951 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp81", scope: !28, file: !11, line: 520, type: !15)
!952 = !DILocation(line: 520, column: 7, scope: !28)
!953 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp82", scope: !28, file: !11, line: 521, type: !15)
!954 = !DILocation(line: 521, column: 7, scope: !28)
!955 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp83", scope: !28, file: !11, line: 522, type: !15)
!956 = !DILocation(line: 522, column: 7, scope: !28)
!957 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp84", scope: !28, file: !11, line: 523, type: !15)
!958 = !DILocation(line: 523, column: 7, scope: !28)
!959 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp85", scope: !28, file: !11, line: 524, type: !15)
!960 = !DILocation(line: 524, column: 7, scope: !28)
!961 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp86", scope: !28, file: !11, line: 525, type: !15)
!962 = !DILocation(line: 525, column: 7, scope: !28)
!963 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp87", scope: !28, file: !11, line: 526, type: !15)
!964 = !DILocation(line: 526, column: 7, scope: !28)
!965 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp88", scope: !28, file: !11, line: 527, type: !15)
!966 = !DILocation(line: 527, column: 7, scope: !28)
!967 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp89", scope: !28, file: !11, line: 528, type: !15)
!968 = !DILocation(line: 528, column: 7, scope: !28)
!969 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp90", scope: !28, file: !11, line: 529, type: !15)
!970 = !DILocation(line: 529, column: 7, scope: !28)
!971 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp91", scope: !28, file: !11, line: 530, type: !15)
!972 = !DILocation(line: 530, column: 7, scope: !28)
!973 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp92", scope: !28, file: !11, line: 531, type: !15)
!974 = !DILocation(line: 531, column: 7, scope: !28)
!975 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp93", scope: !28, file: !11, line: 532, type: !15)
!976 = !DILocation(line: 532, column: 7, scope: !28)
!977 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp94", scope: !28, file: !11, line: 533, type: !15)
!978 = !DILocation(line: 533, column: 7, scope: !28)
!979 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp95", scope: !28, file: !11, line: 534, type: !15)
!980 = !DILocation(line: 534, column: 7, scope: !28)
!981 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp96", scope: !28, file: !11, line: 535, type: !15)
!982 = !DILocation(line: 535, column: 7, scope: !28)
!983 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp97", scope: !28, file: !11, line: 536, type: !15)
!984 = !DILocation(line: 536, column: 7, scope: !28)
!985 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp98", scope: !28, file: !11, line: 537, type: !15)
!986 = !DILocation(line: 537, column: 7, scope: !28)
!987 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp99", scope: !28, file: !11, line: 538, type: !15)
!988 = !DILocation(line: 538, column: 7, scope: !28)
!989 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp100", scope: !28, file: !11, line: 539, type: !15)
!990 = !DILocation(line: 539, column: 7, scope: !28)
!991 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp101", scope: !28, file: !11, line: 540, type: !15)
!992 = !DILocation(line: 540, column: 7, scope: !28)
!993 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp102", scope: !28, file: !11, line: 541, type: !15)
!994 = !DILocation(line: 541, column: 7, scope: !28)
!995 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp103", scope: !28, file: !11, line: 542, type: !15)
!996 = !DILocation(line: 542, column: 7, scope: !28)
!997 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp104", scope: !28, file: !11, line: 543, type: !15)
!998 = !DILocation(line: 543, column: 7, scope: !28)
!999 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp105", scope: !28, file: !11, line: 544, type: !15)
!1000 = !DILocation(line: 544, column: 7, scope: !28)
!1001 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp106", scope: !28, file: !11, line: 545, type: !15)
!1002 = !DILocation(line: 545, column: 7, scope: !28)
!1003 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp107", scope: !28, file: !11, line: 546, type: !5)
!1004 = !DILocation(line: 546, column: 17, scope: !28)
!1005 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp108", scope: !28, file: !11, line: 547, type: !5)
!1006 = !DILocation(line: 547, column: 17, scope: !28)
!1007 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp109", scope: !28, file: !11, line: 548, type: !15)
!1008 = !DILocation(line: 548, column: 7, scope: !28)
!1009 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp110", scope: !28, file: !11, line: 549, type: !15)
!1010 = !DILocation(line: 549, column: 7, scope: !28)
!1011 = !DILocation(line: 499, column: 21, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !28, file: !11, line: 551, column: 3)
!1013 = !DILocation(line: 499, column: 19, scope: !1012)
!1014 = !DILocation(line: 500, column: 21, scope: !1012)
!1015 = !DILocation(line: 500, column: 19, scope: !1012)
!1016 = !DILocation(line: 501, column: 20, scope: !1012)
!1017 = !DILocation(line: 501, column: 18, scope: !1012)
!1018 = !DILocation(line: 502, column: 9, scope: !1012)
!1019 = !DILocation(line: 502, column: 7, scope: !1012)
!1020 = !DILocation(line: 503, column: 15, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1012, file: !11, line: 503, column: 3)
!1022 = !DILocation(line: 503, column: 7, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1021, file: !11, line: 503, column: 7)
!1024 = !DILocation(line: 503, column: 70, scope: !1023)
!1025 = !DILocation(line: 503, column: 67, scope: !1023)
!1026 = !DILocation(line: 1720, column: 29, scope: !46, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 806, column: 3, scope: !1028, inlinedAt: !1030)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !11, line: 803, column: 3)
!1029 = distinct !DILexicalBlock(scope: !29, file: !11, line: 798, column: 3)
!1030 = distinct !DILocation(line: 558, column: 37, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !11, line: 555, column: 27)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !11, line: 554, column: 47)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 554, column: 29)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !11, line: 535, column: 30)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !11, line: 535, column: 27)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !11, line: 532, column: 28)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !11, line: 530, column: 25)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !11, line: 530, column: 21)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !11, line: 529, column: 26)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !11, line: 527, column: 23)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !11, line: 527, column: 19)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !11, line: 526, column: 24)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !11, line: 524, column: 21)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !11, line: 524, column: 17)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !11, line: 523, column: 22)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !11, line: 521, column: 19)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !11, line: 521, column: 15)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !11, line: 520, column: 20)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !11, line: 518, column: 17)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !11, line: 518, column: 13)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !11, line: 517, column: 18)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !11, line: 515, column: 15)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !11, line: 515, column: 11)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !11, line: 514, column: 16)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !11, line: 512, column: 13)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !11, line: 512, column: 9)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !11, line: 511, column: 14)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !11, line: 509, column: 11)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !11, line: 509, column: 7)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !11, line: 508, column: 12)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !11, line: 506, column: 9)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !11, line: 506, column: 5)
!1063 = distinct !DILexicalBlock(scope: !1023, file: !11, line: 505, column: 10)
!1064 = !DILocation(line: 1720, column: 39, scope: !46, inlinedAt: !1027)
!1065 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "status", arg: 1, scope: !29, file: !11, line: 795, type: !15)
!1066 = !DILocation(line: 795, column: 31, scope: !29, inlinedAt: !1030)
!1067 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !29, file: !11, line: 795, type: !15)
!1068 = !DILocation(line: 795, column: 44, scope: !29, inlinedAt: !1030)
!1069 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deviceExtension__TargetDeviceObject", arg: 3, scope: !29, file: !11, line: 795, type: !15)
!1070 = !DILocation(line: 795, column: 54, scope: !29, inlinedAt: !1030)
!1071 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp4", scope: !29, file: !11, line: 796, type: !5)
!1072 = !DILocation(line: 796, column: 17, scope: !29, inlinedAt: !1030)
!1073 = !DILocation(line: 1720, column: 29, scope: !46, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 806, column: 3, scope: !1028, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 574, column: 37, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !11, line: 572, column: 27)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !11, line: 571, column: 41)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !11, line: 571, column: 29)
!1079 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 571, column: 25)
!1080 = !DILocation(line: 1720, column: 39, scope: !46, inlinedAt: !1074)
!1081 = !DILocation(line: 795, column: 31, scope: !29, inlinedAt: !1075)
!1082 = !DILocation(line: 795, column: 44, scope: !29, inlinedAt: !1075)
!1083 = !DILocation(line: 795, column: 54, scope: !29, inlinedAt: !1075)
!1084 = !DILocation(line: 796, column: 17, scope: !29, inlinedAt: !1075)
!1085 = !DILocation(line: 1720, column: 29, scope: !46, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 806, column: 3, scope: !1028, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 611, column: 37, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !11, line: 608, column: 27)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !11, line: 607, column: 39)
!1090 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 607, column: 29)
!1091 = !DILocation(line: 1720, column: 39, scope: !46, inlinedAt: !1086)
!1092 = !DILocation(line: 795, column: 31, scope: !29, inlinedAt: !1087)
!1093 = !DILocation(line: 795, column: 44, scope: !29, inlinedAt: !1087)
!1094 = !DILocation(line: 795, column: 54, scope: !29, inlinedAt: !1087)
!1095 = !DILocation(line: 796, column: 17, scope: !29, inlinedAt: !1087)
!1096 = !DILocation(line: 1720, column: 29, scope: !46, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 806, column: 3, scope: !1028, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 633, column: 39, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !11, line: 631, column: 29)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !11, line: 630, column: 60)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !11, line: 630, column: 31)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !11, line: 631, column: 27)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !11, line: 629, column: 32)
!1104 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 622, column: 29)
!1105 = !DILocation(line: 1720, column: 39, scope: !46, inlinedAt: !1097)
!1106 = !DILocation(line: 795, column: 31, scope: !29, inlinedAt: !1098)
!1107 = !DILocation(line: 795, column: 44, scope: !29, inlinedAt: !1098)
!1108 = !DILocation(line: 795, column: 54, scope: !29, inlinedAt: !1098)
!1109 = !DILocation(line: 796, column: 17, scope: !29, inlinedAt: !1098)
!1110 = !DILocation(line: 1720, column: 29, scope: !46, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 806, column: 3, scope: !1028, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 666, column: 37, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !11, line: 663, column: 27)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !11, line: 662, column: 43)
!1115 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 662, column: 29)
!1116 = !DILocation(line: 1720, column: 39, scope: !46, inlinedAt: !1111)
!1117 = !DILocation(line: 795, column: 31, scope: !29, inlinedAt: !1112)
!1118 = !DILocation(line: 795, column: 44, scope: !29, inlinedAt: !1112)
!1119 = !DILocation(line: 795, column: 54, scope: !29, inlinedAt: !1112)
!1120 = !DILocation(line: 796, column: 17, scope: !29, inlinedAt: !1112)
!1121 = !DILocation(line: 1720, column: 29, scope: !46, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 806, column: 3, scope: !1028, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 676, column: 37, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !11, line: 673, column: 27)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !11, line: 672, column: 51)
!1126 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 672, column: 29)
!1127 = !DILocation(line: 1720, column: 39, scope: !46, inlinedAt: !1122)
!1128 = !DILocation(line: 795, column: 31, scope: !29, inlinedAt: !1123)
!1129 = !DILocation(line: 795, column: 44, scope: !29, inlinedAt: !1123)
!1130 = !DILocation(line: 795, column: 54, scope: !29, inlinedAt: !1123)
!1131 = !DILocation(line: 796, column: 17, scope: !29, inlinedAt: !1123)
!1132 = !DILocation(line: 1720, column: 29, scope: !46, inlinedAt: !1133)
!1133 = distinct !DILocation(line: 806, column: 3, scope: !1028, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 790, column: 13, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1012, file: !11, line: 798, column: 3)
!1136 = !DILocation(line: 1720, column: 39, scope: !46, inlinedAt: !1133)
!1137 = !DILocation(line: 795, column: 31, scope: !29, inlinedAt: !1134)
!1138 = !DILocation(line: 795, column: 44, scope: !29, inlinedAt: !1134)
!1139 = !DILocation(line: 795, column: 54, scope: !29, inlinedAt: !1134)
!1140 = !DILocation(line: 796, column: 17, scope: !29, inlinedAt: !1134)
!1141 = !DILocation(line: 503, column: 7, scope: !1021)
!1142 = !DILocation(line: 504, column: 5, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1023, file: !11, line: 503, column: 83)
!1144 = !DILocation(line: 506, column: 17, scope: !1062)
!1145 = !DILocation(line: 506, column: 9, scope: !1061)
!1146 = !DILocation(line: 506, column: 72, scope: !1061)
!1147 = !DILocation(line: 506, column: 69, scope: !1061)
!1148 = !DILocation(line: 506, column: 9, scope: !1062)
!1149 = !DILocation(line: 507, column: 7, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1061, file: !11, line: 506, column: 85)
!1151 = !DILocation(line: 509, column: 19, scope: !1059)
!1152 = !DILocation(line: 509, column: 11, scope: !1058)
!1153 = !DILocation(line: 509, column: 74, scope: !1058)
!1154 = !DILocation(line: 509, column: 71, scope: !1058)
!1155 = !DILocation(line: 509, column: 11, scope: !1059)
!1156 = !DILocation(line: 510, column: 9, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1058, file: !11, line: 509, column: 87)
!1158 = !DILocation(line: 512, column: 21, scope: !1056)
!1159 = !DILocation(line: 512, column: 13, scope: !1055)
!1160 = !DILocation(line: 512, column: 76, scope: !1055)
!1161 = !DILocation(line: 512, column: 73, scope: !1055)
!1162 = !DILocation(line: 512, column: 13, scope: !1056)
!1163 = !DILocation(line: 513, column: 11, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1055, file: !11, line: 512, column: 89)
!1165 = !DILocation(line: 515, column: 23, scope: !1053)
!1166 = !DILocation(line: 515, column: 15, scope: !1052)
!1167 = !DILocation(line: 515, column: 78, scope: !1052)
!1168 = !DILocation(line: 515, column: 75, scope: !1052)
!1169 = !DILocation(line: 515, column: 15, scope: !1053)
!1170 = !DILocation(line: 516, column: 13, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1052, file: !11, line: 515, column: 91)
!1172 = !DILocation(line: 518, column: 25, scope: !1050)
!1173 = !DILocation(line: 518, column: 17, scope: !1049)
!1174 = !DILocation(line: 518, column: 80, scope: !1049)
!1175 = !DILocation(line: 518, column: 77, scope: !1049)
!1176 = !DILocation(line: 518, column: 17, scope: !1050)
!1177 = !DILocation(line: 519, column: 15, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1049, file: !11, line: 518, column: 93)
!1179 = !DILocation(line: 521, column: 27, scope: !1047)
!1180 = !DILocation(line: 521, column: 19, scope: !1046)
!1181 = !DILocation(line: 521, column: 82, scope: !1046)
!1182 = !DILocation(line: 521, column: 79, scope: !1046)
!1183 = !DILocation(line: 521, column: 19, scope: !1047)
!1184 = !DILocation(line: 522, column: 17, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1046, file: !11, line: 521, column: 95)
!1186 = !DILocation(line: 524, column: 29, scope: !1044)
!1187 = !DILocation(line: 524, column: 21, scope: !1043)
!1188 = !DILocation(line: 524, column: 84, scope: !1043)
!1189 = !DILocation(line: 524, column: 81, scope: !1043)
!1190 = !DILocation(line: 524, column: 21, scope: !1044)
!1191 = !DILocation(line: 525, column: 19, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1043, file: !11, line: 524, column: 97)
!1193 = !DILocation(line: 527, column: 31, scope: !1041)
!1194 = !DILocation(line: 527, column: 32, scope: !1041)
!1195 = !DILocation(line: 527, column: 23, scope: !1040)
!1196 = !DILocation(line: 527, column: 86, scope: !1040)
!1197 = !DILocation(line: 527, column: 83, scope: !1040)
!1198 = !DILocation(line: 527, column: 23, scope: !1041)
!1199 = !DILocation(line: 528, column: 21, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1040, file: !11, line: 527, column: 100)
!1201 = !DILocation(line: 530, column: 34, scope: !1038)
!1202 = !DILocation(line: 530, column: 25, scope: !1037)
!1203 = !DILocation(line: 530, column: 88, scope: !1037)
!1204 = !DILocation(line: 530, column: 85, scope: !1037)
!1205 = !DILocation(line: 530, column: 25, scope: !1038)
!1206 = !DILocation(line: 531, column: 23, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1037, file: !11, line: 530, column: 102)
!1208 = !DILocation(line: 533, column: 23, scope: !1036)
!1209 = !DILocation(line: 535, column: 27, scope: !1036)
!1210 = !DILocation(line: 535, column: 30, scope: !1035)
!1211 = !DILocation(line: 538, column: 51, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 537, column: 25)
!1213 = !DILocation(line: 538, column: 31, scope: !1212)
!1214 = !DILocation(line: 538, column: 29, scope: !1212)
!1215 = !DILocation(line: 540, column: 29, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 540, column: 29)
!1217 = !DILocation(line: 540, column: 29, scope: !1034)
!1218 = !DILocation(line: 541, column: 34, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1216, file: !11, line: 540, column: 34)
!1220 = !DILocation(line: 542, column: 54, scope: !1219)
!1221 = !DILocation(line: 543, column: 27, scope: !1219)
!1222 = !DILocation(line: 547, column: 29, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 547, column: 29)
!1224 = !DILocation(line: 547, column: 29, scope: !1034)
!1225 = !DILocation(line: 548, column: 34, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1223, file: !11, line: 547, column: 95)
!1227 = !DILocation(line: 549, column: 54, scope: !1226)
!1228 = !DILocation(line: 550, column: 27, scope: !1226)
!1229 = !DILocation(line: 554, column: 29, scope: !1033)
!1230 = !DILocation(line: 554, column: 41, scope: !1033)
!1231 = !DILocation(line: 554, column: 29, scope: !1034)
!1232 = !DILocation(line: 556, column: 34, scope: !1031)
!1233 = !DILocation(line: 557, column: 54, scope: !1031)
!1234 = !DILocation(line: 558, column: 59, scope: !1031)
!1235 = !DILocation(line: 558, column: 67, scope: !1031)
!1236 = !DILocation(line: 558, column: 72, scope: !1031)
!1237 = !DILocation(line: 558, column: 37, scope: !1031)
!1238 = !DILocation(line: 799, column: 32, scope: !1239, inlinedAt: !1030)
!1239 = distinct !DILexicalBlock(scope: !1029, file: !11, line: 799, column: 3)
!1240 = !DILocation(line: 799, column: 16, scope: !1239, inlinedAt: !1030)
!1241 = !DILocation(line: 799, column: 14, scope: !1239, inlinedAt: !1030)
!1242 = !DILocation(line: 799, column: 7, scope: !1243, inlinedAt: !1030)
!1243 = distinct !DILexicalBlock(scope: !1239, file: !11, line: 799, column: 7)
!1244 = !DILocation(line: 799, column: 18, scope: !1243, inlinedAt: !1030)
!1245 = !DILocation(line: 799, column: 7, scope: !1239, inlinedAt: !1030)
!1246 = !DILocation(line: 801, column: 3, scope: !1247, inlinedAt: !1030)
!1247 = distinct !DILexicalBlock(scope: !1243, file: !11, line: 799, column: 34)
!1248 = !DILocation(line: 805, column: 14, scope: !1028, inlinedAt: !1030)
!1249 = !DILocation(line: 805, column: 12, scope: !1028, inlinedAt: !1030)
!1250 = !DILocation(line: 806, column: 22, scope: !1028, inlinedAt: !1030)
!1251 = !DILocation(line: 806, column: 3, scope: !1028, inlinedAt: !1030)
!1252 = !DILocation(line: 1724, column: 7, scope: !430, inlinedAt: !1027)
!1253 = !DILocation(line: 1724, column: 12, scope: !430, inlinedAt: !1027)
!1254 = !DILocation(line: 1724, column: 9, scope: !430, inlinedAt: !1027)
!1255 = !DILocation(line: 1724, column: 7, scope: !431, inlinedAt: !1027)
!1256 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !1257)
!1257 = distinct !DILocation(line: 1728, column: 5, scope: !437, inlinedAt: !1027)
!1258 = !DILocation(line: 1725, column: 9, scope: !440, inlinedAt: !1027)
!1259 = !DILocation(line: 1725, column: 7, scope: !440, inlinedAt: !1027)
!1260 = !DILocation(line: 1731, column: 3, scope: !431, inlinedAt: !1027)
!1261 = !DILocation(line: 808, column: 11, scope: !1029, inlinedAt: !1030)
!1262 = !DILocation(line: 808, column: 3, scope: !1029, inlinedAt: !1030)
!1263 = !DILocation(line: 558, column: 35, scope: !1031)
!1264 = !DILocation(line: 560, column: 35, scope: !1032)
!1265 = !DILocation(line: 560, column: 27, scope: !1032)
!1266 = !DILocation(line: 565, column: 40, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 562, column: 25)
!1268 = !DILocation(line: 566, column: 51, scope: !1267)
!1269 = !DILocation(line: 567, column: 43, scope: !1267)
!1270 = !DILocation(line: 568, column: 53, scope: !1267)
!1271 = !DILocation(line: 568, column: 70, scope: !1267)
!1272 = !DILocation(line: 568, column: 75, scope: !1267)
!1273 = !DILocation(line: 569, column: 53, scope: !1267)
!1274 = !DILocation(line: 568, column: 34, scope: !1267)
!1275 = !DILocation(line: 568, column: 32, scope: !1267)
!1276 = !DILocation(line: 571, column: 29, scope: !1078)
!1277 = !DILocation(line: 571, column: 36, scope: !1078)
!1278 = !DILocation(line: 571, column: 29, scope: !1079)
!1279 = !DILocation(line: 573, column: 54, scope: !1076)
!1280 = !DILocation(line: 574, column: 59, scope: !1076)
!1281 = !DILocation(line: 574, column: 67, scope: !1076)
!1282 = !DILocation(line: 574, column: 72, scope: !1076)
!1283 = !DILocation(line: 574, column: 37, scope: !1076)
!1284 = !DILocation(line: 799, column: 32, scope: !1239, inlinedAt: !1075)
!1285 = !DILocation(line: 799, column: 16, scope: !1239, inlinedAt: !1075)
!1286 = !DILocation(line: 799, column: 14, scope: !1239, inlinedAt: !1075)
!1287 = !DILocation(line: 799, column: 7, scope: !1243, inlinedAt: !1075)
!1288 = !DILocation(line: 799, column: 18, scope: !1243, inlinedAt: !1075)
!1289 = !DILocation(line: 799, column: 7, scope: !1239, inlinedAt: !1075)
!1290 = !DILocation(line: 801, column: 3, scope: !1247, inlinedAt: !1075)
!1291 = !DILocation(line: 805, column: 14, scope: !1028, inlinedAt: !1075)
!1292 = !DILocation(line: 805, column: 12, scope: !1028, inlinedAt: !1075)
!1293 = !DILocation(line: 806, column: 22, scope: !1028, inlinedAt: !1075)
!1294 = !DILocation(line: 806, column: 3, scope: !1028, inlinedAt: !1075)
!1295 = !DILocation(line: 1724, column: 7, scope: !430, inlinedAt: !1074)
!1296 = !DILocation(line: 1724, column: 12, scope: !430, inlinedAt: !1074)
!1297 = !DILocation(line: 1724, column: 9, scope: !430, inlinedAt: !1074)
!1298 = !DILocation(line: 1724, column: 7, scope: !431, inlinedAt: !1074)
!1299 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !1300)
!1300 = distinct !DILocation(line: 1728, column: 5, scope: !437, inlinedAt: !1074)
!1301 = !DILocation(line: 1725, column: 9, scope: !440, inlinedAt: !1074)
!1302 = !DILocation(line: 1725, column: 7, scope: !440, inlinedAt: !1074)
!1303 = !DILocation(line: 1731, column: 3, scope: !431, inlinedAt: !1074)
!1304 = !DILocation(line: 808, column: 11, scope: !1029, inlinedAt: !1075)
!1305 = !DILocation(line: 808, column: 3, scope: !1029, inlinedAt: !1075)
!1306 = !DILocation(line: 574, column: 35, scope: !1076)
!1307 = !DILocation(line: 576, column: 35, scope: !1077)
!1308 = !DILocation(line: 576, column: 27, scope: !1077)
!1309 = !DILocation(line: 578, column: 34, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1078, file: !11, line: 577, column: 32)
!1311 = !DILocation(line: 580, column: 54, scope: !1034)
!1312 = !DILocation(line: 580, column: 52, scope: !1034)
!1313 = !DILocation(line: 581, column: 29, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 581, column: 29)
!1315 = !DILocation(line: 581, column: 62, scope: !1314)
!1316 = !DILocation(line: 581, column: 29, scope: !1034)
!1317 = !DILocation(line: 582, column: 27, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1314, file: !11, line: 581, column: 68)
!1319 = !DILocation(line: 586, column: 52, scope: !1034)
!1320 = !DILocation(line: 587, column: 51, scope: !1034)
!1321 = !DILocation(line: 588, column: 25, scope: !1034)
!1322 = !DILocation(line: 590, column: 29, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 590, column: 29)
!1324 = !DILocation(line: 590, column: 29, scope: !1034)
!1325 = !DILocation(line: 591, column: 34, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1323, file: !11, line: 590, column: 95)
!1327 = !DILocation(line: 592, column: 54, scope: !1326)
!1328 = !DILocation(line: 593, column: 27, scope: !1326)
!1329 = !DILocation(line: 598, column: 55, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 595, column: 25)
!1331 = !DILocation(line: 598, column: 35, scope: !1330)
!1332 = !DILocation(line: 598, column: 33, scope: !1330)
!1333 = !DILocation(line: 600, column: 29, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 600, column: 29)
!1335 = !DILocation(line: 600, column: 29, scope: !1034)
!1336 = !DILocation(line: 601, column: 34, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1334, file: !11, line: 600, column: 38)
!1338 = !DILocation(line: 602, column: 54, scope: !1337)
!1339 = !DILocation(line: 603, column: 27, scope: !1337)
!1340 = !DILocation(line: 607, column: 29, scope: !1090)
!1341 = !DILocation(line: 607, column: 33, scope: !1090)
!1342 = !DILocation(line: 607, column: 29, scope: !1034)
!1343 = !DILocation(line: 609, column: 34, scope: !1088)
!1344 = !DILocation(line: 610, column: 54, scope: !1088)
!1345 = !DILocation(line: 611, column: 59, scope: !1088)
!1346 = !DILocation(line: 611, column: 67, scope: !1088)
!1347 = !DILocation(line: 611, column: 72, scope: !1088)
!1348 = !DILocation(line: 611, column: 37, scope: !1088)
!1349 = !DILocation(line: 799, column: 32, scope: !1239, inlinedAt: !1087)
!1350 = !DILocation(line: 799, column: 16, scope: !1239, inlinedAt: !1087)
!1351 = !DILocation(line: 799, column: 14, scope: !1239, inlinedAt: !1087)
!1352 = !DILocation(line: 799, column: 7, scope: !1243, inlinedAt: !1087)
!1353 = !DILocation(line: 799, column: 18, scope: !1243, inlinedAt: !1087)
!1354 = !DILocation(line: 799, column: 7, scope: !1239, inlinedAt: !1087)
!1355 = !DILocation(line: 801, column: 3, scope: !1247, inlinedAt: !1087)
!1356 = !DILocation(line: 805, column: 14, scope: !1028, inlinedAt: !1087)
!1357 = !DILocation(line: 805, column: 12, scope: !1028, inlinedAt: !1087)
!1358 = !DILocation(line: 806, column: 22, scope: !1028, inlinedAt: !1087)
!1359 = !DILocation(line: 806, column: 3, scope: !1028, inlinedAt: !1087)
!1360 = !DILocation(line: 1724, column: 7, scope: !430, inlinedAt: !1086)
!1361 = !DILocation(line: 1724, column: 12, scope: !430, inlinedAt: !1086)
!1362 = !DILocation(line: 1724, column: 9, scope: !430, inlinedAt: !1086)
!1363 = !DILocation(line: 1724, column: 7, scope: !431, inlinedAt: !1086)
!1364 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !1365)
!1365 = distinct !DILocation(line: 1728, column: 5, scope: !437, inlinedAt: !1086)
!1366 = !DILocation(line: 1725, column: 9, scope: !440, inlinedAt: !1086)
!1367 = !DILocation(line: 1725, column: 7, scope: !440, inlinedAt: !1086)
!1368 = !DILocation(line: 1731, column: 3, scope: !431, inlinedAt: !1086)
!1369 = !DILocation(line: 808, column: 11, scope: !1029, inlinedAt: !1087)
!1370 = !DILocation(line: 808, column: 3, scope: !1029, inlinedAt: !1087)
!1371 = !DILocation(line: 611, column: 35, scope: !1088)
!1372 = !DILocation(line: 613, column: 35, scope: !1089)
!1373 = !DILocation(line: 613, column: 27, scope: !1089)
!1374 = !DILocation(line: 618, column: 43, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 615, column: 25)
!1376 = !DILocation(line: 619, column: 40, scope: !1375)
!1377 = !DILocation(line: 620, column: 53, scope: !1375)
!1378 = !DILocation(line: 620, column: 70, scope: !1375)
!1379 = !DILocation(line: 620, column: 75, scope: !1375)
!1380 = !DILocation(line: 620, column: 80, scope: !1375)
!1381 = !DILocation(line: 620, column: 34, scope: !1375)
!1382 = !DILocation(line: 620, column: 32, scope: !1375)
!1383 = !DILocation(line: 622, column: 29, scope: !1104)
!1384 = !DILocation(line: 622, column: 36, scope: !1104)
!1385 = !DILocation(line: 622, column: 29, scope: !1034)
!1386 = !DILocation(line: 623, column: 58, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !11, line: 623, column: 27)
!1388 = distinct !DILexicalBlock(scope: !1104, file: !11, line: 622, column: 42)
!1389 = !DILocation(line: 623, column: 42, scope: !1387)
!1390 = !DILocation(line: 623, column: 40, scope: !1387)
!1391 = !DILocation(line: 623, column: 31, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1387, file: !11, line: 623, column: 31)
!1393 = !DILocation(line: 623, column: 44, scope: !1392)
!1394 = !DILocation(line: 623, column: 31, scope: !1387)
!1395 = !DILocation(line: 624, column: 36, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1392, file: !11, line: 623, column: 60)
!1397 = !DILocation(line: 625, column: 27, scope: !1396)
!1398 = !DILocation(line: 626, column: 29, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1392, file: !11, line: 625, column: 34)
!1400 = !DILocation(line: 629, column: 25, scope: !1388)
!1401 = !DILocation(line: 629, column: 32, scope: !1104)
!1402 = !DILocation(line: 630, column: 58, scope: !1102)
!1403 = !DILocation(line: 630, column: 42, scope: !1102)
!1404 = !DILocation(line: 630, column: 40, scope: !1102)
!1405 = !DILocation(line: 630, column: 31, scope: !1101)
!1406 = !DILocation(line: 630, column: 44, scope: !1101)
!1407 = !DILocation(line: 630, column: 31, scope: !1102)
!1408 = !DILocation(line: 632, column: 56, scope: !1099)
!1409 = !DILocation(line: 633, column: 61, scope: !1099)
!1410 = !DILocation(line: 633, column: 69, scope: !1099)
!1411 = !DILocation(line: 633, column: 74, scope: !1099)
!1412 = !DILocation(line: 633, column: 39, scope: !1099)
!1413 = !DILocation(line: 799, column: 32, scope: !1239, inlinedAt: !1098)
!1414 = !DILocation(line: 799, column: 16, scope: !1239, inlinedAt: !1098)
!1415 = !DILocation(line: 799, column: 14, scope: !1239, inlinedAt: !1098)
!1416 = !DILocation(line: 799, column: 7, scope: !1243, inlinedAt: !1098)
!1417 = !DILocation(line: 799, column: 18, scope: !1243, inlinedAt: !1098)
!1418 = !DILocation(line: 799, column: 7, scope: !1239, inlinedAt: !1098)
!1419 = !DILocation(line: 801, column: 3, scope: !1247, inlinedAt: !1098)
!1420 = !DILocation(line: 805, column: 14, scope: !1028, inlinedAt: !1098)
!1421 = !DILocation(line: 805, column: 12, scope: !1028, inlinedAt: !1098)
!1422 = !DILocation(line: 806, column: 22, scope: !1028, inlinedAt: !1098)
!1423 = !DILocation(line: 806, column: 3, scope: !1028, inlinedAt: !1098)
!1424 = !DILocation(line: 1724, column: 7, scope: !430, inlinedAt: !1097)
!1425 = !DILocation(line: 1724, column: 12, scope: !430, inlinedAt: !1097)
!1426 = !DILocation(line: 1724, column: 9, scope: !430, inlinedAt: !1097)
!1427 = !DILocation(line: 1724, column: 7, scope: !431, inlinedAt: !1097)
!1428 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !1429)
!1429 = distinct !DILocation(line: 1728, column: 5, scope: !437, inlinedAt: !1097)
!1430 = !DILocation(line: 1725, column: 9, scope: !440, inlinedAt: !1097)
!1431 = !DILocation(line: 1725, column: 7, scope: !440, inlinedAt: !1097)
!1432 = !DILocation(line: 1731, column: 3, scope: !431, inlinedAt: !1097)
!1433 = !DILocation(line: 808, column: 11, scope: !1029, inlinedAt: !1098)
!1434 = !DILocation(line: 808, column: 3, scope: !1029, inlinedAt: !1098)
!1435 = !DILocation(line: 633, column: 37, scope: !1099)
!1436 = !DILocation(line: 635, column: 37, scope: !1100)
!1437 = !DILocation(line: 635, column: 29, scope: !1100)
!1438 = !DILocation(line: 640, column: 40, scope: !1034)
!1439 = !DILocation(line: 640, column: 68, scope: !1034)
!1440 = !DILocation(line: 640, column: 66, scope: !1034)
!1441 = !DILocation(line: 640, column: 38, scope: !1034)
!1442 = !DILocation(line: 640, column: 51, scope: !1034)
!1443 = !DILocation(line: 640, column: 36, scope: !1034)
!1444 = !DILocation(line: 641, column: 42, scope: !1034)
!1445 = !DILocation(line: 641, column: 40, scope: !1034)
!1446 = !DILocation(line: 642, column: 29, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 642, column: 29)
!1448 = !DILocation(line: 642, column: 46, scope: !1447)
!1449 = !DILocation(line: 642, column: 44, scope: !1447)
!1450 = !DILocation(line: 642, column: 29, scope: !1034)
!1451 = !DILocation(line: 643, column: 44, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1447, file: !11, line: 642, column: 58)
!1453 = !DILocation(line: 643, column: 42, scope: !1452)
!1454 = !DILocation(line: 644, column: 25, scope: !1452)
!1455 = !DILocation(line: 645, column: 44, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1447, file: !11, line: 644, column: 32)
!1457 = !DILocation(line: 645, column: 42, scope: !1456)
!1458 = !DILocation(line: 647, column: 29, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 647, column: 29)
!1460 = !DILocation(line: 647, column: 46, scope: !1459)
!1461 = !DILocation(line: 647, column: 44, scope: !1459)
!1462 = !DILocation(line: 647, column: 29, scope: !1034)
!1463 = !DILocation(line: 648, column: 29, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1459, file: !11, line: 647, column: 58)
!1465 = !DILocation(line: 649, column: 25, scope: !1464)
!1466 = !DILocation(line: 650, column: 25, scope: !1034)
!1467 = !DILocation(line: 654, column: 35, scope: !1034)
!1468 = !DILocation(line: 654, column: 33, scope: !1034)
!1469 = !DILocation(line: 655, column: 29, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 655, column: 29)
!1471 = !DILocation(line: 655, column: 96, scope: !1470)
!1472 = !DILocation(line: 655, column: 94, scope: !1470)
!1473 = !DILocation(line: 655, column: 29, scope: !1034)
!1474 = !DILocation(line: 656, column: 34, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1470, file: !11, line: 655, column: 128)
!1476 = !DILocation(line: 657, column: 54, scope: !1475)
!1477 = !DILocation(line: 658, column: 27, scope: !1475)
!1478 = !DILocation(line: 662, column: 29, scope: !1115)
!1479 = !DILocation(line: 662, column: 37, scope: !1115)
!1480 = !DILocation(line: 662, column: 29, scope: !1034)
!1481 = !DILocation(line: 664, column: 34, scope: !1113)
!1482 = !DILocation(line: 665, column: 54, scope: !1113)
!1483 = !DILocation(line: 666, column: 59, scope: !1113)
!1484 = !DILocation(line: 666, column: 67, scope: !1113)
!1485 = !DILocation(line: 666, column: 72, scope: !1113)
!1486 = !DILocation(line: 666, column: 37, scope: !1113)
!1487 = !DILocation(line: 799, column: 32, scope: !1239, inlinedAt: !1112)
!1488 = !DILocation(line: 799, column: 16, scope: !1239, inlinedAt: !1112)
!1489 = !DILocation(line: 799, column: 14, scope: !1239, inlinedAt: !1112)
!1490 = !DILocation(line: 799, column: 7, scope: !1243, inlinedAt: !1112)
!1491 = !DILocation(line: 799, column: 18, scope: !1243, inlinedAt: !1112)
!1492 = !DILocation(line: 799, column: 7, scope: !1239, inlinedAt: !1112)
!1493 = !DILocation(line: 801, column: 3, scope: !1247, inlinedAt: !1112)
!1494 = !DILocation(line: 805, column: 14, scope: !1028, inlinedAt: !1112)
!1495 = !DILocation(line: 805, column: 12, scope: !1028, inlinedAt: !1112)
!1496 = !DILocation(line: 806, column: 22, scope: !1028, inlinedAt: !1112)
!1497 = !DILocation(line: 806, column: 3, scope: !1028, inlinedAt: !1112)
!1498 = !DILocation(line: 1724, column: 7, scope: !430, inlinedAt: !1111)
!1499 = !DILocation(line: 1724, column: 12, scope: !430, inlinedAt: !1111)
!1500 = !DILocation(line: 1724, column: 9, scope: !430, inlinedAt: !1111)
!1501 = !DILocation(line: 1724, column: 7, scope: !431, inlinedAt: !1111)
!1502 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 1728, column: 5, scope: !437, inlinedAt: !1111)
!1504 = !DILocation(line: 1725, column: 9, scope: !440, inlinedAt: !1111)
!1505 = !DILocation(line: 1725, column: 7, scope: !440, inlinedAt: !1111)
!1506 = !DILocation(line: 1731, column: 3, scope: !431, inlinedAt: !1111)
!1507 = !DILocation(line: 808, column: 11, scope: !1029, inlinedAt: !1112)
!1508 = !DILocation(line: 808, column: 3, scope: !1029, inlinedAt: !1112)
!1509 = !DILocation(line: 666, column: 35, scope: !1113)
!1510 = !DILocation(line: 668, column: 35, scope: !1114)
!1511 = !DILocation(line: 668, column: 27, scope: !1114)
!1512 = !DILocation(line: 672, column: 29, scope: !1126)
!1513 = !DILocation(line: 672, column: 45, scope: !1126)
!1514 = !DILocation(line: 672, column: 29, scope: !1034)
!1515 = !DILocation(line: 674, column: 34, scope: !1124)
!1516 = !DILocation(line: 675, column: 54, scope: !1124)
!1517 = !DILocation(line: 676, column: 59, scope: !1124)
!1518 = !DILocation(line: 676, column: 67, scope: !1124)
!1519 = !DILocation(line: 676, column: 72, scope: !1124)
!1520 = !DILocation(line: 676, column: 37, scope: !1124)
!1521 = !DILocation(line: 799, column: 32, scope: !1239, inlinedAt: !1123)
!1522 = !DILocation(line: 799, column: 16, scope: !1239, inlinedAt: !1123)
!1523 = !DILocation(line: 799, column: 14, scope: !1239, inlinedAt: !1123)
!1524 = !DILocation(line: 799, column: 7, scope: !1243, inlinedAt: !1123)
!1525 = !DILocation(line: 799, column: 18, scope: !1243, inlinedAt: !1123)
!1526 = !DILocation(line: 799, column: 7, scope: !1239, inlinedAt: !1123)
!1527 = !DILocation(line: 801, column: 3, scope: !1247, inlinedAt: !1123)
!1528 = !DILocation(line: 805, column: 14, scope: !1028, inlinedAt: !1123)
!1529 = !DILocation(line: 805, column: 12, scope: !1028, inlinedAt: !1123)
!1530 = !DILocation(line: 806, column: 22, scope: !1028, inlinedAt: !1123)
!1531 = !DILocation(line: 806, column: 3, scope: !1028, inlinedAt: !1123)
!1532 = !DILocation(line: 1724, column: 7, scope: !430, inlinedAt: !1122)
!1533 = !DILocation(line: 1724, column: 12, scope: !430, inlinedAt: !1122)
!1534 = !DILocation(line: 1724, column: 9, scope: !430, inlinedAt: !1122)
!1535 = !DILocation(line: 1724, column: 7, scope: !431, inlinedAt: !1122)
!1536 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !1537)
!1537 = distinct !DILocation(line: 1728, column: 5, scope: !437, inlinedAt: !1122)
!1538 = !DILocation(line: 1725, column: 9, scope: !440, inlinedAt: !1122)
!1539 = !DILocation(line: 1725, column: 7, scope: !440, inlinedAt: !1122)
!1540 = !DILocation(line: 1731, column: 3, scope: !431, inlinedAt: !1122)
!1541 = !DILocation(line: 808, column: 11, scope: !1029, inlinedAt: !1123)
!1542 = !DILocation(line: 808, column: 3, scope: !1029, inlinedAt: !1123)
!1543 = !DILocation(line: 676, column: 35, scope: !1124)
!1544 = !DILocation(line: 678, column: 35, scope: !1125)
!1545 = !DILocation(line: 678, column: 27, scope: !1125)
!1546 = !DILocation(line: 683, column: 40, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 680, column: 25)
!1548 = !DILocation(line: 684, column: 43, scope: !1547)
!1549 = !DILocation(line: 685, column: 53, scope: !1547)
!1550 = !DILocation(line: 685, column: 70, scope: !1547)
!1551 = !DILocation(line: 685, column: 75, scope: !1547)
!1552 = !DILocation(line: 686, column: 53, scope: !1547)
!1553 = !DILocation(line: 685, column: 34, scope: !1547)
!1554 = !DILocation(line: 685, column: 32, scope: !1547)
!1555 = !DILocation(line: 688, column: 29, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 688, column: 29)
!1557 = !DILocation(line: 688, column: 36, scope: !1556)
!1558 = !DILocation(line: 688, column: 29, scope: !1034)
!1559 = !DILocation(line: 689, column: 56, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !11, line: 688, column: 42)
!1561 = !DILocation(line: 689, column: 54, scope: !1560)
!1562 = !DILocation(line: 690, column: 25, scope: !1560)
!1563 = !DILocation(line: 691, column: 54, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1556, file: !11, line: 690, column: 32)
!1565 = !DILocation(line: 693, column: 25, scope: !1034)
!1566 = !DILocation(line: 695, column: 39, scope: !1034)
!1567 = !DILocation(line: 695, column: 37, scope: !1034)
!1568 = !DILocation(line: 696, column: 52, scope: !1034)
!1569 = !DILocation(line: 697, column: 29, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 697, column: 29)
!1571 = !DILocation(line: 697, column: 95, scope: !1570)
!1572 = !DILocation(line: 697, column: 93, scope: !1570)
!1573 = !DILocation(line: 697, column: 29, scope: !1034)
!1574 = !DILocation(line: 698, column: 34, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1570, file: !11, line: 697, column: 125)
!1576 = !DILocation(line: 699, column: 27, scope: !1575)
!1577 = !DILocation(line: 703, column: 29, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 703, column: 29)
!1579 = !DILocation(line: 703, column: 55, scope: !1578)
!1580 = !DILocation(line: 703, column: 52, scope: !1578)
!1581 = !DILocation(line: 703, column: 29, scope: !1034)
!1582 = !DILocation(line: 704, column: 31, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !11, line: 704, column: 31)
!1584 = distinct !DILexicalBlock(scope: !1578, file: !11, line: 703, column: 77)
!1585 = !DILocation(line: 704, column: 57, scope: !1583)
!1586 = !DILocation(line: 704, column: 54, scope: !1583)
!1587 = !DILocation(line: 704, column: 31, scope: !1584)
!1588 = !DILocation(line: 705, column: 33, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !11, line: 705, column: 33)
!1590 = distinct !DILexicalBlock(scope: !1583, file: !11, line: 704, column: 79)
!1591 = !DILocation(line: 705, column: 59, scope: !1589)
!1592 = !DILocation(line: 705, column: 56, scope: !1589)
!1593 = !DILocation(line: 705, column: 33, scope: !1590)
!1594 = !DILocation(line: 707, column: 29, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1589, file: !11, line: 705, column: 81)
!1596 = !DILocation(line: 708, column: 27, scope: !1590)
!1597 = !DILocation(line: 709, column: 25, scope: !1584)
!1598 = !DILocation(line: 717, column: 40, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 710, column: 25)
!1600 = !DILocation(line: 718, column: 43, scope: !1599)
!1601 = !DILocation(line: 719, column: 53, scope: !1599)
!1602 = !DILocation(line: 719, column: 70, scope: !1599)
!1603 = !DILocation(line: 719, column: 34, scope: !1599)
!1604 = !DILocation(line: 719, column: 32, scope: !1599)
!1605 = !DILocation(line: 721, column: 29, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 721, column: 29)
!1607 = !DILocation(line: 721, column: 36, scope: !1606)
!1608 = !DILocation(line: 721, column: 29, scope: !1034)
!1609 = !DILocation(line: 722, column: 31, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !11, line: 722, column: 31)
!1611 = distinct !DILexicalBlock(scope: !1606, file: !11, line: 721, column: 42)
!1612 = !DILocation(line: 722, column: 66, scope: !1610)
!1613 = !DILocation(line: 722, column: 31, scope: !1611)
!1614 = !DILocation(line: 724, column: 27, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1610, file: !11, line: 722, column: 73)
!1616 = !DILocation(line: 725, column: 25, scope: !1611)
!1617 = !DILocation(line: 726, column: 25, scope: !1034)
!1618 = !DILocation(line: 732, column: 43, scope: !1034)
!1619 = !DILocation(line: 732, column: 41, scope: !1034)
!1620 = !DILocation(line: 733, column: 52, scope: !1034)
!1621 = !DILocation(line: 734, column: 29, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 734, column: 29)
!1623 = !DILocation(line: 734, column: 95, scope: !1622)
!1624 = !DILocation(line: 734, column: 93, scope: !1622)
!1625 = !DILocation(line: 734, column: 29, scope: !1034)
!1626 = !DILocation(line: 735, column: 34, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1622, file: !11, line: 734, column: 125)
!1628 = !DILocation(line: 736, column: 27, scope: !1627)
!1629 = !DILocation(line: 741, column: 40, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 738, column: 25)
!1631 = !DILocation(line: 742, column: 43, scope: !1630)
!1632 = !DILocation(line: 743, column: 53, scope: !1630)
!1633 = !DILocation(line: 743, column: 70, scope: !1630)
!1634 = !DILocation(line: 743, column: 34, scope: !1630)
!1635 = !DILocation(line: 743, column: 32, scope: !1630)
!1636 = !DILocation(line: 745, column: 29, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !11, line: 745, column: 29)
!1638 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 745, column: 25)
!1639 = !DILocation(line: 745, column: 36, scope: !1637)
!1640 = !DILocation(line: 745, column: 29, scope: !1638)
!1641 = !DILocation(line: 747, column: 25, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1637, file: !11, line: 745, column: 41)
!1643 = !DILocation(line: 749, column: 25, scope: !1034)
!1644 = !DILocation(line: 753, column: 52, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 751, column: 25)
!1646 = !DILocation(line: 754, column: 40, scope: !1645)
!1647 = !DILocation(line: 755, column: 43, scope: !1645)
!1648 = !DILocation(line: 756, column: 53, scope: !1645)
!1649 = !DILocation(line: 756, column: 70, scope: !1645)
!1650 = !DILocation(line: 756, column: 34, scope: !1645)
!1651 = !DILocation(line: 756, column: 32, scope: !1645)
!1652 = !DILocation(line: 758, column: 25, scope: !1034)
!1653 = !DILocation(line: 762, column: 52, scope: !1034)
!1654 = !DILocation(line: 763, column: 32, scope: !1034)
!1655 = !DILocation(line: 764, column: 25, scope: !1034)
!1656 = !DILocation(line: 767, column: 45, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 766, column: 25)
!1658 = !DILocation(line: 767, column: 25, scope: !1657)
!1659 = !DILocation(line: 768, column: 25, scope: !1657)
!1660 = !DILocation(line: 771, column: 59, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1034, file: !11, line: 770, column: 25)
!1662 = !DILocation(line: 771, column: 73, scope: !1661)
!1663 = !DILocation(line: 771, column: 35, scope: !1661)
!1664 = !DILocation(line: 771, column: 33, scope: !1661)
!1665 = !DILocation(line: 773, column: 33, scope: !1034)
!1666 = !DILocation(line: 773, column: 25, scope: !1034)
!1667 = !DILocation(line: 775, column: 30, scope: !1035)
!1668 = !DILocation(line: 790, column: 35, scope: !1135)
!1669 = !DILocation(line: 790, column: 43, scope: !1135)
!1670 = !DILocation(line: 790, column: 48, scope: !1135)
!1671 = !DILocation(line: 790, column: 13, scope: !1135)
!1672 = !DILocation(line: 799, column: 32, scope: !1239, inlinedAt: !1134)
!1673 = !DILocation(line: 799, column: 16, scope: !1239, inlinedAt: !1134)
!1674 = !DILocation(line: 799, column: 14, scope: !1239, inlinedAt: !1134)
!1675 = !DILocation(line: 799, column: 7, scope: !1243, inlinedAt: !1134)
!1676 = !DILocation(line: 799, column: 18, scope: !1243, inlinedAt: !1134)
!1677 = !DILocation(line: 799, column: 7, scope: !1239, inlinedAt: !1134)
!1678 = !DILocation(line: 801, column: 3, scope: !1247, inlinedAt: !1134)
!1679 = !DILocation(line: 805, column: 14, scope: !1028, inlinedAt: !1134)
!1680 = !DILocation(line: 805, column: 12, scope: !1028, inlinedAt: !1134)
!1681 = !DILocation(line: 806, column: 22, scope: !1028, inlinedAt: !1134)
!1682 = !DILocation(line: 806, column: 3, scope: !1028, inlinedAt: !1134)
!1683 = !DILocation(line: 1724, column: 7, scope: !430, inlinedAt: !1133)
!1684 = !DILocation(line: 1724, column: 12, scope: !430, inlinedAt: !1133)
!1685 = !DILocation(line: 1724, column: 9, scope: !430, inlinedAt: !1133)
!1686 = !DILocation(line: 1724, column: 7, scope: !431, inlinedAt: !1133)
!1687 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 1728, column: 5, scope: !437, inlinedAt: !1133)
!1689 = !DILocation(line: 1725, column: 9, scope: !440, inlinedAt: !1133)
!1690 = !DILocation(line: 1725, column: 7, scope: !440, inlinedAt: !1133)
!1691 = !DILocation(line: 1731, column: 3, scope: !431, inlinedAt: !1133)
!1692 = !DILocation(line: 808, column: 11, scope: !1029, inlinedAt: !1134)
!1693 = !DILocation(line: 808, column: 3, scope: !1029, inlinedAt: !1134)
!1694 = !DILocation(line: 790, column: 11, scope: !1135)
!1695 = !DILocation(line: 792, column: 11, scope: !1012)
!1696 = !DILocation(line: 792, column: 3, scope: !1012)
!1697 = !DILocation(line: 794, column: 1, scope: !28)
!1698 = !DILocation(line: 795, column: 31, scope: !29)
!1699 = !DILocation(line: 795, column: 44, scope: !29)
!1700 = !DILocation(line: 795, column: 54, scope: !29)
!1701 = !DILocation(line: 796, column: 17, scope: !29)
!1702 = !DILocation(line: 799, column: 32, scope: !1239)
!1703 = !DILocation(line: 799, column: 16, scope: !1239)
!1704 = !DILocation(line: 799, column: 14, scope: !1239)
!1705 = !DILocation(line: 799, column: 7, scope: !1243)
!1706 = !DILocation(line: 799, column: 18, scope: !1243)
!1707 = !DILocation(line: 1720, column: 29, scope: !46, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 806, column: 3, scope: !1028)
!1709 = !DILocation(line: 1720, column: 39, scope: !46, inlinedAt: !1708)
!1710 = !DILocation(line: 799, column: 7, scope: !1239)
!1711 = !DILocation(line: 801, column: 3, scope: !1247)
!1712 = !DILocation(line: 805, column: 14, scope: !1028)
!1713 = !DILocation(line: 805, column: 12, scope: !1028)
!1714 = !DILocation(line: 806, column: 22, scope: !1028)
!1715 = !DILocation(line: 806, column: 3, scope: !1028)
!1716 = !DILocation(line: 1724, column: 7, scope: !430, inlinedAt: !1708)
!1717 = !DILocation(line: 1724, column: 12, scope: !430, inlinedAt: !1708)
!1718 = !DILocation(line: 1724, column: 9, scope: !430, inlinedAt: !1708)
!1719 = !DILocation(line: 1724, column: 7, scope: !431, inlinedAt: !1708)
!1720 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 1728, column: 5, scope: !437, inlinedAt: !1708)
!1722 = !DILocation(line: 1725, column: 9, scope: !440, inlinedAt: !1708)
!1723 = !DILocation(line: 1725, column: 7, scope: !440, inlinedAt: !1708)
!1724 = !DILocation(line: 1731, column: 3, scope: !431, inlinedAt: !1708)
!1725 = !DILocation(line: 808, column: 11, scope: !1029)
!1726 = !DILocation(line: 808, column: 3, scope: !1029)
!1727 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !30, file: !11, line: 811, type: !15)
!1728 = !DILocation(line: 811, column: 33, scope: !30)
!1729 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !30, file: !11, line: 811, type: !15)
!1730 = !DILocation(line: 811, column: 52, scope: !30)
!1731 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentIrpStack__Parameters__DeviceIoControl__IoControlCode", scope: !30, file: !11, line: 812, type: !15)
!1732 = !DILocation(line: 812, column: 7, scope: !30)
!1733 = !DILocation(line: 812, column: 69, scope: !30)
!1734 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength", scope: !30, file: !11, line: 813, type: !15)
!1735 = !DILocation(line: 813, column: 7, scope: !30)
!1736 = !DILocation(line: 813, column: 74, scope: !30)
!1737 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentIrpStack__Parameters__DeviceIoControl__InputBufferLength", scope: !30, file: !11, line: 814, type: !15)
!1738 = !DILocation(line: 814, column: 7, scope: !30)
!1739 = !DILocation(line: 814, column: 73, scope: !30)
!1740 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "TrackData__0", scope: !30, file: !11, line: 815, type: !15)
!1741 = !DILocation(line: 815, column: 7, scope: !30)
!1742 = !DILocation(line: 815, column: 22, scope: !30)
!1743 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !30, file: !11, line: 816, type: !15)
!1744 = !DILocation(line: 816, column: 7, scope: !30)
!1745 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srb__TimeOutValue", scope: !30, file: !11, line: 817, type: !15)
!1746 = !DILocation(line: 817, column: 7, scope: !30)
!1747 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srb__CdbLength", scope: !30, file: !11, line: 818, type: !15)
!1748 = !DILocation(line: 818, column: 7, scope: !30)
!1749 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__CDROM_TOC", scope: !30, file: !11, line: 819, type: !15)
!1750 = !DILocation(line: 819, column: 7, scope: !30)
!1751 = !DILocation(line: 819, column: 27, scope: !30)
!1752 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cdaudioDataOut__LastTrack", scope: !30, file: !11, line: 820, type: !15)
!1753 = !DILocation(line: 820, column: 7, scope: !30)
!1754 = !DILocation(line: 820, column: 35, scope: !30)
!1755 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cdaudioDataOut__FirstTrack", scope: !30, file: !11, line: 821, type: !15)
!1756 = !DILocation(line: 821, column: 7, scope: !30)
!1757 = !DILocation(line: 821, column: 36, scope: !30)
!1758 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__CDROM_PLAY_AUDIO_MSF", scope: !30, file: !11, line: 822, type: !15)
!1759 = !DILocation(line: 822, column: 7, scope: !30)
!1760 = !DILocation(line: 822, column: 38, scope: !30)
!1761 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__CDROM_SEEK_AUDIO_MSF", scope: !30, file: !11, line: 823, type: !15)
!1762 = !DILocation(line: 823, column: 7, scope: !30)
!1763 = !DILocation(line: 823, column: 38, scope: !30)
!1764 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__Paused", scope: !30, file: !11, line: 824, type: !15)
!1765 = !DILocation(line: 824, column: 7, scope: !30)
!1766 = !DILocation(line: 824, column: 33, scope: !30)
!1767 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__PlayActive", scope: !30, file: !11, line: 825, type: !15)
!1768 = !DILocation(line: 825, column: 7, scope: !30)
!1769 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__SUB_Q_CHANNEL_DATA", scope: !30, file: !11, line: 826, type: !15)
!1770 = !DILocation(line: 826, column: 7, scope: !30)
!1771 = !DILocation(line: 826, column: 36, scope: !30)
!1772 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__SUB_Q_CURRENT_POSITION", scope: !30, file: !11, line: 827, type: !15)
!1773 = !DILocation(line: 827, column: 7, scope: !30)
!1774 = !DILocation(line: 827, column: 40, scope: !30)
!1775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !30, file: !11, line: 828, type: !15)
!1776 = !DILocation(line: 828, column: 7, scope: !30)
!1777 = !DILocation(line: 828, column: 25, scope: !30)
!1778 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srb", scope: !30, file: !11, line: 829, type: !15)
!1779 = !DILocation(line: 829, column: 7, scope: !30)
!1780 = !DILocation(line: 829, column: 13, scope: !30)
!1781 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !30, file: !11, line: 830, type: !15)
!1782 = !DILocation(line: 830, column: 7, scope: !30)
!1783 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !30, file: !11, line: 831, type: !15)
!1784 = !DILocation(line: 831, column: 7, scope: !30)
!1785 = !DILocation(line: 831, column: 11, scope: !30)
!1786 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytesTransfered", scope: !30, file: !11, line: 832, type: !15)
!1787 = !DILocation(line: 832, column: 7, scope: !30)
!1788 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Toc", scope: !30, file: !11, line: 833, type: !15)
!1789 = !DILocation(line: 833, column: 7, scope: !30)
!1790 = !DILocation(line: 833, column: 13, scope: !30)
!1791 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !30, file: !11, line: 834, type: !15)
!1792 = !DILocation(line: 834, column: 7, scope: !30)
!1793 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tracksToReturn", scope: !30, file: !11, line: 835, type: !15)
!1794 = !DILocation(line: 835, column: 7, scope: !30)
!1795 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tracksOnCd", scope: !30, file: !11, line: 836, type: !15)
!1796 = !DILocation(line: 836, column: 7, scope: !30)
!1797 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tracksInBuffer", scope: !30, file: !11, line: 837, type: !15)
!1798 = !DILocation(line: 837, column: 7, scope: !30)
!1799 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "SubQPtr", scope: !30, file: !11, line: 838, type: !15)
!1800 = !DILocation(line: 838, column: 7, scope: !30)
!1801 = !DILocation(line: 838, column: 17, scope: !30)
!1802 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "userPtr__Format", scope: !30, file: !11, line: 839, type: !15)
!1803 = !DILocation(line: 839, column: 7, scope: !30)
!1804 = !DILocation(line: 839, column: 25, scope: !30)
!1805 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "SubQPtr___0", scope: !30, file: !11, line: 840, type: !15)
!1806 = !DILocation(line: 840, column: 7, scope: !30)
!1807 = !DILocation(line: 840, column: 21, scope: !30)
!1808 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___0", scope: !30, file: !11, line: 841, type: !15)
!1809 = !DILocation(line: 841, column: 7, scope: !30)
!1810 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___1", scope: !30, file: !11, line: 842, type: !15)
!1811 = !DILocation(line: 842, column: 7, scope: !30)
!1812 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___2", scope: !30, file: !11, line: 843, type: !15)
!1813 = !DILocation(line: 843, column: 7, scope: !30)
!1814 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp35", scope: !30, file: !11, line: 844, type: !15)
!1815 = !DILocation(line: 844, column: 7, scope: !30)
!1816 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp36", scope: !30, file: !11, line: 845, type: !15)
!1817 = !DILocation(line: 845, column: 7, scope: !30)
!1818 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp37", scope: !30, file: !11, line: 846, type: !15)
!1819 = !DILocation(line: 846, column: 7, scope: !30)
!1820 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp38", scope: !30, file: !11, line: 847, type: !15)
!1821 = !DILocation(line: 847, column: 7, scope: !30)
!1822 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp39", scope: !30, file: !11, line: 848, type: !15)
!1823 = !DILocation(line: 848, column: 7, scope: !30)
!1824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp40", scope: !30, file: !11, line: 849, type: !15)
!1825 = !DILocation(line: 849, column: 7, scope: !30)
!1826 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp41", scope: !30, file: !11, line: 850, type: !15)
!1827 = !DILocation(line: 850, column: 7, scope: !30)
!1828 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp42", scope: !30, file: !11, line: 851, type: !15)
!1829 = !DILocation(line: 851, column: 7, scope: !30)
!1830 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp43", scope: !30, file: !11, line: 852, type: !15)
!1831 = !DILocation(line: 852, column: 7, scope: !30)
!1832 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp44", scope: !30, file: !11, line: 853, type: !15)
!1833 = !DILocation(line: 853, column: 7, scope: !30)
!1834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp45", scope: !30, file: !11, line: 854, type: !15)
!1835 = !DILocation(line: 854, column: 7, scope: !30)
!1836 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp46", scope: !30, file: !11, line: 855, type: !15)
!1837 = !DILocation(line: 855, column: 7, scope: !30)
!1838 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp47", scope: !30, file: !11, line: 856, type: !15)
!1839 = !DILocation(line: 856, column: 7, scope: !30)
!1840 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp48", scope: !30, file: !11, line: 857, type: !15)
!1841 = !DILocation(line: 857, column: 7, scope: !30)
!1842 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp49", scope: !30, file: !11, line: 858, type: !15)
!1843 = !DILocation(line: 858, column: 7, scope: !30)
!1844 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp50", scope: !30, file: !11, line: 859, type: !15)
!1845 = !DILocation(line: 859, column: 7, scope: !30)
!1846 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp51", scope: !30, file: !11, line: 860, type: !15)
!1847 = !DILocation(line: 860, column: 7, scope: !30)
!1848 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp52", scope: !30, file: !11, line: 861, type: !15)
!1849 = !DILocation(line: 861, column: 7, scope: !30)
!1850 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp53", scope: !30, file: !11, line: 862, type: !15)
!1851 = !DILocation(line: 862, column: 7, scope: !30)
!1852 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp54", scope: !30, file: !11, line: 863, type: !15)
!1853 = !DILocation(line: 863, column: 7, scope: !30)
!1854 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp55", scope: !30, file: !11, line: 864, type: !15)
!1855 = !DILocation(line: 864, column: 7, scope: !30)
!1856 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp56", scope: !30, file: !11, line: 865, type: !15)
!1857 = !DILocation(line: 865, column: 7, scope: !30)
!1858 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp57", scope: !30, file: !11, line: 866, type: !15)
!1859 = !DILocation(line: 866, column: 7, scope: !30)
!1860 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp58", scope: !30, file: !11, line: 867, type: !15)
!1861 = !DILocation(line: 867, column: 7, scope: !30)
!1862 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp59", scope: !30, file: !11, line: 868, type: !15)
!1863 = !DILocation(line: 868, column: 7, scope: !30)
!1864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp60", scope: !30, file: !11, line: 869, type: !15)
!1865 = !DILocation(line: 869, column: 7, scope: !30)
!1866 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp61", scope: !30, file: !11, line: 870, type: !15)
!1867 = !DILocation(line: 870, column: 7, scope: !30)
!1868 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp62", scope: !30, file: !11, line: 871, type: !15)
!1869 = !DILocation(line: 871, column: 7, scope: !30)
!1870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp63", scope: !30, file: !11, line: 872, type: !15)
!1871 = !DILocation(line: 872, column: 7, scope: !30)
!1872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp64", scope: !30, file: !11, line: 873, type: !15)
!1873 = !DILocation(line: 873, column: 7, scope: !30)
!1874 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp65", scope: !30, file: !11, line: 874, type: !15)
!1875 = !DILocation(line: 874, column: 7, scope: !30)
!1876 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp66", scope: !30, file: !11, line: 875, type: !15)
!1877 = !DILocation(line: 875, column: 7, scope: !30)
!1878 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp67", scope: !30, file: !11, line: 876, type: !15)
!1879 = !DILocation(line: 876, column: 7, scope: !30)
!1880 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp68", scope: !30, file: !11, line: 877, type: !15)
!1881 = !DILocation(line: 877, column: 7, scope: !30)
!1882 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp69", scope: !30, file: !11, line: 878, type: !15)
!1883 = !DILocation(line: 878, column: 7, scope: !30)
!1884 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp70", scope: !30, file: !11, line: 879, type: !15)
!1885 = !DILocation(line: 879, column: 7, scope: !30)
!1886 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp71", scope: !30, file: !11, line: 880, type: !15)
!1887 = !DILocation(line: 880, column: 7, scope: !30)
!1888 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp72", scope: !30, file: !11, line: 881, type: !15)
!1889 = !DILocation(line: 881, column: 7, scope: !30)
!1890 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp73", scope: !30, file: !11, line: 882, type: !15)
!1891 = !DILocation(line: 882, column: 7, scope: !30)
!1892 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp74", scope: !30, file: !11, line: 883, type: !15)
!1893 = !DILocation(line: 883, column: 7, scope: !30)
!1894 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp75", scope: !30, file: !11, line: 884, type: !15)
!1895 = !DILocation(line: 884, column: 7, scope: !30)
!1896 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp76", scope: !30, file: !11, line: 885, type: !15)
!1897 = !DILocation(line: 885, column: 7, scope: !30)
!1898 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp77", scope: !30, file: !11, line: 886, type: !15)
!1899 = !DILocation(line: 886, column: 7, scope: !30)
!1900 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp78", scope: !30, file: !11, line: 887, type: !15)
!1901 = !DILocation(line: 887, column: 7, scope: !30)
!1902 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp79", scope: !30, file: !11, line: 888, type: !15)
!1903 = !DILocation(line: 888, column: 7, scope: !30)
!1904 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp80", scope: !30, file: !11, line: 889, type: !15)
!1905 = !DILocation(line: 889, column: 7, scope: !30)
!1906 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp81", scope: !30, file: !11, line: 890, type: !15)
!1907 = !DILocation(line: 890, column: 7, scope: !30)
!1908 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp82", scope: !30, file: !11, line: 891, type: !15)
!1909 = !DILocation(line: 891, column: 7, scope: !30)
!1910 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp83", scope: !30, file: !11, line: 892, type: !15)
!1911 = !DILocation(line: 892, column: 7, scope: !30)
!1912 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp84", scope: !30, file: !11, line: 893, type: !15)
!1913 = !DILocation(line: 893, column: 7, scope: !30)
!1914 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp85", scope: !30, file: !11, line: 894, type: !15)
!1915 = !DILocation(line: 894, column: 7, scope: !30)
!1916 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp86", scope: !30, file: !11, line: 895, type: !15)
!1917 = !DILocation(line: 895, column: 7, scope: !30)
!1918 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp87", scope: !30, file: !11, line: 896, type: !15)
!1919 = !DILocation(line: 896, column: 7, scope: !30)
!1920 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp88", scope: !30, file: !11, line: 897, type: !15)
!1921 = !DILocation(line: 897, column: 7, scope: !30)
!1922 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp89", scope: !30, file: !11, line: 898, type: !15)
!1923 = !DILocation(line: 898, column: 7, scope: !30)
!1924 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp90", scope: !30, file: !11, line: 899, type: !15)
!1925 = !DILocation(line: 899, column: 7, scope: !30)
!1926 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp91", scope: !30, file: !11, line: 900, type: !15)
!1927 = !DILocation(line: 900, column: 7, scope: !30)
!1928 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp92", scope: !30, file: !11, line: 901, type: !15)
!1929 = !DILocation(line: 901, column: 7, scope: !30)
!1930 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp93", scope: !30, file: !11, line: 902, type: !5)
!1931 = !DILocation(line: 902, column: 17, scope: !30)
!1932 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp94", scope: !30, file: !11, line: 903, type: !15)
!1933 = !DILocation(line: 903, column: 7, scope: !30)
!1934 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp95", scope: !30, file: !11, line: 904, type: !5)
!1935 = !DILocation(line: 904, column: 17, scope: !30)
!1936 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp96", scope: !30, file: !11, line: 905, type: !5)
!1937 = !DILocation(line: 905, column: 17, scope: !30)
!1938 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp97", scope: !30, file: !11, line: 906, type: !5)
!1939 = !DILocation(line: 906, column: 17, scope: !30)
!1940 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp98", scope: !30, file: !11, line: 907, type: !15)
!1941 = !DILocation(line: 907, column: 7, scope: !30)
!1942 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp99", scope: !30, file: !11, line: 908, type: !15)
!1943 = !DILocation(line: 908, column: 7, scope: !30)
!1944 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp100", scope: !30, file: !11, line: 909, type: !15)
!1945 = !DILocation(line: 909, column: 7, scope: !30)
!1946 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp101", scope: !30, file: !11, line: 910, type: !15)
!1947 = !DILocation(line: 910, column: 7, scope: !30)
!1948 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp102", scope: !30, file: !11, line: 911, type: !15)
!1949 = !DILocation(line: 911, column: 7, scope: !30)
!1950 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp103", scope: !30, file: !11, line: 912, type: !15)
!1951 = !DILocation(line: 912, column: 7, scope: !30)
!1952 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp104", scope: !30, file: !11, line: 913, type: !5)
!1953 = !DILocation(line: 913, column: 17, scope: !30)
!1954 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp105", scope: !30, file: !11, line: 914, type: !5)
!1955 = !DILocation(line: 914, column: 17, scope: !30)
!1956 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp106", scope: !30, file: !11, line: 915, type: !5)
!1957 = !DILocation(line: 915, column: 17, scope: !30)
!1958 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp107", scope: !30, file: !11, line: 916, type: !5)
!1959 = !DILocation(line: 916, column: 17, scope: !30)
!1960 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp108", scope: !30, file: !11, line: 917, type: !15)
!1961 = !DILocation(line: 917, column: 7, scope: !30)
!1962 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp109", scope: !30, file: !11, line: 918, type: !5)
!1963 = !DILocation(line: 918, column: 17, scope: !30)
!1964 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp110", scope: !30, file: !11, line: 919, type: !15)
!1965 = !DILocation(line: 919, column: 7, scope: !30)
!1966 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp111", scope: !30, file: !11, line: 920, type: !5)
!1967 = !DILocation(line: 920, column: 17, scope: !30)
!1968 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp112", scope: !30, file: !11, line: 921, type: !5)
!1969 = !DILocation(line: 921, column: 17, scope: !30)
!1970 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp113", scope: !30, file: !11, line: 922, type: !5)
!1971 = !DILocation(line: 922, column: 17, scope: !30)
!1972 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp114", scope: !30, file: !11, line: 923, type: !5)
!1973 = !DILocation(line: 923, column: 17, scope: !30)
!1974 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp115", scope: !30, file: !11, line: 924, type: !5)
!1975 = !DILocation(line: 924, column: 17, scope: !30)
!1976 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp116", scope: !30, file: !11, line: 925, type: !5)
!1977 = !DILocation(line: 925, column: 17, scope: !30)
!1978 = !DILocation(line: 846, column: 15, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !11, line: 928, column: 3)
!1980 = distinct !DILexicalBlock(scope: !30, file: !11, line: 927, column: 3)
!1981 = !DILocation(line: 846, column: 7, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1979, file: !11, line: 846, column: 7)
!1983 = !DILocation(line: 846, column: 70, scope: !1982)
!1984 = !DILocation(line: 846, column: 67, scope: !1982)
!1985 = !DILocation(line: 1720, column: 29, scope: !46, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 913, column: 31, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !11, line: 910, column: 31)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !11, line: 903, column: 43)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 903, column: 33)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !11, line: 884, column: 34)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !11, line: 884, column: 31)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !11, line: 881, column: 32)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !11, line: 879, column: 29)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !11, line: 879, column: 25)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !11, line: 878, column: 30)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !11, line: 876, column: 27)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !11, line: 876, column: 23)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !11, line: 875, column: 28)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !11, line: 873, column: 25)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !11, line: 873, column: 21)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !11, line: 872, column: 26)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !11, line: 870, column: 23)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !11, line: 870, column: 19)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !11, line: 869, column: 24)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !11, line: 867, column: 21)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !11, line: 867, column: 17)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !11, line: 866, column: 22)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !11, line: 864, column: 19)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !11, line: 864, column: 15)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !11, line: 863, column: 20)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !11, line: 861, column: 17)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !11, line: 861, column: 13)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !11, line: 860, column: 18)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !11, line: 858, column: 15)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !11, line: 858, column: 11)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !11, line: 857, column: 16)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !11, line: 855, column: 13)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !11, line: 855, column: 9)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !11, line: 854, column: 14)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !11, line: 852, column: 11)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !11, line: 852, column: 7)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !11, line: 851, column: 12)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !11, line: 849, column: 9)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !11, line: 849, column: 5)
!2025 = distinct !DILexicalBlock(scope: !1982, file: !11, line: 848, column: 10)
!2026 = !DILocation(line: 1720, column: 39, scope: !46, inlinedAt: !1986)
!2027 = !DILocation(line: 1720, column: 29, scope: !46, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 935, column: 35, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !11, line: 932, column: 35)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !11, line: 927, column: 65)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !11, line: 927, column: 37)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !11, line: 927, column: 33)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !11, line: 926, column: 63)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !11, line: 926, column: 35)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !11, line: 926, column: 31)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !11, line: 925, column: 45)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !11, line: 925, column: 33)
!2038 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 925, column: 29)
!2039 = !DILocation(line: 1720, column: 39, scope: !46, inlinedAt: !2028)
!2040 = !DILocation(line: 1720, column: 29, scope: !46, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 986, column: 31, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !11, line: 983, column: 31)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !11, line: 978, column: 110)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !11, line: 978, column: 33)
!2045 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 976, column: 29)
!2046 = !DILocation(line: 1720, column: 39, scope: !46, inlinedAt: !2041)
!2047 = !DILocation(line: 1720, column: 29, scope: !46, inlinedAt: !2048)
!2048 = distinct !DILocation(line: 1043, column: 31, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !11, line: 1040, column: 31)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !11, line: 1034, column: 47)
!2051 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 1034, column: 33)
!2052 = !DILocation(line: 1720, column: 39, scope: !46, inlinedAt: !2048)
!2053 = !DILocation(line: 1720, column: 29, scope: !46, inlinedAt: !2054)
!2054 = distinct !DILocation(line: 1058, column: 31, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !11, line: 1055, column: 31)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !11, line: 1049, column: 63)
!2057 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 1049, column: 33)
!2058 = !DILocation(line: 1720, column: 39, scope: !46, inlinedAt: !2054)
!2059 = !DILocation(line: 1720, column: 29, scope: !46, inlinedAt: !2060)
!2060 = distinct !DILocation(line: 1078, column: 31, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !11, line: 1075, column: 31)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !11, line: 1070, column: 45)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !11, line: 1070, column: 33)
!2064 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 1070, column: 29)
!2065 = !DILocation(line: 1720, column: 39, scope: !46, inlinedAt: !2060)
!2066 = !DILocation(line: 1720, column: 29, scope: !46, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 1097, column: 31, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !11, line: 1094, column: 31)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !11, line: 1089, column: 45)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !11, line: 1089, column: 33)
!2071 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 1089, column: 29)
!2072 = !DILocation(line: 1720, column: 39, scope: !46, inlinedAt: !2067)
!2073 = !DILocation(line: 1720, column: 29, scope: !46, inlinedAt: !2074)
!2074 = distinct !DILocation(line: 1115, column: 31, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !11, line: 1112, column: 31)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !11, line: 1106, column: 63)
!2077 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 1106, column: 33)
!2078 = !DILocation(line: 1720, column: 39, scope: !46, inlinedAt: !2074)
!2079 = !DILocation(line: 1720, column: 29, scope: !46, inlinedAt: !2080)
!2080 = distinct !DILocation(line: 1151, column: 31, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !11, line: 1148, column: 31)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !11, line: 1141, column: 51)
!2083 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 1141, column: 33)
!2084 = !DILocation(line: 1720, column: 39, scope: !46, inlinedAt: !2080)
!2085 = !DILocation(line: 1720, column: 29, scope: !46, inlinedAt: !2086)
!2086 = distinct !DILocation(line: 1167, column: 31, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !11, line: 1164, column: 31)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !11, line: 1157, column: 55)
!2089 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 1157, column: 33)
!2090 = !DILocation(line: 1720, column: 39, scope: !46, inlinedAt: !2086)
!2091 = !DILocation(line: 1720, column: 29, scope: !46, inlinedAt: !2092)
!2092 = distinct !DILocation(line: 1219, column: 31, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !11, line: 1216, column: 31)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !11, line: 1208, column: 47)
!2095 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 1208, column: 33)
!2096 = !DILocation(line: 1720, column: 39, scope: !46, inlinedAt: !2092)
!2097 = !DILocation(line: 1720, column: 29, scope: !46, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 1259, column: 3, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !1980, file: !11, line: 1256, column: 3)
!2100 = !DILocation(line: 1720, column: 39, scope: !46, inlinedAt: !2098)
!2101 = !DILocation(line: 846, column: 7, scope: !1979)
!2102 = !DILocation(line: 847, column: 5, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !1982, file: !11, line: 846, column: 83)
!2104 = !DILocation(line: 849, column: 17, scope: !2024)
!2105 = !DILocation(line: 849, column: 9, scope: !2023)
!2106 = !DILocation(line: 849, column: 72, scope: !2023)
!2107 = !DILocation(line: 849, column: 69, scope: !2023)
!2108 = !DILocation(line: 849, column: 9, scope: !2024)
!2109 = !DILocation(line: 850, column: 7, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2023, file: !11, line: 849, column: 85)
!2111 = !DILocation(line: 852, column: 19, scope: !2021)
!2112 = !DILocation(line: 852, column: 11, scope: !2020)
!2113 = !DILocation(line: 852, column: 74, scope: !2020)
!2114 = !DILocation(line: 852, column: 71, scope: !2020)
!2115 = !DILocation(line: 852, column: 11, scope: !2021)
!2116 = !DILocation(line: 853, column: 9, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2020, file: !11, line: 852, column: 87)
!2118 = !DILocation(line: 855, column: 21, scope: !2018)
!2119 = !DILocation(line: 855, column: 13, scope: !2017)
!2120 = !DILocation(line: 855, column: 76, scope: !2017)
!2121 = !DILocation(line: 855, column: 73, scope: !2017)
!2122 = !DILocation(line: 855, column: 13, scope: !2018)
!2123 = !DILocation(line: 856, column: 11, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2017, file: !11, line: 855, column: 89)
!2125 = !DILocation(line: 858, column: 23, scope: !2015)
!2126 = !DILocation(line: 858, column: 15, scope: !2014)
!2127 = !DILocation(line: 858, column: 78, scope: !2014)
!2128 = !DILocation(line: 858, column: 75, scope: !2014)
!2129 = !DILocation(line: 858, column: 15, scope: !2015)
!2130 = !DILocation(line: 859, column: 13, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2014, file: !11, line: 858, column: 91)
!2132 = !DILocation(line: 861, column: 25, scope: !2012)
!2133 = !DILocation(line: 861, column: 17, scope: !2011)
!2134 = !DILocation(line: 861, column: 80, scope: !2011)
!2135 = !DILocation(line: 861, column: 77, scope: !2011)
!2136 = !DILocation(line: 861, column: 17, scope: !2012)
!2137 = !DILocation(line: 862, column: 15, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2011, file: !11, line: 861, column: 93)
!2139 = !DILocation(line: 864, column: 27, scope: !2009)
!2140 = !DILocation(line: 864, column: 19, scope: !2008)
!2141 = !DILocation(line: 864, column: 82, scope: !2008)
!2142 = !DILocation(line: 864, column: 79, scope: !2008)
!2143 = !DILocation(line: 864, column: 19, scope: !2009)
!2144 = !DILocation(line: 865, column: 17, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2008, file: !11, line: 864, column: 95)
!2146 = !DILocation(line: 867, column: 29, scope: !2006)
!2147 = !DILocation(line: 867, column: 21, scope: !2005)
!2148 = !DILocation(line: 867, column: 84, scope: !2005)
!2149 = !DILocation(line: 867, column: 81, scope: !2005)
!2150 = !DILocation(line: 867, column: 21, scope: !2006)
!2151 = !DILocation(line: 868, column: 19, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2005, file: !11, line: 867, column: 97)
!2153 = !DILocation(line: 870, column: 31, scope: !2003)
!2154 = !DILocation(line: 870, column: 23, scope: !2002)
!2155 = !DILocation(line: 870, column: 86, scope: !2002)
!2156 = !DILocation(line: 870, column: 83, scope: !2002)
!2157 = !DILocation(line: 870, column: 23, scope: !2003)
!2158 = !DILocation(line: 871, column: 21, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2002, file: !11, line: 870, column: 99)
!2160 = !DILocation(line: 873, column: 33, scope: !2000)
!2161 = !DILocation(line: 873, column: 25, scope: !1999)
!2162 = !DILocation(line: 873, column: 88, scope: !1999)
!2163 = !DILocation(line: 873, column: 85, scope: !1999)
!2164 = !DILocation(line: 873, column: 25, scope: !2000)
!2165 = !DILocation(line: 874, column: 23, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !1999, file: !11, line: 873, column: 101)
!2167 = !DILocation(line: 876, column: 35, scope: !1997)
!2168 = !DILocation(line: 876, column: 27, scope: !1996)
!2169 = !DILocation(line: 876, column: 90, scope: !1996)
!2170 = !DILocation(line: 876, column: 87, scope: !1996)
!2171 = !DILocation(line: 876, column: 27, scope: !1997)
!2172 = !DILocation(line: 877, column: 25, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !1996, file: !11, line: 876, column: 103)
!2174 = !DILocation(line: 879, column: 37, scope: !1994)
!2175 = !DILocation(line: 879, column: 29, scope: !1993)
!2176 = !DILocation(line: 879, column: 92, scope: !1993)
!2177 = !DILocation(line: 879, column: 89, scope: !1993)
!2178 = !DILocation(line: 879, column: 29, scope: !1994)
!2179 = !DILocation(line: 880, column: 27, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !1993, file: !11, line: 879, column: 105)
!2181 = !DILocation(line: 882, column: 27, scope: !1992)
!2182 = !DILocation(line: 884, column: 31, scope: !1992)
!2183 = !DILocation(line: 884, column: 34, scope: !1991)
!2184 = !DILocation(line: 886, column: 33, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 886, column: 33)
!2186 = !DILocation(line: 886, column: 100, scope: !2185)
!2187 = !DILocation(line: 886, column: 98, scope: !2185)
!2188 = !DILocation(line: 886, column: 33, scope: !1990)
!2189 = !DILocation(line: 887, column: 38, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2185, file: !11, line: 886, column: 114)
!2191 = !DILocation(line: 888, column: 58, scope: !2190)
!2192 = !DILocation(line: 889, column: 31, scope: !2190)
!2193 = !DILocation(line: 894, column: 55, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 891, column: 29)
!2195 = !DILocation(line: 894, column: 35, scope: !2194)
!2196 = !DILocation(line: 894, column: 33, scope: !2194)
!2197 = !DILocation(line: 896, column: 33, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 896, column: 33)
!2199 = !DILocation(line: 896, column: 33, scope: !1990)
!2200 = !DILocation(line: 897, column: 38, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2198, file: !11, line: 896, column: 38)
!2202 = !DILocation(line: 898, column: 58, scope: !2201)
!2203 = !DILocation(line: 899, column: 31, scope: !2201)
!2204 = !DILocation(line: 903, column: 33, scope: !1989)
!2205 = !DILocation(line: 903, column: 37, scope: !1989)
!2206 = !DILocation(line: 903, column: 33, scope: !1990)
!2207 = !DILocation(line: 904, column: 38, scope: !1988)
!2208 = !DILocation(line: 905, column: 58, scope: !1988)
!2209 = !DILocation(line: 906, column: 61, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !1988, file: !11, line: 906, column: 31)
!2211 = !DILocation(line: 906, column: 45, scope: !2210)
!2212 = !DILocation(line: 906, column: 43, scope: !2210)
!2213 = !DILocation(line: 906, column: 35, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2210, file: !11, line: 906, column: 35)
!2215 = !DILocation(line: 906, column: 47, scope: !2214)
!2216 = !DILocation(line: 906, column: 35, scope: !2210)
!2217 = !DILocation(line: 907, column: 60, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2214, file: !11, line: 906, column: 63)
!2219 = !DILocation(line: 908, column: 31, scope: !2218)
!2220 = !DILocation(line: 912, column: 42, scope: !1987)
!2221 = !DILocation(line: 912, column: 40, scope: !1987)
!2222 = !DILocation(line: 913, column: 50, scope: !1987)
!2223 = !DILocation(line: 913, column: 31, scope: !1987)
!2224 = !DILocation(line: 1724, column: 7, scope: !430, inlinedAt: !1986)
!2225 = !DILocation(line: 1724, column: 12, scope: !430, inlinedAt: !1986)
!2226 = !DILocation(line: 1724, column: 9, scope: !430, inlinedAt: !1986)
!2227 = !DILocation(line: 1724, column: 7, scope: !431, inlinedAt: !1986)
!2228 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !2229)
!2229 = distinct !DILocation(line: 1728, column: 5, scope: !437, inlinedAt: !1986)
!2230 = !DILocation(line: 1725, column: 9, scope: !440, inlinedAt: !1986)
!2231 = !DILocation(line: 1725, column: 7, scope: !440, inlinedAt: !1986)
!2232 = !DILocation(line: 1731, column: 3, scope: !431, inlinedAt: !1986)
!2233 = !DILocation(line: 915, column: 39, scope: !1988)
!2234 = !DILocation(line: 915, column: 31, scope: !1988)
!2235 = !DILocation(line: 920, column: 47, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 917, column: 29)
!2237 = !DILocation(line: 921, column: 44, scope: !2236)
!2238 = !DILocation(line: 922, column: 57, scope: !2236)
!2239 = !DILocation(line: 922, column: 74, scope: !2236)
!2240 = !DILocation(line: 922, column: 79, scope: !2236)
!2241 = !DILocation(line: 923, column: 57, scope: !2236)
!2242 = !DILocation(line: 922, column: 38, scope: !2236)
!2243 = !DILocation(line: 922, column: 36, scope: !2236)
!2244 = !DILocation(line: 925, column: 33, scope: !2037)
!2245 = !DILocation(line: 925, column: 40, scope: !2037)
!2246 = !DILocation(line: 925, column: 33, scope: !2038)
!2247 = !DILocation(line: 926, column: 61, scope: !2035)
!2248 = !DILocation(line: 926, column: 45, scope: !2035)
!2249 = !DILocation(line: 926, column: 43, scope: !2035)
!2250 = !DILocation(line: 926, column: 35, scope: !2034)
!2251 = !DILocation(line: 926, column: 47, scope: !2034)
!2252 = !DILocation(line: 926, column: 35, scope: !2035)
!2253 = !DILocation(line: 927, column: 63, scope: !2032)
!2254 = !DILocation(line: 927, column: 47, scope: !2032)
!2255 = !DILocation(line: 927, column: 45, scope: !2032)
!2256 = !DILocation(line: 927, column: 37, scope: !2031)
!2257 = !DILocation(line: 927, column: 49, scope: !2031)
!2258 = !DILocation(line: 927, column: 37, scope: !2032)
!2259 = !DILocation(line: 928, column: 65, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2030, file: !11, line: 928, column: 35)
!2261 = !DILocation(line: 928, column: 49, scope: !2260)
!2262 = !DILocation(line: 928, column: 47, scope: !2260)
!2263 = !DILocation(line: 928, column: 39, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2260, file: !11, line: 928, column: 39)
!2265 = !DILocation(line: 928, column: 51, scope: !2264)
!2266 = !DILocation(line: 928, column: 39, scope: !2260)
!2267 = !DILocation(line: 929, column: 64, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2264, file: !11, line: 928, column: 67)
!2269 = !DILocation(line: 930, column: 35, scope: !2268)
!2270 = !DILocation(line: 934, column: 46, scope: !2029)
!2271 = !DILocation(line: 934, column: 44, scope: !2029)
!2272 = !DILocation(line: 935, column: 54, scope: !2029)
!2273 = !DILocation(line: 935, column: 35, scope: !2029)
!2274 = !DILocation(line: 1724, column: 7, scope: !430, inlinedAt: !2028)
!2275 = !DILocation(line: 1724, column: 12, scope: !430, inlinedAt: !2028)
!2276 = !DILocation(line: 1724, column: 9, scope: !430, inlinedAt: !2028)
!2277 = !DILocation(line: 1724, column: 7, scope: !431, inlinedAt: !2028)
!2278 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !2279)
!2279 = distinct !DILocation(line: 1728, column: 5, scope: !437, inlinedAt: !2028)
!2280 = !DILocation(line: 1725, column: 9, scope: !440, inlinedAt: !2028)
!2281 = !DILocation(line: 1725, column: 7, scope: !440, inlinedAt: !2028)
!2282 = !DILocation(line: 1731, column: 3, scope: !431, inlinedAt: !2028)
!2283 = !DILocation(line: 937, column: 43, scope: !2030)
!2284 = !DILocation(line: 937, column: 35, scope: !2030)
!2285 = !DILocation(line: 940, column: 31, scope: !2033)
!2286 = !DILocation(line: 942, column: 40, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2034, file: !11, line: 940, column: 38)
!2288 = !DILocation(line: 945, column: 29, scope: !2036)
!2289 = !DILocation(line: 945, column: 38, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2037, file: !11, line: 945, column: 36)
!2291 = !DILocation(line: 947, column: 33, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 947, column: 33)
!2293 = !DILocation(line: 947, column: 100, scope: !2292)
!2294 = !DILocation(line: 947, column: 98, scope: !2292)
!2295 = !DILocation(line: 947, column: 33, scope: !1990)
!2296 = !DILocation(line: 948, column: 49, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2292, file: !11, line: 947, column: 119)
!2298 = !DILocation(line: 948, column: 47, scope: !2297)
!2299 = !DILocation(line: 949, column: 29, scope: !2297)
!2300 = !DILocation(line: 950, column: 49, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2292, file: !11, line: 949, column: 36)
!2302 = !DILocation(line: 950, column: 47, scope: !2301)
!2303 = !DILocation(line: 952, column: 43, scope: !1990)
!2304 = !DILocation(line: 952, column: 71, scope: !1990)
!2305 = !DILocation(line: 952, column: 69, scope: !1990)
!2306 = !DILocation(line: 952, column: 41, scope: !1990)
!2307 = !DILocation(line: 952, column: 42, scope: !1990)
!2308 = !DILocation(line: 952, column: 54, scope: !1990)
!2309 = !DILocation(line: 952, column: 40, scope: !1990)
!2310 = !DILocation(line: 953, column: 46, scope: !1990)
!2311 = !DILocation(line: 953, column: 113, scope: !1990)
!2312 = !DILocation(line: 953, column: 111, scope: !1990)
!2313 = !DILocation(line: 953, column: 44, scope: !1990)
!2314 = !DILocation(line: 954, column: 33, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 954, column: 33)
!2316 = !DILocation(line: 954, column: 50, scope: !2315)
!2317 = !DILocation(line: 954, column: 48, scope: !2315)
!2318 = !DILocation(line: 954, column: 33, scope: !1990)
!2319 = !DILocation(line: 955, column: 48, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2315, file: !11, line: 954, column: 62)
!2321 = !DILocation(line: 955, column: 46, scope: !2320)
!2322 = !DILocation(line: 956, column: 29, scope: !2320)
!2323 = !DILocation(line: 957, column: 48, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2315, file: !11, line: 956, column: 36)
!2325 = !DILocation(line: 957, column: 46, scope: !2324)
!2326 = !DILocation(line: 959, column: 33, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 959, column: 33)
!2328 = !DILocation(line: 959, column: 50, scope: !2327)
!2329 = !DILocation(line: 959, column: 48, scope: !2327)
!2330 = !DILocation(line: 959, column: 33, scope: !1990)
!2331 = !DILocation(line: 960, column: 33, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2327, file: !11, line: 959, column: 62)
!2333 = !DILocation(line: 961, column: 29, scope: !2332)
!2334 = !DILocation(line: 962, column: 29, scope: !1990)
!2335 = !DILocation(line: 968, column: 56, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 965, column: 29)
!2337 = !DILocation(line: 969, column: 44, scope: !2336)
!2338 = !DILocation(line: 970, column: 47, scope: !2336)
!2339 = !DILocation(line: 971, column: 57, scope: !2336)
!2340 = !DILocation(line: 971, column: 74, scope: !2336)
!2341 = !DILocation(line: 971, column: 38, scope: !2336)
!2342 = !DILocation(line: 971, column: 36, scope: !2336)
!2343 = !DILocation(line: 973, column: 33, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 973, column: 33)
!2345 = !DILocation(line: 973, column: 40, scope: !2344)
!2346 = !DILocation(line: 973, column: 33, scope: !1990)
!2347 = !DILocation(line: 975, column: 29, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2344, file: !11, line: 973, column: 46)
!2349 = !DILocation(line: 978, column: 41, scope: !2045)
!2350 = !DILocation(line: 978, column: 42, scope: !2045)
!2351 = !DILocation(line: 978, column: 33, scope: !2044)
!2352 = !DILocation(line: 978, column: 96, scope: !2044)
!2353 = !DILocation(line: 978, column: 93, scope: !2044)
!2354 = !DILocation(line: 978, column: 33, scope: !2045)
!2355 = !DILocation(line: 979, column: 62, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2043, file: !11, line: 979, column: 31)
!2357 = !DILocation(line: 979, column: 46, scope: !2356)
!2358 = !DILocation(line: 979, column: 44, scope: !2356)
!2359 = !DILocation(line: 979, column: 35, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2356, file: !11, line: 979, column: 35)
!2361 = !DILocation(line: 979, column: 48, scope: !2360)
!2362 = !DILocation(line: 979, column: 35, scope: !2356)
!2363 = !DILocation(line: 980, column: 60, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2360, file: !11, line: 979, column: 64)
!2365 = !DILocation(line: 981, column: 31, scope: !2364)
!2366 = !DILocation(line: 985, column: 42, scope: !2042)
!2367 = !DILocation(line: 985, column: 40, scope: !2042)
!2368 = !DILocation(line: 986, column: 50, scope: !2042)
!2369 = !DILocation(line: 986, column: 31, scope: !2042)
!2370 = !DILocation(line: 1724, column: 7, scope: !430, inlinedAt: !2041)
!2371 = !DILocation(line: 1724, column: 12, scope: !430, inlinedAt: !2041)
!2372 = !DILocation(line: 1724, column: 9, scope: !430, inlinedAt: !2041)
!2373 = !DILocation(line: 1724, column: 7, scope: !431, inlinedAt: !2041)
!2374 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 1728, column: 5, scope: !437, inlinedAt: !2041)
!2376 = !DILocation(line: 1725, column: 9, scope: !440, inlinedAt: !2041)
!2377 = !DILocation(line: 1725, column: 7, scope: !440, inlinedAt: !2041)
!2378 = !DILocation(line: 1731, column: 3, scope: !431, inlinedAt: !2041)
!2379 = !DILocation(line: 988, column: 39, scope: !2043)
!2380 = !DILocation(line: 988, column: 31, scope: !2043)
!2381 = !DILocation(line: 992, column: 33, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 992, column: 33)
!2383 = !DILocation(line: 992, column: 99, scope: !2382)
!2384 = !DILocation(line: 992, column: 97, scope: !2382)
!2385 = !DILocation(line: 992, column: 33, scope: !1990)
!2386 = !DILocation(line: 993, column: 38, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2382, file: !11, line: 992, column: 129)
!2388 = !DILocation(line: 994, column: 31, scope: !2387)
!2389 = !DILocation(line: 999, column: 44, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 996, column: 29)
!2391 = !DILocation(line: 1000, column: 47, scope: !2390)
!2392 = !DILocation(line: 1001, column: 57, scope: !2390)
!2393 = !DILocation(line: 1001, column: 74, scope: !2390)
!2394 = !DILocation(line: 1001, column: 38, scope: !2390)
!2395 = !DILocation(line: 1001, column: 36, scope: !2390)
!2396 = !DILocation(line: 1003, column: 33, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 1003, column: 33)
!2398 = !DILocation(line: 1003, column: 40, scope: !2397)
!2399 = !DILocation(line: 1003, column: 33, scope: !1990)
!2400 = !DILocation(line: 1005, column: 29, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2397, file: !11, line: 1003, column: 46)
!2402 = !DILocation(line: 1006, column: 29, scope: !1990)
!2403 = !DILocation(line: 1010, column: 56, scope: !1990)
!2404 = !DILocation(line: 1011, column: 33, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 1011, column: 33)
!2406 = !DILocation(line: 1011, column: 99, scope: !2405)
!2407 = !DILocation(line: 1011, column: 97, scope: !2405)
!2408 = !DILocation(line: 1011, column: 33, scope: !1990)
!2409 = !DILocation(line: 1012, column: 38, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2405, file: !11, line: 1011, column: 129)
!2411 = !DILocation(line: 1013, column: 31, scope: !2410)
!2412 = !DILocation(line: 1018, column: 44, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 1015, column: 29)
!2414 = !DILocation(line: 1019, column: 47, scope: !2413)
!2415 = !DILocation(line: 1020, column: 57, scope: !2413)
!2416 = !DILocation(line: 1020, column: 74, scope: !2413)
!2417 = !DILocation(line: 1020, column: 38, scope: !2413)
!2418 = !DILocation(line: 1020, column: 36, scope: !2413)
!2419 = !DILocation(line: 1022, column: 33, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 1022, column: 33)
!2421 = !DILocation(line: 1022, column: 40, scope: !2420)
!2422 = !DILocation(line: 1022, column: 33, scope: !1990)
!2423 = !DILocation(line: 1025, column: 62, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !11, line: 1023, column: 31)
!2425 = distinct !DILexicalBlock(scope: !2420, file: !11, line: 1022, column: 45)
!2426 = !DILocation(line: 1025, column: 46, scope: !2424)
!2427 = !DILocation(line: 1025, column: 44, scope: !2424)
!2428 = !DILocation(line: 1025, column: 35, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2424, file: !11, line: 1025, column: 35)
!2430 = !DILocation(line: 1025, column: 48, scope: !2429)
!2431 = !DILocation(line: 1025, column: 35, scope: !2424)
!2432 = !DILocation(line: 1026, column: 40, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2429, file: !11, line: 1025, column: 64)
!2434 = !DILocation(line: 1027, column: 31, scope: !2433)
!2435 = !DILocation(line: 1029, column: 29, scope: !2425)
!2436 = !DILocation(line: 1030, column: 29, scope: !1990)
!2437 = !DILocation(line: 1033, column: 56, scope: !1990)
!2438 = !DILocation(line: 1034, column: 33, scope: !2051)
!2439 = !DILocation(line: 1034, column: 41, scope: !2051)
!2440 = !DILocation(line: 1034, column: 33, scope: !1990)
!2441 = !DILocation(line: 1035, column: 38, scope: !2050)
!2442 = !DILocation(line: 1036, column: 62, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2050, file: !11, line: 1036, column: 31)
!2444 = !DILocation(line: 1036, column: 46, scope: !2443)
!2445 = !DILocation(line: 1036, column: 44, scope: !2443)
!2446 = !DILocation(line: 1036, column: 35, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2443, file: !11, line: 1036, column: 35)
!2448 = !DILocation(line: 1036, column: 48, scope: !2447)
!2449 = !DILocation(line: 1036, column: 35, scope: !2443)
!2450 = !DILocation(line: 1037, column: 60, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2447, file: !11, line: 1036, column: 64)
!2452 = !DILocation(line: 1038, column: 31, scope: !2451)
!2453 = !DILocation(line: 1042, column: 42, scope: !2049)
!2454 = !DILocation(line: 1042, column: 40, scope: !2049)
!2455 = !DILocation(line: 1043, column: 50, scope: !2049)
!2456 = !DILocation(line: 1043, column: 31, scope: !2049)
!2457 = !DILocation(line: 1724, column: 7, scope: !430, inlinedAt: !2048)
!2458 = !DILocation(line: 1724, column: 12, scope: !430, inlinedAt: !2048)
!2459 = !DILocation(line: 1724, column: 9, scope: !430, inlinedAt: !2048)
!2460 = !DILocation(line: 1724, column: 7, scope: !431, inlinedAt: !2048)
!2461 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !2462)
!2462 = distinct !DILocation(line: 1728, column: 5, scope: !437, inlinedAt: !2048)
!2463 = !DILocation(line: 1725, column: 9, scope: !440, inlinedAt: !2048)
!2464 = !DILocation(line: 1725, column: 7, scope: !440, inlinedAt: !2048)
!2465 = !DILocation(line: 1731, column: 3, scope: !431, inlinedAt: !2048)
!2466 = !DILocation(line: 1045, column: 39, scope: !2050)
!2467 = !DILocation(line: 1045, column: 31, scope: !2050)
!2468 = !DILocation(line: 1049, column: 33, scope: !2057)
!2469 = !DILocation(line: 1049, column: 57, scope: !2057)
!2470 = !DILocation(line: 1049, column: 33, scope: !1990)
!2471 = !DILocation(line: 1050, column: 38, scope: !2056)
!2472 = !DILocation(line: 1051, column: 62, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2056, file: !11, line: 1051, column: 31)
!2474 = !DILocation(line: 1051, column: 46, scope: !2473)
!2475 = !DILocation(line: 1051, column: 44, scope: !2473)
!2476 = !DILocation(line: 1051, column: 35, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2473, file: !11, line: 1051, column: 35)
!2478 = !DILocation(line: 1051, column: 48, scope: !2477)
!2479 = !DILocation(line: 1051, column: 35, scope: !2473)
!2480 = !DILocation(line: 1052, column: 60, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2477, file: !11, line: 1051, column: 64)
!2482 = !DILocation(line: 1053, column: 31, scope: !2481)
!2483 = !DILocation(line: 1057, column: 42, scope: !2055)
!2484 = !DILocation(line: 1057, column: 40, scope: !2055)
!2485 = !DILocation(line: 1058, column: 50, scope: !2055)
!2486 = !DILocation(line: 1058, column: 31, scope: !2055)
!2487 = !DILocation(line: 1724, column: 7, scope: !430, inlinedAt: !2054)
!2488 = !DILocation(line: 1724, column: 12, scope: !430, inlinedAt: !2054)
!2489 = !DILocation(line: 1724, column: 9, scope: !430, inlinedAt: !2054)
!2490 = !DILocation(line: 1724, column: 7, scope: !431, inlinedAt: !2054)
!2491 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !2492)
!2492 = distinct !DILocation(line: 1728, column: 5, scope: !437, inlinedAt: !2054)
!2493 = !DILocation(line: 1725, column: 9, scope: !440, inlinedAt: !2054)
!2494 = !DILocation(line: 1725, column: 7, scope: !440, inlinedAt: !2054)
!2495 = !DILocation(line: 1731, column: 3, scope: !431, inlinedAt: !2054)
!2496 = !DILocation(line: 1060, column: 39, scope: !2056)
!2497 = !DILocation(line: 1060, column: 31, scope: !2056)
!2498 = !DILocation(line: 1065, column: 44, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 1062, column: 29)
!2500 = !DILocation(line: 1066, column: 47, scope: !2499)
!2501 = !DILocation(line: 1067, column: 57, scope: !2499)
!2502 = !DILocation(line: 1067, column: 74, scope: !2499)
!2503 = !DILocation(line: 1067, column: 79, scope: !2499)
!2504 = !DILocation(line: 1068, column: 57, scope: !2499)
!2505 = !DILocation(line: 1067, column: 38, scope: !2499)
!2506 = !DILocation(line: 1067, column: 36, scope: !2499)
!2507 = !DILocation(line: 1070, column: 33, scope: !2063)
!2508 = !DILocation(line: 1070, column: 40, scope: !2063)
!2509 = !DILocation(line: 1070, column: 33, scope: !2064)
!2510 = !DILocation(line: 1071, column: 62, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2062, file: !11, line: 1071, column: 31)
!2512 = !DILocation(line: 1071, column: 46, scope: !2511)
!2513 = !DILocation(line: 1071, column: 44, scope: !2511)
!2514 = !DILocation(line: 1071, column: 35, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2511, file: !11, line: 1071, column: 35)
!2516 = !DILocation(line: 1071, column: 48, scope: !2515)
!2517 = !DILocation(line: 1071, column: 35, scope: !2511)
!2518 = !DILocation(line: 1072, column: 60, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2515, file: !11, line: 1071, column: 64)
!2520 = !DILocation(line: 1073, column: 31, scope: !2519)
!2521 = !DILocation(line: 1077, column: 42, scope: !2061)
!2522 = !DILocation(line: 1077, column: 40, scope: !2061)
!2523 = !DILocation(line: 1078, column: 50, scope: !2061)
!2524 = !DILocation(line: 1078, column: 31, scope: !2061)
!2525 = !DILocation(line: 1724, column: 7, scope: !430, inlinedAt: !2060)
!2526 = !DILocation(line: 1724, column: 12, scope: !430, inlinedAt: !2060)
!2527 = !DILocation(line: 1724, column: 9, scope: !430, inlinedAt: !2060)
!2528 = !DILocation(line: 1724, column: 7, scope: !431, inlinedAt: !2060)
!2529 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !2530)
!2530 = distinct !DILocation(line: 1728, column: 5, scope: !437, inlinedAt: !2060)
!2531 = !DILocation(line: 1725, column: 9, scope: !440, inlinedAt: !2060)
!2532 = !DILocation(line: 1725, column: 7, scope: !440, inlinedAt: !2060)
!2533 = !DILocation(line: 1731, column: 3, scope: !431, inlinedAt: !2060)
!2534 = !DILocation(line: 1080, column: 39, scope: !2062)
!2535 = !DILocation(line: 1080, column: 31, scope: !2062)
!2536 = !DILocation(line: 1085, column: 44, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 1083, column: 29)
!2538 = !DILocation(line: 1086, column: 47, scope: !2537)
!2539 = !DILocation(line: 1087, column: 57, scope: !2537)
!2540 = !DILocation(line: 1087, column: 74, scope: !2537)
!2541 = !DILocation(line: 1087, column: 38, scope: !2537)
!2542 = !DILocation(line: 1087, column: 36, scope: !2537)
!2543 = !DILocation(line: 1089, column: 33, scope: !2070)
!2544 = !DILocation(line: 1089, column: 40, scope: !2070)
!2545 = !DILocation(line: 1089, column: 33, scope: !2071)
!2546 = !DILocation(line: 1090, column: 62, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2069, file: !11, line: 1090, column: 31)
!2548 = !DILocation(line: 1090, column: 46, scope: !2547)
!2549 = !DILocation(line: 1090, column: 44, scope: !2547)
!2550 = !DILocation(line: 1090, column: 35, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2547, file: !11, line: 1090, column: 35)
!2552 = !DILocation(line: 1090, column: 48, scope: !2551)
!2553 = !DILocation(line: 1090, column: 35, scope: !2547)
!2554 = !DILocation(line: 1091, column: 60, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2551, file: !11, line: 1090, column: 64)
!2556 = !DILocation(line: 1092, column: 31, scope: !2555)
!2557 = !DILocation(line: 1096, column: 42, scope: !2068)
!2558 = !DILocation(line: 1096, column: 40, scope: !2068)
!2559 = !DILocation(line: 1097, column: 50, scope: !2068)
!2560 = !DILocation(line: 1097, column: 31, scope: !2068)
!2561 = !DILocation(line: 1724, column: 7, scope: !430, inlinedAt: !2067)
!2562 = !DILocation(line: 1724, column: 12, scope: !430, inlinedAt: !2067)
!2563 = !DILocation(line: 1724, column: 9, scope: !430, inlinedAt: !2067)
!2564 = !DILocation(line: 1724, column: 7, scope: !431, inlinedAt: !2067)
!2565 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 1728, column: 5, scope: !437, inlinedAt: !2067)
!2567 = !DILocation(line: 1725, column: 9, scope: !440, inlinedAt: !2067)
!2568 = !DILocation(line: 1725, column: 7, scope: !440, inlinedAt: !2067)
!2569 = !DILocation(line: 1731, column: 3, scope: !431, inlinedAt: !2067)
!2570 = !DILocation(line: 1099, column: 39, scope: !2069)
!2571 = !DILocation(line: 1099, column: 31, scope: !2069)
!2572 = !DILocation(line: 1102, column: 29, scope: !1990)
!2573 = !DILocation(line: 1105, column: 56, scope: !1990)
!2574 = !DILocation(line: 1106, column: 33, scope: !2077)
!2575 = !DILocation(line: 1106, column: 57, scope: !2077)
!2576 = !DILocation(line: 1106, column: 33, scope: !1990)
!2577 = !DILocation(line: 1107, column: 38, scope: !2076)
!2578 = !DILocation(line: 1108, column: 62, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2076, file: !11, line: 1108, column: 31)
!2580 = !DILocation(line: 1108, column: 46, scope: !2579)
!2581 = !DILocation(line: 1108, column: 44, scope: !2579)
!2582 = !DILocation(line: 1108, column: 35, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2579, file: !11, line: 1108, column: 35)
!2584 = !DILocation(line: 1108, column: 48, scope: !2583)
!2585 = !DILocation(line: 1108, column: 35, scope: !2579)
!2586 = !DILocation(line: 1109, column: 60, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2583, file: !11, line: 1108, column: 64)
!2588 = !DILocation(line: 1110, column: 31, scope: !2587)
!2589 = !DILocation(line: 1114, column: 42, scope: !2075)
!2590 = !DILocation(line: 1114, column: 40, scope: !2075)
!2591 = !DILocation(line: 1115, column: 50, scope: !2075)
!2592 = !DILocation(line: 1115, column: 31, scope: !2075)
!2593 = !DILocation(line: 1724, column: 7, scope: !430, inlinedAt: !2074)
!2594 = !DILocation(line: 1724, column: 12, scope: !430, inlinedAt: !2074)
!2595 = !DILocation(line: 1724, column: 9, scope: !430, inlinedAt: !2074)
!2596 = !DILocation(line: 1724, column: 7, scope: !431, inlinedAt: !2074)
!2597 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 1728, column: 5, scope: !437, inlinedAt: !2074)
!2599 = !DILocation(line: 1725, column: 9, scope: !440, inlinedAt: !2074)
!2600 = !DILocation(line: 1725, column: 7, scope: !440, inlinedAt: !2074)
!2601 = !DILocation(line: 1731, column: 3, scope: !431, inlinedAt: !2074)
!2602 = !DILocation(line: 1117, column: 39, scope: !2076)
!2603 = !DILocation(line: 1117, column: 31, scope: !2076)
!2604 = !DILocation(line: 1122, column: 44, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 1119, column: 29)
!2606 = !DILocation(line: 1123, column: 47, scope: !2605)
!2607 = !DILocation(line: 1124, column: 57, scope: !2605)
!2608 = !DILocation(line: 1124, column: 74, scope: !2605)
!2609 = !DILocation(line: 1124, column: 38, scope: !2605)
!2610 = !DILocation(line: 1124, column: 36, scope: !2605)
!2611 = !DILocation(line: 1126, column: 33, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 1126, column: 33)
!2613 = !DILocation(line: 1126, column: 40, scope: !2612)
!2614 = !DILocation(line: 1126, column: 33, scope: !1990)
!2615 = !DILocation(line: 1127, column: 59, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2612, file: !11, line: 1126, column: 46)
!2617 = !DILocation(line: 1128, column: 55, scope: !2616)
!2618 = !DILocation(line: 1129, column: 29, scope: !2616)
!2619 = !DILocation(line: 1130, column: 29, scope: !1990)
!2620 = !DILocation(line: 1134, column: 33, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 1134, column: 33)
!2622 = !DILocation(line: 1134, column: 100, scope: !2621)
!2623 = !DILocation(line: 1134, column: 98, scope: !2621)
!2624 = !DILocation(line: 1134, column: 33, scope: !1990)
!2625 = !DILocation(line: 1135, column: 38, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2621, file: !11, line: 1134, column: 132)
!2627 = !DILocation(line: 1136, column: 58, scope: !2626)
!2628 = !DILocation(line: 1137, column: 31, scope: !2626)
!2629 = !DILocation(line: 1141, column: 33, scope: !2083)
!2630 = !DILocation(line: 1141, column: 45, scope: !2083)
!2631 = !DILocation(line: 1141, column: 33, scope: !1990)
!2632 = !DILocation(line: 1142, column: 38, scope: !2082)
!2633 = !DILocation(line: 1143, column: 58, scope: !2082)
!2634 = !DILocation(line: 1144, column: 62, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2082, file: !11, line: 1144, column: 31)
!2636 = !DILocation(line: 1144, column: 46, scope: !2635)
!2637 = !DILocation(line: 1144, column: 44, scope: !2635)
!2638 = !DILocation(line: 1144, column: 35, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2635, file: !11, line: 1144, column: 35)
!2640 = !DILocation(line: 1144, column: 48, scope: !2639)
!2641 = !DILocation(line: 1144, column: 35, scope: !2635)
!2642 = !DILocation(line: 1145, column: 60, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2639, file: !11, line: 1144, column: 64)
!2644 = !DILocation(line: 1146, column: 31, scope: !2643)
!2645 = !DILocation(line: 1150, column: 42, scope: !2081)
!2646 = !DILocation(line: 1150, column: 40, scope: !2081)
!2647 = !DILocation(line: 1151, column: 50, scope: !2081)
!2648 = !DILocation(line: 1151, column: 31, scope: !2081)
!2649 = !DILocation(line: 1724, column: 7, scope: !430, inlinedAt: !2080)
!2650 = !DILocation(line: 1724, column: 12, scope: !430, inlinedAt: !2080)
!2651 = !DILocation(line: 1724, column: 9, scope: !430, inlinedAt: !2080)
!2652 = !DILocation(line: 1724, column: 7, scope: !431, inlinedAt: !2080)
!2653 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 1728, column: 5, scope: !437, inlinedAt: !2080)
!2655 = !DILocation(line: 1725, column: 9, scope: !440, inlinedAt: !2080)
!2656 = !DILocation(line: 1725, column: 7, scope: !440, inlinedAt: !2080)
!2657 = !DILocation(line: 1731, column: 3, scope: !431, inlinedAt: !2080)
!2658 = !DILocation(line: 1153, column: 39, scope: !2082)
!2659 = !DILocation(line: 1153, column: 31, scope: !2082)
!2660 = !DILocation(line: 1157, column: 33, scope: !2089)
!2661 = !DILocation(line: 1157, column: 49, scope: !2089)
!2662 = !DILocation(line: 1157, column: 33, scope: !1990)
!2663 = !DILocation(line: 1158, column: 38, scope: !2088)
!2664 = !DILocation(line: 1159, column: 58, scope: !2088)
!2665 = !DILocation(line: 1160, column: 62, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2088, file: !11, line: 1160, column: 31)
!2667 = !DILocation(line: 1160, column: 46, scope: !2666)
!2668 = !DILocation(line: 1160, column: 44, scope: !2666)
!2669 = !DILocation(line: 1160, column: 35, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2666, file: !11, line: 1160, column: 35)
!2671 = !DILocation(line: 1160, column: 48, scope: !2670)
!2672 = !DILocation(line: 1160, column: 35, scope: !2666)
!2673 = !DILocation(line: 1161, column: 60, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2670, file: !11, line: 1160, column: 64)
!2675 = !DILocation(line: 1162, column: 31, scope: !2674)
!2676 = !DILocation(line: 1166, column: 42, scope: !2087)
!2677 = !DILocation(line: 1166, column: 40, scope: !2087)
!2678 = !DILocation(line: 1167, column: 50, scope: !2087)
!2679 = !DILocation(line: 1167, column: 31, scope: !2087)
!2680 = !DILocation(line: 1724, column: 7, scope: !430, inlinedAt: !2086)
!2681 = !DILocation(line: 1724, column: 12, scope: !430, inlinedAt: !2086)
!2682 = !DILocation(line: 1724, column: 9, scope: !430, inlinedAt: !2086)
!2683 = !DILocation(line: 1724, column: 7, scope: !431, inlinedAt: !2086)
!2684 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 1728, column: 5, scope: !437, inlinedAt: !2086)
!2686 = !DILocation(line: 1725, column: 9, scope: !440, inlinedAt: !2086)
!2687 = !DILocation(line: 1725, column: 7, scope: !440, inlinedAt: !2086)
!2688 = !DILocation(line: 1731, column: 3, scope: !431, inlinedAt: !2086)
!2689 = !DILocation(line: 1169, column: 39, scope: !2088)
!2690 = !DILocation(line: 1169, column: 31, scope: !2088)
!2691 = !DILocation(line: 1174, column: 44, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 1171, column: 29)
!2693 = !DILocation(line: 1175, column: 47, scope: !2692)
!2694 = !DILocation(line: 1176, column: 57, scope: !2692)
!2695 = !DILocation(line: 1176, column: 74, scope: !2692)
!2696 = !DILocation(line: 1176, column: 79, scope: !2692)
!2697 = !DILocation(line: 1177, column: 57, scope: !2692)
!2698 = !DILocation(line: 1176, column: 38, scope: !2692)
!2699 = !DILocation(line: 1176, column: 36, scope: !2692)
!2700 = !DILocation(line: 1179, column: 33, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 1179, column: 33)
!2702 = !DILocation(line: 1179, column: 40, scope: !2701)
!2703 = !DILocation(line: 1179, column: 33, scope: !1990)
!2704 = !DILocation(line: 1180, column: 35, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !11, line: 1180, column: 35)
!2706 = distinct !DILexicalBlock(scope: !2701, file: !11, line: 1179, column: 46)
!2707 = !DILocation(line: 1180, column: 59, scope: !2705)
!2708 = !DILocation(line: 1180, column: 35, scope: !2706)
!2709 = !DILocation(line: 1181, column: 61, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2705, file: !11, line: 1180, column: 65)
!2711 = !DILocation(line: 1182, column: 31, scope: !2710)
!2712 = !DILocation(line: 1185, column: 60, scope: !2706)
!2713 = !DILocation(line: 1185, column: 58, scope: !2706)
!2714 = !DILocation(line: 1186, column: 29, scope: !2706)
!2715 = !DILocation(line: 1187, column: 58, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2701, file: !11, line: 1186, column: 36)
!2717 = !DILocation(line: 1189, column: 29, scope: !1990)
!2718 = !DILocation(line: 1192, column: 56, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 1191, column: 29)
!2720 = !DILocation(line: 1193, column: 44, scope: !2719)
!2721 = !DILocation(line: 1194, column: 47, scope: !2719)
!2722 = !DILocation(line: 1195, column: 57, scope: !2719)
!2723 = !DILocation(line: 1195, column: 74, scope: !2719)
!2724 = !DILocation(line: 1195, column: 38, scope: !2719)
!2725 = !DILocation(line: 1195, column: 36, scope: !2719)
!2726 = !DILocation(line: 1197, column: 29, scope: !1990)
!2727 = !DILocation(line: 1201, column: 56, scope: !1990)
!2728 = !DILocation(line: 1202, column: 36, scope: !1990)
!2729 = !DILocation(line: 1203, column: 29, scope: !1990)
!2730 = !DILocation(line: 1206, column: 59, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 1205, column: 29)
!2732 = !DILocation(line: 1206, column: 39, scope: !2731)
!2733 = !DILocation(line: 1206, column: 37, scope: !2731)
!2734 = !DILocation(line: 1208, column: 33, scope: !2095)
!2735 = !DILocation(line: 1208, column: 41, scope: !2095)
!2736 = !DILocation(line: 1208, column: 33, scope: !1990)
!2737 = !DILocation(line: 1209, column: 59, scope: !2094)
!2738 = !DILocation(line: 1210, column: 38, scope: !2094)
!2739 = !DILocation(line: 1211, column: 58, scope: !2094)
!2740 = !DILocation(line: 1212, column: 62, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2094, file: !11, line: 1212, column: 31)
!2742 = !DILocation(line: 1212, column: 46, scope: !2741)
!2743 = !DILocation(line: 1212, column: 44, scope: !2741)
!2744 = !DILocation(line: 1212, column: 35, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2741, file: !11, line: 1212, column: 35)
!2746 = !DILocation(line: 1212, column: 48, scope: !2745)
!2747 = !DILocation(line: 1212, column: 35, scope: !2741)
!2748 = !DILocation(line: 1213, column: 60, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2745, file: !11, line: 1212, column: 64)
!2750 = !DILocation(line: 1214, column: 31, scope: !2749)
!2751 = !DILocation(line: 1218, column: 42, scope: !2093)
!2752 = !DILocation(line: 1218, column: 40, scope: !2093)
!2753 = !DILocation(line: 1219, column: 50, scope: !2093)
!2754 = !DILocation(line: 1219, column: 31, scope: !2093)
!2755 = !DILocation(line: 1724, column: 7, scope: !430, inlinedAt: !2092)
!2756 = !DILocation(line: 1724, column: 12, scope: !430, inlinedAt: !2092)
!2757 = !DILocation(line: 1724, column: 9, scope: !430, inlinedAt: !2092)
!2758 = !DILocation(line: 1724, column: 7, scope: !431, inlinedAt: !2092)
!2759 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 1728, column: 5, scope: !437, inlinedAt: !2092)
!2761 = !DILocation(line: 1725, column: 9, scope: !440, inlinedAt: !2092)
!2762 = !DILocation(line: 1725, column: 7, scope: !440, inlinedAt: !2092)
!2763 = !DILocation(line: 1731, column: 3, scope: !431, inlinedAt: !2092)
!2764 = !DILocation(line: 1221, column: 39, scope: !2094)
!2765 = !DILocation(line: 1221, column: 31, scope: !2094)
!2766 = !DILocation(line: 1224, column: 59, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !11, line: 1223, column: 31)
!2768 = distinct !DILexicalBlock(scope: !2095, file: !11, line: 1222, column: 36)
!2769 = !DILocation(line: 1225, column: 65, scope: !2767)
!2770 = !DILocation(line: 1225, column: 79, scope: !2767)
!2771 = !DILocation(line: 1225, column: 41, scope: !2767)
!2772 = !DILocation(line: 1225, column: 39, scope: !2767)
!2773 = !DILocation(line: 1227, column: 39, scope: !2768)
!2774 = !DILocation(line: 1227, column: 31, scope: !2768)
!2775 = !DILocation(line: 1232, column: 63, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !1990, file: !11, line: 1231, column: 29)
!2777 = !DILocation(line: 1232, column: 77, scope: !2776)
!2778 = !DILocation(line: 1232, column: 39, scope: !2776)
!2779 = !DILocation(line: 1232, column: 37, scope: !2776)
!2780 = !DILocation(line: 1234, column: 37, scope: !1990)
!2781 = !DILocation(line: 1234, column: 29, scope: !1990)
!2782 = !DILocation(line: 1236, column: 34, scope: !1991)
!2783 = !DILocation(line: 1252, column: 34, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !1980, file: !11, line: 1263, column: 3)
!2785 = !DILocation(line: 1252, column: 18, scope: !2784)
!2786 = !DILocation(line: 1252, column: 16, scope: !2784)
!2787 = !DILocation(line: 1252, column: 7, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2784, file: !11, line: 1252, column: 7)
!2789 = !DILocation(line: 1252, column: 20, scope: !2788)
!2790 = !DILocation(line: 1252, column: 7, scope: !2784)
!2791 = !DILocation(line: 1253, column: 32, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2788, file: !11, line: 1252, column: 36)
!2793 = !DILocation(line: 1254, column: 3, scope: !2792)
!2794 = !DILocation(line: 1258, column: 14, scope: !2099)
!2795 = !DILocation(line: 1258, column: 12, scope: !2099)
!2796 = !DILocation(line: 1259, column: 22, scope: !2099)
!2797 = !DILocation(line: 1259, column: 3, scope: !2099)
!2798 = !DILocation(line: 1724, column: 7, scope: !430, inlinedAt: !2098)
!2799 = !DILocation(line: 1724, column: 12, scope: !430, inlinedAt: !2098)
!2800 = !DILocation(line: 1724, column: 9, scope: !430, inlinedAt: !2098)
!2801 = !DILocation(line: 1724, column: 7, scope: !431, inlinedAt: !2098)
!2802 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 1728, column: 5, scope: !437, inlinedAt: !2098)
!2804 = !DILocation(line: 1725, column: 9, scope: !440, inlinedAt: !2098)
!2805 = !DILocation(line: 1725, column: 7, scope: !440, inlinedAt: !2098)
!2806 = !DILocation(line: 1731, column: 3, scope: !431, inlinedAt: !2098)
!2807 = !DILocation(line: 1261, column: 11, scope: !1980)
!2808 = !DILocation(line: 1261, column: 3, scope: !1980)
!2809 = !DILocation(line: 1263, column: 1, scope: !30)
!2810 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !31, file: !11, line: 1264, type: !15)
!2811 = !DILocation(line: 1264, column: 35, scope: !31)
!2812 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !31, file: !11, line: 1264, type: !15)
!2813 = !DILocation(line: 1264, column: 54, scope: !31)
!2814 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentIrpStack__Parameters__DeviceIoControl__IoControlCode", scope: !31, file: !11, line: 1265, type: !15)
!2815 = !DILocation(line: 1265, column: 7, scope: !31)
!2816 = !DILocation(line: 1265, column: 69, scope: !31)
!2817 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !31, file: !11, line: 1266, type: !15)
!2818 = !DILocation(line: 1266, column: 7, scope: !31)
!2819 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__PlayActive", scope: !31, file: !11, line: 1267, type: !15)
!2820 = !DILocation(line: 1267, column: 7, scope: !31)
!2821 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srb__CdbLength", scope: !31, file: !11, line: 1268, type: !15)
!2822 = !DILocation(line: 1268, column: 7, scope: !31)
!2823 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srb__TimeOutValue", scope: !31, file: !11, line: 1269, type: !15)
!2824 = !DILocation(line: 1269, column: 7, scope: !31)
!2825 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !31, file: !11, line: 1270, type: !15)
!2826 = !DILocation(line: 1270, column: 7, scope: !31)
!2827 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !31, file: !11, line: 1271, type: !15)
!2828 = !DILocation(line: 1271, column: 7, scope: !31)
!2829 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !31, file: !11, line: 1272, type: !15)
!2830 = !DILocation(line: 1272, column: 7, scope: !31)
!2831 = !DILocation(line: 1272, column: 25, scope: !31)
!2832 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srb", scope: !31, file: !11, line: 1273, type: !15)
!2833 = !DILocation(line: 1273, column: 7, scope: !31)
!2834 = !DILocation(line: 1273, column: 13, scope: !31)
!2835 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !31, file: !11, line: 1274, type: !15)
!2836 = !DILocation(line: 1274, column: 7, scope: !31)
!2837 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp13", scope: !31, file: !11, line: 1275, type: !15)
!2838 = !DILocation(line: 1275, column: 7, scope: !31)
!2839 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp14", scope: !31, file: !11, line: 1276, type: !15)
!2840 = !DILocation(line: 1276, column: 7, scope: !31)
!2841 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp15", scope: !31, file: !11, line: 1277, type: !15)
!2842 = !DILocation(line: 1277, column: 7, scope: !31)
!2843 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp16", scope: !31, file: !11, line: 1278, type: !15)
!2844 = !DILocation(line: 1278, column: 7, scope: !31)
!2845 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp17", scope: !31, file: !11, line: 1279, type: !15)
!2846 = !DILocation(line: 1279, column: 7, scope: !31)
!2847 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp18", scope: !31, file: !11, line: 1280, type: !15)
!2848 = !DILocation(line: 1280, column: 7, scope: !31)
!2849 = !DILocation(line: 1277, column: 15, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2851, file: !11, line: 1283, column: 3)
!2851 = distinct !DILexicalBlock(scope: !31, file: !11, line: 1282, column: 3)
!2852 = !DILocation(line: 1277, column: 7, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2850, file: !11, line: 1277, column: 7)
!2854 = !DILocation(line: 1277, column: 70, scope: !2853)
!2855 = !DILocation(line: 1277, column: 67, scope: !2853)
!2856 = !DILocation(line: 1720, column: 29, scope: !46, inlinedAt: !2857)
!2857 = distinct !DILocation(line: 1289, column: 7, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !11, line: 1286, column: 7)
!2859 = distinct !DILexicalBlock(scope: !2860, file: !11, line: 1285, column: 21)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !11, line: 1285, column: 9)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !11, line: 1285, column: 5)
!2862 = distinct !DILexicalBlock(scope: !2853, file: !11, line: 1277, column: 83)
!2863 = !DILocation(line: 1720, column: 39, scope: !46, inlinedAt: !2857)
!2864 = !DILocation(line: 1720, column: 29, scope: !46, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 1304, column: 3, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2851, file: !11, line: 1302, column: 3)
!2867 = !DILocation(line: 1720, column: 39, scope: !46, inlinedAt: !2865)
!2868 = !DILocation(line: 1277, column: 7, scope: !2850)
!2869 = !DILocation(line: 1279, column: 32, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2862, file: !11, line: 1278, column: 5)
!2871 = !DILocation(line: 1280, column: 33, scope: !2870)
!2872 = !DILocation(line: 1281, column: 20, scope: !2870)
!2873 = !DILocation(line: 1282, column: 23, scope: !2870)
!2874 = !DILocation(line: 1283, column: 33, scope: !2870)
!2875 = !DILocation(line: 1283, column: 50, scope: !2870)
!2876 = !DILocation(line: 1283, column: 14, scope: !2870)
!2877 = !DILocation(line: 1283, column: 12, scope: !2870)
!2878 = !DILocation(line: 1285, column: 9, scope: !2860)
!2879 = !DILocation(line: 1285, column: 16, scope: !2860)
!2880 = !DILocation(line: 1285, column: 9, scope: !2861)
!2881 = !DILocation(line: 1287, column: 31, scope: !2858)
!2882 = !DILocation(line: 1287, column: 29, scope: !2858)
!2883 = !DILocation(line: 1288, column: 18, scope: !2858)
!2884 = !DILocation(line: 1288, column: 16, scope: !2858)
!2885 = !DILocation(line: 1289, column: 26, scope: !2858)
!2886 = !DILocation(line: 1289, column: 7, scope: !2858)
!2887 = !DILocation(line: 1724, column: 7, scope: !430, inlinedAt: !2857)
!2888 = !DILocation(line: 1724, column: 12, scope: !430, inlinedAt: !2857)
!2889 = !DILocation(line: 1724, column: 9, scope: !430, inlinedAt: !2857)
!2890 = !DILocation(line: 1724, column: 7, scope: !431, inlinedAt: !2857)
!2891 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 1728, column: 5, scope: !437, inlinedAt: !2857)
!2893 = !DILocation(line: 1725, column: 9, scope: !440, inlinedAt: !2857)
!2894 = !DILocation(line: 1725, column: 7, scope: !440, inlinedAt: !2857)
!2895 = !DILocation(line: 1731, column: 3, scope: !431, inlinedAt: !2857)
!2896 = !DILocation(line: 1291, column: 15, scope: !2859)
!2897 = !DILocation(line: 1291, column: 7, scope: !2859)
!2898 = !DILocation(line: 1294, column: 3, scope: !2862)
!2899 = !DILocation(line: 1297, column: 35, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !11, line: 1295, column: 5)
!2901 = distinct !DILexicalBlock(scope: !2853, file: !11, line: 1294, column: 10)
!2902 = !DILocation(line: 1297, column: 49, scope: !2900)
!2903 = !DILocation(line: 1297, column: 11, scope: !2900)
!2904 = !DILocation(line: 1297, column: 9, scope: !2900)
!2905 = !DILocation(line: 1299, column: 13, scope: !2901)
!2906 = !DILocation(line: 1299, column: 5, scope: !2901)
!2907 = !DILocation(line: 1302, column: 27, scope: !2866)
!2908 = !DILocation(line: 1302, column: 25, scope: !2866)
!2909 = !DILocation(line: 1303, column: 14, scope: !2866)
!2910 = !DILocation(line: 1303, column: 12, scope: !2866)
!2911 = !DILocation(line: 1304, column: 22, scope: !2866)
!2912 = !DILocation(line: 1304, column: 3, scope: !2866)
!2913 = !DILocation(line: 1724, column: 7, scope: !430, inlinedAt: !2865)
!2914 = !DILocation(line: 1724, column: 12, scope: !430, inlinedAt: !2865)
!2915 = !DILocation(line: 1724, column: 9, scope: !430, inlinedAt: !2865)
!2916 = !DILocation(line: 1724, column: 7, scope: !431, inlinedAt: !2865)
!2917 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 1728, column: 5, scope: !437, inlinedAt: !2865)
!2919 = !DILocation(line: 1725, column: 9, scope: !440, inlinedAt: !2865)
!2920 = !DILocation(line: 1725, column: 7, scope: !440, inlinedAt: !2865)
!2921 = !DILocation(line: 1731, column: 3, scope: !431, inlinedAt: !2865)
!2922 = !DILocation(line: 1306, column: 11, scope: !2851)
!2923 = !DILocation(line: 1306, column: 3, scope: !2851)
!2924 = !DILocation(line: 1308, column: 1, scope: !31)
!2925 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Toc", arg: 1, scope: !32, file: !11, line: 1309, type: !15)
!2926 = !DILocation(line: 1309, column: 34, scope: !32)
!2927 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !32, file: !11, line: 1310, type: !15)
!2928 = !DILocation(line: 1310, column: 7, scope: !32)
!2929 = !DILocation(line: 1310, column: 15, scope: !32)
!2930 = !DILocation(line: 1313, column: 7, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !11, line: 1313, column: 7)
!2932 = distinct !DILexicalBlock(scope: !32, file: !11, line: 1312, column: 3)
!2933 = !DILocation(line: 1313, column: 7, scope: !2932)
!2934 = !DILocation(line: 1314, column: 11, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2931, file: !11, line: 1313, column: 14)
!2936 = !DILocation(line: 1315, column: 3, scope: !2935)
!2937 = !DILocation(line: 1318, column: 3, scope: !2932)
!2938 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !35, file: !11, line: 1321, type: !15)
!2939 = !DILocation(line: 1321, column: 25, scope: !35)
!2940 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !35, file: !11, line: 1321, type: !15)
!2941 = !DILocation(line: 1321, column: 44, scope: !35)
!2942 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 3, scope: !35, file: !11, line: 1321, type: !15)
!2943 = !DILocation(line: 1321, column: 54, scope: !35)
!2944 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__PendingReturned", scope: !35, file: !11, line: 1322, type: !15)
!2945 = !DILocation(line: 1322, column: 7, scope: !35)
!2946 = !DILocation(line: 1322, column: 30, scope: !35)
!2947 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__AssociatedIrp__SystemBuffer", scope: !35, file: !11, line: 1323, type: !15)
!2948 = !DILocation(line: 1323, column: 7, scope: !35)
!2949 = !DILocation(line: 1323, column: 42, scope: !35)
!2950 = !DILocation(line: 1326, column: 7, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !11, line: 1326, column: 7)
!2952 = distinct !DILexicalBlock(scope: !35, file: !11, line: 1325, column: 3)
!2953 = !DILocation(line: 1309, column: 34, scope: !32, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 1339, column: 5, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !11, line: 1338, column: 5)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !11, line: 1337, column: 22)
!2957 = distinct !DILexicalBlock(scope: !2952, file: !11, line: 1337, column: 7)
!2958 = !DILocation(line: 1310, column: 7, scope: !32, inlinedAt: !2954)
!2959 = !DILocation(line: 1326, column: 7, scope: !2952)
!2960 = !DILocation(line: 1327, column: 9, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !11, line: 1327, column: 9)
!2962 = distinct !DILexicalBlock(scope: !2951, file: !11, line: 1326, column: 29)
!2963 = !DILocation(line: 1327, column: 16, scope: !2961)
!2964 = !DILocation(line: 1327, column: 9, scope: !2962)
!2965 = !DILocation(line: 1328, column: 14, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2961, file: !11, line: 1327, column: 22)
!2967 = !DILocation(line: 1329, column: 5, scope: !2966)
!2968 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 1331, column: 7, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !11, line: 1330, column: 7)
!2971 = distinct !DILexicalBlock(scope: !2961, file: !11, line: 1329, column: 12)
!2972 = !DILocation(line: 1334, column: 3, scope: !2962)
!2973 = !DILocation(line: 1337, column: 7, scope: !2957)
!2974 = !DILocation(line: 1337, column: 16, scope: !2957)
!2975 = !DILocation(line: 1337, column: 7, scope: !2952)
!2976 = !DILocation(line: 1339, column: 29, scope: !2955)
!2977 = !DILocation(line: 1339, column: 5, scope: !2955)
!2978 = !DILocation(line: 1310, column: 15, scope: !32, inlinedAt: !2954)
!2979 = !DILocation(line: 1313, column: 7, scope: !2931, inlinedAt: !2954)
!2980 = !DILocation(line: 1313, column: 7, scope: !2932, inlinedAt: !2954)
!2981 = !DILocation(line: 1314, column: 11, scope: !2935, inlinedAt: !2954)
!2982 = !DILocation(line: 1315, column: 3, scope: !2935, inlinedAt: !2954)
!2983 = !DILocation(line: 1318, column: 3, scope: !2932, inlinedAt: !2954)
!2984 = !DILocation(line: 1341, column: 3, scope: !2956)
!2985 = !DILocation(line: 1344, column: 11, scope: !2952)
!2986 = !DILocation(line: 1344, column: 3, scope: !2952)
!2987 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !36, file: !11, line: 1347, type: !15)
!2988 = !DILocation(line: 1347, column: 35, scope: !36)
!2989 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !36, file: !11, line: 1347, type: !15)
!2990 = !DILocation(line: 1347, column: 54, scope: !36)
!2991 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentIrpStack__Parameters__DeviceIoControl__IoControlCode", scope: !36, file: !11, line: 1348, type: !15)
!2992 = !DILocation(line: 1348, column: 7, scope: !36)
!2993 = !DILocation(line: 1348, column: 69, scope: !36)
!2994 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__TargetDeviceObject", scope: !36, file: !11, line: 1349, type: !15)
!2995 = !DILocation(line: 1349, column: 7, scope: !36)
!2996 = !DILocation(line: 1349, column: 45, scope: !36)
!2997 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Control", scope: !36, file: !11, line: 1350, type: !15)
!2998 = !DILocation(line: 1350, column: 7, scope: !36)
!2999 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !36, file: !11, line: 1351, type: !15)
!3000 = !DILocation(line: 1351, column: 7, scope: !36)
!3001 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___0", scope: !36, file: !11, line: 1352, type: !15)
!3002 = !DILocation(line: 1352, column: 7, scope: !36)
!3003 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp8", scope: !36, file: !11, line: 1353, type: !15)
!3004 = !DILocation(line: 1353, column: 7, scope: !36)
!3005 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp9", scope: !36, file: !11, line: 1354, type: !15)
!3006 = !DILocation(line: 1354, column: 7, scope: !36)
!3007 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp10", scope: !36, file: !11, line: 1355, type: !15)
!3008 = !DILocation(line: 1355, column: 7, scope: !36)
!3009 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp11", scope: !36, file: !11, line: 1356, type: !15)
!3010 = !DILocation(line: 1356, column: 7, scope: !36)
!3011 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp12", scope: !36, file: !11, line: 1357, type: !15)
!3012 = !DILocation(line: 1357, column: 7, scope: !36)
!3013 = !DILocation(line: 1355, column: 14, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !11, line: 1360, column: 3)
!3015 = distinct !DILexicalBlock(scope: !36, file: !11, line: 1359, column: 3)
!3016 = !DILocation(line: 1355, column: 15, scope: !3014)
!3017 = !DILocation(line: 1355, column: 7, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3014, file: !11, line: 1355, column: 7)
!3019 = !DILocation(line: 1355, column: 70, scope: !3018)
!3020 = !DILocation(line: 1355, column: 67, scope: !3018)
!3021 = !DILocation(line: 1355, column: 7, scope: !3014)
!3022 = !DILocation(line: 1356, column: 9, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3024, file: !11, line: 1356, column: 9)
!3024 = distinct !DILexicalBlock(scope: !3018, file: !11, line: 1355, column: 83)
!3025 = !DILocation(line: 1356, column: 14, scope: !3023)
!3026 = !DILocation(line: 1356, column: 11, scope: !3023)
!3027 = !DILocation(line: 1356, column: 9, scope: !3024)
!3028 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 1358, column: 7, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !11, line: 1357, column: 7)
!3031 = distinct !DILexicalBlock(scope: !3023, file: !11, line: 1356, column: 18)
!3032 = !DILocation(line: 1360, column: 5, scope: !3031)
!3033 = !DILocation(line: 1361, column: 11, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !11, line: 1361, column: 11)
!3035 = distinct !DILexicalBlock(scope: !3023, file: !11, line: 1360, column: 12)
!3036 = !DILocation(line: 1361, column: 26, scope: !3034)
!3037 = !DILocation(line: 1361, column: 11, scope: !3035)
!3038 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 1363, column: 9, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !11, line: 1362, column: 9)
!3041 = distinct !DILexicalBlock(scope: !3034, file: !11, line: 1361, column: 32)
!3042 = !DILocation(line: 1365, column: 7, scope: !3041)
!3043 = !DILocation(line: 1366, column: 24, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3034, file: !11, line: 1365, column: 14)
!3045 = !DILocation(line: 1367, column: 17, scope: !3044)
!3046 = !DILocation(line: 1371, column: 20, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3024, file: !11, line: 1370, column: 5)
!3048 = !DILocation(line: 1375, column: 25, scope: !3047)
!3049 = !DILocation(line: 1375, column: 62, scope: !3047)
!3050 = !DILocation(line: 1375, column: 11, scope: !3047)
!3051 = !DILocation(line: 1375, column: 9, scope: !3047)
!3052 = !DILocation(line: 1377, column: 13, scope: !3024)
!3053 = !DILocation(line: 1377, column: 5, scope: !3024)
!3054 = !DILocation(line: 1380, column: 39, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3056, file: !11, line: 1379, column: 5)
!3056 = distinct !DILexicalBlock(scope: !3018, file: !11, line: 1378, column: 10)
!3057 = !DILocation(line: 1380, column: 53, scope: !3055)
!3058 = !DILocation(line: 1380, column: 15, scope: !3055)
!3059 = !DILocation(line: 1380, column: 13, scope: !3055)
!3060 = !DILocation(line: 1382, column: 13, scope: !3056)
!3061 = !DILocation(line: 1382, column: 5, scope: !3056)
!3062 = !DILocation(line: 1386, column: 1, scope: !36)
!3063 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !37, file: !11, line: 1387, type: !15)
!3064 = !DILocation(line: 1387, column: 38, scope: !37)
!3065 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !37, file: !11, line: 1387, type: !15)
!3066 = !DILocation(line: 1387, column: 57, scope: !37)
!3067 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__TargetDeviceObject", scope: !37, file: !11, line: 1388, type: !15)
!3068 = !DILocation(line: 1388, column: 7, scope: !37)
!3069 = !DILocation(line: 1388, column: 45, scope: !37)
!3070 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "event", scope: !37, file: !11, line: 1389, type: !15)
!3071 = !DILocation(line: 1389, column: 7, scope: !37)
!3072 = !DILocation(line: 1389, column: 15, scope: !37)
!3073 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !37, file: !11, line: 1390, type: !15)
!3074 = !DILocation(line: 1390, column: 7, scope: !37)
!3075 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Control", scope: !37, file: !11, line: 1391, type: !15)
!3076 = !DILocation(line: 1391, column: 7, scope: !37)
!3077 = !DILocation(line: 1394, column: 7, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3079, file: !11, line: 1394, column: 7)
!3079 = distinct !DILexicalBlock(scope: !37, file: !11, line: 1393, column: 3)
!3080 = !DILocation(line: 1394, column: 12, scope: !3078)
!3081 = !DILocation(line: 1394, column: 9, scope: !3078)
!3082 = !DILocation(line: 1394, column: 7, scope: !3079)
!3083 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 1396, column: 5, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !11, line: 1395, column: 5)
!3086 = distinct !DILexicalBlock(scope: !3078, file: !11, line: 1394, column: 16)
!3087 = !DILocation(line: 1398, column: 3, scope: !3086)
!3088 = !DILocation(line: 1399, column: 9, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3090, file: !11, line: 1399, column: 9)
!3090 = distinct !DILexicalBlock(scope: !3078, file: !11, line: 1398, column: 10)
!3091 = !DILocation(line: 1399, column: 24, scope: !3089)
!3092 = !DILocation(line: 1399, column: 9, scope: !3090)
!3093 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 1401, column: 7, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !11, line: 1400, column: 7)
!3096 = distinct !DILexicalBlock(scope: !3089, file: !11, line: 1399, column: 30)
!3097 = !DILocation(line: 1403, column: 5, scope: !3096)
!3098 = !DILocation(line: 1404, column: 22, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3089, file: !11, line: 1403, column: 12)
!3100 = !DILocation(line: 1405, column: 15, scope: !3099)
!3101 = !DILocation(line: 1409, column: 18, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3079, file: !11, line: 1408, column: 3)
!3103 = !DILocation(line: 1413, column: 26, scope: !3102)
!3104 = !DILocation(line: 1413, column: 63, scope: !3102)
!3105 = !DILocation(line: 1413, column: 12, scope: !3102)
!3106 = !DILocation(line: 1413, column: 10, scope: !3102)
!3107 = !DILocation(line: 1414, column: 10, scope: !3102)
!3108 = !DILocation(line: 1416, column: 7, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3079, file: !11, line: 1416, column: 7)
!3110 = !DILocation(line: 1416, column: 7, scope: !3079)
!3111 = !DILocation(line: 1418, column: 27, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !11, line: 1417, column: 5)
!3113 = distinct !DILexicalBlock(scope: !3109, file: !11, line: 1416, column: 15)
!3114 = !DILocation(line: 1418, column: 34, scope: !3112)
!3115 = !DILocation(line: 1418, column: 45, scope: !3112)
!3116 = !DILocation(line: 1418, column: 5, scope: !3112)
!3117 = !DILocation(line: 1419, column: 14, scope: !3112)
!3118 = !DILocation(line: 1419, column: 12, scope: !3112)
!3119 = !DILocation(line: 1421, column: 3, scope: !3113)
!3120 = !DILocation(line: 1424, column: 11, scope: !3079)
!3121 = !DILocation(line: 1424, column: 3, scope: !3079)
!3122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DriverObject", arg: 1, scope: !38, file: !11, line: 1427, type: !15)
!3123 = !DILocation(line: 1427, column: 24, scope: !38)
!3124 = !DILocation(line: 1431, column: 3, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !38, file: !11, line: 1430, column: 3)
!3126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !39, file: !11, line: 1434, type: !15)
!3127 = !DILocation(line: 1434, column: 22, scope: !39)
!3128 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !39, file: !11, line: 1434, type: !15)
!3129 = !DILocation(line: 1434, column: 41, scope: !39)
!3130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !39, file: !11, line: 1435, type: !15)
!3131 = !DILocation(line: 1435, column: 7, scope: !39)
!3132 = !DILocation(line: 1435, column: 30, scope: !39)
!3133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !39, file: !11, line: 1436, type: !15)
!3134 = !DILocation(line: 1436, column: 7, scope: !39)
!3135 = !DILocation(line: 1436, column: 50, scope: !39)
!3136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__TargetDeviceObject", scope: !39, file: !11, line: 1437, type: !15)
!3137 = !DILocation(line: 1437, column: 7, scope: !39)
!3138 = !DILocation(line: 1437, column: 45, scope: !39)
!3139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !39, file: !11, line: 1438, type: !15)
!3140 = !DILocation(line: 1438, column: 7, scope: !39)
!3141 = !DILocation(line: 1441, column: 7, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3143, file: !11, line: 1441, column: 7)
!3143 = distinct !DILexicalBlock(scope: !39, file: !11, line: 1440, column: 3)
!3144 = !DILocation(line: 1441, column: 12, scope: !3142)
!3145 = !DILocation(line: 1441, column: 9, scope: !3142)
!3146 = !DILocation(line: 1441, column: 7, scope: !3143)
!3147 = !DILocation(line: 1442, column: 9, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3142, file: !11, line: 1441, column: 16)
!3149 = !DILocation(line: 1442, column: 7, scope: !3148)
!3150 = !DILocation(line: 1443, column: 3, scope: !3148)
!3151 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 1445, column: 5, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3154, file: !11, line: 1444, column: 5)
!3154 = distinct !DILexicalBlock(scope: !3142, file: !11, line: 1443, column: 10)
!3155 = !DILocation(line: 1449, column: 24, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3143, file: !11, line: 1448, column: 3)
!3157 = !DILocation(line: 1450, column: 44, scope: !3156)
!3158 = !DILocation(line: 1451, column: 22, scope: !3156)
!3159 = !DILocation(line: 1451, column: 59, scope: !3156)
!3160 = !DILocation(line: 1451, column: 9, scope: !3156)
!3161 = !DILocation(line: 1451, column: 7, scope: !3156)
!3162 = !DILocation(line: 1453, column: 11, scope: !3143)
!3163 = !DILocation(line: 1453, column: 3, scope: !3143)
!3164 = !DILocation(line: 1460, column: 7, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !40, file: !11, line: 1459, column: 3)
!3166 = !DILocation(line: 1460, column: 5, scope: !3165)
!3167 = !DILocation(line: 1461, column: 13, scope: !3165)
!3168 = !DILocation(line: 1462, column: 20, scope: !3165)
!3169 = !DILocation(line: 1462, column: 18, scope: !3165)
!3170 = !DILocation(line: 1463, column: 23, scope: !3165)
!3171 = !DILocation(line: 1463, column: 21, scope: !3165)
!3172 = !DILocation(line: 1464, column: 20, scope: !3165)
!3173 = !DILocation(line: 1464, column: 18, scope: !3165)
!3174 = !DILocation(line: 1465, column: 14, scope: !3165)
!3175 = !DILocation(line: 1465, column: 12, scope: !3165)
!3176 = !DILocation(line: 1466, column: 12, scope: !3165)
!3177 = !DILocation(line: 1466, column: 10, scope: !3165)
!3178 = !DILocation(line: 1467, column: 3, scope: !3165)
!3179 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pirp__IoStatus__Status", scope: !41, file: !11, line: 1471, type: !15)
!3180 = !DILocation(line: 1471, column: 7, scope: !41)
!3181 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !41, file: !11, line: 1472, type: !15)
!3182 = !DILocation(line: 1472, column: 7, scope: !41)
!3183 = !DILocation(line: 1472, column: 11, scope: !41)
!3184 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !41, file: !11, line: 1473, type: !15)
!3185 = !DILocation(line: 1473, column: 7, scope: !41)
!3186 = !DILocation(line: 1473, column: 16, scope: !41)
!3187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp", scope: !41, file: !11, line: 1474, type: !15)
!3188 = !DILocation(line: 1474, column: 7, scope: !41)
!3189 = !DILocation(line: 1474, column: 13, scope: !41)
!3190 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "we_should_unload", scope: !41, file: !11, line: 1475, type: !15)
!3191 = !DILocation(line: 1475, column: 7, scope: !41)
!3192 = !DILocation(line: 1475, column: 26, scope: !41)
!3193 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp_choice", scope: !41, file: !11, line: 1476, type: !15)
!3194 = !DILocation(line: 1476, column: 7, scope: !41)
!3195 = !DILocation(line: 1476, column: 20, scope: !41)
!3196 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devobj", scope: !41, file: !11, line: 1477, type: !15)
!3197 = !DILocation(line: 1477, column: 7, scope: !41)
!3198 = !DILocation(line: 1477, column: 16, scope: !41)
!3199 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp9", scope: !41, file: !11, line: 1478, type: !15)
!3200 = !DILocation(line: 1478, column: 7, scope: !41)
!3201 = !DILocation(line: 1483, column: 5, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !11, line: 1481, column: 3)
!3203 = distinct !DILexicalBlock(scope: !41, file: !11, line: 1480, column: 3)
!3204 = !DILocation(line: 1484, column: 12, scope: !3202)
!3205 = !DILocation(line: 1485, column: 6, scope: !3202)
!3206 = !DILocation(line: 1486, column: 6, scope: !3202)
!3207 = !DILocation(line: 1487, column: 9, scope: !3202)
!3208 = !DILocation(line: 1488, column: 9, scope: !3202)
!3209 = !DILocation(line: 1489, column: 8, scope: !3202)
!3210 = !DILocation(line: 1490, column: 8, scope: !3202)
!3211 = !DILocation(line: 1491, column: 7, scope: !3202)
!3212 = !DILocation(line: 1492, column: 10, scope: !3202)
!3213 = !DILocation(line: 1493, column: 12, scope: !3202)
!3214 = !DILocation(line: 1494, column: 18, scope: !3202)
!3215 = !DILocation(line: 1495, column: 21, scope: !3202)
!3216 = !DILocation(line: 1496, column: 18, scope: !3202)
!3217 = !DILocation(line: 1497, column: 13, scope: !3202)
!3218 = !DILocation(line: 1498, column: 11, scope: !3202)
!3219 = !DILocation(line: 1499, column: 12, scope: !3202)
!3220 = !DILocation(line: 1500, column: 8, scope: !3202)
!3221 = !DILocation(line: 1501, column: 13, scope: !3202)
!3222 = !DILocation(line: 1502, column: 13, scope: !3202)
!3223 = !DILocation(line: 1503, column: 14, scope: !3202)
!3224 = !DILocation(line: 1504, column: 25, scope: !3202)
!3225 = !DILocation(line: 1482, column: 10, scope: !3202)
!3226 = !DILocation(line: 1482, column: 8, scope: !3202)
!3227 = !DILocation(line: 67, column: 12, scope: !87, inlinedAt: !3228)
!3228 = distinct !DILocation(line: 1483, column: 3, scope: !3202)
!3229 = !DILocation(line: 68, column: 6, scope: !87, inlinedAt: !3228)
!3230 = !DILocation(line: 69, column: 6, scope: !87, inlinedAt: !3228)
!3231 = !DILocation(line: 70, column: 9, scope: !87, inlinedAt: !3228)
!3232 = !DILocation(line: 71, column: 9, scope: !87, inlinedAt: !3228)
!3233 = !DILocation(line: 72, column: 8, scope: !87, inlinedAt: !3228)
!3234 = !DILocation(line: 73, column: 8, scope: !87, inlinedAt: !3228)
!3235 = !DILocation(line: 74, column: 7, scope: !87, inlinedAt: !3228)
!3236 = !DILocation(line: 75, column: 7, scope: !87, inlinedAt: !3228)
!3237 = !DILocation(line: 75, column: 5, scope: !87, inlinedAt: !3228)
!3238 = !DILocation(line: 76, column: 10, scope: !87, inlinedAt: !3228)
!3239 = !DILocation(line: 77, column: 12, scope: !87, inlinedAt: !3228)
!3240 = !DILocation(line: 78, column: 18, scope: !87, inlinedAt: !3228)
!3241 = !DILocation(line: 79, column: 21, scope: !87, inlinedAt: !3228)
!3242 = !DILocation(line: 80, column: 18, scope: !87, inlinedAt: !3228)
!3243 = !DILocation(line: 81, column: 13, scope: !87, inlinedAt: !3228)
!3244 = !DILocation(line: 1485, column: 7, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3203, file: !11, line: 1485, column: 7)
!3246 = !DILocation(line: 1485, column: 14, scope: !3245)
!3247 = !DILocation(line: 1427, column: 24, scope: !38, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 1547, column: 7, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3250, file: !11, line: 1546, column: 7)
!3250 = distinct !DILexicalBlock(scope: !3251, file: !11, line: 1545, column: 27)
!3251 = distinct !DILexicalBlock(scope: !3252, file: !11, line: 1545, column: 9)
!3252 = distinct !DILexicalBlock(scope: !3245, file: !11, line: 1485, column: 20)
!3253 = !DILocation(line: 1485, column: 7, scope: !3203)
!3254 = !DILocation(line: 1486, column: 9, scope: !3252)
!3255 = !DILocation(line: 1486, column: 7, scope: !3252)
!3256 = !DILocation(line: 1487, column: 15, scope: !3252)
!3257 = !DILocation(line: 1488, column: 22, scope: !3252)
!3258 = !DILocation(line: 1488, column: 20, scope: !3252)
!3259 = !DILocation(line: 1489, column: 25, scope: !3252)
!3260 = !DILocation(line: 1489, column: 23, scope: !3252)
!3261 = !DILocation(line: 1490, column: 22, scope: !3252)
!3262 = !DILocation(line: 1490, column: 20, scope: !3252)
!3263 = !DILocation(line: 1491, column: 16, scope: !3252)
!3264 = !DILocation(line: 1491, column: 14, scope: !3252)
!3265 = !DILocation(line: 1492, column: 14, scope: !3252)
!3266 = !DILocation(line: 1492, column: 12, scope: !3252)
!3267 = !DILocation(line: 1493, column: 28, scope: !3252)
!3268 = !DILocation(line: 1494, column: 14, scope: !3252)
!3269 = !DILocation(line: 1495, column: 9, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3252, file: !11, line: 1495, column: 9)
!3271 = !DILocation(line: 1495, column: 20, scope: !3270)
!3272 = !DILocation(line: 1495, column: 9, scope: !3252)
!3273 = !DILocation(line: 1496, column: 30, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3270, file: !11, line: 1495, column: 26)
!3275 = !DILocation(line: 1497, column: 16, scope: !3274)
!3276 = !DILocation(line: 1498, column: 5, scope: !3274)
!3277 = !DILocation(line: 1460, column: 7, scope: !3165, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 1502, column: 5, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3252, file: !11, line: 1499, column: 5)
!3280 = !DILocation(line: 1460, column: 5, scope: !3165, inlinedAt: !3278)
!3281 = !DILocation(line: 1461, column: 13, scope: !3165, inlinedAt: !3278)
!3282 = !DILocation(line: 1462, column: 20, scope: !3165, inlinedAt: !3278)
!3283 = !DILocation(line: 1462, column: 18, scope: !3165, inlinedAt: !3278)
!3284 = !DILocation(line: 1463, column: 23, scope: !3165, inlinedAt: !3278)
!3285 = !DILocation(line: 1463, column: 21, scope: !3165, inlinedAt: !3278)
!3286 = !DILocation(line: 1464, column: 20, scope: !3165, inlinedAt: !3278)
!3287 = !DILocation(line: 1464, column: 18, scope: !3165, inlinedAt: !3278)
!3288 = !DILocation(line: 1465, column: 14, scope: !3165, inlinedAt: !3278)
!3289 = !DILocation(line: 1465, column: 12, scope: !3165, inlinedAt: !3278)
!3290 = !DILocation(line: 1466, column: 12, scope: !3165, inlinedAt: !3278)
!3291 = !DILocation(line: 1466, column: 10, scope: !3165, inlinedAt: !3278)
!3292 = !DILocation(line: 1504, column: 9, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3294, file: !11, line: 1504, column: 9)
!3294 = distinct !DILexicalBlock(scope: !3252, file: !11, line: 1504, column: 5)
!3295 = !DILocation(line: 1504, column: 16, scope: !3293)
!3296 = !DILocation(line: 1504, column: 9, scope: !3294)
!3297 = !DILocation(line: 1505, column: 7, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3293, file: !11, line: 1504, column: 21)
!3299 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_1", scope: !3252, file: !11, line: 1509, type: !15)
!3300 = !DILocation(line: 1509, column: 9, scope: !3252)
!3301 = !DILocation(line: 1510, column: 17, scope: !3252)
!3302 = !DILocation(line: 1510, column: 15, scope: !3252)
!3303 = !DILocation(line: 1511, column: 9, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3252, file: !11, line: 1511, column: 9)
!3305 = !DILocation(line: 1511, column: 19, scope: !3304)
!3306 = !DILocation(line: 1511, column: 9, scope: !3252)
!3307 = !DILocation(line: 1512, column: 7, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3304, file: !11, line: 1511, column: 25)
!3309 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_2", scope: !3310, file: !11, line: 1512, type: !15)
!3310 = distinct !DILexicalBlock(scope: !3304, file: !11, line: 1513, column: 12)
!3311 = !DILocation(line: 1512, column: 11, scope: !3310)
!3312 = !DILocation(line: 1513, column: 19, scope: !3310)
!3313 = !DILocation(line: 1513, column: 17, scope: !3310)
!3314 = !DILocation(line: 1514, column: 11, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3310, file: !11, line: 1514, column: 11)
!3316 = !DILocation(line: 1514, column: 21, scope: !3315)
!3317 = !DILocation(line: 1514, column: 11, scope: !3310)
!3318 = !DILocation(line: 1515, column: 9, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3315, file: !11, line: 1514, column: 27)
!3320 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_3", scope: !3321, file: !11, line: 1515, type: !15)
!3321 = distinct !DILexicalBlock(scope: !3315, file: !11, line: 1516, column: 14)
!3322 = !DILocation(line: 1515, column: 13, scope: !3321)
!3323 = !DILocation(line: 1516, column: 21, scope: !3321)
!3324 = !DILocation(line: 1516, column: 19, scope: !3321)
!3325 = !DILocation(line: 1517, column: 13, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3321, file: !11, line: 1517, column: 13)
!3327 = !DILocation(line: 1517, column: 23, scope: !3326)
!3328 = !DILocation(line: 1517, column: 13, scope: !3321)
!3329 = !DILocation(line: 1518, column: 11, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3326, file: !11, line: 1517, column: 29)
!3331 = !DILocation(line: 1520, column: 11, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3326, file: !11, line: 1519, column: 16)
!3333 = !DILocation(line: 1520, column: 15, scope: !3332)
!3334 = !DILocation(line: 1520, column: 18, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3332, file: !11, line: 1520, column: 15)
!3336 = !DILocation(line: 1523, column: 43, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3338, file: !11, line: 1522, column: 13)
!3338 = distinct !DILexicalBlock(scope: !3335, file: !11, line: 1520, column: 18)
!3339 = !DILocation(line: 1523, column: 51, scope: !3337)
!3340 = !DILocation(line: 1523, column: 22, scope: !3337)
!3341 = !DILocation(line: 1523, column: 20, scope: !3337)
!3342 = !DILocation(line: 1525, column: 13, scope: !3338)
!3343 = !DILocation(line: 1528, column: 33, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3338, file: !11, line: 1527, column: 13)
!3345 = !DILocation(line: 1528, column: 41, scope: !3344)
!3346 = !DILocation(line: 1528, column: 22, scope: !3344)
!3347 = !DILocation(line: 1528, column: 20, scope: !3344)
!3348 = !DILocation(line: 1530, column: 13, scope: !3338)
!3349 = !DILocation(line: 1533, column: 35, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3338, file: !11, line: 1532, column: 13)
!3351 = !DILocation(line: 1533, column: 43, scope: !3350)
!3352 = !DILocation(line: 1533, column: 22, scope: !3350)
!3353 = !DILocation(line: 1533, column: 20, scope: !3350)
!3354 = !DILocation(line: 1535, column: 13, scope: !3338)
!3355 = !DILocation(line: 1537, column: 13, scope: !3338)
!3356 = !DILocation(line: 1538, column: 18, scope: !3335)
!3357 = !DILocation(line: 1545, column: 9, scope: !3251)
!3358 = !DILocation(line: 1545, column: 9, scope: !3252)
!3359 = !DILocation(line: 1547, column: 21, scope: !3249)
!3360 = !DILocation(line: 1547, column: 7, scope: !3249)
!3361 = !DILocation(line: 1431, column: 3, scope: !3125, inlinedAt: !3248)
!3362 = !DILocation(line: 1549, column: 5, scope: !3250)
!3363 = !DILocation(line: 1550, column: 3, scope: !3252)
!3364 = !DILocation(line: 1555, column: 7, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3203, file: !11, line: 1555, column: 7)
!3366 = !DILocation(line: 1555, column: 14, scope: !3365)
!3367 = !DILocation(line: 1555, column: 7, scope: !3203)
!3368 = !DILocation(line: 1556, column: 9, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !11, line: 1556, column: 9)
!3370 = distinct !DILexicalBlock(scope: !3365, file: !11, line: 1555, column: 20)
!3371 = !DILocation(line: 1556, column: 14, scope: !3369)
!3372 = !DILocation(line: 1556, column: 11, scope: !3369)
!3373 = !DILocation(line: 1556, column: 9, scope: !3370)
!3374 = !DILocation(line: 1557, column: 11, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3369, file: !11, line: 1556, column: 18)
!3376 = !DILocation(line: 1557, column: 9, scope: !3375)
!3377 = !DILocation(line: 1558, column: 5, scope: !3375)
!3378 = !DILocation(line: 1559, column: 7, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3369, file: !11, line: 1558, column: 12)
!3380 = !DILocation(line: 1561, column: 3, scope: !3370)
!3381 = !DILocation(line: 1561, column: 10, scope: !3365)
!3382 = !DILocation(line: 1563, column: 9, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !11, line: 1563, column: 9)
!3384 = distinct !DILexicalBlock(scope: !3365, file: !11, line: 1561, column: 10)
!3385 = !DILocation(line: 1563, column: 16, scope: !3383)
!3386 = !DILocation(line: 1563, column: 9, scope: !3384)
!3387 = !DILocation(line: 1564, column: 11, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !11, line: 1564, column: 11)
!3389 = distinct !DILexicalBlock(scope: !3383, file: !11, line: 1563, column: 22)
!3390 = !DILocation(line: 1564, column: 16, scope: !3388)
!3391 = !DILocation(line: 1564, column: 13, scope: !3388)
!3392 = !DILocation(line: 1564, column: 11, scope: !3389)
!3393 = !DILocation(line: 1565, column: 13, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3388, file: !11, line: 1564, column: 22)
!3395 = !DILocation(line: 1565, column: 11, scope: !3394)
!3396 = !DILocation(line: 1566, column: 7, scope: !3394)
!3397 = !DILocation(line: 1567, column: 9, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3388, file: !11, line: 1566, column: 14)
!3399 = !DILocation(line: 1569, column: 5, scope: !3389)
!3400 = !DILocation(line: 1569, column: 12, scope: !3383)
!3401 = !DILocation(line: 1571, column: 11, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3403, file: !11, line: 1571, column: 11)
!3403 = distinct !DILexicalBlock(scope: !3383, file: !11, line: 1569, column: 12)
!3404 = !DILocation(line: 1571, column: 16, scope: !3402)
!3405 = !DILocation(line: 1571, column: 13, scope: !3402)
!3406 = !DILocation(line: 1571, column: 11, scope: !3403)
!3407 = !DILocation(line: 1574, column: 13, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3409, file: !11, line: 1574, column: 13)
!3409 = distinct !DILexicalBlock(scope: !3402, file: !11, line: 1571, column: 26)
!3410 = !DILocation(line: 1574, column: 20, scope: !3408)
!3411 = !DILocation(line: 1574, column: 13, scope: !3409)
!3412 = !DILocation(line: 1577, column: 15, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3414, file: !11, line: 1577, column: 15)
!3414 = distinct !DILexicalBlock(scope: !3408, file: !11, line: 1574, column: 27)
!3415 = !DILocation(line: 1577, column: 20, scope: !3413)
!3416 = !DILocation(line: 1577, column: 17, scope: !3413)
!3417 = !DILocation(line: 1577, column: 15, scope: !3414)
!3418 = !DILocation(line: 1578, column: 17, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3420, file: !11, line: 1578, column: 17)
!3420 = distinct !DILexicalBlock(scope: !3413, file: !11, line: 1577, column: 27)
!3421 = !DILocation(line: 1578, column: 22, scope: !3419)
!3422 = !DILocation(line: 1578, column: 19, scope: !3419)
!3423 = !DILocation(line: 1578, column: 17, scope: !3420)
!3424 = !DILocation(line: 1579, column: 19, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3426, file: !11, line: 1579, column: 19)
!3426 = distinct !DILexicalBlock(scope: !3419, file: !11, line: 1578, column: 27)
!3427 = !DILocation(line: 1579, column: 24, scope: !3425)
!3428 = !DILocation(line: 1579, column: 21, scope: !3425)
!3429 = !DILocation(line: 1579, column: 19, scope: !3426)
!3430 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !3431)
!3431 = distinct !DILocation(line: 1581, column: 17, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !11, line: 1580, column: 17)
!3433 = distinct !DILexicalBlock(scope: !3425, file: !11, line: 1579, column: 28)
!3434 = !DILocation(line: 1583, column: 15, scope: !3433)
!3435 = !DILocation(line: 1584, column: 17, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3425, file: !11, line: 1583, column: 22)
!3437 = !DILocation(line: 1586, column: 13, scope: !3426)
!3438 = !DILocation(line: 1587, column: 15, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3419, file: !11, line: 1586, column: 20)
!3440 = !DILocation(line: 1589, column: 11, scope: !3420)
!3441 = !DILocation(line: 1589, column: 18, scope: !3413)
!3442 = !DILocation(line: 1591, column: 17, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !11, line: 1591, column: 17)
!3444 = distinct !DILexicalBlock(scope: !3413, file: !11, line: 1589, column: 18)
!3445 = !DILocation(line: 1591, column: 24, scope: !3443)
!3446 = !DILocation(line: 1591, column: 17, scope: !3444)
!3447 = !DILocation(line: 1594, column: 19, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3449, file: !11, line: 1594, column: 19)
!3449 = distinct !DILexicalBlock(scope: !3443, file: !11, line: 1591, column: 30)
!3450 = !DILocation(line: 1594, column: 24, scope: !3448)
!3451 = !DILocation(line: 1594, column: 21, scope: !3448)
!3452 = !DILocation(line: 1594, column: 19, scope: !3449)
!3453 = !DILocation(line: 1595, column: 21, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3455, file: !11, line: 1595, column: 21)
!3455 = distinct !DILexicalBlock(scope: !3448, file: !11, line: 1594, column: 28)
!3456 = !DILocation(line: 1595, column: 28, scope: !3454)
!3457 = !DILocation(line: 1595, column: 21, scope: !3455)
!3458 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 1596, column: 19, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3454, file: !11, line: 1595, column: 36)
!3461 = !DILocation(line: 1597, column: 17, scope: !3460)
!3462 = !DILocation(line: 1598, column: 15, scope: !3455)
!3463 = !DILocation(line: 1603, column: 21, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3465, file: !11, line: 1603, column: 21)
!3465 = distinct !DILexicalBlock(scope: !3448, file: !11, line: 1598, column: 22)
!3466 = !DILocation(line: 1603, column: 31, scope: !3464)
!3467 = !DILocation(line: 1603, column: 28, scope: !3464)
!3468 = !DILocation(line: 1603, column: 21, scope: !3465)
!3469 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !3470)
!3470 = distinct !DILocation(line: 1604, column: 19, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3464, file: !11, line: 1603, column: 50)
!3472 = !DILocation(line: 1605, column: 17, scope: !3471)
!3473 = !DILocation(line: 1607, column: 13, scope: !3449)
!3474 = !DILocation(line: 1609, column: 20, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3476, file: !11, line: 1609, column: 20)
!3476 = distinct !DILexicalBlock(scope: !3443, file: !11, line: 1608, column: 18)
!3477 = !DILocation(line: 1609, column: 27, scope: !3475)
!3478 = !DILocation(line: 1609, column: 20, scope: !3476)
!3479 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !3480)
!3480 = distinct !DILocation(line: 1611, column: 17, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !11, line: 1610, column: 17)
!3482 = distinct !DILexicalBlock(scope: !3475, file: !11, line: 1609, column: 35)
!3483 = !DILocation(line: 1613, column: 15, scope: !3482)
!3484 = !DILocation(line: 1618, column: 9, scope: !3414)
!3485 = !DILocation(line: 1619, column: 7, scope: !3409)
!3486 = !DILocation(line: 1617, column: 11, scope: !3203)
!3487 = !DILocation(line: 1617, column: 3, scope: !3203)
!3488 = !DILocation(line: 1619, column: 1, scope: !41)
!3489 = !DILocation(line: 1624, column: 7, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3491, file: !11, line: 1624, column: 7)
!3491 = distinct !DILexicalBlock(scope: !44, file: !11, line: 1623, column: 3)
!3492 = !DILocation(line: 1624, column: 12, scope: !3490)
!3493 = !DILocation(line: 1624, column: 9, scope: !3490)
!3494 = !DILocation(line: 1624, column: 7, scope: !3491)
!3495 = !DILocation(line: 1625, column: 9, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3490, file: !11, line: 1624, column: 16)
!3497 = !DILocation(line: 1625, column: 7, scope: !3496)
!3498 = !DILocation(line: 1626, column: 3, scope: !3496)
!3499 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 1628, column: 5, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3502, file: !11, line: 1627, column: 5)
!3502 = distinct !DILexicalBlock(scope: !3490, file: !11, line: 1626, column: 10)
!3503 = !DILocation(line: 1631, column: 3, scope: !3491)
!3504 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !45, file: !11, line: 1634, type: !15)
!3505 = !DILocation(line: 1634, column: 23, scope: !45)
!3506 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !45, file: !11, line: 1634, type: !15)
!3507 = !DILocation(line: 1634, column: 42, scope: !45)
!3508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__PendingReturned", scope: !45, file: !11, line: 1635, type: !15)
!3509 = !DILocation(line: 1635, column: 7, scope: !45)
!3510 = !DILocation(line: 1635, column: 30, scope: !45)
!3511 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "returnVal2", scope: !45, file: !11, line: 1636, type: !15)
!3512 = !DILocation(line: 1636, column: 7, scope: !45)
!3513 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compRetStatus", scope: !45, file: !11, line: 1637, type: !15)
!3514 = !DILocation(line: 1637, column: 7, scope: !45)
!3515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lcontext", scope: !45, file: !11, line: 1638, type: !15)
!3516 = !DILocation(line: 1638, column: 7, scope: !45)
!3517 = !DILocation(line: 1638, column: 18, scope: !45)
!3518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp8", scope: !45, file: !11, line: 1639, type: !5)
!3519 = !DILocation(line: 1639, column: 17, scope: !45)
!3520 = !DILocation(line: 1642, column: 7, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3522, file: !11, line: 1642, column: 7)
!3522 = distinct !DILexicalBlock(scope: !45, file: !11, line: 1641, column: 3)
!3523 = !DILocation(line: 1734, column: 20, scope: !49, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 120, column: 3, scope: !188, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 1650, column: 25, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !11, line: 1649, column: 9)
!3527 = distinct !DILexicalBlock(scope: !3528, file: !11, line: 1648, column: 25)
!3528 = distinct !DILexicalBlock(scope: !3529, file: !11, line: 1648, column: 11)
!3529 = distinct !DILexicalBlock(scope: !3530, file: !11, line: 1647, column: 12)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !11, line: 1643, column: 9)
!3531 = distinct !DILexicalBlock(scope: !3521, file: !11, line: 1642, column: 23)
!3532 = !DILocation(line: 1734, column: 32, scope: !49, inlinedAt: !3524)
!3533 = !DILocation(line: 1734, column: 48, scope: !49, inlinedAt: !3524)
!3534 = !DILocation(line: 1735, column: 7, scope: !49, inlinedAt: !3524)
!3535 = !DILocation(line: 115, column: 33, scope: !16, inlinedAt: !3525)
!3536 = !DILocation(line: 115, column: 52, scope: !16, inlinedAt: !3525)
!3537 = !DILocation(line: 115, column: 62, scope: !16, inlinedAt: !3525)
!3538 = !DILocation(line: 1642, column: 7, scope: !3522)
!3539 = !DILocation(line: 1643, column: 9, scope: !3530)
!3540 = !DILocation(line: 1643, column: 17, scope: !3530)
!3541 = !DILocation(line: 1643, column: 9, scope: !3531)
!3542 = !DILocation(line: 1645, column: 39, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3544, file: !11, line: 1644, column: 7)
!3544 = distinct !DILexicalBlock(scope: !3530, file: !11, line: 1643, column: 23)
!3545 = !DILocation(line: 1645, column: 53, scope: !3543)
!3546 = !DILocation(line: 1645, column: 58, scope: !3543)
!3547 = !DILocation(line: 1645, column: 23, scope: !3543)
!3548 = !DILocation(line: 1645, column: 21, scope: !3543)
!3549 = !DILocation(line: 1647, column: 5, scope: !3544)
!3550 = !DILocation(line: 1648, column: 11, scope: !3528)
!3551 = !DILocation(line: 1648, column: 19, scope: !3528)
!3552 = !DILocation(line: 1648, column: 11, scope: !3529)
!3553 = !DILocation(line: 1650, column: 49, scope: !3526)
!3554 = !DILocation(line: 1650, column: 63, scope: !3526)
!3555 = !DILocation(line: 1650, column: 68, scope: !3526)
!3556 = !DILocation(line: 1650, column: 25, scope: !3526)
!3557 = !DILocation(line: 120, column: 14, scope: !188, inlinedAt: !3525)
!3558 = !DILocation(line: 120, column: 3, scope: !188, inlinedAt: !3525)
!3559 = !DILocation(line: 1735, column: 11, scope: !49, inlinedAt: !3524)
!3560 = !DILocation(line: 1738, column: 18, scope: !195, inlinedAt: !3524)
!3561 = !DILocation(line: 1739, column: 11, scope: !195, inlinedAt: !3524)
!3562 = !DILocation(line: 1739, column: 3, scope: !195, inlinedAt: !3524)
!3563 = !DILocation(line: 122, column: 3, scope: !189, inlinedAt: !3525)
!3564 = !DILocation(line: 1650, column: 23, scope: !3526)
!3565 = !DILocation(line: 1652, column: 7, scope: !3527)
!3566 = !DILocation(line: 1656, column: 34, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3531, file: !11, line: 1654, column: 5)
!3568 = !DILocation(line: 1656, column: 18, scope: !3567)
!3569 = !DILocation(line: 1656, column: 16, scope: !3567)
!3570 = !DILocation(line: 1656, column: 9, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3567, file: !11, line: 1656, column: 9)
!3572 = !DILocation(line: 1656, column: 20, scope: !3571)
!3573 = !DILocation(line: 1656, column: 9, scope: !3567)
!3574 = !DILocation(line: 1624, column: 7, scope: !3490, inlinedAt: !3575)
!3575 = distinct !DILocation(line: 1658, column: 7, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3577, file: !11, line: 1657, column: 7)
!3577 = distinct !DILexicalBlock(scope: !3571, file: !11, line: 1656, column: 36)
!3578 = !DILocation(line: 1624, column: 12, scope: !3490, inlinedAt: !3575)
!3579 = !DILocation(line: 1624, column: 9, scope: !3490, inlinedAt: !3575)
!3580 = !DILocation(line: 1624, column: 7, scope: !3491, inlinedAt: !3575)
!3581 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !3582)
!3582 = distinct !DILocation(line: 1628, column: 5, scope: !3501, inlinedAt: !3575)
!3583 = !DILocation(line: 1625, column: 9, scope: !3496, inlinedAt: !3575)
!3584 = !DILocation(line: 1625, column: 7, scope: !3496, inlinedAt: !3575)
!3585 = !DILocation(line: 1660, column: 5, scope: !3577)
!3586 = !DILocation(line: 1662, column: 3, scope: !3531)
!3587 = !DILocation(line: 1666, column: 7, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3522, file: !11, line: 1666, column: 7)
!3589 = !DILocation(line: 1666, column: 7, scope: !3522)
!3590 = !DILocation(line: 1667, column: 16, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3588, file: !11, line: 1666, column: 29)
!3592 = !DILocation(line: 1668, column: 3, scope: !3591)
!3593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_4", scope: !3594, file: !11, line: 1669, type: !15)
!3594 = distinct !DILexicalBlock(scope: !3588, file: !11, line: 1668, column: 10)
!3595 = !DILocation(line: 1669, column: 9, scope: !3594)
!3596 = !DILocation(line: 1670, column: 17, scope: !3594)
!3597 = !DILocation(line: 1670, column: 15, scope: !3594)
!3598 = !DILocation(line: 1671, column: 9, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3594, file: !11, line: 1671, column: 9)
!3600 = !DILocation(line: 1671, column: 19, scope: !3599)
!3601 = !DILocation(line: 1671, column: 9, scope: !3594)
!3602 = !DILocation(line: 1672, column: 7, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3599, file: !11, line: 1671, column: 25)
!3604 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_5", scope: !3605, file: !11, line: 1672, type: !15)
!3605 = distinct !DILexicalBlock(scope: !3599, file: !11, line: 1673, column: 12)
!3606 = !DILocation(line: 1672, column: 11, scope: !3605)
!3607 = !DILocation(line: 1673, column: 19, scope: !3605)
!3608 = !DILocation(line: 1673, column: 17, scope: !3605)
!3609 = !DILocation(line: 1674, column: 11, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3605, file: !11, line: 1674, column: 11)
!3611 = !DILocation(line: 1674, column: 21, scope: !3610)
!3612 = !DILocation(line: 1674, column: 11, scope: !3605)
!3613 = !DILocation(line: 1675, column: 9, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3610, file: !11, line: 1674, column: 27)
!3615 = !DILocation(line: 1677, column: 9, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3610, file: !11, line: 1676, column: 14)
!3617 = !DILocation(line: 1677, column: 13, scope: !3616)
!3618 = !DILocation(line: 1677, column: 16, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3616, file: !11, line: 1677, column: 13)
!3620 = !DILocation(line: 1679, column: 22, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3619, file: !11, line: 1677, column: 16)
!3622 = !DILocation(line: 1680, column: 11, scope: !3621)
!3623 = !DILocation(line: 1682, column: 22, scope: !3621)
!3624 = !DILocation(line: 1683, column: 11, scope: !3621)
!3625 = !DILocation(line: 1685, column: 22, scope: !3621)
!3626 = !DILocation(line: 1686, column: 11, scope: !3621)
!3627 = !DILocation(line: 1687, column: 16, scope: !3619)
!3628 = !DILocation(line: 1694, column: 7, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3522, file: !11, line: 1694, column: 7)
!3630 = !DILocation(line: 1694, column: 12, scope: !3629)
!3631 = !DILocation(line: 1694, column: 9, scope: !3629)
!3632 = !DILocation(line: 1694, column: 7, scope: !3522)
!3633 = !DILocation(line: 1695, column: 9, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3629, file: !11, line: 1694, column: 16)
!3635 = !DILocation(line: 1695, column: 7, scope: !3634)
!3636 = !DILocation(line: 1696, column: 25, scope: !3634)
!3637 = !DILocation(line: 1696, column: 23, scope: !3634)
!3638 = !DILocation(line: 1697, column: 3, scope: !3634)
!3639 = !DILocation(line: 1698, column: 9, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3641, file: !11, line: 1698, column: 9)
!3641 = distinct !DILexicalBlock(scope: !3629, file: !11, line: 1697, column: 10)
!3642 = !DILocation(line: 1698, column: 14, scope: !3640)
!3643 = !DILocation(line: 1698, column: 11, scope: !3640)
!3644 = !DILocation(line: 1698, column: 9, scope: !3641)
!3645 = !DILocation(line: 1699, column: 11, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3647, file: !11, line: 1699, column: 11)
!3647 = distinct !DILexicalBlock(scope: !3640, file: !11, line: 1698, column: 20)
!3648 = !DILocation(line: 1699, column: 22, scope: !3646)
!3649 = !DILocation(line: 1699, column: 11, scope: !3647)
!3650 = !DILocation(line: 1700, column: 13, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3646, file: !11, line: 1699, column: 30)
!3652 = !DILocation(line: 1700, column: 11, scope: !3651)
!3653 = !DILocation(line: 1701, column: 29, scope: !3651)
!3654 = !DILocation(line: 1701, column: 27, scope: !3651)
!3655 = !DILocation(line: 1702, column: 7, scope: !3651)
!3656 = !DILocation(line: 1703, column: 13, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3646, file: !11, line: 1702, column: 14)
!3658 = !DILocation(line: 1703, column: 11, scope: !3657)
!3659 = !DILocation(line: 1704, column: 29, scope: !3657)
!3660 = !DILocation(line: 1704, column: 27, scope: !3657)
!3661 = !DILocation(line: 1706, column: 5, scope: !3647)
!3662 = !DILocation(line: 1707, column: 11, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3664, file: !11, line: 1707, column: 11)
!3664 = distinct !DILexicalBlock(scope: !3640, file: !11, line: 1706, column: 12)
!3665 = !DILocation(line: 1707, column: 16, scope: !3663)
!3666 = !DILocation(line: 1707, column: 13, scope: !3663)
!3667 = !DILocation(line: 1707, column: 11, scope: !3664)
!3668 = !DILocation(line: 1708, column: 13, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3663, file: !11, line: 1707, column: 23)
!3670 = !DILocation(line: 1708, column: 11, scope: !3669)
!3671 = !DILocation(line: 1709, column: 29, scope: !3669)
!3672 = !DILocation(line: 1709, column: 27, scope: !3669)
!3673 = !DILocation(line: 1710, column: 7, scope: !3669)
!3674 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 1712, column: 9, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3677, file: !11, line: 1711, column: 9)
!3677 = distinct !DILexicalBlock(scope: !3663, file: !11, line: 1710, column: 14)
!3678 = !DILocation(line: 1717, column: 11, scope: !3522)
!3679 = !DILocation(line: 1717, column: 3, scope: !3522)
!3680 = !DILocation(line: 1734, column: 20, scope: !49)
!3681 = !DILocation(line: 1734, column: 32, scope: !49)
!3682 = !DILocation(line: 1734, column: 48, scope: !49)
!3683 = !DILocation(line: 1735, column: 7, scope: !49)
!3684 = !DILocation(line: 1735, column: 11, scope: !49)
!3685 = !DILocation(line: 1738, column: 18, scope: !195)
!3686 = !DILocation(line: 1739, column: 11, scope: !195)
!3687 = !DILocation(line: 1739, column: 3, scope: !195)
!3688 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Object", arg: 1, scope: !50, file: !11, line: 1742, type: !15)
!3689 = !DILocation(line: 1742, column: 31, scope: !50)
!3690 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitReason", arg: 2, scope: !50, file: !11, line: 1742, type: !15)
!3691 = !DILocation(line: 1742, column: 44, scope: !50)
!3692 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitMode", arg: 3, scope: !50, file: !11, line: 1742, type: !15)
!3693 = !DILocation(line: 1742, column: 61, scope: !50)
!3694 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Alertable", arg: 4, scope: !50, file: !11, line: 1742, type: !15)
!3695 = !DILocation(line: 1742, column: 76, scope: !50)
!3696 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Timeout", arg: 5, scope: !50, file: !11, line: 1743, type: !15)
!3697 = !DILocation(line: 1743, column: 31, scope: !50)
!3698 = !DILocation(line: 1747, column: 7, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3700, file: !11, line: 1747, column: 7)
!3700 = distinct !DILexicalBlock(scope: !50, file: !11, line: 1746, column: 3)
!3701 = !DILocation(line: 1747, column: 12, scope: !3699)
!3702 = !DILocation(line: 1747, column: 9, scope: !3699)
!3703 = !DILocation(line: 1747, column: 7, scope: !3700)
!3704 = !DILocation(line: 1748, column: 9, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3706, file: !11, line: 1748, column: 9)
!3706 = distinct !DILexicalBlock(scope: !3699, file: !11, line: 1747, column: 18)
!3707 = !DILocation(line: 1748, column: 24, scope: !3705)
!3708 = !DILocation(line: 1748, column: 9, scope: !3706)
!3709 = !DILocation(line: 1749, column: 11, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3705, file: !11, line: 1748, column: 30)
!3711 = !DILocation(line: 1749, column: 9, scope: !3710)
!3712 = !DILocation(line: 1750, column: 22, scope: !3710)
!3713 = !DILocation(line: 1751, column: 5, scope: !3710)
!3714 = !DILocation(line: 1752, column: 7, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3705, file: !11, line: 1751, column: 12)
!3716 = !DILocation(line: 1754, column: 3, scope: !3706)
!3717 = !DILocation(line: 1754, column: 10, scope: !3699)
!3718 = !DILocation(line: 1756, column: 9, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3720, file: !11, line: 1756, column: 9)
!3720 = distinct !DILexicalBlock(scope: !3699, file: !11, line: 1754, column: 10)
!3721 = !DILocation(line: 1756, column: 19, scope: !3719)
!3722 = !DILocation(line: 1756, column: 9, scope: !3720)
!3723 = !DILocation(line: 1757, column: 11, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3719, file: !11, line: 1756, column: 25)
!3725 = !DILocation(line: 1757, column: 9, scope: !3724)
!3726 = !DILocation(line: 1758, column: 17, scope: !3724)
!3727 = !DILocation(line: 1759, column: 5, scope: !3724)
!3728 = !DILocation(line: 1760, column: 11, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3730, file: !11, line: 1760, column: 11)
!3730 = distinct !DILexicalBlock(scope: !3719, file: !11, line: 1759, column: 12)
!3731 = !DILocation(line: 1760, column: 16, scope: !3729)
!3732 = !DILocation(line: 1760, column: 13, scope: !3729)
!3733 = !DILocation(line: 1760, column: 11, scope: !3730)
!3734 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 1762, column: 9, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3737, file: !11, line: 1761, column: 9)
!3737 = distinct !DILexicalBlock(scope: !3729, file: !11, line: 1760, column: 22)
!3738 = !DILocation(line: 1764, column: 7, scope: !3737)
!3739 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_6", scope: !3700, file: !11, line: 1769, type: !15)
!3740 = !DILocation(line: 1769, column: 7, scope: !3700)
!3741 = !DILocation(line: 1770, column: 15, scope: !3700)
!3742 = !DILocation(line: 1770, column: 13, scope: !3700)
!3743 = !DILocation(line: 1771, column: 7, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3700, file: !11, line: 1771, column: 7)
!3745 = !DILocation(line: 1771, column: 17, scope: !3744)
!3746 = !DILocation(line: 1771, column: 7, scope: !3700)
!3747 = !DILocation(line: 1772, column: 5, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3744, file: !11, line: 1771, column: 23)
!3749 = !DILocation(line: 1774, column: 5, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3744, file: !11, line: 1773, column: 10)
!3751 = !DILocation(line: 1774, column: 9, scope: !3750)
!3752 = !DILocation(line: 1774, column: 12, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3750, file: !11, line: 1774, column: 9)
!3754 = !DILocation(line: 1776, column: 7, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3753, file: !11, line: 1774, column: 12)
!3756 = !DILocation(line: 1778, column: 7, scope: !3755)
!3757 = !DILocation(line: 1784, column: 1, scope: !50)
!3758 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !53, file: !11, line: 1786, type: !15)
!3759 = !DILocation(line: 1786, column: 22, scope: !53)
!3760 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !53, file: !11, line: 1786, type: !15)
!3761 = !DILocation(line: 1786, column: 41, scope: !53)
!3762 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compRetStatus", scope: !53, file: !11, line: 1788, type: !15)
!3763 = !DILocation(line: 1788, column: 7, scope: !53)
!3764 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "returnVal", scope: !53, file: !11, line: 1789, type: !15)
!3765 = !DILocation(line: 1789, column: 7, scope: !53)
!3766 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lcontext", scope: !53, file: !11, line: 1790, type: !15)
!3767 = !DILocation(line: 1790, column: 7, scope: !53)
!3768 = !DILocation(line: 1790, column: 18, scope: !53)
!3769 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp7", scope: !53, file: !11, line: 1791, type: !5)
!3770 = !DILocation(line: 1791, column: 17, scope: !53)
!3771 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp8", scope: !53, file: !11, line: 1792, type: !4)
!3772 = !DILocation(line: 1792, column: 8, scope: !53)
!3773 = !DILocation(line: 1793, column: 7, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3775, file: !11, line: 1793, column: 7)
!3775 = distinct !DILexicalBlock(scope: !53, file: !11, line: 1794, column: 3)
!3776 = !DILocation(line: 1734, column: 20, scope: !49, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 120, column: 3, scope: !188, inlinedAt: !3778)
!3778 = distinct !DILocation(line: 1801, column: 25, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3780, file: !11, line: 1800, column: 9)
!3780 = distinct !DILexicalBlock(scope: !3781, file: !11, line: 1799, column: 25)
!3781 = distinct !DILexicalBlock(scope: !3782, file: !11, line: 1799, column: 11)
!3782 = distinct !DILexicalBlock(scope: !3783, file: !11, line: 1798, column: 12)
!3783 = distinct !DILexicalBlock(scope: !3784, file: !11, line: 1794, column: 9)
!3784 = distinct !DILexicalBlock(scope: !3774, file: !11, line: 1793, column: 23)
!3785 = !DILocation(line: 1734, column: 32, scope: !49, inlinedAt: !3777)
!3786 = !DILocation(line: 1734, column: 48, scope: !49, inlinedAt: !3777)
!3787 = !DILocation(line: 1735, column: 7, scope: !49, inlinedAt: !3777)
!3788 = !DILocation(line: 115, column: 33, scope: !16, inlinedAt: !3778)
!3789 = !DILocation(line: 115, column: 52, scope: !16, inlinedAt: !3778)
!3790 = !DILocation(line: 115, column: 62, scope: !16, inlinedAt: !3778)
!3791 = !DILocation(line: 1793, column: 7, scope: !3775)
!3792 = !DILocation(line: 1794, column: 9, scope: !3783)
!3793 = !DILocation(line: 1794, column: 17, scope: !3783)
!3794 = !DILocation(line: 1794, column: 9, scope: !3784)
!3795 = !DILocation(line: 1796, column: 39, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3797, file: !11, line: 1795, column: 7)
!3797 = distinct !DILexicalBlock(scope: !3783, file: !11, line: 1794, column: 23)
!3798 = !DILocation(line: 1796, column: 53, scope: !3796)
!3799 = !DILocation(line: 1796, column: 58, scope: !3796)
!3800 = !DILocation(line: 1796, column: 23, scope: !3796)
!3801 = !DILocation(line: 1796, column: 21, scope: !3796)
!3802 = !DILocation(line: 1798, column: 5, scope: !3797)
!3803 = !DILocation(line: 1799, column: 11, scope: !3781)
!3804 = !DILocation(line: 1799, column: 19, scope: !3781)
!3805 = !DILocation(line: 1799, column: 11, scope: !3782)
!3806 = !DILocation(line: 1801, column: 49, scope: !3779)
!3807 = !DILocation(line: 1801, column: 63, scope: !3779)
!3808 = !DILocation(line: 1801, column: 68, scope: !3779)
!3809 = !DILocation(line: 1801, column: 25, scope: !3779)
!3810 = !DILocation(line: 120, column: 14, scope: !188, inlinedAt: !3778)
!3811 = !DILocation(line: 120, column: 3, scope: !188, inlinedAt: !3778)
!3812 = !DILocation(line: 1735, column: 11, scope: !49, inlinedAt: !3777)
!3813 = !DILocation(line: 1738, column: 18, scope: !195, inlinedAt: !3777)
!3814 = !DILocation(line: 1739, column: 11, scope: !195, inlinedAt: !3777)
!3815 = !DILocation(line: 1739, column: 3, scope: !195, inlinedAt: !3777)
!3816 = !DILocation(line: 122, column: 3, scope: !189, inlinedAt: !3778)
!3817 = !DILocation(line: 1801, column: 23, scope: !3779)
!3818 = !DILocation(line: 1803, column: 7, scope: !3780)
!3819 = !DILocation(line: 1807, column: 34, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3784, file: !11, line: 1805, column: 5)
!3821 = !DILocation(line: 1807, column: 18, scope: !3820)
!3822 = !DILocation(line: 1807, column: 16, scope: !3820)
!3823 = !DILocation(line: 1807, column: 9, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3820, file: !11, line: 1807, column: 9)
!3825 = !DILocation(line: 1807, column: 20, scope: !3824)
!3826 = !DILocation(line: 1807, column: 9, scope: !3820)
!3827 = !DILocation(line: 1624, column: 7, scope: !3490, inlinedAt: !3828)
!3828 = distinct !DILocation(line: 1809, column: 7, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3830, file: !11, line: 1808, column: 7)
!3830 = distinct !DILexicalBlock(scope: !3824, file: !11, line: 1807, column: 36)
!3831 = !DILocation(line: 1624, column: 12, scope: !3490, inlinedAt: !3828)
!3832 = !DILocation(line: 1624, column: 9, scope: !3490, inlinedAt: !3828)
!3833 = !DILocation(line: 1624, column: 7, scope: !3491, inlinedAt: !3828)
!3834 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 1628, column: 5, scope: !3501, inlinedAt: !3828)
!3836 = !DILocation(line: 1625, column: 9, scope: !3496, inlinedAt: !3828)
!3837 = !DILocation(line: 1625, column: 7, scope: !3496, inlinedAt: !3828)
!3838 = !DILocation(line: 1811, column: 5, scope: !3830)
!3839 = !DILocation(line: 1813, column: 3, scope: !3784)
!3840 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_7", scope: !3775, file: !11, line: 1817, type: !15)
!3841 = !DILocation(line: 1817, column: 7, scope: !3775)
!3842 = !DILocation(line: 1818, column: 15, scope: !3775)
!3843 = !DILocation(line: 1818, column: 13, scope: !3775)
!3844 = !DILocation(line: 1819, column: 7, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3775, file: !11, line: 1819, column: 7)
!3846 = !DILocation(line: 1819, column: 17, scope: !3845)
!3847 = !DILocation(line: 1819, column: 7, scope: !3775)
!3848 = !DILocation(line: 1820, column: 5, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3845, file: !11, line: 1819, column: 23)
!3850 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_8", scope: !3851, file: !11, line: 1820, type: !15)
!3851 = distinct !DILexicalBlock(scope: !3845, file: !11, line: 1821, column: 10)
!3852 = !DILocation(line: 1820, column: 9, scope: !3851)
!3853 = !DILocation(line: 1821, column: 17, scope: !3851)
!3854 = !DILocation(line: 1821, column: 15, scope: !3851)
!3855 = !DILocation(line: 1822, column: 9, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3851, file: !11, line: 1822, column: 9)
!3857 = !DILocation(line: 1822, column: 19, scope: !3856)
!3858 = !DILocation(line: 1822, column: 9, scope: !3851)
!3859 = !DILocation(line: 1823, column: 7, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3856, file: !11, line: 1822, column: 25)
!3861 = !DILocation(line: 1825, column: 7, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3856, file: !11, line: 1824, column: 12)
!3863 = !DILocation(line: 1825, column: 11, scope: !3862)
!3864 = !DILocation(line: 1825, column: 14, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3862, file: !11, line: 1825, column: 11)
!3866 = !DILocation(line: 1827, column: 19, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3865, file: !11, line: 1825, column: 14)
!3868 = !DILocation(line: 1828, column: 9, scope: !3867)
!3869 = !DILocation(line: 1830, column: 19, scope: !3867)
!3870 = !DILocation(line: 1831, column: 9, scope: !3867)
!3871 = !DILocation(line: 1833, column: 19, scope: !3867)
!3872 = !DILocation(line: 1834, column: 9, scope: !3867)
!3873 = !DILocation(line: 1835, column: 14, scope: !3865)
!3874 = !DILocation(line: 1841, column: 7, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3775, file: !11, line: 1841, column: 7)
!3876 = !DILocation(line: 1841, column: 12, scope: !3875)
!3877 = !DILocation(line: 1841, column: 9, scope: !3875)
!3878 = !DILocation(line: 1841, column: 7, scope: !3775)
!3879 = !DILocation(line: 1842, column: 9, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3875, file: !11, line: 1841, column: 16)
!3881 = !DILocation(line: 1842, column: 7, scope: !3880)
!3882 = !DILocation(line: 1843, column: 25, scope: !3880)
!3883 = !DILocation(line: 1843, column: 23, scope: !3880)
!3884 = !DILocation(line: 1844, column: 3, scope: !3880)
!3885 = !DILocation(line: 1845, column: 9, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3887, file: !11, line: 1845, column: 9)
!3887 = distinct !DILexicalBlock(scope: !3875, file: !11, line: 1844, column: 10)
!3888 = !DILocation(line: 1845, column: 14, scope: !3886)
!3889 = !DILocation(line: 1845, column: 11, scope: !3886)
!3890 = !DILocation(line: 1845, column: 9, scope: !3887)
!3891 = !DILocation(line: 1846, column: 27, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3893, file: !11, line: 1846, column: 7)
!3893 = distinct !DILexicalBlock(scope: !3886, file: !11, line: 1845, column: 20)
!3894 = !DILocation(line: 1846, column: 20, scope: !3892)
!3895 = !DILocation(line: 1846, column: 18, scope: !3892)
!3896 = !DILocation(line: 1846, column: 11, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3892, file: !11, line: 1846, column: 11)
!3898 = !DILocation(line: 1846, column: 22, scope: !3897)
!3899 = !DILocation(line: 1846, column: 11, scope: !3892)
!3900 = !DILocation(line: 1847, column: 13, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3897, file: !11, line: 1846, column: 31)
!3902 = !DILocation(line: 1847, column: 11, scope: !3901)
!3903 = !DILocation(line: 1848, column: 29, scope: !3901)
!3904 = !DILocation(line: 1848, column: 27, scope: !3901)
!3905 = !DILocation(line: 1849, column: 7, scope: !3901)
!3906 = !DILocation(line: 1850, column: 13, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3897, file: !11, line: 1849, column: 14)
!3908 = !DILocation(line: 1850, column: 11, scope: !3907)
!3909 = !DILocation(line: 1851, column: 29, scope: !3907)
!3910 = !DILocation(line: 1851, column: 27, scope: !3907)
!3911 = !DILocation(line: 1854, column: 5, scope: !3893)
!3912 = !DILocation(line: 1854, column: 11, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3914, file: !11, line: 1854, column: 11)
!3914 = distinct !DILexicalBlock(scope: !3886, file: !11, line: 1854, column: 12)
!3915 = !DILocation(line: 1854, column: 16, scope: !3913)
!3916 = !DILocation(line: 1854, column: 13, scope: !3913)
!3917 = !DILocation(line: 1854, column: 11, scope: !3914)
!3918 = !DILocation(line: 1855, column: 13, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3913, file: !11, line: 1854, column: 23)
!3920 = !DILocation(line: 1855, column: 11, scope: !3919)
!3921 = !DILocation(line: 1856, column: 29, scope: !3919)
!3922 = !DILocation(line: 1856, column: 27, scope: !3919)
!3923 = !DILocation(line: 1857, column: 7, scope: !3919)
!3924 = !DILocation(line: 36, column: 10, scope: !84, inlinedAt: !3925)
!3925 = distinct !DILocation(line: 1859, column: 9, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3927, file: !11, line: 1858, column: 9)
!3927 = distinct !DILexicalBlock(scope: !3913, file: !11, line: 1857, column: 14)
!3928 = !DILocation(line: 1864, column: 11, scope: !3775)
!3929 = !DILocation(line: 1864, column: 3, scope: !3775)
!3930 = !DILocation(line: 1867, column: 17, scope: !54)
!3931 = !DILocation(line: 1871, column: 7, scope: !252)
!3932 = !DILocation(line: 1872, column: 15, scope: !252)
!3933 = !DILocation(line: 1872, column: 13, scope: !252)
!3934 = !DILocation(line: 1873, column: 7, scope: !334)
!3935 = !DILocation(line: 1873, column: 17, scope: !334)
!3936 = !DILocation(line: 1873, column: 7, scope: !252)
!3937 = !DILocation(line: 1874, column: 5, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !334, file: !11, line: 1873, column: 23)
!3939 = !DILocation(line: 1876, column: 5, scope: !340)
!3940 = !DILocation(line: 1876, column: 9, scope: !340)
!3941 = !DILocation(line: 1876, column: 12, scope: !339)
!3942 = !DILocation(line: 1878, column: 7, scope: !338)
!3943 = !DILocation(line: 1880, column: 7, scope: !338)
!3944 = !DILocation(line: 1886, column: 1, scope: !54)
