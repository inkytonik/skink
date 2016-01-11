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
  br label %1, !dbg !76

; <label>:1                                       ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !77
  unreachable, !dbg !77
                                                  ; No predecessors!
  ret void, !dbg !79
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

; Function Attrs: nounwind ssp uwtable
define void @_BLAST_init() #0 {
  store i32 0, i32* @UNLOADED, align 4, !dbg !80
  store i32 1, i32* @NP, align 4, !dbg !82
  store i32 2, i32* @DC, align 4, !dbg !83
  store i32 3, i32* @SKIP1, align 4, !dbg !84
  store i32 4, i32* @SKIP2, align 4, !dbg !85
  store i32 5, i32* @MPR1, align 4, !dbg !86
  store i32 6, i32* @MPR3, align 4, !dbg !87
  store i32 7, i32* @IPC, align 4, !dbg !88
  %1 = load i32, i32* @UNLOADED, align 4, !dbg !89
  store i32 %1, i32* @s, align 4, !dbg !90
  store i32 0, i32* @pended, align 4, !dbg !91
  store i32 0, i32* @compFptr, align 4, !dbg !92
  store i32 0, i32* @compRegistered, align 4, !dbg !93
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !94
  store i32 0, i32* @setEventCalled, align 4, !dbg !95
  store i32 0, i32* @customIrp, align 4, !dbg !96
  ret void, !dbg !97
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
  call void @llvm.dbg.declare(metadata i32* %1, metadata !98, metadata !99), !dbg !100
  store i32 %TargetDevice, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !101, metadata !99), !dbg !102
  call void @llvm.dbg.declare(metadata i32* %FilterDevice__Flags, metadata !103, metadata !99), !dbg !104
  call void @llvm.dbg.declare(metadata i32* %TargetDevice__Characteristics, metadata !105, metadata !99), !dbg !106
  call void @llvm.dbg.declare(metadata i32* %FilterDevice__Characteristics, metadata !107, metadata !99), !dbg !108
  call void @llvm.dbg.declare(metadata i32* %propFlags, metadata !109, metadata !99), !dbg !110
  ret void, !dbg !111
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !113, metadata !99), !dbg !114
  store i32 %Irp, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !115, metadata !99), !dbg !116
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !117, metadata !99), !dbg !118
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !119
  store i32 %4, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !118
  call void @llvm.dbg.declare(metadata i32* %irpSp__MinorFunction, metadata !120, metadata !99), !dbg !121
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !122
  store i32 %5, i32* %irpSp__MinorFunction, align 4, !dbg !121
  call void @llvm.dbg.declare(metadata i32* %irpSp, metadata !123, metadata !99), !dbg !124
  call void @llvm.dbg.declare(metadata i32* %status, metadata !125, metadata !99), !dbg !126
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !127, metadata !99), !dbg !128
  %6 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !129
  store i32 %6, i32* %irpSp, align 4, !dbg !131
  %7 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !132
  %8 = icmp eq i32 %7, 0, !dbg !134
  br i1 %8, label %9, label %10, !dbg !135

; <label>:9                                       ; preds = %0
  br label %17, !dbg !136

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !138
  %12 = icmp eq i32 %11, 2, !dbg !141
  br i1 %12, label %13, label %14, !dbg !142

; <label>:13                                      ; preds = %10
  br label %21, !dbg !143

; <label>:14                                      ; preds = %10
  br label %25, !dbg !145
                                                  ; No predecessors!
  br i1 false, label %16, label %30, !dbg !147

; <label>:16                                      ; preds = %15
  br label %17, !dbg !148

; <label>:17                                      ; preds = %16, %9
  %18 = load i32, i32* %2, align 4, !dbg !150
  %19 = load i32, i32* %3, align 4, !dbg !153
  %20 = call i32 @DiskPerfStartDevice(i32 %18, i32 %19), !dbg !154
  store i32 %20, i32* %status, align 4, !dbg !155
  br label %31, !dbg !156

; <label>:21                                      ; preds = %13
  %22 = load i32, i32* %2, align 4, !dbg !157
  %23 = load i32, i32* %3, align 4, !dbg !159
  %24 = call i32 @DiskPerfRemoveDevice(i32 %22, i32 %23), !dbg !160
  store i32 %24, i32* %status, align 4, !dbg !161
  br label %31, !dbg !162

; <label>:25                                      ; preds = %14
  %26 = load i32, i32* %2, align 4, !dbg !163
  %27 = load i32, i32* %3, align 4, !dbg !165
  %28 = call i32 @DiskPerfSendToNextDriver(i32 %26, i32 %27), !dbg !166
  store i32 %28, i32* %tmp, align 4, !dbg !167
  %29 = load i32, i32* %tmp, align 4, !dbg !168
  store i32 %29, i32* %1, !dbg !169
  br label %36, !dbg !169

; <label>:30                                      ; preds = %15
  br label %31, !dbg !170

; <label>:31                                      ; preds = %30, %21, %17
  br label %32

; <label>:32                                      ; preds = %31
  br label %33

; <label>:33                                      ; preds = %32
  br label %34

; <label>:34                                      ; preds = %33
  %35 = load i32, i32* %status, align 4, !dbg !171
  store i32 %35, i32* %1, !dbg !172
  br label %36, !dbg !172

; <label>:36                                      ; preds = %34, %25
  %37 = load i32, i32* %1, !dbg !173
  ret i32 %37, !dbg !173
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
  call void @llvm.dbg.declare(metadata i32* %4, metadata !174, metadata !99), !dbg !175
  store i32 %Irp, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !176, metadata !99), !dbg !177
  store i32 %Context, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !178, metadata !99), !dbg !179
  call void @llvm.dbg.declare(metadata i32* %Event, metadata !180, metadata !99), !dbg !181
  %7 = load i32, i32* %6, align 4, !dbg !182
  store i32 %7, i32* %Event, align 4, !dbg !185
  %8 = load i32, i32* %Event, align 4, !dbg !186
  %9 = bitcast i32* %1 to i8*, !dbg !187
  call void @llvm.lifetime.start(i64 4, i8* %9), !dbg !187
  %10 = bitcast i32* %2 to i8*, !dbg !187
  call void @llvm.lifetime.start(i64 4, i8* %10), !dbg !187
  %11 = bitcast i32* %3 to i8*, !dbg !187
  call void @llvm.lifetime.start(i64 4, i8* %11), !dbg !187
  %12 = bitcast i32* %l.i to i8*, !dbg !187
  call void @llvm.lifetime.start(i64 4, i8* %12), !dbg !187
  store i32 %8, i32* %1, align 4, !dbg !187
  store i32 0, i32* %2, align 4, !dbg !187
  store i32 0, i32* %3, align 4, !dbg !187
  %13 = call i32 @__VERIFIER_nondet_int() #4, !dbg !188
  store i32 %13, i32* %l.i, align 4, !dbg !190
  store i32 1, i32* @setEventCalled, align 4, !dbg !191
  %14 = load i32, i32* %l.i, align 4, !dbg !193
  %15 = bitcast i32* %1 to i8*, !dbg !194
  call void @llvm.lifetime.end(i64 4, i8* %15), !dbg !194
  %16 = bitcast i32* %2 to i8*, !dbg !194
  call void @llvm.lifetime.end(i64 4, i8* %16), !dbg !194
  %17 = bitcast i32* %3 to i8*, !dbg !194
  call void @llvm.lifetime.end(i64 4, i8* %17), !dbg !194
  %18 = bitcast i32* %l.i to i8*, !dbg !194
  call void @llvm.lifetime.end(i64 4, i8* %18), !dbg !194
  call void @llvm.dbg.declare(metadata i32* %1, metadata !195, metadata !99), !dbg !196
  call void @llvm.dbg.declare(metadata i32* %2, metadata !197, metadata !99), !dbg !198
  call void @llvm.dbg.declare(metadata i32* %3, metadata !199, metadata !99), !dbg !200
  call void @llvm.dbg.declare(metadata i32* %l.i, metadata !201, metadata !99), !dbg !190
  ret i32 -1073741802, !dbg !202
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !203, metadata !99), !dbg !204
  store i32 %Irp, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !205, metadata !99), !dbg !206
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !207, metadata !99), !dbg !208
  %7 = call i32 @__VERIFIER_nondet_int(), !dbg !209
  store i32 %7, i32* %DeviceObject__DeviceExtension, align 4, !dbg !208
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__TargetDeviceObject, metadata !210, metadata !99), !dbg !211
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !212
  store i32 %8, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !211
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !213, metadata !99), !dbg !214
  call void @llvm.dbg.declare(metadata i32* %deviceExtension, metadata !215, metadata !99), !dbg !216
  call void @llvm.dbg.declare(metadata i32* %status, metadata !217, metadata !99), !dbg !218
  %9 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !219
  store i32 %9, i32* %deviceExtension, align 4, !dbg !222
  %10 = load i32, i32* %5, align 4, !dbg !223
  %11 = load i32, i32* %6, align 4, !dbg !224
  %12 = call i32 @DiskPerfForwardIrpSynchronous(i32 %10, i32 %11), !dbg !225
  store i32 %12, i32* %status, align 4, !dbg !226
  %13 = load i32, i32* %5, align 4, !dbg !227
  %14 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !228
  %15 = bitcast i32* %3 to i8*, !dbg !229
  call void @llvm.lifetime.start(i64 4, i8* %15), !dbg !229
  %16 = bitcast i32* %4 to i8*, !dbg !229
  call void @llvm.lifetime.start(i64 4, i8* %16), !dbg !229
  %17 = bitcast i32* %FilterDevice__Flags.i to i8*, !dbg !229
  call void @llvm.lifetime.start(i64 4, i8* %17), !dbg !229
  %18 = bitcast i32* %TargetDevice__Characteristics.i to i8*, !dbg !229
  call void @llvm.lifetime.start(i64 4, i8* %18), !dbg !229
  %19 = bitcast i32* %FilterDevice__Characteristics.i to i8*, !dbg !229
  call void @llvm.lifetime.start(i64 4, i8* %19), !dbg !229
  %20 = bitcast i32* %propFlags.i to i8*, !dbg !229
  call void @llvm.lifetime.start(i64 4, i8* %20), !dbg !229
  store i32 %13, i32* %3, align 4, !dbg !229
  store i32 %14, i32* %4, align 4, !dbg !229
  %21 = bitcast i32* %3 to i8*, !dbg !230
  call void @llvm.lifetime.end(i64 4, i8* %21), !dbg !230
  %22 = bitcast i32* %4 to i8*, !dbg !230
  call void @llvm.lifetime.end(i64 4, i8* %22), !dbg !230
  %23 = bitcast i32* %FilterDevice__Flags.i to i8*, !dbg !230
  call void @llvm.lifetime.end(i64 4, i8* %23), !dbg !230
  %24 = bitcast i32* %TargetDevice__Characteristics.i to i8*, !dbg !230
  call void @llvm.lifetime.end(i64 4, i8* %24), !dbg !230
  %25 = bitcast i32* %FilterDevice__Characteristics.i to i8*, !dbg !230
  call void @llvm.lifetime.end(i64 4, i8* %25), !dbg !230
  %26 = bitcast i32* %propFlags.i to i8*, !dbg !230
  call void @llvm.lifetime.end(i64 4, i8* %26), !dbg !230
  %27 = load i32, i32* %5, align 4, !dbg !232
  %28 = call i32 @DiskPerfRegisterDevice(i32 %27), !dbg !233
  %29 = load i32, i32* %status, align 4, !dbg !234
  store i32 %29, i32* %Irp__IoStatus__Status, align 4, !dbg !235
  %30 = load i32, i32* %status, align 4, !dbg !236
  store i32 %30, i32* @myStatus, align 4, !dbg !237
  %31 = load i32, i32* %6, align 4, !dbg !238
  %32 = bitcast i32* %1 to i8*, !dbg !239
  call void @llvm.lifetime.start(i64 4, i8* %32), !dbg !239
  %33 = bitcast i32* %2 to i8*, !dbg !239
  call void @llvm.lifetime.start(i64 4, i8* %33), !dbg !239
  store i32 %31, i32* %1, align 4, !dbg !239
  store i32 0, i32* %2, align 4, !dbg !239
  %34 = load i32, i32* @s, align 4, !dbg !240
  %35 = load i32, i32* @NP, align 4, !dbg !244
  %36 = icmp eq i32 %34, %35, !dbg !245
  br i1 %36, label %IofCompleteRequest.exit, label %37, !dbg !246

; <label>:37                                      ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !247
  unreachable, !dbg !247

IofCompleteRequest.exit:                          ; preds = %0
  %38 = load i32, i32* @DC, align 4, !dbg !251
  store i32 %38, i32* @s, align 4, !dbg !253
  %39 = bitcast i32* %1 to i8*, !dbg !254
  call void @llvm.lifetime.end(i64 4, i8* %39), !dbg !254
  %40 = bitcast i32* %2 to i8*, !dbg !254
  call void @llvm.lifetime.end(i64 4, i8* %40), !dbg !254
  %41 = load i32, i32* %status, align 4, !dbg !255
  call void @llvm.dbg.declare(metadata i32* %3, metadata !98, metadata !99), !dbg !256
  call void @llvm.dbg.declare(metadata i32* %4, metadata !101, metadata !99), !dbg !257
  call void @llvm.dbg.declare(metadata i32* %FilterDevice__Flags.i, metadata !103, metadata !99), !dbg !258
  call void @llvm.dbg.declare(metadata i32* %TargetDevice__Characteristics.i, metadata !105, metadata !99), !dbg !259
  call void @llvm.dbg.declare(metadata i32* %FilterDevice__Characteristics.i, metadata !107, metadata !99), !dbg !260
  call void @llvm.dbg.declare(metadata i32* %propFlags.i, metadata !109, metadata !99), !dbg !261
  call void @llvm.dbg.declare(metadata i32* %1, metadata !262, metadata !99), !dbg !263
  call void @llvm.dbg.declare(metadata i32* %2, metadata !264, metadata !99), !dbg !265
  ret i32 %41, !dbg !266
}

; Function Attrs: nounwind ssp uwtable
define void @IofCompleteRequest(i32 %Irp, i32 %PriorityBoost) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %Irp, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !262, metadata !99), !dbg !267
  store i32 %PriorityBoost, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !264, metadata !99), !dbg !268
  %3 = load i32, i32* @s, align 4, !dbg !269
  %4 = load i32, i32* @NP, align 4, !dbg !270
  %5 = icmp eq i32 %3, %4, !dbg !271
  br i1 %5, label %6, label %8, !dbg !272

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* @DC, align 4, !dbg !273
  store i32 %7, i32* @s, align 4, !dbg !274
  br label %9, !dbg !275

; <label>:8                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !276
  unreachable, !dbg !276

errorFn.exit:                                     ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %errorFn.exit, %6
  ret void, !dbg !278
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
  call void @llvm.dbg.declare(metadata i32* %3, metadata !279, metadata !99), !dbg !280
  store i32 %Irp, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !281, metadata !99), !dbg !282
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !283, metadata !99), !dbg !284
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !285
  store i32 %5, i32* %DeviceObject__DeviceExtension, align 4, !dbg !284
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__WmilibContext, metadata !286, metadata !99), !dbg !287
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !288
  store i32 %6, i32* %deviceExtension__WmilibContext, align 4, !dbg !287
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !289, metadata !99), !dbg !290
  call void @llvm.dbg.declare(metadata i32* %status, metadata !291, metadata !99), !dbg !292
  call void @llvm.dbg.declare(metadata i32* %deviceExtension, metadata !293, metadata !99), !dbg !294
  call void @llvm.dbg.declare(metadata i32* %wmilibContext, metadata !295, metadata !99), !dbg !296
  %7 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !297
  store i32 %7, i32* %deviceExtension, align 4, !dbg !300
  %8 = load i32, i32* %deviceExtension__WmilibContext, align 4, !dbg !301
  store i32 %8, i32* %wmilibContext, align 4, !dbg !302
  %9 = load i32, i32* %3, align 4, !dbg !303
  %10 = load i32, i32* %4, align 4, !dbg !304
  %11 = call i32 @DiskPerfForwardIrpSynchronous(i32 %9, i32 %10), !dbg !305
  store i32 %11, i32* %status, align 4, !dbg !306
  %12 = load i32, i32* %status, align 4, !dbg !307
  store i32 %12, i32* %Irp__IoStatus__Status, align 4, !dbg !308
  %13 = load i32, i32* %status, align 4, !dbg !309
  store i32 %13, i32* @myStatus, align 4, !dbg !310
  %14 = load i32, i32* %4, align 4, !dbg !311
  %15 = bitcast i32* %1 to i8*, !dbg !312
  call void @llvm.lifetime.start(i64 4, i8* %15), !dbg !312
  %16 = bitcast i32* %2 to i8*, !dbg !312
  call void @llvm.lifetime.start(i64 4, i8* %16), !dbg !312
  store i32 %14, i32* %1, align 4, !dbg !312
  store i32 0, i32* %2, align 4, !dbg !312
  %17 = load i32, i32* @s, align 4, !dbg !313
  %18 = load i32, i32* @NP, align 4, !dbg !315
  %19 = icmp eq i32 %17, %18, !dbg !316
  br i1 %19, label %IofCompleteRequest.exit, label %20, !dbg !317

; <label>:20                                      ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !318
  unreachable, !dbg !318

IofCompleteRequest.exit:                          ; preds = %0
  %21 = load i32, i32* @DC, align 4, !dbg !320
  store i32 %21, i32* @s, align 4, !dbg !321
  %22 = bitcast i32* %1 to i8*, !dbg !322
  call void @llvm.lifetime.end(i64 4, i8* %22), !dbg !322
  %23 = bitcast i32* %2 to i8*, !dbg !322
  call void @llvm.lifetime.end(i64 4, i8* %23), !dbg !322
  %24 = load i32, i32* %status, align 4, !dbg !323
  call void @llvm.dbg.declare(metadata i32* %1, metadata !262, metadata !99), !dbg !324
  call void @llvm.dbg.declare(metadata i32* %2, metadata !264, metadata !99), !dbg !325
  ret i32 %24, !dbg !326
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
  call void @llvm.dbg.declare(metadata i32* %1, metadata !327, metadata !99), !dbg !328
  store i32 %Irp, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !329, metadata !99), !dbg !330
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !331, metadata !99), !dbg !332
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !333
  store i32 %3, i32* %Irp__CurrentLocation, align 4, !dbg !332
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !334, metadata !99), !dbg !335
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !336
  store i32 %4, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !335
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !337, metadata !99), !dbg !338
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !339
  store i32 %5, i32* %DeviceObject__DeviceExtension, align 4, !dbg !338
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__TargetDeviceObject, metadata !340, metadata !99), !dbg !341
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !342
  store i32 %6, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !341
  call void @llvm.dbg.declare(metadata i32* %deviceExtension, metadata !343, metadata !99), !dbg !344
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !345, metadata !99), !dbg !346
  %7 = load i32, i32* @s, align 4, !dbg !347
  %8 = load i32, i32* @NP, align 4, !dbg !350
  %9 = icmp eq i32 %7, %8, !dbg !351
  br i1 %9, label %10, label %12, !dbg !352

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* @SKIP1, align 4, !dbg !353
  store i32 %11, i32* @s, align 4, !dbg !355
  br label %13, !dbg !356

; <label>:12                                      ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !357
  unreachable, !dbg !357

errorFn.exit:                                     ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %errorFn.exit, %10
  %14 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !361
  %15 = add nsw i32 %14, 1, !dbg !361
  store i32 %15, i32* %Irp__CurrentLocation, align 4, !dbg !361
  %16 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !363
  %17 = add nsw i32 %16, 1, !dbg !363
  store i32 %17, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !363
  %18 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !364
  store i32 %18, i32* %deviceExtension, align 4, !dbg !365
  %19 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !366
  %20 = load i32, i32* %2, align 4, !dbg !367
  %21 = call i32 @IofCallDriver(i32 %19, i32 %20), !dbg !368
  store i32 %21, i32* %tmp, align 4, !dbg !369
  %22 = load i32, i32* %tmp, align 4, !dbg !370
  ret i32 %22, !dbg !371
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
  call void @llvm.dbg.declare(metadata i32* %1, metadata !372, metadata !99), !dbg !373
  store i32 %Irp, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !374, metadata !99), !dbg !375
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !376, metadata !99), !dbg !377
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !378
  store i32 %3, i32* %Irp__CurrentLocation, align 4, !dbg !377
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !379, metadata !99), !dbg !380
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !381
  store i32 %4, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !380
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !382, metadata !99), !dbg !383
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !384
  store i32 %5, i32* %DeviceObject__DeviceExtension, align 4, !dbg !383
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__TargetDeviceObject, metadata !385, metadata !99), !dbg !386
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !387
  store i32 %6, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !386
  call void @llvm.dbg.declare(metadata i32* %deviceExtension, metadata !388, metadata !99), !dbg !389
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !390, metadata !99), !dbg !391
  %7 = load i32, i32* @s, align 4, !dbg !392
  %8 = load i32, i32* @NP, align 4, !dbg !395
  %9 = icmp eq i32 %7, %8, !dbg !396
  br i1 %9, label %10, label %12, !dbg !397

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* @SKIP1, align 4, !dbg !398
  store i32 %11, i32* @s, align 4, !dbg !400
  br label %13, !dbg !401

; <label>:12                                      ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !402
  unreachable, !dbg !402

errorFn.exit:                                     ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %errorFn.exit, %10
  %14 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !406
  %15 = add nsw i32 %14, 1, !dbg !406
  store i32 %15, i32* %Irp__CurrentLocation, align 4, !dbg !406
  %16 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !408
  %17 = add nsw i32 %16, 1, !dbg !408
  store i32 %17, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !408
  %18 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !409
  store i32 %18, i32* %deviceExtension, align 4, !dbg !410
  %19 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !411
  %20 = load i32, i32* %2, align 4, !dbg !412
  %21 = call i32 @PoCallDriver(i32 %19, i32 %20), !dbg !413
  store i32 %21, i32* %tmp, align 4, !dbg !414
  %22 = load i32, i32* %tmp, align 4, !dbg !415
  ret i32 %22, !dbg !416
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
  call void @llvm.dbg.declare(metadata i32* %1, metadata !417, metadata !99), !dbg !418
  store i32 %Irp, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !419, metadata !99), !dbg !420
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !421, metadata !99), !dbg !422
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !423
  store i32 %3, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !422
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !424, metadata !99), !dbg !425
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !426
  store i32 %4, i32* %DeviceObject__DeviceExtension, align 4, !dbg !425
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__TargetDeviceObject, metadata !427, metadata !99), !dbg !428
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !429
  store i32 %5, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !428
  call void @llvm.dbg.declare(metadata i32* %deviceExtension, metadata !430, metadata !99), !dbg !431
  call void @llvm.dbg.declare(metadata i32* %event, metadata !432, metadata !99), !dbg !433
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !434
  store i32 %6, i32* %event, align 4, !dbg !433
  call void @llvm.dbg.declare(metadata i32* %status, metadata !435, metadata !99), !dbg !436
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp__Control, metadata !437, metadata !99), !dbg !438
  call void @llvm.dbg.declare(metadata i32* %irpSp, metadata !439, metadata !99), !dbg !440
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp, metadata !441, metadata !99), !dbg !442
  call void @llvm.dbg.declare(metadata i32* %irpSp__Context, metadata !443, metadata !99), !dbg !444
  call void @llvm.dbg.declare(metadata i32* %irpSp__Control, metadata !445, metadata !99), !dbg !446
  call void @llvm.dbg.declare(metadata i32* %irpSp___0, metadata !447, metadata !99), !dbg !448
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp15, metadata !449, metadata !99), !dbg !450
  %7 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !451
  store i32 %7, i32* %deviceExtension, align 4, !dbg !453
  %8 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !454
  store i32 %8, i32* %irpSp, align 4, !dbg !455
  %9 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !456
  %10 = sub nsw i32 %9, 1, !dbg !457
  store i32 %10, i32* %nextIrpSp, align 4, !dbg !458
  store i32 0, i32* %nextIrpSp__Control, align 4, !dbg !459
  %11 = load i32, i32* @s, align 4, !dbg !460
  %12 = load i32, i32* @NP, align 4, !dbg !462
  %13 = icmp ne i32 %11, %12, !dbg !463
  br i1 %13, label %14, label %15, !dbg !464

; <label>:14                                      ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !465
  unreachable, !dbg !465

errorFn.exit:                                     ; No predecessors!
  br label %21, !dbg !469

; <label>:15                                      ; preds = %0
  %16 = load i32, i32* @compRegistered, align 4, !dbg !470
  %17 = icmp ne i32 %16, 0, !dbg !473
  br i1 %17, label %18, label %19, !dbg !474

; <label>:18                                      ; preds = %15
  call void (...) @__VERIFIER_error() #6, !dbg !475
  unreachable, !dbg !475

errorFn.exit1:                                    ; No predecessors!
  br label %20, !dbg !479

; <label>:19                                      ; preds = %15
  store i32 1, i32* @compRegistered, align 4, !dbg !480
  store i32 0, i32* @routine, align 4, !dbg !482
  br label %20

; <label>:20                                      ; preds = %19, %errorFn.exit1
  br label %21

; <label>:21                                      ; preds = %20, %errorFn.exit
  %22 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !483
  %23 = sub nsw i32 %22, 1, !dbg !485
  store i32 %23, i32* %irpSp___0, align 4, !dbg !486
  %24 = load i32, i32* %event, align 4, !dbg !487
  store i32 %24, i32* %irpSp__Context, align 4, !dbg !488
  store i32 224, i32* %irpSp__Control, align 4, !dbg !489
  %25 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !490
  %26 = load i32, i32* %2, align 4, !dbg !491
  %27 = call i32 @IofCallDriver(i32 %25, i32 %26), !dbg !492
  store i32 %27, i32* %status, align 4, !dbg !493
  %28 = load i32, i32* %status, align 4, !dbg !494
  %29 = sext i32 %28 to i64, !dbg !496
  store i64 %29, i64* %__cil_tmp15, align 8, !dbg !497
  %30 = load i64, i64* %__cil_tmp15, align 8, !dbg !498
  %31 = icmp eq i64 %30, 259, !dbg !500
  br i1 %31, label %32, label %38, !dbg !501

; <label>:32                                      ; preds = %21
  %33 = load i32, i32* %event, align 4, !dbg !502
  %34 = load i32, i32* @Executive, align 4, !dbg !505
  %35 = load i32, i32* @KernelMode, align 4, !dbg !506
  %36 = call i32 @KeWaitForSingleObject(i32 %33, i32 %34, i32 %35, i32 0, i32 0), !dbg !507
  %37 = load i32, i32* @myStatus, align 4, !dbg !508
  store i32 %37, i32* %status, align 4, !dbg !509
  br label %38, !dbg !510

; <label>:38                                      ; preds = %32, %21
  %39 = load i32, i32* %status, align 4, !dbg !511
  ret i32 %39, !dbg !512
}

; Function Attrs: nounwind ssp uwtable
define i32 @DiskPerfCreate(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %DeviceObject, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !513, metadata !99), !dbg !514
  store i32 %Irp, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !515, metadata !99), !dbg !516
  store i32 0, i32* @myStatus, align 4, !dbg !517
  %5 = load i32, i32* %4, align 4, !dbg !520
  %6 = bitcast i32* %1 to i8*, !dbg !521
  call void @llvm.lifetime.start(i64 4, i8* %6), !dbg !521
  %7 = bitcast i32* %2 to i8*, !dbg !521
  call void @llvm.lifetime.start(i64 4, i8* %7), !dbg !521
  store i32 %5, i32* %1, align 4, !dbg !521
  store i32 0, i32* %2, align 4, !dbg !521
  %8 = load i32, i32* @s, align 4, !dbg !522
  %9 = load i32, i32* @NP, align 4, !dbg !524
  %10 = icmp eq i32 %8, %9, !dbg !525
  br i1 %10, label %IofCompleteRequest.exit, label %11, !dbg !526

; <label>:11                                      ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !527
  unreachable, !dbg !527

IofCompleteRequest.exit:                          ; preds = %0
  %12 = load i32, i32* @DC, align 4, !dbg !529
  store i32 %12, i32* @s, align 4, !dbg !530
  %13 = bitcast i32* %1 to i8*, !dbg !531
  call void @llvm.lifetime.end(i64 4, i8* %13), !dbg !531
  %14 = bitcast i32* %2 to i8*, !dbg !531
  call void @llvm.lifetime.end(i64 4, i8* %14), !dbg !531
  call void @llvm.dbg.declare(metadata i32* %1, metadata !262, metadata !99), !dbg !532
  call void @llvm.dbg.declare(metadata i32* %2, metadata !264, metadata !99), !dbg !533
  ret i32 0, !dbg !534
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !535, metadata !99), !dbg !536
  store i32 %Irp, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !537, metadata !99), !dbg !538
  store i32 %Context, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !539, metadata !99), !dbg !540
  call void @llvm.dbg.declare(metadata i32* %irpStack__MajorFunction, metadata !541, metadata !99), !dbg !542
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !543
  store i32 %5, i32* %irpStack__MajorFunction, align 4, !dbg !542
  call void @llvm.dbg.declare(metadata i32* %partitionCounters__BytesRead__QuadPart, metadata !544, metadata !99), !dbg !545
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !546
  store i32 %6, i32* %partitionCounters__BytesRead__QuadPart, align 4, !dbg !545
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !547, metadata !99), !dbg !548
  %7 = call i32 @__VERIFIER_nondet_int(), !dbg !549
  store i32 %7, i32* %Irp__IoStatus__Information, align 4, !dbg !548
  call void @llvm.dbg.declare(metadata i32* %partitionCounters__ReadCount, metadata !550, metadata !99), !dbg !551
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !552
  store i32 %8, i32* %partitionCounters__ReadCount, align 4, !dbg !551
  call void @llvm.dbg.declare(metadata i32* %partitionCounters__ReadTime__QuadPart, metadata !553, metadata !99), !dbg !554
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !555
  store i32 %9, i32* %partitionCounters__ReadTime__QuadPart, align 4, !dbg !554
  call void @llvm.dbg.declare(metadata i32* %difference__QuadPart, metadata !556, metadata !99), !dbg !557
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !558
  store i32 %10, i32* %difference__QuadPart, align 4, !dbg !557
  call void @llvm.dbg.declare(metadata i32* %partitionCounters__BytesWritten__QuadPart, metadata !559, metadata !99), !dbg !560
  %11 = call i32 @__VERIFIER_nondet_int(), !dbg !561
  store i32 %11, i32* %partitionCounters__BytesWritten__QuadPart, align 4, !dbg !560
  call void @llvm.dbg.declare(metadata i32* %partitionCounters__WriteCount, metadata !562, metadata !99), !dbg !563
  %12 = call i32 @__VERIFIER_nondet_int(), !dbg !564
  store i32 %12, i32* %partitionCounters__WriteCount, align 4, !dbg !563
  call void @llvm.dbg.declare(metadata i32* %partitionCounters__WriteTime__QuadPart, metadata !565, metadata !99), !dbg !566
  %13 = call i32 @__VERIFIER_nondet_int(), !dbg !567
  store i32 %13, i32* %partitionCounters__WriteTime__QuadPart, align 4, !dbg !566
  call void @llvm.dbg.declare(metadata i32* %Irp__Flags, metadata !568, metadata !99), !dbg !569
  %14 = call i32 @__VERIFIER_nondet_int(), !dbg !570
  store i32 %14, i32* %Irp__Flags, align 4, !dbg !569
  call void @llvm.dbg.declare(metadata i32* %partitionCounters__SplitCount, metadata !571, metadata !99), !dbg !572
  %15 = call i32 @__VERIFIER_nondet_int(), !dbg !573
  store i32 %15, i32* %partitionCounters__SplitCount, align 4, !dbg !572
  call void @llvm.dbg.declare(metadata i32* %Irp__PendingReturned, metadata !574, metadata !99), !dbg !575
  %16 = call i32 @__VERIFIER_nondet_int(), !dbg !576
  store i32 %16, i32* %Irp__PendingReturned, align 4, !dbg !575
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation__Control, metadata !577, metadata !99), !dbg !578
  call void @llvm.dbg.declare(metadata i32* %partitionCounters, metadata !579, metadata !99), !dbg !580
  %17 = call i32 @__VERIFIER_nondet_int(), !dbg !581
  store i32 %17, i32* %partitionCounters, align 4, !dbg !580
  call void @llvm.dbg.declare(metadata i32* %queueLen, metadata !582, metadata !99), !dbg !583
  %18 = call i32 @__VERIFIER_nondet_int(), !dbg !584
  store i32 %18, i32* %queueLen, align 4, !dbg !583
  %19 = load i32, i32* %partitionCounters, align 4, !dbg !585
  %20 = icmp eq i32 %19, 0, !dbg !588
  br i1 %20, label %21, label %22, !dbg !589

; <label>:21                                      ; preds = %0
  store i32 0, i32* %1, !dbg !590
  br label %68, !dbg !590

; <label>:22                                      ; preds = %0
  %23 = load i32, i32* %queueLen, align 4, !dbg !592
  %24 = icmp slt i32 %23, 0, !dbg !594
  br i1 %24, label %25, label %26, !dbg !595

; <label>:25                                      ; preds = %22
  br label %26, !dbg !596

; <label>:26                                      ; preds = %25, %22
  %27 = load i32, i32* %queueLen, align 4, !dbg !598
  %28 = icmp eq i32 %27, 0, !dbg !600
  br i1 %28, label %29, label %30, !dbg !601

; <label>:29                                      ; preds = %26
  br label %30, !dbg !602

; <label>:30                                      ; preds = %29, %26
  %31 = load i32, i32* %irpStack__MajorFunction, align 4, !dbg !604
  %32 = icmp eq i32 %31, 3, !dbg !606
  br i1 %32, label %33, label %42, !dbg !607

; <label>:33                                      ; preds = %30
  %34 = load i32, i32* %Irp__IoStatus__Information, align 4, !dbg !608
  %35 = load i32, i32* %partitionCounters__BytesRead__QuadPart, align 4, !dbg !610
  %36 = add nsw i32 %35, %34, !dbg !610
  store i32 %36, i32* %partitionCounters__BytesRead__QuadPart, align 4, !dbg !610
  %37 = load i32, i32* %partitionCounters__ReadCount, align 4, !dbg !611
  %38 = add nsw i32 %37, 1, !dbg !611
  store i32 %38, i32* %partitionCounters__ReadCount, align 4, !dbg !611
  %39 = load i32, i32* %difference__QuadPart, align 4, !dbg !612
  %40 = load i32, i32* %partitionCounters__ReadTime__QuadPart, align 4, !dbg !613
  %41 = add nsw i32 %40, %39, !dbg !613
  store i32 %41, i32* %partitionCounters__ReadTime__QuadPart, align 4, !dbg !613
  br label %51, !dbg !614

; <label>:42                                      ; preds = %30
  %43 = load i32, i32* %Irp__IoStatus__Information, align 4, !dbg !615
  %44 = load i32, i32* %partitionCounters__BytesWritten__QuadPart, align 4, !dbg !617
  %45 = add nsw i32 %44, %43, !dbg !617
  store i32 %45, i32* %partitionCounters__BytesWritten__QuadPart, align 4, !dbg !617
  %46 = load i32, i32* %partitionCounters__WriteCount, align 4, !dbg !618
  %47 = add nsw i32 %46, 1, !dbg !618
  store i32 %47, i32* %partitionCounters__WriteCount, align 4, !dbg !618
  %48 = load i32, i32* %difference__QuadPart, align 4, !dbg !619
  %49 = load i32, i32* %partitionCounters__WriteTime__QuadPart, align 4, !dbg !620
  %50 = add nsw i32 %49, %48, !dbg !620
  store i32 %50, i32* %partitionCounters__WriteTime__QuadPart, align 4, !dbg !620
  br label %51

; <label>:51                                      ; preds = %42, %33
  %52 = load i32, i32* %Irp__Flags, align 4, !dbg !621
  %53 = icmp ne i32 %52, 8, !dbg !623
  br i1 %53, label %54, label %57, !dbg !624

; <label>:54                                      ; preds = %51
  %55 = load i32, i32* %partitionCounters__SplitCount, align 4, !dbg !625
  %56 = add nsw i32 %55, 1, !dbg !625
  store i32 %56, i32* %partitionCounters__SplitCount, align 4, !dbg !625
  br label %58, !dbg !627

; <label>:57                                      ; preds = %51
  br label %58

; <label>:58                                      ; preds = %57, %54
  %59 = load i32, i32* %Irp__PendingReturned, align 4, !dbg !628
  %60 = icmp ne i32 %59, 0, !dbg !628
  br i1 %60, label %61, label %67, !dbg !630

; <label>:61                                      ; preds = %58
  %62 = load i32, i32* @pended, align 4, !dbg !631
  %63 = icmp eq i32 %62, 0, !dbg !634
  br i1 %63, label %64, label %65, !dbg !635

; <label>:64                                      ; preds = %61
  store i32 1, i32* @pended, align 4, !dbg !636
  br label %66, !dbg !638

; <label>:65                                      ; preds = %61
  call void (...) @__VERIFIER_error() #6, !dbg !639
  unreachable, !dbg !639

errorFn.exit:                                     ; No predecessors!
  br label %66

; <label>:66                                      ; preds = %errorFn.exit, %64
  br label %67, !dbg !643

; <label>:67                                      ; preds = %66, %58
  store i32 0, i32* %1, !dbg !644
  br label %68, !dbg !644

