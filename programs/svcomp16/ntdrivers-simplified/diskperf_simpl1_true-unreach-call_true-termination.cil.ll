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
@myStatus = common global i32 0, align 4
@routine = common global i32 0, align 4
@Executive = common global i32 0, align 4
@KernelMode = common global i32 0, align 4
@pirp = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @errorFn() #0 {
  br label %1, !dbg !77

; <label>:1                                       ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !78
  unreachable, !dbg !78
                                                  ; No predecessors!
  ret void, !dbg !80
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

; Function Attrs: nounwind ssp uwtable
define void @_BLAST_init() #0 {
  store i32 0, i32* @UNLOADED, align 4, !dbg !81
  store i32 1, i32* @NP, align 4, !dbg !83
  store i32 2, i32* @DC, align 4, !dbg !84
  store i32 3, i32* @SKIP1, align 4, !dbg !85
  store i32 4, i32* @SKIP2, align 4, !dbg !86
  store i32 5, i32* @MPR1, align 4, !dbg !87
  store i32 6, i32* @MPR3, align 4, !dbg !88
  store i32 7, i32* @IPC, align 4, !dbg !89
  %1 = load i32, i32* @UNLOADED, align 4, !dbg !90
  store i32 %1, i32* @s, align 4, !dbg !91
  store i32 0, i32* @pended, align 4, !dbg !92
  store i32 0, i32* @compFptr, align 4, !dbg !93
  store i32 0, i32* @compRegistered, align 4, !dbg !94
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !95
  store i32 0, i32* @setEventCalled, align 4, !dbg !96
  store i32 0, i32* @customIrp, align 4, !dbg !97
  ret void, !dbg !98
}

; Function Attrs: nounwind ssp uwtable
define void @DiskPerfSyncFilterWithTarget(i32 %FilterDevice, i32 %TargetDevice) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %FilterDevice__Flags = alloca i32, align 4
  %TargetDevice__Characteristics = alloca i32, align 4
  %FilterDevice__Characteristics = alloca i32, align 4
  %propFlags = alloca i32, align 4
  store i32 %FilterDevice, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !99, metadata !100), !dbg !101
  store i32 %TargetDevice, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !102, metadata !100), !dbg !103
  call void @llvm.dbg.declare(metadata i32* %FilterDevice__Flags, metadata !104, metadata !100), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %TargetDevice__Characteristics, metadata !106, metadata !100), !dbg !107
  call void @llvm.dbg.declare(metadata i32* %FilterDevice__Characteristics, metadata !108, metadata !100), !dbg !109
  call void @llvm.dbg.declare(metadata i32* %propFlags, metadata !110, metadata !100), !dbg !111
  ret void, !dbg !112
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind ssp uwtable
define i32 @DiskPerfDispatchPnp(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %Irp__Tail__Overlay__CurrentStackLocation = alloca i32, align 4
  %irpSp__MinorFunction = alloca i32, align 4
  %irpSp = alloca i32, align 4
  %status = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %DeviceObject, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !114, metadata !100), !dbg !115
  store i32 %Irp, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !116, metadata !100), !dbg !117
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !118, metadata !100), !dbg !119
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !120
  store i32 %4, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !119
  call void @llvm.dbg.declare(metadata i32* %irpSp__MinorFunction, metadata !121, metadata !100), !dbg !122
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !123
  store i32 %5, i32* %irpSp__MinorFunction, align 4, !dbg !122
  call void @llvm.dbg.declare(metadata i32* %irpSp, metadata !124, metadata !100), !dbg !125
  call void @llvm.dbg.declare(metadata i32* %status, metadata !126, metadata !100), !dbg !127
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !128, metadata !100), !dbg !129
  %6 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !130
  store i32 %6, i32* %irpSp, align 4, !dbg !132
  %7 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !133
  %8 = icmp eq i32 %7, 0, !dbg !135
  br i1 %8, label %9, label %10, !dbg !136

; <label>:9                                       ; preds = %0
  br label %17, !dbg !137

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !139
  %12 = icmp eq i32 %11, 2, !dbg !142
  br i1 %12, label %13, label %14, !dbg !143

; <label>:13                                      ; preds = %10
  br label %21, !dbg !144

; <label>:14                                      ; preds = %10
  br label %25, !dbg !146
                                                  ; No predecessors!
  br i1 false, label %16, label %30, !dbg !148

; <label>:16                                      ; preds = %15
  br label %17, !dbg !149

; <label>:17                                      ; preds = %16, %9
  %18 = load i32, i32* %2, align 4, !dbg !151
  %19 = load i32, i32* %3, align 4, !dbg !154
  %20 = call i32 @DiskPerfStartDevice(i32 %18, i32 %19), !dbg !155
  store i32 %20, i32* %status, align 4, !dbg !156
  br label %31, !dbg !157

; <label>:21                                      ; preds = %13
  %22 = load i32, i32* %2, align 4, !dbg !158
  %23 = load i32, i32* %3, align 4, !dbg !160
  %24 = call i32 @DiskPerfRemoveDevice(i32 %22, i32 %23), !dbg !161
  store i32 %24, i32* %status, align 4, !dbg !162
  br label %31, !dbg !163

; <label>:25                                      ; preds = %14
  %26 = load i32, i32* %2, align 4, !dbg !164
  %27 = load i32, i32* %3, align 4, !dbg !166
  %28 = call i32 @DiskPerfSendToNextDriver(i32 %26, i32 %27), !dbg !167
  store i32 %28, i32* %tmp, align 4, !dbg !168
  %29 = load i32, i32* %tmp, align 4, !dbg !169
  store i32 %29, i32* %1, !dbg !170
  br label %36, !dbg !170

; <label>:30                                      ; preds = %15
  br label %31, !dbg !171

; <label>:31                                      ; preds = %30, %21, %17
  br label %32

; <label>:32                                      ; preds = %31
  br label %33

; <label>:33                                      ; preds = %32
  br label %34

; <label>:34                                      ; preds = %33
  %35 = load i32, i32* %status, align 4, !dbg !172
  store i32 %35, i32* %1, !dbg !173
  br label %36, !dbg !173

; <label>:36                                      ; preds = %34, %25
  %37 = load i32, i32* %1, !dbg !174
  ret i32 %37, !dbg !174
}

declare i32 @__VERIFIER_nondet_int() #3

; Function Attrs: nounwind ssp uwtable
define i32 @DiskPerfIrpCompletion(i32 %DeviceObject, i32 %Irp, i32 %Context) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %l.i = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %Event = alloca i32, align 4
  store i32 %DeviceObject, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !175, metadata !100), !dbg !176
  store i32 %Irp, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !177, metadata !100), !dbg !178
  store i32 %Context, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !179, metadata !100), !dbg !180
  call void @llvm.dbg.declare(metadata i32* %Event, metadata !181, metadata !100), !dbg !182
  %7 = load i32, i32* %6, align 4, !dbg !183
  store i32 %7, i32* %Event, align 4, !dbg !186
  %8 = load i32, i32* %Event, align 4, !dbg !187
  %9 = bitcast i32* %1 to i8*, !dbg !188
  call void @llvm.lifetime.start(i64 4, i8* %9), !dbg !188
  %10 = bitcast i32* %2 to i8*, !dbg !188
  call void @llvm.lifetime.start(i64 4, i8* %10), !dbg !188
  %11 = bitcast i32* %3 to i8*, !dbg !188
  call void @llvm.lifetime.start(i64 4, i8* %11), !dbg !188
  %12 = bitcast i32* %l.i to i8*, !dbg !188
  call void @llvm.lifetime.start(i64 4, i8* %12), !dbg !188
  store i32 %8, i32* %1, align 4, !dbg !188
  store i32 0, i32* %2, align 4, !dbg !188
  store i32 0, i32* %3, align 4, !dbg !188
  %13 = call i32 @__VERIFIER_nondet_int() #4, !dbg !189
  store i32 %13, i32* %l.i, align 4, !dbg !191
  store i32 1, i32* @setEventCalled, align 4, !dbg !192
  %14 = load i32, i32* %l.i, align 4, !dbg !194
  %15 = bitcast i32* %1 to i8*, !dbg !195
  call void @llvm.lifetime.end(i64 4, i8* %15), !dbg !195
  %16 = bitcast i32* %2 to i8*, !dbg !195
  call void @llvm.lifetime.end(i64 4, i8* %16), !dbg !195
  %17 = bitcast i32* %3 to i8*, !dbg !195
  call void @llvm.lifetime.end(i64 4, i8* %17), !dbg !195
  %18 = bitcast i32* %l.i to i8*, !dbg !195
  call void @llvm.lifetime.end(i64 4, i8* %18), !dbg !195
  call void @llvm.dbg.declare(metadata i32* %1, metadata !196, metadata !100), !dbg !197
  call void @llvm.dbg.declare(metadata i32* %2, metadata !198, metadata !100), !dbg !199
  call void @llvm.dbg.declare(metadata i32* %3, metadata !200, metadata !100), !dbg !201
  call void @llvm.dbg.declare(metadata i32* %l.i, metadata !202, metadata !100), !dbg !191
  ret i32 -1073741802, !dbg !203
}

; Function Attrs: nounwind ssp uwtable
define i32 @DiskPerfStartDevice(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %FilterDevice__Flags.i = alloca i32, align 4
  %TargetDevice__Characteristics.i = alloca i32, align 4
  %FilterDevice__Characteristics.i = alloca i32, align 4
  %propFlags.i = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %DeviceObject__DeviceExtension = alloca i32, align 4
  %deviceExtension__TargetDeviceObject = alloca i32, align 4
  %Irp__IoStatus__Status = alloca i32, align 4
  %deviceExtension = alloca i32, align 4
  %status = alloca i32, align 4
  store i32 %DeviceObject, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !204, metadata !100), !dbg !205
  store i32 %Irp, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !206, metadata !100), !dbg !207
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !208, metadata !100), !dbg !209
  %7 = call i32 @__VERIFIER_nondet_int(), !dbg !210
  store i32 %7, i32* %DeviceObject__DeviceExtension, align 4, !dbg !209
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__TargetDeviceObject, metadata !211, metadata !100), !dbg !212
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !213
  store i32 %8, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !212
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !214, metadata !100), !dbg !215
  call void @llvm.dbg.declare(metadata i32* %deviceExtension, metadata !216, metadata !100), !dbg !217
  call void @llvm.dbg.declare(metadata i32* %status, metadata !218, metadata !100), !dbg !219
  %9 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !220
  store i32 %9, i32* %deviceExtension, align 4, !dbg !223
  %10 = load i32, i32* %5, align 4, !dbg !224
  %11 = load i32, i32* %6, align 4, !dbg !225
  %12 = call i32 @DiskPerfForwardIrpSynchronous(i32 %10, i32 %11), !dbg !226
  store i32 %12, i32* %status, align 4, !dbg !227
  %13 = load i32, i32* %5, align 4, !dbg !228
  %14 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !229
  %15 = bitcast i32* %3 to i8*, !dbg !230
  call void @llvm.lifetime.start(i64 4, i8* %15), !dbg !230
  %16 = bitcast i32* %4 to i8*, !dbg !230
  call void @llvm.lifetime.start(i64 4, i8* %16), !dbg !230
  %17 = bitcast i32* %FilterDevice__Flags.i to i8*, !dbg !230
  call void @llvm.lifetime.start(i64 4, i8* %17), !dbg !230
  %18 = bitcast i32* %TargetDevice__Characteristics.i to i8*, !dbg !230
  call void @llvm.lifetime.start(i64 4, i8* %18), !dbg !230
  %19 = bitcast i32* %FilterDevice__Characteristics.i to i8*, !dbg !230
  call void @llvm.lifetime.start(i64 4, i8* %19), !dbg !230
  %20 = bitcast i32* %propFlags.i to i8*, !dbg !230
  call void @llvm.lifetime.start(i64 4, i8* %20), !dbg !230
  store i32 %13, i32* %3, align 4, !dbg !230
  store i32 %14, i32* %4, align 4, !dbg !230
  %21 = bitcast i32* %3 to i8*, !dbg !231
  call void @llvm.lifetime.end(i64 4, i8* %21), !dbg !231
  %22 = bitcast i32* %4 to i8*, !dbg !231
  call void @llvm.lifetime.end(i64 4, i8* %22), !dbg !231
  %23 = bitcast i32* %FilterDevice__Flags.i to i8*, !dbg !231
  call void @llvm.lifetime.end(i64 4, i8* %23), !dbg !231
  %24 = bitcast i32* %TargetDevice__Characteristics.i to i8*, !dbg !231
  call void @llvm.lifetime.end(i64 4, i8* %24), !dbg !231
  %25 = bitcast i32* %FilterDevice__Characteristics.i to i8*, !dbg !231
  call void @llvm.lifetime.end(i64 4, i8* %25), !dbg !231
  %26 = bitcast i32* %propFlags.i to i8*, !dbg !231
  call void @llvm.lifetime.end(i64 4, i8* %26), !dbg !231
  %27 = load i32, i32* %5, align 4, !dbg !233
  %28 = call i32 @DiskPerfRegisterDevice(i32 %27), !dbg !234
  %29 = load i32, i32* %status, align 4, !dbg !235
  store i32 %29, i32* %Irp__IoStatus__Status, align 4, !dbg !236
  %30 = load i32, i32* %status, align 4, !dbg !237
  store i32 %30, i32* @myStatus, align 4, !dbg !238
  %31 = load i32, i32* %6, align 4, !dbg !239
  %32 = bitcast i32* %1 to i8*, !dbg !240
  call void @llvm.lifetime.start(i64 4, i8* %32), !dbg !240
  %33 = bitcast i32* %2 to i8*, !dbg !240
  call void @llvm.lifetime.start(i64 4, i8* %33), !dbg !240
  store i32 %31, i32* %1, align 4, !dbg !240
  store i32 0, i32* %2, align 4, !dbg !240
  %34 = load i32, i32* @s, align 4, !dbg !241
  %35 = load i32, i32* @NP, align 4, !dbg !245
  %36 = icmp eq i32 %34, %35, !dbg !246
  br i1 %36, label %IofCompleteRequest.exit, label %37, !dbg !247

; <label>:37                                      ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !248
  unreachable, !dbg !248

IofCompleteRequest.exit:                          ; preds = %0
  %38 = load i32, i32* @DC, align 4, !dbg !252
  store i32 %38, i32* @s, align 4, !dbg !254
  %39 = bitcast i32* %1 to i8*, !dbg !255
  call void @llvm.lifetime.end(i64 4, i8* %39), !dbg !255
  %40 = bitcast i32* %2 to i8*, !dbg !255
  call void @llvm.lifetime.end(i64 4, i8* %40), !dbg !255
  %41 = load i32, i32* %status, align 4, !dbg !256
  call void @llvm.dbg.declare(metadata i32* %3, metadata !99, metadata !100), !dbg !257
  call void @llvm.dbg.declare(metadata i32* %4, metadata !102, metadata !100), !dbg !258
  call void @llvm.dbg.declare(metadata i32* %FilterDevice__Flags.i, metadata !104, metadata !100), !dbg !259
  call void @llvm.dbg.declare(metadata i32* %TargetDevice__Characteristics.i, metadata !106, metadata !100), !dbg !260
  call void @llvm.dbg.declare(metadata i32* %FilterDevice__Characteristics.i, metadata !108, metadata !100), !dbg !261
  call void @llvm.dbg.declare(metadata i32* %propFlags.i, metadata !110, metadata !100), !dbg !262
  call void @llvm.dbg.declare(metadata i32* %1, metadata !263, metadata !100), !dbg !264
  call void @llvm.dbg.declare(metadata i32* %2, metadata !265, metadata !100), !dbg !266
  ret i32 %41, !dbg !267
}

; Function Attrs: nounwind ssp uwtable
define void @IofCompleteRequest(i32 %Irp, i32 %PriorityBoost) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %Irp, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !263, metadata !100), !dbg !268
  store i32 %PriorityBoost, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !265, metadata !100), !dbg !269
  %3 = load i32, i32* @s, align 4, !dbg !270
  %4 = load i32, i32* @NP, align 4, !dbg !271
  %5 = icmp eq i32 %3, %4, !dbg !272
  br i1 %5, label %6, label %8, !dbg !273

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* @DC, align 4, !dbg !274
  store i32 %7, i32* @s, align 4, !dbg !275
  br label %9, !dbg !276

; <label>:8                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !277
  unreachable, !dbg !277

errorFn.exit:                                     ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %errorFn.exit, %6
  ret void, !dbg !279
}

; Function Attrs: nounwind ssp uwtable
define i32 @DiskPerfRemoveDevice(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %DeviceObject__DeviceExtension = alloca i32, align 4
  %deviceExtension__WmilibContext = alloca i32, align 4
  %Irp__IoStatus__Status = alloca i32, align 4
  %status = alloca i32, align 4
  %deviceExtension = alloca i32, align 4
  %wmilibContext = alloca i32, align 4
  store i32 %DeviceObject, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !280, metadata !100), !dbg !281
  store i32 %Irp, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !282, metadata !100), !dbg !283
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !284, metadata !100), !dbg !285
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !286
  store i32 %5, i32* %DeviceObject__DeviceExtension, align 4, !dbg !285
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__WmilibContext, metadata !287, metadata !100), !dbg !288
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !289
  store i32 %6, i32* %deviceExtension__WmilibContext, align 4, !dbg !288
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !290, metadata !100), !dbg !291
  call void @llvm.dbg.declare(metadata i32* %status, metadata !292, metadata !100), !dbg !293
  call void @llvm.dbg.declare(metadata i32* %deviceExtension, metadata !294, metadata !100), !dbg !295
  call void @llvm.dbg.declare(metadata i32* %wmilibContext, metadata !296, metadata !100), !dbg !297
  %7 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !298
  store i32 %7, i32* %deviceExtension, align 4, !dbg !301
  %8 = load i32, i32* %deviceExtension__WmilibContext, align 4, !dbg !302
  store i32 %8, i32* %wmilibContext, align 4, !dbg !303
  %9 = load i32, i32* %3, align 4, !dbg !304
  %10 = load i32, i32* %4, align 4, !dbg !305
  %11 = call i32 @DiskPerfForwardIrpSynchronous(i32 %9, i32 %10), !dbg !306
  store i32 %11, i32* %status, align 4, !dbg !307
  %12 = load i32, i32* %status, align 4, !dbg !308
  store i32 %12, i32* %Irp__IoStatus__Status, align 4, !dbg !309
  %13 = load i32, i32* %status, align 4, !dbg !310
  store i32 %13, i32* @myStatus, align 4, !dbg !311
  %14 = load i32, i32* %4, align 4, !dbg !312
  %15 = bitcast i32* %1 to i8*, !dbg !313
  call void @llvm.lifetime.start(i64 4, i8* %15), !dbg !313
  %16 = bitcast i32* %2 to i8*, !dbg !313
  call void @llvm.lifetime.start(i64 4, i8* %16), !dbg !313
  store i32 %14, i32* %1, align 4, !dbg !313
  store i32 0, i32* %2, align 4, !dbg !313
  %17 = load i32, i32* @s, align 4, !dbg !314
  %18 = load i32, i32* @NP, align 4, !dbg !316
  %19 = icmp eq i32 %17, %18, !dbg !317
  br i1 %19, label %IofCompleteRequest.exit, label %20, !dbg !318

; <label>:20                                      ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !319
  unreachable, !dbg !319

IofCompleteRequest.exit:                          ; preds = %0
  %21 = load i32, i32* @DC, align 4, !dbg !321
  store i32 %21, i32* @s, align 4, !dbg !322
  %22 = bitcast i32* %1 to i8*, !dbg !323
  call void @llvm.lifetime.end(i64 4, i8* %22), !dbg !323
  %23 = bitcast i32* %2 to i8*, !dbg !323
  call void @llvm.lifetime.end(i64 4, i8* %23), !dbg !323
  %24 = load i32, i32* %status, align 4, !dbg !324
  call void @llvm.dbg.declare(metadata i32* %1, metadata !263, metadata !100), !dbg !325
  call void @llvm.dbg.declare(metadata i32* %2, metadata !265, metadata !100), !dbg !326
  ret i32 %24, !dbg !327
}

; Function Attrs: nounwind ssp uwtable
define i32 @DiskPerfSendToNextDriver(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %Irp__CurrentLocation = alloca i32, align 4
  %Irp__Tail__Overlay__CurrentStackLocation = alloca i32, align 4
  %DeviceObject__DeviceExtension = alloca i32, align 4
  %deviceExtension__TargetDeviceObject = alloca i32, align 4
  %deviceExtension = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %DeviceObject, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !328, metadata !100), !dbg !329
  store i32 %Irp, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !330, metadata !100), !dbg !331
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !332, metadata !100), !dbg !333
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !334
  store i32 %3, i32* %Irp__CurrentLocation, align 4, !dbg !333
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !335, metadata !100), !dbg !336
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !337
  store i32 %4, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !336
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !338, metadata !100), !dbg !339
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !340
  store i32 %5, i32* %DeviceObject__DeviceExtension, align 4, !dbg !339
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__TargetDeviceObject, metadata !341, metadata !100), !dbg !342
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !343
  store i32 %6, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !342
  call void @llvm.dbg.declare(metadata i32* %deviceExtension, metadata !344, metadata !100), !dbg !345
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !346, metadata !100), !dbg !347
  %7 = load i32, i32* @s, align 4, !dbg !348
  %8 = load i32, i32* @NP, align 4, !dbg !351
  %9 = icmp eq i32 %7, %8, !dbg !352
  br i1 %9, label %10, label %12, !dbg !353

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* @SKIP1, align 4, !dbg !354
  store i32 %11, i32* @s, align 4, !dbg !356
  br label %13, !dbg !357

; <label>:12                                      ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !358
  unreachable, !dbg !358

errorFn.exit:                                     ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %errorFn.exit, %10
  %14 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !362
  %15 = add nsw i32 %14, 1, !dbg !362
  store i32 %15, i32* %Irp__CurrentLocation, align 4, !dbg !362
  %16 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !364
  %17 = add nsw i32 %16, 1, !dbg !364
  store i32 %17, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !364
  %18 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !365
  store i32 %18, i32* %deviceExtension, align 4, !dbg !366
  %19 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !367
  %20 = load i32, i32* %2, align 4, !dbg !368
  %21 = call i32 @IofCallDriver(i32 %19, i32 %20), !dbg !369
  store i32 %21, i32* %tmp, align 4, !dbg !370
  %22 = load i32, i32* %tmp, align 4, !dbg !371
  ret i32 %22, !dbg !372
}

; Function Attrs: nounwind ssp uwtable
define i32 @DiskPerfDispatchPower(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %Irp__CurrentLocation = alloca i32, align 4
  %Irp__Tail__Overlay__CurrentStackLocation = alloca i32, align 4
  %DeviceObject__DeviceExtension = alloca i32, align 4
  %deviceExtension__TargetDeviceObject = alloca i32, align 4
  %deviceExtension = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %DeviceObject, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !373, metadata !100), !dbg !374
  store i32 %Irp, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !375, metadata !100), !dbg !376
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !377, metadata !100), !dbg !378
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !379
  store i32 %3, i32* %Irp__CurrentLocation, align 4, !dbg !378
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !380, metadata !100), !dbg !381
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !382
  store i32 %4, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !381
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !383, metadata !100), !dbg !384
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !385
  store i32 %5, i32* %DeviceObject__DeviceExtension, align 4, !dbg !384
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__TargetDeviceObject, metadata !386, metadata !100), !dbg !387
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !388
  store i32 %6, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !387
  call void @llvm.dbg.declare(metadata i32* %deviceExtension, metadata !389, metadata !100), !dbg !390
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !391, metadata !100), !dbg !392
  %7 = load i32, i32* @s, align 4, !dbg !393
  %8 = load i32, i32* @NP, align 4, !dbg !396
  %9 = icmp eq i32 %7, %8, !dbg !397
  br i1 %9, label %10, label %12, !dbg !398

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* @SKIP1, align 4, !dbg !399
  store i32 %11, i32* @s, align 4, !dbg !401
  br label %13, !dbg !402

; <label>:12                                      ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !403
  unreachable, !dbg !403

errorFn.exit:                                     ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %errorFn.exit, %10
  %14 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !407
  %15 = add nsw i32 %14, 1, !dbg !407
  store i32 %15, i32* %Irp__CurrentLocation, align 4, !dbg !407
  %16 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !409
  %17 = add nsw i32 %16, 1, !dbg !409
  store i32 %17, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !409
  %18 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !410
  store i32 %18, i32* %deviceExtension, align 4, !dbg !411
  %19 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !412
  %20 = load i32, i32* %2, align 4, !dbg !413
  %21 = call i32 @PoCallDriver(i32 %19, i32 %20), !dbg !414
  store i32 %21, i32* %tmp, align 4, !dbg !415
  %22 = load i32, i32* %tmp, align 4, !dbg !416
  ret i32 %22, !dbg !417
}

; Function Attrs: nounwind ssp uwtable
define i32 @DiskPerfForwardIrpSynchronous(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %Irp__Tail__Overlay__CurrentStackLocation = alloca i32, align 4
  %DeviceObject__DeviceExtension = alloca i32, align 4
  %deviceExtension__TargetDeviceObject = alloca i32, align 4
  %deviceExtension = alloca i32, align 4
  %event = alloca i32, align 4
  %status = alloca i32, align 4
  %nextIrpSp__Control = alloca i32, align 4
  %irpSp = alloca i32, align 4
  %nextIrpSp = alloca i32, align 4
  %irpSp__Context = alloca i32, align 4
  %irpSp__Control = alloca i32, align 4
  %irpSp___0 = alloca i32, align 4
  %__cil_tmp15 = alloca i64, align 8
  store i32 %DeviceObject, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !418, metadata !100), !dbg !419
  store i32 %Irp, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !420, metadata !100), !dbg !421
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !422, metadata !100), !dbg !423
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !424
  store i32 %3, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !423
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !425, metadata !100), !dbg !426
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !427
  store i32 %4, i32* %DeviceObject__DeviceExtension, align 4, !dbg !426
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__TargetDeviceObject, metadata !428, metadata !100), !dbg !429
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !430
  store i32 %5, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !429
  call void @llvm.dbg.declare(metadata i32* %deviceExtension, metadata !431, metadata !100), !dbg !432
  call void @llvm.dbg.declare(metadata i32* %event, metadata !433, metadata !100), !dbg !434
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !435
  store i32 %6, i32* %event, align 4, !dbg !434
  call void @llvm.dbg.declare(metadata i32* %status, metadata !436, metadata !100), !dbg !437
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp__Control, metadata !438, metadata !100), !dbg !439
  call void @llvm.dbg.declare(metadata i32* %irpSp, metadata !440, metadata !100), !dbg !441
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp, metadata !442, metadata !100), !dbg !443
  call void @llvm.dbg.declare(metadata i32* %irpSp__Context, metadata !444, metadata !100), !dbg !445
  call void @llvm.dbg.declare(metadata i32* %irpSp__Control, metadata !446, metadata !100), !dbg !447
  call void @llvm.dbg.declare(metadata i32* %irpSp___0, metadata !448, metadata !100), !dbg !449
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp15, metadata !450, metadata !100), !dbg !451
  %7 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !452
  store i32 %7, i32* %deviceExtension, align 4, !dbg !454
  %8 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !455
  store i32 %8, i32* %irpSp, align 4, !dbg !456
  %9 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !457
  %10 = sub nsw i32 %9, 1, !dbg !458
  store i32 %10, i32* %nextIrpSp, align 4, !dbg !459
  store i32 0, i32* %nextIrpSp__Control, align 4, !dbg !460
  %11 = load i32, i32* @s, align 4, !dbg !461
  %12 = load i32, i32* @NP, align 4, !dbg !463
  %13 = icmp ne i32 %11, %12, !dbg !464
  br i1 %13, label %14, label %15, !dbg !465

; <label>:14                                      ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !466
  unreachable, !dbg !466

errorFn.exit:                                     ; No predecessors!
  br label %21, !dbg !470

; <label>:15                                      ; preds = %0
  %16 = load i32, i32* @compRegistered, align 4, !dbg !471
  %17 = icmp ne i32 %16, 0, !dbg !474
  br i1 %17, label %18, label %19, !dbg !475

; <label>:18                                      ; preds = %15
  call void (...) @__VERIFIER_error() #6, !dbg !476
  unreachable, !dbg !476

errorFn.exit1:                                    ; No predecessors!
  br label %20, !dbg !480

; <label>:19                                      ; preds = %15
  store i32 1, i32* @compRegistered, align 4, !dbg !481
  store i32 0, i32* @routine, align 4, !dbg !483
  br label %20

; <label>:20                                      ; preds = %19, %errorFn.exit1
  br label %21

; <label>:21                                      ; preds = %20, %errorFn.exit
  %22 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !484
  %23 = sub nsw i32 %22, 1, !dbg !486
  store i32 %23, i32* %irpSp___0, align 4, !dbg !487
  %24 = load i32, i32* %event, align 4, !dbg !488
  store i32 %24, i32* %irpSp__Context, align 4, !dbg !489
  store i32 224, i32* %irpSp__Control, align 4, !dbg !490
  %25 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !491
  %26 = load i32, i32* %2, align 4, !dbg !492
  %27 = call i32 @IofCallDriver(i32 %25, i32 %26), !dbg !493
  store i32 %27, i32* %status, align 4, !dbg !494
  %28 = load i32, i32* %status, align 4, !dbg !495
  %29 = sext i32 %28 to i64, !dbg !497
  store i64 %29, i64* %__cil_tmp15, align 8, !dbg !498
  %30 = load i64, i64* %__cil_tmp15, align 8, !dbg !499
  %31 = icmp eq i64 %30, 259, !dbg !501
  br i1 %31, label %32, label %38, !dbg !502

; <label>:32                                      ; preds = %21
  %33 = load i32, i32* %event, align 4, !dbg !503
  %34 = load i32, i32* @Executive, align 4, !dbg !506
  %35 = load i32, i32* @KernelMode, align 4, !dbg !507
  %36 = call i32 @KeWaitForSingleObject(i32 %33, i32 %34, i32 %35, i32 0, i32 0), !dbg !508
  %37 = load i32, i32* @myStatus, align 4, !dbg !509
  store i32 %37, i32* %status, align 4, !dbg !510
  br label %38, !dbg !511

; <label>:38                                      ; preds = %32, %21
  %39 = load i32, i32* %status, align 4, !dbg !512
  ret i32 %39, !dbg !513
}

; Function Attrs: nounwind ssp uwtable
define i32 @DiskPerfCreate(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %DeviceObject, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !514, metadata !100), !dbg !515
  store i32 %Irp, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !516, metadata !100), !dbg !517
  store i32 0, i32* @myStatus, align 4, !dbg !518
  %5 = load i32, i32* %4, align 4, !dbg !521
  %6 = bitcast i32* %1 to i8*, !dbg !522
  call void @llvm.lifetime.start(i64 4, i8* %6), !dbg !522
  %7 = bitcast i32* %2 to i8*, !dbg !522
  call void @llvm.lifetime.start(i64 4, i8* %7), !dbg !522
  store i32 %5, i32* %1, align 4, !dbg !522
  store i32 0, i32* %2, align 4, !dbg !522
  %8 = load i32, i32* @s, align 4, !dbg !523
  %9 = load i32, i32* @NP, align 4, !dbg !525
  %10 = icmp eq i32 %8, %9, !dbg !526
  br i1 %10, label %IofCompleteRequest.exit, label %11, !dbg !527

; <label>:11                                      ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !528
  unreachable, !dbg !528

IofCompleteRequest.exit:                          ; preds = %0
  %12 = load i32, i32* @DC, align 4, !dbg !530
  store i32 %12, i32* @s, align 4, !dbg !531
  %13 = bitcast i32* %1 to i8*, !dbg !532
  call void @llvm.lifetime.end(i64 4, i8* %13), !dbg !532
  %14 = bitcast i32* %2 to i8*, !dbg !532
  call void @llvm.lifetime.end(i64 4, i8* %14), !dbg !532
  call void @llvm.dbg.declare(metadata i32* %1, metadata !263, metadata !100), !dbg !533
  call void @llvm.dbg.declare(metadata i32* %2, metadata !265, metadata !100), !dbg !534
  ret i32 0, !dbg !535
}

; Function Attrs: nounwind ssp uwtable
define i32 @DiskPerfIoCompletion(i32 %DeviceObject, i32 %Irp, i32 %Context) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %irpStack__MajorFunction = alloca i32, align 4
  %partitionCounters__BytesRead__QuadPart = alloca i32, align 4
  %Irp__IoStatus__Information = alloca i32, align 4
  %partitionCounters__ReadCount = alloca i32, align 4
  %partitionCounters__ReadTime__QuadPart = alloca i32, align 4
  %difference__QuadPart = alloca i32, align 4
  %partitionCounters__BytesWritten__QuadPart = alloca i32, align 4
  %partitionCounters__WriteCount = alloca i32, align 4
  %partitionCounters__WriteTime__QuadPart = alloca i32, align 4
  %Irp__Flags = alloca i32, align 4
  %partitionCounters__SplitCount = alloca i32, align 4
  %Irp__PendingReturned = alloca i32, align 4
  %Irp__Tail__Overlay__CurrentStackLocation__Control = alloca i32, align 4
  %partitionCounters = alloca i32, align 4
  %queueLen = alloca i32, align 4
  store i32 %DeviceObject, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !536, metadata !100), !dbg !537
  store i32 %Irp, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !538, metadata !100), !dbg !539
  store i32 %Context, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !540, metadata !100), !dbg !541
  call void @llvm.dbg.declare(metadata i32* %irpStack__MajorFunction, metadata !542, metadata !100), !dbg !543
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !544
  store i32 %5, i32* %irpStack__MajorFunction, align 4, !dbg !543
  call void @llvm.dbg.declare(metadata i32* %partitionCounters__BytesRead__QuadPart, metadata !545, metadata !100), !dbg !546
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !547
  store i32 %6, i32* %partitionCounters__BytesRead__QuadPart, align 4, !dbg !546
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !548, metadata !100), !dbg !549
  %7 = call i32 @__VERIFIER_nondet_int(), !dbg !550
  store i32 %7, i32* %Irp__IoStatus__Information, align 4, !dbg !549
  call void @llvm.dbg.declare(metadata i32* %partitionCounters__ReadCount, metadata !551, metadata !100), !dbg !552
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !553
  store i32 %8, i32* %partitionCounters__ReadCount, align 4, !dbg !552
  call void @llvm.dbg.declare(metadata i32* %partitionCounters__ReadTime__QuadPart, metadata !554, metadata !100), !dbg !555
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !556
  store i32 %9, i32* %partitionCounters__ReadTime__QuadPart, align 4, !dbg !555
  call void @llvm.dbg.declare(metadata i32* %difference__QuadPart, metadata !557, metadata !100), !dbg !558
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !559
  store i32 %10, i32* %difference__QuadPart, align 4, !dbg !558
  call void @llvm.dbg.declare(metadata i32* %partitionCounters__BytesWritten__QuadPart, metadata !560, metadata !100), !dbg !561
  %11 = call i32 @__VERIFIER_nondet_int(), !dbg !562
  store i32 %11, i32* %partitionCounters__BytesWritten__QuadPart, align 4, !dbg !561
  call void @llvm.dbg.declare(metadata i32* %partitionCounters__WriteCount, metadata !563, metadata !100), !dbg !564
  %12 = call i32 @__VERIFIER_nondet_int(), !dbg !565
  store i32 %12, i32* %partitionCounters__WriteCount, align 4, !dbg !564
  call void @llvm.dbg.declare(metadata i32* %partitionCounters__WriteTime__QuadPart, metadata !566, metadata !100), !dbg !567
  %13 = call i32 @__VERIFIER_nondet_int(), !dbg !568
  store i32 %13, i32* %partitionCounters__WriteTime__QuadPart, align 4, !dbg !567
  call void @llvm.dbg.declare(metadata i32* %Irp__Flags, metadata !569, metadata !100), !dbg !570
  %14 = call i32 @__VERIFIER_nondet_int(), !dbg !571
  store i32 %14, i32* %Irp__Flags, align 4, !dbg !570
  call void @llvm.dbg.declare(metadata i32* %partitionCounters__SplitCount, metadata !572, metadata !100), !dbg !573
  %15 = call i32 @__VERIFIER_nondet_int(), !dbg !574
  store i32 %15, i32* %partitionCounters__SplitCount, align 4, !dbg !573
  call void @llvm.dbg.declare(metadata i32* %Irp__PendingReturned, metadata !575, metadata !100), !dbg !576
  %16 = call i32 @__VERIFIER_nondet_int(), !dbg !577
  store i32 %16, i32* %Irp__PendingReturned, align 4, !dbg !576
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation__Control, metadata !578, metadata !100), !dbg !579
  call void @llvm.dbg.declare(metadata i32* %partitionCounters, metadata !580, metadata !100), !dbg !581
  %17 = call i32 @__VERIFIER_nondet_int(), !dbg !582
  store i32 %17, i32* %partitionCounters, align 4, !dbg !581
  call void @llvm.dbg.declare(metadata i32* %queueLen, metadata !583, metadata !100), !dbg !584
  %18 = call i32 @__VERIFIER_nondet_int(), !dbg !585
  store i32 %18, i32* %queueLen, align 4, !dbg !584
  %19 = load i32, i32* %partitionCounters, align 4, !dbg !586
  %20 = icmp eq i32 %19, 0, !dbg !589
  br i1 %20, label %21, label %22, !dbg !590

; <label>:21                                      ; preds = %0
  store i32 0, i32* %1, !dbg !591
  br label %68, !dbg !591

; <label>:22                                      ; preds = %0
  %23 = load i32, i32* %queueLen, align 4, !dbg !593
  %24 = icmp slt i32 %23, 0, !dbg !595
  br i1 %24, label %25, label %26, !dbg !596

; <label>:25                                      ; preds = %22
  br label %26, !dbg !597

; <label>:26                                      ; preds = %25, %22
  %27 = load i32, i32* %queueLen, align 4, !dbg !599
  %28 = icmp eq i32 %27, 0, !dbg !601
  br i1 %28, label %29, label %30, !dbg !602

; <label>:29                                      ; preds = %26
  br label %30, !dbg !603

; <label>:30                                      ; preds = %29, %26
  %31 = load i32, i32* %irpStack__MajorFunction, align 4, !dbg !605
  %32 = icmp eq i32 %31, 3, !dbg !607
  br i1 %32, label %33, label %42, !dbg !608

; <label>:33                                      ; preds = %30
  %34 = load i32, i32* %Irp__IoStatus__Information, align 4, !dbg !609
  %35 = load i32, i32* %partitionCounters__BytesRead__QuadPart, align 4, !dbg !611
  %36 = add nsw i32 %35, %34, !dbg !611
  store i32 %36, i32* %partitionCounters__BytesRead__QuadPart, align 4, !dbg !611
  %37 = load i32, i32* %partitionCounters__ReadCount, align 4, !dbg !612
  %38 = add nsw i32 %37, 1, !dbg !612
  store i32 %38, i32* %partitionCounters__ReadCount, align 4, !dbg !612
  %39 = load i32, i32* %difference__QuadPart, align 4, !dbg !613
  %40 = load i32, i32* %partitionCounters__ReadTime__QuadPart, align 4, !dbg !614
  %41 = add nsw i32 %40, %39, !dbg !614
  store i32 %41, i32* %partitionCounters__ReadTime__QuadPart, align 4, !dbg !614
  br label %51, !dbg !615

; <label>:42                                      ; preds = %30
  %43 = load i32, i32* %Irp__IoStatus__Information, align 4, !dbg !616
  %44 = load i32, i32* %partitionCounters__BytesWritten__QuadPart, align 4, !dbg !618
  %45 = add nsw i32 %44, %43, !dbg !618
  store i32 %45, i32* %partitionCounters__BytesWritten__QuadPart, align 4, !dbg !618
  %46 = load i32, i32* %partitionCounters__WriteCount, align 4, !dbg !619
  %47 = add nsw i32 %46, 1, !dbg !619
  store i32 %47, i32* %partitionCounters__WriteCount, align 4, !dbg !619
  %48 = load i32, i32* %difference__QuadPart, align 4, !dbg !620
  %49 = load i32, i32* %partitionCounters__WriteTime__QuadPart, align 4, !dbg !621
  %50 = add nsw i32 %49, %48, !dbg !621
  store i32 %50, i32* %partitionCounters__WriteTime__QuadPart, align 4, !dbg !621
  br label %51

; <label>:51                                      ; preds = %42, %33
  %52 = load i32, i32* %Irp__Flags, align 4, !dbg !622
  %53 = icmp ne i32 %52, 8, !dbg !624
  br i1 %53, label %54, label %57, !dbg !625

; <label>:54                                      ; preds = %51
  %55 = load i32, i32* %partitionCounters__SplitCount, align 4, !dbg !626
  %56 = add nsw i32 %55, 1, !dbg !626
  store i32 %56, i32* %partitionCounters__SplitCount, align 4, !dbg !626
  br label %58, !dbg !628

; <label>:57                                      ; preds = %51
  br label %58

; <label>:58                                      ; preds = %57, %54
  %59 = load i32, i32* %Irp__PendingReturned, align 4, !dbg !629
  %60 = icmp ne i32 %59, 0, !dbg !629
  br i1 %60, label %61, label %67, !dbg !631

; <label>:61                                      ; preds = %58
  %62 = load i32, i32* @pended, align 4, !dbg !632
  %63 = icmp eq i32 %62, 0, !dbg !635
  br i1 %63, label %64, label %65, !dbg !636

; <label>:64                                      ; preds = %61
  store i32 1, i32* @pended, align 4, !dbg !637
  br label %66, !dbg !639

; <label>:65                                      ; preds = %61
  call void (...) @__VERIFIER_error() #6, !dbg !640
  unreachable, !dbg !640

errorFn.exit:                                     ; No predecessors!
  br label %66

; <label>:66                                      ; preds = %errorFn.exit, %64
  br label %67, !dbg !644

; <label>:67                                      ; preds = %66, %58
  store i32 0, i32* %1, !dbg !645
  br label %68, !dbg !645

; <label>:68                                      ; preds = %67, %21
  %69 = load i32, i32* %1, !dbg !646
  ret i32 %69, !dbg !646
}

; Function Attrs: nounwind ssp uwtable
define i32 @DiskPerfDeviceControl(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %Irp__CurrentLocation = alloca i32, align 4
  %Irp__Tail__Overlay__CurrentStackLocation = alloca i32, align 4
  %DeviceObject__DeviceExtension = alloca i32, align 4
  %deviceExtension__TargetDeviceObject = alloca i32, align 4
  %currentIrpStack__Parameters__DeviceIoControl__IoControlCode = alloca i32, align 4
  %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength = alloca i32, align 4
  %sizeof__DISK_PERFORMANCE = alloca i32, align 4
  %Irp__IoStatus__Information = alloca i32, align 4
  %deviceExtension__DiskCounters = alloca i32, align 4
  %Irp__AssociatedIrp__SystemBuffer = alloca i32, align 4
  %deviceExtension__Processors = alloca i32, align 4
  %totalCounters__QueueDepth = alloca i32, align 4
  %deviceExtension__QueueDepth = alloca i32, align 4
  %Irp__IoStatus__Status = alloca i32, align 4
  %deviceExtension = alloca i32, align 4
  %currentIrpStack = alloca i32, align 4
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %totalCounters = alloca i32, align 4
  %diskCounters = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__cil_tmp24 = alloca i32, align 4
  %__cil_tmp25 = alloca i32, align 4
  %__cil_tmp26 = alloca i32, align 4
  store i32 %DeviceObject, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !647, metadata !100), !dbg !648
  store i32 %Irp, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !649, metadata !100), !dbg !650
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !651, metadata !100), !dbg !652
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !653
  store i32 %8, i32* %Irp__CurrentLocation, align 4, !dbg !652
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !654, metadata !100), !dbg !655
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !656
  store i32 %9, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !655
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !657, metadata !100), !dbg !658
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !659
  store i32 %10, i32* %DeviceObject__DeviceExtension, align 4, !dbg !658
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__TargetDeviceObject, metadata !660, metadata !100), !dbg !661
  %11 = call i32 @__VERIFIER_nondet_int(), !dbg !662
  store i32 %11, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !661
  call void @llvm.dbg.declare(metadata i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, metadata !663, metadata !100), !dbg !664
  %12 = call i32 @__VERIFIER_nondet_int(), !dbg !665
  store i32 %12, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !664
  call void @llvm.dbg.declare(metadata i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, metadata !666, metadata !100), !dbg !667
  %13 = call i32 @__VERIFIER_nondet_int(), !dbg !668
  store i32 %13, i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !667
  call void @llvm.dbg.declare(metadata i32* %sizeof__DISK_PERFORMANCE, metadata !669, metadata !100), !dbg !670
  %14 = call i32 @__VERIFIER_nondet_int(), !dbg !671
  store i32 %14, i32* %sizeof__DISK_PERFORMANCE, align 4, !dbg !670
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !672, metadata !100), !dbg !673
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__DiskCounters, metadata !674, metadata !100), !dbg !675
  %15 = call i32 @__VERIFIER_nondet_int(), !dbg !676
  store i32 %15, i32* %deviceExtension__DiskCounters, align 4, !dbg !675
  call void @llvm.dbg.declare(metadata i32* %Irp__AssociatedIrp__SystemBuffer, metadata !677, metadata !100), !dbg !678
  %16 = call i32 @__VERIFIER_nondet_int(), !dbg !679
  store i32 %16, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !678
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__Processors, metadata !680, metadata !100), !dbg !681
  %17 = call i32 @__VERIFIER_nondet_int(), !dbg !682
  store i32 %17, i32* %deviceExtension__Processors, align 4, !dbg !681
  call void @llvm.dbg.declare(metadata i32* %totalCounters__QueueDepth, metadata !683, metadata !100), !dbg !684
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__QueueDepth, metadata !685, metadata !100), !dbg !686
  %18 = call i32 @__VERIFIER_nondet_int(), !dbg !687
  store i32 %18, i32* %deviceExtension__QueueDepth, align 4, !dbg !686
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !688, metadata !100), !dbg !689
  call void @llvm.dbg.declare(metadata i32* %deviceExtension, metadata !690, metadata !100), !dbg !691
  call void @llvm.dbg.declare(metadata i32* %currentIrpStack, metadata !692, metadata !100), !dbg !693
  call void @llvm.dbg.declare(metadata i32* %status, metadata !694, metadata !100), !dbg !695
  call void @llvm.dbg.declare(metadata i32* %i, metadata !696, metadata !100), !dbg !697
  call void @llvm.dbg.declare(metadata i32* %totalCounters, metadata !698, metadata !100), !dbg !699
  call void @llvm.dbg.declare(metadata i32* %diskCounters, metadata !700, metadata !100), !dbg !701
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !702, metadata !100), !dbg !703
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp24, metadata !704, metadata !100), !dbg !705
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp25, metadata !706, metadata !100), !dbg !707
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp26, metadata !708, metadata !100), !dbg !709
  %19 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !710
  store i32 %19, i32* %deviceExtension, align 4, !dbg !712
  %20 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !713
  store i32 %20, i32* %currentIrpStack, align 4, !dbg !714
  store i32 32, i32* %__cil_tmp24, align 4, !dbg !715
  store i32 458752, i32* %__cil_tmp25, align 4, !dbg !715
  store i32 458784, i32* %__cil_tmp26, align 4, !dbg !715
  %21 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !717
  %22 = load i32, i32* %__cil_tmp26, align 4, !dbg !719
  %23 = icmp eq i32 %21, %22, !dbg !720
  call void @llvm.dbg.declare(metadata i32* %3, metadata !263, metadata !100), !dbg !721
  call void @llvm.dbg.declare(metadata i32* %4, metadata !265, metadata !100), !dbg !729
  call void @llvm.dbg.declare(metadata i32* %1, metadata !263, metadata !100), !dbg !730
  call void @llvm.dbg.declare(metadata i32* %2, metadata !265, metadata !100), !dbg !733
  br i1 %23, label %24, label %73, !dbg !734

; <label>:24                                      ; preds = %0
  %25 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !735
  %26 = load i32, i32* %sizeof__DISK_PERFORMANCE, align 4, !dbg !736
  %27 = icmp slt i32 %25, %26, !dbg !737
  br i1 %27, label %28, label %29, !dbg !738

; <label>:28                                      ; preds = %24
  store i32 -1073741789, i32* %status, align 4, !dbg !739
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !741
  br label %59, !dbg !742

; <label>:29                                      ; preds = %24
  %30 = load i32, i32* %deviceExtension__DiskCounters, align 4, !dbg !743
  store i32 %30, i32* %diskCounters, align 4, !dbg !744
  %31 = load i32, i32* %diskCounters, align 4, !dbg !745
  %32 = icmp eq i32 %31, 0, !dbg !746
  br i1 %32, label %33, label %44, !dbg !747

; <label>:33                                      ; preds = %29
  store i32 -1073741823, i32* %Irp__IoStatus__Status, align 4, !dbg !748
  store i32 -1073741823, i32* @myStatus, align 4, !dbg !749
  %34 = load i32, i32* %7, align 4, !dbg !750
  %35 = bitcast i32* %3 to i8*, !dbg !751
  call void @llvm.lifetime.start(i64 4, i8* %35), !dbg !751
  %36 = bitcast i32* %4 to i8*, !dbg !751
  call void @llvm.lifetime.start(i64 4, i8* %36), !dbg !751
  store i32 %34, i32* %3, align 4, !dbg !751
  store i32 0, i32* %4, align 4, !dbg !751
  %37 = load i32, i32* @s, align 4, !dbg !752
  %38 = load i32, i32* @NP, align 4, !dbg !753
  %39 = icmp eq i32 %37, %38, !dbg !754
  br i1 %39, label %IofCompleteRequest.exit, label %40, !dbg !755

; <label>:40                                      ; preds = %33
  call void (...) @__VERIFIER_error() #6, !dbg !756
  unreachable, !dbg !756

IofCompleteRequest.exit:                          ; preds = %33
  %41 = load i32, i32* @DC, align 4, !dbg !758
  store i32 %41, i32* @s, align 4, !dbg !759
  %42 = bitcast i32* %3 to i8*, !dbg !760
  call void @llvm.lifetime.end(i64 4, i8* %42), !dbg !760
  %43 = bitcast i32* %4 to i8*, !dbg !760
  call void @llvm.lifetime.end(i64 4, i8* %43), !dbg !760
  store i32 -1073741823, i32* %5, !dbg !761
  br label %82, !dbg !761

; <label>:44                                      ; preds = %29
  %45 = load i32, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !762
  store i32 %45, i32* %totalCounters, align 4, !dbg !763
  store i32 0, i32* %i, align 4, !dbg !764
  br label %46, !dbg !765

; <label>:46                                      ; preds = %52, %44
  br label %47, !dbg !767

; <label>:47                                      ; preds = %46
  %48 = load i32, i32* %i, align 4, !dbg !768
  %49 = load i32, i32* %deviceExtension__Processors, align 4, !dbg !771
  %50 = icmp sge i32 %48, %49, !dbg !772
  br i1 %50, label %51, label %52, !dbg !773

; <label>:51                                      ; preds = %47
  br label %56, !dbg !774

; <label>:52                                      ; preds = %47
  %53 = load i32, i32* %i, align 4, !dbg !776
  %54 = add nsw i32 %53, 1, !dbg !776
  store i32 %54, i32* %i, align 4, !dbg !776
  br label %46, !dbg !765
                                                  ; No predecessors!
  br label %56, !dbg !777

; <label>:56                                      ; preds = %55, %51
  %57 = load i32, i32* %deviceExtension__QueueDepth, align 4, !dbg !778
  store i32 %57, i32* %totalCounters__QueueDepth, align 4, !dbg !779
  store i32 0, i32* %status, align 4, !dbg !780
  %58 = load i32, i32* %sizeof__DISK_PERFORMANCE, align 4, !dbg !781
  store i32 %58, i32* %Irp__IoStatus__Information, align 4, !dbg !782
  br label %59

; <label>:59                                      ; preds = %56, %28
  %60 = load i32, i32* %status, align 4, !dbg !783
  store i32 %60, i32* %Irp__IoStatus__Status, align 4, !dbg !784
  %61 = load i32, i32* %status, align 4, !dbg !785
  store i32 %61, i32* @myStatus, align 4, !dbg !786
  %62 = load i32, i32* %7, align 4, !dbg !787
  %63 = bitcast i32* %1 to i8*, !dbg !788
  call void @llvm.lifetime.start(i64 4, i8* %63), !dbg !788
  %64 = bitcast i32* %2 to i8*, !dbg !788
  call void @llvm.lifetime.start(i64 4, i8* %64), !dbg !788
  store i32 %62, i32* %1, align 4, !dbg !788
  store i32 0, i32* %2, align 4, !dbg !788
  %65 = load i32, i32* @s, align 4, !dbg !789
  %66 = load i32, i32* @NP, align 4, !dbg !790
  %67 = icmp eq i32 %65, %66, !dbg !791
  br i1 %67, label %IofCompleteRequest.exit1, label %68, !dbg !792

; <label>:68                                      ; preds = %59
  call void (...) @__VERIFIER_error() #6, !dbg !793
  unreachable, !dbg !793

IofCompleteRequest.exit1:                         ; preds = %59
  %69 = load i32, i32* @DC, align 4, !dbg !795
  store i32 %69, i32* @s, align 4, !dbg !796
  %70 = bitcast i32* %1 to i8*, !dbg !797
  call void @llvm.lifetime.end(i64 4, i8* %70), !dbg !797
  %71 = bitcast i32* %2 to i8*, !dbg !797
  call void @llvm.lifetime.end(i64 4, i8* %71), !dbg !797
  %72 = load i32, i32* %status, align 4, !dbg !798
  store i32 %72, i32* %5, !dbg !799
  br label %82, !dbg !799

; <label>:73                                      ; preds = %0
  %74 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !800
  %75 = add nsw i32 %74, 1, !dbg !800
  store i32 %75, i32* %Irp__CurrentLocation, align 4, !dbg !800
  %76 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !803
  %77 = add nsw i32 %76, 1, !dbg !803
  store i32 %77, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !803
  %78 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !804
  %79 = load i32, i32* %7, align 4, !dbg !805
  %80 = call i32 @IofCallDriver(i32 %78, i32 %79), !dbg !806
  store i32 %80, i32* %tmp, align 4, !dbg !807
  %81 = load i32, i32* %tmp, align 4, !dbg !808
  store i32 %81, i32* %5, !dbg !809
  br label %82, !dbg !809

; <label>:82                                      ; preds = %73, %IofCompleteRequest.exit1, %IofCompleteRequest.exit
  %83 = load i32, i32* %5, !dbg !810
  ret i32 %83, !dbg !810
}

; Function Attrs: nounwind ssp uwtable
define i32 @DiskPerfShutdownFlush(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %DeviceObject__DeviceExtension = alloca i32, align 4
  %Irp__CurrentLocation = alloca i32, align 4
  %Irp__Tail__Overlay__CurrentStackLocation = alloca i32, align 4
  %deviceExtension__TargetDeviceObject = alloca i32, align 4
  %deviceExtension = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %DeviceObject, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !811, metadata !100), !dbg !812
  store i32 %Irp, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !813, metadata !100), !dbg !814
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !815, metadata !100), !dbg !816
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !817
  store i32 %3, i32* %DeviceObject__DeviceExtension, align 4, !dbg !816
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !818, metadata !100), !dbg !819
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !820
  store i32 %4, i32* %Irp__CurrentLocation, align 4, !dbg !819
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !821, metadata !100), !dbg !822
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !823
  store i32 %5, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !822
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__TargetDeviceObject, metadata !824, metadata !100), !dbg !825
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !826
  store i32 %6, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !825
  call void @llvm.dbg.declare(metadata i32* %deviceExtension, metadata !827, metadata !100), !dbg !828
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !829, metadata !100), !dbg !830
  %7 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !831
  store i32 %7, i32* %deviceExtension, align 4, !dbg !834
  %8 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !835
  %9 = add nsw i32 %8, 1, !dbg !835
  store i32 %9, i32* %Irp__CurrentLocation, align 4, !dbg !835
  %10 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !836
  %11 = add nsw i32 %10, 1, !dbg !836
  store i32 %11, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !836
  %12 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !837
  %13 = load i32, i32* %2, align 4, !dbg !838
  %14 = call i32 @IofCallDriver(i32 %12, i32 %13), !dbg !839
  store i32 %14, i32* %tmp, align 4, !dbg !840
  %15 = load i32, i32* %tmp, align 4, !dbg !841
  ret i32 %15, !dbg !842
}

; Function Attrs: nounwind ssp uwtable
define void @DiskPerfUnload(i32 %DriverObject) #0 {
  %1 = alloca i32, align 4
  store i32 %DriverObject, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !843, metadata !100), !dbg !844
  ret void, !dbg !845
}

; Function Attrs: nounwind ssp uwtable
define i32 @DiskPerfRegisterDevice(i32 %DeviceObject) #0 {
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
  %malloc_ret.i.7 = alloca i32, align 4
  %tmp_ndt_7.i.8 = alloca i32, align 4
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
  %malloc_ret.i.4 = alloca i32, align 4
  %tmp_ndt_7.i.5 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %malloc_ret.i.1 = alloca i32, align 4
  %tmp_ndt_7.i.2 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %malloc_ret.i = alloca i32, align 4
  %tmp_ndt_7.i = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %DeviceObject__DeviceExtension = alloca i32, align 4
  %deviceExtension__TargetDeviceObject = alloca i32, align 4
  %sizeof__number = alloca i32, align 4
  %ioStatus__Status = alloca i32, align 4
  %sizeof__VOLUME_NUMBER = alloca i32, align 4
  %volumeNumber__VolumeManagerName__0 = alloca i32, align 4
  %status = alloca i32, align 4
  %ioStatus = alloca i32, align 4
  %event = alloca i32, align 4
  %deviceExtension = alloca i32, align 4
  %irp = alloca i32, align 4
  %number = alloca i32, align 4
  %registrationFlag = alloca i32, align 4
  %sizeof__MOUNTDEV_NAME = alloca i32, align 4
  %output__NameLength = alloca i32, align 4
  %outputSize = alloca i32, align 4
  %output = alloca i32, align 4
  %volumeNumber = alloca i32, align 4
  %__cil_tmp20 = alloca i32, align 4
  %__cil_tmp21 = alloca i32, align 4
  %__cil_tmp22 = alloca i32, align 4
  %__cil_tmp23 = alloca i64, align 8
  %__cil_tmp24 = alloca i32, align 4
  %__cil_tmp25 = alloca i32, align 4
  %__cil_tmp26 = alloca i32, align 4
  %__cil_tmp27 = alloca i64, align 8
  %__cil_tmp28 = alloca i64, align 8
  %__cil_tmp29 = alloca i32, align 4
  %__cil_tmp30 = alloca i32, align 4
  %__cil_tmp31 = alloca i32, align 4
  %__cil_tmp32 = alloca i64, align 8
  %__cil_tmp33 = alloca i32, align 4
  %__cil_tmp34 = alloca i32, align 4
  %__cil_tmp35 = alloca i32, align 4
  %__cil_tmp36 = alloca i32, align 4
  %__cil_tmp37 = alloca i64, align 8
  %__cil_tmp38 = alloca i32, align 4
  %__cil_tmp39 = alloca i32, align 4
  store i32 %DeviceObject, i32* %42, align 4
  call void @llvm.dbg.declare(metadata i32* %42, metadata !847, metadata !100), !dbg !848
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !849, metadata !100), !dbg !850
  %43 = call i32 @__VERIFIER_nondet_int(), !dbg !851
  store i32 %43, i32* %DeviceObject__DeviceExtension, align 4, !dbg !850
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__TargetDeviceObject, metadata !852, metadata !100), !dbg !853
  %44 = call i32 @__VERIFIER_nondet_int(), !dbg !854
  store i32 %44, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !853
  call void @llvm.dbg.declare(metadata i32* %sizeof__number, metadata !855, metadata !100), !dbg !856
  %45 = call i32 @__VERIFIER_nondet_int(), !dbg !857
  store i32 %45, i32* %sizeof__number, align 4, !dbg !856
  call void @llvm.dbg.declare(metadata i32* %ioStatus__Status, metadata !858, metadata !100), !dbg !859
  %46 = call i32 @__VERIFIER_nondet_int(), !dbg !860
  store i32 %46, i32* %ioStatus__Status, align 4, !dbg !859
  call void @llvm.dbg.declare(metadata i32* %sizeof__VOLUME_NUMBER, metadata !861, metadata !100), !dbg !862
  %47 = call i32 @__VERIFIER_nondet_int(), !dbg !863
  store i32 %47, i32* %sizeof__VOLUME_NUMBER, align 4, !dbg !862
  call void @llvm.dbg.declare(metadata i32* %volumeNumber__VolumeManagerName__0, metadata !864, metadata !100), !dbg !865
  %48 = call i32 @__VERIFIER_nondet_int(), !dbg !866
  store i32 %48, i32* %volumeNumber__VolumeManagerName__0, align 4, !dbg !865
  call void @llvm.dbg.declare(metadata i32* %status, metadata !867, metadata !100), !dbg !868
  call void @llvm.dbg.declare(metadata i32* %ioStatus, metadata !869, metadata !100), !dbg !870
  %49 = call i32 @__VERIFIER_nondet_int(), !dbg !871
  store i32 %49, i32* %ioStatus, align 4, !dbg !870
  call void @llvm.dbg.declare(metadata i32* %event, metadata !872, metadata !100), !dbg !873
  %50 = call i32 @__VERIFIER_nondet_int(), !dbg !874
  store i32 %50, i32* %event, align 4, !dbg !873
  call void @llvm.dbg.declare(metadata i32* %deviceExtension, metadata !875, metadata !100), !dbg !876
  call void @llvm.dbg.declare(metadata i32* %irp, metadata !877, metadata !100), !dbg !878
  call void @llvm.dbg.declare(metadata i32* %number, metadata !879, metadata !100), !dbg !880
  %51 = call i32 @__VERIFIER_nondet_int(), !dbg !881
  store i32 %51, i32* %number, align 4, !dbg !880
  call void @llvm.dbg.declare(metadata i32* %registrationFlag, metadata !882, metadata !100), !dbg !883
  call void @llvm.dbg.declare(metadata i32* %sizeof__MOUNTDEV_NAME, metadata !884, metadata !100), !dbg !885
  %52 = call i32 @__VERIFIER_nondet_int(), !dbg !886
  store i32 %52, i32* %sizeof__MOUNTDEV_NAME, align 4, !dbg !885
  call void @llvm.dbg.declare(metadata i32* %output__NameLength, metadata !887, metadata !100), !dbg !888
  %53 = call i32 @__VERIFIER_nondet_int(), !dbg !889
  store i32 %53, i32* %output__NameLength, align 4, !dbg !888
  call void @llvm.dbg.declare(metadata i32* %outputSize, metadata !890, metadata !100), !dbg !891
  call void @llvm.dbg.declare(metadata i32* %output, metadata !892, metadata !100), !dbg !893
  %54 = call i32 @__VERIFIER_nondet_int(), !dbg !894
  store i32 %54, i32* %output, align 4, !dbg !893
  call void @llvm.dbg.declare(metadata i32* %volumeNumber, metadata !895, metadata !100), !dbg !896
  %55 = call i32 @__VERIFIER_nondet_int(), !dbg !897
  store i32 %55, i32* %volumeNumber, align 4, !dbg !896
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp20, metadata !898, metadata !100), !dbg !899
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp21, metadata !900, metadata !100), !dbg !901
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp22, metadata !902, metadata !100), !dbg !903
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp23, metadata !904, metadata !100), !dbg !905
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp24, metadata !906, metadata !100), !dbg !907
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp25, metadata !908, metadata !100), !dbg !909
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp26, metadata !910, metadata !100), !dbg !911
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp27, metadata !912, metadata !100), !dbg !913
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp28, metadata !914, metadata !100), !dbg !915
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp29, metadata !916, metadata !100), !dbg !917
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp30, metadata !918, metadata !100), !dbg !919
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp31, metadata !920, metadata !100), !dbg !921
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp32, metadata !922, metadata !100), !dbg !923
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp33, metadata !924, metadata !100), !dbg !925
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp34, metadata !926, metadata !100), !dbg !927
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp35, metadata !928, metadata !100), !dbg !929
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp36, metadata !930, metadata !100), !dbg !931
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp37, metadata !932, metadata !100), !dbg !933
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp38, metadata !934, metadata !100), !dbg !935
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp39, metadata !936, metadata !100), !dbg !937
  store i32 0, i32* %registrationFlag, align 4, !dbg !938
  %56 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !941
  store i32 %56, i32* %deviceExtension, align 4, !dbg !942
  store i32 4224, i32* %__cil_tmp20, align 4, !dbg !943
  store i32 2949120, i32* %__cil_tmp21, align 4, !dbg !943
  store i32 2953344, i32* %__cil_tmp22, align 4, !dbg !943
  %57 = load i32, i32* %__cil_tmp22, align 4, !dbg !944
  %58 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !945
  %59 = load i32, i32* %number, align 4, !dbg !946
  %60 = load i32, i32* %sizeof__number, align 4, !dbg !947
  %61 = load i32, i32* %event, align 4, !dbg !948
  %62 = load i32, i32* %ioStatus, align 4, !dbg !949
  %63 = bitcast i32* %31 to i8*, !dbg !950
  call void @llvm.lifetime.start(i64 4, i8* %63), !dbg !950
  %64 = bitcast i32* %32 to i8*, !dbg !950
  call void @llvm.lifetime.start(i64 4, i8* %64), !dbg !950
  %65 = bitcast i32* %33 to i8*, !dbg !950
  call void @llvm.lifetime.start(i64 4, i8* %65), !dbg !950
  %66 = bitcast i32* %34 to i8*, !dbg !950
  call void @llvm.lifetime.start(i64 4, i8* %66), !dbg !950
  %67 = bitcast i32* %35 to i8*, !dbg !950
  call void @llvm.lifetime.start(i64 4, i8* %67), !dbg !950
  %68 = bitcast i32* %36 to i8*, !dbg !950
  call void @llvm.lifetime.start(i64 4, i8* %68), !dbg !950
  %69 = bitcast i32* %37 to i8*, !dbg !950
  call void @llvm.lifetime.start(i64 4, i8* %69), !dbg !950
  %70 = bitcast i32* %38 to i8*, !dbg !950
  call void @llvm.lifetime.start(i64 4, i8* %70), !dbg !950
  %71 = bitcast i32* %39 to i8*, !dbg !950
  call void @llvm.lifetime.start(i64 4, i8* %71), !dbg !950
  %72 = bitcast i32* %40 to i8*, !dbg !950
  call void @llvm.lifetime.start(i64 4, i8* %72), !dbg !950
  %73 = bitcast i32* %malloc_ret.i to i8*, !dbg !950
  call void @llvm.lifetime.start(i64 4, i8* %73), !dbg !950
  %74 = bitcast i32* %tmp_ndt_7.i to i8*, !dbg !950
  call void @llvm.lifetime.start(i64 4, i8* %74), !dbg !950
  store i32 %57, i32* %32, align 4, !dbg !950
  store i32 %58, i32* %33, align 4, !dbg !950
  store i32 0, i32* %34, align 4, !dbg !950
  store i32 0, i32* %35, align 4, !dbg !950
  store i32 %59, i32* %36, align 4, !dbg !950
  store i32 %60, i32* %37, align 4, !dbg !950
  store i32 0, i32* %38, align 4, !dbg !950
  store i32 %61, i32* %39, align 4, !dbg !950
  store i32 %62, i32* %40, align 4, !dbg !950
  %75 = call i32 @__VERIFIER_nondet_int() #4, !dbg !951
  store i32 %75, i32* %malloc_ret.i, align 4, !dbg !953
  store i32 1, i32* @customIrp, align 4, !dbg !954
  %76 = call i32 @__VERIFIER_nondet_int() #4, !dbg !956
  store i32 %76, i32* %tmp_ndt_7.i, align 4, !dbg !957
  %77 = load i32, i32* %tmp_ndt_7.i, align 4, !dbg !958
  %78 = icmp eq i32 %77, 0, !dbg !960
  call void @llvm.dbg.declare(metadata i32* %22, metadata !961, metadata !100), !dbg !962
  call void @llvm.dbg.declare(metadata i32* %23, metadata !967, metadata !100), !dbg !968
  call void @llvm.dbg.declare(metadata i32* %24, metadata !969, metadata !100), !dbg !970
  call void @llvm.dbg.declare(metadata i32* %25, metadata !971, metadata !100), !dbg !972
  call void @llvm.dbg.declare(metadata i32* %26, metadata !973, metadata !100), !dbg !974
  call void @llvm.dbg.declare(metadata i32* %27, metadata !975, metadata !100), !dbg !976
  call void @llvm.dbg.declare(metadata i32* %28, metadata !977, metadata !100), !dbg !978
  call void @llvm.dbg.declare(metadata i32* %29, metadata !979, metadata !100), !dbg !980
  call void @llvm.dbg.declare(metadata i32* %30, metadata !981, metadata !100), !dbg !982
  call void @llvm.dbg.declare(metadata i32* %malloc_ret.i.1, metadata !983, metadata !100), !dbg !984
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_7.i.2, metadata !985, metadata !100), !dbg !986
  call void @llvm.dbg.declare(metadata i32* %12, metadata !961, metadata !100), !dbg !987
  call void @llvm.dbg.declare(metadata i32* %13, metadata !967, metadata !100), !dbg !993
  call void @llvm.dbg.declare(metadata i32* %14, metadata !969, metadata !100), !dbg !994
  call void @llvm.dbg.declare(metadata i32* %15, metadata !971, metadata !100), !dbg !995
  call void @llvm.dbg.declare(metadata i32* %16, metadata !973, metadata !100), !dbg !996
  call void @llvm.dbg.declare(metadata i32* %17, metadata !975, metadata !100), !dbg !997
  call void @llvm.dbg.declare(metadata i32* %18, metadata !977, metadata !100), !dbg !998
  call void @llvm.dbg.declare(metadata i32* %19, metadata !979, metadata !100), !dbg !999
  call void @llvm.dbg.declare(metadata i32* %20, metadata !981, metadata !100), !dbg !1000
  call void @llvm.dbg.declare(metadata i32* %malloc_ret.i.4, metadata !983, metadata !100), !dbg !1001
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_7.i.5, metadata !985, metadata !100), !dbg !1002
  call void @llvm.dbg.declare(metadata i32* %2, metadata !961, metadata !100), !dbg !1003
  call void @llvm.dbg.declare(metadata i32* %3, metadata !967, metadata !100), !dbg !1006
  call void @llvm.dbg.declare(metadata i32* %4, metadata !969, metadata !100), !dbg !1007
  call void @llvm.dbg.declare(metadata i32* %5, metadata !971, metadata !100), !dbg !1008
  call void @llvm.dbg.declare(metadata i32* %6, metadata !973, metadata !100), !dbg !1009
  call void @llvm.dbg.declare(metadata i32* %7, metadata !975, metadata !100), !dbg !1010
  call void @llvm.dbg.declare(metadata i32* %8, metadata !977, metadata !100), !dbg !1011
  call void @llvm.dbg.declare(metadata i32* %9, metadata !979, metadata !100), !dbg !1012
  call void @llvm.dbg.declare(metadata i32* %10, metadata !981, metadata !100), !dbg !1013
  call void @llvm.dbg.declare(metadata i32* %malloc_ret.i.7, metadata !983, metadata !100), !dbg !1014
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_7.i.8, metadata !985, metadata !100), !dbg !1015
  br i1 %78, label %79, label %81, !dbg !1016

; <label>:79                                      ; preds = %0
  %80 = load i32, i32* %malloc_ret.i, align 4, !dbg !1017
  store i32 %80, i32* %31, !dbg !1021
  br label %IoBuildDeviceIoControlRequest.exit, !dbg !1021

; <label>:81                                      ; preds = %0
  store i32 0, i32* %31, !dbg !1022
  br label %IoBuildDeviceIoControlRequest.exit, !dbg !1022

IoBuildDeviceIoControlRequest.exit:               ; preds = %79, %81
  %82 = load i32, i32* %31, !dbg !1023
  %83 = bitcast i32* %31 to i8*, !dbg !1023
  call void @llvm.lifetime.end(i64 4, i8* %83), !dbg !1023
  %84 = bitcast i32* %32 to i8*, !dbg !1023
  call void @llvm.lifetime.end(i64 4, i8* %84), !dbg !1023
  %85 = bitcast i32* %33 to i8*, !dbg !1023
  call void @llvm.lifetime.end(i64 4, i8* %85), !dbg !1023
  %86 = bitcast i32* %34 to i8*, !dbg !1023
  call void @llvm.lifetime.end(i64 4, i8* %86), !dbg !1023
  %87 = bitcast i32* %35 to i8*, !dbg !1023
  call void @llvm.lifetime.end(i64 4, i8* %87), !dbg !1023
  %88 = bitcast i32* %36 to i8*, !dbg !1023
  call void @llvm.lifetime.end(i64 4, i8* %88), !dbg !1023
  %89 = bitcast i32* %37 to i8*, !dbg !1023
  call void @llvm.lifetime.end(i64 4, i8* %89), !dbg !1023
  %90 = bitcast i32* %38 to i8*, !dbg !1023
  call void @llvm.lifetime.end(i64 4, i8* %90), !dbg !1023
  %91 = bitcast i32* %39 to i8*, !dbg !1023
  call void @llvm.lifetime.end(i64 4, i8* %91), !dbg !1023
  %92 = bitcast i32* %40 to i8*, !dbg !1023
  call void @llvm.lifetime.end(i64 4, i8* %92), !dbg !1023
  %93 = bitcast i32* %malloc_ret.i to i8*, !dbg !1023
  call void @llvm.lifetime.end(i64 4, i8* %93), !dbg !1023
  %94 = bitcast i32* %tmp_ndt_7.i to i8*, !dbg !1023
  call void @llvm.lifetime.end(i64 4, i8* %94), !dbg !1023
  store i32 %82, i32* %irp, align 4, !dbg !1024
  %95 = load i32, i32* %irp, align 4, !dbg !1025
  %96 = icmp ne i32 %95, 0, !dbg !1025
  call void @llvm.dbg.declare(metadata i32* %32, metadata !961, metadata !100), !dbg !1027
  call void @llvm.dbg.declare(metadata i32* %33, metadata !967, metadata !100), !dbg !1028
  call void @llvm.dbg.declare(metadata i32* %34, metadata !969, metadata !100), !dbg !1029
  call void @llvm.dbg.declare(metadata i32* %35, metadata !971, metadata !100), !dbg !1030
  call void @llvm.dbg.declare(metadata i32* %36, metadata !973, metadata !100), !dbg !1031
  call void @llvm.dbg.declare(metadata i32* %37, metadata !975, metadata !100), !dbg !1032
  call void @llvm.dbg.declare(metadata i32* %38, metadata !977, metadata !100), !dbg !1033
  call void @llvm.dbg.declare(metadata i32* %39, metadata !979, metadata !100), !dbg !1034
  call void @llvm.dbg.declare(metadata i32* %40, metadata !981, metadata !100), !dbg !1035
  call void @llvm.dbg.declare(metadata i32* %malloc_ret.i, metadata !983, metadata !100), !dbg !953
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_7.i, metadata !985, metadata !100), !dbg !1036
  br i1 %96, label %98, label %97, !dbg !1037

; <label>:97                                      ; preds = %IoBuildDeviceIoControlRequest.exit
  store i32 -1073741670, i32* %41, !dbg !1038
  br label %327, !dbg !1038

; <label>:98                                      ; preds = %IoBuildDeviceIoControlRequest.exit
  %99 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1040
  %100 = load i32, i32* %irp, align 4, !dbg !1042
  %101 = call i32 @IofCallDriver(i32 %99, i32 %100), !dbg !1043
  store i32 %101, i32* %status, align 4, !dbg !1044
  %102 = load i32, i32* %status, align 4, !dbg !1045
  %103 = sext i32 %102 to i64, !dbg !1047
  store i64 %103, i64* %__cil_tmp23, align 8, !dbg !1048
  %104 = load i64, i64* %__cil_tmp23, align 8, !dbg !1049
  %105 = icmp eq i64 %104, 259, !dbg !1051
  br i1 %105, label %106, label %112, !dbg !1052

; <label>:106                                     ; preds = %98
  %107 = load i32, i32* %event, align 4, !dbg !1053
  %108 = load i32, i32* @Executive, align 4, !dbg !1056
  %109 = load i32, i32* @KernelMode, align 4, !dbg !1057
  %110 = call i32 @KeWaitForSingleObject(i32 %107, i32 %108, i32 %109, i32 0, i32 0), !dbg !1058
  %111 = load i32, i32* %ioStatus__Status, align 4, !dbg !1059
  store i32 %111, i32* %status, align 4, !dbg !1060
  br label %112, !dbg !1061

; <label>:112                                     ; preds = %106, %98
  %113 = load i32, i32* %status, align 4, !dbg !1062
  %114 = icmp slt i32 %113, 0, !dbg !1063
  br i1 %114, label %115, label %321, !dbg !1064

; <label>:115                                     ; preds = %112
  %116 = load i32, i32* %sizeof__MOUNTDEV_NAME, align 4, !dbg !1065
  store i32 %116, i32* %outputSize, align 4, !dbg !1066
  %117 = load i32, i32* %output, align 4, !dbg !1067
  %118 = icmp ne i32 %117, 0, !dbg !1067
  br i1 %118, label %120, label %119, !dbg !1069

; <label>:119                                     ; preds = %115
  store i32 -1073741670, i32* %41, !dbg !1070
  br label %327, !dbg !1070

; <label>:120                                     ; preds = %115
  store i32 8, i32* %__cil_tmp24, align 4, !dbg !1072
  store i32 5046272, i32* %__cil_tmp25, align 4, !dbg !1072
  store i32 5046280, i32* %__cil_tmp26, align 4, !dbg !1072
  %121 = load i32, i32* %__cil_tmp26, align 4, !dbg !1073
  %122 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1074
  %123 = load i32, i32* %output, align 4, !dbg !1075
  %124 = load i32, i32* %outputSize, align 4, !dbg !1076
  %125 = load i32, i32* %event, align 4, !dbg !1077
  %126 = load i32, i32* %ioStatus, align 4, !dbg !1078
  %127 = bitcast i32* %21 to i8*, !dbg !1079
  call void @llvm.lifetime.start(i64 4, i8* %127), !dbg !1079
  %128 = bitcast i32* %22 to i8*, !dbg !1079
  call void @llvm.lifetime.start(i64 4, i8* %128), !dbg !1079
  %129 = bitcast i32* %23 to i8*, !dbg !1079
  call void @llvm.lifetime.start(i64 4, i8* %129), !dbg !1079
  %130 = bitcast i32* %24 to i8*, !dbg !1079
  call void @llvm.lifetime.start(i64 4, i8* %130), !dbg !1079
  %131 = bitcast i32* %25 to i8*, !dbg !1079
  call void @llvm.lifetime.start(i64 4, i8* %131), !dbg !1079
  %132 = bitcast i32* %26 to i8*, !dbg !1079
  call void @llvm.lifetime.start(i64 4, i8* %132), !dbg !1079
  %133 = bitcast i32* %27 to i8*, !dbg !1079
  call void @llvm.lifetime.start(i64 4, i8* %133), !dbg !1079
  %134 = bitcast i32* %28 to i8*, !dbg !1079
  call void @llvm.lifetime.start(i64 4, i8* %134), !dbg !1079
  %135 = bitcast i32* %29 to i8*, !dbg !1079
  call void @llvm.lifetime.start(i64 4, i8* %135), !dbg !1079
  %136 = bitcast i32* %30 to i8*, !dbg !1079
  call void @llvm.lifetime.start(i64 4, i8* %136), !dbg !1079
  %137 = bitcast i32* %malloc_ret.i.1 to i8*, !dbg !1079
  call void @llvm.lifetime.start(i64 4, i8* %137), !dbg !1079
  %138 = bitcast i32* %tmp_ndt_7.i.2 to i8*, !dbg !1079
  call void @llvm.lifetime.start(i64 4, i8* %138), !dbg !1079
  store i32 %121, i32* %22, align 4, !dbg !1079
  store i32 %122, i32* %23, align 4, !dbg !1079
  store i32 0, i32* %24, align 4, !dbg !1079
  store i32 0, i32* %25, align 4, !dbg !1079
  store i32 %123, i32* %26, align 4, !dbg !1079
  store i32 %124, i32* %27, align 4, !dbg !1079
  store i32 0, i32* %28, align 4, !dbg !1079
  store i32 %125, i32* %29, align 4, !dbg !1079
  store i32 %126, i32* %30, align 4, !dbg !1079
  %139 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1080
  store i32 %139, i32* %malloc_ret.i.1, align 4, !dbg !984
  store i32 1, i32* @customIrp, align 4, !dbg !1081
  %140 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1082
  store i32 %140, i32* %tmp_ndt_7.i.2, align 4, !dbg !1083
  %141 = load i32, i32* %tmp_ndt_7.i.2, align 4, !dbg !1084
  %142 = icmp eq i32 %141, 0, !dbg !1085
  br i1 %142, label %143, label %145, !dbg !1086

; <label>:143                                     ; preds = %120
  %144 = load i32, i32* %malloc_ret.i.1, align 4, !dbg !1087
  store i32 %144, i32* %21, !dbg !1088
  br label %IoBuildDeviceIoControlRequest.exit3, !dbg !1088

; <label>:145                                     ; preds = %120
  store i32 0, i32* %21, !dbg !1089
  br label %IoBuildDeviceIoControlRequest.exit3, !dbg !1089

IoBuildDeviceIoControlRequest.exit3:              ; preds = %143, %145
  %146 = load i32, i32* %21, !dbg !1090
  %147 = bitcast i32* %21 to i8*, !dbg !1090
  call void @llvm.lifetime.end(i64 4, i8* %147), !dbg !1090
  %148 = bitcast i32* %22 to i8*, !dbg !1090
  call void @llvm.lifetime.end(i64 4, i8* %148), !dbg !1090
  %149 = bitcast i32* %23 to i8*, !dbg !1090
  call void @llvm.lifetime.end(i64 4, i8* %149), !dbg !1090
  %150 = bitcast i32* %24 to i8*, !dbg !1090
  call void @llvm.lifetime.end(i64 4, i8* %150), !dbg !1090
  %151 = bitcast i32* %25 to i8*, !dbg !1090
  call void @llvm.lifetime.end(i64 4, i8* %151), !dbg !1090
  %152 = bitcast i32* %26 to i8*, !dbg !1090
  call void @llvm.lifetime.end(i64 4, i8* %152), !dbg !1090
  %153 = bitcast i32* %27 to i8*, !dbg !1090
  call void @llvm.lifetime.end(i64 4, i8* %153), !dbg !1090
  %154 = bitcast i32* %28 to i8*, !dbg !1090
  call void @llvm.lifetime.end(i64 4, i8* %154), !dbg !1090
  %155 = bitcast i32* %29 to i8*, !dbg !1090
  call void @llvm.lifetime.end(i64 4, i8* %155), !dbg !1090
  %156 = bitcast i32* %30 to i8*, !dbg !1090
  call void @llvm.lifetime.end(i64 4, i8* %156), !dbg !1090
  %157 = bitcast i32* %malloc_ret.i.1 to i8*, !dbg !1090
  call void @llvm.lifetime.end(i64 4, i8* %157), !dbg !1090
  %158 = bitcast i32* %tmp_ndt_7.i.2 to i8*, !dbg !1090
  call void @llvm.lifetime.end(i64 4, i8* %158), !dbg !1090
  store i32 %146, i32* %irp, align 4, !dbg !1091
  %159 = load i32, i32* %irp, align 4, !dbg !1092
  %160 = icmp ne i32 %159, 0, !dbg !1092
  br i1 %160, label %162, label %161, !dbg !1094

; <label>:161                                     ; preds = %IoBuildDeviceIoControlRequest.exit3
  store i32 -1073741670, i32* %41, !dbg !1095
  br label %327, !dbg !1095

; <label>:162                                     ; preds = %IoBuildDeviceIoControlRequest.exit3
  %163 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1097
  %164 = load i32, i32* %irp, align 4, !dbg !1099
  %165 = call i32 @IofCallDriver(i32 %163, i32 %164), !dbg !1100
  store i32 %165, i32* %status, align 4, !dbg !1101
  %166 = load i32, i32* %status, align 4, !dbg !1102
  %167 = sext i32 %166 to i64, !dbg !1104
  store i64 %167, i64* %__cil_tmp27, align 8, !dbg !1105
  %168 = load i64, i64* %__cil_tmp27, align 8, !dbg !1106
  %169 = icmp eq i64 %168, 259, !dbg !1108
  br i1 %169, label %170, label %176, !dbg !1109

; <label>:170                                     ; preds = %162
  %171 = load i32, i32* %event, align 4, !dbg !1110
  %172 = load i32, i32* @Executive, align 4, !dbg !1113
  %173 = load i32, i32* @KernelMode, align 4, !dbg !1114
  %174 = call i32 @KeWaitForSingleObject(i32 %171, i32 %172, i32 %173, i32 0, i32 0), !dbg !1115
  %175 = load i32, i32* %ioStatus__Status, align 4, !dbg !1116
  store i32 %175, i32* %status, align 4, !dbg !1117
  br label %176, !dbg !1118

; <label>:176                                     ; preds = %170, %162
  %177 = load i32, i32* %status, align 4, !dbg !1119
  %178 = sext i32 %177 to i64, !dbg !1120
  store i64 %178, i64* %__cil_tmp28, align 8, !dbg !1121
  %179 = load i64, i64* %__cil_tmp28, align 8, !dbg !1122
  %180 = icmp eq i64 %179, -2147483643, !dbg !1123
  br i1 %180, label %181, label %245, !dbg !1124

; <label>:181                                     ; preds = %176
  %182 = load i32, i32* %sizeof__MOUNTDEV_NAME, align 4, !dbg !1125
  %183 = load i32, i32* %output__NameLength, align 4, !dbg !1126
  %184 = add nsw i32 %182, %183, !dbg !1127
  store i32 %184, i32* %outputSize, align 4, !dbg !1128
  %185 = load i32, i32* %output, align 4, !dbg !1129
  %186 = icmp ne i32 %185, 0, !dbg !1129
  br i1 %186, label %188, label %187, !dbg !1131

; <label>:187                                     ; preds = %181
  store i32 -1073741670, i32* %41, !dbg !1132
  br label %327, !dbg !1132

; <label>:188                                     ; preds = %181
  store i32 8, i32* %__cil_tmp29, align 4, !dbg !1134
  store i32 5046272, i32* %__cil_tmp30, align 4, !dbg !1134
  store i32 5046280, i32* %__cil_tmp31, align 4, !dbg !1134
  %189 = load i32, i32* %__cil_tmp31, align 4, !dbg !1135
  %190 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1136
  %191 = load i32, i32* %output, align 4, !dbg !1137
  %192 = load i32, i32* %outputSize, align 4, !dbg !1138
  %193 = load i32, i32* %event, align 4, !dbg !1139
  %194 = load i32, i32* %ioStatus, align 4, !dbg !1140
  %195 = bitcast i32* %11 to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 4, i8* %195), !dbg !1141
  %196 = bitcast i32* %12 to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 4, i8* %196), !dbg !1141
  %197 = bitcast i32* %13 to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 4, i8* %197), !dbg !1141
  %198 = bitcast i32* %14 to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 4, i8* %198), !dbg !1141
  %199 = bitcast i32* %15 to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 4, i8* %199), !dbg !1141
  %200 = bitcast i32* %16 to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 4, i8* %200), !dbg !1141
  %201 = bitcast i32* %17 to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 4, i8* %201), !dbg !1141
  %202 = bitcast i32* %18 to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 4, i8* %202), !dbg !1141
  %203 = bitcast i32* %19 to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 4, i8* %203), !dbg !1141
  %204 = bitcast i32* %20 to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 4, i8* %204), !dbg !1141
  %205 = bitcast i32* %malloc_ret.i.4 to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 4, i8* %205), !dbg !1141
  %206 = bitcast i32* %tmp_ndt_7.i.5 to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 4, i8* %206), !dbg !1141
  store i32 %189, i32* %12, align 4, !dbg !1141
  store i32 %190, i32* %13, align 4, !dbg !1141
  store i32 0, i32* %14, align 4, !dbg !1141
  store i32 0, i32* %15, align 4, !dbg !1141
  store i32 %191, i32* %16, align 4, !dbg !1141
  store i32 %192, i32* %17, align 4, !dbg !1141
  store i32 0, i32* %18, align 4, !dbg !1141
  store i32 %193, i32* %19, align 4, !dbg !1141
  store i32 %194, i32* %20, align 4, !dbg !1141
  %207 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1142
  store i32 %207, i32* %malloc_ret.i.4, align 4, !dbg !1001
  store i32 1, i32* @customIrp, align 4, !dbg !1143
  %208 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1144
  store i32 %208, i32* %tmp_ndt_7.i.5, align 4, !dbg !1145
  %209 = load i32, i32* %tmp_ndt_7.i.5, align 4, !dbg !1146
  %210 = icmp eq i32 %209, 0, !dbg !1147
  br i1 %210, label %211, label %213, !dbg !1148

; <label>:211                                     ; preds = %188
  %212 = load i32, i32* %malloc_ret.i.4, align 4, !dbg !1149
  store i32 %212, i32* %11, !dbg !1150
  br label %IoBuildDeviceIoControlRequest.exit6, !dbg !1150

; <label>:213                                     ; preds = %188
  store i32 0, i32* %11, !dbg !1151
  br label %IoBuildDeviceIoControlRequest.exit6, !dbg !1151

IoBuildDeviceIoControlRequest.exit6:              ; preds = %211, %213
  %214 = load i32, i32* %11, !dbg !1152
  %215 = bitcast i32* %11 to i8*, !dbg !1152
  call void @llvm.lifetime.end(i64 4, i8* %215), !dbg !1152
  %216 = bitcast i32* %12 to i8*, !dbg !1152
  call void @llvm.lifetime.end(i64 4, i8* %216), !dbg !1152
  %217 = bitcast i32* %13 to i8*, !dbg !1152
  call void @llvm.lifetime.end(i64 4, i8* %217), !dbg !1152
  %218 = bitcast i32* %14 to i8*, !dbg !1152
  call void @llvm.lifetime.end(i64 4, i8* %218), !dbg !1152
  %219 = bitcast i32* %15 to i8*, !dbg !1152
  call void @llvm.lifetime.end(i64 4, i8* %219), !dbg !1152
  %220 = bitcast i32* %16 to i8*, !dbg !1152
  call void @llvm.lifetime.end(i64 4, i8* %220), !dbg !1152
  %221 = bitcast i32* %17 to i8*, !dbg !1152
  call void @llvm.lifetime.end(i64 4, i8* %221), !dbg !1152
  %222 = bitcast i32* %18 to i8*, !dbg !1152
  call void @llvm.lifetime.end(i64 4, i8* %222), !dbg !1152
  %223 = bitcast i32* %19 to i8*, !dbg !1152
  call void @llvm.lifetime.end(i64 4, i8* %223), !dbg !1152
  %224 = bitcast i32* %20 to i8*, !dbg !1152
  call void @llvm.lifetime.end(i64 4, i8* %224), !dbg !1152
  %225 = bitcast i32* %malloc_ret.i.4 to i8*, !dbg !1152
  call void @llvm.lifetime.end(i64 4, i8* %225), !dbg !1152
  %226 = bitcast i32* %tmp_ndt_7.i.5 to i8*, !dbg !1152
  call void @llvm.lifetime.end(i64 4, i8* %226), !dbg !1152
  store i32 %214, i32* %irp, align 4, !dbg !1153
  %227 = load i32, i32* %irp, align 4, !dbg !1154
  %228 = icmp ne i32 %227, 0, !dbg !1154
  br i1 %228, label %230, label %229, !dbg !1156

; <label>:229                                     ; preds = %IoBuildDeviceIoControlRequest.exit6
  store i32 -1073741670, i32* %41, !dbg !1157
  br label %327, !dbg !1157

; <label>:230                                     ; preds = %IoBuildDeviceIoControlRequest.exit6
  %231 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1159
  %232 = load i32, i32* %irp, align 4, !dbg !1161
  %233 = call i32 @IofCallDriver(i32 %231, i32 %232), !dbg !1162
  store i32 %233, i32* %status, align 4, !dbg !1163
  %234 = load i32, i32* %status, align 4, !dbg !1164
  %235 = sext i32 %234 to i64, !dbg !1166
  store i64 %235, i64* %__cil_tmp32, align 8, !dbg !1167
  %236 = load i64, i64* %__cil_tmp32, align 8, !dbg !1168
  %237 = icmp eq i64 %236, 259, !dbg !1170
  br i1 %237, label %238, label %244, !dbg !1171

; <label>:238                                     ; preds = %230
  %239 = load i32, i32* %event, align 4, !dbg !1172
  %240 = load i32, i32* @Executive, align 4, !dbg !1175
  %241 = load i32, i32* @KernelMode, align 4, !dbg !1176
  %242 = call i32 @KeWaitForSingleObject(i32 %239, i32 %240, i32 %241, i32 0, i32 0), !dbg !1177
  %243 = load i32, i32* %ioStatus__Status, align 4, !dbg !1178
  store i32 %243, i32* %status, align 4, !dbg !1179
  br label %244, !dbg !1180

; <label>:244                                     ; preds = %238, %230
  br label %245, !dbg !1181

; <label>:245                                     ; preds = %244, %176
  %246 = load i32, i32* %status, align 4, !dbg !1182
  %247 = icmp slt i32 %246, 0, !dbg !1185
  br i1 %247, label %248, label %250, !dbg !1186

; <label>:248                                     ; preds = %245
  %249 = load i32, i32* %status, align 4, !dbg !1187
  store i32 %249, i32* %41, !dbg !1189
  br label %327, !dbg !1189

; <label>:250                                     ; preds = %245
  store i32 28, i32* %__cil_tmp34, align 4, !dbg !1190
  store i32 5636096, i32* %__cil_tmp35, align 4, !dbg !1190
  store i32 5636124, i32* %__cil_tmp36, align 4, !dbg !1190
  %251 = load i32, i32* %__cil_tmp36, align 4, !dbg !1191
  %252 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1192
  %253 = load i32, i32* %volumeNumber, align 4, !dbg !1193
  %254 = load i32, i32* %sizeof__VOLUME_NUMBER, align 4, !dbg !1194
  %255 = load i32, i32* %event, align 4, !dbg !1195
  %256 = load i32, i32* %ioStatus, align 4, !dbg !1196
  %257 = bitcast i32* %1 to i8*, !dbg !1197
  call void @llvm.lifetime.start(i64 4, i8* %257), !dbg !1197
  %258 = bitcast i32* %2 to i8*, !dbg !1197
  call void @llvm.lifetime.start(i64 4, i8* %258), !dbg !1197
  %259 = bitcast i32* %3 to i8*, !dbg !1197
  call void @llvm.lifetime.start(i64 4, i8* %259), !dbg !1197
  %260 = bitcast i32* %4 to i8*, !dbg !1197
  call void @llvm.lifetime.start(i64 4, i8* %260), !dbg !1197
  %261 = bitcast i32* %5 to i8*, !dbg !1197
  call void @llvm.lifetime.start(i64 4, i8* %261), !dbg !1197
  %262 = bitcast i32* %6 to i8*, !dbg !1197
  call void @llvm.lifetime.start(i64 4, i8* %262), !dbg !1197
  %263 = bitcast i32* %7 to i8*, !dbg !1197
  call void @llvm.lifetime.start(i64 4, i8* %263), !dbg !1197
  %264 = bitcast i32* %8 to i8*, !dbg !1197
  call void @llvm.lifetime.start(i64 4, i8* %264), !dbg !1197
  %265 = bitcast i32* %9 to i8*, !dbg !1197
  call void @llvm.lifetime.start(i64 4, i8* %265), !dbg !1197
  %266 = bitcast i32* %10 to i8*, !dbg !1197
  call void @llvm.lifetime.start(i64 4, i8* %266), !dbg !1197
  %267 = bitcast i32* %malloc_ret.i.7 to i8*, !dbg !1197
  call void @llvm.lifetime.start(i64 4, i8* %267), !dbg !1197
  %268 = bitcast i32* %tmp_ndt_7.i.8 to i8*, !dbg !1197
  call void @llvm.lifetime.start(i64 4, i8* %268), !dbg !1197
  store i32 %251, i32* %2, align 4, !dbg !1197
  store i32 %252, i32* %3, align 4, !dbg !1197
  store i32 0, i32* %4, align 4, !dbg !1197
  store i32 0, i32* %5, align 4, !dbg !1197
  store i32 %253, i32* %6, align 4, !dbg !1197
  store i32 %254, i32* %7, align 4, !dbg !1197
  store i32 0, i32* %8, align 4, !dbg !1197
  store i32 %255, i32* %9, align 4, !dbg !1197
  store i32 %256, i32* %10, align 4, !dbg !1197
  %269 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1198
  store i32 %269, i32* %malloc_ret.i.7, align 4, !dbg !1014
  store i32 1, i32* @customIrp, align 4, !dbg !1199
  %270 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1200
  store i32 %270, i32* %tmp_ndt_7.i.8, align 4, !dbg !1201
  %271 = load i32, i32* %tmp_ndt_7.i.8, align 4, !dbg !1202
  %272 = icmp eq i32 %271, 0, !dbg !1203
  br i1 %272, label %273, label %275, !dbg !1204

; <label>:273                                     ; preds = %250
  %274 = load i32, i32* %malloc_ret.i.7, align 4, !dbg !1205
  store i32 %274, i32* %1, !dbg !1206
  br label %IoBuildDeviceIoControlRequest.exit9, !dbg !1206

; <label>:275                                     ; preds = %250
  store i32 0, i32* %1, !dbg !1207
  br label %IoBuildDeviceIoControlRequest.exit9, !dbg !1207

IoBuildDeviceIoControlRequest.exit9:              ; preds = %273, %275
  %276 = load i32, i32* %1, !dbg !1208
  %277 = bitcast i32* %1 to i8*, !dbg !1208
  call void @llvm.lifetime.end(i64 4, i8* %277), !dbg !1208
  %278 = bitcast i32* %2 to i8*, !dbg !1208
  call void @llvm.lifetime.end(i64 4, i8* %278), !dbg !1208
  %279 = bitcast i32* %3 to i8*, !dbg !1208
  call void @llvm.lifetime.end(i64 4, i8* %279), !dbg !1208
  %280 = bitcast i32* %4 to i8*, !dbg !1208
  call void @llvm.lifetime.end(i64 4, i8* %280), !dbg !1208
  %281 = bitcast i32* %5 to i8*, !dbg !1208
  call void @llvm.lifetime.end(i64 4, i8* %281), !dbg !1208
  %282 = bitcast i32* %6 to i8*, !dbg !1208
  call void @llvm.lifetime.end(i64 4, i8* %282), !dbg !1208
  %283 = bitcast i32* %7 to i8*, !dbg !1208
  call void @llvm.lifetime.end(i64 4, i8* %283), !dbg !1208
  %284 = bitcast i32* %8 to i8*, !dbg !1208
  call void @llvm.lifetime.end(i64 4, i8* %284), !dbg !1208
  %285 = bitcast i32* %9 to i8*, !dbg !1208
  call void @llvm.lifetime.end(i64 4, i8* %285), !dbg !1208
  %286 = bitcast i32* %10 to i8*, !dbg !1208
  call void @llvm.lifetime.end(i64 4, i8* %286), !dbg !1208
  %287 = bitcast i32* %malloc_ret.i.7 to i8*, !dbg !1208
  call void @llvm.lifetime.end(i64 4, i8* %287), !dbg !1208
  %288 = bitcast i32* %tmp_ndt_7.i.8 to i8*, !dbg !1208
  call void @llvm.lifetime.end(i64 4, i8* %288), !dbg !1208
  store i32 %276, i32* %irp, align 4, !dbg !1209
  %289 = load i32, i32* %irp, align 4, !dbg !1210
  %290 = icmp ne i32 %289, 0, !dbg !1210
  br i1 %290, label %292, label %291, !dbg !1212

; <label>:291                                     ; preds = %IoBuildDeviceIoControlRequest.exit9
  store i32 -1073741670, i32* %41, !dbg !1213
  br label %327, !dbg !1213

; <label>:292                                     ; preds = %IoBuildDeviceIoControlRequest.exit9
  %293 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1215
  %294 = load i32, i32* %irp, align 4, !dbg !1217
  %295 = call i32 @IofCallDriver(i32 %293, i32 %294), !dbg !1218
  store i32 %295, i32* %status, align 4, !dbg !1219
  %296 = load i32, i32* %status, align 4, !dbg !1220
  %297 = sext i32 %296 to i64, !dbg !1222
  store i64 %297, i64* %__cil_tmp37, align 8, !dbg !1223
  %298 = load i64, i64* %__cil_tmp37, align 8, !dbg !1224
  %299 = icmp eq i64 %298, 259, !dbg !1226
  br i1 %299, label %300, label %306, !dbg !1227

; <label>:300                                     ; preds = %292
  %301 = load i32, i32* %event, align 4, !dbg !1228
  %302 = load i32, i32* @Executive, align 4, !dbg !1231
  %303 = load i32, i32* @KernelMode, align 4, !dbg !1232
  %304 = call i32 @KeWaitForSingleObject(i32 %301, i32 %302, i32 %303, i32 0, i32 0), !dbg !1233
  %305 = load i32, i32* %ioStatus__Status, align 4, !dbg !1234
  store i32 %305, i32* %status, align 4, !dbg !1235
  br label %306, !dbg !1236

; <label>:306                                     ; preds = %300, %292
  %307 = load i32, i32* %status, align 4, !dbg !1237
  %308 = icmp slt i32 %307, 0, !dbg !1240
  br i1 %308, label %309, label %310, !dbg !1241

; <label>:309                                     ; preds = %306
  br label %314, !dbg !1242

; <label>:310                                     ; preds = %306
  %311 = load i32, i32* %volumeNumber__VolumeManagerName__0, align 4, !dbg !1244
  %312 = icmp eq i32 %311, 0, !dbg !1247
  br i1 %312, label %313, label %319, !dbg !1248

; <label>:313                                     ; preds = %310
  br label %314, !dbg !1249

; <label>:314                                     ; preds = %313, %309
  %315 = load i32, i32* %status, align 4, !dbg !1250
  %316 = icmp sge i32 %315, 0, !dbg !1253
  br i1 %316, label %317, label %318, !dbg !1254

; <label>:317                                     ; preds = %314
  br label %318, !dbg !1255

; <label>:318                                     ; preds = %317, %314
  br label %319, !dbg !1257

; <label>:319                                     ; preds = %318, %310
  br label %320

; <label>:320                                     ; preds = %319
  br label %321, !dbg !1258

; <label>:321                                     ; preds = %320, %112
  %322 = load i32, i32* %status, align 4, !dbg !1259
  %323 = icmp slt i32 %322, 0, !dbg !1262
  br i1 %323, label %324, label %325, !dbg !1263

; <label>:324                                     ; preds = %321
  br label %325, !dbg !1264

; <label>:325                                     ; preds = %324, %321
  %326 = load i32, i32* %status, align 4, !dbg !1266
  store i32 %326, i32* %41, !dbg !1267
  br label %327, !dbg !1267

; <label>:327                                     ; preds = %325, %291, %248, %229, %187, %161, %119, %97
  %328 = load i32, i32* %41, !dbg !1268
  ret i32 %328, !dbg !1268
}

; Function Attrs: nounwind ssp uwtable
define void @stub_driver_init() #0 {
  %1 = load i32, i32* @NP, align 4, !dbg !1269
  store i32 %1, i32* @s, align 4, !dbg !1271
  store i32 0, i32* @customIrp, align 4, !dbg !1272
  %2 = load i32, i32* @customIrp, align 4, !dbg !1273
  store i32 %2, i32* @setEventCalled, align 4, !dbg !1274
  %3 = load i32, i32* @setEventCalled, align 4, !dbg !1275
  store i32 %3, i32* @lowerDriverReturn, align 4, !dbg !1276
  %4 = load i32, i32* @lowerDriverReturn, align 4, !dbg !1277
  store i32 %4, i32* @compRegistered, align 4, !dbg !1278
  %5 = load i32, i32* @compRegistered, align 4, !dbg !1279
  store i32 %5, i32* @compFptr, align 4, !dbg !1280
  %6 = load i32, i32* @compFptr, align 4, !dbg !1281
  store i32 %6, i32* @pended, align 4, !dbg !1282
  ret void, !dbg !1283
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %DeviceObject__DeviceExtension.i = alloca i32, align 4
  %Irp__CurrentLocation.i = alloca i32, align 4
  %Irp__Tail__Overlay__CurrentStackLocation.i = alloca i32, align 4
  %deviceExtension__TargetDeviceObject.i = alloca i32, align 4
  %deviceExtension.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %d = alloca i32, align 4
  %status = alloca i32, align 4
  %we_should_unload = alloca i32, align 4
  %irp = alloca i32, align 4
  %pirp__IoStatus__Status = alloca i32, align 4
  %irp_choice = alloca i32, align 4
  %devobj = alloca i32, align 4
  %__cil_tmp9 = alloca i32, align 4
  %tmp_ndt_1 = alloca i32, align 4
  %tmp_ndt_2 = alloca i32, align 4
  %tmp_ndt_3 = alloca i32, align 4
  %tmp_ndt_4 = alloca i32, align 4
  %tmp_ndt_5 = alloca i32, align 4
  store i32 0, i32* %8
  call void @llvm.dbg.declare(metadata i32* %d, metadata !1284, metadata !100), !dbg !1285
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !1286
  store i32 %9, i32* %d, align 4, !dbg !1285
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1287, metadata !100), !dbg !1288
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !1289
  store i32 %10, i32* %status, align 4, !dbg !1288
  call void @llvm.dbg.declare(metadata i32* %we_should_unload, metadata !1290, metadata !100), !dbg !1291
  %11 = call i32 @__VERIFIER_nondet_int(), !dbg !1292
  store i32 %11, i32* %we_should_unload, align 4, !dbg !1291
  call void @llvm.dbg.declare(metadata i32* %irp, metadata !1293, metadata !100), !dbg !1294
  %12 = call i32 @__VERIFIER_nondet_int(), !dbg !1295
  store i32 %12, i32* %irp, align 4, !dbg !1294
  call void @llvm.dbg.declare(metadata i32* %pirp__IoStatus__Status, metadata !1296, metadata !100), !dbg !1297
  call void @llvm.dbg.declare(metadata i32* %irp_choice, metadata !1298, metadata !100), !dbg !1299
  %13 = call i32 @__VERIFIER_nondet_int(), !dbg !1300
  store i32 %13, i32* %irp_choice, align 4, !dbg !1299
  call void @llvm.dbg.declare(metadata i32* %devobj, metadata !1301, metadata !100), !dbg !1302
  %14 = call i32 @__VERIFIER_nondet_int(), !dbg !1303
  store i32 %14, i32* %devobj, align 4, !dbg !1302
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp9, metadata !1304, metadata !100), !dbg !1305
  store i32 0, i32* @s, align 4, !dbg !1306
  store i32 0, i32* @UNLOADED, align 4, !dbg !1307
  store i32 0, i32* @NP, align 4, !dbg !1308
  store i32 0, i32* @DC, align 4, !dbg !1309
  store i32 0, i32* @SKIP1, align 4, !dbg !1310
  store i32 0, i32* @SKIP2, align 4, !dbg !1311
  store i32 0, i32* @MPR1, align 4, !dbg !1312
  store i32 0, i32* @MPR3, align 4, !dbg !1313
  store i32 0, i32* @IPC, align 4, !dbg !1314
  store i32 0, i32* @pended, align 4, !dbg !1315
  store i32 0, i32* @compFptr, align 4, !dbg !1316
  store i32 0, i32* @compRegistered, align 4, !dbg !1317
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !1318
  store i32 0, i32* @setEventCalled, align 4, !dbg !1319
  store i32 0, i32* @customIrp, align 4, !dbg !1320
  store i32 0, i32* @myStatus, align 4, !dbg !1321
  store i32 0, i32* @routine, align 4, !dbg !1322
  store i32 0, i32* @pirp, align 4, !dbg !1323
  store i32 0, i32* @Executive, align 4, !dbg !1324
  store i32 0, i32* @KernelMode, align 4, !dbg !1325
  %15 = load i32, i32* %irp, align 4, !dbg !1326
  store i32 %15, i32* @pirp, align 4, !dbg !1329
  store i32 0, i32* @UNLOADED, align 4, !dbg !1330
  store i32 1, i32* @NP, align 4, !dbg !1332
  store i32 2, i32* @DC, align 4, !dbg !1333
  store i32 3, i32* @SKIP1, align 4, !dbg !1334
  store i32 4, i32* @SKIP2, align 4, !dbg !1335
  store i32 5, i32* @MPR1, align 4, !dbg !1336
  store i32 6, i32* @MPR3, align 4, !dbg !1337
  store i32 7, i32* @IPC, align 4, !dbg !1338
  %16 = load i32, i32* @UNLOADED, align 4, !dbg !1339
  store i32 %16, i32* @s, align 4, !dbg !1340
  store i32 0, i32* @pended, align 4, !dbg !1341
  store i32 0, i32* @compFptr, align 4, !dbg !1342
  store i32 0, i32* @compRegistered, align 4, !dbg !1343
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !1344
  store i32 0, i32* @setEventCalled, align 4, !dbg !1345
  store i32 0, i32* @customIrp, align 4, !dbg !1346
  %17 = load i32, i32* %status, align 4, !dbg !1347
  %18 = icmp sge i32 %17, 0, !dbg !1349
  call void @llvm.dbg.declare(metadata i32* %4, metadata !263, metadata !100), !dbg !1350
  call void @llvm.dbg.declare(metadata i32* %5, metadata !265, metadata !100), !dbg !1367
  call void @llvm.dbg.declare(metadata i32* %6, metadata !514, metadata !100), !dbg !1368
  call void @llvm.dbg.declare(metadata i32* %7, metadata !516, metadata !100), !dbg !1369
  call void @llvm.dbg.declare(metadata i32* %2, metadata !811, metadata !100), !dbg !1370
  call void @llvm.dbg.declare(metadata i32* %3, metadata !813, metadata !100), !dbg !1373
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension.i, metadata !815, metadata !100), !dbg !1374
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation.i, metadata !818, metadata !100), !dbg !1375
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation.i, metadata !821, metadata !100), !dbg !1376
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__TargetDeviceObject.i, metadata !824, metadata !100), !dbg !1377
  call void @llvm.dbg.declare(metadata i32* %deviceExtension.i, metadata !827, metadata !100), !dbg !1378
  call void @llvm.dbg.declare(metadata i32* %tmp.i, metadata !829, metadata !100), !dbg !1379
  call void @llvm.dbg.declare(metadata i32* %1, metadata !843, metadata !100), !dbg !1380
  br i1 %18, label %19, label %144, !dbg !1385

; <label>:19                                      ; preds = %0
  %20 = load i32, i32* @NP, align 4, !dbg !1386
  store i32 %20, i32* @s, align 4, !dbg !1387
  store i32 0, i32* @customIrp, align 4, !dbg !1388
  %21 = load i32, i32* @customIrp, align 4, !dbg !1389
  store i32 %21, i32* @setEventCalled, align 4, !dbg !1390
  %22 = load i32, i32* @setEventCalled, align 4, !dbg !1391
  store i32 %22, i32* @lowerDriverReturn, align 4, !dbg !1392
  %23 = load i32, i32* @lowerDriverReturn, align 4, !dbg !1393
  store i32 %23, i32* @compRegistered, align 4, !dbg !1394
  %24 = load i32, i32* @compRegistered, align 4, !dbg !1395
  store i32 %24, i32* @compFptr, align 4, !dbg !1396
  %25 = load i32, i32* @compFptr, align 4, !dbg !1397
  store i32 %25, i32* @pended, align 4, !dbg !1398
  store i32 0, i32* %pirp__IoStatus__Status, align 4, !dbg !1399
  store i32 0, i32* @myStatus, align 4, !dbg !1400
  %26 = load i32, i32* %irp_choice, align 4, !dbg !1401
  %27 = icmp eq i32 %26, 0, !dbg !1403
  br i1 %27, label %28, label %29, !dbg !1404

; <label>:28                                      ; preds = %19
  store i32 -1073741637, i32* %pirp__IoStatus__Status, align 4, !dbg !1405
  store i32 -1073741637, i32* @myStatus, align 4, !dbg !1407
  br label %29, !dbg !1408

; <label>:29                                      ; preds = %28, %19
  %30 = load i32, i32* @NP, align 4, !dbg !1409
  store i32 %30, i32* @s, align 4, !dbg !1412
  store i32 0, i32* @customIrp, align 4, !dbg !1413
  %31 = load i32, i32* @customIrp, align 4, !dbg !1414
  store i32 %31, i32* @setEventCalled, align 4, !dbg !1415
  %32 = load i32, i32* @setEventCalled, align 4, !dbg !1416
  store i32 %32, i32* @lowerDriverReturn, align 4, !dbg !1417
  %33 = load i32, i32* @lowerDriverReturn, align 4, !dbg !1418
  store i32 %33, i32* @compRegistered, align 4, !dbg !1419
  %34 = load i32, i32* @compRegistered, align 4, !dbg !1420
  store i32 %34, i32* @compFptr, align 4, !dbg !1421
  %35 = load i32, i32* @compFptr, align 4, !dbg !1422
  store i32 %35, i32* @pended, align 4, !dbg !1423
  %36 = load i32, i32* %status, align 4, !dbg !1424
  %37 = icmp slt i32 %36, 0, !dbg !1427
  br i1 %37, label %38, label %39, !dbg !1428

; <label>:38                                      ; preds = %29
  store i32 -1, i32* %8, !dbg !1429
  br label %224, !dbg !1429

; <label>:39                                      ; preds = %29
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_1, metadata !1431, metadata !100), !dbg !1432
  %40 = call i32 @__VERIFIER_nondet_int(), !dbg !1433
  store i32 %40, i32* %tmp_ndt_1, align 4, !dbg !1434
  %41 = load i32, i32* %tmp_ndt_1, align 4, !dbg !1435
  %42 = icmp eq i32 %41, 0, !dbg !1436
  br i1 %42, label %43, label %44, !dbg !1437

; <label>:43                                      ; preds = %39
  br label %67, !dbg !1438

; <label>:44                                      ; preds = %39
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_2, metadata !1440, metadata !100), !dbg !1441
  %45 = call i32 @__VERIFIER_nondet_int(), !dbg !1442
  store i32 %45, i32* %tmp_ndt_2, align 4, !dbg !1443
  %46 = load i32, i32* %tmp_ndt_2, align 4, !dbg !1444
  %47 = icmp eq i32 %46, 2, !dbg !1445
  br i1 %47, label %48, label %49, !dbg !1446

; <label>:48                                      ; preds = %44
  br label %84, !dbg !1447

; <label>:49                                      ; preds = %44
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_3, metadata !1449, metadata !100), !dbg !1450
  %50 = call i32 @__VERIFIER_nondet_int(), !dbg !1451
  store i32 %50, i32* %tmp_ndt_3, align 4, !dbg !1452
  %51 = load i32, i32* %tmp_ndt_3, align 4, !dbg !1453
  %52 = icmp eq i32 %51, 3, !dbg !1454
  br i1 %52, label %53, label %54, !dbg !1455

; <label>:53                                      ; preds = %49
  br label %88, !dbg !1456

; <label>:54                                      ; preds = %49
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_4, metadata !1458, metadata !100), !dbg !1459
  %55 = call i32 @__VERIFIER_nondet_int(), !dbg !1460
  store i32 %55, i32* %tmp_ndt_4, align 4, !dbg !1461
  %56 = load i32, i32* %tmp_ndt_4, align 4, !dbg !1462
  %57 = icmp eq i32 %56, 4, !dbg !1463
  br i1 %57, label %58, label %59, !dbg !1464

; <label>:58                                      ; preds = %54
  br label %92, !dbg !1465

; <label>:59                                      ; preds = %54
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_5, metadata !1467, metadata !100), !dbg !1468
  %60 = call i32 @__VERIFIER_nondet_int(), !dbg !1469
  store i32 %60, i32* %tmp_ndt_5, align 4, !dbg !1470
  %61 = load i32, i32* %tmp_ndt_5, align 4, !dbg !1471
  %62 = icmp eq i32 %61, 12, !dbg !1472
  br i1 %62, label %63, label %64, !dbg !1473

; <label>:63                                      ; preds = %59
  br label %96, !dbg !1474

; <label>:64                                      ; preds = %59
  br label %128, !dbg !1476
                                                  ; No predecessors!
  br i1 false, label %66, label %129, !dbg !1477

; <label>:66                                      ; preds = %65
  br label %67, !dbg !1478

; <label>:67                                      ; preds = %66, %43
  %68 = load i32, i32* %devobj, align 4, !dbg !1479
  %69 = load i32, i32* @pirp, align 4, !dbg !1480
  %70 = bitcast i32* %6 to i8*, !dbg !1481
  call void @llvm.lifetime.start(i64 4, i8* %70), !dbg !1481
  %71 = bitcast i32* %7 to i8*, !dbg !1481
  call void @llvm.lifetime.start(i64 4, i8* %71), !dbg !1481
  store i32 %68, i32* %6, align 4, !dbg !1481
  store i32 %69, i32* %7, align 4, !dbg !1481
  store i32 0, i32* @myStatus, align 4, !dbg !1482
  %72 = load i32, i32* %7, align 4, !dbg !1483
  %73 = bitcast i32* %4 to i8*, !dbg !1484
  call void @llvm.lifetime.start(i64 4, i8* %73) #4, !dbg !1484
  %74 = bitcast i32* %5 to i8*, !dbg !1484
  call void @llvm.lifetime.start(i64 4, i8* %74) #4, !dbg !1484
  store i32 %72, i32* %4, align 4, !dbg !1484
  store i32 0, i32* %5, align 4, !dbg !1484
  %75 = load i32, i32* @s, align 4, !dbg !1485
  %76 = load i32, i32* @NP, align 4, !dbg !1486
  %77 = icmp eq i32 %75, %76, !dbg !1487
  br i1 %77, label %DiskPerfCreate.exit, label %78, !dbg !1488

; <label>:78                                      ; preds = %67
  call void (...) @__VERIFIER_error() #6, !dbg !1489
  unreachable, !dbg !1489

DiskPerfCreate.exit:                              ; preds = %67
  %79 = load i32, i32* @DC, align 4, !dbg !1491
  store i32 %79, i32* @s, align 4, !dbg !1492
  %80 = bitcast i32* %4 to i8*, !dbg !1493
  call void @llvm.lifetime.end(i64 4, i8* %80) #4, !dbg !1493
  %81 = bitcast i32* %5 to i8*, !dbg !1493
  call void @llvm.lifetime.end(i64 4, i8* %81) #4, !dbg !1493
  %82 = bitcast i32* %6 to i8*, !dbg !1494
  call void @llvm.lifetime.end(i64 4, i8* %82), !dbg !1494
  %83 = bitcast i32* %7 to i8*, !dbg !1494
  call void @llvm.lifetime.end(i64 4, i8* %83), !dbg !1494
  store i32 0, i32* %status, align 4, !dbg !1495
  br label %130, !dbg !1496

; <label>:84                                      ; preds = %48
  %85 = load i32, i32* %devobj, align 4, !dbg !1497
  %86 = load i32, i32* @pirp, align 4, !dbg !1499
  %87 = call i32 @DiskPerfDeviceControl(i32 %85, i32 %86), !dbg !1500
  store i32 %87, i32* %status, align 4, !dbg !1501
  br label %130, !dbg !1502

; <label>:88                                      ; preds = %53
  %89 = load i32, i32* %devobj, align 4, !dbg !1503
  %90 = load i32, i32* @pirp, align 4, !dbg !1505
  %91 = call i32 @DiskPerfDispatchPnp(i32 %89, i32 %90), !dbg !1506
  store i32 %91, i32* %status, align 4, !dbg !1507
  br label %130, !dbg !1508

; <label>:92                                      ; preds = %58
  %93 = load i32, i32* %devobj, align 4, !dbg !1509
  %94 = load i32, i32* @pirp, align 4, !dbg !1511
  %95 = call i32 @DiskPerfDispatchPower(i32 %93, i32 %94), !dbg !1512
  store i32 %95, i32* %status, align 4, !dbg !1513
  br label %130, !dbg !1514

; <label>:96                                      ; preds = %63
  %97 = load i32, i32* %devobj, align 4, !dbg !1515
  %98 = load i32, i32* @pirp, align 4, !dbg !1516
  %99 = bitcast i32* %2 to i8*, !dbg !1517
  call void @llvm.lifetime.start(i64 4, i8* %99), !dbg !1517
  %100 = bitcast i32* %3 to i8*, !dbg !1517
  call void @llvm.lifetime.start(i64 4, i8* %100), !dbg !1517
  %101 = bitcast i32* %DeviceObject__DeviceExtension.i to i8*, !dbg !1517
  call void @llvm.lifetime.start(i64 4, i8* %101), !dbg !1517
  %102 = bitcast i32* %Irp__CurrentLocation.i to i8*, !dbg !1517
  call void @llvm.lifetime.start(i64 4, i8* %102), !dbg !1517
  %103 = bitcast i32* %Irp__Tail__Overlay__CurrentStackLocation.i to i8*, !dbg !1517
  call void @llvm.lifetime.start(i64 4, i8* %103), !dbg !1517
  %104 = bitcast i32* %deviceExtension__TargetDeviceObject.i to i8*, !dbg !1517
  call void @llvm.lifetime.start(i64 4, i8* %104), !dbg !1517
  %105 = bitcast i32* %deviceExtension.i to i8*, !dbg !1517
  call void @llvm.lifetime.start(i64 4, i8* %105), !dbg !1517
  %106 = bitcast i32* %tmp.i to i8*, !dbg !1517
  call void @llvm.lifetime.start(i64 4, i8* %106), !dbg !1517
  store i32 %97, i32* %2, align 4, !dbg !1517
  store i32 %98, i32* %3, align 4, !dbg !1517
  %107 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1518
  store i32 %107, i32* %DeviceObject__DeviceExtension.i, align 4, !dbg !1374
  %108 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1519
  store i32 %108, i32* %Irp__CurrentLocation.i, align 4, !dbg !1375
  %109 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1520
  store i32 %109, i32* %Irp__Tail__Overlay__CurrentStackLocation.i, align 4, !dbg !1376
  %110 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1521
  store i32 %110, i32* %deviceExtension__TargetDeviceObject.i, align 4, !dbg !1377
  %111 = load i32, i32* %DeviceObject__DeviceExtension.i, align 4, !dbg !1522
  store i32 %111, i32* %deviceExtension.i, align 4, !dbg !1523
  %112 = load i32, i32* %Irp__CurrentLocation.i, align 4, !dbg !1524
  %113 = add nsw i32 %112, 1, !dbg !1524
  store i32 %113, i32* %Irp__CurrentLocation.i, align 4, !dbg !1524
  %114 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation.i, align 4, !dbg !1525
  %115 = add nsw i32 %114, 1, !dbg !1525
  store i32 %115, i32* %Irp__Tail__Overlay__CurrentStackLocation.i, align 4, !dbg !1525
  %116 = load i32, i32* %deviceExtension__TargetDeviceObject.i, align 4, !dbg !1526
  %117 = load i32, i32* %3, align 4, !dbg !1527
  %118 = call i32 @IofCallDriver(i32 %116, i32 %117) #4, !dbg !1528
  store i32 %118, i32* %tmp.i, align 4, !dbg !1529
  %119 = load i32, i32* %tmp.i, align 4, !dbg !1530
  %120 = bitcast i32* %2 to i8*, !dbg !1531
  call void @llvm.lifetime.end(i64 4, i8* %120), !dbg !1531
  %121 = bitcast i32* %3 to i8*, !dbg !1531
  call void @llvm.lifetime.end(i64 4, i8* %121), !dbg !1531
  %122 = bitcast i32* %DeviceObject__DeviceExtension.i to i8*, !dbg !1531
  call void @llvm.lifetime.end(i64 4, i8* %122), !dbg !1531
  %123 = bitcast i32* %Irp__CurrentLocation.i to i8*, !dbg !1531
  call void @llvm.lifetime.end(i64 4, i8* %123), !dbg !1531
  %124 = bitcast i32* %Irp__Tail__Overlay__CurrentStackLocation.i to i8*, !dbg !1531
  call void @llvm.lifetime.end(i64 4, i8* %124), !dbg !1531
  %125 = bitcast i32* %deviceExtension__TargetDeviceObject.i to i8*, !dbg !1531
  call void @llvm.lifetime.end(i64 4, i8* %125), !dbg !1531
  %126 = bitcast i32* %deviceExtension.i to i8*, !dbg !1531
  call void @llvm.lifetime.end(i64 4, i8* %126), !dbg !1531
  %127 = bitcast i32* %tmp.i to i8*, !dbg !1531
  call void @llvm.lifetime.end(i64 4, i8* %127), !dbg !1531
  store i32 %119, i32* %status, align 4, !dbg !1532
  br label %130, !dbg !1533

; <label>:128                                     ; preds = %64
  store i32 -1, i32* %8, !dbg !1534
  br label %224, !dbg !1534

; <label>:129                                     ; preds = %65
  br label %130, !dbg !1535

; <label>:130                                     ; preds = %129, %96, %92, %88, %84, %DiskPerfCreate.exit
  br label %131

; <label>:131                                     ; preds = %130
  br label %132

; <label>:132                                     ; preds = %131
  br label %133

; <label>:133                                     ; preds = %132
  br label %134

; <label>:134                                     ; preds = %133
  br label %135

; <label>:135                                     ; preds = %134
  br label %136

; <label>:136                                     ; preds = %135
  %137 = load i32, i32* %we_should_unload, align 4, !dbg !1536
  %138 = icmp ne i32 %137, 0, !dbg !1536
  br i1 %138, label %139, label %143, !dbg !1537

; <label>:139                                     ; preds = %136
  %140 = load i32, i32* %d, align 4, !dbg !1538
  %141 = bitcast i32* %1 to i8*, !dbg !1539
  call void @llvm.lifetime.start(i64 4, i8* %141), !dbg !1539
  store i32 %140, i32* %1, align 4, !dbg !1539
  %142 = bitcast i32* %1 to i8*, !dbg !1540
  call void @llvm.lifetime.end(i64 4, i8* %142), !dbg !1540
  br label %143, !dbg !1541

; <label>:143                                     ; preds = %139, %136
  br label %144, !dbg !1542

; <label>:144                                     ; preds = %143, %0
  %145 = load i32, i32* @pended, align 4, !dbg !1543
  %146 = icmp eq i32 %145, 1, !dbg !1545
  br i1 %146, label %147, label %155, !dbg !1546

; <label>:147                                     ; preds = %144
  %148 = load i32, i32* @s, align 4, !dbg !1547
  %149 = load i32, i32* @NP, align 4, !dbg !1550
  %150 = icmp eq i32 %148, %149, !dbg !1551
  br i1 %150, label %151, label %153, !dbg !1552

; <label>:151                                     ; preds = %147
  %152 = load i32, i32* @NP, align 4, !dbg !1553
  store i32 %152, i32* @s, align 4, !dbg !1555
  br label %154, !dbg !1556

; <label>:153                                     ; preds = %147
  br label %156, !dbg !1557

; <label>:154                                     ; preds = %151
  br label %222, !dbg !1559

; <label>:155                                     ; preds = %144
  br label %156, !dbg !1560

; <label>:156                                     ; preds = %155, %153
  %157 = load i32, i32* @pended, align 4, !dbg !1561
  %158 = icmp eq i32 %157, 1, !dbg !1564
  br i1 %158, label %159, label %167, !dbg !1565

; <label>:159                                     ; preds = %156
  %160 = load i32, i32* @s, align 4, !dbg !1566
  %161 = load i32, i32* @MPR3, align 4, !dbg !1569
  %162 = icmp eq i32 %160, %161, !dbg !1570
  br i1 %162, label %163, label %165, !dbg !1571

; <label>:163                                     ; preds = %159
  %164 = load i32, i32* @MPR3, align 4, !dbg !1572
  store i32 %164, i32* @s, align 4, !dbg !1574
  br label %166, !dbg !1575

; <label>:165                                     ; preds = %159
  br label %168, !dbg !1576

; <label>:166                                     ; preds = %163
  br label %221, !dbg !1578

; <label>:167                                     ; preds = %156
  br label %168, !dbg !1579

; <label>:168                                     ; preds = %167, %165
  %169 = load i32, i32* @s, align 4, !dbg !1580
  %170 = load i32, i32* @UNLOADED, align 4, !dbg !1583
  %171 = icmp ne i32 %169, %170, !dbg !1584
  br i1 %171, label %172, label %220, !dbg !1585

; <label>:172                                     ; preds = %168
  %173 = load i32, i32* %status, align 4, !dbg !1586
  %174 = icmp ne i32 %173, -1, !dbg !1589
  br i1 %174, label %175, label %219, !dbg !1590

; <label>:175                                     ; preds = %172
  %176 = load i32, i32* @s, align 4, !dbg !1591
  %177 = load i32, i32* @SKIP2, align 4, !dbg !1594
  %178 = icmp ne i32 %176, %177, !dbg !1595
  br i1 %178, label %179, label %192, !dbg !1596

; <label>:179                                     ; preds = %175
  %180 = load i32, i32* @s, align 4, !dbg !1597
  %181 = load i32, i32* @IPC, align 4, !dbg !1600
  %182 = icmp ne i32 %180, %181, !dbg !1601
  br i1 %182, label %183, label %190, !dbg !1602

; <label>:183                                     ; preds = %179
  %184 = load i32, i32* @s, align 4, !dbg !1603
  %185 = load i32, i32* @DC, align 4, !dbg !1606
  %186 = icmp ne i32 %184, %185, !dbg !1607
  br i1 %186, label %187, label %188, !dbg !1608

; <label>:187                                     ; preds = %183
  call void (...) @__VERIFIER_error() #6, !dbg !1609
  unreachable, !dbg !1609

errorFn.exit2:                                    ; No predecessors!
  br label %189, !dbg !1613

; <label>:188                                     ; preds = %183
  br label %193, !dbg !1614

; <label>:189                                     ; preds = %errorFn.exit2
  br label %191, !dbg !1616

; <label>:190                                     ; preds = %179
  br label %193, !dbg !1617

; <label>:191                                     ; preds = %189
  br label %218, !dbg !1619

; <label>:192                                     ; preds = %175
  br label %193, !dbg !1620

; <label>:193                                     ; preds = %192, %190, %188
  %194 = load i32, i32* @pended, align 4, !dbg !1621
  %195 = icmp eq i32 %194, 1, !dbg !1624
  br i1 %195, label %196, label %201, !dbg !1625

; <label>:196                                     ; preds = %193
  %197 = load i32, i32* %status, align 4, !dbg !1626
  %198 = icmp ne i32 %197, 259, !dbg !1629
  br i1 %198, label %199, label %200, !dbg !1630

; <label>:199                                     ; preds = %196
  call void (...) @__VERIFIER_error() #6, !dbg !1631
  unreachable, !dbg !1631

errorFn.exit3:                                    ; No predecessors!
  br label %200, !dbg !1635

; <label>:200                                     ; preds = %errorFn.exit3, %196
  br label %217, !dbg !1636

; <label>:201                                     ; preds = %193
  %202 = load i32, i32* @s, align 4, !dbg !1637
  %203 = load i32, i32* @DC, align 4, !dbg !1640
  %204 = icmp eq i32 %202, %203, !dbg !1641
  br i1 %204, label %205, label %210, !dbg !1642

; <label>:205                                     ; preds = %201
  %206 = load i32, i32* %status, align 4, !dbg !1643
  %207 = icmp eq i32 %206, 259, !dbg !1646
  br i1 %207, label %208, label %209, !dbg !1647

; <label>:208                                     ; preds = %205
  call void (...) @__VERIFIER_error() #6, !dbg !1648
  unreachable, !dbg !1648

errorFn.exit1:                                    ; No predecessors!
  br label %209, !dbg !1652

; <label>:209                                     ; preds = %errorFn.exit1, %205
  br label %216, !dbg !1653

; <label>:210                                     ; preds = %201
  %211 = load i32, i32* %status, align 4, !dbg !1654
  %212 = load i32, i32* @lowerDriverReturn, align 4, !dbg !1657
  %213 = icmp ne i32 %211, %212, !dbg !1658
  br i1 %213, label %214, label %215, !dbg !1659

; <label>:214                                     ; preds = %210
  call void (...) @__VERIFIER_error() #6, !dbg !1660
  unreachable, !dbg !1660

errorFn.exit:                                     ; No predecessors!
  br label %215, !dbg !1664

; <label>:215                                     ; preds = %errorFn.exit, %210
  br label %216

; <label>:216                                     ; preds = %215, %209
  br label %217

; <label>:217                                     ; preds = %216, %200
  br label %218

; <label>:218                                     ; preds = %217, %191
  br label %219, !dbg !1665

; <label>:219                                     ; preds = %218, %172
  br label %220, !dbg !1666

; <label>:220                                     ; preds = %219, %168
  br label %221

; <label>:221                                     ; preds = %220, %166
  br label %222

; <label>:222                                     ; preds = %221, %154
  %223 = load i32, i32* %status, align 4, !dbg !1667
  store i32 %223, i32* %8, !dbg !1668
  br label %224, !dbg !1668

; <label>:224                                     ; preds = %222, %128, %38
  %225 = load i32, i32* %8, !dbg !1669
  ret i32 %225, !dbg !1669
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
  %malloc_ret = alloca i32, align 4
  %tmp_ndt_7 = alloca i32, align 4
  store i32 %IoControlCode, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !961, metadata !100), !dbg !1670
  store i32 %DeviceObject, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !967, metadata !100), !dbg !1671
  store i32 %InputBuffer, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !969, metadata !100), !dbg !1672
  store i32 %InputBufferLength, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !971, metadata !100), !dbg !1673
  store i32 %OutputBuffer, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !973, metadata !100), !dbg !1674
  store i32 %OutputBufferLength, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !975, metadata !100), !dbg !1675
  store i32 %InternalDeviceIoControl, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !977, metadata !100), !dbg !1676
  store i32 %Event, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !979, metadata !100), !dbg !1677
  store i32 %IoStatusBlock, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !981, metadata !100), !dbg !1678
  call void @llvm.dbg.declare(metadata i32* %malloc_ret, metadata !983, metadata !100), !dbg !1679
  %11 = call i32 @__VERIFIER_nondet_int(), !dbg !1680
  store i32 %11, i32* %malloc_ret, align 4, !dbg !1679
  store i32 1, i32* @customIrp, align 4, !dbg !1681
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_7, metadata !985, metadata !100), !dbg !1682
  %12 = call i32 @__VERIFIER_nondet_int(), !dbg !1683
  store i32 %12, i32* %tmp_ndt_7, align 4, !dbg !1684
  %13 = load i32, i32* %tmp_ndt_7, align 4, !dbg !1685
  %14 = icmp eq i32 %13, 0, !dbg !1686
  br i1 %14, label %15, label %16, !dbg !1687

; <label>:15                                      ; preds = %0
  br label %19, !dbg !1688

; <label>:16                                      ; preds = %0
  br label %21, !dbg !1690
                                                  ; No predecessors!
  br i1 false, label %18, label %22, !dbg !1691

; <label>:18                                      ; preds = %17
  br label %19, !dbg !1692

; <label>:19                                      ; preds = %18, %15
  %20 = load i32, i32* %malloc_ret, align 4, !dbg !1693
  store i32 %20, i32* %1, !dbg !1694
  br label %24, !dbg !1694

; <label>:21                                      ; preds = %16
  store i32 0, i32* %1, !dbg !1695
  br label %24, !dbg !1695

; <label>:22                                      ; preds = %17
  br label %23

; <label>:23                                      ; preds = %22
  br label %24

; <label>:24                                      ; preds = %23, %21, %19
  %25 = load i32, i32* %1, !dbg !1696
  ret i32 %25, !dbg !1696
}

; Function Attrs: nounwind ssp uwtable
define void @stubMoreProcessingRequired() #0 {
  %1 = load i32, i32* @s, align 4, !dbg !1697
  %2 = load i32, i32* @NP, align 4, !dbg !1700
  %3 = icmp eq i32 %1, %2, !dbg !1701
  br i1 %3, label %4, label %6, !dbg !1702

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* @MPR1, align 4, !dbg !1703
  store i32 %5, i32* @s, align 4, !dbg !1705
  br label %7, !dbg !1706

; <label>:6                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !1707
  unreachable, !dbg !1707

errorFn.exit:                                     ; No predecessors!
  br label %7

; <label>:7                                       ; preds = %errorFn.exit, %4
  ret void, !dbg !1711
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
  %Event.i = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %returnVal2 = alloca i32, align 4
  %compRetStatus = alloca i32, align 4
  %lcontext = alloca i32, align 4
  %__cil_tmp7 = alloca i64, align 8
  %tmp_ndt_8 = alloca i32, align 4
  %tmp_ndt_9 = alloca i32, align 4
  store i32 %DeviceObject, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1712, metadata !100), !dbg !1713
  store i32 %Irp, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1714, metadata !100), !dbg !1715
  call void @llvm.dbg.declare(metadata i32* %returnVal2, metadata !1716, metadata !100), !dbg !1717
  call void @llvm.dbg.declare(metadata i32* %compRetStatus, metadata !1718, metadata !100), !dbg !1719
  call void @llvm.dbg.declare(metadata i32* %lcontext, metadata !1720, metadata !100), !dbg !1721
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !1722
  store i32 %9, i32* %lcontext, align 4, !dbg !1721
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp7, metadata !1723, metadata !100), !dbg !1724
  %10 = load i32, i32* @compRegistered, align 4, !dbg !1725
  %11 = icmp ne i32 %10, 0, !dbg !1725
  call void @llvm.dbg.declare(metadata i32* %1, metadata !196, metadata !100), !dbg !1728
  call void @llvm.dbg.declare(metadata i32* %2, metadata !198, metadata !100), !dbg !1735
  call void @llvm.dbg.declare(metadata i32* %3, metadata !200, metadata !100), !dbg !1736
  call void @llvm.dbg.declare(metadata i32* %l.i.i, metadata !202, metadata !100), !dbg !1737
  call void @llvm.dbg.declare(metadata i32* %4, metadata !175, metadata !100), !dbg !1738
  call void @llvm.dbg.declare(metadata i32* %5, metadata !177, metadata !100), !dbg !1739
  call void @llvm.dbg.declare(metadata i32* %6, metadata !179, metadata !100), !dbg !1740
  call void @llvm.dbg.declare(metadata i32* %Event.i, metadata !181, metadata !100), !dbg !1741
  br i1 %11, label %12, label %56, !dbg !1742

; <label>:12                                      ; preds = %0
  %13 = load i32, i32* @routine, align 4, !dbg !1743
  %14 = icmp eq i32 %13, 0, !dbg !1744
  br i1 %14, label %15, label %39, !dbg !1745

; <label>:15                                      ; preds = %12
  %16 = load i32, i32* %7, align 4, !dbg !1746
  %17 = load i32, i32* %8, align 4, !dbg !1747
  %18 = load i32, i32* %lcontext, align 4, !dbg !1748
  %19 = bitcast i32* %4 to i8*, !dbg !1749
  call void @llvm.lifetime.start(i64 4, i8* %19), !dbg !1749
  %20 = bitcast i32* %5 to i8*, !dbg !1749
  call void @llvm.lifetime.start(i64 4, i8* %20), !dbg !1749
  %21 = bitcast i32* %6 to i8*, !dbg !1749
  call void @llvm.lifetime.start(i64 4, i8* %21), !dbg !1749
  %22 = bitcast i32* %Event.i to i8*, !dbg !1749
  call void @llvm.lifetime.start(i64 4, i8* %22), !dbg !1749
  store i32 %16, i32* %4, align 4, !dbg !1749
  store i32 %17, i32* %5, align 4, !dbg !1749
  store i32 %18, i32* %6, align 4, !dbg !1749
  %23 = load i32, i32* %6, align 4, !dbg !1750
  store i32 %23, i32* %Event.i, align 4, !dbg !1751
  %24 = load i32, i32* %Event.i, align 4, !dbg !1752
  %25 = bitcast i32* %1 to i8*, !dbg !1753
  call void @llvm.lifetime.start(i64 4, i8* %25) #4, !dbg !1753
  %26 = bitcast i32* %2 to i8*, !dbg !1753
  call void @llvm.lifetime.start(i64 4, i8* %26) #4, !dbg !1753
  %27 = bitcast i32* %3 to i8*, !dbg !1753
  call void @llvm.lifetime.start(i64 4, i8* %27) #4, !dbg !1753
  %28 = bitcast i32* %l.i.i to i8*, !dbg !1753
  call void @llvm.lifetime.start(i64 4, i8* %28) #4, !dbg !1753
  store i32 %24, i32* %1, align 4, !dbg !1753
  store i32 0, i32* %2, align 4, !dbg !1753
  store i32 0, i32* %3, align 4, !dbg !1753
  %29 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1754
  store i32 %29, i32* %l.i.i, align 4, !dbg !1737
  store i32 1, i32* @setEventCalled, align 4, !dbg !1755
  %30 = load i32, i32* %l.i.i, align 4, !dbg !1756
  %31 = bitcast i32* %1 to i8*, !dbg !1757
  call void @llvm.lifetime.end(i64 4, i8* %31) #4, !dbg !1757
  %32 = bitcast i32* %2 to i8*, !dbg !1757
  call void @llvm.lifetime.end(i64 4, i8* %32) #4, !dbg !1757
  %33 = bitcast i32* %3 to i8*, !dbg !1757
  call void @llvm.lifetime.end(i64 4, i8* %33) #4, !dbg !1757
  %34 = bitcast i32* %l.i.i to i8*, !dbg !1757
  call void @llvm.lifetime.end(i64 4, i8* %34) #4, !dbg !1757
  %35 = bitcast i32* %4 to i8*, !dbg !1758
  call void @llvm.lifetime.end(i64 4, i8* %35), !dbg !1758
  %36 = bitcast i32* %5 to i8*, !dbg !1758
  call void @llvm.lifetime.end(i64 4, i8* %36), !dbg !1758
  %37 = bitcast i32* %6 to i8*, !dbg !1758
  call void @llvm.lifetime.end(i64 4, i8* %37), !dbg !1758
  %38 = bitcast i32* %Event.i to i8*, !dbg !1758
  call void @llvm.lifetime.end(i64 4, i8* %38), !dbg !1758
  store i32 -1073741802, i32* %compRetStatus, align 4, !dbg !1759
  br label %44, !dbg !1760

; <label>:39                                      ; preds = %12
  %40 = load i32, i32* %7, align 4, !dbg !1761
  %41 = load i32, i32* %8, align 4, !dbg !1764
  %42 = load i32, i32* %lcontext, align 4, !dbg !1765
  %43 = call i32 @DiskPerfIoCompletion(i32 %40, i32 %41, i32 %42), !dbg !1766
  store i32 %43, i32* %compRetStatus, align 4, !dbg !1767
  br label %44

; <label>:44                                      ; preds = %39, %15
  %45 = load i32, i32* %compRetStatus, align 4, !dbg !1768
  %46 = sext i32 %45 to i64, !dbg !1770
  store i64 %46, i64* %__cil_tmp7, align 8, !dbg !1771
  %47 = load i64, i64* %__cil_tmp7, align 8, !dbg !1772
  %48 = icmp eq i64 %47, -1073741802, !dbg !1774
  br i1 %48, label %49, label %55, !dbg !1775

; <label>:49                                      ; preds = %44
  %50 = load i32, i32* @s, align 4, !dbg !1776
  %51 = load i32, i32* @NP, align 4, !dbg !1780
  %52 = icmp eq i32 %50, %51, !dbg !1781
  br i1 %52, label %stubMoreProcessingRequired.exit, label %53, !dbg !1782

; <label>:53                                      ; preds = %49
  call void (...) @__VERIFIER_error() #6, !dbg !1783
  unreachable, !dbg !1783

stubMoreProcessingRequired.exit:                  ; preds = %49
  %54 = load i32, i32* @MPR1, align 4, !dbg !1785
  store i32 %54, i32* @s, align 4, !dbg !1786
  br label %55, !dbg !1787

; <label>:55                                      ; preds = %stubMoreProcessingRequired.exit, %44
  br label %56, !dbg !1788

; <label>:56                                      ; preds = %55, %0
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_8, metadata !1789, metadata !100), !dbg !1790
  %57 = call i32 @__VERIFIER_nondet_int(), !dbg !1791
  store i32 %57, i32* %tmp_ndt_8, align 4, !dbg !1792
  %58 = load i32, i32* %tmp_ndt_8, align 4, !dbg !1793
  %59 = icmp eq i32 %58, 0, !dbg !1795
  br i1 %59, label %60, label %61, !dbg !1796

; <label>:60                                      ; preds = %56
  br label %69, !dbg !1797

; <label>:61                                      ; preds = %56
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_9, metadata !1799, metadata !100), !dbg !1801
  %62 = call i32 @__VERIFIER_nondet_int(), !dbg !1802
  store i32 %62, i32* %tmp_ndt_9, align 4, !dbg !1803
  %63 = load i32, i32* %tmp_ndt_9, align 4, !dbg !1804
  %64 = icmp eq i32 %63, 1, !dbg !1806
  br i1 %64, label %65, label %66, !dbg !1807

; <label>:65                                      ; preds = %61
  br label %70, !dbg !1808

; <label>:66                                      ; preds = %61
  br label %71, !dbg !1810
                                                  ; No predecessors!
  br i1 false, label %68, label %72, !dbg !1812

; <label>:68                                      ; preds = %67
  br label %69, !dbg !1813

; <label>:69                                      ; preds = %68, %60
  store i32 0, i32* %returnVal2, align 4, !dbg !1815
  br label %73, !dbg !1817

; <label>:70                                      ; preds = %65
  store i32 -1073741823, i32* %returnVal2, align 4, !dbg !1818
  br label %73, !dbg !1819

; <label>:71                                      ; preds = %66
  store i32 259, i32* %returnVal2, align 4, !dbg !1820
  br label %73, !dbg !1821

; <label>:72                                      ; preds = %67
  br label %73, !dbg !1822

; <label>:73                                      ; preds = %72, %71, %70, %69
  br label %74

; <label>:74                                      ; preds = %73
  br label %75

; <label>:75                                      ; preds = %74
  br label %76

; <label>:76                                      ; preds = %75
  %77 = load i32, i32* @s, align 4, !dbg !1823
  %78 = load i32, i32* @NP, align 4, !dbg !1825
  %79 = icmp eq i32 %77, %78, !dbg !1826
  br i1 %79, label %80, label %83, !dbg !1827

; <label>:80                                      ; preds = %76
  %81 = load i32, i32* @IPC, align 4, !dbg !1828
  store i32 %81, i32* @s, align 4, !dbg !1830
  %82 = load i32, i32* %returnVal2, align 4, !dbg !1831
  store i32 %82, i32* @lowerDriverReturn, align 4, !dbg !1832
  br label %107, !dbg !1833

; <label>:83                                      ; preds = %76
  %84 = load i32, i32* @s, align 4, !dbg !1834
  %85 = load i32, i32* @MPR1, align 4, !dbg !1837
  %86 = icmp eq i32 %84, %85, !dbg !1838
  br i1 %86, label %87, label %97, !dbg !1839

; <label>:87                                      ; preds = %83
  %88 = load i32, i32* %returnVal2, align 4, !dbg !1840
  %89 = icmp eq i32 %88, 259, !dbg !1843
  br i1 %89, label %90, label %93, !dbg !1844

; <label>:90                                      ; preds = %87
  %91 = load i32, i32* @MPR3, align 4, !dbg !1845
  store i32 %91, i32* @s, align 4, !dbg !1847
  %92 = load i32, i32* %returnVal2, align 4, !dbg !1848
  store i32 %92, i32* @lowerDriverReturn, align 4, !dbg !1849
  br label %96, !dbg !1850

; <label>:93                                      ; preds = %87
  %94 = load i32, i32* @NP, align 4, !dbg !1851
  store i32 %94, i32* @s, align 4, !dbg !1853
  %95 = load i32, i32* %returnVal2, align 4, !dbg !1854
  store i32 %95, i32* @lowerDriverReturn, align 4, !dbg !1855
  br label %96

; <label>:96                                      ; preds = %93, %90
  br label %106, !dbg !1856

; <label>:97                                      ; preds = %83
  %98 = load i32, i32* @s, align 4, !dbg !1857
  %99 = load i32, i32* @SKIP1, align 4, !dbg !1860
  %100 = icmp eq i32 %98, %99, !dbg !1861
  br i1 %100, label %101, label %104, !dbg !1862

; <label>:101                                     ; preds = %97
  %102 = load i32, i32* @SKIP2, align 4, !dbg !1863
  store i32 %102, i32* @s, align 4, !dbg !1865
  %103 = load i32, i32* %returnVal2, align 4, !dbg !1866
  store i32 %103, i32* @lowerDriverReturn, align 4, !dbg !1867
  br label %105, !dbg !1868

; <label>:104                                     ; preds = %97
  call void (...) @__VERIFIER_error() #6, !dbg !1869
  unreachable, !dbg !1869

errorFn.exit:                                     ; No predecessors!
  br label %105

; <label>:105                                     ; preds = %errorFn.exit, %101
  br label %106

; <label>:106                                     ; preds = %105, %96
  br label %107

; <label>:107                                     ; preds = %106, %80
  %108 = load i32, i32* %returnVal2, align 4, !dbg !1873
  ret i32 %108, !dbg !1874
}

; Function Attrs: nounwind ssp uwtable
define i32 @KeSetEvent(i32 %Event, i32 %Increment, i32 %Wait) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 %Event, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !196, metadata !100), !dbg !1875
  store i32 %Increment, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !198, metadata !100), !dbg !1876
  store i32 %Wait, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !200, metadata !100), !dbg !1877
  call void @llvm.dbg.declare(metadata i32* %l, metadata !202, metadata !100), !dbg !1878
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !1879
  store i32 %4, i32* %l, align 4, !dbg !1878
  store i32 1, i32* @setEventCalled, align 4, !dbg !1880
  %5 = load i32, i32* %l, align 4, !dbg !1881
  ret i32 %5, !dbg !1882
}

; Function Attrs: nounwind ssp uwtable
define i32 @KeWaitForSingleObject(i32 %Object, i32 %WaitReason, i32 %WaitMode, i32 %Alertable, i32 %Timeout) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %tmp_ndt_10 = alloca i32, align 4
  store i32 %Object, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1883, metadata !100), !dbg !1884
  store i32 %WaitReason, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1885, metadata !100), !dbg !1886
  store i32 %WaitMode, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1887, metadata !100), !dbg !1888
  store i32 %Alertable, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1889, metadata !100), !dbg !1890
  store i32 %Timeout, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1891, metadata !100), !dbg !1892
  %7 = load i32, i32* @s, align 4, !dbg !1893
  %8 = load i32, i32* @MPR3, align 4, !dbg !1896
  %9 = icmp eq i32 %7, %8, !dbg !1897
  br i1 %9, label %10, label %17, !dbg !1898

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* @setEventCalled, align 4, !dbg !1899
  %12 = icmp eq i32 %11, 1, !dbg !1902
  br i1 %12, label %13, label %15, !dbg !1903

; <label>:13                                      ; preds = %10
  %14 = load i32, i32* @NP, align 4, !dbg !1904
  store i32 %14, i32* @s, align 4, !dbg !1906
  store i32 0, i32* @setEventCalled, align 4, !dbg !1907
  br label %16, !dbg !1908

; <label>:15                                      ; preds = %10
  br label %18, !dbg !1909

; <label>:16                                      ; preds = %13
  br label %30, !dbg !1911

; <label>:17                                      ; preds = %0
  br label %18, !dbg !1912

; <label>:18                                      ; preds = %17, %15
  %19 = load i32, i32* @customIrp, align 4, !dbg !1913
  %20 = icmp eq i32 %19, 1, !dbg !1916
  br i1 %20, label %21, label %23, !dbg !1917

; <label>:21                                      ; preds = %18
  %22 = load i32, i32* @NP, align 4, !dbg !1918
  store i32 %22, i32* @s, align 4, !dbg !1920
  store i32 0, i32* @customIrp, align 4, !dbg !1921
  br label %29, !dbg !1922

; <label>:23                                      ; preds = %18
  %24 = load i32, i32* @s, align 4, !dbg !1923
  %25 = load i32, i32* @MPR3, align 4, !dbg !1926
  %26 = icmp eq i32 %24, %25, !dbg !1927
  br i1 %26, label %27, label %28, !dbg !1928

; <label>:27                                      ; preds = %23
  call void (...) @__VERIFIER_error() #6, !dbg !1929
  unreachable, !dbg !1929

errorFn.exit:                                     ; No predecessors!
  br label %28, !dbg !1933

; <label>:28                                      ; preds = %errorFn.exit, %23
  br label %29

; <label>:29                                      ; preds = %28, %21
  br label %30

; <label>:30                                      ; preds = %29, %16
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_10, metadata !1934, metadata !100), !dbg !1935
  %31 = call i32 @__VERIFIER_nondet_int(), !dbg !1936
  store i32 %31, i32* %tmp_ndt_10, align 4, !dbg !1937
  %32 = load i32, i32* %tmp_ndt_10, align 4, !dbg !1938
  %33 = icmp eq i32 %32, 0, !dbg !1940
  br i1 %33, label %34, label %35, !dbg !1941

; <label>:34                                      ; preds = %30
  br label %38, !dbg !1942

; <label>:35                                      ; preds = %30
  br label %39, !dbg !1944
                                                  ; No predecessors!
  br i1 false, label %37, label %40, !dbg !1946

; <label>:37                                      ; preds = %36
  br label %38, !dbg !1947

; <label>:38                                      ; preds = %37, %34
  store i32 0, i32* %1, !dbg !1949
  br label %42, !dbg !1949

; <label>:39                                      ; preds = %35
  store i32 -1073741823, i32* %1, !dbg !1951
  br label %42, !dbg !1951

; <label>:40                                      ; preds = %36
  br label %41

; <label>:41                                      ; preds = %40
  br label %42

; <label>:42                                      ; preds = %41, %39, %38
  %43 = load i32, i32* %1, !dbg !1952
  ret i32 %43, !dbg !1952
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
  %Event.i = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %compRetStatus = alloca i32, align 4
  %returnVal = alloca i32, align 4
  %lcontext = alloca i32, align 4
  %__cil_tmp7 = alloca i64, align 8
  %__cil_tmp8 = alloca i64, align 8
  %tmp_ndt_11 = alloca i32, align 4
  %tmp_ndt_12 = alloca i32, align 4
  store i32 %DeviceObject, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1953, metadata !100), !dbg !1954
  store i32 %Irp, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1955, metadata !100), !dbg !1956
  call void @llvm.dbg.declare(metadata i32* %compRetStatus, metadata !1957, metadata !100), !dbg !1958
  call void @llvm.dbg.declare(metadata i32* %returnVal, metadata !1959, metadata !100), !dbg !1960
  call void @llvm.dbg.declare(metadata i32* %lcontext, metadata !1961, metadata !100), !dbg !1962
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !1963
  store i32 %9, i32* %lcontext, align 4, !dbg !1962
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp7, metadata !1964, metadata !100), !dbg !1965
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp8, metadata !1966, metadata !100), !dbg !1967
  %10 = load i32, i32* @compRegistered, align 4, !dbg !1968
  %11 = icmp ne i32 %10, 0, !dbg !1968
  call void @llvm.dbg.declare(metadata i32* %1, metadata !196, metadata !100), !dbg !1971
  call void @llvm.dbg.declare(metadata i32* %2, metadata !198, metadata !100), !dbg !1978
  call void @llvm.dbg.declare(metadata i32* %3, metadata !200, metadata !100), !dbg !1979
  call void @llvm.dbg.declare(metadata i32* %l.i.i, metadata !202, metadata !100), !dbg !1980
  call void @llvm.dbg.declare(metadata i32* %4, metadata !175, metadata !100), !dbg !1981
  call void @llvm.dbg.declare(metadata i32* %5, metadata !177, metadata !100), !dbg !1982
  call void @llvm.dbg.declare(metadata i32* %6, metadata !179, metadata !100), !dbg !1983
  call void @llvm.dbg.declare(metadata i32* %Event.i, metadata !181, metadata !100), !dbg !1984
  br i1 %11, label %12, label %60, !dbg !1985

; <label>:12                                      ; preds = %0
  %13 = load i32, i32* @routine, align 4, !dbg !1986
  %14 = icmp eq i32 %13, 0, !dbg !1987
  br i1 %14, label %15, label %39, !dbg !1988

; <label>:15                                      ; preds = %12
  %16 = load i32, i32* %7, align 4, !dbg !1989
  %17 = load i32, i32* %8, align 4, !dbg !1990
  %18 = load i32, i32* %lcontext, align 4, !dbg !1991
  %19 = bitcast i32* %4 to i8*, !dbg !1992
  call void @llvm.lifetime.start(i64 4, i8* %19), !dbg !1992
  %20 = bitcast i32* %5 to i8*, !dbg !1992
  call void @llvm.lifetime.start(i64 4, i8* %20), !dbg !1992
  %21 = bitcast i32* %6 to i8*, !dbg !1992
  call void @llvm.lifetime.start(i64 4, i8* %21), !dbg !1992
  %22 = bitcast i32* %Event.i to i8*, !dbg !1992
  call void @llvm.lifetime.start(i64 4, i8* %22), !dbg !1992
  store i32 %16, i32* %4, align 4, !dbg !1992
  store i32 %17, i32* %5, align 4, !dbg !1992
  store i32 %18, i32* %6, align 4, !dbg !1992
  %23 = load i32, i32* %6, align 4, !dbg !1993
  store i32 %23, i32* %Event.i, align 4, !dbg !1994
  %24 = load i32, i32* %Event.i, align 4, !dbg !1995
  %25 = bitcast i32* %1 to i8*, !dbg !1996
  call void @llvm.lifetime.start(i64 4, i8* %25) #4, !dbg !1996
  %26 = bitcast i32* %2 to i8*, !dbg !1996
  call void @llvm.lifetime.start(i64 4, i8* %26) #4, !dbg !1996
  %27 = bitcast i32* %3 to i8*, !dbg !1996
  call void @llvm.lifetime.start(i64 4, i8* %27) #4, !dbg !1996
  %28 = bitcast i32* %l.i.i to i8*, !dbg !1996
  call void @llvm.lifetime.start(i64 4, i8* %28) #4, !dbg !1996
  store i32 %24, i32* %1, align 4, !dbg !1996
  store i32 0, i32* %2, align 4, !dbg !1996
  store i32 0, i32* %3, align 4, !dbg !1996
  %29 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1997
  store i32 %29, i32* %l.i.i, align 4, !dbg !1980
  store i32 1, i32* @setEventCalled, align 4, !dbg !1998
  %30 = load i32, i32* %l.i.i, align 4, !dbg !1999
  %31 = bitcast i32* %1 to i8*, !dbg !2000
  call void @llvm.lifetime.end(i64 4, i8* %31) #4, !dbg !2000
  %32 = bitcast i32* %2 to i8*, !dbg !2000
  call void @llvm.lifetime.end(i64 4, i8* %32) #4, !dbg !2000
  %33 = bitcast i32* %3 to i8*, !dbg !2000
  call void @llvm.lifetime.end(i64 4, i8* %33) #4, !dbg !2000
  %34 = bitcast i32* %l.i.i to i8*, !dbg !2000
  call void @llvm.lifetime.end(i64 4, i8* %34) #4, !dbg !2000
  %35 = bitcast i32* %4 to i8*, !dbg !2001
  call void @llvm.lifetime.end(i64 4, i8* %35), !dbg !2001
  %36 = bitcast i32* %5 to i8*, !dbg !2001
  call void @llvm.lifetime.end(i64 4, i8* %36), !dbg !2001
  %37 = bitcast i32* %6 to i8*, !dbg !2001
  call void @llvm.lifetime.end(i64 4, i8* %37), !dbg !2001
  %38 = bitcast i32* %Event.i to i8*, !dbg !2001
  call void @llvm.lifetime.end(i64 4, i8* %38), !dbg !2001
  store i32 -1073741802, i32* %compRetStatus, align 4, !dbg !2002
  br label %48, !dbg !2003

; <label>:39                                      ; preds = %12
  %40 = load i32, i32* @routine, align 4, !dbg !2004
  %41 = icmp eq i32 %40, 1, !dbg !2007
  br i1 %41, label %42, label %47, !dbg !2008

; <label>:42                                      ; preds = %39
  %43 = load i32, i32* %7, align 4, !dbg !2009
  %44 = load i32, i32* %8, align 4, !dbg !2012
  %45 = load i32, i32* %lcontext, align 4, !dbg !2013
  %46 = call i32 @DiskPerfIoCompletion(i32 %43, i32 %44, i32 %45), !dbg !2014
  store i32 %46, i32* %compRetStatus, align 4, !dbg !2015
  br label %47, !dbg !2016

; <label>:47                                      ; preds = %42, %39
  br label %48

; <label>:48                                      ; preds = %47, %15
  %49 = load i32, i32* %compRetStatus, align 4, !dbg !2017
  %50 = sext i32 %49 to i64, !dbg !2019
  store i64 %50, i64* %__cil_tmp7, align 8, !dbg !2020
  %51 = load i64, i64* %__cil_tmp7, align 8, !dbg !2021
  %52 = icmp eq i64 %51, -1073741802, !dbg !2023
  br i1 %52, label %53, label %59, !dbg !2024

; <label>:53                                      ; preds = %48
  %54 = load i32, i32* @s, align 4, !dbg !2025
  %55 = load i32, i32* @NP, align 4, !dbg !2029
  %56 = icmp eq i32 %54, %55, !dbg !2030
  br i1 %56, label %stubMoreProcessingRequired.exit, label %57, !dbg !2031

; <label>:57                                      ; preds = %53
  call void (...) @__VERIFIER_error() #6, !dbg !2032
  unreachable, !dbg !2032

stubMoreProcessingRequired.exit:                  ; preds = %53
  %58 = load i32, i32* @MPR1, align 4, !dbg !2034
  store i32 %58, i32* @s, align 4, !dbg !2035
  br label %59, !dbg !2036

; <label>:59                                      ; preds = %stubMoreProcessingRequired.exit, %48
  br label %60, !dbg !2037

; <label>:60                                      ; preds = %59, %0
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_11, metadata !2038, metadata !100), !dbg !2039
  %61 = call i32 @__VERIFIER_nondet_int(), !dbg !2040
  store i32 %61, i32* %tmp_ndt_11, align 4, !dbg !2041
  %62 = load i32, i32* %tmp_ndt_11, align 4, !dbg !2042
  %63 = icmp eq i32 %62, 0, !dbg !2044
  br i1 %63, label %64, label %65, !dbg !2045

; <label>:64                                      ; preds = %60
  br label %73, !dbg !2046

; <label>:65                                      ; preds = %60
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_12, metadata !2048, metadata !100), !dbg !2050
  %66 = call i32 @__VERIFIER_nondet_int(), !dbg !2051
  store i32 %66, i32* %tmp_ndt_12, align 4, !dbg !2052
  %67 = load i32, i32* %tmp_ndt_12, align 4, !dbg !2053
  %68 = icmp eq i32 %67, 1, !dbg !2055
  br i1 %68, label %69, label %70, !dbg !2056

; <label>:69                                      ; preds = %65
  br label %74, !dbg !2057

; <label>:70                                      ; preds = %65
  br label %75, !dbg !2059
                                                  ; No predecessors!
  br i1 false, label %72, label %76, !dbg !2061

; <label>:72                                      ; preds = %71
  br label %73, !dbg !2062

; <label>:73                                      ; preds = %72, %64
  store i32 0, i32* %returnVal, align 4, !dbg !2064
  br label %77, !dbg !2066

; <label>:74                                      ; preds = %69
  store i32 -1073741823, i32* %returnVal, align 4, !dbg !2067
  br label %77, !dbg !2068

; <label>:75                                      ; preds = %70
  store i32 259, i32* %returnVal, align 4, !dbg !2069
  br label %77, !dbg !2070

; <label>:76                                      ; preds = %71
  br label %77, !dbg !2071

; <label>:77                                      ; preds = %76, %75, %74, %73
  br label %78

; <label>:78                                      ; preds = %77
  br label %79

; <label>:79                                      ; preds = %78
  br label %80

; <label>:80                                      ; preds = %79
  %81 = load i32, i32* @s, align 4, !dbg !2072
  %82 = load i32, i32* @NP, align 4, !dbg !2074
  %83 = icmp eq i32 %81, %82, !dbg !2075
  br i1 %83, label %84, label %87, !dbg !2076

; <label>:84                                      ; preds = %80
  %85 = load i32, i32* @IPC, align 4, !dbg !2077
  store i32 %85, i32* @s, align 4, !dbg !2079
  %86 = load i32, i32* %returnVal, align 4, !dbg !2080
  store i32 %86, i32* @lowerDriverReturn, align 4, !dbg !2081
  br label %113, !dbg !2082

; <label>:87                                      ; preds = %80
  %88 = load i32, i32* @s, align 4, !dbg !2083
  %89 = load i32, i32* @MPR1, align 4, !dbg !2086
  %90 = icmp eq i32 %88, %89, !dbg !2087
  br i1 %90, label %91, label %103, !dbg !2088

; <label>:91                                      ; preds = %87
  %92 = load i32, i32* %returnVal, align 4, !dbg !2089
  %93 = sext i32 %92 to i64, !dbg !2092
  store i64 %93, i64* %__cil_tmp8, align 8, !dbg !2093
  %94 = load i64, i64* %__cil_tmp8, align 8, !dbg !2094
  %95 = icmp eq i64 %94, 259, !dbg !2096
  br i1 %95, label %96, label %99, !dbg !2097

; <label>:96                                      ; preds = %91
  %97 = load i32, i32* @MPR3, align 4, !dbg !2098
  store i32 %97, i32* @s, align 4, !dbg !2100
  %98 = load i32, i32* %returnVal, align 4, !dbg !2101
  store i32 %98, i32* @lowerDriverReturn, align 4, !dbg !2102
  br label %102, !dbg !2103

; <label>:99                                      ; preds = %91
  %100 = load i32, i32* @NP, align 4, !dbg !2104
  store i32 %100, i32* @s, align 4, !dbg !2106
  %101 = load i32, i32* %returnVal, align 4, !dbg !2107
  store i32 %101, i32* @lowerDriverReturn, align 4, !dbg !2108
  br label %102

; <label>:102                                     ; preds = %99, %96
  br label %112, !dbg !2109

; <label>:103                                     ; preds = %87
  %104 = load i32, i32* @s, align 4, !dbg !2110
  %105 = load i32, i32* @SKIP1, align 4, !dbg !2113
  %106 = icmp eq i32 %104, %105, !dbg !2114
  br i1 %106, label %107, label %110, !dbg !2115

; <label>:107                                     ; preds = %103
  %108 = load i32, i32* @SKIP2, align 4, !dbg !2116
  store i32 %108, i32* @s, align 4, !dbg !2118
  %109 = load i32, i32* %returnVal, align 4, !dbg !2119
  store i32 %109, i32* @lowerDriverReturn, align 4, !dbg !2120
  br label %111, !dbg !2121

; <label>:110                                     ; preds = %103
  call void (...) @__VERIFIER_error() #6, !dbg !2122
  unreachable, !dbg !2122

errorFn.exit:                                     ; No predecessors!
  br label %111

; <label>:111                                     ; preds = %errorFn.exit, %107
  br label %112

; <label>:112                                     ; preds = %111, %102
  br label %113

; <label>:113                                     ; preds = %112, %84
  %114 = load i32, i32* %returnVal, align 4, !dbg !2126
  ret i32 %114, !dbg !2127
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
!llvm.module.flags = !{!73, !74, !75}
!llvm.ident = !{!76}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !52)
!1 = !DIFile(filename: "../sv-comp-2016/c/ntdrivers-simplified/diskperf_simpl1_true-unreach-call_true-termination.cil.c", directory: "/Users/franck/development/perentiemq")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!6 = !{!7, !10, !12, !16, !19, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !34, !37, !38, !41, !44, !45, !46, !47, !48, !51}
!7 = !DISubprogram(name: "errorFn", scope: !1, file: !1, line: 30, type: !8, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @errorFn, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !DISubprogram(name: "_BLAST_init", scope: !11, file: !11, line: 61, type: !8, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @_BLAST_init, variables: !2)
!11 = !DIFile(filename: "diskperf_simpl1.cil.c", directory: "/Users/franck/development/perentiemq")
!12 = !DISubprogram(name: "DiskPerfSyncFilterWithTarget", scope: !11, file: !11, line: 83, type: !13, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: false, function: void (i32, i32)* @DiskPerfSyncFilterWithTarget, variables: !2)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15, !15}
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DISubprogram(name: "DiskPerfDispatchPnp", scope: !11, file: !11, line: 97, type: !17, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @DiskPerfDispatchPnp, variables: !2)
!17 = !DISubroutineType(types: !18)
!18 = !{!15, !15, !15}
!19 = !DISubprogram(name: "DiskPerfIrpCompletion", scope: !11, file: !11, line: 139, type: !20, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @DiskPerfIrpCompletion, variables: !2)
!20 = !DISubroutineType(types: !21)
!21 = !{!15, !15, !15, !15}
!22 = !DISubprogram(name: "DiskPerfStartDevice", scope: !11, file: !11, line: 150, type: !17, isLocal: false, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @DiskPerfStartDevice, variables: !2)
!23 = !DISubprogram(name: "DiskPerfRemoveDevice", scope: !11, file: !11, line: 170, type: !17, isLocal: false, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @DiskPerfRemoveDevice, variables: !2)
!24 = !DISubprogram(name: "DiskPerfSendToNextDriver", scope: !11, file: !11, line: 190, type: !17, isLocal: false, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @DiskPerfSendToNextDriver, variables: !2)
!25 = !DISubprogram(name: "DiskPerfDispatchPower", scope: !11, file: !11, line: 215, type: !17, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @DiskPerfDispatchPower, variables: !2)
!26 = !DISubprogram(name: "DiskPerfForwardIrpSynchronous", scope: !11, file: !11, line: 240, type: !17, isLocal: false, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @DiskPerfForwardIrpSynchronous, variables: !2)
!27 = !DISubprogram(name: "DiskPerfCreate", scope: !11, file: !11, line: 293, type: !17, isLocal: false, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @DiskPerfCreate, variables: !2)
!28 = !DISubprogram(name: "DiskPerfIoCompletion", scope: !11, file: !11, line: 304, type: !20, isLocal: false, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @DiskPerfIoCompletion, variables: !2)
!29 = !DISubprogram(name: "DiskPerfDeviceControl", scope: !11, file: !11, line: 366, type: !17, isLocal: false, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @DiskPerfDeviceControl, variables: !2)
!30 = !DISubprogram(name: "DiskPerfShutdownFlush", scope: !11, file: !11, line: 442, type: !17, isLocal: false, isDefinition: true, scopeLine: 443, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @DiskPerfShutdownFlush, variables: !2)
!31 = !DISubprogram(name: "DiskPerfUnload", scope: !11, file: !11, line: 460, type: !32, isLocal: false, isDefinition: true, scopeLine: 461, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @DiskPerfUnload, variables: !2)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !15}
!34 = !DISubprogram(name: "DiskPerfRegisterDevice", scope: !11, file: !11, line: 467, type: !35, isLocal: false, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32)* @DiskPerfRegisterDevice, variables: !2)
!35 = !DISubroutineType(types: !36)
!36 = !{!15, !15}
!37 = !DISubprogram(name: "stub_driver_init", scope: !11, file: !11, line: 618, type: !8, isLocal: false, isDefinition: true, scopeLine: 619, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stub_driver_init, variables: !2)
!38 = !DISubprogram(name: "main", scope: !11, file: !11, line: 632, type: !39, isLocal: false, isDefinition: true, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !2)
!39 = !DISubroutineType(types: !40)
!40 = !{!15}
!41 = !DISubprogram(name: "IoBuildDeviceIoControlRequest", scope: !11, file: !11, line: 806, type: !42, isLocal: false, isDefinition: true, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)* @IoBuildDeviceIoControlRequest, variables: !2)
!42 = !DISubroutineType(types: !43)
!43 = !{!15, !15, !15, !15, !15, !15, !15, !15, !15, !15}
!44 = !DISubprogram(name: "stubMoreProcessingRequired", scope: !11, file: !11, line: 831, type: !8, isLocal: false, isDefinition: true, scopeLine: 832, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stubMoreProcessingRequired, variables: !2)
!45 = !DISubprogram(name: "IofCallDriver", scope: !11, file: !11, line: 845, type: !17, isLocal: false, isDefinition: true, scopeLine: 846, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @IofCallDriver, variables: !2)
!46 = !DISubprogram(name: "IofCompleteRequest", scope: !11, file: !11, line: 922, type: !13, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: false, function: void (i32, i32)* @IofCompleteRequest, variables: !2)
!47 = !DISubprogram(name: "KeSetEvent", scope: !11, file: !11, line: 936, type: !20, isLocal: false, isDefinition: true, scopeLine: 937, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @KeSetEvent, variables: !2)
!48 = !DISubprogram(name: "KeWaitForSingleObject", scope: !11, file: !11, line: 944, type: !49, isLocal: false, isDefinition: true, scopeLine: 946, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32)* @KeWaitForSingleObject, variables: !2)
!49 = !DISubroutineType(types: !50)
!50 = !{!15, !15, !15, !15, !15, !15}
!51 = !DISubprogram(name: "PoCallDriver", scope: !11, file: !11, line: 988, type: !17, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @PoCallDriver, variables: !2)
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!53 = !DIGlobalVariable(name: "s", scope: !0, file: !1, line: 9, type: !15, isLocal: false, isDefinition: true, variable: i32* @s)
!54 = !DIGlobalVariable(name: "UNLOADED", scope: !0, file: !1, line: 10, type: !15, isLocal: false, isDefinition: true, variable: i32* @UNLOADED)
!55 = !DIGlobalVariable(name: "NP", scope: !0, file: !1, line: 11, type: !15, isLocal: false, isDefinition: true, variable: i32* @NP)
!56 = !DIGlobalVariable(name: "DC", scope: !0, file: !1, line: 12, type: !15, isLocal: false, isDefinition: true, variable: i32* @DC)
!57 = !DIGlobalVariable(name: "SKIP1", scope: !0, file: !1, line: 13, type: !15, isLocal: false, isDefinition: true, variable: i32* @SKIP1)
!58 = !DIGlobalVariable(name: "SKIP2", scope: !0, file: !1, line: 14, type: !15, isLocal: false, isDefinition: true, variable: i32* @SKIP2)
!59 = !DIGlobalVariable(name: "MPR1", scope: !0, file: !1, line: 15, type: !15, isLocal: false, isDefinition: true, variable: i32* @MPR1)
!60 = !DIGlobalVariable(name: "MPR3", scope: !0, file: !1, line: 16, type: !15, isLocal: false, isDefinition: true, variable: i32* @MPR3)
!61 = !DIGlobalVariable(name: "IPC", scope: !0, file: !1, line: 17, type: !15, isLocal: false, isDefinition: true, variable: i32* @IPC)
!62 = !DIGlobalVariable(name: "pended", scope: !0, file: !1, line: 18, type: !15, isLocal: false, isDefinition: true, variable: i32* @pended)
!63 = !DIGlobalVariable(name: "compFptr", scope: !0, file: !1, line: 19, type: !15, isLocal: false, isDefinition: true, variable: i32* @compFptr)
!64 = !DIGlobalVariable(name: "compRegistered", scope: !0, file: !1, line: 20, type: !15, isLocal: false, isDefinition: true, variable: i32* @compRegistered)
!65 = !DIGlobalVariable(name: "lowerDriverReturn", scope: !0, file: !1, line: 21, type: !15, isLocal: false, isDefinition: true, variable: i32* @lowerDriverReturn)
!66 = !DIGlobalVariable(name: "setEventCalled", scope: !0, file: !1, line: 22, type: !15, isLocal: false, isDefinition: true, variable: i32* @setEventCalled)
!67 = !DIGlobalVariable(name: "customIrp", scope: !0, file: !1, line: 23, type: !15, isLocal: false, isDefinition: true, variable: i32* @customIrp)
!68 = !DIGlobalVariable(name: "myStatus", scope: !0, file: !1, line: 24, type: !15, isLocal: false, isDefinition: true, variable: i32* @myStatus)
!69 = !DIGlobalVariable(name: "routine", scope: !0, file: !1, line: 25, type: !15, isLocal: false, isDefinition: true, variable: i32* @routine)
!70 = !DIGlobalVariable(name: "pirp", scope: !0, file: !1, line: 26, type: !15, isLocal: false, isDefinition: true, variable: i32* @pirp)
!71 = !DIGlobalVariable(name: "Executive", scope: !0, file: !1, line: 27, type: !15, isLocal: false, isDefinition: true, variable: i32* @Executive)
!72 = !DIGlobalVariable(name: "KernelMode", scope: !0, file: !1, line: 28, type: !15, isLocal: false, isDefinition: true, variable: i32* @KernelMode)
!73 = !{i32 2, !"Dwarf Version", i32 2}
!74 = !{i32 2, !"Debug Info Version", i32 3}
!75 = !{i32 1, !"PIC Level", i32 2}
!76 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!77 = !DILocation(line: 33, column: 3, scope: !7)
!78 = !DILocation(line: 34, column: 10, scope: !79)
!79 = distinct !DILexicalBlock(scope: !7, file: !1, line: 33, column: 3)
!80 = !DILocation(line: 60, column: 1, scope: !7)
!81 = !DILocation(line: 65, column: 12, scope: !82)
!82 = distinct !DILexicalBlock(scope: !10, file: !11, line: 64, column: 3)
!83 = !DILocation(line: 66, column: 6, scope: !82)
!84 = !DILocation(line: 67, column: 6, scope: !82)
!85 = !DILocation(line: 68, column: 9, scope: !82)
!86 = !DILocation(line: 69, column: 9, scope: !82)
!87 = !DILocation(line: 70, column: 8, scope: !82)
!88 = !DILocation(line: 71, column: 8, scope: !82)
!89 = !DILocation(line: 72, column: 7, scope: !82)
!90 = !DILocation(line: 73, column: 7, scope: !82)
!91 = !DILocation(line: 73, column: 5, scope: !82)
!92 = !DILocation(line: 74, column: 10, scope: !82)
!93 = !DILocation(line: 75, column: 12, scope: !82)
!94 = !DILocation(line: 76, column: 18, scope: !82)
!95 = !DILocation(line: 77, column: 21, scope: !82)
!96 = !DILocation(line: 78, column: 18, scope: !82)
!97 = !DILocation(line: 79, column: 13, scope: !82)
!98 = !DILocation(line: 80, column: 3, scope: !82)
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "FilterDevice", arg: 1, scope: !12, file: !11, line: 83, type: !15)
!100 = !DIExpression()
!101 = !DILocation(line: 83, column: 39, scope: !12)
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "TargetDevice", arg: 2, scope: !12, file: !11, line: 83, type: !15)
!103 = !DILocation(line: 83, column: 58, scope: !12)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "FilterDevice__Flags", scope: !12, file: !11, line: 84, type: !15)
!105 = !DILocation(line: 84, column: 7, scope: !12)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "TargetDevice__Characteristics", scope: !12, file: !11, line: 85, type: !15)
!107 = !DILocation(line: 85, column: 7, scope: !12)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "FilterDevice__Characteristics", scope: !12, file: !11, line: 86, type: !15)
!109 = !DILocation(line: 86, column: 7, scope: !12)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "propFlags", scope: !12, file: !11, line: 87, type: !15)
!111 = !DILocation(line: 87, column: 7, scope: !12)
!112 = !DILocation(line: 94, column: 3, scope: !113)
!113 = distinct !DILexicalBlock(scope: !12, file: !11, line: 89, column: 3)
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !16, file: !11, line: 97, type: !15)
!115 = !DILocation(line: 97, column: 29, scope: !16)
!116 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !16, file: !11, line: 97, type: !15)
!117 = !DILocation(line: 97, column: 48, scope: !16)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !16, file: !11, line: 98, type: !15)
!119 = !DILocation(line: 98, column: 7, scope: !16)
!120 = !DILocation(line: 98, column: 50, scope: !16)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__MinorFunction", scope: !16, file: !11, line: 99, type: !15)
!122 = !DILocation(line: 99, column: 7, scope: !16)
!123 = !DILocation(line: 99, column: 30, scope: !16)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp", scope: !16, file: !11, line: 100, type: !15)
!125 = !DILocation(line: 100, column: 7, scope: !16)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !16, file: !11, line: 101, type: !15)
!127 = !DILocation(line: 101, column: 7, scope: !16)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !16, file: !11, line: 102, type: !15)
!129 = !DILocation(line: 102, column: 7, scope: !16)
!130 = !DILocation(line: 105, column: 11, scope: !131)
!131 = distinct !DILexicalBlock(scope: !16, file: !11, line: 104, column: 3)
!132 = !DILocation(line: 105, column: 9, scope: !131)
!133 = !DILocation(line: 106, column: 7, scope: !134)
!134 = distinct !DILexicalBlock(scope: !131, file: !11, line: 106, column: 7)
!135 = !DILocation(line: 106, column: 28, scope: !134)
!136 = !DILocation(line: 106, column: 7, scope: !131)
!137 = !DILocation(line: 107, column: 5, scope: !138)
!138 = distinct !DILexicalBlock(scope: !134, file: !11, line: 106, column: 34)
!139 = !DILocation(line: 109, column: 9, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !11, line: 109, column: 9)
!141 = distinct !DILexicalBlock(scope: !134, file: !11, line: 108, column: 10)
!142 = !DILocation(line: 109, column: 30, scope: !140)
!143 = !DILocation(line: 109, column: 9, scope: !141)
!144 = !DILocation(line: 110, column: 7, scope: !145)
!145 = distinct !DILexicalBlock(scope: !140, file: !11, line: 109, column: 36)
!146 = !DILocation(line: 112, column: 7, scope: !147)
!147 = distinct !DILexicalBlock(scope: !140, file: !11, line: 111, column: 12)
!148 = !DILocation(line: 114, column: 11, scope: !147)
!149 = !DILocation(line: 114, column: 14, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !11, line: 114, column: 11)
!151 = !DILocation(line: 117, column: 38, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !11, line: 116, column: 9)
!153 = distinct !DILexicalBlock(scope: !150, file: !11, line: 114, column: 14)
!154 = !DILocation(line: 117, column: 52, scope: !152)
!155 = !DILocation(line: 117, column: 18, scope: !152)
!156 = !DILocation(line: 117, column: 16, scope: !152)
!157 = !DILocation(line: 119, column: 9, scope: !153)
!158 = !DILocation(line: 122, column: 39, scope: !159)
!159 = distinct !DILexicalBlock(scope: !153, file: !11, line: 121, column: 9)
!160 = !DILocation(line: 122, column: 53, scope: !159)
!161 = !DILocation(line: 122, column: 18, scope: !159)
!162 = !DILocation(line: 122, column: 16, scope: !159)
!163 = !DILocation(line: 124, column: 9, scope: !153)
!164 = !DILocation(line: 127, column: 40, scope: !165)
!165 = distinct !DILexicalBlock(scope: !153, file: !11, line: 126, column: 9)
!166 = !DILocation(line: 127, column: 54, scope: !165)
!167 = !DILocation(line: 127, column: 15, scope: !165)
!168 = !DILocation(line: 127, column: 13, scope: !165)
!169 = !DILocation(line: 129, column: 17, scope: !153)
!170 = !DILocation(line: 129, column: 9, scope: !153)
!171 = !DILocation(line: 130, column: 14, scope: !150)
!172 = !DILocation(line: 136, column: 11, scope: !131)
!173 = !DILocation(line: 136, column: 3, scope: !131)
!174 = !DILocation(line: 138, column: 1, scope: !16)
!175 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !19, file: !11, line: 139, type: !15)
!176 = !DILocation(line: 139, column: 31, scope: !19)
!177 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !19, file: !11, line: 139, type: !15)
!178 = !DILocation(line: 139, column: 50, scope: !19)
!179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 3, scope: !19, file: !11, line: 139, type: !15)
!180 = !DILocation(line: 139, column: 60, scope: !19)
!181 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Event", scope: !19, file: !11, line: 140, type: !15)
!182 = !DILocation(line: 140, column: 7, scope: !19)
!183 = !DILocation(line: 144, column: 11, scope: !184)
!184 = distinct !DILexicalBlock(scope: !185, file: !11, line: 143, column: 3)
!185 = distinct !DILexicalBlock(scope: !19, file: !11, line: 142, column: 3)
!186 = !DILocation(line: 144, column: 9, scope: !184)
!187 = !DILocation(line: 145, column: 14, scope: !184)
!188 = !DILocation(line: 145, column: 3, scope: !184)
!189 = !DILocation(line: 937, column: 11, scope: !47, inlinedAt: !190)
!190 = distinct !DILocation(line: 145, column: 3, scope: !184)
!191 = !DILocation(line: 937, column: 7, scope: !47, inlinedAt: !190)
!192 = !DILocation(line: 940, column: 18, scope: !193, inlinedAt: !190)
!193 = distinct !DILexicalBlock(scope: !47, file: !11, line: 939, column: 3)
!194 = !DILocation(line: 941, column: 11, scope: !193, inlinedAt: !190)
!195 = !DILocation(line: 941, column: 3, scope: !193, inlinedAt: !190)
!196 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 1, scope: !47, file: !11, line: 936, type: !15)
!197 = !DILocation(line: 936, column: 20, scope: !47, inlinedAt: !190)
!198 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Increment", arg: 2, scope: !47, file: !11, line: 936, type: !15)
!199 = !DILocation(line: 936, column: 32, scope: !47, inlinedAt: !190)
!200 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Wait", arg: 3, scope: !47, file: !11, line: 936, type: !15)
!201 = !DILocation(line: 936, column: 48, scope: !47, inlinedAt: !190)
!202 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !47, file: !11, line: 937, type: !15)
!203 = !DILocation(line: 147, column: 3, scope: !185)
!204 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !22, file: !11, line: 150, type: !15)
!205 = !DILocation(line: 150, column: 29, scope: !22)
!206 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !22, file: !11, line: 150, type: !15)
!207 = !DILocation(line: 150, column: 48, scope: !22)
!208 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !22, file: !11, line: 151, type: !15)
!209 = !DILocation(line: 151, column: 7, scope: !22)
!210 = !DILocation(line: 151, column: 39, scope: !22)
!211 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__TargetDeviceObject", scope: !22, file: !11, line: 152, type: !15)
!212 = !DILocation(line: 152, column: 7, scope: !22)
!213 = !DILocation(line: 152, column: 45, scope: !22)
!214 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !22, file: !11, line: 153, type: !15)
!215 = !DILocation(line: 153, column: 7, scope: !22)
!216 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !22, file: !11, line: 154, type: !15)
!217 = !DILocation(line: 154, column: 7, scope: !22)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !22, file: !11, line: 155, type: !15)
!219 = !DILocation(line: 155, column: 7, scope: !22)
!220 = !DILocation(line: 159, column: 21, scope: !221)
!221 = distinct !DILexicalBlock(scope: !222, file: !11, line: 158, column: 3)
!222 = distinct !DILexicalBlock(scope: !22, file: !11, line: 157, column: 3)
!223 = !DILocation(line: 159, column: 19, scope: !221)
!224 = !DILocation(line: 160, column: 42, scope: !221)
!225 = !DILocation(line: 160, column: 56, scope: !221)
!226 = !DILocation(line: 160, column: 12, scope: !221)
!227 = !DILocation(line: 160, column: 10, scope: !221)
!228 = !DILocation(line: 161, column: 32, scope: !221)
!229 = !DILocation(line: 161, column: 46, scope: !221)
!230 = !DILocation(line: 161, column: 3, scope: !221)
!231 = !DILocation(line: 94, column: 3, scope: !113, inlinedAt: !232)
!232 = distinct !DILocation(line: 161, column: 3, scope: !221)
!233 = !DILocation(line: 162, column: 26, scope: !221)
!234 = !DILocation(line: 162, column: 3, scope: !221)
!235 = !DILocation(line: 163, column: 27, scope: !221)
!236 = !DILocation(line: 163, column: 25, scope: !221)
!237 = !DILocation(line: 164, column: 14, scope: !221)
!238 = !DILocation(line: 164, column: 12, scope: !221)
!239 = !DILocation(line: 165, column: 22, scope: !221)
!240 = !DILocation(line: 165, column: 3, scope: !221)
!241 = !DILocation(line: 926, column: 7, scope: !242, inlinedAt: !244)
!242 = distinct !DILexicalBlock(scope: !243, file: !11, line: 926, column: 7)
!243 = distinct !DILexicalBlock(scope: !46, file: !11, line: 925, column: 3)
!244 = distinct !DILocation(line: 165, column: 3, scope: !221)
!245 = !DILocation(line: 926, column: 12, scope: !242, inlinedAt: !244)
!246 = !DILocation(line: 926, column: 9, scope: !242, inlinedAt: !244)
!247 = !DILocation(line: 926, column: 7, scope: !243, inlinedAt: !244)
!248 = !DILocation(line: 34, column: 10, scope: !79, inlinedAt: !249)
!249 = distinct !DILocation(line: 930, column: 5, scope: !250, inlinedAt: !244)
!250 = distinct !DILexicalBlock(scope: !251, file: !11, line: 929, column: 5)
!251 = distinct !DILexicalBlock(scope: !242, file: !11, line: 928, column: 10)
!252 = !DILocation(line: 927, column: 9, scope: !253, inlinedAt: !244)
!253 = distinct !DILexicalBlock(scope: !242, file: !11, line: 926, column: 16)
!254 = !DILocation(line: 927, column: 7, scope: !253, inlinedAt: !244)
!255 = !DILocation(line: 933, column: 3, scope: !243, inlinedAt: !244)
!256 = !DILocation(line: 167, column: 11, scope: !222)
!257 = !DILocation(line: 83, column: 39, scope: !12, inlinedAt: !232)
!258 = !DILocation(line: 83, column: 58, scope: !12, inlinedAt: !232)
!259 = !DILocation(line: 84, column: 7, scope: !12, inlinedAt: !232)
!260 = !DILocation(line: 85, column: 7, scope: !12, inlinedAt: !232)
!261 = !DILocation(line: 86, column: 7, scope: !12, inlinedAt: !232)
!262 = !DILocation(line: 87, column: 7, scope: !12, inlinedAt: !232)
!263 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 1, scope: !46, file: !11, line: 922, type: !15)
!264 = !DILocation(line: 922, column: 29, scope: !46, inlinedAt: !244)
!265 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PriorityBoost", arg: 2, scope: !46, file: !11, line: 922, type: !15)
!266 = !DILocation(line: 922, column: 39, scope: !46, inlinedAt: !244)
!267 = !DILocation(line: 167, column: 3, scope: !222)
!268 = !DILocation(line: 922, column: 29, scope: !46)
!269 = !DILocation(line: 922, column: 39, scope: !46)
!270 = !DILocation(line: 926, column: 7, scope: !242)
!271 = !DILocation(line: 926, column: 12, scope: !242)
!272 = !DILocation(line: 926, column: 9, scope: !242)
!273 = !DILocation(line: 926, column: 7, scope: !243)
!274 = !DILocation(line: 927, column: 9, scope: !253)
!275 = !DILocation(line: 927, column: 7, scope: !253)
!276 = !DILocation(line: 928, column: 3, scope: !253)
!277 = !DILocation(line: 34, column: 10, scope: !79, inlinedAt: !278)
!278 = distinct !DILocation(line: 930, column: 5, scope: !250)
!279 = !DILocation(line: 933, column: 3, scope: !243)
!280 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !23, file: !11, line: 170, type: !15)
!281 = !DILocation(line: 170, column: 30, scope: !23)
!282 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !23, file: !11, line: 170, type: !15)
!283 = !DILocation(line: 170, column: 49, scope: !23)
!284 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !23, file: !11, line: 171, type: !15)
!285 = !DILocation(line: 171, column: 7, scope: !23)
!286 = !DILocation(line: 171, column: 39, scope: !23)
!287 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__WmilibContext", scope: !23, file: !11, line: 172, type: !15)
!288 = !DILocation(line: 172, column: 7, scope: !23)
!289 = !DILocation(line: 172, column: 40, scope: !23)
!290 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !23, file: !11, line: 173, type: !15)
!291 = !DILocation(line: 173, column: 7, scope: !23)
!292 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !23, file: !11, line: 174, type: !15)
!293 = !DILocation(line: 174, column: 7, scope: !23)
!294 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !23, file: !11, line: 175, type: !15)
!295 = !DILocation(line: 175, column: 7, scope: !23)
!296 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wmilibContext", scope: !23, file: !11, line: 176, type: !15)
!297 = !DILocation(line: 176, column: 7, scope: !23)
!298 = !DILocation(line: 180, column: 21, scope: !299)
!299 = distinct !DILexicalBlock(scope: !300, file: !11, line: 179, column: 3)
!300 = distinct !DILexicalBlock(scope: !23, file: !11, line: 178, column: 3)
!301 = !DILocation(line: 180, column: 19, scope: !299)
!302 = !DILocation(line: 181, column: 19, scope: !299)
!303 = !DILocation(line: 181, column: 17, scope: !299)
!304 = !DILocation(line: 182, column: 42, scope: !299)
!305 = !DILocation(line: 182, column: 56, scope: !299)
!306 = !DILocation(line: 182, column: 12, scope: !299)
!307 = !DILocation(line: 182, column: 10, scope: !299)
!308 = !DILocation(line: 183, column: 27, scope: !299)
!309 = !DILocation(line: 183, column: 25, scope: !299)
!310 = !DILocation(line: 184, column: 14, scope: !299)
!311 = !DILocation(line: 184, column: 12, scope: !299)
!312 = !DILocation(line: 185, column: 22, scope: !299)
!313 = !DILocation(line: 185, column: 3, scope: !299)
!314 = !DILocation(line: 926, column: 7, scope: !242, inlinedAt: !315)
!315 = distinct !DILocation(line: 185, column: 3, scope: !299)
!316 = !DILocation(line: 926, column: 12, scope: !242, inlinedAt: !315)
!317 = !DILocation(line: 926, column: 9, scope: !242, inlinedAt: !315)
!318 = !DILocation(line: 926, column: 7, scope: !243, inlinedAt: !315)
!319 = !DILocation(line: 34, column: 10, scope: !79, inlinedAt: !320)
!320 = distinct !DILocation(line: 930, column: 5, scope: !250, inlinedAt: !315)
!321 = !DILocation(line: 927, column: 9, scope: !253, inlinedAt: !315)
!322 = !DILocation(line: 927, column: 7, scope: !253, inlinedAt: !315)
!323 = !DILocation(line: 933, column: 3, scope: !243, inlinedAt: !315)
!324 = !DILocation(line: 187, column: 11, scope: !300)
!325 = !DILocation(line: 922, column: 29, scope: !46, inlinedAt: !315)
!326 = !DILocation(line: 922, column: 39, scope: !46, inlinedAt: !315)
!327 = !DILocation(line: 187, column: 3, scope: !300)
!328 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !24, file: !11, line: 190, type: !15)
!329 = !DILocation(line: 190, column: 34, scope: !24)
!330 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !24, file: !11, line: 190, type: !15)
!331 = !DILocation(line: 190, column: 53, scope: !24)
!332 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !24, file: !11, line: 191, type: !15)
!333 = !DILocation(line: 191, column: 7, scope: !24)
!334 = !DILocation(line: 191, column: 30, scope: !24)
!335 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !24, file: !11, line: 192, type: !15)
!336 = !DILocation(line: 192, column: 7, scope: !24)
!337 = !DILocation(line: 192, column: 50, scope: !24)
!338 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !24, file: !11, line: 193, type: !15)
!339 = !DILocation(line: 193, column: 7, scope: !24)
!340 = !DILocation(line: 193, column: 39, scope: !24)
!341 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__TargetDeviceObject", scope: !24, file: !11, line: 194, type: !15)
!342 = !DILocation(line: 194, column: 7, scope: !24)
!343 = !DILocation(line: 194, column: 45, scope: !24)
!344 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !24, file: !11, line: 195, type: !15)
!345 = !DILocation(line: 195, column: 7, scope: !24)
!346 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !24, file: !11, line: 196, type: !15)
!347 = !DILocation(line: 196, column: 7, scope: !24)
!348 = !DILocation(line: 199, column: 7, scope: !349)
!349 = distinct !DILexicalBlock(scope: !350, file: !11, line: 199, column: 7)
!350 = distinct !DILexicalBlock(scope: !24, file: !11, line: 198, column: 3)
!351 = !DILocation(line: 199, column: 12, scope: !349)
!352 = !DILocation(line: 199, column: 9, scope: !349)
!353 = !DILocation(line: 199, column: 7, scope: !350)
!354 = !DILocation(line: 200, column: 9, scope: !355)
!355 = distinct !DILexicalBlock(scope: !349, file: !11, line: 199, column: 16)
!356 = !DILocation(line: 200, column: 7, scope: !355)
!357 = !DILocation(line: 201, column: 3, scope: !355)
!358 = !DILocation(line: 34, column: 10, scope: !79, inlinedAt: !359)
!359 = distinct !DILocation(line: 203, column: 5, scope: !360)
!360 = distinct !DILexicalBlock(scope: !361, file: !11, line: 202, column: 5)
!361 = distinct !DILexicalBlock(scope: !349, file: !11, line: 201, column: 10)
!362 = !DILocation(line: 207, column: 24, scope: !363)
!363 = distinct !DILexicalBlock(scope: !350, file: !11, line: 206, column: 3)
!364 = !DILocation(line: 208, column: 44, scope: !363)
!365 = !DILocation(line: 209, column: 21, scope: !363)
!366 = !DILocation(line: 209, column: 19, scope: !363)
!367 = !DILocation(line: 210, column: 23, scope: !363)
!368 = !DILocation(line: 210, column: 60, scope: !363)
!369 = !DILocation(line: 210, column: 9, scope: !363)
!370 = !DILocation(line: 210, column: 7, scope: !363)
!371 = !DILocation(line: 212, column: 11, scope: !350)
!372 = !DILocation(line: 212, column: 3, scope: !350)
!373 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !25, file: !11, line: 215, type: !15)
!374 = !DILocation(line: 215, column: 31, scope: !25)
!375 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !25, file: !11, line: 215, type: !15)
!376 = !DILocation(line: 215, column: 50, scope: !25)
!377 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !25, file: !11, line: 216, type: !15)
!378 = !DILocation(line: 216, column: 7, scope: !25)
!379 = !DILocation(line: 216, column: 30, scope: !25)
!380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !25, file: !11, line: 217, type: !15)
!381 = !DILocation(line: 217, column: 7, scope: !25)
!382 = !DILocation(line: 217, column: 50, scope: !25)
!383 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !25, file: !11, line: 218, type: !15)
!384 = !DILocation(line: 218, column: 7, scope: !25)
!385 = !DILocation(line: 218, column: 39, scope: !25)
!386 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__TargetDeviceObject", scope: !25, file: !11, line: 219, type: !15)
!387 = !DILocation(line: 219, column: 7, scope: !25)
!388 = !DILocation(line: 219, column: 45, scope: !25)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !25, file: !11, line: 220, type: !15)
!390 = !DILocation(line: 220, column: 7, scope: !25)
!391 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !25, file: !11, line: 221, type: !15)
!392 = !DILocation(line: 221, column: 7, scope: !25)
!393 = !DILocation(line: 224, column: 7, scope: !394)
!394 = distinct !DILexicalBlock(scope: !395, file: !11, line: 224, column: 7)
!395 = distinct !DILexicalBlock(scope: !25, file: !11, line: 223, column: 3)
!396 = !DILocation(line: 224, column: 12, scope: !394)
!397 = !DILocation(line: 224, column: 9, scope: !394)
!398 = !DILocation(line: 224, column: 7, scope: !395)
!399 = !DILocation(line: 225, column: 9, scope: !400)
!400 = distinct !DILexicalBlock(scope: !394, file: !11, line: 224, column: 16)
!401 = !DILocation(line: 225, column: 7, scope: !400)
!402 = !DILocation(line: 226, column: 3, scope: !400)
!403 = !DILocation(line: 34, column: 10, scope: !79, inlinedAt: !404)
!404 = distinct !DILocation(line: 228, column: 5, scope: !405)
!405 = distinct !DILexicalBlock(scope: !406, file: !11, line: 227, column: 5)
!406 = distinct !DILexicalBlock(scope: !394, file: !11, line: 226, column: 10)
!407 = !DILocation(line: 232, column: 24, scope: !408)
!408 = distinct !DILexicalBlock(scope: !395, file: !11, line: 231, column: 3)
!409 = !DILocation(line: 233, column: 44, scope: !408)
!410 = !DILocation(line: 234, column: 21, scope: !408)
!411 = !DILocation(line: 234, column: 19, scope: !408)
!412 = !DILocation(line: 235, column: 22, scope: !408)
!413 = !DILocation(line: 235, column: 59, scope: !408)
!414 = !DILocation(line: 235, column: 9, scope: !408)
!415 = !DILocation(line: 235, column: 7, scope: !408)
!416 = !DILocation(line: 237, column: 11, scope: !395)
!417 = !DILocation(line: 237, column: 3, scope: !395)
!418 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !26, file: !11, line: 240, type: !15)
!419 = !DILocation(line: 240, column: 39, scope: !26)
!420 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !26, file: !11, line: 240, type: !15)
!421 = !DILocation(line: 240, column: 58, scope: !26)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !26, file: !11, line: 241, type: !15)
!423 = !DILocation(line: 241, column: 7, scope: !26)
!424 = !DILocation(line: 241, column: 50, scope: !26)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !26, file: !11, line: 242, type: !15)
!426 = !DILocation(line: 242, column: 7, scope: !26)
!427 = !DILocation(line: 242, column: 39, scope: !26)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__TargetDeviceObject", scope: !26, file: !11, line: 243, type: !15)
!429 = !DILocation(line: 243, column: 7, scope: !26)
!430 = !DILocation(line: 243, column: 45, scope: !26)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !26, file: !11, line: 244, type: !15)
!432 = !DILocation(line: 244, column: 7, scope: !26)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "event", scope: !26, file: !11, line: 245, type: !15)
!434 = !DILocation(line: 245, column: 7, scope: !26)
!435 = !DILocation(line: 245, column: 15, scope: !26)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !26, file: !11, line: 246, type: !15)
!437 = !DILocation(line: 246, column: 7, scope: !26)
!438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp__Control", scope: !26, file: !11, line: 247, type: !15)
!439 = !DILocation(line: 247, column: 7, scope: !26)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp", scope: !26, file: !11, line: 248, type: !15)
!441 = !DILocation(line: 248, column: 7, scope: !26)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp", scope: !26, file: !11, line: 249, type: !15)
!443 = !DILocation(line: 249, column: 7, scope: !26)
!444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Context", scope: !26, file: !11, line: 250, type: !15)
!445 = !DILocation(line: 250, column: 7, scope: !26)
!446 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Control", scope: !26, file: !11, line: 251, type: !15)
!447 = !DILocation(line: 251, column: 7, scope: !26)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___0", scope: !26, file: !11, line: 252, type: !15)
!449 = !DILocation(line: 252, column: 7, scope: !26)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp15", scope: !26, file: !11, line: 253, type: !4)
!451 = !DILocation(line: 253, column: 8, scope: !26)
!452 = !DILocation(line: 255, column: 21, scope: !453)
!453 = distinct !DILexicalBlock(scope: !26, file: !11, line: 255, column: 3)
!454 = !DILocation(line: 255, column: 19, scope: !453)
!455 = !DILocation(line: 256, column: 11, scope: !453)
!456 = !DILocation(line: 256, column: 9, scope: !453)
!457 = !DILocation(line: 257, column: 15, scope: !453)
!458 = !DILocation(line: 257, column: 56, scope: !453)
!459 = !DILocation(line: 257, column: 13, scope: !453)
!460 = !DILocation(line: 258, column: 22, scope: !453)
!461 = !DILocation(line: 259, column: 7, scope: !462)
!462 = distinct !DILexicalBlock(scope: !453, file: !11, line: 259, column: 7)
!463 = !DILocation(line: 259, column: 12, scope: !462)
!464 = !DILocation(line: 259, column: 9, scope: !462)
!465 = !DILocation(line: 259, column: 7, scope: !453)
!466 = !DILocation(line: 34, column: 10, scope: !79, inlinedAt: !467)
!467 = distinct !DILocation(line: 261, column: 5, scope: !468)
!468 = distinct !DILexicalBlock(scope: !469, file: !11, line: 260, column: 5)
!469 = distinct !DILexicalBlock(scope: !462, file: !11, line: 259, column: 16)
!470 = !DILocation(line: 263, column: 3, scope: !469)
!471 = !DILocation(line: 264, column: 9, scope: !472)
!472 = distinct !DILexicalBlock(scope: !473, file: !11, line: 264, column: 9)
!473 = distinct !DILexicalBlock(scope: !462, file: !11, line: 263, column: 10)
!474 = !DILocation(line: 264, column: 24, scope: !472)
!475 = !DILocation(line: 264, column: 9, scope: !473)
!476 = !DILocation(line: 34, column: 10, scope: !79, inlinedAt: !477)
!477 = distinct !DILocation(line: 266, column: 7, scope: !478)
!478 = distinct !DILexicalBlock(scope: !479, file: !11, line: 265, column: 7)
!479 = distinct !DILexicalBlock(scope: !472, file: !11, line: 264, column: 30)
!480 = !DILocation(line: 268, column: 5, scope: !479)
!481 = !DILocation(line: 269, column: 22, scope: !482)
!482 = distinct !DILexicalBlock(scope: !472, file: !11, line: 268, column: 12)
!483 = !DILocation(line: 270, column: 15, scope: !482)
!484 = !DILocation(line: 274, column: 15, scope: !485)
!485 = distinct !DILexicalBlock(scope: !453, file: !11, line: 273, column: 3)
!486 = !DILocation(line: 274, column: 56, scope: !485)
!487 = !DILocation(line: 274, column: 13, scope: !485)
!488 = !DILocation(line: 275, column: 20, scope: !485)
!489 = !DILocation(line: 275, column: 18, scope: !485)
!490 = !DILocation(line: 276, column: 18, scope: !485)
!491 = !DILocation(line: 280, column: 26, scope: !485)
!492 = !DILocation(line: 280, column: 63, scope: !485)
!493 = !DILocation(line: 280, column: 12, scope: !485)
!494 = !DILocation(line: 280, column: 10, scope: !485)
!495 = !DILocation(line: 282, column: 24, scope: !496)
!496 = distinct !DILexicalBlock(scope: !453, file: !11, line: 282, column: 3)
!497 = !DILocation(line: 282, column: 17, scope: !496)
!498 = !DILocation(line: 282, column: 15, scope: !496)
!499 = !DILocation(line: 282, column: 7, scope: !500)
!500 = distinct !DILexicalBlock(scope: !496, file: !11, line: 282, column: 7)
!501 = !DILocation(line: 282, column: 19, scope: !500)
!502 = !DILocation(line: 282, column: 7, scope: !496)
!503 = !DILocation(line: 284, column: 27, scope: !504)
!504 = distinct !DILexicalBlock(scope: !505, file: !11, line: 283, column: 5)
!505 = distinct !DILexicalBlock(scope: !500, file: !11, line: 282, column: 28)
!506 = !DILocation(line: 284, column: 34, scope: !504)
!507 = !DILocation(line: 284, column: 45, scope: !504)
!508 = !DILocation(line: 284, column: 5, scope: !504)
!509 = !DILocation(line: 285, column: 14, scope: !504)
!510 = !DILocation(line: 285, column: 12, scope: !504)
!511 = !DILocation(line: 287, column: 3, scope: !505)
!512 = !DILocation(line: 290, column: 11, scope: !453)
!513 = !DILocation(line: 290, column: 3, scope: !453)
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !27, file: !11, line: 293, type: !15)
!515 = !DILocation(line: 293, column: 24, scope: !27)
!516 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !27, file: !11, line: 293, type: !15)
!517 = !DILocation(line: 293, column: 43, scope: !27)
!518 = !DILocation(line: 298, column: 12, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !11, line: 297, column: 3)
!520 = distinct !DILexicalBlock(scope: !27, file: !11, line: 296, column: 3)
!521 = !DILocation(line: 299, column: 22, scope: !519)
!522 = !DILocation(line: 299, column: 3, scope: !519)
!523 = !DILocation(line: 926, column: 7, scope: !242, inlinedAt: !524)
!524 = distinct !DILocation(line: 299, column: 3, scope: !519)
!525 = !DILocation(line: 926, column: 12, scope: !242, inlinedAt: !524)
!526 = !DILocation(line: 926, column: 9, scope: !242, inlinedAt: !524)
!527 = !DILocation(line: 926, column: 7, scope: !243, inlinedAt: !524)
!528 = !DILocation(line: 34, column: 10, scope: !79, inlinedAt: !529)
!529 = distinct !DILocation(line: 930, column: 5, scope: !250, inlinedAt: !524)
!530 = !DILocation(line: 927, column: 9, scope: !253, inlinedAt: !524)
!531 = !DILocation(line: 927, column: 7, scope: !253, inlinedAt: !524)
!532 = !DILocation(line: 933, column: 3, scope: !243, inlinedAt: !524)
!533 = !DILocation(line: 922, column: 29, scope: !46, inlinedAt: !524)
!534 = !DILocation(line: 922, column: 39, scope: !46, inlinedAt: !524)
!535 = !DILocation(line: 301, column: 3, scope: !520)
!536 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !28, file: !11, line: 304, type: !15)
!537 = !DILocation(line: 304, column: 30, scope: !28)
!538 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !28, file: !11, line: 304, type: !15)
!539 = !DILocation(line: 304, column: 49, scope: !28)
!540 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 3, scope: !28, file: !11, line: 304, type: !15)
!541 = !DILocation(line: 304, column: 59, scope: !28)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack__MajorFunction", scope: !28, file: !11, line: 305, type: !15)
!543 = !DILocation(line: 305, column: 7, scope: !28)
!544 = !DILocation(line: 305, column: 33, scope: !28)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partitionCounters__BytesRead__QuadPart", scope: !28, file: !11, line: 306, type: !15)
!546 = !DILocation(line: 306, column: 7, scope: !28)
!547 = !DILocation(line: 306, column: 48, scope: !28)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !28, file: !11, line: 307, type: !15)
!549 = !DILocation(line: 307, column: 7, scope: !28)
!550 = !DILocation(line: 307, column: 36, scope: !28)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partitionCounters__ReadCount", scope: !28, file: !11, line: 308, type: !15)
!552 = !DILocation(line: 308, column: 7, scope: !28)
!553 = !DILocation(line: 308, column: 38, scope: !28)
!554 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partitionCounters__ReadTime__QuadPart", scope: !28, file: !11, line: 309, type: !15)
!555 = !DILocation(line: 309, column: 7, scope: !28)
!556 = !DILocation(line: 309, column: 47, scope: !28)
!557 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "difference__QuadPart", scope: !28, file: !11, line: 310, type: !15)
!558 = !DILocation(line: 310, column: 7, scope: !28)
!559 = !DILocation(line: 310, column: 30, scope: !28)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partitionCounters__BytesWritten__QuadPart", scope: !28, file: !11, line: 311, type: !15)
!561 = !DILocation(line: 311, column: 7, scope: !28)
!562 = !DILocation(line: 311, column: 51, scope: !28)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partitionCounters__WriteCount", scope: !28, file: !11, line: 312, type: !15)
!564 = !DILocation(line: 312, column: 7, scope: !28)
!565 = !DILocation(line: 312, column: 39, scope: !28)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partitionCounters__WriteTime__QuadPart", scope: !28, file: !11, line: 313, type: !15)
!567 = !DILocation(line: 313, column: 7, scope: !28)
!568 = !DILocation(line: 313, column: 48, scope: !28)
!569 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Flags", scope: !28, file: !11, line: 314, type: !15)
!570 = !DILocation(line: 314, column: 7, scope: !28)
!571 = !DILocation(line: 314, column: 20, scope: !28)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partitionCounters__SplitCount", scope: !28, file: !11, line: 315, type: !15)
!573 = !DILocation(line: 315, column: 7, scope: !28)
!574 = !DILocation(line: 315, column: 39, scope: !28)
!575 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__PendingReturned", scope: !28, file: !11, line: 316, type: !15)
!576 = !DILocation(line: 316, column: 7, scope: !28)
!577 = !DILocation(line: 316, column: 30, scope: !28)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation__Control", scope: !28, file: !11, line: 317, type: !15)
!579 = !DILocation(line: 317, column: 7, scope: !28)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partitionCounters", scope: !28, file: !11, line: 318, type: !15)
!581 = !DILocation(line: 318, column: 7, scope: !28)
!582 = !DILocation(line: 318, column: 27, scope: !28)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "queueLen", scope: !28, file: !11, line: 319, type: !15)
!584 = !DILocation(line: 319, column: 7, scope: !28)
!585 = !DILocation(line: 319, column: 18, scope: !28)
!586 = !DILocation(line: 322, column: 7, scope: !587)
!587 = distinct !DILexicalBlock(scope: !588, file: !11, line: 322, column: 7)
!588 = distinct !DILexicalBlock(scope: !28, file: !11, line: 321, column: 3)
!589 = !DILocation(line: 322, column: 25, scope: !587)
!590 = !DILocation(line: 322, column: 7, scope: !588)
!591 = !DILocation(line: 323, column: 5, scope: !592)
!592 = distinct !DILexicalBlock(scope: !587, file: !11, line: 322, column: 31)
!593 = !DILocation(line: 327, column: 7, scope: !594)
!594 = distinct !DILexicalBlock(scope: !588, file: !11, line: 327, column: 7)
!595 = !DILocation(line: 327, column: 16, scope: !594)
!596 = !DILocation(line: 327, column: 7, scope: !588)
!597 = !DILocation(line: 329, column: 3, scope: !598)
!598 = distinct !DILexicalBlock(scope: !594, file: !11, line: 327, column: 21)
!599 = !DILocation(line: 332, column: 7, scope: !600)
!600 = distinct !DILexicalBlock(scope: !588, file: !11, line: 332, column: 7)
!601 = !DILocation(line: 332, column: 16, scope: !600)
!602 = !DILocation(line: 332, column: 7, scope: !588)
!603 = !DILocation(line: 334, column: 3, scope: !604)
!604 = distinct !DILexicalBlock(scope: !600, file: !11, line: 332, column: 22)
!605 = !DILocation(line: 337, column: 7, scope: !606)
!606 = distinct !DILexicalBlock(scope: !588, file: !11, line: 337, column: 7)
!607 = !DILocation(line: 337, column: 31, scope: !606)
!608 = !DILocation(line: 337, column: 7, scope: !588)
!609 = !DILocation(line: 338, column: 47, scope: !610)
!610 = distinct !DILexicalBlock(scope: !606, file: !11, line: 337, column: 37)
!611 = !DILocation(line: 338, column: 44, scope: !610)
!612 = !DILocation(line: 339, column: 34, scope: !610)
!613 = !DILocation(line: 340, column: 46, scope: !610)
!614 = !DILocation(line: 340, column: 43, scope: !610)
!615 = !DILocation(line: 341, column: 3, scope: !610)
!616 = !DILocation(line: 342, column: 50, scope: !617)
!617 = distinct !DILexicalBlock(scope: !606, file: !11, line: 341, column: 10)
!618 = !DILocation(line: 342, column: 47, scope: !617)
!619 = !DILocation(line: 343, column: 35, scope: !617)
!620 = !DILocation(line: 344, column: 47, scope: !617)
!621 = !DILocation(line: 344, column: 44, scope: !617)
!622 = !DILocation(line: 346, column: 7, scope: !623)
!623 = distinct !DILexicalBlock(scope: !588, file: !11, line: 346, column: 7)
!624 = !DILocation(line: 346, column: 18, scope: !623)
!625 = !DILocation(line: 346, column: 7, scope: !588)
!626 = !DILocation(line: 347, column: 35, scope: !627)
!627 = distinct !DILexicalBlock(scope: !623, file: !11, line: 346, column: 24)
!628 = !DILocation(line: 348, column: 3, scope: !627)
!629 = !DILocation(line: 351, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !588, file: !11, line: 351, column: 7)
!631 = !DILocation(line: 351, column: 7, scope: !588)
!632 = !DILocation(line: 352, column: 9, scope: !633)
!633 = distinct !DILexicalBlock(scope: !634, file: !11, line: 352, column: 9)
!634 = distinct !DILexicalBlock(scope: !630, file: !11, line: 351, column: 29)
!635 = !DILocation(line: 352, column: 16, scope: !633)
!636 = !DILocation(line: 352, column: 9, scope: !634)
!637 = !DILocation(line: 353, column: 14, scope: !638)
!638 = distinct !DILexicalBlock(scope: !633, file: !11, line: 352, column: 22)
!639 = !DILocation(line: 354, column: 5, scope: !638)
!640 = !DILocation(line: 34, column: 10, scope: !79, inlinedAt: !641)
!641 = distinct !DILocation(line: 356, column: 7, scope: !642)
!642 = distinct !DILexicalBlock(scope: !643, file: !11, line: 355, column: 7)
!643 = distinct !DILexicalBlock(scope: !633, file: !11, line: 354, column: 12)
!644 = !DILocation(line: 360, column: 3, scope: !634)
!645 = !DILocation(line: 363, column: 3, scope: !588)
!646 = !DILocation(line: 365, column: 1, scope: !28)
!647 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !29, file: !11, line: 366, type: !15)
!648 = !DILocation(line: 366, column: 31, scope: !29)
!649 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !29, file: !11, line: 366, type: !15)
!650 = !DILocation(line: 366, column: 50, scope: !29)
!651 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !29, file: !11, line: 367, type: !15)
!652 = !DILocation(line: 367, column: 7, scope: !29)
!653 = !DILocation(line: 367, column: 30, scope: !29)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !29, file: !11, line: 368, type: !15)
!655 = !DILocation(line: 368, column: 7, scope: !29)
!656 = !DILocation(line: 368, column: 50, scope: !29)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !29, file: !11, line: 369, type: !15)
!658 = !DILocation(line: 369, column: 7, scope: !29)
!659 = !DILocation(line: 369, column: 39, scope: !29)
!660 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__TargetDeviceObject", scope: !29, file: !11, line: 370, type: !15)
!661 = !DILocation(line: 370, column: 7, scope: !29)
!662 = !DILocation(line: 370, column: 45, scope: !29)
!663 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentIrpStack__Parameters__DeviceIoControl__IoControlCode", scope: !29, file: !11, line: 371, type: !15)
!664 = !DILocation(line: 371, column: 7, scope: !29)
!665 = !DILocation(line: 371, column: 69, scope: !29)
!666 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength", scope: !29, file: !11, line: 372, type: !15)
!667 = !DILocation(line: 372, column: 7, scope: !29)
!668 = !DILocation(line: 372, column: 74, scope: !29)
!669 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__DISK_PERFORMANCE", scope: !29, file: !11, line: 373, type: !15)
!670 = !DILocation(line: 373, column: 7, scope: !29)
!671 = !DILocation(line: 373, column: 34, scope: !29)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !29, file: !11, line: 374, type: !15)
!673 = !DILocation(line: 374, column: 7, scope: !29)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__DiskCounters", scope: !29, file: !11, line: 375, type: !15)
!675 = !DILocation(line: 375, column: 7, scope: !29)
!676 = !DILocation(line: 375, column: 39, scope: !29)
!677 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__AssociatedIrp__SystemBuffer", scope: !29, file: !11, line: 376, type: !15)
!678 = !DILocation(line: 376, column: 7, scope: !29)
!679 = !DILocation(line: 376, column: 42, scope: !29)
!680 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__Processors", scope: !29, file: !11, line: 377, type: !15)
!681 = !DILocation(line: 377, column: 7, scope: !29)
!682 = !DILocation(line: 377, column: 37, scope: !29)
!683 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "totalCounters__QueueDepth", scope: !29, file: !11, line: 378, type: !15)
!684 = !DILocation(line: 378, column: 7, scope: !29)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__QueueDepth", scope: !29, file: !11, line: 379, type: !15)
!686 = !DILocation(line: 379, column: 7, scope: !29)
!687 = !DILocation(line: 379, column: 37, scope: !29)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !29, file: !11, line: 380, type: !15)
!689 = !DILocation(line: 380, column: 7, scope: !29)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !29, file: !11, line: 381, type: !15)
!691 = !DILocation(line: 381, column: 7, scope: !29)
!692 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentIrpStack", scope: !29, file: !11, line: 382, type: !15)
!693 = !DILocation(line: 382, column: 7, scope: !29)
!694 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !29, file: !11, line: 383, type: !15)
!695 = !DILocation(line: 383, column: 7, scope: !29)
!696 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !29, file: !11, line: 384, type: !15)
!697 = !DILocation(line: 384, column: 7, scope: !29)
!698 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "totalCounters", scope: !29, file: !11, line: 385, type: !15)
!699 = !DILocation(line: 385, column: 7, scope: !29)
!700 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "diskCounters", scope: !29, file: !11, line: 386, type: !15)
!701 = !DILocation(line: 386, column: 7, scope: !29)
!702 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !29, file: !11, line: 387, type: !15)
!703 = !DILocation(line: 387, column: 7, scope: !29)
!704 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp24", scope: !29, file: !11, line: 388, type: !15)
!705 = !DILocation(line: 388, column: 7, scope: !29)
!706 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp25", scope: !29, file: !11, line: 389, type: !15)
!707 = !DILocation(line: 389, column: 7, scope: !29)
!708 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp26", scope: !29, file: !11, line: 390, type: !15)
!709 = !DILocation(line: 390, column: 7, scope: !29)
!710 = !DILocation(line: 390, column: 21, scope: !711)
!711 = distinct !DILexicalBlock(scope: !29, file: !11, line: 392, column: 3)
!712 = !DILocation(line: 390, column: 19, scope: !711)
!713 = !DILocation(line: 391, column: 21, scope: !711)
!714 = !DILocation(line: 391, column: 19, scope: !711)
!715 = !DILocation(line: 392, column: 15, scope: !716)
!716 = distinct !DILexicalBlock(scope: !711, file: !11, line: 392, column: 3)
!717 = !DILocation(line: 392, column: 7, scope: !718)
!718 = distinct !DILexicalBlock(scope: !716, file: !11, line: 392, column: 7)
!719 = !DILocation(line: 392, column: 70, scope: !718)
!720 = !DILocation(line: 392, column: 67, scope: !718)
!721 = !DILocation(line: 922, column: 29, scope: !46, inlinedAt: !722)
!722 = distinct !DILocation(line: 402, column: 9, scope: !723)
!723 = distinct !DILexicalBlock(scope: !724, file: !11, line: 399, column: 9)
!724 = distinct !DILexicalBlock(scope: !725, file: !11, line: 398, column: 30)
!725 = distinct !DILexicalBlock(scope: !726, file: !11, line: 398, column: 11)
!726 = distinct !DILexicalBlock(scope: !727, file: !11, line: 396, column: 12)
!727 = distinct !DILexicalBlock(scope: !728, file: !11, line: 393, column: 9)
!728 = distinct !DILexicalBlock(scope: !718, file: !11, line: 392, column: 83)
!729 = !DILocation(line: 922, column: 39, scope: !46, inlinedAt: !722)
!730 = !DILocation(line: 922, column: 29, scope: !46, inlinedAt: !731)
!731 = distinct !DILocation(line: 429, column: 5, scope: !732)
!732 = distinct !DILexicalBlock(scope: !728, file: !11, line: 426, column: 5)
!733 = !DILocation(line: 922, column: 39, scope: !46, inlinedAt: !731)
!734 = !DILocation(line: 392, column: 7, scope: !716)
!735 = !DILocation(line: 393, column: 9, scope: !727)
!736 = !DILocation(line: 393, column: 76, scope: !727)
!737 = !DILocation(line: 393, column: 74, scope: !727)
!738 = !DILocation(line: 393, column: 9, scope: !728)
!739 = !DILocation(line: 394, column: 14, scope: !740)
!740 = distinct !DILexicalBlock(scope: !727, file: !11, line: 393, column: 102)
!741 = !DILocation(line: 395, column: 34, scope: !740)
!742 = !DILocation(line: 396, column: 5, scope: !740)
!743 = !DILocation(line: 397, column: 22, scope: !726)
!744 = !DILocation(line: 397, column: 20, scope: !726)
!745 = !DILocation(line: 398, column: 11, scope: !725)
!746 = !DILocation(line: 398, column: 24, scope: !725)
!747 = !DILocation(line: 398, column: 11, scope: !726)
!748 = !DILocation(line: 400, column: 31, scope: !723)
!749 = !DILocation(line: 401, column: 18, scope: !723)
!750 = !DILocation(line: 402, column: 28, scope: !723)
!751 = !DILocation(line: 402, column: 9, scope: !723)
!752 = !DILocation(line: 926, column: 7, scope: !242, inlinedAt: !722)
!753 = !DILocation(line: 926, column: 12, scope: !242, inlinedAt: !722)
!754 = !DILocation(line: 926, column: 9, scope: !242, inlinedAt: !722)
!755 = !DILocation(line: 926, column: 7, scope: !243, inlinedAt: !722)
!756 = !DILocation(line: 34, column: 10, scope: !79, inlinedAt: !757)
!757 = distinct !DILocation(line: 930, column: 5, scope: !250, inlinedAt: !722)
!758 = !DILocation(line: 927, column: 9, scope: !253, inlinedAt: !722)
!759 = !DILocation(line: 927, column: 7, scope: !253, inlinedAt: !722)
!760 = !DILocation(line: 933, column: 3, scope: !243, inlinedAt: !722)
!761 = !DILocation(line: 404, column: 9, scope: !724)
!762 = !DILocation(line: 408, column: 23, scope: !726)
!763 = !DILocation(line: 408, column: 21, scope: !726)
!764 = !DILocation(line: 409, column: 9, scope: !726)
!765 = !DILocation(line: 411, column: 7, scope: !766)
!766 = distinct !DILexicalBlock(scope: !726, file: !11, line: 410, column: 7)
!767 = !DILocation(line: 411, column: 17, scope: !766)
!768 = !DILocation(line: 413, column: 13, scope: !769)
!769 = distinct !DILexicalBlock(scope: !770, file: !11, line: 413, column: 13)
!770 = distinct !DILexicalBlock(scope: !766, file: !11, line: 411, column: 17)
!771 = !DILocation(line: 413, column: 18, scope: !769)
!772 = !DILocation(line: 413, column: 15, scope: !769)
!773 = !DILocation(line: 413, column: 13, scope: !770)
!774 = !DILocation(line: 414, column: 11, scope: !775)
!775 = distinct !DILexicalBlock(scope: !769, file: !11, line: 413, column: 47)
!776 = !DILocation(line: 418, column: 11, scope: !770)
!777 = !DILocation(line: 421, column: 7, scope: !766)
!778 = !DILocation(line: 422, column: 35, scope: !726)
!779 = !DILocation(line: 422, column: 33, scope: !726)
!780 = !DILocation(line: 423, column: 14, scope: !726)
!781 = !DILocation(line: 424, column: 36, scope: !726)
!782 = !DILocation(line: 424, column: 34, scope: !726)
!783 = !DILocation(line: 427, column: 29, scope: !732)
!784 = !DILocation(line: 427, column: 27, scope: !732)
!785 = !DILocation(line: 428, column: 16, scope: !732)
!786 = !DILocation(line: 428, column: 14, scope: !732)
!787 = !DILocation(line: 429, column: 24, scope: !732)
!788 = !DILocation(line: 429, column: 5, scope: !732)
!789 = !DILocation(line: 926, column: 7, scope: !242, inlinedAt: !731)
!790 = !DILocation(line: 926, column: 12, scope: !242, inlinedAt: !731)
!791 = !DILocation(line: 926, column: 9, scope: !242, inlinedAt: !731)
!792 = !DILocation(line: 926, column: 7, scope: !243, inlinedAt: !731)
!793 = !DILocation(line: 34, column: 10, scope: !79, inlinedAt: !794)
!794 = distinct !DILocation(line: 930, column: 5, scope: !250, inlinedAt: !731)
!795 = !DILocation(line: 927, column: 9, scope: !253, inlinedAt: !731)
!796 = !DILocation(line: 927, column: 7, scope: !253, inlinedAt: !731)
!797 = !DILocation(line: 933, column: 3, scope: !243, inlinedAt: !731)
!798 = !DILocation(line: 431, column: 13, scope: !728)
!799 = !DILocation(line: 431, column: 5, scope: !728)
!800 = !DILocation(line: 434, column: 26, scope: !801)
!801 = distinct !DILexicalBlock(scope: !802, file: !11, line: 433, column: 5)
!802 = distinct !DILexicalBlock(scope: !718, file: !11, line: 432, column: 10)
!803 = !DILocation(line: 435, column: 46, scope: !801)
!804 = !DILocation(line: 436, column: 25, scope: !801)
!805 = !DILocation(line: 436, column: 62, scope: !801)
!806 = !DILocation(line: 436, column: 11, scope: !801)
!807 = !DILocation(line: 436, column: 9, scope: !801)
!808 = !DILocation(line: 438, column: 13, scope: !802)
!809 = !DILocation(line: 438, column: 5, scope: !802)
!810 = !DILocation(line: 442, column: 1, scope: !29)
!811 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !30, file: !11, line: 442, type: !15)
!812 = !DILocation(line: 442, column: 31, scope: !30)
!813 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !30, file: !11, line: 442, type: !15)
!814 = !DILocation(line: 442, column: 50, scope: !30)
!815 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !30, file: !11, line: 443, type: !15)
!816 = !DILocation(line: 443, column: 7, scope: !30)
!817 = !DILocation(line: 443, column: 39, scope: !30)
!818 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !30, file: !11, line: 444, type: !15)
!819 = !DILocation(line: 444, column: 7, scope: !30)
!820 = !DILocation(line: 444, column: 30, scope: !30)
!821 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !30, file: !11, line: 445, type: !15)
!822 = !DILocation(line: 445, column: 7, scope: !30)
!823 = !DILocation(line: 445, column: 50, scope: !30)
!824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__TargetDeviceObject", scope: !30, file: !11, line: 446, type: !15)
!825 = !DILocation(line: 446, column: 7, scope: !30)
!826 = !DILocation(line: 446, column: 45, scope: !30)
!827 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !30, file: !11, line: 447, type: !15)
!828 = !DILocation(line: 447, column: 7, scope: !30)
!829 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !30, file: !11, line: 448, type: !15)
!830 = !DILocation(line: 448, column: 7, scope: !30)
!831 = !DILocation(line: 452, column: 21, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !11, line: 451, column: 3)
!833 = distinct !DILexicalBlock(scope: !30, file: !11, line: 450, column: 3)
!834 = !DILocation(line: 452, column: 19, scope: !832)
!835 = !DILocation(line: 453, column: 24, scope: !832)
!836 = !DILocation(line: 454, column: 44, scope: !832)
!837 = !DILocation(line: 455, column: 23, scope: !832)
!838 = !DILocation(line: 455, column: 60, scope: !832)
!839 = !DILocation(line: 455, column: 9, scope: !832)
!840 = !DILocation(line: 455, column: 7, scope: !832)
!841 = !DILocation(line: 457, column: 11, scope: !833)
!842 = !DILocation(line: 457, column: 3, scope: !833)
!843 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DriverObject", arg: 1, scope: !31, file: !11, line: 460, type: !15)
!844 = !DILocation(line: 460, column: 25, scope: !31)
!845 = !DILocation(line: 464, column: 3, scope: !846)
!846 = distinct !DILexicalBlock(scope: !31, file: !11, line: 463, column: 3)
!847 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !34, file: !11, line: 467, type: !15)
!848 = !DILocation(line: 467, column: 32, scope: !34)
!849 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !34, file: !11, line: 468, type: !15)
!850 = !DILocation(line: 468, column: 7, scope: !34)
!851 = !DILocation(line: 468, column: 39, scope: !34)
!852 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__TargetDeviceObject", scope: !34, file: !11, line: 469, type: !15)
!853 = !DILocation(line: 469, column: 7, scope: !34)
!854 = !DILocation(line: 469, column: 45, scope: !34)
!855 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__number", scope: !34, file: !11, line: 470, type: !15)
!856 = !DILocation(line: 470, column: 7, scope: !34)
!857 = !DILocation(line: 470, column: 24, scope: !34)
!858 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ioStatus__Status", scope: !34, file: !11, line: 471, type: !15)
!859 = !DILocation(line: 471, column: 7, scope: !34)
!860 = !DILocation(line: 471, column: 26, scope: !34)
!861 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__VOLUME_NUMBER", scope: !34, file: !11, line: 472, type: !15)
!862 = !DILocation(line: 472, column: 7, scope: !34)
!863 = !DILocation(line: 472, column: 31, scope: !34)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volumeNumber__VolumeManagerName__0", scope: !34, file: !11, line: 473, type: !15)
!865 = !DILocation(line: 473, column: 7, scope: !34)
!866 = !DILocation(line: 473, column: 44, scope: !34)
!867 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !34, file: !11, line: 474, type: !15)
!868 = !DILocation(line: 474, column: 7, scope: !34)
!869 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ioStatus", scope: !34, file: !11, line: 475, type: !15)
!870 = !DILocation(line: 475, column: 7, scope: !34)
!871 = !DILocation(line: 475, column: 18, scope: !34)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "event", scope: !34, file: !11, line: 476, type: !15)
!873 = !DILocation(line: 476, column: 7, scope: !34)
!874 = !DILocation(line: 476, column: 15, scope: !34)
!875 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !34, file: !11, line: 477, type: !15)
!876 = !DILocation(line: 477, column: 7, scope: !34)
!877 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp", scope: !34, file: !11, line: 478, type: !15)
!878 = !DILocation(line: 478, column: 7, scope: !34)
!879 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "number", scope: !34, file: !11, line: 479, type: !15)
!880 = !DILocation(line: 479, column: 7, scope: !34)
!881 = !DILocation(line: 479, column: 16, scope: !34)
!882 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "registrationFlag", scope: !34, file: !11, line: 480, type: !15)
!883 = !DILocation(line: 480, column: 7, scope: !34)
!884 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__MOUNTDEV_NAME", scope: !34, file: !11, line: 481, type: !15)
!885 = !DILocation(line: 481, column: 7, scope: !34)
!886 = !DILocation(line: 481, column: 31, scope: !34)
!887 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "output__NameLength", scope: !34, file: !11, line: 482, type: !15)
!888 = !DILocation(line: 482, column: 7, scope: !34)
!889 = !DILocation(line: 482, column: 28, scope: !34)
!890 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outputSize", scope: !34, file: !11, line: 483, type: !15)
!891 = !DILocation(line: 483, column: 7, scope: !34)
!892 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "output", scope: !34, file: !11, line: 484, type: !15)
!893 = !DILocation(line: 484, column: 7, scope: !34)
!894 = !DILocation(line: 484, column: 16, scope: !34)
!895 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volumeNumber", scope: !34, file: !11, line: 485, type: !15)
!896 = !DILocation(line: 485, column: 7, scope: !34)
!897 = !DILocation(line: 485, column: 22, scope: !34)
!898 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp20", scope: !34, file: !11, line: 486, type: !15)
!899 = !DILocation(line: 486, column: 7, scope: !34)
!900 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp21", scope: !34, file: !11, line: 487, type: !15)
!901 = !DILocation(line: 487, column: 7, scope: !34)
!902 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp22", scope: !34, file: !11, line: 488, type: !15)
!903 = !DILocation(line: 488, column: 7, scope: !34)
!904 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp23", scope: !34, file: !11, line: 489, type: !4)
!905 = !DILocation(line: 489, column: 8, scope: !34)
!906 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp24", scope: !34, file: !11, line: 490, type: !15)
!907 = !DILocation(line: 490, column: 7, scope: !34)
!908 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp25", scope: !34, file: !11, line: 491, type: !15)
!909 = !DILocation(line: 491, column: 7, scope: !34)
!910 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp26", scope: !34, file: !11, line: 492, type: !15)
!911 = !DILocation(line: 492, column: 7, scope: !34)
!912 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp27", scope: !34, file: !11, line: 493, type: !4)
!913 = !DILocation(line: 493, column: 8, scope: !34)
!914 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp28", scope: !34, file: !11, line: 494, type: !5)
!915 = !DILocation(line: 494, column: 17, scope: !34)
!916 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp29", scope: !34, file: !11, line: 495, type: !15)
!917 = !DILocation(line: 495, column: 7, scope: !34)
!918 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp30", scope: !34, file: !11, line: 496, type: !15)
!919 = !DILocation(line: 496, column: 7, scope: !34)
!920 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp31", scope: !34, file: !11, line: 497, type: !15)
!921 = !DILocation(line: 497, column: 7, scope: !34)
!922 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp32", scope: !34, file: !11, line: 498, type: !4)
!923 = !DILocation(line: 498, column: 8, scope: !34)
!924 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp33", scope: !34, file: !11, line: 499, type: !15)
!925 = !DILocation(line: 499, column: 7, scope: !34)
!926 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp34", scope: !34, file: !11, line: 500, type: !15)
!927 = !DILocation(line: 500, column: 7, scope: !34)
!928 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp35", scope: !34, file: !11, line: 501, type: !15)
!929 = !DILocation(line: 501, column: 7, scope: !34)
!930 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp36", scope: !34, file: !11, line: 502, type: !15)
!931 = !DILocation(line: 502, column: 7, scope: !34)
!932 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp37", scope: !34, file: !11, line: 503, type: !4)
!933 = !DILocation(line: 503, column: 8, scope: !34)
!934 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp38", scope: !34, file: !11, line: 504, type: !15)
!935 = !DILocation(line: 504, column: 7, scope: !34)
!936 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp39", scope: !34, file: !11, line: 505, type: !15)
!937 = !DILocation(line: 505, column: 7, scope: !34)
!938 = !DILocation(line: 489, column: 20, scope: !939)
!939 = distinct !DILexicalBlock(scope: !940, file: !11, line: 508, column: 3)
!940 = distinct !DILexicalBlock(scope: !34, file: !11, line: 507, column: 3)
!941 = !DILocation(line: 490, column: 21, scope: !939)
!942 = !DILocation(line: 490, column: 19, scope: !939)
!943 = !DILocation(line: 491, column: 15, scope: !939)
!944 = !DILocation(line: 491, column: 39, scope: !939)
!945 = !DILocation(line: 491, column: 52, scope: !939)
!946 = !DILocation(line: 492, column: 45, scope: !939)
!947 = !DILocation(line: 492, column: 53, scope: !939)
!948 = !DILocation(line: 492, column: 72, scope: !939)
!949 = !DILocation(line: 492, column: 79, scope: !939)
!950 = !DILocation(line: 491, column: 9, scope: !939)
!951 = !DILocation(line: 810, column: 20, scope: !41, inlinedAt: !952)
!952 = distinct !DILocation(line: 491, column: 9, scope: !939)
!953 = !DILocation(line: 810, column: 7, scope: !41, inlinedAt: !952)
!954 = !DILocation(line: 813, column: 13, scope: !955, inlinedAt: !952)
!955 = distinct !DILexicalBlock(scope: !41, file: !11, line: 812, column: 3)
!956 = !DILocation(line: 815, column: 15, scope: !955, inlinedAt: !952)
!957 = !DILocation(line: 815, column: 13, scope: !955, inlinedAt: !952)
!958 = !DILocation(line: 816, column: 7, scope: !959, inlinedAt: !952)
!959 = distinct !DILexicalBlock(scope: !955, file: !11, line: 816, column: 7)
!960 = !DILocation(line: 816, column: 17, scope: !959, inlinedAt: !952)
!961 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "IoControlCode", arg: 1, scope: !41, file: !11, line: 806, type: !15)
!962 = !DILocation(line: 806, column: 39, scope: !41, inlinedAt: !963)
!963 = distinct !DILocation(line: 520, column: 11, scope: !964)
!964 = distinct !DILexicalBlock(scope: !965, file: !11, line: 517, column: 5)
!965 = distinct !DILexicalBlock(scope: !966, file: !11, line: 510, column: 19)
!966 = distinct !DILexicalBlock(scope: !940, file: !11, line: 510, column: 7)
!967 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 2, scope: !41, file: !11, line: 806, type: !15)
!968 = !DILocation(line: 806, column: 59, scope: !41, inlinedAt: !963)
!969 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InputBuffer", arg: 3, scope: !41, file: !11, line: 806, type: !15)
!970 = !DILocation(line: 806, column: 78, scope: !41, inlinedAt: !963)
!971 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InputBufferLength", arg: 4, scope: !41, file: !11, line: 807, type: !15)
!972 = !DILocation(line: 807, column: 39, scope: !41, inlinedAt: !963)
!973 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "OutputBuffer", arg: 5, scope: !41, file: !11, line: 807, type: !15)
!974 = !DILocation(line: 807, column: 63, scope: !41, inlinedAt: !963)
!975 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "OutputBufferLength", arg: 6, scope: !41, file: !11, line: 807, type: !15)
!976 = !DILocation(line: 807, column: 82, scope: !41, inlinedAt: !963)
!977 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InternalDeviceIoControl", arg: 7, scope: !41, file: !11, line: 808, type: !15)
!978 = !DILocation(line: 808, column: 39, scope: !41, inlinedAt: !963)
!979 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 8, scope: !41, file: !11, line: 808, type: !15)
!980 = !DILocation(line: 808, column: 69, scope: !41, inlinedAt: !963)
!981 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "IoStatusBlock", arg: 9, scope: !41, file: !11, line: 808, type: !15)
!982 = !DILocation(line: 808, column: 81, scope: !41, inlinedAt: !963)
!983 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "malloc_ret", scope: !41, file: !11, line: 810, type: !15)
!984 = !DILocation(line: 810, column: 7, scope: !41, inlinedAt: !963)
!985 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_7", scope: !955, file: !11, line: 814, type: !15)
!986 = !DILocation(line: 814, column: 7, scope: !955, inlinedAt: !963)
!987 = !DILocation(line: 806, column: 39, scope: !41, inlinedAt: !988)
!988 = distinct !DILocation(line: 547, column: 13, scope: !989)
!989 = distinct !DILexicalBlock(scope: !990, file: !11, line: 544, column: 7)
!990 = distinct !DILexicalBlock(scope: !991, file: !11, line: 539, column: 37)
!991 = distinct !DILexicalBlock(scope: !992, file: !11, line: 539, column: 9)
!992 = distinct !DILexicalBlock(scope: !965, file: !11, line: 538, column: 5)
!993 = !DILocation(line: 806, column: 59, scope: !41, inlinedAt: !988)
!994 = !DILocation(line: 806, column: 78, scope: !41, inlinedAt: !988)
!995 = !DILocation(line: 807, column: 39, scope: !41, inlinedAt: !988)
!996 = !DILocation(line: 807, column: 63, scope: !41, inlinedAt: !988)
!997 = !DILocation(line: 807, column: 82, scope: !41, inlinedAt: !988)
!998 = !DILocation(line: 808, column: 39, scope: !41, inlinedAt: !988)
!999 = !DILocation(line: 808, column: 69, scope: !41, inlinedAt: !988)
!1000 = !DILocation(line: 808, column: 81, scope: !41, inlinedAt: !988)
!1001 = !DILocation(line: 810, column: 7, scope: !41, inlinedAt: !988)
!1002 = !DILocation(line: 814, column: 7, scope: !955, inlinedAt: !988)
!1003 = !DILocation(line: 806, column: 39, scope: !41, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 575, column: 11, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !965, file: !11, line: 573, column: 5)
!1006 = !DILocation(line: 806, column: 59, scope: !41, inlinedAt: !1004)
!1007 = !DILocation(line: 806, column: 78, scope: !41, inlinedAt: !1004)
!1008 = !DILocation(line: 807, column: 39, scope: !41, inlinedAt: !1004)
!1009 = !DILocation(line: 807, column: 63, scope: !41, inlinedAt: !1004)
!1010 = !DILocation(line: 807, column: 82, scope: !41, inlinedAt: !1004)
!1011 = !DILocation(line: 808, column: 39, scope: !41, inlinedAt: !1004)
!1012 = !DILocation(line: 808, column: 69, scope: !41, inlinedAt: !1004)
!1013 = !DILocation(line: 808, column: 81, scope: !41, inlinedAt: !1004)
!1014 = !DILocation(line: 810, column: 7, scope: !41, inlinedAt: !1004)
!1015 = !DILocation(line: 814, column: 7, scope: !955, inlinedAt: !1004)
!1016 = !DILocation(line: 816, column: 7, scope: !955, inlinedAt: !952)
!1017 = !DILocation(line: 821, column: 15, scope: !1018, inlinedAt: !952)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !11, line: 819, column: 12)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !11, line: 819, column: 9)
!1020 = distinct !DILexicalBlock(scope: !959, file: !11, line: 818, column: 10)
!1021 = !DILocation(line: 821, column: 7, scope: !1018, inlinedAt: !952)
!1022 = !DILocation(line: 823, column: 7, scope: !1018, inlinedAt: !952)
!1023 = !DILocation(line: 829, column: 1, scope: !41, inlinedAt: !952)
!1024 = !DILocation(line: 491, column: 7, scope: !939)
!1025 = !DILocation(line: 494, column: 9, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !940, file: !11, line: 494, column: 7)
!1027 = !DILocation(line: 806, column: 39, scope: !41, inlinedAt: !952)
!1028 = !DILocation(line: 806, column: 59, scope: !41, inlinedAt: !952)
!1029 = !DILocation(line: 806, column: 78, scope: !41, inlinedAt: !952)
!1030 = !DILocation(line: 807, column: 39, scope: !41, inlinedAt: !952)
!1031 = !DILocation(line: 807, column: 63, scope: !41, inlinedAt: !952)
!1032 = !DILocation(line: 807, column: 82, scope: !41, inlinedAt: !952)
!1033 = !DILocation(line: 808, column: 39, scope: !41, inlinedAt: !952)
!1034 = !DILocation(line: 808, column: 69, scope: !41, inlinedAt: !952)
!1035 = !DILocation(line: 808, column: 81, scope: !41, inlinedAt: !952)
!1036 = !DILocation(line: 814, column: 7, scope: !955, inlinedAt: !952)
!1037 = !DILocation(line: 494, column: 7, scope: !940)
!1038 = !DILocation(line: 495, column: 5, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1026, file: !11, line: 494, column: 14)
!1040 = !DILocation(line: 500, column: 26, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !940, file: !11, line: 497, column: 3)
!1042 = !DILocation(line: 500, column: 63, scope: !1041)
!1043 = !DILocation(line: 500, column: 12, scope: !1041)
!1044 = !DILocation(line: 500, column: 10, scope: !1041)
!1045 = !DILocation(line: 502, column: 24, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !940, file: !11, line: 502, column: 3)
!1047 = !DILocation(line: 502, column: 17, scope: !1046)
!1048 = !DILocation(line: 502, column: 15, scope: !1046)
!1049 = !DILocation(line: 502, column: 7, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1046, file: !11, line: 502, column: 7)
!1051 = !DILocation(line: 502, column: 19, scope: !1050)
!1052 = !DILocation(line: 502, column: 7, scope: !1046)
!1053 = !DILocation(line: 504, column: 27, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !11, line: 503, column: 5)
!1055 = distinct !DILexicalBlock(scope: !1050, file: !11, line: 502, column: 28)
!1056 = !DILocation(line: 504, column: 34, scope: !1054)
!1057 = !DILocation(line: 504, column: 45, scope: !1054)
!1058 = !DILocation(line: 504, column: 5, scope: !1054)
!1059 = !DILocation(line: 505, column: 14, scope: !1054)
!1060 = !DILocation(line: 505, column: 12, scope: !1054)
!1061 = !DILocation(line: 507, column: 3, scope: !1055)
!1062 = !DILocation(line: 510, column: 7, scope: !966)
!1063 = !DILocation(line: 510, column: 14, scope: !966)
!1064 = !DILocation(line: 510, column: 7, scope: !940)
!1065 = !DILocation(line: 513, column: 18, scope: !965)
!1066 = !DILocation(line: 513, column: 16, scope: !965)
!1067 = !DILocation(line: 514, column: 11, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !965, file: !11, line: 514, column: 9)
!1069 = !DILocation(line: 514, column: 9, scope: !965)
!1070 = !DILocation(line: 515, column: 7, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1068, file: !11, line: 514, column: 19)
!1072 = !DILocation(line: 520, column: 17, scope: !964)
!1073 = !DILocation(line: 520, column: 41, scope: !964)
!1074 = !DILocation(line: 520, column: 54, scope: !964)
!1075 = !DILocation(line: 521, column: 47, scope: !964)
!1076 = !DILocation(line: 521, column: 55, scope: !964)
!1077 = !DILocation(line: 521, column: 70, scope: !964)
!1078 = !DILocation(line: 521, column: 77, scope: !964)
!1079 = !DILocation(line: 520, column: 11, scope: !964)
!1080 = !DILocation(line: 810, column: 20, scope: !41, inlinedAt: !963)
!1081 = !DILocation(line: 813, column: 13, scope: !955, inlinedAt: !963)
!1082 = !DILocation(line: 815, column: 15, scope: !955, inlinedAt: !963)
!1083 = !DILocation(line: 815, column: 13, scope: !955, inlinedAt: !963)
!1084 = !DILocation(line: 816, column: 7, scope: !959, inlinedAt: !963)
!1085 = !DILocation(line: 816, column: 17, scope: !959, inlinedAt: !963)
!1086 = !DILocation(line: 816, column: 7, scope: !955, inlinedAt: !963)
!1087 = !DILocation(line: 821, column: 15, scope: !1018, inlinedAt: !963)
!1088 = !DILocation(line: 821, column: 7, scope: !1018, inlinedAt: !963)
!1089 = !DILocation(line: 823, column: 7, scope: !1018, inlinedAt: !963)
!1090 = !DILocation(line: 829, column: 1, scope: !41, inlinedAt: !963)
!1091 = !DILocation(line: 520, column: 9, scope: !964)
!1092 = !DILocation(line: 523, column: 11, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !965, file: !11, line: 523, column: 9)
!1094 = !DILocation(line: 523, column: 9, scope: !965)
!1095 = !DILocation(line: 524, column: 7, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1093, file: !11, line: 523, column: 16)
!1097 = !DILocation(line: 529, column: 28, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !965, file: !11, line: 526, column: 5)
!1099 = !DILocation(line: 529, column: 65, scope: !1098)
!1100 = !DILocation(line: 529, column: 14, scope: !1098)
!1101 = !DILocation(line: 529, column: 12, scope: !1098)
!1102 = !DILocation(line: 531, column: 26, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !965, file: !11, line: 531, column: 5)
!1104 = !DILocation(line: 531, column: 19, scope: !1103)
!1105 = !DILocation(line: 531, column: 17, scope: !1103)
!1106 = !DILocation(line: 531, column: 9, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1103, file: !11, line: 531, column: 9)
!1108 = !DILocation(line: 531, column: 21, scope: !1107)
!1109 = !DILocation(line: 531, column: 9, scope: !1103)
!1110 = !DILocation(line: 533, column: 29, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !11, line: 532, column: 7)
!1112 = distinct !DILexicalBlock(scope: !1107, file: !11, line: 531, column: 30)
!1113 = !DILocation(line: 533, column: 36, scope: !1111)
!1114 = !DILocation(line: 533, column: 47, scope: !1111)
!1115 = !DILocation(line: 533, column: 7, scope: !1111)
!1116 = !DILocation(line: 534, column: 16, scope: !1111)
!1117 = !DILocation(line: 534, column: 14, scope: !1111)
!1118 = !DILocation(line: 536, column: 5, scope: !1112)
!1119 = !DILocation(line: 539, column: 35, scope: !992)
!1120 = !DILocation(line: 539, column: 19, scope: !992)
!1121 = !DILocation(line: 539, column: 17, scope: !992)
!1122 = !DILocation(line: 539, column: 9, scope: !991)
!1123 = !DILocation(line: 539, column: 21, scope: !991)
!1124 = !DILocation(line: 539, column: 9, scope: !992)
!1125 = !DILocation(line: 540, column: 20, scope: !990)
!1126 = !DILocation(line: 540, column: 44, scope: !990)
!1127 = !DILocation(line: 540, column: 42, scope: !990)
!1128 = !DILocation(line: 540, column: 18, scope: !990)
!1129 = !DILocation(line: 541, column: 13, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !990, file: !11, line: 541, column: 11)
!1131 = !DILocation(line: 541, column: 11, scope: !990)
!1132 = !DILocation(line: 542, column: 9, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1130, file: !11, line: 541, column: 21)
!1134 = !DILocation(line: 547, column: 19, scope: !989)
!1135 = !DILocation(line: 547, column: 43, scope: !989)
!1136 = !DILocation(line: 547, column: 56, scope: !989)
!1137 = !DILocation(line: 548, column: 49, scope: !989)
!1138 = !DILocation(line: 548, column: 57, scope: !989)
!1139 = !DILocation(line: 548, column: 72, scope: !989)
!1140 = !DILocation(line: 548, column: 79, scope: !989)
!1141 = !DILocation(line: 547, column: 13, scope: !989)
!1142 = !DILocation(line: 810, column: 20, scope: !41, inlinedAt: !988)
!1143 = !DILocation(line: 813, column: 13, scope: !955, inlinedAt: !988)
!1144 = !DILocation(line: 815, column: 15, scope: !955, inlinedAt: !988)
!1145 = !DILocation(line: 815, column: 13, scope: !955, inlinedAt: !988)
!1146 = !DILocation(line: 816, column: 7, scope: !959, inlinedAt: !988)
!1147 = !DILocation(line: 816, column: 17, scope: !959, inlinedAt: !988)
!1148 = !DILocation(line: 816, column: 7, scope: !955, inlinedAt: !988)
!1149 = !DILocation(line: 821, column: 15, scope: !1018, inlinedAt: !988)
!1150 = !DILocation(line: 821, column: 7, scope: !1018, inlinedAt: !988)
!1151 = !DILocation(line: 823, column: 7, scope: !1018, inlinedAt: !988)
!1152 = !DILocation(line: 829, column: 1, scope: !41, inlinedAt: !988)
!1153 = !DILocation(line: 547, column: 11, scope: !989)
!1154 = !DILocation(line: 550, column: 13, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !990, file: !11, line: 550, column: 11)
!1156 = !DILocation(line: 550, column: 11, scope: !990)
!1157 = !DILocation(line: 551, column: 9, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1155, file: !11, line: 550, column: 18)
!1159 = !DILocation(line: 556, column: 30, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !990, file: !11, line: 553, column: 7)
!1161 = !DILocation(line: 556, column: 67, scope: !1160)
!1162 = !DILocation(line: 556, column: 16, scope: !1160)
!1163 = !DILocation(line: 556, column: 14, scope: !1160)
!1164 = !DILocation(line: 558, column: 28, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !990, file: !11, line: 558, column: 7)
!1166 = !DILocation(line: 558, column: 21, scope: !1165)
!1167 = !DILocation(line: 558, column: 19, scope: !1165)
!1168 = !DILocation(line: 558, column: 11, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1165, file: !11, line: 558, column: 11)
!1170 = !DILocation(line: 558, column: 23, scope: !1169)
!1171 = !DILocation(line: 558, column: 11, scope: !1165)
!1172 = !DILocation(line: 560, column: 31, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !11, line: 559, column: 9)
!1174 = distinct !DILexicalBlock(scope: !1169, file: !11, line: 558, column: 32)
!1175 = !DILocation(line: 560, column: 38, scope: !1173)
!1176 = !DILocation(line: 560, column: 49, scope: !1173)
!1177 = !DILocation(line: 560, column: 9, scope: !1173)
!1178 = !DILocation(line: 561, column: 18, scope: !1173)
!1179 = !DILocation(line: 561, column: 16, scope: !1173)
!1180 = !DILocation(line: 563, column: 7, scope: !1174)
!1181 = !DILocation(line: 565, column: 5, scope: !990)
!1182 = !DILocation(line: 569, column: 9, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !11, line: 569, column: 9)
!1184 = distinct !DILexicalBlock(scope: !965, file: !11, line: 567, column: 5)
!1185 = !DILocation(line: 569, column: 16, scope: !1183)
!1186 = !DILocation(line: 569, column: 9, scope: !1184)
!1187 = !DILocation(line: 570, column: 15, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1183, file: !11, line: 569, column: 21)
!1189 = !DILocation(line: 570, column: 7, scope: !1188)
!1190 = !DILocation(line: 575, column: 17, scope: !1005)
!1191 = !DILocation(line: 575, column: 41, scope: !1005)
!1192 = !DILocation(line: 575, column: 54, scope: !1005)
!1193 = !DILocation(line: 576, column: 47, scope: !1005)
!1194 = !DILocation(line: 576, column: 61, scope: !1005)
!1195 = !DILocation(line: 577, column: 44, scope: !1005)
!1196 = !DILocation(line: 577, column: 51, scope: !1005)
!1197 = !DILocation(line: 575, column: 11, scope: !1005)
!1198 = !DILocation(line: 810, column: 20, scope: !41, inlinedAt: !1004)
!1199 = !DILocation(line: 813, column: 13, scope: !955, inlinedAt: !1004)
!1200 = !DILocation(line: 815, column: 15, scope: !955, inlinedAt: !1004)
!1201 = !DILocation(line: 815, column: 13, scope: !955, inlinedAt: !1004)
!1202 = !DILocation(line: 816, column: 7, scope: !959, inlinedAt: !1004)
!1203 = !DILocation(line: 816, column: 17, scope: !959, inlinedAt: !1004)
!1204 = !DILocation(line: 816, column: 7, scope: !955, inlinedAt: !1004)
!1205 = !DILocation(line: 821, column: 15, scope: !1018, inlinedAt: !1004)
!1206 = !DILocation(line: 821, column: 7, scope: !1018, inlinedAt: !1004)
!1207 = !DILocation(line: 823, column: 7, scope: !1018, inlinedAt: !1004)
!1208 = !DILocation(line: 829, column: 1, scope: !41, inlinedAt: !1004)
!1209 = !DILocation(line: 575, column: 9, scope: !1005)
!1210 = !DILocation(line: 579, column: 11, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !965, file: !11, line: 579, column: 9)
!1212 = !DILocation(line: 579, column: 9, scope: !965)
!1213 = !DILocation(line: 580, column: 7, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1211, file: !11, line: 579, column: 16)
!1215 = !DILocation(line: 585, column: 28, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !965, file: !11, line: 582, column: 5)
!1217 = !DILocation(line: 585, column: 65, scope: !1216)
!1218 = !DILocation(line: 585, column: 14, scope: !1216)
!1219 = !DILocation(line: 585, column: 12, scope: !1216)
!1220 = !DILocation(line: 587, column: 26, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !965, file: !11, line: 587, column: 5)
!1222 = !DILocation(line: 587, column: 19, scope: !1221)
!1223 = !DILocation(line: 587, column: 17, scope: !1221)
!1224 = !DILocation(line: 587, column: 9, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1221, file: !11, line: 587, column: 9)
!1226 = !DILocation(line: 587, column: 21, scope: !1225)
!1227 = !DILocation(line: 587, column: 9, scope: !1221)
!1228 = !DILocation(line: 589, column: 29, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !11, line: 588, column: 7)
!1230 = distinct !DILexicalBlock(scope: !1225, file: !11, line: 587, column: 30)
!1231 = !DILocation(line: 589, column: 36, scope: !1229)
!1232 = !DILocation(line: 589, column: 47, scope: !1229)
!1233 = !DILocation(line: 589, column: 7, scope: !1229)
!1234 = !DILocation(line: 590, column: 16, scope: !1229)
!1235 = !DILocation(line: 590, column: 14, scope: !1229)
!1236 = !DILocation(line: 592, column: 5, scope: !1230)
!1237 = !DILocation(line: 595, column: 9, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !11, line: 595, column: 9)
!1239 = distinct !DILexicalBlock(scope: !965, file: !11, line: 594, column: 5)
!1240 = !DILocation(line: 595, column: 16, scope: !1238)
!1241 = !DILocation(line: 595, column: 9, scope: !1239)
!1242 = !DILocation(line: 596, column: 7, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1238, file: !11, line: 595, column: 21)
!1244 = !DILocation(line: 598, column: 11, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !11, line: 598, column: 11)
!1246 = distinct !DILexicalBlock(scope: !1238, file: !11, line: 597, column: 12)
!1247 = !DILocation(line: 598, column: 46, scope: !1245)
!1248 = !DILocation(line: 598, column: 11, scope: !1246)
!1249 = !DILocation(line: 598, column: 52, scope: !1245)
!1250 = !DILocation(line: 600, column: 13, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !11, line: 600, column: 13)
!1252 = distinct !DILexicalBlock(scope: !1245, file: !11, line: 598, column: 52)
!1253 = !DILocation(line: 600, column: 20, scope: !1251)
!1254 = !DILocation(line: 600, column: 13, scope: !1252)
!1255 = !DILocation(line: 602, column: 9, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1251, file: !11, line: 600, column: 26)
!1257 = !DILocation(line: 603, column: 7, scope: !1252)
!1258 = !DILocation(line: 606, column: 3, scope: !965)
!1259 = !DILocation(line: 610, column: 7, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !11, line: 610, column: 7)
!1261 = distinct !DILexicalBlock(scope: !940, file: !11, line: 607, column: 3)
!1262 = !DILocation(line: 610, column: 14, scope: !1260)
!1263 = !DILocation(line: 610, column: 7, scope: !1261)
!1264 = !DILocation(line: 612, column: 3, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1260, file: !11, line: 610, column: 19)
!1266 = !DILocation(line: 615, column: 11, scope: !940)
!1267 = !DILocation(line: 615, column: 3, scope: !940)
!1268 = !DILocation(line: 617, column: 1, scope: !34)
!1269 = !DILocation(line: 622, column: 7, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !37, file: !11, line: 621, column: 3)
!1271 = !DILocation(line: 622, column: 5, scope: !1270)
!1272 = !DILocation(line: 623, column: 13, scope: !1270)
!1273 = !DILocation(line: 624, column: 20, scope: !1270)
!1274 = !DILocation(line: 624, column: 18, scope: !1270)
!1275 = !DILocation(line: 625, column: 23, scope: !1270)
!1276 = !DILocation(line: 625, column: 21, scope: !1270)
!1277 = !DILocation(line: 626, column: 20, scope: !1270)
!1278 = !DILocation(line: 626, column: 18, scope: !1270)
!1279 = !DILocation(line: 627, column: 14, scope: !1270)
!1280 = !DILocation(line: 627, column: 12, scope: !1270)
!1281 = !DILocation(line: 628, column: 12, scope: !1270)
!1282 = !DILocation(line: 628, column: 10, scope: !1270)
!1283 = !DILocation(line: 629, column: 3, scope: !1270)
!1284 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !38, file: !11, line: 633, type: !15)
!1285 = !DILocation(line: 633, column: 7, scope: !38)
!1286 = !DILocation(line: 633, column: 11, scope: !38)
!1287 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !38, file: !11, line: 634, type: !15)
!1288 = !DILocation(line: 634, column: 7, scope: !38)
!1289 = !DILocation(line: 634, column: 16, scope: !38)
!1290 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "we_should_unload", scope: !38, file: !11, line: 635, type: !15)
!1291 = !DILocation(line: 635, column: 7, scope: !38)
!1292 = !DILocation(line: 635, column: 26, scope: !38)
!1293 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp", scope: !38, file: !11, line: 636, type: !15)
!1294 = !DILocation(line: 636, column: 7, scope: !38)
!1295 = !DILocation(line: 636, column: 13, scope: !38)
!1296 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pirp__IoStatus__Status", scope: !38, file: !11, line: 637, type: !15)
!1297 = !DILocation(line: 637, column: 7, scope: !38)
!1298 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp_choice", scope: !38, file: !11, line: 638, type: !15)
!1299 = !DILocation(line: 638, column: 7, scope: !38)
!1300 = !DILocation(line: 638, column: 20, scope: !38)
!1301 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devobj", scope: !38, file: !11, line: 639, type: !15)
!1302 = !DILocation(line: 639, column: 7, scope: !38)
!1303 = !DILocation(line: 639, column: 16, scope: !38)
!1304 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp9", scope: !38, file: !11, line: 640, type: !15)
!1305 = !DILocation(line: 640, column: 7, scope: !38)
!1306 = !DILocation(line: 642, column: 5, scope: !38)
!1307 = !DILocation(line: 643, column: 12, scope: !38)
!1308 = !DILocation(line: 644, column: 6, scope: !38)
!1309 = !DILocation(line: 645, column: 6, scope: !38)
!1310 = !DILocation(line: 646, column: 9, scope: !38)
!1311 = !DILocation(line: 647, column: 9, scope: !38)
!1312 = !DILocation(line: 648, column: 8, scope: !38)
!1313 = !DILocation(line: 649, column: 8, scope: !38)
!1314 = !DILocation(line: 650, column: 7, scope: !38)
!1315 = !DILocation(line: 651, column: 10, scope: !38)
!1316 = !DILocation(line: 652, column: 12, scope: !38)
!1317 = !DILocation(line: 653, column: 18, scope: !38)
!1318 = !DILocation(line: 654, column: 21, scope: !38)
!1319 = !DILocation(line: 655, column: 18, scope: !38)
!1320 = !DILocation(line: 656, column: 13, scope: !38)
!1321 = !DILocation(line: 657, column: 12, scope: !38)
!1322 = !DILocation(line: 658, column: 11, scope: !38)
!1323 = !DILocation(line: 659, column: 8, scope: !38)
!1324 = !DILocation(line: 660, column: 13, scope: !38)
!1325 = !DILocation(line: 661, column: 14, scope: !38)
!1326 = !DILocation(line: 644, column: 10, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !11, line: 664, column: 3)
!1328 = distinct !DILexicalBlock(scope: !38, file: !11, line: 663, column: 3)
!1329 = !DILocation(line: 644, column: 8, scope: !1327)
!1330 = !DILocation(line: 65, column: 12, scope: !82, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 645, column: 3, scope: !1327)
!1332 = !DILocation(line: 66, column: 6, scope: !82, inlinedAt: !1331)
!1333 = !DILocation(line: 67, column: 6, scope: !82, inlinedAt: !1331)
!1334 = !DILocation(line: 68, column: 9, scope: !82, inlinedAt: !1331)
!1335 = !DILocation(line: 69, column: 9, scope: !82, inlinedAt: !1331)
!1336 = !DILocation(line: 70, column: 8, scope: !82, inlinedAt: !1331)
!1337 = !DILocation(line: 71, column: 8, scope: !82, inlinedAt: !1331)
!1338 = !DILocation(line: 72, column: 7, scope: !82, inlinedAt: !1331)
!1339 = !DILocation(line: 73, column: 7, scope: !82, inlinedAt: !1331)
!1340 = !DILocation(line: 73, column: 5, scope: !82, inlinedAt: !1331)
!1341 = !DILocation(line: 74, column: 10, scope: !82, inlinedAt: !1331)
!1342 = !DILocation(line: 75, column: 12, scope: !82, inlinedAt: !1331)
!1343 = !DILocation(line: 76, column: 18, scope: !82, inlinedAt: !1331)
!1344 = !DILocation(line: 77, column: 21, scope: !82, inlinedAt: !1331)
!1345 = !DILocation(line: 78, column: 18, scope: !82, inlinedAt: !1331)
!1346 = !DILocation(line: 79, column: 13, scope: !82, inlinedAt: !1331)
!1347 = !DILocation(line: 647, column: 7, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1328, file: !11, line: 647, column: 7)
!1349 = !DILocation(line: 647, column: 14, scope: !1348)
!1350 = !DILocation(line: 922, column: 29, scope: !46, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 299, column: 3, scope: !519, inlinedAt: !1352)
!1352 = distinct !DILocation(line: 691, column: 26, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !11, line: 690, column: 17)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !11, line: 688, column: 22)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !11, line: 688, column: 19)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !11, line: 687, column: 20)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !11, line: 685, column: 17)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !11, line: 684, column: 18)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !11, line: 682, column: 15)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !11, line: 681, column: 16)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !11, line: 679, column: 13)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !11, line: 678, column: 14)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !11, line: 676, column: 11)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !11, line: 675, column: 12)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !11, line: 673, column: 9)
!1366 = distinct !DILexicalBlock(scope: !1348, file: !11, line: 647, column: 20)
!1367 = !DILocation(line: 922, column: 39, scope: !46, inlinedAt: !1351)
!1368 = !DILocation(line: 293, column: 24, scope: !27, inlinedAt: !1352)
!1369 = !DILocation(line: 293, column: 43, scope: !27, inlinedAt: !1352)
!1370 = !DILocation(line: 442, column: 31, scope: !30, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 711, column: 26, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1354, file: !11, line: 710, column: 17)
!1373 = !DILocation(line: 442, column: 50, scope: !30, inlinedAt: !1371)
!1374 = !DILocation(line: 443, column: 7, scope: !30, inlinedAt: !1371)
!1375 = !DILocation(line: 444, column: 7, scope: !30, inlinedAt: !1371)
!1376 = !DILocation(line: 445, column: 7, scope: !30, inlinedAt: !1371)
!1377 = !DILocation(line: 446, column: 7, scope: !30, inlinedAt: !1371)
!1378 = !DILocation(line: 447, column: 7, scope: !30, inlinedAt: !1371)
!1379 = !DILocation(line: 448, column: 7, scope: !30, inlinedAt: !1371)
!1380 = !DILocation(line: 460, column: 25, scope: !31, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 727, column: 7, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !11, line: 726, column: 7)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !11, line: 725, column: 27)
!1384 = distinct !DILexicalBlock(scope: !1366, file: !11, line: 725, column: 9)
!1385 = !DILocation(line: 647, column: 7, scope: !1328)
!1386 = !DILocation(line: 648, column: 9, scope: !1366)
!1387 = !DILocation(line: 648, column: 7, scope: !1366)
!1388 = !DILocation(line: 649, column: 15, scope: !1366)
!1389 = !DILocation(line: 650, column: 22, scope: !1366)
!1390 = !DILocation(line: 650, column: 20, scope: !1366)
!1391 = !DILocation(line: 651, column: 25, scope: !1366)
!1392 = !DILocation(line: 651, column: 23, scope: !1366)
!1393 = !DILocation(line: 652, column: 22, scope: !1366)
!1394 = !DILocation(line: 652, column: 20, scope: !1366)
!1395 = !DILocation(line: 653, column: 16, scope: !1366)
!1396 = !DILocation(line: 653, column: 14, scope: !1366)
!1397 = !DILocation(line: 654, column: 14, scope: !1366)
!1398 = !DILocation(line: 654, column: 12, scope: !1366)
!1399 = !DILocation(line: 655, column: 28, scope: !1366)
!1400 = !DILocation(line: 656, column: 14, scope: !1366)
!1401 = !DILocation(line: 657, column: 9, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1366, file: !11, line: 657, column: 9)
!1403 = !DILocation(line: 657, column: 20, scope: !1402)
!1404 = !DILocation(line: 657, column: 9, scope: !1366)
!1405 = !DILocation(line: 658, column: 30, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1402, file: !11, line: 657, column: 26)
!1407 = !DILocation(line: 659, column: 16, scope: !1406)
!1408 = !DILocation(line: 660, column: 5, scope: !1406)
!1409 = !DILocation(line: 622, column: 7, scope: !1270, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 664, column: 5, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1366, file: !11, line: 661, column: 5)
!1412 = !DILocation(line: 622, column: 5, scope: !1270, inlinedAt: !1410)
!1413 = !DILocation(line: 623, column: 13, scope: !1270, inlinedAt: !1410)
!1414 = !DILocation(line: 624, column: 20, scope: !1270, inlinedAt: !1410)
!1415 = !DILocation(line: 624, column: 18, scope: !1270, inlinedAt: !1410)
!1416 = !DILocation(line: 625, column: 23, scope: !1270, inlinedAt: !1410)
!1417 = !DILocation(line: 625, column: 21, scope: !1270, inlinedAt: !1410)
!1418 = !DILocation(line: 626, column: 20, scope: !1270, inlinedAt: !1410)
!1419 = !DILocation(line: 626, column: 18, scope: !1270, inlinedAt: !1410)
!1420 = !DILocation(line: 627, column: 14, scope: !1270, inlinedAt: !1410)
!1421 = !DILocation(line: 627, column: 12, scope: !1270, inlinedAt: !1410)
!1422 = !DILocation(line: 628, column: 12, scope: !1270, inlinedAt: !1410)
!1423 = !DILocation(line: 628, column: 10, scope: !1270, inlinedAt: !1410)
!1424 = !DILocation(line: 666, column: 9, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !11, line: 666, column: 9)
!1426 = distinct !DILexicalBlock(scope: !1366, file: !11, line: 666, column: 5)
!1427 = !DILocation(line: 666, column: 16, scope: !1425)
!1428 = !DILocation(line: 666, column: 9, scope: !1426)
!1429 = !DILocation(line: 667, column: 7, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1425, file: !11, line: 666, column: 21)
!1431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_1", scope: !1366, file: !11, line: 671, type: !15)
!1432 = !DILocation(line: 671, column: 9, scope: !1366)
!1433 = !DILocation(line: 672, column: 17, scope: !1366)
!1434 = !DILocation(line: 672, column: 15, scope: !1366)
!1435 = !DILocation(line: 673, column: 9, scope: !1365)
!1436 = !DILocation(line: 673, column: 19, scope: !1365)
!1437 = !DILocation(line: 673, column: 9, scope: !1366)
!1438 = !DILocation(line: 674, column: 7, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1365, file: !11, line: 673, column: 25)
!1440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_2", scope: !1364, file: !11, line: 674, type: !15)
!1441 = !DILocation(line: 674, column: 11, scope: !1364)
!1442 = !DILocation(line: 675, column: 19, scope: !1364)
!1443 = !DILocation(line: 675, column: 17, scope: !1364)
!1444 = !DILocation(line: 676, column: 11, scope: !1363)
!1445 = !DILocation(line: 676, column: 21, scope: !1363)
!1446 = !DILocation(line: 676, column: 11, scope: !1364)
!1447 = !DILocation(line: 677, column: 9, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1363, file: !11, line: 676, column: 27)
!1449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_3", scope: !1362, file: !11, line: 677, type: !15)
!1450 = !DILocation(line: 677, column: 13, scope: !1362)
!1451 = !DILocation(line: 678, column: 21, scope: !1362)
!1452 = !DILocation(line: 678, column: 19, scope: !1362)
!1453 = !DILocation(line: 679, column: 13, scope: !1361)
!1454 = !DILocation(line: 679, column: 23, scope: !1361)
!1455 = !DILocation(line: 679, column: 13, scope: !1362)
!1456 = !DILocation(line: 680, column: 11, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1361, file: !11, line: 679, column: 29)
!1458 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_4", scope: !1360, file: !11, line: 680, type: !15)
!1459 = !DILocation(line: 680, column: 8, scope: !1360)
!1460 = !DILocation(line: 681, column: 16, scope: !1360)
!1461 = !DILocation(line: 681, column: 14, scope: !1360)
!1462 = !DILocation(line: 682, column: 15, scope: !1359)
!1463 = !DILocation(line: 682, column: 25, scope: !1359)
!1464 = !DILocation(line: 682, column: 15, scope: !1360)
!1465 = !DILocation(line: 683, column: 13, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1359, file: !11, line: 682, column: 31)
!1467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_5", scope: !1358, file: !11, line: 683, type: !15)
!1468 = !DILocation(line: 683, column: 10, scope: !1358)
!1469 = !DILocation(line: 684, column: 18, scope: !1358)
!1470 = !DILocation(line: 684, column: 16, scope: !1358)
!1471 = !DILocation(line: 685, column: 17, scope: !1357)
!1472 = !DILocation(line: 685, column: 27, scope: !1357)
!1473 = !DILocation(line: 685, column: 17, scope: !1358)
!1474 = !DILocation(line: 686, column: 15, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1357, file: !11, line: 685, column: 34)
!1476 = !DILocation(line: 688, column: 15, scope: !1356)
!1477 = !DILocation(line: 688, column: 19, scope: !1356)
!1478 = !DILocation(line: 688, column: 22, scope: !1355)
!1479 = !DILocation(line: 691, column: 41, scope: !1353)
!1480 = !DILocation(line: 691, column: 49, scope: !1353)
!1481 = !DILocation(line: 691, column: 26, scope: !1353)
!1482 = !DILocation(line: 298, column: 12, scope: !519, inlinedAt: !1352)
!1483 = !DILocation(line: 299, column: 22, scope: !519, inlinedAt: !1352)
!1484 = !DILocation(line: 299, column: 3, scope: !519, inlinedAt: !1352)
!1485 = !DILocation(line: 926, column: 7, scope: !242, inlinedAt: !1351)
!1486 = !DILocation(line: 926, column: 12, scope: !242, inlinedAt: !1351)
!1487 = !DILocation(line: 926, column: 9, scope: !242, inlinedAt: !1351)
!1488 = !DILocation(line: 926, column: 7, scope: !243, inlinedAt: !1351)
!1489 = !DILocation(line: 34, column: 10, scope: !79, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 930, column: 5, scope: !250, inlinedAt: !1351)
!1491 = !DILocation(line: 927, column: 9, scope: !253, inlinedAt: !1351)
!1492 = !DILocation(line: 927, column: 7, scope: !253, inlinedAt: !1351)
!1493 = !DILocation(line: 933, column: 3, scope: !243, inlinedAt: !1351)
!1494 = !DILocation(line: 301, column: 3, scope: !520, inlinedAt: !1352)
!1495 = !DILocation(line: 691, column: 24, scope: !1353)
!1496 = !DILocation(line: 693, column: 17, scope: !1354)
!1497 = !DILocation(line: 696, column: 48, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1354, file: !11, line: 695, column: 17)
!1499 = !DILocation(line: 696, column: 56, scope: !1498)
!1500 = !DILocation(line: 696, column: 26, scope: !1498)
!1501 = !DILocation(line: 696, column: 24, scope: !1498)
!1502 = !DILocation(line: 698, column: 17, scope: !1354)
!1503 = !DILocation(line: 701, column: 46, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1354, file: !11, line: 700, column: 17)
!1505 = !DILocation(line: 701, column: 54, scope: !1504)
!1506 = !DILocation(line: 701, column: 26, scope: !1504)
!1507 = !DILocation(line: 701, column: 24, scope: !1504)
!1508 = !DILocation(line: 703, column: 17, scope: !1354)
!1509 = !DILocation(line: 706, column: 48, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1354, file: !11, line: 705, column: 17)
!1511 = !DILocation(line: 706, column: 56, scope: !1510)
!1512 = !DILocation(line: 706, column: 26, scope: !1510)
!1513 = !DILocation(line: 706, column: 24, scope: !1510)
!1514 = !DILocation(line: 708, column: 17, scope: !1354)
!1515 = !DILocation(line: 711, column: 48, scope: !1372)
!1516 = !DILocation(line: 711, column: 56, scope: !1372)
!1517 = !DILocation(line: 711, column: 26, scope: !1372)
!1518 = !DILocation(line: 443, column: 39, scope: !30, inlinedAt: !1371)
!1519 = !DILocation(line: 444, column: 30, scope: !30, inlinedAt: !1371)
!1520 = !DILocation(line: 445, column: 50, scope: !30, inlinedAt: !1371)
!1521 = !DILocation(line: 446, column: 45, scope: !30, inlinedAt: !1371)
!1522 = !DILocation(line: 452, column: 21, scope: !832, inlinedAt: !1371)
!1523 = !DILocation(line: 452, column: 19, scope: !832, inlinedAt: !1371)
!1524 = !DILocation(line: 453, column: 24, scope: !832, inlinedAt: !1371)
!1525 = !DILocation(line: 454, column: 44, scope: !832, inlinedAt: !1371)
!1526 = !DILocation(line: 455, column: 23, scope: !832, inlinedAt: !1371)
!1527 = !DILocation(line: 455, column: 60, scope: !832, inlinedAt: !1371)
!1528 = !DILocation(line: 455, column: 9, scope: !832, inlinedAt: !1371)
!1529 = !DILocation(line: 455, column: 7, scope: !832, inlinedAt: !1371)
!1530 = !DILocation(line: 457, column: 11, scope: !833, inlinedAt: !1371)
!1531 = !DILocation(line: 457, column: 3, scope: !833, inlinedAt: !1371)
!1532 = !DILocation(line: 711, column: 24, scope: !1372)
!1533 = !DILocation(line: 713, column: 17, scope: !1354)
!1534 = !DILocation(line: 715, column: 17, scope: !1354)
!1535 = !DILocation(line: 716, column: 22, scope: !1355)
!1536 = !DILocation(line: 725, column: 9, scope: !1384)
!1537 = !DILocation(line: 725, column: 9, scope: !1366)
!1538 = !DILocation(line: 727, column: 22, scope: !1382)
!1539 = !DILocation(line: 727, column: 7, scope: !1382)
!1540 = !DILocation(line: 464, column: 3, scope: !846, inlinedAt: !1381)
!1541 = !DILocation(line: 729, column: 5, scope: !1383)
!1542 = !DILocation(line: 730, column: 3, scope: !1366)
!1543 = !DILocation(line: 735, column: 7, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1328, file: !11, line: 735, column: 7)
!1545 = !DILocation(line: 735, column: 14, scope: !1544)
!1546 = !DILocation(line: 735, column: 7, scope: !1328)
!1547 = !DILocation(line: 736, column: 9, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !11, line: 736, column: 9)
!1549 = distinct !DILexicalBlock(scope: !1544, file: !11, line: 735, column: 20)
!1550 = !DILocation(line: 736, column: 14, scope: !1548)
!1551 = !DILocation(line: 736, column: 11, scope: !1548)
!1552 = !DILocation(line: 736, column: 9, scope: !1549)
!1553 = !DILocation(line: 737, column: 11, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1548, file: !11, line: 736, column: 18)
!1555 = !DILocation(line: 737, column: 9, scope: !1554)
!1556 = !DILocation(line: 738, column: 5, scope: !1554)
!1557 = !DILocation(line: 739, column: 7, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1548, file: !11, line: 738, column: 12)
!1559 = !DILocation(line: 741, column: 3, scope: !1549)
!1560 = !DILocation(line: 741, column: 10, scope: !1544)
!1561 = !DILocation(line: 743, column: 9, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !11, line: 743, column: 9)
!1563 = distinct !DILexicalBlock(scope: !1544, file: !11, line: 741, column: 10)
!1564 = !DILocation(line: 743, column: 16, scope: !1562)
!1565 = !DILocation(line: 743, column: 9, scope: !1563)
!1566 = !DILocation(line: 744, column: 11, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !11, line: 744, column: 11)
!1568 = distinct !DILexicalBlock(scope: !1562, file: !11, line: 743, column: 22)
!1569 = !DILocation(line: 744, column: 16, scope: !1567)
!1570 = !DILocation(line: 744, column: 13, scope: !1567)
!1571 = !DILocation(line: 744, column: 11, scope: !1568)
!1572 = !DILocation(line: 745, column: 13, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1567, file: !11, line: 744, column: 22)
!1574 = !DILocation(line: 745, column: 11, scope: !1573)
!1575 = !DILocation(line: 746, column: 7, scope: !1573)
!1576 = !DILocation(line: 747, column: 9, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1567, file: !11, line: 746, column: 14)
!1578 = !DILocation(line: 749, column: 5, scope: !1568)
!1579 = !DILocation(line: 749, column: 12, scope: !1562)
!1580 = !DILocation(line: 751, column: 11, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !11, line: 751, column: 11)
!1582 = distinct !DILexicalBlock(scope: !1562, file: !11, line: 749, column: 12)
!1583 = !DILocation(line: 751, column: 16, scope: !1581)
!1584 = !DILocation(line: 751, column: 13, scope: !1581)
!1585 = !DILocation(line: 751, column: 11, scope: !1582)
!1586 = !DILocation(line: 754, column: 13, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !11, line: 754, column: 13)
!1588 = distinct !DILexicalBlock(scope: !1581, file: !11, line: 751, column: 26)
!1589 = !DILocation(line: 754, column: 20, scope: !1587)
!1590 = !DILocation(line: 754, column: 13, scope: !1588)
!1591 = !DILocation(line: 757, column: 15, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !11, line: 757, column: 15)
!1593 = distinct !DILexicalBlock(scope: !1587, file: !11, line: 754, column: 27)
!1594 = !DILocation(line: 757, column: 20, scope: !1592)
!1595 = !DILocation(line: 757, column: 17, scope: !1592)
!1596 = !DILocation(line: 757, column: 15, scope: !1593)
!1597 = !DILocation(line: 758, column: 17, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !11, line: 758, column: 17)
!1599 = distinct !DILexicalBlock(scope: !1592, file: !11, line: 757, column: 27)
!1600 = !DILocation(line: 758, column: 22, scope: !1598)
!1601 = !DILocation(line: 758, column: 19, scope: !1598)
!1602 = !DILocation(line: 758, column: 17, scope: !1599)
!1603 = !DILocation(line: 759, column: 19, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !11, line: 759, column: 19)
!1605 = distinct !DILexicalBlock(scope: !1598, file: !11, line: 758, column: 27)
!1606 = !DILocation(line: 759, column: 24, scope: !1604)
!1607 = !DILocation(line: 759, column: 21, scope: !1604)
!1608 = !DILocation(line: 759, column: 19, scope: !1605)
!1609 = !DILocation(line: 34, column: 10, scope: !79, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 761, column: 17, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !11, line: 760, column: 17)
!1612 = distinct !DILexicalBlock(scope: !1604, file: !11, line: 759, column: 28)
!1613 = !DILocation(line: 763, column: 15, scope: !1612)
!1614 = !DILocation(line: 764, column: 17, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1604, file: !11, line: 763, column: 22)
!1616 = !DILocation(line: 766, column: 13, scope: !1605)
!1617 = !DILocation(line: 767, column: 15, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1598, file: !11, line: 766, column: 20)
!1619 = !DILocation(line: 769, column: 11, scope: !1599)
!1620 = !DILocation(line: 769, column: 18, scope: !1592)
!1621 = !DILocation(line: 771, column: 17, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !11, line: 771, column: 17)
!1623 = distinct !DILexicalBlock(scope: !1592, file: !11, line: 769, column: 18)
!1624 = !DILocation(line: 771, column: 24, scope: !1622)
!1625 = !DILocation(line: 771, column: 17, scope: !1623)
!1626 = !DILocation(line: 772, column: 19, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !11, line: 772, column: 19)
!1628 = distinct !DILexicalBlock(scope: !1622, file: !11, line: 771, column: 30)
!1629 = !DILocation(line: 772, column: 26, scope: !1627)
!1630 = !DILocation(line: 772, column: 19, scope: !1628)
!1631 = !DILocation(line: 34, column: 10, scope: !79, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 774, column: 17, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !11, line: 773, column: 17)
!1634 = distinct !DILexicalBlock(scope: !1627, file: !11, line: 772, column: 34)
!1635 = !DILocation(line: 776, column: 15, scope: !1634)
!1636 = !DILocation(line: 777, column: 13, scope: !1628)
!1637 = !DILocation(line: 780, column: 19, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !11, line: 780, column: 19)
!1639 = distinct !DILexicalBlock(scope: !1622, file: !11, line: 777, column: 20)
!1640 = !DILocation(line: 780, column: 24, scope: !1638)
!1641 = !DILocation(line: 780, column: 21, scope: !1638)
!1642 = !DILocation(line: 780, column: 19, scope: !1639)
!1643 = !DILocation(line: 781, column: 21, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !11, line: 781, column: 21)
!1645 = distinct !DILexicalBlock(scope: !1638, file: !11, line: 780, column: 28)
!1646 = !DILocation(line: 781, column: 28, scope: !1644)
!1647 = !DILocation(line: 781, column: 21, scope: !1645)
!1648 = !DILocation(line: 34, column: 10, scope: !79, inlinedAt: !1649)
!1649 = distinct !DILocation(line: 783, column: 19, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !11, line: 782, column: 19)
!1651 = distinct !DILexicalBlock(scope: !1644, file: !11, line: 781, column: 36)
!1652 = !DILocation(line: 785, column: 17, scope: !1651)
!1653 = !DILocation(line: 786, column: 15, scope: !1645)
!1654 = !DILocation(line: 789, column: 21, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !11, line: 789, column: 21)
!1656 = distinct !DILexicalBlock(scope: !1638, file: !11, line: 786, column: 22)
!1657 = !DILocation(line: 789, column: 31, scope: !1655)
!1658 = !DILocation(line: 789, column: 28, scope: !1655)
!1659 = !DILocation(line: 789, column: 21, scope: !1656)
!1660 = !DILocation(line: 34, column: 10, scope: !79, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 791, column: 19, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !11, line: 790, column: 19)
!1663 = distinct !DILexicalBlock(scope: !1655, file: !11, line: 789, column: 50)
!1664 = !DILocation(line: 793, column: 17, scope: !1663)
!1665 = !DILocation(line: 797, column: 9, scope: !1593)
!1666 = !DILocation(line: 798, column: 7, scope: !1588)
!1667 = !DILocation(line: 803, column: 11, scope: !1328)
!1668 = !DILocation(line: 803, column: 3, scope: !1328)
!1669 = !DILocation(line: 805, column: 1, scope: !38)
!1670 = !DILocation(line: 806, column: 39, scope: !41)
!1671 = !DILocation(line: 806, column: 59, scope: !41)
!1672 = !DILocation(line: 806, column: 78, scope: !41)
!1673 = !DILocation(line: 807, column: 39, scope: !41)
!1674 = !DILocation(line: 807, column: 63, scope: !41)
!1675 = !DILocation(line: 807, column: 82, scope: !41)
!1676 = !DILocation(line: 808, column: 39, scope: !41)
!1677 = !DILocation(line: 808, column: 69, scope: !41)
!1678 = !DILocation(line: 808, column: 81, scope: !41)
!1679 = !DILocation(line: 810, column: 7, scope: !41)
!1680 = !DILocation(line: 810, column: 20, scope: !41)
!1681 = !DILocation(line: 813, column: 13, scope: !955)
!1682 = !DILocation(line: 814, column: 7, scope: !955)
!1683 = !DILocation(line: 815, column: 15, scope: !955)
!1684 = !DILocation(line: 815, column: 13, scope: !955)
!1685 = !DILocation(line: 816, column: 7, scope: !959)
!1686 = !DILocation(line: 816, column: 17, scope: !959)
!1687 = !DILocation(line: 816, column: 7, scope: !955)
!1688 = !DILocation(line: 817, column: 5, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !959, file: !11, line: 816, column: 23)
!1690 = !DILocation(line: 819, column: 5, scope: !1020)
!1691 = !DILocation(line: 819, column: 9, scope: !1020)
!1692 = !DILocation(line: 819, column: 12, scope: !1019)
!1693 = !DILocation(line: 821, column: 15, scope: !1018)
!1694 = !DILocation(line: 821, column: 7, scope: !1018)
!1695 = !DILocation(line: 823, column: 7, scope: !1018)
!1696 = !DILocation(line: 829, column: 1, scope: !41)
!1697 = !DILocation(line: 835, column: 7, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !11, line: 835, column: 7)
!1699 = distinct !DILexicalBlock(scope: !44, file: !11, line: 834, column: 3)
!1700 = !DILocation(line: 835, column: 12, scope: !1698)
!1701 = !DILocation(line: 835, column: 9, scope: !1698)
!1702 = !DILocation(line: 835, column: 7, scope: !1699)
!1703 = !DILocation(line: 836, column: 9, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1698, file: !11, line: 835, column: 16)
!1705 = !DILocation(line: 836, column: 7, scope: !1704)
!1706 = !DILocation(line: 837, column: 3, scope: !1704)
!1707 = !DILocation(line: 34, column: 10, scope: !79, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 839, column: 5, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !11, line: 838, column: 5)
!1710 = distinct !DILexicalBlock(scope: !1698, file: !11, line: 837, column: 10)
!1711 = !DILocation(line: 842, column: 3, scope: !1699)
!1712 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !45, file: !11, line: 845, type: !15)
!1713 = !DILocation(line: 845, column: 23, scope: !45)
!1714 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !45, file: !11, line: 845, type: !15)
!1715 = !DILocation(line: 845, column: 42, scope: !45)
!1716 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "returnVal2", scope: !45, file: !11, line: 847, type: !15)
!1717 = !DILocation(line: 847, column: 7, scope: !45)
!1718 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compRetStatus", scope: !45, file: !11, line: 848, type: !15)
!1719 = !DILocation(line: 848, column: 7, scope: !45)
!1720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lcontext", scope: !45, file: !11, line: 849, type: !15)
!1721 = !DILocation(line: 849, column: 7, scope: !45)
!1722 = !DILocation(line: 849, column: 18, scope: !45)
!1723 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp7", scope: !45, file: !11, line: 850, type: !5)
!1724 = !DILocation(line: 850, column: 17, scope: !45)
!1725 = !DILocation(line: 852, column: 7, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !11, line: 852, column: 7)
!1727 = distinct !DILexicalBlock(scope: !45, file: !11, line: 852, column: 3)
!1728 = !DILocation(line: 936, column: 20, scope: !47, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 145, column: 3, scope: !184, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 855, column: 23, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !11, line: 854, column: 7)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !11, line: 853, column: 23)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !11, line: 853, column: 9)
!1734 = distinct !DILexicalBlock(scope: !1726, file: !11, line: 852, column: 23)
!1735 = !DILocation(line: 936, column: 32, scope: !47, inlinedAt: !1729)
!1736 = !DILocation(line: 936, column: 48, scope: !47, inlinedAt: !1729)
!1737 = !DILocation(line: 937, column: 7, scope: !47, inlinedAt: !1729)
!1738 = !DILocation(line: 139, column: 31, scope: !19, inlinedAt: !1730)
!1739 = !DILocation(line: 139, column: 50, scope: !19, inlinedAt: !1730)
!1740 = !DILocation(line: 139, column: 60, scope: !19, inlinedAt: !1730)
!1741 = !DILocation(line: 140, column: 7, scope: !19, inlinedAt: !1730)
!1742 = !DILocation(line: 852, column: 7, scope: !1727)
!1743 = !DILocation(line: 853, column: 9, scope: !1733)
!1744 = !DILocation(line: 853, column: 17, scope: !1733)
!1745 = !DILocation(line: 853, column: 9, scope: !1734)
!1746 = !DILocation(line: 855, column: 45, scope: !1731)
!1747 = !DILocation(line: 855, column: 59, scope: !1731)
!1748 = !DILocation(line: 855, column: 64, scope: !1731)
!1749 = !DILocation(line: 855, column: 23, scope: !1731)
!1750 = !DILocation(line: 144, column: 11, scope: !184, inlinedAt: !1730)
!1751 = !DILocation(line: 144, column: 9, scope: !184, inlinedAt: !1730)
!1752 = !DILocation(line: 145, column: 14, scope: !184, inlinedAt: !1730)
!1753 = !DILocation(line: 145, column: 3, scope: !184, inlinedAt: !1730)
!1754 = !DILocation(line: 937, column: 11, scope: !47, inlinedAt: !1729)
!1755 = !DILocation(line: 940, column: 18, scope: !193, inlinedAt: !1729)
!1756 = !DILocation(line: 941, column: 11, scope: !193, inlinedAt: !1729)
!1757 = !DILocation(line: 941, column: 3, scope: !193, inlinedAt: !1729)
!1758 = !DILocation(line: 147, column: 3, scope: !185, inlinedAt: !1730)
!1759 = !DILocation(line: 855, column: 21, scope: !1731)
!1760 = !DILocation(line: 857, column: 5, scope: !1732)
!1761 = !DILocation(line: 859, column: 44, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !11, line: 858, column: 7)
!1763 = distinct !DILexicalBlock(scope: !1733, file: !11, line: 857, column: 12)
!1764 = !DILocation(line: 859, column: 58, scope: !1762)
!1765 = !DILocation(line: 859, column: 63, scope: !1762)
!1766 = !DILocation(line: 859, column: 23, scope: !1762)
!1767 = !DILocation(line: 859, column: 21, scope: !1762)
!1768 = !DILocation(line: 862, column: 34, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1734, file: !11, line: 862, column: 5)
!1770 = !DILocation(line: 862, column: 18, scope: !1769)
!1771 = !DILocation(line: 862, column: 16, scope: !1769)
!1772 = !DILocation(line: 862, column: 9, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1769, file: !11, line: 862, column: 9)
!1774 = !DILocation(line: 862, column: 20, scope: !1773)
!1775 = !DILocation(line: 862, column: 9, scope: !1769)
!1776 = !DILocation(line: 835, column: 7, scope: !1698, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 864, column: 7, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !11, line: 863, column: 7)
!1779 = distinct !DILexicalBlock(scope: !1773, file: !11, line: 862, column: 36)
!1780 = !DILocation(line: 835, column: 12, scope: !1698, inlinedAt: !1777)
!1781 = !DILocation(line: 835, column: 9, scope: !1698, inlinedAt: !1777)
!1782 = !DILocation(line: 835, column: 7, scope: !1699, inlinedAt: !1777)
!1783 = !DILocation(line: 34, column: 10, scope: !79, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 839, column: 5, scope: !1709, inlinedAt: !1777)
!1785 = !DILocation(line: 836, column: 9, scope: !1704, inlinedAt: !1777)
!1786 = !DILocation(line: 836, column: 7, scope: !1704, inlinedAt: !1777)
!1787 = !DILocation(line: 866, column: 5, scope: !1779)
!1788 = !DILocation(line: 868, column: 3, scope: !1734)
!1789 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_8", scope: !1727, file: !11, line: 872, type: !15)
!1790 = !DILocation(line: 872, column: 7, scope: !1727)
!1791 = !DILocation(line: 873, column: 15, scope: !1727)
!1792 = !DILocation(line: 873, column: 13, scope: !1727)
!1793 = !DILocation(line: 874, column: 7, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1727, file: !11, line: 874, column: 7)
!1795 = !DILocation(line: 874, column: 17, scope: !1794)
!1796 = !DILocation(line: 874, column: 7, scope: !1727)
!1797 = !DILocation(line: 875, column: 5, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1794, file: !11, line: 874, column: 23)
!1799 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_9", scope: !1800, file: !11, line: 875, type: !15)
!1800 = distinct !DILexicalBlock(scope: !1794, file: !11, line: 876, column: 10)
!1801 = !DILocation(line: 875, column: 7, scope: !1800)
!1802 = !DILocation(line: 876, column: 15, scope: !1800)
!1803 = !DILocation(line: 876, column: 13, scope: !1800)
!1804 = !DILocation(line: 877, column: 9, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1800, file: !11, line: 877, column: 9)
!1806 = !DILocation(line: 877, column: 19, scope: !1805)
!1807 = !DILocation(line: 877, column: 9, scope: !1800)
!1808 = !DILocation(line: 878, column: 7, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1805, file: !11, line: 877, column: 25)
!1810 = !DILocation(line: 880, column: 7, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1805, file: !11, line: 879, column: 12)
!1812 = !DILocation(line: 880, column: 11, scope: !1811)
!1813 = !DILocation(line: 880, column: 14, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1811, file: !11, line: 880, column: 11)
!1815 = !DILocation(line: 882, column: 20, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1814, file: !11, line: 880, column: 14)
!1817 = !DILocation(line: 883, column: 9, scope: !1816)
!1818 = !DILocation(line: 885, column: 20, scope: !1816)
!1819 = !DILocation(line: 886, column: 9, scope: !1816)
!1820 = !DILocation(line: 888, column: 20, scope: !1816)
!1821 = !DILocation(line: 889, column: 9, scope: !1816)
!1822 = !DILocation(line: 890, column: 14, scope: !1814)
!1823 = !DILocation(line: 896, column: 7, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1727, file: !11, line: 896, column: 7)
!1825 = !DILocation(line: 896, column: 12, scope: !1824)
!1826 = !DILocation(line: 896, column: 9, scope: !1824)
!1827 = !DILocation(line: 896, column: 7, scope: !1727)
!1828 = !DILocation(line: 897, column: 9, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1824, file: !11, line: 896, column: 16)
!1830 = !DILocation(line: 897, column: 7, scope: !1829)
!1831 = !DILocation(line: 898, column: 25, scope: !1829)
!1832 = !DILocation(line: 898, column: 23, scope: !1829)
!1833 = !DILocation(line: 899, column: 3, scope: !1829)
!1834 = !DILocation(line: 900, column: 9, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !11, line: 900, column: 9)
!1836 = distinct !DILexicalBlock(scope: !1824, file: !11, line: 899, column: 10)
!1837 = !DILocation(line: 900, column: 14, scope: !1835)
!1838 = !DILocation(line: 900, column: 11, scope: !1835)
!1839 = !DILocation(line: 900, column: 9, scope: !1836)
!1840 = !DILocation(line: 901, column: 11, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !11, line: 901, column: 11)
!1842 = distinct !DILexicalBlock(scope: !1835, file: !11, line: 900, column: 20)
!1843 = !DILocation(line: 901, column: 22, scope: !1841)
!1844 = !DILocation(line: 901, column: 11, scope: !1842)
!1845 = !DILocation(line: 902, column: 13, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1841, file: !11, line: 901, column: 30)
!1847 = !DILocation(line: 902, column: 11, scope: !1846)
!1848 = !DILocation(line: 903, column: 29, scope: !1846)
!1849 = !DILocation(line: 903, column: 27, scope: !1846)
!1850 = !DILocation(line: 904, column: 7, scope: !1846)
!1851 = !DILocation(line: 905, column: 13, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1841, file: !11, line: 904, column: 14)
!1853 = !DILocation(line: 905, column: 11, scope: !1852)
!1854 = !DILocation(line: 906, column: 29, scope: !1852)
!1855 = !DILocation(line: 906, column: 27, scope: !1852)
!1856 = !DILocation(line: 908, column: 5, scope: !1842)
!1857 = !DILocation(line: 909, column: 11, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !11, line: 909, column: 11)
!1859 = distinct !DILexicalBlock(scope: !1835, file: !11, line: 908, column: 12)
!1860 = !DILocation(line: 909, column: 16, scope: !1858)
!1861 = !DILocation(line: 909, column: 13, scope: !1858)
!1862 = !DILocation(line: 909, column: 11, scope: !1859)
!1863 = !DILocation(line: 910, column: 13, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1858, file: !11, line: 909, column: 23)
!1865 = !DILocation(line: 910, column: 11, scope: !1864)
!1866 = !DILocation(line: 911, column: 29, scope: !1864)
!1867 = !DILocation(line: 911, column: 27, scope: !1864)
!1868 = !DILocation(line: 912, column: 7, scope: !1864)
!1869 = !DILocation(line: 34, column: 10, scope: !79, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 914, column: 9, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !11, line: 913, column: 9)
!1872 = distinct !DILexicalBlock(scope: !1858, file: !11, line: 912, column: 14)
!1873 = !DILocation(line: 919, column: 11, scope: !1727)
!1874 = !DILocation(line: 919, column: 3, scope: !1727)
!1875 = !DILocation(line: 936, column: 20, scope: !47)
!1876 = !DILocation(line: 936, column: 32, scope: !47)
!1877 = !DILocation(line: 936, column: 48, scope: !47)
!1878 = !DILocation(line: 937, column: 7, scope: !47)
!1879 = !DILocation(line: 937, column: 11, scope: !47)
!1880 = !DILocation(line: 940, column: 18, scope: !193)
!1881 = !DILocation(line: 941, column: 11, scope: !193)
!1882 = !DILocation(line: 941, column: 3, scope: !193)
!1883 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Object", arg: 1, scope: !48, file: !11, line: 944, type: !15)
!1884 = !DILocation(line: 944, column: 31, scope: !48)
!1885 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitReason", arg: 2, scope: !48, file: !11, line: 944, type: !15)
!1886 = !DILocation(line: 944, column: 44, scope: !48)
!1887 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitMode", arg: 3, scope: !48, file: !11, line: 944, type: !15)
!1888 = !DILocation(line: 944, column: 61, scope: !48)
!1889 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Alertable", arg: 4, scope: !48, file: !11, line: 944, type: !15)
!1890 = !DILocation(line: 944, column: 76, scope: !48)
!1891 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Timeout", arg: 5, scope: !48, file: !11, line: 945, type: !15)
!1892 = !DILocation(line: 945, column: 31, scope: !48)
!1893 = !DILocation(line: 949, column: 7, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !11, line: 949, column: 7)
!1895 = distinct !DILexicalBlock(scope: !48, file: !11, line: 948, column: 3)
!1896 = !DILocation(line: 949, column: 12, scope: !1894)
!1897 = !DILocation(line: 949, column: 9, scope: !1894)
!1898 = !DILocation(line: 949, column: 7, scope: !1895)
!1899 = !DILocation(line: 950, column: 9, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !11, line: 950, column: 9)
!1901 = distinct !DILexicalBlock(scope: !1894, file: !11, line: 949, column: 18)
!1902 = !DILocation(line: 950, column: 24, scope: !1900)
!1903 = !DILocation(line: 950, column: 9, scope: !1901)
!1904 = !DILocation(line: 951, column: 11, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1900, file: !11, line: 950, column: 30)
!1906 = !DILocation(line: 951, column: 9, scope: !1905)
!1907 = !DILocation(line: 952, column: 22, scope: !1905)
!1908 = !DILocation(line: 953, column: 5, scope: !1905)
!1909 = !DILocation(line: 954, column: 7, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1900, file: !11, line: 953, column: 12)
!1911 = !DILocation(line: 956, column: 3, scope: !1901)
!1912 = !DILocation(line: 956, column: 10, scope: !1894)
!1913 = !DILocation(line: 958, column: 9, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !11, line: 958, column: 9)
!1915 = distinct !DILexicalBlock(scope: !1894, file: !11, line: 956, column: 10)
!1916 = !DILocation(line: 958, column: 19, scope: !1914)
!1917 = !DILocation(line: 958, column: 9, scope: !1915)
!1918 = !DILocation(line: 959, column: 11, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1914, file: !11, line: 958, column: 25)
!1920 = !DILocation(line: 959, column: 9, scope: !1919)
!1921 = !DILocation(line: 960, column: 17, scope: !1919)
!1922 = !DILocation(line: 961, column: 5, scope: !1919)
!1923 = !DILocation(line: 962, column: 11, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !11, line: 962, column: 11)
!1925 = distinct !DILexicalBlock(scope: !1914, file: !11, line: 961, column: 12)
!1926 = !DILocation(line: 962, column: 16, scope: !1924)
!1927 = !DILocation(line: 962, column: 13, scope: !1924)
!1928 = !DILocation(line: 962, column: 11, scope: !1925)
!1929 = !DILocation(line: 34, column: 10, scope: !79, inlinedAt: !1930)
!1930 = distinct !DILocation(line: 964, column: 9, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !11, line: 963, column: 9)
!1932 = distinct !DILexicalBlock(scope: !1924, file: !11, line: 962, column: 22)
!1933 = !DILocation(line: 966, column: 7, scope: !1932)
!1934 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_10", scope: !1895, file: !11, line: 971, type: !15)
!1935 = !DILocation(line: 971, column: 7, scope: !1895)
!1936 = !DILocation(line: 972, column: 16, scope: !1895)
!1937 = !DILocation(line: 972, column: 14, scope: !1895)
!1938 = !DILocation(line: 973, column: 7, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1895, file: !11, line: 973, column: 7)
!1940 = !DILocation(line: 973, column: 18, scope: !1939)
!1941 = !DILocation(line: 973, column: 7, scope: !1895)
!1942 = !DILocation(line: 974, column: 5, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1939, file: !11, line: 973, column: 24)
!1944 = !DILocation(line: 976, column: 5, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1939, file: !11, line: 975, column: 10)
!1946 = !DILocation(line: 976, column: 9, scope: !1945)
!1947 = !DILocation(line: 976, column: 12, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1945, file: !11, line: 976, column: 9)
!1949 = !DILocation(line: 978, column: 7, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1948, file: !11, line: 976, column: 12)
!1951 = !DILocation(line: 980, column: 7, scope: !1950)
!1952 = !DILocation(line: 986, column: 1, scope: !48)
!1953 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !51, file: !11, line: 988, type: !15)
!1954 = !DILocation(line: 988, column: 22, scope: !51)
!1955 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !51, file: !11, line: 988, type: !15)
!1956 = !DILocation(line: 988, column: 41, scope: !51)
!1957 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compRetStatus", scope: !51, file: !11, line: 990, type: !15)
!1958 = !DILocation(line: 990, column: 7, scope: !51)
!1959 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "returnVal", scope: !51, file: !11, line: 991, type: !15)
!1960 = !DILocation(line: 991, column: 7, scope: !51)
!1961 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lcontext", scope: !51, file: !11, line: 992, type: !15)
!1962 = !DILocation(line: 992, column: 7, scope: !51)
!1963 = !DILocation(line: 992, column: 18, scope: !51)
!1964 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp7", scope: !51, file: !11, line: 993, type: !5)
!1965 = !DILocation(line: 993, column: 17, scope: !51)
!1966 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp8", scope: !51, file: !11, line: 994, type: !4)
!1967 = !DILocation(line: 994, column: 8, scope: !51)
!1968 = !DILocation(line: 995, column: 7, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !11, line: 995, column: 7)
!1970 = distinct !DILexicalBlock(scope: !51, file: !11, line: 996, column: 3)
!1971 = !DILocation(line: 936, column: 20, scope: !47, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 145, column: 3, scope: !184, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 998, column: 23, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !11, line: 997, column: 7)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !11, line: 996, column: 23)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !11, line: 996, column: 9)
!1977 = distinct !DILexicalBlock(scope: !1969, file: !11, line: 995, column: 23)
!1978 = !DILocation(line: 936, column: 32, scope: !47, inlinedAt: !1972)
!1979 = !DILocation(line: 936, column: 48, scope: !47, inlinedAt: !1972)
!1980 = !DILocation(line: 937, column: 7, scope: !47, inlinedAt: !1972)
!1981 = !DILocation(line: 139, column: 31, scope: !19, inlinedAt: !1973)
!1982 = !DILocation(line: 139, column: 50, scope: !19, inlinedAt: !1973)
!1983 = !DILocation(line: 139, column: 60, scope: !19, inlinedAt: !1973)
!1984 = !DILocation(line: 140, column: 7, scope: !19, inlinedAt: !1973)
!1985 = !DILocation(line: 995, column: 7, scope: !1970)
!1986 = !DILocation(line: 996, column: 9, scope: !1976)
!1987 = !DILocation(line: 996, column: 17, scope: !1976)
!1988 = !DILocation(line: 996, column: 9, scope: !1977)
!1989 = !DILocation(line: 998, column: 45, scope: !1974)
!1990 = !DILocation(line: 998, column: 59, scope: !1974)
!1991 = !DILocation(line: 998, column: 64, scope: !1974)
!1992 = !DILocation(line: 998, column: 23, scope: !1974)
!1993 = !DILocation(line: 144, column: 11, scope: !184, inlinedAt: !1973)
!1994 = !DILocation(line: 144, column: 9, scope: !184, inlinedAt: !1973)
!1995 = !DILocation(line: 145, column: 14, scope: !184, inlinedAt: !1973)
!1996 = !DILocation(line: 145, column: 3, scope: !184, inlinedAt: !1973)
!1997 = !DILocation(line: 937, column: 11, scope: !47, inlinedAt: !1972)
!1998 = !DILocation(line: 940, column: 18, scope: !193, inlinedAt: !1972)
!1999 = !DILocation(line: 941, column: 11, scope: !193, inlinedAt: !1972)
!2000 = !DILocation(line: 941, column: 3, scope: !193, inlinedAt: !1972)
!2001 = !DILocation(line: 147, column: 3, scope: !185, inlinedAt: !1973)
!2002 = !DILocation(line: 998, column: 21, scope: !1974)
!2003 = !DILocation(line: 1000, column: 5, scope: !1975)
!2004 = !DILocation(line: 1001, column: 11, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !11, line: 1001, column: 11)
!2006 = distinct !DILexicalBlock(scope: !1976, file: !11, line: 1000, column: 12)
!2007 = !DILocation(line: 1001, column: 19, scope: !2005)
!2008 = !DILocation(line: 1001, column: 11, scope: !2006)
!2009 = !DILocation(line: 1003, column: 46, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !11, line: 1002, column: 9)
!2011 = distinct !DILexicalBlock(scope: !2005, file: !11, line: 1001, column: 25)
!2012 = !DILocation(line: 1003, column: 60, scope: !2010)
!2013 = !DILocation(line: 1003, column: 65, scope: !2010)
!2014 = !DILocation(line: 1003, column: 25, scope: !2010)
!2015 = !DILocation(line: 1003, column: 23, scope: !2010)
!2016 = !DILocation(line: 1005, column: 7, scope: !2011)
!2017 = !DILocation(line: 1009, column: 34, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1977, file: !11, line: 1007, column: 5)
!2019 = !DILocation(line: 1009, column: 18, scope: !2018)
!2020 = !DILocation(line: 1009, column: 16, scope: !2018)
!2021 = !DILocation(line: 1009, column: 9, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2018, file: !11, line: 1009, column: 9)
!2023 = !DILocation(line: 1009, column: 20, scope: !2022)
!2024 = !DILocation(line: 1009, column: 9, scope: !2018)
!2025 = !DILocation(line: 835, column: 7, scope: !1698, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 1011, column: 7, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !11, line: 1010, column: 7)
!2028 = distinct !DILexicalBlock(scope: !2022, file: !11, line: 1009, column: 36)
!2029 = !DILocation(line: 835, column: 12, scope: !1698, inlinedAt: !2026)
!2030 = !DILocation(line: 835, column: 9, scope: !1698, inlinedAt: !2026)
!2031 = !DILocation(line: 835, column: 7, scope: !1699, inlinedAt: !2026)
!2032 = !DILocation(line: 34, column: 10, scope: !79, inlinedAt: !2033)
!2033 = distinct !DILocation(line: 839, column: 5, scope: !1709, inlinedAt: !2026)
!2034 = !DILocation(line: 836, column: 9, scope: !1704, inlinedAt: !2026)
!2035 = !DILocation(line: 836, column: 7, scope: !1704, inlinedAt: !2026)
!2036 = !DILocation(line: 1013, column: 5, scope: !2028)
!2037 = !DILocation(line: 1015, column: 3, scope: !1977)
!2038 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_11", scope: !1970, file: !11, line: 1019, type: !15)
!2039 = !DILocation(line: 1019, column: 7, scope: !1970)
!2040 = !DILocation(line: 1020, column: 16, scope: !1970)
!2041 = !DILocation(line: 1020, column: 14, scope: !1970)
!2042 = !DILocation(line: 1021, column: 7, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !1970, file: !11, line: 1021, column: 7)
!2044 = !DILocation(line: 1021, column: 18, scope: !2043)
!2045 = !DILocation(line: 1021, column: 7, scope: !1970)
!2046 = !DILocation(line: 1022, column: 5, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2043, file: !11, line: 1021, column: 24)
!2048 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_12", scope: !2049, file: !11, line: 1022, type: !15)
!2049 = distinct !DILexicalBlock(scope: !2043, file: !11, line: 1023, column: 10)
!2050 = !DILocation(line: 1022, column: 7, scope: !2049)
!2051 = !DILocation(line: 1023, column: 16, scope: !2049)
!2052 = !DILocation(line: 1023, column: 14, scope: !2049)
!2053 = !DILocation(line: 1024, column: 9, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2049, file: !11, line: 1024, column: 9)
!2055 = !DILocation(line: 1024, column: 20, scope: !2054)
!2056 = !DILocation(line: 1024, column: 9, scope: !2049)
!2057 = !DILocation(line: 1025, column: 7, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2054, file: !11, line: 1024, column: 26)
!2059 = !DILocation(line: 1027, column: 7, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2054, file: !11, line: 1026, column: 12)
!2061 = !DILocation(line: 1027, column: 11, scope: !2060)
!2062 = !DILocation(line: 1027, column: 14, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2060, file: !11, line: 1027, column: 11)
!2064 = !DILocation(line: 1029, column: 19, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2063, file: !11, line: 1027, column: 14)
!2066 = !DILocation(line: 1030, column: 9, scope: !2065)
!2067 = !DILocation(line: 1032, column: 19, scope: !2065)
!2068 = !DILocation(line: 1033, column: 9, scope: !2065)
!2069 = !DILocation(line: 1035, column: 19, scope: !2065)
!2070 = !DILocation(line: 1036, column: 9, scope: !2065)
!2071 = !DILocation(line: 1037, column: 14, scope: !2063)
!2072 = !DILocation(line: 1043, column: 7, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !1970, file: !11, line: 1043, column: 7)
!2074 = !DILocation(line: 1043, column: 12, scope: !2073)
!2075 = !DILocation(line: 1043, column: 9, scope: !2073)
!2076 = !DILocation(line: 1043, column: 7, scope: !1970)
!2077 = !DILocation(line: 1044, column: 9, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2073, file: !11, line: 1043, column: 16)
!2079 = !DILocation(line: 1044, column: 7, scope: !2078)
!2080 = !DILocation(line: 1045, column: 25, scope: !2078)
!2081 = !DILocation(line: 1045, column: 23, scope: !2078)
!2082 = !DILocation(line: 1046, column: 3, scope: !2078)
!2083 = !DILocation(line: 1047, column: 9, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !11, line: 1047, column: 9)
!2085 = distinct !DILexicalBlock(scope: !2073, file: !11, line: 1046, column: 10)
!2086 = !DILocation(line: 1047, column: 14, scope: !2084)
!2087 = !DILocation(line: 1047, column: 11, scope: !2084)
!2088 = !DILocation(line: 1047, column: 9, scope: !2085)
!2089 = !DILocation(line: 1048, column: 27, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !11, line: 1048, column: 7)
!2091 = distinct !DILexicalBlock(scope: !2084, file: !11, line: 1047, column: 20)
!2092 = !DILocation(line: 1048, column: 20, scope: !2090)
!2093 = !DILocation(line: 1048, column: 18, scope: !2090)
!2094 = !DILocation(line: 1048, column: 11, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2090, file: !11, line: 1048, column: 11)
!2096 = !DILocation(line: 1048, column: 22, scope: !2095)
!2097 = !DILocation(line: 1048, column: 11, scope: !2090)
!2098 = !DILocation(line: 1049, column: 13, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2095, file: !11, line: 1048, column: 31)
!2100 = !DILocation(line: 1049, column: 11, scope: !2099)
!2101 = !DILocation(line: 1050, column: 29, scope: !2099)
!2102 = !DILocation(line: 1050, column: 27, scope: !2099)
!2103 = !DILocation(line: 1051, column: 7, scope: !2099)
!2104 = !DILocation(line: 1052, column: 13, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2095, file: !11, line: 1051, column: 14)
!2106 = !DILocation(line: 1052, column: 11, scope: !2105)
!2107 = !DILocation(line: 1053, column: 29, scope: !2105)
!2108 = !DILocation(line: 1053, column: 27, scope: !2105)
!2109 = !DILocation(line: 1056, column: 5, scope: !2091)
!2110 = !DILocation(line: 1056, column: 11, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !11, line: 1056, column: 11)
!2112 = distinct !DILexicalBlock(scope: !2084, file: !11, line: 1056, column: 12)
!2113 = !DILocation(line: 1056, column: 16, scope: !2111)
!2114 = !DILocation(line: 1056, column: 13, scope: !2111)
!2115 = !DILocation(line: 1056, column: 11, scope: !2112)
!2116 = !DILocation(line: 1057, column: 13, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2111, file: !11, line: 1056, column: 23)
!2118 = !DILocation(line: 1057, column: 11, scope: !2117)
!2119 = !DILocation(line: 1058, column: 29, scope: !2117)
!2120 = !DILocation(line: 1058, column: 27, scope: !2117)
!2121 = !DILocation(line: 1059, column: 7, scope: !2117)
!2122 = !DILocation(line: 34, column: 10, scope: !79, inlinedAt: !2123)
!2123 = distinct !DILocation(line: 1061, column: 9, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !11, line: 1060, column: 9)
!2125 = distinct !DILexicalBlock(scope: !2111, file: !11, line: 1059, column: 14)
!2126 = !DILocation(line: 1066, column: 11, scope: !1970)
!2127 = !DILocation(line: 1066, column: 3, scope: !1970)
