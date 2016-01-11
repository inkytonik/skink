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
@Executive = common global i32 0, align 4
@KernelMode = common global i32 0, align 4
@myStatus = common global i32 0, align 4
@DeviceUsageTypePaging = common global i32 0, align 4
@Suspended = common global i32 0, align 4
@routine = common global i32 0, align 4
@pirp = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @errorFn() #0 {
  br label %1, !dbg !81

; <label>:1                                       ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !82
  unreachable, !dbg !82
                                                  ; No predecessors!
  ret void, !dbg !84
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

; Function Attrs: nounwind ssp uwtable
define void @_BLAST_init() #0 {
  store i32 0, i32* @UNLOADED, align 4, !dbg !85
  store i32 1, i32* @NP, align 4, !dbg !87
  store i32 2, i32* @DC, align 4, !dbg !88
  store i32 3, i32* @SKIP1, align 4, !dbg !89
  store i32 4, i32* @SKIP2, align 4, !dbg !90
  store i32 5, i32* @MPR1, align 4, !dbg !91
  store i32 6, i32* @MPR3, align 4, !dbg !92
  store i32 7, i32* @IPC, align 4, !dbg !93
  %1 = load i32, i32* @UNLOADED, align 4, !dbg !94
  store i32 %1, i32* @s, align 4, !dbg !95
  store i32 0, i32* @pended, align 4, !dbg !96
  store i32 0, i32* @compFptr, align 4, !dbg !97
  store i32 0, i32* @compRegistered, align 4, !dbg !98
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !99
  store i32 0, i32* @setEventCalled, align 4, !dbg !100
  store i32 0, i32* @customIrp, align 4, !dbg !101
  ret void, !dbg !102
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !103, metadata !104), !dbg !105
  store i32 %Srb, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !106, metadata !104), !dbg !107
  store i32 %Buffer, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !108, metadata !104), !dbg !109
  store i32 %BufferLength, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !110, metadata !104), !dbg !111
  call void @llvm.dbg.declare(metadata i32* %ioStatus__Status, metadata !112, metadata !104), !dbg !113
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !114
  store i32 %6, i32* %ioStatus__Status, align 4, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %ioctl, metadata !115, metadata !104), !dbg !116
  call void @llvm.dbg.declare(metadata i32* %event, metadata !117, metadata !104), !dbg !118
  %7 = call i32 @__VERIFIER_nondet_int(), !dbg !119
  store i32 %7, i32* %event, align 4, !dbg !118
  call void @llvm.dbg.declare(metadata i32* %irp, metadata !120, metadata !104), !dbg !121
  call void @llvm.dbg.declare(metadata i32* %status, metadata !122, metadata !104), !dbg !123
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !124
  store i32 %8, i32* %status, align 4, !dbg !123
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp10, metadata !125, metadata !104), !dbg !126
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp11, metadata !127, metadata !104), !dbg !128
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp12, metadata !129, metadata !104), !dbg !130
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp13, metadata !131, metadata !104), !dbg !132
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp14, metadata !133, metadata !104), !dbg !134
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp15, metadata !135, metadata !104), !dbg !136
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp16, metadata !137, metadata !104), !dbg !138
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp17, metadata !139, metadata !104), !dbg !140
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp18, metadata !141, metadata !104), !dbg !142
  store i32 0, i32* %irp, align 4, !dbg !143
  %9 = load i32, i32* %4, align 4, !dbg !145
  %10 = icmp ne i32 %9, 0, !dbg !145
  br i1 %10, label %11, label %12, !dbg !147

; <label>:11                                      ; preds = %0
  store i32 4116, i32* %__cil_tmp10, align 4, !dbg !148
  store i32 49152, i32* %__cil_tmp11, align 4, !dbg !150
  store i32 262144, i32* %__cil_tmp12, align 4, !dbg !151
  store i32 311296, i32* %__cil_tmp13, align 4, !dbg !152
  store i32 315412, i32* %ioctl, align 4, !dbg !153
  br label %13, !dbg !154

; <label>:12                                      ; preds = %0
  store i32 4100, i32* %__cil_tmp14, align 4, !dbg !155
  store i32 49152, i32* %__cil_tmp15, align 4, !dbg !157
  store i32 262144, i32* %__cil_tmp16, align 4, !dbg !158
  store i32 311296, i32* %__cil_tmp17, align 4, !dbg !159
  store i32 315396, i32* %ioctl, align 4, !dbg !160
  br label %13

; <label>:13                                      ; preds = %12, %11
  %14 = load i32, i32* %irp, align 4, !dbg !161
  %15 = icmp ne i32 %14, 0, !dbg !161
  br i1 %15, label %17, label %16, !dbg !163

; <label>:16                                      ; preds = %13
  store i32 -1073741670, i32* %1, !dbg !164
  br label %30, !dbg !164

; <label>:17                                      ; preds = %13
  %18 = load i32, i32* %status, align 4, !dbg !166
  %19 = sext i32 %18 to i64, !dbg !168
  store i64 %19, i64* %__cil_tmp18, align 8, !dbg !169
  %20 = load i64, i64* %__cil_tmp18, align 8, !dbg !170
  %21 = icmp eq i64 %20, 259, !dbg !172
  br i1 %21, label %22, label %28, !dbg !173

; <label>:22                                      ; preds = %17
  %23 = load i32, i32* %event, align 4, !dbg !174
  %24 = load i32, i32* @Executive, align 4, !dbg !177
  %25 = load i32, i32* @KernelMode, align 4, !dbg !178
  %26 = call i32 @KeWaitForSingleObject(i32 %23, i32 %24, i32 %25, i32 0, i32 0), !dbg !179
  %27 = load i32, i32* %ioStatus__Status, align 4, !dbg !180
  store i32 %27, i32* %status, align 4, !dbg !181
  br label %28, !dbg !182

; <label>:28                                      ; preds = %22, %17
  %29 = load i32, i32* %status, align 4, !dbg !183
  store i32 %29, i32* %1, !dbg !184
  br label %30, !dbg !184

; <label>:30                                      ; preds = %28, %16
  %31 = load i32, i32* %1, !dbg !185
  ret i32 %31, !dbg !185
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
  call void @llvm.dbg.declare(metadata i32* %4, metadata !186, metadata !104), !dbg !187
  store i32 %Irp, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !188, metadata !104), !dbg !189
  store i32 %Event, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !190, metadata !104), !dbg !191
  %7 = load i32, i32* %6, align 4, !dbg !192
  %8 = bitcast i32* %1 to i8*, !dbg !195
  call void @llvm.lifetime.start(i64 4, i8* %8), !dbg !195
  %9 = bitcast i32* %2 to i8*, !dbg !195
  call void @llvm.lifetime.start(i64 4, i8* %9), !dbg !195
  %10 = bitcast i32* %3 to i8*, !dbg !195
  call void @llvm.lifetime.start(i64 4, i8* %10), !dbg !195
  %11 = bitcast i32* %l.i to i8*, !dbg !195
  call void @llvm.lifetime.start(i64 4, i8* %11), !dbg !195
  store i32 %7, i32* %1, align 4, !dbg !195
  store i32 0, i32* %2, align 4, !dbg !195
  store i32 0, i32* %3, align 4, !dbg !195
  %12 = call i32 @__VERIFIER_nondet_int() #4, !dbg !196
  store i32 %12, i32* %l.i, align 4, !dbg !198
  store i32 1, i32* @setEventCalled, align 4, !dbg !199
  %13 = load i32, i32* %l.i, align 4, !dbg !201
  %14 = bitcast i32* %1 to i8*, !dbg !202
  call void @llvm.lifetime.end(i64 4, i8* %14), !dbg !202
  %15 = bitcast i32* %2 to i8*, !dbg !202
  call void @llvm.lifetime.end(i64 4, i8* %15), !dbg !202
  %16 = bitcast i32* %3 to i8*, !dbg !202
  call void @llvm.lifetime.end(i64 4, i8* %16), !dbg !202
  %17 = bitcast i32* %l.i to i8*, !dbg !202
  call void @llvm.lifetime.end(i64 4, i8* %17), !dbg !202
  call void @llvm.dbg.declare(metadata i32* %1, metadata !203, metadata !104), !dbg !204
  call void @llvm.dbg.declare(metadata i32* %2, metadata !205, metadata !104), !dbg !206
  call void @llvm.dbg.declare(metadata i32* %3, metadata !207, metadata !104), !dbg !208
  call void @llvm.dbg.declare(metadata i32* %l.i, metadata !209, metadata !104), !dbg !198
  ret i32 -1073741802, !dbg !210
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
  call void @llvm.dbg.declare(metadata i32* %4, metadata !211, metadata !104), !dbg !212
  store i32 %Irp, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !213, metadata !104), !dbg !214
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__Active, metadata !215, metadata !104), !dbg !216
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !217
  store i32 %6, i32* %deviceExtension__Active, align 4, !dbg !216
  call void @llvm.dbg.declare(metadata i32* %deviceExtension, metadata !218, metadata !104), !dbg !219
  %7 = call i32 @__VERIFIER_nondet_int(), !dbg !220
  store i32 %7, i32* %deviceExtension, align 4, !dbg !219
  call void @llvm.dbg.declare(metadata i32* %status, metadata !221, metadata !104), !dbg !222
  call void @llvm.dbg.declare(metadata i32* %srb, metadata !223, metadata !104), !dbg !224
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !225
  store i32 %8, i32* %srb, align 4, !dbg !224
  call void @llvm.dbg.declare(metadata i32* %srb__Cdb, metadata !226, metadata !104), !dbg !227
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !228
  store i32 %9, i32* %srb__Cdb, align 4, !dbg !227
  call void @llvm.dbg.declare(metadata i32* %cdb, metadata !229, metadata !104), !dbg !230
  call void @llvm.dbg.declare(metadata i32* %inquiryDataPtr, metadata !231, metadata !104), !dbg !232
  call void @llvm.dbg.declare(metadata i32* %attempt, metadata !233, metadata !104), !dbg !234
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !235, metadata !104), !dbg !236
  call void @llvm.dbg.declare(metadata i32* %deviceParameterHandle, metadata !237, metadata !104), !dbg !238
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !239
  store i32 %10, i32* %deviceParameterHandle, align 4, !dbg !238
  call void @llvm.dbg.declare(metadata i32* %keyValue, metadata !240, metadata !104), !dbg !241
  %11 = load i32, i32* %4, align 4, !dbg !242
  %12 = load i32, i32* %5, align 4, !dbg !245
  %13 = call i32 @CdAudioForwardIrpSynchronous(i32 %11, i32 %12), !dbg !246
  store i32 %13, i32* %status, align 4, !dbg !247
  %14 = load i32, i32* %status, align 4, !dbg !248
  %15 = icmp slt i32 %14, 0, !dbg !251
  call void @llvm.dbg.declare(metadata i32* %2, metadata !252, metadata !104), !dbg !253
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_9.i, metadata !256, metadata !104), !dbg !258
  br i1 %15, label %16, label %18, !dbg !259

; <label>:16                                      ; preds = %0
  %17 = load i32, i32* %status, align 4, !dbg !260
  store i32 %17, i32* %3, !dbg !262
  br label %74, !dbg !262

; <label>:18                                      ; preds = %0
  %19 = load i32, i32* %deviceExtension__Active, align 4, !dbg !263
  %20 = icmp eq i32 %19, 255, !dbg !265
  br i1 %20, label %21, label %51, !dbg !266

; <label>:21                                      ; preds = %18
  %22 = load i32, i32* %srb__Cdb, align 4, !dbg !267
  store i32 %22, i32* %cdb, align 4, !dbg !269
  store i32 0, i32* %inquiryDataPtr, align 4, !dbg !270
  store i32 0, i32* %attempt, align 4, !dbg !271
  %23 = load i32, i32* %inquiryDataPtr, align 4, !dbg !272
  %24 = icmp ne i32 %23, 0, !dbg !272
  br i1 %24, label %26, label %25, !dbg !274

; <label>:25                                      ; preds = %21
  store i32 0, i32* %deviceExtension__Active, align 4, !dbg !275
  store i32 0, i32* %3, !dbg !277
  br label %74, !dbg !277

; <label>:26                                      ; preds = %21
  store i32 -1073741823, i32* %status, align 4, !dbg !278
  br label %27, !dbg !279

; <label>:27                                      ; preds = %40, %26
  br label %28, !dbg !281

; <label>:28                                      ; preds = %27
  %29 = load i32, i32* %status, align 4, !dbg !282
  %30 = icmp slt i32 %29, 0, !dbg !286
  br i1 %30, label %31, label %39, !dbg !287

; <label>:31                                      ; preds = %28
  %32 = load i32, i32* %attempt, align 4, !dbg !288
  store i32 %32, i32* %tmp, align 4, !dbg !290
  %33 = load i32, i32* %attempt, align 4, !dbg !291
  %34 = add nsw i32 %33, 1, !dbg !291
  store i32 %34, i32* %attempt, align 4, !dbg !291
  %35 = load i32, i32* %tmp, align 4, !dbg !292
  %36 = icmp sge i32 %35, 4, !dbg !294
  br i1 %36, label %37, label %38, !dbg !295

; <label>:37                                      ; preds = %31
  br label %46, !dbg !296

; <label>:38                                      ; preds = %31
  br label %40, !dbg !298

; <label>:39                                      ; preds = %28
  br label %46, !dbg !299

; <label>:40                                      ; preds = %38
  %41 = load i32, i32* %deviceExtension, align 4, !dbg !301
  %42 = load i32, i32* %srb, align 4, !dbg !303
  %43 = load i32, i32* %inquiryDataPtr, align 4, !dbg !304
  %44 = call i32 @SendSrbSynchronous(i32 %41, i32 %42, i32 %43, i32 36), !dbg !305
  store i32 %44, i32* %status, align 4, !dbg !306
  br label %27, !dbg !279
                                                  ; No predecessors!
  br label %46, !dbg !307

; <label>:46                                      ; preds = %45, %39, %37
  %47 = load i32, i32* %status, align 4, !dbg !308
  %48 = icmp slt i32 %47, 0, !dbg !311
  br i1 %48, label %49, label %50, !dbg !312

; <label>:49                                      ; preds = %46
  store i32 0, i32* %deviceExtension__Active, align 4, !dbg !313
  store i32 0, i32* %3, !dbg !315
  br label %74, !dbg !315

; <label>:50                                      ; preds = %46
  store i32 0, i32* %deviceExtension__Active, align 4, !dbg !316
  br label %51, !dbg !317

; <label>:51                                      ; preds = %50, %18
  %52 = load i32, i32* %deviceExtension__Active, align 4, !dbg !318
  store i32 %52, i32* %keyValue, align 4, !dbg !319
  %53 = load i32, i32* %status, align 4, !dbg !320
  %54 = icmp slt i32 %53, 0, !dbg !323
  br i1 %54, label %55, label %56, !dbg !324

; <label>:55                                      ; preds = %51
  store i32 0, i32* %3, !dbg !325
  br label %74, !dbg !325

; <label>:56                                      ; preds = %51
  %57 = load i32, i32* %status, align 4, !dbg !327
  %58 = icmp slt i32 %57, 0, !dbg !330
  br i1 %58, label %59, label %60, !dbg !331

; <label>:59                                      ; preds = %56
  br label %60, !dbg !332

; <label>:60                                      ; preds = %59, %56
  %61 = load i32, i32* %deviceParameterHandle, align 4, !dbg !334
  %62 = bitcast i32* %1 to i8*, !dbg !335
  call void @llvm.lifetime.start(i64 4, i8* %62), !dbg !335
  %63 = bitcast i32* %2 to i8*, !dbg !335
  call void @llvm.lifetime.start(i64 4, i8* %63), !dbg !335
  %64 = bitcast i32* %tmp_ndt_9.i to i8*, !dbg !335
  call void @llvm.lifetime.start(i64 4, i8* %64), !dbg !335
  store i32 %61, i32* %2, align 4, !dbg !335
  %65 = call i32 @__VERIFIER_nondet_int() #4, !dbg !336
  store i32 %65, i32* %tmp_ndt_9.i, align 4, !dbg !337
  %66 = load i32, i32* %tmp_ndt_9.i, align 4, !dbg !338
  %67 = icmp eq i32 %66, 0, !dbg !340
  br i1 %67, label %68, label %69, !dbg !341

; <label>:68                                      ; preds = %60
  store i32 0, i32* %1, !dbg !342
  br label %ZwClose.exit, !dbg !342

; <label>:69                                      ; preds = %60
  store i32 -1073741823, i32* %1, !dbg !346
  br label %ZwClose.exit, !dbg !346

ZwClose.exit:                                     ; preds = %68, %69
  %70 = load i32, i32* %1, !dbg !347
  %71 = bitcast i32* %1 to i8*, !dbg !347
  call void @llvm.lifetime.end(i64 4, i8* %71), !dbg !347
  %72 = bitcast i32* %2 to i8*, !dbg !347
  call void @llvm.lifetime.end(i64 4, i8* %72), !dbg !347
  %73 = bitcast i32* %tmp_ndt_9.i to i8*, !dbg !347
  call void @llvm.lifetime.end(i64 4, i8* %73), !dbg !347
  store i32 0, i32* %3, !dbg !348
  br label %74, !dbg !348

; <label>:74                                      ; preds = %ZwClose.exit, %55, %49, %25, %16
  %75 = load i32, i32* %3, !dbg !349
  ret i32 %75, !dbg !349
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
  call void @llvm.dbg.declare(metadata i32* %9, metadata !350, metadata !104), !dbg !351
  store i32 %Irp, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !352, metadata !104), !dbg !353
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !354, metadata !104), !dbg !355
  %11 = call i32 @__VERIFIER_nondet_int(), !dbg !356
  store i32 %11, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !355
  call void @llvm.dbg.declare(metadata i32* %irpSp__MinorFunction, metadata !357, metadata !104), !dbg !358
  %12 = call i32 @__VERIFIER_nondet_int(), !dbg !359
  store i32 %12, i32* %irpSp__MinorFunction, align 4, !dbg !358
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !360, metadata !104), !dbg !361
  call void @llvm.dbg.declare(metadata i32* %irpSp__Parameters__UsageNotification__Type, metadata !362, metadata !104), !dbg !363
  %13 = call i32 @__VERIFIER_nondet_int(), !dbg !364
  store i32 %13, i32* %irpSp__Parameters__UsageNotification__Type, align 4, !dbg !363
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__PagingPathCountEvent, metadata !365, metadata !104), !dbg !366
  %14 = call i32 @__VERIFIER_nondet_int(), !dbg !367
  store i32 %14, i32* %deviceExtension__PagingPathCountEvent, align 4, !dbg !366
  call void @llvm.dbg.declare(metadata i32* %irpSp__Parameters__UsageNotification__InPath, metadata !368, metadata !104), !dbg !369
  %15 = call i32 @__VERIFIER_nondet_int(), !dbg !370
  store i32 %15, i32* %irpSp__Parameters__UsageNotification__InPath, align 4, !dbg !369
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__PagingPathCount, metadata !371, metadata !104), !dbg !372
  %16 = call i32 @__VERIFIER_nondet_int(), !dbg !373
  store i32 %16, i32* %deviceExtension__PagingPathCount, align 4, !dbg !372
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__Flags, metadata !374, metadata !104), !dbg !375
  call void @llvm.dbg.declare(metadata i32* %irpSp, metadata !376, metadata !104), !dbg !377
  call void @llvm.dbg.declare(metadata i32* %status, metadata !378, metadata !104), !dbg !379
  call void @llvm.dbg.declare(metadata i32* %setPagable, metadata !380, metadata !104), !dbg !381
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !382, metadata !104), !dbg !383
  call void @llvm.dbg.declare(metadata i32* %tmp___0, metadata !384, metadata !104), !dbg !385
  %17 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !386
  store i32 %17, i32* %irpSp, align 4, !dbg !388
  store i32 -1073741637, i32* %status, align 4, !dbg !389
  %18 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !390
  %19 = icmp eq i32 %18, 0, !dbg !392
  call void @llvm.dbg.declare(metadata i32* %6, metadata !393, metadata !104), !dbg !394
  call void @llvm.dbg.declare(metadata i32* %7, metadata !402, metadata !104), !dbg !403
  call void @llvm.dbg.declare(metadata i32* %3, metadata !203, metadata !104), !dbg !404
  call void @llvm.dbg.declare(metadata i32* %4, metadata !205, metadata !104), !dbg !407
  call void @llvm.dbg.declare(metadata i32* %5, metadata !207, metadata !104), !dbg !408
  call void @llvm.dbg.declare(metadata i32* %l.i, metadata !209, metadata !104), !dbg !409
  call void @llvm.dbg.declare(metadata i32* %1, metadata !393, metadata !104), !dbg !410
  call void @llvm.dbg.declare(metadata i32* %2, metadata !402, metadata !104), !dbg !412
  br i1 %19, label %20, label %21, !dbg !413

; <label>:20                                      ; preds = %0
  br label %28, !dbg !414

; <label>:21                                      ; preds = %0
  %22 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !416
  %23 = icmp eq i32 %22, 22, !dbg !417
  br i1 %23, label %24, label %25, !dbg !418

; <label>:24                                      ; preds = %21
  br label %45, !dbg !419

; <label>:25                                      ; preds = %21
  br label %120, !dbg !421
                                                  ; No predecessors!
  br i1 false, label %27, label %125, !dbg !422

; <label>:27                                      ; preds = %26
  br label %28, !dbg !423

; <label>:28                                      ; preds = %27, %20
  %29 = load i32, i32* %9, align 4, !dbg !424
  %30 = load i32, i32* %10, align 4, !dbg !425
  %31 = call i32 @CdAudioStartDevice(i32 %29, i32 %30), !dbg !426
  store i32 %31, i32* %status, align 4, !dbg !427
  %32 = load i32, i32* %status, align 4, !dbg !428
  store i32 %32, i32* %Irp__IoStatus__Status, align 4, !dbg !429
  %33 = load i32, i32* %status, align 4, !dbg !430
  store i32 %33, i32* @myStatus, align 4, !dbg !431
  %34 = load i32, i32* %10, align 4, !dbg !432
  %35 = bitcast i32* %6 to i8*, !dbg !433
  call void @llvm.lifetime.start(i64 4, i8* %35), !dbg !433
  %36 = bitcast i32* %7 to i8*, !dbg !433
  call void @llvm.lifetime.start(i64 4, i8* %36), !dbg !433
  store i32 %34, i32* %6, align 4, !dbg !433
  store i32 0, i32* %7, align 4, !dbg !433
  %37 = load i32, i32* @s, align 4, !dbg !434
  %38 = load i32, i32* @NP, align 4, !dbg !437
  %39 = icmp eq i32 %37, %38, !dbg !438
  br i1 %39, label %IofCompleteRequest.exit, label %40, !dbg !439

; <label>:40                                      ; preds = %28
  call void (...) @__VERIFIER_error() #6, !dbg !440
  unreachable, !dbg !440

IofCompleteRequest.exit:                          ; preds = %28
  %41 = load i32, i32* @DC, align 4, !dbg !444
  store i32 %41, i32* @s, align 4, !dbg !446
  %42 = bitcast i32* %6 to i8*, !dbg !447
  call void @llvm.lifetime.end(i64 4, i8* %42), !dbg !447
  %43 = bitcast i32* %7 to i8*, !dbg !447
  call void @llvm.lifetime.end(i64 4, i8* %43), !dbg !447
  %44 = load i32, i32* %status, align 4, !dbg !448
  store i32 %44, i32* %8, !dbg !449
  br label %130, !dbg !449

; <label>:45                                      ; preds = %24
  %46 = load i32, i32* %irpSp__Parameters__UsageNotification__Type, align 4, !dbg !450
  %47 = load i32, i32* @DeviceUsageTypePaging, align 4, !dbg !452
  %48 = icmp ne i32 %46, %47, !dbg !453
  br i1 %48, label %49, label %54, !dbg !454

; <label>:49                                      ; preds = %45
  %50 = load i32, i32* %9, align 4, !dbg !455
  %51 = load i32, i32* %10, align 4, !dbg !458
  %52 = call i32 @CdAudioSendToNextDriver(i32 %50, i32 %51), !dbg !459
  store i32 %52, i32* %tmp, align 4, !dbg !460
  %53 = load i32, i32* %tmp, align 4, !dbg !461
  store i32 %53, i32* %8, !dbg !462
  br label %130, !dbg !462

; <label>:54                                      ; preds = %45
  %55 = load i32, i32* %deviceExtension__PagingPathCountEvent, align 4, !dbg !463
  %56 = load i32, i32* @Executive, align 4, !dbg !465
  %57 = load i32, i32* @KernelMode, align 4, !dbg !466
  %58 = call i32 @KeWaitForSingleObject(i32 %55, i32 %56, i32 %57, i32 0, i32 0), !dbg !467
  store i32 %58, i32* %status, align 4, !dbg !468
  store i32 0, i32* %setPagable, align 4, !dbg !469
  %59 = load i32, i32* %irpSp__Parameters__UsageNotification__InPath, align 4, !dbg !470
  %60 = icmp ne i32 %59, 0, !dbg !470
  br i1 %60, label %61, label %66, !dbg !472

; <label>:61                                      ; preds = %54
  %62 = load i32, i32* %deviceExtension__PagingPathCount, align 4, !dbg !473
  %63 = icmp ne i32 %62, 1, !dbg !476
  br i1 %63, label %64, label %65, !dbg !477

; <label>:64                                      ; preds = %61
  br label %67, !dbg !478

; <label>:65                                      ; preds = %61
  br label %73, !dbg !480

; <label>:66                                      ; preds = %54
  br label %67, !dbg !481

; <label>:67                                      ; preds = %66, %64
  %68 = load i32, i32* %status, align 4, !dbg !482
  %69 = load i32, i32* %status, align 4, !dbg !485
  %70 = icmp eq i32 %68, %69, !dbg !486
  br i1 %70, label %71, label %72, !dbg !487

; <label>:71                                      ; preds = %67
  store i32 1, i32* %setPagable, align 4, !dbg !488
  br label %72, !dbg !490

; <label>:72                                      ; preds = %71, %67
  br label %73

; <label>:73                                      ; preds = %72, %65
  %74 = load i32, i32* %9, align 4, !dbg !491
  %75 = load i32, i32* %10, align 4, !dbg !493
  %76 = call i32 @CdAudioForwardIrpSynchronous(i32 %74, i32 %75), !dbg !494
  store i32 %76, i32* %status, align 4, !dbg !495
  %77 = load i32, i32* %status, align 4, !dbg !496
  %78 = icmp sge i32 %77, 0, !dbg !498
  br i1 %78, label %79, label %92, !dbg !499

; <label>:79                                      ; preds = %73
  %80 = load i32, i32* %irpSp__Parameters__UsageNotification__InPath, align 4, !dbg !500
  %81 = icmp ne i32 %80, 0, !dbg !500
  br i1 %81, label %82, label %83, !dbg !503

; <label>:82                                      ; preds = %79
  br label %83, !dbg !504

; <label>:83                                      ; preds = %82, %79
  %84 = load i32, i32* %irpSp__Parameters__UsageNotification__InPath, align 4, !dbg !506
  %85 = icmp ne i32 %84, 0, !dbg !506
  br i1 %85, label %86, label %91, !dbg !508

; <label>:86                                      ; preds = %83
  %87 = load i32, i32* %deviceExtension__PagingPathCount, align 4, !dbg !509
  %88 = icmp eq i32 %87, 1, !dbg !512
  br i1 %88, label %89, label %90, !dbg !513

; <label>:89                                      ; preds = %86
  br label %90, !dbg !514

; <label>:90                                      ; preds = %89, %86
  br label %91, !dbg !516

; <label>:91                                      ; preds = %90, %83
  br label %97, !dbg !517

; <label>:92                                      ; preds = %73
  %93 = load i32, i32* %setPagable, align 4, !dbg !518
  %94 = icmp eq i32 %93, 1, !dbg !521
  br i1 %94, label %95, label %96, !dbg !522

; <label>:95                                      ; preds = %92
  store i32 0, i32* %setPagable, align 4, !dbg !523
  br label %96, !dbg !525

; <label>:96                                      ; preds = %95, %92
  br label %97

; <label>:97                                      ; preds = %96, %91
  %98 = load i32, i32* %deviceExtension__PagingPathCountEvent, align 4, !dbg !526
  %99 = bitcast i32* %3 to i8*, !dbg !527
  call void @llvm.lifetime.start(i64 4, i8* %99), !dbg !527
  %100 = bitcast i32* %4 to i8*, !dbg !527
  call void @llvm.lifetime.start(i64 4, i8* %100), !dbg !527
  %101 = bitcast i32* %5 to i8*, !dbg !527
  call void @llvm.lifetime.start(i64 4, i8* %101), !dbg !527
  %102 = bitcast i32* %l.i to i8*, !dbg !527
  call void @llvm.lifetime.start(i64 4, i8* %102), !dbg !527
  store i32 %98, i32* %3, align 4, !dbg !527
  store i32 0, i32* %4, align 4, !dbg !527
  store i32 0, i32* %5, align 4, !dbg !527
  %103 = call i32 @__VERIFIER_nondet_int() #4, !dbg !528
  store i32 %103, i32* %l.i, align 4, !dbg !409
  store i32 1, i32* @setEventCalled, align 4, !dbg !529
  %104 = load i32, i32* %l.i, align 4, !dbg !530
  %105 = bitcast i32* %3 to i8*, !dbg !531
  call void @llvm.lifetime.end(i64 4, i8* %105), !dbg !531
  %106 = bitcast i32* %4 to i8*, !dbg !531
  call void @llvm.lifetime.end(i64 4, i8* %106), !dbg !531
  %107 = bitcast i32* %5 to i8*, !dbg !531
  call void @llvm.lifetime.end(i64 4, i8* %107), !dbg !531
  %108 = bitcast i32* %l.i to i8*, !dbg !531
  call void @llvm.lifetime.end(i64 4, i8* %108), !dbg !531
  %109 = load i32, i32* %10, align 4, !dbg !532
  %110 = bitcast i32* %1 to i8*, !dbg !533
  call void @llvm.lifetime.start(i64 4, i8* %110), !dbg !533
  %111 = bitcast i32* %2 to i8*, !dbg !533
  call void @llvm.lifetime.start(i64 4, i8* %111), !dbg !533
  store i32 %109, i32* %1, align 4, !dbg !533
  store i32 0, i32* %2, align 4, !dbg !533
  %112 = load i32, i32* @s, align 4, !dbg !534
  %113 = load i32, i32* @NP, align 4, !dbg !535
  %114 = icmp eq i32 %112, %113, !dbg !536
  br i1 %114, label %IofCompleteRequest.exit1, label %115, !dbg !537

; <label>:115                                     ; preds = %97
  call void (...) @__VERIFIER_error() #6, !dbg !538
  unreachable, !dbg !538

IofCompleteRequest.exit1:                         ; preds = %97
  %116 = load i32, i32* @DC, align 4, !dbg !540
  store i32 %116, i32* @s, align 4, !dbg !541
  %117 = bitcast i32* %1 to i8*, !dbg !542
  call void @llvm.lifetime.end(i64 4, i8* %117), !dbg !542
  %118 = bitcast i32* %2 to i8*, !dbg !542
  call void @llvm.lifetime.end(i64 4, i8* %118), !dbg !542
  %119 = load i32, i32* %status, align 4, !dbg !543
  store i32 %119, i32* %8, !dbg !544
  br label %130, !dbg !544

; <label>:120                                     ; preds = %25
  %121 = load i32, i32* %9, align 4, !dbg !545
  %122 = load i32, i32* %10, align 4, !dbg !547
  %123 = call i32 @CdAudioSendToNextDriver(i32 %121, i32 %122), !dbg !548
  store i32 %123, i32* %tmp___0, align 4, !dbg !549
  %124 = load i32, i32* %tmp___0, align 4, !dbg !550
  store i32 %124, i32* %8, !dbg !551
  br label %130, !dbg !551

; <label>:125                                     ; preds = %26
  br label %126, !dbg !552

; <label>:126                                     ; preds = %125
  br label %127

; <label>:127                                     ; preds = %126
  br label %128

; <label>:128                                     ; preds = %127
  br label %129

; <label>:129                                     ; preds = %128
  store i32 0, i32* %8, !dbg !553
  br label %130, !dbg !553

; <label>:130                                     ; preds = %129, %120, %IofCompleteRequest.exit1, %49, %IofCompleteRequest.exit
  %131 = load i32, i32* %8, !dbg !554
  ret i32 %131, !dbg !554
}

; Function Attrs: nounwind ssp uwtable
define void @IofCompleteRequest(i32 %Irp, i32 %PriorityBoost) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %Irp, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !393, metadata !104), !dbg !555
  store i32 %PriorityBoost, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !402, metadata !104), !dbg !556
  %3 = load i32, i32* @s, align 4, !dbg !557
  %4 = load i32, i32* @NP, align 4, !dbg !558
  %5 = icmp eq i32 %3, %4, !dbg !559
  br i1 %5, label %6, label %8, !dbg !560

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* @DC, align 4, !dbg !561
  store i32 %7, i32* @s, align 4, !dbg !562
  br label %9, !dbg !563

; <label>:8                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !564
  unreachable, !dbg !564

errorFn.exit:                                     ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %errorFn.exit, %6
  ret void, !dbg !566
}

; Function Attrs: nounwind ssp uwtable
define i32 @CdAudioDeviceControl(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %deviceExtension__Active = alloca i32, align 4
  %status = alloca i32, align 4
  store i32 %DeviceObject, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !567, metadata !104), !dbg !568
  store i32 %Irp, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !569, metadata !104), !dbg !570
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__Active, metadata !571, metadata !104), !dbg !572
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !573
  store i32 %3, i32* %deviceExtension__Active, align 4, !dbg !572
  call void @llvm.dbg.declare(metadata i32* %status, metadata !574, metadata !104), !dbg !575
  %4 = load i32, i32* %deviceExtension__Active, align 4, !dbg !576
  %5 = icmp eq i32 %4, 2, !dbg !579
  br i1 %5, label %6, label %7, !dbg !580

; <label>:6                                       ; preds = %0
  br label %22, !dbg !581

; <label>:7                                       ; preds = %0
  %8 = load i32, i32* %deviceExtension__Active, align 4, !dbg !583
  %9 = icmp eq i32 %8, 3, !dbg !586
  br i1 %9, label %10, label %11, !dbg !587

; <label>:10                                      ; preds = %7
  br label %26, !dbg !588

; <label>:11                                      ; preds = %7
  %12 = load i32, i32* %deviceExtension__Active, align 4, !dbg !590
  %13 = icmp eq i32 %12, 1, !dbg !593
  br i1 %13, label %14, label %15, !dbg !594

; <label>:14                                      ; preds = %11
  br label %30, !dbg !595

; <label>:15                                      ; preds = %11
  %16 = load i32, i32* %deviceExtension__Active, align 4, !dbg !597
  %17 = icmp eq i32 %16, 7, !dbg !600
  br i1 %17, label %18, label %19, !dbg !601

; <label>:18                                      ; preds = %15
  br label %34, !dbg !602

; <label>:19                                      ; preds = %15
  br label %38, !dbg !604
                                                  ; No predecessors!
  br i1 false, label %21, label %42, !dbg !606

; <label>:21                                      ; preds = %20
  br label %22, !dbg !607

; <label>:22                                      ; preds = %21, %6
  %23 = load i32, i32* %1, align 4, !dbg !609
  %24 = load i32, i32* %2, align 4, !dbg !612
  %25 = call i32 @CdAudio535DeviceControl(i32 %23, i32 %24), !dbg !613
  store i32 %25, i32* %status, align 4, !dbg !614
  br label %43, !dbg !615

; <label>:26                                      ; preds = %10
  %27 = load i32, i32* %1, align 4, !dbg !616
  %28 = load i32, i32* %2, align 4, !dbg !618
  %29 = call i32 @CdAudio435DeviceControl(i32 %27, i32 %28), !dbg !619
  store i32 %29, i32* %status, align 4, !dbg !620
  br label %43, !dbg !621

; <label>:30                                      ; preds = %14
  %31 = load i32, i32* %1, align 4, !dbg !622
  %32 = load i32, i32* %2, align 4, !dbg !624
  %33 = call i32 @CdAudioAtapiDeviceControl(i32 %31, i32 %32), !dbg !625
  store i32 %33, i32* %status, align 4, !dbg !626
  br label %43, !dbg !627

; <label>:34                                      ; preds = %18
  %35 = load i32, i32* %1, align 4, !dbg !628
  %36 = load i32, i32* %2, align 4, !dbg !630
  %37 = call i32 @CdAudioHPCdrDeviceControl(i32 %35, i32 %36), !dbg !631
  store i32 %37, i32* %status, align 4, !dbg !632
  br label %43, !dbg !633

; <label>:38                                      ; preds = %19
  store i32 0, i32* %deviceExtension__Active, align 4, !dbg !634
  %39 = load i32, i32* %1, align 4, !dbg !636
  %40 = load i32, i32* %2, align 4, !dbg !637
  %41 = call i32 @CdAudioSendToNextDriver(i32 %39, i32 %40), !dbg !638
  store i32 %41, i32* %status, align 4, !dbg !639
  br label %44, !dbg !640

; <label>:42                                      ; preds = %20
  br label %43, !dbg !641

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
  %49 = load i32, i32* %status, align 4, !dbg !642
  ret i32 %49, !dbg !643
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
  call void @llvm.dbg.declare(metadata i32* %1, metadata !644, metadata !104), !dbg !645
  store i32 %Irp, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !646, metadata !104), !dbg !647
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !648, metadata !104), !dbg !649
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !650
  store i32 %3, i32* %Irp__CurrentLocation, align 4, !dbg !649
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !651, metadata !104), !dbg !652
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !653
  store i32 %4, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !652
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__TargetDeviceObject, metadata !654, metadata !104), !dbg !655
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !656
  store i32 %5, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !655
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !657, metadata !104), !dbg !658
  %6 = load i32, i32* @s, align 4, !dbg !659
  %7 = load i32, i32* @NP, align 4, !dbg !662
  %8 = icmp eq i32 %6, %7, !dbg !663
  br i1 %8, label %9, label %11, !dbg !664

; <label>:9                                       ; preds = %0
  %10 = load i32, i32* @SKIP1, align 4, !dbg !665
  store i32 %10, i32* @s, align 4, !dbg !667
  br label %12, !dbg !668

; <label>:11                                      ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !669
  unreachable, !dbg !669

errorFn.exit:                                     ; No predecessors!
  br label %12

; <label>:12                                      ; preds = %errorFn.exit, %9
  %13 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !673
  %14 = add nsw i32 %13, 1, !dbg !673
  store i32 %14, i32* %Irp__CurrentLocation, align 4, !dbg !673
  %15 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !675
  %16 = add nsw i32 %15, 1, !dbg !675
  store i32 %16, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !675
  %17 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !676
  %18 = load i32, i32* %2, align 4, !dbg !677
  %19 = call i32 @IofCallDriver(i32 %17, i32 %18), !dbg !678
  store i32 %19, i32* %tmp, align 4, !dbg !679
  %20 = load i32, i32* %tmp, align 4, !dbg !680
  ret i32 %20, !dbg !681
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !682, metadata !104), !dbg !683
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__PlayActive, metadata !684, metadata !104), !dbg !685
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !686
  store i32 %3, i32* %deviceExtension__PlayActive, align 4, !dbg !685
  call void @llvm.dbg.declare(metadata i32* %ioStatus__Status, metadata !687, metadata !104), !dbg !688
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !689
  store i32 %4, i32* %ioStatus__Status, align 4, !dbg !688
  call void @llvm.dbg.declare(metadata i32* %currentBuffer__Header__AudioStatus, metadata !690, metadata !104), !dbg !691
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !692
  store i32 %5, i32* %currentBuffer__Header__AudioStatus, align 4, !dbg !691
  call void @llvm.dbg.declare(metadata i32* %irp_CdAudioIsPlayActive, metadata !693, metadata !104), !dbg !694
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !695
  store i32 %6, i32* %irp_CdAudioIsPlayActive, align 4, !dbg !694
  call void @llvm.dbg.declare(metadata i32* %event, metadata !696, metadata !104), !dbg !697
  %7 = call i32 @__VERIFIER_nondet_int(), !dbg !698
  store i32 %7, i32* %event, align 4, !dbg !697
  call void @llvm.dbg.declare(metadata i32* %status, metadata !699, metadata !104), !dbg !700
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !701
  store i32 %8, i32* %status, align 4, !dbg !700
  call void @llvm.dbg.declare(metadata i32* %currentBuffer, metadata !702, metadata !104), !dbg !703
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !704
  store i32 %9, i32* %currentBuffer, align 4, !dbg !703
  call void @llvm.dbg.declare(metadata i32* %returnValue, metadata !705, metadata !104), !dbg !706
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp10, metadata !707, metadata !104), !dbg !708
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp11, metadata !709, metadata !104), !dbg !710
  %10 = load i32, i32* %deviceExtension__PlayActive, align 4, !dbg !711
  %11 = icmp ne i32 %10, 0, !dbg !711
  br i1 %11, label %13, label %12, !dbg !714

; <label>:12                                      ; preds = %0
  store i32 0, i32* %1, !dbg !715
  br label %43, !dbg !715

; <label>:13                                      ; preds = %0
  %14 = load i32, i32* %currentBuffer, align 4, !dbg !717
  %15 = icmp eq i32 %14, 0, !dbg !719
  br i1 %15, label %16, label %17, !dbg !720

; <label>:16                                      ; preds = %13
  store i32 0, i32* %1, !dbg !721
  br label %43, !dbg !721

; <label>:17                                      ; preds = %13
  %18 = load i32, i32* %irp_CdAudioIsPlayActive, align 4, !dbg !723
  %19 = icmp eq i32 %18, 0, !dbg !725
  br i1 %19, label %20, label %21, !dbg !726

; <label>:20                                      ; preds = %17
  store i32 0, i32* %1, !dbg !727
  br label %43, !dbg !727

; <label>:21                                      ; preds = %17
  %22 = load i32, i32* %status, align 4, !dbg !729
  %23 = sext i32 %22 to i64, !dbg !731
  store i64 %23, i64* %__cil_tmp10, align 8, !dbg !732
  %24 = load i64, i64* %__cil_tmp10, align 8, !dbg !733
  %25 = icmp eq i64 %24, 259, !dbg !735
  br i1 %25, label %26, label %32, !dbg !736

; <label>:26                                      ; preds = %21
  %27 = load i32, i32* %event, align 4, !dbg !737
  %28 = load i32, i32* @Suspended, align 4, !dbg !740
  %29 = load i32, i32* @KernelMode, align 4, !dbg !741
  %30 = call i32 @KeWaitForSingleObject(i32 %27, i32 %28, i32 %29, i32 0, i32 0), !dbg !742
  %31 = load i32, i32* %ioStatus__Status, align 4, !dbg !743
  store i32 %31, i32* %status, align 4, !dbg !744
  br label %32, !dbg !745

; <label>:32                                      ; preds = %26, %21
  %33 = load i32, i32* %status, align 4, !dbg !746
  %34 = icmp slt i32 %33, 0, !dbg !749
  br i1 %34, label %35, label %36, !dbg !750

; <label>:35                                      ; preds = %32
  store i32 0, i32* %1, !dbg !751
  br label %43, !dbg !751

; <label>:36                                      ; preds = %32
  %37 = load i32, i32* %currentBuffer__Header__AudioStatus, align 4, !dbg !753
  %38 = icmp eq i32 %37, 17, !dbg !755
  br i1 %38, label %39, label %40, !dbg !756

; <label>:39                                      ; preds = %36
  store i32 1, i32* %returnValue, align 4, !dbg !757
  br label %41, !dbg !759

; <label>:40                                      ; preds = %36
  store i32 0, i32* %returnValue, align 4, !dbg !760
  store i32 0, i32* %deviceExtension__PlayActive, align 4, !dbg !762
  br label %41

; <label>:41                                      ; preds = %40, %39
  %42 = load i32, i32* %returnValue, align 4, !dbg !763
  store i32 %42, i32* %1, !dbg !764
  br label %43, !dbg !764

; <label>:43                                      ; preds = %41, %35, %20, %16, %12
  %44 = load i32, i32* %1, !dbg !765
  ret i32 %44, !dbg !765
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
  call void @llvm.dbg.declare(metadata i32* %37, metadata !766, metadata !104), !dbg !767
  store i32 %Irp, i32* %38, align 4
  call void @llvm.dbg.declare(metadata i32* %38, metadata !768, metadata !104), !dbg !769
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !770, metadata !104), !dbg !771
  %39 = call i32 @__VERIFIER_nondet_int(), !dbg !772
  store i32 %39, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !771
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !773, metadata !104), !dbg !774
  %40 = call i32 @__VERIFIER_nondet_int(), !dbg !775
  store i32 %40, i32* %DeviceObject__DeviceExtension, align 4, !dbg !774
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__TargetDeviceObject, metadata !776, metadata !104), !dbg !777
  %41 = call i32 @__VERIFIER_nondet_int(), !dbg !778
  store i32 %41, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !777
  call void @llvm.dbg.declare(metadata i32* %Irp__AssociatedIrp__SystemBuffer, metadata !779, metadata !104), !dbg !780
  %42 = call i32 @__VERIFIER_nondet_int(), !dbg !781
  store i32 %42, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !780
  call void @llvm.dbg.declare(metadata i32* %srb__Cdb, metadata !782, metadata !104), !dbg !783
  %43 = call i32 @__VERIFIER_nondet_int(), !dbg !784
  store i32 %43, i32* %srb__Cdb, align 4, !dbg !783
  call void @llvm.dbg.declare(metadata i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, metadata !785, metadata !104), !dbg !786
  %44 = call i32 @__VERIFIER_nondet_int(), !dbg !787
  store i32 %44, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !786
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !788, metadata !104), !dbg !789
  call void @llvm.dbg.declare(metadata i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, metadata !790, metadata !104), !dbg !791
  %45 = call i32 @__VERIFIER_nondet_int(), !dbg !792
  store i32 %45, i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !791
  call void @llvm.dbg.declare(metadata i32* %currentIrpStack__Parameters__DeviceIoControl__InputBufferLength, metadata !793, metadata !104), !dbg !794
  %46 = call i32 @__VERIFIER_nondet_int(), !dbg !795
  store i32 %46, i32* %currentIrpStack__Parameters__DeviceIoControl__InputBufferLength, align 4, !dbg !794
  call void @llvm.dbg.declare(metadata i32* %srb__CdbLength, metadata !796, metadata !104), !dbg !797
  call void @llvm.dbg.declare(metadata i32* %cdb__CDB10__OperationCode, metadata !798, metadata !104), !dbg !799
  call void @llvm.dbg.declare(metadata i32* %srb__TimeOutValue, metadata !800, metadata !104), !dbg !801
  call void @llvm.dbg.declare(metadata i32* %sizeof__READ_CAPACITY_DATA, metadata !802, metadata !104), !dbg !803
  %47 = call i32 @__VERIFIER_nondet_int(), !dbg !804
  store i32 %47, i32* %sizeof__READ_CAPACITY_DATA, align 4, !dbg !803
  call void @llvm.dbg.declare(metadata i32* %lastSession__LogicalBlockAddress, metadata !805, metadata !104), !dbg !806
  %48 = call i32 @__VERIFIER_nondet_int(), !dbg !807
  store i32 %48, i32* %lastSession__LogicalBlockAddress, align 4, !dbg !806
  call void @llvm.dbg.declare(metadata i32* %cdaudioDataOut__FirstTrack, metadata !808, metadata !104), !dbg !809
  %49 = call i32 @__VERIFIER_nondet_int(), !dbg !810
  store i32 %49, i32* %cdaudioDataOut__FirstTrack, align 4, !dbg !809
  call void @llvm.dbg.declare(metadata i32* %cdaudioDataOut__LastTrack, metadata !811, metadata !104), !dbg !812
  %50 = call i32 @__VERIFIER_nondet_int(), !dbg !813
  store i32 %50, i32* %cdaudioDataOut__LastTrack, align 4, !dbg !812
  call void @llvm.dbg.declare(metadata i32* %sizeof__CDROM_TOC, metadata !814, metadata !104), !dbg !815
  %51 = call i32 @__VERIFIER_nondet_int(), !dbg !816
  store i32 %51, i32* %sizeof__CDROM_TOC, align 4, !dbg !815
  call void @llvm.dbg.declare(metadata i32* %sizeof__SUB_Q_CURRENT_POSITION, metadata !817, metadata !104), !dbg !818
  %52 = call i32 @__VERIFIER_nondet_int(), !dbg !819
  store i32 %52, i32* %sizeof__SUB_Q_CURRENT_POSITION, align 4, !dbg !818
  call void @llvm.dbg.declare(metadata i32* %userPtr__Format, metadata !820, metadata !104), !dbg !821
  %53 = call i32 @__VERIFIER_nondet_int(), !dbg !822
  store i32 %53, i32* %userPtr__Format, align 4, !dbg !821
  call void @llvm.dbg.declare(metadata i32* %sizeof__CDROM_PLAY_AUDIO_MSF, metadata !823, metadata !104), !dbg !824
  %54 = call i32 @__VERIFIER_nondet_int(), !dbg !825
  store i32 %54, i32* %sizeof__CDROM_PLAY_AUDIO_MSF, align 4, !dbg !824
  call void @llvm.dbg.declare(metadata i32* %inputBuffer__StartingM, metadata !826, metadata !104), !dbg !827
  %55 = call i32 @__VERIFIER_nondet_int(), !dbg !828
  store i32 %55, i32* %inputBuffer__StartingM, align 4, !dbg !827
  call void @llvm.dbg.declare(metadata i32* %inputBuffer__EndingM, metadata !829, metadata !104), !dbg !830
  %56 = call i32 @__VERIFIER_nondet_int(), !dbg !831
  store i32 %56, i32* %inputBuffer__EndingM, align 4, !dbg !830
  call void @llvm.dbg.declare(metadata i32* %inputBuffer__StartingS, metadata !832, metadata !104), !dbg !833
  %57 = call i32 @__VERIFIER_nondet_int(), !dbg !834
  store i32 %57, i32* %inputBuffer__StartingS, align 4, !dbg !833
  call void @llvm.dbg.declare(metadata i32* %inputBuffer__EndingS, metadata !835, metadata !104), !dbg !836
  %58 = call i32 @__VERIFIER_nondet_int(), !dbg !837
  store i32 %58, i32* %inputBuffer__EndingS, align 4, !dbg !836
  call void @llvm.dbg.declare(metadata i32* %inputBuffer__StartingF, metadata !838, metadata !104), !dbg !839
  %59 = call i32 @__VERIFIER_nondet_int(), !dbg !840
  store i32 %59, i32* %inputBuffer__StartingF, align 4, !dbg !839
  call void @llvm.dbg.declare(metadata i32* %inputBuffer__EndingF, metadata !841, metadata !104), !dbg !842
  %60 = call i32 @__VERIFIER_nondet_int(), !dbg !843
  store i32 %60, i32* %inputBuffer__EndingF, align 4, !dbg !842
  call void @llvm.dbg.declare(metadata i32* %cdb__PLAY_AUDIO_MSF__OperationCode, metadata !844, metadata !104), !dbg !845
  %61 = call i32 @__VERIFIER_nondet_int(), !dbg !846
  store i32 %61, i32* %cdb__PLAY_AUDIO_MSF__OperationCode, align 4, !dbg !845
  call void @llvm.dbg.declare(metadata i32* %sizeof__CDROM_SEEK_AUDIO_MSF, metadata !847, metadata !104), !dbg !848
  %62 = call i32 @__VERIFIER_nondet_int(), !dbg !849
  store i32 %62, i32* %sizeof__CDROM_SEEK_AUDIO_MSF, align 4, !dbg !848
  call void @llvm.dbg.declare(metadata i32* %currentIrpStack, metadata !850, metadata !104), !dbg !851
  call void @llvm.dbg.declare(metadata i32* %deviceExtension, metadata !852, metadata !104), !dbg !853
  call void @llvm.dbg.declare(metadata i32* %cdaudioDataOut, metadata !854, metadata !104), !dbg !855
  call void @llvm.dbg.declare(metadata i32* %srb, metadata !856, metadata !104), !dbg !857
  %63 = call i32 @__VERIFIER_nondet_int(), !dbg !858
  store i32 %63, i32* %srb, align 4, !dbg !857
  call void @llvm.dbg.declare(metadata i32* %lastSession, metadata !859, metadata !104), !dbg !860
  %64 = call i32 @__VERIFIER_nondet_int(), !dbg !861
  store i32 %64, i32* %lastSession, align 4, !dbg !860
  call void @llvm.dbg.declare(metadata i32* %cdb, metadata !862, metadata !104), !dbg !863
  call void @llvm.dbg.declare(metadata i32* %status, metadata !864, metadata !104), !dbg !865
  call void @llvm.dbg.declare(metadata i32* %i, metadata !866, metadata !104), !dbg !867
  %65 = call i32 @__VERIFIER_nondet_int(), !dbg !868
  store i32 %65, i32* %i, align 4, !dbg !867
  call void @llvm.dbg.declare(metadata i32* %bytesTransfered, metadata !869, metadata !104), !dbg !870
  %66 = call i32 @__VERIFIER_nondet_int(), !dbg !871
  store i32 %66, i32* %bytesTransfered, align 4, !dbg !870
  call void @llvm.dbg.declare(metadata i32* %Toc, metadata !872, metadata !104), !dbg !873
  %67 = call i32 @__VERIFIER_nondet_int(), !dbg !874
  store i32 %67, i32* %Toc, align 4, !dbg !873
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !875, metadata !104), !dbg !876
  call void @llvm.dbg.declare(metadata i32* %tmp___0, metadata !877, metadata !104), !dbg !878
  call void @llvm.dbg.declare(metadata i32* %tmp___1, metadata !879, metadata !104), !dbg !880
  call void @llvm.dbg.declare(metadata i32* %tmp___2, metadata !881, metadata !104), !dbg !882
  call void @llvm.dbg.declare(metadata i32* %tmp___3, metadata !883, metadata !104), !dbg !884
  call void @llvm.dbg.declare(metadata i32* %tmp___4, metadata !885, metadata !104), !dbg !886
  call void @llvm.dbg.declare(metadata i32* %tracksToReturn, metadata !887, metadata !104), !dbg !888
  call void @llvm.dbg.declare(metadata i32* %tracksOnCd, metadata !889, metadata !104), !dbg !890
  call void @llvm.dbg.declare(metadata i32* %tracksInBuffer, metadata !891, metadata !104), !dbg !892
  call void @llvm.dbg.declare(metadata i32* %userPtr, metadata !893, metadata !104), !dbg !894
  call void @llvm.dbg.declare(metadata i32* %SubQPtr, metadata !895, metadata !104), !dbg !896
  %68 = call i32 @__VERIFIER_nondet_int(), !dbg !897
  store i32 %68, i32* %SubQPtr, align 4, !dbg !896
  call void @llvm.dbg.declare(metadata i32* %tmp___5, metadata !898, metadata !104), !dbg !899
  call void @llvm.dbg.declare(metadata i32* %tmp___6, metadata !900, metadata !104), !dbg !901
  call void @llvm.dbg.declare(metadata i32* %inputBuffer, metadata !902, metadata !104), !dbg !903
  call void @llvm.dbg.declare(metadata i32* %inputBuffer___0, metadata !904, metadata !104), !dbg !905
  call void @llvm.dbg.declare(metadata i32* %tmp___7, metadata !906, metadata !104), !dbg !907
  call void @llvm.dbg.declare(metadata i32* %tmp___8, metadata !908, metadata !104), !dbg !909
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp58, metadata !910, metadata !104), !dbg !911
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp59, metadata !912, metadata !104), !dbg !913
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp60, metadata !914, metadata !104), !dbg !915
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp61, metadata !916, metadata !104), !dbg !917
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp62, metadata !918, metadata !104), !dbg !919
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp63, metadata !920, metadata !104), !dbg !921
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp64, metadata !922, metadata !104), !dbg !923
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp65, metadata !924, metadata !104), !dbg !925
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp66, metadata !926, metadata !104), !dbg !927
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp67, metadata !928, metadata !104), !dbg !929
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp68, metadata !930, metadata !104), !dbg !931
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp69, metadata !932, metadata !104), !dbg !933
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp70, metadata !934, metadata !104), !dbg !935
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp71, metadata !936, metadata !104), !dbg !937
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp72, metadata !938, metadata !104), !dbg !939
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp73, metadata !940, metadata !104), !dbg !941
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp74, metadata !942, metadata !104), !dbg !943
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp75, metadata !944, metadata !104), !dbg !945
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp76, metadata !946, metadata !104), !dbg !947
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp77, metadata !948, metadata !104), !dbg !949
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp78, metadata !950, metadata !104), !dbg !951
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp79, metadata !952, metadata !104), !dbg !953
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp80, metadata !954, metadata !104), !dbg !955
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp81, metadata !956, metadata !104), !dbg !957
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp82, metadata !958, metadata !104), !dbg !959
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp83, metadata !960, metadata !104), !dbg !961
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp84, metadata !962, metadata !104), !dbg !963
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp85, metadata !964, metadata !104), !dbg !965
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp86, metadata !966, metadata !104), !dbg !967
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp87, metadata !968, metadata !104), !dbg !969
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp88, metadata !970, metadata !104), !dbg !971
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp89, metadata !972, metadata !104), !dbg !973
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp90, metadata !974, metadata !104), !dbg !975
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp91, metadata !976, metadata !104), !dbg !977
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp92, metadata !978, metadata !104), !dbg !979
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp93, metadata !980, metadata !104), !dbg !981
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp94, metadata !982, metadata !104), !dbg !983
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp95, metadata !984, metadata !104), !dbg !985
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp96, metadata !986, metadata !104), !dbg !987
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp97, metadata !988, metadata !104), !dbg !989
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp98, metadata !990, metadata !104), !dbg !991
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp99, metadata !992, metadata !104), !dbg !993
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp100, metadata !994, metadata !104), !dbg !995
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp101, metadata !996, metadata !104), !dbg !997
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp102, metadata !998, metadata !104), !dbg !999
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp103, metadata !1000, metadata !104), !dbg !1001
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp104, metadata !1002, metadata !104), !dbg !1003
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp105, metadata !1004, metadata !104), !dbg !1005
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp106, metadata !1006, metadata !104), !dbg !1007
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp107, metadata !1008, metadata !104), !dbg !1009
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp108, metadata !1010, metadata !104), !dbg !1011
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp109, metadata !1012, metadata !104), !dbg !1013
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp110, metadata !1014, metadata !104), !dbg !1015
  %69 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1016
  store i32 %69, i32* %currentIrpStack, align 4, !dbg !1018
  %70 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !1019
  store i32 %70, i32* %deviceExtension, align 4, !dbg !1020
  %71 = load i32, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !1021
  store i32 %71, i32* %cdaudioDataOut, align 4, !dbg !1022
  %72 = load i32, i32* %srb__Cdb, align 4, !dbg !1023
  store i32 %72, i32* %cdb, align 4, !dbg !1024
  store i32 56, i32* %__cil_tmp58, align 4, !dbg !1025
  store i32 16384, i32* %__cil_tmp59, align 4, !dbg !1027
  store i32 131072, i32* %__cil_tmp60, align 4, !dbg !1028
  store i32 147456, i32* %__cil_tmp61, align 4, !dbg !1029
  store i32 147512, i32* %__cil_tmp62, align 4, !dbg !1030
  %73 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1031
  %74 = load i32, i32* %__cil_tmp62, align 4, !dbg !1033
  %75 = icmp eq i32 %73, %74, !dbg !1034
  call void @llvm.dbg.declare(metadata i32* %31, metadata !393, metadata !104), !dbg !1035
  call void @llvm.dbg.declare(metadata i32* %32, metadata !402, metadata !104), !dbg !1073
  call void @llvm.dbg.declare(metadata i32* %33, metadata !1074, metadata !104), !dbg !1075
  call void @llvm.dbg.declare(metadata i32* %34, metadata !1076, metadata !104), !dbg !1077
  call void @llvm.dbg.declare(metadata i32* %35, metadata !1078, metadata !104), !dbg !1079
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp4.i, metadata !1080, metadata !104), !dbg !1081
  call void @llvm.dbg.declare(metadata i32* %26, metadata !393, metadata !104), !dbg !1082
  call void @llvm.dbg.declare(metadata i32* %27, metadata !402, metadata !104), !dbg !1089
  call void @llvm.dbg.declare(metadata i32* %28, metadata !1074, metadata !104), !dbg !1090
  call void @llvm.dbg.declare(metadata i32* %29, metadata !1076, metadata !104), !dbg !1091
  call void @llvm.dbg.declare(metadata i32* %30, metadata !1078, metadata !104), !dbg !1092
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp4.i.1, metadata !1080, metadata !104), !dbg !1093
  call void @llvm.dbg.declare(metadata i32* %21, metadata !393, metadata !104), !dbg !1094
  call void @llvm.dbg.declare(metadata i32* %22, metadata !402, metadata !104), !dbg !1100
  call void @llvm.dbg.declare(metadata i32* %23, metadata !1074, metadata !104), !dbg !1101
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1076, metadata !104), !dbg !1102
  call void @llvm.dbg.declare(metadata i32* %25, metadata !1078, metadata !104), !dbg !1103
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp4.i.3, metadata !1080, metadata !104), !dbg !1104
  call void @llvm.dbg.declare(metadata i32* %16, metadata !393, metadata !104), !dbg !1105
  call void @llvm.dbg.declare(metadata i32* %17, metadata !402, metadata !104), !dbg !1114
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1074, metadata !104), !dbg !1115
  call void @llvm.dbg.declare(metadata i32* %19, metadata !1076, metadata !104), !dbg !1116
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1078, metadata !104), !dbg !1117
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp4.i.5, metadata !1080, metadata !104), !dbg !1118
  call void @llvm.dbg.declare(metadata i32* %11, metadata !393, metadata !104), !dbg !1119
  call void @llvm.dbg.declare(metadata i32* %12, metadata !402, metadata !104), !dbg !1125
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1074, metadata !104), !dbg !1126
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1076, metadata !104), !dbg !1127
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1078, metadata !104), !dbg !1128
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp4.i.7, metadata !1080, metadata !104), !dbg !1129
  call void @llvm.dbg.declare(metadata i32* %6, metadata !393, metadata !104), !dbg !1130
  call void @llvm.dbg.declare(metadata i32* %7, metadata !402, metadata !104), !dbg !1136
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1074, metadata !104), !dbg !1137
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1076, metadata !104), !dbg !1138
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1078, metadata !104), !dbg !1139
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp4.i.9, metadata !1080, metadata !104), !dbg !1140
  call void @llvm.dbg.declare(metadata i32* %1, metadata !393, metadata !104), !dbg !1141
  call void @llvm.dbg.declare(metadata i32* %2, metadata !402, metadata !104), !dbg !1145
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1074, metadata !104), !dbg !1146
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1076, metadata !104), !dbg !1147
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1078, metadata !104), !dbg !1148
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp4.i.11, metadata !1080, metadata !104), !dbg !1149
  br i1 %75, label %76, label %77, !dbg !1150

; <label>:76                                      ; preds = %0
  br label %125, !dbg !1151

; <label>:77                                      ; preds = %0
  store i32 16384, i32* %__cil_tmp63, align 4, !dbg !1153
  store i32 131072, i32* %__cil_tmp64, align 4, !dbg !1154
  store i32 147456, i32* %__cil_tmp65, align 4, !dbg !1155
  %78 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1156
  %79 = load i32, i32* %__cil_tmp65, align 4, !dbg !1157
  %80 = icmp eq i32 %78, %79, !dbg !1158
  br i1 %80, label %81, label %82, !dbg !1159

; <label>:81                                      ; preds = %77
  br label %215, !dbg !1160

; <label>:82                                      ; preds = %77
  store i32 44, i32* %__cil_tmp66, align 4, !dbg !1162
  store i32 16384, i32* %__cil_tmp67, align 4, !dbg !1163
  store i32 131072, i32* %__cil_tmp68, align 4, !dbg !1164
  store i32 147456, i32* %__cil_tmp69, align 4, !dbg !1165
  store i32 147500, i32* %__cil_tmp70, align 4, !dbg !1166
  %83 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1167
  %84 = load i32, i32* %__cil_tmp70, align 4, !dbg !1168
  %85 = icmp eq i32 %83, %84, !dbg !1169
  br i1 %85, label %86, label %87, !dbg !1170

; <label>:86                                      ; preds = %82
  br label %335, !dbg !1171

; <label>:87                                      ; preds = %82
  store i32 24, i32* %__cil_tmp71, align 4, !dbg !1173
  store i32 16384, i32* %__cil_tmp72, align 4, !dbg !1174
  store i32 131072, i32* %__cil_tmp73, align 4, !dbg !1175
  store i32 147456, i32* %__cil_tmp74, align 4, !dbg !1176
  store i32 147480, i32* %__cil_tmp75, align 4, !dbg !1177
  %88 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1178
  %89 = load i32, i32* %__cil_tmp75, align 4, !dbg !1179
  %90 = icmp eq i32 %88, %89, !dbg !1180
  br i1 %90, label %91, label %92, !dbg !1181

; <label>:91                                      ; preds = %87
  br label %421, !dbg !1182

; <label>:92                                      ; preds = %87
  store i32 4, i32* %__cil_tmp76, align 4, !dbg !1184
  store i32 16384, i32* %__cil_tmp77, align 4, !dbg !1185
  store i32 131072, i32* %__cil_tmp78, align 4, !dbg !1186
  store i32 147456, i32* %__cil_tmp79, align 4, !dbg !1187
  store i32 147460, i32* %__cil_tmp80, align 4, !dbg !1188
  %93 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1189
  %94 = load i32, i32* %__cil_tmp80, align 4, !dbg !1190
  %95 = icmp eq i32 %93, %94, !dbg !1191
  br i1 %95, label %96, label %97, !dbg !1192

; <label>:96                                      ; preds = %92
  br label %454, !dbg !1193

; <label>:97                                      ; preds = %92
  store i32 2056, i32* %__cil_tmp81, align 4, !dbg !1195
  store i32 16384, i32* %__cil_tmp82, align 4, !dbg !1196
  store i32 131072, i32* %__cil_tmp83, align 4, !dbg !1197
  store i32 147456, i32* %__cil_tmp84, align 4, !dbg !1198
  store i32 149512, i32* %__cil_tmp85, align 4, !dbg !1199
  %98 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1200
  %99 = load i32, i32* %__cil_tmp85, align 4, !dbg !1201
  %100 = icmp eq i32 %98, %99, !dbg !1202
  br i1 %100, label %101, label %102, !dbg !1203

; <label>:101                                     ; preds = %97
  br label %468, !dbg !1204

; <label>:102                                     ; preds = %97
  store i32 52, i32* %__cil_tmp86, align 4, !dbg !1206
  store i32 16384, i32* %__cil_tmp87, align 4, !dbg !1207
  store i32 131072, i32* %__cil_tmp88, align 4, !dbg !1208
  store i32 147456, i32* %__cil_tmp89, align 4, !dbg !1209
  store i32 147508, i32* %__cil_tmp90, align 4, !dbg !1210
  %103 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1211
  %104 = load i32, i32* %__cil_tmp90, align 4, !dbg !1212
  %105 = icmp eq i32 %103, %104, !dbg !1213
  br i1 %105, label %106, label %107, !dbg !1214

; <label>:106                                     ; preds = %102
  br label %472, !dbg !1215

; <label>:107                                     ; preds = %102
  store i32 20, i32* %__cil_tmp91, align 4, !dbg !1217
  store i32 16384, i32* %__cil_tmp92, align 4, !dbg !1218
  store i32 131072, i32* %__cil_tmp93, align 4, !dbg !1219
  store i32 147456, i32* %__cil_tmp94, align 4, !dbg !1220
  store i32 147476, i32* %__cil_tmp95, align 4, !dbg !1221
  %108 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1222
  %109 = load i32, i32* %__cil_tmp95, align 4, !dbg !1223
  %110 = icmp eq i32 %108, %109, !dbg !1224
  br i1 %110, label %111, label %112, !dbg !1225

; <label>:111                                     ; preds = %107
  br label %473, !dbg !1226

; <label>:112                                     ; preds = %107
  store i32 40, i32* %__cil_tmp96, align 4, !dbg !1228
  store i32 16384, i32* %__cil_tmp97, align 4, !dbg !1229
  store i32 131072, i32* %__cil_tmp98, align 4, !dbg !1230
  store i32 147456, i32* %__cil_tmp99, align 4, !dbg !1231
  store i32 147496, i32* %__cil_tmp100, align 4, !dbg !1232
  %113 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1233
  %114 = load i32, i32* %__cil_tmp100, align 4, !dbg !1234
  %115 = icmp eq i32 %113, %114, !dbg !1235
  br i1 %115, label %116, label %117, !dbg !1236

; <label>:116                                     ; preds = %112
  br label %474, !dbg !1237

; <label>:117                                     ; preds = %112
  store i32 2048, i32* %__cil_tmp101, align 4, !dbg !1239
  store i32 16384, i32* %__cil_tmp102, align 4, !dbg !1240
  store i32 131072, i32* %__cil_tmp103, align 4, !dbg !1241
  store i32 147456, i32* %__cil_tmp104, align 4, !dbg !1242
  store i32 149504, i32* %__cil_tmp105, align 4, !dbg !1243
  %118 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1244
  %119 = load i32, i32* %__cil_tmp105, align 4, !dbg !1245
  %120 = icmp eq i32 %118, %119, !dbg !1246
  br i1 %120, label %121, label %122, !dbg !1247

; <label>:121                                     ; preds = %117
  br label %475, !dbg !1248

; <label>:122                                     ; preds = %117
  br label %478, !dbg !1250
                                                  ; No predecessors!
  br i1 false, label %124, label %483, !dbg !1251

; <label>:124                                     ; preds = %123
  br label %125, !dbg !1252

; <label>:125                                     ; preds = %124, %76
  %126 = load i32, i32* %37, align 4, !dbg !1253
  %127 = call i32 @CdAudioIsPlayActive(i32 %126), !dbg !1255
  store i32 %127, i32* %tmp, align 4, !dbg !1256
  %128 = load i32, i32* %tmp, align 4, !dbg !1257
  %129 = icmp ne i32 %128, 0, !dbg !1257
  br i1 %129, label %130, label %131, !dbg !1259

; <label>:130                                     ; preds = %125
  store i32 -2147483631, i32* %status, align 4, !dbg !1260
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1262
  br label %484, !dbg !1263

; <label>:131                                     ; preds = %125
  %132 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !1264
  %133 = icmp ne i32 %132, 0, !dbg !1264
  br i1 %133, label %134, label %135, !dbg !1266

; <label>:134                                     ; preds = %131
  store i32 -1073741789, i32* %status, align 4, !dbg !1267
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1269
  br label %484, !dbg !1270

; <label>:135                                     ; preds = %131
  %136 = load i32, i32* %lastSession, align 4, !dbg !1271
  %137 = icmp eq i32 %136, 0, !dbg !1272
  br i1 %137, label %138, label %169, !dbg !1273

; <label>:138                                     ; preds = %135
  store i32 -1073741670, i32* %status, align 4, !dbg !1274
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1275
  %139 = load i32, i32* %status, align 4, !dbg !1276
  %140 = load i32, i32* %38, align 4, !dbg !1277
  %141 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1278
  %142 = bitcast i32* %33 to i8*, !dbg !1279
  call void @llvm.lifetime.start(i64 4, i8* %142), !dbg !1279
  %143 = bitcast i32* %34 to i8*, !dbg !1279
  call void @llvm.lifetime.start(i64 4, i8* %143), !dbg !1279
  %144 = bitcast i32* %35 to i8*, !dbg !1279
  call void @llvm.lifetime.start(i64 4, i8* %144), !dbg !1279
  %145 = bitcast i64* %__cil_tmp4.i to i8*, !dbg !1279
  call void @llvm.lifetime.start(i64 8, i8* %145), !dbg !1279
  store i32 %139, i32* %33, align 4, !dbg !1279
  store i32 %140, i32* %34, align 4, !dbg !1279
  store i32 %141, i32* %35, align 4, !dbg !1279
  %146 = load i32, i32* %33, align 4, !dbg !1280
  %147 = sext i32 %146 to i64, !dbg !1282
  store i64 %147, i64* %__cil_tmp4.i, align 8, !dbg !1283
  %148 = load i64, i64* %__cil_tmp4.i, align 8, !dbg !1284
  %149 = icmp eq i64 %148, -2147483626, !dbg !1286
  br i1 %149, label %150, label %151, !dbg !1287

; <label>:150                                     ; preds = %138
  br label %151, !dbg !1288

; <label>:151                                     ; preds = %150, %138
  %152 = load i32, i32* %33, align 4, !dbg !1290
  store i32 %152, i32* @myStatus, align 4, !dbg !1291
  %153 = load i32, i32* %34, align 4, !dbg !1292
  %154 = bitcast i32* %31 to i8*, !dbg !1293
  call void @llvm.lifetime.start(i64 4, i8* %154) #4, !dbg !1293
  %155 = bitcast i32* %32 to i8*, !dbg !1293
  call void @llvm.lifetime.start(i64 4, i8* %155) #4, !dbg !1293
  store i32 %153, i32* %31, align 4, !dbg !1293
  store i32 0, i32* %32, align 4, !dbg !1293
  %156 = load i32, i32* @s, align 4, !dbg !1294
  %157 = load i32, i32* @NP, align 4, !dbg !1295
  %158 = icmp eq i32 %156, %157, !dbg !1296
  br i1 %158, label %AG_SetStatusAndReturn.exit, label %159, !dbg !1297

; <label>:159                                     ; preds = %151
  call void (...) @__VERIFIER_error() #6, !dbg !1298
  unreachable, !dbg !1298

AG_SetStatusAndReturn.exit:                       ; preds = %151
  %160 = load i32, i32* @DC, align 4, !dbg !1300
  store i32 %160, i32* @s, align 4, !dbg !1301
  %161 = bitcast i32* %31 to i8*, !dbg !1302
  call void @llvm.lifetime.end(i64 4, i8* %161) #4, !dbg !1302
  %162 = bitcast i32* %32 to i8*, !dbg !1302
  call void @llvm.lifetime.end(i64 4, i8* %162) #4, !dbg !1302
  %163 = load i32, i32* %33, align 4, !dbg !1303
  %164 = bitcast i32* %33 to i8*, !dbg !1304
  call void @llvm.lifetime.end(i64 4, i8* %164), !dbg !1304
  %165 = bitcast i32* %34 to i8*, !dbg !1304
  call void @llvm.lifetime.end(i64 4, i8* %165), !dbg !1304
  %166 = bitcast i32* %35 to i8*, !dbg !1304
  call void @llvm.lifetime.end(i64 4, i8* %166), !dbg !1304
  %167 = bitcast i64* %__cil_tmp4.i to i8*, !dbg !1304
  call void @llvm.lifetime.end(i64 8, i8* %167), !dbg !1304
  store i32 %163, i32* %tmp___0, align 4, !dbg !1305
  %168 = load i32, i32* %tmp___0, align 4, !dbg !1306
  store i32 %168, i32* %36, !dbg !1307
  br label %526, !dbg !1307

; <label>:169                                     ; preds = %135
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !1308
  store i32 38, i32* %cdb__CDB10__OperationCode, align 4, !dbg !1310
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !1311
  %170 = load i32, i32* %deviceExtension, align 4, !dbg !1312
  %171 = load i32, i32* %srb, align 4, !dbg !1313
  %172 = load i32, i32* %lastSession, align 4, !dbg !1314
  %173 = load i32, i32* %sizeof__READ_CAPACITY_DATA, align 4, !dbg !1315
  %174 = call i32 @SendSrbSynchronous(i32 %170, i32 %171, i32 %172, i32 %173), !dbg !1316
  store i32 %174, i32* %status, align 4, !dbg !1317
  %175 = load i32, i32* %status, align 4, !dbg !1318
  %176 = icmp slt i32 %175, 0, !dbg !1319
  br i1 %176, label %177, label %208, !dbg !1320

; <label>:177                                     ; preds = %169
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1321
  %178 = load i32, i32* %status, align 4, !dbg !1322
  %179 = load i32, i32* %38, align 4, !dbg !1323
  %180 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1324
  %181 = bitcast i32* %28 to i8*, !dbg !1325
  call void @llvm.lifetime.start(i64 4, i8* %181), !dbg !1325
  %182 = bitcast i32* %29 to i8*, !dbg !1325
  call void @llvm.lifetime.start(i64 4, i8* %182), !dbg !1325
  %183 = bitcast i32* %30 to i8*, !dbg !1325
  call void @llvm.lifetime.start(i64 4, i8* %183), !dbg !1325
  %184 = bitcast i64* %__cil_tmp4.i.1 to i8*, !dbg !1325
  call void @llvm.lifetime.start(i64 8, i8* %184), !dbg !1325
  store i32 %178, i32* %28, align 4, !dbg !1325
  store i32 %179, i32* %29, align 4, !dbg !1325
  store i32 %180, i32* %30, align 4, !dbg !1325
  %185 = load i32, i32* %28, align 4, !dbg !1326
  %186 = sext i32 %185 to i64, !dbg !1327
  store i64 %186, i64* %__cil_tmp4.i.1, align 8, !dbg !1328
  %187 = load i64, i64* %__cil_tmp4.i.1, align 8, !dbg !1329
  %188 = icmp eq i64 %187, -2147483626, !dbg !1330
  br i1 %188, label %189, label %190, !dbg !1331

; <label>:189                                     ; preds = %177
  br label %190, !dbg !1332

; <label>:190                                     ; preds = %189, %177
  %191 = load i32, i32* %28, align 4, !dbg !1333
  store i32 %191, i32* @myStatus, align 4, !dbg !1334
  %192 = load i32, i32* %29, align 4, !dbg !1335
  %193 = bitcast i32* %26 to i8*, !dbg !1336
  call void @llvm.lifetime.start(i64 4, i8* %193) #4, !dbg !1336
  %194 = bitcast i32* %27 to i8*, !dbg !1336
  call void @llvm.lifetime.start(i64 4, i8* %194) #4, !dbg !1336
  store i32 %192, i32* %26, align 4, !dbg !1336
  store i32 0, i32* %27, align 4, !dbg !1336
  %195 = load i32, i32* @s, align 4, !dbg !1337
  %196 = load i32, i32* @NP, align 4, !dbg !1338
  %197 = icmp eq i32 %195, %196, !dbg !1339
  br i1 %197, label %AG_SetStatusAndReturn.exit2, label %198, !dbg !1340

; <label>:198                                     ; preds = %190
  call void (...) @__VERIFIER_error() #6, !dbg !1341
  unreachable, !dbg !1341

AG_SetStatusAndReturn.exit2:                      ; preds = %190
  %199 = load i32, i32* @DC, align 4, !dbg !1343
  store i32 %199, i32* @s, align 4, !dbg !1344
  %200 = bitcast i32* %26 to i8*, !dbg !1345
  call void @llvm.lifetime.end(i64 4, i8* %200) #4, !dbg !1345
  %201 = bitcast i32* %27 to i8*, !dbg !1345
  call void @llvm.lifetime.end(i64 4, i8* %201) #4, !dbg !1345
  %202 = load i32, i32* %28, align 4, !dbg !1346
  %203 = bitcast i32* %28 to i8*, !dbg !1347
  call void @llvm.lifetime.end(i64 4, i8* %203), !dbg !1347
  %204 = bitcast i32* %29 to i8*, !dbg !1347
  call void @llvm.lifetime.end(i64 4, i8* %204), !dbg !1347
  %205 = bitcast i32* %30 to i8*, !dbg !1347
  call void @llvm.lifetime.end(i64 4, i8* %205), !dbg !1347
  %206 = bitcast i64* %__cil_tmp4.i.1 to i8*, !dbg !1347
  call void @llvm.lifetime.end(i64 8, i8* %206), !dbg !1347
  store i32 %202, i32* %tmp___1, align 4, !dbg !1348
  %207 = load i32, i32* %tmp___1, align 4, !dbg !1349
  store i32 %207, i32* %36, !dbg !1350
  br label %526, !dbg !1350

; <label>:208                                     ; preds = %169
  store i32 0, i32* %status, align 4, !dbg !1351
  br label %209

; <label>:209                                     ; preds = %208
  %210 = load i32, i32* %bytesTransfered, align 4, !dbg !1353
  store i32 %210, i32* %Irp__IoStatus__Information, align 4, !dbg !1354
  %211 = load i32, i32* %lastSession__LogicalBlockAddress, align 4, !dbg !1355
  %212 = icmp eq i32 %211, 0, !dbg !1357
  br i1 %212, label %213, label %214, !dbg !1358

; <label>:213                                     ; preds = %209
  br label %484, !dbg !1359

; <label>:214                                     ; preds = %209
  store i32 1, i32* %cdaudioDataOut__FirstTrack, align 4, !dbg !1361
  store i32 2, i32* %cdaudioDataOut__LastTrack, align 4, !dbg !1362
  br label %484, !dbg !1363

; <label>:215                                     ; preds = %81
  %216 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !1364
  %217 = icmp ne i32 %216, 0, !dbg !1364
  br i1 %217, label %218, label %219, !dbg !1366

; <label>:218                                     ; preds = %215
  store i32 -1073741789, i32* %status, align 4, !dbg !1367
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1369
  br label %484, !dbg !1370

; <label>:219                                     ; preds = %215
  %220 = load i32, i32* %37, align 4, !dbg !1371
  %221 = call i32 @CdAudioIsPlayActive(i32 %220), !dbg !1373
  store i32 %221, i32* %tmp___2, align 4, !dbg !1374
  %222 = load i32, i32* %tmp___2, align 4, !dbg !1375
  %223 = icmp ne i32 %222, 0, !dbg !1375
  br i1 %223, label %224, label %225, !dbg !1377

; <label>:224                                     ; preds = %219
  store i32 -2147483631, i32* %status, align 4, !dbg !1378
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1380
  br label %484, !dbg !1381

; <label>:225                                     ; preds = %219
  %226 = load i32, i32* %Toc, align 4, !dbg !1382
  %227 = icmp eq i32 %226, 0, !dbg !1383
  br i1 %227, label %228, label %259, !dbg !1384

; <label>:228                                     ; preds = %225
  store i32 -1073741670, i32* %status, align 4, !dbg !1385
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1386
  %229 = load i32, i32* %status, align 4, !dbg !1387
  %230 = load i32, i32* %38, align 4, !dbg !1388
  %231 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1389
  %232 = bitcast i32* %23 to i8*, !dbg !1390
  call void @llvm.lifetime.start(i64 4, i8* %232), !dbg !1390
  %233 = bitcast i32* %24 to i8*, !dbg !1390
  call void @llvm.lifetime.start(i64 4, i8* %233), !dbg !1390
  %234 = bitcast i32* %25 to i8*, !dbg !1390
  call void @llvm.lifetime.start(i64 4, i8* %234), !dbg !1390
  %235 = bitcast i64* %__cil_tmp4.i.3 to i8*, !dbg !1390
  call void @llvm.lifetime.start(i64 8, i8* %235), !dbg !1390
  store i32 %229, i32* %23, align 4, !dbg !1390
  store i32 %230, i32* %24, align 4, !dbg !1390
  store i32 %231, i32* %25, align 4, !dbg !1390
  %236 = load i32, i32* %23, align 4, !dbg !1391
  %237 = sext i32 %236 to i64, !dbg !1392
  store i64 %237, i64* %__cil_tmp4.i.3, align 8, !dbg !1393
  %238 = load i64, i64* %__cil_tmp4.i.3, align 8, !dbg !1394
  %239 = icmp eq i64 %238, -2147483626, !dbg !1395
  br i1 %239, label %240, label %241, !dbg !1396

; <label>:240                                     ; preds = %228
  br label %241, !dbg !1397

; <label>:241                                     ; preds = %240, %228
  %242 = load i32, i32* %23, align 4, !dbg !1398
  store i32 %242, i32* @myStatus, align 4, !dbg !1399
  %243 = load i32, i32* %24, align 4, !dbg !1400
  %244 = bitcast i32* %21 to i8*, !dbg !1401
  call void @llvm.lifetime.start(i64 4, i8* %244) #4, !dbg !1401
  %245 = bitcast i32* %22 to i8*, !dbg !1401
  call void @llvm.lifetime.start(i64 4, i8* %245) #4, !dbg !1401
  store i32 %243, i32* %21, align 4, !dbg !1401
  store i32 0, i32* %22, align 4, !dbg !1401
  %246 = load i32, i32* @s, align 4, !dbg !1402
  %247 = load i32, i32* @NP, align 4, !dbg !1403
  %248 = icmp eq i32 %246, %247, !dbg !1404
  br i1 %248, label %AG_SetStatusAndReturn.exit4, label %249, !dbg !1405

; <label>:249                                     ; preds = %241
  call void (...) @__VERIFIER_error() #6, !dbg !1406
  unreachable, !dbg !1406

AG_SetStatusAndReturn.exit4:                      ; preds = %241
  %250 = load i32, i32* @DC, align 4, !dbg !1408
  store i32 %250, i32* @s, align 4, !dbg !1409
  %251 = bitcast i32* %21 to i8*, !dbg !1410
  call void @llvm.lifetime.end(i64 4, i8* %251) #4, !dbg !1410
  %252 = bitcast i32* %22 to i8*, !dbg !1410
  call void @llvm.lifetime.end(i64 4, i8* %252) #4, !dbg !1410
  %253 = load i32, i32* %23, align 4, !dbg !1411
  %254 = bitcast i32* %23 to i8*, !dbg !1412
  call void @llvm.lifetime.end(i64 4, i8* %254), !dbg !1412
  %255 = bitcast i32* %24 to i8*, !dbg !1412
  call void @llvm.lifetime.end(i64 4, i8* %255), !dbg !1412
  %256 = bitcast i32* %25 to i8*, !dbg !1412
  call void @llvm.lifetime.end(i64 4, i8* %256), !dbg !1412
  %257 = bitcast i64* %__cil_tmp4.i.3 to i8*, !dbg !1412
  call void @llvm.lifetime.end(i64 8, i8* %257), !dbg !1412
  store i32 %253, i32* %tmp___3, align 4, !dbg !1413
  %258 = load i32, i32* %tmp___3, align 4, !dbg !1414
  store i32 %258, i32* %36, !dbg !1415
  br label %526, !dbg !1415

; <label>:259                                     ; preds = %225
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !1416
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !1418
  %260 = load i32, i32* %deviceExtension, align 4, !dbg !1419
  %261 = load i32, i32* %srb, align 4, !dbg !1420
  %262 = load i32, i32* %Toc, align 4, !dbg !1421
  %263 = load i32, i32* %sizeof__CDROM_TOC, align 4, !dbg !1422
  %264 = call i32 @SendSrbSynchronous(i32 %260, i32 %261, i32 %262, i32 %263), !dbg !1423
  store i32 %264, i32* %status, align 4, !dbg !1424
  %265 = load i32, i32* %status, align 4, !dbg !1425
  %266 = icmp sge i32 %265, 0, !dbg !1426
  br i1 %266, label %267, label %275, !dbg !1427

; <label>:267                                     ; preds = %259
  %268 = load i32, i32* %status, align 4, !dbg !1428
  %269 = sext i32 %268 to i64, !dbg !1431
  store i64 %269, i64* %__cil_tmp107, align 8, !dbg !1432
  %270 = load i64, i64* %__cil_tmp107, align 8, !dbg !1433
  %271 = icmp ne i64 %270, -1073741764, !dbg !1435
  br i1 %271, label %272, label %273, !dbg !1436

; <label>:272                                     ; preds = %267
  store i32 0, i32* %status, align 4, !dbg !1437
  br label %274, !dbg !1439

; <label>:273                                     ; preds = %267
  br label %276, !dbg !1440

; <label>:274                                     ; preds = %272
  br label %313, !dbg !1442

; <label>:275                                     ; preds = %259
  br label %276, !dbg !1443

; <label>:276                                     ; preds = %275, %273
  %277 = load i32, i32* %status, align 4, !dbg !1444
  %278 = sext i32 %277 to i64, !dbg !1445
  store i64 %278, i64* %__cil_tmp108, align 8, !dbg !1446
  %279 = load i64, i64* %__cil_tmp108, align 8, !dbg !1447
  %280 = icmp ne i64 %279, -1073741764, !dbg !1448
  br i1 %280, label %281, label %312, !dbg !1449

; <label>:281                                     ; preds = %276
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1450
  %282 = load i32, i32* %status, align 4, !dbg !1451
  %283 = load i32, i32* %38, align 4, !dbg !1452
  %284 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1453
  %285 = bitcast i32* %18 to i8*, !dbg !1454
  call void @llvm.lifetime.start(i64 4, i8* %285), !dbg !1454
  %286 = bitcast i32* %19 to i8*, !dbg !1454
  call void @llvm.lifetime.start(i64 4, i8* %286), !dbg !1454
  %287 = bitcast i32* %20 to i8*, !dbg !1454
  call void @llvm.lifetime.start(i64 4, i8* %287), !dbg !1454
  %288 = bitcast i64* %__cil_tmp4.i.5 to i8*, !dbg !1454
  call void @llvm.lifetime.start(i64 8, i8* %288), !dbg !1454
  store i32 %282, i32* %18, align 4, !dbg !1454
  store i32 %283, i32* %19, align 4, !dbg !1454
  store i32 %284, i32* %20, align 4, !dbg !1454
  %289 = load i32, i32* %18, align 4, !dbg !1455
  %290 = sext i32 %289 to i64, !dbg !1456
  store i64 %290, i64* %__cil_tmp4.i.5, align 8, !dbg !1457
  %291 = load i64, i64* %__cil_tmp4.i.5, align 8, !dbg !1458
  %292 = icmp eq i64 %291, -2147483626, !dbg !1459
  br i1 %292, label %293, label %294, !dbg !1460

; <label>:293                                     ; preds = %281
  br label %294, !dbg !1461

; <label>:294                                     ; preds = %293, %281
  %295 = load i32, i32* %18, align 4, !dbg !1462
  store i32 %295, i32* @myStatus, align 4, !dbg !1463
  %296 = load i32, i32* %19, align 4, !dbg !1464
  %297 = bitcast i32* %16 to i8*, !dbg !1465
  call void @llvm.lifetime.start(i64 4, i8* %297) #4, !dbg !1465
  %298 = bitcast i32* %17 to i8*, !dbg !1465
  call void @llvm.lifetime.start(i64 4, i8* %298) #4, !dbg !1465
  store i32 %296, i32* %16, align 4, !dbg !1465
  store i32 0, i32* %17, align 4, !dbg !1465
  %299 = load i32, i32* @s, align 4, !dbg !1466
  %300 = load i32, i32* @NP, align 4, !dbg !1467
  %301 = icmp eq i32 %299, %300, !dbg !1468
  br i1 %301, label %AG_SetStatusAndReturn.exit6, label %302, !dbg !1469

; <label>:302                                     ; preds = %294
  call void (...) @__VERIFIER_error() #6, !dbg !1470
  unreachable, !dbg !1470

AG_SetStatusAndReturn.exit6:                      ; preds = %294
  %303 = load i32, i32* @DC, align 4, !dbg !1472
  store i32 %303, i32* @s, align 4, !dbg !1473
  %304 = bitcast i32* %16 to i8*, !dbg !1474
  call void @llvm.lifetime.end(i64 4, i8* %304) #4, !dbg !1474
  %305 = bitcast i32* %17 to i8*, !dbg !1474
  call void @llvm.lifetime.end(i64 4, i8* %305) #4, !dbg !1474
  %306 = load i32, i32* %18, align 4, !dbg !1475
  %307 = bitcast i32* %18 to i8*, !dbg !1476
  call void @llvm.lifetime.end(i64 4, i8* %307), !dbg !1476
  %308 = bitcast i32* %19 to i8*, !dbg !1476
  call void @llvm.lifetime.end(i64 4, i8* %308), !dbg !1476
  %309 = bitcast i32* %20 to i8*, !dbg !1476
  call void @llvm.lifetime.end(i64 4, i8* %309), !dbg !1476
  %310 = bitcast i64* %__cil_tmp4.i.5 to i8*, !dbg !1476
  call void @llvm.lifetime.end(i64 8, i8* %310), !dbg !1476
  store i32 %306, i32* %tmp___4, align 4, !dbg !1477
  %311 = load i32, i32* %tmp___4, align 4, !dbg !1478
  store i32 %311, i32* %36, !dbg !1479
  br label %526, !dbg !1479

; <label>:312                                     ; preds = %276
  br label %313

; <label>:313                                     ; preds = %312, %274
  %314 = load i32, i32* %cdaudioDataOut__LastTrack, align 4, !dbg !1480
  %315 = load i32, i32* %cdaudioDataOut__FirstTrack, align 4, !dbg !1481
  %316 = sub nsw i32 %314, %315, !dbg !1482
  store i32 %316, i32* %__cil_tmp109, align 4, !dbg !1483
  %317 = load i32, i32* %__cil_tmp109, align 4, !dbg !1484
  %318 = add nsw i32 %317, 1, !dbg !1485
  store i32 %318, i32* %tracksOnCd, align 4, !dbg !1486
  %319 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !1487
  store i32 %319, i32* %tracksInBuffer, align 4, !dbg !1488
  %320 = load i32, i32* %tracksInBuffer, align 4, !dbg !1489
  %321 = load i32, i32* %tracksOnCd, align 4, !dbg !1491
  %322 = icmp slt i32 %320, %321, !dbg !1492
  br i1 %322, label %323, label %325, !dbg !1493

; <label>:323                                     ; preds = %313
  %324 = load i32, i32* %tracksInBuffer, align 4, !dbg !1494
  store i32 %324, i32* %tracksToReturn, align 4, !dbg !1496
  br label %327, !dbg !1497

; <label>:325                                     ; preds = %313
  %326 = load i32, i32* %tracksOnCd, align 4, !dbg !1498
  store i32 %326, i32* %tracksToReturn, align 4, !dbg !1500
  br label %327

; <label>:327                                     ; preds = %325, %323
  %328 = load i32, i32* %tracksInBuffer, align 4, !dbg !1501
  %329 = load i32, i32* %tracksOnCd, align 4, !dbg !1503
  %330 = icmp sgt i32 %328, %329, !dbg !1504
  br i1 %330, label %331, label %334, !dbg !1505

; <label>:331                                     ; preds = %327
  %332 = load i32, i32* %i, align 4, !dbg !1506
  %333 = add nsw i32 %332, 1, !dbg !1506
  store i32 %333, i32* %i, align 4, !dbg !1506
  br label %334, !dbg !1508

; <label>:334                                     ; preds = %331, %327
  br label %484, !dbg !1509

; <label>:335                                     ; preds = %86
  %336 = load i32, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !1510
  store i32 %336, i32* %userPtr, align 4, !dbg !1511
  %337 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !1512
  %338 = load i32, i32* %sizeof__SUB_Q_CURRENT_POSITION, align 4, !dbg !1514
  %339 = icmp slt i32 %337, %338, !dbg !1515
  br i1 %339, label %340, label %341, !dbg !1516

; <label>:340                                     ; preds = %335
  store i32 -1073741789, i32* %status, align 4, !dbg !1517
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1519
  br label %484, !dbg !1520

; <label>:341                                     ; preds = %335
  %342 = load i32, i32* %SubQPtr, align 4, !dbg !1521
  %343 = icmp eq i32 %342, 0, !dbg !1522
  br i1 %343, label %344, label %375, !dbg !1523

; <label>:344                                     ; preds = %341
  store i32 -1073741670, i32* %status, align 4, !dbg !1524
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1525
  %345 = load i32, i32* %status, align 4, !dbg !1526
  %346 = load i32, i32* %38, align 4, !dbg !1527
  %347 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1528
  %348 = bitcast i32* %13 to i8*, !dbg !1529
  call void @llvm.lifetime.start(i64 4, i8* %348), !dbg !1529
  %349 = bitcast i32* %14 to i8*, !dbg !1529
  call void @llvm.lifetime.start(i64 4, i8* %349), !dbg !1529
  %350 = bitcast i32* %15 to i8*, !dbg !1529
  call void @llvm.lifetime.start(i64 4, i8* %350), !dbg !1529
  %351 = bitcast i64* %__cil_tmp4.i.7 to i8*, !dbg !1529
  call void @llvm.lifetime.start(i64 8, i8* %351), !dbg !1529
  store i32 %345, i32* %13, align 4, !dbg !1529
  store i32 %346, i32* %14, align 4, !dbg !1529
  store i32 %347, i32* %15, align 4, !dbg !1529
  %352 = load i32, i32* %13, align 4, !dbg !1530
  %353 = sext i32 %352 to i64, !dbg !1531
  store i64 %353, i64* %__cil_tmp4.i.7, align 8, !dbg !1532
  %354 = load i64, i64* %__cil_tmp4.i.7, align 8, !dbg !1533
  %355 = icmp eq i64 %354, -2147483626, !dbg !1534
  br i1 %355, label %356, label %357, !dbg !1535

; <label>:356                                     ; preds = %344
  br label %357, !dbg !1536

; <label>:357                                     ; preds = %356, %344
  %358 = load i32, i32* %13, align 4, !dbg !1537
  store i32 %358, i32* @myStatus, align 4, !dbg !1538
  %359 = load i32, i32* %14, align 4, !dbg !1539
  %360 = bitcast i32* %11 to i8*, !dbg !1540
  call void @llvm.lifetime.start(i64 4, i8* %360) #4, !dbg !1540
  %361 = bitcast i32* %12 to i8*, !dbg !1540
  call void @llvm.lifetime.start(i64 4, i8* %361) #4, !dbg !1540
  store i32 %359, i32* %11, align 4, !dbg !1540
  store i32 0, i32* %12, align 4, !dbg !1540
  %362 = load i32, i32* @s, align 4, !dbg !1541
  %363 = load i32, i32* @NP, align 4, !dbg !1542
  %364 = icmp eq i32 %362, %363, !dbg !1543
  br i1 %364, label %AG_SetStatusAndReturn.exit8, label %365, !dbg !1544

; <label>:365                                     ; preds = %357
  call void (...) @__VERIFIER_error() #6, !dbg !1545
  unreachable, !dbg !1545

AG_SetStatusAndReturn.exit8:                      ; preds = %357
  %366 = load i32, i32* @DC, align 4, !dbg !1547
  store i32 %366, i32* @s, align 4, !dbg !1548
  %367 = bitcast i32* %11 to i8*, !dbg !1549
  call void @llvm.lifetime.end(i64 4, i8* %367) #4, !dbg !1549
  %368 = bitcast i32* %12 to i8*, !dbg !1549
  call void @llvm.lifetime.end(i64 4, i8* %368) #4, !dbg !1549
  %369 = load i32, i32* %13, align 4, !dbg !1550
  %370 = bitcast i32* %13 to i8*, !dbg !1551
  call void @llvm.lifetime.end(i64 4, i8* %370), !dbg !1551
  %371 = bitcast i32* %14 to i8*, !dbg !1551
  call void @llvm.lifetime.end(i64 4, i8* %371), !dbg !1551
  %372 = bitcast i32* %15 to i8*, !dbg !1551
  call void @llvm.lifetime.end(i64 4, i8* %372), !dbg !1551
  %373 = bitcast i64* %__cil_tmp4.i.7 to i8*, !dbg !1551
  call void @llvm.lifetime.end(i64 8, i8* %373), !dbg !1551
  store i32 %369, i32* %tmp___5, align 4, !dbg !1552
  %374 = load i32, i32* %tmp___5, align 4, !dbg !1553
  store i32 %374, i32* %36, !dbg !1554
  br label %526, !dbg !1554

; <label>:375                                     ; preds = %341
  %376 = load i32, i32* %userPtr__Format, align 4, !dbg !1555
  %377 = icmp ne i32 %376, 1, !dbg !1556
  br i1 %377, label %378, label %409, !dbg !1557

; <label>:378                                     ; preds = %375
  store i32 -1073741823, i32* %status, align 4, !dbg !1558
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1559
  %379 = load i32, i32* %status, align 4, !dbg !1560
  %380 = load i32, i32* %38, align 4, !dbg !1561
  %381 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1562
  %382 = bitcast i32* %8 to i8*, !dbg !1563
  call void @llvm.lifetime.start(i64 4, i8* %382), !dbg !1563
  %383 = bitcast i32* %9 to i8*, !dbg !1563
  call void @llvm.lifetime.start(i64 4, i8* %383), !dbg !1563
  %384 = bitcast i32* %10 to i8*, !dbg !1563
  call void @llvm.lifetime.start(i64 4, i8* %384), !dbg !1563
  %385 = bitcast i64* %__cil_tmp4.i.9 to i8*, !dbg !1563
  call void @llvm.lifetime.start(i64 8, i8* %385), !dbg !1563
  store i32 %379, i32* %8, align 4, !dbg !1563
  store i32 %380, i32* %9, align 4, !dbg !1563
  store i32 %381, i32* %10, align 4, !dbg !1563
  %386 = load i32, i32* %8, align 4, !dbg !1564
  %387 = sext i32 %386 to i64, !dbg !1565
  store i64 %387, i64* %__cil_tmp4.i.9, align 8, !dbg !1566
  %388 = load i64, i64* %__cil_tmp4.i.9, align 8, !dbg !1567
  %389 = icmp eq i64 %388, -2147483626, !dbg !1568
  br i1 %389, label %390, label %391, !dbg !1569

; <label>:390                                     ; preds = %378
  br label %391, !dbg !1570

; <label>:391                                     ; preds = %390, %378
  %392 = load i32, i32* %8, align 4, !dbg !1571
  store i32 %392, i32* @myStatus, align 4, !dbg !1572
  %393 = load i32, i32* %9, align 4, !dbg !1573
  %394 = bitcast i32* %6 to i8*, !dbg !1574
  call void @llvm.lifetime.start(i64 4, i8* %394) #4, !dbg !1574
  %395 = bitcast i32* %7 to i8*, !dbg !1574
  call void @llvm.lifetime.start(i64 4, i8* %395) #4, !dbg !1574
  store i32 %393, i32* %6, align 4, !dbg !1574
  store i32 0, i32* %7, align 4, !dbg !1574
  %396 = load i32, i32* @s, align 4, !dbg !1575
  %397 = load i32, i32* @NP, align 4, !dbg !1576
  %398 = icmp eq i32 %396, %397, !dbg !1577
  br i1 %398, label %AG_SetStatusAndReturn.exit10, label %399, !dbg !1578

; <label>:399                                     ; preds = %391
  call void (...) @__VERIFIER_error() #6, !dbg !1579
  unreachable, !dbg !1579

AG_SetStatusAndReturn.exit10:                     ; preds = %391
  %400 = load i32, i32* @DC, align 4, !dbg !1581
  store i32 %400, i32* @s, align 4, !dbg !1582
  %401 = bitcast i32* %6 to i8*, !dbg !1583
  call void @llvm.lifetime.end(i64 4, i8* %401) #4, !dbg !1583
  %402 = bitcast i32* %7 to i8*, !dbg !1583
  call void @llvm.lifetime.end(i64 4, i8* %402) #4, !dbg !1583
  %403 = load i32, i32* %8, align 4, !dbg !1584
  %404 = bitcast i32* %8 to i8*, !dbg !1585
  call void @llvm.lifetime.end(i64 4, i8* %404), !dbg !1585
  %405 = bitcast i32* %9 to i8*, !dbg !1585
  call void @llvm.lifetime.end(i64 4, i8* %405), !dbg !1585
  %406 = bitcast i32* %10 to i8*, !dbg !1585
  call void @llvm.lifetime.end(i64 4, i8* %406), !dbg !1585
  %407 = bitcast i64* %__cil_tmp4.i.9 to i8*, !dbg !1585
  call void @llvm.lifetime.end(i64 8, i8* %407), !dbg !1585
  store i32 %403, i32* %tmp___6, align 4, !dbg !1586
  %408 = load i32, i32* %tmp___6, align 4, !dbg !1587
  store i32 %408, i32* %36, !dbg !1588
  br label %526, !dbg !1588

; <label>:409                                     ; preds = %375
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !1589
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !1591
  %410 = load i32, i32* %deviceExtension, align 4, !dbg !1592
  %411 = load i32, i32* %srb, align 4, !dbg !1593
  %412 = load i32, i32* %SubQPtr, align 4, !dbg !1594
  %413 = load i32, i32* %sizeof__SUB_Q_CURRENT_POSITION, align 4, !dbg !1595
  %414 = call i32 @SendSrbSynchronous(i32 %410, i32 %411, i32 %412, i32 %413), !dbg !1596
  store i32 %414, i32* %status, align 4, !dbg !1597
  %415 = load i32, i32* %status, align 4, !dbg !1598
  %416 = icmp sge i32 %415, 0, !dbg !1600
  br i1 %416, label %417, label %419, !dbg !1601

; <label>:417                                     ; preds = %409
  %418 = load i32, i32* %sizeof__SUB_Q_CURRENT_POSITION, align 4, !dbg !1602
  store i32 %418, i32* %Irp__IoStatus__Information, align 4, !dbg !1604
  br label %420, !dbg !1605

; <label>:419                                     ; preds = %409
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1606
  br label %420

; <label>:420                                     ; preds = %419, %417
  br label %484, !dbg !1608

; <label>:421                                     ; preds = %91
  %422 = load i32, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !1609
  store i32 %422, i32* %inputBuffer, align 4, !dbg !1610
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1611
  %423 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__InputBufferLength, align 4, !dbg !1612
  %424 = load i32, i32* %sizeof__CDROM_PLAY_AUDIO_MSF, align 4, !dbg !1614
  %425 = icmp slt i32 %423, %424, !dbg !1615
  br i1 %425, label %426, label %427, !dbg !1616

; <label>:426                                     ; preds = %421
  store i32 -1073741820, i32* %status, align 4, !dbg !1617
  br label %484, !dbg !1619

; <label>:427                                     ; preds = %421
  %428 = load i32, i32* %inputBuffer__StartingM, align 4, !dbg !1620
  %429 = load i32, i32* %inputBuffer__EndingM, align 4, !dbg !1622
  %430 = icmp eq i32 %428, %429, !dbg !1623
  br i1 %430, label %431, label %442, !dbg !1624

; <label>:431                                     ; preds = %427
  %432 = load i32, i32* %inputBuffer__StartingS, align 4, !dbg !1625
  %433 = load i32, i32* %inputBuffer__EndingS, align 4, !dbg !1628
  %434 = icmp eq i32 %432, %433, !dbg !1629
  br i1 %434, label %435, label %441, !dbg !1630

; <label>:435                                     ; preds = %431
  %436 = load i32, i32* %inputBuffer__StartingF, align 4, !dbg !1631
  %437 = load i32, i32* %inputBuffer__EndingF, align 4, !dbg !1634
  %438 = icmp eq i32 %436, %437, !dbg !1635
  br i1 %438, label %439, label %440, !dbg !1636

; <label>:439                                     ; preds = %435
  br label %440, !dbg !1637

; <label>:440                                     ; preds = %439, %435
  br label %441, !dbg !1639

; <label>:441                                     ; preds = %440, %431
  br label %442, !dbg !1640

; <label>:442                                     ; preds = %441, %427
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !1641
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !1643
  %443 = load i32, i32* %deviceExtension, align 4, !dbg !1644
  %444 = load i32, i32* %srb, align 4, !dbg !1645
  %445 = call i32 @SendSrbSynchronous(i32 %443, i32 %444, i32 0, i32 0), !dbg !1646
  store i32 %445, i32* %status, align 4, !dbg !1647
  %446 = load i32, i32* %status, align 4, !dbg !1648
  %447 = icmp sge i32 %446, 0, !dbg !1650
  br i1 %447, label %448, label %453, !dbg !1651

; <label>:448                                     ; preds = %442
  %449 = load i32, i32* %cdb__PLAY_AUDIO_MSF__OperationCode, align 4, !dbg !1652
  %450 = icmp eq i32 %449, 71, !dbg !1655
  br i1 %450, label %451, label %452, !dbg !1656

; <label>:451                                     ; preds = %448
  br label %452, !dbg !1657

; <label>:452                                     ; preds = %451, %448
  br label %453, !dbg !1659

; <label>:453                                     ; preds = %452, %442
  br label %484, !dbg !1660

; <label>:454                                     ; preds = %96
  %455 = load i32, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !1661
  store i32 %455, i32* %inputBuffer___0, align 4, !dbg !1662
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1663
  %456 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__InputBufferLength, align 4, !dbg !1664
  %457 = load i32, i32* %sizeof__CDROM_SEEK_AUDIO_MSF, align 4, !dbg !1666
  %458 = icmp slt i32 %456, %457, !dbg !1667
  br i1 %458, label %459, label %460, !dbg !1668

; <label>:459                                     ; preds = %454
  store i32 -1073741820, i32* %status, align 4, !dbg !1669
  br label %484, !dbg !1671

; <label>:460                                     ; preds = %454
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !1672
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !1674
  %461 = load i32, i32* %deviceExtension, align 4, !dbg !1675
  %462 = load i32, i32* %srb, align 4, !dbg !1676
  %463 = call i32 @SendSrbSynchronous(i32 %461, i32 %462, i32 0, i32 0), !dbg !1677
  store i32 %463, i32* %status, align 4, !dbg !1678
  %464 = load i32, i32* %status, align 4, !dbg !1679
  %465 = icmp slt i32 %464, 0, !dbg !1682
  br i1 %465, label %466, label %467, !dbg !1683

; <label>:466                                     ; preds = %460
  br label %467, !dbg !1684

; <label>:467                                     ; preds = %466, %460
  br label %484, !dbg !1686

; <label>:468                                     ; preds = %101
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1687
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !1689
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !1690
  %469 = load i32, i32* %deviceExtension, align 4, !dbg !1691
  %470 = load i32, i32* %srb, align 4, !dbg !1692
  %471 = call i32 @SendSrbSynchronous(i32 %469, i32 %470, i32 0, i32 0), !dbg !1693
  store i32 %471, i32* %status, align 4, !dbg !1694
  br label %484, !dbg !1695

; <label>:472                                     ; preds = %106
  br label %473, !dbg !1695

; <label>:473                                     ; preds = %472, %111
  br label %474, !dbg !1695

; <label>:474                                     ; preds = %473, %116
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1696
  store i32 -1073741808, i32* %status, align 4, !dbg !1697
  br label %484, !dbg !1698

; <label>:475                                     ; preds = %121
  %476 = load i32, i32* %37, align 4, !dbg !1699
  %477 = call i32 @CdAudioIsPlayActive(i32 %476), !dbg !1701
  br label %478, !dbg !1702

; <label>:478                                     ; preds = %475, %122
  %479 = load i32, i32* %37, align 4, !dbg !1703
  %480 = load i32, i32* %38, align 4, !dbg !1705
  %481 = call i32 @CdAudioSendToNextDriver(i32 %479, i32 %480), !dbg !1706
  store i32 %481, i32* %tmp___7, align 4, !dbg !1707
  %482 = load i32, i32* %tmp___7, align 4, !dbg !1708
  store i32 %482, i32* %36, !dbg !1709
  br label %526, !dbg !1709

; <label>:483                                     ; preds = %123
  br label %484, !dbg !1710

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
  %496 = load i32, i32* %status, align 4, !dbg !1711
  %497 = load i32, i32* %38, align 4, !dbg !1712
  %498 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !1713
  %499 = bitcast i32* %3 to i8*, !dbg !1714
  call void @llvm.lifetime.start(i64 4, i8* %499), !dbg !1714
  %500 = bitcast i32* %4 to i8*, !dbg !1714
  call void @llvm.lifetime.start(i64 4, i8* %500), !dbg !1714
  %501 = bitcast i32* %5 to i8*, !dbg !1714
  call void @llvm.lifetime.start(i64 4, i8* %501), !dbg !1714
  %502 = bitcast i64* %__cil_tmp4.i.11 to i8*, !dbg !1714
  call void @llvm.lifetime.start(i64 8, i8* %502), !dbg !1714
  store i32 %496, i32* %3, align 4, !dbg !1714
  store i32 %497, i32* %4, align 4, !dbg !1714
  store i32 %498, i32* %5, align 4, !dbg !1714
  %503 = load i32, i32* %3, align 4, !dbg !1715
  %504 = sext i32 %503 to i64, !dbg !1716
  store i64 %504, i64* %__cil_tmp4.i.11, align 8, !dbg !1717
  %505 = load i64, i64* %__cil_tmp4.i.11, align 8, !dbg !1718
  %506 = icmp eq i64 %505, -2147483626, !dbg !1719
  br i1 %506, label %507, label %508, !dbg !1720

; <label>:507                                     ; preds = %495
  br label %508, !dbg !1721

; <label>:508                                     ; preds = %507, %495
  %509 = load i32, i32* %3, align 4, !dbg !1722
  store i32 %509, i32* @myStatus, align 4, !dbg !1723
  %510 = load i32, i32* %4, align 4, !dbg !1724
  %511 = bitcast i32* %1 to i8*, !dbg !1725
  call void @llvm.lifetime.start(i64 4, i8* %511) #4, !dbg !1725
  %512 = bitcast i32* %2 to i8*, !dbg !1725
  call void @llvm.lifetime.start(i64 4, i8* %512) #4, !dbg !1725
  store i32 %510, i32* %1, align 4, !dbg !1725
  store i32 0, i32* %2, align 4, !dbg !1725
  %513 = load i32, i32* @s, align 4, !dbg !1726
  %514 = load i32, i32* @NP, align 4, !dbg !1727
  %515 = icmp eq i32 %513, %514, !dbg !1728
  br i1 %515, label %AG_SetStatusAndReturn.exit12, label %516, !dbg !1729

; <label>:516                                     ; preds = %508
  call void (...) @__VERIFIER_error() #6, !dbg !1730
  unreachable, !dbg !1730

AG_SetStatusAndReturn.exit12:                     ; preds = %508
  %517 = load i32, i32* @DC, align 4, !dbg !1732
  store i32 %517, i32* @s, align 4, !dbg !1733
  %518 = bitcast i32* %1 to i8*, !dbg !1734
  call void @llvm.lifetime.end(i64 4, i8* %518) #4, !dbg !1734
  %519 = bitcast i32* %2 to i8*, !dbg !1734
  call void @llvm.lifetime.end(i64 4, i8* %519) #4, !dbg !1734
  %520 = load i32, i32* %3, align 4, !dbg !1735
  %521 = bitcast i32* %3 to i8*, !dbg !1736
  call void @llvm.lifetime.end(i64 4, i8* %521), !dbg !1736
  %522 = bitcast i32* %4 to i8*, !dbg !1736
  call void @llvm.lifetime.end(i64 4, i8* %522), !dbg !1736
  %523 = bitcast i32* %5 to i8*, !dbg !1736
  call void @llvm.lifetime.end(i64 4, i8* %523), !dbg !1736
  %524 = bitcast i64* %__cil_tmp4.i.11 to i8*, !dbg !1736
  call void @llvm.lifetime.end(i64 8, i8* %524), !dbg !1736
  store i32 %520, i32* %tmp___8, align 4, !dbg !1737
  %525 = load i32, i32* %tmp___8, align 4, !dbg !1738
  store i32 %525, i32* %36, !dbg !1739
  br label %526, !dbg !1739

; <label>:526                                     ; preds = %AG_SetStatusAndReturn.exit12, %478, %AG_SetStatusAndReturn.exit10, %AG_SetStatusAndReturn.exit8, %AG_SetStatusAndReturn.exit6, %AG_SetStatusAndReturn.exit4, %AG_SetStatusAndReturn.exit2, %AG_SetStatusAndReturn.exit
  %527 = load i32, i32* %36, !dbg !1740
  ret i32 %527, !dbg !1740
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
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1074, metadata !104), !dbg !1741
  store i32 %Irp, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1076, metadata !104), !dbg !1742
  store i32 %deviceExtension__TargetDeviceObject, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1078, metadata !104), !dbg !1743
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp4, metadata !1080, metadata !104), !dbg !1744
  %6 = load i32, i32* %3, align 4, !dbg !1745
  %7 = sext i32 %6 to i64, !dbg !1746
  store i64 %7, i64* %__cil_tmp4, align 8, !dbg !1747
  %8 = load i64, i64* %__cil_tmp4, align 8, !dbg !1748
  %9 = icmp eq i64 %8, -2147483626, !dbg !1749
  call void @llvm.dbg.declare(metadata i32* %1, metadata !393, metadata !104), !dbg !1750
  call void @llvm.dbg.declare(metadata i32* %2, metadata !402, metadata !104), !dbg !1752
  br i1 %9, label %10, label %11, !dbg !1753

; <label>:10                                      ; preds = %0
  br label %11, !dbg !1754

; <label>:11                                      ; preds = %10, %0
  %12 = load i32, i32* %3, align 4, !dbg !1755
  store i32 %12, i32* @myStatus, align 4, !dbg !1756
  %13 = load i32, i32* %4, align 4, !dbg !1757
  %14 = bitcast i32* %1 to i8*, !dbg !1758
  call void @llvm.lifetime.start(i64 4, i8* %14), !dbg !1758
  %15 = bitcast i32* %2 to i8*, !dbg !1758
  call void @llvm.lifetime.start(i64 4, i8* %15), !dbg !1758
  store i32 %13, i32* %1, align 4, !dbg !1758
  store i32 0, i32* %2, align 4, !dbg !1758
  %16 = load i32, i32* @s, align 4, !dbg !1759
  %17 = load i32, i32* @NP, align 4, !dbg !1760
  %18 = icmp eq i32 %16, %17, !dbg !1761
  br i1 %18, label %IofCompleteRequest.exit, label %19, !dbg !1762

; <label>:19                                      ; preds = %11
  call void (...) @__VERIFIER_error() #6, !dbg !1763
  unreachable, !dbg !1763

IofCompleteRequest.exit:                          ; preds = %11
  %20 = load i32, i32* @DC, align 4, !dbg !1765
  store i32 %20, i32* @s, align 4, !dbg !1766
  %21 = bitcast i32* %1 to i8*, !dbg !1767
  call void @llvm.lifetime.end(i64 4, i8* %21), !dbg !1767
  %22 = bitcast i32* %2 to i8*, !dbg !1767
  call void @llvm.lifetime.end(i64 4, i8* %22), !dbg !1767
  %23 = load i32, i32* %3, align 4, !dbg !1768
  ret i32 %23, !dbg !1769
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
  call void @llvm.dbg.declare(metadata i32* %26, metadata !1770, metadata !104), !dbg !1771
  store i32 %Irp, i32* %27, align 4
  call void @llvm.dbg.declare(metadata i32* %27, metadata !1772, metadata !104), !dbg !1773
  call void @llvm.dbg.declare(metadata i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, metadata !1774, metadata !104), !dbg !1775
  %28 = call i32 @__VERIFIER_nondet_int(), !dbg !1776
  store i32 %28, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1775
  call void @llvm.dbg.declare(metadata i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, metadata !1777, metadata !104), !dbg !1778
  %29 = call i32 @__VERIFIER_nondet_int(), !dbg !1779
  store i32 %29, i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !1778
  call void @llvm.dbg.declare(metadata i32* %currentIrpStack__Parameters__DeviceIoControl__InputBufferLength, metadata !1780, metadata !104), !dbg !1781
  %30 = call i32 @__VERIFIER_nondet_int(), !dbg !1782
  store i32 %30, i32* %currentIrpStack__Parameters__DeviceIoControl__InputBufferLength, align 4, !dbg !1781
  call void @llvm.dbg.declare(metadata i32* %TrackData__0, metadata !1783, metadata !104), !dbg !1784
  %31 = call i32 @__VERIFIER_nondet_int(), !dbg !1785
  store i32 %31, i32* %TrackData__0, align 4, !dbg !1784
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !1786, metadata !104), !dbg !1787
  call void @llvm.dbg.declare(metadata i32* %srb__TimeOutValue, metadata !1788, metadata !104), !dbg !1789
  call void @llvm.dbg.declare(metadata i32* %srb__CdbLength, metadata !1790, metadata !104), !dbg !1791
  call void @llvm.dbg.declare(metadata i32* %sizeof__CDROM_TOC, metadata !1792, metadata !104), !dbg !1793
  %32 = call i32 @__VERIFIER_nondet_int(), !dbg !1794
  store i32 %32, i32* %sizeof__CDROM_TOC, align 4, !dbg !1793
  call void @llvm.dbg.declare(metadata i32* %cdaudioDataOut__LastTrack, metadata !1795, metadata !104), !dbg !1796
  %33 = call i32 @__VERIFIER_nondet_int(), !dbg !1797
  store i32 %33, i32* %cdaudioDataOut__LastTrack, align 4, !dbg !1796
  call void @llvm.dbg.declare(metadata i32* %cdaudioDataOut__FirstTrack, metadata !1798, metadata !104), !dbg !1799
  %34 = call i32 @__VERIFIER_nondet_int(), !dbg !1800
  store i32 %34, i32* %cdaudioDataOut__FirstTrack, align 4, !dbg !1799
  call void @llvm.dbg.declare(metadata i32* %sizeof__CDROM_PLAY_AUDIO_MSF, metadata !1801, metadata !104), !dbg !1802
  %35 = call i32 @__VERIFIER_nondet_int(), !dbg !1803
  store i32 %35, i32* %sizeof__CDROM_PLAY_AUDIO_MSF, align 4, !dbg !1802
  call void @llvm.dbg.declare(metadata i32* %sizeof__CDROM_SEEK_AUDIO_MSF, metadata !1804, metadata !104), !dbg !1805
  %36 = call i32 @__VERIFIER_nondet_int(), !dbg !1806
  store i32 %36, i32* %sizeof__CDROM_SEEK_AUDIO_MSF, align 4, !dbg !1805
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__Paused, metadata !1807, metadata !104), !dbg !1808
  %37 = call i32 @__VERIFIER_nondet_int(), !dbg !1809
  store i32 %37, i32* %deviceExtension__Paused, align 4, !dbg !1808
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__PlayActive, metadata !1810, metadata !104), !dbg !1811
  call void @llvm.dbg.declare(metadata i32* %sizeof__SUB_Q_CHANNEL_DATA, metadata !1812, metadata !104), !dbg !1813
  %38 = call i32 @__VERIFIER_nondet_int(), !dbg !1814
  store i32 %38, i32* %sizeof__SUB_Q_CHANNEL_DATA, align 4, !dbg !1813
  call void @llvm.dbg.declare(metadata i32* %sizeof__SUB_Q_CURRENT_POSITION, metadata !1815, metadata !104), !dbg !1816
  %39 = call i32 @__VERIFIER_nondet_int(), !dbg !1817
  store i32 %39, i32* %sizeof__SUB_Q_CURRENT_POSITION, align 4, !dbg !1816
  call void @llvm.dbg.declare(metadata i32* %deviceExtension, metadata !1818, metadata !104), !dbg !1819
  %40 = call i32 @__VERIFIER_nondet_int(), !dbg !1820
  store i32 %40, i32* %deviceExtension, align 4, !dbg !1819
  call void @llvm.dbg.declare(metadata i32* %srb, metadata !1821, metadata !104), !dbg !1822
  %41 = call i32 @__VERIFIER_nondet_int(), !dbg !1823
  store i32 %41, i32* %srb, align 4, !dbg !1822
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1824, metadata !104), !dbg !1825
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1826, metadata !104), !dbg !1827
  %42 = call i32 @__VERIFIER_nondet_int(), !dbg !1828
  store i32 %42, i32* %i, align 4, !dbg !1827
  call void @llvm.dbg.declare(metadata i32* %bytesTransfered, metadata !1829, metadata !104), !dbg !1830
  call void @llvm.dbg.declare(metadata i32* %Toc, metadata !1831, metadata !104), !dbg !1832
  %43 = call i32 @__VERIFIER_nondet_int(), !dbg !1833
  store i32 %43, i32* %Toc, align 4, !dbg !1832
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !1834, metadata !104), !dbg !1835
  call void @llvm.dbg.declare(metadata i32* %tracksToReturn, metadata !1836, metadata !104), !dbg !1837
  call void @llvm.dbg.declare(metadata i32* %tracksOnCd, metadata !1838, metadata !104), !dbg !1839
  call void @llvm.dbg.declare(metadata i32* %tracksInBuffer, metadata !1840, metadata !104), !dbg !1841
  call void @llvm.dbg.declare(metadata i32* %SubQPtr, metadata !1842, metadata !104), !dbg !1843
  %44 = call i32 @__VERIFIER_nondet_int(), !dbg !1844
  store i32 %44, i32* %SubQPtr, align 4, !dbg !1843
  call void @llvm.dbg.declare(metadata i32* %userPtr__Format, metadata !1845, metadata !104), !dbg !1846
  %45 = call i32 @__VERIFIER_nondet_int(), !dbg !1847
  store i32 %45, i32* %userPtr__Format, align 4, !dbg !1846
  call void @llvm.dbg.declare(metadata i32* %SubQPtr___0, metadata !1848, metadata !104), !dbg !1849
  %46 = call i32 @__VERIFIER_nondet_int(), !dbg !1850
  store i32 %46, i32* %SubQPtr___0, align 4, !dbg !1849
  call void @llvm.dbg.declare(metadata i32* %tmp___0, metadata !1851, metadata !104), !dbg !1852
  call void @llvm.dbg.declare(metadata i32* %tmp___1, metadata !1853, metadata !104), !dbg !1854
  call void @llvm.dbg.declare(metadata i32* %tmp___2, metadata !1855, metadata !104), !dbg !1856
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp35, metadata !1857, metadata !104), !dbg !1858
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp36, metadata !1859, metadata !104), !dbg !1860
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp37, metadata !1861, metadata !104), !dbg !1862
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp38, metadata !1863, metadata !104), !dbg !1864
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp39, metadata !1865, metadata !104), !dbg !1866
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp40, metadata !1867, metadata !104), !dbg !1868
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp41, metadata !1869, metadata !104), !dbg !1870
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp42, metadata !1871, metadata !104), !dbg !1872
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp43, metadata !1873, metadata !104), !dbg !1874
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp44, metadata !1875, metadata !104), !dbg !1876
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp45, metadata !1877, metadata !104), !dbg !1878
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp46, metadata !1879, metadata !104), !dbg !1880
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp47, metadata !1881, metadata !104), !dbg !1882
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp48, metadata !1883, metadata !104), !dbg !1884
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp49, metadata !1885, metadata !104), !dbg !1886
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp50, metadata !1887, metadata !104), !dbg !1888
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp51, metadata !1889, metadata !104), !dbg !1890
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp52, metadata !1891, metadata !104), !dbg !1892
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp53, metadata !1893, metadata !104), !dbg !1894
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp54, metadata !1895, metadata !104), !dbg !1896
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp55, metadata !1897, metadata !104), !dbg !1898
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp56, metadata !1899, metadata !104), !dbg !1900
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp57, metadata !1901, metadata !104), !dbg !1902
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp58, metadata !1903, metadata !104), !dbg !1904
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp59, metadata !1905, metadata !104), !dbg !1906
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp60, metadata !1907, metadata !104), !dbg !1908
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp61, metadata !1909, metadata !104), !dbg !1910
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp62, metadata !1911, metadata !104), !dbg !1912
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp63, metadata !1913, metadata !104), !dbg !1914
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp64, metadata !1915, metadata !104), !dbg !1916
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp65, metadata !1917, metadata !104), !dbg !1918
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp66, metadata !1919, metadata !104), !dbg !1920
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp67, metadata !1921, metadata !104), !dbg !1922
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp68, metadata !1923, metadata !104), !dbg !1924
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp69, metadata !1925, metadata !104), !dbg !1926
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp70, metadata !1927, metadata !104), !dbg !1928
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp71, metadata !1929, metadata !104), !dbg !1930
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp72, metadata !1931, metadata !104), !dbg !1932
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp73, metadata !1933, metadata !104), !dbg !1934
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp74, metadata !1935, metadata !104), !dbg !1936
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp75, metadata !1937, metadata !104), !dbg !1938
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp76, metadata !1939, metadata !104), !dbg !1940
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp77, metadata !1941, metadata !104), !dbg !1942
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp78, metadata !1943, metadata !104), !dbg !1944
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp79, metadata !1945, metadata !104), !dbg !1946
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp80, metadata !1947, metadata !104), !dbg !1948
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp81, metadata !1949, metadata !104), !dbg !1950
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp82, metadata !1951, metadata !104), !dbg !1952
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp83, metadata !1953, metadata !104), !dbg !1954
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp84, metadata !1955, metadata !104), !dbg !1956
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp85, metadata !1957, metadata !104), !dbg !1958
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp86, metadata !1959, metadata !104), !dbg !1960
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp87, metadata !1961, metadata !104), !dbg !1962
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp88, metadata !1963, metadata !104), !dbg !1964
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp89, metadata !1965, metadata !104), !dbg !1966
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp90, metadata !1967, metadata !104), !dbg !1968
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp91, metadata !1969, metadata !104), !dbg !1970
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp92, metadata !1971, metadata !104), !dbg !1972
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp93, metadata !1973, metadata !104), !dbg !1974
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp94, metadata !1975, metadata !104), !dbg !1976
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp95, metadata !1977, metadata !104), !dbg !1978
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp96, metadata !1979, metadata !104), !dbg !1980
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp97, metadata !1981, metadata !104), !dbg !1982
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp98, metadata !1983, metadata !104), !dbg !1984
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp99, metadata !1985, metadata !104), !dbg !1986
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp100, metadata !1987, metadata !104), !dbg !1988
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp101, metadata !1989, metadata !104), !dbg !1990
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp102, metadata !1991, metadata !104), !dbg !1992
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp103, metadata !1993, metadata !104), !dbg !1994
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp104, metadata !1995, metadata !104), !dbg !1996
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp105, metadata !1997, metadata !104), !dbg !1998
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp106, metadata !1999, metadata !104), !dbg !2000
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp107, metadata !2001, metadata !104), !dbg !2002
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp108, metadata !2003, metadata !104), !dbg !2004
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp109, metadata !2005, metadata !104), !dbg !2006
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp110, metadata !2007, metadata !104), !dbg !2008
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp111, metadata !2009, metadata !104), !dbg !2010
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp112, metadata !2011, metadata !104), !dbg !2012
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp113, metadata !2013, metadata !104), !dbg !2014
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp114, metadata !2015, metadata !104), !dbg !2016
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp115, metadata !2017, metadata !104), !dbg !2018
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp116, metadata !2019, metadata !104), !dbg !2020
  store i32 16384, i32* %__cil_tmp35, align 4, !dbg !2021
  store i32 131072, i32* %__cil_tmp36, align 4, !dbg !2024
  store i32 147456, i32* %__cil_tmp37, align 4, !dbg !2025
  %47 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2026
  %48 = load i32, i32* %__cil_tmp37, align 4, !dbg !2028
  %49 = icmp eq i32 %47, %48, !dbg !2029
  call void @llvm.dbg.declare(metadata i32* %23, metadata !393, metadata !104), !dbg !2030
  call void @llvm.dbg.declare(metadata i32* %24, metadata !402, metadata !104), !dbg !2071
  call void @llvm.dbg.declare(metadata i32* %21, metadata !393, metadata !104), !dbg !2072
  call void @llvm.dbg.declare(metadata i32* %22, metadata !402, metadata !104), !dbg !2084
  call void @llvm.dbg.declare(metadata i32* %19, metadata !393, metadata !104), !dbg !2085
  call void @llvm.dbg.declare(metadata i32* %20, metadata !402, metadata !104), !dbg !2091
  call void @llvm.dbg.declare(metadata i32* %17, metadata !393, metadata !104), !dbg !2092
  call void @llvm.dbg.declare(metadata i32* %18, metadata !402, metadata !104), !dbg !2097
  call void @llvm.dbg.declare(metadata i32* %15, metadata !393, metadata !104), !dbg !2098
  call void @llvm.dbg.declare(metadata i32* %16, metadata !402, metadata !104), !dbg !2103
  call void @llvm.dbg.declare(metadata i32* %13, metadata !393, metadata !104), !dbg !2104
  call void @llvm.dbg.declare(metadata i32* %14, metadata !402, metadata !104), !dbg !2110
  call void @llvm.dbg.declare(metadata i32* %11, metadata !393, metadata !104), !dbg !2111
  call void @llvm.dbg.declare(metadata i32* %12, metadata !402, metadata !104), !dbg !2117
  call void @llvm.dbg.declare(metadata i32* %9, metadata !393, metadata !104), !dbg !2118
  call void @llvm.dbg.declare(metadata i32* %10, metadata !402, metadata !104), !dbg !2123
  call void @llvm.dbg.declare(metadata i32* %7, metadata !393, metadata !104), !dbg !2124
  call void @llvm.dbg.declare(metadata i32* %8, metadata !402, metadata !104), !dbg !2129
  call void @llvm.dbg.declare(metadata i32* %5, metadata !393, metadata !104), !dbg !2130
  call void @llvm.dbg.declare(metadata i32* %6, metadata !402, metadata !104), !dbg !2135
  call void @llvm.dbg.declare(metadata i32* %3, metadata !393, metadata !104), !dbg !2136
  call void @llvm.dbg.declare(metadata i32* %4, metadata !402, metadata !104), !dbg !2141
  call void @llvm.dbg.declare(metadata i32* %1, metadata !393, metadata !104), !dbg !2142
  call void @llvm.dbg.declare(metadata i32* %2, metadata !402, metadata !104), !dbg !2145
  br i1 %49, label %50, label %51, !dbg !2146

; <label>:50                                      ; preds = %0
  br label %109, !dbg !2147

; <label>:51                                      ; preds = %0
  store i32 24, i32* %__cil_tmp38, align 4, !dbg !2149
  store i32 16384, i32* %__cil_tmp39, align 4, !dbg !2150
  store i32 131072, i32* %__cil_tmp40, align 4, !dbg !2151
  store i32 147456, i32* %__cil_tmp41, align 4, !dbg !2152
  store i32 147480, i32* %__cil_tmp42, align 4, !dbg !2153
  %52 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2154
  %53 = load i32, i32* %__cil_tmp42, align 4, !dbg !2155
  %54 = icmp eq i32 %52, %53, !dbg !2156
  br i1 %54, label %55, label %56, !dbg !2157

; <label>:55                                      ; preds = %51
  br label %215, !dbg !2158

; <label>:56                                      ; preds = %51
  store i32 8, i32* %__cil_tmp43, align 4, !dbg !2160
  store i32 16384, i32* %__cil_tmp44, align 4, !dbg !2161
  store i32 131072, i32* %__cil_tmp45, align 4, !dbg !2162
  store i32 147456, i32* %__cil_tmp46, align 4, !dbg !2163
  store i32 147464, i32* %__cil_tmp47, align 4, !dbg !2164
  %57 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2165
  %58 = load i32, i32* %__cil_tmp47, align 4, !dbg !2166
  %59 = icmp eq i32 %57, %58, !dbg !2167
  br i1 %59, label %60, label %61, !dbg !2168

; <label>:60                                      ; preds = %56
  br label %216, !dbg !2169

; <label>:61                                      ; preds = %56
  store i32 4, i32* %__cil_tmp48, align 4, !dbg !2171
  store i32 16384, i32* %__cil_tmp49, align 4, !dbg !2172
  store i32 131072, i32* %__cil_tmp50, align 4, !dbg !2173
  store i32 147456, i32* %__cil_tmp51, align 4, !dbg !2174
  store i32 147460, i32* %__cil_tmp52, align 4, !dbg !2175
  %62 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2176
  %63 = load i32, i32* %__cil_tmp52, align 4, !dbg !2177
  %64 = icmp eq i32 %62, %63, !dbg !2178
  br i1 %64, label %65, label %66, !dbg !2179

; <label>:65                                      ; preds = %61
  br label %259, !dbg !2180

; <label>:66                                      ; preds = %61
  store i32 12, i32* %__cil_tmp53, align 4, !dbg !2182
  store i32 16384, i32* %__cil_tmp54, align 4, !dbg !2183
  store i32 131072, i32* %__cil_tmp55, align 4, !dbg !2184
  store i32 147456, i32* %__cil_tmp56, align 4, !dbg !2185
  store i32 147468, i32* %__cil_tmp57, align 4, !dbg !2186
  %67 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2187
  %68 = load i32, i32* %__cil_tmp57, align 4, !dbg !2188
  %69 = icmp eq i32 %67, %68, !dbg !2189
  br i1 %69, label %70, label %71, !dbg !2190

; <label>:70                                      ; preds = %66
  br label %278, !dbg !2191

; <label>:71                                      ; preds = %66
  store i32 16, i32* %__cil_tmp58, align 4, !dbg !2193
  store i32 16384, i32* %__cil_tmp59, align 4, !dbg !2194
  store i32 131072, i32* %__cil_tmp60, align 4, !dbg !2195
  store i32 147456, i32* %__cil_tmp61, align 4, !dbg !2196
  store i32 147472, i32* %__cil_tmp62, align 4, !dbg !2197
  %72 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2198
  %73 = load i32, i32* %__cil_tmp62, align 4, !dbg !2199
  %74 = icmp eq i32 %72, %73, !dbg !2200
  br i1 %74, label %75, label %76, !dbg !2201

; <label>:75                                      ; preds = %71
  br label %375, !dbg !2202

; <label>:76                                      ; preds = %71
  store i32 44, i32* %__cil_tmp63, align 4, !dbg !2204
  store i32 16384, i32* %__cil_tmp64, align 4, !dbg !2205
  store i32 131072, i32* %__cil_tmp65, align 4, !dbg !2206
  store i32 147456, i32* %__cil_tmp66, align 4, !dbg !2207
  store i32 147500, i32* %__cil_tmp67, align 4, !dbg !2208
  %77 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2209
  %78 = load i32, i32* %__cil_tmp67, align 4, !dbg !2210
  %79 = icmp eq i32 %77, %78, !dbg !2211
  br i1 %79, label %80, label %81, !dbg !2212

; <label>:80                                      ; preds = %76
  br label %405, !dbg !2213

; <label>:81                                      ; preds = %76
  store i32 2056, i32* %__cil_tmp68, align 4, !dbg !2215
  store i32 16384, i32* %__cil_tmp69, align 4, !dbg !2216
  store i32 131072, i32* %__cil_tmp70, align 4, !dbg !2217
  store i32 147456, i32* %__cil_tmp71, align 4, !dbg !2218
  store i32 149512, i32* %__cil_tmp72, align 4, !dbg !2219
  %82 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2220
  %83 = load i32, i32* %__cil_tmp72, align 4, !dbg !2221
  %84 = icmp eq i32 %82, %83, !dbg !2222
  br i1 %84, label %85, label %86, !dbg !2223

; <label>:85                                      ; preds = %81
  br label %470, !dbg !2224

; <label>:86                                      ; preds = %81
  store i32 52, i32* %__cil_tmp73, align 4, !dbg !2226
  store i32 16384, i32* %__cil_tmp74, align 4, !dbg !2227
  store i32 131072, i32* %__cil_tmp75, align 4, !dbg !2228
  store i32 147456, i32* %__cil_tmp76, align 4, !dbg !2229
  store i32 147508, i32* %__cil_tmp77, align 4, !dbg !2230
  %87 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2231
  %88 = load i32, i32* %__cil_tmp77, align 4, !dbg !2232
  %89 = icmp eq i32 %87, %88, !dbg !2233
  br i1 %89, label %90, label %91, !dbg !2234

; <label>:90                                      ; preds = %86
  br label %474, !dbg !2235

; <label>:91                                      ; preds = %86
  store i32 20, i32* %__cil_tmp78, align 4, !dbg !2237
  store i32 16384, i32* %__cil_tmp79, align 4, !dbg !2238
  store i32 131072, i32* %__cil_tmp80, align 4, !dbg !2239
  store i32 147456, i32* %__cil_tmp81, align 4, !dbg !2240
  store i32 147476, i32* %__cil_tmp82, align 4, !dbg !2241
  %92 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2242
  %93 = load i32, i32* %__cil_tmp82, align 4, !dbg !2243
  %94 = icmp eq i32 %92, %93, !dbg !2244
  br i1 %94, label %95, label %96, !dbg !2245

; <label>:95                                      ; preds = %91
  br label %475, !dbg !2246

; <label>:96                                      ; preds = %91
  store i32 40, i32* %__cil_tmp83, align 4, !dbg !2248
  store i32 16384, i32* %__cil_tmp84, align 4, !dbg !2249
  store i32 131072, i32* %__cil_tmp85, align 4, !dbg !2250
  store i32 147456, i32* %__cil_tmp86, align 4, !dbg !2251
  store i32 147496, i32* %__cil_tmp87, align 4, !dbg !2252
  %97 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2253
  %98 = load i32, i32* %__cil_tmp87, align 4, !dbg !2254
  %99 = icmp eq i32 %97, %98, !dbg !2255
  br i1 %99, label %100, label %101, !dbg !2256

; <label>:100                                     ; preds = %96
  br label %476, !dbg !2257

; <label>:101                                     ; preds = %96
  store i32 2048, i32* %__cil_tmp88, align 4, !dbg !2259
  store i32 16384, i32* %__cil_tmp89, align 4, !dbg !2260
  store i32 131072, i32* %__cil_tmp90, align 4, !dbg !2261
  store i32 147456, i32* %__cil_tmp91, align 4, !dbg !2262
  store i32 149504, i32* %__cil_tmp92, align 4, !dbg !2263
  %102 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2264
  %103 = load i32, i32* %__cil_tmp92, align 4, !dbg !2265
  %104 = icmp eq i32 %102, %103, !dbg !2266
  br i1 %104, label %105, label %106, !dbg !2267

; <label>:105                                     ; preds = %101
  br label %477, !dbg !2268

; <label>:106                                     ; preds = %101
  br label %506, !dbg !2270
                                                  ; No predecessors!
  br i1 false, label %108, label %511, !dbg !2271

; <label>:108                                     ; preds = %107
  br label %109, !dbg !2272

; <label>:109                                     ; preds = %108, %50
  %110 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !2273
  %111 = load i32, i32* %TrackData__0, align 4, !dbg !2275
  %112 = icmp slt i32 %110, %111, !dbg !2276
  br i1 %112, label %113, label %114, !dbg !2277

; <label>:113                                     ; preds = %109
  store i32 -1073741789, i32* %status, align 4, !dbg !2278
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2280
  br label %512, !dbg !2281

; <label>:114                                     ; preds = %109
  %115 = load i32, i32* %26, align 4, !dbg !2282
  %116 = call i32 @CdAudioIsPlayActive(i32 %115), !dbg !2284
  store i32 %116, i32* %tmp, align 4, !dbg !2285
  %117 = load i32, i32* %tmp, align 4, !dbg !2286
  %118 = icmp ne i32 %117, 0, !dbg !2286
  br i1 %118, label %119, label %120, !dbg !2288

; <label>:119                                     ; preds = %114
  store i32 -2147483631, i32* %status, align 4, !dbg !2289
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2291
  br label %512, !dbg !2292

; <label>:120                                     ; preds = %114
  %121 = load i32, i32* %Toc, align 4, !dbg !2293
  %122 = icmp eq i32 %121, 0, !dbg !2294
  br i1 %122, label %123, label %142, !dbg !2295

; <label>:123                                     ; preds = %120
  store i32 -1073741670, i32* %status, align 4, !dbg !2296
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2297
  %124 = load i32, i32* %status, align 4, !dbg !2298
  %125 = sext i32 %124 to i64, !dbg !2300
  store i64 %125, i64* %__cil_tmp93, align 8, !dbg !2301
  %126 = load i64, i64* %__cil_tmp93, align 8, !dbg !2302
  %127 = icmp eq i64 %126, -2147483626, !dbg !2304
  br i1 %127, label %128, label %129, !dbg !2305

; <label>:128                                     ; preds = %123
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2306
  br label %129, !dbg !2308

; <label>:129                                     ; preds = %128, %123
  %130 = load i32, i32* %status, align 4, !dbg !2309
  store i32 %130, i32* @myStatus, align 4, !dbg !2310
  %131 = load i32, i32* %27, align 4, !dbg !2311
  %132 = bitcast i32* %23 to i8*, !dbg !2312
  call void @llvm.lifetime.start(i64 4, i8* %132), !dbg !2312
  %133 = bitcast i32* %24 to i8*, !dbg !2312
  call void @llvm.lifetime.start(i64 4, i8* %133), !dbg !2312
  store i32 %131, i32* %23, align 4, !dbg !2312
  store i32 0, i32* %24, align 4, !dbg !2312
  %134 = load i32, i32* @s, align 4, !dbg !2313
  %135 = load i32, i32* @NP, align 4, !dbg !2314
  %136 = icmp eq i32 %134, %135, !dbg !2315
  br i1 %136, label %IofCompleteRequest.exit, label %137, !dbg !2316

; <label>:137                                     ; preds = %129
  call void (...) @__VERIFIER_error() #6, !dbg !2317
  unreachable, !dbg !2317

IofCompleteRequest.exit:                          ; preds = %129
  %138 = load i32, i32* @DC, align 4, !dbg !2319
  store i32 %138, i32* @s, align 4, !dbg !2320
  %139 = bitcast i32* %23 to i8*, !dbg !2321
  call void @llvm.lifetime.end(i64 4, i8* %139), !dbg !2321
  %140 = bitcast i32* %24 to i8*, !dbg !2321
  call void @llvm.lifetime.end(i64 4, i8* %140), !dbg !2321
  %141 = load i32, i32* %status, align 4, !dbg !2322
  store i32 %141, i32* %25, !dbg !2323
  br label %544, !dbg !2323

; <label>:142                                     ; preds = %120
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !2324
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !2326
  %143 = load i32, i32* %deviceExtension, align 4, !dbg !2327
  %144 = load i32, i32* %srb, align 4, !dbg !2328
  %145 = load i32, i32* %Toc, align 4, !dbg !2329
  %146 = load i32, i32* %sizeof__CDROM_TOC, align 4, !dbg !2330
  %147 = call i32 @SendSrbSynchronous(i32 %143, i32 %144, i32 %145, i32 %146), !dbg !2331
  store i32 %147, i32* %status, align 4, !dbg !2332
  %148 = load i32, i32* %status, align 4, !dbg !2333
  %149 = icmp slt i32 %148, 0, !dbg !2334
  br i1 %149, label %150, label %182, !dbg !2335

; <label>:150                                     ; preds = %142
  %151 = load i32, i32* %status, align 4, !dbg !2336
  %152 = sext i32 %151 to i64, !dbg !2337
  store i64 %152, i64* %__cil_tmp95, align 8, !dbg !2338
  %153 = load i64, i64* %__cil_tmp95, align 8, !dbg !2339
  %154 = icmp ne i64 %153, -1073741764, !dbg !2340
  br i1 %154, label %155, label %180, !dbg !2341

; <label>:155                                     ; preds = %150
  %156 = load i32, i32* %status, align 4, !dbg !2342
  %157 = sext i32 %156 to i64, !dbg !2343
  store i64 %157, i64* %__cil_tmp96, align 8, !dbg !2344
  %158 = load i64, i64* %__cil_tmp96, align 8, !dbg !2345
  %159 = icmp ne i64 %158, -1073741764, !dbg !2346
  br i1 %159, label %160, label %179, !dbg !2347

; <label>:160                                     ; preds = %155
  %161 = load i32, i32* %status, align 4, !dbg !2348
  %162 = sext i32 %161 to i64, !dbg !2350
  store i64 %162, i64* %__cil_tmp97, align 8, !dbg !2351
  %163 = load i64, i64* %__cil_tmp97, align 8, !dbg !2352
  %164 = icmp eq i64 %163, -2147483626, !dbg !2354
  br i1 %164, label %165, label %166, !dbg !2355

; <label>:165                                     ; preds = %160
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2356
  br label %166, !dbg !2358

; <label>:166                                     ; preds = %165, %160
  %167 = load i32, i32* %status, align 4, !dbg !2359
  store i32 %167, i32* @myStatus, align 4, !dbg !2360
  %168 = load i32, i32* %27, align 4, !dbg !2361
  %169 = bitcast i32* %21 to i8*, !dbg !2362
  call void @llvm.lifetime.start(i64 4, i8* %169), !dbg !2362
  %170 = bitcast i32* %22 to i8*, !dbg !2362
  call void @llvm.lifetime.start(i64 4, i8* %170), !dbg !2362
  store i32 %168, i32* %21, align 4, !dbg !2362
  store i32 0, i32* %22, align 4, !dbg !2362
  %171 = load i32, i32* @s, align 4, !dbg !2363
  %172 = load i32, i32* @NP, align 4, !dbg !2364
  %173 = icmp eq i32 %171, %172, !dbg !2365
  br i1 %173, label %IofCompleteRequest.exit1, label %174, !dbg !2366

; <label>:174                                     ; preds = %166
  call void (...) @__VERIFIER_error() #6, !dbg !2367
  unreachable, !dbg !2367

IofCompleteRequest.exit1:                         ; preds = %166
  %175 = load i32, i32* @DC, align 4, !dbg !2369
  store i32 %175, i32* @s, align 4, !dbg !2370
  %176 = bitcast i32* %21 to i8*, !dbg !2371
  call void @llvm.lifetime.end(i64 4, i8* %176), !dbg !2371
  %177 = bitcast i32* %22 to i8*, !dbg !2371
  call void @llvm.lifetime.end(i64 4, i8* %177), !dbg !2371
  %178 = load i32, i32* %status, align 4, !dbg !2372
  store i32 %178, i32* %25, !dbg !2373
  br label %544, !dbg !2373

; <label>:179                                     ; preds = %155
  br label %181, !dbg !2374

; <label>:180                                     ; preds = %150
  store i32 0, i32* %status, align 4, !dbg !2375
  br label %181

; <label>:181                                     ; preds = %180, %179
  br label %183, !dbg !2377

; <label>:182                                     ; preds = %142
  store i32 0, i32* %status, align 4, !dbg !2378
  br label %183

; <label>:183                                     ; preds = %182, %181
  %184 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !2380
  %185 = load i32, i32* %sizeof__CDROM_TOC, align 4, !dbg !2382
  %186 = icmp sgt i32 %184, %185, !dbg !2383
  br i1 %186, label %187, label %189, !dbg !2384

; <label>:187                                     ; preds = %183
  %188 = load i32, i32* %sizeof__CDROM_TOC, align 4, !dbg !2385
  store i32 %188, i32* %bytesTransfered, align 4, !dbg !2387
  br label %191, !dbg !2388

; <label>:189                                     ; preds = %183
  %190 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !2389
  store i32 %190, i32* %bytesTransfered, align 4, !dbg !2391
  br label %191

; <label>:191                                     ; preds = %189, %187
  %192 = load i32, i32* %cdaudioDataOut__LastTrack, align 4, !dbg !2392
  %193 = load i32, i32* %cdaudioDataOut__FirstTrack, align 4, !dbg !2393
  %194 = sub nsw i32 %192, %193, !dbg !2394
  store i32 %194, i32* %__cil_tmp98, align 4, !dbg !2395
  %195 = load i32, i32* %__cil_tmp98, align 4, !dbg !2396
  %196 = add nsw i32 %195, 1, !dbg !2397
  store i32 %196, i32* %tracksOnCd, align 4, !dbg !2398
  %197 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !2399
  %198 = load i32, i32* %TrackData__0, align 4, !dbg !2400
  %199 = sub nsw i32 %197, %198, !dbg !2401
  store i32 %199, i32* %tracksInBuffer, align 4, !dbg !2402
  %200 = load i32, i32* %tracksInBuffer, align 4, !dbg !2403
  %201 = load i32, i32* %tracksOnCd, align 4, !dbg !2405
  %202 = icmp slt i32 %200, %201, !dbg !2406
  br i1 %202, label %203, label %205, !dbg !2407

; <label>:203                                     ; preds = %191
  %204 = load i32, i32* %tracksInBuffer, align 4, !dbg !2408
  store i32 %204, i32* %tracksToReturn, align 4, !dbg !2410
  br label %207, !dbg !2411

; <label>:205                                     ; preds = %191
  %206 = load i32, i32* %tracksOnCd, align 4, !dbg !2412
  store i32 %206, i32* %tracksToReturn, align 4, !dbg !2414
  br label %207

; <label>:207                                     ; preds = %205, %203
  %208 = load i32, i32* %tracksInBuffer, align 4, !dbg !2415
  %209 = load i32, i32* %tracksOnCd, align 4, !dbg !2417
  %210 = icmp sgt i32 %208, %209, !dbg !2418
  br i1 %210, label %211, label %214, !dbg !2419

; <label>:211                                     ; preds = %207
  %212 = load i32, i32* %i, align 4, !dbg !2420
  %213 = add nsw i32 %212, 1, !dbg !2420
  store i32 %213, i32* %i, align 4, !dbg !2420
  br label %214, !dbg !2422

; <label>:214                                     ; preds = %211, %207
  br label %512, !dbg !2423

; <label>:215                                     ; preds = %55
  br label %216, !dbg !2423

; <label>:216                                     ; preds = %215, %60
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2424
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !2426
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !2427
  %217 = load i32, i32* %deviceExtension, align 4, !dbg !2428
  %218 = load i32, i32* %srb, align 4, !dbg !2429
  %219 = call i32 @SendSrbSynchronous(i32 %217, i32 %218, i32 0, i32 0), !dbg !2430
  store i32 %219, i32* %status, align 4, !dbg !2431
  %220 = load i32, i32* %status, align 4, !dbg !2432
  %221 = icmp sge i32 %220, 0, !dbg !2434
  br i1 %221, label %222, label %223, !dbg !2435

; <label>:222                                     ; preds = %216
  br label %223, !dbg !2436

; <label>:223                                     ; preds = %222, %216
  store i32 8, i32* %__cil_tmp99, align 4, !dbg !2438
  store i32 16384, i32* %__cil_tmp100, align 4, !dbg !2439
  store i32 131072, i32* %__cil_tmp101, align 4, !dbg !2440
  store i32 147456, i32* %__cil_tmp102, align 4, !dbg !2441
  store i32 147464, i32* %__cil_tmp103, align 4, !dbg !2442
  %224 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2443
  %225 = load i32, i32* %__cil_tmp103, align 4, !dbg !2444
  %226 = icmp eq i32 %224, %225, !dbg !2445
  br i1 %226, label %227, label %246, !dbg !2446

; <label>:227                                     ; preds = %223
  %228 = load i32, i32* %status, align 4, !dbg !2447
  %229 = sext i32 %228 to i64, !dbg !2449
  store i64 %229, i64* %__cil_tmp104, align 8, !dbg !2450
  %230 = load i64, i64* %__cil_tmp104, align 8, !dbg !2451
  %231 = icmp eq i64 %230, -2147483626, !dbg !2453
  br i1 %231, label %232, label %233, !dbg !2454

; <label>:232                                     ; preds = %227
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2455
  br label %233, !dbg !2457

; <label>:233                                     ; preds = %232, %227
  %234 = load i32, i32* %status, align 4, !dbg !2458
  store i32 %234, i32* @myStatus, align 4, !dbg !2459
  %235 = load i32, i32* %27, align 4, !dbg !2460
  %236 = bitcast i32* %19 to i8*, !dbg !2461
  call void @llvm.lifetime.start(i64 4, i8* %236), !dbg !2461
  %237 = bitcast i32* %20 to i8*, !dbg !2461
  call void @llvm.lifetime.start(i64 4, i8* %237), !dbg !2461
  store i32 %235, i32* %19, align 4, !dbg !2461
  store i32 0, i32* %20, align 4, !dbg !2461
  %238 = load i32, i32* @s, align 4, !dbg !2462
  %239 = load i32, i32* @NP, align 4, !dbg !2463
  %240 = icmp eq i32 %238, %239, !dbg !2464
  br i1 %240, label %IofCompleteRequest.exit2, label %241, !dbg !2465

; <label>:241                                     ; preds = %233
  call void (...) @__VERIFIER_error() #6, !dbg !2466
  unreachable, !dbg !2466

IofCompleteRequest.exit2:                         ; preds = %233
  %242 = load i32, i32* @DC, align 4, !dbg !2468
  store i32 %242, i32* @s, align 4, !dbg !2469
  %243 = bitcast i32* %19 to i8*, !dbg !2470
  call void @llvm.lifetime.end(i64 4, i8* %243), !dbg !2470
  %244 = bitcast i32* %20 to i8*, !dbg !2470
  call void @llvm.lifetime.end(i64 4, i8* %244), !dbg !2470
  %245 = load i32, i32* %status, align 4, !dbg !2471
  store i32 %245, i32* %25, !dbg !2472
  br label %544, !dbg !2472

; <label>:246                                     ; preds = %223
  %247 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__InputBufferLength, align 4, !dbg !2473
  %248 = load i32, i32* %sizeof__CDROM_PLAY_AUDIO_MSF, align 4, !dbg !2475
  %249 = icmp slt i32 %247, %248, !dbg !2476
  br i1 %249, label %250, label %251, !dbg !2477

; <label>:250                                     ; preds = %246
  store i32 -1073741820, i32* %status, align 4, !dbg !2478
  br label %512, !dbg !2480

; <label>:251                                     ; preds = %246
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !2481
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !2483
  %252 = load i32, i32* %deviceExtension, align 4, !dbg !2484
  %253 = load i32, i32* %srb, align 4, !dbg !2485
  %254 = call i32 @SendSrbSynchronous(i32 %252, i32 %253, i32 0, i32 0), !dbg !2486
  store i32 %254, i32* %status, align 4, !dbg !2487
  %255 = load i32, i32* %status, align 4, !dbg !2488
  %256 = icmp sge i32 %255, 0, !dbg !2490
  br i1 %256, label %257, label %258, !dbg !2491

; <label>:257                                     ; preds = %251
  br label %258, !dbg !2492

; <label>:258                                     ; preds = %257, %251
  br label %512, !dbg !2494

; <label>:259                                     ; preds = %65
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2495
  %260 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__InputBufferLength, align 4, !dbg !2496
  %261 = load i32, i32* %sizeof__CDROM_SEEK_AUDIO_MSF, align 4, !dbg !2498
  %262 = icmp slt i32 %260, %261, !dbg !2499
  br i1 %262, label %263, label %264, !dbg !2500

; <label>:263                                     ; preds = %259
  store i32 -1073741820, i32* %status, align 4, !dbg !2501
  br label %512, !dbg !2503

; <label>:264                                     ; preds = %259
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !2504
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !2506
  %265 = load i32, i32* %deviceExtension, align 4, !dbg !2507
  %266 = load i32, i32* %srb, align 4, !dbg !2508
  %267 = call i32 @SendSrbSynchronous(i32 %265, i32 %266, i32 0, i32 0), !dbg !2509
  store i32 %267, i32* %status, align 4, !dbg !2510
  %268 = load i32, i32* %status, align 4, !dbg !2511
  %269 = icmp slt i32 %268, 0, !dbg !2513
  br i1 %269, label %270, label %277, !dbg !2514

; <label>:270                                     ; preds = %264
  %271 = load i32, i32* %status, align 4, !dbg !2515
  %272 = sext i32 %271 to i64, !dbg !2518
  store i64 %272, i64* %__cil_tmp105, align 8, !dbg !2519
  %273 = load i64, i64* %__cil_tmp105, align 8, !dbg !2520
  %274 = icmp eq i64 %273, -1073741808, !dbg !2522
  br i1 %274, label %275, label %276, !dbg !2523

; <label>:275                                     ; preds = %270
  store i32 -1073741803, i32* %status, align 4, !dbg !2524
  br label %276, !dbg !2526

; <label>:276                                     ; preds = %275, %270
  br label %277, !dbg !2527

; <label>:277                                     ; preds = %276, %264
  br label %512, !dbg !2528

; <label>:278                                     ; preds = %70
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2529
  %279 = load i32, i32* %SubQPtr, align 4, !dbg !2530
  %280 = icmp eq i32 %279, 0, !dbg !2531
  br i1 %280, label %281, label %300, !dbg !2532

; <label>:281                                     ; preds = %278
  store i32 -1073741670, i32* %status, align 4, !dbg !2533
  %282 = load i32, i32* %status, align 4, !dbg !2534
  %283 = sext i32 %282 to i64, !dbg !2536
  store i64 %283, i64* %__cil_tmp106, align 8, !dbg !2537
  %284 = load i64, i64* %__cil_tmp106, align 8, !dbg !2538
  %285 = icmp eq i64 %284, -2147483626, !dbg !2540
  br i1 %285, label %286, label %287, !dbg !2541

; <label>:286                                     ; preds = %281
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2542
  br label %287, !dbg !2544

; <label>:287                                     ; preds = %286, %281
  %288 = load i32, i32* %status, align 4, !dbg !2545
  store i32 %288, i32* @myStatus, align 4, !dbg !2546
  %289 = load i32, i32* %27, align 4, !dbg !2547
  %290 = bitcast i32* %17 to i8*, !dbg !2548
  call void @llvm.lifetime.start(i64 4, i8* %290), !dbg !2548
  %291 = bitcast i32* %18 to i8*, !dbg !2548
  call void @llvm.lifetime.start(i64 4, i8* %291), !dbg !2548
  store i32 %289, i32* %17, align 4, !dbg !2548
  store i32 0, i32* %18, align 4, !dbg !2548
  %292 = load i32, i32* @s, align 4, !dbg !2549
  %293 = load i32, i32* @NP, align 4, !dbg !2550
  %294 = icmp eq i32 %292, %293, !dbg !2551
  br i1 %294, label %IofCompleteRequest.exit3, label %295, !dbg !2552

; <label>:295                                     ; preds = %287
  call void (...) @__VERIFIER_error() #6, !dbg !2553
  unreachable, !dbg !2553

IofCompleteRequest.exit3:                         ; preds = %287
  %296 = load i32, i32* @DC, align 4, !dbg !2555
  store i32 %296, i32* @s, align 4, !dbg !2556
  %297 = bitcast i32* %17 to i8*, !dbg !2557
  call void @llvm.lifetime.end(i64 4, i8* %297), !dbg !2557
  %298 = bitcast i32* %18 to i8*, !dbg !2557
  call void @llvm.lifetime.end(i64 4, i8* %298), !dbg !2557
  %299 = load i32, i32* %status, align 4, !dbg !2558
  store i32 %299, i32* %25, !dbg !2559
  br label %544, !dbg !2559

; <label>:300                                     ; preds = %278
  %301 = load i32, i32* %deviceExtension__Paused, align 4, !dbg !2560
  %302 = icmp eq i32 %301, 1, !dbg !2561
  br i1 %302, label %303, label %322, !dbg !2562

; <label>:303                                     ; preds = %300
  store i32 0, i32* %status, align 4, !dbg !2563
  %304 = load i32, i32* %status, align 4, !dbg !2564
  %305 = sext i32 %304 to i64, !dbg !2566
  store i64 %305, i64* %__cil_tmp107, align 8, !dbg !2567
  %306 = load i64, i64* %__cil_tmp107, align 8, !dbg !2568
  %307 = icmp eq i64 %306, -2147483626, !dbg !2570
  br i1 %307, label %308, label %309, !dbg !2571

; <label>:308                                     ; preds = %303
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2572
  br label %309, !dbg !2574

; <label>:309                                     ; preds = %308, %303
  %310 = load i32, i32* %status, align 4, !dbg !2575
  store i32 %310, i32* @myStatus, align 4, !dbg !2576
  %311 = load i32, i32* %27, align 4, !dbg !2577
  %312 = bitcast i32* %15 to i8*, !dbg !2578
  call void @llvm.lifetime.start(i64 4, i8* %312), !dbg !2578
  %313 = bitcast i32* %16 to i8*, !dbg !2578
  call void @llvm.lifetime.start(i64 4, i8* %313), !dbg !2578
  store i32 %311, i32* %15, align 4, !dbg !2578
  store i32 0, i32* %16, align 4, !dbg !2578
  %314 = load i32, i32* @s, align 4, !dbg !2579
  %315 = load i32, i32* @NP, align 4, !dbg !2580
  %316 = icmp eq i32 %314, %315, !dbg !2581
  br i1 %316, label %IofCompleteRequest.exit4, label %317, !dbg !2582

; <label>:317                                     ; preds = %309
  call void (...) @__VERIFIER_error() #6, !dbg !2583
  unreachable, !dbg !2583

IofCompleteRequest.exit4:                         ; preds = %309
  %318 = load i32, i32* @DC, align 4, !dbg !2585
  store i32 %318, i32* @s, align 4, !dbg !2586
  %319 = bitcast i32* %15 to i8*, !dbg !2587
  call void @llvm.lifetime.end(i64 4, i8* %319), !dbg !2587
  %320 = bitcast i32* %16 to i8*, !dbg !2587
  call void @llvm.lifetime.end(i64 4, i8* %320), !dbg !2587
  %321 = load i32, i32* %status, align 4, !dbg !2588
  store i32 %321, i32* %25, !dbg !2589
  br label %544, !dbg !2589

; <label>:322                                     ; preds = %300
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !2590
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !2592
  %323 = load i32, i32* %deviceExtension, align 4, !dbg !2593
  %324 = load i32, i32* %srb, align 4, !dbg !2594
  %325 = load i32, i32* %SubQPtr, align 4, !dbg !2595
  %326 = load i32, i32* %sizeof__SUB_Q_CHANNEL_DATA, align 4, !dbg !2596
  %327 = call i32 @SendSrbSynchronous(i32 %323, i32 %324, i32 %325, i32 %326), !dbg !2597
  store i32 %327, i32* %status, align 4, !dbg !2598
  %328 = load i32, i32* %status, align 4, !dbg !2599
  %329 = icmp slt i32 %328, 0, !dbg !2600
  br i1 %329, label %330, label %349, !dbg !2601

; <label>:330                                     ; preds = %322
  %331 = load i32, i32* %status, align 4, !dbg !2602
  %332 = sext i32 %331 to i64, !dbg !2604
  store i64 %332, i64* %__cil_tmp109, align 8, !dbg !2605
  %333 = load i64, i64* %__cil_tmp109, align 8, !dbg !2606
  %334 = icmp eq i64 %333, -2147483626, !dbg !2608
  br i1 %334, label %335, label %336, !dbg !2609

; <label>:335                                     ; preds = %330
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2610
  br label %336, !dbg !2612

; <label>:336                                     ; preds = %335, %330
  %337 = load i32, i32* %status, align 4, !dbg !2613
  store i32 %337, i32* @myStatus, align 4, !dbg !2614
  %338 = load i32, i32* %27, align 4, !dbg !2615
  %339 = bitcast i32* %13 to i8*, !dbg !2616
  call void @llvm.lifetime.start(i64 4, i8* %339), !dbg !2616
  %340 = bitcast i32* %14 to i8*, !dbg !2616
  call void @llvm.lifetime.start(i64 4, i8* %340), !dbg !2616
  store i32 %338, i32* %13, align 4, !dbg !2616
  store i32 0, i32* %14, align 4, !dbg !2616
  %341 = load i32, i32* @s, align 4, !dbg !2617
  %342 = load i32, i32* @NP, align 4, !dbg !2618
  %343 = icmp eq i32 %341, %342, !dbg !2619
  br i1 %343, label %IofCompleteRequest.exit5, label %344, !dbg !2620

; <label>:344                                     ; preds = %336
  call void (...) @__VERIFIER_error() #6, !dbg !2621
  unreachable, !dbg !2621

IofCompleteRequest.exit5:                         ; preds = %336
  %345 = load i32, i32* @DC, align 4, !dbg !2623
  store i32 %345, i32* @s, align 4, !dbg !2624
  %346 = bitcast i32* %13 to i8*, !dbg !2625
  call void @llvm.lifetime.end(i64 4, i8* %346), !dbg !2625
  %347 = bitcast i32* %14 to i8*, !dbg !2625
  call void @llvm.lifetime.end(i64 4, i8* %347), !dbg !2625
  %348 = load i32, i32* %status, align 4, !dbg !2626
  store i32 %348, i32* %25, !dbg !2627
  br label %544, !dbg !2627

; <label>:349                                     ; preds = %322
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !2628
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !2630
  %350 = load i32, i32* %deviceExtension, align 4, !dbg !2631
  %351 = load i32, i32* %srb, align 4, !dbg !2632
  %352 = call i32 @SendSrbSynchronous(i32 %350, i32 %351, i32 0, i32 0), !dbg !2633
  store i32 %352, i32* %status, align 4, !dbg !2634
  %353 = load i32, i32* %status, align 4, !dbg !2635
  %354 = icmp slt i32 %353, 0, !dbg !2636
  br i1 %354, label %355, label %374, !dbg !2637

; <label>:355                                     ; preds = %349
  %356 = load i32, i32* %status, align 4, !dbg !2638
  %357 = sext i32 %356 to i64, !dbg !2640
  store i64 %357, i64* %__cil_tmp111, align 8, !dbg !2641
  %358 = load i64, i64* %__cil_tmp111, align 8, !dbg !2642
  %359 = icmp eq i64 %358, -2147483626, !dbg !2644
  br i1 %359, label %360, label %361, !dbg !2645

; <label>:360                                     ; preds = %355
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2646
  br label %361, !dbg !2648

; <label>:361                                     ; preds = %360, %355
  %362 = load i32, i32* %status, align 4, !dbg !2649
  store i32 %362, i32* @myStatus, align 4, !dbg !2650
  %363 = load i32, i32* %27, align 4, !dbg !2651
  %364 = bitcast i32* %11 to i8*, !dbg !2652
  call void @llvm.lifetime.start(i64 4, i8* %364), !dbg !2652
  %365 = bitcast i32* %12 to i8*, !dbg !2652
  call void @llvm.lifetime.start(i64 4, i8* %365), !dbg !2652
  store i32 %363, i32* %11, align 4, !dbg !2652
  store i32 0, i32* %12, align 4, !dbg !2652
  %366 = load i32, i32* @s, align 4, !dbg !2653
  %367 = load i32, i32* @NP, align 4, !dbg !2654
  %368 = icmp eq i32 %366, %367, !dbg !2655
  br i1 %368, label %IofCompleteRequest.exit6, label %369, !dbg !2656

; <label>:369                                     ; preds = %361
  call void (...) @__VERIFIER_error() #6, !dbg !2657
  unreachable, !dbg !2657

IofCompleteRequest.exit6:                         ; preds = %361
  %370 = load i32, i32* @DC, align 4, !dbg !2659
  store i32 %370, i32* @s, align 4, !dbg !2660
  %371 = bitcast i32* %11 to i8*, !dbg !2661
  call void @llvm.lifetime.end(i64 4, i8* %371), !dbg !2661
  %372 = bitcast i32* %12 to i8*, !dbg !2661
  call void @llvm.lifetime.end(i64 4, i8* %372), !dbg !2661
  %373 = load i32, i32* %status, align 4, !dbg !2662
  store i32 %373, i32* %25, !dbg !2663
  br label %544, !dbg !2663

; <label>:374                                     ; preds = %349
  br label %512, !dbg !2664

; <label>:375                                     ; preds = %75
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2665
  %376 = load i32, i32* %deviceExtension__Paused, align 4, !dbg !2666
  %377 = icmp eq i32 %376, 0, !dbg !2667
  br i1 %377, label %378, label %397, !dbg !2668

; <label>:378                                     ; preds = %375
  store i32 -1073741823, i32* %status, align 4, !dbg !2669
  %379 = load i32, i32* %status, align 4, !dbg !2670
  %380 = sext i32 %379 to i64, !dbg !2672
  store i64 %380, i64* %__cil_tmp112, align 8, !dbg !2673
  %381 = load i64, i64* %__cil_tmp112, align 8, !dbg !2674
  %382 = icmp eq i64 %381, -2147483626, !dbg !2676
  br i1 %382, label %383, label %384, !dbg !2677

; <label>:383                                     ; preds = %378
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2678
  br label %384, !dbg !2680

; <label>:384                                     ; preds = %383, %378
  %385 = load i32, i32* %status, align 4, !dbg !2681
  store i32 %385, i32* @myStatus, align 4, !dbg !2682
  %386 = load i32, i32* %27, align 4, !dbg !2683
  %387 = bitcast i32* %9 to i8*, !dbg !2684
  call void @llvm.lifetime.start(i64 4, i8* %387), !dbg !2684
  %388 = bitcast i32* %10 to i8*, !dbg !2684
  call void @llvm.lifetime.start(i64 4, i8* %388), !dbg !2684
  store i32 %386, i32* %9, align 4, !dbg !2684
  store i32 0, i32* %10, align 4, !dbg !2684
  %389 = load i32, i32* @s, align 4, !dbg !2685
  %390 = load i32, i32* @NP, align 4, !dbg !2686
  %391 = icmp eq i32 %389, %390, !dbg !2687
  br i1 %391, label %IofCompleteRequest.exit7, label %392, !dbg !2688

; <label>:392                                     ; preds = %384
  call void (...) @__VERIFIER_error() #6, !dbg !2689
  unreachable, !dbg !2689

IofCompleteRequest.exit7:                         ; preds = %384
  %393 = load i32, i32* @DC, align 4, !dbg !2691
  store i32 %393, i32* @s, align 4, !dbg !2692
  %394 = bitcast i32* %9 to i8*, !dbg !2693
  call void @llvm.lifetime.end(i64 4, i8* %394), !dbg !2693
  %395 = bitcast i32* %10 to i8*, !dbg !2693
  call void @llvm.lifetime.end(i64 4, i8* %395), !dbg !2693
  %396 = load i32, i32* %status, align 4, !dbg !2694
  store i32 %396, i32* %25, !dbg !2695
  br label %544, !dbg !2695

; <label>:397                                     ; preds = %375
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !2696
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !2698
  %398 = load i32, i32* %deviceExtension, align 4, !dbg !2699
  %399 = load i32, i32* %srb, align 4, !dbg !2700
  %400 = call i32 @SendSrbSynchronous(i32 %398, i32 %399, i32 0, i32 0), !dbg !2701
  store i32 %400, i32* %status, align 4, !dbg !2702
  %401 = load i32, i32* %status, align 4, !dbg !2703
  %402 = icmp sge i32 %401, 0, !dbg !2705
  br i1 %402, label %403, label %404, !dbg !2706

; <label>:403                                     ; preds = %397
  store i32 1, i32* %deviceExtension__PlayActive, align 4, !dbg !2707
  store i32 0, i32* %deviceExtension__Paused, align 4, !dbg !2709
  br label %404, !dbg !2710

; <label>:404                                     ; preds = %403, %397
  br label %512, !dbg !2711

; <label>:405                                     ; preds = %80
  %406 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength, align 4, !dbg !2712
  %407 = load i32, i32* %sizeof__SUB_Q_CURRENT_POSITION, align 4, !dbg !2714
  %408 = icmp slt i32 %406, %407, !dbg !2715
  br i1 %408, label %409, label %410, !dbg !2716

; <label>:409                                     ; preds = %405
  store i32 -1073741789, i32* %status, align 4, !dbg !2717
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2719
  br label %512, !dbg !2720

; <label>:410                                     ; preds = %405
  %411 = load i32, i32* %SubQPtr___0, align 4, !dbg !2721
  %412 = icmp eq i32 %411, 0, !dbg !2722
  br i1 %412, label %413, label %432, !dbg !2723

; <label>:413                                     ; preds = %410
  store i32 -1073741670, i32* %status, align 4, !dbg !2724
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2725
  %414 = load i32, i32* %status, align 4, !dbg !2726
  %415 = sext i32 %414 to i64, !dbg !2728
  store i64 %415, i64* %__cil_tmp113, align 8, !dbg !2729
  %416 = load i64, i64* %__cil_tmp113, align 8, !dbg !2730
  %417 = icmp eq i64 %416, -2147483626, !dbg !2732
  br i1 %417, label %418, label %419, !dbg !2733

; <label>:418                                     ; preds = %413
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2734
  br label %419, !dbg !2736

; <label>:419                                     ; preds = %418, %413
  %420 = load i32, i32* %status, align 4, !dbg !2737
  store i32 %420, i32* @myStatus, align 4, !dbg !2738
  %421 = load i32, i32* %27, align 4, !dbg !2739
  %422 = bitcast i32* %7 to i8*, !dbg !2740
  call void @llvm.lifetime.start(i64 4, i8* %422), !dbg !2740
  %423 = bitcast i32* %8 to i8*, !dbg !2740
  call void @llvm.lifetime.start(i64 4, i8* %423), !dbg !2740
  store i32 %421, i32* %7, align 4, !dbg !2740
  store i32 0, i32* %8, align 4, !dbg !2740
  %424 = load i32, i32* @s, align 4, !dbg !2741
  %425 = load i32, i32* @NP, align 4, !dbg !2742
  %426 = icmp eq i32 %424, %425, !dbg !2743
  br i1 %426, label %IofCompleteRequest.exit8, label %427, !dbg !2744

; <label>:427                                     ; preds = %419
  call void (...) @__VERIFIER_error() #6, !dbg !2745
  unreachable, !dbg !2745

IofCompleteRequest.exit8:                         ; preds = %419
  %428 = load i32, i32* @DC, align 4, !dbg !2747
  store i32 %428, i32* @s, align 4, !dbg !2748
  %429 = bitcast i32* %7 to i8*, !dbg !2749
  call void @llvm.lifetime.end(i64 4, i8* %429), !dbg !2749
  %430 = bitcast i32* %8 to i8*, !dbg !2749
  call void @llvm.lifetime.end(i64 4, i8* %430), !dbg !2749
  %431 = load i32, i32* %status, align 4, !dbg !2750
  store i32 %431, i32* %25, !dbg !2751
  br label %544, !dbg !2751

; <label>:432                                     ; preds = %410
  %433 = load i32, i32* %userPtr__Format, align 4, !dbg !2752
  %434 = icmp ne i32 %433, 1, !dbg !2753
  br i1 %434, label %435, label %454, !dbg !2754

; <label>:435                                     ; preds = %432
  store i32 -1073741823, i32* %status, align 4, !dbg !2755
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2756
  %436 = load i32, i32* %status, align 4, !dbg !2757
  %437 = sext i32 %436 to i64, !dbg !2759
  store i64 %437, i64* %__cil_tmp114, align 8, !dbg !2760
  %438 = load i64, i64* %__cil_tmp114, align 8, !dbg !2761
  %439 = icmp eq i64 %438, -2147483626, !dbg !2763
  br i1 %439, label %440, label %441, !dbg !2764

; <label>:440                                     ; preds = %435
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2765
  br label %441, !dbg !2767

; <label>:441                                     ; preds = %440, %435
  %442 = load i32, i32* %status, align 4, !dbg !2768
  store i32 %442, i32* @myStatus, align 4, !dbg !2769
  %443 = load i32, i32* %27, align 4, !dbg !2770
  %444 = bitcast i32* %5 to i8*, !dbg !2771
  call void @llvm.lifetime.start(i64 4, i8* %444), !dbg !2771
  %445 = bitcast i32* %6 to i8*, !dbg !2771
  call void @llvm.lifetime.start(i64 4, i8* %445), !dbg !2771
  store i32 %443, i32* %5, align 4, !dbg !2771
  store i32 0, i32* %6, align 4, !dbg !2771
  %446 = load i32, i32* @s, align 4, !dbg !2772
  %447 = load i32, i32* @NP, align 4, !dbg !2773
  %448 = icmp eq i32 %446, %447, !dbg !2774
  br i1 %448, label %IofCompleteRequest.exit9, label %449, !dbg !2775

; <label>:449                                     ; preds = %441
  call void (...) @__VERIFIER_error() #6, !dbg !2776
  unreachable, !dbg !2776

IofCompleteRequest.exit9:                         ; preds = %441
  %450 = load i32, i32* @DC, align 4, !dbg !2778
  store i32 %450, i32* @s, align 4, !dbg !2779
  %451 = bitcast i32* %5 to i8*, !dbg !2780
  call void @llvm.lifetime.end(i64 4, i8* %451), !dbg !2780
  %452 = bitcast i32* %6 to i8*, !dbg !2780
  call void @llvm.lifetime.end(i64 4, i8* %452), !dbg !2780
  %453 = load i32, i32* %status, align 4, !dbg !2781
  store i32 %453, i32* %25, !dbg !2782
  br label %544, !dbg !2782

; <label>:454                                     ; preds = %432
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !2783
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !2785
  %455 = load i32, i32* %deviceExtension, align 4, !dbg !2786
  %456 = load i32, i32* %srb, align 4, !dbg !2787
  %457 = load i32, i32* %SubQPtr___0, align 4, !dbg !2788
  %458 = load i32, i32* %sizeof__SUB_Q_CHANNEL_DATA, align 4, !dbg !2789
  %459 = call i32 @SendSrbSynchronous(i32 %455, i32 %456, i32 %457, i32 %458), !dbg !2790
  store i32 %459, i32* %status, align 4, !dbg !2791
  %460 = load i32, i32* %status, align 4, !dbg !2792
  %461 = icmp sge i32 %460, 0, !dbg !2794
  br i1 %461, label %462, label %468, !dbg !2795

; <label>:462                                     ; preds = %454
  %463 = load i32, i32* %deviceExtension__Paused, align 4, !dbg !2796
  %464 = icmp eq i32 %463, 1, !dbg !2799
  br i1 %464, label %465, label %466, !dbg !2800

; <label>:465                                     ; preds = %462
  store i32 0, i32* %deviceExtension__PlayActive, align 4, !dbg !2801
  br label %466, !dbg !2803

; <label>:466                                     ; preds = %465, %462
  %467 = load i32, i32* %sizeof__SUB_Q_CURRENT_POSITION, align 4, !dbg !2804
  store i32 %467, i32* %Irp__IoStatus__Information, align 4, !dbg !2805
  br label %469, !dbg !2806

; <label>:468                                     ; preds = %454
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2807
  br label %469

; <label>:469                                     ; preds = %468, %466
  br label %512, !dbg !2809

; <label>:470                                     ; preds = %85
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2810
  store i32 10, i32* %srb__CdbLength, align 4, !dbg !2812
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !2813
  %471 = load i32, i32* %deviceExtension, align 4, !dbg !2814
  %472 = load i32, i32* %srb, align 4, !dbg !2815
  %473 = call i32 @SendSrbSynchronous(i32 %471, i32 %472, i32 0, i32 0), !dbg !2816
  store i32 %473, i32* %status, align 4, !dbg !2817
  br label %512, !dbg !2818

; <label>:474                                     ; preds = %90
  br label %475, !dbg !2818

; <label>:475                                     ; preds = %474, %95
  br label %476, !dbg !2818

; <label>:476                                     ; preds = %475, %100
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2819
  store i32 -1073741808, i32* %status, align 4, !dbg !2820
  br label %512, !dbg !2821

; <label>:477                                     ; preds = %105
  %478 = load i32, i32* %26, align 4, !dbg !2822
  %479 = call i32 @CdAudioIsPlayActive(i32 %478), !dbg !2824
  store i32 %479, i32* %tmp___1, align 4, !dbg !2825
  %480 = load i32, i32* %tmp___1, align 4, !dbg !2826
  %481 = icmp eq i32 %480, 1, !dbg !2827
  br i1 %481, label %482, label %501, !dbg !2828

; <label>:482                                     ; preds = %477
  store i32 1, i32* %deviceExtension__PlayActive, align 4, !dbg !2829
  store i32 0, i32* %status, align 4, !dbg !2830
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2831
  %483 = load i32, i32* %status, align 4, !dbg !2832
  %484 = sext i32 %483 to i64, !dbg !2834
  store i64 %484, i64* %__cil_tmp115, align 8, !dbg !2835
  %485 = load i64, i64* %__cil_tmp115, align 8, !dbg !2836
  %486 = icmp eq i64 %485, -2147483626, !dbg !2838
  br i1 %486, label %487, label %488, !dbg !2839

; <label>:487                                     ; preds = %482
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2840
  br label %488, !dbg !2842

; <label>:488                                     ; preds = %487, %482
  %489 = load i32, i32* %status, align 4, !dbg !2843
  store i32 %489, i32* @myStatus, align 4, !dbg !2844
  %490 = load i32, i32* %27, align 4, !dbg !2845
  %491 = bitcast i32* %3 to i8*, !dbg !2846
  call void @llvm.lifetime.start(i64 4, i8* %491), !dbg !2846
  %492 = bitcast i32* %4 to i8*, !dbg !2846
  call void @llvm.lifetime.start(i64 4, i8* %492), !dbg !2846
  store i32 %490, i32* %3, align 4, !dbg !2846
  store i32 0, i32* %4, align 4, !dbg !2846
  %493 = load i32, i32* @s, align 4, !dbg !2847
  %494 = load i32, i32* @NP, align 4, !dbg !2848
  %495 = icmp eq i32 %493, %494, !dbg !2849
  br i1 %495, label %IofCompleteRequest.exit10, label %496, !dbg !2850

; <label>:496                                     ; preds = %488
  call void (...) @__VERIFIER_error() #6, !dbg !2851
  unreachable, !dbg !2851

IofCompleteRequest.exit10:                        ; preds = %488
  %497 = load i32, i32* @DC, align 4, !dbg !2853
  store i32 %497, i32* @s, align 4, !dbg !2854
  %498 = bitcast i32* %3 to i8*, !dbg !2855
  call void @llvm.lifetime.end(i64 4, i8* %498), !dbg !2855
  %499 = bitcast i32* %4 to i8*, !dbg !2855
  call void @llvm.lifetime.end(i64 4, i8* %499), !dbg !2855
  %500 = load i32, i32* %status, align 4, !dbg !2856
  store i32 %500, i32* %25, !dbg !2857
  br label %544, !dbg !2857

; <label>:501                                     ; preds = %477
  store i32 0, i32* %deviceExtension__PlayActive, align 4, !dbg !2858
  %502 = load i32, i32* %26, align 4, !dbg !2861
  %503 = load i32, i32* %27, align 4, !dbg !2862
  %504 = call i32 @CdAudioSendToNextDriver(i32 %502, i32 %503), !dbg !2863
  store i32 %504, i32* %tmp___0, align 4, !dbg !2864
  %505 = load i32, i32* %tmp___0, align 4, !dbg !2865
  store i32 %505, i32* %25, !dbg !2866
  br label %544, !dbg !2866

; <label>:506                                     ; preds = %106
  %507 = load i32, i32* %26, align 4, !dbg !2867
  %508 = load i32, i32* %27, align 4, !dbg !2869
  %509 = call i32 @CdAudioSendToNextDriver(i32 %507, i32 %508), !dbg !2870
  store i32 %509, i32* %tmp___2, align 4, !dbg !2871
  %510 = load i32, i32* %tmp___2, align 4, !dbg !2872
  store i32 %510, i32* %25, !dbg !2873
  br label %544, !dbg !2873

; <label>:511                                     ; preds = %107
  br label %512, !dbg !2874

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
  %526 = load i32, i32* %status, align 4, !dbg !2875
  %527 = sext i32 %526 to i64, !dbg !2877
  store i64 %527, i64* %__cil_tmp116, align 8, !dbg !2878
  %528 = load i64, i64* %__cil_tmp116, align 8, !dbg !2879
  %529 = icmp eq i64 %528, -2147483626, !dbg !2881
  br i1 %529, label %530, label %531, !dbg !2882

; <label>:530                                     ; preds = %525
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2883
  br label %531, !dbg !2885

; <label>:531                                     ; preds = %530, %525
  %532 = load i32, i32* %status, align 4, !dbg !2886
  store i32 %532, i32* @myStatus, align 4, !dbg !2887
  %533 = load i32, i32* %27, align 4, !dbg !2888
  %534 = bitcast i32* %1 to i8*, !dbg !2889
  call void @llvm.lifetime.start(i64 4, i8* %534), !dbg !2889
  %535 = bitcast i32* %2 to i8*, !dbg !2889
  call void @llvm.lifetime.start(i64 4, i8* %535), !dbg !2889
  store i32 %533, i32* %1, align 4, !dbg !2889
  store i32 0, i32* %2, align 4, !dbg !2889
  %536 = load i32, i32* @s, align 4, !dbg !2890
  %537 = load i32, i32* @NP, align 4, !dbg !2891
  %538 = icmp eq i32 %536, %537, !dbg !2892
  br i1 %538, label %IofCompleteRequest.exit11, label %539, !dbg !2893

; <label>:539                                     ; preds = %531
  call void (...) @__VERIFIER_error() #6, !dbg !2894
  unreachable, !dbg !2894

IofCompleteRequest.exit11:                        ; preds = %531
  %540 = load i32, i32* @DC, align 4, !dbg !2896
  store i32 %540, i32* @s, align 4, !dbg !2897
  %541 = bitcast i32* %1 to i8*, !dbg !2898
  call void @llvm.lifetime.end(i64 4, i8* %541), !dbg !2898
  %542 = bitcast i32* %2 to i8*, !dbg !2898
  call void @llvm.lifetime.end(i64 4, i8* %542), !dbg !2898
  %543 = load i32, i32* %status, align 4, !dbg !2899
  store i32 %543, i32* %25, !dbg !2900
  br label %544, !dbg !2900

; <label>:544                                     ; preds = %IofCompleteRequest.exit11, %506, %501, %IofCompleteRequest.exit10, %IofCompleteRequest.exit9, %IofCompleteRequest.exit8, %IofCompleteRequest.exit7, %IofCompleteRequest.exit6, %IofCompleteRequest.exit5, %IofCompleteRequest.exit4, %IofCompleteRequest.exit3, %IofCompleteRequest.exit2, %IofCompleteRequest.exit1, %IofCompleteRequest.exit
  %545 = load i32, i32* %25, !dbg !2901
  ret i32 %545, !dbg !2901
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
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2902, metadata !104), !dbg !2903
  store i32 %Irp, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2904, metadata !104), !dbg !2905
  call void @llvm.dbg.declare(metadata i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, metadata !2906, metadata !104), !dbg !2907
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !2908
  store i32 %8, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2907
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !2909, metadata !104), !dbg !2910
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__PlayActive, metadata !2911, metadata !104), !dbg !2912
  call void @llvm.dbg.declare(metadata i32* %srb__CdbLength, metadata !2913, metadata !104), !dbg !2914
  call void @llvm.dbg.declare(metadata i32* %srb__TimeOutValue, metadata !2915, metadata !104), !dbg !2916
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !2917, metadata !104), !dbg !2918
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2919, metadata !104), !dbg !2920
  call void @llvm.dbg.declare(metadata i32* %deviceExtension, metadata !2921, metadata !104), !dbg !2922
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !2923
  store i32 %9, i32* %deviceExtension, align 4, !dbg !2922
  call void @llvm.dbg.declare(metadata i32* %srb, metadata !2924, metadata !104), !dbg !2925
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !2926
  store i32 %10, i32* %srb, align 4, !dbg !2925
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !2927, metadata !104), !dbg !2928
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp13, metadata !2929, metadata !104), !dbg !2930
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp14, metadata !2931, metadata !104), !dbg !2932
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp15, metadata !2933, metadata !104), !dbg !2934
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp16, metadata !2935, metadata !104), !dbg !2936
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp17, metadata !2937, metadata !104), !dbg !2938
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp18, metadata !2939, metadata !104), !dbg !2940
  store i32 8, i32* %__cil_tmp13, align 4, !dbg !2941
  store i32 16384, i32* %__cil_tmp14, align 4, !dbg !2944
  store i32 131072, i32* %__cil_tmp15, align 4, !dbg !2945
  store i32 147456, i32* %__cil_tmp16, align 4, !dbg !2946
  store i32 147464, i32* %__cil_tmp17, align 4, !dbg !2947
  %11 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !2948
  %12 = load i32, i32* %__cil_tmp17, align 4, !dbg !2950
  %13 = icmp eq i32 %11, %12, !dbg !2951
  call void @llvm.dbg.declare(metadata i32* %3, metadata !393, metadata !104), !dbg !2952
  call void @llvm.dbg.declare(metadata i32* %4, metadata !402, metadata !104), !dbg !2959
  call void @llvm.dbg.declare(metadata i32* %1, metadata !393, metadata !104), !dbg !2960
  call void @llvm.dbg.declare(metadata i32* %2, metadata !402, metadata !104), !dbg !2963
  br i1 %13, label %14, label %35, !dbg !2964

; <label>:14                                      ; preds = %0
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !2965
  store i32 0, i32* %deviceExtension__PlayActive, align 4, !dbg !2967
  store i32 12, i32* %srb__CdbLength, align 4, !dbg !2968
  store i32 10, i32* %srb__TimeOutValue, align 4, !dbg !2969
  %15 = load i32, i32* %deviceExtension, align 4, !dbg !2970
  %16 = load i32, i32* %srb, align 4, !dbg !2971
  %17 = call i32 @SendSrbSynchronous(i32 %15, i32 %16, i32 0, i32 0), !dbg !2972
  store i32 %17, i32* %status, align 4, !dbg !2973
  %18 = load i32, i32* %status, align 4, !dbg !2974
  %19 = icmp slt i32 %18, 0, !dbg !2975
  br i1 %19, label %20, label %34, !dbg !2976

; <label>:20                                      ; preds = %14
  %21 = load i32, i32* %status, align 4, !dbg !2977
  store i32 %21, i32* %Irp__IoStatus__Status, align 4, !dbg !2978
  %22 = load i32, i32* %status, align 4, !dbg !2979
  store i32 %22, i32* @myStatus, align 4, !dbg !2980
  %23 = load i32, i32* %7, align 4, !dbg !2981
  %24 = bitcast i32* %3 to i8*, !dbg !2982
  call void @llvm.lifetime.start(i64 4, i8* %24), !dbg !2982
  %25 = bitcast i32* %4 to i8*, !dbg !2982
  call void @llvm.lifetime.start(i64 4, i8* %25), !dbg !2982
  store i32 %23, i32* %3, align 4, !dbg !2982
  store i32 0, i32* %4, align 4, !dbg !2982
  %26 = load i32, i32* @s, align 4, !dbg !2983
  %27 = load i32, i32* @NP, align 4, !dbg !2984
  %28 = icmp eq i32 %26, %27, !dbg !2985
  br i1 %28, label %IofCompleteRequest.exit, label %29, !dbg !2986

; <label>:29                                      ; preds = %20
  call void (...) @__VERIFIER_error() #6, !dbg !2987
  unreachable, !dbg !2987

IofCompleteRequest.exit:                          ; preds = %20
  %30 = load i32, i32* @DC, align 4, !dbg !2989
  store i32 %30, i32* @s, align 4, !dbg !2990
  %31 = bitcast i32* %3 to i8*, !dbg !2991
  call void @llvm.lifetime.end(i64 4, i8* %31), !dbg !2991
  %32 = bitcast i32* %4 to i8*, !dbg !2991
  call void @llvm.lifetime.end(i64 4, i8* %32), !dbg !2991
  %33 = load i32, i32* %status, align 4, !dbg !2992
  store i32 %33, i32* %5, !dbg !2993
  br label %54, !dbg !2993

; <label>:34                                      ; preds = %14
  br label %40, !dbg !2994

; <label>:35                                      ; preds = %0
  %36 = load i32, i32* %6, align 4, !dbg !2995
  %37 = load i32, i32* %7, align 4, !dbg !2998
  %38 = call i32 @CdAudioSendToNextDriver(i32 %36, i32 %37), !dbg !2999
  store i32 %38, i32* %tmp, align 4, !dbg !3000
  %39 = load i32, i32* %tmp, align 4, !dbg !3001
  store i32 %39, i32* %5, !dbg !3002
  br label %54, !dbg !3002

; <label>:40                                      ; preds = %34
  %41 = load i32, i32* %status, align 4, !dbg !3003
  store i32 %41, i32* %Irp__IoStatus__Status, align 4, !dbg !3004
  %42 = load i32, i32* %status, align 4, !dbg !3005
  store i32 %42, i32* @myStatus, align 4, !dbg !3006
  %43 = load i32, i32* %7, align 4, !dbg !3007
  %44 = bitcast i32* %1 to i8*, !dbg !3008
  call void @llvm.lifetime.start(i64 4, i8* %44), !dbg !3008
  %45 = bitcast i32* %2 to i8*, !dbg !3008
  call void @llvm.lifetime.start(i64 4, i8* %45), !dbg !3008
  store i32 %43, i32* %1, align 4, !dbg !3008
  store i32 0, i32* %2, align 4, !dbg !3008
  %46 = load i32, i32* @s, align 4, !dbg !3009
  %47 = load i32, i32* @NP, align 4, !dbg !3010
  %48 = icmp eq i32 %46, %47, !dbg !3011
  br i1 %48, label %IofCompleteRequest.exit1, label %49, !dbg !3012

; <label>:49                                      ; preds = %40
  call void (...) @__VERIFIER_error() #6, !dbg !3013
  unreachable, !dbg !3013

IofCompleteRequest.exit1:                         ; preds = %40
  %50 = load i32, i32* @DC, align 4, !dbg !3015
  store i32 %50, i32* @s, align 4, !dbg !3016
  %51 = bitcast i32* %1 to i8*, !dbg !3017
  call void @llvm.lifetime.end(i64 4, i8* %51), !dbg !3017
  %52 = bitcast i32* %2 to i8*, !dbg !3017
  call void @llvm.lifetime.end(i64 4, i8* %52), !dbg !3017
  %53 = load i32, i32* %status, align 4, !dbg !3018
  store i32 %53, i32* %5, !dbg !3019
  br label %54, !dbg !3019

; <label>:54                                      ; preds = %IofCompleteRequest.exit1, %35, %IofCompleteRequest.exit
  %55 = load i32, i32* %5, !dbg !3020
  ret i32 %55, !dbg !3020
}

; Function Attrs: nounwind ssp uwtable
define void @HpCdrProcessLastSession(i32 %Toc) #0 {
  %1 = alloca i32, align 4
  %index = alloca i32, align 4
  store i32 %Toc, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3021, metadata !104), !dbg !3022
  call void @llvm.dbg.declare(metadata i32* %index, metadata !3023, metadata !104), !dbg !3024
  %2 = call i32 @__VERIFIER_nondet_int(), !dbg !3025
  store i32 %2, i32* %index, align 4, !dbg !3024
  %3 = load i32, i32* %index, align 4, !dbg !3026
  %4 = icmp ne i32 %3, 0, !dbg !3026
  br i1 %4, label %5, label %8, !dbg !3029

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %index, align 4, !dbg !3030
  %7 = add nsw i32 %6, -1, !dbg !3030
  store i32 %7, i32* %index, align 4, !dbg !3030
  br label %8, !dbg !3032

; <label>:8                                       ; preds = %5, %0
  ret void, !dbg !3033
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3034, metadata !104), !dbg !3035
  store i32 %Irp, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3036, metadata !104), !dbg !3037
  store i32 %Context, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3038, metadata !104), !dbg !3039
  call void @llvm.dbg.declare(metadata i32* %Irp__PendingReturned, metadata !3040, metadata !104), !dbg !3041
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !3042
  store i32 %5, i32* %Irp__PendingReturned, align 4, !dbg !3041
  call void @llvm.dbg.declare(metadata i32* %Irp__AssociatedIrp__SystemBuffer, metadata !3043, metadata !104), !dbg !3044
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !3045
  store i32 %6, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !3044
  %7 = load i32, i32* %Irp__PendingReturned, align 4, !dbg !3046
  %8 = icmp ne i32 %7, 0, !dbg !3046
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3021, metadata !104), !dbg !3049
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3023, metadata !104), !dbg !3054
  br i1 %8, label %9, label %15, !dbg !3055

; <label>:9                                       ; preds = %0
  %10 = load i32, i32* @pended, align 4, !dbg !3056
  %11 = icmp eq i32 %10, 0, !dbg !3059
  br i1 %11, label %12, label %13, !dbg !3060

; <label>:12                                      ; preds = %9
  store i32 1, i32* @pended, align 4, !dbg !3061
  br label %14, !dbg !3063

; <label>:13                                      ; preds = %9
  call void (...) @__VERIFIER_error() #6, !dbg !3064
  unreachable, !dbg !3064

errorFn.exit:                                     ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %errorFn.exit, %12
  br label %15, !dbg !3068

; <label>:15                                      ; preds = %14, %0
  %16 = load i32, i32* @myStatus, align 4, !dbg !3069
  %17 = icmp sge i32 %16, 0, !dbg !3070
  br i1 %17, label %18, label %30, !dbg !3071

; <label>:18                                      ; preds = %15
  %19 = load i32, i32* %Irp__AssociatedIrp__SystemBuffer, align 4, !dbg !3072
  %20 = bitcast i32* %1 to i8*, !dbg !3073
  call void @llvm.lifetime.start(i64 4, i8* %20), !dbg !3073
  %21 = bitcast i32* %index.i to i8*, !dbg !3073
  call void @llvm.lifetime.start(i64 4, i8* %21), !dbg !3073
  store i32 %19, i32* %1, align 4, !dbg !3073
  %22 = call i32 @__VERIFIER_nondet_int() #4, !dbg !3074
  store i32 %22, i32* %index.i, align 4, !dbg !3054
  %23 = load i32, i32* %index.i, align 4, !dbg !3075
  %24 = icmp ne i32 %23, 0, !dbg !3075
  br i1 %24, label %25, label %HpCdrProcessLastSession.exit, !dbg !3076

; <label>:25                                      ; preds = %18
  %26 = load i32, i32* %index.i, align 4, !dbg !3077
  %27 = add nsw i32 %26, -1, !dbg !3077
  store i32 %27, i32* %index.i, align 4, !dbg !3077
  br label %HpCdrProcessLastSession.exit, !dbg !3078

HpCdrProcessLastSession.exit:                     ; preds = %18, %25
  %28 = bitcast i32* %1 to i8*, !dbg !3079
  call void @llvm.lifetime.end(i64 4, i8* %28), !dbg !3079
  %29 = bitcast i32* %index.i to i8*, !dbg !3079
  call void @llvm.lifetime.end(i64 4, i8* %29), !dbg !3079
  br label %30, !dbg !3080

; <label>:30                                      ; preds = %HpCdrProcessLastSession.exit, %15
  %31 = load i32, i32* @myStatus, align 4, !dbg !3081
  ret i32 %31, !dbg !3082
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3083, metadata !104), !dbg !3084
  store i32 %Irp, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3085, metadata !104), !dbg !3086
  call void @llvm.dbg.declare(metadata i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, metadata !3087, metadata !104), !dbg !3088
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !3089
  store i32 %4, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !3088
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__TargetDeviceObject, metadata !3090, metadata !104), !dbg !3091
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !3092
  store i32 %5, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !3091
  call void @llvm.dbg.declare(metadata i32* %irpSp__Control, metadata !3093, metadata !104), !dbg !3094
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !3095, metadata !104), !dbg !3096
  call void @llvm.dbg.declare(metadata i32* %tmp___0, metadata !3097, metadata !104), !dbg !3098
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp8, metadata !3099, metadata !104), !dbg !3100
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp9, metadata !3101, metadata !104), !dbg !3102
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp10, metadata !3103, metadata !104), !dbg !3104
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp11, metadata !3105, metadata !104), !dbg !3106
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp12, metadata !3107, metadata !104), !dbg !3108
  store i32 56, i32* %__cil_tmp8, align 4, !dbg !3109
  store i32 16384, i32* %__cil_tmp9, align 4, !dbg !3112
  store i32 131072, i32* %__cil_tmp10, align 4, !dbg !3113
  store i32 147456, i32* %__cil_tmp11, align 4, !dbg !3114
  store i32 147512, i32* %__cil_tmp12, align 4, !dbg !3115
  %6 = load i32, i32* %currentIrpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !3116
  %7 = load i32, i32* %__cil_tmp12, align 4, !dbg !3118
  %8 = icmp eq i32 %6, %7, !dbg !3119
  br i1 %8, label %9, label %25, !dbg !3120

; <label>:9                                       ; preds = %0
  %10 = load i32, i32* @s, align 4, !dbg !3121
  %11 = load i32, i32* @NP, align 4, !dbg !3124
  %12 = icmp ne i32 %10, %11, !dbg !3125
  br i1 %12, label %13, label %14, !dbg !3126

; <label>:13                                      ; preds = %9
  call void (...) @__VERIFIER_error() #6, !dbg !3127
  unreachable, !dbg !3127

errorFn.exit:                                     ; No predecessors!
  br label %20, !dbg !3131

; <label>:14                                      ; preds = %9
  %15 = load i32, i32* @compRegistered, align 4, !dbg !3132
  %16 = icmp ne i32 %15, 0, !dbg !3135
  br i1 %16, label %17, label %18, !dbg !3136

; <label>:17                                      ; preds = %14
  call void (...) @__VERIFIER_error() #6, !dbg !3137
  unreachable, !dbg !3137

errorFn.exit1:                                    ; No predecessors!
  br label %19, !dbg !3141

; <label>:18                                      ; preds = %14
  store i32 1, i32* @compRegistered, align 4, !dbg !3142
  store i32 0, i32* @routine, align 4, !dbg !3144
  br label %19

; <label>:19                                      ; preds = %18, %errorFn.exit1
  br label %20

; <label>:20                                      ; preds = %19, %errorFn.exit
  store i32 224, i32* %irpSp__Control, align 4, !dbg !3145
  %21 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !3147
  %22 = load i32, i32* %3, align 4, !dbg !3148
  %23 = call i32 @IofCallDriver(i32 %21, i32 %22), !dbg !3149
  store i32 %23, i32* %tmp, align 4, !dbg !3150
  %24 = load i32, i32* %tmp, align 4, !dbg !3151
  store i32 %24, i32* %1, !dbg !3152
  br label %30, !dbg !3152

; <label>:25                                      ; preds = %0
  %26 = load i32, i32* %2, align 4, !dbg !3153
  %27 = load i32, i32* %3, align 4, !dbg !3156
  %28 = call i32 @CdAudioSendToNextDriver(i32 %26, i32 %27), !dbg !3157
  store i32 %28, i32* %tmp___0, align 4, !dbg !3158
  %29 = load i32, i32* %tmp___0, align 4, !dbg !3159
  store i32 %29, i32* %1, !dbg !3160
  br label %30, !dbg !3160

; <label>:30                                      ; preds = %25, %20
  %31 = load i32, i32* %1, !dbg !3161
  ret i32 %31, !dbg !3161
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
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3162, metadata !104), !dbg !3163
  store i32 %Irp, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3164, metadata !104), !dbg !3165
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__TargetDeviceObject, metadata !3166, metadata !104), !dbg !3167
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !3168
  store i32 %3, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !3167
  call void @llvm.dbg.declare(metadata i32* %event, metadata !3169, metadata !104), !dbg !3170
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !3171
  store i32 %4, i32* %event, align 4, !dbg !3170
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3172, metadata !104), !dbg !3173
  call void @llvm.dbg.declare(metadata i32* %irpSp__Control, metadata !3174, metadata !104), !dbg !3175
  %5 = load i32, i32* @s, align 4, !dbg !3176
  %6 = load i32, i32* @NP, align 4, !dbg !3179
  %7 = icmp ne i32 %5, %6, !dbg !3180
  br i1 %7, label %8, label %9, !dbg !3181

; <label>:8                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !3182
  unreachable, !dbg !3182

errorFn.exit:                                     ; No predecessors!
  br label %15, !dbg !3186

; <label>:9                                       ; preds = %0
  %10 = load i32, i32* @compRegistered, align 4, !dbg !3187
  %11 = icmp ne i32 %10, 0, !dbg !3190
  br i1 %11, label %12, label %13, !dbg !3191

; <label>:12                                      ; preds = %9
  call void (...) @__VERIFIER_error() #6, !dbg !3192
  unreachable, !dbg !3192

errorFn.exit1:                                    ; No predecessors!
  br label %14, !dbg !3196

; <label>:13                                      ; preds = %9
  store i32 1, i32* @compRegistered, align 4, !dbg !3197
  store i32 1, i32* @routine, align 4, !dbg !3199
  br label %14

; <label>:14                                      ; preds = %13, %errorFn.exit1
  br label %15

; <label>:15                                      ; preds = %14, %errorFn.exit
  store i32 224, i32* %irpSp__Control, align 4, !dbg !3200
  %16 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !3202
  %17 = load i32, i32* %2, align 4, !dbg !3203
  %18 = call i32 @IofCallDriver(i32 %16, i32 %17), !dbg !3204
  store i32 %18, i32* %status, align 4, !dbg !3205
  store i32 259, i32* %status, align 4, !dbg !3206
  %19 = load i32, i32* %status, align 4, !dbg !3207
  %20 = icmp ne i32 %19, 0, !dbg !3207
  br i1 %20, label %21, label %27, !dbg !3209

; <label>:21                                      ; preds = %15
  %22 = load i32, i32* %event, align 4, !dbg !3210
  %23 = load i32, i32* @Executive, align 4, !dbg !3213
  %24 = load i32, i32* @KernelMode, align 4, !dbg !3214
  %25 = call i32 @KeWaitForSingleObject(i32 %22, i32 %23, i32 %24, i32 0, i32 0), !dbg !3215
  %26 = load i32, i32* @myStatus, align 4, !dbg !3216
  store i32 %26, i32* %status, align 4, !dbg !3217
  br label %27, !dbg !3218

; <label>:27                                      ; preds = %21, %15
  %28 = load i32, i32* %status, align 4, !dbg !3219
  ret i32 %28, !dbg !3220
}

; Function Attrs: nounwind ssp uwtable
define void @CdAudioUnload(i32 %DriverObject) #0 {
  %1 = alloca i32, align 4
  store i32 %DriverObject, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3221, metadata !104), !dbg !3222
  ret void, !dbg !3223
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
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3225, metadata !104), !dbg !3226
  store i32 %Irp, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3227, metadata !104), !dbg !3228
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !3229, metadata !104), !dbg !3230
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !3231
  store i32 %3, i32* %Irp__CurrentLocation, align 4, !dbg !3230
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !3232, metadata !104), !dbg !3233
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !3234
  store i32 %4, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !3233
  call void @llvm.dbg.declare(metadata i32* %deviceExtension__TargetDeviceObject, metadata !3235, metadata !104), !dbg !3236
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !3237
  store i32 %5, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !3236
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !3238, metadata !104), !dbg !3239
  %6 = load i32, i32* @s, align 4, !dbg !3240
  %7 = load i32, i32* @NP, align 4, !dbg !3243
  %8 = icmp eq i32 %6, %7, !dbg !3244
  br i1 %8, label %9, label %11, !dbg !3245

; <label>:9                                       ; preds = %0
  %10 = load i32, i32* @SKIP1, align 4, !dbg !3246
  store i32 %10, i32* @s, align 4, !dbg !3248
  br label %12, !dbg !3249

; <label>:11                                      ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !3250
  unreachable, !dbg !3250

errorFn.exit:                                     ; No predecessors!
  br label %12

; <label>:12                                      ; preds = %errorFn.exit, %9
  %13 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !3254
  %14 = add nsw i32 %13, 1, !dbg !3254
  store i32 %14, i32* %Irp__CurrentLocation, align 4, !dbg !3254
  %15 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !3256
  %16 = add nsw i32 %15, 1, !dbg !3256
  store i32 %16, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !3256
  %17 = load i32, i32* %deviceExtension__TargetDeviceObject, align 4, !dbg !3257
  %18 = load i32, i32* %2, align 4, !dbg !3258
  %19 = call i32 @PoCallDriver(i32 %17, i32 %18), !dbg !3259
  store i32 %19, i32* %tmp, align 4, !dbg !3260
  %20 = load i32, i32* %tmp, align 4, !dbg !3261
  ret i32 %20, !dbg !3262
}

; Function Attrs: nounwind ssp uwtable
define void @stub_driver_init() #0 {
  %1 = load i32, i32* @NP, align 4, !dbg !3263
  store i32 %1, i32* @s, align 4, !dbg !3265
  store i32 0, i32* @customIrp, align 4, !dbg !3266
  %2 = load i32, i32* @customIrp, align 4, !dbg !3267
  store i32 %2, i32* @setEventCalled, align 4, !dbg !3268
  %3 = load i32, i32* @setEventCalled, align 4, !dbg !3269
  store i32 %3, i32* @lowerDriverReturn, align 4, !dbg !3270
  %4 = load i32, i32* @lowerDriverReturn, align 4, !dbg !3271
  store i32 %4, i32* @compRegistered, align 4, !dbg !3272
  %5 = load i32, i32* @compRegistered, align 4, !dbg !3273
  store i32 %5, i32* @compFptr, align 4, !dbg !3274
  %6 = load i32, i32* @compFptr, align 4, !dbg !3275
  store i32 %6, i32* @pended, align 4, !dbg !3276
  ret void, !dbg !3277
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
  call void @llvm.dbg.declare(metadata i32* %pirp__IoStatus__Status, metadata !3278, metadata !104), !dbg !3279
  call void @llvm.dbg.declare(metadata i32* %d, metadata !3280, metadata !104), !dbg !3281
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !3282
  store i32 %3, i32* %d, align 4, !dbg !3281
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3283, metadata !104), !dbg !3284
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !3285
  store i32 %4, i32* %status, align 4, !dbg !3284
  call void @llvm.dbg.declare(metadata i32* %irp, metadata !3286, metadata !104), !dbg !3287
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !3288
  store i32 %5, i32* %irp, align 4, !dbg !3287
  call void @llvm.dbg.declare(metadata i32* %we_should_unload, metadata !3289, metadata !104), !dbg !3290
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !3291
  store i32 %6, i32* %we_should_unload, align 4, !dbg !3290
  call void @llvm.dbg.declare(metadata i32* %irp_choice, metadata !3292, metadata !104), !dbg !3293
  %7 = call i32 @__VERIFIER_nondet_int(), !dbg !3294
  store i32 %7, i32* %irp_choice, align 4, !dbg !3293
  call void @llvm.dbg.declare(metadata i32* %devobj, metadata !3295, metadata !104), !dbg !3296
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !3297
  store i32 %8, i32* %devobj, align 4, !dbg !3296
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp9, metadata !3298, metadata !104), !dbg !3299
  store i32 0, i32* @s, align 4, !dbg !3300
  store i32 0, i32* @UNLOADED, align 4, !dbg !3303
  store i32 0, i32* @NP, align 4, !dbg !3304
  store i32 0, i32* @DC, align 4, !dbg !3305
  store i32 0, i32* @SKIP1, align 4, !dbg !3306
  store i32 0, i32* @SKIP2, align 4, !dbg !3307
  store i32 0, i32* @MPR1, align 4, !dbg !3308
  store i32 0, i32* @MPR3, align 4, !dbg !3309
  store i32 0, i32* @IPC, align 4, !dbg !3310
  store i32 0, i32* @pended, align 4, !dbg !3311
  store i32 0, i32* @compFptr, align 4, !dbg !3312
  store i32 0, i32* @compRegistered, align 4, !dbg !3313
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !3314
  store i32 0, i32* @setEventCalled, align 4, !dbg !3315
  store i32 0, i32* @customIrp, align 4, !dbg !3316
  store i32 0, i32* @routine, align 4, !dbg !3317
  store i32 0, i32* @myStatus, align 4, !dbg !3318
  store i32 0, i32* @pirp, align 4, !dbg !3319
  store i32 0, i32* @Executive, align 4, !dbg !3320
  store i32 5, i32* @Suspended, align 4, !dbg !3321
  store i32 0, i32* @KernelMode, align 4, !dbg !3322
  store i32 1, i32* @DeviceUsageTypePaging, align 4, !dbg !3323
  %9 = load i32, i32* %irp, align 4, !dbg !3324
  store i32 %9, i32* @pirp, align 4, !dbg !3325
  store i32 0, i32* @UNLOADED, align 4, !dbg !3326
  store i32 1, i32* @NP, align 4, !dbg !3328
  store i32 2, i32* @DC, align 4, !dbg !3329
  store i32 3, i32* @SKIP1, align 4, !dbg !3330
  store i32 4, i32* @SKIP2, align 4, !dbg !3331
  store i32 5, i32* @MPR1, align 4, !dbg !3332
  store i32 6, i32* @MPR3, align 4, !dbg !3333
  store i32 7, i32* @IPC, align 4, !dbg !3334
  %10 = load i32, i32* @UNLOADED, align 4, !dbg !3335
  store i32 %10, i32* @s, align 4, !dbg !3336
  store i32 0, i32* @pended, align 4, !dbg !3337
  store i32 0, i32* @compFptr, align 4, !dbg !3338
  store i32 0, i32* @compRegistered, align 4, !dbg !3339
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !3340
  store i32 0, i32* @setEventCalled, align 4, !dbg !3341
  store i32 0, i32* @customIrp, align 4, !dbg !3342
  %11 = load i32, i32* %status, align 4, !dbg !3343
  %12 = icmp sge i32 %11, 0, !dbg !3345
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3221, metadata !104), !dbg !3346
  br i1 %12, label %13, label %77, !dbg !3352

; <label>:13                                      ; preds = %0
  %14 = load i32, i32* @NP, align 4, !dbg !3353
  store i32 %14, i32* @s, align 4, !dbg !3354
  store i32 0, i32* @customIrp, align 4, !dbg !3355
  %15 = load i32, i32* @customIrp, align 4, !dbg !3356
  store i32 %15, i32* @setEventCalled, align 4, !dbg !3357
  %16 = load i32, i32* @setEventCalled, align 4, !dbg !3358
  store i32 %16, i32* @lowerDriverReturn, align 4, !dbg !3359
  %17 = load i32, i32* @lowerDriverReturn, align 4, !dbg !3360
  store i32 %17, i32* @compRegistered, align 4, !dbg !3361
  %18 = load i32, i32* @compRegistered, align 4, !dbg !3362
  store i32 %18, i32* @compFptr, align 4, !dbg !3363
  %19 = load i32, i32* @compFptr, align 4, !dbg !3364
  store i32 %19, i32* @pended, align 4, !dbg !3365
  store i32 0, i32* %pirp__IoStatus__Status, align 4, !dbg !3366
  store i32 0, i32* @myStatus, align 4, !dbg !3367
  %20 = load i32, i32* %irp_choice, align 4, !dbg !3368
  %21 = icmp eq i32 %20, 0, !dbg !3370
  br i1 %21, label %22, label %23, !dbg !3371

; <label>:22                                      ; preds = %13
  store i32 -1073741637, i32* %pirp__IoStatus__Status, align 4, !dbg !3372
  store i32 -1073741637, i32* @myStatus, align 4, !dbg !3374
  br label %23, !dbg !3375

; <label>:23                                      ; preds = %22, %13
  %24 = load i32, i32* @NP, align 4, !dbg !3376
  store i32 %24, i32* @s, align 4, !dbg !3379
  store i32 0, i32* @customIrp, align 4, !dbg !3380
  %25 = load i32, i32* @customIrp, align 4, !dbg !3381
  store i32 %25, i32* @setEventCalled, align 4, !dbg !3382
  %26 = load i32, i32* @setEventCalled, align 4, !dbg !3383
  store i32 %26, i32* @lowerDriverReturn, align 4, !dbg !3384
  %27 = load i32, i32* @lowerDriverReturn, align 4, !dbg !3385
  store i32 %27, i32* @compRegistered, align 4, !dbg !3386
  %28 = load i32, i32* @compRegistered, align 4, !dbg !3387
  store i32 %28, i32* @compFptr, align 4, !dbg !3388
  %29 = load i32, i32* @compFptr, align 4, !dbg !3389
  store i32 %29, i32* @pended, align 4, !dbg !3390
  %30 = load i32, i32* %status, align 4, !dbg !3391
  %31 = icmp slt i32 %30, 0, !dbg !3394
  br i1 %31, label %32, label %33, !dbg !3395

; <label>:32                                      ; preds = %23
  store i32 -1, i32* %2, !dbg !3396
  br label %158, !dbg !3396

; <label>:33                                      ; preds = %23
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_1, metadata !3398, metadata !104), !dbg !3399
  %34 = call i32 @__VERIFIER_nondet_int(), !dbg !3400
  store i32 %34, i32* %tmp_ndt_1, align 4, !dbg !3401
  %35 = load i32, i32* %tmp_ndt_1, align 4, !dbg !3402
  %36 = icmp eq i32 %35, 2, !dbg !3404
  br i1 %36, label %37, label %38, !dbg !3405

; <label>:37                                      ; preds = %33
  br label %51, !dbg !3406

; <label>:38                                      ; preds = %33
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_2, metadata !3408, metadata !104), !dbg !3410
  %39 = call i32 @__VERIFIER_nondet_int(), !dbg !3411
  store i32 %39, i32* %tmp_ndt_2, align 4, !dbg !3412
  %40 = load i32, i32* %tmp_ndt_2, align 4, !dbg !3413
  %41 = icmp eq i32 %40, 3, !dbg !3415
  br i1 %41, label %42, label %43, !dbg !3416

; <label>:42                                      ; preds = %38
  br label %55, !dbg !3417

; <label>:43                                      ; preds = %38
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_3, metadata !3419, metadata !104), !dbg !3421
  %44 = call i32 @__VERIFIER_nondet_int(), !dbg !3422
  store i32 %44, i32* %tmp_ndt_3, align 4, !dbg !3423
  %45 = load i32, i32* %tmp_ndt_3, align 4, !dbg !3424
  %46 = icmp eq i32 %45, 4, !dbg !3426
  br i1 %46, label %47, label %48, !dbg !3427

; <label>:47                                      ; preds = %43
  br label %59, !dbg !3428

; <label>:48                                      ; preds = %43
  br label %63, !dbg !3430
                                                  ; No predecessors!
  br i1 false, label %50, label %64, !dbg !3432

; <label>:50                                      ; preds = %49
  br label %51, !dbg !3433

; <label>:51                                      ; preds = %50, %37
  %52 = load i32, i32* %devobj, align 4, !dbg !3435
  %53 = load i32, i32* @pirp, align 4, !dbg !3438
  %54 = call i32 @CdAudioDeviceControl(i32 %52, i32 %53), !dbg !3439
  store i32 %54, i32* %status, align 4, !dbg !3440
  br label %65, !dbg !3441

; <label>:55                                      ; preds = %42
  %56 = load i32, i32* %devobj, align 4, !dbg !3442
  %57 = load i32, i32* @pirp, align 4, !dbg !3444
  %58 = call i32 @CdAudioPnp(i32 %56, i32 %57), !dbg !3445
  store i32 %58, i32* %status, align 4, !dbg !3446
  br label %65, !dbg !3447

; <label>:59                                      ; preds = %47
  %60 = load i32, i32* %devobj, align 4, !dbg !3448
  %61 = load i32, i32* @pirp, align 4, !dbg !3450
  %62 = call i32 @CdAudioPower(i32 %60, i32 %61), !dbg !3451
  store i32 %62, i32* %status, align 4, !dbg !3452
  br label %65, !dbg !3453

; <label>:63                                      ; preds = %48
  store i32 -1, i32* %2, !dbg !3454
  br label %158, !dbg !3454

; <label>:64                                      ; preds = %49
  br label %65, !dbg !3455

; <label>:65                                      ; preds = %64, %59, %55, %51
  br label %66

; <label>:66                                      ; preds = %65
  br label %67

; <label>:67                                      ; preds = %66
  br label %68

; <label>:68                                      ; preds = %67
  br label %69

; <label>:69                                      ; preds = %68
  %70 = load i32, i32* %we_should_unload, align 4, !dbg !3456
  %71 = icmp ne i32 %70, 0, !dbg !3456
  br i1 %71, label %72, label %76, !dbg !3457

; <label>:72                                      ; preds = %69
  %73 = load i32, i32* %d, align 4, !dbg !3458
  %74 = bitcast i32* %1 to i8*, !dbg !3459
  call void @llvm.lifetime.start(i64 4, i8* %74), !dbg !3459
  store i32 %73, i32* %1, align 4, !dbg !3459
  %75 = bitcast i32* %1 to i8*, !dbg !3460
  call void @llvm.lifetime.end(i64 4, i8* %75), !dbg !3460
  br label %76, !dbg !3461

; <label>:76                                      ; preds = %72, %69
  br label %77, !dbg !3462

; <label>:77                                      ; preds = %76, %0
  %78 = load i32, i32* @pended, align 4, !dbg !3463
  %79 = icmp eq i32 %78, 1, !dbg !3465
  br i1 %79, label %80, label %88, !dbg !3466

; <label>:80                                      ; preds = %77
  %81 = load i32, i32* @s, align 4, !dbg !3467
  %82 = load i32, i32* @NP, align 4, !dbg !3470
  %83 = icmp eq i32 %81, %82, !dbg !3471
  br i1 %83, label %84, label %86, !dbg !3472

; <label>:84                                      ; preds = %80
  %85 = load i32, i32* @NP, align 4, !dbg !3473
  store i32 %85, i32* @s, align 4, !dbg !3475
  br label %87, !dbg !3476

; <label>:86                                      ; preds = %80
  br label %89, !dbg !3477

; <label>:87                                      ; preds = %84
  br label %156, !dbg !3479

; <label>:88                                      ; preds = %77
  br label %89, !dbg !3480

; <label>:89                                      ; preds = %88, %86
  %90 = load i32, i32* @pended, align 4, !dbg !3481
  %91 = icmp eq i32 %90, 1, !dbg !3484
  br i1 %91, label %92, label %100, !dbg !3485

; <label>:92                                      ; preds = %89
  %93 = load i32, i32* @s, align 4, !dbg !3486
  %94 = load i32, i32* @MPR3, align 4, !dbg !3489
  %95 = icmp eq i32 %93, %94, !dbg !3490
  br i1 %95, label %96, label %98, !dbg !3491

; <label>:96                                      ; preds = %92
  %97 = load i32, i32* @MPR3, align 4, !dbg !3492
  store i32 %97, i32* @s, align 4, !dbg !3494
  br label %99, !dbg !3495

; <label>:98                                      ; preds = %92
  br label %101, !dbg !3496

; <label>:99                                      ; preds = %96
  br label %155, !dbg !3498

; <label>:100                                     ; preds = %89
  br label %101, !dbg !3499

; <label>:101                                     ; preds = %100, %98
  %102 = load i32, i32* @s, align 4, !dbg !3500
  %103 = load i32, i32* @UNLOADED, align 4, !dbg !3503
  %104 = icmp ne i32 %102, %103, !dbg !3504
  br i1 %104, label %105, label %154, !dbg !3505

; <label>:105                                     ; preds = %101
  %106 = load i32, i32* %status, align 4, !dbg !3506
  %107 = icmp ne i32 %106, -1, !dbg !3509
  br i1 %107, label %108, label %153, !dbg !3510

; <label>:108                                     ; preds = %105
  %109 = load i32, i32* @s, align 4, !dbg !3511
  %110 = load i32, i32* @SKIP2, align 4, !dbg !3514
  %111 = icmp ne i32 %109, %110, !dbg !3515
  br i1 %111, label %112, label %125, !dbg !3516

; <label>:112                                     ; preds = %108
  %113 = load i32, i32* @s, align 4, !dbg !3517
  %114 = load i32, i32* @IPC, align 4, !dbg !3520
  %115 = icmp ne i32 %113, %114, !dbg !3521
  br i1 %115, label %116, label %123, !dbg !3522

; <label>:116                                     ; preds = %112
  %117 = load i32, i32* @s, align 4, !dbg !3523
  %118 = load i32, i32* @DC, align 4, !dbg !3526
  %119 = icmp ne i32 %117, %118, !dbg !3527
  br i1 %119, label %120, label %121, !dbg !3528

; <label>:120                                     ; preds = %116
  call void (...) @__VERIFIER_error() #6, !dbg !3529
  unreachable, !dbg !3529

errorFn.exit3:                                    ; No predecessors!
  br label %122, !dbg !3533

; <label>:121                                     ; preds = %116
  br label %126, !dbg !3534

; <label>:122                                     ; preds = %errorFn.exit3
  br label %124, !dbg !3536

; <label>:123                                     ; preds = %112
  br label %126, !dbg !3537

; <label>:124                                     ; preds = %122
  br label %152, !dbg !3539

; <label>:125                                     ; preds = %108
  br label %126, !dbg !3540

; <label>:126                                     ; preds = %125, %123, %121
  %127 = load i32, i32* @pended, align 4, !dbg !3541
  %128 = icmp ne i32 %127, 1, !dbg !3544
  br i1 %128, label %129, label %145, !dbg !3545

; <label>:129                                     ; preds = %126
  %130 = load i32, i32* @s, align 4, !dbg !3546
  %131 = load i32, i32* @DC, align 4, !dbg !3549
  %132 = icmp eq i32 %130, %131, !dbg !3550
  br i1 %132, label %133, label %138, !dbg !3551

; <label>:133                                     ; preds = %129
  %134 = load i32, i32* %status, align 4, !dbg !3552
  %135 = icmp eq i32 %134, 259, !dbg !3555
  br i1 %135, label %136, label %137, !dbg !3556

; <label>:136                                     ; preds = %133
  call void (...) @__VERIFIER_error() #6, !dbg !3557
  unreachable, !dbg !3557

errorFn.exit2:                                    ; No predecessors!
  br label %137, !dbg !3560

; <label>:137                                     ; preds = %errorFn.exit2, %133
  br label %144, !dbg !3561

; <label>:138                                     ; preds = %129
  %139 = load i32, i32* %status, align 4, !dbg !3562
  %140 = load i32, i32* @lowerDriverReturn, align 4, !dbg !3565
  %141 = icmp ne i32 %139, %140, !dbg !3566
  br i1 %141, label %142, label %143, !dbg !3567

; <label>:142                                     ; preds = %138
  call void (...) @__VERIFIER_error() #6, !dbg !3568
  unreachable, !dbg !3568

errorFn.exit1:                                    ; No predecessors!
  br label %143, !dbg !3571

; <label>:143                                     ; preds = %errorFn.exit1, %138
  br label %144

; <label>:144                                     ; preds = %143, %137
  br label %151, !dbg !3572

; <label>:145                                     ; preds = %126
  %146 = load i32, i32* %status, align 4, !dbg !3573
  %147 = icmp ne i32 %146, 259, !dbg !3576
  br i1 %147, label %148, label %149, !dbg !3577

; <label>:148                                     ; preds = %145
  call void (...) @__VERIFIER_error() #6, !dbg !3578
  unreachable, !dbg !3578

errorFn.exit:                                     ; No predecessors!
  br label %150, !dbg !3582

; <label>:149                                     ; preds = %145
  br label %150

; <label>:150                                     ; preds = %149, %errorFn.exit
  br label %151

; <label>:151                                     ; preds = %150, %144
  br label %152

; <label>:152                                     ; preds = %151, %124
  br label %153, !dbg !3583

; <label>:153                                     ; preds = %152, %105
  br label %154, !dbg !3584

; <label>:154                                     ; preds = %153, %101
  br label %155

; <label>:155                                     ; preds = %154, %99
  br label %156

; <label>:156                                     ; preds = %155, %87
  %157 = load i32, i32* %status, align 4, !dbg !3585
  store i32 %157, i32* %2, !dbg !3586
  br label %158, !dbg !3586

; <label>:158                                     ; preds = %156, %63, %32
  %159 = load i32, i32* %2, !dbg !3587
  ret i32 %159, !dbg !3587
}

; Function Attrs: nounwind ssp uwtable
define void @stubMoreProcessingRequired() #0 {
  %1 = load i32, i32* @s, align 4, !dbg !3588
  %2 = load i32, i32* @NP, align 4, !dbg !3591
  %3 = icmp eq i32 %1, %2, !dbg !3592
  br i1 %3, label %4, label %6, !dbg !3593

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* @MPR1, align 4, !dbg !3594
  store i32 %5, i32* @s, align 4, !dbg !3596
  br label %7, !dbg !3597

; <label>:6                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !3598
  unreachable, !dbg !3598

errorFn.exit:                                     ; No predecessors!
  br label %7

; <label>:7                                       ; preds = %errorFn.exit, %4
  ret void, !dbg !3602
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
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3603, metadata !104), !dbg !3604
  store i32 %Irp, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3605, metadata !104), !dbg !3606
  call void @llvm.dbg.declare(metadata i32* %Irp__PendingReturned, metadata !3607, metadata !104), !dbg !3608
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !3609
  store i32 %9, i32* %Irp__PendingReturned, align 4, !dbg !3608
  call void @llvm.dbg.declare(metadata i32* %returnVal2, metadata !3610, metadata !104), !dbg !3611
  call void @llvm.dbg.declare(metadata i32* %compRetStatus, metadata !3612, metadata !104), !dbg !3613
  call void @llvm.dbg.declare(metadata i32* %lcontext, metadata !3614, metadata !104), !dbg !3615
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !3616
  store i32 %10, i32* %lcontext, align 4, !dbg !3615
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp8, metadata !3617, metadata !104), !dbg !3618
  %11 = load i32, i32* @compRegistered, align 4, !dbg !3619
  %12 = icmp ne i32 %11, 0, !dbg !3619
  call void @llvm.dbg.declare(metadata i32* %1, metadata !203, metadata !104), !dbg !3622
  call void @llvm.dbg.declare(metadata i32* %2, metadata !205, metadata !104), !dbg !3631
  call void @llvm.dbg.declare(metadata i32* %3, metadata !207, metadata !104), !dbg !3632
  call void @llvm.dbg.declare(metadata i32* %l.i.i, metadata !209, metadata !104), !dbg !3633
  call void @llvm.dbg.declare(metadata i32* %4, metadata !186, metadata !104), !dbg !3634
  call void @llvm.dbg.declare(metadata i32* %5, metadata !188, metadata !104), !dbg !3635
  call void @llvm.dbg.declare(metadata i32* %6, metadata !190, metadata !104), !dbg !3636
  br i1 %12, label %13, label %58, !dbg !3637

; <label>:13                                      ; preds = %0
  %14 = load i32, i32* @routine, align 4, !dbg !3638
  %15 = icmp eq i32 %14, 0, !dbg !3639
  br i1 %15, label %16, label %21, !dbg !3640

; <label>:16                                      ; preds = %13
  %17 = load i32, i32* %7, align 4, !dbg !3641
  %18 = load i32, i32* %8, align 4, !dbg !3644
  %19 = load i32, i32* %lcontext, align 4, !dbg !3645
  %20 = call i32 @HPCdrCompletion(i32 %17, i32 %18, i32 %19), !dbg !3646
  store i32 %20, i32* %compRetStatus, align 4, !dbg !3647
  br label %46, !dbg !3648

; <label>:21                                      ; preds = %13
  %22 = load i32, i32* @routine, align 4, !dbg !3649
  %23 = icmp eq i32 %22, 1, !dbg !3650
  br i1 %23, label %24, label %45, !dbg !3651

; <label>:24                                      ; preds = %21
  %25 = load i32, i32* %7, align 4, !dbg !3652
  %26 = load i32, i32* %8, align 4, !dbg !3653
  %27 = load i32, i32* %lcontext, align 4, !dbg !3654
  %28 = bitcast i32* %4 to i8*, !dbg !3655
  call void @llvm.lifetime.start(i64 4, i8* %28), !dbg !3655
  %29 = bitcast i32* %5 to i8*, !dbg !3655
  call void @llvm.lifetime.start(i64 4, i8* %29), !dbg !3655
  %30 = bitcast i32* %6 to i8*, !dbg !3655
  call void @llvm.lifetime.start(i64 4, i8* %30), !dbg !3655
  store i32 %25, i32* %4, align 4, !dbg !3655
  store i32 %26, i32* %5, align 4, !dbg !3655
  store i32 %27, i32* %6, align 4, !dbg !3655
  %31 = load i32, i32* %6, align 4, !dbg !3656
  %32 = bitcast i32* %1 to i8*, !dbg !3657
  call void @llvm.lifetime.start(i64 4, i8* %32) #4, !dbg !3657
  %33 = bitcast i32* %2 to i8*, !dbg !3657
  call void @llvm.lifetime.start(i64 4, i8* %33) #4, !dbg !3657
  %34 = bitcast i32* %3 to i8*, !dbg !3657
  call void @llvm.lifetime.start(i64 4, i8* %34) #4, !dbg !3657
  %35 = bitcast i32* %l.i.i to i8*, !dbg !3657
  call void @llvm.lifetime.start(i64 4, i8* %35) #4, !dbg !3657
  store i32 %31, i32* %1, align 4, !dbg !3657
  store i32 0, i32* %2, align 4, !dbg !3657
  store i32 0, i32* %3, align 4, !dbg !3657
  %36 = call i32 @__VERIFIER_nondet_int() #4, !dbg !3658
  store i32 %36, i32* %l.i.i, align 4, !dbg !3633
  store i32 1, i32* @setEventCalled, align 4, !dbg !3659
  %37 = load i32, i32* %l.i.i, align 4, !dbg !3660
  %38 = bitcast i32* %1 to i8*, !dbg !3661
  call void @llvm.lifetime.end(i64 4, i8* %38) #4, !dbg !3661
  %39 = bitcast i32* %2 to i8*, !dbg !3661
  call void @llvm.lifetime.end(i64 4, i8* %39) #4, !dbg !3661
  %40 = bitcast i32* %3 to i8*, !dbg !3661
  call void @llvm.lifetime.end(i64 4, i8* %40) #4, !dbg !3661
  %41 = bitcast i32* %l.i.i to i8*, !dbg !3661
  call void @llvm.lifetime.end(i64 4, i8* %41) #4, !dbg !3661
  %42 = bitcast i32* %4 to i8*, !dbg !3662
  call void @llvm.lifetime.end(i64 4, i8* %42), !dbg !3662
  %43 = bitcast i32* %5 to i8*, !dbg !3662
  call void @llvm.lifetime.end(i64 4, i8* %43), !dbg !3662
  %44 = bitcast i32* %6 to i8*, !dbg !3662
  call void @llvm.lifetime.end(i64 4, i8* %44), !dbg !3662
  store i32 -1073741802, i32* %compRetStatus, align 4, !dbg !3663
  br label %45, !dbg !3664

; <label>:45                                      ; preds = %24, %21
  br label %46

; <label>:46                                      ; preds = %45, %16
  %47 = load i32, i32* %compRetStatus, align 4, !dbg !3665
  %48 = sext i32 %47 to i64, !dbg !3667
  store i64 %48, i64* %__cil_tmp8, align 8, !dbg !3668
  %49 = load i64, i64* %__cil_tmp8, align 8, !dbg !3669
  %50 = icmp eq i64 %49, -1073741802, !dbg !3671
  br i1 %50, label %51, label %57, !dbg !3672

; <label>:51                                      ; preds = %46
  %52 = load i32, i32* @s, align 4, !dbg !3673
  %53 = load i32, i32* @NP, align 4, !dbg !3677
  %54 = icmp eq i32 %52, %53, !dbg !3678
  br i1 %54, label %stubMoreProcessingRequired.exit, label %55, !dbg !3679

; <label>:55                                      ; preds = %51
  call void (...) @__VERIFIER_error() #6, !dbg !3680
  unreachable, !dbg !3680

stubMoreProcessingRequired.exit:                  ; preds = %51
  %56 = load i32, i32* @MPR1, align 4, !dbg !3682
  store i32 %56, i32* @s, align 4, !dbg !3683
  br label %57, !dbg !3684

; <label>:57                                      ; preds = %stubMoreProcessingRequired.exit, %46
  br label %58, !dbg !3685

; <label>:58                                      ; preds = %57, %0
  %59 = load i32, i32* %Irp__PendingReturned, align 4, !dbg !3686
  %60 = icmp ne i32 %59, 0, !dbg !3686
  br i1 %60, label %61, label %62, !dbg !3688

; <label>:61                                      ; preds = %58
  store i32 259, i32* %returnVal2, align 4, !dbg !3689
  br label %83, !dbg !3691

; <label>:62                                      ; preds = %58
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_4, metadata !3692, metadata !104), !dbg !3694
  %63 = call i32 @__VERIFIER_nondet_int(), !dbg !3695
  store i32 %63, i32* %tmp_ndt_4, align 4, !dbg !3696
  %64 = load i32, i32* %tmp_ndt_4, align 4, !dbg !3697
  %65 = icmp eq i32 %64, 0, !dbg !3699
  br i1 %65, label %66, label %67, !dbg !3700

; <label>:66                                      ; preds = %62
  br label %75, !dbg !3701

; <label>:67                                      ; preds = %62
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_5, metadata !3703, metadata !104), !dbg !3705
  %68 = call i32 @__VERIFIER_nondet_int(), !dbg !3706
  store i32 %68, i32* %tmp_ndt_5, align 4, !dbg !3707
  %69 = load i32, i32* %tmp_ndt_5, align 4, !dbg !3708
  %70 = icmp eq i32 %69, 1, !dbg !3710
  br i1 %70, label %71, label %72, !dbg !3711

; <label>:71                                      ; preds = %67
  br label %76, !dbg !3712

; <label>:72                                      ; preds = %67
  br label %77, !dbg !3714
                                                  ; No predecessors!
  br i1 false, label %74, label %78, !dbg !3716

; <label>:74                                      ; preds = %73
  br label %75, !dbg !3717

; <label>:75                                      ; preds = %74, %66
  store i32 0, i32* %returnVal2, align 4, !dbg !3719
  br label %79, !dbg !3721

; <label>:76                                      ; preds = %71
  store i32 -1073741823, i32* %returnVal2, align 4, !dbg !3722
  br label %79, !dbg !3723

; <label>:77                                      ; preds = %72
  store i32 259, i32* %returnVal2, align 4, !dbg !3724
  br label %79, !dbg !3725

; <label>:78                                      ; preds = %73
  br label %79, !dbg !3726

; <label>:79                                      ; preds = %78, %77, %76, %75
  br label %80

; <label>:80                                      ; preds = %79
  br label %81

; <label>:81                                      ; preds = %80
  br label %82

; <label>:82                                      ; preds = %81
  br label %83

; <label>:83                                      ; preds = %82, %61
  %84 = load i32, i32* @s, align 4, !dbg !3727
  %85 = load i32, i32* @NP, align 4, !dbg !3729
  %86 = icmp eq i32 %84, %85, !dbg !3730
  br i1 %86, label %87, label %90, !dbg !3731

; <label>:87                                      ; preds = %83
  %88 = load i32, i32* @IPC, align 4, !dbg !3732
  store i32 %88, i32* @s, align 4, !dbg !3734
  %89 = load i32, i32* %returnVal2, align 4, !dbg !3735
  store i32 %89, i32* @lowerDriverReturn, align 4, !dbg !3736
  br label %114, !dbg !3737

; <label>:90                                      ; preds = %83
  %91 = load i32, i32* @s, align 4, !dbg !3738
  %92 = load i32, i32* @MPR1, align 4, !dbg !3741
  %93 = icmp eq i32 %91, %92, !dbg !3742
  br i1 %93, label %94, label %104, !dbg !3743

; <label>:94                                      ; preds = %90
  %95 = load i32, i32* %returnVal2, align 4, !dbg !3744
  %96 = icmp eq i32 %95, 259, !dbg !3747
  br i1 %96, label %97, label %100, !dbg !3748

; <label>:97                                      ; preds = %94
  %98 = load i32, i32* @MPR3, align 4, !dbg !3749
  store i32 %98, i32* @s, align 4, !dbg !3751
  %99 = load i32, i32* %returnVal2, align 4, !dbg !3752
  store i32 %99, i32* @lowerDriverReturn, align 4, !dbg !3753
  br label %103, !dbg !3754

; <label>:100                                     ; preds = %94
  %101 = load i32, i32* @NP, align 4, !dbg !3755
  store i32 %101, i32* @s, align 4, !dbg !3757
  %102 = load i32, i32* %returnVal2, align 4, !dbg !3758
  store i32 %102, i32* @lowerDriverReturn, align 4, !dbg !3759
  br label %103

; <label>:103                                     ; preds = %100, %97
  br label %113, !dbg !3760

; <label>:104                                     ; preds = %90
  %105 = load i32, i32* @s, align 4, !dbg !3761
  %106 = load i32, i32* @SKIP1, align 4, !dbg !3764
  %107 = icmp eq i32 %105, %106, !dbg !3765
  br i1 %107, label %108, label %111, !dbg !3766

; <label>:108                                     ; preds = %104
  %109 = load i32, i32* @SKIP2, align 4, !dbg !3767
  store i32 %109, i32* @s, align 4, !dbg !3769
  %110 = load i32, i32* %returnVal2, align 4, !dbg !3770
  store i32 %110, i32* @lowerDriverReturn, align 4, !dbg !3771
  br label %112, !dbg !3772

; <label>:111                                     ; preds = %104
  call void (...) @__VERIFIER_error() #6, !dbg !3773
  unreachable, !dbg !3773

errorFn.exit:                                     ; No predecessors!
  br label %112

; <label>:112                                     ; preds = %errorFn.exit, %108
  br label %113

; <label>:113                                     ; preds = %112, %103
  br label %114

; <label>:114                                     ; preds = %113, %87
  %115 = load i32, i32* %returnVal2, align 4, !dbg !3777
  ret i32 %115, !dbg !3778
}

; Function Attrs: nounwind ssp uwtable
define i32 @KeSetEvent(i32 %Event, i32 %Increment, i32 %Wait) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 %Event, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !203, metadata !104), !dbg !3779
  store i32 %Increment, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !205, metadata !104), !dbg !3780
  store i32 %Wait, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !207, metadata !104), !dbg !3781
  call void @llvm.dbg.declare(metadata i32* %l, metadata !209, metadata !104), !dbg !3782
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !3783
  store i32 %4, i32* %l, align 4, !dbg !3782
  store i32 1, i32* @setEventCalled, align 4, !dbg !3784
  %5 = load i32, i32* %l, align 4, !dbg !3785
  ret i32 %5, !dbg !3786
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3787, metadata !104), !dbg !3788
  store i32 %WaitReason, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3789, metadata !104), !dbg !3790
  store i32 %WaitMode, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3791, metadata !104), !dbg !3792
  store i32 %Alertable, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3793, metadata !104), !dbg !3794
  store i32 %Timeout, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3795, metadata !104), !dbg !3796
  %7 = load i32, i32* @s, align 4, !dbg !3797
  %8 = load i32, i32* @MPR3, align 4, !dbg !3800
  %9 = icmp eq i32 %7, %8, !dbg !3801
  br i1 %9, label %10, label %17, !dbg !3802

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* @setEventCalled, align 4, !dbg !3803
  %12 = icmp eq i32 %11, 1, !dbg !3806
  br i1 %12, label %13, label %15, !dbg !3807

; <label>:13                                      ; preds = %10
  %14 = load i32, i32* @NP, align 4, !dbg !3808
  store i32 %14, i32* @s, align 4, !dbg !3810
  store i32 0, i32* @setEventCalled, align 4, !dbg !3811
  br label %16, !dbg !3812

; <label>:15                                      ; preds = %10
  br label %18, !dbg !3813

; <label>:16                                      ; preds = %13
  br label %30, !dbg !3815

; <label>:17                                      ; preds = %0
  br label %18, !dbg !3816

; <label>:18                                      ; preds = %17, %15
  %19 = load i32, i32* @customIrp, align 4, !dbg !3817
  %20 = icmp eq i32 %19, 1, !dbg !3820
  br i1 %20, label %21, label %23, !dbg !3821

; <label>:21                                      ; preds = %18
  %22 = load i32, i32* @NP, align 4, !dbg !3822
  store i32 %22, i32* @s, align 4, !dbg !3824
  store i32 0, i32* @customIrp, align 4, !dbg !3825
  br label %29, !dbg !3826

; <label>:23                                      ; preds = %18
  %24 = load i32, i32* @s, align 4, !dbg !3827
  %25 = load i32, i32* @MPR3, align 4, !dbg !3830
  %26 = icmp eq i32 %24, %25, !dbg !3831
  br i1 %26, label %27, label %28, !dbg !3832

; <label>:27                                      ; preds = %23
  call void (...) @__VERIFIER_error() #6, !dbg !3833
  unreachable, !dbg !3833

errorFn.exit:                                     ; No predecessors!
  br label %28, !dbg !3837

; <label>:28                                      ; preds = %errorFn.exit, %23
  br label %29

; <label>:29                                      ; preds = %28, %21
  br label %30

; <label>:30                                      ; preds = %29, %16
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_6, metadata !3838, metadata !104), !dbg !3839
  %31 = call i32 @__VERIFIER_nondet_int(), !dbg !3840
  store i32 %31, i32* %tmp_ndt_6, align 4, !dbg !3841
  %32 = load i32, i32* %tmp_ndt_6, align 4, !dbg !3842
  %33 = icmp eq i32 %32, 0, !dbg !3844
  br i1 %33, label %34, label %35, !dbg !3845

; <label>:34                                      ; preds = %30
  br label %38, !dbg !3846

; <label>:35                                      ; preds = %30
  br label %39, !dbg !3848
                                                  ; No predecessors!
  br i1 false, label %37, label %40, !dbg !3850

; <label>:37                                      ; preds = %36
  br label %38, !dbg !3851

; <label>:38                                      ; preds = %37, %34
  store i32 0, i32* %1, !dbg !3853
  br label %42, !dbg !3853

; <label>:39                                      ; preds = %35
  store i32 -1073741823, i32* %1, !dbg !3855
  br label %42, !dbg !3855

; <label>:40                                      ; preds = %36
  br label %41

; <label>:41                                      ; preds = %40
  br label %42

; <label>:42                                      ; preds = %41, %39, %38
  %43 = load i32, i32* %1, !dbg !3856
  ret i32 %43, !dbg !3856
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
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3857, metadata !104), !dbg !3858
  store i32 %Irp, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3859, metadata !104), !dbg !3860
  call void @llvm.dbg.declare(metadata i32* %compRetStatus, metadata !3861, metadata !104), !dbg !3862
  call void @llvm.dbg.declare(metadata i32* %returnVal, metadata !3863, metadata !104), !dbg !3864
  call void @llvm.dbg.declare(metadata i32* %lcontext, metadata !3865, metadata !104), !dbg !3866
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !3867
  store i32 %9, i32* %lcontext, align 4, !dbg !3866
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp7, metadata !3868, metadata !104), !dbg !3869
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp8, metadata !3870, metadata !104), !dbg !3871
  %10 = load i32, i32* @compRegistered, align 4, !dbg !3872
  %11 = icmp ne i32 %10, 0, !dbg !3872
  call void @llvm.dbg.declare(metadata i32* %1, metadata !203, metadata !104), !dbg !3875
  call void @llvm.dbg.declare(metadata i32* %2, metadata !205, metadata !104), !dbg !3884
  call void @llvm.dbg.declare(metadata i32* %3, metadata !207, metadata !104), !dbg !3885
  call void @llvm.dbg.declare(metadata i32* %l.i.i, metadata !209, metadata !104), !dbg !3886
  call void @llvm.dbg.declare(metadata i32* %4, metadata !186, metadata !104), !dbg !3887
  call void @llvm.dbg.declare(metadata i32* %5, metadata !188, metadata !104), !dbg !3888
  call void @llvm.dbg.declare(metadata i32* %6, metadata !190, metadata !104), !dbg !3889
  br i1 %11, label %12, label %57, !dbg !3890

; <label>:12                                      ; preds = %0
  %13 = load i32, i32* @routine, align 4, !dbg !3891
  %14 = icmp eq i32 %13, 0, !dbg !3892
  br i1 %14, label %15, label %20, !dbg !3893

; <label>:15                                      ; preds = %12
  %16 = load i32, i32* %7, align 4, !dbg !3894
  %17 = load i32, i32* %8, align 4, !dbg !3897
  %18 = load i32, i32* %lcontext, align 4, !dbg !3898
  %19 = call i32 @HPCdrCompletion(i32 %16, i32 %17, i32 %18), !dbg !3899
  store i32 %19, i32* %compRetStatus, align 4, !dbg !3900
  br label %45, !dbg !3901

; <label>:20                                      ; preds = %12
  %21 = load i32, i32* @routine, align 4, !dbg !3902
  %22 = icmp eq i32 %21, 1, !dbg !3903
  br i1 %22, label %23, label %44, !dbg !3904

; <label>:23                                      ; preds = %20
  %24 = load i32, i32* %7, align 4, !dbg !3905
  %25 = load i32, i32* %8, align 4, !dbg !3906
  %26 = load i32, i32* %lcontext, align 4, !dbg !3907
  %27 = bitcast i32* %4 to i8*, !dbg !3908
  call void @llvm.lifetime.start(i64 4, i8* %27), !dbg !3908
  %28 = bitcast i32* %5 to i8*, !dbg !3908
  call void @llvm.lifetime.start(i64 4, i8* %28), !dbg !3908
  %29 = bitcast i32* %6 to i8*, !dbg !3908
  call void @llvm.lifetime.start(i64 4, i8* %29), !dbg !3908
  store i32 %24, i32* %4, align 4, !dbg !3908
  store i32 %25, i32* %5, align 4, !dbg !3908
  store i32 %26, i32* %6, align 4, !dbg !3908
  %30 = load i32, i32* %6, align 4, !dbg !3909
  %31 = bitcast i32* %1 to i8*, !dbg !3910
  call void @llvm.lifetime.start(i64 4, i8* %31) #4, !dbg !3910
  %32 = bitcast i32* %2 to i8*, !dbg !3910
  call void @llvm.lifetime.start(i64 4, i8* %32) #4, !dbg !3910
  %33 = bitcast i32* %3 to i8*, !dbg !3910
  call void @llvm.lifetime.start(i64 4, i8* %33) #4, !dbg !3910
  %34 = bitcast i32* %l.i.i to i8*, !dbg !3910
  call void @llvm.lifetime.start(i64 4, i8* %34) #4, !dbg !3910
  store i32 %30, i32* %1, align 4, !dbg !3910
  store i32 0, i32* %2, align 4, !dbg !3910
  store i32 0, i32* %3, align 4, !dbg !3910
  %35 = call i32 @__VERIFIER_nondet_int() #4, !dbg !3911
  store i32 %35, i32* %l.i.i, align 4, !dbg !3886
  store i32 1, i32* @setEventCalled, align 4, !dbg !3912
  %36 = load i32, i32* %l.i.i, align 4, !dbg !3913
  %37 = bitcast i32* %1 to i8*, !dbg !3914
  call void @llvm.lifetime.end(i64 4, i8* %37) #4, !dbg !3914
  %38 = bitcast i32* %2 to i8*, !dbg !3914
  call void @llvm.lifetime.end(i64 4, i8* %38) #4, !dbg !3914
  %39 = bitcast i32* %3 to i8*, !dbg !3914
  call void @llvm.lifetime.end(i64 4, i8* %39) #4, !dbg !3914
  %40 = bitcast i32* %l.i.i to i8*, !dbg !3914
  call void @llvm.lifetime.end(i64 4, i8* %40) #4, !dbg !3914
  %41 = bitcast i32* %4 to i8*, !dbg !3915
  call void @llvm.lifetime.end(i64 4, i8* %41), !dbg !3915
  %42 = bitcast i32* %5 to i8*, !dbg !3915
  call void @llvm.lifetime.end(i64 4, i8* %42), !dbg !3915
  %43 = bitcast i32* %6 to i8*, !dbg !3915
  call void @llvm.lifetime.end(i64 4, i8* %43), !dbg !3915
  store i32 -1073741802, i32* %compRetStatus, align 4, !dbg !3916
  br label %44, !dbg !3917

; <label>:44                                      ; preds = %23, %20
  br label %45

; <label>:45                                      ; preds = %44, %15
  %46 = load i32, i32* %compRetStatus, align 4, !dbg !3918
  %47 = sext i32 %46 to i64, !dbg !3920
  store i64 %47, i64* %__cil_tmp7, align 8, !dbg !3921
  %48 = load i64, i64* %__cil_tmp7, align 8, !dbg !3922
  %49 = icmp eq i64 %48, -1073741802, !dbg !3924
  br i1 %49, label %50, label %56, !dbg !3925

; <label>:50                                      ; preds = %45
  %51 = load i32, i32* @s, align 4, !dbg !3926
  %52 = load i32, i32* @NP, align 4, !dbg !3930
  %53 = icmp eq i32 %51, %52, !dbg !3931
  br i1 %53, label %stubMoreProcessingRequired.exit, label %54, !dbg !3932

; <label>:54                                      ; preds = %50
  call void (...) @__VERIFIER_error() #6, !dbg !3933
  unreachable, !dbg !3933

stubMoreProcessingRequired.exit:                  ; preds = %50
  %55 = load i32, i32* @MPR1, align 4, !dbg !3935
  store i32 %55, i32* @s, align 4, !dbg !3936
  br label %56, !dbg !3937

; <label>:56                                      ; preds = %stubMoreProcessingRequired.exit, %45
  br label %57, !dbg !3938

; <label>:57                                      ; preds = %56, %0
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_7, metadata !3939, metadata !104), !dbg !3940
  %58 = call i32 @__VERIFIER_nondet_int(), !dbg !3941
  store i32 %58, i32* %tmp_ndt_7, align 4, !dbg !3942
  %59 = load i32, i32* %tmp_ndt_7, align 4, !dbg !3943
  %60 = icmp eq i32 %59, 0, !dbg !3945
  br i1 %60, label %61, label %62, !dbg !3946

; <label>:61                                      ; preds = %57
  br label %70, !dbg !3947

; <label>:62                                      ; preds = %57
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_8, metadata !3949, metadata !104), !dbg !3951
  %63 = call i32 @__VERIFIER_nondet_int(), !dbg !3952
  store i32 %63, i32* %tmp_ndt_8, align 4, !dbg !3953
  %64 = load i32, i32* %tmp_ndt_8, align 4, !dbg !3954
  %65 = icmp eq i32 %64, 1, !dbg !3956
  br i1 %65, label %66, label %67, !dbg !3957

; <label>:66                                      ; preds = %62
  br label %71, !dbg !3958

; <label>:67                                      ; preds = %62
  br label %72, !dbg !3960
                                                  ; No predecessors!
  br i1 false, label %69, label %73, !dbg !3962

; <label>:69                                      ; preds = %68
  br label %70, !dbg !3963

; <label>:70                                      ; preds = %69, %61
  store i32 0, i32* %returnVal, align 4, !dbg !3965
  br label %74, !dbg !3967

; <label>:71                                      ; preds = %66
  store i32 -1073741823, i32* %returnVal, align 4, !dbg !3968
  br label %74, !dbg !3969

; <label>:72                                      ; preds = %67
  store i32 259, i32* %returnVal, align 4, !dbg !3970
  br label %74, !dbg !3971

; <label>:73                                      ; preds = %68
  br label %74, !dbg !3972

; <label>:74                                      ; preds = %73, %72, %71, %70
  br label %75

; <label>:75                                      ; preds = %74
  br label %76

; <label>:76                                      ; preds = %75
  br label %77

; <label>:77                                      ; preds = %76
  %78 = load i32, i32* @s, align 4, !dbg !3973
  %79 = load i32, i32* @NP, align 4, !dbg !3975
  %80 = icmp eq i32 %78, %79, !dbg !3976
  br i1 %80, label %81, label %84, !dbg !3977

; <label>:81                                      ; preds = %77
  %82 = load i32, i32* @IPC, align 4, !dbg !3978
  store i32 %82, i32* @s, align 4, !dbg !3980
  %83 = load i32, i32* %returnVal, align 4, !dbg !3981
  store i32 %83, i32* @lowerDriverReturn, align 4, !dbg !3982
  br label %110, !dbg !3983

; <label>:84                                      ; preds = %77
  %85 = load i32, i32* @s, align 4, !dbg !3984
  %86 = load i32, i32* @MPR1, align 4, !dbg !3987
  %87 = icmp eq i32 %85, %86, !dbg !3988
  br i1 %87, label %88, label %100, !dbg !3989

; <label>:88                                      ; preds = %84
  %89 = load i32, i32* %returnVal, align 4, !dbg !3990
  %90 = sext i32 %89 to i64, !dbg !3993
  store i64 %90, i64* %__cil_tmp8, align 8, !dbg !3994
  %91 = load i64, i64* %__cil_tmp8, align 8, !dbg !3995
  %92 = icmp eq i64 %91, 259, !dbg !3997
  br i1 %92, label %93, label %96, !dbg !3998

; <label>:93                                      ; preds = %88
  %94 = load i32, i32* @MPR3, align 4, !dbg !3999
  store i32 %94, i32* @s, align 4, !dbg !4001
  %95 = load i32, i32* %returnVal, align 4, !dbg !4002
  store i32 %95, i32* @lowerDriverReturn, align 4, !dbg !4003
  br label %99, !dbg !4004

; <label>:96                                      ; preds = %88
  %97 = load i32, i32* @NP, align 4, !dbg !4005
  store i32 %97, i32* @s, align 4, !dbg !4007
  %98 = load i32, i32* %returnVal, align 4, !dbg !4008
  store i32 %98, i32* @lowerDriverReturn, align 4, !dbg !4009
  br label %99

; <label>:99                                      ; preds = %96, %93
  br label %109, !dbg !4010

; <label>:100                                     ; preds = %84
  %101 = load i32, i32* @s, align 4, !dbg !4011
  %102 = load i32, i32* @SKIP1, align 4, !dbg !4014
  %103 = icmp eq i32 %101, %102, !dbg !4015
  br i1 %103, label %104, label %107, !dbg !4016

; <label>:104                                     ; preds = %100
  %105 = load i32, i32* @SKIP2, align 4, !dbg !4017
  store i32 %105, i32* @s, align 4, !dbg !4019
  %106 = load i32, i32* %returnVal, align 4, !dbg !4020
  store i32 %106, i32* @lowerDriverReturn, align 4, !dbg !4021
  br label %108, !dbg !4022

; <label>:107                                     ; preds = %100
  call void (...) @__VERIFIER_error() #6, !dbg !4023
  unreachable, !dbg !4023

errorFn.exit:                                     ; No predecessors!
  br label %108

; <label>:108                                     ; preds = %errorFn.exit, %104
  br label %109

; <label>:109                                     ; preds = %108, %99
  br label %110

; <label>:110                                     ; preds = %109, %81
  %111 = load i32, i32* %returnVal, align 4, !dbg !4027
  ret i32 %111, !dbg !4028
}

; Function Attrs: nounwind ssp uwtable
define i32 @ZwClose(i32 %Handle) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %tmp_ndt_9 = alloca i32, align 4
  store i32 %Handle, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !252, metadata !104), !dbg !4029
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_9, metadata !256, metadata !104), !dbg !4030
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !4031
  store i32 %3, i32* %tmp_ndt_9, align 4, !dbg !4032
  %4 = load i32, i32* %tmp_ndt_9, align 4, !dbg !4033
  %5 = icmp eq i32 %4, 0, !dbg !4034
  br i1 %5, label %6, label %7, !dbg !4035

; <label>:6                                       ; preds = %0
  br label %10, !dbg !4036

; <label>:7                                       ; preds = %0
  br label %11, !dbg !4038
                                                  ; No predecessors!
  br i1 false, label %9, label %12, !dbg !4039

; <label>:9                                       ; preds = %8
  br label %10, !dbg !4040

; <label>:10                                      ; preds = %9, %6
  store i32 0, i32* %1, !dbg !4041
  br label %14, !dbg !4041

; <label>:11                                      ; preds = %7
  store i32 -1073741823, i32* %1, !dbg !4042
  br label %14, !dbg !4042

; <label>:12                                      ; preds = %8
  br label %13

; <label>:13                                      ; preds = %12
  br label %14

; <label>:14                                      ; preds = %13, %11, %10
  %15 = load i32, i32* %1, !dbg !4043
  ret i32 %15, !dbg !4043
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
!llvm.module.flags = !{!77, !78, !79}
!llvm.ident = !{!80}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !54)
!1 = !DIFile(filename: "svcomp16/ntdrivers-simplified/cdaudio_simpl1_false-unreach-call_true-termination.cil.c", directory: ".")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!6 = !{!7, !10, !11, !15, !18, !21, !22, !23, !24, !27, !28, !29, !30, !31, !34, !35, !36, !37, !38, !39, !40, !43, !44, !45, !48, !49, !52, !53}
!7 = !DISubprogram(name: "errorFn", scope: !1, file: !1, line: 32, type: !8, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @errorFn, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !DISubprogram(name: "_BLAST_init", scope: !1, file: !1, line: 40, type: !8, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @_BLAST_init, variables: !2)
!11 = !DISubprogram(name: "SendSrbSynchronous", scope: !1, file: !1, line: 62, type: !12, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32)* @SendSrbSynchronous, variables: !2)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14, !14, !14, !14}
!14 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!15 = !DISubprogram(name: "CdAudioSignalCompletion", scope: !1, file: !1, line: 108, type: !16, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @CdAudioSignalCompletion, variables: !2)
!16 = !DISubroutineType(types: !17)
!17 = !{!14, !14, !14, !14}
!18 = !DISubprogram(name: "CdAudioStartDevice", scope: !1, file: !1, line: 118, type: !19, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @CdAudioStartDevice, variables: !2)
!19 = !DISubroutineType(types: !20)
!20 = !{!14, !14, !14}
!21 = !DISubprogram(name: "CdAudioPnp", scope: !1, file: !1, line: 195, type: !19, isLocal: false, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @CdAudioPnp, variables: !2)
!22 = !DISubprogram(name: "CdAudioDeviceControl", scope: !1, file: !1, line: 289, type: !19, isLocal: false, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @CdAudioDeviceControl, variables: !2)
!23 = !DISubprogram(name: "CdAudioSendToNextDriver", scope: !1, file: !1, line: 343, type: !19, isLocal: false, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @CdAudioSendToNextDriver, variables: !2)
!24 = !DISubprogram(name: "CdAudioIsPlayActive", scope: !1, file: !1, line: 365, type: !25, isLocal: false, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32)* @CdAudioIsPlayActive, variables: !2)
!25 = !DISubroutineType(types: !26)
!26 = !{!14, !14}
!27 = !DISubprogram(name: "CdAudio535DeviceControl", scope: !1, file: !1, line: 410, type: !19, isLocal: false, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @CdAudio535DeviceControl, variables: !2)
!28 = !DISubprogram(name: "AG_SetStatusAndReturn", scope: !1, file: !1, line: 854, type: !16, isLocal: false, isDefinition: true, scopeLine: 855, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @AG_SetStatusAndReturn, variables: !2)
!29 = !DISubprogram(name: "CdAudio435DeviceControl", scope: !1, file: !1, line: 871, type: !19, isLocal: false, isDefinition: true, scopeLine: 872, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @CdAudio435DeviceControl, variables: !2)
!30 = !DISubprogram(name: "CdAudioAtapiDeviceControl", scope: !1, file: !1, line: 1477, type: !19, isLocal: false, isDefinition: true, scopeLine: 1478, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @CdAudioAtapiDeviceControl, variables: !2)
!31 = !DISubprogram(name: "HpCdrProcessLastSession", scope: !1, file: !1, line: 1535, type: !32, isLocal: false, isDefinition: true, scopeLine: 1536, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @HpCdrProcessLastSession, variables: !2)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !14}
!34 = !DISubprogram(name: "HPCdrCompletion", scope: !1, file: !1, line: 1545, type: !16, isLocal: false, isDefinition: true, scopeLine: 1546, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @HPCdrCompletion, variables: !2)
!35 = !DISubprogram(name: "CdAudioHPCdrDeviceControl", scope: !1, file: !1, line: 1567, type: !19, isLocal: false, isDefinition: true, scopeLine: 1568, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @CdAudioHPCdrDeviceControl, variables: !2)
!36 = !DISubprogram(name: "CdAudioForwardIrpSynchronous", scope: !1, file: !1, line: 1616, type: !19, isLocal: false, isDefinition: true, scopeLine: 1617, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @CdAudioForwardIrpSynchronous, variables: !2)
!37 = !DISubprogram(name: "CdAudioUnload", scope: !1, file: !1, line: 1651, type: !32, isLocal: false, isDefinition: true, scopeLine: 1652, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @CdAudioUnload, variables: !2)
!38 = !DISubprogram(name: "CdAudioPower", scope: !1, file: !1, line: 1658, type: !19, isLocal: false, isDefinition: true, scopeLine: 1659, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @CdAudioPower, variables: !2)
!39 = !DISubprogram(name: "stub_driver_init", scope: !1, file: !1, line: 1680, type: !8, isLocal: false, isDefinition: true, scopeLine: 1681, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stub_driver_init, variables: !2)
!40 = !DISubprogram(name: "main", scope: !1, file: !1, line: 1694, type: !41, isLocal: false, isDefinition: true, scopeLine: 1695, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !2)
!41 = !DISubroutineType(types: !42)
!42 = !{!14}
!43 = !DISubprogram(name: "stubMoreProcessingRequired", scope: !1, file: !1, line: 1862, type: !8, isLocal: false, isDefinition: true, scopeLine: 1863, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stubMoreProcessingRequired, variables: !2)
!44 = !DISubprogram(name: "IofCallDriver", scope: !1, file: !1, line: 1876, type: !19, isLocal: false, isDefinition: true, scopeLine: 1877, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @IofCallDriver, variables: !2)
!45 = !DISubprogram(name: "IofCompleteRequest", scope: !1, file: !1, line: 1961, type: !46, isLocal: false, isDefinition: true, scopeLine: 1962, flags: DIFlagPrototyped, isOptimized: false, function: void (i32, i32)* @IofCompleteRequest, variables: !2)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !14, !14}
!48 = !DISubprogram(name: "KeSetEvent", scope: !1, file: !1, line: 1975, type: !16, isLocal: false, isDefinition: true, scopeLine: 1976, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @KeSetEvent, variables: !2)
!49 = !DISubprogram(name: "KeWaitForSingleObject", scope: !1, file: !1, line: 1983, type: !50, isLocal: false, isDefinition: true, scopeLine: 1985, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32)* @KeWaitForSingleObject, variables: !2)
!50 = !DISubroutineType(types: !51)
!51 = !{!14, !14, !14, !14, !14, !14}
!52 = !DISubprogram(name: "PoCallDriver", scope: !1, file: !1, line: 2025, type: !19, isLocal: false, isDefinition: true, scopeLine: 2026, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @PoCallDriver, variables: !2)
!53 = !DISubprogram(name: "ZwClose", scope: !1, file: !1, line: 2110, type: !25, isLocal: false, isDefinition: true, scopeLine: 2111, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32)* @ZwClose, variables: !2)
!54 = !{!55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!55 = !DIGlobalVariable(name: "s", scope: !0, file: !1, line: 9, type: !14, isLocal: false, isDefinition: true, variable: i32* @s)
!56 = !DIGlobalVariable(name: "UNLOADED", scope: !0, file: !1, line: 10, type: !14, isLocal: false, isDefinition: true, variable: i32* @UNLOADED)
!57 = !DIGlobalVariable(name: "NP", scope: !0, file: !1, line: 11, type: !14, isLocal: false, isDefinition: true, variable: i32* @NP)
!58 = !DIGlobalVariable(name: "DC", scope: !0, file: !1, line: 12, type: !14, isLocal: false, isDefinition: true, variable: i32* @DC)
!59 = !DIGlobalVariable(name: "SKIP1", scope: !0, file: !1, line: 13, type: !14, isLocal: false, isDefinition: true, variable: i32* @SKIP1)
!60 = !DIGlobalVariable(name: "SKIP2", scope: !0, file: !1, line: 14, type: !14, isLocal: false, isDefinition: true, variable: i32* @SKIP2)
!61 = !DIGlobalVariable(name: "MPR1", scope: !0, file: !1, line: 15, type: !14, isLocal: false, isDefinition: true, variable: i32* @MPR1)
!62 = !DIGlobalVariable(name: "MPR3", scope: !0, file: !1, line: 16, type: !14, isLocal: false, isDefinition: true, variable: i32* @MPR3)
!63 = !DIGlobalVariable(name: "IPC", scope: !0, file: !1, line: 17, type: !14, isLocal: false, isDefinition: true, variable: i32* @IPC)
!64 = !DIGlobalVariable(name: "pended", scope: !0, file: !1, line: 18, type: !14, isLocal: false, isDefinition: true, variable: i32* @pended)
!65 = !DIGlobalVariable(name: "compFptr", scope: !0, file: !1, line: 19, type: !14, isLocal: false, isDefinition: true, variable: i32* @compFptr)
!66 = !DIGlobalVariable(name: "compRegistered", scope: !0, file: !1, line: 20, type: !14, isLocal: false, isDefinition: true, variable: i32* @compRegistered)
!67 = !DIGlobalVariable(name: "lowerDriverReturn", scope: !0, file: !1, line: 21, type: !14, isLocal: false, isDefinition: true, variable: i32* @lowerDriverReturn)
!68 = !DIGlobalVariable(name: "setEventCalled", scope: !0, file: !1, line: 22, type: !14, isLocal: false, isDefinition: true, variable: i32* @setEventCalled)
!69 = !DIGlobalVariable(name: "customIrp", scope: !0, file: !1, line: 23, type: !14, isLocal: false, isDefinition: true, variable: i32* @customIrp)
!70 = !DIGlobalVariable(name: "routine", scope: !0, file: !1, line: 24, type: !14, isLocal: false, isDefinition: true, variable: i32* @routine)
!71 = !DIGlobalVariable(name: "myStatus", scope: !0, file: !1, line: 25, type: !14, isLocal: false, isDefinition: true, variable: i32* @myStatus)
!72 = !DIGlobalVariable(name: "pirp", scope: !0, file: !1, line: 26, type: !14, isLocal: false, isDefinition: true, variable: i32* @pirp)
!73 = !DIGlobalVariable(name: "Executive", scope: !0, file: !1, line: 27, type: !14, isLocal: false, isDefinition: true, variable: i32* @Executive)
!74 = !DIGlobalVariable(name: "Suspended", scope: !0, file: !1, line: 28, type: !14, isLocal: false, isDefinition: true, variable: i32* @Suspended)
!75 = !DIGlobalVariable(name: "KernelMode", scope: !0, file: !1, line: 29, type: !14, isLocal: false, isDefinition: true, variable: i32* @KernelMode)
!76 = !DIGlobalVariable(name: "DeviceUsageTypePaging", scope: !0, file: !1, line: 30, type: !14, isLocal: false, isDefinition: true, variable: i32* @DeviceUsageTypePaging)
!77 = !{i32 2, !"Dwarf Version", i32 2}
!78 = !{i32 2, !"Debug Info Version", i32 3}
!79 = !{i32 1, !"PIC Level", i32 2}
!80 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!81 = !DILocation(line: 35, column: 3, scope: !7)
!82 = !DILocation(line: 36, column: 10, scope: !83)
!83 = distinct !DILexicalBlock(scope: !7, file: !1, line: 35, column: 3)
!84 = !DILocation(line: 39, column: 1, scope: !7)
!85 = !DILocation(line: 44, column: 12, scope: !86)
!86 = distinct !DILexicalBlock(scope: !10, file: !1, line: 43, column: 3)
!87 = !DILocation(line: 45, column: 6, scope: !86)
!88 = !DILocation(line: 46, column: 6, scope: !86)
!89 = !DILocation(line: 47, column: 9, scope: !86)
!90 = !DILocation(line: 48, column: 9, scope: !86)
!91 = !DILocation(line: 49, column: 8, scope: !86)
!92 = !DILocation(line: 50, column: 8, scope: !86)
!93 = !DILocation(line: 51, column: 7, scope: !86)
!94 = !DILocation(line: 52, column: 7, scope: !86)
!95 = !DILocation(line: 52, column: 5, scope: !86)
!96 = !DILocation(line: 53, column: 10, scope: !86)
!97 = !DILocation(line: 54, column: 12, scope: !86)
!98 = !DILocation(line: 55, column: 18, scope: !86)
!99 = !DILocation(line: 56, column: 21, scope: !86)
!100 = !DILocation(line: 57, column: 18, scope: !86)
!101 = !DILocation(line: 58, column: 13, scope: !86)
!102 = !DILocation(line: 59, column: 3, scope: !86)
!103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Extension", arg: 1, scope: !11, file: !1, line: 62, type: !14)
!104 = !DIExpression()
!105 = !DILocation(line: 62, column: 28, scope: !11)
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Srb", arg: 2, scope: !11, file: !1, line: 62, type: !14)
!107 = !DILocation(line: 62, column: 44, scope: !11)
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Buffer", arg: 3, scope: !11, file: !1, line: 62, type: !14)
!109 = !DILocation(line: 62, column: 54, scope: !11)
!110 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "BufferLength", arg: 4, scope: !11, file: !1, line: 62, type: !14)
!111 = !DILocation(line: 62, column: 67, scope: !11)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ioStatus__Status", scope: !11, file: !1, line: 63, type: !14)
!113 = !DILocation(line: 63, column: 7, scope: !11)
!114 = !DILocation(line: 63, column: 26, scope: !11)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ioctl", scope: !11, file: !1, line: 64, type: !14)
!116 = !DILocation(line: 64, column: 7, scope: !11)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "event", scope: !11, file: !1, line: 65, type: !14)
!118 = !DILocation(line: 65, column: 7, scope: !11)
!119 = !DILocation(line: 65, column: 15, scope: !11)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp", scope: !11, file: !1, line: 66, type: !14)
!121 = !DILocation(line: 66, column: 7, scope: !11)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !11, file: !1, line: 67, type: !14)
!123 = !DILocation(line: 67, column: 7, scope: !11)
!124 = !DILocation(line: 67, column: 16, scope: !11)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp10", scope: !11, file: !1, line: 68, type: !14)
!126 = !DILocation(line: 68, column: 7, scope: !11)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp11", scope: !11, file: !1, line: 69, type: !14)
!128 = !DILocation(line: 69, column: 7, scope: !11)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp12", scope: !11, file: !1, line: 70, type: !14)
!130 = !DILocation(line: 70, column: 7, scope: !11)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp13", scope: !11, file: !1, line: 71, type: !14)
!132 = !DILocation(line: 71, column: 7, scope: !11)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp14", scope: !11, file: !1, line: 72, type: !14)
!134 = !DILocation(line: 72, column: 7, scope: !11)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp15", scope: !11, file: !1, line: 73, type: !14)
!136 = !DILocation(line: 73, column: 7, scope: !11)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp16", scope: !11, file: !1, line: 74, type: !14)
!138 = !DILocation(line: 74, column: 7, scope: !11)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp17", scope: !11, file: !1, line: 75, type: !14)
!140 = !DILocation(line: 75, column: 7, scope: !11)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp18", scope: !11, file: !1, line: 76, type: !4)
!142 = !DILocation(line: 76, column: 8, scope: !11)
!143 = !DILocation(line: 79, column: 7, scope: !144)
!144 = distinct !DILexicalBlock(scope: !11, file: !1, line: 78, column: 3)
!145 = !DILocation(line: 80, column: 7, scope: !146)
!146 = distinct !DILexicalBlock(scope: !144, file: !1, line: 80, column: 7)
!147 = !DILocation(line: 80, column: 7, scope: !144)
!148 = !DILocation(line: 81, column: 17, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !1, line: 80, column: 15)
!150 = !DILocation(line: 82, column: 17, scope: !149)
!151 = !DILocation(line: 83, column: 17, scope: !149)
!152 = !DILocation(line: 84, column: 17, scope: !149)
!153 = !DILocation(line: 85, column: 11, scope: !149)
!154 = !DILocation(line: 86, column: 3, scope: !149)
!155 = !DILocation(line: 87, column: 17, scope: !156)
!156 = distinct !DILexicalBlock(scope: !146, file: !1, line: 86, column: 10)
!157 = !DILocation(line: 88, column: 17, scope: !156)
!158 = !DILocation(line: 89, column: 17, scope: !156)
!159 = !DILocation(line: 90, column: 17, scope: !156)
!160 = !DILocation(line: 91, column: 11, scope: !156)
!161 = !DILocation(line: 93, column: 9, scope: !162)
!162 = distinct !DILexicalBlock(scope: !144, file: !1, line: 93, column: 7)
!163 = !DILocation(line: 93, column: 7, scope: !144)
!164 = !DILocation(line: 94, column: 5, scope: !165)
!165 = distinct !DILexicalBlock(scope: !162, file: !1, line: 93, column: 14)
!166 = !DILocation(line: 97, column: 24, scope: !167)
!167 = distinct !DILexicalBlock(scope: !144, file: !1, line: 96, column: 3)
!168 = !DILocation(line: 97, column: 17, scope: !167)
!169 = !DILocation(line: 97, column: 15, scope: !167)
!170 = !DILocation(line: 98, column: 7, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !1, line: 98, column: 7)
!172 = !DILocation(line: 98, column: 19, scope: !171)
!173 = !DILocation(line: 98, column: 7, scope: !167)
!174 = !DILocation(line: 100, column: 27, scope: !175)
!175 = distinct !DILexicalBlock(scope: !176, file: !1, line: 99, column: 5)
!176 = distinct !DILexicalBlock(scope: !171, file: !1, line: 98, column: 28)
!177 = !DILocation(line: 100, column: 34, scope: !175)
!178 = !DILocation(line: 100, column: 45, scope: !175)
!179 = !DILocation(line: 100, column: 5, scope: !175)
!180 = !DILocation(line: 101, column: 14, scope: !175)
!181 = !DILocation(line: 101, column: 12, scope: !175)
!182 = !DILocation(line: 103, column: 3, scope: !176)
!183 = !DILocation(line: 105, column: 11, scope: !144)
!184 = !DILocation(line: 105, column: 3, scope: !144)
!185 = !DILocation(line: 107, column: 1, scope: !11)
!186 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !15, file: !1, line: 108, type: !14)
!187 = !DILocation(line: 108, column: 33, scope: !15)
!188 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !15, file: !1, line: 108, type: !14)
!189 = !DILocation(line: 108, column: 52, scope: !15)
!190 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 3, scope: !15, file: !1, line: 108, type: !14)
!191 = !DILocation(line: 108, column: 62, scope: !15)
!192 = !DILocation(line: 113, column: 14, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !1, line: 112, column: 3)
!194 = distinct !DILexicalBlock(scope: !15, file: !1, line: 111, column: 3)
!195 = !DILocation(line: 113, column: 3, scope: !193)
!196 = !DILocation(line: 1976, column: 11, scope: !48, inlinedAt: !197)
!197 = distinct !DILocation(line: 113, column: 3, scope: !193)
!198 = !DILocation(line: 1976, column: 7, scope: !48, inlinedAt: !197)
!199 = !DILocation(line: 1979, column: 18, scope: !200, inlinedAt: !197)
!200 = distinct !DILexicalBlock(scope: !48, file: !1, line: 1978, column: 3)
!201 = !DILocation(line: 1980, column: 11, scope: !200, inlinedAt: !197)
!202 = !DILocation(line: 1980, column: 3, scope: !200, inlinedAt: !197)
!203 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 1, scope: !48, file: !1, line: 1975, type: !14)
!204 = !DILocation(line: 1975, column: 20, scope: !48, inlinedAt: !197)
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Increment", arg: 2, scope: !48, file: !1, line: 1975, type: !14)
!206 = !DILocation(line: 1975, column: 32, scope: !48, inlinedAt: !197)
!207 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Wait", arg: 3, scope: !48, file: !1, line: 1975, type: !14)
!208 = !DILocation(line: 1975, column: 48, scope: !48, inlinedAt: !197)
!209 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !48, file: !1, line: 1976, type: !14)
!210 = !DILocation(line: 115, column: 3, scope: !194)
!211 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !18, file: !1, line: 118, type: !14)
!212 = !DILocation(line: 118, column: 28, scope: !18)
!213 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !18, file: !1, line: 118, type: !14)
!214 = !DILocation(line: 118, column: 47, scope: !18)
!215 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__Active", scope: !18, file: !1, line: 119, type: !14)
!216 = !DILocation(line: 119, column: 7, scope: !18)
!217 = !DILocation(line: 119, column: 33, scope: !18)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !18, file: !1, line: 120, type: !14)
!219 = !DILocation(line: 120, column: 7, scope: !18)
!220 = !DILocation(line: 120, column: 25, scope: !18)
!221 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !18, file: !1, line: 121, type: !14)
!222 = !DILocation(line: 121, column: 7, scope: !18)
!223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srb", scope: !18, file: !1, line: 122, type: !14)
!224 = !DILocation(line: 122, column: 7, scope: !18)
!225 = !DILocation(line: 122, column: 13, scope: !18)
!226 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srb__Cdb", scope: !18, file: !1, line: 123, type: !14)
!227 = !DILocation(line: 123, column: 7, scope: !18)
!228 = !DILocation(line: 123, column: 18, scope: !18)
!229 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cdb", scope: !18, file: !1, line: 124, type: !14)
!230 = !DILocation(line: 124, column: 7, scope: !18)
!231 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inquiryDataPtr", scope: !18, file: !1, line: 125, type: !14)
!232 = !DILocation(line: 125, column: 7, scope: !18)
!233 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "attempt", scope: !18, file: !1, line: 126, type: !14)
!234 = !DILocation(line: 126, column: 7, scope: !18)
!235 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !18, file: !1, line: 127, type: !14)
!236 = !DILocation(line: 127, column: 7, scope: !18)
!237 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceParameterHandle", scope: !18, file: !1, line: 128, type: !14)
!238 = !DILocation(line: 128, column: 7, scope: !18)
!239 = !DILocation(line: 128, column: 31, scope: !18)
!240 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "keyValue", scope: !18, file: !1, line: 129, type: !14)
!241 = !DILocation(line: 129, column: 7, scope: !18)
!242 = !DILocation(line: 132, column: 41, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !1, line: 131, column: 3)
!244 = distinct !DILexicalBlock(scope: !18, file: !1, line: 130, column: 3)
!245 = !DILocation(line: 132, column: 55, scope: !243)
!246 = !DILocation(line: 132, column: 12, scope: !243)
!247 = !DILocation(line: 132, column: 10, scope: !243)
!248 = !DILocation(line: 135, column: 7, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !1, line: 135, column: 7)
!250 = distinct !DILexicalBlock(scope: !244, file: !1, line: 134, column: 3)
!251 = !DILocation(line: 135, column: 14, scope: !249)
!252 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Handle", arg: 1, scope: !53, file: !1, line: 2110, type: !14)
!253 = !DILocation(line: 2110, column: 17, scope: !53, inlinedAt: !254)
!254 = distinct !DILocation(line: 190, column: 3, scope: !255)
!255 = distinct !DILexicalBlock(scope: !244, file: !1, line: 189, column: 3)
!256 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_9", scope: !257, file: !1, line: 2114, type: !14)
!257 = distinct !DILexicalBlock(scope: !53, file: !1, line: 2113, column: 3)
!258 = !DILocation(line: 2114, column: 7, scope: !257, inlinedAt: !254)
!259 = !DILocation(line: 135, column: 7, scope: !250)
!260 = !DILocation(line: 136, column: 13, scope: !261)
!261 = distinct !DILexicalBlock(scope: !249, file: !1, line: 135, column: 19)
!262 = !DILocation(line: 136, column: 5, scope: !261)
!263 = !DILocation(line: 139, column: 7, scope: !264)
!264 = distinct !DILexicalBlock(scope: !244, file: !1, line: 139, column: 7)
!265 = !DILocation(line: 139, column: 31, scope: !264)
!266 = !DILocation(line: 139, column: 7, scope: !244)
!267 = !DILocation(line: 140, column: 11, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !1, line: 139, column: 39)
!269 = !DILocation(line: 140, column: 9, scope: !268)
!270 = !DILocation(line: 141, column: 20, scope: !268)
!271 = !DILocation(line: 142, column: 13, scope: !268)
!272 = !DILocation(line: 143, column: 11, scope: !273)
!273 = distinct !DILexicalBlock(scope: !268, file: !1, line: 143, column: 9)
!274 = !DILocation(line: 143, column: 9, scope: !268)
!275 = !DILocation(line: 144, column: 31, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !1, line: 143, column: 27)
!277 = !DILocation(line: 145, column: 7, scope: !276)
!278 = !DILocation(line: 147, column: 12, scope: !268)
!279 = !DILocation(line: 149, column: 5, scope: !280)
!280 = distinct !DILexicalBlock(scope: !268, file: !1, line: 148, column: 5)
!281 = !DILocation(line: 149, column: 15, scope: !280)
!282 = !DILocation(line: 153, column: 11, scope: !283)
!283 = distinct !DILexicalBlock(scope: !284, file: !1, line: 153, column: 11)
!284 = distinct !DILexicalBlock(scope: !285, file: !1, line: 152, column: 7)
!285 = distinct !DILexicalBlock(scope: !280, file: !1, line: 149, column: 15)
!286 = !DILocation(line: 153, column: 18, scope: !283)
!287 = !DILocation(line: 153, column: 11, scope: !284)
!288 = !DILocation(line: 154, column: 15, scope: !289)
!289 = distinct !DILexicalBlock(scope: !283, file: !1, line: 153, column: 23)
!290 = !DILocation(line: 154, column: 13, scope: !289)
!291 = !DILocation(line: 155, column: 17, scope: !289)
!292 = !DILocation(line: 156, column: 13, scope: !293)
!293 = distinct !DILexicalBlock(scope: !289, file: !1, line: 156, column: 13)
!294 = !DILocation(line: 156, column: 17, scope: !293)
!295 = !DILocation(line: 156, column: 13, scope: !289)
!296 = !DILocation(line: 157, column: 11, scope: !297)
!297 = distinct !DILexicalBlock(scope: !293, file: !1, line: 156, column: 23)
!298 = !DILocation(line: 159, column: 7, scope: !289)
!299 = !DILocation(line: 160, column: 9, scope: !300)
!300 = distinct !DILexicalBlock(scope: !283, file: !1, line: 159, column: 14)
!301 = !DILocation(line: 164, column: 35, scope: !302)
!302 = distinct !DILexicalBlock(scope: !285, file: !1, line: 163, column: 7)
!303 = !DILocation(line: 164, column: 52, scope: !302)
!304 = !DILocation(line: 164, column: 57, scope: !302)
!305 = !DILocation(line: 164, column: 16, scope: !302)
!306 = !DILocation(line: 164, column: 14, scope: !302)
!307 = !DILocation(line: 168, column: 5, scope: !280)
!308 = !DILocation(line: 171, column: 9, scope: !309)
!309 = distinct !DILexicalBlock(scope: !310, file: !1, line: 171, column: 9)
!310 = distinct !DILexicalBlock(scope: !268, file: !1, line: 170, column: 5)
!311 = !DILocation(line: 171, column: 16, scope: !309)
!312 = !DILocation(line: 171, column: 9, scope: !310)
!313 = !DILocation(line: 172, column: 31, scope: !314)
!314 = distinct !DILexicalBlock(scope: !309, file: !1, line: 171, column: 21)
!315 = !DILocation(line: 173, column: 7, scope: !314)
!316 = !DILocation(line: 176, column: 29, scope: !268)
!317 = !DILocation(line: 177, column: 3, scope: !268)
!318 = !DILocation(line: 178, column: 14, scope: !244)
!319 = !DILocation(line: 178, column: 12, scope: !244)
!320 = !DILocation(line: 180, column: 7, scope: !321)
!321 = distinct !DILexicalBlock(scope: !322, file: !1, line: 180, column: 7)
!322 = distinct !DILexicalBlock(scope: !244, file: !1, line: 179, column: 3)
!323 = !DILocation(line: 180, column: 14, scope: !321)
!324 = !DILocation(line: 180, column: 7, scope: !322)
!325 = !DILocation(line: 181, column: 5, scope: !326)
!326 = distinct !DILexicalBlock(scope: !321, file: !1, line: 180, column: 19)
!327 = !DILocation(line: 185, column: 7, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !1, line: 185, column: 7)
!329 = distinct !DILexicalBlock(scope: !244, file: !1, line: 184, column: 3)
!330 = !DILocation(line: 185, column: 14, scope: !328)
!331 = !DILocation(line: 185, column: 7, scope: !329)
!332 = !DILocation(line: 187, column: 3, scope: !333)
!333 = distinct !DILexicalBlock(scope: !328, file: !1, line: 185, column: 19)
!334 = !DILocation(line: 190, column: 11, scope: !255)
!335 = !DILocation(line: 190, column: 3, scope: !255)
!336 = !DILocation(line: 2115, column: 15, scope: !257, inlinedAt: !254)
!337 = !DILocation(line: 2115, column: 13, scope: !257, inlinedAt: !254)
!338 = !DILocation(line: 2116, column: 7, scope: !339, inlinedAt: !254)
!339 = distinct !DILexicalBlock(scope: !257, file: !1, line: 2116, column: 7)
!340 = !DILocation(line: 2116, column: 17, scope: !339, inlinedAt: !254)
!341 = !DILocation(line: 2116, column: 7, scope: !257, inlinedAt: !254)
!342 = !DILocation(line: 2122, column: 7, scope: !343, inlinedAt: !254)
!343 = distinct !DILexicalBlock(scope: !344, file: !1, line: 2120, column: 12)
!344 = distinct !DILexicalBlock(scope: !345, file: !1, line: 2120, column: 9)
!345 = distinct !DILexicalBlock(scope: !339, file: !1, line: 2118, column: 10)
!346 = !DILocation(line: 2124, column: 7, scope: !343, inlinedAt: !254)
!347 = !DILocation(line: 2130, column: 1, scope: !53, inlinedAt: !254)
!348 = !DILocation(line: 192, column: 3, scope: !244)
!349 = !DILocation(line: 194, column: 1, scope: !18)
!350 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !21, file: !1, line: 195, type: !14)
!351 = !DILocation(line: 195, column: 20, scope: !21)
!352 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !21, file: !1, line: 195, type: !14)
!353 = !DILocation(line: 195, column: 39, scope: !21)
!354 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !21, file: !1, line: 196, type: !14)
!355 = !DILocation(line: 196, column: 7, scope: !21)
!356 = !DILocation(line: 196, column: 50, scope: !21)
!357 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__MinorFunction", scope: !21, file: !1, line: 197, type: !14)
!358 = !DILocation(line: 197, column: 7, scope: !21)
!359 = !DILocation(line: 197, column: 30, scope: !21)
!360 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !21, file: !1, line: 198, type: !14)
!361 = !DILocation(line: 198, column: 7, scope: !21)
!362 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Parameters__UsageNotification__Type", scope: !21, file: !1, line: 199, type: !14)
!363 = !DILocation(line: 199, column: 7, scope: !21)
!364 = !DILocation(line: 199, column: 52, scope: !21)
!365 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__PagingPathCountEvent", scope: !21, file: !1, line: 200, type: !14)
!366 = !DILocation(line: 200, column: 7, scope: !21)
!367 = !DILocation(line: 200, column: 47, scope: !21)
!368 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Parameters__UsageNotification__InPath", scope: !21, file: !1, line: 201, type: !14)
!369 = !DILocation(line: 201, column: 7, scope: !21)
!370 = !DILocation(line: 201, column: 54, scope: !21)
!371 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__PagingPathCount", scope: !21, file: !1, line: 202, type: !14)
!372 = !DILocation(line: 202, column: 7, scope: !21)
!373 = !DILocation(line: 202, column: 42, scope: !21)
!374 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__Flags", scope: !21, file: !1, line: 203, type: !14)
!375 = !DILocation(line: 203, column: 7, scope: !21)
!376 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp", scope: !21, file: !1, line: 204, type: !14)
!377 = !DILocation(line: 204, column: 7, scope: !21)
!378 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !21, file: !1, line: 205, type: !14)
!379 = !DILocation(line: 205, column: 7, scope: !21)
!380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "setPagable", scope: !21, file: !1, line: 206, type: !14)
!381 = !DILocation(line: 206, column: 7, scope: !21)
!382 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !21, file: !1, line: 207, type: !14)
!383 = !DILocation(line: 207, column: 7, scope: !21)
!384 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___0", scope: !21, file: !1, line: 208, type: !14)
!385 = !DILocation(line: 208, column: 7, scope: !21)
!386 = !DILocation(line: 211, column: 11, scope: !387)
!387 = distinct !DILexicalBlock(scope: !21, file: !1, line: 210, column: 3)
!388 = !DILocation(line: 211, column: 9, scope: !387)
!389 = !DILocation(line: 212, column: 10, scope: !387)
!390 = !DILocation(line: 213, column: 7, scope: !391)
!391 = distinct !DILexicalBlock(scope: !387, file: !1, line: 213, column: 7)
!392 = !DILocation(line: 213, column: 28, scope: !391)
!393 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 1, scope: !45, file: !1, line: 1961, type: !14)
!394 = !DILocation(line: 1961, column: 29, scope: !45, inlinedAt: !395)
!395 = distinct !DILocation(line: 226, column: 9, scope: !396)
!396 = distinct !DILexicalBlock(scope: !397, file: !1, line: 222, column: 9)
!397 = distinct !DILexicalBlock(scope: !398, file: !1, line: 220, column: 14)
!398 = distinct !DILexicalBlock(scope: !399, file: !1, line: 220, column: 11)
!399 = distinct !DILexicalBlock(scope: !400, file: !1, line: 218, column: 12)
!400 = distinct !DILexicalBlock(scope: !401, file: !1, line: 216, column: 9)
!401 = distinct !DILexicalBlock(scope: !391, file: !1, line: 215, column: 10)
!402 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PriorityBoost", arg: 2, scope: !45, file: !1, line: 1961, type: !14)
!403 = !DILocation(line: 1961, column: 39, scope: !45, inlinedAt: !395)
!404 = !DILocation(line: 1975, column: 20, scope: !48, inlinedAt: !405)
!405 = distinct !DILocation(line: 271, column: 9, scope: !406)
!406 = distinct !DILexicalBlock(scope: !397, file: !1, line: 270, column: 9)
!407 = !DILocation(line: 1975, column: 32, scope: !48, inlinedAt: !405)
!408 = !DILocation(line: 1975, column: 48, scope: !48, inlinedAt: !405)
!409 = !DILocation(line: 1976, column: 7, scope: !48, inlinedAt: !405)
!410 = !DILocation(line: 1961, column: 29, scope: !45, inlinedAt: !411)
!411 = distinct !DILocation(line: 272, column: 9, scope: !406)
!412 = !DILocation(line: 1961, column: 39, scope: !45, inlinedAt: !411)
!413 = !DILocation(line: 213, column: 7, scope: !387)
!414 = !DILocation(line: 214, column: 5, scope: !415)
!415 = distinct !DILexicalBlock(scope: !391, file: !1, line: 213, column: 34)
!416 = !DILocation(line: 216, column: 9, scope: !400)
!417 = !DILocation(line: 216, column: 30, scope: !400)
!418 = !DILocation(line: 216, column: 9, scope: !401)
!419 = !DILocation(line: 217, column: 7, scope: !420)
!420 = distinct !DILexicalBlock(scope: !400, file: !1, line: 216, column: 37)
!421 = !DILocation(line: 219, column: 7, scope: !399)
!422 = !DILocation(line: 220, column: 11, scope: !399)
!423 = !DILocation(line: 220, column: 14, scope: !398)
!424 = !DILocation(line: 223, column: 37, scope: !396)
!425 = !DILocation(line: 223, column: 51, scope: !396)
!426 = !DILocation(line: 223, column: 18, scope: !396)
!427 = !DILocation(line: 223, column: 16, scope: !396)
!428 = !DILocation(line: 224, column: 33, scope: !396)
!429 = !DILocation(line: 224, column: 31, scope: !396)
!430 = !DILocation(line: 225, column: 20, scope: !396)
!431 = !DILocation(line: 225, column: 18, scope: !396)
!432 = !DILocation(line: 226, column: 28, scope: !396)
!433 = !DILocation(line: 226, column: 9, scope: !396)
!434 = !DILocation(line: 1965, column: 7, scope: !435, inlinedAt: !395)
!435 = distinct !DILexicalBlock(scope: !436, file: !1, line: 1965, column: 7)
!436 = distinct !DILexicalBlock(scope: !45, file: !1, line: 1964, column: 3)
!437 = !DILocation(line: 1965, column: 12, scope: !435, inlinedAt: !395)
!438 = !DILocation(line: 1965, column: 9, scope: !435, inlinedAt: !395)
!439 = !DILocation(line: 1965, column: 7, scope: !436, inlinedAt: !395)
!440 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !441)
!441 = distinct !DILocation(line: 1969, column: 5, scope: !442, inlinedAt: !395)
!442 = distinct !DILexicalBlock(scope: !443, file: !1, line: 1968, column: 5)
!443 = distinct !DILexicalBlock(scope: !435, file: !1, line: 1967, column: 10)
!444 = !DILocation(line: 1966, column: 9, scope: !445, inlinedAt: !395)
!445 = distinct !DILexicalBlock(scope: !435, file: !1, line: 1965, column: 16)
!446 = !DILocation(line: 1966, column: 7, scope: !445, inlinedAt: !395)
!447 = !DILocation(line: 1972, column: 3, scope: !436, inlinedAt: !395)
!448 = !DILocation(line: 228, column: 17, scope: !397)
!449 = !DILocation(line: 228, column: 9, scope: !397)
!450 = !DILocation(line: 230, column: 13, scope: !451)
!451 = distinct !DILexicalBlock(scope: !397, file: !1, line: 230, column: 13)
!452 = !DILocation(line: 230, column: 59, scope: !451)
!453 = !DILocation(line: 230, column: 56, scope: !451)
!454 = !DILocation(line: 230, column: 13, scope: !397)
!455 = !DILocation(line: 232, column: 41, scope: !456)
!456 = distinct !DILexicalBlock(scope: !457, file: !1, line: 231, column: 11)
!457 = distinct !DILexicalBlock(scope: !451, file: !1, line: 230, column: 82)
!458 = !DILocation(line: 232, column: 55, scope: !456)
!459 = !DILocation(line: 232, column: 17, scope: !456)
!460 = !DILocation(line: 232, column: 15, scope: !456)
!461 = !DILocation(line: 234, column: 19, scope: !457)
!462 = !DILocation(line: 234, column: 11, scope: !457)
!463 = !DILocation(line: 237, column: 40, scope: !464)
!464 = distinct !DILexicalBlock(scope: !397, file: !1, line: 236, column: 9)
!465 = !DILocation(line: 237, column: 79, scope: !464)
!466 = !DILocation(line: 238, column: 40, scope: !464)
!467 = !DILocation(line: 237, column: 18, scope: !464)
!468 = !DILocation(line: 237, column: 16, scope: !464)
!469 = !DILocation(line: 239, column: 20, scope: !464)
!470 = !DILocation(line: 241, column: 13, scope: !471)
!471 = distinct !DILexicalBlock(scope: !397, file: !1, line: 241, column: 13)
!472 = !DILocation(line: 241, column: 13, scope: !397)
!473 = !DILocation(line: 242, column: 15, scope: !474)
!474 = distinct !DILexicalBlock(scope: !475, file: !1, line: 242, column: 15)
!475 = distinct !DILexicalBlock(scope: !471, file: !1, line: 241, column: 59)
!476 = !DILocation(line: 242, column: 48, scope: !474)
!477 = !DILocation(line: 242, column: 15, scope: !475)
!478 = !DILocation(line: 243, column: 13, scope: !479)
!479 = distinct !DILexicalBlock(scope: !474, file: !1, line: 242, column: 54)
!480 = !DILocation(line: 245, column: 9, scope: !475)
!481 = !DILocation(line: 245, column: 16, scope: !471)
!482 = !DILocation(line: 247, column: 15, scope: !483)
!483 = distinct !DILexicalBlock(scope: !484, file: !1, line: 247, column: 15)
!484 = distinct !DILexicalBlock(scope: !471, file: !1, line: 245, column: 16)
!485 = !DILocation(line: 247, column: 25, scope: !483)
!486 = !DILocation(line: 247, column: 22, scope: !483)
!487 = !DILocation(line: 247, column: 15, scope: !484)
!488 = !DILocation(line: 249, column: 24, scope: !489)
!489 = distinct !DILexicalBlock(scope: !483, file: !1, line: 247, column: 33)
!490 = !DILocation(line: 250, column: 11, scope: !489)
!491 = !DILocation(line: 253, column: 47, scope: !492)
!492 = distinct !DILexicalBlock(scope: !397, file: !1, line: 252, column: 9)
!493 = !DILocation(line: 253, column: 61, scope: !492)
!494 = !DILocation(line: 253, column: 18, scope: !492)
!495 = !DILocation(line: 253, column: 16, scope: !492)
!496 = !DILocation(line: 255, column: 13, scope: !497)
!497 = distinct !DILexicalBlock(scope: !397, file: !1, line: 255, column: 13)
!498 = !DILocation(line: 255, column: 20, scope: !497)
!499 = !DILocation(line: 255, column: 13, scope: !397)
!500 = !DILocation(line: 256, column: 15, scope: !501)
!501 = distinct !DILexicalBlock(scope: !502, file: !1, line: 256, column: 15)
!502 = distinct !DILexicalBlock(scope: !497, file: !1, line: 255, column: 26)
!503 = !DILocation(line: 256, column: 15, scope: !502)
!504 = !DILocation(line: 258, column: 11, scope: !505)
!505 = distinct !DILexicalBlock(scope: !501, file: !1, line: 256, column: 61)
!506 = !DILocation(line: 259, column: 15, scope: !507)
!507 = distinct !DILexicalBlock(scope: !502, file: !1, line: 259, column: 15)
!508 = !DILocation(line: 259, column: 15, scope: !502)
!509 = !DILocation(line: 260, column: 17, scope: !510)
!510 = distinct !DILexicalBlock(scope: !511, file: !1, line: 260, column: 17)
!511 = distinct !DILexicalBlock(scope: !507, file: !1, line: 259, column: 61)
!512 = !DILocation(line: 260, column: 50, scope: !510)
!513 = !DILocation(line: 260, column: 17, scope: !511)
!514 = !DILocation(line: 262, column: 13, scope: !515)
!515 = distinct !DILexicalBlock(scope: !510, file: !1, line: 260, column: 56)
!516 = !DILocation(line: 263, column: 11, scope: !511)
!517 = !DILocation(line: 264, column: 9, scope: !502)
!518 = !DILocation(line: 265, column: 15, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !1, line: 265, column: 15)
!520 = distinct !DILexicalBlock(scope: !497, file: !1, line: 264, column: 16)
!521 = !DILocation(line: 265, column: 26, scope: !519)
!522 = !DILocation(line: 265, column: 15, scope: !520)
!523 = !DILocation(line: 267, column: 24, scope: !524)
!524 = distinct !DILexicalBlock(scope: !519, file: !1, line: 265, column: 32)
!525 = !DILocation(line: 268, column: 11, scope: !524)
!526 = !DILocation(line: 271, column: 20, scope: !406)
!527 = !DILocation(line: 271, column: 9, scope: !406)
!528 = !DILocation(line: 1976, column: 11, scope: !48, inlinedAt: !405)
!529 = !DILocation(line: 1979, column: 18, scope: !200, inlinedAt: !405)
!530 = !DILocation(line: 1980, column: 11, scope: !200, inlinedAt: !405)
!531 = !DILocation(line: 1980, column: 3, scope: !200, inlinedAt: !405)
!532 = !DILocation(line: 272, column: 28, scope: !406)
!533 = !DILocation(line: 272, column: 9, scope: !406)
!534 = !DILocation(line: 1965, column: 7, scope: !435, inlinedAt: !411)
!535 = !DILocation(line: 1965, column: 12, scope: !435, inlinedAt: !411)
!536 = !DILocation(line: 1965, column: 9, scope: !435, inlinedAt: !411)
!537 = !DILocation(line: 1965, column: 7, scope: !436, inlinedAt: !411)
!538 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !539)
!539 = distinct !DILocation(line: 1969, column: 5, scope: !442, inlinedAt: !411)
!540 = !DILocation(line: 1966, column: 9, scope: !445, inlinedAt: !411)
!541 = !DILocation(line: 1966, column: 7, scope: !445, inlinedAt: !411)
!542 = !DILocation(line: 1972, column: 3, scope: !436, inlinedAt: !411)
!543 = !DILocation(line: 274, column: 17, scope: !397)
!544 = !DILocation(line: 274, column: 9, scope: !397)
!545 = !DILocation(line: 278, column: 43, scope: !546)
!546 = distinct !DILexicalBlock(scope: !397, file: !1, line: 277, column: 9)
!547 = !DILocation(line: 278, column: 57, scope: !546)
!548 = !DILocation(line: 278, column: 19, scope: !546)
!549 = !DILocation(line: 278, column: 17, scope: !546)
!550 = !DILocation(line: 280, column: 17, scope: !397)
!551 = !DILocation(line: 280, column: 9, scope: !397)
!552 = !DILocation(line: 281, column: 14, scope: !398)
!553 = !DILocation(line: 286, column: 3, scope: !387)
!554 = !DILocation(line: 288, column: 1, scope: !21)
!555 = !DILocation(line: 1961, column: 29, scope: !45)
!556 = !DILocation(line: 1961, column: 39, scope: !45)
!557 = !DILocation(line: 1965, column: 7, scope: !435)
!558 = !DILocation(line: 1965, column: 12, scope: !435)
!559 = !DILocation(line: 1965, column: 9, scope: !435)
!560 = !DILocation(line: 1965, column: 7, scope: !436)
!561 = !DILocation(line: 1966, column: 9, scope: !445)
!562 = !DILocation(line: 1966, column: 7, scope: !445)
!563 = !DILocation(line: 1967, column: 3, scope: !445)
!564 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !565)
!565 = distinct !DILocation(line: 1969, column: 5, scope: !442)
!566 = !DILocation(line: 1972, column: 3, scope: !436)
!567 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !22, file: !1, line: 289, type: !14)
!568 = !DILocation(line: 289, column: 30, scope: !22)
!569 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !22, file: !1, line: 289, type: !14)
!570 = !DILocation(line: 289, column: 49, scope: !22)
!571 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__Active", scope: !22, file: !1, line: 290, type: !14)
!572 = !DILocation(line: 290, column: 7, scope: !22)
!573 = !DILocation(line: 290, column: 33, scope: !22)
!574 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !22, file: !1, line: 291, type: !14)
!575 = !DILocation(line: 291, column: 7, scope: !22)
!576 = !DILocation(line: 294, column: 7, scope: !577)
!577 = distinct !DILexicalBlock(scope: !578, file: !1, line: 294, column: 7)
!578 = distinct !DILexicalBlock(scope: !22, file: !1, line: 293, column: 3)
!579 = !DILocation(line: 294, column: 31, scope: !577)
!580 = !DILocation(line: 294, column: 7, scope: !578)
!581 = !DILocation(line: 295, column: 5, scope: !582)
!582 = distinct !DILexicalBlock(scope: !577, file: !1, line: 294, column: 37)
!583 = !DILocation(line: 297, column: 9, scope: !584)
!584 = distinct !DILexicalBlock(scope: !585, file: !1, line: 297, column: 9)
!585 = distinct !DILexicalBlock(scope: !577, file: !1, line: 296, column: 10)
!586 = !DILocation(line: 297, column: 33, scope: !584)
!587 = !DILocation(line: 297, column: 9, scope: !585)
!588 = !DILocation(line: 298, column: 7, scope: !589)
!589 = distinct !DILexicalBlock(scope: !584, file: !1, line: 297, column: 39)
!590 = !DILocation(line: 300, column: 11, scope: !591)
!591 = distinct !DILexicalBlock(scope: !592, file: !1, line: 300, column: 11)
!592 = distinct !DILexicalBlock(scope: !584, file: !1, line: 299, column: 12)
!593 = !DILocation(line: 300, column: 35, scope: !591)
!594 = !DILocation(line: 300, column: 11, scope: !592)
!595 = !DILocation(line: 301, column: 9, scope: !596)
!596 = distinct !DILexicalBlock(scope: !591, file: !1, line: 300, column: 41)
!597 = !DILocation(line: 303, column: 13, scope: !598)
!598 = distinct !DILexicalBlock(scope: !599, file: !1, line: 303, column: 13)
!599 = distinct !DILexicalBlock(scope: !591, file: !1, line: 302, column: 14)
!600 = !DILocation(line: 303, column: 37, scope: !598)
!601 = !DILocation(line: 303, column: 13, scope: !599)
!602 = !DILocation(line: 304, column: 11, scope: !603)
!603 = distinct !DILexicalBlock(scope: !598, file: !1, line: 303, column: 43)
!604 = !DILocation(line: 306, column: 11, scope: !605)
!605 = distinct !DILexicalBlock(scope: !598, file: !1, line: 305, column: 16)
!606 = !DILocation(line: 307, column: 15, scope: !605)
!607 = !DILocation(line: 307, column: 18, scope: !608)
!608 = distinct !DILexicalBlock(scope: !605, file: !1, line: 307, column: 15)
!609 = !DILocation(line: 310, column: 46, scope: !610)
!610 = distinct !DILexicalBlock(scope: !611, file: !1, line: 309, column: 13)
!611 = distinct !DILexicalBlock(scope: !608, file: !1, line: 307, column: 18)
!612 = !DILocation(line: 310, column: 60, scope: !610)
!613 = !DILocation(line: 310, column: 22, scope: !610)
!614 = !DILocation(line: 310, column: 20, scope: !610)
!615 = !DILocation(line: 312, column: 13, scope: !611)
!616 = !DILocation(line: 315, column: 46, scope: !617)
!617 = distinct !DILexicalBlock(scope: !611, file: !1, line: 314, column: 13)
!618 = !DILocation(line: 315, column: 60, scope: !617)
!619 = !DILocation(line: 315, column: 22, scope: !617)
!620 = !DILocation(line: 315, column: 20, scope: !617)
!621 = !DILocation(line: 317, column: 13, scope: !611)
!622 = !DILocation(line: 320, column: 48, scope: !623)
!623 = distinct !DILexicalBlock(scope: !611, file: !1, line: 319, column: 13)
!624 = !DILocation(line: 320, column: 62, scope: !623)
!625 = !DILocation(line: 320, column: 22, scope: !623)
!626 = !DILocation(line: 320, column: 20, scope: !623)
!627 = !DILocation(line: 322, column: 13, scope: !611)
!628 = !DILocation(line: 325, column: 48, scope: !629)
!629 = distinct !DILexicalBlock(scope: !611, file: !1, line: 324, column: 13)
!630 = !DILocation(line: 325, column: 62, scope: !629)
!631 = !DILocation(line: 325, column: 22, scope: !629)
!632 = !DILocation(line: 325, column: 20, scope: !629)
!633 = !DILocation(line: 327, column: 13, scope: !611)
!634 = !DILocation(line: 330, column: 37, scope: !635)
!635 = distinct !DILexicalBlock(scope: !611, file: !1, line: 329, column: 13)
!636 = !DILocation(line: 331, column: 46, scope: !635)
!637 = !DILocation(line: 331, column: 60, scope: !635)
!638 = !DILocation(line: 331, column: 22, scope: !635)
!639 = !DILocation(line: 331, column: 20, scope: !635)
!640 = !DILocation(line: 333, column: 11, scope: !611)
!641 = !DILocation(line: 333, column: 18, scope: !608)
!642 = !DILocation(line: 340, column: 11, scope: !578)
!643 = !DILocation(line: 340, column: 3, scope: !578)
!644 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !23, file: !1, line: 343, type: !14)
!645 = !DILocation(line: 343, column: 33, scope: !23)
!646 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !23, file: !1, line: 343, type: !14)
!647 = !DILocation(line: 343, column: 52, scope: !23)
!648 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !23, file: !1, line: 344, type: !14)
!649 = !DILocation(line: 344, column: 7, scope: !23)
!650 = !DILocation(line: 344, column: 30, scope: !23)
!651 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !23, file: !1, line: 345, type: !14)
!652 = !DILocation(line: 345, column: 7, scope: !23)
!653 = !DILocation(line: 345, column: 50, scope: !23)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__TargetDeviceObject", scope: !23, file: !1, line: 346, type: !14)
!655 = !DILocation(line: 346, column: 7, scope: !23)
!656 = !DILocation(line: 346, column: 45, scope: !23)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !23, file: !1, line: 347, type: !14)
!658 = !DILocation(line: 347, column: 7, scope: !23)
!659 = !DILocation(line: 350, column: 7, scope: !660)
!660 = distinct !DILexicalBlock(scope: !661, file: !1, line: 350, column: 7)
!661 = distinct !DILexicalBlock(scope: !23, file: !1, line: 349, column: 3)
!662 = !DILocation(line: 350, column: 12, scope: !660)
!663 = !DILocation(line: 350, column: 9, scope: !660)
!664 = !DILocation(line: 350, column: 7, scope: !661)
!665 = !DILocation(line: 351, column: 9, scope: !666)
!666 = distinct !DILexicalBlock(scope: !660, file: !1, line: 350, column: 16)
!667 = !DILocation(line: 351, column: 7, scope: !666)
!668 = !DILocation(line: 352, column: 3, scope: !666)
!669 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !670)
!670 = distinct !DILocation(line: 354, column: 5, scope: !671)
!671 = distinct !DILexicalBlock(scope: !672, file: !1, line: 353, column: 5)
!672 = distinct !DILexicalBlock(scope: !660, file: !1, line: 352, column: 10)
!673 = !DILocation(line: 358, column: 24, scope: !674)
!674 = distinct !DILexicalBlock(scope: !661, file: !1, line: 357, column: 3)
!675 = !DILocation(line: 359, column: 44, scope: !674)
!676 = !DILocation(line: 360, column: 23, scope: !674)
!677 = !DILocation(line: 360, column: 60, scope: !674)
!678 = !DILocation(line: 360, column: 9, scope: !674)
!679 = !DILocation(line: 360, column: 7, scope: !674)
!680 = !DILocation(line: 362, column: 11, scope: !661)
!681 = !DILocation(line: 362, column: 3, scope: !661)
!682 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !24, file: !1, line: 365, type: !14)
!683 = !DILocation(line: 365, column: 29, scope: !24)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__PlayActive", scope: !24, file: !1, line: 366, type: !14)
!685 = !DILocation(line: 366, column: 7, scope: !24)
!686 = !DILocation(line: 366, column: 37, scope: !24)
!687 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ioStatus__Status", scope: !24, file: !1, line: 367, type: !14)
!688 = !DILocation(line: 367, column: 7, scope: !24)
!689 = !DILocation(line: 367, column: 26, scope: !24)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentBuffer__Header__AudioStatus", scope: !24, file: !1, line: 368, type: !14)
!691 = !DILocation(line: 368, column: 7, scope: !24)
!692 = !DILocation(line: 368, column: 44, scope: !24)
!693 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp_CdAudioIsPlayActive", scope: !24, file: !1, line: 369, type: !14)
!694 = !DILocation(line: 369, column: 7, scope: !24)
!695 = !DILocation(line: 369, column: 33, scope: !24)
!696 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "event", scope: !24, file: !1, line: 370, type: !14)
!697 = !DILocation(line: 370, column: 7, scope: !24)
!698 = !DILocation(line: 370, column: 15, scope: !24)
!699 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !24, file: !1, line: 371, type: !14)
!700 = !DILocation(line: 371, column: 7, scope: !24)
!701 = !DILocation(line: 371, column: 16, scope: !24)
!702 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentBuffer", scope: !24, file: !1, line: 372, type: !14)
!703 = !DILocation(line: 372, column: 7, scope: !24)
!704 = !DILocation(line: 372, column: 23, scope: !24)
!705 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "returnValue", scope: !24, file: !1, line: 373, type: !14)
!706 = !DILocation(line: 373, column: 7, scope: !24)
!707 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp10", scope: !24, file: !1, line: 374, type: !4)
!708 = !DILocation(line: 374, column: 8, scope: !24)
!709 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp11", scope: !24, file: !1, line: 375, type: !14)
!710 = !DILocation(line: 375, column: 7, scope: !24)
!711 = !DILocation(line: 378, column: 9, scope: !712)
!712 = distinct !DILexicalBlock(scope: !713, file: !1, line: 378, column: 7)
!713 = distinct !DILexicalBlock(scope: !24, file: !1, line: 377, column: 3)
!714 = !DILocation(line: 378, column: 7, scope: !713)
!715 = !DILocation(line: 379, column: 5, scope: !716)
!716 = distinct !DILexicalBlock(scope: !712, file: !1, line: 378, column: 38)
!717 = !DILocation(line: 381, column: 7, scope: !718)
!718 = distinct !DILexicalBlock(scope: !713, file: !1, line: 381, column: 7)
!719 = !DILocation(line: 381, column: 21, scope: !718)
!720 = !DILocation(line: 381, column: 7, scope: !713)
!721 = !DILocation(line: 382, column: 5, scope: !722)
!722 = distinct !DILexicalBlock(scope: !718, file: !1, line: 381, column: 27)
!723 = !DILocation(line: 384, column: 7, scope: !724)
!724 = distinct !DILexicalBlock(scope: !713, file: !1, line: 384, column: 7)
!725 = !DILocation(line: 384, column: 31, scope: !724)
!726 = !DILocation(line: 384, column: 7, scope: !713)
!727 = !DILocation(line: 385, column: 5, scope: !728)
!728 = distinct !DILexicalBlock(scope: !724, file: !1, line: 384, column: 37)
!729 = !DILocation(line: 388, column: 24, scope: !730)
!730 = distinct !DILexicalBlock(scope: !713, file: !1, line: 387, column: 3)
!731 = !DILocation(line: 388, column: 17, scope: !730)
!732 = !DILocation(line: 388, column: 15, scope: !730)
!733 = !DILocation(line: 389, column: 7, scope: !734)
!734 = distinct !DILexicalBlock(scope: !730, file: !1, line: 389, column: 7)
!735 = !DILocation(line: 389, column: 19, scope: !734)
!736 = !DILocation(line: 389, column: 7, scope: !730)
!737 = !DILocation(line: 391, column: 27, scope: !738)
!738 = distinct !DILexicalBlock(scope: !739, file: !1, line: 390, column: 5)
!739 = distinct !DILexicalBlock(scope: !734, file: !1, line: 389, column: 28)
!740 = !DILocation(line: 391, column: 34, scope: !738)
!741 = !DILocation(line: 391, column: 45, scope: !738)
!742 = !DILocation(line: 391, column: 5, scope: !738)
!743 = !DILocation(line: 392, column: 14, scope: !738)
!744 = !DILocation(line: 392, column: 12, scope: !738)
!745 = !DILocation(line: 394, column: 3, scope: !739)
!746 = !DILocation(line: 397, column: 7, scope: !747)
!747 = distinct !DILexicalBlock(scope: !748, file: !1, line: 397, column: 7)
!748 = distinct !DILexicalBlock(scope: !713, file: !1, line: 396, column: 3)
!749 = !DILocation(line: 397, column: 14, scope: !747)
!750 = !DILocation(line: 397, column: 7, scope: !748)
!751 = !DILocation(line: 398, column: 5, scope: !752)
!752 = distinct !DILexicalBlock(scope: !747, file: !1, line: 397, column: 19)
!753 = !DILocation(line: 401, column: 7, scope: !754)
!754 = distinct !DILexicalBlock(scope: !713, file: !1, line: 401, column: 7)
!755 = !DILocation(line: 401, column: 42, scope: !754)
!756 = !DILocation(line: 401, column: 7, scope: !713)
!757 = !DILocation(line: 402, column: 17, scope: !758)
!758 = distinct !DILexicalBlock(scope: !754, file: !1, line: 401, column: 49)
!759 = !DILocation(line: 403, column: 3, scope: !758)
!760 = !DILocation(line: 404, column: 17, scope: !761)
!761 = distinct !DILexicalBlock(scope: !754, file: !1, line: 403, column: 10)
!762 = !DILocation(line: 405, column: 33, scope: !761)
!763 = !DILocation(line: 407, column: 11, scope: !713)
!764 = !DILocation(line: 407, column: 3, scope: !713)
!765 = !DILocation(line: 409, column: 1, scope: !24)
!766 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !27, file: !1, line: 410, type: !14)
!767 = !DILocation(line: 410, column: 33, scope: !27)
!768 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !27, file: !1, line: 410, type: !14)
!769 = !DILocation(line: 410, column: 52, scope: !27)
!770 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !27, file: !1, line: 411, type: !14)
!771 = !DILocation(line: 411, column: 7, scope: !27)
!772 = !DILocation(line: 411, column: 50, scope: !27)
!773 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !27, file: !1, line: 412, type: !14)
!774 = !DILocation(line: 412, column: 7, scope: !27)
!775 = !DILocation(line: 412, column: 39, scope: !27)
!776 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__TargetDeviceObject", scope: !27, file: !1, line: 413, type: !14)
!777 = !DILocation(line: 413, column: 7, scope: !27)
!778 = !DILocation(line: 413, column: 45, scope: !27)
!779 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__AssociatedIrp__SystemBuffer", scope: !27, file: !1, line: 414, type: !14)
!780 = !DILocation(line: 414, column: 7, scope: !27)
!781 = !DILocation(line: 414, column: 42, scope: !27)
!782 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srb__Cdb", scope: !27, file: !1, line: 415, type: !14)
!783 = !DILocation(line: 415, column: 7, scope: !27)
!784 = !DILocation(line: 415, column: 18, scope: !27)
!785 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentIrpStack__Parameters__DeviceIoControl__IoControlCode", scope: !27, file: !1, line: 416, type: !14)
!786 = !DILocation(line: 416, column: 7, scope: !27)
!787 = !DILocation(line: 416, column: 69, scope: !27)
!788 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !27, file: !1, line: 417, type: !14)
!789 = !DILocation(line: 417, column: 7, scope: !27)
!790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength", scope: !27, file: !1, line: 418, type: !14)
!791 = !DILocation(line: 418, column: 7, scope: !27)
!792 = !DILocation(line: 418, column: 74, scope: !27)
!793 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentIrpStack__Parameters__DeviceIoControl__InputBufferLength", scope: !27, file: !1, line: 419, type: !14)
!794 = !DILocation(line: 419, column: 7, scope: !27)
!795 = !DILocation(line: 419, column: 73, scope: !27)
!796 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srb__CdbLength", scope: !27, file: !1, line: 420, type: !14)
!797 = !DILocation(line: 420, column: 7, scope: !27)
!798 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cdb__CDB10__OperationCode", scope: !27, file: !1, line: 421, type: !14)
!799 = !DILocation(line: 421, column: 7, scope: !27)
!800 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srb__TimeOutValue", scope: !27, file: !1, line: 422, type: !14)
!801 = !DILocation(line: 422, column: 7, scope: !27)
!802 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__READ_CAPACITY_DATA", scope: !27, file: !1, line: 423, type: !14)
!803 = !DILocation(line: 423, column: 7, scope: !27)
!804 = !DILocation(line: 423, column: 36, scope: !27)
!805 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lastSession__LogicalBlockAddress", scope: !27, file: !1, line: 424, type: !14)
!806 = !DILocation(line: 424, column: 7, scope: !27)
!807 = !DILocation(line: 424, column: 42, scope: !27)
!808 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cdaudioDataOut__FirstTrack", scope: !27, file: !1, line: 425, type: !14)
!809 = !DILocation(line: 425, column: 7, scope: !27)
!810 = !DILocation(line: 425, column: 36, scope: !27)
!811 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cdaudioDataOut__LastTrack", scope: !27, file: !1, line: 426, type: !14)
!812 = !DILocation(line: 426, column: 7, scope: !27)
!813 = !DILocation(line: 426, column: 35, scope: !27)
!814 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__CDROM_TOC", scope: !27, file: !1, line: 427, type: !14)
!815 = !DILocation(line: 427, column: 7, scope: !27)
!816 = !DILocation(line: 427, column: 27, scope: !27)
!817 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__SUB_Q_CURRENT_POSITION", scope: !27, file: !1, line: 428, type: !14)
!818 = !DILocation(line: 428, column: 7, scope: !27)
!819 = !DILocation(line: 428, column: 40, scope: !27)
!820 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "userPtr__Format", scope: !27, file: !1, line: 429, type: !14)
!821 = !DILocation(line: 429, column: 7, scope: !27)
!822 = !DILocation(line: 429, column: 25, scope: !27)
!823 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__CDROM_PLAY_AUDIO_MSF", scope: !27, file: !1, line: 430, type: !14)
!824 = !DILocation(line: 430, column: 7, scope: !27)
!825 = !DILocation(line: 430, column: 38, scope: !27)
!826 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inputBuffer__StartingM", scope: !27, file: !1, line: 431, type: !14)
!827 = !DILocation(line: 431, column: 7, scope: !27)
!828 = !DILocation(line: 431, column: 32, scope: !27)
!829 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inputBuffer__EndingM", scope: !27, file: !1, line: 432, type: !14)
!830 = !DILocation(line: 432, column: 7, scope: !27)
!831 = !DILocation(line: 432, column: 30, scope: !27)
!832 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inputBuffer__StartingS", scope: !27, file: !1, line: 433, type: !14)
!833 = !DILocation(line: 433, column: 7, scope: !27)
!834 = !DILocation(line: 433, column: 32, scope: !27)
!835 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inputBuffer__EndingS", scope: !27, file: !1, line: 434, type: !14)
!836 = !DILocation(line: 434, column: 7, scope: !27)
!837 = !DILocation(line: 434, column: 30, scope: !27)
!838 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inputBuffer__StartingF", scope: !27, file: !1, line: 435, type: !14)
!839 = !DILocation(line: 435, column: 7, scope: !27)
!840 = !DILocation(line: 435, column: 32, scope: !27)
!841 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inputBuffer__EndingF", scope: !27, file: !1, line: 436, type: !14)
!842 = !DILocation(line: 436, column: 7, scope: !27)
!843 = !DILocation(line: 436, column: 30, scope: !27)
!844 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cdb__PLAY_AUDIO_MSF__OperationCode", scope: !27, file: !1, line: 437, type: !14)
!845 = !DILocation(line: 437, column: 7, scope: !27)
!846 = !DILocation(line: 437, column: 44, scope: !27)
!847 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__CDROM_SEEK_AUDIO_MSF", scope: !27, file: !1, line: 438, type: !14)
!848 = !DILocation(line: 438, column: 7, scope: !27)
!849 = !DILocation(line: 438, column: 38, scope: !27)
!850 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentIrpStack", scope: !27, file: !1, line: 439, type: !14)
!851 = !DILocation(line: 439, column: 7, scope: !27)
!852 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !27, file: !1, line: 440, type: !14)
!853 = !DILocation(line: 440, column: 7, scope: !27)
!854 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cdaudioDataOut", scope: !27, file: !1, line: 441, type: !14)
!855 = !DILocation(line: 441, column: 7, scope: !27)
!856 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srb", scope: !27, file: !1, line: 442, type: !14)
!857 = !DILocation(line: 442, column: 7, scope: !27)
!858 = !DILocation(line: 442, column: 13, scope: !27)
!859 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lastSession", scope: !27, file: !1, line: 443, type: !14)
!860 = !DILocation(line: 443, column: 7, scope: !27)
!861 = !DILocation(line: 443, column: 21, scope: !27)
!862 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cdb", scope: !27, file: !1, line: 444, type: !14)
!863 = !DILocation(line: 444, column: 7, scope: !27)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !27, file: !1, line: 445, type: !14)
!865 = !DILocation(line: 445, column: 7, scope: !27)
!866 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !27, file: !1, line: 446, type: !14)
!867 = !DILocation(line: 446, column: 7, scope: !27)
!868 = !DILocation(line: 446, column: 11, scope: !27)
!869 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytesTransfered", scope: !27, file: !1, line: 447, type: !14)
!870 = !DILocation(line: 447, column: 7, scope: !27)
!871 = !DILocation(line: 447, column: 25, scope: !27)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Toc", scope: !27, file: !1, line: 448, type: !14)
!873 = !DILocation(line: 448, column: 7, scope: !27)
!874 = !DILocation(line: 448, column: 13, scope: !27)
!875 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !27, file: !1, line: 449, type: !14)
!876 = !DILocation(line: 449, column: 7, scope: !27)
!877 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___0", scope: !27, file: !1, line: 450, type: !14)
!878 = !DILocation(line: 450, column: 7, scope: !27)
!879 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___1", scope: !27, file: !1, line: 451, type: !14)
!880 = !DILocation(line: 451, column: 7, scope: !27)
!881 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___2", scope: !27, file: !1, line: 452, type: !14)
!882 = !DILocation(line: 452, column: 7, scope: !27)
!883 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___3", scope: !27, file: !1, line: 453, type: !14)
!884 = !DILocation(line: 453, column: 7, scope: !27)
!885 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___4", scope: !27, file: !1, line: 454, type: !14)
!886 = !DILocation(line: 454, column: 7, scope: !27)
!887 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tracksToReturn", scope: !27, file: !1, line: 455, type: !14)
!888 = !DILocation(line: 455, column: 7, scope: !27)
!889 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tracksOnCd", scope: !27, file: !1, line: 456, type: !14)
!890 = !DILocation(line: 456, column: 7, scope: !27)
!891 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tracksInBuffer", scope: !27, file: !1, line: 457, type: !14)
!892 = !DILocation(line: 457, column: 7, scope: !27)
!893 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "userPtr", scope: !27, file: !1, line: 458, type: !14)
!894 = !DILocation(line: 458, column: 7, scope: !27)
!895 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "SubQPtr", scope: !27, file: !1, line: 459, type: !14)
!896 = !DILocation(line: 459, column: 7, scope: !27)
!897 = !DILocation(line: 459, column: 17, scope: !27)
!898 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___5", scope: !27, file: !1, line: 460, type: !14)
!899 = !DILocation(line: 460, column: 7, scope: !27)
!900 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___6", scope: !27, file: !1, line: 461, type: !14)
!901 = !DILocation(line: 461, column: 7, scope: !27)
!902 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inputBuffer", scope: !27, file: !1, line: 462, type: !14)
!903 = !DILocation(line: 462, column: 7, scope: !27)
!904 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inputBuffer___0", scope: !27, file: !1, line: 463, type: !14)
!905 = !DILocation(line: 463, column: 7, scope: !27)
!906 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___7", scope: !27, file: !1, line: 464, type: !14)
!907 = !DILocation(line: 464, column: 7, scope: !27)
!908 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___8", scope: !27, file: !1, line: 465, type: !14)
!909 = !DILocation(line: 465, column: 7, scope: !27)
!910 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp58", scope: !27, file: !1, line: 466, type: !14)
!911 = !DILocation(line: 466, column: 7, scope: !27)
!912 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp59", scope: !27, file: !1, line: 467, type: !14)
!913 = !DILocation(line: 467, column: 7, scope: !27)
!914 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp60", scope: !27, file: !1, line: 468, type: !14)
!915 = !DILocation(line: 468, column: 7, scope: !27)
!916 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp61", scope: !27, file: !1, line: 469, type: !14)
!917 = !DILocation(line: 469, column: 7, scope: !27)
!918 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp62", scope: !27, file: !1, line: 470, type: !14)
!919 = !DILocation(line: 470, column: 7, scope: !27)
!920 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp63", scope: !27, file: !1, line: 471, type: !14)
!921 = !DILocation(line: 471, column: 7, scope: !27)
!922 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp64", scope: !27, file: !1, line: 472, type: !14)
!923 = !DILocation(line: 472, column: 7, scope: !27)
!924 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp65", scope: !27, file: !1, line: 473, type: !14)
!925 = !DILocation(line: 473, column: 7, scope: !27)
!926 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp66", scope: !27, file: !1, line: 474, type: !14)
!927 = !DILocation(line: 474, column: 7, scope: !27)
!928 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp67", scope: !27, file: !1, line: 475, type: !14)
!929 = !DILocation(line: 475, column: 7, scope: !27)
!930 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp68", scope: !27, file: !1, line: 476, type: !14)
!931 = !DILocation(line: 476, column: 7, scope: !27)
!932 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp69", scope: !27, file: !1, line: 477, type: !14)
!933 = !DILocation(line: 477, column: 7, scope: !27)
!934 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp70", scope: !27, file: !1, line: 478, type: !14)
!935 = !DILocation(line: 478, column: 7, scope: !27)
!936 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp71", scope: !27, file: !1, line: 479, type: !14)
!937 = !DILocation(line: 479, column: 7, scope: !27)
!938 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp72", scope: !27, file: !1, line: 480, type: !14)
!939 = !DILocation(line: 480, column: 7, scope: !27)
!940 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp73", scope: !27, file: !1, line: 481, type: !14)
!941 = !DILocation(line: 481, column: 7, scope: !27)
!942 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp74", scope: !27, file: !1, line: 482, type: !14)
!943 = !DILocation(line: 482, column: 7, scope: !27)
!944 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp75", scope: !27, file: !1, line: 483, type: !14)
!945 = !DILocation(line: 483, column: 7, scope: !27)
!946 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp76", scope: !27, file: !1, line: 484, type: !14)
!947 = !DILocation(line: 484, column: 7, scope: !27)
!948 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp77", scope: !27, file: !1, line: 485, type: !14)
!949 = !DILocation(line: 485, column: 7, scope: !27)
!950 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp78", scope: !27, file: !1, line: 486, type: !14)
!951 = !DILocation(line: 486, column: 7, scope: !27)
!952 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp79", scope: !27, file: !1, line: 487, type: !14)
!953 = !DILocation(line: 487, column: 7, scope: !27)
!954 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp80", scope: !27, file: !1, line: 488, type: !14)
!955 = !DILocation(line: 488, column: 7, scope: !27)
!956 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp81", scope: !27, file: !1, line: 489, type: !14)
!957 = !DILocation(line: 489, column: 7, scope: !27)
!958 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp82", scope: !27, file: !1, line: 490, type: !14)
!959 = !DILocation(line: 490, column: 7, scope: !27)
!960 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp83", scope: !27, file: !1, line: 491, type: !14)
!961 = !DILocation(line: 491, column: 7, scope: !27)
!962 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp84", scope: !27, file: !1, line: 492, type: !14)
!963 = !DILocation(line: 492, column: 7, scope: !27)
!964 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp85", scope: !27, file: !1, line: 493, type: !14)
!965 = !DILocation(line: 493, column: 7, scope: !27)
!966 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp86", scope: !27, file: !1, line: 494, type: !14)
!967 = !DILocation(line: 494, column: 7, scope: !27)
!968 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp87", scope: !27, file: !1, line: 495, type: !14)
!969 = !DILocation(line: 495, column: 7, scope: !27)
!970 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp88", scope: !27, file: !1, line: 496, type: !14)
!971 = !DILocation(line: 496, column: 7, scope: !27)
!972 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp89", scope: !27, file: !1, line: 497, type: !14)
!973 = !DILocation(line: 497, column: 7, scope: !27)
!974 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp90", scope: !27, file: !1, line: 498, type: !14)
!975 = !DILocation(line: 498, column: 7, scope: !27)
!976 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp91", scope: !27, file: !1, line: 499, type: !14)
!977 = !DILocation(line: 499, column: 7, scope: !27)
!978 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp92", scope: !27, file: !1, line: 500, type: !14)
!979 = !DILocation(line: 500, column: 7, scope: !27)
!980 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp93", scope: !27, file: !1, line: 501, type: !14)
!981 = !DILocation(line: 501, column: 7, scope: !27)
!982 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp94", scope: !27, file: !1, line: 502, type: !14)
!983 = !DILocation(line: 502, column: 7, scope: !27)
!984 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp95", scope: !27, file: !1, line: 503, type: !14)
!985 = !DILocation(line: 503, column: 7, scope: !27)
!986 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp96", scope: !27, file: !1, line: 504, type: !14)
!987 = !DILocation(line: 504, column: 7, scope: !27)
!988 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp97", scope: !27, file: !1, line: 505, type: !14)
!989 = !DILocation(line: 505, column: 7, scope: !27)
!990 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp98", scope: !27, file: !1, line: 506, type: !14)
!991 = !DILocation(line: 506, column: 7, scope: !27)
!992 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp99", scope: !27, file: !1, line: 507, type: !14)
!993 = !DILocation(line: 507, column: 7, scope: !27)
!994 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp100", scope: !27, file: !1, line: 508, type: !14)
!995 = !DILocation(line: 508, column: 7, scope: !27)
!996 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp101", scope: !27, file: !1, line: 509, type: !14)
!997 = !DILocation(line: 509, column: 7, scope: !27)
!998 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp102", scope: !27, file: !1, line: 510, type: !14)
!999 = !DILocation(line: 510, column: 7, scope: !27)
!1000 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp103", scope: !27, file: !1, line: 511, type: !14)
!1001 = !DILocation(line: 511, column: 7, scope: !27)
!1002 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp104", scope: !27, file: !1, line: 512, type: !14)
!1003 = !DILocation(line: 512, column: 7, scope: !27)
!1004 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp105", scope: !27, file: !1, line: 513, type: !14)
!1005 = !DILocation(line: 513, column: 7, scope: !27)
!1006 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp106", scope: !27, file: !1, line: 514, type: !14)
!1007 = !DILocation(line: 514, column: 7, scope: !27)
!1008 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp107", scope: !27, file: !1, line: 515, type: !5)
!1009 = !DILocation(line: 515, column: 17, scope: !27)
!1010 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp108", scope: !27, file: !1, line: 516, type: !5)
!1011 = !DILocation(line: 516, column: 17, scope: !27)
!1012 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp109", scope: !27, file: !1, line: 517, type: !14)
!1013 = !DILocation(line: 517, column: 7, scope: !27)
!1014 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp110", scope: !27, file: !1, line: 518, type: !14)
!1015 = !DILocation(line: 518, column: 7, scope: !27)
!1016 = !DILocation(line: 521, column: 21, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !27, file: !1, line: 520, column: 3)
!1018 = !DILocation(line: 521, column: 19, scope: !1017)
!1019 = !DILocation(line: 522, column: 21, scope: !1017)
!1020 = !DILocation(line: 522, column: 19, scope: !1017)
!1021 = !DILocation(line: 523, column: 20, scope: !1017)
!1022 = !DILocation(line: 523, column: 18, scope: !1017)
!1023 = !DILocation(line: 524, column: 9, scope: !1017)
!1024 = !DILocation(line: 524, column: 7, scope: !1017)
!1025 = !DILocation(line: 526, column: 15, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 525, column: 3)
!1027 = !DILocation(line: 527, column: 15, scope: !1026)
!1028 = !DILocation(line: 528, column: 15, scope: !1026)
!1029 = !DILocation(line: 529, column: 15, scope: !1026)
!1030 = !DILocation(line: 530, column: 15, scope: !1026)
!1031 = !DILocation(line: 531, column: 7, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1026, file: !1, line: 531, column: 7)
!1033 = !DILocation(line: 531, column: 70, scope: !1032)
!1034 = !DILocation(line: 531, column: 67, scope: !1032)
!1035 = !DILocation(line: 1961, column: 29, scope: !45, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 866, column: 3, scope: !1037, inlinedAt: !1039)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 864, column: 3)
!1038 = distinct !DILexicalBlock(scope: !28, file: !1, line: 857, column: 3)
!1039 = distinct !DILocation(line: 633, column: 37, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 630, column: 27)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 629, column: 47)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 629, column: 29)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !1, line: 614, column: 30)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 614, column: 27)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !1, line: 612, column: 28)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !1, line: 610, column: 25)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 604, column: 21)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 603, column: 26)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !1, line: 601, column: 23)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !1, line: 595, column: 19)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !1, line: 594, column: 24)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !1, line: 592, column: 21)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 586, column: 17)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 585, column: 22)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 583, column: 19)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !1, line: 577, column: 15)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 576, column: 20)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !1, line: 574, column: 17)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !1, line: 568, column: 13)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 567, column: 18)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !1, line: 565, column: 15)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 559, column: 11)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !1, line: 558, column: 16)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !1, line: 556, column: 13)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !1, line: 550, column: 9)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !1, line: 549, column: 14)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !1, line: 547, column: 11)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !1, line: 541, column: 7)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !1, line: 540, column: 12)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !1, line: 538, column: 9)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !1, line: 534, column: 5)
!1072 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 533, column: 10)
!1073 = !DILocation(line: 1961, column: 39, scope: !45, inlinedAt: !1036)
!1074 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "status", arg: 1, scope: !28, file: !1, line: 854, type: !14)
!1075 = !DILocation(line: 854, column: 31, scope: !28, inlinedAt: !1039)
!1076 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !28, file: !1, line: 854, type: !14)
!1077 = !DILocation(line: 854, column: 44, scope: !28, inlinedAt: !1039)
!1078 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deviceExtension__TargetDeviceObject", arg: 3, scope: !28, file: !1, line: 854, type: !14)
!1079 = !DILocation(line: 854, column: 54, scope: !28, inlinedAt: !1039)
!1080 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp4", scope: !28, file: !1, line: 855, type: !5)
!1081 = !DILocation(line: 855, column: 17, scope: !28, inlinedAt: !1039)
!1082 = !DILocation(line: 1961, column: 29, scope: !45, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 866, column: 3, scope: !1037, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 648, column: 37, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 646, column: 27)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !1, line: 645, column: 41)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !1, line: 645, column: 29)
!1088 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 644, column: 25)
!1089 = !DILocation(line: 1961, column: 39, scope: !45, inlinedAt: !1083)
!1090 = !DILocation(line: 854, column: 31, scope: !28, inlinedAt: !1084)
!1091 = !DILocation(line: 854, column: 44, scope: !28, inlinedAt: !1084)
!1092 = !DILocation(line: 854, column: 54, scope: !28, inlinedAt: !1084)
!1093 = !DILocation(line: 855, column: 17, scope: !28, inlinedAt: !1084)
!1094 = !DILocation(line: 1961, column: 29, scope: !45, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 866, column: 3, scope: !1037, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 680, column: 37, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 677, column: 27)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !1, line: 676, column: 39)
!1099 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 676, column: 29)
!1100 = !DILocation(line: 1961, column: 39, scope: !45, inlinedAt: !1095)
!1101 = !DILocation(line: 854, column: 31, scope: !28, inlinedAt: !1096)
!1102 = !DILocation(line: 854, column: 44, scope: !28, inlinedAt: !1096)
!1103 = !DILocation(line: 854, column: 54, scope: !28, inlinedAt: !1096)
!1104 = !DILocation(line: 855, column: 17, scope: !28, inlinedAt: !1096)
!1105 = !DILocation(line: 1961, column: 29, scope: !45, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 866, column: 3, scope: !1037, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 705, column: 39, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !1, line: 703, column: 29)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !1, line: 702, column: 60)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 702, column: 31)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 700, column: 27)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !1, line: 698, column: 32)
!1113 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 689, column: 29)
!1114 = !DILocation(line: 1961, column: 39, scope: !45, inlinedAt: !1106)
!1115 = !DILocation(line: 854, column: 31, scope: !28, inlinedAt: !1107)
!1116 = !DILocation(line: 854, column: 44, scope: !28, inlinedAt: !1107)
!1117 = !DILocation(line: 854, column: 54, scope: !28, inlinedAt: !1107)
!1118 = !DILocation(line: 855, column: 17, scope: !28, inlinedAt: !1107)
!1119 = !DILocation(line: 1961, column: 29, scope: !45, inlinedAt: !1120)
!1120 = distinct !DILocation(line: 866, column: 3, scope: !1037, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 734, column: 37, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 731, column: 27)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !1, line: 730, column: 43)
!1124 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 730, column: 29)
!1125 = !DILocation(line: 1961, column: 39, scope: !45, inlinedAt: !1120)
!1126 = !DILocation(line: 854, column: 31, scope: !28, inlinedAt: !1121)
!1127 = !DILocation(line: 854, column: 44, scope: !28, inlinedAt: !1121)
!1128 = !DILocation(line: 854, column: 54, scope: !28, inlinedAt: !1121)
!1129 = !DILocation(line: 855, column: 17, scope: !28, inlinedAt: !1121)
!1130 = !DILocation(line: 1961, column: 29, scope: !45, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 866, column: 3, scope: !1037, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 742, column: 37, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 739, column: 27)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !1, line: 738, column: 51)
!1135 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 738, column: 29)
!1136 = !DILocation(line: 1961, column: 39, scope: !45, inlinedAt: !1131)
!1137 = !DILocation(line: 854, column: 31, scope: !28, inlinedAt: !1132)
!1138 = !DILocation(line: 854, column: 44, scope: !28, inlinedAt: !1132)
!1139 = !DILocation(line: 854, column: 54, scope: !28, inlinedAt: !1132)
!1140 = !DILocation(line: 855, column: 17, scope: !28, inlinedAt: !1132)
!1141 = !DILocation(line: 1961, column: 29, scope: !45, inlinedAt: !1142)
!1142 = distinct !DILocation(line: 866, column: 3, scope: !1037, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 849, column: 13, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 848, column: 3)
!1145 = !DILocation(line: 1961, column: 39, scope: !45, inlinedAt: !1142)
!1146 = !DILocation(line: 854, column: 31, scope: !28, inlinedAt: !1143)
!1147 = !DILocation(line: 854, column: 44, scope: !28, inlinedAt: !1143)
!1148 = !DILocation(line: 854, column: 54, scope: !28, inlinedAt: !1143)
!1149 = !DILocation(line: 855, column: 17, scope: !28, inlinedAt: !1143)
!1150 = !DILocation(line: 531, column: 7, scope: !1026)
!1151 = !DILocation(line: 532, column: 5, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 531, column: 83)
!1153 = !DILocation(line: 535, column: 17, scope: !1071)
!1154 = !DILocation(line: 536, column: 17, scope: !1071)
!1155 = !DILocation(line: 537, column: 17, scope: !1071)
!1156 = !DILocation(line: 538, column: 9, scope: !1070)
!1157 = !DILocation(line: 538, column: 72, scope: !1070)
!1158 = !DILocation(line: 538, column: 69, scope: !1070)
!1159 = !DILocation(line: 538, column: 9, scope: !1071)
!1160 = !DILocation(line: 539, column: 7, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1070, file: !1, line: 538, column: 85)
!1162 = !DILocation(line: 542, column: 19, scope: !1068)
!1163 = !DILocation(line: 543, column: 19, scope: !1068)
!1164 = !DILocation(line: 544, column: 19, scope: !1068)
!1165 = !DILocation(line: 545, column: 19, scope: !1068)
!1166 = !DILocation(line: 546, column: 19, scope: !1068)
!1167 = !DILocation(line: 547, column: 11, scope: !1067)
!1168 = !DILocation(line: 547, column: 74, scope: !1067)
!1169 = !DILocation(line: 547, column: 71, scope: !1067)
!1170 = !DILocation(line: 547, column: 11, scope: !1068)
!1171 = !DILocation(line: 548, column: 9, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1067, file: !1, line: 547, column: 87)
!1173 = !DILocation(line: 551, column: 21, scope: !1065)
!1174 = !DILocation(line: 552, column: 21, scope: !1065)
!1175 = !DILocation(line: 553, column: 21, scope: !1065)
!1176 = !DILocation(line: 554, column: 21, scope: !1065)
!1177 = !DILocation(line: 555, column: 21, scope: !1065)
!1178 = !DILocation(line: 556, column: 13, scope: !1064)
!1179 = !DILocation(line: 556, column: 76, scope: !1064)
!1180 = !DILocation(line: 556, column: 73, scope: !1064)
!1181 = !DILocation(line: 556, column: 13, scope: !1065)
!1182 = !DILocation(line: 557, column: 11, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1064, file: !1, line: 556, column: 89)
!1184 = !DILocation(line: 560, column: 23, scope: !1062)
!1185 = !DILocation(line: 561, column: 23, scope: !1062)
!1186 = !DILocation(line: 562, column: 23, scope: !1062)
!1187 = !DILocation(line: 563, column: 23, scope: !1062)
!1188 = !DILocation(line: 564, column: 23, scope: !1062)
!1189 = !DILocation(line: 565, column: 15, scope: !1061)
!1190 = !DILocation(line: 565, column: 78, scope: !1061)
!1191 = !DILocation(line: 565, column: 75, scope: !1061)
!1192 = !DILocation(line: 565, column: 15, scope: !1062)
!1193 = !DILocation(line: 566, column: 13, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 565, column: 91)
!1195 = !DILocation(line: 569, column: 25, scope: !1059)
!1196 = !DILocation(line: 570, column: 25, scope: !1059)
!1197 = !DILocation(line: 571, column: 25, scope: !1059)
!1198 = !DILocation(line: 572, column: 25, scope: !1059)
!1199 = !DILocation(line: 573, column: 25, scope: !1059)
!1200 = !DILocation(line: 574, column: 17, scope: !1058)
!1201 = !DILocation(line: 574, column: 80, scope: !1058)
!1202 = !DILocation(line: 574, column: 77, scope: !1058)
!1203 = !DILocation(line: 574, column: 17, scope: !1059)
!1204 = !DILocation(line: 575, column: 15, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 574, column: 93)
!1206 = !DILocation(line: 578, column: 27, scope: !1056)
!1207 = !DILocation(line: 579, column: 27, scope: !1056)
!1208 = !DILocation(line: 580, column: 27, scope: !1056)
!1209 = !DILocation(line: 581, column: 27, scope: !1056)
!1210 = !DILocation(line: 582, column: 27, scope: !1056)
!1211 = !DILocation(line: 583, column: 19, scope: !1055)
!1212 = !DILocation(line: 583, column: 82, scope: !1055)
!1213 = !DILocation(line: 583, column: 79, scope: !1055)
!1214 = !DILocation(line: 583, column: 19, scope: !1056)
!1215 = !DILocation(line: 584, column: 17, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 583, column: 95)
!1217 = !DILocation(line: 587, column: 29, scope: !1053)
!1218 = !DILocation(line: 588, column: 29, scope: !1053)
!1219 = !DILocation(line: 589, column: 29, scope: !1053)
!1220 = !DILocation(line: 590, column: 29, scope: !1053)
!1221 = !DILocation(line: 591, column: 29, scope: !1053)
!1222 = !DILocation(line: 592, column: 21, scope: !1052)
!1223 = !DILocation(line: 592, column: 84, scope: !1052)
!1224 = !DILocation(line: 592, column: 81, scope: !1052)
!1225 = !DILocation(line: 592, column: 21, scope: !1053)
!1226 = !DILocation(line: 593, column: 19, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1052, file: !1, line: 592, column: 97)
!1228 = !DILocation(line: 596, column: 31, scope: !1050)
!1229 = !DILocation(line: 597, column: 31, scope: !1050)
!1230 = !DILocation(line: 598, column: 31, scope: !1050)
!1231 = !DILocation(line: 599, column: 31, scope: !1050)
!1232 = !DILocation(line: 600, column: 32, scope: !1050)
!1233 = !DILocation(line: 601, column: 23, scope: !1049)
!1234 = !DILocation(line: 601, column: 86, scope: !1049)
!1235 = !DILocation(line: 601, column: 83, scope: !1049)
!1236 = !DILocation(line: 601, column: 23, scope: !1050)
!1237 = !DILocation(line: 602, column: 21, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 601, column: 100)
!1239 = !DILocation(line: 605, column: 34, scope: !1047)
!1240 = !DILocation(line: 606, column: 34, scope: !1047)
!1241 = !DILocation(line: 607, column: 34, scope: !1047)
!1242 = !DILocation(line: 608, column: 34, scope: !1047)
!1243 = !DILocation(line: 609, column: 34, scope: !1047)
!1244 = !DILocation(line: 610, column: 25, scope: !1046)
!1245 = !DILocation(line: 610, column: 88, scope: !1046)
!1246 = !DILocation(line: 610, column: 85, scope: !1046)
!1247 = !DILocation(line: 610, column: 25, scope: !1047)
!1248 = !DILocation(line: 611, column: 23, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1046, file: !1, line: 610, column: 102)
!1250 = !DILocation(line: 613, column: 23, scope: !1045)
!1251 = !DILocation(line: 614, column: 27, scope: !1045)
!1252 = !DILocation(line: 614, column: 30, scope: !1044)
!1253 = !DILocation(line: 617, column: 51, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 616, column: 25)
!1255 = !DILocation(line: 617, column: 31, scope: !1254)
!1256 = !DILocation(line: 617, column: 29, scope: !1254)
!1257 = !DILocation(line: 619, column: 29, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 619, column: 29)
!1259 = !DILocation(line: 619, column: 29, scope: !1043)
!1260 = !DILocation(line: 620, column: 34, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1258, file: !1, line: 619, column: 34)
!1262 = !DILocation(line: 621, column: 54, scope: !1261)
!1263 = !DILocation(line: 622, column: 27, scope: !1261)
!1264 = !DILocation(line: 624, column: 29, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 624, column: 29)
!1266 = !DILocation(line: 624, column: 29, scope: !1043)
!1267 = !DILocation(line: 625, column: 34, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1265, file: !1, line: 624, column: 95)
!1269 = !DILocation(line: 626, column: 54, scope: !1268)
!1270 = !DILocation(line: 627, column: 27, scope: !1268)
!1271 = !DILocation(line: 629, column: 29, scope: !1042)
!1272 = !DILocation(line: 629, column: 41, scope: !1042)
!1273 = !DILocation(line: 629, column: 29, scope: !1043)
!1274 = !DILocation(line: 631, column: 34, scope: !1040)
!1275 = !DILocation(line: 632, column: 54, scope: !1040)
!1276 = !DILocation(line: 633, column: 59, scope: !1040)
!1277 = !DILocation(line: 633, column: 67, scope: !1040)
!1278 = !DILocation(line: 633, column: 72, scope: !1040)
!1279 = !DILocation(line: 633, column: 37, scope: !1040)
!1280 = !DILocation(line: 859, column: 32, scope: !1281, inlinedAt: !1039)
!1281 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 858, column: 3)
!1282 = !DILocation(line: 859, column: 16, scope: !1281, inlinedAt: !1039)
!1283 = !DILocation(line: 859, column: 14, scope: !1281, inlinedAt: !1039)
!1284 = !DILocation(line: 860, column: 7, scope: !1285, inlinedAt: !1039)
!1285 = distinct !DILexicalBlock(scope: !1281, file: !1, line: 860, column: 7)
!1286 = !DILocation(line: 860, column: 18, scope: !1285, inlinedAt: !1039)
!1287 = !DILocation(line: 860, column: 7, scope: !1281, inlinedAt: !1039)
!1288 = !DILocation(line: 862, column: 3, scope: !1289, inlinedAt: !1039)
!1289 = distinct !DILexicalBlock(scope: !1285, file: !1, line: 860, column: 34)
!1290 = !DILocation(line: 865, column: 14, scope: !1037, inlinedAt: !1039)
!1291 = !DILocation(line: 865, column: 12, scope: !1037, inlinedAt: !1039)
!1292 = !DILocation(line: 866, column: 22, scope: !1037, inlinedAt: !1039)
!1293 = !DILocation(line: 866, column: 3, scope: !1037, inlinedAt: !1039)
!1294 = !DILocation(line: 1965, column: 7, scope: !435, inlinedAt: !1036)
!1295 = !DILocation(line: 1965, column: 12, scope: !435, inlinedAt: !1036)
!1296 = !DILocation(line: 1965, column: 9, scope: !435, inlinedAt: !1036)
!1297 = !DILocation(line: 1965, column: 7, scope: !436, inlinedAt: !1036)
!1298 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !1299)
!1299 = distinct !DILocation(line: 1969, column: 5, scope: !442, inlinedAt: !1036)
!1300 = !DILocation(line: 1966, column: 9, scope: !445, inlinedAt: !1036)
!1301 = !DILocation(line: 1966, column: 7, scope: !445, inlinedAt: !1036)
!1302 = !DILocation(line: 1972, column: 3, scope: !436, inlinedAt: !1036)
!1303 = !DILocation(line: 868, column: 11, scope: !1038, inlinedAt: !1039)
!1304 = !DILocation(line: 868, column: 3, scope: !1038, inlinedAt: !1039)
!1305 = !DILocation(line: 633, column: 35, scope: !1040)
!1306 = !DILocation(line: 635, column: 35, scope: !1041)
!1307 = !DILocation(line: 635, column: 27, scope: !1041)
!1308 = !DILocation(line: 638, column: 40, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 637, column: 25)
!1310 = !DILocation(line: 639, column: 51, scope: !1309)
!1311 = !DILocation(line: 640, column: 43, scope: !1309)
!1312 = !DILocation(line: 641, column: 53, scope: !1309)
!1313 = !DILocation(line: 641, column: 70, scope: !1309)
!1314 = !DILocation(line: 641, column: 75, scope: !1309)
!1315 = !DILocation(line: 642, column: 53, scope: !1309)
!1316 = !DILocation(line: 641, column: 34, scope: !1309)
!1317 = !DILocation(line: 641, column: 32, scope: !1309)
!1318 = !DILocation(line: 645, column: 29, scope: !1087)
!1319 = !DILocation(line: 645, column: 36, scope: !1087)
!1320 = !DILocation(line: 645, column: 29, scope: !1088)
!1321 = !DILocation(line: 647, column: 54, scope: !1085)
!1322 = !DILocation(line: 648, column: 59, scope: !1085)
!1323 = !DILocation(line: 648, column: 67, scope: !1085)
!1324 = !DILocation(line: 648, column: 72, scope: !1085)
!1325 = !DILocation(line: 648, column: 37, scope: !1085)
!1326 = !DILocation(line: 859, column: 32, scope: !1281, inlinedAt: !1084)
!1327 = !DILocation(line: 859, column: 16, scope: !1281, inlinedAt: !1084)
!1328 = !DILocation(line: 859, column: 14, scope: !1281, inlinedAt: !1084)
!1329 = !DILocation(line: 860, column: 7, scope: !1285, inlinedAt: !1084)
!1330 = !DILocation(line: 860, column: 18, scope: !1285, inlinedAt: !1084)
!1331 = !DILocation(line: 860, column: 7, scope: !1281, inlinedAt: !1084)
!1332 = !DILocation(line: 862, column: 3, scope: !1289, inlinedAt: !1084)
!1333 = !DILocation(line: 865, column: 14, scope: !1037, inlinedAt: !1084)
!1334 = !DILocation(line: 865, column: 12, scope: !1037, inlinedAt: !1084)
!1335 = !DILocation(line: 866, column: 22, scope: !1037, inlinedAt: !1084)
!1336 = !DILocation(line: 866, column: 3, scope: !1037, inlinedAt: !1084)
!1337 = !DILocation(line: 1965, column: 7, scope: !435, inlinedAt: !1083)
!1338 = !DILocation(line: 1965, column: 12, scope: !435, inlinedAt: !1083)
!1339 = !DILocation(line: 1965, column: 9, scope: !435, inlinedAt: !1083)
!1340 = !DILocation(line: 1965, column: 7, scope: !436, inlinedAt: !1083)
!1341 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 1969, column: 5, scope: !442, inlinedAt: !1083)
!1343 = !DILocation(line: 1966, column: 9, scope: !445, inlinedAt: !1083)
!1344 = !DILocation(line: 1966, column: 7, scope: !445, inlinedAt: !1083)
!1345 = !DILocation(line: 1972, column: 3, scope: !436, inlinedAt: !1083)
!1346 = !DILocation(line: 868, column: 11, scope: !1038, inlinedAt: !1084)
!1347 = !DILocation(line: 868, column: 3, scope: !1038, inlinedAt: !1084)
!1348 = !DILocation(line: 648, column: 35, scope: !1085)
!1349 = !DILocation(line: 650, column: 35, scope: !1086)
!1350 = !DILocation(line: 650, column: 27, scope: !1086)
!1351 = !DILocation(line: 652, column: 34, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1087, file: !1, line: 651, column: 32)
!1353 = !DILocation(line: 655, column: 54, scope: !1043)
!1354 = !DILocation(line: 655, column: 52, scope: !1043)
!1355 = !DILocation(line: 656, column: 29, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 656, column: 29)
!1357 = !DILocation(line: 656, column: 62, scope: !1356)
!1358 = !DILocation(line: 656, column: 29, scope: !1043)
!1359 = !DILocation(line: 657, column: 27, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1356, file: !1, line: 656, column: 68)
!1361 = !DILocation(line: 659, column: 52, scope: !1043)
!1362 = !DILocation(line: 660, column: 51, scope: !1043)
!1363 = !DILocation(line: 661, column: 25, scope: !1043)
!1364 = !DILocation(line: 663, column: 29, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 663, column: 29)
!1366 = !DILocation(line: 663, column: 29, scope: !1043)
!1367 = !DILocation(line: 664, column: 34, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1365, file: !1, line: 663, column: 95)
!1369 = !DILocation(line: 665, column: 54, scope: !1368)
!1370 = !DILocation(line: 666, column: 27, scope: !1368)
!1371 = !DILocation(line: 669, column: 55, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 668, column: 25)
!1373 = !DILocation(line: 669, column: 35, scope: !1372)
!1374 = !DILocation(line: 669, column: 33, scope: !1372)
!1375 = !DILocation(line: 671, column: 29, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 671, column: 29)
!1377 = !DILocation(line: 671, column: 29, scope: !1043)
!1378 = !DILocation(line: 672, column: 34, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1376, file: !1, line: 671, column: 38)
!1380 = !DILocation(line: 673, column: 54, scope: !1379)
!1381 = !DILocation(line: 674, column: 27, scope: !1379)
!1382 = !DILocation(line: 676, column: 29, scope: !1099)
!1383 = !DILocation(line: 676, column: 33, scope: !1099)
!1384 = !DILocation(line: 676, column: 29, scope: !1043)
!1385 = !DILocation(line: 678, column: 34, scope: !1097)
!1386 = !DILocation(line: 679, column: 54, scope: !1097)
!1387 = !DILocation(line: 680, column: 59, scope: !1097)
!1388 = !DILocation(line: 680, column: 67, scope: !1097)
!1389 = !DILocation(line: 680, column: 72, scope: !1097)
!1390 = !DILocation(line: 680, column: 37, scope: !1097)
!1391 = !DILocation(line: 859, column: 32, scope: !1281, inlinedAt: !1096)
!1392 = !DILocation(line: 859, column: 16, scope: !1281, inlinedAt: !1096)
!1393 = !DILocation(line: 859, column: 14, scope: !1281, inlinedAt: !1096)
!1394 = !DILocation(line: 860, column: 7, scope: !1285, inlinedAt: !1096)
!1395 = !DILocation(line: 860, column: 18, scope: !1285, inlinedAt: !1096)
!1396 = !DILocation(line: 860, column: 7, scope: !1281, inlinedAt: !1096)
!1397 = !DILocation(line: 862, column: 3, scope: !1289, inlinedAt: !1096)
!1398 = !DILocation(line: 865, column: 14, scope: !1037, inlinedAt: !1096)
!1399 = !DILocation(line: 865, column: 12, scope: !1037, inlinedAt: !1096)
!1400 = !DILocation(line: 866, column: 22, scope: !1037, inlinedAt: !1096)
!1401 = !DILocation(line: 866, column: 3, scope: !1037, inlinedAt: !1096)
!1402 = !DILocation(line: 1965, column: 7, scope: !435, inlinedAt: !1095)
!1403 = !DILocation(line: 1965, column: 12, scope: !435, inlinedAt: !1095)
!1404 = !DILocation(line: 1965, column: 9, scope: !435, inlinedAt: !1095)
!1405 = !DILocation(line: 1965, column: 7, scope: !436, inlinedAt: !1095)
!1406 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !1407)
!1407 = distinct !DILocation(line: 1969, column: 5, scope: !442, inlinedAt: !1095)
!1408 = !DILocation(line: 1966, column: 9, scope: !445, inlinedAt: !1095)
!1409 = !DILocation(line: 1966, column: 7, scope: !445, inlinedAt: !1095)
!1410 = !DILocation(line: 1972, column: 3, scope: !436, inlinedAt: !1095)
!1411 = !DILocation(line: 868, column: 11, scope: !1038, inlinedAt: !1096)
!1412 = !DILocation(line: 868, column: 3, scope: !1038, inlinedAt: !1096)
!1413 = !DILocation(line: 680, column: 35, scope: !1097)
!1414 = !DILocation(line: 682, column: 35, scope: !1098)
!1415 = !DILocation(line: 682, column: 27, scope: !1098)
!1416 = !DILocation(line: 685, column: 43, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 684, column: 25)
!1418 = !DILocation(line: 686, column: 40, scope: !1417)
!1419 = !DILocation(line: 687, column: 53, scope: !1417)
!1420 = !DILocation(line: 687, column: 70, scope: !1417)
!1421 = !DILocation(line: 687, column: 75, scope: !1417)
!1422 = !DILocation(line: 687, column: 80, scope: !1417)
!1423 = !DILocation(line: 687, column: 34, scope: !1417)
!1424 = !DILocation(line: 687, column: 32, scope: !1417)
!1425 = !DILocation(line: 689, column: 29, scope: !1113)
!1426 = !DILocation(line: 689, column: 36, scope: !1113)
!1427 = !DILocation(line: 689, column: 29, scope: !1043)
!1428 = !DILocation(line: 691, column: 58, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !1, line: 690, column: 27)
!1430 = distinct !DILexicalBlock(scope: !1113, file: !1, line: 689, column: 42)
!1431 = !DILocation(line: 691, column: 42, scope: !1429)
!1432 = !DILocation(line: 691, column: 40, scope: !1429)
!1433 = !DILocation(line: 692, column: 31, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1429, file: !1, line: 692, column: 31)
!1435 = !DILocation(line: 692, column: 44, scope: !1434)
!1436 = !DILocation(line: 692, column: 31, scope: !1429)
!1437 = !DILocation(line: 693, column: 36, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1434, file: !1, line: 692, column: 60)
!1439 = !DILocation(line: 694, column: 27, scope: !1438)
!1440 = !DILocation(line: 695, column: 29, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1434, file: !1, line: 694, column: 34)
!1442 = !DILocation(line: 698, column: 25, scope: !1430)
!1443 = !DILocation(line: 698, column: 32, scope: !1113)
!1444 = !DILocation(line: 701, column: 58, scope: !1111)
!1445 = !DILocation(line: 701, column: 42, scope: !1111)
!1446 = !DILocation(line: 701, column: 40, scope: !1111)
!1447 = !DILocation(line: 702, column: 31, scope: !1110)
!1448 = !DILocation(line: 702, column: 44, scope: !1110)
!1449 = !DILocation(line: 702, column: 31, scope: !1111)
!1450 = !DILocation(line: 704, column: 56, scope: !1108)
!1451 = !DILocation(line: 705, column: 61, scope: !1108)
!1452 = !DILocation(line: 705, column: 69, scope: !1108)
!1453 = !DILocation(line: 705, column: 74, scope: !1108)
!1454 = !DILocation(line: 705, column: 39, scope: !1108)
!1455 = !DILocation(line: 859, column: 32, scope: !1281, inlinedAt: !1107)
!1456 = !DILocation(line: 859, column: 16, scope: !1281, inlinedAt: !1107)
!1457 = !DILocation(line: 859, column: 14, scope: !1281, inlinedAt: !1107)
!1458 = !DILocation(line: 860, column: 7, scope: !1285, inlinedAt: !1107)
!1459 = !DILocation(line: 860, column: 18, scope: !1285, inlinedAt: !1107)
!1460 = !DILocation(line: 860, column: 7, scope: !1281, inlinedAt: !1107)
!1461 = !DILocation(line: 862, column: 3, scope: !1289, inlinedAt: !1107)
!1462 = !DILocation(line: 865, column: 14, scope: !1037, inlinedAt: !1107)
!1463 = !DILocation(line: 865, column: 12, scope: !1037, inlinedAt: !1107)
!1464 = !DILocation(line: 866, column: 22, scope: !1037, inlinedAt: !1107)
!1465 = !DILocation(line: 866, column: 3, scope: !1037, inlinedAt: !1107)
!1466 = !DILocation(line: 1965, column: 7, scope: !435, inlinedAt: !1106)
!1467 = !DILocation(line: 1965, column: 12, scope: !435, inlinedAt: !1106)
!1468 = !DILocation(line: 1965, column: 9, scope: !435, inlinedAt: !1106)
!1469 = !DILocation(line: 1965, column: 7, scope: !436, inlinedAt: !1106)
!1470 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 1969, column: 5, scope: !442, inlinedAt: !1106)
!1472 = !DILocation(line: 1966, column: 9, scope: !445, inlinedAt: !1106)
!1473 = !DILocation(line: 1966, column: 7, scope: !445, inlinedAt: !1106)
!1474 = !DILocation(line: 1972, column: 3, scope: !436, inlinedAt: !1106)
!1475 = !DILocation(line: 868, column: 11, scope: !1038, inlinedAt: !1107)
!1476 = !DILocation(line: 868, column: 3, scope: !1038, inlinedAt: !1107)
!1477 = !DILocation(line: 705, column: 37, scope: !1108)
!1478 = !DILocation(line: 707, column: 37, scope: !1109)
!1479 = !DILocation(line: 707, column: 29, scope: !1109)
!1480 = !DILocation(line: 711, column: 40, scope: !1043)
!1481 = !DILocation(line: 711, column: 68, scope: !1043)
!1482 = !DILocation(line: 711, column: 66, scope: !1043)
!1483 = !DILocation(line: 711, column: 38, scope: !1043)
!1484 = !DILocation(line: 712, column: 38, scope: !1043)
!1485 = !DILocation(line: 712, column: 51, scope: !1043)
!1486 = !DILocation(line: 712, column: 36, scope: !1043)
!1487 = !DILocation(line: 713, column: 42, scope: !1043)
!1488 = !DILocation(line: 713, column: 40, scope: !1043)
!1489 = !DILocation(line: 714, column: 29, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 714, column: 29)
!1491 = !DILocation(line: 714, column: 46, scope: !1490)
!1492 = !DILocation(line: 714, column: 44, scope: !1490)
!1493 = !DILocation(line: 714, column: 29, scope: !1043)
!1494 = !DILocation(line: 715, column: 44, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1490, file: !1, line: 714, column: 58)
!1496 = !DILocation(line: 715, column: 42, scope: !1495)
!1497 = !DILocation(line: 716, column: 25, scope: !1495)
!1498 = !DILocation(line: 717, column: 44, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1490, file: !1, line: 716, column: 32)
!1500 = !DILocation(line: 717, column: 42, scope: !1499)
!1501 = !DILocation(line: 719, column: 29, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 719, column: 29)
!1503 = !DILocation(line: 719, column: 46, scope: !1502)
!1504 = !DILocation(line: 719, column: 44, scope: !1502)
!1505 = !DILocation(line: 719, column: 29, scope: !1043)
!1506 = !DILocation(line: 720, column: 29, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1502, file: !1, line: 719, column: 58)
!1508 = !DILocation(line: 721, column: 25, scope: !1507)
!1509 = !DILocation(line: 722, column: 25, scope: !1043)
!1510 = !DILocation(line: 724, column: 35, scope: !1043)
!1511 = !DILocation(line: 724, column: 33, scope: !1043)
!1512 = !DILocation(line: 725, column: 29, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 725, column: 29)
!1514 = !DILocation(line: 725, column: 96, scope: !1513)
!1515 = !DILocation(line: 725, column: 94, scope: !1513)
!1516 = !DILocation(line: 725, column: 29, scope: !1043)
!1517 = !DILocation(line: 726, column: 34, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1513, file: !1, line: 725, column: 128)
!1519 = !DILocation(line: 727, column: 54, scope: !1518)
!1520 = !DILocation(line: 728, column: 27, scope: !1518)
!1521 = !DILocation(line: 730, column: 29, scope: !1124)
!1522 = !DILocation(line: 730, column: 37, scope: !1124)
!1523 = !DILocation(line: 730, column: 29, scope: !1043)
!1524 = !DILocation(line: 732, column: 34, scope: !1122)
!1525 = !DILocation(line: 733, column: 54, scope: !1122)
!1526 = !DILocation(line: 734, column: 59, scope: !1122)
!1527 = !DILocation(line: 734, column: 67, scope: !1122)
!1528 = !DILocation(line: 734, column: 72, scope: !1122)
!1529 = !DILocation(line: 734, column: 37, scope: !1122)
!1530 = !DILocation(line: 859, column: 32, scope: !1281, inlinedAt: !1121)
!1531 = !DILocation(line: 859, column: 16, scope: !1281, inlinedAt: !1121)
!1532 = !DILocation(line: 859, column: 14, scope: !1281, inlinedAt: !1121)
!1533 = !DILocation(line: 860, column: 7, scope: !1285, inlinedAt: !1121)
!1534 = !DILocation(line: 860, column: 18, scope: !1285, inlinedAt: !1121)
!1535 = !DILocation(line: 860, column: 7, scope: !1281, inlinedAt: !1121)
!1536 = !DILocation(line: 862, column: 3, scope: !1289, inlinedAt: !1121)
!1537 = !DILocation(line: 865, column: 14, scope: !1037, inlinedAt: !1121)
!1538 = !DILocation(line: 865, column: 12, scope: !1037, inlinedAt: !1121)
!1539 = !DILocation(line: 866, column: 22, scope: !1037, inlinedAt: !1121)
!1540 = !DILocation(line: 866, column: 3, scope: !1037, inlinedAt: !1121)
!1541 = !DILocation(line: 1965, column: 7, scope: !435, inlinedAt: !1120)
!1542 = !DILocation(line: 1965, column: 12, scope: !435, inlinedAt: !1120)
!1543 = !DILocation(line: 1965, column: 9, scope: !435, inlinedAt: !1120)
!1544 = !DILocation(line: 1965, column: 7, scope: !436, inlinedAt: !1120)
!1545 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 1969, column: 5, scope: !442, inlinedAt: !1120)
!1547 = !DILocation(line: 1966, column: 9, scope: !445, inlinedAt: !1120)
!1548 = !DILocation(line: 1966, column: 7, scope: !445, inlinedAt: !1120)
!1549 = !DILocation(line: 1972, column: 3, scope: !436, inlinedAt: !1120)
!1550 = !DILocation(line: 868, column: 11, scope: !1038, inlinedAt: !1121)
!1551 = !DILocation(line: 868, column: 3, scope: !1038, inlinedAt: !1121)
!1552 = !DILocation(line: 734, column: 35, scope: !1122)
!1553 = !DILocation(line: 736, column: 35, scope: !1123)
!1554 = !DILocation(line: 736, column: 27, scope: !1123)
!1555 = !DILocation(line: 738, column: 29, scope: !1135)
!1556 = !DILocation(line: 738, column: 45, scope: !1135)
!1557 = !DILocation(line: 738, column: 29, scope: !1043)
!1558 = !DILocation(line: 740, column: 34, scope: !1133)
!1559 = !DILocation(line: 741, column: 54, scope: !1133)
!1560 = !DILocation(line: 742, column: 59, scope: !1133)
!1561 = !DILocation(line: 742, column: 67, scope: !1133)
!1562 = !DILocation(line: 742, column: 72, scope: !1133)
!1563 = !DILocation(line: 742, column: 37, scope: !1133)
!1564 = !DILocation(line: 859, column: 32, scope: !1281, inlinedAt: !1132)
!1565 = !DILocation(line: 859, column: 16, scope: !1281, inlinedAt: !1132)
!1566 = !DILocation(line: 859, column: 14, scope: !1281, inlinedAt: !1132)
!1567 = !DILocation(line: 860, column: 7, scope: !1285, inlinedAt: !1132)
!1568 = !DILocation(line: 860, column: 18, scope: !1285, inlinedAt: !1132)
!1569 = !DILocation(line: 860, column: 7, scope: !1281, inlinedAt: !1132)
!1570 = !DILocation(line: 862, column: 3, scope: !1289, inlinedAt: !1132)
!1571 = !DILocation(line: 865, column: 14, scope: !1037, inlinedAt: !1132)
!1572 = !DILocation(line: 865, column: 12, scope: !1037, inlinedAt: !1132)
!1573 = !DILocation(line: 866, column: 22, scope: !1037, inlinedAt: !1132)
!1574 = !DILocation(line: 866, column: 3, scope: !1037, inlinedAt: !1132)
!1575 = !DILocation(line: 1965, column: 7, scope: !435, inlinedAt: !1131)
!1576 = !DILocation(line: 1965, column: 12, scope: !435, inlinedAt: !1131)
!1577 = !DILocation(line: 1965, column: 9, scope: !435, inlinedAt: !1131)
!1578 = !DILocation(line: 1965, column: 7, scope: !436, inlinedAt: !1131)
!1579 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 1969, column: 5, scope: !442, inlinedAt: !1131)
!1581 = !DILocation(line: 1966, column: 9, scope: !445, inlinedAt: !1131)
!1582 = !DILocation(line: 1966, column: 7, scope: !445, inlinedAt: !1131)
!1583 = !DILocation(line: 1972, column: 3, scope: !436, inlinedAt: !1131)
!1584 = !DILocation(line: 868, column: 11, scope: !1038, inlinedAt: !1132)
!1585 = !DILocation(line: 868, column: 3, scope: !1038, inlinedAt: !1132)
!1586 = !DILocation(line: 742, column: 35, scope: !1133)
!1587 = !DILocation(line: 744, column: 35, scope: !1134)
!1588 = !DILocation(line: 744, column: 27, scope: !1134)
!1589 = !DILocation(line: 747, column: 40, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 746, column: 25)
!1591 = !DILocation(line: 748, column: 43, scope: !1590)
!1592 = !DILocation(line: 749, column: 53, scope: !1590)
!1593 = !DILocation(line: 749, column: 70, scope: !1590)
!1594 = !DILocation(line: 749, column: 75, scope: !1590)
!1595 = !DILocation(line: 750, column: 53, scope: !1590)
!1596 = !DILocation(line: 749, column: 34, scope: !1590)
!1597 = !DILocation(line: 749, column: 32, scope: !1590)
!1598 = !DILocation(line: 752, column: 29, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 752, column: 29)
!1600 = !DILocation(line: 752, column: 36, scope: !1599)
!1601 = !DILocation(line: 752, column: 29, scope: !1043)
!1602 = !DILocation(line: 753, column: 56, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1599, file: !1, line: 752, column: 42)
!1604 = !DILocation(line: 753, column: 54, scope: !1603)
!1605 = !DILocation(line: 754, column: 25, scope: !1603)
!1606 = !DILocation(line: 755, column: 54, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1599, file: !1, line: 754, column: 32)
!1608 = !DILocation(line: 757, column: 25, scope: !1043)
!1609 = !DILocation(line: 759, column: 39, scope: !1043)
!1610 = !DILocation(line: 759, column: 37, scope: !1043)
!1611 = !DILocation(line: 760, column: 52, scope: !1043)
!1612 = !DILocation(line: 761, column: 29, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 761, column: 29)
!1614 = !DILocation(line: 761, column: 95, scope: !1613)
!1615 = !DILocation(line: 761, column: 93, scope: !1613)
!1616 = !DILocation(line: 761, column: 29, scope: !1043)
!1617 = !DILocation(line: 762, column: 34, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1613, file: !1, line: 761, column: 125)
!1619 = !DILocation(line: 763, column: 27, scope: !1618)
!1620 = !DILocation(line: 765, column: 29, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 765, column: 29)
!1622 = !DILocation(line: 765, column: 55, scope: !1621)
!1623 = !DILocation(line: 765, column: 52, scope: !1621)
!1624 = !DILocation(line: 765, column: 29, scope: !1043)
!1625 = !DILocation(line: 766, column: 31, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !1, line: 766, column: 31)
!1627 = distinct !DILexicalBlock(scope: !1621, file: !1, line: 765, column: 77)
!1628 = !DILocation(line: 766, column: 57, scope: !1626)
!1629 = !DILocation(line: 766, column: 54, scope: !1626)
!1630 = !DILocation(line: 766, column: 31, scope: !1627)
!1631 = !DILocation(line: 767, column: 33, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !1, line: 767, column: 33)
!1633 = distinct !DILexicalBlock(scope: !1626, file: !1, line: 766, column: 79)
!1634 = !DILocation(line: 767, column: 59, scope: !1632)
!1635 = !DILocation(line: 767, column: 56, scope: !1632)
!1636 = !DILocation(line: 767, column: 33, scope: !1633)
!1637 = !DILocation(line: 769, column: 29, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1632, file: !1, line: 767, column: 81)
!1639 = !DILocation(line: 770, column: 27, scope: !1633)
!1640 = !DILocation(line: 771, column: 25, scope: !1627)
!1641 = !DILocation(line: 773, column: 40, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 772, column: 25)
!1643 = !DILocation(line: 774, column: 43, scope: !1642)
!1644 = !DILocation(line: 775, column: 53, scope: !1642)
!1645 = !DILocation(line: 775, column: 70, scope: !1642)
!1646 = !DILocation(line: 775, column: 34, scope: !1642)
!1647 = !DILocation(line: 775, column: 32, scope: !1642)
!1648 = !DILocation(line: 777, column: 29, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 777, column: 29)
!1650 = !DILocation(line: 777, column: 36, scope: !1649)
!1651 = !DILocation(line: 777, column: 29, scope: !1043)
!1652 = !DILocation(line: 778, column: 31, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !1, line: 778, column: 31)
!1654 = distinct !DILexicalBlock(scope: !1649, file: !1, line: 777, column: 42)
!1655 = !DILocation(line: 778, column: 66, scope: !1653)
!1656 = !DILocation(line: 778, column: 31, scope: !1654)
!1657 = !DILocation(line: 780, column: 27, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1653, file: !1, line: 778, column: 73)
!1659 = !DILocation(line: 781, column: 25, scope: !1654)
!1660 = !DILocation(line: 782, column: 25, scope: !1043)
!1661 = !DILocation(line: 784, column: 43, scope: !1043)
!1662 = !DILocation(line: 784, column: 41, scope: !1043)
!1663 = !DILocation(line: 785, column: 52, scope: !1043)
!1664 = !DILocation(line: 786, column: 29, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 786, column: 29)
!1666 = !DILocation(line: 786, column: 95, scope: !1665)
!1667 = !DILocation(line: 786, column: 93, scope: !1665)
!1668 = !DILocation(line: 786, column: 29, scope: !1043)
!1669 = !DILocation(line: 787, column: 34, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1665, file: !1, line: 786, column: 125)
!1671 = !DILocation(line: 788, column: 27, scope: !1670)
!1672 = !DILocation(line: 791, column: 40, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 790, column: 25)
!1674 = !DILocation(line: 792, column: 43, scope: !1673)
!1675 = !DILocation(line: 793, column: 53, scope: !1673)
!1676 = !DILocation(line: 793, column: 70, scope: !1673)
!1677 = !DILocation(line: 793, column: 34, scope: !1673)
!1678 = !DILocation(line: 793, column: 32, scope: !1673)
!1679 = !DILocation(line: 796, column: 29, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !1, line: 796, column: 29)
!1681 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 795, column: 25)
!1682 = !DILocation(line: 796, column: 36, scope: !1680)
!1683 = !DILocation(line: 796, column: 29, scope: !1681)
!1684 = !DILocation(line: 798, column: 25, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1680, file: !1, line: 796, column: 41)
!1686 = !DILocation(line: 800, column: 25, scope: !1043)
!1687 = !DILocation(line: 803, column: 52, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 802, column: 25)
!1689 = !DILocation(line: 804, column: 40, scope: !1688)
!1690 = !DILocation(line: 805, column: 43, scope: !1688)
!1691 = !DILocation(line: 806, column: 53, scope: !1688)
!1692 = !DILocation(line: 806, column: 70, scope: !1688)
!1693 = !DILocation(line: 806, column: 34, scope: !1688)
!1694 = !DILocation(line: 806, column: 32, scope: !1688)
!1695 = !DILocation(line: 808, column: 25, scope: !1043)
!1696 = !DILocation(line: 812, column: 52, scope: !1043)
!1697 = !DILocation(line: 813, column: 32, scope: !1043)
!1698 = !DILocation(line: 814, column: 25, scope: !1043)
!1699 = !DILocation(line: 817, column: 45, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 816, column: 25)
!1701 = !DILocation(line: 817, column: 25, scope: !1700)
!1702 = !DILocation(line: 818, column: 25, scope: !1700)
!1703 = !DILocation(line: 821, column: 59, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 820, column: 25)
!1705 = !DILocation(line: 821, column: 73, scope: !1704)
!1706 = !DILocation(line: 821, column: 35, scope: !1704)
!1707 = !DILocation(line: 821, column: 33, scope: !1704)
!1708 = !DILocation(line: 823, column: 33, scope: !1043)
!1709 = !DILocation(line: 823, column: 25, scope: !1043)
!1710 = !DILocation(line: 825, column: 30, scope: !1044)
!1711 = !DILocation(line: 849, column: 35, scope: !1144)
!1712 = !DILocation(line: 849, column: 43, scope: !1144)
!1713 = !DILocation(line: 849, column: 48, scope: !1144)
!1714 = !DILocation(line: 849, column: 13, scope: !1144)
!1715 = !DILocation(line: 859, column: 32, scope: !1281, inlinedAt: !1143)
!1716 = !DILocation(line: 859, column: 16, scope: !1281, inlinedAt: !1143)
!1717 = !DILocation(line: 859, column: 14, scope: !1281, inlinedAt: !1143)
!1718 = !DILocation(line: 860, column: 7, scope: !1285, inlinedAt: !1143)
!1719 = !DILocation(line: 860, column: 18, scope: !1285, inlinedAt: !1143)
!1720 = !DILocation(line: 860, column: 7, scope: !1281, inlinedAt: !1143)
!1721 = !DILocation(line: 862, column: 3, scope: !1289, inlinedAt: !1143)
!1722 = !DILocation(line: 865, column: 14, scope: !1037, inlinedAt: !1143)
!1723 = !DILocation(line: 865, column: 12, scope: !1037, inlinedAt: !1143)
!1724 = !DILocation(line: 866, column: 22, scope: !1037, inlinedAt: !1143)
!1725 = !DILocation(line: 866, column: 3, scope: !1037, inlinedAt: !1143)
!1726 = !DILocation(line: 1965, column: 7, scope: !435, inlinedAt: !1142)
!1727 = !DILocation(line: 1965, column: 12, scope: !435, inlinedAt: !1142)
!1728 = !DILocation(line: 1965, column: 9, scope: !435, inlinedAt: !1142)
!1729 = !DILocation(line: 1965, column: 7, scope: !436, inlinedAt: !1142)
!1730 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 1969, column: 5, scope: !442, inlinedAt: !1142)
!1732 = !DILocation(line: 1966, column: 9, scope: !445, inlinedAt: !1142)
!1733 = !DILocation(line: 1966, column: 7, scope: !445, inlinedAt: !1142)
!1734 = !DILocation(line: 1972, column: 3, scope: !436, inlinedAt: !1142)
!1735 = !DILocation(line: 868, column: 11, scope: !1038, inlinedAt: !1143)
!1736 = !DILocation(line: 868, column: 3, scope: !1038, inlinedAt: !1143)
!1737 = !DILocation(line: 849, column: 11, scope: !1144)
!1738 = !DILocation(line: 851, column: 11, scope: !1017)
!1739 = !DILocation(line: 851, column: 3, scope: !1017)
!1740 = !DILocation(line: 853, column: 1, scope: !27)
!1741 = !DILocation(line: 854, column: 31, scope: !28)
!1742 = !DILocation(line: 854, column: 44, scope: !28)
!1743 = !DILocation(line: 854, column: 54, scope: !28)
!1744 = !DILocation(line: 855, column: 17, scope: !28)
!1745 = !DILocation(line: 859, column: 32, scope: !1281)
!1746 = !DILocation(line: 859, column: 16, scope: !1281)
!1747 = !DILocation(line: 859, column: 14, scope: !1281)
!1748 = !DILocation(line: 860, column: 7, scope: !1285)
!1749 = !DILocation(line: 860, column: 18, scope: !1285)
!1750 = !DILocation(line: 1961, column: 29, scope: !45, inlinedAt: !1751)
!1751 = distinct !DILocation(line: 866, column: 3, scope: !1037)
!1752 = !DILocation(line: 1961, column: 39, scope: !45, inlinedAt: !1751)
!1753 = !DILocation(line: 860, column: 7, scope: !1281)
!1754 = !DILocation(line: 862, column: 3, scope: !1289)
!1755 = !DILocation(line: 865, column: 14, scope: !1037)
!1756 = !DILocation(line: 865, column: 12, scope: !1037)
!1757 = !DILocation(line: 866, column: 22, scope: !1037)
!1758 = !DILocation(line: 866, column: 3, scope: !1037)
!1759 = !DILocation(line: 1965, column: 7, scope: !435, inlinedAt: !1751)
!1760 = !DILocation(line: 1965, column: 12, scope: !435, inlinedAt: !1751)
!1761 = !DILocation(line: 1965, column: 9, scope: !435, inlinedAt: !1751)
!1762 = !DILocation(line: 1965, column: 7, scope: !436, inlinedAt: !1751)
!1763 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 1969, column: 5, scope: !442, inlinedAt: !1751)
!1765 = !DILocation(line: 1966, column: 9, scope: !445, inlinedAt: !1751)
!1766 = !DILocation(line: 1966, column: 7, scope: !445, inlinedAt: !1751)
!1767 = !DILocation(line: 1972, column: 3, scope: !436, inlinedAt: !1751)
!1768 = !DILocation(line: 868, column: 11, scope: !1038)
!1769 = !DILocation(line: 868, column: 3, scope: !1038)
!1770 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !29, file: !1, line: 871, type: !14)
!1771 = !DILocation(line: 871, column: 33, scope: !29)
!1772 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !29, file: !1, line: 871, type: !14)
!1773 = !DILocation(line: 871, column: 52, scope: !29)
!1774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentIrpStack__Parameters__DeviceIoControl__IoControlCode", scope: !29, file: !1, line: 872, type: !14)
!1775 = !DILocation(line: 872, column: 7, scope: !29)
!1776 = !DILocation(line: 872, column: 69, scope: !29)
!1777 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength", scope: !29, file: !1, line: 873, type: !14)
!1778 = !DILocation(line: 873, column: 7, scope: !29)
!1779 = !DILocation(line: 873, column: 74, scope: !29)
!1780 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentIrpStack__Parameters__DeviceIoControl__InputBufferLength", scope: !29, file: !1, line: 874, type: !14)
!1781 = !DILocation(line: 874, column: 7, scope: !29)
!1782 = !DILocation(line: 874, column: 73, scope: !29)
!1783 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "TrackData__0", scope: !29, file: !1, line: 875, type: !14)
!1784 = !DILocation(line: 875, column: 7, scope: !29)
!1785 = !DILocation(line: 875, column: 22, scope: !29)
!1786 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !29, file: !1, line: 876, type: !14)
!1787 = !DILocation(line: 876, column: 7, scope: !29)
!1788 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srb__TimeOutValue", scope: !29, file: !1, line: 877, type: !14)
!1789 = !DILocation(line: 877, column: 7, scope: !29)
!1790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srb__CdbLength", scope: !29, file: !1, line: 878, type: !14)
!1791 = !DILocation(line: 878, column: 7, scope: !29)
!1792 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__CDROM_TOC", scope: !29, file: !1, line: 879, type: !14)
!1793 = !DILocation(line: 879, column: 7, scope: !29)
!1794 = !DILocation(line: 879, column: 27, scope: !29)
!1795 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cdaudioDataOut__LastTrack", scope: !29, file: !1, line: 880, type: !14)
!1796 = !DILocation(line: 880, column: 7, scope: !29)
!1797 = !DILocation(line: 880, column: 35, scope: !29)
!1798 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cdaudioDataOut__FirstTrack", scope: !29, file: !1, line: 881, type: !14)
!1799 = !DILocation(line: 881, column: 7, scope: !29)
!1800 = !DILocation(line: 881, column: 36, scope: !29)
!1801 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__CDROM_PLAY_AUDIO_MSF", scope: !29, file: !1, line: 882, type: !14)
!1802 = !DILocation(line: 882, column: 7, scope: !29)
!1803 = !DILocation(line: 882, column: 38, scope: !29)
!1804 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__CDROM_SEEK_AUDIO_MSF", scope: !29, file: !1, line: 883, type: !14)
!1805 = !DILocation(line: 883, column: 7, scope: !29)
!1806 = !DILocation(line: 883, column: 38, scope: !29)
!1807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__Paused", scope: !29, file: !1, line: 884, type: !14)
!1808 = !DILocation(line: 884, column: 7, scope: !29)
!1809 = !DILocation(line: 884, column: 33, scope: !29)
!1810 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__PlayActive", scope: !29, file: !1, line: 885, type: !14)
!1811 = !DILocation(line: 885, column: 7, scope: !29)
!1812 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__SUB_Q_CHANNEL_DATA", scope: !29, file: !1, line: 886, type: !14)
!1813 = !DILocation(line: 886, column: 7, scope: !29)
!1814 = !DILocation(line: 886, column: 36, scope: !29)
!1815 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__SUB_Q_CURRENT_POSITION", scope: !29, file: !1, line: 887, type: !14)
!1816 = !DILocation(line: 887, column: 7, scope: !29)
!1817 = !DILocation(line: 887, column: 40, scope: !29)
!1818 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !29, file: !1, line: 888, type: !14)
!1819 = !DILocation(line: 888, column: 7, scope: !29)
!1820 = !DILocation(line: 888, column: 25, scope: !29)
!1821 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srb", scope: !29, file: !1, line: 889, type: !14)
!1822 = !DILocation(line: 889, column: 7, scope: !29)
!1823 = !DILocation(line: 889, column: 13, scope: !29)
!1824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !29, file: !1, line: 890, type: !14)
!1825 = !DILocation(line: 890, column: 7, scope: !29)
!1826 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !29, file: !1, line: 891, type: !14)
!1827 = !DILocation(line: 891, column: 7, scope: !29)
!1828 = !DILocation(line: 891, column: 11, scope: !29)
!1829 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytesTransfered", scope: !29, file: !1, line: 892, type: !14)
!1830 = !DILocation(line: 892, column: 7, scope: !29)
!1831 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Toc", scope: !29, file: !1, line: 893, type: !14)
!1832 = !DILocation(line: 893, column: 7, scope: !29)
!1833 = !DILocation(line: 893, column: 13, scope: !29)
!1834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !29, file: !1, line: 894, type: !14)
!1835 = !DILocation(line: 894, column: 7, scope: !29)
!1836 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tracksToReturn", scope: !29, file: !1, line: 895, type: !14)
!1837 = !DILocation(line: 895, column: 7, scope: !29)
!1838 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tracksOnCd", scope: !29, file: !1, line: 896, type: !14)
!1839 = !DILocation(line: 896, column: 7, scope: !29)
!1840 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tracksInBuffer", scope: !29, file: !1, line: 897, type: !14)
!1841 = !DILocation(line: 897, column: 7, scope: !29)
!1842 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "SubQPtr", scope: !29, file: !1, line: 898, type: !14)
!1843 = !DILocation(line: 898, column: 7, scope: !29)
!1844 = !DILocation(line: 898, column: 17, scope: !29)
!1845 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "userPtr__Format", scope: !29, file: !1, line: 899, type: !14)
!1846 = !DILocation(line: 899, column: 7, scope: !29)
!1847 = !DILocation(line: 899, column: 25, scope: !29)
!1848 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "SubQPtr___0", scope: !29, file: !1, line: 900, type: !14)
!1849 = !DILocation(line: 900, column: 7, scope: !29)
!1850 = !DILocation(line: 900, column: 21, scope: !29)
!1851 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___0", scope: !29, file: !1, line: 901, type: !14)
!1852 = !DILocation(line: 901, column: 7, scope: !29)
!1853 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___1", scope: !29, file: !1, line: 902, type: !14)
!1854 = !DILocation(line: 902, column: 7, scope: !29)
!1855 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___2", scope: !29, file: !1, line: 903, type: !14)
!1856 = !DILocation(line: 903, column: 7, scope: !29)
!1857 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp35", scope: !29, file: !1, line: 904, type: !14)
!1858 = !DILocation(line: 904, column: 7, scope: !29)
!1859 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp36", scope: !29, file: !1, line: 905, type: !14)
!1860 = !DILocation(line: 905, column: 7, scope: !29)
!1861 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp37", scope: !29, file: !1, line: 906, type: !14)
!1862 = !DILocation(line: 906, column: 7, scope: !29)
!1863 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp38", scope: !29, file: !1, line: 907, type: !14)
!1864 = !DILocation(line: 907, column: 7, scope: !29)
!1865 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp39", scope: !29, file: !1, line: 908, type: !14)
!1866 = !DILocation(line: 908, column: 7, scope: !29)
!1867 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp40", scope: !29, file: !1, line: 909, type: !14)
!1868 = !DILocation(line: 909, column: 7, scope: !29)
!1869 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp41", scope: !29, file: !1, line: 910, type: !14)
!1870 = !DILocation(line: 910, column: 7, scope: !29)
!1871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp42", scope: !29, file: !1, line: 911, type: !14)
!1872 = !DILocation(line: 911, column: 7, scope: !29)
!1873 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp43", scope: !29, file: !1, line: 912, type: !14)
!1874 = !DILocation(line: 912, column: 7, scope: !29)
!1875 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp44", scope: !29, file: !1, line: 913, type: !14)
!1876 = !DILocation(line: 913, column: 7, scope: !29)
!1877 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp45", scope: !29, file: !1, line: 914, type: !14)
!1878 = !DILocation(line: 914, column: 7, scope: !29)
!1879 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp46", scope: !29, file: !1, line: 915, type: !14)
!1880 = !DILocation(line: 915, column: 7, scope: !29)
!1881 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp47", scope: !29, file: !1, line: 916, type: !14)
!1882 = !DILocation(line: 916, column: 7, scope: !29)
!1883 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp48", scope: !29, file: !1, line: 917, type: !14)
!1884 = !DILocation(line: 917, column: 7, scope: !29)
!1885 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp49", scope: !29, file: !1, line: 918, type: !14)
!1886 = !DILocation(line: 918, column: 7, scope: !29)
!1887 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp50", scope: !29, file: !1, line: 919, type: !14)
!1888 = !DILocation(line: 919, column: 7, scope: !29)
!1889 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp51", scope: !29, file: !1, line: 920, type: !14)
!1890 = !DILocation(line: 920, column: 7, scope: !29)
!1891 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp52", scope: !29, file: !1, line: 921, type: !14)
!1892 = !DILocation(line: 921, column: 7, scope: !29)
!1893 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp53", scope: !29, file: !1, line: 922, type: !14)
!1894 = !DILocation(line: 922, column: 7, scope: !29)
!1895 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp54", scope: !29, file: !1, line: 923, type: !14)
!1896 = !DILocation(line: 923, column: 7, scope: !29)
!1897 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp55", scope: !29, file: !1, line: 924, type: !14)
!1898 = !DILocation(line: 924, column: 7, scope: !29)
!1899 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp56", scope: !29, file: !1, line: 925, type: !14)
!1900 = !DILocation(line: 925, column: 7, scope: !29)
!1901 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp57", scope: !29, file: !1, line: 926, type: !14)
!1902 = !DILocation(line: 926, column: 7, scope: !29)
!1903 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp58", scope: !29, file: !1, line: 927, type: !14)
!1904 = !DILocation(line: 927, column: 7, scope: !29)
!1905 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp59", scope: !29, file: !1, line: 928, type: !14)
!1906 = !DILocation(line: 928, column: 7, scope: !29)
!1907 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp60", scope: !29, file: !1, line: 929, type: !14)
!1908 = !DILocation(line: 929, column: 7, scope: !29)
!1909 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp61", scope: !29, file: !1, line: 930, type: !14)
!1910 = !DILocation(line: 930, column: 7, scope: !29)
!1911 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp62", scope: !29, file: !1, line: 931, type: !14)
!1912 = !DILocation(line: 931, column: 7, scope: !29)
!1913 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp63", scope: !29, file: !1, line: 932, type: !14)
!1914 = !DILocation(line: 932, column: 7, scope: !29)
!1915 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp64", scope: !29, file: !1, line: 933, type: !14)
!1916 = !DILocation(line: 933, column: 7, scope: !29)
!1917 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp65", scope: !29, file: !1, line: 934, type: !14)
!1918 = !DILocation(line: 934, column: 7, scope: !29)
!1919 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp66", scope: !29, file: !1, line: 935, type: !14)
!1920 = !DILocation(line: 935, column: 7, scope: !29)
!1921 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp67", scope: !29, file: !1, line: 936, type: !14)
!1922 = !DILocation(line: 936, column: 7, scope: !29)
!1923 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp68", scope: !29, file: !1, line: 937, type: !14)
!1924 = !DILocation(line: 937, column: 7, scope: !29)
!1925 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp69", scope: !29, file: !1, line: 938, type: !14)
!1926 = !DILocation(line: 938, column: 7, scope: !29)
!1927 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp70", scope: !29, file: !1, line: 939, type: !14)
!1928 = !DILocation(line: 939, column: 7, scope: !29)
!1929 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp71", scope: !29, file: !1, line: 940, type: !14)
!1930 = !DILocation(line: 940, column: 7, scope: !29)
!1931 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp72", scope: !29, file: !1, line: 941, type: !14)
!1932 = !DILocation(line: 941, column: 7, scope: !29)
!1933 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp73", scope: !29, file: !1, line: 942, type: !14)
!1934 = !DILocation(line: 942, column: 7, scope: !29)
!1935 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp74", scope: !29, file: !1, line: 943, type: !14)
!1936 = !DILocation(line: 943, column: 7, scope: !29)
!1937 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp75", scope: !29, file: !1, line: 944, type: !14)
!1938 = !DILocation(line: 944, column: 7, scope: !29)
!1939 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp76", scope: !29, file: !1, line: 945, type: !14)
!1940 = !DILocation(line: 945, column: 7, scope: !29)
!1941 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp77", scope: !29, file: !1, line: 946, type: !14)
!1942 = !DILocation(line: 946, column: 7, scope: !29)
!1943 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp78", scope: !29, file: !1, line: 947, type: !14)
!1944 = !DILocation(line: 947, column: 7, scope: !29)
!1945 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp79", scope: !29, file: !1, line: 948, type: !14)
!1946 = !DILocation(line: 948, column: 7, scope: !29)
!1947 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp80", scope: !29, file: !1, line: 949, type: !14)
!1948 = !DILocation(line: 949, column: 7, scope: !29)
!1949 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp81", scope: !29, file: !1, line: 950, type: !14)
!1950 = !DILocation(line: 950, column: 7, scope: !29)
!1951 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp82", scope: !29, file: !1, line: 951, type: !14)
!1952 = !DILocation(line: 951, column: 7, scope: !29)
!1953 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp83", scope: !29, file: !1, line: 952, type: !14)
!1954 = !DILocation(line: 952, column: 7, scope: !29)
!1955 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp84", scope: !29, file: !1, line: 953, type: !14)
!1956 = !DILocation(line: 953, column: 7, scope: !29)
!1957 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp85", scope: !29, file: !1, line: 954, type: !14)
!1958 = !DILocation(line: 954, column: 7, scope: !29)
!1959 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp86", scope: !29, file: !1, line: 955, type: !14)
!1960 = !DILocation(line: 955, column: 7, scope: !29)
!1961 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp87", scope: !29, file: !1, line: 956, type: !14)
!1962 = !DILocation(line: 956, column: 7, scope: !29)
!1963 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp88", scope: !29, file: !1, line: 957, type: !14)
!1964 = !DILocation(line: 957, column: 7, scope: !29)
!1965 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp89", scope: !29, file: !1, line: 958, type: !14)
!1966 = !DILocation(line: 958, column: 7, scope: !29)
!1967 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp90", scope: !29, file: !1, line: 959, type: !14)
!1968 = !DILocation(line: 959, column: 7, scope: !29)
!1969 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp91", scope: !29, file: !1, line: 960, type: !14)
!1970 = !DILocation(line: 960, column: 7, scope: !29)
!1971 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp92", scope: !29, file: !1, line: 961, type: !14)
!1972 = !DILocation(line: 961, column: 7, scope: !29)
!1973 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp93", scope: !29, file: !1, line: 962, type: !5)
!1974 = !DILocation(line: 962, column: 17, scope: !29)
!1975 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp94", scope: !29, file: !1, line: 963, type: !14)
!1976 = !DILocation(line: 963, column: 7, scope: !29)
!1977 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp95", scope: !29, file: !1, line: 964, type: !5)
!1978 = !DILocation(line: 964, column: 17, scope: !29)
!1979 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp96", scope: !29, file: !1, line: 965, type: !5)
!1980 = !DILocation(line: 965, column: 17, scope: !29)
!1981 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp97", scope: !29, file: !1, line: 966, type: !5)
!1982 = !DILocation(line: 966, column: 17, scope: !29)
!1983 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp98", scope: !29, file: !1, line: 967, type: !14)
!1984 = !DILocation(line: 967, column: 7, scope: !29)
!1985 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp99", scope: !29, file: !1, line: 968, type: !14)
!1986 = !DILocation(line: 968, column: 7, scope: !29)
!1987 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp100", scope: !29, file: !1, line: 969, type: !14)
!1988 = !DILocation(line: 969, column: 7, scope: !29)
!1989 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp101", scope: !29, file: !1, line: 970, type: !14)
!1990 = !DILocation(line: 970, column: 7, scope: !29)
!1991 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp102", scope: !29, file: !1, line: 971, type: !14)
!1992 = !DILocation(line: 971, column: 7, scope: !29)
!1993 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp103", scope: !29, file: !1, line: 972, type: !14)
!1994 = !DILocation(line: 972, column: 7, scope: !29)
!1995 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp104", scope: !29, file: !1, line: 973, type: !5)
!1996 = !DILocation(line: 973, column: 17, scope: !29)
!1997 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp105", scope: !29, file: !1, line: 974, type: !5)
!1998 = !DILocation(line: 974, column: 17, scope: !29)
!1999 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp106", scope: !29, file: !1, line: 975, type: !5)
!2000 = !DILocation(line: 975, column: 17, scope: !29)
!2001 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp107", scope: !29, file: !1, line: 976, type: !5)
!2002 = !DILocation(line: 976, column: 17, scope: !29)
!2003 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp108", scope: !29, file: !1, line: 977, type: !14)
!2004 = !DILocation(line: 977, column: 7, scope: !29)
!2005 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp109", scope: !29, file: !1, line: 978, type: !5)
!2006 = !DILocation(line: 978, column: 17, scope: !29)
!2007 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp110", scope: !29, file: !1, line: 979, type: !14)
!2008 = !DILocation(line: 979, column: 7, scope: !29)
!2009 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp111", scope: !29, file: !1, line: 980, type: !5)
!2010 = !DILocation(line: 980, column: 17, scope: !29)
!2011 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp112", scope: !29, file: !1, line: 981, type: !5)
!2012 = !DILocation(line: 981, column: 17, scope: !29)
!2013 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp113", scope: !29, file: !1, line: 982, type: !5)
!2014 = !DILocation(line: 982, column: 17, scope: !29)
!2015 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp114", scope: !29, file: !1, line: 983, type: !5)
!2016 = !DILocation(line: 983, column: 17, scope: !29)
!2017 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp115", scope: !29, file: !1, line: 984, type: !5)
!2018 = !DILocation(line: 984, column: 17, scope: !29)
!2019 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp116", scope: !29, file: !1, line: 985, type: !5)
!2020 = !DILocation(line: 985, column: 17, scope: !29)
!2021 = !DILocation(line: 989, column: 15, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !1, line: 988, column: 3)
!2023 = distinct !DILexicalBlock(scope: !29, file: !1, line: 987, column: 3)
!2024 = !DILocation(line: 990, column: 15, scope: !2022)
!2025 = !DILocation(line: 991, column: 15, scope: !2022)
!2026 = !DILocation(line: 992, column: 7, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2022, file: !1, line: 992, column: 7)
!2028 = !DILocation(line: 992, column: 70, scope: !2027)
!2029 = !DILocation(line: 992, column: 67, scope: !2027)
!2030 = !DILocation(line: 1961, column: 29, scope: !45, inlinedAt: !2031)
!2031 = distinct !DILocation(line: 1121, column: 31, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !1, line: 1119, column: 31)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !1, line: 1110, column: 43)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1110, column: 33)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !1, line: 1095, column: 34)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !1, line: 1095, column: 31)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !1, line: 1093, column: 32)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !1, line: 1091, column: 29)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !1, line: 1085, column: 25)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !1, line: 1084, column: 30)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !1, line: 1082, column: 27)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !1, line: 1076, column: 23)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !1, line: 1075, column: 28)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !1, line: 1073, column: 25)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !1, line: 1067, column: 21)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !1, line: 1066, column: 26)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !1, line: 1064, column: 23)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !1, line: 1058, column: 19)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !1, line: 1057, column: 24)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !1, line: 1055, column: 21)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !1, line: 1049, column: 17)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !1, line: 1048, column: 22)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !1, line: 1046, column: 19)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !1, line: 1040, column: 15)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !1, line: 1039, column: 20)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !1, line: 1037, column: 17)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !1, line: 1031, column: 13)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !1, line: 1030, column: 18)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !1, line: 1028, column: 15)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !1, line: 1022, column: 11)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !1, line: 1021, column: 16)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !1, line: 1019, column: 13)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !1, line: 1013, column: 9)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !1, line: 1012, column: 14)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !1, line: 1010, column: 11)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !1, line: 1004, column: 7)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !1, line: 1003, column: 12)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !1, line: 1001, column: 9)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !1, line: 995, column: 5)
!2070 = distinct !DILexicalBlock(scope: !2027, file: !1, line: 994, column: 10)
!2071 = !DILocation(line: 1961, column: 39, scope: !45, inlinedAt: !2031)
!2072 = !DILocation(line: 1961, column: 29, scope: !45, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 1147, column: 35, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !1, line: 1145, column: 35)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !1, line: 1138, column: 65)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !1, line: 1138, column: 37)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !1, line: 1136, column: 33)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !1, line: 1135, column: 63)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !1, line: 1135, column: 35)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !1, line: 1133, column: 31)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !1, line: 1132, column: 45)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !1, line: 1132, column: 33)
!2083 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1131, column: 29)
!2084 = !DILocation(line: 1961, column: 39, scope: !45, inlinedAt: !2073)
!2085 = !DILocation(line: 1961, column: 29, scope: !45, inlinedAt: !2086)
!2086 = distinct !DILocation(line: 1203, column: 31, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !1, line: 1201, column: 31)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !1, line: 1194, column: 110)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !1, line: 1194, column: 33)
!2090 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1188, column: 29)
!2091 = !DILocation(line: 1961, column: 39, scope: !45, inlinedAt: !2086)
!2092 = !DILocation(line: 1961, column: 29, scope: !45, inlinedAt: !2093)
!2093 = distinct !DILocation(line: 1253, column: 31, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !1, line: 1251, column: 31)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !1, line: 1243, column: 47)
!2096 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1243, column: 33)
!2097 = !DILocation(line: 1961, column: 39, scope: !45, inlinedAt: !2093)
!2098 = !DILocation(line: 1961, column: 29, scope: !45, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 1267, column: 31, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !1, line: 1265, column: 31)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !1, line: 1257, column: 63)
!2102 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1257, column: 33)
!2103 = !DILocation(line: 1961, column: 39, scope: !45, inlinedAt: !2099)
!2104 = !DILocation(line: 1961, column: 29, scope: !45, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 1287, column: 31, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !1, line: 1285, column: 31)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !1, line: 1278, column: 45)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !1, line: 1278, column: 33)
!2109 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1277, column: 29)
!2110 = !DILocation(line: 1961, column: 39, scope: !45, inlinedAt: !2105)
!2111 = !DILocation(line: 1961, column: 29, scope: !45, inlinedAt: !2112)
!2112 = distinct !DILocation(line: 1307, column: 31, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !1, line: 1305, column: 31)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !1, line: 1298, column: 45)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !1, line: 1298, column: 33)
!2116 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1297, column: 29)
!2117 = !DILocation(line: 1961, column: 39, scope: !45, inlinedAt: !2112)
!2118 = !DILocation(line: 1961, column: 29, scope: !45, inlinedAt: !2119)
!2119 = distinct !DILocation(line: 1325, column: 31, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !1, line: 1323, column: 31)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !1, line: 1315, column: 63)
!2122 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1315, column: 33)
!2123 = !DILocation(line: 1961, column: 39, scope: !45, inlinedAt: !2119)
!2124 = !DILocation(line: 1961, column: 29, scope: !45, inlinedAt: !2125)
!2125 = distinct !DILocation(line: 1356, column: 31, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !1, line: 1354, column: 31)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !1, line: 1345, column: 51)
!2128 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1345, column: 33)
!2129 = !DILocation(line: 1961, column: 39, scope: !45, inlinedAt: !2125)
!2130 = !DILocation(line: 1961, column: 29, scope: !45, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 1371, column: 31, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !1, line: 1369, column: 31)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !1, line: 1360, column: 55)
!2134 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1360, column: 33)
!2135 = !DILocation(line: 1961, column: 39, scope: !45, inlinedAt: !2131)
!2136 = !DILocation(line: 1961, column: 29, scope: !45, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 1420, column: 31, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !1, line: 1418, column: 31)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !1, line: 1408, column: 47)
!2140 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1408, column: 33)
!2141 = !DILocation(line: 1961, column: 39, scope: !45, inlinedAt: !2137)
!2142 = !DILocation(line: 1961, column: 29, scope: !45, inlinedAt: !2143)
!2143 = distinct !DILocation(line: 1472, column: 3, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2023, file: !1, line: 1470, column: 3)
!2145 = !DILocation(line: 1961, column: 39, scope: !45, inlinedAt: !2143)
!2146 = !DILocation(line: 992, column: 7, scope: !2022)
!2147 = !DILocation(line: 993, column: 5, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2027, file: !1, line: 992, column: 83)
!2149 = !DILocation(line: 996, column: 17, scope: !2069)
!2150 = !DILocation(line: 997, column: 17, scope: !2069)
!2151 = !DILocation(line: 998, column: 17, scope: !2069)
!2152 = !DILocation(line: 999, column: 17, scope: !2069)
!2153 = !DILocation(line: 1000, column: 17, scope: !2069)
!2154 = !DILocation(line: 1001, column: 9, scope: !2068)
!2155 = !DILocation(line: 1001, column: 72, scope: !2068)
!2156 = !DILocation(line: 1001, column: 69, scope: !2068)
!2157 = !DILocation(line: 1001, column: 9, scope: !2069)
!2158 = !DILocation(line: 1002, column: 7, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2068, file: !1, line: 1001, column: 85)
!2160 = !DILocation(line: 1005, column: 19, scope: !2066)
!2161 = !DILocation(line: 1006, column: 19, scope: !2066)
!2162 = !DILocation(line: 1007, column: 19, scope: !2066)
!2163 = !DILocation(line: 1008, column: 19, scope: !2066)
!2164 = !DILocation(line: 1009, column: 19, scope: !2066)
!2165 = !DILocation(line: 1010, column: 11, scope: !2065)
!2166 = !DILocation(line: 1010, column: 74, scope: !2065)
!2167 = !DILocation(line: 1010, column: 71, scope: !2065)
!2168 = !DILocation(line: 1010, column: 11, scope: !2066)
!2169 = !DILocation(line: 1011, column: 9, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2065, file: !1, line: 1010, column: 87)
!2171 = !DILocation(line: 1014, column: 21, scope: !2063)
!2172 = !DILocation(line: 1015, column: 21, scope: !2063)
!2173 = !DILocation(line: 1016, column: 21, scope: !2063)
!2174 = !DILocation(line: 1017, column: 21, scope: !2063)
!2175 = !DILocation(line: 1018, column: 21, scope: !2063)
!2176 = !DILocation(line: 1019, column: 13, scope: !2062)
!2177 = !DILocation(line: 1019, column: 76, scope: !2062)
!2178 = !DILocation(line: 1019, column: 73, scope: !2062)
!2179 = !DILocation(line: 1019, column: 13, scope: !2063)
!2180 = !DILocation(line: 1020, column: 11, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2062, file: !1, line: 1019, column: 89)
!2182 = !DILocation(line: 1023, column: 23, scope: !2060)
!2183 = !DILocation(line: 1024, column: 23, scope: !2060)
!2184 = !DILocation(line: 1025, column: 23, scope: !2060)
!2185 = !DILocation(line: 1026, column: 23, scope: !2060)
!2186 = !DILocation(line: 1027, column: 23, scope: !2060)
!2187 = !DILocation(line: 1028, column: 15, scope: !2059)
!2188 = !DILocation(line: 1028, column: 78, scope: !2059)
!2189 = !DILocation(line: 1028, column: 75, scope: !2059)
!2190 = !DILocation(line: 1028, column: 15, scope: !2060)
!2191 = !DILocation(line: 1029, column: 13, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2059, file: !1, line: 1028, column: 91)
!2193 = !DILocation(line: 1032, column: 25, scope: !2057)
!2194 = !DILocation(line: 1033, column: 25, scope: !2057)
!2195 = !DILocation(line: 1034, column: 25, scope: !2057)
!2196 = !DILocation(line: 1035, column: 25, scope: !2057)
!2197 = !DILocation(line: 1036, column: 25, scope: !2057)
!2198 = !DILocation(line: 1037, column: 17, scope: !2056)
!2199 = !DILocation(line: 1037, column: 80, scope: !2056)
!2200 = !DILocation(line: 1037, column: 77, scope: !2056)
!2201 = !DILocation(line: 1037, column: 17, scope: !2057)
!2202 = !DILocation(line: 1038, column: 15, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2056, file: !1, line: 1037, column: 93)
!2204 = !DILocation(line: 1041, column: 27, scope: !2054)
!2205 = !DILocation(line: 1042, column: 27, scope: !2054)
!2206 = !DILocation(line: 1043, column: 27, scope: !2054)
!2207 = !DILocation(line: 1044, column: 27, scope: !2054)
!2208 = !DILocation(line: 1045, column: 27, scope: !2054)
!2209 = !DILocation(line: 1046, column: 19, scope: !2053)
!2210 = !DILocation(line: 1046, column: 82, scope: !2053)
!2211 = !DILocation(line: 1046, column: 79, scope: !2053)
!2212 = !DILocation(line: 1046, column: 19, scope: !2054)
!2213 = !DILocation(line: 1047, column: 17, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2053, file: !1, line: 1046, column: 95)
!2215 = !DILocation(line: 1050, column: 29, scope: !2051)
!2216 = !DILocation(line: 1051, column: 29, scope: !2051)
!2217 = !DILocation(line: 1052, column: 29, scope: !2051)
!2218 = !DILocation(line: 1053, column: 29, scope: !2051)
!2219 = !DILocation(line: 1054, column: 29, scope: !2051)
!2220 = !DILocation(line: 1055, column: 21, scope: !2050)
!2221 = !DILocation(line: 1055, column: 84, scope: !2050)
!2222 = !DILocation(line: 1055, column: 81, scope: !2050)
!2223 = !DILocation(line: 1055, column: 21, scope: !2051)
!2224 = !DILocation(line: 1056, column: 19, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2050, file: !1, line: 1055, column: 97)
!2226 = !DILocation(line: 1059, column: 31, scope: !2048)
!2227 = !DILocation(line: 1060, column: 31, scope: !2048)
!2228 = !DILocation(line: 1061, column: 31, scope: !2048)
!2229 = !DILocation(line: 1062, column: 31, scope: !2048)
!2230 = !DILocation(line: 1063, column: 31, scope: !2048)
!2231 = !DILocation(line: 1064, column: 23, scope: !2047)
!2232 = !DILocation(line: 1064, column: 86, scope: !2047)
!2233 = !DILocation(line: 1064, column: 83, scope: !2047)
!2234 = !DILocation(line: 1064, column: 23, scope: !2048)
!2235 = !DILocation(line: 1065, column: 21, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2047, file: !1, line: 1064, column: 99)
!2237 = !DILocation(line: 1068, column: 33, scope: !2045)
!2238 = !DILocation(line: 1069, column: 33, scope: !2045)
!2239 = !DILocation(line: 1070, column: 33, scope: !2045)
!2240 = !DILocation(line: 1071, column: 33, scope: !2045)
!2241 = !DILocation(line: 1072, column: 33, scope: !2045)
!2242 = !DILocation(line: 1073, column: 25, scope: !2044)
!2243 = !DILocation(line: 1073, column: 88, scope: !2044)
!2244 = !DILocation(line: 1073, column: 85, scope: !2044)
!2245 = !DILocation(line: 1073, column: 25, scope: !2045)
!2246 = !DILocation(line: 1074, column: 23, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2044, file: !1, line: 1073, column: 101)
!2248 = !DILocation(line: 1077, column: 35, scope: !2042)
!2249 = !DILocation(line: 1078, column: 35, scope: !2042)
!2250 = !DILocation(line: 1079, column: 35, scope: !2042)
!2251 = !DILocation(line: 1080, column: 35, scope: !2042)
!2252 = !DILocation(line: 1081, column: 35, scope: !2042)
!2253 = !DILocation(line: 1082, column: 27, scope: !2041)
!2254 = !DILocation(line: 1082, column: 90, scope: !2041)
!2255 = !DILocation(line: 1082, column: 87, scope: !2041)
!2256 = !DILocation(line: 1082, column: 27, scope: !2042)
!2257 = !DILocation(line: 1083, column: 25, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2041, file: !1, line: 1082, column: 103)
!2259 = !DILocation(line: 1086, column: 37, scope: !2039)
!2260 = !DILocation(line: 1087, column: 37, scope: !2039)
!2261 = !DILocation(line: 1088, column: 37, scope: !2039)
!2262 = !DILocation(line: 1089, column: 37, scope: !2039)
!2263 = !DILocation(line: 1090, column: 37, scope: !2039)
!2264 = !DILocation(line: 1091, column: 29, scope: !2038)
!2265 = !DILocation(line: 1091, column: 92, scope: !2038)
!2266 = !DILocation(line: 1091, column: 89, scope: !2038)
!2267 = !DILocation(line: 1091, column: 29, scope: !2039)
!2268 = !DILocation(line: 1092, column: 27, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2038, file: !1, line: 1091, column: 105)
!2270 = !DILocation(line: 1094, column: 27, scope: !2037)
!2271 = !DILocation(line: 1095, column: 31, scope: !2037)
!2272 = !DILocation(line: 1095, column: 34, scope: !2036)
!2273 = !DILocation(line: 1097, column: 33, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1097, column: 33)
!2275 = !DILocation(line: 1097, column: 100, scope: !2274)
!2276 = !DILocation(line: 1097, column: 98, scope: !2274)
!2277 = !DILocation(line: 1097, column: 33, scope: !2035)
!2278 = !DILocation(line: 1098, column: 38, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2274, file: !1, line: 1097, column: 114)
!2280 = !DILocation(line: 1099, column: 58, scope: !2279)
!2281 = !DILocation(line: 1100, column: 31, scope: !2279)
!2282 = !DILocation(line: 1103, column: 55, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1102, column: 29)
!2284 = !DILocation(line: 1103, column: 35, scope: !2283)
!2285 = !DILocation(line: 1103, column: 33, scope: !2283)
!2286 = !DILocation(line: 1105, column: 33, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1105, column: 33)
!2288 = !DILocation(line: 1105, column: 33, scope: !2035)
!2289 = !DILocation(line: 1106, column: 38, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2287, file: !1, line: 1105, column: 38)
!2291 = !DILocation(line: 1107, column: 58, scope: !2290)
!2292 = !DILocation(line: 1108, column: 31, scope: !2290)
!2293 = !DILocation(line: 1110, column: 33, scope: !2034)
!2294 = !DILocation(line: 1110, column: 37, scope: !2034)
!2295 = !DILocation(line: 1110, column: 33, scope: !2035)
!2296 = !DILocation(line: 1111, column: 38, scope: !2033)
!2297 = !DILocation(line: 1112, column: 58, scope: !2033)
!2298 = !DILocation(line: 1114, column: 61, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2033, file: !1, line: 1113, column: 31)
!2300 = !DILocation(line: 1114, column: 45, scope: !2299)
!2301 = !DILocation(line: 1114, column: 43, scope: !2299)
!2302 = !DILocation(line: 1115, column: 35, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2299, file: !1, line: 1115, column: 35)
!2304 = !DILocation(line: 1115, column: 47, scope: !2303)
!2305 = !DILocation(line: 1115, column: 35, scope: !2299)
!2306 = !DILocation(line: 1116, column: 60, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2303, file: !1, line: 1115, column: 63)
!2308 = !DILocation(line: 1117, column: 31, scope: !2307)
!2309 = !DILocation(line: 1120, column: 42, scope: !2032)
!2310 = !DILocation(line: 1120, column: 40, scope: !2032)
!2311 = !DILocation(line: 1121, column: 50, scope: !2032)
!2312 = !DILocation(line: 1121, column: 31, scope: !2032)
!2313 = !DILocation(line: 1965, column: 7, scope: !435, inlinedAt: !2031)
!2314 = !DILocation(line: 1965, column: 12, scope: !435, inlinedAt: !2031)
!2315 = !DILocation(line: 1965, column: 9, scope: !435, inlinedAt: !2031)
!2316 = !DILocation(line: 1965, column: 7, scope: !436, inlinedAt: !2031)
!2317 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !2318)
!2318 = distinct !DILocation(line: 1969, column: 5, scope: !442, inlinedAt: !2031)
!2319 = !DILocation(line: 1966, column: 9, scope: !445, inlinedAt: !2031)
!2320 = !DILocation(line: 1966, column: 7, scope: !445, inlinedAt: !2031)
!2321 = !DILocation(line: 1972, column: 3, scope: !436, inlinedAt: !2031)
!2322 = !DILocation(line: 1123, column: 39, scope: !2033)
!2323 = !DILocation(line: 1123, column: 31, scope: !2033)
!2324 = !DILocation(line: 1126, column: 47, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1125, column: 29)
!2326 = !DILocation(line: 1127, column: 44, scope: !2325)
!2327 = !DILocation(line: 1128, column: 57, scope: !2325)
!2328 = !DILocation(line: 1128, column: 74, scope: !2325)
!2329 = !DILocation(line: 1128, column: 79, scope: !2325)
!2330 = !DILocation(line: 1129, column: 57, scope: !2325)
!2331 = !DILocation(line: 1128, column: 38, scope: !2325)
!2332 = !DILocation(line: 1128, column: 36, scope: !2325)
!2333 = !DILocation(line: 1132, column: 33, scope: !2082)
!2334 = !DILocation(line: 1132, column: 40, scope: !2082)
!2335 = !DILocation(line: 1132, column: 33, scope: !2083)
!2336 = !DILocation(line: 1134, column: 61, scope: !2080)
!2337 = !DILocation(line: 1134, column: 45, scope: !2080)
!2338 = !DILocation(line: 1134, column: 43, scope: !2080)
!2339 = !DILocation(line: 1135, column: 35, scope: !2079)
!2340 = !DILocation(line: 1135, column: 47, scope: !2079)
!2341 = !DILocation(line: 1135, column: 35, scope: !2080)
!2342 = !DILocation(line: 1137, column: 63, scope: !2077)
!2343 = !DILocation(line: 1137, column: 47, scope: !2077)
!2344 = !DILocation(line: 1137, column: 45, scope: !2077)
!2345 = !DILocation(line: 1138, column: 37, scope: !2076)
!2346 = !DILocation(line: 1138, column: 49, scope: !2076)
!2347 = !DILocation(line: 1138, column: 37, scope: !2077)
!2348 = !DILocation(line: 1140, column: 65, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2075, file: !1, line: 1139, column: 35)
!2350 = !DILocation(line: 1140, column: 49, scope: !2349)
!2351 = !DILocation(line: 1140, column: 47, scope: !2349)
!2352 = !DILocation(line: 1141, column: 39, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2349, file: !1, line: 1141, column: 39)
!2354 = !DILocation(line: 1141, column: 51, scope: !2353)
!2355 = !DILocation(line: 1141, column: 39, scope: !2349)
!2356 = !DILocation(line: 1142, column: 64, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2353, file: !1, line: 1141, column: 67)
!2358 = !DILocation(line: 1143, column: 35, scope: !2357)
!2359 = !DILocation(line: 1146, column: 46, scope: !2074)
!2360 = !DILocation(line: 1146, column: 44, scope: !2074)
!2361 = !DILocation(line: 1147, column: 54, scope: !2074)
!2362 = !DILocation(line: 1147, column: 35, scope: !2074)
!2363 = !DILocation(line: 1965, column: 7, scope: !435, inlinedAt: !2073)
!2364 = !DILocation(line: 1965, column: 12, scope: !435, inlinedAt: !2073)
!2365 = !DILocation(line: 1965, column: 9, scope: !435, inlinedAt: !2073)
!2366 = !DILocation(line: 1965, column: 7, scope: !436, inlinedAt: !2073)
!2367 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 1969, column: 5, scope: !442, inlinedAt: !2073)
!2369 = !DILocation(line: 1966, column: 9, scope: !445, inlinedAt: !2073)
!2370 = !DILocation(line: 1966, column: 7, scope: !445, inlinedAt: !2073)
!2371 = !DILocation(line: 1972, column: 3, scope: !436, inlinedAt: !2073)
!2372 = !DILocation(line: 1149, column: 43, scope: !2075)
!2373 = !DILocation(line: 1149, column: 35, scope: !2075)
!2374 = !DILocation(line: 1152, column: 31, scope: !2078)
!2375 = !DILocation(line: 1153, column: 40, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2079, file: !1, line: 1152, column: 38)
!2377 = !DILocation(line: 1156, column: 29, scope: !2081)
!2378 = !DILocation(line: 1157, column: 38, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2082, file: !1, line: 1156, column: 36)
!2380 = !DILocation(line: 1160, column: 33, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1160, column: 33)
!2382 = !DILocation(line: 1160, column: 100, scope: !2381)
!2383 = !DILocation(line: 1160, column: 98, scope: !2381)
!2384 = !DILocation(line: 1160, column: 33, scope: !2035)
!2385 = !DILocation(line: 1161, column: 49, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2381, file: !1, line: 1160, column: 119)
!2387 = !DILocation(line: 1161, column: 47, scope: !2386)
!2388 = !DILocation(line: 1162, column: 29, scope: !2386)
!2389 = !DILocation(line: 1163, column: 49, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2381, file: !1, line: 1162, column: 36)
!2391 = !DILocation(line: 1163, column: 47, scope: !2390)
!2392 = !DILocation(line: 1165, column: 43, scope: !2035)
!2393 = !DILocation(line: 1165, column: 71, scope: !2035)
!2394 = !DILocation(line: 1165, column: 69, scope: !2035)
!2395 = !DILocation(line: 1165, column: 41, scope: !2035)
!2396 = !DILocation(line: 1166, column: 42, scope: !2035)
!2397 = !DILocation(line: 1166, column: 54, scope: !2035)
!2398 = !DILocation(line: 1166, column: 40, scope: !2035)
!2399 = !DILocation(line: 1167, column: 46, scope: !2035)
!2400 = !DILocation(line: 1167, column: 113, scope: !2035)
!2401 = !DILocation(line: 1167, column: 111, scope: !2035)
!2402 = !DILocation(line: 1167, column: 44, scope: !2035)
!2403 = !DILocation(line: 1168, column: 33, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1168, column: 33)
!2405 = !DILocation(line: 1168, column: 50, scope: !2404)
!2406 = !DILocation(line: 1168, column: 48, scope: !2404)
!2407 = !DILocation(line: 1168, column: 33, scope: !2035)
!2408 = !DILocation(line: 1169, column: 48, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2404, file: !1, line: 1168, column: 62)
!2410 = !DILocation(line: 1169, column: 46, scope: !2409)
!2411 = !DILocation(line: 1170, column: 29, scope: !2409)
!2412 = !DILocation(line: 1171, column: 48, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2404, file: !1, line: 1170, column: 36)
!2414 = !DILocation(line: 1171, column: 46, scope: !2413)
!2415 = !DILocation(line: 1173, column: 33, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1173, column: 33)
!2417 = !DILocation(line: 1173, column: 50, scope: !2416)
!2418 = !DILocation(line: 1173, column: 48, scope: !2416)
!2419 = !DILocation(line: 1173, column: 33, scope: !2035)
!2420 = !DILocation(line: 1174, column: 33, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2416, file: !1, line: 1173, column: 62)
!2422 = !DILocation(line: 1175, column: 29, scope: !2421)
!2423 = !DILocation(line: 1176, column: 29, scope: !2035)
!2424 = !DILocation(line: 1180, column: 56, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1179, column: 29)
!2426 = !DILocation(line: 1181, column: 44, scope: !2425)
!2427 = !DILocation(line: 1182, column: 47, scope: !2425)
!2428 = !DILocation(line: 1183, column: 57, scope: !2425)
!2429 = !DILocation(line: 1183, column: 74, scope: !2425)
!2430 = !DILocation(line: 1183, column: 38, scope: !2425)
!2431 = !DILocation(line: 1183, column: 36, scope: !2425)
!2432 = !DILocation(line: 1185, column: 33, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1185, column: 33)
!2434 = !DILocation(line: 1185, column: 40, scope: !2433)
!2435 = !DILocation(line: 1185, column: 33, scope: !2035)
!2436 = !DILocation(line: 1187, column: 29, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2433, file: !1, line: 1185, column: 46)
!2438 = !DILocation(line: 1189, column: 41, scope: !2090)
!2439 = !DILocation(line: 1190, column: 42, scope: !2090)
!2440 = !DILocation(line: 1191, column: 42, scope: !2090)
!2441 = !DILocation(line: 1192, column: 42, scope: !2090)
!2442 = !DILocation(line: 1193, column: 42, scope: !2090)
!2443 = !DILocation(line: 1194, column: 33, scope: !2089)
!2444 = !DILocation(line: 1194, column: 96, scope: !2089)
!2445 = !DILocation(line: 1194, column: 93, scope: !2089)
!2446 = !DILocation(line: 1194, column: 33, scope: !2090)
!2447 = !DILocation(line: 1196, column: 62, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2088, file: !1, line: 1195, column: 31)
!2449 = !DILocation(line: 1196, column: 46, scope: !2448)
!2450 = !DILocation(line: 1196, column: 44, scope: !2448)
!2451 = !DILocation(line: 1197, column: 35, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2448, file: !1, line: 1197, column: 35)
!2453 = !DILocation(line: 1197, column: 48, scope: !2452)
!2454 = !DILocation(line: 1197, column: 35, scope: !2448)
!2455 = !DILocation(line: 1198, column: 60, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2452, file: !1, line: 1197, column: 64)
!2457 = !DILocation(line: 1199, column: 31, scope: !2456)
!2458 = !DILocation(line: 1202, column: 42, scope: !2087)
!2459 = !DILocation(line: 1202, column: 40, scope: !2087)
!2460 = !DILocation(line: 1203, column: 50, scope: !2087)
!2461 = !DILocation(line: 1203, column: 31, scope: !2087)
!2462 = !DILocation(line: 1965, column: 7, scope: !435, inlinedAt: !2086)
!2463 = !DILocation(line: 1965, column: 12, scope: !435, inlinedAt: !2086)
!2464 = !DILocation(line: 1965, column: 9, scope: !435, inlinedAt: !2086)
!2465 = !DILocation(line: 1965, column: 7, scope: !436, inlinedAt: !2086)
!2466 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !2467)
!2467 = distinct !DILocation(line: 1969, column: 5, scope: !442, inlinedAt: !2086)
!2468 = !DILocation(line: 1966, column: 9, scope: !445, inlinedAt: !2086)
!2469 = !DILocation(line: 1966, column: 7, scope: !445, inlinedAt: !2086)
!2470 = !DILocation(line: 1972, column: 3, scope: !436, inlinedAt: !2086)
!2471 = !DILocation(line: 1205, column: 39, scope: !2088)
!2472 = !DILocation(line: 1205, column: 31, scope: !2088)
!2473 = !DILocation(line: 1208, column: 33, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1208, column: 33)
!2475 = !DILocation(line: 1208, column: 99, scope: !2474)
!2476 = !DILocation(line: 1208, column: 97, scope: !2474)
!2477 = !DILocation(line: 1208, column: 33, scope: !2035)
!2478 = !DILocation(line: 1209, column: 38, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2474, file: !1, line: 1208, column: 129)
!2480 = !DILocation(line: 1210, column: 31, scope: !2479)
!2481 = !DILocation(line: 1213, column: 44, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1212, column: 29)
!2483 = !DILocation(line: 1214, column: 47, scope: !2482)
!2484 = !DILocation(line: 1215, column: 57, scope: !2482)
!2485 = !DILocation(line: 1215, column: 74, scope: !2482)
!2486 = !DILocation(line: 1215, column: 38, scope: !2482)
!2487 = !DILocation(line: 1215, column: 36, scope: !2482)
!2488 = !DILocation(line: 1217, column: 33, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1217, column: 33)
!2490 = !DILocation(line: 1217, column: 40, scope: !2489)
!2491 = !DILocation(line: 1217, column: 33, scope: !2035)
!2492 = !DILocation(line: 1219, column: 29, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2489, file: !1, line: 1217, column: 46)
!2494 = !DILocation(line: 1220, column: 29, scope: !2035)
!2495 = !DILocation(line: 1222, column: 56, scope: !2035)
!2496 = !DILocation(line: 1223, column: 33, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1223, column: 33)
!2498 = !DILocation(line: 1223, column: 99, scope: !2497)
!2499 = !DILocation(line: 1223, column: 97, scope: !2497)
!2500 = !DILocation(line: 1223, column: 33, scope: !2035)
!2501 = !DILocation(line: 1224, column: 38, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2497, file: !1, line: 1223, column: 129)
!2503 = !DILocation(line: 1225, column: 31, scope: !2502)
!2504 = !DILocation(line: 1228, column: 44, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1227, column: 29)
!2506 = !DILocation(line: 1229, column: 47, scope: !2505)
!2507 = !DILocation(line: 1230, column: 57, scope: !2505)
!2508 = !DILocation(line: 1230, column: 74, scope: !2505)
!2509 = !DILocation(line: 1230, column: 38, scope: !2505)
!2510 = !DILocation(line: 1230, column: 36, scope: !2505)
!2511 = !DILocation(line: 1232, column: 33, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1232, column: 33)
!2513 = !DILocation(line: 1232, column: 40, scope: !2512)
!2514 = !DILocation(line: 1232, column: 33, scope: !2035)
!2515 = !DILocation(line: 1234, column: 62, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !1, line: 1233, column: 31)
!2517 = distinct !DILexicalBlock(scope: !2512, file: !1, line: 1232, column: 45)
!2518 = !DILocation(line: 1234, column: 46, scope: !2516)
!2519 = !DILocation(line: 1234, column: 44, scope: !2516)
!2520 = !DILocation(line: 1235, column: 35, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2516, file: !1, line: 1235, column: 35)
!2522 = !DILocation(line: 1235, column: 48, scope: !2521)
!2523 = !DILocation(line: 1235, column: 35, scope: !2516)
!2524 = !DILocation(line: 1236, column: 40, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2521, file: !1, line: 1235, column: 64)
!2526 = !DILocation(line: 1237, column: 31, scope: !2525)
!2527 = !DILocation(line: 1239, column: 29, scope: !2517)
!2528 = !DILocation(line: 1240, column: 29, scope: !2035)
!2529 = !DILocation(line: 1242, column: 56, scope: !2035)
!2530 = !DILocation(line: 1243, column: 33, scope: !2096)
!2531 = !DILocation(line: 1243, column: 41, scope: !2096)
!2532 = !DILocation(line: 1243, column: 33, scope: !2035)
!2533 = !DILocation(line: 1244, column: 38, scope: !2095)
!2534 = !DILocation(line: 1246, column: 62, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2095, file: !1, line: 1245, column: 31)
!2536 = !DILocation(line: 1246, column: 46, scope: !2535)
!2537 = !DILocation(line: 1246, column: 44, scope: !2535)
!2538 = !DILocation(line: 1247, column: 35, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2535, file: !1, line: 1247, column: 35)
!2540 = !DILocation(line: 1247, column: 48, scope: !2539)
!2541 = !DILocation(line: 1247, column: 35, scope: !2535)
!2542 = !DILocation(line: 1248, column: 60, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2539, file: !1, line: 1247, column: 64)
!2544 = !DILocation(line: 1249, column: 31, scope: !2543)
!2545 = !DILocation(line: 1252, column: 42, scope: !2094)
!2546 = !DILocation(line: 1252, column: 40, scope: !2094)
!2547 = !DILocation(line: 1253, column: 50, scope: !2094)
!2548 = !DILocation(line: 1253, column: 31, scope: !2094)
!2549 = !DILocation(line: 1965, column: 7, scope: !435, inlinedAt: !2093)
!2550 = !DILocation(line: 1965, column: 12, scope: !435, inlinedAt: !2093)
!2551 = !DILocation(line: 1965, column: 9, scope: !435, inlinedAt: !2093)
!2552 = !DILocation(line: 1965, column: 7, scope: !436, inlinedAt: !2093)
!2553 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !2554)
!2554 = distinct !DILocation(line: 1969, column: 5, scope: !442, inlinedAt: !2093)
!2555 = !DILocation(line: 1966, column: 9, scope: !445, inlinedAt: !2093)
!2556 = !DILocation(line: 1966, column: 7, scope: !445, inlinedAt: !2093)
!2557 = !DILocation(line: 1972, column: 3, scope: !436, inlinedAt: !2093)
!2558 = !DILocation(line: 1255, column: 39, scope: !2095)
!2559 = !DILocation(line: 1255, column: 31, scope: !2095)
!2560 = !DILocation(line: 1257, column: 33, scope: !2102)
!2561 = !DILocation(line: 1257, column: 57, scope: !2102)
!2562 = !DILocation(line: 1257, column: 33, scope: !2035)
!2563 = !DILocation(line: 1258, column: 38, scope: !2101)
!2564 = !DILocation(line: 1260, column: 62, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2101, file: !1, line: 1259, column: 31)
!2566 = !DILocation(line: 1260, column: 46, scope: !2565)
!2567 = !DILocation(line: 1260, column: 44, scope: !2565)
!2568 = !DILocation(line: 1261, column: 35, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2565, file: !1, line: 1261, column: 35)
!2570 = !DILocation(line: 1261, column: 48, scope: !2569)
!2571 = !DILocation(line: 1261, column: 35, scope: !2565)
!2572 = !DILocation(line: 1262, column: 60, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2569, file: !1, line: 1261, column: 64)
!2574 = !DILocation(line: 1263, column: 31, scope: !2573)
!2575 = !DILocation(line: 1266, column: 42, scope: !2100)
!2576 = !DILocation(line: 1266, column: 40, scope: !2100)
!2577 = !DILocation(line: 1267, column: 50, scope: !2100)
!2578 = !DILocation(line: 1267, column: 31, scope: !2100)
!2579 = !DILocation(line: 1965, column: 7, scope: !435, inlinedAt: !2099)
!2580 = !DILocation(line: 1965, column: 12, scope: !435, inlinedAt: !2099)
!2581 = !DILocation(line: 1965, column: 9, scope: !435, inlinedAt: !2099)
!2582 = !DILocation(line: 1965, column: 7, scope: !436, inlinedAt: !2099)
!2583 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 1969, column: 5, scope: !442, inlinedAt: !2099)
!2585 = !DILocation(line: 1966, column: 9, scope: !445, inlinedAt: !2099)
!2586 = !DILocation(line: 1966, column: 7, scope: !445, inlinedAt: !2099)
!2587 = !DILocation(line: 1972, column: 3, scope: !436, inlinedAt: !2099)
!2588 = !DILocation(line: 1269, column: 39, scope: !2101)
!2589 = !DILocation(line: 1269, column: 31, scope: !2101)
!2590 = !DILocation(line: 1272, column: 44, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1271, column: 29)
!2592 = !DILocation(line: 1273, column: 47, scope: !2591)
!2593 = !DILocation(line: 1274, column: 57, scope: !2591)
!2594 = !DILocation(line: 1274, column: 74, scope: !2591)
!2595 = !DILocation(line: 1274, column: 79, scope: !2591)
!2596 = !DILocation(line: 1275, column: 57, scope: !2591)
!2597 = !DILocation(line: 1274, column: 38, scope: !2591)
!2598 = !DILocation(line: 1274, column: 36, scope: !2591)
!2599 = !DILocation(line: 1278, column: 33, scope: !2108)
!2600 = !DILocation(line: 1278, column: 40, scope: !2108)
!2601 = !DILocation(line: 1278, column: 33, scope: !2109)
!2602 = !DILocation(line: 1280, column: 62, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2107, file: !1, line: 1279, column: 31)
!2604 = !DILocation(line: 1280, column: 46, scope: !2603)
!2605 = !DILocation(line: 1280, column: 44, scope: !2603)
!2606 = !DILocation(line: 1281, column: 35, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2603, file: !1, line: 1281, column: 35)
!2608 = !DILocation(line: 1281, column: 48, scope: !2607)
!2609 = !DILocation(line: 1281, column: 35, scope: !2603)
!2610 = !DILocation(line: 1282, column: 60, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2607, file: !1, line: 1281, column: 64)
!2612 = !DILocation(line: 1283, column: 31, scope: !2611)
!2613 = !DILocation(line: 1286, column: 42, scope: !2106)
!2614 = !DILocation(line: 1286, column: 40, scope: !2106)
!2615 = !DILocation(line: 1287, column: 50, scope: !2106)
!2616 = !DILocation(line: 1287, column: 31, scope: !2106)
!2617 = !DILocation(line: 1965, column: 7, scope: !435, inlinedAt: !2105)
!2618 = !DILocation(line: 1965, column: 12, scope: !435, inlinedAt: !2105)
!2619 = !DILocation(line: 1965, column: 9, scope: !435, inlinedAt: !2105)
!2620 = !DILocation(line: 1965, column: 7, scope: !436, inlinedAt: !2105)
!2621 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 1969, column: 5, scope: !442, inlinedAt: !2105)
!2623 = !DILocation(line: 1966, column: 9, scope: !445, inlinedAt: !2105)
!2624 = !DILocation(line: 1966, column: 7, scope: !445, inlinedAt: !2105)
!2625 = !DILocation(line: 1972, column: 3, scope: !436, inlinedAt: !2105)
!2626 = !DILocation(line: 1289, column: 39, scope: !2107)
!2627 = !DILocation(line: 1289, column: 31, scope: !2107)
!2628 = !DILocation(line: 1293, column: 44, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1292, column: 29)
!2630 = !DILocation(line: 1294, column: 47, scope: !2629)
!2631 = !DILocation(line: 1295, column: 57, scope: !2629)
!2632 = !DILocation(line: 1295, column: 74, scope: !2629)
!2633 = !DILocation(line: 1295, column: 38, scope: !2629)
!2634 = !DILocation(line: 1295, column: 36, scope: !2629)
!2635 = !DILocation(line: 1298, column: 33, scope: !2115)
!2636 = !DILocation(line: 1298, column: 40, scope: !2115)
!2637 = !DILocation(line: 1298, column: 33, scope: !2116)
!2638 = !DILocation(line: 1300, column: 62, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2114, file: !1, line: 1299, column: 31)
!2640 = !DILocation(line: 1300, column: 46, scope: !2639)
!2641 = !DILocation(line: 1300, column: 44, scope: !2639)
!2642 = !DILocation(line: 1301, column: 35, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2639, file: !1, line: 1301, column: 35)
!2644 = !DILocation(line: 1301, column: 48, scope: !2643)
!2645 = !DILocation(line: 1301, column: 35, scope: !2639)
!2646 = !DILocation(line: 1302, column: 60, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2643, file: !1, line: 1301, column: 64)
!2648 = !DILocation(line: 1303, column: 31, scope: !2647)
!2649 = !DILocation(line: 1306, column: 42, scope: !2113)
!2650 = !DILocation(line: 1306, column: 40, scope: !2113)
!2651 = !DILocation(line: 1307, column: 50, scope: !2113)
!2652 = !DILocation(line: 1307, column: 31, scope: !2113)
!2653 = !DILocation(line: 1965, column: 7, scope: !435, inlinedAt: !2112)
!2654 = !DILocation(line: 1965, column: 12, scope: !435, inlinedAt: !2112)
!2655 = !DILocation(line: 1965, column: 9, scope: !435, inlinedAt: !2112)
!2656 = !DILocation(line: 1965, column: 7, scope: !436, inlinedAt: !2112)
!2657 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 1969, column: 5, scope: !442, inlinedAt: !2112)
!2659 = !DILocation(line: 1966, column: 9, scope: !445, inlinedAt: !2112)
!2660 = !DILocation(line: 1966, column: 7, scope: !445, inlinedAt: !2112)
!2661 = !DILocation(line: 1972, column: 3, scope: !436, inlinedAt: !2112)
!2662 = !DILocation(line: 1309, column: 39, scope: !2114)
!2663 = !DILocation(line: 1309, column: 31, scope: !2114)
!2664 = !DILocation(line: 1312, column: 29, scope: !2035)
!2665 = !DILocation(line: 1314, column: 56, scope: !2035)
!2666 = !DILocation(line: 1315, column: 33, scope: !2122)
!2667 = !DILocation(line: 1315, column: 57, scope: !2122)
!2668 = !DILocation(line: 1315, column: 33, scope: !2035)
!2669 = !DILocation(line: 1316, column: 38, scope: !2121)
!2670 = !DILocation(line: 1318, column: 62, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2121, file: !1, line: 1317, column: 31)
!2672 = !DILocation(line: 1318, column: 46, scope: !2671)
!2673 = !DILocation(line: 1318, column: 44, scope: !2671)
!2674 = !DILocation(line: 1319, column: 35, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2671, file: !1, line: 1319, column: 35)
!2676 = !DILocation(line: 1319, column: 48, scope: !2675)
!2677 = !DILocation(line: 1319, column: 35, scope: !2671)
!2678 = !DILocation(line: 1320, column: 60, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2675, file: !1, line: 1319, column: 64)
!2680 = !DILocation(line: 1321, column: 31, scope: !2679)
!2681 = !DILocation(line: 1324, column: 42, scope: !2120)
!2682 = !DILocation(line: 1324, column: 40, scope: !2120)
!2683 = !DILocation(line: 1325, column: 50, scope: !2120)
!2684 = !DILocation(line: 1325, column: 31, scope: !2120)
!2685 = !DILocation(line: 1965, column: 7, scope: !435, inlinedAt: !2119)
!2686 = !DILocation(line: 1965, column: 12, scope: !435, inlinedAt: !2119)
!2687 = !DILocation(line: 1965, column: 9, scope: !435, inlinedAt: !2119)
!2688 = !DILocation(line: 1965, column: 7, scope: !436, inlinedAt: !2119)
!2689 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 1969, column: 5, scope: !442, inlinedAt: !2119)
!2691 = !DILocation(line: 1966, column: 9, scope: !445, inlinedAt: !2119)
!2692 = !DILocation(line: 1966, column: 7, scope: !445, inlinedAt: !2119)
!2693 = !DILocation(line: 1972, column: 3, scope: !436, inlinedAt: !2119)
!2694 = !DILocation(line: 1327, column: 39, scope: !2121)
!2695 = !DILocation(line: 1327, column: 31, scope: !2121)
!2696 = !DILocation(line: 1330, column: 44, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1329, column: 29)
!2698 = !DILocation(line: 1331, column: 47, scope: !2697)
!2699 = !DILocation(line: 1332, column: 57, scope: !2697)
!2700 = !DILocation(line: 1332, column: 74, scope: !2697)
!2701 = !DILocation(line: 1332, column: 38, scope: !2697)
!2702 = !DILocation(line: 1332, column: 36, scope: !2697)
!2703 = !DILocation(line: 1334, column: 33, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1334, column: 33)
!2705 = !DILocation(line: 1334, column: 40, scope: !2704)
!2706 = !DILocation(line: 1334, column: 33, scope: !2035)
!2707 = !DILocation(line: 1335, column: 59, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2704, file: !1, line: 1334, column: 46)
!2709 = !DILocation(line: 1336, column: 55, scope: !2708)
!2710 = !DILocation(line: 1337, column: 29, scope: !2708)
!2711 = !DILocation(line: 1338, column: 29, scope: !2035)
!2712 = !DILocation(line: 1340, column: 33, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1340, column: 33)
!2714 = !DILocation(line: 1340, column: 100, scope: !2713)
!2715 = !DILocation(line: 1340, column: 98, scope: !2713)
!2716 = !DILocation(line: 1340, column: 33, scope: !2035)
!2717 = !DILocation(line: 1341, column: 38, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2713, file: !1, line: 1340, column: 132)
!2719 = !DILocation(line: 1342, column: 58, scope: !2718)
!2720 = !DILocation(line: 1343, column: 31, scope: !2718)
!2721 = !DILocation(line: 1345, column: 33, scope: !2128)
!2722 = !DILocation(line: 1345, column: 45, scope: !2128)
!2723 = !DILocation(line: 1345, column: 33, scope: !2035)
!2724 = !DILocation(line: 1346, column: 38, scope: !2127)
!2725 = !DILocation(line: 1347, column: 58, scope: !2127)
!2726 = !DILocation(line: 1349, column: 62, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2127, file: !1, line: 1348, column: 31)
!2728 = !DILocation(line: 1349, column: 46, scope: !2727)
!2729 = !DILocation(line: 1349, column: 44, scope: !2727)
!2730 = !DILocation(line: 1350, column: 35, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2727, file: !1, line: 1350, column: 35)
!2732 = !DILocation(line: 1350, column: 48, scope: !2731)
!2733 = !DILocation(line: 1350, column: 35, scope: !2727)
!2734 = !DILocation(line: 1351, column: 60, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2731, file: !1, line: 1350, column: 64)
!2736 = !DILocation(line: 1352, column: 31, scope: !2735)
!2737 = !DILocation(line: 1355, column: 42, scope: !2126)
!2738 = !DILocation(line: 1355, column: 40, scope: !2126)
!2739 = !DILocation(line: 1356, column: 50, scope: !2126)
!2740 = !DILocation(line: 1356, column: 31, scope: !2126)
!2741 = !DILocation(line: 1965, column: 7, scope: !435, inlinedAt: !2125)
!2742 = !DILocation(line: 1965, column: 12, scope: !435, inlinedAt: !2125)
!2743 = !DILocation(line: 1965, column: 9, scope: !435, inlinedAt: !2125)
!2744 = !DILocation(line: 1965, column: 7, scope: !436, inlinedAt: !2125)
!2745 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !2746)
!2746 = distinct !DILocation(line: 1969, column: 5, scope: !442, inlinedAt: !2125)
!2747 = !DILocation(line: 1966, column: 9, scope: !445, inlinedAt: !2125)
!2748 = !DILocation(line: 1966, column: 7, scope: !445, inlinedAt: !2125)
!2749 = !DILocation(line: 1972, column: 3, scope: !436, inlinedAt: !2125)
!2750 = !DILocation(line: 1358, column: 39, scope: !2127)
!2751 = !DILocation(line: 1358, column: 31, scope: !2127)
!2752 = !DILocation(line: 1360, column: 33, scope: !2134)
!2753 = !DILocation(line: 1360, column: 49, scope: !2134)
!2754 = !DILocation(line: 1360, column: 33, scope: !2035)
!2755 = !DILocation(line: 1361, column: 38, scope: !2133)
!2756 = !DILocation(line: 1362, column: 58, scope: !2133)
!2757 = !DILocation(line: 1364, column: 62, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2133, file: !1, line: 1363, column: 31)
!2759 = !DILocation(line: 1364, column: 46, scope: !2758)
!2760 = !DILocation(line: 1364, column: 44, scope: !2758)
!2761 = !DILocation(line: 1365, column: 35, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2758, file: !1, line: 1365, column: 35)
!2763 = !DILocation(line: 1365, column: 48, scope: !2762)
!2764 = !DILocation(line: 1365, column: 35, scope: !2758)
!2765 = !DILocation(line: 1366, column: 60, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2762, file: !1, line: 1365, column: 64)
!2767 = !DILocation(line: 1367, column: 31, scope: !2766)
!2768 = !DILocation(line: 1370, column: 42, scope: !2132)
!2769 = !DILocation(line: 1370, column: 40, scope: !2132)
!2770 = !DILocation(line: 1371, column: 50, scope: !2132)
!2771 = !DILocation(line: 1371, column: 31, scope: !2132)
!2772 = !DILocation(line: 1965, column: 7, scope: !435, inlinedAt: !2131)
!2773 = !DILocation(line: 1965, column: 12, scope: !435, inlinedAt: !2131)
!2774 = !DILocation(line: 1965, column: 9, scope: !435, inlinedAt: !2131)
!2775 = !DILocation(line: 1965, column: 7, scope: !436, inlinedAt: !2131)
!2776 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 1969, column: 5, scope: !442, inlinedAt: !2131)
!2778 = !DILocation(line: 1966, column: 9, scope: !445, inlinedAt: !2131)
!2779 = !DILocation(line: 1966, column: 7, scope: !445, inlinedAt: !2131)
!2780 = !DILocation(line: 1972, column: 3, scope: !436, inlinedAt: !2131)
!2781 = !DILocation(line: 1373, column: 39, scope: !2133)
!2782 = !DILocation(line: 1373, column: 31, scope: !2133)
!2783 = !DILocation(line: 1376, column: 44, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1375, column: 29)
!2785 = !DILocation(line: 1377, column: 47, scope: !2784)
!2786 = !DILocation(line: 1378, column: 57, scope: !2784)
!2787 = !DILocation(line: 1378, column: 74, scope: !2784)
!2788 = !DILocation(line: 1378, column: 79, scope: !2784)
!2789 = !DILocation(line: 1379, column: 57, scope: !2784)
!2790 = !DILocation(line: 1378, column: 38, scope: !2784)
!2791 = !DILocation(line: 1378, column: 36, scope: !2784)
!2792 = !DILocation(line: 1381, column: 33, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1381, column: 33)
!2794 = !DILocation(line: 1381, column: 40, scope: !2793)
!2795 = !DILocation(line: 1381, column: 33, scope: !2035)
!2796 = !DILocation(line: 1382, column: 35, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !1, line: 1382, column: 35)
!2798 = distinct !DILexicalBlock(scope: !2793, file: !1, line: 1381, column: 46)
!2799 = !DILocation(line: 1382, column: 59, scope: !2797)
!2800 = !DILocation(line: 1382, column: 35, scope: !2798)
!2801 = !DILocation(line: 1383, column: 61, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2797, file: !1, line: 1382, column: 65)
!2803 = !DILocation(line: 1384, column: 31, scope: !2802)
!2804 = !DILocation(line: 1385, column: 60, scope: !2798)
!2805 = !DILocation(line: 1385, column: 58, scope: !2798)
!2806 = !DILocation(line: 1386, column: 29, scope: !2798)
!2807 = !DILocation(line: 1387, column: 58, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2793, file: !1, line: 1386, column: 36)
!2809 = !DILocation(line: 1389, column: 29, scope: !2035)
!2810 = !DILocation(line: 1392, column: 56, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1391, column: 29)
!2812 = !DILocation(line: 1393, column: 44, scope: !2811)
!2813 = !DILocation(line: 1394, column: 47, scope: !2811)
!2814 = !DILocation(line: 1395, column: 57, scope: !2811)
!2815 = !DILocation(line: 1395, column: 74, scope: !2811)
!2816 = !DILocation(line: 1395, column: 38, scope: !2811)
!2817 = !DILocation(line: 1395, column: 36, scope: !2811)
!2818 = !DILocation(line: 1397, column: 29, scope: !2035)
!2819 = !DILocation(line: 1401, column: 56, scope: !2035)
!2820 = !DILocation(line: 1402, column: 36, scope: !2035)
!2821 = !DILocation(line: 1403, column: 29, scope: !2035)
!2822 = !DILocation(line: 1406, column: 59, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1405, column: 29)
!2824 = !DILocation(line: 1406, column: 39, scope: !2823)
!2825 = !DILocation(line: 1406, column: 37, scope: !2823)
!2826 = !DILocation(line: 1408, column: 33, scope: !2140)
!2827 = !DILocation(line: 1408, column: 41, scope: !2140)
!2828 = !DILocation(line: 1408, column: 33, scope: !2035)
!2829 = !DILocation(line: 1409, column: 59, scope: !2139)
!2830 = !DILocation(line: 1410, column: 38, scope: !2139)
!2831 = !DILocation(line: 1411, column: 58, scope: !2139)
!2832 = !DILocation(line: 1413, column: 62, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2139, file: !1, line: 1412, column: 31)
!2834 = !DILocation(line: 1413, column: 46, scope: !2833)
!2835 = !DILocation(line: 1413, column: 44, scope: !2833)
!2836 = !DILocation(line: 1414, column: 35, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2833, file: !1, line: 1414, column: 35)
!2838 = !DILocation(line: 1414, column: 48, scope: !2837)
!2839 = !DILocation(line: 1414, column: 35, scope: !2833)
!2840 = !DILocation(line: 1415, column: 60, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2837, file: !1, line: 1414, column: 64)
!2842 = !DILocation(line: 1416, column: 31, scope: !2841)
!2843 = !DILocation(line: 1419, column: 42, scope: !2138)
!2844 = !DILocation(line: 1419, column: 40, scope: !2138)
!2845 = !DILocation(line: 1420, column: 50, scope: !2138)
!2846 = !DILocation(line: 1420, column: 31, scope: !2138)
!2847 = !DILocation(line: 1965, column: 7, scope: !435, inlinedAt: !2137)
!2848 = !DILocation(line: 1965, column: 12, scope: !435, inlinedAt: !2137)
!2849 = !DILocation(line: 1965, column: 9, scope: !435, inlinedAt: !2137)
!2850 = !DILocation(line: 1965, column: 7, scope: !436, inlinedAt: !2137)
!2851 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 1969, column: 5, scope: !442, inlinedAt: !2137)
!2853 = !DILocation(line: 1966, column: 9, scope: !445, inlinedAt: !2137)
!2854 = !DILocation(line: 1966, column: 7, scope: !445, inlinedAt: !2137)
!2855 = !DILocation(line: 1972, column: 3, scope: !436, inlinedAt: !2137)
!2856 = !DILocation(line: 1422, column: 39, scope: !2139)
!2857 = !DILocation(line: 1422, column: 31, scope: !2139)
!2858 = !DILocation(line: 1425, column: 59, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2860, file: !1, line: 1424, column: 31)
!2860 = distinct !DILexicalBlock(scope: !2140, file: !1, line: 1423, column: 36)
!2861 = !DILocation(line: 1426, column: 65, scope: !2859)
!2862 = !DILocation(line: 1426, column: 79, scope: !2859)
!2863 = !DILocation(line: 1426, column: 41, scope: !2859)
!2864 = !DILocation(line: 1426, column: 39, scope: !2859)
!2865 = !DILocation(line: 1428, column: 39, scope: !2860)
!2866 = !DILocation(line: 1428, column: 31, scope: !2860)
!2867 = !DILocation(line: 1433, column: 63, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 1432, column: 29)
!2869 = !DILocation(line: 1433, column: 77, scope: !2868)
!2870 = !DILocation(line: 1433, column: 39, scope: !2868)
!2871 = !DILocation(line: 1433, column: 37, scope: !2868)
!2872 = !DILocation(line: 1435, column: 37, scope: !2035)
!2873 = !DILocation(line: 1435, column: 29, scope: !2035)
!2874 = !DILocation(line: 1437, column: 34, scope: !2036)
!2875 = !DILocation(line: 1465, column: 34, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2023, file: !1, line: 1464, column: 3)
!2877 = !DILocation(line: 1465, column: 18, scope: !2876)
!2878 = !DILocation(line: 1465, column: 16, scope: !2876)
!2879 = !DILocation(line: 1466, column: 7, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2876, file: !1, line: 1466, column: 7)
!2881 = !DILocation(line: 1466, column: 20, scope: !2880)
!2882 = !DILocation(line: 1466, column: 7, scope: !2876)
!2883 = !DILocation(line: 1467, column: 32, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2880, file: !1, line: 1466, column: 36)
!2885 = !DILocation(line: 1468, column: 3, scope: !2884)
!2886 = !DILocation(line: 1471, column: 14, scope: !2144)
!2887 = !DILocation(line: 1471, column: 12, scope: !2144)
!2888 = !DILocation(line: 1472, column: 22, scope: !2144)
!2889 = !DILocation(line: 1472, column: 3, scope: !2144)
!2890 = !DILocation(line: 1965, column: 7, scope: !435, inlinedAt: !2143)
!2891 = !DILocation(line: 1965, column: 12, scope: !435, inlinedAt: !2143)
!2892 = !DILocation(line: 1965, column: 9, scope: !435, inlinedAt: !2143)
!2893 = !DILocation(line: 1965, column: 7, scope: !436, inlinedAt: !2143)
!2894 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 1969, column: 5, scope: !442, inlinedAt: !2143)
!2896 = !DILocation(line: 1966, column: 9, scope: !445, inlinedAt: !2143)
!2897 = !DILocation(line: 1966, column: 7, scope: !445, inlinedAt: !2143)
!2898 = !DILocation(line: 1972, column: 3, scope: !436, inlinedAt: !2143)
!2899 = !DILocation(line: 1474, column: 11, scope: !2023)
!2900 = !DILocation(line: 1474, column: 3, scope: !2023)
!2901 = !DILocation(line: 1476, column: 1, scope: !29)
!2902 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !30, file: !1, line: 1477, type: !14)
!2903 = !DILocation(line: 1477, column: 35, scope: !30)
!2904 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !30, file: !1, line: 1477, type: !14)
!2905 = !DILocation(line: 1477, column: 54, scope: !30)
!2906 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentIrpStack__Parameters__DeviceIoControl__IoControlCode", scope: !30, file: !1, line: 1478, type: !14)
!2907 = !DILocation(line: 1478, column: 7, scope: !30)
!2908 = !DILocation(line: 1478, column: 69, scope: !30)
!2909 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !30, file: !1, line: 1479, type: !14)
!2910 = !DILocation(line: 1479, column: 7, scope: !30)
!2911 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__PlayActive", scope: !30, file: !1, line: 1480, type: !14)
!2912 = !DILocation(line: 1480, column: 7, scope: !30)
!2913 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srb__CdbLength", scope: !30, file: !1, line: 1481, type: !14)
!2914 = !DILocation(line: 1481, column: 7, scope: !30)
!2915 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srb__TimeOutValue", scope: !30, file: !1, line: 1482, type: !14)
!2916 = !DILocation(line: 1482, column: 7, scope: !30)
!2917 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !30, file: !1, line: 1483, type: !14)
!2918 = !DILocation(line: 1483, column: 7, scope: !30)
!2919 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !30, file: !1, line: 1484, type: !14)
!2920 = !DILocation(line: 1484, column: 7, scope: !30)
!2921 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !30, file: !1, line: 1485, type: !14)
!2922 = !DILocation(line: 1485, column: 7, scope: !30)
!2923 = !DILocation(line: 1485, column: 25, scope: !30)
!2924 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srb", scope: !30, file: !1, line: 1486, type: !14)
!2925 = !DILocation(line: 1486, column: 7, scope: !30)
!2926 = !DILocation(line: 1486, column: 13, scope: !30)
!2927 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !30, file: !1, line: 1487, type: !14)
!2928 = !DILocation(line: 1487, column: 7, scope: !30)
!2929 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp13", scope: !30, file: !1, line: 1488, type: !14)
!2930 = !DILocation(line: 1488, column: 7, scope: !30)
!2931 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp14", scope: !30, file: !1, line: 1489, type: !14)
!2932 = !DILocation(line: 1489, column: 7, scope: !30)
!2933 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp15", scope: !30, file: !1, line: 1490, type: !14)
!2934 = !DILocation(line: 1490, column: 7, scope: !30)
!2935 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp16", scope: !30, file: !1, line: 1491, type: !14)
!2936 = !DILocation(line: 1491, column: 7, scope: !30)
!2937 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp17", scope: !30, file: !1, line: 1492, type: !14)
!2938 = !DILocation(line: 1492, column: 7, scope: !30)
!2939 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp18", scope: !30, file: !1, line: 1493, type: !14)
!2940 = !DILocation(line: 1493, column: 7, scope: !30)
!2941 = !DILocation(line: 1497, column: 15, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !1, line: 1496, column: 3)
!2943 = distinct !DILexicalBlock(scope: !30, file: !1, line: 1495, column: 3)
!2944 = !DILocation(line: 1498, column: 15, scope: !2942)
!2945 = !DILocation(line: 1499, column: 15, scope: !2942)
!2946 = !DILocation(line: 1500, column: 15, scope: !2942)
!2947 = !DILocation(line: 1501, column: 15, scope: !2942)
!2948 = !DILocation(line: 1502, column: 7, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2942, file: !1, line: 1502, column: 7)
!2950 = !DILocation(line: 1502, column: 70, scope: !2949)
!2951 = !DILocation(line: 1502, column: 67, scope: !2949)
!2952 = !DILocation(line: 1961, column: 29, scope: !45, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 1515, column: 7, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2955, file: !1, line: 1512, column: 7)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !1, line: 1511, column: 21)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !1, line: 1511, column: 9)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !1, line: 1510, column: 5)
!2958 = distinct !DILexicalBlock(scope: !2949, file: !1, line: 1502, column: 83)
!2959 = !DILocation(line: 1961, column: 39, scope: !45, inlinedAt: !2953)
!2960 = !DILocation(line: 1961, column: 29, scope: !45, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 1530, column: 3, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2943, file: !1, line: 1527, column: 3)
!2963 = !DILocation(line: 1961, column: 39, scope: !45, inlinedAt: !2961)
!2964 = !DILocation(line: 1502, column: 7, scope: !2942)
!2965 = !DILocation(line: 1504, column: 32, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2958, file: !1, line: 1503, column: 5)
!2967 = !DILocation(line: 1505, column: 33, scope: !2966)
!2968 = !DILocation(line: 1506, column: 20, scope: !2966)
!2969 = !DILocation(line: 1507, column: 23, scope: !2966)
!2970 = !DILocation(line: 1508, column: 33, scope: !2966)
!2971 = !DILocation(line: 1508, column: 50, scope: !2966)
!2972 = !DILocation(line: 1508, column: 14, scope: !2966)
!2973 = !DILocation(line: 1508, column: 12, scope: !2966)
!2974 = !DILocation(line: 1511, column: 9, scope: !2956)
!2975 = !DILocation(line: 1511, column: 16, scope: !2956)
!2976 = !DILocation(line: 1511, column: 9, scope: !2957)
!2977 = !DILocation(line: 1513, column: 31, scope: !2954)
!2978 = !DILocation(line: 1513, column: 29, scope: !2954)
!2979 = !DILocation(line: 1514, column: 18, scope: !2954)
!2980 = !DILocation(line: 1514, column: 16, scope: !2954)
!2981 = !DILocation(line: 1515, column: 26, scope: !2954)
!2982 = !DILocation(line: 1515, column: 7, scope: !2954)
!2983 = !DILocation(line: 1965, column: 7, scope: !435, inlinedAt: !2953)
!2984 = !DILocation(line: 1965, column: 12, scope: !435, inlinedAt: !2953)
!2985 = !DILocation(line: 1965, column: 9, scope: !435, inlinedAt: !2953)
!2986 = !DILocation(line: 1965, column: 7, scope: !436, inlinedAt: !2953)
!2987 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 1969, column: 5, scope: !442, inlinedAt: !2953)
!2989 = !DILocation(line: 1966, column: 9, scope: !445, inlinedAt: !2953)
!2990 = !DILocation(line: 1966, column: 7, scope: !445, inlinedAt: !2953)
!2991 = !DILocation(line: 1972, column: 3, scope: !436, inlinedAt: !2953)
!2992 = !DILocation(line: 1517, column: 15, scope: !2955)
!2993 = !DILocation(line: 1517, column: 7, scope: !2955)
!2994 = !DILocation(line: 1520, column: 3, scope: !2958)
!2995 = !DILocation(line: 1522, column: 35, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !1, line: 1521, column: 5)
!2997 = distinct !DILexicalBlock(scope: !2949, file: !1, line: 1520, column: 10)
!2998 = !DILocation(line: 1522, column: 49, scope: !2996)
!2999 = !DILocation(line: 1522, column: 11, scope: !2996)
!3000 = !DILocation(line: 1522, column: 9, scope: !2996)
!3001 = !DILocation(line: 1524, column: 13, scope: !2997)
!3002 = !DILocation(line: 1524, column: 5, scope: !2997)
!3003 = !DILocation(line: 1528, column: 27, scope: !2962)
!3004 = !DILocation(line: 1528, column: 25, scope: !2962)
!3005 = !DILocation(line: 1529, column: 14, scope: !2962)
!3006 = !DILocation(line: 1529, column: 12, scope: !2962)
!3007 = !DILocation(line: 1530, column: 22, scope: !2962)
!3008 = !DILocation(line: 1530, column: 3, scope: !2962)
!3009 = !DILocation(line: 1965, column: 7, scope: !435, inlinedAt: !2961)
!3010 = !DILocation(line: 1965, column: 12, scope: !435, inlinedAt: !2961)
!3011 = !DILocation(line: 1965, column: 9, scope: !435, inlinedAt: !2961)
!3012 = !DILocation(line: 1965, column: 7, scope: !436, inlinedAt: !2961)
!3013 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 1969, column: 5, scope: !442, inlinedAt: !2961)
!3015 = !DILocation(line: 1966, column: 9, scope: !445, inlinedAt: !2961)
!3016 = !DILocation(line: 1966, column: 7, scope: !445, inlinedAt: !2961)
!3017 = !DILocation(line: 1972, column: 3, scope: !436, inlinedAt: !2961)
!3018 = !DILocation(line: 1532, column: 11, scope: !2943)
!3019 = !DILocation(line: 1532, column: 3, scope: !2943)
!3020 = !DILocation(line: 1534, column: 1, scope: !30)
!3021 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Toc", arg: 1, scope: !31, file: !1, line: 1535, type: !14)
!3022 = !DILocation(line: 1535, column: 34, scope: !31)
!3023 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !31, file: !1, line: 1536, type: !14)
!3024 = !DILocation(line: 1536, column: 7, scope: !31)
!3025 = !DILocation(line: 1536, column: 15, scope: !31)
!3026 = !DILocation(line: 1539, column: 7, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !1, line: 1539, column: 7)
!3028 = distinct !DILexicalBlock(scope: !31, file: !1, line: 1538, column: 3)
!3029 = !DILocation(line: 1539, column: 7, scope: !3028)
!3030 = !DILocation(line: 1540, column: 11, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3027, file: !1, line: 1539, column: 14)
!3032 = !DILocation(line: 1541, column: 3, scope: !3031)
!3033 = !DILocation(line: 1542, column: 3, scope: !3028)
!3034 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !34, file: !1, line: 1545, type: !14)
!3035 = !DILocation(line: 1545, column: 25, scope: !34)
!3036 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !34, file: !1, line: 1545, type: !14)
!3037 = !DILocation(line: 1545, column: 44, scope: !34)
!3038 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 3, scope: !34, file: !1, line: 1545, type: !14)
!3039 = !DILocation(line: 1545, column: 54, scope: !34)
!3040 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__PendingReturned", scope: !34, file: !1, line: 1546, type: !14)
!3041 = !DILocation(line: 1546, column: 7, scope: !34)
!3042 = !DILocation(line: 1546, column: 30, scope: !34)
!3043 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__AssociatedIrp__SystemBuffer", scope: !34, file: !1, line: 1547, type: !14)
!3044 = !DILocation(line: 1547, column: 7, scope: !34)
!3045 = !DILocation(line: 1547, column: 42, scope: !34)
!3046 = !DILocation(line: 1550, column: 7, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3048, file: !1, line: 1550, column: 7)
!3048 = distinct !DILexicalBlock(scope: !34, file: !1, line: 1549, column: 3)
!3049 = !DILocation(line: 1535, column: 34, scope: !31, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 1561, column: 5, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3052, file: !1, line: 1560, column: 5)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !1, line: 1559, column: 22)
!3053 = distinct !DILexicalBlock(scope: !3048, file: !1, line: 1559, column: 7)
!3054 = !DILocation(line: 1536, column: 7, scope: !31, inlinedAt: !3050)
!3055 = !DILocation(line: 1550, column: 7, scope: !3048)
!3056 = !DILocation(line: 1551, column: 9, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !1, line: 1551, column: 9)
!3058 = distinct !DILexicalBlock(scope: !3047, file: !1, line: 1550, column: 29)
!3059 = !DILocation(line: 1551, column: 16, scope: !3057)
!3060 = !DILocation(line: 1551, column: 9, scope: !3058)
!3061 = !DILocation(line: 1552, column: 14, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3057, file: !1, line: 1551, column: 22)
!3063 = !DILocation(line: 1553, column: 5, scope: !3062)
!3064 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 1555, column: 7, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !1, line: 1554, column: 7)
!3067 = distinct !DILexicalBlock(scope: !3057, file: !1, line: 1553, column: 12)
!3068 = !DILocation(line: 1558, column: 3, scope: !3058)
!3069 = !DILocation(line: 1559, column: 7, scope: !3053)
!3070 = !DILocation(line: 1559, column: 16, scope: !3053)
!3071 = !DILocation(line: 1559, column: 7, scope: !3048)
!3072 = !DILocation(line: 1561, column: 29, scope: !3051)
!3073 = !DILocation(line: 1561, column: 5, scope: !3051)
!3074 = !DILocation(line: 1536, column: 15, scope: !31, inlinedAt: !3050)
!3075 = !DILocation(line: 1539, column: 7, scope: !3027, inlinedAt: !3050)
!3076 = !DILocation(line: 1539, column: 7, scope: !3028, inlinedAt: !3050)
!3077 = !DILocation(line: 1540, column: 11, scope: !3031, inlinedAt: !3050)
!3078 = !DILocation(line: 1541, column: 3, scope: !3031, inlinedAt: !3050)
!3079 = !DILocation(line: 1542, column: 3, scope: !3028, inlinedAt: !3050)
!3080 = !DILocation(line: 1563, column: 3, scope: !3052)
!3081 = !DILocation(line: 1564, column: 11, scope: !3048)
!3082 = !DILocation(line: 1564, column: 3, scope: !3048)
!3083 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !35, file: !1, line: 1567, type: !14)
!3084 = !DILocation(line: 1567, column: 35, scope: !35)
!3085 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !35, file: !1, line: 1567, type: !14)
!3086 = !DILocation(line: 1567, column: 54, scope: !35)
!3087 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentIrpStack__Parameters__DeviceIoControl__IoControlCode", scope: !35, file: !1, line: 1568, type: !14)
!3088 = !DILocation(line: 1568, column: 7, scope: !35)
!3089 = !DILocation(line: 1568, column: 69, scope: !35)
!3090 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__TargetDeviceObject", scope: !35, file: !1, line: 1569, type: !14)
!3091 = !DILocation(line: 1569, column: 7, scope: !35)
!3092 = !DILocation(line: 1569, column: 45, scope: !35)
!3093 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Control", scope: !35, file: !1, line: 1570, type: !14)
!3094 = !DILocation(line: 1570, column: 7, scope: !35)
!3095 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !35, file: !1, line: 1571, type: !14)
!3096 = !DILocation(line: 1571, column: 7, scope: !35)
!3097 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___0", scope: !35, file: !1, line: 1572, type: !14)
!3098 = !DILocation(line: 1572, column: 7, scope: !35)
!3099 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp8", scope: !35, file: !1, line: 1573, type: !14)
!3100 = !DILocation(line: 1573, column: 7, scope: !35)
!3101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp9", scope: !35, file: !1, line: 1574, type: !14)
!3102 = !DILocation(line: 1574, column: 7, scope: !35)
!3103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp10", scope: !35, file: !1, line: 1575, type: !14)
!3104 = !DILocation(line: 1575, column: 7, scope: !35)
!3105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp11", scope: !35, file: !1, line: 1576, type: !14)
!3106 = !DILocation(line: 1576, column: 7, scope: !35)
!3107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp12", scope: !35, file: !1, line: 1577, type: !14)
!3108 = !DILocation(line: 1577, column: 7, scope: !35)
!3109 = !DILocation(line: 1581, column: 14, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !1, line: 1580, column: 3)
!3111 = distinct !DILexicalBlock(scope: !35, file: !1, line: 1579, column: 3)
!3112 = !DILocation(line: 1582, column: 14, scope: !3110)
!3113 = !DILocation(line: 1583, column: 15, scope: !3110)
!3114 = !DILocation(line: 1584, column: 15, scope: !3110)
!3115 = !DILocation(line: 1585, column: 15, scope: !3110)
!3116 = !DILocation(line: 1586, column: 7, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3110, file: !1, line: 1586, column: 7)
!3118 = !DILocation(line: 1586, column: 70, scope: !3117)
!3119 = !DILocation(line: 1586, column: 67, scope: !3117)
!3120 = !DILocation(line: 1586, column: 7, scope: !3110)
!3121 = !DILocation(line: 1587, column: 9, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3123, file: !1, line: 1587, column: 9)
!3123 = distinct !DILexicalBlock(scope: !3117, file: !1, line: 1586, column: 83)
!3124 = !DILocation(line: 1587, column: 14, scope: !3122)
!3125 = !DILocation(line: 1587, column: 11, scope: !3122)
!3126 = !DILocation(line: 1587, column: 9, scope: !3123)
!3127 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 1589, column: 7, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !1, line: 1588, column: 7)
!3130 = distinct !DILexicalBlock(scope: !3122, file: !1, line: 1587, column: 18)
!3131 = !DILocation(line: 1591, column: 5, scope: !3130)
!3132 = !DILocation(line: 1592, column: 11, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !1, line: 1592, column: 11)
!3134 = distinct !DILexicalBlock(scope: !3122, file: !1, line: 1591, column: 12)
!3135 = !DILocation(line: 1592, column: 26, scope: !3133)
!3136 = !DILocation(line: 1592, column: 11, scope: !3134)
!3137 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 1594, column: 9, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !1, line: 1593, column: 9)
!3140 = distinct !DILexicalBlock(scope: !3133, file: !1, line: 1592, column: 32)
!3141 = !DILocation(line: 1596, column: 7, scope: !3140)
!3142 = !DILocation(line: 1597, column: 24, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3133, file: !1, line: 1596, column: 14)
!3144 = !DILocation(line: 1598, column: 17, scope: !3143)
!3145 = !DILocation(line: 1602, column: 20, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3123, file: !1, line: 1601, column: 5)
!3147 = !DILocation(line: 1603, column: 25, scope: !3146)
!3148 = !DILocation(line: 1603, column: 62, scope: !3146)
!3149 = !DILocation(line: 1603, column: 11, scope: !3146)
!3150 = !DILocation(line: 1603, column: 9, scope: !3146)
!3151 = !DILocation(line: 1605, column: 13, scope: !3123)
!3152 = !DILocation(line: 1605, column: 5, scope: !3123)
!3153 = !DILocation(line: 1608, column: 39, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3155, file: !1, line: 1607, column: 5)
!3155 = distinct !DILexicalBlock(scope: !3117, file: !1, line: 1606, column: 10)
!3156 = !DILocation(line: 1608, column: 53, scope: !3154)
!3157 = !DILocation(line: 1608, column: 15, scope: !3154)
!3158 = !DILocation(line: 1608, column: 13, scope: !3154)
!3159 = !DILocation(line: 1610, column: 13, scope: !3155)
!3160 = !DILocation(line: 1610, column: 5, scope: !3155)
!3161 = !DILocation(line: 1615, column: 1, scope: !35)
!3162 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !36, file: !1, line: 1616, type: !14)
!3163 = !DILocation(line: 1616, column: 38, scope: !36)
!3164 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !36, file: !1, line: 1616, type: !14)
!3165 = !DILocation(line: 1616, column: 57, scope: !36)
!3166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__TargetDeviceObject", scope: !36, file: !1, line: 1617, type: !14)
!3167 = !DILocation(line: 1617, column: 7, scope: !36)
!3168 = !DILocation(line: 1617, column: 45, scope: !36)
!3169 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "event", scope: !36, file: !1, line: 1618, type: !14)
!3170 = !DILocation(line: 1618, column: 7, scope: !36)
!3171 = !DILocation(line: 1618, column: 15, scope: !36)
!3172 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !36, file: !1, line: 1619, type: !14)
!3173 = !DILocation(line: 1619, column: 7, scope: !36)
!3174 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Control", scope: !36, file: !1, line: 1620, type: !14)
!3175 = !DILocation(line: 1620, column: 7, scope: !36)
!3176 = !DILocation(line: 1623, column: 7, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !1, line: 1623, column: 7)
!3178 = distinct !DILexicalBlock(scope: !36, file: !1, line: 1622, column: 3)
!3179 = !DILocation(line: 1623, column: 12, scope: !3177)
!3180 = !DILocation(line: 1623, column: 9, scope: !3177)
!3181 = !DILocation(line: 1623, column: 7, scope: !3178)
!3182 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 1625, column: 5, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !1, line: 1624, column: 5)
!3185 = distinct !DILexicalBlock(scope: !3177, file: !1, line: 1623, column: 16)
!3186 = !DILocation(line: 1627, column: 3, scope: !3185)
!3187 = !DILocation(line: 1628, column: 9, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3189, file: !1, line: 1628, column: 9)
!3189 = distinct !DILexicalBlock(scope: !3177, file: !1, line: 1627, column: 10)
!3190 = !DILocation(line: 1628, column: 24, scope: !3188)
!3191 = !DILocation(line: 1628, column: 9, scope: !3189)
!3192 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !3193)
!3193 = distinct !DILocation(line: 1630, column: 7, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3195, file: !1, line: 1629, column: 7)
!3195 = distinct !DILexicalBlock(scope: !3188, file: !1, line: 1628, column: 30)
!3196 = !DILocation(line: 1632, column: 5, scope: !3195)
!3197 = !DILocation(line: 1633, column: 22, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3188, file: !1, line: 1632, column: 12)
!3199 = !DILocation(line: 1634, column: 15, scope: !3198)
!3200 = !DILocation(line: 1638, column: 18, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3178, file: !1, line: 1637, column: 3)
!3202 = !DILocation(line: 1639, column: 26, scope: !3201)
!3203 = !DILocation(line: 1639, column: 63, scope: !3201)
!3204 = !DILocation(line: 1639, column: 12, scope: !3201)
!3205 = !DILocation(line: 1639, column: 10, scope: !3201)
!3206 = !DILocation(line: 1640, column: 10, scope: !3201)
!3207 = !DILocation(line: 1642, column: 7, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3178, file: !1, line: 1642, column: 7)
!3209 = !DILocation(line: 1642, column: 7, scope: !3178)
!3210 = !DILocation(line: 1644, column: 27, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3212, file: !1, line: 1643, column: 5)
!3212 = distinct !DILexicalBlock(scope: !3208, file: !1, line: 1642, column: 15)
!3213 = !DILocation(line: 1644, column: 34, scope: !3211)
!3214 = !DILocation(line: 1644, column: 45, scope: !3211)
!3215 = !DILocation(line: 1644, column: 5, scope: !3211)
!3216 = !DILocation(line: 1645, column: 14, scope: !3211)
!3217 = !DILocation(line: 1645, column: 12, scope: !3211)
!3218 = !DILocation(line: 1647, column: 3, scope: !3212)
!3219 = !DILocation(line: 1648, column: 11, scope: !3178)
!3220 = !DILocation(line: 1648, column: 3, scope: !3178)
!3221 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DriverObject", arg: 1, scope: !37, file: !1, line: 1651, type: !14)
!3222 = !DILocation(line: 1651, column: 24, scope: !37)
!3223 = !DILocation(line: 1655, column: 3, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !37, file: !1, line: 1654, column: 3)
!3225 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !38, file: !1, line: 1658, type: !14)
!3226 = !DILocation(line: 1658, column: 22, scope: !38)
!3227 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !38, file: !1, line: 1658, type: !14)
!3228 = !DILocation(line: 1658, column: 41, scope: !38)
!3229 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !38, file: !1, line: 1659, type: !14)
!3230 = !DILocation(line: 1659, column: 7, scope: !38)
!3231 = !DILocation(line: 1659, column: 30, scope: !38)
!3232 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !38, file: !1, line: 1660, type: !14)
!3233 = !DILocation(line: 1660, column: 7, scope: !38)
!3234 = !DILocation(line: 1660, column: 50, scope: !38)
!3235 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension__TargetDeviceObject", scope: !38, file: !1, line: 1661, type: !14)
!3236 = !DILocation(line: 1661, column: 7, scope: !38)
!3237 = !DILocation(line: 1661, column: 45, scope: !38)
!3238 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !38, file: !1, line: 1662, type: !14)
!3239 = !DILocation(line: 1662, column: 7, scope: !38)
!3240 = !DILocation(line: 1665, column: 7, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3242, file: !1, line: 1665, column: 7)
!3242 = distinct !DILexicalBlock(scope: !38, file: !1, line: 1664, column: 3)
!3243 = !DILocation(line: 1665, column: 12, scope: !3241)
!3244 = !DILocation(line: 1665, column: 9, scope: !3241)
!3245 = !DILocation(line: 1665, column: 7, scope: !3242)
!3246 = !DILocation(line: 1666, column: 9, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3241, file: !1, line: 1665, column: 16)
!3248 = !DILocation(line: 1666, column: 7, scope: !3247)
!3249 = !DILocation(line: 1667, column: 3, scope: !3247)
!3250 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 1669, column: 5, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3253, file: !1, line: 1668, column: 5)
!3253 = distinct !DILexicalBlock(scope: !3241, file: !1, line: 1667, column: 10)
!3254 = !DILocation(line: 1673, column: 24, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3242, file: !1, line: 1672, column: 3)
!3256 = !DILocation(line: 1674, column: 44, scope: !3255)
!3257 = !DILocation(line: 1675, column: 22, scope: !3255)
!3258 = !DILocation(line: 1675, column: 59, scope: !3255)
!3259 = !DILocation(line: 1675, column: 9, scope: !3255)
!3260 = !DILocation(line: 1675, column: 7, scope: !3255)
!3261 = !DILocation(line: 1677, column: 11, scope: !3242)
!3262 = !DILocation(line: 1677, column: 3, scope: !3242)
!3263 = !DILocation(line: 1684, column: 7, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !39, file: !1, line: 1683, column: 3)
!3265 = !DILocation(line: 1684, column: 5, scope: !3264)
!3266 = !DILocation(line: 1685, column: 13, scope: !3264)
!3267 = !DILocation(line: 1686, column: 20, scope: !3264)
!3268 = !DILocation(line: 1686, column: 18, scope: !3264)
!3269 = !DILocation(line: 1687, column: 23, scope: !3264)
!3270 = !DILocation(line: 1687, column: 21, scope: !3264)
!3271 = !DILocation(line: 1688, column: 20, scope: !3264)
!3272 = !DILocation(line: 1688, column: 18, scope: !3264)
!3273 = !DILocation(line: 1689, column: 14, scope: !3264)
!3274 = !DILocation(line: 1689, column: 12, scope: !3264)
!3275 = !DILocation(line: 1690, column: 12, scope: !3264)
!3276 = !DILocation(line: 1690, column: 10, scope: !3264)
!3277 = !DILocation(line: 1691, column: 3, scope: !3264)
!3278 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pirp__IoStatus__Status", scope: !40, file: !1, line: 1695, type: !14)
!3279 = !DILocation(line: 1695, column: 7, scope: !40)
!3280 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !40, file: !1, line: 1696, type: !14)
!3281 = !DILocation(line: 1696, column: 7, scope: !40)
!3282 = !DILocation(line: 1696, column: 11, scope: !40)
!3283 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !40, file: !1, line: 1697, type: !14)
!3284 = !DILocation(line: 1697, column: 7, scope: !40)
!3285 = !DILocation(line: 1697, column: 16, scope: !40)
!3286 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp", scope: !40, file: !1, line: 1698, type: !14)
!3287 = !DILocation(line: 1698, column: 7, scope: !40)
!3288 = !DILocation(line: 1698, column: 13, scope: !40)
!3289 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "we_should_unload", scope: !40, file: !1, line: 1699, type: !14)
!3290 = !DILocation(line: 1699, column: 7, scope: !40)
!3291 = !DILocation(line: 1699, column: 26, scope: !40)
!3292 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp_choice", scope: !40, file: !1, line: 1700, type: !14)
!3293 = !DILocation(line: 1700, column: 7, scope: !40)
!3294 = !DILocation(line: 1700, column: 20, scope: !40)
!3295 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devobj", scope: !40, file: !1, line: 1701, type: !14)
!3296 = !DILocation(line: 1701, column: 7, scope: !40)
!3297 = !DILocation(line: 1701, column: 16, scope: !40)
!3298 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp9", scope: !40, file: !1, line: 1702, type: !14)
!3299 = !DILocation(line: 1702, column: 7, scope: !40)
!3300 = !DILocation(line: 1707, column: 5, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3302, file: !1, line: 1705, column: 3)
!3302 = distinct !DILexicalBlock(scope: !40, file: !1, line: 1704, column: 3)
!3303 = !DILocation(line: 1708, column: 12, scope: !3301)
!3304 = !DILocation(line: 1709, column: 6, scope: !3301)
!3305 = !DILocation(line: 1710, column: 6, scope: !3301)
!3306 = !DILocation(line: 1711, column: 9, scope: !3301)
!3307 = !DILocation(line: 1712, column: 9, scope: !3301)
!3308 = !DILocation(line: 1713, column: 8, scope: !3301)
!3309 = !DILocation(line: 1714, column: 8, scope: !3301)
!3310 = !DILocation(line: 1715, column: 7, scope: !3301)
!3311 = !DILocation(line: 1716, column: 10, scope: !3301)
!3312 = !DILocation(line: 1717, column: 12, scope: !3301)
!3313 = !DILocation(line: 1718, column: 18, scope: !3301)
!3314 = !DILocation(line: 1719, column: 21, scope: !3301)
!3315 = !DILocation(line: 1720, column: 18, scope: !3301)
!3316 = !DILocation(line: 1721, column: 13, scope: !3301)
!3317 = !DILocation(line: 1722, column: 11, scope: !3301)
!3318 = !DILocation(line: 1723, column: 12, scope: !3301)
!3319 = !DILocation(line: 1724, column: 8, scope: !3301)
!3320 = !DILocation(line: 1725, column: 13, scope: !3301)
!3321 = !DILocation(line: 1726, column: 13, scope: !3301)
!3322 = !DILocation(line: 1727, column: 14, scope: !3301)
!3323 = !DILocation(line: 1728, column: 25, scope: !3301)
!3324 = !DILocation(line: 1731, column: 10, scope: !3301)
!3325 = !DILocation(line: 1731, column: 8, scope: !3301)
!3326 = !DILocation(line: 44, column: 12, scope: !86, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 1732, column: 3, scope: !3301)
!3328 = !DILocation(line: 45, column: 6, scope: !86, inlinedAt: !3327)
!3329 = !DILocation(line: 46, column: 6, scope: !86, inlinedAt: !3327)
!3330 = !DILocation(line: 47, column: 9, scope: !86, inlinedAt: !3327)
!3331 = !DILocation(line: 48, column: 9, scope: !86, inlinedAt: !3327)
!3332 = !DILocation(line: 49, column: 8, scope: !86, inlinedAt: !3327)
!3333 = !DILocation(line: 50, column: 8, scope: !86, inlinedAt: !3327)
!3334 = !DILocation(line: 51, column: 7, scope: !86, inlinedAt: !3327)
!3335 = !DILocation(line: 52, column: 7, scope: !86, inlinedAt: !3327)
!3336 = !DILocation(line: 52, column: 5, scope: !86, inlinedAt: !3327)
!3337 = !DILocation(line: 53, column: 10, scope: !86, inlinedAt: !3327)
!3338 = !DILocation(line: 54, column: 12, scope: !86, inlinedAt: !3327)
!3339 = !DILocation(line: 55, column: 18, scope: !86, inlinedAt: !3327)
!3340 = !DILocation(line: 56, column: 21, scope: !86, inlinedAt: !3327)
!3341 = !DILocation(line: 57, column: 18, scope: !86, inlinedAt: !3327)
!3342 = !DILocation(line: 58, column: 13, scope: !86, inlinedAt: !3327)
!3343 = !DILocation(line: 1734, column: 7, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3302, file: !1, line: 1734, column: 7)
!3345 = !DILocation(line: 1734, column: 14, scope: !3344)
!3346 = !DILocation(line: 1651, column: 24, scope: !37, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 1798, column: 7, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3349, file: !1, line: 1797, column: 7)
!3349 = distinct !DILexicalBlock(scope: !3350, file: !1, line: 1796, column: 27)
!3350 = distinct !DILexicalBlock(scope: !3351, file: !1, line: 1796, column: 9)
!3351 = distinct !DILexicalBlock(scope: !3344, file: !1, line: 1734, column: 20)
!3352 = !DILocation(line: 1734, column: 7, scope: !3302)
!3353 = !DILocation(line: 1735, column: 9, scope: !3351)
!3354 = !DILocation(line: 1735, column: 7, scope: !3351)
!3355 = !DILocation(line: 1736, column: 15, scope: !3351)
!3356 = !DILocation(line: 1737, column: 22, scope: !3351)
!3357 = !DILocation(line: 1737, column: 20, scope: !3351)
!3358 = !DILocation(line: 1738, column: 25, scope: !3351)
!3359 = !DILocation(line: 1738, column: 23, scope: !3351)
!3360 = !DILocation(line: 1739, column: 22, scope: !3351)
!3361 = !DILocation(line: 1739, column: 20, scope: !3351)
!3362 = !DILocation(line: 1740, column: 16, scope: !3351)
!3363 = !DILocation(line: 1740, column: 14, scope: !3351)
!3364 = !DILocation(line: 1741, column: 14, scope: !3351)
!3365 = !DILocation(line: 1741, column: 12, scope: !3351)
!3366 = !DILocation(line: 1742, column: 28, scope: !3351)
!3367 = !DILocation(line: 1743, column: 14, scope: !3351)
!3368 = !DILocation(line: 1744, column: 9, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3351, file: !1, line: 1744, column: 9)
!3370 = !DILocation(line: 1744, column: 20, scope: !3369)
!3371 = !DILocation(line: 1744, column: 9, scope: !3351)
!3372 = !DILocation(line: 1745, column: 30, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3369, file: !1, line: 1744, column: 26)
!3374 = !DILocation(line: 1746, column: 16, scope: !3373)
!3375 = !DILocation(line: 1747, column: 5, scope: !3373)
!3376 = !DILocation(line: 1684, column: 7, scope: !3264, inlinedAt: !3377)
!3377 = distinct !DILocation(line: 1749, column: 5, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3351, file: !1, line: 1748, column: 5)
!3379 = !DILocation(line: 1684, column: 5, scope: !3264, inlinedAt: !3377)
!3380 = !DILocation(line: 1685, column: 13, scope: !3264, inlinedAt: !3377)
!3381 = !DILocation(line: 1686, column: 20, scope: !3264, inlinedAt: !3377)
!3382 = !DILocation(line: 1686, column: 18, scope: !3264, inlinedAt: !3377)
!3383 = !DILocation(line: 1687, column: 23, scope: !3264, inlinedAt: !3377)
!3384 = !DILocation(line: 1687, column: 21, scope: !3264, inlinedAt: !3377)
!3385 = !DILocation(line: 1688, column: 20, scope: !3264, inlinedAt: !3377)
!3386 = !DILocation(line: 1688, column: 18, scope: !3264, inlinedAt: !3377)
!3387 = !DILocation(line: 1689, column: 14, scope: !3264, inlinedAt: !3377)
!3388 = !DILocation(line: 1689, column: 12, scope: !3264, inlinedAt: !3377)
!3389 = !DILocation(line: 1690, column: 12, scope: !3264, inlinedAt: !3377)
!3390 = !DILocation(line: 1690, column: 10, scope: !3264, inlinedAt: !3377)
!3391 = !DILocation(line: 1752, column: 9, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !1, line: 1752, column: 9)
!3393 = distinct !DILexicalBlock(scope: !3351, file: !1, line: 1751, column: 5)
!3394 = !DILocation(line: 1752, column: 16, scope: !3392)
!3395 = !DILocation(line: 1752, column: 9, scope: !3393)
!3396 = !DILocation(line: 1753, column: 7, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3392, file: !1, line: 1752, column: 21)
!3398 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_1", scope: !3351, file: !1, line: 1756, type: !14)
!3399 = !DILocation(line: 1756, column: 9, scope: !3351)
!3400 = !DILocation(line: 1757, column: 17, scope: !3351)
!3401 = !DILocation(line: 1757, column: 15, scope: !3351)
!3402 = !DILocation(line: 1758, column: 9, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3351, file: !1, line: 1758, column: 9)
!3404 = !DILocation(line: 1758, column: 19, scope: !3403)
!3405 = !DILocation(line: 1758, column: 9, scope: !3351)
!3406 = !DILocation(line: 1759, column: 7, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3403, file: !1, line: 1758, column: 25)
!3408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_2", scope: !3409, file: !1, line: 1761, type: !14)
!3409 = distinct !DILexicalBlock(scope: !3403, file: !1, line: 1760, column: 12)
!3410 = !DILocation(line: 1761, column: 11, scope: !3409)
!3411 = !DILocation(line: 1762, column: 19, scope: !3409)
!3412 = !DILocation(line: 1762, column: 17, scope: !3409)
!3413 = !DILocation(line: 1763, column: 11, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3409, file: !1, line: 1763, column: 11)
!3415 = !DILocation(line: 1763, column: 21, scope: !3414)
!3416 = !DILocation(line: 1763, column: 11, scope: !3409)
!3417 = !DILocation(line: 1764, column: 9, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3414, file: !1, line: 1763, column: 27)
!3419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_3", scope: !3420, file: !1, line: 1766, type: !14)
!3420 = distinct !DILexicalBlock(scope: !3414, file: !1, line: 1765, column: 14)
!3421 = !DILocation(line: 1766, column: 13, scope: !3420)
!3422 = !DILocation(line: 1767, column: 21, scope: !3420)
!3423 = !DILocation(line: 1767, column: 19, scope: !3420)
!3424 = !DILocation(line: 1768, column: 13, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3420, file: !1, line: 1768, column: 13)
!3426 = !DILocation(line: 1768, column: 23, scope: !3425)
!3427 = !DILocation(line: 1768, column: 13, scope: !3420)
!3428 = !DILocation(line: 1769, column: 11, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3425, file: !1, line: 1768, column: 29)
!3430 = !DILocation(line: 1771, column: 11, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3425, file: !1, line: 1770, column: 16)
!3432 = !DILocation(line: 1772, column: 15, scope: !3431)
!3433 = !DILocation(line: 1772, column: 18, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3431, file: !1, line: 1772, column: 15)
!3435 = !DILocation(line: 1775, column: 43, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3437, file: !1, line: 1774, column: 13)
!3437 = distinct !DILexicalBlock(scope: !3434, file: !1, line: 1772, column: 18)
!3438 = !DILocation(line: 1775, column: 51, scope: !3436)
!3439 = !DILocation(line: 1775, column: 22, scope: !3436)
!3440 = !DILocation(line: 1775, column: 20, scope: !3436)
!3441 = !DILocation(line: 1777, column: 13, scope: !3437)
!3442 = !DILocation(line: 1780, column: 33, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3437, file: !1, line: 1779, column: 13)
!3444 = !DILocation(line: 1780, column: 41, scope: !3443)
!3445 = !DILocation(line: 1780, column: 22, scope: !3443)
!3446 = !DILocation(line: 1780, column: 20, scope: !3443)
!3447 = !DILocation(line: 1782, column: 13, scope: !3437)
!3448 = !DILocation(line: 1785, column: 35, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3437, file: !1, line: 1784, column: 13)
!3450 = !DILocation(line: 1785, column: 43, scope: !3449)
!3451 = !DILocation(line: 1785, column: 22, scope: !3449)
!3452 = !DILocation(line: 1785, column: 20, scope: !3449)
!3453 = !DILocation(line: 1787, column: 13, scope: !3437)
!3454 = !DILocation(line: 1789, column: 13, scope: !3437)
!3455 = !DILocation(line: 1790, column: 18, scope: !3434)
!3456 = !DILocation(line: 1796, column: 9, scope: !3350)
!3457 = !DILocation(line: 1796, column: 9, scope: !3351)
!3458 = !DILocation(line: 1798, column: 21, scope: !3348)
!3459 = !DILocation(line: 1798, column: 7, scope: !3348)
!3460 = !DILocation(line: 1655, column: 3, scope: !3224, inlinedAt: !3347)
!3461 = !DILocation(line: 1800, column: 5, scope: !3349)
!3462 = !DILocation(line: 1801, column: 3, scope: !3351)
!3463 = !DILocation(line: 1802, column: 7, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3302, file: !1, line: 1802, column: 7)
!3465 = !DILocation(line: 1802, column: 14, scope: !3464)
!3466 = !DILocation(line: 1802, column: 7, scope: !3302)
!3467 = !DILocation(line: 1803, column: 9, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3469, file: !1, line: 1803, column: 9)
!3469 = distinct !DILexicalBlock(scope: !3464, file: !1, line: 1802, column: 20)
!3470 = !DILocation(line: 1803, column: 14, scope: !3468)
!3471 = !DILocation(line: 1803, column: 11, scope: !3468)
!3472 = !DILocation(line: 1803, column: 9, scope: !3469)
!3473 = !DILocation(line: 1804, column: 11, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3468, file: !1, line: 1803, column: 18)
!3475 = !DILocation(line: 1804, column: 9, scope: !3474)
!3476 = !DILocation(line: 1805, column: 5, scope: !3474)
!3477 = !DILocation(line: 1806, column: 7, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3468, file: !1, line: 1805, column: 12)
!3479 = !DILocation(line: 1808, column: 3, scope: !3469)
!3480 = !DILocation(line: 1808, column: 10, scope: !3464)
!3481 = !DILocation(line: 1810, column: 9, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3483, file: !1, line: 1810, column: 9)
!3483 = distinct !DILexicalBlock(scope: !3464, file: !1, line: 1808, column: 10)
!3484 = !DILocation(line: 1810, column: 16, scope: !3482)
!3485 = !DILocation(line: 1810, column: 9, scope: !3483)
!3486 = !DILocation(line: 1811, column: 11, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3488, file: !1, line: 1811, column: 11)
!3488 = distinct !DILexicalBlock(scope: !3482, file: !1, line: 1810, column: 22)
!3489 = !DILocation(line: 1811, column: 16, scope: !3487)
!3490 = !DILocation(line: 1811, column: 13, scope: !3487)
!3491 = !DILocation(line: 1811, column: 11, scope: !3488)
!3492 = !DILocation(line: 1812, column: 13, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3487, file: !1, line: 1811, column: 22)
!3494 = !DILocation(line: 1812, column: 11, scope: !3493)
!3495 = !DILocation(line: 1813, column: 7, scope: !3493)
!3496 = !DILocation(line: 1814, column: 9, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3487, file: !1, line: 1813, column: 14)
!3498 = !DILocation(line: 1816, column: 5, scope: !3488)
!3499 = !DILocation(line: 1816, column: 12, scope: !3482)
!3500 = !DILocation(line: 1818, column: 11, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3502, file: !1, line: 1818, column: 11)
!3502 = distinct !DILexicalBlock(scope: !3482, file: !1, line: 1816, column: 12)
!3503 = !DILocation(line: 1818, column: 16, scope: !3501)
!3504 = !DILocation(line: 1818, column: 13, scope: !3501)
!3505 = !DILocation(line: 1818, column: 11, scope: !3502)
!3506 = !DILocation(line: 1819, column: 13, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3508, file: !1, line: 1819, column: 13)
!3508 = distinct !DILexicalBlock(scope: !3501, file: !1, line: 1818, column: 26)
!3509 = !DILocation(line: 1819, column: 20, scope: !3507)
!3510 = !DILocation(line: 1819, column: 13, scope: !3508)
!3511 = !DILocation(line: 1820, column: 15, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3513, file: !1, line: 1820, column: 15)
!3513 = distinct !DILexicalBlock(scope: !3507, file: !1, line: 1819, column: 27)
!3514 = !DILocation(line: 1820, column: 20, scope: !3512)
!3515 = !DILocation(line: 1820, column: 17, scope: !3512)
!3516 = !DILocation(line: 1820, column: 15, scope: !3513)
!3517 = !DILocation(line: 1821, column: 17, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3519, file: !1, line: 1821, column: 17)
!3519 = distinct !DILexicalBlock(scope: !3512, file: !1, line: 1820, column: 27)
!3520 = !DILocation(line: 1821, column: 22, scope: !3518)
!3521 = !DILocation(line: 1821, column: 19, scope: !3518)
!3522 = !DILocation(line: 1821, column: 17, scope: !3519)
!3523 = !DILocation(line: 1822, column: 19, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3525, file: !1, line: 1822, column: 19)
!3525 = distinct !DILexicalBlock(scope: !3518, file: !1, line: 1821, column: 27)
!3526 = !DILocation(line: 1822, column: 24, scope: !3524)
!3527 = !DILocation(line: 1822, column: 21, scope: !3524)
!3528 = !DILocation(line: 1822, column: 19, scope: !3525)
!3529 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !3530)
!3530 = distinct !DILocation(line: 1824, column: 17, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !1, line: 1823, column: 17)
!3532 = distinct !DILexicalBlock(scope: !3524, file: !1, line: 1822, column: 28)
!3533 = !DILocation(line: 1826, column: 15, scope: !3532)
!3534 = !DILocation(line: 1827, column: 17, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3524, file: !1, line: 1826, column: 22)
!3536 = !DILocation(line: 1829, column: 13, scope: !3525)
!3537 = !DILocation(line: 1830, column: 15, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3518, file: !1, line: 1829, column: 20)
!3539 = !DILocation(line: 1832, column: 11, scope: !3519)
!3540 = !DILocation(line: 1832, column: 18, scope: !3512)
!3541 = !DILocation(line: 1834, column: 17, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3543, file: !1, line: 1834, column: 17)
!3543 = distinct !DILexicalBlock(scope: !3512, file: !1, line: 1832, column: 18)
!3544 = !DILocation(line: 1834, column: 24, scope: !3542)
!3545 = !DILocation(line: 1834, column: 17, scope: !3543)
!3546 = !DILocation(line: 1835, column: 19, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !1, line: 1835, column: 19)
!3548 = distinct !DILexicalBlock(scope: !3542, file: !1, line: 1834, column: 30)
!3549 = !DILocation(line: 1835, column: 24, scope: !3547)
!3550 = !DILocation(line: 1835, column: 21, scope: !3547)
!3551 = !DILocation(line: 1835, column: 19, scope: !3548)
!3552 = !DILocation(line: 1836, column: 21, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3554, file: !1, line: 1836, column: 21)
!3554 = distinct !DILexicalBlock(scope: !3547, file: !1, line: 1835, column: 28)
!3555 = !DILocation(line: 1836, column: 28, scope: !3553)
!3556 = !DILocation(line: 1836, column: 21, scope: !3554)
!3557 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !3558)
!3558 = distinct !DILocation(line: 1837, column: 19, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3553, file: !1, line: 1836, column: 36)
!3560 = !DILocation(line: 1838, column: 17, scope: !3559)
!3561 = !DILocation(line: 1839, column: 15, scope: !3554)
!3562 = !DILocation(line: 1840, column: 21, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3564, file: !1, line: 1840, column: 21)
!3564 = distinct !DILexicalBlock(scope: !3547, file: !1, line: 1839, column: 22)
!3565 = !DILocation(line: 1840, column: 31, scope: !3563)
!3566 = !DILocation(line: 1840, column: 28, scope: !3563)
!3567 = !DILocation(line: 1840, column: 21, scope: !3564)
!3568 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 1841, column: 19, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3563, file: !1, line: 1840, column: 50)
!3571 = !DILocation(line: 1842, column: 17, scope: !3570)
!3572 = !DILocation(line: 1844, column: 13, scope: !3548)
!3573 = !DILocation(line: 1846, column: 20, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3575, file: !1, line: 1846, column: 20)
!3575 = distinct !DILexicalBlock(scope: !3542, file: !1, line: 1845, column: 18)
!3576 = !DILocation(line: 1846, column: 27, scope: !3574)
!3577 = !DILocation(line: 1846, column: 20, scope: !3575)
!3578 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 1848, column: 17, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3581, file: !1, line: 1847, column: 17)
!3581 = distinct !DILexicalBlock(scope: !3574, file: !1, line: 1846, column: 35)
!3582 = !DILocation(line: 1850, column: 15, scope: !3581)
!3583 = !DILocation(line: 1855, column: 9, scope: !3513)
!3584 = !DILocation(line: 1856, column: 7, scope: !3508)
!3585 = !DILocation(line: 1859, column: 11, scope: !3302)
!3586 = !DILocation(line: 1859, column: 3, scope: !3302)
!3587 = !DILocation(line: 1861, column: 1, scope: !40)
!3588 = !DILocation(line: 1866, column: 7, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3590, file: !1, line: 1866, column: 7)
!3590 = distinct !DILexicalBlock(scope: !43, file: !1, line: 1865, column: 3)
!3591 = !DILocation(line: 1866, column: 12, scope: !3589)
!3592 = !DILocation(line: 1866, column: 9, scope: !3589)
!3593 = !DILocation(line: 1866, column: 7, scope: !3590)
!3594 = !DILocation(line: 1867, column: 9, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3589, file: !1, line: 1866, column: 16)
!3596 = !DILocation(line: 1867, column: 7, scope: !3595)
!3597 = !DILocation(line: 1868, column: 3, scope: !3595)
!3598 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !3599)
!3599 = distinct !DILocation(line: 1870, column: 5, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3601, file: !1, line: 1869, column: 5)
!3601 = distinct !DILexicalBlock(scope: !3589, file: !1, line: 1868, column: 10)
!3602 = !DILocation(line: 1873, column: 3, scope: !3590)
!3603 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !44, file: !1, line: 1876, type: !14)
!3604 = !DILocation(line: 1876, column: 23, scope: !44)
!3605 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !44, file: !1, line: 1876, type: !14)
!3606 = !DILocation(line: 1876, column: 42, scope: !44)
!3607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__PendingReturned", scope: !44, file: !1, line: 1877, type: !14)
!3608 = !DILocation(line: 1877, column: 7, scope: !44)
!3609 = !DILocation(line: 1877, column: 30, scope: !44)
!3610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "returnVal2", scope: !44, file: !1, line: 1878, type: !14)
!3611 = !DILocation(line: 1878, column: 7, scope: !44)
!3612 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compRetStatus", scope: !44, file: !1, line: 1879, type: !14)
!3613 = !DILocation(line: 1879, column: 7, scope: !44)
!3614 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lcontext", scope: !44, file: !1, line: 1880, type: !14)
!3615 = !DILocation(line: 1880, column: 7, scope: !44)
!3616 = !DILocation(line: 1880, column: 18, scope: !44)
!3617 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp8", scope: !44, file: !1, line: 1881, type: !5)
!3618 = !DILocation(line: 1881, column: 17, scope: !44)
!3619 = !DILocation(line: 1884, column: 7, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !1, line: 1884, column: 7)
!3621 = distinct !DILexicalBlock(scope: !44, file: !1, line: 1883, column: 3)
!3622 = !DILocation(line: 1975, column: 20, scope: !48, inlinedAt: !3623)
!3623 = distinct !DILocation(line: 113, column: 3, scope: !193, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 1892, column: 25, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3626, file: !1, line: 1891, column: 9)
!3626 = distinct !DILexicalBlock(scope: !3627, file: !1, line: 1890, column: 25)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !1, line: 1890, column: 11)
!3628 = distinct !DILexicalBlock(scope: !3629, file: !1, line: 1889, column: 12)
!3629 = distinct !DILexicalBlock(scope: !3630, file: !1, line: 1885, column: 9)
!3630 = distinct !DILexicalBlock(scope: !3620, file: !1, line: 1884, column: 23)
!3631 = !DILocation(line: 1975, column: 32, scope: !48, inlinedAt: !3623)
!3632 = !DILocation(line: 1975, column: 48, scope: !48, inlinedAt: !3623)
!3633 = !DILocation(line: 1976, column: 7, scope: !48, inlinedAt: !3623)
!3634 = !DILocation(line: 108, column: 33, scope: !15, inlinedAt: !3624)
!3635 = !DILocation(line: 108, column: 52, scope: !15, inlinedAt: !3624)
!3636 = !DILocation(line: 108, column: 62, scope: !15, inlinedAt: !3624)
!3637 = !DILocation(line: 1884, column: 7, scope: !3621)
!3638 = !DILocation(line: 1885, column: 9, scope: !3629)
!3639 = !DILocation(line: 1885, column: 17, scope: !3629)
!3640 = !DILocation(line: 1885, column: 9, scope: !3630)
!3641 = !DILocation(line: 1887, column: 39, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3643, file: !1, line: 1886, column: 7)
!3643 = distinct !DILexicalBlock(scope: !3629, file: !1, line: 1885, column: 23)
!3644 = !DILocation(line: 1887, column: 53, scope: !3642)
!3645 = !DILocation(line: 1887, column: 58, scope: !3642)
!3646 = !DILocation(line: 1887, column: 23, scope: !3642)
!3647 = !DILocation(line: 1887, column: 21, scope: !3642)
!3648 = !DILocation(line: 1889, column: 5, scope: !3643)
!3649 = !DILocation(line: 1890, column: 11, scope: !3627)
!3650 = !DILocation(line: 1890, column: 19, scope: !3627)
!3651 = !DILocation(line: 1890, column: 11, scope: !3628)
!3652 = !DILocation(line: 1892, column: 49, scope: !3625)
!3653 = !DILocation(line: 1892, column: 63, scope: !3625)
!3654 = !DILocation(line: 1892, column: 68, scope: !3625)
!3655 = !DILocation(line: 1892, column: 25, scope: !3625)
!3656 = !DILocation(line: 113, column: 14, scope: !193, inlinedAt: !3624)
!3657 = !DILocation(line: 113, column: 3, scope: !193, inlinedAt: !3624)
!3658 = !DILocation(line: 1976, column: 11, scope: !48, inlinedAt: !3623)
!3659 = !DILocation(line: 1979, column: 18, scope: !200, inlinedAt: !3623)
!3660 = !DILocation(line: 1980, column: 11, scope: !200, inlinedAt: !3623)
!3661 = !DILocation(line: 1980, column: 3, scope: !200, inlinedAt: !3623)
!3662 = !DILocation(line: 115, column: 3, scope: !194, inlinedAt: !3624)
!3663 = !DILocation(line: 1892, column: 23, scope: !3625)
!3664 = !DILocation(line: 1894, column: 7, scope: !3626)
!3665 = !DILocation(line: 1897, column: 34, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3630, file: !1, line: 1896, column: 5)
!3667 = !DILocation(line: 1897, column: 18, scope: !3666)
!3668 = !DILocation(line: 1897, column: 16, scope: !3666)
!3669 = !DILocation(line: 1898, column: 9, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3666, file: !1, line: 1898, column: 9)
!3671 = !DILocation(line: 1898, column: 20, scope: !3670)
!3672 = !DILocation(line: 1898, column: 9, scope: !3666)
!3673 = !DILocation(line: 1866, column: 7, scope: !3589, inlinedAt: !3674)
!3674 = distinct !DILocation(line: 1900, column: 7, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3676, file: !1, line: 1899, column: 7)
!3676 = distinct !DILexicalBlock(scope: !3670, file: !1, line: 1898, column: 36)
!3677 = !DILocation(line: 1866, column: 12, scope: !3589, inlinedAt: !3674)
!3678 = !DILocation(line: 1866, column: 9, scope: !3589, inlinedAt: !3674)
!3679 = !DILocation(line: 1866, column: 7, scope: !3590, inlinedAt: !3674)
!3680 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 1870, column: 5, scope: !3600, inlinedAt: !3674)
!3682 = !DILocation(line: 1867, column: 9, scope: !3595, inlinedAt: !3674)
!3683 = !DILocation(line: 1867, column: 7, scope: !3595, inlinedAt: !3674)
!3684 = !DILocation(line: 1902, column: 5, scope: !3676)
!3685 = !DILocation(line: 1904, column: 3, scope: !3630)
!3686 = !DILocation(line: 1905, column: 7, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3621, file: !1, line: 1905, column: 7)
!3688 = !DILocation(line: 1905, column: 7, scope: !3621)
!3689 = !DILocation(line: 1906, column: 16, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3687, file: !1, line: 1905, column: 29)
!3691 = !DILocation(line: 1907, column: 3, scope: !3690)
!3692 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_4", scope: !3693, file: !1, line: 1908, type: !14)
!3693 = distinct !DILexicalBlock(scope: !3687, file: !1, line: 1907, column: 10)
!3694 = !DILocation(line: 1908, column: 9, scope: !3693)
!3695 = !DILocation(line: 1909, column: 17, scope: !3693)
!3696 = !DILocation(line: 1909, column: 15, scope: !3693)
!3697 = !DILocation(line: 1910, column: 9, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3693, file: !1, line: 1910, column: 9)
!3699 = !DILocation(line: 1910, column: 19, scope: !3698)
!3700 = !DILocation(line: 1910, column: 9, scope: !3693)
!3701 = !DILocation(line: 1911, column: 7, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3698, file: !1, line: 1910, column: 25)
!3703 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_5", scope: !3704, file: !1, line: 1913, type: !14)
!3704 = distinct !DILexicalBlock(scope: !3698, file: !1, line: 1912, column: 12)
!3705 = !DILocation(line: 1913, column: 11, scope: !3704)
!3706 = !DILocation(line: 1914, column: 19, scope: !3704)
!3707 = !DILocation(line: 1914, column: 17, scope: !3704)
!3708 = !DILocation(line: 1915, column: 11, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3704, file: !1, line: 1915, column: 11)
!3710 = !DILocation(line: 1915, column: 21, scope: !3709)
!3711 = !DILocation(line: 1915, column: 11, scope: !3704)
!3712 = !DILocation(line: 1916, column: 9, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3709, file: !1, line: 1915, column: 27)
!3714 = !DILocation(line: 1918, column: 9, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3709, file: !1, line: 1917, column: 14)
!3716 = !DILocation(line: 1919, column: 13, scope: !3715)
!3717 = !DILocation(line: 1919, column: 16, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3715, file: !1, line: 1919, column: 13)
!3719 = !DILocation(line: 1921, column: 22, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3718, file: !1, line: 1919, column: 16)
!3721 = !DILocation(line: 1922, column: 11, scope: !3720)
!3722 = !DILocation(line: 1924, column: 22, scope: !3720)
!3723 = !DILocation(line: 1925, column: 11, scope: !3720)
!3724 = !DILocation(line: 1927, column: 22, scope: !3720)
!3725 = !DILocation(line: 1928, column: 11, scope: !3720)
!3726 = !DILocation(line: 1929, column: 16, scope: !3718)
!3727 = !DILocation(line: 1935, column: 7, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3621, file: !1, line: 1935, column: 7)
!3729 = !DILocation(line: 1935, column: 12, scope: !3728)
!3730 = !DILocation(line: 1935, column: 9, scope: !3728)
!3731 = !DILocation(line: 1935, column: 7, scope: !3621)
!3732 = !DILocation(line: 1936, column: 9, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3728, file: !1, line: 1935, column: 16)
!3734 = !DILocation(line: 1936, column: 7, scope: !3733)
!3735 = !DILocation(line: 1937, column: 25, scope: !3733)
!3736 = !DILocation(line: 1937, column: 23, scope: !3733)
!3737 = !DILocation(line: 1938, column: 3, scope: !3733)
!3738 = !DILocation(line: 1939, column: 9, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3740, file: !1, line: 1939, column: 9)
!3740 = distinct !DILexicalBlock(scope: !3728, file: !1, line: 1938, column: 10)
!3741 = !DILocation(line: 1939, column: 14, scope: !3739)
!3742 = !DILocation(line: 1939, column: 11, scope: !3739)
!3743 = !DILocation(line: 1939, column: 9, scope: !3740)
!3744 = !DILocation(line: 1940, column: 11, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3746, file: !1, line: 1940, column: 11)
!3746 = distinct !DILexicalBlock(scope: !3739, file: !1, line: 1939, column: 20)
!3747 = !DILocation(line: 1940, column: 22, scope: !3745)
!3748 = !DILocation(line: 1940, column: 11, scope: !3746)
!3749 = !DILocation(line: 1941, column: 13, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3745, file: !1, line: 1940, column: 30)
!3751 = !DILocation(line: 1941, column: 11, scope: !3750)
!3752 = !DILocation(line: 1942, column: 29, scope: !3750)
!3753 = !DILocation(line: 1942, column: 27, scope: !3750)
!3754 = !DILocation(line: 1943, column: 7, scope: !3750)
!3755 = !DILocation(line: 1944, column: 13, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3745, file: !1, line: 1943, column: 14)
!3757 = !DILocation(line: 1944, column: 11, scope: !3756)
!3758 = !DILocation(line: 1945, column: 29, scope: !3756)
!3759 = !DILocation(line: 1945, column: 27, scope: !3756)
!3760 = !DILocation(line: 1947, column: 5, scope: !3746)
!3761 = !DILocation(line: 1948, column: 11, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3763, file: !1, line: 1948, column: 11)
!3763 = distinct !DILexicalBlock(scope: !3739, file: !1, line: 1947, column: 12)
!3764 = !DILocation(line: 1948, column: 16, scope: !3762)
!3765 = !DILocation(line: 1948, column: 13, scope: !3762)
!3766 = !DILocation(line: 1948, column: 11, scope: !3763)
!3767 = !DILocation(line: 1949, column: 13, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3762, file: !1, line: 1948, column: 23)
!3769 = !DILocation(line: 1949, column: 11, scope: !3768)
!3770 = !DILocation(line: 1950, column: 29, scope: !3768)
!3771 = !DILocation(line: 1950, column: 27, scope: !3768)
!3772 = !DILocation(line: 1951, column: 7, scope: !3768)
!3773 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !3774)
!3774 = distinct !DILocation(line: 1953, column: 9, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3776, file: !1, line: 1952, column: 9)
!3776 = distinct !DILexicalBlock(scope: !3762, file: !1, line: 1951, column: 14)
!3777 = !DILocation(line: 1958, column: 11, scope: !3621)
!3778 = !DILocation(line: 1958, column: 3, scope: !3621)
!3779 = !DILocation(line: 1975, column: 20, scope: !48)
!3780 = !DILocation(line: 1975, column: 32, scope: !48)
!3781 = !DILocation(line: 1975, column: 48, scope: !48)
!3782 = !DILocation(line: 1976, column: 7, scope: !48)
!3783 = !DILocation(line: 1976, column: 11, scope: !48)
!3784 = !DILocation(line: 1979, column: 18, scope: !200)
!3785 = !DILocation(line: 1980, column: 11, scope: !200)
!3786 = !DILocation(line: 1980, column: 3, scope: !200)
!3787 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Object", arg: 1, scope: !49, file: !1, line: 1983, type: !14)
!3788 = !DILocation(line: 1983, column: 31, scope: !49)
!3789 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitReason", arg: 2, scope: !49, file: !1, line: 1983, type: !14)
!3790 = !DILocation(line: 1983, column: 44, scope: !49)
!3791 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitMode", arg: 3, scope: !49, file: !1, line: 1983, type: !14)
!3792 = !DILocation(line: 1983, column: 61, scope: !49)
!3793 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Alertable", arg: 4, scope: !49, file: !1, line: 1983, type: !14)
!3794 = !DILocation(line: 1983, column: 76, scope: !49)
!3795 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Timeout", arg: 5, scope: !49, file: !1, line: 1984, type: !14)
!3796 = !DILocation(line: 1984, column: 31, scope: !49)
!3797 = !DILocation(line: 1988, column: 7, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3799, file: !1, line: 1988, column: 7)
!3799 = distinct !DILexicalBlock(scope: !49, file: !1, line: 1987, column: 3)
!3800 = !DILocation(line: 1988, column: 12, scope: !3798)
!3801 = !DILocation(line: 1988, column: 9, scope: !3798)
!3802 = !DILocation(line: 1988, column: 7, scope: !3799)
!3803 = !DILocation(line: 1989, column: 9, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3805, file: !1, line: 1989, column: 9)
!3805 = distinct !DILexicalBlock(scope: !3798, file: !1, line: 1988, column: 18)
!3806 = !DILocation(line: 1989, column: 24, scope: !3804)
!3807 = !DILocation(line: 1989, column: 9, scope: !3805)
!3808 = !DILocation(line: 1990, column: 11, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3804, file: !1, line: 1989, column: 30)
!3810 = !DILocation(line: 1990, column: 9, scope: !3809)
!3811 = !DILocation(line: 1991, column: 22, scope: !3809)
!3812 = !DILocation(line: 1992, column: 5, scope: !3809)
!3813 = !DILocation(line: 1993, column: 7, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3804, file: !1, line: 1992, column: 12)
!3815 = !DILocation(line: 1995, column: 3, scope: !3805)
!3816 = !DILocation(line: 1995, column: 10, scope: !3798)
!3817 = !DILocation(line: 1997, column: 9, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3819, file: !1, line: 1997, column: 9)
!3819 = distinct !DILexicalBlock(scope: !3798, file: !1, line: 1995, column: 10)
!3820 = !DILocation(line: 1997, column: 19, scope: !3818)
!3821 = !DILocation(line: 1997, column: 9, scope: !3819)
!3822 = !DILocation(line: 1998, column: 11, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3818, file: !1, line: 1997, column: 25)
!3824 = !DILocation(line: 1998, column: 9, scope: !3823)
!3825 = !DILocation(line: 1999, column: 17, scope: !3823)
!3826 = !DILocation(line: 2000, column: 5, scope: !3823)
!3827 = !DILocation(line: 2001, column: 11, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3829, file: !1, line: 2001, column: 11)
!3829 = distinct !DILexicalBlock(scope: !3818, file: !1, line: 2000, column: 12)
!3830 = !DILocation(line: 2001, column: 16, scope: !3828)
!3831 = !DILocation(line: 2001, column: 13, scope: !3828)
!3832 = !DILocation(line: 2001, column: 11, scope: !3829)
!3833 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 2003, column: 9, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3836, file: !1, line: 2002, column: 9)
!3836 = distinct !DILexicalBlock(scope: !3828, file: !1, line: 2001, column: 22)
!3837 = !DILocation(line: 2005, column: 7, scope: !3836)
!3838 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_6", scope: !3799, file: !1, line: 2008, type: !14)
!3839 = !DILocation(line: 2008, column: 7, scope: !3799)
!3840 = !DILocation(line: 2009, column: 15, scope: !3799)
!3841 = !DILocation(line: 2009, column: 13, scope: !3799)
!3842 = !DILocation(line: 2010, column: 7, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3799, file: !1, line: 2010, column: 7)
!3844 = !DILocation(line: 2010, column: 17, scope: !3843)
!3845 = !DILocation(line: 2010, column: 7, scope: !3799)
!3846 = !DILocation(line: 2011, column: 5, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3843, file: !1, line: 2010, column: 23)
!3848 = !DILocation(line: 2013, column: 5, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3843, file: !1, line: 2012, column: 10)
!3850 = !DILocation(line: 2014, column: 9, scope: !3849)
!3851 = !DILocation(line: 2014, column: 12, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3849, file: !1, line: 2014, column: 9)
!3853 = !DILocation(line: 2016, column: 7, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3852, file: !1, line: 2014, column: 12)
!3855 = !DILocation(line: 2018, column: 7, scope: !3854)
!3856 = !DILocation(line: 2024, column: 1, scope: !49)
!3857 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !52, file: !1, line: 2025, type: !14)
!3858 = !DILocation(line: 2025, column: 22, scope: !52)
!3859 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !52, file: !1, line: 2025, type: !14)
!3860 = !DILocation(line: 2025, column: 41, scope: !52)
!3861 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compRetStatus", scope: !52, file: !1, line: 2027, type: !14)
!3862 = !DILocation(line: 2027, column: 7, scope: !52)
!3863 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "returnVal", scope: !52, file: !1, line: 2028, type: !14)
!3864 = !DILocation(line: 2028, column: 7, scope: !52)
!3865 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lcontext", scope: !52, file: !1, line: 2029, type: !14)
!3866 = !DILocation(line: 2029, column: 7, scope: !52)
!3867 = !DILocation(line: 2029, column: 18, scope: !52)
!3868 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp7", scope: !52, file: !1, line: 2030, type: !5)
!3869 = !DILocation(line: 2030, column: 17, scope: !52)
!3870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp8", scope: !52, file: !1, line: 2031, type: !4)
!3871 = !DILocation(line: 2031, column: 8, scope: !52)
!3872 = !DILocation(line: 2034, column: 7, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3874, file: !1, line: 2034, column: 7)
!3874 = distinct !DILexicalBlock(scope: !52, file: !1, line: 2033, column: 3)
!3875 = !DILocation(line: 1975, column: 20, scope: !48, inlinedAt: !3876)
!3876 = distinct !DILocation(line: 113, column: 3, scope: !193, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 2042, column: 25, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3879, file: !1, line: 2041, column: 9)
!3879 = distinct !DILexicalBlock(scope: !3880, file: !1, line: 2040, column: 25)
!3880 = distinct !DILexicalBlock(scope: !3881, file: !1, line: 2040, column: 11)
!3881 = distinct !DILexicalBlock(scope: !3882, file: !1, line: 2039, column: 12)
!3882 = distinct !DILexicalBlock(scope: !3883, file: !1, line: 2035, column: 9)
!3883 = distinct !DILexicalBlock(scope: !3873, file: !1, line: 2034, column: 23)
!3884 = !DILocation(line: 1975, column: 32, scope: !48, inlinedAt: !3876)
!3885 = !DILocation(line: 1975, column: 48, scope: !48, inlinedAt: !3876)
!3886 = !DILocation(line: 1976, column: 7, scope: !48, inlinedAt: !3876)
!3887 = !DILocation(line: 108, column: 33, scope: !15, inlinedAt: !3877)
!3888 = !DILocation(line: 108, column: 52, scope: !15, inlinedAt: !3877)
!3889 = !DILocation(line: 108, column: 62, scope: !15, inlinedAt: !3877)
!3890 = !DILocation(line: 2034, column: 7, scope: !3874)
!3891 = !DILocation(line: 2035, column: 9, scope: !3882)
!3892 = !DILocation(line: 2035, column: 17, scope: !3882)
!3893 = !DILocation(line: 2035, column: 9, scope: !3883)
!3894 = !DILocation(line: 2037, column: 39, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3896, file: !1, line: 2036, column: 7)
!3896 = distinct !DILexicalBlock(scope: !3882, file: !1, line: 2035, column: 23)
!3897 = !DILocation(line: 2037, column: 53, scope: !3895)
!3898 = !DILocation(line: 2037, column: 58, scope: !3895)
!3899 = !DILocation(line: 2037, column: 23, scope: !3895)
!3900 = !DILocation(line: 2037, column: 21, scope: !3895)
!3901 = !DILocation(line: 2039, column: 5, scope: !3896)
!3902 = !DILocation(line: 2040, column: 11, scope: !3880)
!3903 = !DILocation(line: 2040, column: 19, scope: !3880)
!3904 = !DILocation(line: 2040, column: 11, scope: !3881)
!3905 = !DILocation(line: 2042, column: 49, scope: !3878)
!3906 = !DILocation(line: 2042, column: 63, scope: !3878)
!3907 = !DILocation(line: 2042, column: 68, scope: !3878)
!3908 = !DILocation(line: 2042, column: 25, scope: !3878)
!3909 = !DILocation(line: 113, column: 14, scope: !193, inlinedAt: !3877)
!3910 = !DILocation(line: 113, column: 3, scope: !193, inlinedAt: !3877)
!3911 = !DILocation(line: 1976, column: 11, scope: !48, inlinedAt: !3876)
!3912 = !DILocation(line: 1979, column: 18, scope: !200, inlinedAt: !3876)
!3913 = !DILocation(line: 1980, column: 11, scope: !200, inlinedAt: !3876)
!3914 = !DILocation(line: 1980, column: 3, scope: !200, inlinedAt: !3876)
!3915 = !DILocation(line: 115, column: 3, scope: !194, inlinedAt: !3877)
!3916 = !DILocation(line: 2042, column: 23, scope: !3878)
!3917 = !DILocation(line: 2044, column: 7, scope: !3879)
!3918 = !DILocation(line: 2047, column: 34, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3883, file: !1, line: 2046, column: 5)
!3920 = !DILocation(line: 2047, column: 18, scope: !3919)
!3921 = !DILocation(line: 2047, column: 16, scope: !3919)
!3922 = !DILocation(line: 2048, column: 9, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3919, file: !1, line: 2048, column: 9)
!3924 = !DILocation(line: 2048, column: 20, scope: !3923)
!3925 = !DILocation(line: 2048, column: 9, scope: !3919)
!3926 = !DILocation(line: 1866, column: 7, scope: !3589, inlinedAt: !3927)
!3927 = distinct !DILocation(line: 2050, column: 7, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3929, file: !1, line: 2049, column: 7)
!3929 = distinct !DILexicalBlock(scope: !3923, file: !1, line: 2048, column: 36)
!3930 = !DILocation(line: 1866, column: 12, scope: !3589, inlinedAt: !3927)
!3931 = !DILocation(line: 1866, column: 9, scope: !3589, inlinedAt: !3927)
!3932 = !DILocation(line: 1866, column: 7, scope: !3590, inlinedAt: !3927)
!3933 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !3934)
!3934 = distinct !DILocation(line: 1870, column: 5, scope: !3600, inlinedAt: !3927)
!3935 = !DILocation(line: 1867, column: 9, scope: !3595, inlinedAt: !3927)
!3936 = !DILocation(line: 1867, column: 7, scope: !3595, inlinedAt: !3927)
!3937 = !DILocation(line: 2052, column: 5, scope: !3929)
!3938 = !DILocation(line: 2054, column: 3, scope: !3883)
!3939 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_7", scope: !3874, file: !1, line: 2055, type: !14)
!3940 = !DILocation(line: 2055, column: 7, scope: !3874)
!3941 = !DILocation(line: 2056, column: 15, scope: !3874)
!3942 = !DILocation(line: 2056, column: 13, scope: !3874)
!3943 = !DILocation(line: 2057, column: 7, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3874, file: !1, line: 2057, column: 7)
!3945 = !DILocation(line: 2057, column: 17, scope: !3944)
!3946 = !DILocation(line: 2057, column: 7, scope: !3874)
!3947 = !DILocation(line: 2058, column: 5, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3944, file: !1, line: 2057, column: 23)
!3949 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_8", scope: !3950, file: !1, line: 2060, type: !14)
!3950 = distinct !DILexicalBlock(scope: !3944, file: !1, line: 2059, column: 10)
!3951 = !DILocation(line: 2060, column: 9, scope: !3950)
!3952 = !DILocation(line: 2061, column: 17, scope: !3950)
!3953 = !DILocation(line: 2061, column: 15, scope: !3950)
!3954 = !DILocation(line: 2062, column: 9, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3950, file: !1, line: 2062, column: 9)
!3956 = !DILocation(line: 2062, column: 19, scope: !3955)
!3957 = !DILocation(line: 2062, column: 9, scope: !3950)
!3958 = !DILocation(line: 2063, column: 7, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3955, file: !1, line: 2062, column: 25)
!3960 = !DILocation(line: 2065, column: 7, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3955, file: !1, line: 2064, column: 12)
!3962 = !DILocation(line: 2066, column: 11, scope: !3961)
!3963 = !DILocation(line: 2066, column: 14, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3961, file: !1, line: 2066, column: 11)
!3965 = !DILocation(line: 2068, column: 19, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3964, file: !1, line: 2066, column: 14)
!3967 = !DILocation(line: 2069, column: 9, scope: !3966)
!3968 = !DILocation(line: 2071, column: 19, scope: !3966)
!3969 = !DILocation(line: 2072, column: 9, scope: !3966)
!3970 = !DILocation(line: 2074, column: 19, scope: !3966)
!3971 = !DILocation(line: 2075, column: 9, scope: !3966)
!3972 = !DILocation(line: 2076, column: 14, scope: !3964)
!3973 = !DILocation(line: 2081, column: 7, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3874, file: !1, line: 2081, column: 7)
!3975 = !DILocation(line: 2081, column: 12, scope: !3974)
!3976 = !DILocation(line: 2081, column: 9, scope: !3974)
!3977 = !DILocation(line: 2081, column: 7, scope: !3874)
!3978 = !DILocation(line: 2082, column: 9, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3974, file: !1, line: 2081, column: 16)
!3980 = !DILocation(line: 2082, column: 7, scope: !3979)
!3981 = !DILocation(line: 2083, column: 25, scope: !3979)
!3982 = !DILocation(line: 2083, column: 23, scope: !3979)
!3983 = !DILocation(line: 2084, column: 3, scope: !3979)
!3984 = !DILocation(line: 2085, column: 9, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3986, file: !1, line: 2085, column: 9)
!3986 = distinct !DILexicalBlock(scope: !3974, file: !1, line: 2084, column: 10)
!3987 = !DILocation(line: 2085, column: 14, scope: !3985)
!3988 = !DILocation(line: 2085, column: 11, scope: !3985)
!3989 = !DILocation(line: 2085, column: 9, scope: !3986)
!3990 = !DILocation(line: 2087, column: 27, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3992, file: !1, line: 2086, column: 7)
!3992 = distinct !DILexicalBlock(scope: !3985, file: !1, line: 2085, column: 20)
!3993 = !DILocation(line: 2087, column: 20, scope: !3991)
!3994 = !DILocation(line: 2087, column: 18, scope: !3991)
!3995 = !DILocation(line: 2088, column: 11, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3991, file: !1, line: 2088, column: 11)
!3997 = !DILocation(line: 2088, column: 22, scope: !3996)
!3998 = !DILocation(line: 2088, column: 11, scope: !3991)
!3999 = !DILocation(line: 2089, column: 13, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3996, file: !1, line: 2088, column: 31)
!4001 = !DILocation(line: 2089, column: 11, scope: !4000)
!4002 = !DILocation(line: 2090, column: 29, scope: !4000)
!4003 = !DILocation(line: 2090, column: 27, scope: !4000)
!4004 = !DILocation(line: 2091, column: 7, scope: !4000)
!4005 = !DILocation(line: 2092, column: 13, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !3996, file: !1, line: 2091, column: 14)
!4007 = !DILocation(line: 2092, column: 11, scope: !4006)
!4008 = !DILocation(line: 2093, column: 29, scope: !4006)
!4009 = !DILocation(line: 2093, column: 27, scope: !4006)
!4010 = !DILocation(line: 2096, column: 5, scope: !3992)
!4011 = !DILocation(line: 2097, column: 11, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4013, file: !1, line: 2097, column: 11)
!4013 = distinct !DILexicalBlock(scope: !3985, file: !1, line: 2096, column: 12)
!4014 = !DILocation(line: 2097, column: 16, scope: !4012)
!4015 = !DILocation(line: 2097, column: 13, scope: !4012)
!4016 = !DILocation(line: 2097, column: 11, scope: !4013)
!4017 = !DILocation(line: 2098, column: 13, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4012, file: !1, line: 2097, column: 23)
!4019 = !DILocation(line: 2098, column: 11, scope: !4018)
!4020 = !DILocation(line: 2099, column: 29, scope: !4018)
!4021 = !DILocation(line: 2099, column: 27, scope: !4018)
!4022 = !DILocation(line: 2100, column: 7, scope: !4018)
!4023 = !DILocation(line: 36, column: 10, scope: !83, inlinedAt: !4024)
!4024 = distinct !DILocation(line: 2102, column: 9, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4026, file: !1, line: 2101, column: 9)
!4026 = distinct !DILexicalBlock(scope: !4012, file: !1, line: 2100, column: 14)
!4027 = !DILocation(line: 2107, column: 11, scope: !3874)
!4028 = !DILocation(line: 2107, column: 3, scope: !3874)
!4029 = !DILocation(line: 2110, column: 17, scope: !53)
!4030 = !DILocation(line: 2114, column: 7, scope: !257)
!4031 = !DILocation(line: 2115, column: 15, scope: !257)
!4032 = !DILocation(line: 2115, column: 13, scope: !257)
!4033 = !DILocation(line: 2116, column: 7, scope: !339)
!4034 = !DILocation(line: 2116, column: 17, scope: !339)
!4035 = !DILocation(line: 2116, column: 7, scope: !257)
!4036 = !DILocation(line: 2117, column: 5, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !339, file: !1, line: 2116, column: 23)
!4038 = !DILocation(line: 2119, column: 5, scope: !345)
!4039 = !DILocation(line: 2120, column: 9, scope: !345)
!4040 = !DILocation(line: 2120, column: 12, scope: !344)
!4041 = !DILocation(line: 2122, column: 7, scope: !343)
!4042 = !DILocation(line: 2124, column: 7, scope: !343)
!4043 = !DILocation(line: 2130, column: 1, scope: !53)