; <label>:68                                      ; preds = %67, %21
  %69 = load i32, i32* %1, !dbg !645
  ret i32 %69, !dbg !645
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
  call void @llvm.dbg.declare(metadata i32* %6, metadata !646, metadata !99), !dbg !647
  store i32 %Irp, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !648, metadata !99), !dbg !649
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !650, metadata !99), !dbg !651
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !652
  store i32 %8, i32* %Irp__CurrentLocation, align 4, !dbg !651
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !653, metadata !99), !dbg !654
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !655
  store i32 %9, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !654
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !656, metadata !99), !dbg !657
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !658
  store i32 %10, i32* %DeviceObject__DeviceExtension, align 4, !dbg !657
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__TargetDeviceObject, metadata !659, metadata !99), !dbg !660
  %11 = call i32 @__VERIFIER_nondet_int(), !dbg !661
  store i32 %11, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !660
  call void @llvm.dbg.declare(metadata i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, metadata !662, metadata !99), !dbg !663
  %12 = call i32 @__VERIFIER_nondet_int(), !dbg !664
  store i32 %12, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !663
  call void @llvm.dbg.declare(metadata i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, metadata !665, metadata !99), !dbg !666
  %13 = call i32 @__VERIFIER_nondet_int(), !dbg !667
  store i32 %13, i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !666
  call void @llvm.dbg.declare(metadata i32* %sizeof__DISK_PERFORMANCE, metadata !668, metadata !99), !dbg !669
  %14 = call i32 @__VERIFIER_nondet_int(), !dbg !670
  store i32 %14, i32* %sizeof__DISK_PERFORMANCE, align 4, !dbg !669
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !671, metadata !99), !dbg !672
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__DiskCounters, metadata !673, metadata !99), !dbg !674
  %15 = call i32 @__VERIFIER_nondet_int(), !dbg !675
  store i32 %15, i32* %deviceExtension__DiskCounters, align 4, !dbg !674
  call void @llvm.dbg.declare(metadata i32* %Irp__AssociatedIrp__SystemBuffer, metadata !676, metadata !99), !dbg !677
  %16 = call i32 @__VERIFIER_nondet_int(), !dbg !678
  store i32 %16, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !677
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__Processors, metadata !679, metadata !99), !dbg !680
  %17 = call i32 @__VERIFIER_nondet_int(), !dbg !681
  store i32 %17, i32* %deviceExtension__Processors, align 4, !dbg !680
  call void @llvm.dbg.declare(metadata i32* %totalCounters__QueueDepth, metadata !682, metadata !99), !dbg !683
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__QueueDepth, metadata !684, metadata !99), !dbg !685
  %18 = call i32 @__VERIFIER_nondet_int(), !dbg !686
  store i32 %18, i32* %deviceExtension__QueueDepth, align 4, !dbg !685
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !687, metadata !99), !dbg !688
  call void @llvm.dbg.declare(metadata i32* %deviceExtension, metadata !689, metadata !99), !dbg !690
  call void @llvm.dbg.declare(metadata i32* %currentIrpStack, metadata !691, metadata !99), !dbg !692
  call void @llvm.dbg.declare(metadata i32* %status, metadata !693, metadata !99), !dbg !694
  call void @llvm.dbg.declare(metadata i32* %i, metadata !695, metadata !99), !dbg !696
  call void @llvm.dbg.declare(metadata i32* %totalCounters, metadata !697, metadata !99), !dbg !698
  call void @llvm.dbg.declare(metadata i32* %diskCounters, metadata !699, metadata !99), !dbg !700
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !701, metadata !99), !dbg !702
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp24, metadata !703, metadata !99), !dbg !704
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp25, metadata !705, metadata !99), !dbg !706
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp26, metadata !707, metadata !99), !dbg !708
  %19 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !709
  store i32 %19, i32* %deviceExtension, align 4, !dbg !711
  %20 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !712
  store i32 %20, i32* %currentIrpStack, align 4, !dbg !713
  store i32 32, i32* %__cil_tmp24, align 4, !dbg !714
  store i32 458752, i32* %__cil_tmp25, align 4, !dbg !716
  store i32 458784, i32* %__cil_tmp26, align 4, !dbg !717
  %21 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !718
  %22 = load i32, i32* %__cil_tmp26, align 4, !dbg !720
  %23 = icmp eq i32 %21, %22, !dbg !721
  call void @llvm.dbg.declare(metadata i32* %3, metadata !262, metadata !99), !dbg !722
  call void @llvm.dbg.declare(metadata i32* %4, metadata !264, metadata !99), !dbg !730
  call void @llvm.dbg.declare(metadata i32* %1, metadata !262, metadata !99), !dbg !731
  call void @llvm.dbg.declare(metadata i32* %2, metadata !264, metadata !99), !dbg !734
  br i1 %23, label %24, label %73, !dbg !735

; <label>:24                                      ; preds = %0
  %25 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !736
  %26 = load i32, i32* %sizeof__DISK_PERFORMANCE, align 4, !dbg !737
  %27 = icmp slt i32 %25, %26, !dbg !738
  br i1 %27, label %28, label %29, !dbg !739

; <label>:28                                      ; preds = %24
  store i32 -1073741789, i32* %status, align 4, !dbg !740
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !742
  br label %59, !dbg !743

; <label>:29                                      ; preds = %24
  %30 = load i32, i32* %deviceExtension__DiskCounters, align 4, !dbg !744
  store i32 %30, i32* %diskCounters, align 4, !dbg !745
  %31 = load i32, i32* %diskCounters, align 4, !dbg !746
  %32 = icmp eq i32 %31, 0, !dbg !747
  br i1 %32, label %33, label %44, !dbg !748

; <label>:33                                      ; preds = %29
  store i32 -1073741823, i32* %Irp__IoStatus__Status, align 4, !dbg !749
  store i32 -1073741823, i32* @myStatus, align 4, !dbg !750
  %34 = load i32, i32* %7, align 4, !dbg !751
  %35 = bitcast i32* %3 to i8*, !dbg !752
  call void @llvm.lifetime.start(i64 4, i8* %35), !dbg !752
  %36 = bitcast i32* %4 to i8*, !dbg !752
  call void @llvm.lifetime.start(i64 4, i8* %36), !dbg !752
  store i32 %34, i32* %3, align 4, !dbg !752
  store i32 0, i32* %4, align 4, !dbg !752
  %37 = load i32, i32* @s, align 4, !dbg !753
  %38 = load i32, i32* @NP, align 4, !dbg !754
  %39 = icmp eq i32 %37, %38, !dbg !755
  br i1 %39, label %IofCompleteRequest.exit, label %40, !dbg !756

; <label>:40                                      ; preds = %33
  call void (...) @__VERIFIER_error() #6, !dbg !757
  unreachable, !dbg !757

IofCompleteRequest.exit:                          ; preds = %33
  %41 = load i32, i32* @DC, align 4, !dbg !759
  store i32 %41, i32* @s, align 4, !dbg !760
  %42 = bitcast i32* %3 to i8*, !dbg !761
  call void @llvm.lifetime.end(i64 4, i8* %42), !dbg !761
  %43 = bitcast i32* %4 to i8*, !dbg !761
  call void @llvm.lifetime.end(i64 4, i8* %43), !dbg !761
  store i32 -1073741823, i32* %5, !dbg !762
  br label %82, !dbg !762

; <label>:44                                      ; preds = %29
  %45 = load i32, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !763
  store i32 %45, i32* %totalCounters, align 4, !dbg !764
  store i32 0, i32* %i, align 4, !dbg !765
  br label %46, !dbg !766

; <label>:46                                      ; preds = %52, %44
  br label %47, !dbg !768

; <label>:47                                      ; preds = %46
  %48 = load i32, i32* %i, align 4, !dbg !769
  %49 = load i32, i32* %deviceExtension__Processors, align 4, !dbg !772
  %50 = icmp sge i32 %48, %49, !dbg !773
  br i1 %50, label %51, label %52, !dbg !774

; <label>:51                                      ; preds = %47
  br label %56, !dbg !775

; <label>:52                                      ; preds = %47
  %53 = load i32, i32* %i, align 4, !dbg !777
  %54 = add nsw i32 %53, 1, !dbg !777
  store i32 %54, i32* %i, align 4, !dbg !777
  br label %46, !dbg !766
                                                  ; No predecessors!
  br label %56, !dbg !778

; <label>:56                                      ; preds = %55, %51
  %57 = load i32, i32* %deviceExtension__QueueDepth, align 4, !dbg !779
  store i32 %57, i32* %totalCounters__QueueDepth, align 4, !dbg !780
  store i32 0, i32* %status, align 4, !dbg !781
  %58 = load i32, i32* %sizeof__DISK_PERFORMANCE, align 4, !dbg !782
  store i32 %58, i32* %Irp__IoStatus__Information, align 4, !dbg !783
  br label %59

; <label>:59                                      ; preds = %56, %28
  %60 = load i32, i32* %status, align 4, !dbg !784
  store i32 %60, i32* %Irp__IoStatus__Status, align 4, !dbg !785
  %61 = load i32, i32* %status, align 4, !dbg !786
  store i32 %61, i32* @myStatus, align 4, !dbg !787
  %62 = load i32, i32* %7, align 4, !dbg !788
  %63 = bitcast i32* %1 to i8*, !dbg !789
  call void @llvm.lifetime.start(i64 4, i8* %63), !dbg !789
  %64 = bitcast i32* %2 to i8*, !dbg !789
  call void @llvm.lifetime.start(i64 4, i8* %64), !dbg !789
  store i32 %62, i32* %1, align 4, !dbg !789
  store i32 0, i32* %2, align 4, !dbg !789
  %65 = load i32, i32* @s, align 4, !dbg !790
  %66 = load i32, i32* @NP, align 4, !dbg !791
  %67 = icmp eq i32 %65, %66, !dbg !792
  br i1 %67, label %IofCompleteRequest.exit1, label %68, !dbg !793

; <label>:68                                      ; preds = %59
  call void (...) @__VERIFIER_error() #6, !dbg !794
  unreachable, !dbg !794

IofCompleteRequest.exit1:                         ; preds = %59
  %69 = load i32, i32* @DC, align 4, !dbg !796
  store i32 %69, i32* @s, align 4, !dbg !797
  %70 = bitcast i32* %1 to i8*, !dbg !798
  call void @llvm.lifetime.end(i64 4, i8* %70), !dbg !798
  %71 = bitcast i32* %2 to i8*, !dbg !798
  call void @llvm.lifetime.end(i64 4, i8* %71), !dbg !798
  %72 = load i32, i32* %status, align 4, !dbg !799
  store i32 %72, i32* %5, !dbg !800
  br label %82, !dbg !800

; <label>:73                                      ; preds = %0
  %74 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !801
  %75 = add nsw i32 %74, 1, !dbg !801
  store i32 %75, i32* %Irp__CurrentLocation, align 4, !dbg !801
  %76 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !804
  %77 = add nsw i32 %76, 1, !dbg !804
  store i32 %77, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !804
  %78 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !805
  %79 = load i32, i32* %7, align 4, !dbg !806
  %80 = call i32 @IofCallDriver(i32 %78, i32 %79), !dbg !807
  store i32 %80, i32* %tmp, align 4, !dbg !808
  %81 = load i32, i32* %tmp, align 4, !dbg !809
  store i32 %81, i32* %5, !dbg !810
  br label %82, !dbg !810

; <label>:82                                      ; preds = %73, %IofCompleteRequest.exit1, %IofCompleteRequest.exit
  %83 = load i32, i32* %5, !dbg !811
  ret i32 %83, !dbg !811
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
  call void @llvm.dbg.declare(metadata i32* %1, metadata !812, metadata !99), !dbg !813
  store i32 %Irp, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !814, metadata !99), !dbg !815
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !816, metadata !99), !dbg !817
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !818
  store i32 %3, i32* %DeviceObject__DeviceExtension, align 4, !dbg !817
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !819, metadata !99), !dbg !820
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !821
  store i32 %4, i32* %Irp__CurrentLocation, align 4, !dbg !820
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !822, metadata !99), !dbg !823
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !824
  store i32 %5, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !823
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__TargetDeviceObject, metadata !825, metadata !99), !dbg !826
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !827
  store i32 %6, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !826
  call void @llvm.dbg.declare(metadata i32* %deviceExtension, metadata !828, metadata !99), !dbg !829
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !830, metadata !99), !dbg !831
  %7 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !832
  store i32 %7, i32* %deviceExtension, align 4, !dbg !835
  %8 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !836
  %9 = add nsw i32 %8, 1, !dbg !836
  store i32 %9, i32* %Irp__CurrentLocation, align 4, !dbg !836
  %10 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !837
  %11 = add nsw i32 %10, 1, !dbg !837
  store i32 %11, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !837
  %12 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !838
  %13 = load i32, i32* %2, align 4, !dbg !839
  %14 = call i32 @IofCallDriver(i32 %12, i32 %13), !dbg !840
  store i32 %14, i32* %tmp, align 4, !dbg !841
  %15 = load i32, i32* %tmp, align 4, !dbg !842
  ret i32 %15, !dbg !843
}

; Function Attrs: nounwind ssp uwtable
define void @DiskPerfUnload(i32 %DriverObject) #0 {
  %1 = alloca i32, align 4
  store i32 %DriverObject, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !844, metadata !99), !dbg !845
  ret void, !dbg !846
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
  call void @llvm.dbg.declare(metadata i32* %42, metadata !848, metadata !99), !dbg !849
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !850, metadata !99), !dbg !851
  %43 = call i32 @__VERIFIER_nondet_int(), !dbg !852
  store i32 %43, i32* %DeviceObject__DeviceExtension, align 4, !dbg !851
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__TargetDeviceObject, metadata !853, metadata !99), !dbg !854
  %44 = call i32 @__VERIFIER_nondet_int(), !dbg !855
  store i32 %44, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !854
  call void @llvm.dbg.declare(metadata i32* %sizeof__number, metadata !856, metadata !99), !dbg !857
  %45 = call i32 @__VERIFIER_nondet_int(), !dbg !858
  store i32 %45, i32* %sizeof__number, align 4, !dbg !857
  call void @llvm.dbg.declare(metadata i32* %ioStatus__Status, metadata !859, metadata !99), !dbg !860
  %46 = call i32 @__VERIFIER_nondet_int(), !dbg !861
  store i32 %46, i32* %ioStatus__Status, align 4, !dbg !860
  call void @llvm.dbg.declare(metadata i32* %sizeof__VOLUME_NUMBER, metadata !862, metadata !99), !dbg !863
  %47 = call i32 @__VERIFIER_nondet_int(), !dbg !864
  store i32 %47, i32* %sizeof__VOLUME_NUMBER, align 4, !dbg !863
  call void @llvm.dbg.declare(metadata i32* %volumeNumber__VolumeManagerName__0, metadata !865, metadata !99), !dbg !866
  %48 = call i32 @__VERIFIER_nondet_int(), !dbg !867
  store i32 %48, i32* %volumeNumber__VolumeManagerName__0, align 4, !dbg !866
  call void @llvm.dbg.declare(metadata i32* %status, metadata !868, metadata !99), !dbg !869
  call void @llvm.dbg.declare(metadata i32* %ioStatus, metadata !870, metadata !99), !dbg !871
  %49 = call i32 @__VERIFIER_nondet_int(), !dbg !872
  store i32 %49, i32* %ioStatus, align 4, !dbg !871
  call void @llvm.dbg.declare(metadata i32* %event, metadata !873, metadata !99), !dbg !874
  %50 = call i32 @__VERIFIER_nondet_int(), !dbg !875
  store i32 %50, i32* %event, align 4, !dbg !874
  call void @llvm.dbg.declare(metadata i32* %deviceExtension, metadata !876, metadata !99), !dbg !877
  call void @llvm.dbg.declare(metadata i32* %irp, metadata !878, metadata !99), !dbg !879
  call void @llvm.dbg.declare(metadata i32* %number, metadata !880, metadata !99), !dbg !881
  %51 = call i32 @__VERIFIER_nondet_int(), !dbg !882
  store i32 %51, i32* %number, align 4, !dbg !881
  call void @llvm.dbg.declare(metadata i32* %registrationFlag, metadata !883, metadata !99), !dbg !884
  call void @llvm.dbg.declare(metadata i32* %sizeof__MOUNTDEV_NAME, metadata !885, metadata !99), !dbg !886
  %52 = call i32 @__VERIFIER_nondet_int(), !dbg !887
  store i32 %52, i32* %sizeof__MOUNTDEV_NAME, align 4, !dbg !886
  call void @llvm.dbg.declare(metadata i32* %output__NameLength, metadata !888, metadata !99), !dbg !889
  %53 = call i32 @__VERIFIER_nondet_int(), !dbg !890
  store i32 %53, i32* %output__NameLength, align 4, !dbg !889
  call void @llvm.dbg.declare(metadata i32* %outputSize, metadata !891, metadata !99), !dbg !892
  call void @llvm.dbg.declare(metadata i32* %output, metadata !893, metadata !99), !dbg !894
  %54 = call i32 @__VERIFIER_nondet_int(), !dbg !895
  store i32 %54, i32* %output, align 4, !dbg !894
  call void @llvm.dbg.declare(metadata i32* %volumeNumber, metadata !896, metadata !99), !dbg !897
  %55 = call i32 @__VERIFIER_nondet_int(), !dbg !898
  store i32 %55, i32* %volumeNumber, align 4, !dbg !897
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp20, metadata !899, metadata !99), !dbg !900
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp21, metadata !901, metadata !99), !dbg !902
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp22, metadata !903, metadata !99), !dbg !904
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp23, metadata !905, metadata !99), !dbg !906
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp24, metadata !907, metadata !99), !dbg !908
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp25, metadata !909, metadata !99), !dbg !910
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp26, metadata !911, metadata !99), !dbg !912
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp27, metadata !913, metadata !99), !dbg !914
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp28, metadata !915, metadata !99), !dbg !916
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp29, metadata !917, metadata !99), !dbg !918
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp30, metadata !919, metadata !99), !dbg !920
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp31, metadata !921, metadata !99), !dbg !922
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp32, metadata !923, metadata !99), !dbg !924
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp33, metadata !925, metadata !99), !dbg !926
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp34, metadata !927, metadata !99), !dbg !928
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp35, metadata !929, metadata !99), !dbg !930
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp36, metadata !931, metadata !99), !dbg !932
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp37, metadata !933, metadata !99), !dbg !934
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp38, metadata !935, metadata !99), !dbg !936
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp39, metadata !937, metadata !99), !dbg !938
  store i32 0, i32* %registrationFlag, align 4, !dbg !939
  %56 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !942
  store i32 %56, i32* %deviceExtension, align 4, !dbg !943
  store i32 4224, i32* %__cil_tmp20, align 4, !dbg !944
  store i32 2949120, i32* %__cil_tmp21, align 4, !dbg !945
  store i32 2953344, i32* %__cil_tmp22, align 4, !dbg !946
  %57 = load i32, i32* %__cil_tmp22, align 4, !dbg !947
  %58 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !948
  %59 = load i32, i32* %number, align 4, !dbg !949
  %60 = load i32, i32* %sizeof__number, align 4, !dbg !950
  %61 = load i32, i32* %event, align 4, !dbg !951
  %62 = load i32, i32* %ioStatus, align 4, !dbg !952
  %63 = bitcast i32* %31 to i8*, !dbg !953
  call void @llvm.lifetime.start(i64 4, i8* %63), !dbg !953
  %64 = bitcast i32* %32 to i8*, !dbg !953
  call void @llvm.lifetime.start(i64 4, i8* %64), !dbg !953
  %65 = bitcast i32* %33 to i8*, !dbg !953
  call void @llvm.lifetime.start(i64 4, i8* %65), !dbg !953
  %66 = bitcast i32* %34 to i8*, !dbg !953
  call void @llvm.lifetime.start(i64 4, i8* %66), !dbg !953
  %67 = bitcast i32* %35 to i8*, !dbg !953
  call void @llvm.lifetime.start(i64 4, i8* %67), !dbg !953
  %68 = bitcast i32* %36 to i8*, !dbg !953
  call void @llvm.lifetime.start(i64 4, i8* %68), !dbg !953
  %69 = bitcast i32* %37 to i8*, !dbg !953
  call void @llvm.lifetime.start(i64 4, i8* %69), !dbg !953
  %70 = bitcast i32* %38 to i8*, !dbg !953
  call void @llvm.lifetime.start(i64 4, i8* %70), !dbg !953
  %71 = bitcast i32* %39 to i8*, !dbg !953
  call void @llvm.lifetime.start(i64 4, i8* %71), !dbg !953
  %72 = bitcast i32* %40 to i8*, !dbg !953
  call void @llvm.lifetime.start(i64 4, i8* %72), !dbg !953
  %73 = bitcast i32* %malloc_ret.i to i8*, !dbg !953
  call void @llvm.lifetime.start(i64 4, i8* %73), !dbg !953
  %74 = bitcast i32* %tmp_ndt_7.i to i8*, !dbg !953
  call void @llvm.lifetime.start(i64 4, i8* %74), !dbg !953
  store i32 %57, i32* %32, align 4, !dbg !953
  store i32 %58, i32* %33, align 4, !dbg !953
  store i32 0, i32* %34, align 4, !dbg !953
  store i32 0, i32* %35, align 4, !dbg !953
  store i32 %59, i32* %36, align 4, !dbg !953
  store i32 %60, i32* %37, align 4, !dbg !953
  store i32 0, i32* %38, align 4, !dbg !953
  store i32 %61, i32* %39, align 4, !dbg !953
  store i32 %62, i32* %40, align 4, !dbg !953
  %75 = call i32 @__VERIFIER_nondet_int() #4, !dbg !954
  store i32 %75, i32* %malloc_ret.i, align 4, !dbg !956
  store i32 1, i32* @customIrp, align 4, !dbg !957
  %76 = call i32 @__VERIFIER_nondet_int() #4, !dbg !959
  store i32 %76, i32* %tmp_ndt_7.i, align 4, !dbg !960
  %77 = load i32, i32* %tmp_ndt_7.i, align 4, !dbg !961
  %78 = icmp eq i32 %77, 0, !dbg !963
  call void @llvm.dbg.declare(metadata i32* %22, metadata !964, metadata !99), !dbg !965
  call void @llvm.dbg.declare(metadata i32* %23, metadata !970, metadata !99), !dbg !971
  call void @llvm.dbg.declare(metadata i32* %24, metadata !972, metadata !99), !dbg !973
  call void @llvm.dbg.declare(metadata i32* %25, metadata !974, metadata !99), !dbg !975
  call void @llvm.dbg.declare(metadata i32* %26, metadata !976, metadata !99), !dbg !977
  call void @llvm.dbg.declare(metadata i32* %27, metadata !978, metadata !99), !dbg !979
  call void @llvm.dbg.declare(metadata i32* %28, metadata !980, metadata !99), !dbg !981
  call void @llvm.dbg.declare(metadata i32* %29, metadata !982, metadata !99), !dbg !983
  call void @llvm.dbg.declare(metadata i32* %30, metadata !984, metadata !99), !dbg !985
  call void @llvm.dbg.declare(metadata i32* %malloc_ret.i.1, metadata !986, metadata !99), !dbg !987
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_7.i.2, metadata !988, metadata !99), !dbg !989
  call void @llvm.dbg.declare(metadata i32* %12, metadata !964, metadata !99), !dbg !990
  call void @llvm.dbg.declare(metadata i32* %13, metadata !970, metadata !99), !dbg !996
  call void @llvm.dbg.declare(metadata i32* %14, metadata !972, metadata !99), !dbg !997
  call void @llvm.dbg.declare(metadata i32* %15, metadata !974, metadata !99), !dbg !998
  call void @llvm.dbg.declare(metadata i32* %16, metadata !976, metadata !99), !dbg !999
  call void @llvm.dbg.declare(metadata i32* %17, metadata !978, metadata !99), !dbg !1000
  call void @llvm.dbg.declare(metadata i32* %18, metadata !980, metadata !99), !dbg !1001
  call void @llvm.dbg.declare(metadata i32* %19, metadata !982, metadata !99), !dbg !1002
  call void @llvm.dbg.declare(metadata i32* %20, metadata !984, metadata !99), !dbg !1003
  call void @llvm.dbg.declare(metadata i32* %malloc_ret.i.4, metadata !986, metadata !99), !dbg !1004
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_7.i.5, metadata !988, metadata !99), !dbg !1005
  call void @llvm.dbg.declare(metadata i32* %2, metadata !964, metadata !99), !dbg !1006
  call void @llvm.dbg.declare(metadata i32* %3, metadata !970, metadata !99), !dbg !1009
  call void @llvm.dbg.declare(metadata i32* %4, metadata !972, metadata !99), !dbg !1010
  call void @llvm.dbg.declare(metadata i32* %5, metadata !974, metadata !99), !dbg !1011
  call void @llvm.dbg.declare(metadata i32* %6, metadata !976, metadata !99), !dbg !1012
  call void @llvm.dbg.declare(metadata i32* %7, metadata !978, metadata !99), !dbg !1013
  call void @llvm.dbg.declare(metadata i32* %8, metadata !980, metadata !99), !dbg !1014
  call void @llvm.dbg.declare(metadata i32* %9, metadata !982, metadata !99), !dbg !1015
  call void @llvm.dbg.declare(metadata i32* %10, metadata !984, metadata !99), !dbg !1016
  call void @llvm.dbg.declare(metadata i32* %malloc_ret.i.7, metadata !986, metadata !99), !dbg !1017
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_7.i.8, metadata !988, metadata !99), !dbg !1018
  br i1 %78, label %79, label %81, !dbg !1019

; <label>:79                                      ; preds = %0
  %80 = load i32, i32* %malloc_ret.i, align 4, !dbg !1020
  store i32 %80, i32* %31, !dbg !1024
  br label %IoBuildDeviceIoControlRequest.exit, !dbg !1024

; <label>:81                                      ; preds = %0
  store i32 0, i32* %31, !dbg !1025
  br label %IoBuildDeviceIoControlRequest.exit, !dbg !1025

IoBuildDeviceIoControlRequest.exit:               ; preds = %79, %81
  %82 = load i32, i32* %31, !dbg !1026
  %83 = bitcast i32* %31 to i8*, !dbg !1026
  call void @llvm.lifetime.end(i64 4, i8* %83), !dbg !1026
  %84 = bitcast i32* %32 to i8*, !dbg !1026
  call void @llvm.lifetime.end(i64 4, i8* %84), !dbg !1026
  %85 = bitcast i32* %33 to i8*, !dbg !1026
  call void @llvm.lifetime.end(i64 4, i8* %85), !dbg !1026
  %86 = bitcast i32* %34 to i8*, !dbg !1026
  call void @llvm.lifetime.end(i64 4, i8* %86), !dbg !1026
  %87 = bitcast i32* %35 to i8*, !dbg !1026
  call void @llvm.lifetime.end(i64 4, i8* %87), !dbg !1026
  %88 = bitcast i32* %36 to i8*, !dbg !1026
  call void @llvm.lifetime.end(i64 4, i8* %88), !dbg !1026
  %89 = bitcast i32* %37 to i8*, !dbg !1026
  call void @llvm.lifetime.end(i64 4, i8* %89), !dbg !1026
  %90 = bitcast i32* %38 to i8*, !dbg !1026
  call void @llvm.lifetime.end(i64 4, i8* %90), !dbg !1026
  %91 = bitcast i32* %39 to i8*, !dbg !1026
  call void @llvm.lifetime.end(i64 4, i8* %91), !dbg !1026
  %92 = bitcast i32* %40 to i8*, !dbg !1026
  call void @llvm.lifetime.end(i64 4, i8* %92), !dbg !1026
  %93 = bitcast i32* %malloc_ret.i to i8*, !dbg !1026
  call void @llvm.lifetime.end(i64 4, i8* %93), !dbg !1026
  %94 = bitcast i32* %tmp_ndt_7.i to i8*, !dbg !1026
  call void @llvm.lifetime.end(i64 4, i8* %94), !dbg !1026
  store i32 %82, i32* %irp, align 4, !dbg !1027
  %95 = load i32, i32* %irp, align 4, !dbg !1028
  %96 = icmp ne i32 %95, 0, !dbg !1028
  call void @llvm.dbg.declare(metadata i32* %32, metadata !964, metadata !99), !dbg !1030
  call void @llvm.dbg.declare(metadata i32* %33, metadata !970, metadata !99), !dbg !1031
  call void @llvm.dbg.declare(metadata i32* %34, metadata !972, metadata !99), !dbg !1032
  call void @llvm.dbg.declare(metadata i32* %35, metadata !974, metadata !99), !dbg !1033
  call void @llvm.dbg.declare(metadata i32* %36, metadata !976, metadata !99), !dbg !1034
  call void @llvm.dbg.declare(metadata i32* %37, metadata !978, metadata !99), !dbg !1035
  call void @llvm.dbg.declare(metadata i32* %38, metadata !980, metadata !99), !dbg !1036
  call void @llvm.dbg.declare(metadata i32* %39, metadata !982, metadata !99), !dbg !1037
  call void @llvm.dbg.declare(metadata i32* %40, metadata !984, metadata !99), !dbg !1038
  call void @llvm.dbg.declare(metadata i32* %malloc_ret.i, metadata !986, metadata !99), !dbg !956
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_7.i, metadata !988, metadata !99), !dbg !1039
  br i1 %96, label %98, label %97, !dbg !1040

; <label>:97                                      ; preds = %IoBuildDeviceIoControlRequest.exit
  store i32 -1073741670, i32* %41, !dbg !1041
  br label %327, !dbg !1041

; <label>:98                                      ; preds = %IoBuildDeviceIoControlRequest.exit
  %99 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1043
  %100 = load i32, i32* %irp, align 4, !dbg !1045
  %101 = call i32 @IofCallDriver(i32 %99, i32 %100), !dbg !1046
  store i32 %101, i32* %status, align 4, !dbg !1047
  %102 = load i32, i32* %status, align 4, !dbg !1048
  %103 = sext i32 %102 to i64, !dbg !1050
  store i64 %103, i64* %__cil_tmp23, align 8, !dbg !1051
  %104 = load i64, i64* %__cil_tmp23, align 8, !dbg !1052
  %105 = icmp eq i64 %104, 259, !dbg !1054
  br i1 %105, label %106, label %112, !dbg !1055

; <label>:106                                     ; preds = %98
  %107 = load i32, i32* %event, align 4, !dbg !1056
  %108 = load i32, i32* @Executive, align 4, !dbg !1059
  %109 = load i32, i32* @KernelMode, align 4, !dbg !1060
  %110 = call i32 @KeWaitForSingleObject(i32 %107, i32 %108, i32 %109, i32 0, i32 0), !dbg !1061
  %111 = load i32, i32* %ioStatus__Status, align 4, !dbg !1062
  store i32 %111, i32* %status, align 4, !dbg !1063
  br label %112, !dbg !1064

; <label>:112                                     ; preds = %106, %98
  %113 = load i32, i32* %status, align 4, !dbg !1065
  %114 = icmp slt i32 %113, 0, !dbg !1066
  br i1 %114, label %115, label %321, !dbg !1067

; <label>:115                                     ; preds = %112
  %116 = load i32, i32* %sizeof__MOUNTDEV_NAME, align 4, !dbg !1068
  store i32 %116, i32* %outputSize, align 4, !dbg !1069
  %117 = load i32, i32* %output, align 4, !dbg !1070
  %118 = icmp ne i32 %117, 0, !dbg !1070
  br i1 %118, label %120, label %119, !dbg !1072

; <label>:119                                     ; preds = %115
  store i32 -1073741670, i32* %41, !dbg !1073
  br label %327, !dbg !1073

; <label>:120                                     ; preds = %115
  store i32 8, i32* %__cil_tmp24, align 4, !dbg !1075
  store i32 5046272, i32* %__cil_tmp25, align 4, !dbg !1076
  store i32 5046280, i32* %__cil_tmp26, align 4, !dbg !1077
  %121 = load i32, i32* %__cil_tmp26, align 4, !dbg !1078
  %122 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1079
  %123 = load i32, i32* %output, align 4, !dbg !1080
  %124 = load i32, i32* %outputSize, align 4, !dbg !1081
  %125 = load i32, i32* %event, align 4, !dbg !1082
  %126 = load i32, i32* %ioStatus, align 4, !dbg !1083
  %127 = bitcast i32* %21 to i8*, !dbg !1084
  call void @llvm.lifetime.start(i64 4, i8* %127), !dbg !1084
  %128 = bitcast i32* %22 to i8*, !dbg !1084
  call void @llvm.lifetime.start(i64 4, i8* %128), !dbg !1084
  %129 = bitcast i32* %23 to i8*, !dbg !1084
  call void @llvm.lifetime.start(i64 4, i8* %129), !dbg !1084
  %130 = bitcast i32* %24 to i8*, !dbg !1084
  call void @llvm.lifetime.start(i64 4, i8* %130), !dbg !1084
  %131 = bitcast i32* %25 to i8*, !dbg !1084
  call void @llvm.lifetime.start(i64 4, i8* %131), !dbg !1084
  %132 = bitcast i32* %26 to i8*, !dbg !1084
  call void @llvm.lifetime.start(i64 4, i8* %132), !dbg !1084
  %133 = bitcast i32* %27 to i8*, !dbg !1084
  call void @llvm.lifetime.start(i64 4, i8* %133), !dbg !1084
  %134 = bitcast i32* %28 to i8*, !dbg !1084
  call void @llvm.lifetime.start(i64 4, i8* %134), !dbg !1084
  %135 = bitcast i32* %29 to i8*, !dbg !1084
  call void @llvm.lifetime.start(i64 4, i8* %135), !dbg !1084
  %136 = bitcast i32* %30 to i8*, !dbg !1084
  call void @llvm.lifetime.start(i64 4, i8* %136), !dbg !1084
  %137 = bitcast i32* %malloc_ret.i.1 to i8*, !dbg !1084
  call void @llvm.lifetime.start(i64 4, i8* %137), !dbg !1084
  %138 = bitcast i32* %tmp_ndt_7.i.2 to i8*, !dbg !1084
  call void @llvm.lifetime.start(i64 4, i8* %138), !dbg !1084
  store i32 %121, i32* %22, align 4, !dbg !1084
  store i32 %122, i32* %23, align 4, !dbg !1084
  store i32 0, i32* %24, align 4, !dbg !1084
  store i32 0, i32* %25, align 4, !dbg !1084
  store i32 %123, i32* %26, align 4, !dbg !1084
  store i32 %124, i32* %27, align 4, !dbg !1084
  store i32 0, i32* %28, align 4, !dbg !1084
  store i32 %125, i32* %29, align 4, !dbg !1084
  store i32 %126, i32* %30, align 4, !dbg !1084
  %139 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1085
  store i32 %139, i32* %malloc_ret.i.1, align 4, !dbg !987
  store i32 1, i32* @customIrp, align 4, !dbg !1086
  %140 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1087
  store i32 %140, i32* %tmp_ndt_7.i.2, align 4, !dbg !1088
  %141 = load i32, i32* %tmp_ndt_7.i.2, align 4, !dbg !1089
  %142 = icmp eq i32 %141, 0, !dbg !1090
  br i1 %142, label %143, label %145, !dbg !1091

; <label>:143                                     ; preds = %120
  %144 = load i32, i32* %malloc_ret.i.1, align 4, !dbg !1092
  store i32 %144, i32* %21, !dbg !1093
  br label %IoBuildDeviceIoControlRequest.exit3, !dbg !1093

; <label>:145                                     ; preds = %120
  store i32 0, i32* %21, !dbg !1094
  br label %IoBuildDeviceIoControlRequest.exit3, !dbg !1094

IoBuildDeviceIoControlRequest.exit3:              ; preds = %143, %145
  %146 = load i32, i32* %21, !dbg !1095
  %147 = bitcast i32* %21 to i8*, !dbg !1095
  call void @llvm.lifetime.end(i64 4, i8* %147), !dbg !1095
  %148 = bitcast i32* %22 to i8*, !dbg !1095
  call void @llvm.lifetime.end(i64 4, i8* %148), !dbg !1095
  %149 = bitcast i32* %23 to i8*, !dbg !1095
  call void @llvm.lifetime.end(i64 4, i8* %149), !dbg !1095
  %150 = bitcast i32* %24 to i8*, !dbg !1095
  call void @llvm.lifetime.end(i64 4, i8* %150), !dbg !1095
  %151 = bitcast i32* %25 to i8*, !dbg !1095
  call void @llvm.lifetime.end(i64 4, i8* %151), !dbg !1095
  %152 = bitcast i32* %26 to i8*, !dbg !1095
  call void @llvm.lifetime.end(i64 4, i8* %152), !dbg !1095
  %153 = bitcast i32* %27 to i8*, !dbg !1095
  call void @llvm.lifetime.end(i64 4, i8* %153), !dbg !1095
  %154 = bitcast i32* %28 to i8*, !dbg !1095
  call void @llvm.lifetime.end(i64 4, i8* %154), !dbg !1095
  %155 = bitcast i32* %29 to i8*, !dbg !1095
  call void @llvm.lifetime.end(i64 4, i8* %155), !dbg !1095
  %156 = bitcast i32* %30 to i8*, !dbg !1095
  call void @llvm.lifetime.end(i64 4, i8* %156), !dbg !1095
  %157 = bitcast i32* %malloc_ret.i.1 to i8*, !dbg !1095
  call void @llvm.lifetime.end(i64 4, i8* %157), !dbg !1095
  %158 = bitcast i32* %tmp_ndt_7.i.2 to i8*, !dbg !1095
  call void @llvm.lifetime.end(i64 4, i8* %158), !dbg !1095
  store i32 %146, i32* %irp, align 4, !dbg !1096
  %159 = load i32, i32* %irp, align 4, !dbg !1097
  %160 = icmp ne i32 %159, 0, !dbg !1097
  br i1 %160, label %162, label %161, !dbg !1099

; <label>:161                                     ; preds = %IoBuildDeviceIoControlRequest.exit3
  store i32 -1073741670, i32* %41, !dbg !1100
  br label %327, !dbg !1100

; <label>:162                                     ; preds = %IoBuildDeviceIoControlRequest.exit3
  %163 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1102
  %164 = load i32, i32* %irp, align 4, !dbg !1104
  %165 = call i32 @IofCallDriver(i32 %163, i32 %164), !dbg !1105
  store i32 %165, i32* %status, align 4, !dbg !1106
  %166 = load i32, i32* %status, align 4, !dbg !1107
  %167 = sext i32 %166 to i64, !dbg !1109
  store i64 %167, i64* %__cil_tmp27, align 8, !dbg !1110
  %168 = load i64, i64* %__cil_tmp27, align 8, !dbg !1111
  %169 = icmp eq i64 %168, 259, !dbg !1113
  br i1 %169, label %170, label %176, !dbg !1114

; <label>:170                                     ; preds = %162
  %171 = load i32, i32* %event, align 4, !dbg !1115
  %172 = load i32, i32* @Executive, align 4, !dbg !1118
  %173 = load i32, i32* @KernelMode, align 4, !dbg !1119
  %174 = call i32 @KeWaitForSingleObject(i32 %171, i32 %172, i32 %173, i32 0, i32 0), !dbg !1120
  %175 = load i32, i32* %ioStatus__Status, align 4, !dbg !1121
  store i32 %175, i32* %status, align 4, !dbg !1122
  br label %176, !dbg !1123

; <label>:176                                     ; preds = %170, %162
  %177 = load i32, i32* %status, align 4, !dbg !1124
  %178 = sext i32 %177 to i64, !dbg !1125
  store i64 %178, i64* %__cil_tmp28, align 8, !dbg !1126
  %179 = load i64, i64* %__cil_tmp28, align 8, !dbg !1127
  %180 = icmp eq i64 %179, -2147483643, !dbg !1128
  br i1 %180, label %181, label %245, !dbg !1129

; <label>:181                                     ; preds = %176
  %182 = load i32, i32* %sizeof__MOUNTDEV_NAME, align 4, !dbg !1130
  %183 = load i32, i32* %output__NameLength, align 4, !dbg !1131
  %184 = add nsw i32 %182, %183, !dbg !1132
  store i32 %184, i32* %outputSize, align 4, !dbg !1133
  %185 = load i32, i32* %output, align 4, !dbg !1134
  %186 = icmp ne i32 %185, 0, !dbg !1134
  br i1 %186, label %188, label %187, !dbg !1136

; <label>:187                                     ; preds = %181
  store i32 -1073741670, i32* %41, !dbg !1137
  br label %327, !dbg !1137

; <label>:188                                     ; preds = %181
  store i32 8, i32* %__cil_tmp29, align 4, !dbg !1139
  store i32 5046272, i32* %__cil_tmp30, align 4, !dbg !1140
  store i32 5046280, i32* %__cil_tmp31, align 4, !dbg !1141
  %189 = load i32, i32* %__cil_tmp31, align 4, !dbg !1142
  %190 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1143
  %191 = load i32, i32* %output, align 4, !dbg !1144
  %192 = load i32, i32* %outputSize, align 4, !dbg !1145
  %193 = load i32, i32* %event, align 4, !dbg !1146
  %194 = load i32, i32* %ioStatus, align 4, !dbg !1147
  %195 = bitcast i32* %11 to i8*, !dbg !1148
  call void @llvm.lifetime.start(i64 4, i8* %195), !dbg !1148
  %196 = bitcast i32* %12 to i8*, !dbg !1148
  call void @llvm.lifetime.start(i64 4, i8* %196), !dbg !1148
  %197 = bitcast i32* %13 to i8*, !dbg !1148
  call void @llvm.lifetime.start(i64 4, i8* %197), !dbg !1148
  %198 = bitcast i32* %14 to i8*, !dbg !1148
  call void @llvm.lifetime.start(i64 4, i8* %198), !dbg !1148
  %199 = bitcast i32* %15 to i8*, !dbg !1148
  call void @llvm.lifetime.start(i64 4, i8* %199), !dbg !1148
  %200 = bitcast i32* %16 to i8*, !dbg !1148
  call void @llvm.lifetime.start(i64 4, i8* %200), !dbg !1148
  %201 = bitcast i32* %17 to i8*, !dbg !1148
  call void @llvm.lifetime.start(i64 4, i8* %201), !dbg !1148
  %202 = bitcast i32* %18 to i8*, !dbg !1148
  call void @llvm.lifetime.start(i64 4, i8* %202), !dbg !1148
  %203 = bitcast i32* %19 to i8*, !dbg !1148
  call void @llvm.lifetime.start(i64 4, i8* %203), !dbg !1148
  %204 = bitcast i32* %20 to i8*, !dbg !1148
  call void @llvm.lifetime.start(i64 4, i8* %204), !dbg !1148
  %205 = bitcast i32* %malloc_ret.i.4 to i8*, !dbg !1148
  call void @llvm.lifetime.start(i64 4, i8* %205), !dbg !1148
  %206 = bitcast i32* %tmp_ndt_7.i.5 to i8*, !dbg !1148
  call void @llvm.lifetime.start(i64 4, i8* %206), !dbg !1148
  store i32 %189, i32* %12, align 4, !dbg !1148
  store i32 %190, i32* %13, align 4, !dbg !1148
  store i32 0, i32* %14, align 4, !dbg !1148
  store i32 0, i32* %15, align 4, !dbg !1148
  store i32 %191, i32* %16, align 4, !dbg !1148
  store i32 %192, i32* %17, align 4, !dbg !1148
  store i32 0, i32* %18, align 4, !dbg !1148
  store i32 %193, i32* %19, align 4, !dbg !1148
  store i32 %194, i32* %20, align 4, !dbg !1148
  %207 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1149
  store i32 %207, i32* %malloc_ret.i.4, align 4, !dbg !1004
  store i32 1, i32* @customIrp, align 4, !dbg !1150
  %208 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1151
  store i32 %208, i32* %tmp_ndt_7.i.5, align 4, !dbg !1152
  %209 = load i32, i32* %tmp_ndt_7.i.5, align 4, !dbg !1153
  %210 = icmp eq i32 %209, 0, !dbg !1154
  br i1 %210, label %211, label %213, !dbg !1155

; <label>:211                                     ; preds = %188
  %212 = load i32, i32* %malloc_ret.i.4, align 4, !dbg !1156
  store i32 %212, i32* %11, !dbg !1157
  br label %IoBuildDeviceIoControlRequest.exit6, !dbg !1157

; <label>:213                                     ; preds = %188
  store i32 0, i32* %11, !dbg !1158
  br label %IoBuildDeviceIoControlRequest.exit6, !dbg !1158

IoBuildDeviceIoControlRequest.exit6:              ; preds = %211, %213
  %214 = load i32, i32* %11, !dbg !1159
  %215 = bitcast i32* %11 to i8*, !dbg !1159
  call void @llvm.lifetime.end(i64 4, i8* %215), !dbg !1159
  %216 = bitcast i32* %12 to i8*, !dbg !1159
  call void @llvm.lifetime.end(i64 4, i8* %216), !dbg !1159
  %217 = bitcast i32* %13 to i8*, !dbg !1159
  call void @llvm.lifetime.end(i64 4, i8* %217), !dbg !1159
  %218 = bitcast i32* %14 to i8*, !dbg !1159
  call void @llvm.lifetime.end(i64 4, i8* %218), !dbg !1159
  %219 = bitcast i32* %15 to i8*, !dbg !1159
  call void @llvm.lifetime.end(i64 4, i8* %219), !dbg !1159
  %220 = bitcast i32* %16 to i8*, !dbg !1159
  call void @llvm.lifetime.end(i64 4, i8* %220), !dbg !1159
  %221 = bitcast i32* %17 to i8*, !dbg !1159
  call void @llvm.lifetime.end(i64 4, i8* %221), !dbg !1159
  %222 = bitcast i32* %18 to i8*, !dbg !1159
  call void @llvm.lifetime.end(i64 4, i8* %222), !dbg !1159
  %223 = bitcast i32* %19 to i8*, !dbg !1159
  call void @llvm.lifetime.end(i64 4, i8* %223), !dbg !1159
  %224 = bitcast i32* %20 to i8*, !dbg !1159
  call void @llvm.lifetime.end(i64 4, i8* %224), !dbg !1159
  %225 = bitcast i32* %malloc_ret.i.4 to i8*, !dbg !1159
  call void @llvm.lifetime.end(i64 4, i8* %225), !dbg !1159
  %226 = bitcast i32* %tmp_ndt_7.i.5 to i8*, !dbg !1159
  call void @llvm.lifetime.end(i64 4, i8* %226), !dbg !1159
  store i32 %214, i32* %irp, align 4, !dbg !1160
  %227 = load i32, i32* %irp, align 4, !dbg !1161
  %228 = icmp ne i32 %227, 0, !dbg !1161
  br i1 %228, label %230, label %229, !dbg !1163

; <label>:229                                     ; preds = %IoBuildDeviceIoControlRequest.exit6
  store i32 -1073741670, i32* %41, !dbg !1164
  br label %327, !dbg !1164

; <label>:230                                     ; preds = %IoBuildDeviceIoControlRequest.exit6
  %231 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1166
  %232 = load i32, i32* %irp, align 4, !dbg !1168
  %233 = call i32 @IofCallDriver(i32 %231, i32 %232), !dbg !1169
  store i32 %233, i32* %status, align 4, !dbg !1170
  %234 = load i32, i32* %status, align 4, !dbg !1171
  %235 = sext i32 %234 to i64, !dbg !1173
  store i64 %235, i64* %__cil_tmp32, align 8, !dbg !1174
  %236 = load i64, i64* %__cil_tmp32, align 8, !dbg !1175
  %237 = icmp eq i64 %236, 259, !dbg !1177
  br i1 %237, label %238, label %244, !dbg !1178

; <label>:238                                     ; preds = %230
  %239 = load i32, i32* %event, align 4, !dbg !1179
  %240 = load i32, i32* @Executive, align 4, !dbg !1182
  %241 = load i32, i32* @KernelMode, align 4, !dbg !1183
  %242 = call i32 @KeWaitForSingleObject(i32 %239, i32 %240, i32 %241, i32 0, i32 0), !dbg !1184
  %243 = load i32, i32* %ioStatus__Status, align 4, !dbg !1185
  store i32 %243, i32* %status, align 4, !dbg !1186
  br label %244, !dbg !1187

; <label>:244                                     ; preds = %238, %230
  br label %245, !dbg !1188

; <label>:245                                     ; preds = %244, %176
  %246 = load i32, i32* %status, align 4, !dbg !1189
  %247 = icmp slt i32 %246, 0, !dbg !1192
  br i1 %247, label %248, label %250, !dbg !1193

; <label>:248                                     ; preds = %245
  %249 = load i32, i32* %status, align 4, !dbg !1194
  store i32 %249, i32* %41, !dbg !1196
  br label %327, !dbg !1196

; <label>:250                                     ; preds = %245
  store i32 28, i32* %__cil_tmp34, align 4, !dbg !1197
  store i32 5636096, i32* %__cil_tmp35, align 4, !dbg !1198
  store i32 5636124, i32* %__cil_tmp36, align 4, !dbg !1199
  %251 = load i32, i32* %__cil_tmp36, align 4, !dbg !1200
  %252 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1201
  %253 = load i32, i32* %volumeNumber, align 4, !dbg !1202
  %254 = load i32, i32* %sizeof__VOLUME_NUMBER, align 4, !dbg !1203
  %255 = load i32, i32* %event, align 4, !dbg !1204
  %256 = load i32, i32* %ioStatus, align 4, !dbg !1205
  %257 = bitcast i32* %1 to i8*, !dbg !1206
  call void @llvm.lifetime.start(i64 4, i8* %257), !dbg !1206
  %258 = bitcast i32* %2 to i8*, !dbg !1206
  call void @llvm.lifetime.start(i64 4, i8* %258), !dbg !1206
  %259 = bitcast i32* %3 to i8*, !dbg !1206
  call void @llvm.lifetime.start(i64 4, i8* %259), !dbg !1206
  %260 = bitcast i32* %4 to i8*, !dbg !1206
  call void @llvm.lifetime.start(i64 4, i8* %260), !dbg !1206
  %261 = bitcast i32* %5 to i8*, !dbg !1206
  call void @llvm.lifetime.start(i64 4, i8* %261), !dbg !1206
  %262 = bitcast i32* %6 to i8*, !dbg !1206
  call void @llvm.lifetime.start(i64 4, i8* %262), !dbg !1206
  %263 = bitcast i32* %7 to i8*, !dbg !1206
  call void @llvm.lifetime.start(i64 4, i8* %263), !dbg !1206
  %264 = bitcast i32* %8 to i8*, !dbg !1206
  call void @llvm.lifetime.start(i64 4, i8* %264), !dbg !1206
  %265 = bitcast i32* %9 to i8*, !dbg !1206
  call void @llvm.lifetime.start(i64 4, i8* %265), !dbg !1206
  %266 = bitcast i32* %10 to i8*, !dbg !1206
  call void @llvm.lifetime.start(i64 4, i8* %266), !dbg !1206
  %267 = bitcast i32* %malloc_ret.i.7 to i8*, !dbg !1206
  call void @llvm.lifetime.start(i64 4, i8* %267), !dbg !1206
  %268 = bitcast i32* %tmp_ndt_7.i.8 to i8*, !dbg !1206
  call void @llvm.lifetime.start(i64 4, i8* %268), !dbg !1206
  store i32 %251, i32* %2, align 4, !dbg !1206
  store i32 %252, i32* %3, align 4, !dbg !1206
  store i32 0, i32* %4, align 4, !dbg !1206
  store i32 0, i32* %5, align 4, !dbg !1206
  store i32 %253, i32* %6, align 4, !dbg !1206
  store i32 %254, i32* %7, align 4, !dbg !1206
  store i32 0, i32* %8, align 4, !dbg !1206
  store i32 %255, i32* %9, align 4, !dbg !1206
  store i32 %256, i32* %10, align 4, !dbg !1206
  %269 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1207
  store i32 %269, i32* %malloc_ret.i.7, align 4, !dbg !1017
  store i32 1, i32* @customIrp, align 4, !dbg !1208
  %270 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1209
  store i32 %270, i32* %tmp_ndt_7.i.8, align 4, !dbg !1210
  %271 = load i32, i32* %tmp_ndt_7.i.8, align 4, !dbg !1211
  %272 = icmp eq i32 %271, 0, !dbg !1212
  br i1 %272, label %273, label %275, !dbg !1213

; <label>:273                                     ; preds = %250
  %274 = load i32, i32* %malloc_ret.i.7, align 4, !dbg !1214
  store i32 %274, i32* %1, !dbg !1215
  br label %IoBuildDeviceIoControlRequest.exit9, !dbg !1215

; <label>:275                                     ; preds = %250
  store i32 0, i32* %1, !dbg !1216
  br label %IoBuildDeviceIoControlRequest.exit9, !dbg !1216

IoBuildDeviceIoControlRequest.exit9:              ; preds = %273, %275
  %276 = load i32, i32* %1, !dbg !1217
  %277 = bitcast i32* %1 to i8*, !dbg !1217
  call void @llvm.lifetime.end(i64 4, i8* %277), !dbg !1217
  %278 = bitcast i32* %2 to i8*, !dbg !1217
  call void @llvm.lifetime.end(i64 4, i8* %278), !dbg !1217
  %279 = bitcast i32* %3 to i8*, !dbg !1217
  call void @llvm.lifetime.end(i64 4, i8* %279), !dbg !1217
  %280 = bitcast i32* %4 to i8*, !dbg !1217
  call void @llvm.lifetime.end(i64 4, i8* %280), !dbg !1217
  %281 = bitcast i32* %5 to i8*, !dbg !1217
  call void @llvm.lifetime.end(i64 4, i8* %281), !dbg !1217
  %282 = bitcast i32* %6 to i8*, !dbg !1217
  call void @llvm.lifetime.end(i64 4, i8* %282), !dbg !1217
  %283 = bitcast i32* %7 to i8*, !dbg !1217
  call void @llvm.lifetime.end(i64 4, i8* %283), !dbg !1217
  %284 = bitcast i32* %8 to i8*, !dbg !1217
  call void @llvm.lifetime.end(i64 4, i8* %284), !dbg !1217
  %285 = bitcast i32* %9 to i8*, !dbg !1217
  call void @llvm.lifetime.end(i64 4, i8* %285), !dbg !1217
  %286 = bitcast i32* %10 to i8*, !dbg !1217
  call void @llvm.lifetime.end(i64 4, i8* %286), !dbg !1217
  %287 = bitcast i32* %malloc_ret.i.7 to i8*, !dbg !1217
  call void @llvm.lifetime.end(i64 4, i8* %287), !dbg !1217
  %288 = bitcast i32* %tmp_ndt_7.i.8 to i8*, !dbg !1217
  call void @llvm.lifetime.end(i64 4, i8* %288), !dbg !1217
  store i32 %276, i32* %irp, align 4, !dbg !1218
  %289 = load i32, i32* %irp, align 4, !dbg !1219
  %290 = icmp ne i32 %289, 0, !dbg !1219
  br i1 %290, label %292, label %291, !dbg !1221

; <label>:291                                     ; preds = %IoBuildDeviceIoControlRequest.exit9
  store i32 -1073741670, i32* %41, !dbg !1222
  br label %327, !dbg !1222

; <label>:292                                     ; preds = %IoBuildDeviceIoControlRequest.exit9
  %293 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1224
  %294 = load i32, i32* %irp, align 4, !dbg !1226
  %295 = call i32 @IofCallDriver(i32 %293, i32 %294), !dbg !1227
  store i32 %295, i32* %status, align 4, !dbg !1228
  %296 = load i32, i32* %status, align 4, !dbg !1229
  %297 = sext i32 %296 to i64, !dbg !1231
  store i64 %297, i64* %__cil_tmp37, align 8, !dbg !1232
  %298 = load i64, i64* %__cil_tmp37, align 8, !dbg !1233
  %299 = icmp eq i64 %298, 259, !dbg !1235
  br i1 %299, label %300, label %306, !dbg !1236

; <label>:300                                     ; preds = %292
  %301 = load i32, i32* %event, align 4, !dbg !1237
  %302 = load i32, i32* @Executive, align 4, !dbg !1240
  %303 = load i32, i32* @KernelMode, align 4, !dbg !1241
  %304 = call i32 @KeWaitForSingleObject(i32 %301, i32 %302, i32 %303, i32 0, i32 0), !dbg !1242
  %305 = load i32, i32* %ioStatus__Status, align 4, !dbg !1243
  store i32 %305, i32* %status, align 4, !dbg !1244
  br label %306, !dbg !1245

; <label>:306                                     ; preds = %300, %292
  %307 = load i32, i32* %status, align 4, !dbg !1246
  %308 = icmp slt i32 %307, 0, !dbg !1249
  br i1 %308, label %309, label %310, !dbg !1250

; <label>:309                                     ; preds = %306
  br label %314, !dbg !1251

; <label>:310                                     ; preds = %306
  %311 = load i32, i32* %volumeNumber__VolumeManagerName__0, align 4, !dbg !1253
  %312 = icmp eq i32 %311, 0, !dbg !1256
  br i1 %312, label %313, label %319, !dbg !1257

; <label>:313                                     ; preds = %310
  br label %314, !dbg !1258

; <label>:314                                     ; preds = %313, %309
  %315 = load i32, i32* %status, align 4, !dbg !1259
  %316 = icmp sge i32 %315, 0, !dbg !1262
  br i1 %316, label %317, label %318, !dbg !1263

; <label>:317                                     ; preds = %314
  br label %318, !dbg !1264

; <label>:318                                     ; preds = %317, %314
  br label %319, !dbg !1266

; <label>:319                                     ; preds = %318, %310
  br label %320

; <label>:320                                     ; preds = %319
  br label %321, !dbg !1267

; <label>:321                                     ; preds = %320, %112
  %322 = load i32, i32* %status, align 4, !dbg !1268
  %323 = icmp slt i32 %322, 0, !dbg !1271
  br i1 %323, label %324, label %325, !dbg !1272

; <label>:324                                     ; preds = %321
  br label %325, !dbg !1273

; <label>:325                                     ; preds = %324, %321
  %326 = load i32, i32* %status, align 4, !dbg !1275
  store i32 %326, i32* %41, !dbg !1276
  br label %327, !dbg !1276

; <label>:327                                     ; preds = %325, %291, %248, %229, %187, %161, %119, %97
  %328 = load i32, i32* %41, !dbg !1277
  ret i32 %328, !dbg !1277
}

; Function Attrs: nounwind ssp uwtable
define void @stub_driver_init() #0 {
  %1 = load i32, i32* @NP, align 4, !dbg !1278
  store i32 %1, i32* @s, align 4, !dbg !1280
  store i32 0, i32* @customIrp, align 4, !dbg !1281
  %2 = load i32, i32* @customIrp, align 4, !dbg !1282
  store i32 %2, i32* @setEventCalled, align 4, !dbg !1283
  %3 = load i32, i32* @setEventCalled, align 4, !dbg !1284
  store i32 %3, i32* @lowerDriverReturn, align 4, !dbg !1285
  %4 = load i32, i32* @lowerDriverReturn, align 4, !dbg !1286
  store i32 %4, i32* @compRegistered, align 4, !dbg !1287
  %5 = load i32, i32* @compRegistered, align 4, !dbg !1288
  store i32 %5, i32* @compFptr, align 4, !dbg !1289
  %6 = load i32, i32* @compFptr, align 4, !dbg !1290
  store i32 %6, i32* @pended, align 4, !dbg !1291
  ret void, !dbg !1292
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
  call void @llvm.dbg.declare(metadata i32* %d, metadata !1293, metadata !99), !dbg !1294
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !1295
  store i32 %9, i32* %d, align 4, !dbg !1294
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1296, metadata !99), !dbg !1297
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !1298
  store i32 %10, i32* %status, align 4, !dbg !1297
  call void @llvm.dbg.declare(metadata i32* %we_should_unload, metadata !1299, metadata !99), !dbg !1300
  %11 = call i32 @__VERIFIER_nondet_int(), !dbg !1301
  store i32 %11, i32* %we_should_unload, align 4, !dbg !1300
  call void @llvm.dbg.declare(metadata i32* %irp, metadata !1302, metadata !99), !dbg !1303
  %12 = call i32 @__VERIFIER_nondet_int(), !dbg !1304
  store i32 %12, i32* %irp, align 4, !dbg !1303
  call void @llvm.dbg.declare(metadata i32* %pirp__IoStatus__Status, metadata !1305, metadata !99), !dbg !1306
  call void @llvm.dbg.declare(metadata i32* %irp_choice, metadata !1307, metadata !99), !dbg !1308
  %13 = call i32 @__VERIFIER_nondet_int(), !dbg !1309
  store i32 %13, i32* %irp_choice, align 4, !dbg !1308
  call void @llvm.dbg.declare(metadata i32* %devobj, metadata !1310, metadata !99), !dbg !1311
  %14 = call i32 @__VERIFIER_nondet_int(), !dbg !1312
  store i32 %14, i32* %devobj, align 4, !dbg !1311
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp9, metadata !1313, metadata !99), !dbg !1314
  store i32 0, i32* @s, align 4, !dbg !1315
  store i32 0, i32* @UNLOADED, align 4, !dbg !1316
  store i32 0, i32* @NP, align 4, !dbg !1317
  store i32 0, i32* @DC, align 4, !dbg !1318
  store i32 0, i32* @SKIP1, align 4, !dbg !1319
  store i32 0, i32* @SKIP2, align 4, !dbg !1320
  store i32 0, i32* @MPR1, align 4, !dbg !1321
  store i32 0, i32* @MPR3, align 4, !dbg !1322
  store i32 0, i32* @IPC, align 4, !dbg !1323
  store i32 0, i32* @pended, align 4, !dbg !1324
  store i32 0, i32* @compFptr, align 4, !dbg !1325
  store i32 0, i32* @compRegistered, align 4, !dbg !1326
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !1327
  store i32 0, i32* @setEventCalled, align 4, !dbg !1328
  store i32 0, i32* @customIrp, align 4, !dbg !1329
  store i32 0, i32* @myStatus, align 4, !dbg !1330
  store i32 0, i32* @routine, align 4, !dbg !1331
  store i32 0, i32* @pirp, align 4, !dbg !1332
  store i32 0, i32* @Executive, align 4, !dbg !1333
  store i32 0, i32* @KernelMode, align 4, !dbg !1334
  %15 = load i32, i32* %irp, align 4, !dbg !1335
  store i32 %15, i32* @pirp, align 4, !dbg !1338
  store i32 0, i32* @UNLOADED, align 4, !dbg !1339
  store i32 1, i32* @NP, align 4, !dbg !1341
  store i32 2, i32* @DC, align 4, !dbg !1342
  store i32 3, i32* @SKIP1, align 4, !dbg !1343
  store i32 4, i32* @SKIP2, align 4, !dbg !1344
  store i32 5, i32* @MPR1, align 4, !dbg !1345
  store i32 6, i32* @MPR3, align 4, !dbg !1346
  store i32 7, i32* @IPC, align 4, !dbg !1347
  %16 = load i32, i32* @UNLOADED, align 4, !dbg !1348
  store i32 %16, i32* @s, align 4, !dbg !1349
  store i32 0, i32* @pended, align 4, !dbg !1350
  store i32 0, i32* @compFptr, align 4, !dbg !1351
  store i32 0, i32* @compRegistered, align 4, !dbg !1352
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !1353
  store i32 0, i32* @setEventCalled, align 4, !dbg !1354
  store i32 0, i32* @customIrp, align 4, !dbg !1355
  %17 = load i32, i32* %status, align 4, !dbg !1356
  %18 = icmp sge i32 %17, 0, !dbg !1358
  call void @llvm.dbg.declare(metadata i32* %4, metadata !262, metadata !99), !dbg !1359
  call void @llvm.dbg.declare(metadata i32* %5, metadata !264, metadata !99), !dbg !1376
  call void @llvm.dbg.declare(metadata i32* %6, metadata !513, metadata !99), !dbg !1377
  call void @llvm.dbg.declare(metadata i32* %7, metadata !515, metadata !99), !dbg !1378
  call void @llvm.dbg.declare(metadata i32* %2, metadata !812, metadata !99), !dbg !1379
  call void @llvm.dbg.declare(metadata i32* %3, metadata !814, metadata !99), !dbg !1382
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension.i, metadata !816, metadata !99), !dbg !1383
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation.i, metadata !819, metadata !99), !dbg !1384
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation.i, metadata !822, metadata !99), !dbg !1385
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__TargetDeviceObject.i, metadata !825, metadata !99), !dbg !1386
  call void @llvm.dbg.declare(metadata i32* %deviceExtension.i, metadata !828, metadata !99), !dbg !1387
  call void @llvm.dbg.declare(metadata i32* %tmp.i, metadata !830, metadata !99), !dbg !1388
  call void @llvm.dbg.declare(metadata i32* %1, metadata !844, metadata !99), !dbg !1389
  br i1 %18, label %19, label %144, !dbg !1394

; <label>:19                                      ; preds = %0
  %20 = load i32, i32* @NP, align 4, !dbg !1395
  store i32 %20, i32* @s, align 4, !dbg !1396
  store i32 0, i32* @customIrp, align 4, !dbg !1397
  %21 = load i32, i32* @customIrp, align 4, !dbg !1398
  store i32 %21, i32* @setEventCalled, align 4, !dbg !1399
  %22 = load i32, i32* @setEventCalled, align 4, !dbg !1400
  store i32 %22, i32* @lowerDriverReturn, align 4, !dbg !1401
  %23 = load i32, i32* @lowerDriverReturn, align 4, !dbg !1402
  store i32 %23, i32* @compRegistered, align 4, !dbg !1403
  %24 = load i32, i32* @compRegistered, align 4, !dbg !1404
  store i32 %24, i32* @compFptr, align 4, !dbg !1405
  %25 = load i32, i32* @compFptr, align 4, !dbg !1406
  store i32 %25, i32* @pended, align 4, !dbg !1407
  store i32 0, i32* %pirp__IoStatus__Status, align 4, !dbg !1408
  store i32 0, i32* @myStatus, align 4, !dbg !1409
  %26 = load i32, i32* %irp_choice, align 4, !dbg !1410
  %27 = icmp eq i32 %26, 0, !dbg !1412
  br i1 %27, label %28, label %29, !dbg !1413

; <label>:28                                      ; preds = %19
  store i32 -1073741637, i32* %pirp__IoStatus__Status, align 4, !dbg !1414
  store i32 -1073741637, i32* @myStatus, align 4, !dbg !1416
  br label %29, !dbg !1417

; <label>:29                                      ; preds = %28, %19
  %30 = load i32, i32* @NP, align 4, !dbg !1418
  store i32 %30, i32* @s, align 4, !dbg !1421
  store i32 0, i32* @customIrp, align 4, !dbg !1422
  %31 = load i32, i32* @customIrp, align 4, !dbg !1423
  store i32 %31, i32* @setEventCalled, align 4, !dbg !1424
  %32 = load i32, i32* @setEventCalled, align 4, !dbg !1425
  store i32 %32, i32* @lowerDriverReturn, align 4, !dbg !1426
  %33 = load i32, i32* @lowerDriverReturn, align 4, !dbg !1427
  store i32 %33, i32* @compRegistered, align 4, !dbg !1428
  %34 = load i32, i32* @compRegistered, align 4, !dbg !1429
  store i32 %34, i32* @compFptr, align 4, !dbg !1430
  %35 = load i32, i32* @compFptr, align 4, !dbg !1431
  store i32 %35, i32* @pended, align 4, !dbg !1432
  %36 = load i32, i32* %status, align 4, !dbg !1433
  %37 = icmp slt i32 %36, 0, !dbg !1436
  br i1 %37, label %38, label %39, !dbg !1437

; <label>:38                                      ; preds = %29
  store i32 -1, i32* %8, !dbg !1438
  br label %224, !dbg !1438

; <label>:39                                      ; preds = %29
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_1, metadata !1440, metadata !99), !dbg !1441
  %40 = call i32 @__VERIFIER_nondet_int(), !dbg !1442
  store i32 %40, i32* %tmp_ndt_1, align 4, !dbg !1443
  %41 = load i32, i32* %tmp_ndt_1, align 4, !dbg !1444
  %42 = icmp eq i32 %41, 0, !dbg !1445
  br i1 %42, label %43, label %44, !dbg !1446

; <label>:43                                      ; preds = %39
  br label %67, !dbg !1447

; <label>:44                                      ; preds = %39
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_2, metadata !1449, metadata !99), !dbg !1450
  %45 = call i32 @__VERIFIER_nondet_int(), !dbg !1451
  store i32 %45, i32* %tmp_ndt_2, align 4, !dbg !1452
  %46 = load i32, i32* %tmp_ndt_2, align 4, !dbg !1453
  %47 = icmp eq i32 %46, 2, !dbg !1454
  br i1 %47, label %48, label %49, !dbg !1455

; <label>:48                                      ; preds = %44
  br label %84, !dbg !1456

; <label>:49                                      ; preds = %44
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_3, metadata !1458, metadata !99), !dbg !1459
  %50 = call i32 @__VERIFIER_nondet_int(), !dbg !1460
  store i32 %50, i32* %tmp_ndt_3, align 4, !dbg !1461
  %51 = load i32, i32* %tmp_ndt_3, align 4, !dbg !1462
  %52 = icmp eq i32 %51, 3, !dbg !1463
  br i1 %52, label %53, label %54, !dbg !1464

; <label>:53                                      ; preds = %49
  br label %88, !dbg !1465

; <label>:54                                      ; preds = %49
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_4, metadata !1467, metadata !99), !dbg !1468
  %55 = call i32 @__VERIFIER_nondet_int(), !dbg !1469
  store i32 %55, i32* %tmp_ndt_4, align 4, !dbg !1470
  %56 = load i32, i32* %tmp_ndt_4, align 4, !dbg !1471
  %57 = icmp eq i32 %56, 4, !dbg !1472
  br i1 %57, label %58, label %59, !dbg !1473

; <label>:58                                      ; preds = %54
  br label %92, !dbg !1474

; <label>:59                                      ; preds = %54
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_5, metadata !1476, metadata !99), !dbg !1477
  %60 = call i32 @__VERIFIER_nondet_int(), !dbg !1478
  store i32 %60, i32* %tmp_ndt_5, align 4, !dbg !1479
  %61 = load i32, i32* %tmp_ndt_5, align 4, !dbg !1480
  %62 = icmp eq i32 %61, 12, !dbg !1481
  br i1 %62, label %63, label %64, !dbg !1482

; <label>:63                                      ; preds = %59
  br label %96, !dbg !1483

; <label>:64                                      ; preds = %59
  br label %128, !dbg !1485
                                                  ; No predecessors!
  br i1 false, label %66, label %129, !dbg !1486

; <label>:66                                      ; preds = %65
  br label %67, !dbg !1487

; <label>:67                                      ; preds = %66, %43
  %68 = load i32, i32* %devobj, align 4, !dbg !1488
  %69 = load i32, i32* @pirp, align 4, !dbg !1489
  %70 = bitcast i32* %6 to i8*, !dbg !1490
  call void @llvm.lifetime.start(i64 4, i8* %70), !dbg !1490
  %71 = bitcast i32* %7 to i8*, !dbg !1490
  call void @llvm.lifetime.start(i64 4, i8* %71), !dbg !1490
  store i32 %68, i32* %6, align 4, !dbg !1490
  store i32 %69, i32* %7, align 4, !dbg !1490
  store i32 0, i32* @myStatus, align 4, !dbg !1491
  %72 = load i32, i32* %7, align 4, !dbg !1492
  %73 = bitcast i32* %4 to i8*, !dbg !1493
  call void @llvm.lifetime.start(i64 4, i8* %73) #4, !dbg !1493
  %74 = bitcast i32* %5 to i8*, !dbg !1493
  call void @llvm.lifetime.start(i64 4, i8* %74) #4, !dbg !1493
  store i32 %72, i32* %4, align 4, !dbg !1493
  store i32 0, i32* %5, align 4, !dbg !1493
  %75 = load i32, i32* @s, align 4, !dbg !1494
  %76 = load i32, i32* @NP, align 4, !dbg !1495
  %77 = icmp eq i32 %75, %76, !dbg !1496
  br i1 %77, label %DiskPerfCreate.exit, label %78, !dbg !1497

; <label>:78                                      ; preds = %67
  call void (...) @__VERIFIER_error() #6, !dbg !1498
  unreachable, !dbg !1498

DiskPerfCreate.exit:                              ; preds = %67
  %79 = load i32, i32* @DC, align 4, !dbg !1500
  store i32 %79, i32* @s, align 4, !dbg !1501
  %80 = bitcast i32* %4 to i8*, !dbg !1502
  call void @llvm.lifetime.end(i64 4, i8* %80) #4, !dbg !1502
  %81 = bitcast i32* %5 to i8*, !dbg !1502
  call void @llvm.lifetime.end(i64 4, i8* %81) #4, !dbg !1502
  %82 = bitcast i32* %6 to i8*, !dbg !1503
  call void @llvm.lifetime.end(i64 4, i8* %82), !dbg !1503
  %83 = bitcast i32* %7 to i8*, !dbg !1503
  call void @llvm.lifetime.end(i64 4, i8* %83), !dbg !1503
  store i32 0, i32* %status, align 4, !dbg !1504
  br label %130, !dbg !1505

; <label>:84                                      ; preds = %48
  %85 = load i32, i32* %devobj, align 4, !dbg !1506
  %86 = load i32, i32* @pirp, align 4, !dbg !1508
  %87 = call i32 @DiskPerfDeviceControl(i32 %85, i32 %86), !dbg !1509
  store i32 %87, i32* %status, align 4, !dbg !1510
  br label %130, !dbg !1511

; <label>:88                                      ; preds = %53
  %89 = load i32, i32* %devobj, align 4, !dbg !1512
  %90 = load i32, i32* @pirp, align 4, !dbg !1514
  %91 = call i32 @DiskPerfDispatchPnp(i32 %89, i32 %90), !dbg !1515
  store i32 %91, i32* %status, align 4, !dbg !1516
  br label %130, !dbg !1517

; <label>:92                                      ; preds = %58
  %93 = load i32, i32* %devobj, align 4, !dbg !1518
  %94 = load i32, i32* @pirp, align 4, !dbg !1520
  %95 = call i32 @DiskPerfDispatchPower(i32 %93, i32 %94), !dbg !1521
  store i32 %95, i32* %status, align 4, !dbg !1522
  br label %130, !dbg !1523

; <label>:96                                      ; preds = %63
  %97 = load i32, i32* %devobj, align 4, !dbg !1524
  %98 = load i32, i32* @pirp, align 4, !dbg !1525
  %99 = bitcast i32* %2 to i8*, !dbg !1526
  call void @llvm.lifetime.start(i64 4, i8* %99), !dbg !1526
  %100 = bitcast i32* %3 to i8*, !dbg !1526
  call void @llvm.lifetime.start(i64 4, i8* %100), !dbg !1526
  %101 = bitcast i32* %DeviceObject__DeviceExtension.i to i8*, !dbg !1526
  call void @llvm.lifetime.start(i64 4, i8* %101), !dbg !1526
  %102 = bitcast i32* %Irp__CurrentLocation.i to i8*, !dbg !1526
  call void @llvm.lifetime.start(i64 4, i8* %102), !dbg !1526
  %103 = bitcast i32* %Irp__Tail__Overlay__CurrentStackLocation.i to i8*, !dbg !1526
  call void @llvm.lifetime.start(i64 4, i8* %103), !dbg !1526
  %104 = bitcast i32* %deviceExtension__TargetDeviceObject.i to i8*, !dbg !1526
  call void @llvm.lifetime.start(i64 4, i8* %104), !dbg !1526
  %105 = bitcast i32* %deviceExtension.i to i8*, !dbg !1526
  call void @llvm.lifetime.start(i64 4, i8* %105), !dbg !1526
  %106 = bitcast i32* %tmp.i to i8*, !dbg !1526
  call void @llvm.lifetime.start(i64 4, i8* %106), !dbg !1526
  store i32 %97, i32* %2, align 4, !dbg !1526
  store i32 %98, i32* %3, align 4, !dbg !1526
  %107 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1527
  store i32 %107, i32* %DeviceObject__DeviceExtension.i, align 4, !dbg !1383
  %108 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1528
  store i32 %108, i32* %Irp__CurrentLocation.i, align 4, !dbg !1384
  %109 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1529
  store i32 %109, i32* %Irp__Tail__Overlay__CurrentStackLocation.i, align 4, !dbg !1385
  %110 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1530
  store i32 %110, i32* %deviceExtension__TargetDeviceObject.i, align 4, !dbg !1386
  %111 = load i32, i32* %DeviceObject__DeviceExtension.i, align 4, !dbg !1531
  store i32 %111, i32* %deviceExtension.i, align 4, !dbg !1532
  %112 = load i32, i32* %Irp__CurrentLocation.i, align 4, !dbg !1533
  %113 = add nsw i32 %112, 1, !dbg !1533
  store i32 %113, i32* %Irp__CurrentLocation.i, align 4, !dbg !1533
  %114 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation.i, align 4, !dbg !1534
  %115 = add nsw i32 %114, 1, !dbg !1534
  store i32 %115, i32* %Irp__Tail__Overlay__CurrentStackLocation.i, align 4, !dbg !1534
  %116 = load i32, i32* %deviceExtension__TargetDeviceObject.i, align 4, !dbg !1535
  %117 = load i32, i32* %3, align 4, !dbg !1536
  %118 = call i32 @IofCallDriver(i32 %116, i32 %117) #4, !dbg !1537
  store i32 %118, i32* %tmp.i, align 4, !dbg !1538
  %119 = load i32, i32* %tmp.i, align 4, !dbg !1539
  %120 = bitcast i32* %2 to i8*, !dbg !1540
  call void @llvm.lifetime.end(i64 4, i8* %120), !dbg !1540
  %121 = bitcast i32* %3 to i8*, !dbg !1540
  call void @llvm.lifetime.end(i64 4, i8* %121), !dbg !1540
  %122 = bitcast i32* %DeviceObject__DeviceExtension.i to i8*, !dbg !1540
  call void @llvm.lifetime.end(i64 4, i8* %122), !dbg !1540
  %123 = bitcast i32* %Irp__CurrentLocation.i to i8*, !dbg !1540
  call void @llvm.lifetime.end(i64 4, i8* %123), !dbg !1540
  %124 = bitcast i32* %Irp__Tail__Overlay__CurrentStackLocation.i to i8*, !dbg !1540
  call void @llvm.lifetime.end(i64 4, i8* %124), !dbg !1540
  %125 = bitcast i32* %deviceExtension__TargetDeviceObject.i to i8*, !dbg !1540
  call void @llvm.lifetime.end(i64 4, i8* %125), !dbg !1540
  %126 = bitcast i32* %deviceExtension.i to i8*, !dbg !1540
  call void @llvm.lifetime.end(i64 4, i8* %126), !dbg !1540
  %127 = bitcast i32* %tmp.i to i8*, !dbg !1540
  call void @llvm.lifetime.end(i64 4, i8* %127), !dbg !1540
  store i32 %119, i32* %status, align 4, !dbg !1541
  br label %130, !dbg !1542

; <label>:128                                     ; preds = %64
  store i32 -1, i32* %8, !dbg !1543
  br label %224, !dbg !1543

; <label>:129                                     ; preds = %65
  br label %130, !dbg !1544

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
  %137 = load i32, i32* %we_should_unload, align 4, !dbg !1545
  %138 = icmp ne i32 %137, 0, !dbg !1545
  br i1 %138, label %139, label %143, !dbg !1546

; <label>:139                                     ; preds = %136
  %140 = load i32, i32* %d, align 4, !dbg !1547
  %141 = bitcast i32* %1 to i8*, !dbg !1548
  call void @llvm.lifetime.start(i64 4, i8* %141), !dbg !1548
  store i32 %140, i32* %1, align 4, !dbg !1548
  %142 = bitcast i32* %1 to i8*, !dbg !1549
  call void @llvm.lifetime.end(i64 4, i8* %142), !dbg !1549
  br label %143, !dbg !1550

; <label>:143                                     ; preds = %139, %136
  br label %144, !dbg !1551

; <label>:144                                     ; preds = %143, %0
  %145 = load i32, i32* @pended, align 4, !dbg !1552
  %146 = icmp eq i32 %145, 1, !dbg !1554
  br i1 %146, label %147, label %155, !dbg !1555

; <label>:147                                     ; preds = %144
  %148 = load i32, i32* @s, align 4, !dbg !1556
  %149 = load i32, i32* @NP, align 4, !dbg !1559
  %150 = icmp eq i32 %148, %149, !dbg !1560
  br i1 %150, label %151, label %153, !dbg !1561

; <label>:151                                     ; preds = %147
  %152 = load i32, i32* @NP, align 4, !dbg !1562
  store i32 %152, i32* @s, align 4, !dbg !1564
  br label %154, !dbg !1565

; <label>:153                                     ; preds = %147
  br label %156, !dbg !1566

; <label>:154                                     ; preds = %151
  br label %222, !dbg !1568

; <label>:155                                     ; preds = %144
  br label %156, !dbg !1569

; <label>:156                                     ; preds = %155, %153
  %157 = load i32, i32* @pended, align 4, !dbg !1570
  %158 = icmp eq i32 %157, 1, !dbg !1573
  br i1 %158, label %159, label %167, !dbg !1574

; <label>:159                                     ; preds = %156
  %160 = load i32, i32* @s, align 4, !dbg !1575
  %161 = load i32, i32* @MPR3, align 4, !dbg !1578
  %162 = icmp eq i32 %160, %161, !dbg !1579
  br i1 %162, label %163, label %165, !dbg !1580

; <label>:163                                     ; preds = %159
  %164 = load i32, i32* @MPR3, align 4, !dbg !1581
  store i32 %164, i32* @s, align 4, !dbg !1583
  br label %166, !dbg !1584

; <label>:165                                     ; preds = %159
  br label %168, !dbg !1585

; <label>:166                                     ; preds = %163
  br label %221, !dbg !1587

; <label>:167                                     ; preds = %156
  br label %168, !dbg !1588

; <label>:168                                     ; preds = %167, %165
  %169 = load i32, i32* @s, align 4, !dbg !1589
  %170 = load i32, i32* @UNLOADED, align 4, !dbg !1592
  %171 = icmp ne i32 %169, %170, !dbg !1593
  br i1 %171, label %172, label %220, !dbg !1594

; <label>:172                                     ; preds = %168
  %173 = load i32, i32* %status, align 4, !dbg !1595
  %174 = icmp ne i32 %173, -1, !dbg !1598
  br i1 %174, label %175, label %219, !dbg !1599

; <label>:175                                     ; preds = %172
  %176 = load i32, i32* @s, align 4, !dbg !1600
  %177 = load i32, i32* @SKIP2, align 4, !dbg !1603
  %178 = icmp ne i32 %176, %177, !dbg !1604
  br i1 %178, label %179, label %192, !dbg !1605

; <label>:179                                     ; preds = %175
  %180 = load i32, i32* @s, align 4, !dbg !1606
  %181 = load i32, i32* @IPC, align 4, !dbg !1609
  %182 = icmp ne i32 %180, %181, !dbg !1610
  br i1 %182, label %183, label %190, !dbg !1611

; <label>:183                                     ; preds = %179
  %184 = load i32, i32* @s, align 4, !dbg !1612
  %185 = load i32, i32* @DC, align 4, !dbg !1615
  %186 = icmp ne i32 %184, %185, !dbg !1616
  br i1 %186, label %187, label %188, !dbg !1617

; <label>:187                                     ; preds = %183
  call void (...) @__VERIFIER_error() #6, !dbg !1618
  unreachable, !dbg !1618

errorFn.exit2:                                    ; No predecessors!
  br label %189, !dbg !1622

; <label>:188                                     ; preds = %183
  br label %193, !dbg !1623

; <label>:189                                     ; preds = %errorFn.exit2
  br label %191, !dbg !1625

; <label>:190                                     ; preds = %179
  br label %193, !dbg !1626

; <label>:191                                     ; preds = %189
  br label %218, !dbg !1628

; <label>:192                                     ; preds = %175
  br label %193, !dbg !1629

; <label>:193                                     ; preds = %192, %190, %188
  %194 = load i32, i32* @pended, align 4, !dbg !1630
  %195 = icmp eq i32 %194, 1, !dbg !1633
  br i1 %195, label %196, label %201, !dbg !1634

; <label>:196                                     ; preds = %193
  %197 = load i32, i32* %status, align 4, !dbg !1635
  %198 = icmp ne i32 %197, 259, !dbg !1638
  br i1 %198, label %199, label %200, !dbg !1639

; <label>:199                                     ; preds = %196
  call void (...) @__VERIFIER_error() #6, !dbg !1640
  unreachable, !dbg !1640

errorFn.exit3:                                    ; No predecessors!
  br label %200, !dbg !1644

; <label>:200                                     ; preds = %errorFn.exit3, %196
  br label %217, !dbg !1645

; <label>:201                                     ; preds = %193
  %202 = load i32, i32* @s, align 4, !dbg !1646
  %203 = load i32, i32* @DC, align 4, !dbg !1649
  %204 = icmp eq i32 %202, %203, !dbg !1650
  br i1 %204, label %205, label %210, !dbg !1651

; <label>:205                                     ; preds = %201
  %206 = load i32, i32* %status, align 4, !dbg !1652
  %207 = icmp eq i32 %206, 259, !dbg !1655
  br i1 %207, label %208, label %209, !dbg !1656

; <label>:208                                     ; preds = %205
  call void (...) @__VERIFIER_error() #6, !dbg !1657
  unreachable, !dbg !1657

errorFn.exit1:                                    ; No predecessors!
  br label %209, !dbg !1661

; <label>:209                                     ; preds = %errorFn.exit1, %205
  br label %216, !dbg !1662

; <label>:210                                     ; preds = %201
  %211 = load i32, i32* %status, align 4, !dbg !1663
  %212 = load i32, i32* @lowerDriverReturn, align 4, !dbg !1666
  %213 = icmp ne i32 %211, %212, !dbg !1667
  br i1 %213, label %214, label %215, !dbg !1668

; <label>:214                                     ; preds = %210
  call void (...) @__VERIFIER_error() #6, !dbg !1669
  unreachable, !dbg !1669

errorFn.exit:                                     ; No predecessors!
  br label %215, !dbg !1673

; <label>:215                                     ; preds = %errorFn.exit, %210
  br label %216

; <label>:216                                     ; preds = %215, %209
  br label %217

; <label>:217                                     ; preds = %216, %200
  br label %218

; <label>:218                                     ; preds = %217, %191
  br label %219, !dbg !1674

; <label>:219                                     ; preds = %218, %172
  br label %220, !dbg !1675

; <label>:220                                     ; preds = %219, %168
  br label %221

; <label>:221                                     ; preds = %220, %166
  br label %222

; <label>:222                                     ; preds = %221, %154
  %223 = load i32, i32* %status, align 4, !dbg !1676
  store i32 %223, i32* %8, !dbg !1677
  br label %224, !dbg !1677

; <label>:224                                     ; preds = %222, %128, %38
  %225 = load i32, i32* %8, !dbg !1678
  ret i32 %225, !dbg !1678
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !964, metadata !99), !dbg !1679
  store i32 %DeviceObject, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !970, metadata !99), !dbg !1680
  store i32 %InputBuffer, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !972, metadata !99), !dbg !1681
  store i32 %InputBufferLength, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !974, metadata !99), !dbg !1682
  store i32 %OutputBuffer, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !976, metadata !99), !dbg !1683
  store i32 %OutputBufferLength, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !978, metadata !99), !dbg !1684
  store i32 %InternalDeviceIoControl, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !980, metadata !99), !dbg !1685
  store i32 %Event, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !982, metadata !99), !dbg !1686
  store i32 %IoStatusBlock, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !984, metadata !99), !dbg !1687
  call void @llvm.dbg.declare(metadata i32* %malloc_ret, metadata !986, metadata !99), !dbg !1688
  %11 = call i32 @__VERIFIER_nondet_int(), !dbg !1689
  store i32 %11, i32* %malloc_ret, align 4, !dbg !1688
  store i32 1, i32* @customIrp, align 4, !dbg !1690
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_7, metadata !988, metadata !99), !dbg !1691
  %12 = call i32 @__VERIFIER_nondet_int(), !dbg !1692
  store i32 %12, i32* %tmp_ndt_7, align 4, !dbg !1693
  %13 = load i32, i32* %tmp_ndt_7, align 4, !dbg !1694
  %14 = icmp eq i32 %13, 0, !dbg !1695
  br i1 %14, label %15, label %16, !dbg !1696

; <label>:15                                      ; preds = %0
  br label %19, !dbg !1697

; <label>:16                                      ; preds = %0
  br label %21, !dbg !1699
                                                  ; No predecessors!
  br i1 false, label %18, label %22, !dbg !1700

; <label>:18                                      ; preds = %17
  br label %19, !dbg !1701

; <label>:19                                      ; preds = %18, %15
  %20 = load i32, i32* %malloc_ret, align 4, !dbg !1702
  store i32 %20, i32* %1, !dbg !1703
  br label %24, !dbg !1703

; <label>:21                                      ; preds = %16
  store i32 0, i32* %1, !dbg !1704
  br label %24, !dbg !1704

; <label>:22                                      ; preds = %17
  br label %23

; <label>:23                                      ; preds = %22
  br label %24

; <label>:24                                      ; preds = %23, %21, %19
  %25 = load i32, i32* %1, !dbg !1705
  ret i32 %25, !dbg !1705
}

; Function Attrs: nounwind ssp uwtable
define void @stubMoreProcessingRequired() #0 {
  %1 = load i32, i32* @s, align 4, !dbg !1706
  %2 = load i32, i32* @NP, align 4, !dbg !1709
  %3 = icmp eq i32 %1, %2, !dbg !1710
  br i1 %3, label %4, label %6, !dbg !1711

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* @MPR1, align 4, !dbg !1712
  store i32 %5, i32* @s, align 4, !dbg !1714
  br label %7, !dbg !1715

; <label>:6                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !1716
  unreachable, !dbg !1716

errorFn.exit:                                     ; No predecessors!
  br label %7

; <label>:7                                       ; preds = %errorFn.exit, %4
  ret void, !dbg !1720
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
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1721, metadata !99), !dbg !1722
  store i32 %Irp, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1723, metadata !99), !dbg !1724
  call void @llvm.dbg.declare(metadata i32* %returnVal2, metadata !1725, metadata !99), !dbg !1726
  call void @llvm.dbg.declare(metadata i32* %compRetStatus, metadata !1727, metadata !99), !dbg !1728
  call void @llvm.dbg.declare(metadata i32* %lcontext, metadata !1729, metadata !99), !dbg !1730
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !1731
  store i32 %9, i32* %lcontext, align 4, !dbg !1730
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp7, metadata !1732, metadata !99), !dbg !1733
  %10 = load i32, i32* @compRegistered, align 4, !dbg !1734
  %11 = icmp ne i32 %10, 0, !dbg !1734
  call void @llvm.dbg.declare(metadata i32* %1, metadata !195, metadata !99), !dbg !1737
  call void @llvm.dbg.declare(metadata i32* %2, metadata !197, metadata !99), !dbg !1744
  call void @llvm.dbg.declare(metadata i32* %3, metadata !199, metadata !99), !dbg !1745
  call void @llvm.dbg.declare(metadata i32* %l.i.i, metadata !201, metadata !99), !dbg !1746
  call void @llvm.dbg.declare(metadata i32* %4, metadata !174, metadata !99), !dbg !1747
  call void @llvm.dbg.declare(metadata i32* %5, metadata !176, metadata !99), !dbg !1748
  call void @llvm.dbg.declare(metadata i32* %6, metadata !178, metadata !99), !dbg !1749
  call void @llvm.dbg.declare(metadata i32* %Event.i, metadata !180, metadata !99), !dbg !1750
  br i1 %11, label %12, label %56, !dbg !1751

; <label>:12                                      ; preds = %0
  %13 = load i32, i32* @routine, align 4, !dbg !1752
  %14 = icmp eq i32 %13, 0, !dbg !1753
  br i1 %14, label %15, label %39, !dbg !1754

; <label>:15                                      ; preds = %12
  %16 = load i32, i32* %7, align 4, !dbg !1755
  %17 = load i32, i32* %8, align 4, !dbg !1756
  %18 = load i32, i32* %lcontext, align 4, !dbg !1757
  %19 = bitcast i32* %4 to i8*, !dbg !1758
  call void @llvm.lifetime.start(i64 4, i8* %19), !dbg !1758
  %20 = bitcast i32* %5 to i8*, !dbg !1758
  call void @llvm.lifetime.start(i64 4, i8* %20), !dbg !1758
  %21 = bitcast i32* %6 to i8*, !dbg !1758
  call void @llvm.lifetime.start(i64 4, i8* %21), !dbg !1758
  %22 = bitcast i32* %Event.i to i8*, !dbg !1758
  call void @llvm.lifetime.start(i64 4, i8* %22), !dbg !1758
  store i32 %16, i32* %4, align 4, !dbg !1758
  store i32 %17, i32* %5, align 4, !dbg !1758
  store i32 %18, i32* %6, align 4, !dbg !1758
  %23 = load i32, i32* %6, align 4, !dbg !1759
  store i32 %23, i32* %Event.i, align 4, !dbg !1760
  %24 = load i32, i32* %Event.i, align 4, !dbg !1761
  %25 = bitcast i32* %1 to i8*, !dbg !1762
  call void @llvm.lifetime.start(i64 4, i8* %25) #4, !dbg !1762
  %26 = bitcast i32* %2 to i8*, !dbg !1762
  call void @llvm.lifetime.start(i64 4, i8* %26) #4, !dbg !1762
  %27 = bitcast i32* %3 to i8*, !dbg !1762
  call void @llvm.lifetime.start(i64 4, i8* %27) #4, !dbg !1762
  %28 = bitcast i32* %l.i.i to i8*, !dbg !1762
  call void @llvm.lifetime.start(i64 4, i8* %28) #4, !dbg !1762
  store i32 %24, i32* %1, align 4, !dbg !1762
  store i32 0, i32* %2, align 4, !dbg !1762
  store i32 0, i32* %3, align 4, !dbg !1762
  %29 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1763
  store i32 %29, i32* %l.i.i, align 4, !dbg !1746
  store i32 1, i32* @setEventCalled, align 4, !dbg !1764
  %30 = load i32, i32* %l.i.i, align 4, !dbg !1765
  %31 = bitcast i32* %1 to i8*, !dbg !1766
  call void @llvm.lifetime.end(i64 4, i8* %31) #4, !dbg !1766
  %32 = bitcast i32* %2 to i8*, !dbg !1766
  call void @llvm.lifetime.end(i64 4, i8* %32) #4, !dbg !1766
  %33 = bitcast i32* %3 to i8*, !dbg !1766
  call void @llvm.lifetime.end(i64 4, i8* %33) #4, !dbg !1766
  %34 = bitcast i32* %l.i.i to i8*, !dbg !1766
  call void @llvm.lifetime.end(i64 4, i8* %34) #4, !dbg !1766
  %35 = bitcast i32* %4 to i8*, !dbg !1767
  call void @llvm.lifetime.end(i64 4, i8* %35), !dbg !1767
  %36 = bitcast i32* %5 to i8*, !dbg !1767
  call void @llvm.lifetime.end(i64 4, i8* %36), !dbg !1767
  %37 = bitcast i32* %6 to i8*, !dbg !1767
  call void @llvm.lifetime.end(i64 4, i8* %37), !dbg !1767
  %38 = bitcast i32* %Event.i to i8*, !dbg !1767
  call void @llvm.lifetime.end(i64 4, i8* %38), !dbg !1767
  store i32 -1073741802, i32* %compRetStatus, align 4, !dbg !1768
  br label %44, !dbg !1769

; <label>:39                                      ; preds = %12
  %40 = load i32, i32* %7, align 4, !dbg !1770
  %41 = load i32, i32* %8, align 4, !dbg !1773
  %42 = load i32, i32* %lcontext, align 4, !dbg !1774
  %43 = call i32 @DiskPerfIoCompletion(i32 %40, i32 %41, i32 %42), !dbg !1775
  store i32 %43, i32* %compRetStatus, align 4, !dbg !1776
  br label %44

; <label>:44                                      ; preds = %39, %15
  %45 = load i32, i32* %compRetStatus, align 4, !dbg !1777
  %46 = sext i32 %45 to i64, !dbg !1779
  store i64 %46, i64* %__cil_tmp7, align 8, !dbg !1780
  %47 = load i64, i64* %__cil_tmp7, align 8, !dbg !1781
  %48 = icmp eq i64 %47, -1073741802, !dbg !1783
  br i1 %48, label %49, label %55, !dbg !1784

; <label>:49                                      ; preds = %44
  %50 = load i32, i32* @s, align 4, !dbg !1785
  %51 = load i32, i32* @NP, align 4, !dbg !1789
  %52 = icmp eq i32 %50, %51, !dbg !1790
  br i1 %52, label %stubMoreProcessingRequired.exit, label %53, !dbg !1791

; <label>:53                                      ; preds = %49
  call void (...) @__VERIFIER_error() #6, !dbg !1792
  unreachable, !dbg !1792

stubMoreProcessingRequired.exit:                  ; preds = %49
  %54 = load i32, i32* @MPR1, align 4, !dbg !1794
  store i32 %54, i32* @s, align 4, !dbg !1795
  br label %55, !dbg !1796

; <label>:55                                      ; preds = %stubMoreProcessingRequired.exit, %44
  br label %56, !dbg !1797

; <label>:56                                      ; preds = %55, %0
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_8, metadata !1798, metadata !99), !dbg !1799
  %57 = call i32 @__VERIFIER_nondet_int(), !dbg !1800
  store i32 %57, i32* %tmp_ndt_8, align 4, !dbg !1801
  %58 = load i32, i32* %tmp_ndt_8, align 4, !dbg !1802
  %59 = icmp eq i32 %58, 0, !dbg !1804
  br i1 %59, label %60, label %61, !dbg !1805

; <label>:60                                      ; preds = %56
  br label %69, !dbg !1806

; <label>:61                                      ; preds = %56
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_9, metadata !1808, metadata !99), !dbg !1810
  %62 = call i32 @__VERIFIER_nondet_int(), !dbg !1811
  store i32 %62, i32* %tmp_ndt_9, align 4, !dbg !1812
  %63 = load i32, i32* %tmp_ndt_9, align 4, !dbg !1813
  %64 = icmp eq i32 %63, 1, !dbg !1815
  br i1 %64, label %65, label %66, !dbg !1816

; <label>:65                                      ; preds = %61
  br label %70, !dbg !1817

; <label>:66                                      ; preds = %61
  br label %71, !dbg !1819
                                                  ; No predecessors!
  br i1 false, label %68, label %72, !dbg !1821

; <label>:68                                      ; preds = %67
  br label %69, !dbg !1822

; <label>:69                                      ; preds = %68, %60
  store i32 0, i32* %returnVal2, align 4, !dbg !1824
  br label %73, !dbg !1826

; <label>:70                                      ; preds = %65
  store i32 -1073741823, i32* %returnVal2, align 4, !dbg !1827
  br label %73, !dbg !1828

; <label>:71                                      ; preds = %66
  store i32 259, i32* %returnVal2, align 4, !dbg !1829
  br label %73, !dbg !1830

; <label>:72                                      ; preds = %67
  br label %73, !dbg !1831

; <label>:73                                      ; preds = %72, %71, %70, %69
  br label %74

; <label>:74                                      ; preds = %73
  br label %75

; <label>:75                                      ; preds = %74
  br label %76

; <label>:76                                      ; preds = %75
  %77 = load i32, i32* @s, align 4, !dbg !1832
  %78 = load i32, i32* @NP, align 4, !dbg !1834
  %79 = icmp eq i32 %77, %78, !dbg !1835
  br i1 %79, label %80, label %83, !dbg !1836

; <label>:80                                      ; preds = %76
  %81 = load i32, i32* @IPC, align 4, !dbg !1837
  store i32 %81, i32* @s, align 4, !dbg !1839
  %82 = load i32, i32* %returnVal2, align 4, !dbg !1840
  store i32 %82, i32* @lowerDriverReturn, align 4, !dbg !1841
  br label %107, !dbg !1842

; <label>:83                                      ; preds = %76
  %84 = load i32, i32* @s, align 4, !dbg !1843
  %85 = load i32, i32* @MPR1, align 4, !dbg !1846
  %86 = icmp eq i32 %84, %85, !dbg !1847
  br i1 %86, label %87, label %97, !dbg !1848

; <label>:87                                      ; preds = %83
  %88 = load i32, i32* %returnVal2, align 4, !dbg !1849
  %89 = icmp eq i32 %88, 259, !dbg !1852
  br i1 %89, label %90, label %93, !dbg !1853

; <label>:90                                      ; preds = %87
  %91 = load i32, i32* @MPR3, align 4, !dbg !1854
  store i32 %91, i32* @s, align 4, !dbg !1856
  %92 = load i32, i32* %returnVal2, align 4, !dbg !1857
  store i32 %92, i32* @lowerDriverReturn, align 4, !dbg !1858
  br label %96, !dbg !1859

; <label>:93                                      ; preds = %87
  %94 = load i32, i32* @NP, align 4, !dbg !1860
  store i32 %94, i32* @s, align 4, !dbg !1862
  %95 = load i32, i32* %returnVal2, align 4, !dbg !1863
  store i32 %95, i32* @lowerDriverReturn, align 4, !dbg !1864
  br label %96

; <label>:96                                      ; preds = %93, %90
  br label %106, !dbg !1865

; <label>:97                                      ; preds = %83
  %98 = load i32, i32* @s, align 4, !dbg !1866
  %99 = load i32, i32* @SKIP1, align 4, !dbg !1869
  %100 = icmp eq i32 %98, %99, !dbg !1870
  br i1 %100, label %101, label %104, !dbg !1871

; <label>:101                                     ; preds = %97
  %102 = load i32, i32* @SKIP2, align 4, !dbg !1872
  store i32 %102, i32* @s, align 4, !dbg !1874
  %103 = load i32, i32* %returnVal2, align 4, !dbg !1875
  store i32 %103, i32* @lowerDriverReturn, align 4, !dbg !1876
  br label %105, !dbg !1877

; <label>:104                                     ; preds = %97
  call void (...) @__VERIFIER_error() #6, !dbg !1878
  unreachable, !dbg !1878

errorFn.exit:                                     ; No predecessors!
  br label %105

; <label>:105                                     ; preds = %errorFn.exit, %101
  br label %106

; <label>:106                                     ; preds = %105, %96
  br label %107

; <label>:107                                     ; preds = %106, %80
  %108 = load i32, i32* %returnVal2, align 4, !dbg !1882
  ret i32 %108, !dbg !1883
}

; Function Attrs: nounwind ssp uwtable
define i32 @KeSetEvent(i32 %Event, i32 %Increment, i32 %Wait) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 %Event, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !195, metadata !99), !dbg !1884
  store i32 %Increment, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !197, metadata !99), !dbg !1885
  store i32 %Wait, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !199, metadata !99), !dbg !1886
  call void @llvm.dbg.declare(metadata i32* %l, metadata !201, metadata !99), !dbg !1887
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !1888
  store i32 %4, i32* %l, align 4, !dbg !1887
  store i32 1, i32* @setEventCalled, align 4, !dbg !1889
  %5 = load i32, i32* %l, align 4, !dbg !1890
  ret i32 %5, !dbg !1891
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1892, metadata !99), !dbg !1893
  store i32 %WaitReason, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1894, metadata !99), !dbg !1895
  store i32 %WaitMode, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1896, metadata !99), !dbg !1897
  store i32 %Alertable, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1898, metadata !99), !dbg !1899
  store i32 %Timeout, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1900, metadata !99), !dbg !1901
  %7 = load i32, i32* @s, align 4, !dbg !1902
  %8 = load i32, i32* @MPR3, align 4, !dbg !1905
  %9 = icmp eq i32 %7, %8, !dbg !1906
  br i1 %9, label %10, label %17, !dbg !1907

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* @setEventCalled, align 4, !dbg !1908
  %12 = icmp eq i32 %11, 1, !dbg !1911
  br i1 %12, label %13, label %15, !dbg !1912

; <label>:13                                      ; preds = %10
  %14 = load i32, i32* @NP, align 4, !dbg !1913
  store i32 %14, i32* @s, align 4, !dbg !1915
  store i32 0, i32* @setEventCalled, align 4, !dbg !1916
  br label %16, !dbg !1917

; <label>:15                                      ; preds = %10
  br label %18, !dbg !1918

; <label>:16                                      ; preds = %13
  br label %30, !dbg !1920

; <label>:17                                      ; preds = %0
  br label %18, !dbg !1921

; <label>:18                                      ; preds = %17, %15
  %19 = load i32, i32* @customIrp, align 4, !dbg !1922
  %20 = icmp eq i32 %19, 1, !dbg !1925
  br i1 %20, label %21, label %23, !dbg !1926

; <label>:21                                      ; preds = %18
  %22 = load i32, i32* @NP, align 4, !dbg !1927
  store i32 %22, i32* @s, align 4, !dbg !1929
  store i32 0, i32* @customIrp, align 4, !dbg !1930
  br label %29, !dbg !1931

; <label>:23                                      ; preds = %18
  %24 = load i32, i32* @s, align 4, !dbg !1932
  %25 = load i32, i32* @MPR3, align 4, !dbg !1935
  %26 = icmp eq i32 %24, %25, !dbg !1936
  br i1 %26, label %27, label %28, !dbg !1937

; <label>:27                                      ; preds = %23
  call void (...) @__VERIFIER_error() #6, !dbg !1938
  unreachable, !dbg !1938

errorFn.exit:                                     ; No predecessors!
  br label %28, !dbg !1942

; <label>:28                                      ; preds = %errorFn.exit, %23
  br label %29

; <label>:29                                      ; preds = %28, %21
  br label %30

; <label>:30                                      ; preds = %29, %16
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_10, metadata !1943, metadata !99), !dbg !1944
  %31 = call i32 @__VERIFIER_nondet_int(), !dbg !1945
  store i32 %31, i32* %tmp_ndt_10, align 4, !dbg !1946
  %32 = load i32, i32* %tmp_ndt_10, align 4, !dbg !1947
  %33 = icmp eq i32 %32, 0, !dbg !1949
  br i1 %33, label %34, label %35, !dbg !1950

; <label>:34                                      ; preds = %30
  br label %38, !dbg !1951

; <label>:35                                      ; preds = %30
  br label %39, !dbg !1953
                                                  ; No predecessors!
  br i1 false, label %37, label %40, !dbg !1955

; <label>:37                                      ; preds = %36
  br label %38, !dbg !1956

; <label>:38                                      ; preds = %37, %34
  store i32 0, i32* %1, !dbg !1958
  br label %42, !dbg !1958

; <label>:39                                      ; preds = %35
  store i32 -1073741823, i32* %1, !dbg !1960
  br label %42, !dbg !1960

; <label>:40                                      ; preds = %36
  br label %41

; <label>:41                                      ; preds = %40
  br label %42

; <label>:42                                      ; preds = %41, %39, %38
  %43 = load i32, i32* %1, !dbg !1961
  ret i32 %43, !dbg !1961
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
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1962, metadata !99), !dbg !1963
  store i32 %Irp, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1964, metadata !99), !dbg !1965
  call void @llvm.dbg.declare(metadata i32* %compRetStatus, metadata !1966, metadata !99), !dbg !1967
  call void @llvm.dbg.declare(metadata i32* %returnVal, metadata !1968, metadata !99), !dbg !1969
  call void @llvm.dbg.declare(metadata i32* %lcontext, metadata !1970, metadata !99), !dbg !1971
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !1972
  store i32 %9, i32* %lcontext, align 4, !dbg !1971
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp7, metadata !1973, metadata !99), !dbg !1974
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp8, metadata !1975, metadata !99), !dbg !1976
  %10 = load i32, i32* @compRegistered, align 4, !dbg !1977
  %11 = icmp ne i32 %10, 0, !dbg !1977
  call void @llvm.dbg.declare(metadata i32* %1, metadata !195, metadata !99), !dbg !1980
  call void @llvm.dbg.declare(metadata i32* %2, metadata !197, metadata !99), !dbg !1987
  call void @llvm.dbg.declare(metadata i32* %3, metadata !199, metadata !99), !dbg !1988
  call void @llvm.dbg.declare(metadata i32* %l.i.i, metadata !201, metadata !99), !dbg !1989
  call void @llvm.dbg.declare(metadata i32* %4, metadata !174, metadata !99), !dbg !1990
  call void @llvm.dbg.declare(metadata i32* %5, metadata !176, metadata !99), !dbg !1991
  call void @llvm.dbg.declare(metadata i32* %6, metadata !178, metadata !99), !dbg !1992
  call void @llvm.dbg.declare(metadata i32* %Event.i, metadata !180, metadata !99), !dbg !1993
  br i1 %11, label %12, label %60, !dbg !1994

; <label>:12                                      ; preds = %0
  %13 = load i32, i32* @routine, align 4, !dbg !1995
  %14 = icmp eq i32 %13, 0, !dbg !1996
  br i1 %14, label %15, label %39, !dbg !1997

; <label>:15                                      ; preds = %12
  %16 = load i32, i32* %7, align 4, !dbg !1998
  %17 = load i32, i32* %8, align 4, !dbg !1999
  %18 = load i32, i32* %lcontext, align 4, !dbg !2000
  %19 = bitcast i32* %4 to i8*, !dbg !2001
  call void @llvm.lifetime.start(i64 4, i8* %19), !dbg !2001
  %20 = bitcast i32* %5 to i8*, !dbg !2001
  call void @llvm.lifetime.start(i64 4, i8* %20), !dbg !2001
  %21 = bitcast i32* %6 to i8*, !dbg !2001
  call void @llvm.lifetime.start(i64 4, i8* %21), !dbg !2001
  %22 = bitcast i32* %Event.i to i8*, !dbg !2001
  call void @llvm.lifetime.start(i64 4, i8* %22), !dbg !2001
  store i32 %16, i32* %4, align 4, !dbg !2001
  store i32 %17, i32* %5, align 4, !dbg !2001
  store i32 %18, i32* %6, align 4, !dbg !2001
  %23 = load i32, i32* %6, align 4, !dbg !2002
  store i32 %23, i32* %Event.i, align 4, !dbg !2003
  %24 = load i32, i32* %Event.i, align 4, !dbg !2004
  %25 = bitcast i32* %1 to i8*, !dbg !2005
  call void @llvm.lifetime.start(i64 4, i8* %25) #4, !dbg !2005
  %26 = bitcast i32* %2 to i8*, !dbg !2005
  call void @llvm.lifetime.start(i64 4, i8* %26) #4, !dbg !2005
  %27 = bitcast i32* %3 to i8*, !dbg !2005
  call void @llvm.lifetime.start(i64 4, i8* %27) #4, !dbg !2005
  %28 = bitcast i32* %l.i.i to i8*, !dbg !2005
  call void @llvm.lifetime.start(i64 4, i8* %28) #4, !dbg !2005
  store i32 %24, i32* %1, align 4, !dbg !2005
  store i32 0, i32* %2, align 4, !dbg !2005
  store i32 0, i32* %3, align 4, !dbg !2005
  %29 = call i32 @__VERIFIER_nondet_int() #4, !dbg !2006
  store i32 %29, i32* %l.i.i, align 4, !dbg !1989
  store i32 1, i32* @setEventCalled, align 4, !dbg !2007
  %30 = load i32, i32* %l.i.i, align 4, !dbg !2008
  %31 = bitcast i32* %1 to i8*, !dbg !2009
  call void @llvm.lifetime.end(i64 4, i8* %31) #4, !dbg !2009
  %32 = bitcast i32* %2 to i8*, !dbg !2009
  call void @llvm.lifetime.end(i64 4, i8* %32) #4, !dbg !2009
  %33 = bitcast i32* %3 to i8*, !dbg !2009
  call void @llvm.lifetime.end(i64 4, i8* %33) #4, !dbg !2009
  %34 = bitcast i32* %l.i.i to i8*, !dbg !2009
  call void @llvm.lifetime.end(i64 4, i8* %34) #4, !dbg !2009
  %35 = bitcast i32* %4 to i8*, !dbg !2010
  call void @llvm.lifetime.end(i64 4, i8* %35), !dbg !2010
  %36 = bitcast i32* %5 to i8*, !dbg !2010
  call void @llvm.lifetime.end(i64 4, i8* %36), !dbg !2010
  %37 = bitcast i32* %6 to i8*, !dbg !2010
  call void @llvm.lifetime.end(i64 4, i8* %37), !dbg !2010
  %38 = bitcast i32* %Event.i to i8*, !dbg !2010
  call void @llvm.lifetime.end(i64 4, i8* %38), !dbg !2010
  store i32 -1073741802, i32* %compRetStatus, align 4, !dbg !2011
  br label %48, !dbg !2012

; <label>:39                                      ; preds = %12
  %40 = load i32, i32* @routine, align 4, !dbg !2013
  %41 = icmp eq i32 %40, 1, !dbg !2016
  br i1 %41, label %42, label %47, !dbg !2017

; <label>:42                                      ; preds = %39
  %43 = load i32, i32* %7, align 4, !dbg !2018
  %44 = load i32, i32* %8, align 4, !dbg !2021
  %45 = load i32, i32* %lcontext, align 4, !dbg !2022
  %46 = call i32 @DiskPerfIoCompletion(i32 %43, i32 %44, i32 %45), !dbg !2023
  store i32 %46, i32* %compRetStatus, align 4, !dbg !2024
  br label %47, !dbg !2025

; <label>:47                                      ; preds = %42, %39
  br label %48

; <label>:48                                      ; preds = %47, %15
  %49 = load i32, i32* %compRetStatus, align 4, !dbg !2026
  %50 = sext i32 %49 to i64, !dbg !2028
  store i64 %50, i64* %__cil_tmp7, align 8, !dbg !2029
  %51 = load i64, i64* %__cil_tmp7, align 8, !dbg !2030
  %52 = icmp eq i64 %51, -1073741802, !dbg !2032
  br i1 %52, label %53, label %59, !dbg !2033

; <label>:53                                      ; preds = %48
  %54 = load i32, i32* @s, align 4, !dbg !2034
  %55 = load i32, i32* @NP, align 4, !dbg !2038
  %56 = icmp eq i32 %54, %55, !dbg !2039
  br i1 %56, label %stubMoreProcessingRequired.exit, label %57, !dbg !2040

; <label>:57                                      ; preds = %53
  call void (...) @__VERIFIER_error() #6, !dbg !2041
  unreachable, !dbg !2041

stubMoreProcessingRequired.exit:                  ; preds = %53
  %58 = load i32, i32* @MPR1, align 4, !dbg !2043
  store i32 %58, i32* @s, align 4, !dbg !2044
  br label %59, !dbg !2045

; <label>:59                                      ; preds = %stubMoreProcessingRequired.exit, %48
  br label %60, !dbg !2046

; <label>:60                                      ; preds = %59, %0
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_11, metadata !2047, metadata !99), !dbg !2048
  %61 = call i32 @__VERIFIER_nondet_int(), !dbg !2049
  store i32 %61, i32* %tmp_ndt_11, align 4, !dbg !2050
  %62 = load i32, i32* %tmp_ndt_11, align 4, !dbg !2051
  %63 = icmp eq i32 %62, 0, !dbg !2053
  br i1 %63, label %64, label %65, !dbg !2054

; <label>:64                                      ; preds = %60
  br label %73, !dbg !2055

; <label>:65                                      ; preds = %60
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_12, metadata !2057, metadata !99), !dbg !2059
  %66 = call i32 @__VERIFIER_nondet_int(), !dbg !2060
  store i32 %66, i32* %tmp_ndt_12, align 4, !dbg !2061
  %67 = load i32, i32* %tmp_ndt_12, align 4, !dbg !2062
  %68 = icmp eq i32 %67, 1, !dbg !2064
  br i1 %68, label %69, label %70, !dbg !2065

; <label>:69                                      ; preds = %65
  br label %74, !dbg !2066

; <label>:70                                      ; preds = %65
  br label %75, !dbg !2068
                                                  ; No predecessors!
  br i1 false, label %72, label %76, !dbg !2070

; <label>:72                                      ; preds = %71
  br label %73, !dbg !2071

; <label>:73                                      ; preds = %72, %64
  store i32 0, i32* %returnVal, align 4, !dbg !2073
  br label %77, !dbg !2075

; <label>:74                                      ; preds = %69
  store i32 -1073741823, i32* %returnVal, align 4, !dbg !2076
  br label %77, !dbg !2077

; <label>:75                                      ; preds = %70
  store i32 259, i32* %returnVal, align 4, !dbg !2078
  br label %77, !dbg !2079

; <label>:76                                      ; preds = %71
  br label %77, !dbg !2080

; <label>:77                                      ; preds = %76, %75, %74, %73
  br label %78

; <label>:78                                      ; preds = %77
  br label %79

; <label>:79                                      ; preds = %78
  br label %80

; <label>:80                                      ; preds = %79
  %81 = load i32, i32* @s, align 4, !dbg !2081
  %82 = load i32, i32* @NP, align 4, !dbg !2083
  %83 = icmp eq i32 %81, %82, !dbg !2084
  br i1 %83, label %84, label %87, !dbg !2085

; <label>:84                                      ; preds = %80
  %85 = load i32, i32* @IPC, align 4, !dbg !2086
  store i32 %85, i32* @s, align 4, !dbg !2088
  %86 = load i32, i32* %returnVal, align 4, !dbg !2089
  store i32 %86, i32* @lowerDriverReturn, align 4, !dbg !2090
  br label %113, !dbg !2091

; <label>:87                                      ; preds = %80
  %88 = load i32, i32* @s, align 4, !dbg !2092
  %89 = load i32, i32* @MPR1, align 4, !dbg !2095
  %90 = icmp eq i32 %88, %89, !dbg !2096
  br i1 %90, label %91, label %103, !dbg !2097

; <label>:91                                      ; preds = %87
  %92 = load i32, i32* %returnVal, align 4, !dbg !2098
  %93 = sext i32 %92 to i64, !dbg !2101
  store i64 %93, i64* %__cil_tmp8, align 8, !dbg !2102
  %94 = load i64, i64* %__cil_tmp8, align 8, !dbg !2103
  %95 = icmp eq i64 %94, 259, !dbg !2105
  br i1 %95, label %96, label %99, !dbg !2106

; <label>:96                                      ; preds = %91
  %97 = load i32, i32* @MPR3, align 4, !dbg !2107
  store i32 %97, i32* @s, align 4, !dbg !2109
  %98 = load i32, i32* %returnVal, align 4, !dbg !2110
  store i32 %98, i32* @lowerDriverReturn, align 4, !dbg !2111
  br label %102, !dbg !2112

; <label>:99                                      ; preds = %91
  %100 = load i32, i32* @NP, align 4, !dbg !2113
  store i32 %100, i32* @s, align 4, !dbg !2115
  %101 = load i32, i32* %returnVal, align 4, !dbg !2116
  store i32 %101, i32* @lowerDriverReturn, align 4, !dbg !2117
  br label %102

; <label>:102                                     ; preds = %99, %96
  br label %112, !dbg !2118

; <label>:103                                     ; preds = %87
  %104 = load i32, i32* @s, align 4, !dbg !2119
  %105 = load i32, i32* @SKIP1, align 4, !dbg !2122
  %106 = icmp eq i32 %104, %105, !dbg !2123
  br i1 %106, label %107, label %110, !dbg !2124

; <label>:107                                     ; preds = %103
  %108 = load i32, i32* @SKIP2, align 4, !dbg !2125
  store i32 %108, i32* @s, align 4, !dbg !2127
  %109 = load i32, i32* %returnVal, align 4, !dbg !2128
  store i32 %109, i32* @lowerDriverReturn, align 4, !dbg !2129
  br label %111, !dbg !2130

; <label>:110                                     ; preds = %103
  call void (...) @__VERIFIER_error() #6, !dbg !2131
  unreachable, !dbg !2131

errorFn.exit:                                     ; No predecessors!
  br label %111

; <label>:111                                     ; preds = %errorFn.exit, %107
  br label %112

; <label>:112                                     ; preds = %111, %102
  br label %113

; <label>:113                                     ; preds = %112, %84
  %114 = load i32, i32* %returnVal, align 4, !dbg !2135
  ret i32 %114, !dbg !2136
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
!llvm.module.flags = !{!72, !73, !74}
!llvm.ident = !{!75}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !51)
!1 = !DIFile(filename: "svcomp16/ntdrivers-simplified/diskperf_simpl1_true-unreach-call_true-termination.cil.c", directory: ".")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!6 = !{!7, !10, !11, !15, !18, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !33, !36, !37, !40, !43, !44, !45, !46, !47, !50}
!7 = !DISubprogram(name: "errorFn", scope: !1, file: !1, line: 30, type: !8, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @errorFn, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !DISubprogram(name: "_BLAST_init", scope: !1, file: !1, line: 38, type: !8, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @_BLAST_init, variables: !2)
!11 = !DISubprogram(name: "DiskPerfSyncFilterWithTarget", scope: !1, file: !1, line: 60, type: !12, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, function: void (i32, i32)* @DiskPerfSyncFilterWithTarget, variables: !2)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14, !14}
!14 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!15 = !DISubprogram(name: "DiskPerfDispatchPnp", scope: !1, file: !1, line: 74, type: !16, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @DiskPerfDispatchPnp, variables: !2)
!16 = !DISubroutineType(types: !17)
!17 = !{!14, !14, !14}
!18 = !DISubprogram(name: "DiskPerfIrpCompletion", scope: !1, file: !1, line: 114, type: !19, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @DiskPerfIrpCompletion, variables: !2)
!19 = !DISubroutineType(types: !20)
!20 = !{!14, !14, !14, !14}
!21 = !DISubprogram(name: "DiskPerfStartDevice", scope: !1, file: !1, line: 125, type: !16, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @DiskPerfStartDevice, variables: !2)
!22 = !DISubprogram(name: "DiskPerfRemoveDevice", scope: !1, file: !1, line: 145, type: !16, isLocal: false, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @DiskPerfRemoveDevice, variables: !2)
!23 = !DISubprogram(name: "DiskPerfSendToNextDriver", scope: !1, file: !1, line: 165, type: !16, isLocal: false, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @DiskPerfSendToNextDriver, variables: !2)
!24 = !DISubprogram(name: "DiskPerfDispatchPower", scope: !1, file: !1, line: 190, type: !16, isLocal: false, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @DiskPerfDispatchPower, variables: !2)
!25 = !DISubprogram(name: "DiskPerfForwardIrpSynchronous", scope: !1, file: !1, line: 215, type: !16, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @DiskPerfForwardIrpSynchronous, variables: !2)
!26 = !DISubprogram(name: "DiskPerfCreate", scope: !1, file: !1, line: 267, type: !16, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @DiskPerfCreate, variables: !2)
!27 = !DISubprogram(name: "DiskPerfIoCompletion", scope: !1, file: !1, line: 278, type: !19, isLocal: false, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @DiskPerfIoCompletion, variables: !2)
!28 = !DISubprogram(name: "DiskPerfDeviceControl", scope: !1, file: !1, line: 332, type: !16, isLocal: false, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @DiskPerfDeviceControl, variables: !2)
!29 = !DISubprogram(name: "DiskPerfShutdownFlush", scope: !1, file: !1, line: 414, type: !16, isLocal: false, isDefinition: true, scopeLine: 415, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @DiskPerfShutdownFlush, variables: !2)
!30 = !DISubprogram(name: "DiskPerfUnload", scope: !1, file: !1, line: 432, type: !31, isLocal: false, isDefinition: true, scopeLine: 433, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @DiskPerfUnload, variables: !2)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !14}
!33 = !DISubprogram(name: "DiskPerfRegisterDevice", scope: !1, file: !1, line: 439, type: !34, isLocal: false, isDefinition: true, scopeLine: 440, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32)* @DiskPerfRegisterDevice, variables: !2)
!34 = !DISubroutineType(types: !35)
!35 = !{!14, !14}
!36 = !DISubprogram(name: "stub_driver_init", scope: !1, file: !1, line: 611, type: !8, isLocal: false, isDefinition: true, scopeLine: 612, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stub_driver_init, variables: !2)
!37 = !DISubprogram(name: "main", scope: !1, file: !1, line: 625, type: !38, isLocal: false, isDefinition: true, scopeLine: 626, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !2)
!38 = !DISubroutineType(types: !39)
!39 = !{!14}
!40 = !DISubprogram(name: "IoBuildDeviceIoControlRequest", scope: !1, file: !1, line: 812, type: !41, isLocal: false, isDefinition: true, scopeLine: 815, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)* @IoBuildDeviceIoControlRequest, variables: !2)
!41 = !DISubroutineType(types: !42)
!42 = !{!14, !14, !14, !14, !14, !14, !14, !14, !14, !14}
!43 = !DISubprogram(name: "stubMoreProcessingRequired", scope: !1, file: !1, line: 837, type: !8, isLocal: false, isDefinition: true, scopeLine: 838, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stubMoreProcessingRequired, variables: !2)
!44 = !DISubprogram(name: "IofCallDriver", scope: !1, file: !1, line: 851, type: !16, isLocal: false, isDefinition: true, scopeLine: 852, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @IofCallDriver, variables: !2)
!45 = !DISubprogram(name: "IofCompleteRequest", scope: !1, file: !1, line: 930, type: !12, isLocal: false, isDefinition: true, scopeLine: 931, flags: DIFlagPrototyped, isOptimized: false, function: void (i32, i32)* @IofCompleteRequest, variables: !2)
!46 = !DISubprogram(name: "KeSetEvent", scope: !1, file: !1, line: 944, type: !19, isLocal: false, isDefinition: true, scopeLine: 945, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @KeSetEvent, variables: !2)
!47 = !DISubprogram(name: "KeWaitForSingleObject", scope: !1, file: !1, line: 952, type: !48, isLocal: false, isDefinition: true, scopeLine: 954, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32)* @KeWaitForSingleObject, variables: !2)
!48 = !DISubroutineType(types: !49)
!49 = !{!14, !14, !14, !14, !14, !14}
!50 = !DISubprogram(name: "PoCallDriver", scope: !1, file: !1, line: 994, type: !16, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @PoCallDriver, variables: !2)
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71}
!52 = !DIGlobalVariable(name: "s", scope: !0, file: !1, line: 9, type: !14, isLocal: false, isDefinition: true, variable: i32* @s)
!53 = !DIGlobalVariable(name: "UNLOADED", scope: !0, file: !1, line: 10, type: !14, isLocal: false, isDefinition: true, variable: i32* @UNLOADED)
!54 = !DIGlobalVariable(name: "NP", scope: !0, file: !1, line: 11, type: !14, isLocal: false, isDefinition: true, variable: i32* @NP)
!55 = !DIGlobalVariable(name: "DC", scope: !0, file: !1, line: 12, type: !14, isLocal: false, isDefinition: true, variable: i32* @DC)
!56 = !DIGlobalVariable(name: "SKIP1", scope: !0, file: !1, line: 13, type: !14, isLocal: false, isDefinition: true, variable: i32* @SKIP1)
!57 = !DIGlobalVariable(name: "SKIP2", scope: !0, file: !1, line: 14, type: !14, isLocal: false, isDefinition: true, variable: i32* @SKIP2)
!58 = !DIGlobalVariable(name: "MPR1", scope: !0, file: !1, line: 15, type: !14, isLocal: false, isDefinition: true, variable: i32* @MPR1)
!59 = !DIGlobalVariable(name: "MPR3", scope: !0, file: !1, line: 16, type: !14, isLocal: false, isDefinition: true, variable: i32* @MPR3)
!60 = !DIGlobalVariable(name: "IPC", scope: !0, file: !1, line: 17, type: !14, isLocal: false, isDefinition: true, variable: i32* @IPC)
!61 = !DIGlobalVariable(name: "pended", scope: !0, file: !1, line: 18, type: !14, isLocal: false, isDefinition: true, variable: i32* @pended)
!62 = !DIGlobalVariable(name: "compFptr", scope: !0, file: !1, line: 19, type: !14, isLocal: false, isDefinition: true, variable: i32* @compFptr)
!63 = !DIGlobalVariable(name: "compRegistered", scope: !0, file: !1, line: 20, type: !14, isLocal: false, isDefinition: true, variable: i32* @compRegistered)
!64 = !DIGlobalVariable(name: "lowerDriverReturn", scope: !0, file: !1, line: 21, type: !14, isLocal: false, isDefinition: true, variable: i32* @lowerDriverReturn)
!65 = !DIGlobalVariable(name: "setEventCalled", scope: !0, file: !1, line: 22, type: !14, isLocal: false, isDefinition: true, variable: i32* @setEventCalled)
!66 = !DIGlobalVariable(name: "customIrp", scope: !0, file: !1, line: 23, type: !14, isLocal: false, isDefinition: true, variable: i32* @customIrp)
!67 = !DIGlobalVariable(name: "myStatus", scope: !0, file: !1, line: 24, type: !14, isLocal: false, isDefinition: true, variable: i32* @myStatus)
!68 = !DIGlobalVariable(name: "routine", scope: !0, file: !1, line: 25, type: !14, isLocal: false, isDefinition: true, variable: i32* @routine)
!69 = !DIGlobalVariable(name: "pirp", scope: !0, file: !1, line: 26, type: !14, isLocal: false, isDefinition: true, variable: i32* @pirp)
!70 = !DIGlobalVariable(name: "Executive", scope: !0, file: !1, line: 27, type: !14, isLocal: false, isDefinition: true, variable: i32* @Executive)
!71 = !DIGlobalVariable(name: "KernelMode", scope: !0, file: !1, line: 28, type: !14, isLocal: false, isDefinition: true, variable: i32* @KernelMode)
!72 = !{i32 2, !"Dwarf Version", i32 2}
!73 = !{i32 2, !"Debug Info Version", i32 3}
!74 = !{i32 1, !"PIC Level", i32 2}
!75 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!76 = !DILocation(line: 33, column: 3, scope: !7)
!77 = !DILocation(line: 34, column: 10, scope: !78)
!78 = distinct !DILexicalBlock(scope: !7, file: !1, line: 33, column: 3)
!79 = !DILocation(line: 37, column: 1, scope: !7)
!80 = !DILocation(line: 42, column: 12, scope: !81)
!81 = distinct !DILexicalBlock(scope: !10, file: !1, line: 41, column: 3)
!82 = !DILocation(line: 43, column: 6, scope: !81)
!83 = !DILocation(line: 44, column: 6, scope: !81)
!84 = !DILocation(line: 45, column: 9, scope: !81)
!85 = !DILocation(line: 46, column: 9, scope: !81)
!86 = !DILocation(line: 47, column: 8, scope: !81)
!87 = !DILocation(line: 48, column: 8, scope: !81)
!88 = !DILocation(line: 49, column: 7, scope: !81)
!89 = !DILocation(line: 50, column: 7, scope: !81)
!90 = !DILocation(line: 50, column: 5, scope: !81)
!91 = !DILocation(line: 51, column: 10, scope: !81)
!92 = !DILocation(line: 52, column: 12, scope: !81)
!93 = !DILocation(line: 53, column: 18, scope: !81)
!94 = !DILocation(line: 54, column: 21, scope: !81)
!95 = !DILocation(line: 55, column: 18, scope: !81)
!96 = !DILocation(line: 56, column: 13, scope: !81)
!97 = !DILocation(line: 57, column: 3, scope: !81)
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "FilterDevice", arg: 1, scope: !11, file: !1, line: 60, type: !14)
!99 = !DIExpression()
!100 = !DILocation(line: 60, column: 39, scope: !11)
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "TargetDevice", arg: 2, scope: !11, file: !1, line: 60, type: !14)
!102 = !DILocation(line: 60, column: 58, scope: !11)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "FilterDevice__Flags", scope: !11, file: !1, line: 61, type: !14)
!104 = !DILocation(line: 61, column: 7, scope: !11)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "TargetDevice__Characteristics", scope: !11, file: !1, line: 62, type: !14)
!106 = !DILocation(line: 62, column: 7, scope: !11)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "FilterDevice__Characteristics", scope: !11, file: !1, line: 63, type: !14)
!108 = !DILocation(line: 63, column: 7, scope: !11)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "propFlags", scope: !11, file: !1, line: 64, type: !14)
!110 = !DILocation(line: 64, column: 7, scope: !11)
!111 = !DILocation(line: 71, column: 3, scope: !112)
!112 = distinct !DILexicalBlock(scope: !11, file: !1, line: 66, column: 3)
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !15, file: !1, line: 74, type: !14)
!114 = !DILocation(line: 74, column: 29, scope: !15)
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !15, file: !1, line: 74, type: !14)
!116 = !DILocation(line: 74, column: 48, scope: !15)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !15, file: !1, line: 75, type: !14)
!118 = !DILocation(line: 75, column: 7, scope: !15)
!119 = !DILocation(line: 75, column: 50, scope: !15)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__MinorFunction", scope: !15, file: !1, line: 76, type: !14)
!121 = !DILocation(line: 76, column: 7, scope: !15)
!122 = !DILocation(line: 76, column: 30, scope: !15)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp", scope: !15, file: !1, line: 77, type: !14)
!124 = !DILocation(line: 77, column: 7, scope: !15)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !15, file: !1, line: 78, type: !14)
!126 = !DILocation(line: 78, column: 7, scope: !15)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !15, file: !1, line: 79, type: !14)
!128 = !DILocation(line: 79, column: 7, scope: !15)
!129 = !DILocation(line: 82, column: 11, scope: !130)
!130 = distinct !DILexicalBlock(scope: !15, file: !1, line: 81, column: 3)
!131 = !DILocation(line: 82, column: 9, scope: !130)
!132 = !DILocation(line: 83, column: 7, scope: !133)
!133 = distinct !DILexicalBlock(scope: !130, file: !1, line: 83, column: 7)
!134 = !DILocation(line: 83, column: 28, scope: !133)
!135 = !DILocation(line: 83, column: 7, scope: !130)
!136 = !DILocation(line: 84, column: 5, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !1, line: 83, column: 34)
!138 = !DILocation(line: 86, column: 9, scope: !139)
!139 = distinct !DILexicalBlock(scope: !140, file: !1, line: 86, column: 9)
!140 = distinct !DILexicalBlock(scope: !133, file: !1, line: 85, column: 10)
!141 = !DILocation(line: 86, column: 30, scope: !139)
!142 = !DILocation(line: 86, column: 9, scope: !140)
!143 = !DILocation(line: 87, column: 7, scope: !144)
!144 = distinct !DILexicalBlock(scope: !139, file: !1, line: 86, column: 36)
!145 = !DILocation(line: 89, column: 7, scope: !146)
!146 = distinct !DILexicalBlock(scope: !139, file: !1, line: 88, column: 12)
!147 = !DILocation(line: 90, column: 11, scope: !146)
!148 = !DILocation(line: 90, column: 14, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !1, line: 90, column: 11)
!150 = !DILocation(line: 93, column: 38, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !1, line: 92, column: 9)
!152 = distinct !DILexicalBlock(scope: !149, file: !1, line: 90, column: 14)
!153 = !DILocation(line: 93, column: 52, scope: !151)
!154 = !DILocation(line: 93, column: 18, scope: !151)
!155 = !DILocation(line: 93, column: 16, scope: !151)
!156 = !DILocation(line: 95, column: 9, scope: !152)
!157 = !DILocation(line: 98, column: 39, scope: !158)
!158 = distinct !DILexicalBlock(scope: !152, file: !1, line: 97, column: 9)
!159 = !DILocation(line: 98, column: 53, scope: !158)
!160 = !DILocation(line: 98, column: 18, scope: !158)
!161 = !DILocation(line: 98, column: 16, scope: !158)
!162 = !DILocation(line: 100, column: 9, scope: !152)
!163 = !DILocation(line: 103, column: 40, scope: !164)
!164 = distinct !DILexicalBlock(scope: !152, file: !1, line: 102, column: 9)
!165 = !DILocation(line: 103, column: 54, scope: !164)
!166 = !DILocation(line: 103, column: 15, scope: !164)
!167 = !DILocation(line: 103, column: 13, scope: !164)
!168 = !DILocation(line: 105, column: 17, scope: !152)
!169 = !DILocation(line: 105, column: 9, scope: !152)
!170 = !DILocation(line: 106, column: 14, scope: !149)
!171 = !DILocation(line: 111, column: 11, scope: !130)
!172 = !DILocation(line: 111, column: 3, scope: !130)
!173 = !DILocation(line: 113, column: 1, scope: !15)
!174 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !18, file: !1, line: 114, type: !14)
!175 = !DILocation(line: 114, column: 31, scope: !18)
!176 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !18, file: !1, line: 114, type: !14)
!177 = !DILocation(line: 114, column: 50, scope: !18)
!178 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 3, scope: !18, file: !1, line: 114, type: !14)
!179 = !DILocation(line: 114, column: 60, scope: !18)
!180 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Event", scope: !18, file: !1, line: 115, type: !14)
!181 = !DILocation(line: 115, column: 7, scope: !18)
!182 = !DILocation(line: 119, column: 11, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !1, line: 118, column: 3)
!184 = distinct !DILexicalBlock(scope: !18, file: !1, line: 117, column: 3)
!185 = !DILocation(line: 119, column: 9, scope: !183)
!186 = !DILocation(line: 120, column: 14, scope: !183)
!187 = !DILocation(line: 120, column: 3, scope: !183)
!188 = !DILocation(line: 945, column: 11, scope: !46, inlinedAt: !189)
!189 = distinct !DILocation(line: 120, column: 3, scope: !183)
!190 = !DILocation(line: 945, column: 7, scope: !46, inlinedAt: !189)
!191 = !DILocation(line: 948, column: 18, scope: !192, inlinedAt: !189)
!192 = distinct !DILexicalBlock(scope: !46, file: !1, line: 947, column: 3)
!193 = !DILocation(line: 949, column: 11, scope: !192, inlinedAt: !189)
!194 = !DILocation(line: 949, column: 3, scope: !192, inlinedAt: !189)
!195 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 1, scope: !46, file: !1, line: 944, type: !14)
!196 = !DILocation(line: 944, column: 20, scope: !46, inlinedAt: !189)
!197 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Increment", arg: 2, scope: !46, file: !1, line: 944, type: !14)
!198 = !DILocation(line: 944, column: 32, scope: !46, inlinedAt: !189)
!199 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Wait", arg: 3, scope: !46, file: !1, line: 944, type: !14)
!200 = !DILocation(line: 944, column: 48, scope: !46, inlinedAt: !189)
!201 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !46, file: !1, line: 945, type: !14)
!202 = !DILocation(line: 122, column: 3, scope: !184)
!203 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !21, file: !1, line: 125, type: !14)
!204 = !DILocation(line: 125, column: 29, scope: !21)
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !21, file: !1, line: 125, type: !14)
!206 = !DILocation(line: 125, column: 48, scope: !21)
!207 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !21, file: !1, line: 126, type: !14)
!208 = !DILocation(line: 126, column: 7, scope: !21)
!209 = !DILocation(line: 126, column: 39, scope: !21)
!210 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__TargetDeviceObject", scope: !21, file: !1, line: 127, type: !14)
!211 = !DILocation(line: 127, column: 7, scope: !21)
!212 = !DILocation(line: 127, column: 45, scope: !21)
!213 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !21, file: !1, line: 128, type: !14)
!214 = !DILocation(line: 128, column: 7, scope: !21)
!215 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !21, file: !1, line: 129, type: !14)
!216 = !DILocation(line: 129, column: 7, scope: !21)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !21, file: !1, line: 130, type: !14)
!218 = !DILocation(line: 130, column: 7, scope: !21)
!219 = !DILocation(line: 134, column: 21, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !1, line: 133, column: 3)
!221 = distinct !DILexicalBlock(scope: !21, file: !1, line: 132, column: 3)
!222 = !DILocation(line: 134, column: 19, scope: !220)
!223 = !DILocation(line: 135, column: 42, scope: !220)
!224 = !DILocation(line: 135, column: 56, scope: !220)
!225 = !DILocation(line: 135, column: 12, scope: !220)
!226 = !DILocation(line: 135, column: 10, scope: !220)
!227 = !DILocation(line: 136, column: 32, scope: !220)
!228 = !DILocation(line: 136, column: 46, scope: !220)
!229 = !DILocation(line: 136, column: 3, scope: !220)
!230 = !DILocation(line: 71, column: 3, scope: !112, inlinedAt: !231)
!231 = distinct !DILocation(line: 136, column: 3, scope: !220)
!232 = !DILocation(line: 137, column: 26, scope: !220)
!233 = !DILocation(line: 137, column: 3, scope: !220)
!234 = !DILocation(line: 138, column: 27, scope: !220)
!235 = !DILocation(line: 138, column: 25, scope: !220)
!236 = !DILocation(line: 139, column: 14, scope: !220)
!237 = !DILocation(line: 139, column: 12, scope: !220)
!238 = !DILocation(line: 140, column: 22, scope: !220)
!239 = !DILocation(line: 140, column: 3, scope: !220)
!240 = !DILocation(line: 934, column: 7, scope: !241, inlinedAt: !243)
!241 = distinct !DILexicalBlock(scope: !242, file: !1, line: 934, column: 7)
!242 = distinct !DILexicalBlock(scope: !45, file: !1, line: 933, column: 3)
!243 = distinct !DILocation(line: 140, column: 3, scope: !220)
!244 = !DILocation(line: 934, column: 12, scope: !241, inlinedAt: !243)
!245 = !DILocation(line: 934, column: 9, scope: !241, inlinedAt: !243)
!246 = !DILocation(line: 934, column: 7, scope: !242, inlinedAt: !243)
!247 = !DILocation(line: 34, column: 10, scope: !78, inlinedAt: !248)
!248 = distinct !DILocation(line: 938, column: 5, scope: !249, inlinedAt: !243)
!249 = distinct !DILexicalBlock(scope: !250, file: !1, line: 937, column: 5)
!250 = distinct !DILexicalBlock(scope: !241, file: !1, line: 936, column: 10)
!251 = !DILocation(line: 935, column: 9, scope: !252, inlinedAt: !243)
!252 = distinct !DILexicalBlock(scope: !241, file: !1, line: 934, column: 16)
!253 = !DILocation(line: 935, column: 7, scope: !252, inlinedAt: !243)
!254 = !DILocation(line: 941, column: 3, scope: !242, inlinedAt: !243)
!255 = !DILocation(line: 142, column: 11, scope: !221)
!256 = !DILocation(line: 60, column: 39, scope: !11, inlinedAt: !231)
!257 = !DILocation(line: 60, column: 58, scope: !11, inlinedAt: !231)
!258 = !DILocation(line: 61, column: 7, scope: !11, inlinedAt: !231)
!259 = !DILocation(line: 62, column: 7, scope: !11, inlinedAt: !231)
!260 = !DILocation(line: 63, column: 7, scope: !11, inlinedAt: !231)
!261 = !DILocation(line: 64, column: 7, scope: !11, inlinedAt: !231)
!262 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 1, scope: !45, file: !1, line: 930, type: !14)
!263 = !DILocation(line: 930, column: 29, scope: !45, inlinedAt: !243)
!264 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PriorityBoost", arg: 2, scope: !45, file: !1, line: 930, type: !14)
!265 = !DILocation(line: 930, column: 39, scope: !45, inlinedAt: !243)
!266 = !DILocation(line: 142, column: 3, scope: !221)
!267 = !DILocation(line: 930, column: 29, scope: !45)
!268 = !DILocation(line: 930, column: 39, scope: !45)
!269 = !DILocation(line: 934, column: 7, scope: !241)
!270 = !DILocation(line: 934, column: 12, scope: !241)
!271 = !DILocation(line: 934, column: 9, scope: !241)
!272 = !DILocation(line: 934, column: 7, scope: !242)
!273 = !DILocation(line: 935, column: 9, scope: !252)
!274 = !DILocation(line: 935, column: 7, scope: !252)
!275 = !DILocation(line: 936, column: 3, scope: !252)
!276 = !DILocation(line: 34, column: 10, scope: !78, inlinedAt: !277)
!277 = distinct !DILocation(line: 938, column: 5, scope: !249)
!278 = !DILocation(line: 941, column: 3, scope: !242)
!279 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !22, file: !1, line: 145, type: !14)
!280 = !DILocation(line: 145, column: 30, scope: !22)
!281 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !22, file: !1, line: 145, type: !14)
!282 = !DILocation(line: 145, column: 49, scope: !22)
!283 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !22, file: !1, line: 146, type: !14)
!284 = !DILocation(line: 146, column: 7, scope: !22)
!285 = !DILocation(line: 146, column: 39, scope: !22)
!286 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__WmilibContext", scope: !22, file: !1, line: 147, type: !14)
!287 = !DILocation(line: 147, column: 7, scope: !22)
!288 = !DILocation(line: 147, column: 40, scope: !22)
!289 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !22, file: !1, line: 148, type: !14)
!290 = !DILocation(line: 148, column: 7, scope: !22)
!291 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !22, file: !1, line: 149, type: !14)
!292 = !DILocation(line: 149, column: 7, scope: !22)
!293 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !22, file: !1, line: 150, type: !14)
!294 = !DILocation(line: 150, column: 7, scope: !22)
!295 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wmilibContext", scope: !22, file: !1, line: 151, type: !14)
!296 = !DILocation(line: 151, column: 7, scope: !22)
!297 = !DILocation(line: 155, column: 21, scope: !298)
!298 = distinct !DILexicalBlock(scope: !299, file: !1, line: 154, column: 3)
!299 = distinct !DILexicalBlock(scope: !22, file: !1, line: 153, column: 3)
!300 = !DILocation(line: 155, column: 19, scope: !298)
!301 = !DILocation(line: 156, column: 19, scope: !298)
!302 = !DILocation(line: 156, column: 17, scope: !298)
!303 = !DILocation(line: 157, column: 42, scope: !298)
!304 = !DILocation(line: 157, column: 56, scope: !298)
!305 = !DILocation(line: 157, column: 12, scope: !298)
!306 = !DILocation(line: 157, column: 10, scope: !298)
!307 = !DILocation(line: 158, column: 27, scope: !298)
!308 = !DILocation(line: 158, column: 25, scope: !298)
!309 = !DILocation(line: 159, column: 14, scope: !298)
!310 = !DILocation(line: 159, column: 12, scope: !298)
!311 = !DILocation(line: 160, column: 22, scope: !298)
!312 = !DILocation(line: 160, column: 3, scope: !298)
!313 = !DILocation(line: 934, column: 7, scope: !241, inlinedAt: !314)
!314 = distinct !DILocation(line: 160, column: 3, scope: !298)
!315 = !DILocation(line: 934, column: 12, scope: !241, inlinedAt: !314)
!316 = !DILocation(line: 934, column: 9, scope: !241, inlinedAt: !314)
!317 = !DILocation(line: 934, column: 7, scope: !242, inlinedAt: !314)
!318 = !DILocation(line: 34, column: 10, scope: !78, inlinedAt: !319)
!319 = distinct !DILocation(line: 938, column: 5, scope: !249, inlinedAt: !314)
!320 = !DILocation(line: 935, column: 9, scope: !252, inlinedAt: !314)
!321 = !DILocation(line: 935, column: 7, scope: !252, inlinedAt: !314)
!322 = !DILocation(line: 941, column: 3, scope: !242, inlinedAt: !314)
!323 = !DILocation(line: 162, column: 11, scope: !299)
!324 = !DILocation(line: 930, column: 29, scope: !45, inlinedAt: !314)
!325 = !DILocation(line: 930, column: 39, scope: !45, inlinedAt: !314)
!326 = !DILocation(line: 162, column: 3, scope: !299)
!327 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !23, file: !1, line: 165, type: !14)
!328 = !DILocation(line: 165, column: 34, scope: !23)
!329 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !23, file: !1, line: 165, type: !14)
!330 = !DILocation(line: 165, column: 53, scope: !23)
!331 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !23, file: !1, line: 166, type: !14)
!332 = !DILocation(line: 166, column: 7, scope: !23)
!333 = !DILocation(line: 166, column: 30, scope: !23)
!334 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !23, file: !1, line: 167, type: !14)
!335 = !DILocation(line: 167, column: 7, scope: !23)
!336 = !DILocation(line: 167, column: 50, scope: !23)
!337 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !23, file: !1, line: 168, type: !14)
!338 = !DILocation(line: 168, column: 7, scope: !23)
!339 = !DILocation(line: 168, column: 39, scope: !23)
!340 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__TargetDeviceObject", scope: !23, file: !1, line: 169, type: !14)
!341 = !DILocation(line: 169, column: 7, scope: !23)
!342 = !DILocation(line: 169, column: 45, scope: !23)
!343 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !23, file: !1, line: 170, type: !14)
!344 = !DILocation(line: 170, column: 7, scope: !23)
!345 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !23, file: !1, line: 171, type: !14)
!346 = !DILocation(line: 171, column: 7, scope: !23)
!347 = !DILocation(line: 174, column: 7, scope: !348)
!348 = distinct !DILexicalBlock(scope: !349, file: !1, line: 174, column: 7)
!349 = distinct !DILexicalBlock(scope: !23, file: !1, line: 173, column: 3)
!350 = !DILocation(line: 174, column: 12, scope: !348)
!351 = !DILocation(line: 174, column: 9, scope: !348)
!352 = !DILocation(line: 174, column: 7, scope: !349)
!353 = !DILocation(line: 175, column: 9, scope: !354)
!354 = distinct !DILexicalBlock(scope: !348, file: !1, line: 174, column: 16)
!355 = !DILocation(line: 175, column: 7, scope: !354)
!356 = !DILocation(line: 176, column: 3, scope: !354)
!357 = !DILocation(line: 34, column: 10, scope: !78, inlinedAt: !358)
!358 = distinct !DILocation(line: 178, column: 5, scope: !359)
!359 = distinct !DILexicalBlock(scope: !360, file: !1, line: 177, column: 5)
!360 = distinct !DILexicalBlock(scope: !348, file: !1, line: 176, column: 10)
!361 = !DILocation(line: 182, column: 24, scope: !362)
!362 = distinct !DILexicalBlock(scope: !349, file: !1, line: 181, column: 3)
!363 = !DILocation(line: 183, column: 44, scope: !362)
!364 = !DILocation(line: 184, column: 21, scope: !362)
!365 = !DILocation(line: 184, column: 19, scope: !362)
!366 = !DILocation(line: 185, column: 23, scope: !362)
!367 = !DILocation(line: 185, column: 60, scope: !362)
!368 = !DILocation(line: 185, column: 9, scope: !362)
!369 = !DILocation(line: 185, column: 7, scope: !362)
!370 = !DILocation(line: 187, column: 11, scope: !349)
!371 = !DILocation(line: 187, column: 3, scope: !349)
!372 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !24, file: !1, line: 190, type: !14)
!373 = !DILocation(line: 190, column: 31, scope: !24)
!374 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !24, file: !1, line: 190, type: !14)
!375 = !DILocation(line: 190, column: 50, scope: !24)
!376 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !24, file: !1, line: 191, type: !14)
!377 = !DILocation(line: 191, column: 7, scope: !24)
!378 = !DILocation(line: 191, column: 30, scope: !24)
!379 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !24, file: !1, line: 192, type: !14)
!380 = !DILocation(line: 192, column: 7, scope: !24)
!381 = !DILocation(line: 192, column: 50, scope: !24)
!382 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !24, file: !1, line: 193, type: !14)
!383 = !DILocation(line: 193, column: 7, scope: !24)
!384 = !DILocation(line: 193, column: 39, scope: !24)
!385 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__TargetDeviceObject", scope: !24, file: !1, line: 194, type: !14)
!386 = !DILocation(line: 194, column: 7, scope: !24)
!387 = !DILocation(line: 194, column: 45, scope: !24)
!388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !24, file: !1, line: 195, type: !14)
!389 = !DILocation(line: 195, column: 7, scope: !24)
!390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !24, file: !1, line: 196, type: !14)
!391 = !DILocation(line: 196, column: 7, scope: !24)
!392 = !DILocation(line: 199, column: 7, scope: !393)
!393 = distinct !DILexicalBlock(scope: !394, file: !1, line: 199, column: 7)
!394 = distinct !DILexicalBlock(scope: !24, file: !1, line: 198, column: 3)
!395 = !DILocation(line: 199, column: 12, scope: !393)
!396 = !DILocation(line: 199, column: 9, scope: !393)
!397 = !DILocation(line: 199, column: 7, scope: !394)
!398 = !DILocation(line: 200, column: 9, scope: !399)
!399 = distinct !DILexicalBlock(scope: !393, file: !1, line: 199, column: 16)
!400 = !DILocation(line: 200, column: 7, scope: !399)
!401 = !DILocation(line: 201, column: 3, scope: !399)
!402 = !DILocation(line: 34, column: 10, scope: !78, inlinedAt: !403)
!403 = distinct !DILocation(line: 203, column: 5, scope: !404)
!404 = distinct !DILexicalBlock(scope: !405, file: !1, line: 202, column: 5)
!405 = distinct !DILexicalBlock(scope: !393, file: !1, line: 201, column: 10)
!406 = !DILocation(line: 207, column: 24, scope: !407)
!407 = distinct !DILexicalBlock(scope: !394, file: !1, line: 206, column: 3)
!408 = !DILocation(line: 208, column: 44, scope: !407)
!409 = !DILocation(line: 209, column: 21, scope: !407)
!410 = !DILocation(line: 209, column: 19, scope: !407)
!411 = !DILocation(line: 210, column: 22, scope: !407)
!412 = !DILocation(line: 210, column: 59, scope: !407)
!413 = !DILocation(line: 210, column: 9, scope: !407)
!414 = !DILocation(line: 210, column: 7, scope: !407)
!415 = !DILocation(line: 212, column: 11, scope: !394)
!416 = !DILocation(line: 212, column: 3, scope: !394)
!417 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !25, file: !1, line: 215, type: !14)
!418 = !DILocation(line: 215, column: 39, scope: !25)
!419 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !25, file: !1, line: 215, type: !14)
!420 = !DILocation(line: 215, column: 58, scope: !25)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !25, file: !1, line: 216, type: !14)
!422 = !DILocation(line: 216, column: 7, scope: !25)
!423 = !DILocation(line: 216, column: 50, scope: !25)
!424 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !25, file: !1, line: 217, type: !14)
!425 = !DILocation(line: 217, column: 7, scope: !25)
!426 = !DILocation(line: 217, column: 39, scope: !25)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__TargetDeviceObject", scope: !25, file: !1, line: 218, type: !14)
!428 = !DILocation(line: 218, column: 7, scope: !25)
!429 = !DILocation(line: 218, column: 45, scope: !25)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !25, file: !1, line: 219, type: !14)
!431 = !DILocation(line: 219, column: 7, scope: !25)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "event", scope: !25, file: !1, line: 220, type: !14)
!433 = !DILocation(line: 220, column: 7, scope: !25)
!434 = !DILocation(line: 220, column: 15, scope: !25)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !25, file: !1, line: 221, type: !14)
!436 = !DILocation(line: 221, column: 7, scope: !25)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp__Control", scope: !25, file: !1, line: 222, type: !14)
!438 = !DILocation(line: 222, column: 7, scope: !25)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp", scope: !25, file: !1, line: 223, type: !14)
!440 = !DILocation(line: 223, column: 7, scope: !25)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp", scope: !25, file: !1, line: 224, type: !14)
!442 = !DILocation(line: 224, column: 7, scope: !25)
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Context", scope: !25, file: !1, line: 225, type: !14)
!444 = !DILocation(line: 225, column: 7, scope: !25)
!445 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Control", scope: !25, file: !1, line: 226, type: !14)
!446 = !DILocation(line: 226, column: 7, scope: !25)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___0", scope: !25, file: !1, line: 227, type: !14)
!448 = !DILocation(line: 227, column: 7, scope: !25)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp15", scope: !25, file: !1, line: 228, type: !4)
!450 = !DILocation(line: 228, column: 8, scope: !25)
!451 = !DILocation(line: 231, column: 21, scope: !452)
!452 = distinct !DILexicalBlock(scope: !25, file: !1, line: 230, column: 3)
!453 = !DILocation(line: 231, column: 19, scope: !452)
!454 = !DILocation(line: 232, column: 11, scope: !452)
!455 = !DILocation(line: 232, column: 9, scope: !452)
!456 = !DILocation(line: 233, column: 15, scope: !452)
!457 = !DILocation(line: 233, column: 56, scope: !452)
!458 = !DILocation(line: 233, column: 13, scope: !452)
!459 = !DILocation(line: 234, column: 22, scope: !452)
!460 = !DILocation(line: 235, column: 7, scope: !461)
!461 = distinct !DILexicalBlock(scope: !452, file: !1, line: 235, column: 7)
!462 = !DILocation(line: 235, column: 12, scope: !461)
!463 = !DILocation(line: 235, column: 9, scope: !461)
!464 = !DILocation(line: 235, column: 7, scope: !452)
!465 = !DILocation(line: 34, column: 10, scope: !78, inlinedAt: !466)
!466 = distinct !DILocation(line: 237, column: 5, scope: !467)
!467 = distinct !DILexicalBlock(scope: !468, file: !1, line: 236, column: 5)
!468 = distinct !DILexicalBlock(scope: !461, file: !1, line: 235, column: 16)
!469 = !DILocation(line: 239, column: 3, scope: !468)
!470 = !DILocation(line: 240, column: 9, scope: !471)
!471 = distinct !DILexicalBlock(scope: !472, file: !1, line: 240, column: 9)
!472 = distinct !DILexicalBlock(scope: !461, file: !1, line: 239, column: 10)
!473 = !DILocation(line: 240, column: 24, scope: !471)
!474 = !DILocation(line: 240, column: 9, scope: !472)
!475 = !DILocation(line: 34, column: 10, scope: !78, inlinedAt: !476)
!476 = distinct !DILocation(line: 242, column: 7, scope: !477)
!477 = distinct !DILexicalBlock(scope: !478, file: !1, line: 241, column: 7)
!478 = distinct !DILexicalBlock(scope: !471, file: !1, line: 240, column: 30)
!479 = !DILocation(line: 244, column: 5, scope: !478)
!480 = !DILocation(line: 245, column: 22, scope: !481)
!481 = distinct !DILexicalBlock(scope: !471, file: !1, line: 244, column: 12)
!482 = !DILocation(line: 246, column: 15, scope: !481)
!483 = !DILocation(line: 250, column: 15, scope: !484)
!484 = distinct !DILexicalBlock(scope: !452, file: !1, line: 249, column: 3)
!485 = !DILocation(line: 250, column: 56, scope: !484)
!486 = !DILocation(line: 250, column: 13, scope: !484)
!487 = !DILocation(line: 251, column: 20, scope: !484)
!488 = !DILocation(line: 251, column: 18, scope: !484)
!489 = !DILocation(line: 252, column: 18, scope: !484)
!490 = !DILocation(line: 253, column: 26, scope: !484)
!491 = !DILocation(line: 253, column: 63, scope: !484)
!492 = !DILocation(line: 253, column: 12, scope: !484)
!493 = !DILocation(line: 253, column: 10, scope: !484)
!494 = !DILocation(line: 256, column: 24, scope: !495)
!495 = distinct !DILexicalBlock(scope: !452, file: !1, line: 255, column: 3)
!496 = !DILocation(line: 256, column: 17, scope: !495)
!497 = !DILocation(line: 256, column: 15, scope: !495)
!498 = !DILocation(line: 257, column: 7, scope: !499)
!499 = distinct !DILexicalBlock(scope: !495, file: !1, line: 257, column: 7)
!500 = !DILocation(line: 257, column: 19, scope: !499)
!501 = !DILocation(line: 257, column: 7, scope: !495)
!502 = !DILocation(line: 259, column: 27, scope: !503)
!503 = distinct !DILexicalBlock(scope: !504, file: !1, line: 258, column: 5)
!504 = distinct !DILexicalBlock(scope: !499, file: !1, line: 257, column: 28)
!505 = !DILocation(line: 259, column: 34, scope: !503)
!506 = !DILocation(line: 259, column: 45, scope: !503)
!507 = !DILocation(line: 259, column: 5, scope: !503)
!508 = !DILocation(line: 260, column: 14, scope: !503)
!509 = !DILocation(line: 260, column: 12, scope: !503)
!510 = !DILocation(line: 262, column: 3, scope: !504)
!511 = !DILocation(line: 264, column: 11, scope: !452)
!512 = !DILocation(line: 264, column: 3, scope: !452)
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !26, file: !1, line: 267, type: !14)
!514 = !DILocation(line: 267, column: 24, scope: !26)
!515 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !26, file: !1, line: 267, type: !14)
!516 = !DILocation(line: 267, column: 43, scope: !26)
!517 = !DILocation(line: 272, column: 12, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !1, line: 271, column: 3)
!519 = distinct !DILexicalBlock(scope: !26, file: !1, line: 270, column: 3)
!520 = !DILocation(line: 273, column: 22, scope: !518)
!521 = !DILocation(line: 273, column: 3, scope: !518)
!522 = !DILocation(line: 934, column: 7, scope: !241, inlinedAt: !523)
!523 = distinct !DILocation(line: 273, column: 3, scope: !518)
!524 = !DILocation(line: 934, column: 12, scope: !241, inlinedAt: !523)
!525 = !DILocation(line: 934, column: 9, scope: !241, inlinedAt: !523)
!526 = !DILocation(line: 934, column: 7, scope: !242, inlinedAt: !523)
!527 = !DILocation(line: 34, column: 10, scope: !78, inlinedAt: !528)
!528 = distinct !DILocation(line: 938, column: 5, scope: !249, inlinedAt: !523)
!529 = !DILocation(line: 935, column: 9, scope: !252, inlinedAt: !523)
!530 = !DILocation(line: 935, column: 7, scope: !252, inlinedAt: !523)
!531 = !DILocation(line: 941, column: 3, scope: !242, inlinedAt: !523)
!532 = !DILocation(line: 930, column: 29, scope: !45, inlinedAt: !523)
!533 = !DILocation(line: 930, column: 39, scope: !45, inlinedAt: !523)
!534 = !DILocation(line: 275, column: 3, scope: !519)
!535 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !27, file: !1, line: 278, type: !14)
!536 = !DILocation(line: 278, column: 30, scope: !27)
!537 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !27, file: !1, line: 278, type: !14)
!538 = !DILocation(line: 278, column: 49, scope: !27)
!539 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 3, scope: !27, file: !1, line: 278, type: !14)
!540 = !DILocation(line: 278, column: 59, scope: !27)
!541 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack__MajorFunction", scope: !27, file: !1, line: 279, type: !14)
!542 = !DILocation(line: 279, column: 7, scope: !27)
!543 = !DILocation(line: 279, column: 33, scope: !27)
!544 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partitionCounters__BytesRead__QuadPart", scope: !27, file: !1, line: 280, type: !14)
!545 = !DILocation(line: 280, column: 7, scope: !27)
!546 = !DILocation(line: 280, column: 48, scope: !27)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !27, file: !1, line: 281, type: !14)
!548 = !DILocation(line: 281, column: 7, scope: !27)
!549 = !DILocation(line: 281, column: 36, scope: !27)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partitionCounters__ReadCount", scope: !27, file: !1, line: 282, type: !14)
!551 = !DILocation(line: 282, column: 7, scope: !27)
!552 = !DILocation(line: 282, column: 38, scope: !27)
!553 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partitionCounters__ReadTime__QuadPart", scope: !27, file: !1, line: 283, type: !14)
!554 = !DILocation(line: 283, column: 7, scope: !27)
!555 = !DILocation(line: 283, column: 47, scope: !27)
!556 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "difference__QuadPart", scope: !27, file: !1, line: 284, type: !14)
!557 = !DILocation(line: 284, column: 7, scope: !27)
!558 = !DILocation(line: 284, column: 30, scope: !27)
!559 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partitionCounters__BytesWritten__QuadPart", scope: !27, file: !1, line: 285, type: !14)
!560 = !DILocation(line: 285, column: 7, scope: !27)
!561 = !DILocation(line: 285, column: 51, scope: !27)
!562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partitionCounters__WriteCount", scope: !27, file: !1, line: 286, type: !14)
!563 = !DILocation(line: 286, column: 7, scope: !27)
!564 = !DILocation(line: 286, column: 39, scope: !27)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partitionCounters__WriteTime__QuadPart", scope: !27, file: !1, line: 287, type: !14)
!566 = !DILocation(line: 287, column: 7, scope: !27)
!567 = !DILocation(line: 287, column: 48, scope: !27)
!568 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Flags", scope: !27, file: !1, line: 288, type: !14)
!569 = !DILocation(line: 288, column: 7, scope: !27)
!570 = !DILocation(line: 288, column: 20, scope: !27)
!571 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partitionCounters__SplitCount", scope: !27, file: !1, line: 289, type: !14)
!572 = !DILocation(line: 289, column: 7, scope: !27)
!573 = !DILocation(line: 289, column: 39, scope: !27)
!574 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__PendingReturned", scope: !27, file: !1, line: 290, type: !14)
!575 = !DILocation(line: 290, column: 7, scope: !27)
!576 = !DILocation(line: 290, column: 30, scope: !27)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation__Control", scope: !27, file: !1, line: 291, type: !14)
!578 = !DILocation(line: 291, column: 7, scope: !27)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partitionCounters", scope: !27, file: !1, line: 292, type: !14)
!580 = !DILocation(line: 292, column: 7, scope: !27)
!581 = !DILocation(line: 292, column: 27, scope: !27)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "queueLen", scope: !27, file: !1, line: 293, type: !14)
!583 = !DILocation(line: 293, column: 7, scope: !27)
!584 = !DILocation(line: 293, column: 18, scope: !27)
!585 = !DILocation(line: 296, column: 7, scope: !586)
!586 = distinct !DILexicalBlock(scope: !587, file: !1, line: 296, column: 7)
!587 = distinct !DILexicalBlock(scope: !27, file: !1, line: 295, column: 3)
!588 = !DILocation(line: 296, column: 25, scope: !586)
!589 = !DILocation(line: 296, column: 7, scope: !587)
!590 = !DILocation(line: 297, column: 5, scope: !591)
!591 = distinct !DILexicalBlock(scope: !586, file: !1, line: 296, column: 31)
!592 = !DILocation(line: 299, column: 7, scope: !593)
!593 = distinct !DILexicalBlock(scope: !587, file: !1, line: 299, column: 7)
!594 = !DILocation(line: 299, column: 16, scope: !593)
!595 = !DILocation(line: 299, column: 7, scope: !587)
!596 = !DILocation(line: 301, column: 3, scope: !597)
!597 = distinct !DILexicalBlock(scope: !593, file: !1, line: 299, column: 21)
!598 = !DILocation(line: 302, column: 7, scope: !599)
!599 = distinct !DILexicalBlock(scope: !587, file: !1, line: 302, column: 7)
!600 = !DILocation(line: 302, column: 16, scope: !599)
!601 = !DILocation(line: 302, column: 7, scope: !587)
!602 = !DILocation(line: 304, column: 3, scope: !603)
!603 = distinct !DILexicalBlock(scope: !599, file: !1, line: 302, column: 22)
!604 = !DILocation(line: 305, column: 7, scope: !605)
!605 = distinct !DILexicalBlock(scope: !587, file: !1, line: 305, column: 7)
!606 = !DILocation(line: 305, column: 31, scope: !605)
!607 = !DILocation(line: 305, column: 7, scope: !587)
!608 = !DILocation(line: 306, column: 47, scope: !609)
!609 = distinct !DILexicalBlock(scope: !605, file: !1, line: 305, column: 37)
!610 = !DILocation(line: 306, column: 44, scope: !609)
!611 = !DILocation(line: 307, column: 34, scope: !609)
!612 = !DILocation(line: 308, column: 46, scope: !609)
!613 = !DILocation(line: 308, column: 43, scope: !609)
!614 = !DILocation(line: 309, column: 3, scope: !609)
!615 = !DILocation(line: 310, column: 50, scope: !616)
!616 = distinct !DILexicalBlock(scope: !605, file: !1, line: 309, column: 10)
!617 = !DILocation(line: 310, column: 47, scope: !616)
!618 = !DILocation(line: 311, column: 35, scope: !616)
!619 = !DILocation(line: 312, column: 47, scope: !616)
!620 = !DILocation(line: 312, column: 44, scope: !616)
!621 = !DILocation(line: 314, column: 7, scope: !622)
!622 = distinct !DILexicalBlock(scope: !587, file: !1, line: 314, column: 7)
!623 = !DILocation(line: 314, column: 18, scope: !622)
!624 = !DILocation(line: 314, column: 7, scope: !587)
!625 = !DILocation(line: 315, column: 35, scope: !626)
!626 = distinct !DILexicalBlock(scope: !622, file: !1, line: 314, column: 24)
!627 = !DILocation(line: 316, column: 3, scope: !626)
!628 = !DILocation(line: 319, column: 7, scope: !629)
!629 = distinct !DILexicalBlock(scope: !587, file: !1, line: 319, column: 7)
!630 = !DILocation(line: 319, column: 7, scope: !587)
!631 = !DILocation(line: 320, column: 9, scope: !632)
!632 = distinct !DILexicalBlock(scope: !633, file: !1, line: 320, column: 9)
!633 = distinct !DILexicalBlock(scope: !629, file: !1, line: 319, column: 29)
!634 = !DILocation(line: 320, column: 16, scope: !632)
!635 = !DILocation(line: 320, column: 9, scope: !633)
!636 = !DILocation(line: 321, column: 14, scope: !637)
!637 = distinct !DILexicalBlock(scope: !632, file: !1, line: 320, column: 22)
!638 = !DILocation(line: 322, column: 5, scope: !637)
!639 = !DILocation(line: 34, column: 10, scope: !78, inlinedAt: !640)
!640 = distinct !DILocation(line: 324, column: 7, scope: !641)
!641 = distinct !DILexicalBlock(scope: !642, file: !1, line: 323, column: 7)
!642 = distinct !DILexicalBlock(scope: !632, file: !1, line: 322, column: 12)
!643 = !DILocation(line: 328, column: 3, scope: !633)
!644 = !DILocation(line: 329, column: 3, scope: !587)
!645 = !DILocation(line: 331, column: 1, scope: !27)
!646 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !28, file: !1, line: 332, type: !14)
!647 = !DILocation(line: 332, column: 31, scope: !28)
!648 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !28, file: !1, line: 332, type: !14)
!649 = !DILocation(line: 332, column: 50, scope: !28)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !28, file: !1, line: 333, type: !14)
!651 = !DILocation(line: 333, column: 7, scope: !28)
!652 = !DILocation(line: 333, column: 30, scope: !28)
!653 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !28, file: !1, line: 334, type: !14)
!654 = !DILocation(line: 334, column: 7, scope: !28)
!655 = !DILocation(line: 334, column: 50, scope: !28)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !28, file: !1, line: 335, type: !14)
!657 = !DILocation(line: 335, column: 7, scope: !28)
!658 = !DILocation(line: 335, column: 39, scope: !28)
!659 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__TargetDeviceObject", scope: !28, file: !1, line: 336, type: !14)
!660 = !DILocation(line: 336, column: 7, scope: !28)
!661 = !DILocation(line: 336, column: 45, scope: !28)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentIrpStack__Parameters__DeviceIoControl__IoControlCode", scope: !28, file: !1, line: 337, type: !14)
!663 = !DILocation(line: 337, column: 7, scope: !28)
!664 = !DILocation(line: 337, column: 69, scope: !28)
!665 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength", scope: !28, file: !1, line: 338, type: !14)
!666 = !DILocation(line: 338, column: 7, scope: !28)
!667 = !DILocation(line: 338, column: 74, scope: !28)
!668 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__DISK_PERFORMANCE", scope: !28, file: !1, line: 339, type: !14)
!669 = !DILocation(line: 339, column: 7, scope: !28)
!670 = !DILocation(line: 339, column: 34, scope: !28)
!671 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !28, file: !1, line: 340, type: !14)
!672 = !DILocation(line: 340, column: 7, scope: !28)
!673 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__DiskCounters", scope: !28, file: !1, line: 341, type: !14)
!674 = !DILocation(line: 341, column: 7, scope: !28)
!675 = !DILocation(line: 341, column: 39, scope: !28)
!676 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__AssociatedIrp__SystemBuffer", scope: !28, file: !1, line: 342, type: !14)
!677 = !DILocation(line: 342, column: 7, scope: !28)
!678 = !DILocation(line: 342, column: 42, scope: !28)
!679 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__Processors", scope: !28, file: !1, line: 343, type: !14)
!680 = !DILocation(line: 343, column: 7, scope: !28)
!681 = !DILocation(line: 343, column: 37, scope: !28)
!682 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "totalCounters__QueueDepth", scope: !28, file: !1, line: 344, type: !14)
!683 = !DILocation(line: 344, column: 7, scope: !28)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__QueueDepth", scope: !28, file: !1, line: 345, type: !14)
!685 = !DILocation(line: 345, column: 7, scope: !28)
!686 = !DILocation(line: 345, column: 37, scope: !28)
!687 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !28, file: !1, line: 346, type: !14)
!688 = !DILocation(line: 346, column: 7, scope: !28)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !28, file: !1, line: 347, type: !14)
!690 = !DILocation(line: 347, column: 7, scope: !28)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentIrpStack", scope: !28, file: !1, line: 348, type: !14)
!692 = !DILocation(line: 348, column: 7, scope: !28)
!693 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !28, file: !1, line: 349, type: !14)
!694 = !DILocation(line: 349, column: 7, scope: !28)
!695 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !28, file: !1, line: 350, type: !14)
!696 = !DILocation(line: 350, column: 7, scope: !28)
!697 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "totalCounters", scope: !28, file: !1, line: 351, type: !14)
!698 = !DILocation(line: 351, column: 7, scope: !28)
!699 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "diskCounters", scope: !28, file: !1, line: 352, type: !14)
!700 = !DILocation(line: 352, column: 7, scope: !28)
!701 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !28, file: !1, line: 353, type: !14)
!702 = !DILocation(line: 353, column: 7, scope: !28)
!703 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp24", scope: !28, file: !1, line: 354, type: !14)
!704 = !DILocation(line: 354, column: 7, scope: !28)
!705 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp25", scope: !28, file: !1, line: 355, type: !14)
!706 = !DILocation(line: 355, column: 7, scope: !28)
!707 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp26", scope: !28, file: !1, line: 356, type: !14)
!708 = !DILocation(line: 356, column: 7, scope: !28)
!709 = !DILocation(line: 359, column: 21, scope: !710)
!710 = distinct !DILexicalBlock(scope: !28, file: !1, line: 358, column: 3)
!711 = !DILocation(line: 359, column: 19, scope: !710)
!712 = !DILocation(line: 360, column: 21, scope: !710)
!713 = !DILocation(line: 360, column: 19, scope: !710)
!714 = !DILocation(line: 362, column: 15, scope: !715)
!715 = distinct !DILexicalBlock(scope: !710, file: !1, line: 361, column: 3)
!716 = !DILocation(line: 363, column: 15, scope: !715)
!717 = !DILocation(line: 364, column: 15, scope: !715)
!718 = !DILocation(line: 365, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !715, file: !1, line: 365, column: 7)
!720 = !DILocation(line: 365, column: 70, scope: !719)
!721 = !DILocation(line: 365, column: 67, scope: !719)
!722 = !DILocation(line: 930, column: 29, scope: !45, inlinedAt: !723)
!723 = distinct !DILocation(line: 375, column: 9, scope: !724)
!724 = distinct !DILexicalBlock(scope: !725, file: !1, line: 372, column: 9)
!725 = distinct !DILexicalBlock(scope: !726, file: !1, line: 371, column: 30)
!726 = distinct !DILexicalBlock(scope: !727, file: !1, line: 371, column: 11)
!727 = distinct !DILexicalBlock(scope: !728, file: !1, line: 369, column: 12)
!728 = distinct !DILexicalBlock(scope: !729, file: !1, line: 366, column: 9)
!729 = distinct !DILexicalBlock(scope: !719, file: !1, line: 365, column: 83)
!730 = !DILocation(line: 930, column: 39, scope: !45, inlinedAt: !723)
!731 = !DILocation(line: 930, column: 29, scope: !45, inlinedAt: !732)
!732 = distinct !DILocation(line: 400, column: 5, scope: !733)
!733 = distinct !DILexicalBlock(scope: !729, file: !1, line: 397, column: 5)
!734 = !DILocation(line: 930, column: 39, scope: !45, inlinedAt: !732)
!735 = !DILocation(line: 365, column: 7, scope: !715)
!736 = !DILocation(line: 366, column: 9, scope: !728)
!737 = !DILocation(line: 366, column: 76, scope: !728)
!738 = !DILocation(line: 366, column: 74, scope: !728)
!739 = !DILocation(line: 366, column: 9, scope: !729)
!740 = !DILocation(line: 367, column: 14, scope: !741)
!741 = distinct !DILexicalBlock(scope: !728, file: !1, line: 366, column: 102)
!742 = !DILocation(line: 368, column: 34, scope: !741)
!743 = !DILocation(line: 369, column: 5, scope: !741)
!744 = !DILocation(line: 370, column: 22, scope: !727)
!745 = !DILocation(line: 370, column: 20, scope: !727)
!746 = !DILocation(line: 371, column: 11, scope: !726)
!747 = !DILocation(line: 371, column: 24, scope: !726)
!748 = !DILocation(line: 371, column: 11, scope: !727)
!749 = !DILocation(line: 373, column: 31, scope: !724)
!750 = !DILocation(line: 374, column: 18, scope: !724)
!751 = !DILocation(line: 375, column: 28, scope: !724)
!752 = !DILocation(line: 375, column: 9, scope: !724)
!753 = !DILocation(line: 934, column: 7, scope: !241, inlinedAt: !723)
!754 = !DILocation(line: 934, column: 12, scope: !241, inlinedAt: !723)
!755 = !DILocation(line: 934, column: 9, scope: !241, inlinedAt: !723)
!756 = !DILocation(line: 934, column: 7, scope: !242, inlinedAt: !723)
!757 = !DILocation(line: 34, column: 10, scope: !78, inlinedAt: !758)
!758 = distinct !DILocation(line: 938, column: 5, scope: !249, inlinedAt: !723)
!759 = !DILocation(line: 935, column: 9, scope: !252, inlinedAt: !723)
!760 = !DILocation(line: 935, column: 7, scope: !252, inlinedAt: !723)
!761 = !DILocation(line: 941, column: 3, scope: !242, inlinedAt: !723)
!762 = !DILocation(line: 377, column: 9, scope: !725)
!763 = !DILocation(line: 379, column: 23, scope: !727)
!764 = !DILocation(line: 379, column: 21, scope: !727)
!765 = !DILocation(line: 380, column: 9, scope: !727)
!766 = !DILocation(line: 382, column: 7, scope: !767)
!767 = distinct !DILexicalBlock(scope: !727, file: !1, line: 381, column: 7)
!768 = !DILocation(line: 382, column: 17, scope: !767)
!769 = !DILocation(line: 385, column: 13, scope: !770)
!770 = distinct !DILexicalBlock(scope: !771, file: !1, line: 385, column: 13)
!771 = distinct !DILexicalBlock(scope: !767, file: !1, line: 382, column: 17)
!772 = !DILocation(line: 385, column: 18, scope: !770)
!773 = !DILocation(line: 385, column: 15, scope: !770)
!774 = !DILocation(line: 385, column: 13, scope: !771)
!775 = !DILocation(line: 386, column: 11, scope: !776)
!776 = distinct !DILexicalBlock(scope: !770, file: !1, line: 385, column: 47)
!777 = !DILocation(line: 388, column: 11, scope: !771)
!778 = !DILocation(line: 391, column: 7, scope: !767)
!779 = !DILocation(line: 393, column: 35, scope: !727)
!780 = !DILocation(line: 393, column: 33, scope: !727)
!781 = !DILocation(line: 394, column: 14, scope: !727)
!782 = !DILocation(line: 395, column: 36, scope: !727)
!783 = !DILocation(line: 395, column: 34, scope: !727)
!784 = !DILocation(line: 398, column: 29, scope: !733)
!785 = !DILocation(line: 398, column: 27, scope: !733)
!786 = !DILocation(line: 399, column: 16, scope: !733)
!787 = !DILocation(line: 399, column: 14, scope: !733)
!788 = !DILocation(line: 400, column: 24, scope: !733)
!789 = !DILocation(line: 400, column: 5, scope: !733)
!790 = !DILocation(line: 934, column: 7, scope: !241, inlinedAt: !732)
!791 = !DILocation(line: 934, column: 12, scope: !241, inlinedAt: !732)
!792 = !DILocation(line: 934, column: 9, scope: !241, inlinedAt: !732)
!793 = !DILocation(line: 934, column: 7, scope: !242, inlinedAt: !732)
!794 = !DILocation(line: 34, column: 10, scope: !78, inlinedAt: !795)
!795 = distinct !DILocation(line: 938, column: 5, scope: !249, inlinedAt: !732)
!796 = !DILocation(line: 935, column: 9, scope: !252, inlinedAt: !732)
!797 = !DILocation(line: 935, column: 7, scope: !252, inlinedAt: !732)
!798 = !DILocation(line: 941, column: 3, scope: !242, inlinedAt: !732)
!799 = !DILocation(line: 402, column: 13, scope: !729)
!800 = !DILocation(line: 402, column: 5, scope: !729)
!801 = !DILocation(line: 405, column: 26, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !1, line: 404, column: 5)
!803 = distinct !DILexicalBlock(scope: !719, file: !1, line: 403, column: 10)
!804 = !DILocation(line: 406, column: 46, scope: !802)
!805 = !DILocation(line: 407, column: 25, scope: !802)
!806 = !DILocation(line: 407, column: 62, scope: !802)
!807 = !DILocation(line: 407, column: 11, scope: !802)
!808 = !DILocation(line: 407, column: 9, scope: !802)
!809 = !DILocation(line: 409, column: 13, scope: !803)
!810 = !DILocation(line: 409, column: 5, scope: !803)
!811 = !DILocation(line: 413, column: 1, scope: !28)
!812 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !29, file: !1, line: 414, type: !14)
!813 = !DILocation(line: 414, column: 31, scope: !29)
!814 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !29, file: !1, line: 414, type: !14)
!815 = !DILocation(line: 414, column: 50, scope: !29)
!816 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !29, file: !1, line: 415, type: !14)
!817 = !DILocation(line: 415, column: 7, scope: !29)
!818 = !DILocation(line: 415, column: 39, scope: !29)
!819 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !29, file: !1, line: 416, type: !14)
!820 = !DILocation(line: 416, column: 7, scope: !29)
!821 = !DILocation(line: 416, column: 30, scope: !29)
!822 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !29, file: !1, line: 417, type: !14)
!823 = !DILocation(line: 417, column: 7, scope: !29)
!824 = !DILocation(line: 417, column: 50, scope: !29)
!825 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__TargetDeviceObject", scope: !29, file: !1, line: 418, type: !14)
!826 = !DILocation(line: 418, column: 7, scope: !29)
!827 = !DILocation(line: 418, column: 45, scope: !29)
!828 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !29, file: !1, line: 419, type: !14)
!829 = !DILocation(line: 419, column: 7, scope: !29)
!830 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !29, file: !1, line: 420, type: !14)
!831 = !DILocation(line: 420, column: 7, scope: !29)
!832 = !DILocation(line: 424, column: 21, scope: !833)
!833 = distinct !DILexicalBlock(scope: !834, file: !1, line: 423, column: 3)
!834 = distinct !DILexicalBlock(scope: !29, file: !1, line: 422, column: 3)
!835 = !DILocation(line: 424, column: 19, scope: !833)
!836 = !DILocation(line: 425, column: 24, scope: !833)
!837 = !DILocation(line: 426, column: 44, scope: !833)
!838 = !DILocation(line: 427, column: 23, scope: !833)
!839 = !DILocation(line: 427, column: 60, scope: !833)
!840 = !DILocation(line: 427, column: 9, scope: !833)
!841 = !DILocation(line: 427, column: 7, scope: !833)
!842 = !DILocation(line: 429, column: 11, scope: !834)
!843 = !DILocation(line: 429, column: 3, scope: !834)
!844 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DriverObject", arg: 1, scope: !30, file: !1, line: 432, type: !14)
!845 = !DILocation(line: 432, column: 25, scope: !30)
!846 = !DILocation(line: 436, column: 3, scope: !847)
!847 = distinct !DILexicalBlock(scope: !30, file: !1, line: 435, column: 3)
!848 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !33, file: !1, line: 439, type: !14)
!849 = !DILocation(line: 439, column: 32, scope: !33)
!850 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !33, file: !1, line: 440, type: !14)
!851 = !DILocation(line: 440, column: 7, scope: !33)
!852 = !DILocation(line: 440, column: 39, scope: !33)
!853 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__TargetDeviceObject", scope: !33, file: !1, line: 441, type: !14)
!854 = !DILocation(line: 441, column: 7, scope: !33)
!855 = !DILocation(line: 441, column: 45, scope: !33)
!856 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__number", scope: !33, file: !1, line: 442, type: !14)
!857 = !DILocation(line: 442, column: 7, scope: !33)
!858 = !DILocation(line: 442, column: 24, scope: !33)
!859 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ioStatus__Status", scope: !33, file: !1, line: 443, type: !14)
!860 = !DILocation(line: 443, column: 7, scope: !33)
!861 = !DILocation(line: 443, column: 26, scope: !33)
!862 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__VOLUME_NUMBER", scope: !33, file: !1, line: 444, type: !14)
!863 = !DILocation(line: 444, column: 7, scope: !33)
!864 = !DILocation(line: 444, column: 31, scope: !33)
!865 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volumeNumber__VolumeManagerName__0", scope: !33, file: !1, line: 445, type: !14)
!866 = !DILocation(line: 445, column: 7, scope: !33)
!867 = !DILocation(line: 445, column: 44, scope: !33)
!868 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !33, file: !1, line: 446, type: !14)
!869 = !DILocation(line: 446, column: 7, scope: !33)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ioStatus", scope: !33, file: !1, line: 447, type: !14)
!871 = !DILocation(line: 447, column: 7, scope: !33)
!872 = !DILocation(line: 447, column: 18, scope: !33)
!873 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "event", scope: !33, file: !1, line: 448, type: !14)
!874 = !DILocation(line: 448, column: 7, scope: !33)
!875 = !DILocation(line: 448, column: 15, scope: !33)
!876 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !33, file: !1, line: 449, type: !14)
!877 = !DILocation(line: 449, column: 7, scope: !33)
!878 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp", scope: !33, file: !1, line: 450, type: !14)
!879 = !DILocation(line: 450, column: 7, scope: !33)
!880 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "number", scope: !33, file: !1, line: 451, type: !14)
!881 = !DILocation(line: 451, column: 7, scope: !33)
!882 = !DILocation(line: 451, column: 16, scope: !33)
!883 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "registrationFlag", scope: !33, file: !1, line: 452, type: !14)
!884 = !DILocation(line: 452, column: 7, scope: !33)
!885 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__MOUNTDEV_NAME", scope: !33, file: !1, line: 453, type: !14)
!886 = !DILocation(line: 453, column: 7, scope: !33)
!887 = !DILocation(line: 453, column: 31, scope: !33)
!888 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "output__NameLength", scope: !33, file: !1, line: 454, type: !14)
!889 = !DILocation(line: 454, column: 7, scope: !33)
!890 = !DILocation(line: 454, column: 28, scope: !33)
!891 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outputSize", scope: !33, file: !1, line: 455, type: !14)
!892 = !DILocation(line: 455, column: 7, scope: !33)
!893 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "output", scope: !33, file: !1, line: 456, type: !14)
!894 = !DILocation(line: 456, column: 7, scope: !33)
!895 = !DILocation(line: 456, column: 16, scope: !33)
!896 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volumeNumber", scope: !33, file: !1, line: 457, type: !14)
!897 = !DILocation(line: 457, column: 7, scope: !33)
!898 = !DILocation(line: 457, column: 22, scope: !33)
!899 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp20", scope: !33, file: !1, line: 458, type: !14)
!900 = !DILocation(line: 458, column: 7, scope: !33)
!901 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp21", scope: !33, file: !1, line: 459, type: !14)
!902 = !DILocation(line: 459, column: 7, scope: !33)
!903 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp22", scope: !33, file: !1, line: 460, type: !14)
!904 = !DILocation(line: 460, column: 7, scope: !33)
!905 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp23", scope: !33, file: !1, line: 461, type: !4)
!906 = !DILocation(line: 461, column: 8, scope: !33)
!907 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp24", scope: !33, file: !1, line: 462, type: !14)
!908 = !DILocation(line: 462, column: 7, scope: !33)
!909 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp25", scope: !33, file: !1, line: 463, type: !14)
!910 = !DILocation(line: 463, column: 7, scope: !33)
!911 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp26", scope: !33, file: !1, line: 464, type: !14)
!912 = !DILocation(line: 464, column: 7, scope: !33)
!913 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp27", scope: !33, file: !1, line: 465, type: !4)
!914 = !DILocation(line: 465, column: 8, scope: !33)
!915 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp28", scope: !33, file: !1, line: 466, type: !5)
!916 = !DILocation(line: 466, column: 17, scope: !33)
!917 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp29", scope: !33, file: !1, line: 467, type: !14)
!918 = !DILocation(line: 467, column: 7, scope: !33)
!919 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp30", scope: !33, file: !1, line: 468, type: !14)
!920 = !DILocation(line: 468, column: 7, scope: !33)
!921 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp31", scope: !33, file: !1, line: 469, type: !14)
!922 = !DILocation(line: 469, column: 7, scope: !33)
!923 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp32", scope: !33, file: !1, line: 470, type: !4)
!924 = !DILocation(line: 470, column: 8, scope: !33)
!925 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp33", scope: !33, file: !1, line: 471, type: !14)
!926 = !DILocation(line: 471, column: 7, scope: !33)
!927 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp34", scope: !33, file: !1, line: 472, type: !14)
!928 = !DILocation(line: 472, column: 7, scope: !33)
!929 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp35", scope: !33, file: !1, line: 473, type: !14)
!930 = !DILocation(line: 473, column: 7, scope: !33)
!931 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp36", scope: !33, file: !1, line: 474, type: !14)
!932 = !DILocation(line: 474, column: 7, scope: !33)
!933 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp37", scope: !33, file: !1, line: 475, type: !4)
!934 = !DILocation(line: 475, column: 8, scope: !33)
!935 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp38", scope: !33, file: !1, line: 476, type: !14)
!936 = !DILocation(line: 476, column: 7, scope: !33)
!937 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp39", scope: !33, file: !1, line: 477, type: !14)
!938 = !DILocation(line: 477, column: 7, scope: !33)
!939 = !DILocation(line: 481, column: 20, scope: !940)
!940 = distinct !DILexicalBlock(scope: !941, file: !1, line: 480, column: 3)
!941 = distinct !DILexicalBlock(scope: !33, file: !1, line: 479, column: 3)
!942 = !DILocation(line: 482, column: 21, scope: !940)
!943 = !DILocation(line: 482, column: 19, scope: !940)
!944 = !DILocation(line: 483, column: 15, scope: !940)
!945 = !DILocation(line: 484, column: 15, scope: !940)
!946 = !DILocation(line: 485, column: 15, scope: !940)
!947 = !DILocation(line: 486, column: 39, scope: !940)
!948 = !DILocation(line: 486, column: 52, scope: !940)
!949 = !DILocation(line: 487, column: 45, scope: !940)
!950 = !DILocation(line: 487, column: 53, scope: !940)
!951 = !DILocation(line: 487, column: 72, scope: !940)
!952 = !DILocation(line: 487, column: 79, scope: !940)
!953 = !DILocation(line: 486, column: 9, scope: !940)
!954 = !DILocation(line: 816, column: 20, scope: !40, inlinedAt: !955)
!955 = distinct !DILocation(line: 486, column: 9, scope: !940)
!956 = !DILocation(line: 816, column: 7, scope: !40, inlinedAt: !955)
!957 = !DILocation(line: 819, column: 13, scope: !958, inlinedAt: !955)
!958 = distinct !DILexicalBlock(scope: !40, file: !1, line: 818, column: 3)
!959 = !DILocation(line: 821, column: 15, scope: !958, inlinedAt: !955)
!960 = !DILocation(line: 821, column: 13, scope: !958, inlinedAt: !955)
!961 = !DILocation(line: 822, column: 7, scope: !962, inlinedAt: !955)
!962 = distinct !DILexicalBlock(scope: !958, file: !1, line: 822, column: 7)
!963 = !DILocation(line: 822, column: 17, scope: !962, inlinedAt: !955)
!964 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "IoControlCode", arg: 1, scope: !40, file: !1, line: 812, type: !14)
!965 = !DILocation(line: 812, column: 39, scope: !40, inlinedAt: !966)
!966 = distinct !DILocation(line: 513, column: 11, scope: !967)
!967 = distinct !DILexicalBlock(scope: !968, file: !1, line: 509, column: 5)
!968 = distinct !DILexicalBlock(scope: !969, file: !1, line: 504, column: 19)
!969 = distinct !DILexicalBlock(scope: !941, file: !1, line: 504, column: 7)
!970 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 2, scope: !40, file: !1, line: 812, type: !14)
!971 = !DILocation(line: 812, column: 59, scope: !40, inlinedAt: !966)
!972 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InputBuffer", arg: 3, scope: !40, file: !1, line: 812, type: !14)
!973 = !DILocation(line: 812, column: 78, scope: !40, inlinedAt: !966)
!974 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InputBufferLength", arg: 4, scope: !40, file: !1, line: 813, type: !14)
!975 = !DILocation(line: 813, column: 39, scope: !40, inlinedAt: !966)
!976 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "OutputBuffer", arg: 5, scope: !40, file: !1, line: 813, type: !14)
!977 = !DILocation(line: 813, column: 63, scope: !40, inlinedAt: !966)
!978 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "OutputBufferLength", arg: 6, scope: !40, file: !1, line: 813, type: !14)
!979 = !DILocation(line: 813, column: 82, scope: !40, inlinedAt: !966)
!980 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InternalDeviceIoControl", arg: 7, scope: !40, file: !1, line: 814, type: !14)
!981 = !DILocation(line: 814, column: 39, scope: !40, inlinedAt: !966)
!982 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 8, scope: !40, file: !1, line: 814, type: !14)
!983 = !DILocation(line: 814, column: 69, scope: !40, inlinedAt: !966)
!984 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "IoStatusBlock", arg: 9, scope: !40, file: !1, line: 814, type: !14)
!985 = !DILocation(line: 814, column: 81, scope: !40, inlinedAt: !966)
!986 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "malloc_ret", scope: !40, file: !1, line: 816, type: !14)
!987 = !DILocation(line: 816, column: 7, scope: !40, inlinedAt: !966)
!988 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_7", scope: !958, file: !1, line: 820, type: !14)
!989 = !DILocation(line: 820, column: 7, scope: !958, inlinedAt: !966)
!990 = !DILocation(line: 812, column: 39, scope: !40, inlinedAt: !991)
!991 = distinct !DILocation(line: 542, column: 13, scope: !992)
!992 = distinct !DILexicalBlock(scope: !993, file: !1, line: 538, column: 7)
!993 = distinct !DILexicalBlock(scope: !994, file: !1, line: 533, column: 37)
!994 = distinct !DILexicalBlock(scope: !995, file: !1, line: 533, column: 9)
!995 = distinct !DILexicalBlock(scope: !968, file: !1, line: 531, column: 5)
!996 = !DILocation(line: 812, column: 59, scope: !40, inlinedAt: !991)
!997 = !DILocation(line: 812, column: 78, scope: !40, inlinedAt: !991)
!998 = !DILocation(line: 813, column: 39, scope: !40, inlinedAt: !991)
!999 = !DILocation(line: 813, column: 63, scope: !40, inlinedAt: !991)
!1000 = !DILocation(line: 813, column: 82, scope: !40, inlinedAt: !991)
!1001 = !DILocation(line: 814, column: 39, scope: !40, inlinedAt: !991)
!1002 = !DILocation(line: 814, column: 69, scope: !40, inlinedAt: !991)
!1003 = !DILocation(line: 814, column: 81, scope: !40, inlinedAt: !991)
!1004 = !DILocation(line: 816, column: 7, scope: !40, inlinedAt: !991)
!1005 = !DILocation(line: 820, column: 7, scope: !958, inlinedAt: !991)
!1006 = !DILocation(line: 812, column: 39, scope: !40, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 571, column: 11, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !968, file: !1, line: 567, column: 5)
!1009 = !DILocation(line: 812, column: 59, scope: !40, inlinedAt: !1007)
!1010 = !DILocation(line: 812, column: 78, scope: !40, inlinedAt: !1007)
!1011 = !DILocation(line: 813, column: 39, scope: !40, inlinedAt: !1007)
!1012 = !DILocation(line: 813, column: 63, scope: !40, inlinedAt: !1007)
!1013 = !DILocation(line: 813, column: 82, scope: !40, inlinedAt: !1007)
!1014 = !DILocation(line: 814, column: 39, scope: !40, inlinedAt: !1007)
!1015 = !DILocation(line: 814, column: 69, scope: !40, inlinedAt: !1007)
!1016 = !DILocation(line: 814, column: 81, scope: !40, inlinedAt: !1007)
!1017 = !DILocation(line: 816, column: 7, scope: !40, inlinedAt: !1007)
!1018 = !DILocation(line: 820, column: 7, scope: !958, inlinedAt: !1007)
!1019 = !DILocation(line: 822, column: 7, scope: !958, inlinedAt: !955)
!1020 = !DILocation(line: 828, column: 15, scope: !1021, inlinedAt: !955)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !1, line: 826, column: 12)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 826, column: 9)
!1023 = distinct !DILexicalBlock(scope: !962, file: !1, line: 824, column: 10)
!1024 = !DILocation(line: 828, column: 7, scope: !1021, inlinedAt: !955)
!1025 = !DILocation(line: 830, column: 7, scope: !1021, inlinedAt: !955)
!1026 = !DILocation(line: 836, column: 1, scope: !40, inlinedAt: !955)
!1027 = !DILocation(line: 486, column: 7, scope: !940)
!1028 = !DILocation(line: 489, column: 9, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !941, file: !1, line: 489, column: 7)
!1030 = !DILocation(line: 812, column: 39, scope: !40, inlinedAt: !955)
!1031 = !DILocation(line: 812, column: 59, scope: !40, inlinedAt: !955)
!1032 = !DILocation(line: 812, column: 78, scope: !40, inlinedAt: !955)
!1033 = !DILocation(line: 813, column: 39, scope: !40, inlinedAt: !955)
!1034 = !DILocation(line: 813, column: 63, scope: !40, inlinedAt: !955)
!1035 = !DILocation(line: 813, column: 82, scope: !40, inlinedAt: !955)
!1036 = !DILocation(line: 814, column: 39, scope: !40, inlinedAt: !955)
!1037 = !DILocation(line: 814, column: 69, scope: !40, inlinedAt: !955)
!1038 = !DILocation(line: 814, column: 81, scope: !40, inlinedAt: !955)
!1039 = !DILocation(line: 820, column: 7, scope: !958, inlinedAt: !955)
!1040 = !DILocation(line: 489, column: 7, scope: !941)
!1041 = !DILocation(line: 490, column: 5, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1029, file: !1, line: 489, column: 14)
!1043 = !DILocation(line: 493, column: 26, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !941, file: !1, line: 492, column: 3)
!1045 = !DILocation(line: 493, column: 63, scope: !1044)
!1046 = !DILocation(line: 493, column: 12, scope: !1044)
!1047 = !DILocation(line: 493, column: 10, scope: !1044)
!1048 = !DILocation(line: 496, column: 24, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !941, file: !1, line: 495, column: 3)
!1050 = !DILocation(line: 496, column: 17, scope: !1049)
!1051 = !DILocation(line: 496, column: 15, scope: !1049)
!1052 = !DILocation(line: 497, column: 7, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 497, column: 7)
!1054 = !DILocation(line: 497, column: 19, scope: !1053)
!1055 = !DILocation(line: 497, column: 7, scope: !1049)
!1056 = !DILocation(line: 499, column: 27, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 498, column: 5)
!1058 = distinct !DILexicalBlock(scope: !1053, file: !1, line: 497, column: 28)
!1059 = !DILocation(line: 499, column: 34, scope: !1057)
!1060 = !DILocation(line: 499, column: 45, scope: !1057)
!1061 = !DILocation(line: 499, column: 5, scope: !1057)
!1062 = !DILocation(line: 500, column: 14, scope: !1057)
!1063 = !DILocation(line: 500, column: 12, scope: !1057)
!1064 = !DILocation(line: 502, column: 3, scope: !1058)
!1065 = !DILocation(line: 504, column: 7, scope: !969)
!1066 = !DILocation(line: 504, column: 14, scope: !969)
!1067 = !DILocation(line: 504, column: 7, scope: !941)
!1068 = !DILocation(line: 505, column: 18, scope: !968)
!1069 = !DILocation(line: 505, column: 16, scope: !968)
!1070 = !DILocation(line: 506, column: 11, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !968, file: !1, line: 506, column: 9)
!1072 = !DILocation(line: 506, column: 9, scope: !968)
!1073 = !DILocation(line: 507, column: 7, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1071, file: !1, line: 506, column: 19)
!1075 = !DILocation(line: 510, column: 17, scope: !967)
!1076 = !DILocation(line: 511, column: 17, scope: !967)
!1077 = !DILocation(line: 512, column: 17, scope: !967)
!1078 = !DILocation(line: 513, column: 41, scope: !967)
!1079 = !DILocation(line: 513, column: 54, scope: !967)
!1080 = !DILocation(line: 514, column: 47, scope: !967)
!1081 = !DILocation(line: 514, column: 55, scope: !967)
!1082 = !DILocation(line: 514, column: 70, scope: !967)
!1083 = !DILocation(line: 514, column: 77, scope: !967)
!1084 = !DILocation(line: 513, column: 11, scope: !967)
!1085 = !DILocation(line: 816, column: 20, scope: !40, inlinedAt: !966)
!1086 = !DILocation(line: 819, column: 13, scope: !958, inlinedAt: !966)
!1087 = !DILocation(line: 821, column: 15, scope: !958, inlinedAt: !966)
!1088 = !DILocation(line: 821, column: 13, scope: !958, inlinedAt: !966)
!1089 = !DILocation(line: 822, column: 7, scope: !962, inlinedAt: !966)
!1090 = !DILocation(line: 822, column: 17, scope: !962, inlinedAt: !966)
!1091 = !DILocation(line: 822, column: 7, scope: !958, inlinedAt: !966)
!1092 = !DILocation(line: 828, column: 15, scope: !1021, inlinedAt: !966)
!1093 = !DILocation(line: 828, column: 7, scope: !1021, inlinedAt: !966)
!1094 = !DILocation(line: 830, column: 7, scope: !1021, inlinedAt: !966)
!1095 = !DILocation(line: 836, column: 1, scope: !40, inlinedAt: !966)
!1096 = !DILocation(line: 513, column: 9, scope: !967)
!1097 = !DILocation(line: 516, column: 11, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !968, file: !1, line: 516, column: 9)
!1099 = !DILocation(line: 516, column: 9, scope: !968)
!1100 = !DILocation(line: 517, column: 7, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 516, column: 16)
!1102 = !DILocation(line: 520, column: 28, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !968, file: !1, line: 519, column: 5)
!1104 = !DILocation(line: 520, column: 65, scope: !1103)
!1105 = !DILocation(line: 520, column: 14, scope: !1103)
!1106 = !DILocation(line: 520, column: 12, scope: !1103)
!1107 = !DILocation(line: 523, column: 26, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !968, file: !1, line: 522, column: 5)
!1109 = !DILocation(line: 523, column: 19, scope: !1108)
!1110 = !DILocation(line: 523, column: 17, scope: !1108)
!1111 = !DILocation(line: 524, column: 9, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1108, file: !1, line: 524, column: 9)
!1113 = !DILocation(line: 524, column: 21, scope: !1112)
!1114 = !DILocation(line: 524, column: 9, scope: !1108)
!1115 = !DILocation(line: 526, column: 29, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !1, line: 525, column: 7)
!1117 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 524, column: 30)
!1118 = !DILocation(line: 526, column: 36, scope: !1116)
!1119 = !DILocation(line: 526, column: 47, scope: !1116)
!1120 = !DILocation(line: 526, column: 7, scope: !1116)
!1121 = !DILocation(line: 527, column: 16, scope: !1116)
!1122 = !DILocation(line: 527, column: 14, scope: !1116)
!1123 = !DILocation(line: 529, column: 5, scope: !1117)
!1124 = !DILocation(line: 532, column: 35, scope: !995)
!1125 = !DILocation(line: 532, column: 19, scope: !995)
!1126 = !DILocation(line: 532, column: 17, scope: !995)
!1127 = !DILocation(line: 533, column: 9, scope: !994)
!1128 = !DILocation(line: 533, column: 21, scope: !994)
!1129 = !DILocation(line: 533, column: 9, scope: !995)
!1130 = !DILocation(line: 534, column: 20, scope: !993)
!1131 = !DILocation(line: 534, column: 44, scope: !993)
!1132 = !DILocation(line: 534, column: 42, scope: !993)
!1133 = !DILocation(line: 534, column: 18, scope: !993)
!1134 = !DILocation(line: 535, column: 13, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !993, file: !1, line: 535, column: 11)
!1136 = !DILocation(line: 535, column: 11, scope: !993)
!1137 = !DILocation(line: 536, column: 9, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1135, file: !1, line: 535, column: 21)
!1139 = !DILocation(line: 539, column: 19, scope: !992)
!1140 = !DILocation(line: 540, column: 19, scope: !992)
!1141 = !DILocation(line: 541, column: 19, scope: !992)
!1142 = !DILocation(line: 542, column: 43, scope: !992)
!1143 = !DILocation(line: 542, column: 56, scope: !992)
!1144 = !DILocation(line: 543, column: 49, scope: !992)
!1145 = !DILocation(line: 543, column: 57, scope: !992)
!1146 = !DILocation(line: 543, column: 72, scope: !992)
!1147 = !DILocation(line: 543, column: 79, scope: !992)
!1148 = !DILocation(line: 542, column: 13, scope: !992)
!1149 = !DILocation(line: 816, column: 20, scope: !40, inlinedAt: !991)
!1150 = !DILocation(line: 819, column: 13, scope: !958, inlinedAt: !991)
!1151 = !DILocation(line: 821, column: 15, scope: !958, inlinedAt: !991)
!1152 = !DILocation(line: 821, column: 13, scope: !958, inlinedAt: !991)
!1153 = !DILocation(line: 822, column: 7, scope: !962, inlinedAt: !991)
!1154 = !DILocation(line: 822, column: 17, scope: !962, inlinedAt: !991)
!1155 = !DILocation(line: 822, column: 7, scope: !958, inlinedAt: !991)
!1156 = !DILocation(line: 828, column: 15, scope: !1021, inlinedAt: !991)
!1157 = !DILocation(line: 828, column: 7, scope: !1021, inlinedAt: !991)
!1158 = !DILocation(line: 830, column: 7, scope: !1021, inlinedAt: !991)
!1159 = !DILocation(line: 836, column: 1, scope: !40, inlinedAt: !991)
!1160 = !DILocation(line: 542, column: 11, scope: !992)
!1161 = !DILocation(line: 545, column: 13, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !993, file: !1, line: 545, column: 11)
!1163 = !DILocation(line: 545, column: 11, scope: !993)
!1164 = !DILocation(line: 546, column: 9, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1162, file: !1, line: 545, column: 18)
!1166 = !DILocation(line: 549, column: 30, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !993, file: !1, line: 548, column: 7)
!1168 = !DILocation(line: 549, column: 67, scope: !1167)
!1169 = !DILocation(line: 549, column: 16, scope: !1167)
!1170 = !DILocation(line: 549, column: 14, scope: !1167)
!1171 = !DILocation(line: 552, column: 28, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !993, file: !1, line: 551, column: 7)
!1173 = !DILocation(line: 552, column: 21, scope: !1172)
!1174 = !DILocation(line: 552, column: 19, scope: !1172)
!1175 = !DILocation(line: 553, column: 11, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1172, file: !1, line: 553, column: 11)
!1177 = !DILocation(line: 553, column: 23, scope: !1176)
!1178 = !DILocation(line: 553, column: 11, scope: !1172)
!1179 = !DILocation(line: 555, column: 31, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !1, line: 554, column: 9)
!1181 = distinct !DILexicalBlock(scope: !1176, file: !1, line: 553, column: 32)
!1182 = !DILocation(line: 555, column: 38, scope: !1180)
!1183 = !DILocation(line: 555, column: 49, scope: !1180)
!1184 = !DILocation(line: 555, column: 9, scope: !1180)
!1185 = !DILocation(line: 556, column: 18, scope: !1180)
!1186 = !DILocation(line: 556, column: 16, scope: !1180)
!1187 = !DILocation(line: 558, column: 7, scope: !1181)
!1188 = !DILocation(line: 560, column: 5, scope: !993)
!1189 = !DILocation(line: 563, column: 9, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !1, line: 563, column: 9)
!1191 = distinct !DILexicalBlock(scope: !968, file: !1, line: 562, column: 5)
!1192 = !DILocation(line: 563, column: 16, scope: !1190)
!1193 = !DILocation(line: 563, column: 9, scope: !1191)
!1194 = !DILocation(line: 564, column: 15, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1190, file: !1, line: 563, column: 21)
!1196 = !DILocation(line: 564, column: 7, scope: !1195)
!1197 = !DILocation(line: 568, column: 17, scope: !1008)
!1198 = !DILocation(line: 569, column: 17, scope: !1008)
!1199 = !DILocation(line: 570, column: 17, scope: !1008)
!1200 = !DILocation(line: 571, column: 41, scope: !1008)
!1201 = !DILocation(line: 571, column: 54, scope: !1008)
!1202 = !DILocation(line: 572, column: 47, scope: !1008)
!1203 = !DILocation(line: 572, column: 61, scope: !1008)
!1204 = !DILocation(line: 573, column: 44, scope: !1008)
!1205 = !DILocation(line: 573, column: 51, scope: !1008)
!1206 = !DILocation(line: 571, column: 11, scope: !1008)
!1207 = !DILocation(line: 816, column: 20, scope: !40, inlinedAt: !1007)
!1208 = !DILocation(line: 819, column: 13, scope: !958, inlinedAt: !1007)
!1209 = !DILocation(line: 821, column: 15, scope: !958, inlinedAt: !1007)
!1210 = !DILocation(line: 821, column: 13, scope: !958, inlinedAt: !1007)
!1211 = !DILocation(line: 822, column: 7, scope: !962, inlinedAt: !1007)
!1212 = !DILocation(line: 822, column: 17, scope: !962, inlinedAt: !1007)
!1213 = !DILocation(line: 822, column: 7, scope: !958, inlinedAt: !1007)
!1214 = !DILocation(line: 828, column: 15, scope: !1021, inlinedAt: !1007)
!1215 = !DILocation(line: 828, column: 7, scope: !1021, inlinedAt: !1007)
!1216 = !DILocation(line: 830, column: 7, scope: !1021, inlinedAt: !1007)
!1217 = !DILocation(line: 836, column: 1, scope: !40, inlinedAt: !1007)
!1218 = !DILocation(line: 571, column: 9, scope: !1008)
!1219 = !DILocation(line: 575, column: 11, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !968, file: !1, line: 575, column: 9)
!1221 = !DILocation(line: 575, column: 9, scope: !968)
!1222 = !DILocation(line: 576, column: 7, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1220, file: !1, line: 575, column: 16)
!1224 = !DILocation(line: 579, column: 28, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !968, file: !1, line: 578, column: 5)
!1226 = !DILocation(line: 579, column: 65, scope: !1225)
!1227 = !DILocation(line: 579, column: 14, scope: !1225)
!1228 = !DILocation(line: 579, column: 12, scope: !1225)
!1229 = !DILocation(line: 582, column: 26, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !968, file: !1, line: 581, column: 5)
!1231 = !DILocation(line: 582, column: 19, scope: !1230)
!1232 = !DILocation(line: 582, column: 17, scope: !1230)
!1233 = !DILocation(line: 583, column: 9, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1230, file: !1, line: 583, column: 9)
!1235 = !DILocation(line: 583, column: 21, scope: !1234)
!1236 = !DILocation(line: 583, column: 9, scope: !1230)
!1237 = !DILocation(line: 585, column: 29, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !1, line: 584, column: 7)
!1239 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 583, column: 30)
!1240 = !DILocation(line: 585, column: 36, scope: !1238)
!1241 = !DILocation(line: 585, column: 47, scope: !1238)
!1242 = !DILocation(line: 585, column: 7, scope: !1238)
!1243 = !DILocation(line: 586, column: 16, scope: !1238)
!1244 = !DILocation(line: 586, column: 14, scope: !1238)
!1245 = !DILocation(line: 588, column: 5, scope: !1239)
!1246 = !DILocation(line: 591, column: 9, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !1, line: 591, column: 9)
!1248 = distinct !DILexicalBlock(scope: !968, file: !1, line: 590, column: 5)
!1249 = !DILocation(line: 591, column: 16, scope: !1247)
!1250 = !DILocation(line: 591, column: 9, scope: !1248)
!1251 = !DILocation(line: 592, column: 7, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1247, file: !1, line: 591, column: 21)
!1253 = !DILocation(line: 594, column: 11, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !1, line: 594, column: 11)
!1255 = distinct !DILexicalBlock(scope: !1247, file: !1, line: 593, column: 12)
!1256 = !DILocation(line: 594, column: 46, scope: !1254)
!1257 = !DILocation(line: 594, column: 11, scope: !1255)
!1258 = !DILocation(line: 594, column: 52, scope: !1254)
!1259 = !DILocation(line: 596, column: 13, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !1, line: 596, column: 13)
!1261 = distinct !DILexicalBlock(scope: !1254, file: !1, line: 594, column: 52)
!1262 = !DILocation(line: 596, column: 20, scope: !1260)
!1263 = !DILocation(line: 596, column: 13, scope: !1261)
!1264 = !DILocation(line: 598, column: 9, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1260, file: !1, line: 596, column: 26)
!1266 = !DILocation(line: 599, column: 7, scope: !1261)
!1267 = !DILocation(line: 602, column: 3, scope: !968)
!1268 = !DILocation(line: 604, column: 7, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !1, line: 604, column: 7)
!1270 = distinct !DILexicalBlock(scope: !941, file: !1, line: 603, column: 3)
!1271 = !DILocation(line: 604, column: 14, scope: !1269)
!1272 = !DILocation(line: 604, column: 7, scope: !1270)
!1273 = !DILocation(line: 606, column: 3, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1269, file: !1, line: 604, column: 19)
!1275 = !DILocation(line: 608, column: 11, scope: !941)
!1276 = !DILocation(line: 608, column: 3, scope: !941)
!1277 = !DILocation(line: 610, column: 1, scope: !33)
!1278 = !DILocation(line: 615, column: 7, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !36, file: !1, line: 614, column: 3)
!1280 = !DILocation(line: 615, column: 5, scope: !1279)
!1281 = !DILocation(line: 616, column: 13, scope: !1279)
!1282 = !DILocation(line: 617, column: 20, scope: !1279)
!1283 = !DILocation(line: 617, column: 18, scope: !1279)
!1284 = !DILocation(line: 618, column: 23, scope: !1279)
!1285 = !DILocation(line: 618, column: 21, scope: !1279)
!1286 = !DILocation(line: 619, column: 20, scope: !1279)
!1287 = !DILocation(line: 619, column: 18, scope: !1279)
!1288 = !DILocation(line: 620, column: 14, scope: !1279)
!1289 = !DILocation(line: 620, column: 12, scope: !1279)
!1290 = !DILocation(line: 621, column: 12, scope: !1279)
!1291 = !DILocation(line: 621, column: 10, scope: !1279)
!1292 = !DILocation(line: 622, column: 3, scope: !1279)
!1293 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !37, file: !1, line: 626, type: !14)
!1294 = !DILocation(line: 626, column: 7, scope: !37)
!1295 = !DILocation(line: 626, column: 11, scope: !37)
!1296 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !37, file: !1, line: 627, type: !14)
!1297 = !DILocation(line: 627, column: 7, scope: !37)
!1298 = !DILocation(line: 627, column: 16, scope: !37)
!1299 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "we_should_unload", scope: !37, file: !1, line: 628, type: !14)
!1300 = !DILocation(line: 628, column: 7, scope: !37)
!1301 = !DILocation(line: 628, column: 26, scope: !37)
!1302 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp", scope: !37, file: !1, line: 629, type: !14)
!1303 = !DILocation(line: 629, column: 7, scope: !37)
!1304 = !DILocation(line: 629, column: 13, scope: !37)
!1305 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pirp__IoStatus__Status", scope: !37, file: !1, line: 630, type: !14)
!1306 = !DILocation(line: 630, column: 7, scope: !37)
!1307 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp_choice", scope: !37, file: !1, line: 631, type: !14)
!1308 = !DILocation(line: 631, column: 7, scope: !37)
!1309 = !DILocation(line: 631, column: 20, scope: !37)
!1310 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devobj", scope: !37, file: !1, line: 632, type: !14)
!1311 = !DILocation(line: 632, column: 7, scope: !37)
!1312 = !DILocation(line: 632, column: 16, scope: !37)
!1313 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp9", scope: !37, file: !1, line: 633, type: !14)
!1314 = !DILocation(line: 633, column: 7, scope: !37)
!1315 = !DILocation(line: 635, column: 5, scope: !37)
!1316 = !DILocation(line: 636, column: 12, scope: !37)
!1317 = !DILocation(line: 637, column: 6, scope: !37)
!1318 = !DILocation(line: 638, column: 6, scope: !37)
!1319 = !DILocation(line: 639, column: 9, scope: !37)
!1320 = !DILocation(line: 640, column: 9, scope: !37)
!1321 = !DILocation(line: 641, column: 8, scope: !37)
!1322 = !DILocation(line: 642, column: 8, scope: !37)
!1323 = !DILocation(line: 643, column: 7, scope: !37)
!1324 = !DILocation(line: 644, column: 10, scope: !37)
!1325 = !DILocation(line: 645, column: 12, scope: !37)
!1326 = !DILocation(line: 646, column: 18, scope: !37)
!1327 = !DILocation(line: 647, column: 21, scope: !37)
!1328 = !DILocation(line: 648, column: 18, scope: !37)
!1329 = !DILocation(line: 649, column: 13, scope: !37)
!1330 = !DILocation(line: 650, column: 12, scope: !37)
!1331 = !DILocation(line: 651, column: 11, scope: !37)
!1332 = !DILocation(line: 652, column: 8, scope: !37)
!1333 = !DILocation(line: 653, column: 13, scope: !37)
!1334 = !DILocation(line: 654, column: 14, scope: !37)
!1335 = !DILocation(line: 658, column: 10, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !1, line: 657, column: 3)
!1337 = distinct !DILexicalBlock(scope: !37, file: !1, line: 656, column: 3)
!1338 = !DILocation(line: 658, column: 8, scope: !1336)
!1339 = !DILocation(line: 42, column: 12, scope: !81, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 659, column: 3, scope: !1336)
!1341 = !DILocation(line: 43, column: 6, scope: !81, inlinedAt: !1340)
!1342 = !DILocation(line: 44, column: 6, scope: !81, inlinedAt: !1340)
!1343 = !DILocation(line: 45, column: 9, scope: !81, inlinedAt: !1340)
!1344 = !DILocation(line: 46, column: 9, scope: !81, inlinedAt: !1340)
!1345 = !DILocation(line: 47, column: 8, scope: !81, inlinedAt: !1340)
!1346 = !DILocation(line: 48, column: 8, scope: !81, inlinedAt: !1340)
!1347 = !DILocation(line: 49, column: 7, scope: !81, inlinedAt: !1340)
!1348 = !DILocation(line: 50, column: 7, scope: !81, inlinedAt: !1340)
!1349 = !DILocation(line: 50, column: 5, scope: !81, inlinedAt: !1340)
!1350 = !DILocation(line: 51, column: 10, scope: !81, inlinedAt: !1340)
!1351 = !DILocation(line: 52, column: 12, scope: !81, inlinedAt: !1340)
!1352 = !DILocation(line: 53, column: 18, scope: !81, inlinedAt: !1340)
!1353 = !DILocation(line: 54, column: 21, scope: !81, inlinedAt: !1340)
!1354 = !DILocation(line: 55, column: 18, scope: !81, inlinedAt: !1340)
!1355 = !DILocation(line: 56, column: 13, scope: !81, inlinedAt: !1340)
!1356 = !DILocation(line: 661, column: 7, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1337, file: !1, line: 661, column: 7)
!1358 = !DILocation(line: 661, column: 14, scope: !1357)
!1359 = !DILocation(line: 930, column: 29, scope: !45, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 273, column: 3, scope: !518, inlinedAt: !1361)
!1361 = distinct !DILocation(line: 712, column: 26, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !1, line: 711, column: 17)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !1, line: 709, column: 22)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !1, line: 709, column: 19)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 707, column: 20)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !1, line: 705, column: 17)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !1, line: 702, column: 18)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !1, line: 700, column: 15)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !1, line: 697, column: 16)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !1, line: 695, column: 13)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !1, line: 692, column: 14)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !1, line: 690, column: 11)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !1, line: 687, column: 12)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !1, line: 685, column: 9)
!1375 = distinct !DILexicalBlock(scope: !1357, file: !1, line: 661, column: 20)
!1376 = !DILocation(line: 930, column: 39, scope: !45, inlinedAt: !1360)
!1377 = !DILocation(line: 267, column: 24, scope: !26, inlinedAt: !1361)
!1378 = !DILocation(line: 267, column: 43, scope: !26, inlinedAt: !1361)
!1379 = !DILocation(line: 414, column: 31, scope: !29, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 732, column: 26, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1363, file: !1, line: 731, column: 17)
!1382 = !DILocation(line: 414, column: 50, scope: !29, inlinedAt: !1380)
!1383 = !DILocation(line: 415, column: 7, scope: !29, inlinedAt: !1380)
!1384 = !DILocation(line: 416, column: 7, scope: !29, inlinedAt: !1380)
!1385 = !DILocation(line: 417, column: 7, scope: !29, inlinedAt: !1380)
!1386 = !DILocation(line: 418, column: 7, scope: !29, inlinedAt: !1380)
!1387 = !DILocation(line: 419, column: 7, scope: !29, inlinedAt: !1380)
!1388 = !DILocation(line: 420, column: 7, scope: !29, inlinedAt: !1380)
!1389 = !DILocation(line: 432, column: 25, scope: !30, inlinedAt: !1390)
!1390 = distinct !DILocation(line: 747, column: 7, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !1, line: 746, column: 7)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !1, line: 745, column: 27)
!1393 = distinct !DILexicalBlock(scope: !1375, file: !1, line: 745, column: 9)
!1394 = !DILocation(line: 661, column: 7, scope: !1337)
!1395 = !DILocation(line: 662, column: 9, scope: !1375)
!1396 = !DILocation(line: 662, column: 7, scope: !1375)
!1397 = !DILocation(line: 663, column: 15, scope: !1375)
!1398 = !DILocation(line: 664, column: 22, scope: !1375)
!1399 = !DILocation(line: 664, column: 20, scope: !1375)
!1400 = !DILocation(line: 665, column: 25, scope: !1375)
!1401 = !DILocation(line: 665, column: 23, scope: !1375)
!1402 = !DILocation(line: 666, column: 22, scope: !1375)
!1403 = !DILocation(line: 666, column: 20, scope: !1375)
!1404 = !DILocation(line: 667, column: 16, scope: !1375)
!1405 = !DILocation(line: 667, column: 14, scope: !1375)
!1406 = !DILocation(line: 668, column: 14, scope: !1375)
!1407 = !DILocation(line: 668, column: 12, scope: !1375)
!1408 = !DILocation(line: 669, column: 28, scope: !1375)
!1409 = !DILocation(line: 670, column: 14, scope: !1375)
!1410 = !DILocation(line: 671, column: 9, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1375, file: !1, line: 671, column: 9)
!1412 = !DILocation(line: 671, column: 20, scope: !1411)
!1413 = !DILocation(line: 671, column: 9, scope: !1375)
!1414 = !DILocation(line: 672, column: 30, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1411, file: !1, line: 671, column: 26)
!1416 = !DILocation(line: 673, column: 16, scope: !1415)
!1417 = !DILocation(line: 674, column: 5, scope: !1415)
!1418 = !DILocation(line: 615, column: 7, scope: !1279, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 676, column: 5, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1375, file: !1, line: 675, column: 5)
!1421 = !DILocation(line: 615, column: 5, scope: !1279, inlinedAt: !1419)
!1422 = !DILocation(line: 616, column: 13, scope: !1279, inlinedAt: !1419)
!1423 = !DILocation(line: 617, column: 20, scope: !1279, inlinedAt: !1419)
!1424 = !DILocation(line: 617, column: 18, scope: !1279, inlinedAt: !1419)
!1425 = !DILocation(line: 618, column: 23, scope: !1279, inlinedAt: !1419)
!1426 = !DILocation(line: 618, column: 21, scope: !1279, inlinedAt: !1419)
!1427 = !DILocation(line: 619, column: 20, scope: !1279, inlinedAt: !1419)
!1428 = !DILocation(line: 619, column: 18, scope: !1279, inlinedAt: !1419)
!1429 = !DILocation(line: 620, column: 14, scope: !1279, inlinedAt: !1419)
!1430 = !DILocation(line: 620, column: 12, scope: !1279, inlinedAt: !1419)
!1431 = !DILocation(line: 621, column: 12, scope: !1279, inlinedAt: !1419)
!1432 = !DILocation(line: 621, column: 10, scope: !1279, inlinedAt: !1419)
!1433 = !DILocation(line: 679, column: 9, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !1, line: 679, column: 9)
!1435 = distinct !DILexicalBlock(scope: !1375, file: !1, line: 678, column: 5)
!1436 = !DILocation(line: 679, column: 16, scope: !1434)
!1437 = !DILocation(line: 679, column: 9, scope: !1435)
!1438 = !DILocation(line: 680, column: 7, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1434, file: !1, line: 679, column: 21)
!1440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_1", scope: !1375, file: !1, line: 683, type: !14)
!1441 = !DILocation(line: 683, column: 9, scope: !1375)
!1442 = !DILocation(line: 684, column: 17, scope: !1375)
!1443 = !DILocation(line: 684, column: 15, scope: !1375)
!1444 = !DILocation(line: 685, column: 9, scope: !1374)
!1445 = !DILocation(line: 685, column: 19, scope: !1374)
!1446 = !DILocation(line: 685, column: 9, scope: !1375)
!1447 = !DILocation(line: 686, column: 7, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1374, file: !1, line: 685, column: 25)
!1449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_2", scope: !1373, file: !1, line: 688, type: !14)
!1450 = !DILocation(line: 688, column: 11, scope: !1373)
!1451 = !DILocation(line: 689, column: 19, scope: !1373)
!1452 = !DILocation(line: 689, column: 17, scope: !1373)
!1453 = !DILocation(line: 690, column: 11, scope: !1372)
!1454 = !DILocation(line: 690, column: 21, scope: !1372)
!1455 = !DILocation(line: 690, column: 11, scope: !1373)
!1456 = !DILocation(line: 691, column: 9, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1372, file: !1, line: 690, column: 27)
!1458 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_3", scope: !1371, file: !1, line: 693, type: !14)
!1459 = !DILocation(line: 693, column: 13, scope: !1371)
!1460 = !DILocation(line: 694, column: 21, scope: !1371)
!1461 = !DILocation(line: 694, column: 19, scope: !1371)
!1462 = !DILocation(line: 695, column: 13, scope: !1370)
!1463 = !DILocation(line: 695, column: 23, scope: !1370)
!1464 = !DILocation(line: 695, column: 13, scope: !1371)
!1465 = !DILocation(line: 696, column: 11, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1370, file: !1, line: 695, column: 29)
!1467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_4", scope: !1369, file: !1, line: 698, type: !14)
!1468 = !DILocation(line: 698, column: 8, scope: !1369)
!1469 = !DILocation(line: 699, column: 16, scope: !1369)
!1470 = !DILocation(line: 699, column: 14, scope: !1369)
!1471 = !DILocation(line: 700, column: 15, scope: !1368)
!1472 = !DILocation(line: 700, column: 25, scope: !1368)
!1473 = !DILocation(line: 700, column: 15, scope: !1369)
!1474 = !DILocation(line: 701, column: 13, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1368, file: !1, line: 700, column: 31)
!1476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_5", scope: !1367, file: !1, line: 703, type: !14)
!1477 = !DILocation(line: 703, column: 10, scope: !1367)
!1478 = !DILocation(line: 704, column: 18, scope: !1367)
!1479 = !DILocation(line: 704, column: 16, scope: !1367)
!1480 = !DILocation(line: 705, column: 17, scope: !1366)
!1481 = !DILocation(line: 705, column: 27, scope: !1366)
!1482 = !DILocation(line: 705, column: 17, scope: !1367)
!1483 = !DILocation(line: 706, column: 15, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 705, column: 34)
!1485 = !DILocation(line: 708, column: 15, scope: !1365)
!1486 = !DILocation(line: 709, column: 19, scope: !1365)
!1487 = !DILocation(line: 709, column: 22, scope: !1364)
!1488 = !DILocation(line: 712, column: 41, scope: !1362)
!1489 = !DILocation(line: 712, column: 49, scope: !1362)
!1490 = !DILocation(line: 712, column: 26, scope: !1362)
!1491 = !DILocation(line: 272, column: 12, scope: !518, inlinedAt: !1361)
!1492 = !DILocation(line: 273, column: 22, scope: !518, inlinedAt: !1361)
!1493 = !DILocation(line: 273, column: 3, scope: !518, inlinedAt: !1361)
!1494 = !DILocation(line: 934, column: 7, scope: !241, inlinedAt: !1360)
!1495 = !DILocation(line: 934, column: 12, scope: !241, inlinedAt: !1360)
!1496 = !DILocation(line: 934, column: 9, scope: !241, inlinedAt: !1360)
!1497 = !DILocation(line: 934, column: 7, scope: !242, inlinedAt: !1360)
!1498 = !DILocation(line: 34, column: 10, scope: !78, inlinedAt: !1499)
!1499 = distinct !DILocation(line: 938, column: 5, scope: !249, inlinedAt: !1360)
!1500 = !DILocation(line: 935, column: 9, scope: !252, inlinedAt: !1360)
!1501 = !DILocation(line: 935, column: 7, scope: !252, inlinedAt: !1360)
!1502 = !DILocation(line: 941, column: 3, scope: !242, inlinedAt: !1360)
!1503 = !DILocation(line: 275, column: 3, scope: !519, inlinedAt: !1361)
!1504 = !DILocation(line: 712, column: 24, scope: !1362)
!1505 = !DILocation(line: 714, column: 17, scope: !1363)
!1506 = !DILocation(line: 717, column: 48, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1363, file: !1, line: 716, column: 17)
!1508 = !DILocation(line: 717, column: 56, scope: !1507)
!1509 = !DILocation(line: 717, column: 26, scope: !1507)
!1510 = !DILocation(line: 717, column: 24, scope: !1507)
!1511 = !DILocation(line: 719, column: 17, scope: !1363)
!1512 = !DILocation(line: 722, column: 46, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1363, file: !1, line: 721, column: 17)
!1514 = !DILocation(line: 722, column: 54, scope: !1513)
!1515 = !DILocation(line: 722, column: 26, scope: !1513)
!1516 = !DILocation(line: 722, column: 24, scope: !1513)
!1517 = !DILocation(line: 724, column: 17, scope: !1363)
!1518 = !DILocation(line: 727, column: 48, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1363, file: !1, line: 726, column: 17)
!1520 = !DILocation(line: 727, column: 56, scope: !1519)
!1521 = !DILocation(line: 727, column: 26, scope: !1519)
!1522 = !DILocation(line: 727, column: 24, scope: !1519)
!1523 = !DILocation(line: 729, column: 17, scope: !1363)
!1524 = !DILocation(line: 732, column: 48, scope: !1381)
!1525 = !DILocation(line: 732, column: 56, scope: !1381)
!1526 = !DILocation(line: 732, column: 26, scope: !1381)
!1527 = !DILocation(line: 415, column: 39, scope: !29, inlinedAt: !1380)
!1528 = !DILocation(line: 416, column: 30, scope: !29, inlinedAt: !1380)
!1529 = !DILocation(line: 417, column: 50, scope: !29, inlinedAt: !1380)
!1530 = !DILocation(line: 418, column: 45, scope: !29, inlinedAt: !1380)
!1531 = !DILocation(line: 424, column: 21, scope: !833, inlinedAt: !1380)
!1532 = !DILocation(line: 424, column: 19, scope: !833, inlinedAt: !1380)
!1533 = !DILocation(line: 425, column: 24, scope: !833, inlinedAt: !1380)
!1534 = !DILocation(line: 426, column: 44, scope: !833, inlinedAt: !1380)
!1535 = !DILocation(line: 427, column: 23, scope: !833, inlinedAt: !1380)
!1536 = !DILocation(line: 427, column: 60, scope: !833, inlinedAt: !1380)
!1537 = !DILocation(line: 427, column: 9, scope: !833, inlinedAt: !1380)
!1538 = !DILocation(line: 427, column: 7, scope: !833, inlinedAt: !1380)
!1539 = !DILocation(line: 429, column: 11, scope: !834, inlinedAt: !1380)
!1540 = !DILocation(line: 429, column: 3, scope: !834, inlinedAt: !1380)
!1541 = !DILocation(line: 732, column: 24, scope: !1381)
!1542 = !DILocation(line: 734, column: 17, scope: !1363)
!1543 = !DILocation(line: 736, column: 17, scope: !1363)
!1544 = !DILocation(line: 737, column: 22, scope: !1364)
!1545 = !DILocation(line: 745, column: 9, scope: !1393)
!1546 = !DILocation(line: 745, column: 9, scope: !1375)
!1547 = !DILocation(line: 747, column: 22, scope: !1391)
!1548 = !DILocation(line: 747, column: 7, scope: !1391)
!1549 = !DILocation(line: 436, column: 3, scope: !847, inlinedAt: !1390)
!1550 = !DILocation(line: 749, column: 5, scope: !1392)
!1551 = !DILocation(line: 750, column: 3, scope: !1375)
!1552 = !DILocation(line: 751, column: 7, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1337, file: !1, line: 751, column: 7)
!1554 = !DILocation(line: 751, column: 14, scope: !1553)
!1555 = !DILocation(line: 751, column: 7, scope: !1337)
!1556 = !DILocation(line: 752, column: 9, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !1, line: 752, column: 9)
!1558 = distinct !DILexicalBlock(scope: !1553, file: !1, line: 751, column: 20)
!1559 = !DILocation(line: 752, column: 14, scope: !1557)
!1560 = !DILocation(line: 752, column: 11, scope: !1557)
!1561 = !DILocation(line: 752, column: 9, scope: !1558)
!1562 = !DILocation(line: 753, column: 11, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1557, file: !1, line: 752, column: 18)
!1564 = !DILocation(line: 753, column: 9, scope: !1563)
!1565 = !DILocation(line: 754, column: 5, scope: !1563)
!1566 = !DILocation(line: 755, column: 7, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1557, file: !1, line: 754, column: 12)
!1568 = !DILocation(line: 757, column: 3, scope: !1558)
!1569 = !DILocation(line: 757, column: 10, scope: !1553)
!1570 = !DILocation(line: 759, column: 9, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !1, line: 759, column: 9)
!1572 = distinct !DILexicalBlock(scope: !1553, file: !1, line: 757, column: 10)
!1573 = !DILocation(line: 759, column: 16, scope: !1571)
!1574 = !DILocation(line: 759, column: 9, scope: !1572)
!1575 = !DILocation(line: 760, column: 11, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !1, line: 760, column: 11)
!1577 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 759, column: 22)
!1578 = !DILocation(line: 760, column: 16, scope: !1576)
!1579 = !DILocation(line: 760, column: 13, scope: !1576)
!1580 = !DILocation(line: 760, column: 11, scope: !1577)
!1581 = !DILocation(line: 761, column: 13, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1576, file: !1, line: 760, column: 22)
!1583 = !DILocation(line: 761, column: 11, scope: !1582)
!1584 = !DILocation(line: 762, column: 7, scope: !1582)
!1585 = !DILocation(line: 763, column: 9, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1576, file: !1, line: 762, column: 14)
!1587 = !DILocation(line: 765, column: 5, scope: !1577)
!1588 = !DILocation(line: 765, column: 12, scope: !1571)
!1589 = !DILocation(line: 767, column: 11, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !1, line: 767, column: 11)
!1591 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 765, column: 12)
!1592 = !DILocation(line: 767, column: 16, scope: !1590)
!1593 = !DILocation(line: 767, column: 13, scope: !1590)
!1594 = !DILocation(line: 767, column: 11, scope: !1591)
!1595 = !DILocation(line: 768, column: 13, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !1, line: 768, column: 13)
!1597 = distinct !DILexicalBlock(scope: !1590, file: !1, line: 767, column: 26)
!1598 = !DILocation(line: 768, column: 20, scope: !1596)
!1599 = !DILocation(line: 768, column: 13, scope: !1597)
!1600 = !DILocation(line: 769, column: 15, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !1, line: 769, column: 15)
!1602 = distinct !DILexicalBlock(scope: !1596, file: !1, line: 768, column: 27)
!1603 = !DILocation(line: 769, column: 20, scope: !1601)
!1604 = !DILocation(line: 769, column: 17, scope: !1601)
!1605 = !DILocation(line: 769, column: 15, scope: !1602)
!1606 = !DILocation(line: 770, column: 17, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !1, line: 770, column: 17)
!1608 = distinct !DILexicalBlock(scope: !1601, file: !1, line: 769, column: 27)
!1609 = !DILocation(line: 770, column: 22, scope: !1607)
!1610 = !DILocation(line: 770, column: 19, scope: !1607)
!1611 = !DILocation(line: 770, column: 17, scope: !1608)
!1612 = !DILocation(line: 771, column: 19, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !1, line: 771, column: 19)
!1614 = distinct !DILexicalBlock(scope: !1607, file: !1, line: 770, column: 27)
!1615 = !DILocation(line: 771, column: 24, scope: !1613)
!1616 = !DILocation(line: 771, column: 21, scope: !1613)
!1617 = !DILocation(line: 771, column: 19, scope: !1614)
!1618 = !DILocation(line: 34, column: 10, scope: !78, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 773, column: 17, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !1, line: 772, column: 17)
!1621 = distinct !DILexicalBlock(scope: !1613, file: !1, line: 771, column: 28)
!1622 = !DILocation(line: 775, column: 15, scope: !1621)
!1623 = !DILocation(line: 776, column: 17, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1613, file: !1, line: 775, column: 22)
!1625 = !DILocation(line: 778, column: 13, scope: !1614)
!1626 = !DILocation(line: 779, column: 15, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1607, file: !1, line: 778, column: 20)
!1628 = !DILocation(line: 781, column: 11, scope: !1608)
!1629 = !DILocation(line: 781, column: 18, scope: !1601)
!1630 = !DILocation(line: 783, column: 17, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !1, line: 783, column: 17)
!1632 = distinct !DILexicalBlock(scope: !1601, file: !1, line: 781, column: 18)
!1633 = !DILocation(line: 783, column: 24, scope: !1631)
!1634 = !DILocation(line: 783, column: 17, scope: !1632)
!1635 = !DILocation(line: 784, column: 19, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !1, line: 784, column: 19)
!1637 = distinct !DILexicalBlock(scope: !1631, file: !1, line: 783, column: 30)
!1638 = !DILocation(line: 784, column: 26, scope: !1636)
!1639 = !DILocation(line: 784, column: 19, scope: !1637)
!1640 = !DILocation(line: 34, column: 10, scope: !78, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 786, column: 17, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !1, line: 785, column: 17)
!1643 = distinct !DILexicalBlock(scope: !1636, file: !1, line: 784, column: 34)
!1644 = !DILocation(line: 788, column: 15, scope: !1643)
!1645 = !DILocation(line: 789, column: 13, scope: !1637)
!1646 = !DILocation(line: 790, column: 19, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !1, line: 790, column: 19)
!1648 = distinct !DILexicalBlock(scope: !1631, file: !1, line: 789, column: 20)
!1649 = !DILocation(line: 790, column: 24, scope: !1647)
!1650 = !DILocation(line: 790, column: 21, scope: !1647)
!1651 = !DILocation(line: 790, column: 19, scope: !1648)
!1652 = !DILocation(line: 791, column: 21, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !1, line: 791, column: 21)
!1654 = distinct !DILexicalBlock(scope: !1647, file: !1, line: 790, column: 28)
!1655 = !DILocation(line: 791, column: 28, scope: !1653)
!1656 = !DILocation(line: 791, column: 21, scope: !1654)
!1657 = !DILocation(line: 34, column: 10, scope: !78, inlinedAt: !1658)
!1658 = distinct !DILocation(line: 793, column: 19, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !1, line: 792, column: 19)
!1660 = distinct !DILexicalBlock(scope: !1653, file: !1, line: 791, column: 36)
!1661 = !DILocation(line: 795, column: 17, scope: !1660)
!1662 = !DILocation(line: 796, column: 15, scope: !1654)
!1663 = !DILocation(line: 797, column: 21, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !1, line: 797, column: 21)
!1665 = distinct !DILexicalBlock(scope: !1647, file: !1, line: 796, column: 22)
!1666 = !DILocation(line: 797, column: 31, scope: !1664)
!1667 = !DILocation(line: 797, column: 28, scope: !1664)
!1668 = !DILocation(line: 797, column: 21, scope: !1665)
!1669 = !DILocation(line: 34, column: 10, scope: !78, inlinedAt: !1670)
!1670 = distinct !DILocation(line: 799, column: 19, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !1, line: 798, column: 19)
!1672 = distinct !DILexicalBlock(scope: !1664, file: !1, line: 797, column: 50)
!1673 = !DILocation(line: 801, column: 17, scope: !1672)
!1674 = !DILocation(line: 805, column: 9, scope: !1602)
!1675 = !DILocation(line: 806, column: 7, scope: !1597)
!1676 = !DILocation(line: 809, column: 11, scope: !1337)
!1677 = !DILocation(line: 809, column: 3, scope: !1337)
!1678 = !DILocation(line: 811, column: 1, scope: !37)
!1679 = !DILocation(line: 812, column: 39, scope: !40)
!1680 = !DILocation(line: 812, column: 59, scope: !40)
!1681 = !DILocation(line: 812, column: 78, scope: !40)
!1682 = !DILocation(line: 813, column: 39, scope: !40)
!1683 = !DILocation(line: 813, column: 63, scope: !40)
!1684 = !DILocation(line: 813, column: 82, scope: !40)
!1685 = !DILocation(line: 814, column: 39, scope: !40)
!1686 = !DILocation(line: 814, column: 69, scope: !40)
!1687 = !DILocation(line: 814, column: 81, scope: !40)
!1688 = !DILocation(line: 816, column: 7, scope: !40)
!1689 = !DILocation(line: 816, column: 20, scope: !40)
!1690 = !DILocation(line: 819, column: 13, scope: !958)
!1691 = !DILocation(line: 820, column: 7, scope: !958)
!1692 = !DILocation(line: 821, column: 15, scope: !958)
!1693 = !DILocation(line: 821, column: 13, scope: !958)
!1694 = !DILocation(line: 822, column: 7, scope: !962)
!1695 = !DILocation(line: 822, column: 17, scope: !962)
!1696 = !DILocation(line: 822, column: 7, scope: !958)
!1697 = !DILocation(line: 823, column: 5, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !962, file: !1, line: 822, column: 23)
!1699 = !DILocation(line: 825, column: 5, scope: !1023)
!1700 = !DILocation(line: 826, column: 9, scope: !1023)
!1701 = !DILocation(line: 826, column: 12, scope: !1022)
!1702 = !DILocation(line: 828, column: 15, scope: !1021)
!1703 = !DILocation(line: 828, column: 7, scope: !1021)
!1704 = !DILocation(line: 830, column: 7, scope: !1021)
!1705 = !DILocation(line: 836, column: 1, scope: !40)
!1706 = !DILocation(line: 841, column: 7, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !1, line: 841, column: 7)
!1708 = distinct !DILexicalBlock(scope: !43, file: !1, line: 840, column: 3)
!1709 = !DILocation(line: 841, column: 12, scope: !1707)
!1710 = !DILocation(line: 841, column: 9, scope: !1707)
!1711 = !DILocation(line: 841, column: 7, scope: !1708)
!1712 = !DILocation(line: 842, column: 9, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1707, file: !1, line: 841, column: 16)
!1714 = !DILocation(line: 842, column: 7, scope: !1713)
!1715 = !DILocation(line: 843, column: 3, scope: !1713)
!1716 = !DILocation(line: 34, column: 10, scope: !78, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 845, column: 5, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !1, line: 844, column: 5)
!1719 = distinct !DILexicalBlock(scope: !1707, file: !1, line: 843, column: 10)
!1720 = !DILocation(line: 848, column: 3, scope: !1708)
!1721 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !44, file: !1, line: 851, type: !14)
!1722 = !DILocation(line: 851, column: 23, scope: !44)
!1723 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !44, file: !1, line: 851, type: !14)
!1724 = !DILocation(line: 851, column: 42, scope: !44)
!1725 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "returnVal2", scope: !44, file: !1, line: 853, type: !14)
!1726 = !DILocation(line: 853, column: 7, scope: !44)
!1727 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compRetStatus", scope: !44, file: !1, line: 854, type: !14)
!1728 = !DILocation(line: 854, column: 7, scope: !44)
!1729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lcontext", scope: !44, file: !1, line: 855, type: !14)
!1730 = !DILocation(line: 855, column: 7, scope: !44)
!1731 = !DILocation(line: 855, column: 18, scope: !44)
!1732 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp7", scope: !44, file: !1, line: 856, type: !5)
!1733 = !DILocation(line: 856, column: 17, scope: !44)
!1734 = !DILocation(line: 859, column: 7, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !1, line: 859, column: 7)
!1736 = distinct !DILexicalBlock(scope: !44, file: !1, line: 858, column: 3)
!1737 = !DILocation(line: 944, column: 20, scope: !46, inlinedAt: !1738)
!1738 = distinct !DILocation(line: 120, column: 3, scope: !183, inlinedAt: !1739)
!1739 = distinct !DILocation(line: 862, column: 23, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !1, line: 861, column: 7)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !1, line: 860, column: 23)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !1, line: 860, column: 9)
!1743 = distinct !DILexicalBlock(scope: !1735, file: !1, line: 859, column: 23)
!1744 = !DILocation(line: 944, column: 32, scope: !46, inlinedAt: !1738)
!1745 = !DILocation(line: 944, column: 48, scope: !46, inlinedAt: !1738)
!1746 = !DILocation(line: 945, column: 7, scope: !46, inlinedAt: !1738)
!1747 = !DILocation(line: 114, column: 31, scope: !18, inlinedAt: !1739)
!1748 = !DILocation(line: 114, column: 50, scope: !18, inlinedAt: !1739)
!1749 = !DILocation(line: 114, column: 60, scope: !18, inlinedAt: !1739)
!1750 = !DILocation(line: 115, column: 7, scope: !18, inlinedAt: !1739)
!1751 = !DILocation(line: 859, column: 7, scope: !1736)
!1752 = !DILocation(line: 860, column: 9, scope: !1742)
!1753 = !DILocation(line: 860, column: 17, scope: !1742)
!1754 = !DILocation(line: 860, column: 9, scope: !1743)
!1755 = !DILocation(line: 862, column: 45, scope: !1740)
!1756 = !DILocation(line: 862, column: 59, scope: !1740)
!1757 = !DILocation(line: 862, column: 64, scope: !1740)
!1758 = !DILocation(line: 862, column: 23, scope: !1740)
!1759 = !DILocation(line: 119, column: 11, scope: !183, inlinedAt: !1739)
!1760 = !DILocation(line: 119, column: 9, scope: !183, inlinedAt: !1739)
!1761 = !DILocation(line: 120, column: 14, scope: !183, inlinedAt: !1739)
!1762 = !DILocation(line: 120, column: 3, scope: !183, inlinedAt: !1739)
!1763 = !DILocation(line: 945, column: 11, scope: !46, inlinedAt: !1738)
!1764 = !DILocation(line: 948, column: 18, scope: !192, inlinedAt: !1738)
!1765 = !DILocation(line: 949, column: 11, scope: !192, inlinedAt: !1738)
!1766 = !DILocation(line: 949, column: 3, scope: !192, inlinedAt: !1738)
!1767 = !DILocation(line: 122, column: 3, scope: !184, inlinedAt: !1739)
!1768 = !DILocation(line: 862, column: 21, scope: !1740)
!1769 = !DILocation(line: 864, column: 5, scope: !1741)
!1770 = !DILocation(line: 866, column: 44, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !1, line: 865, column: 7)
!1772 = distinct !DILexicalBlock(scope: !1742, file: !1, line: 864, column: 12)
!1773 = !DILocation(line: 866, column: 58, scope: !1771)
!1774 = !DILocation(line: 866, column: 63, scope: !1771)
!1775 = !DILocation(line: 866, column: 23, scope: !1771)
!1776 = !DILocation(line: 866, column: 21, scope: !1771)
!1777 = !DILocation(line: 870, column: 34, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1743, file: !1, line: 869, column: 5)
!1779 = !DILocation(line: 870, column: 18, scope: !1778)
!1780 = !DILocation(line: 870, column: 16, scope: !1778)
!1781 = !DILocation(line: 871, column: 9, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1778, file: !1, line: 871, column: 9)
!1783 = !DILocation(line: 871, column: 20, scope: !1782)
!1784 = !DILocation(line: 871, column: 9, scope: !1778)
!1785 = !DILocation(line: 841, column: 7, scope: !1707, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 873, column: 7, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !1, line: 872, column: 7)
!1788 = distinct !DILexicalBlock(scope: !1782, file: !1, line: 871, column: 36)
!1789 = !DILocation(line: 841, column: 12, scope: !1707, inlinedAt: !1786)
!1790 = !DILocation(line: 841, column: 9, scope: !1707, inlinedAt: !1786)
!1791 = !DILocation(line: 841, column: 7, scope: !1708, inlinedAt: !1786)
!1792 = !DILocation(line: 34, column: 10, scope: !78, inlinedAt: !1793)
!1793 = distinct !DILocation(line: 845, column: 5, scope: !1718, inlinedAt: !1786)
!1794 = !DILocation(line: 842, column: 9, scope: !1713, inlinedAt: !1786)
!1795 = !DILocation(line: 842, column: 7, scope: !1713, inlinedAt: !1786)
!1796 = !DILocation(line: 875, column: 5, scope: !1788)
!1797 = !DILocation(line: 877, column: 3, scope: !1743)
!1798 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_8", scope: !1736, file: !1, line: 878, type: !14)
!1799 = !DILocation(line: 878, column: 7, scope: !1736)
!1800 = !DILocation(line: 879, column: 15, scope: !1736)
!1801 = !DILocation(line: 879, column: 13, scope: !1736)
!1802 = !DILocation(line: 880, column: 7, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1736, file: !1, line: 880, column: 7)
!1804 = !DILocation(line: 880, column: 17, scope: !1803)
!1805 = !DILocation(line: 880, column: 7, scope: !1736)
!1806 = !DILocation(line: 881, column: 5, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1803, file: !1, line: 880, column: 23)
!1808 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_9", scope: !1809, file: !1, line: 883, type: !14)
!1809 = distinct !DILexicalBlock(scope: !1803, file: !1, line: 882, column: 10)
!1810 = !DILocation(line: 883, column: 7, scope: !1809)
!1811 = !DILocation(line: 884, column: 15, scope: !1809)
!1812 = !DILocation(line: 884, column: 13, scope: !1809)
!1813 = !DILocation(line: 885, column: 9, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1809, file: !1, line: 885, column: 9)
!1815 = !DILocation(line: 885, column: 19, scope: !1814)
!1816 = !DILocation(line: 885, column: 9, scope: !1809)
!1817 = !DILocation(line: 886, column: 7, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1814, file: !1, line: 885, column: 25)
!1819 = !DILocation(line: 888, column: 7, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1814, file: !1, line: 887, column: 12)
!1821 = !DILocation(line: 889, column: 11, scope: !1820)
!1822 = !DILocation(line: 889, column: 14, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1820, file: !1, line: 889, column: 11)
!1824 = !DILocation(line: 891, column: 20, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1823, file: !1, line: 889, column: 14)
!1826 = !DILocation(line: 892, column: 9, scope: !1825)
!1827 = !DILocation(line: 894, column: 20, scope: !1825)
!1828 = !DILocation(line: 895, column: 9, scope: !1825)
!1829 = !DILocation(line: 897, column: 20, scope: !1825)
!1830 = !DILocation(line: 898, column: 9, scope: !1825)
!1831 = !DILocation(line: 899, column: 14, scope: !1823)
!1832 = !DILocation(line: 904, column: 7, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1736, file: !1, line: 904, column: 7)
!1834 = !DILocation(line: 904, column: 12, scope: !1833)
!1835 = !DILocation(line: 904, column: 9, scope: !1833)
!1836 = !DILocation(line: 904, column: 7, scope: !1736)
!1837 = !DILocation(line: 905, column: 9, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1833, file: !1, line: 904, column: 16)
!1839 = !DILocation(line: 905, column: 7, scope: !1838)
!1840 = !DILocation(line: 906, column: 25, scope: !1838)
!1841 = !DILocation(line: 906, column: 23, scope: !1838)
!1842 = !DILocation(line: 907, column: 3, scope: !1838)
!1843 = !DILocation(line: 908, column: 9, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !1, line: 908, column: 9)
!1845 = distinct !DILexicalBlock(scope: !1833, file: !1, line: 907, column: 10)
!1846 = !DILocation(line: 908, column: 14, scope: !1844)
!1847 = !DILocation(line: 908, column: 11, scope: !1844)
!1848 = !DILocation(line: 908, column: 9, scope: !1845)
!1849 = !DILocation(line: 909, column: 11, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !1, line: 909, column: 11)
!1851 = distinct !DILexicalBlock(scope: !1844, file: !1, line: 908, column: 20)
!1852 = !DILocation(line: 909, column: 22, scope: !1850)
!1853 = !DILocation(line: 909, column: 11, scope: !1851)
!1854 = !DILocation(line: 910, column: 13, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1850, file: !1, line: 909, column: 30)
!1856 = !DILocation(line: 910, column: 11, scope: !1855)
!1857 = !DILocation(line: 911, column: 29, scope: !1855)
!1858 = !DILocation(line: 911, column: 27, scope: !1855)
!1859 = !DILocation(line: 912, column: 7, scope: !1855)
!1860 = !DILocation(line: 913, column: 13, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1850, file: !1, line: 912, column: 14)
!1862 = !DILocation(line: 913, column: 11, scope: !1861)
!1863 = !DILocation(line: 914, column: 29, scope: !1861)
!1864 = !DILocation(line: 914, column: 27, scope: !1861)
!1865 = !DILocation(line: 916, column: 5, scope: !1851)
!1866 = !DILocation(line: 917, column: 11, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !1, line: 917, column: 11)
!1868 = distinct !DILexicalBlock(scope: !1844, file: !1, line: 916, column: 12)
!1869 = !DILocation(line: 917, column: 16, scope: !1867)
!1870 = !DILocation(line: 917, column: 13, scope: !1867)
!1871 = !DILocation(line: 917, column: 11, scope: !1868)
!1872 = !DILocation(line: 918, column: 13, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1867, file: !1, line: 917, column: 23)
!1874 = !DILocation(line: 918, column: 11, scope: !1873)
!1875 = !DILocation(line: 919, column: 29, scope: !1873)
!1876 = !DILocation(line: 919, column: 27, scope: !1873)
!1877 = !DILocation(line: 920, column: 7, scope: !1873)
!1878 = !DILocation(line: 34, column: 10, scope: !78, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 922, column: 9, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !1, line: 921, column: 9)
!1881 = distinct !DILexicalBlock(scope: !1867, file: !1, line: 920, column: 14)
!1882 = !DILocation(line: 927, column: 11, scope: !1736)
!1883 = !DILocation(line: 927, column: 3, scope: !1736)
!1884 = !DILocation(line: 944, column: 20, scope: !46)
!1885 = !DILocation(line: 944, column: 32, scope: !46)
!1886 = !DILocation(line: 944, column: 48, scope: !46)
!1887 = !DILocation(line: 945, column: 7, scope: !46)
!1888 = !DILocation(line: 945, column: 11, scope: !46)
!1889 = !DILocation(line: 948, column: 18, scope: !192)
!1890 = !DILocation(line: 949, column: 11, scope: !192)
!1891 = !DILocation(line: 949, column: 3, scope: !192)
!1892 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Object", arg: 1, scope: !47, file: !1, line: 952, type: !14)
!1893 = !DILocation(line: 952, column: 31, scope: !47)
!1894 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitReason", arg: 2, scope: !47, file: !1, line: 952, type: !14)
!1895 = !DILocation(line: 952, column: 44, scope: !47)
!1896 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitMode", arg: 3, scope: !47, file: !1, line: 952, type: !14)
!1897 = !DILocation(line: 952, column: 61, scope: !47)
!1898 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Alertable", arg: 4, scope: !47, file: !1, line: 952, type: !14)
!1899 = !DILocation(line: 952, column: 76, scope: !47)
!1900 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Timeout", arg: 5, scope: !47, file: !1, line: 953, type: !14)
!1901 = !DILocation(line: 953, column: 31, scope: !47)
!1902 = !DILocation(line: 957, column: 7, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !1, line: 957, column: 7)
!1904 = distinct !DILexicalBlock(scope: !47, file: !1, line: 956, column: 3)
!1905 = !DILocation(line: 957, column: 12, scope: !1903)
!1906 = !DILocation(line: 957, column: 9, scope: !1903)
!1907 = !DILocation(line: 957, column: 7, scope: !1904)
!1908 = !DILocation(line: 958, column: 9, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !1, line: 958, column: 9)
!1910 = distinct !DILexicalBlock(scope: !1903, file: !1, line: 957, column: 18)
!1911 = !DILocation(line: 958, column: 24, scope: !1909)
!1912 = !DILocation(line: 958, column: 9, scope: !1910)
!1913 = !DILocation(line: 959, column: 11, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1909, file: !1, line: 958, column: 30)
!1915 = !DILocation(line: 959, column: 9, scope: !1914)
!1916 = !DILocation(line: 960, column: 22, scope: !1914)
!1917 = !DILocation(line: 961, column: 5, scope: !1914)
!1918 = !DILocation(line: 962, column: 7, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1909, file: !1, line: 961, column: 12)
!1920 = !DILocation(line: 964, column: 3, scope: !1910)
!1921 = !DILocation(line: 964, column: 10, scope: !1903)
!1922 = !DILocation(line: 966, column: 9, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !1, line: 966, column: 9)
!1924 = distinct !DILexicalBlock(scope: !1903, file: !1, line: 964, column: 10)
!1925 = !DILocation(line: 966, column: 19, scope: !1923)
!1926 = !DILocation(line: 966, column: 9, scope: !1924)
!1927 = !DILocation(line: 967, column: 11, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1923, file: !1, line: 966, column: 25)
!1929 = !DILocation(line: 967, column: 9, scope: !1928)
!1930 = !DILocation(line: 968, column: 17, scope: !1928)
!1931 = !DILocation(line: 969, column: 5, scope: !1928)
!1932 = !DILocation(line: 970, column: 11, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !1, line: 970, column: 11)
!1934 = distinct !DILexicalBlock(scope: !1923, file: !1, line: 969, column: 12)
!1935 = !DILocation(line: 970, column: 16, scope: !1933)
!1936 = !DILocation(line: 970, column: 13, scope: !1933)
!1937 = !DILocation(line: 970, column: 11, scope: !1934)
!1938 = !DILocation(line: 34, column: 10, scope: !78, inlinedAt: !1939)
!1939 = distinct !DILocation(line: 972, column: 9, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !1, line: 971, column: 9)
!1941 = distinct !DILexicalBlock(scope: !1933, file: !1, line: 970, column: 22)
!1942 = !DILocation(line: 974, column: 7, scope: !1941)
!1943 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_10", scope: !1904, file: !1, line: 977, type: !14)
!1944 = !DILocation(line: 977, column: 7, scope: !1904)
!1945 = !DILocation(line: 978, column: 16, scope: !1904)
!1946 = !DILocation(line: 978, column: 14, scope: !1904)
!1947 = !DILocation(line: 979, column: 7, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1904, file: !1, line: 979, column: 7)
!1949 = !DILocation(line: 979, column: 18, scope: !1948)
!1950 = !DILocation(line: 979, column: 7, scope: !1904)
!1951 = !DILocation(line: 980, column: 5, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1948, file: !1, line: 979, column: 24)
!1953 = !DILocation(line: 982, column: 5, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1948, file: !1, line: 981, column: 10)
!1955 = !DILocation(line: 983, column: 9, scope: !1954)
!1956 = !DILocation(line: 983, column: 12, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1954, file: !1, line: 983, column: 9)
!1958 = !DILocation(line: 985, column: 7, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1957, file: !1, line: 983, column: 12)
!1960 = !DILocation(line: 987, column: 7, scope: !1959)
!1961 = !DILocation(line: 993, column: 1, scope: !47)
!1962 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !50, file: !1, line: 994, type: !14)
!1963 = !DILocation(line: 994, column: 22, scope: !50)
!1964 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !50, file: !1, line: 994, type: !14)
!1965 = !DILocation(line: 994, column: 41, scope: !50)
!1966 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compRetStatus", scope: !50, file: !1, line: 996, type: !14)
!1967 = !DILocation(line: 996, column: 7, scope: !50)
!1968 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "returnVal", scope: !50, file: !1, line: 997, type: !14)
!1969 = !DILocation(line: 997, column: 7, scope: !50)
!1970 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lcontext", scope: !50, file: !1, line: 998, type: !14)
!1971 = !DILocation(line: 998, column: 7, scope: !50)
!1972 = !DILocation(line: 998, column: 18, scope: !50)
!1973 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp7", scope: !50, file: !1, line: 999, type: !5)
!1974 = !DILocation(line: 999, column: 17, scope: !50)
!1975 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp8", scope: !50, file: !1, line: 1000, type: !4)
!1976 = !DILocation(line: 1000, column: 8, scope: !50)
!1977 = !DILocation(line: 1003, column: 7, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !1, line: 1003, column: 7)
!1979 = distinct !DILexicalBlock(scope: !50, file: !1, line: 1002, column: 3)
!1980 = !DILocation(line: 944, column: 20, scope: !46, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 120, column: 3, scope: !183, inlinedAt: !1982)
!1982 = distinct !DILocation(line: 1006, column: 23, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !1, line: 1005, column: 7)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !1, line: 1004, column: 23)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !1, line: 1004, column: 9)
!1986 = distinct !DILexicalBlock(scope: !1978, file: !1, line: 1003, column: 23)
!1987 = !DILocation(line: 944, column: 32, scope: !46, inlinedAt: !1981)
!1988 = !DILocation(line: 944, column: 48, scope: !46, inlinedAt: !1981)
!1989 = !DILocation(line: 945, column: 7, scope: !46, inlinedAt: !1981)
!1990 = !DILocation(line: 114, column: 31, scope: !18, inlinedAt: !1982)
!1991 = !DILocation(line: 114, column: 50, scope: !18, inlinedAt: !1982)
!1992 = !DILocation(line: 114, column: 60, scope: !18, inlinedAt: !1982)
!1993 = !DILocation(line: 115, column: 7, scope: !18, inlinedAt: !1982)
!1994 = !DILocation(line: 1003, column: 7, scope: !1979)
!1995 = !DILocation(line: 1004, column: 9, scope: !1985)
!1996 = !DILocation(line: 1004, column: 17, scope: !1985)
!1997 = !DILocation(line: 1004, column: 9, scope: !1986)
!1998 = !DILocation(line: 1006, column: 45, scope: !1983)
!1999 = !DILocation(line: 1006, column: 59, scope: !1983)
!2000 = !DILocation(line: 1006, column: 64, scope: !1983)
!2001 = !DILocation(line: 1006, column: 23, scope: !1983)
!2002 = !DILocation(line: 119, column: 11, scope: !183, inlinedAt: !1982)
!2003 = !DILocation(line: 119, column: 9, scope: !183, inlinedAt: !1982)
!2004 = !DILocation(line: 120, column: 14, scope: !183, inlinedAt: !1982)
!2005 = !DILocation(line: 120, column: 3, scope: !183, inlinedAt: !1982)
!2006 = !DILocation(line: 945, column: 11, scope: !46, inlinedAt: !1981)
!2007 = !DILocation(line: 948, column: 18, scope: !192, inlinedAt: !1981)
!2008 = !DILocation(line: 949, column: 11, scope: !192, inlinedAt: !1981)
!2009 = !DILocation(line: 949, column: 3, scope: !192, inlinedAt: !1981)
!2010 = !DILocation(line: 122, column: 3, scope: !184, inlinedAt: !1982)
!2011 = !DILocation(line: 1006, column: 21, scope: !1983)
!2012 = !DILocation(line: 1008, column: 5, scope: !1984)
!2013 = !DILocation(line: 1009, column: 11, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !1, line: 1009, column: 11)
!2015 = distinct !DILexicalBlock(scope: !1985, file: !1, line: 1008, column: 12)
!2016 = !DILocation(line: 1009, column: 19, scope: !2014)
!2017 = !DILocation(line: 1009, column: 11, scope: !2015)
!2018 = !DILocation(line: 1011, column: 46, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !1, line: 1010, column: 9)
!2020 = distinct !DILexicalBlock(scope: !2014, file: !1, line: 1009, column: 25)
!2021 = !DILocation(line: 1011, column: 60, scope: !2019)
!2022 = !DILocation(line: 1011, column: 65, scope: !2019)
!2023 = !DILocation(line: 1011, column: 25, scope: !2019)
!2024 = !DILocation(line: 1011, column: 23, scope: !2019)
!2025 = !DILocation(line: 1013, column: 7, scope: !2020)
!2026 = !DILocation(line: 1016, column: 34, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1986, file: !1, line: 1015, column: 5)
!2028 = !DILocation(line: 1016, column: 18, scope: !2027)
!2029 = !DILocation(line: 1016, column: 16, scope: !2027)
!2030 = !DILocation(line: 1017, column: 9, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2027, file: !1, line: 1017, column: 9)
!2032 = !DILocation(line: 1017, column: 20, scope: !2031)
!2033 = !DILocation(line: 1017, column: 9, scope: !2027)
!2034 = !DILocation(line: 841, column: 7, scope: !1707, inlinedAt: !2035)
!2035 = distinct !DILocation(line: 1019, column: 7, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !1, line: 1018, column: 7)
!2037 = distinct !DILexicalBlock(scope: !2031, file: !1, line: 1017, column: 36)
!2038 = !DILocation(line: 841, column: 12, scope: !1707, inlinedAt: !2035)
!2039 = !DILocation(line: 841, column: 9, scope: !1707, inlinedAt: !2035)
!2040 = !DILocation(line: 841, column: 7, scope: !1708, inlinedAt: !2035)
!2041 = !DILocation(line: 34, column: 10, scope: !78, inlinedAt: !2042)
!2042 = distinct !DILocation(line: 845, column: 5, scope: !1718, inlinedAt: !2035)
!2043 = !DILocation(line: 842, column: 9, scope: !1713, inlinedAt: !2035)
!2044 = !DILocation(line: 842, column: 7, scope: !1713, inlinedAt: !2035)
!2045 = !DILocation(line: 1021, column: 5, scope: !2037)
!2046 = !DILocation(line: 1023, column: 3, scope: !1986)
!2047 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_11", scope: !1979, file: !1, line: 1024, type: !14)
!2048 = !DILocation(line: 1024, column: 7, scope: !1979)
!2049 = !DILocation(line: 1025, column: 16, scope: !1979)
!2050 = !DILocation(line: 1025, column: 14, scope: !1979)
!2051 = !DILocation(line: 1026, column: 7, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !1979, file: !1, line: 1026, column: 7)
!2053 = !DILocation(line: 1026, column: 18, scope: !2052)
!2054 = !DILocation(line: 1026, column: 7, scope: !1979)
!2055 = !DILocation(line: 1027, column: 5, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2052, file: !1, line: 1026, column: 24)
!2057 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_12", scope: !2058, file: !1, line: 1029, type: !14)
!2058 = distinct !DILexicalBlock(scope: !2052, file: !1, line: 1028, column: 10)
!2059 = !DILocation(line: 1029, column: 7, scope: !2058)
!2060 = !DILocation(line: 1030, column: 16, scope: !2058)
!2061 = !DILocation(line: 1030, column: 14, scope: !2058)
!2062 = !DILocation(line: 1031, column: 9, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2058, file: !1, line: 1031, column: 9)
!2064 = !DILocation(line: 1031, column: 20, scope: !2063)
!2065 = !DILocation(line: 1031, column: 9, scope: !2058)
!2066 = !DILocation(line: 1032, column: 7, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2063, file: !1, line: 1031, column: 26)
!2068 = !DILocation(line: 1034, column: 7, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2063, file: !1, line: 1033, column: 12)
!2070 = !DILocation(line: 1035, column: 11, scope: !2069)
!2071 = !DILocation(line: 1035, column: 14, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2069, file: !1, line: 1035, column: 11)
!2073 = !DILocation(line: 1037, column: 19, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2072, file: !1, line: 1035, column: 14)
!2075 = !DILocation(line: 1038, column: 9, scope: !2074)
!2076 = !DILocation(line: 1040, column: 19, scope: !2074)
!2077 = !DILocation(line: 1041, column: 9, scope: !2074)
!2078 = !DILocation(line: 1043, column: 19, scope: !2074)
!2079 = !DILocation(line: 1044, column: 9, scope: !2074)
!2080 = !DILocation(line: 1045, column: 14, scope: !2072)
!2081 = !DILocation(line: 1050, column: 7, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !1979, file: !1, line: 1050, column: 7)
!2083 = !DILocation(line: 1050, column: 12, scope: !2082)
!2084 = !DILocation(line: 1050, column: 9, scope: !2082)
!2085 = !DILocation(line: 1050, column: 7, scope: !1979)
!2086 = !DILocation(line: 1051, column: 9, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2082, file: !1, line: 1050, column: 16)
!2088 = !DILocation(line: 1051, column: 7, scope: !2087)
!2089 = !DILocation(line: 1052, column: 25, scope: !2087)
!2090 = !DILocation(line: 1052, column: 23, scope: !2087)
!2091 = !DILocation(line: 1053, column: 3, scope: !2087)
!2092 = !DILocation(line: 1054, column: 9, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !1, line: 1054, column: 9)
!2094 = distinct !DILexicalBlock(scope: !2082, file: !1, line: 1053, column: 10)
!2095 = !DILocation(line: 1054, column: 14, scope: !2093)
!2096 = !DILocation(line: 1054, column: 11, scope: !2093)
!2097 = !DILocation(line: 1054, column: 9, scope: !2094)
!2098 = !DILocation(line: 1056, column: 27, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !1, line: 1055, column: 7)
!2100 = distinct !DILexicalBlock(scope: !2093, file: !1, line: 1054, column: 20)
!2101 = !DILocation(line: 1056, column: 20, scope: !2099)
!2102 = !DILocation(line: 1056, column: 18, scope: !2099)
!2103 = !DILocation(line: 1057, column: 11, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2099, file: !1, line: 1057, column: 11)
!2105 = !DILocation(line: 1057, column: 22, scope: !2104)
!2106 = !DILocation(line: 1057, column: 11, scope: !2099)
!2107 = !DILocation(line: 1058, column: 13, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2104, file: !1, line: 1057, column: 31)
!2109 = !DILocation(line: 1058, column: 11, scope: !2108)
!2110 = !DILocation(line: 1059, column: 29, scope: !2108)
!2111 = !DILocation(line: 1059, column: 27, scope: !2108)
!2112 = !DILocation(line: 1060, column: 7, scope: !2108)
!2113 = !DILocation(line: 1061, column: 13, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2104, file: !1, line: 1060, column: 14)
!2115 = !DILocation(line: 1061, column: 11, scope: !2114)
!2116 = !DILocation(line: 1062, column: 29, scope: !2114)
!2117 = !DILocation(line: 1062, column: 27, scope: !2114)
!2118 = !DILocation(line: 1065, column: 5, scope: !2100)
!2119 = !DILocation(line: 1066, column: 11, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !1, line: 1066, column: 11)
!2121 = distinct !DILexicalBlock(scope: !2093, file: !1, line: 1065, column: 12)
!2122 = !DILocation(line: 1066, column: 16, scope: !2120)
!2123 = !DILocation(line: 1066, column: 13, scope: !2120)
!2124 = !DILocation(line: 1066, column: 11, scope: !2121)
!2125 = !DILocation(line: 1067, column: 13, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2120, file: !1, line: 1066, column: 23)
!2127 = !DILocation(line: 1067, column: 11, scope: !2126)
!2128 = !DILocation(line: 1068, column: 29, scope: !2126)
!2129 = !DILocation(line: 1068, column: 27, scope: !2126)
!2130 = !DILocation(line: 1069, column: 7, scope: !2126)
!2131 = !DILocation(line: 34, column: 10, scope: !78, inlinedAt: !2132)
!2132 = distinct !DILocation(line: 1071, column: 9, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !1, line: 1070, column: 9)
!2134 = distinct !DILexicalBlock(scope: !2120, file: !1, line: 1069, column: 14)
!2135 = !DILocation(line: 1076, column: 11, scope: !1979)
!2136 = !DILocation(line: 1076, column: 3, scope: !1979)
