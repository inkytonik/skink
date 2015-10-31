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
define void @errorFn() #0 {
  br label %1, !dbg !91

; <label>:1                                       ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !92
  unreachable, !dbg !92
                                                  ; No predecessors!
  ret void, !dbg !94
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

; Function Attrs: nounwind ssp uwtable
define void @_BLAST_init() #0 {
  store i32 0, i32* @UNLOADED, align 4, !dbg !95
  store i32 1, i32* @NP, align 4, !dbg !97
  store i32 2, i32* @DC, align 4, !dbg !98
  store i32 3, i32* @SKIP1, align 4, !dbg !99
  store i32 4, i32* @SKIP2, align 4, !dbg !100
  store i32 5, i32* @MPR1, align 4, !dbg !101
  store i32 6, i32* @MPR3, align 4, !dbg !102
  store i32 7, i32* @IPC, align 4, !dbg !103
  %1 = load i32, i32* @UNLOADED, align 4, !dbg !104
  store i32 %1, i32* @s, align 4, !dbg !105
  store i32 0, i32* @pended, align 4, !dbg !106
  store i32 0, i32* @compRegistered, align 4, !dbg !107
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !108
  store i32 0, i32* @setEventCalled, align 4, !dbg !109
  store i32 0, i32* @customIrp, align 4, !dbg !110
  ret void, !dbg !111
}

; Function Attrs: nounwind ssp uwtable
define i32 @FlAcpiConfigureFloppy(i32 %DisketteExtension, i32 %FdcInfo) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %DisketteExtension, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !112, metadata !113), !dbg !114
  store i32 %FdcInfo, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !115, metadata !113), !dbg !116
  ret i32 0, !dbg !117
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
  call void @llvm.dbg.declare(metadata i32* %19, metadata !119, metadata !113), !dbg !120
  store i32 %DisketteExtension, i32* %20, align 4
  call void @llvm.dbg.declare(metadata i32* %20, metadata !121, metadata !113), !dbg !122
  call void @llvm.dbg.declare(metadata i32* %status, metadata !123, metadata !113), !dbg !124
  call void @llvm.dbg.declare(metadata i32* %threadHandle, metadata !125, metadata !113), !dbg !126
  %21 = call i32 @__VERIFIER_nondet_int(), !dbg !127
  store i32 %21, i32* %threadHandle, align 4, !dbg !126
  call void @llvm.dbg.declare(metadata i32* %DisketteExtension__PoweringDown, metadata !128, metadata !113), !dbg !129
  %22 = call i32 @__VERIFIER_nondet_int(), !dbg !130
  store i32 %22, i32* %DisketteExtension__PoweringDown, align 4, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %DisketteExtension__ThreadReferenceCount, metadata !131, metadata !113), !dbg !132
  %23 = call i32 @__VERIFIER_nondet_int(), !dbg !133
  store i32 %23, i32* %DisketteExtension__ThreadReferenceCount, align 4, !dbg !132
  call void @llvm.dbg.declare(metadata i32* %DisketteExtension__FloppyThread, metadata !134, metadata !113), !dbg !135
  %24 = call i32 @__VERIFIER_nondet_int(), !dbg !136
  store i32 %24, i32* %DisketteExtension__FloppyThread, align 4, !dbg !135
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !137, metadata !113), !dbg !138
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !139, metadata !113), !dbg !140
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation__Control, metadata !141, metadata !113), !dbg !142
  call void @llvm.dbg.declare(metadata i32* %ObjAttributes, metadata !143, metadata !113), !dbg !144
  %25 = call i32 @__VERIFIER_nondet_int(), !dbg !145
  store i32 %25, i32* %ObjAttributes, align 4, !dbg !144
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp12, metadata !146, metadata !113), !dbg !147
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp13, metadata !148, metadata !113), !dbg !149
  %26 = load i32, i32* %DisketteExtension__PoweringDown, align 4, !dbg !150
  %27 = icmp eq i32 %26, 1, !dbg !153
  call void @llvm.dbg.declare(metadata i32* %11, metadata !154, metadata !113), !dbg !155
  call void @llvm.dbg.declare(metadata i32* %12, metadata !160, metadata !113), !dbg !161
  call void @llvm.dbg.declare(metadata i32* %13, metadata !162, metadata !113), !dbg !163
  call void @llvm.dbg.declare(metadata i32* %14, metadata !164, metadata !113), !dbg !165
  call void @llvm.dbg.declare(metadata i32* %15, metadata !166, metadata !113), !dbg !167
  call void @llvm.dbg.declare(metadata i32* %16, metadata !168, metadata !113), !dbg !169
  call void @llvm.dbg.declare(metadata i32* %17, metadata !170, metadata !113), !dbg !171
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_11.i, metadata !172, metadata !113), !dbg !174
  call void @llvm.dbg.declare(metadata i32* %4, metadata !175, metadata !113), !dbg !176
  call void @llvm.dbg.declare(metadata i32* %5, metadata !179, metadata !113), !dbg !180
  call void @llvm.dbg.declare(metadata i32* %6, metadata !181, metadata !113), !dbg !182
  call void @llvm.dbg.declare(metadata i32* %7, metadata !183, metadata !113), !dbg !184
  call void @llvm.dbg.declare(metadata i32* %8, metadata !185, metadata !113), !dbg !186
  call void @llvm.dbg.declare(metadata i32* %9, metadata !187, metadata !113), !dbg !188
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_10.i, metadata !189, metadata !113), !dbg !191
  call void @llvm.dbg.declare(metadata i32* %2, metadata !192, metadata !113), !dbg !193
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_12.i, metadata !195, metadata !113), !dbg !197
  br i1 %27, label %28, label %29, !dbg !198

; <label>:28                                      ; preds = %0
  store i32 -1073741101, i32* @myStatus, align 4, !dbg !199
  store i32 -1073741101, i32* %Irp__IoStatus__Status, align 4, !dbg !201
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !202
  store i32 -1073741101, i32* %18, !dbg !203
  br label %131, !dbg !203

; <label>:29                                      ; preds = %0
  %30 = load i32, i32* %DisketteExtension__ThreadReferenceCount, align 4, !dbg !204
  %31 = add nsw i32 %30, 1, !dbg !204
  store i32 %31, i32* %DisketteExtension__ThreadReferenceCount, align 4, !dbg !204
  %32 = load i32, i32* %DisketteExtension__ThreadReferenceCount, align 4, !dbg !205
  %33 = icmp eq i32 %32, 0, !dbg !206
  br i1 %33, label %34, label %125, !dbg !207

; <label>:34                                      ; preds = %29
  %35 = load i32, i32* %DisketteExtension__ThreadReferenceCount, align 4, !dbg !208
  %36 = add nsw i32 %35, 1, !dbg !208
  store i32 %36, i32* %DisketteExtension__ThreadReferenceCount, align 4, !dbg !208
  %37 = load i32, i32* @PagingReferenceCount, align 4, !dbg !209
  %38 = add nsw i32 %37, 1, !dbg !209
  store i32 %38, i32* @PagingReferenceCount, align 4, !dbg !209
  %39 = load i32, i32* @PagingReferenceCount, align 4, !dbg !210
  %40 = icmp eq i32 %39, 1, !dbg !212
  br i1 %40, label %41, label %42, !dbg !213

; <label>:41                                      ; preds = %34
  br label %42, !dbg !214

; <label>:42                                      ; preds = %41, %34
  %43 = load i32, i32* %threadHandle, align 4, !dbg !216
  %44 = load i32, i32* %ObjAttributes, align 4, !dbg !217
  %45 = load i32, i32* @FloppyThread, align 4, !dbg !218
  %46 = load i32, i32* %20, align 4, !dbg !219
  %47 = bitcast i32* %10 to i8*, !dbg !220
  call void @llvm.lifetime.start(i64 4, i8* %47), !dbg !220
  %48 = bitcast i32* %11 to i8*, !dbg !220
  call void @llvm.lifetime.start(i64 4, i8* %48), !dbg !220
  %49 = bitcast i32* %12 to i8*, !dbg !220
  call void @llvm.lifetime.start(i64 4, i8* %49), !dbg !220
  %50 = bitcast i32* %13 to i8*, !dbg !220
  call void @llvm.lifetime.start(i64 4, i8* %50), !dbg !220
  %51 = bitcast i32* %14 to i8*, !dbg !220
  call void @llvm.lifetime.start(i64 4, i8* %51), !dbg !220
  %52 = bitcast i32* %15 to i8*, !dbg !220
  call void @llvm.lifetime.start(i64 4, i8* %52), !dbg !220
  %53 = bitcast i32* %16 to i8*, !dbg !220
  call void @llvm.lifetime.start(i64 4, i8* %53), !dbg !220
  %54 = bitcast i32* %17 to i8*, !dbg !220
  call void @llvm.lifetime.start(i64 4, i8* %54), !dbg !220
  %55 = bitcast i32* %tmp_ndt_11.i to i8*, !dbg !220
  call void @llvm.lifetime.start(i64 4, i8* %55), !dbg !220
  store i32 %43, i32* %11, align 4, !dbg !220
  store i32 0, i32* %12, align 4, !dbg !220
  store i32 %44, i32* %13, align 4, !dbg !220
  store i32 0, i32* %14, align 4, !dbg !220
  store i32 0, i32* %15, align 4, !dbg !220
  store i32 %45, i32* %16, align 4, !dbg !220
  store i32 %46, i32* %17, align 4, !dbg !220
  %56 = call i32 @__VERIFIER_nondet_int() #4, !dbg !221
  store i32 %56, i32* %tmp_ndt_11.i, align 4, !dbg !222
  %57 = load i32, i32* %tmp_ndt_11.i, align 4, !dbg !223
  %58 = icmp eq i32 %57, 0, !dbg !225
  br i1 %58, label %59, label %60, !dbg !226

; <label>:59                                      ; preds = %42
  store i32 0, i32* %10, !dbg !227
  br label %PsCreateSystemThread.exit, !dbg !227

; <label>:60                                      ; preds = %42
  store i32 -1073741823, i32* %10, !dbg !231
  br label %PsCreateSystemThread.exit, !dbg !231

PsCreateSystemThread.exit:                        ; preds = %59, %60
  %61 = load i32, i32* %10, !dbg !232
  %62 = bitcast i32* %10 to i8*, !dbg !232
  call void @llvm.lifetime.end(i64 4, i8* %62), !dbg !232
  %63 = bitcast i32* %11 to i8*, !dbg !232
  call void @llvm.lifetime.end(i64 4, i8* %63), !dbg !232
  %64 = bitcast i32* %12 to i8*, !dbg !232
  call void @llvm.lifetime.end(i64 4, i8* %64), !dbg !232
  %65 = bitcast i32* %13 to i8*, !dbg !232
  call void @llvm.lifetime.end(i64 4, i8* %65), !dbg !232
  %66 = bitcast i32* %14 to i8*, !dbg !232
  call void @llvm.lifetime.end(i64 4, i8* %66), !dbg !232
  %67 = bitcast i32* %15 to i8*, !dbg !232
  call void @llvm.lifetime.end(i64 4, i8* %67), !dbg !232
  %68 = bitcast i32* %16 to i8*, !dbg !232
  call void @llvm.lifetime.end(i64 4, i8* %68), !dbg !232
  %69 = bitcast i32* %17 to i8*, !dbg !232
  call void @llvm.lifetime.end(i64 4, i8* %69), !dbg !232
  %70 = bitcast i32* %tmp_ndt_11.i to i8*, !dbg !232
  call void @llvm.lifetime.end(i64 4, i8* %70), !dbg !232
  store i32 %61, i32* %status, align 4, !dbg !233
  %71 = load i32, i32* %status, align 4, !dbg !234
  %72 = icmp slt i32 %71, 0, !dbg !237
  br i1 %72, label %73, label %81, !dbg !238

; <label>:73                                      ; preds = %PsCreateSystemThread.exit
  store i32 -1, i32* %DisketteExtension__ThreadReferenceCount, align 4, !dbg !239
  %74 = load i32, i32* @PagingReferenceCount, align 4, !dbg !241
  %75 = add nsw i32 %74, -1, !dbg !241
  store i32 %75, i32* @PagingReferenceCount, align 4, !dbg !241
  %76 = load i32, i32* @PagingReferenceCount, align 4, !dbg !242
  %77 = icmp eq i32 %76, 0, !dbg !244
  br i1 %77, label %78, label %79, !dbg !245

; <label>:78                                      ; preds = %73
  br label %79, !dbg !246

; <label>:79                                      ; preds = %78, %73
  %80 = load i32, i32* %status, align 4, !dbg !248
  store i32 %80, i32* %18, !dbg !249
  br label %131, !dbg !249

; <label>:81                                      ; preds = %PsCreateSystemThread.exit
  %82 = load i32, i32* %threadHandle, align 4, !dbg !250
  %83 = load i32, i32* @KernelMode, align 4, !dbg !251
  %84 = load i32, i32* %DisketteExtension__FloppyThread, align 4, !dbg !252
  %85 = bitcast i32* %3 to i8*, !dbg !253
  call void @llvm.lifetime.start(i64 4, i8* %85), !dbg !253
  %86 = bitcast i32* %4 to i8*, !dbg !253
  call void @llvm.lifetime.start(i64 4, i8* %86), !dbg !253
  %87 = bitcast i32* %5 to i8*, !dbg !253
  call void @llvm.lifetime.start(i64 4, i8* %87), !dbg !253
  %88 = bitcast i32* %6 to i8*, !dbg !253
  call void @llvm.lifetime.start(i64 4, i8* %88), !dbg !253
  %89 = bitcast i32* %7 to i8*, !dbg !253
  call void @llvm.lifetime.start(i64 4, i8* %89), !dbg !253
  %90 = bitcast i32* %8 to i8*, !dbg !253
  call void @llvm.lifetime.start(i64 4, i8* %90), !dbg !253
  %91 = bitcast i32* %9 to i8*, !dbg !253
  call void @llvm.lifetime.start(i64 4, i8* %91), !dbg !253
  %92 = bitcast i32* %tmp_ndt_10.i to i8*, !dbg !253
  call void @llvm.lifetime.start(i64 4, i8* %92), !dbg !253
  store i32 %82, i32* %4, align 4, !dbg !253
  store i32 1048576, i32* %5, align 4, !dbg !253
  store i32 0, i32* %6, align 4, !dbg !253
  store i32 %83, i32* %7, align 4, !dbg !253
  store i32 %84, i32* %8, align 4, !dbg !253
  store i32 0, i32* %9, align 4, !dbg !253
  %93 = call i32 @__VERIFIER_nondet_int() #4, !dbg !254
  store i32 %93, i32* %tmp_ndt_10.i, align 4, !dbg !255
  %94 = load i32, i32* %tmp_ndt_10.i, align 4, !dbg !256
  %95 = icmp eq i32 %94, 0, !dbg !258
  br i1 %95, label %96, label %97, !dbg !259

; <label>:96                                      ; preds = %81
  store i32 0, i32* %3, !dbg !260
  br label %ObReferenceObjectByHandle.exit, !dbg !260

; <label>:97                                      ; preds = %81
  store i32 -1073741823, i32* %3, !dbg !264
  br label %ObReferenceObjectByHandle.exit, !dbg !264

ObReferenceObjectByHandle.exit:                   ; preds = %96, %97
  %98 = load i32, i32* %3, !dbg !265
  %99 = bitcast i32* %3 to i8*, !dbg !265
  call void @llvm.lifetime.end(i64 4, i8* %99), !dbg !265
  %100 = bitcast i32* %4 to i8*, !dbg !265
  call void @llvm.lifetime.end(i64 4, i8* %100), !dbg !265
  %101 = bitcast i32* %5 to i8*, !dbg !265
  call void @llvm.lifetime.end(i64 4, i8* %101), !dbg !265
  %102 = bitcast i32* %6 to i8*, !dbg !265
  call void @llvm.lifetime.end(i64 4, i8* %102), !dbg !265
  %103 = bitcast i32* %7 to i8*, !dbg !265
  call void @llvm.lifetime.end(i64 4, i8* %103), !dbg !265
  %104 = bitcast i32* %8 to i8*, !dbg !265
  call void @llvm.lifetime.end(i64 4, i8* %104), !dbg !265
  %105 = bitcast i32* %9 to i8*, !dbg !265
  call void @llvm.lifetime.end(i64 4, i8* %105), !dbg !265
  %106 = bitcast i32* %tmp_ndt_10.i to i8*, !dbg !265
  call void @llvm.lifetime.end(i64 4, i8* %106), !dbg !265
  store i32 %98, i32* %status, align 4, !dbg !266
  %107 = load i32, i32* %threadHandle, align 4, !dbg !267
  %108 = bitcast i32* %1 to i8*, !dbg !268
  call void @llvm.lifetime.start(i64 4, i8* %108), !dbg !268
  %109 = bitcast i32* %2 to i8*, !dbg !268
  call void @llvm.lifetime.start(i64 4, i8* %109), !dbg !268
  %110 = bitcast i32* %tmp_ndt_12.i to i8*, !dbg !268
  call void @llvm.lifetime.start(i64 4, i8* %110), !dbg !268
  store i32 %107, i32* %2, align 4, !dbg !268
  %111 = call i32 @__VERIFIER_nondet_int() #4, !dbg !269
  store i32 %111, i32* %tmp_ndt_12.i, align 4, !dbg !270
  %112 = load i32, i32* %tmp_ndt_12.i, align 4, !dbg !271
  %113 = icmp eq i32 %112, 0, !dbg !273
  br i1 %113, label %114, label %115, !dbg !274

; <label>:114                                     ; preds = %ObReferenceObjectByHandle.exit
  store i32 0, i32* %1, !dbg !275
  br label %ZwClose.exit, !dbg !275

; <label>:115                                     ; preds = %ObReferenceObjectByHandle.exit
  store i32 -1073741823, i32* %1, !dbg !279
  br label %ZwClose.exit, !dbg !279

ZwClose.exit:                                     ; preds = %114, %115
  %116 = load i32, i32* %1, !dbg !280
  %117 = bitcast i32* %1 to i8*, !dbg !280
  call void @llvm.lifetime.end(i64 4, i8* %117), !dbg !280
  %118 = bitcast i32* %2 to i8*, !dbg !280
  call void @llvm.lifetime.end(i64 4, i8* %118), !dbg !280
  %119 = bitcast i32* %tmp_ndt_12.i to i8*, !dbg !280
  call void @llvm.lifetime.end(i64 4, i8* %119), !dbg !280
  %120 = load i32, i32* %status, align 4, !dbg !281
  %121 = icmp slt i32 %120, 0, !dbg !284
  br i1 %121, label %122, label %124, !dbg !285

; <label>:122                                     ; preds = %ZwClose.exit
  %123 = load i32, i32* %status, align 4, !dbg !286
  store i32 %123, i32* %18, !dbg !288
  br label %131, !dbg !288

; <label>:124                                     ; preds = %ZwClose.exit
  br label %125, !dbg !289

; <label>:125                                     ; preds = %124, %29
  %126 = load i32, i32* @pended, align 4, !dbg !290
  %127 = icmp eq i32 %126, 0, !dbg !292
  br i1 %127, label %128, label %129, !dbg !293

; <label>:128                                     ; preds = %125
  store i32 1, i32* @pended, align 4, !dbg !294
  br label %130, !dbg !296

; <label>:129                                     ; preds = %125
  call void (...) @__VERIFIER_error() #6, !dbg !297
  unreachable, !dbg !297

errorFn.exit:                                     ; No predecessors!
  br label %130

; <label>:130                                     ; preds = %errorFn.exit, %128
  store i32 259, i32* %18, !dbg !301
  br label %131, !dbg !301

; <label>:131                                     ; preds = %130, %122, %79, %28
  %132 = load i32, i32* %18, !dbg !302
  ret i32 %132, !dbg !302
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
  call void @llvm.dbg.declare(metadata i32* %13, metadata !303, metadata !113), !dbg !304
  store i32 %Irp, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !305, metadata !113), !dbg !306
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !307, metadata !113), !dbg !308
  %15 = call i32 @__VERIFIER_nondet_int(), !dbg !309
  store i32 %15, i32* %DeviceObject__DeviceExtension, align 4, !dbg !308
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !310, metadata !113), !dbg !311
  %16 = call i32 @__VERIFIER_nondet_int(), !dbg !312
  store i32 %16, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !311
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !313, metadata !113), !dbg !314
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !315, metadata !113), !dbg !316
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !317, metadata !113), !dbg !318
  %17 = call i32 @__VERIFIER_nondet_int(), !dbg !319
  store i32 %17, i32* %Irp__CurrentLocation, align 4, !dbg !318
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__IsRemoved, metadata !320, metadata !113), !dbg !321
  %18 = call i32 @__VERIFIER_nondet_int(), !dbg !322
  store i32 %18, i32* %disketteExtension__IsRemoved, align 4, !dbg !321
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__IsStarted, metadata !323, metadata !113), !dbg !324
  %19 = call i32 @__VERIFIER_nondet_int(), !dbg !325
  store i32 %19, i32* %disketteExtension__IsStarted, align 4, !dbg !324
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__TargetObject, metadata !326, metadata !113), !dbg !327
  %20 = call i32 @__VERIFIER_nondet_int(), !dbg !328
  store i32 %20, i32* %disketteExtension__TargetObject, align 4, !dbg !327
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__HoldNewRequests, metadata !329, metadata !113), !dbg !330
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__FloppyThread, metadata !331, metadata !113), !dbg !332
  %21 = call i32 @__VERIFIER_nondet_int(), !dbg !333
  store i32 %21, i32* %disketteExtension__FloppyThread, align 4, !dbg !332
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__InterfaceString__Buffer, metadata !334, metadata !113), !dbg !335
  %22 = call i32 @__VERIFIER_nondet_int(), !dbg !336
  store i32 %22, i32* %disketteExtension__InterfaceString__Buffer, align 4, !dbg !335
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__InterfaceString, metadata !337, metadata !113), !dbg !338
  %23 = call i32 @__VERIFIER_nondet_int(), !dbg !339
  store i32 %23, i32* %disketteExtension__InterfaceString, align 4, !dbg !338
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__ArcName__Length, metadata !340, metadata !113), !dbg !341
  %24 = call i32 @__VERIFIER_nondet_int(), !dbg !342
  store i32 %24, i32* %disketteExtension__ArcName__Length, align 4, !dbg !341
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__ArcName, metadata !343, metadata !113), !dbg !344
  %25 = call i32 @__VERIFIER_nondet_int(), !dbg !345
  store i32 %25, i32* %disketteExtension__ArcName, align 4, !dbg !344
  call void @llvm.dbg.declare(metadata i32* %irpSp__MinorFunction, metadata !346, metadata !113), !dbg !347
  %26 = call i32 @__VERIFIER_nondet_int(), !dbg !348
  store i32 %26, i32* %irpSp__MinorFunction, align 4, !dbg !347
  call void @llvm.dbg.declare(metadata i32* %IoGetConfigurationInformation__FloppyCount, metadata !349, metadata !113), !dbg !350
  %27 = call i32 @__VERIFIER_nondet_int(), !dbg !351
  store i32 %27, i32* %IoGetConfigurationInformation__FloppyCount, align 4, !dbg !350
  call void @llvm.dbg.declare(metadata i32* %irpSp, metadata !352, metadata !113), !dbg !353
  call void @llvm.dbg.declare(metadata i32* %disketteExtension, metadata !354, metadata !113), !dbg !355
  call void @llvm.dbg.declare(metadata i32* %ntStatus, metadata !356, metadata !113), !dbg !357
  call void @llvm.dbg.declare(metadata i32* %doneEvent, metadata !358, metadata !113), !dbg !359
  %28 = call i32 @__VERIFIER_nondet_int(), !dbg !360
  store i32 %28, i32* %doneEvent, align 4, !dbg !359
  call void @llvm.dbg.declare(metadata i32* %irpSp___0, metadata !361, metadata !113), !dbg !362
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp, metadata !363, metadata !113), !dbg !364
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp__Control, metadata !365, metadata !113), !dbg !366
  call void @llvm.dbg.declare(metadata i32* %irpSp___1, metadata !367, metadata !113), !dbg !368
  call void @llvm.dbg.declare(metadata i32* %irpSp__Context, metadata !369, metadata !113), !dbg !370
  call void @llvm.dbg.declare(metadata i32* %irpSp__Control, metadata !371, metadata !113), !dbg !372
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp29, metadata !373, metadata !113), !dbg !374
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp30, metadata !375, metadata !113), !dbg !376
  store i32 0, i32* %ntStatus, align 4, !dbg !377
  %29 = load i32, i32* @PagingReferenceCount, align 4, !dbg !379
  %30 = add nsw i32 %29, 1, !dbg !379
  store i32 %30, i32* @PagingReferenceCount, align 4, !dbg !379
  %31 = load i32, i32* @PagingReferenceCount, align 4, !dbg !380
  %32 = icmp eq i32 %31, 1, !dbg !382
  call void @llvm.dbg.declare(metadata i32* %10, metadata !383, metadata !113), !dbg !384
  call void @llvm.dbg.declare(metadata i32* %11, metadata !389, metadata !113), !dbg !390
  call void @llvm.dbg.declare(metadata i32* %8, metadata !383, metadata !113), !dbg !391
  call void @llvm.dbg.declare(metadata i32* %9, metadata !389, metadata !113), !dbg !413
  call void @llvm.dbg.declare(metadata i32* %6, metadata !383, metadata !113), !dbg !414
  call void @llvm.dbg.declare(metadata i32* %7, metadata !389, metadata !113), !dbg !419
  call void @llvm.dbg.declare(metadata i32* %4, metadata !420, metadata !113), !dbg !421
  call void @llvm.dbg.declare(metadata i32* %5, metadata !426, metadata !113), !dbg !427
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_6.i, metadata !428, metadata !113), !dbg !430
  call void @llvm.dbg.declare(metadata i32* %2, metadata !431, metadata !113), !dbg !432
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_3.i, metadata !437, metadata !113), !dbg !439
  br i1 %32, label %33, label %34, !dbg !440

; <label>:33                                      ; preds = %0
  br label %34, !dbg !441

; <label>:34                                      ; preds = %33, %0
  %35 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !443
  store i32 %35, i32* %disketteExtension, align 4, !dbg !444
  %36 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !445
  store i32 %36, i32* %irpSp, align 4, !dbg !446
  %37 = load i32, i32* %disketteExtension__IsRemoved, align 4, !dbg !447
  %38 = icmp ne i32 %37, 0, !dbg !447
  br i1 %38, label %39, label %50, !dbg !448

; <label>:39                                      ; preds = %34
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !449
  store i32 -1073741738, i32* %Irp__IoStatus__Status, align 4, !dbg !450
  store i32 -1073741738, i32* @myStatus, align 4, !dbg !451
  %40 = load i32, i32* %14, align 4, !dbg !452
  %41 = bitcast i32* %10 to i8*, !dbg !453
  call void @llvm.lifetime.start(i64 4, i8* %41), !dbg !453
  %42 = bitcast i32* %11 to i8*, !dbg !453
  call void @llvm.lifetime.start(i64 4, i8* %42), !dbg !453
  store i32 %40, i32* %10, align 4, !dbg !453
  store i32 0, i32* %11, align 4, !dbg !453
  %43 = load i32, i32* @s, align 4, !dbg !454
  %44 = load i32, i32* @NP, align 4, !dbg !457
  %45 = icmp eq i32 %43, %44, !dbg !458
  br i1 %45, label %IofCompleteRequest.exit, label %46, !dbg !459

; <label>:46                                      ; preds = %39
  call void (...) @__VERIFIER_error() #6, !dbg !460
  unreachable, !dbg !460

IofCompleteRequest.exit:                          ; preds = %39
  %47 = load i32, i32* @DC, align 4, !dbg !464
  store i32 %47, i32* @s, align 4, !dbg !466
  %48 = bitcast i32* %10 to i8*, !dbg !467
  call void @llvm.lifetime.end(i64 4, i8* %48), !dbg !467
  %49 = bitcast i32* %11 to i8*, !dbg !467
  call void @llvm.lifetime.end(i64 4, i8* %49), !dbg !467
  store i32 -1073741738, i32* %12, !dbg !468
  br label %320, !dbg !468

; <label>:50                                      ; preds = %34
  %51 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !469
  %52 = icmp eq i32 %51, 0, !dbg !470
  br i1 %52, label %53, label %54, !dbg !471

; <label>:53                                      ; preds = %50
  br label %81, !dbg !472

; <label>:54                                      ; preds = %50
  %55 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !474
  %56 = icmp eq i32 %55, 5, !dbg !475
  br i1 %56, label %57, label %58, !dbg !476

; <label>:57                                      ; preds = %54
  br label %85, !dbg !477

; <label>:58                                      ; preds = %54
  %59 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !479
  %60 = icmp eq i32 %59, 1, !dbg !480
  br i1 %60, label %61, label %62, !dbg !481

; <label>:61                                      ; preds = %58
  br label %85, !dbg !482

; <label>:62                                      ; preds = %58
  %63 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !484
  %64 = icmp eq i32 %63, 6, !dbg !485
  br i1 %64, label %65, label %66, !dbg !486

; <label>:65                                      ; preds = %62
  br label %153, !dbg !487

; <label>:66                                      ; preds = %62
  %67 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !489
  %68 = icmp eq i32 %67, 3, !dbg !490
  br i1 %68, label %69, label %70, !dbg !491

; <label>:69                                      ; preds = %66
  br label %153, !dbg !492

; <label>:70                                      ; preds = %66
  %71 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !494
  %72 = icmp eq i32 %71, 4, !dbg !495
  br i1 %72, label %73, label %74, !dbg !496

; <label>:73                                      ; preds = %70
  br label %220, !dbg !497

; <label>:74                                      ; preds = %70
  %75 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !499
  %76 = icmp eq i32 %75, 2, !dbg !500
  br i1 %76, label %77, label %78, !dbg !501

; <label>:77                                      ; preds = %74
  br label %235, !dbg !502

; <label>:78                                      ; preds = %74
  br label %288, !dbg !504
                                                  ; No predecessors!
  br i1 false, label %80, label %303, !dbg !505

; <label>:80                                      ; preds = %79
  br label %81, !dbg !506

; <label>:81                                      ; preds = %80, %53
  %82 = load i32, i32* %13, align 4, !dbg !507
  %83 = load i32, i32* %14, align 4, !dbg !509
  %84 = call i32 @FloppyStartDevice(i32 %82, i32 %83), !dbg !510
  store i32 %84, i32* %ntStatus, align 4, !dbg !511
  br label %304, !dbg !512

; <label>:85                                      ; preds = %61, %57
  %86 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !513
  %87 = icmp eq i32 %86, 5, !dbg !515
  br i1 %87, label %88, label %89, !dbg !516

; <label>:88                                      ; preds = %85
  br label %89, !dbg !517

; <label>:89                                      ; preds = %88, %85
  %90 = load i32, i32* %disketteExtension__IsStarted, align 4, !dbg !519
  %91 = icmp ne i32 %90, 0, !dbg !519
  br i1 %91, label %108, label %92, !dbg !521

; <label>:92                                      ; preds = %89
  %93 = load i32, i32* @s, align 4, !dbg !522
  %94 = load i32, i32* @NP, align 4, !dbg !525
  %95 = icmp eq i32 %93, %94, !dbg !526
  br i1 %95, label %96, label %98, !dbg !527

; <label>:96                                      ; preds = %92
  %97 = load i32, i32* @SKIP1, align 4, !dbg !528
  store i32 %97, i32* @s, align 4, !dbg !530
  br label %99, !dbg !531

; <label>:98                                      ; preds = %92
  call void (...) @__VERIFIER_error() #6, !dbg !532
  unreachable, !dbg !532

errorFn.exit:                                     ; No predecessors!
  br label %99

; <label>:99                                      ; preds = %errorFn.exit, %96
  %100 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !536
  %101 = add nsw i32 %100, 1, !dbg !536
  store i32 %101, i32* %Irp__CurrentLocation, align 4, !dbg !536
  %102 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !538
  %103 = add nsw i32 %102, 1, !dbg !538
  store i32 %103, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !538
  %104 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !539
  %105 = load i32, i32* %14, align 4, !dbg !540
  %106 = call i32 @IofCallDriver(i32 %104, i32 %105), !dbg !541
  store i32 %106, i32* %ntStatus, align 4, !dbg !542
  %107 = load i32, i32* %ntStatus, align 4, !dbg !543
  store i32 %107, i32* %12, !dbg !544
  br label %320, !dbg !544

; <label>:108                                     ; preds = %89
  store i32 1, i32* %disketteExtension__HoldNewRequests, align 4, !dbg !545
  %109 = load i32, i32* %14, align 4, !dbg !547
  %110 = load i32, i32* %disketteExtension, align 4, !dbg !548
  %111 = call i32 @FlQueueIrpToThread(i32 %109, i32 %110), !dbg !549
  store i32 %111, i32* %ntStatus, align 4, !dbg !550
  %112 = load i32, i32* %ntStatus, align 4, !dbg !551
  %113 = sext i32 %112 to i64, !dbg !552
  store i64 %113, i64* %__cil_tmp29, align 8, !dbg !553
  %114 = load i64, i64* %__cil_tmp29, align 8, !dbg !554
  %115 = icmp eq i64 %114, 259, !dbg !555
  br i1 %115, label %116, label %139, !dbg !556

; <label>:116                                     ; preds = %108
  %117 = load i32, i32* %disketteExtension__FloppyThread, align 4, !dbg !557
  %118 = load i32, i32* @Executive, align 4, !dbg !560
  %119 = load i32, i32* @KernelMode, align 4, !dbg !561
  %120 = call i32 @KeWaitForSingleObject(i32 %117, i32 %118, i32 %119, i32 0, i32 0), !dbg !562
  %121 = load i32, i32* %disketteExtension__FloppyThread, align 4, !dbg !563
  %122 = icmp ne i32 %121, 0, !dbg !565
  br i1 %122, label %123, label %124, !dbg !566

; <label>:123                                     ; preds = %116
  br label %124, !dbg !567

; <label>:124                                     ; preds = %123, %116
  store i32 0, i32* %disketteExtension__FloppyThread, align 4, !dbg !569
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !570
  store i32 0, i32* @myStatus, align 4, !dbg !571
  %125 = load i32, i32* @s, align 4, !dbg !572
  %126 = load i32, i32* @NP, align 4, !dbg !574
  %127 = icmp eq i32 %125, %126, !dbg !575
  br i1 %127, label %128, label %130, !dbg !576

; <label>:128                                     ; preds = %124
  %129 = load i32, i32* @SKIP1, align 4, !dbg !577
  store i32 %129, i32* @s, align 4, !dbg !579
  br label %131, !dbg !580

; <label>:130                                     ; preds = %124
  call void (...) @__VERIFIER_error() #6, !dbg !581
  unreachable, !dbg !581

errorFn.exit1:                                    ; No predecessors!
  br label %131

; <label>:131                                     ; preds = %errorFn.exit1, %128
  %132 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !585
  %133 = add nsw i32 %132, 1, !dbg !585
  store i32 %133, i32* %Irp__CurrentLocation, align 4, !dbg !585
  %134 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !587
  %135 = add nsw i32 %134, 1, !dbg !587
  store i32 %135, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !587
  %136 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !588
  %137 = load i32, i32* %14, align 4, !dbg !589
  %138 = call i32 @IofCallDriver(i32 %136, i32 %137), !dbg !590
  store i32 %138, i32* %ntStatus, align 4, !dbg !591
  br label %152, !dbg !592

; <label>:139                                     ; preds = %108
  store i32 -1073741823, i32* %ntStatus, align 4, !dbg !593
  %140 = load i32, i32* %ntStatus, align 4, !dbg !594
  store i32 %140, i32* %Irp__IoStatus__Status, align 4, !dbg !595
  %141 = load i32, i32* %ntStatus, align 4, !dbg !596
  store i32 %141, i32* @myStatus, align 4, !dbg !597
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !598
  %142 = load i32, i32* %14, align 4, !dbg !599
  %143 = bitcast i32* %8 to i8*, !dbg !600
  call void @llvm.lifetime.start(i64 4, i8* %143), !dbg !600
  %144 = bitcast i32* %9 to i8*, !dbg !600
  call void @llvm.lifetime.start(i64 4, i8* %144), !dbg !600
  store i32 %142, i32* %8, align 4, !dbg !600
  store i32 0, i32* %9, align 4, !dbg !600
  %145 = load i32, i32* @s, align 4, !dbg !601
  %146 = load i32, i32* @NP, align 4, !dbg !602
  %147 = icmp eq i32 %145, %146, !dbg !603
  br i1 %147, label %IofCompleteRequest.exit2, label %148, !dbg !604

; <label>:148                                     ; preds = %139
  call void (...) @__VERIFIER_error() #6, !dbg !605
  unreachable, !dbg !605

IofCompleteRequest.exit2:                         ; preds = %139
  %149 = load i32, i32* @DC, align 4, !dbg !607
  store i32 %149, i32* @s, align 4, !dbg !608
  %150 = bitcast i32* %8 to i8*, !dbg !609
  call void @llvm.lifetime.end(i64 4, i8* %150), !dbg !609
  %151 = bitcast i32* %9 to i8*, !dbg !609
  call void @llvm.lifetime.end(i64 4, i8* %151), !dbg !609
  br label %152

; <label>:152                                     ; preds = %IofCompleteRequest.exit2, %131
  br label %304, !dbg !610

; <label>:153                                     ; preds = %69, %65
  %154 = load i32, i32* %irpSp__MinorFunction, align 4, !dbg !611
  %155 = icmp eq i32 %154, 6, !dbg !613
  br i1 %155, label %156, label %157, !dbg !614

; <label>:156                                     ; preds = %153
  br label %157, !dbg !615

; <label>:157                                     ; preds = %156, %153
  %158 = load i32, i32* %disketteExtension__IsStarted, align 4, !dbg !617
  %159 = icmp ne i32 %158, 0, !dbg !617
  br i1 %159, label %175, label %160, !dbg !618

; <label>:160                                     ; preds = %157
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !619
  store i32 0, i32* @myStatus, align 4, !dbg !621
  %161 = load i32, i32* @s, align 4, !dbg !622
  %162 = load i32, i32* @NP, align 4, !dbg !624
  %163 = icmp eq i32 %161, %162, !dbg !625
  br i1 %163, label %164, label %166, !dbg !626

; <label>:164                                     ; preds = %160
  %165 = load i32, i32* @SKIP1, align 4, !dbg !627
  store i32 %165, i32* @s, align 4, !dbg !629
  br label %167, !dbg !630

; <label>:166                                     ; preds = %160
  call void (...) @__VERIFIER_error() #6, !dbg !631
  unreachable, !dbg !631

errorFn.exit3:                                    ; No predecessors!
  br label %167

; <label>:167                                     ; preds = %errorFn.exit3, %164
  %168 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !635
  %169 = add nsw i32 %168, 1, !dbg !635
  store i32 %169, i32* %Irp__CurrentLocation, align 4, !dbg !635
  %170 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !637
  %171 = add nsw i32 %170, 1, !dbg !637
  store i32 %171, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !637
  %172 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !638
  %173 = load i32, i32* %14, align 4, !dbg !639
  %174 = call i32 @IofCallDriver(i32 %172, i32 %173), !dbg !640
  store i32 %174, i32* %ntStatus, align 4, !dbg !641
  br label %219, !dbg !642

; <label>:175                                     ; preds = %157
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !643
  store i32 0, i32* @myStatus, align 4, !dbg !644
  %176 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !645
  store i32 %176, i32* %irpSp___0, align 4, !dbg !646
  %177 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !647
  %178 = sub nsw i32 %177, 1, !dbg !648
  store i32 %178, i32* %nextIrpSp, align 4, !dbg !649
  store i32 0, i32* %nextIrpSp__Control, align 4, !dbg !650
  %179 = load i32, i32* @s, align 4, !dbg !651
  %180 = load i32, i32* @NP, align 4, !dbg !653
  %181 = icmp ne i32 %179, %180, !dbg !654
  br i1 %181, label %182, label %183, !dbg !655

; <label>:182                                     ; preds = %175
  call void (...) @__VERIFIER_error() #6, !dbg !656
  unreachable, !dbg !656

errorFn.exit4:                                    ; No predecessors!
  br label %189, !dbg !660

; <label>:183                                     ; preds = %175
  %184 = load i32, i32* @compRegistered, align 4, !dbg !661
  %185 = icmp ne i32 %184, 0, !dbg !664
  br i1 %185, label %186, label %187, !dbg !665

; <label>:186                                     ; preds = %183
  call void (...) @__VERIFIER_error() #6, !dbg !666
  unreachable, !dbg !666

errorFn.exit5:                                    ; No predecessors!
  br label %188, !dbg !670

; <label>:187                                     ; preds = %183
  store i32 1, i32* @compRegistered, align 4, !dbg !671
  br label %188

; <label>:188                                     ; preds = %187, %errorFn.exit5
  br label %189

; <label>:189                                     ; preds = %188, %errorFn.exit4
  %190 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !673
  %191 = sub nsw i32 %190, 1, !dbg !675
  store i32 %191, i32* %irpSp___1, align 4, !dbg !676
  %192 = load i32, i32* %doneEvent, align 4, !dbg !677
  store i32 %192, i32* %irpSp__Context, align 4, !dbg !678
  store i32 224, i32* %irpSp__Control, align 4, !dbg !679
  %193 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !680
  %194 = load i32, i32* %14, align 4, !dbg !681
  %195 = call i32 @IofCallDriver(i32 %193, i32 %194), !dbg !682
  store i32 %195, i32* %ntStatus, align 4, !dbg !683
  %196 = load i32, i32* %ntStatus, align 4, !dbg !684
  %197 = sext i32 %196 to i64, !dbg !686
  store i64 %197, i64* %__cil_tmp30, align 8, !dbg !687
  %198 = load i64, i64* %__cil_tmp30, align 8, !dbg !688
  %199 = icmp eq i64 %198, 259, !dbg !690
  br i1 %199, label %200, label %206, !dbg !691

; <label>:200                                     ; preds = %189
  %201 = load i32, i32* %doneEvent, align 4, !dbg !692
  %202 = load i32, i32* @Executive, align 4, !dbg !695
  %203 = load i32, i32* @KernelMode, align 4, !dbg !696
  %204 = call i32 @KeWaitForSingleObject(i32 %201, i32 %202, i32 %203, i32 0, i32 0), !dbg !697
  %205 = load i32, i32* @myStatus, align 4, !dbg !698
  store i32 %205, i32* %ntStatus, align 4, !dbg !699
  br label %206, !dbg !700

; <label>:206                                     ; preds = %200, %189
  store i32 0, i32* %disketteExtension__HoldNewRequests, align 4, !dbg !701
  %207 = load i32, i32* %ntStatus, align 4, !dbg !702
  store i32 %207, i32* %Irp__IoStatus__Status, align 4, !dbg !703
  %208 = load i32, i32* %ntStatus, align 4, !dbg !704
  store i32 %208, i32* @myStatus, align 4, !dbg !705
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !706
  %209 = load i32, i32* %14, align 4, !dbg !707
  %210 = bitcast i32* %6 to i8*, !dbg !708
  call void @llvm.lifetime.start(i64 4, i8* %210), !dbg !708
  %211 = bitcast i32* %7 to i8*, !dbg !708
  call void @llvm.lifetime.start(i64 4, i8* %211), !dbg !708
  store i32 %209, i32* %6, align 4, !dbg !708
  store i32 0, i32* %7, align 4, !dbg !708
  %212 = load i32, i32* @s, align 4, !dbg !709
  %213 = load i32, i32* @NP, align 4, !dbg !710
  %214 = icmp eq i32 %212, %213, !dbg !711
  br i1 %214, label %IofCompleteRequest.exit6, label %215, !dbg !712

; <label>:215                                     ; preds = %206
  call void (...) @__VERIFIER_error() #6, !dbg !713
  unreachable, !dbg !713

IofCompleteRequest.exit6:                         ; preds = %206
  %216 = load i32, i32* @DC, align 4, !dbg !715
  store i32 %216, i32* @s, align 4, !dbg !716
  %217 = bitcast i32* %6 to i8*, !dbg !717
  call void @llvm.lifetime.end(i64 4, i8* %217), !dbg !717
  %218 = bitcast i32* %7 to i8*, !dbg !717
  call void @llvm.lifetime.end(i64 4, i8* %218), !dbg !717
  br label %219

; <label>:219                                     ; preds = %IofCompleteRequest.exit6, %167
  br label %304, !dbg !718

; <label>:220                                     ; preds = %73
  store i32 0, i32* %disketteExtension__IsStarted, align 4, !dbg !719
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !720
  store i32 0, i32* @myStatus, align 4, !dbg !721
  %221 = load i32, i32* @s, align 4, !dbg !722
  %222 = load i32, i32* @NP, align 4, !dbg !724
  %223 = icmp eq i32 %221, %222, !dbg !725
  br i1 %223, label %224, label %226, !dbg !726

; <label>:224                                     ; preds = %220
  %225 = load i32, i32* @SKIP1, align 4, !dbg !727
  store i32 %225, i32* @s, align 4, !dbg !729
  br label %227, !dbg !730

; <label>:226                                     ; preds = %220
  call void (...) @__VERIFIER_error() #6, !dbg !731
  unreachable, !dbg !731

errorFn.exit7:                                    ; No predecessors!
  br label %227

; <label>:227                                     ; preds = %errorFn.exit7, %224
  %228 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !735
  %229 = add nsw i32 %228, 1, !dbg !735
  store i32 %229, i32* %Irp__CurrentLocation, align 4, !dbg !735
  %230 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !737
  %231 = add nsw i32 %230, 1, !dbg !737
  store i32 %231, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !737
  %232 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !738
  %233 = load i32, i32* %14, align 4, !dbg !739
  %234 = call i32 @IofCallDriver(i32 %232, i32 %233), !dbg !740
  store i32 %234, i32* %ntStatus, align 4, !dbg !741
  br label %304, !dbg !742

; <label>:235                                     ; preds = %77
  store i32 0, i32* %disketteExtension__HoldNewRequests, align 4, !dbg !743
  store i32 0, i32* %disketteExtension__IsStarted, align 4, !dbg !744
  store i32 1, i32* %disketteExtension__IsRemoved, align 4, !dbg !745
  %236 = load i32, i32* @s, align 4, !dbg !746
  %237 = load i32, i32* @NP, align 4, !dbg !748
  %238 = icmp eq i32 %236, %237, !dbg !749
  br i1 %238, label %239, label %241, !dbg !750

; <label>:239                                     ; preds = %235
  %240 = load i32, i32* @SKIP1, align 4, !dbg !751
  store i32 %240, i32* @s, align 4, !dbg !753
  br label %242, !dbg !754

; <label>:241                                     ; preds = %235
  call void (...) @__VERIFIER_error() #6, !dbg !755
  unreachable, !dbg !755

errorFn.exit8:                                    ; No predecessors!
  br label %242

; <label>:242                                     ; preds = %errorFn.exit8, %239
  %243 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !759
  %244 = add nsw i32 %243, 1, !dbg !759
  store i32 %244, i32* %Irp__CurrentLocation, align 4, !dbg !759
  %245 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !761
  %246 = add nsw i32 %245, 1, !dbg !761
  store i32 %246, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !761
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !762
  store i32 0, i32* @myStatus, align 4, !dbg !763
  %247 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !764
  %248 = load i32, i32* %14, align 4, !dbg !765
  %249 = call i32 @IofCallDriver(i32 %247, i32 %248), !dbg !766
  store i32 %249, i32* %ntStatus, align 4, !dbg !767
  %250 = load i32, i32* %disketteExtension__InterfaceString__Buffer, align 4, !dbg !768
  %251 = icmp ne i32 %250, 0, !dbg !769
  br i1 %251, label %252, label %268, !dbg !770

; <label>:252                                     ; preds = %242
  %253 = load i32, i32* %disketteExtension__InterfaceString, align 4, !dbg !771
  %254 = bitcast i32* %3 to i8*, !dbg !772
  call void @llvm.lifetime.start(i64 4, i8* %254), !dbg !772
  %255 = bitcast i32* %4 to i8*, !dbg !772
  call void @llvm.lifetime.start(i64 4, i8* %255), !dbg !772
  %256 = bitcast i32* %5 to i8*, !dbg !772
  call void @llvm.lifetime.start(i64 4, i8* %256), !dbg !772
  %257 = bitcast i32* %tmp_ndt_6.i to i8*, !dbg !772
  call void @llvm.lifetime.start(i64 4, i8* %257), !dbg !772
  store i32 %253, i32* %4, align 4, !dbg !772
  store i32 0, i32* %5, align 4, !dbg !772
  %258 = call i32 @__VERIFIER_nondet_int() #4, !dbg !773
  store i32 %258, i32* %tmp_ndt_6.i, align 4, !dbg !774
  %259 = load i32, i32* %tmp_ndt_6.i, align 4, !dbg !775
  %260 = icmp eq i32 %259, 0, !dbg !777
  br i1 %260, label %261, label %262, !dbg !778

; <label>:261                                     ; preds = %252
  store i32 0, i32* %3, !dbg !779
  br label %IoSetDeviceInterfaceState.exit, !dbg !779

; <label>:262                                     ; preds = %252
  store i32 -1073741823, i32* %3, !dbg !783
  br label %IoSetDeviceInterfaceState.exit, !dbg !783

IoSetDeviceInterfaceState.exit:                   ; preds = %261, %262
  %263 = load i32, i32* %3, !dbg !784
  %264 = bitcast i32* %3 to i8*, !dbg !784
  call void @llvm.lifetime.end(i64 4, i8* %264), !dbg !784
  %265 = bitcast i32* %4 to i8*, !dbg !784
  call void @llvm.lifetime.end(i64 4, i8* %265), !dbg !784
  %266 = bitcast i32* %5 to i8*, !dbg !784
  call void @llvm.lifetime.end(i64 4, i8* %266), !dbg !784
  %267 = bitcast i32* %tmp_ndt_6.i to i8*, !dbg !784
  call void @llvm.lifetime.end(i64 4, i8* %267), !dbg !784
  br label %268, !dbg !785

; <label>:268                                     ; preds = %IoSetDeviceInterfaceState.exit, %242
  %269 = load i32, i32* %disketteExtension__ArcName__Length, align 4, !dbg !786
  %270 = icmp ne i32 %269, 0, !dbg !787
  br i1 %270, label %271, label %285, !dbg !788

; <label>:271                                     ; preds = %268
  %272 = load i32, i32* %disketteExtension__ArcName, align 4, !dbg !789
  %273 = bitcast i32* %1 to i8*, !dbg !790
  call void @llvm.lifetime.start(i64 4, i8* %273), !dbg !790
  %274 = bitcast i32* %2 to i8*, !dbg !790
  call void @llvm.lifetime.start(i64 4, i8* %274), !dbg !790
  %275 = bitcast i32* %tmp_ndt_3.i to i8*, !dbg !790
  call void @llvm.lifetime.start(i64 4, i8* %275), !dbg !790
  store i32 %272, i32* %2, align 4, !dbg !790
  %276 = call i32 @__VERIFIER_nondet_int() #4, !dbg !791
  store i32 %276, i32* %tmp_ndt_3.i, align 4, !dbg !792
  %277 = load i32, i32* %tmp_ndt_3.i, align 4, !dbg !793
  %278 = icmp eq i32 %277, 0, !dbg !795
  br i1 %278, label %279, label %280, !dbg !796

; <label>:279                                     ; preds = %271
  store i32 0, i32* %1, !dbg !797
  br label %IoDeleteSymbolicLink.exit, !dbg !797

; <label>:280                                     ; preds = %271
  store i32 -1073741823, i32* %1, !dbg !801
  br label %IoDeleteSymbolicLink.exit, !dbg !801

IoDeleteSymbolicLink.exit:                        ; preds = %279, %280
  %281 = load i32, i32* %1, !dbg !802
  %282 = bitcast i32* %1 to i8*, !dbg !802
  call void @llvm.lifetime.end(i64 4, i8* %282), !dbg !802
  %283 = bitcast i32* %2 to i8*, !dbg !802
  call void @llvm.lifetime.end(i64 4, i8* %283), !dbg !802
  %284 = bitcast i32* %tmp_ndt_3.i to i8*, !dbg !802
  call void @llvm.lifetime.end(i64 4, i8* %284), !dbg !802
  br label %285, !dbg !803

; <label>:285                                     ; preds = %IoDeleteSymbolicLink.exit, %268
  %286 = load i32, i32* %IoGetConfigurationInformation__FloppyCount, align 4, !dbg !804
  %287 = add nsw i32 %286, -1, !dbg !804
  store i32 %287, i32* %IoGetConfigurationInformation__FloppyCount, align 4, !dbg !804
  br label %304, !dbg !805

; <label>:288                                     ; preds = %78
  %289 = load i32, i32* @s, align 4, !dbg !806
  %290 = load i32, i32* @NP, align 4, !dbg !808
  %291 = icmp eq i32 %289, %290, !dbg !809
  br i1 %291, label %292, label %294, !dbg !810

; <label>:292                                     ; preds = %288
  %293 = load i32, i32* @SKIP1, align 4, !dbg !811
  store i32 %293, i32* @s, align 4, !dbg !813
  br label %295, !dbg !814

; <label>:294                                     ; preds = %288
  call void (...) @__VERIFIER_error() #6, !dbg !815
  unreachable, !dbg !815

errorFn.exit9:                                    ; No predecessors!
  br label %295

; <label>:295                                     ; preds = %errorFn.exit9, %292
  %296 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !819
  %297 = add nsw i32 %296, 1, !dbg !819
  store i32 %297, i32* %Irp__CurrentLocation, align 4, !dbg !819
  %298 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !821
  %299 = add nsw i32 %298, 1, !dbg !821
  store i32 %299, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !821
  %300 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !822
  %301 = load i32, i32* %14, align 4, !dbg !823
  %302 = call i32 @IofCallDriver(i32 %300, i32 %301), !dbg !824
  store i32 %302, i32* %ntStatus, align 4, !dbg !825
  br label %305, !dbg !826

; <label>:303                                     ; preds = %79
  br label %304, !dbg !827

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
  %313 = load i32, i32* @PagingReferenceCount, align 4, !dbg !828
  %314 = add nsw i32 %313, -1, !dbg !828
  store i32 %314, i32* @PagingReferenceCount, align 4, !dbg !828
  %315 = load i32, i32* @PagingReferenceCount, align 4, !dbg !829
  %316 = icmp eq i32 %315, 0, !dbg !831
  br i1 %316, label %317, label %318, !dbg !832

; <label>:317                                     ; preds = %312
  br label %318, !dbg !833

; <label>:318                                     ; preds = %317, %312
  %319 = load i32, i32* %ntStatus, align 4, !dbg !835
  store i32 %319, i32* %12, !dbg !836
  br label %320, !dbg !836

; <label>:320                                     ; preds = %318, %99, %IofCompleteRequest.exit
  %321 = load i32, i32* %12, !dbg !837
  ret i32 %321, !dbg !837
}

; Function Attrs: nounwind ssp uwtable
define void @IofCompleteRequest(i32 %Irp, i32 %PriorityBoost) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %Irp, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !383, metadata !113), !dbg !838
  store i32 %PriorityBoost, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !389, metadata !113), !dbg !839
  %3 = load i32, i32* @s, align 4, !dbg !840
  %4 = load i32, i32* @NP, align 4, !dbg !841
  %5 = icmp eq i32 %3, %4, !dbg !842
  br i1 %5, label %6, label %8, !dbg !843

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* @DC, align 4, !dbg !844
  store i32 %7, i32* @s, align 4, !dbg !845
  br label %9, !dbg !846

; <label>:8                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !847
  unreachable, !dbg !847

errorFn.exit:                                     ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %errorFn.exit, %6
  ret void, !dbg !849
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
  call void @llvm.dbg.declare(metadata i32* %22, metadata !850, metadata !113), !dbg !851
  store i32 %Irp, i32* %23, align 4
  call void @llvm.dbg.declare(metadata i32* %23, metadata !852, metadata !113), !dbg !853
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !854, metadata !113), !dbg !855
  %24 = call i32 @__VERIFIER_nondet_int(), !dbg !856
  store i32 %24, i32* %DeviceObject__DeviceExtension, align 4, !dbg !855
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !857, metadata !113), !dbg !858
  %25 = call i32 @__VERIFIER_nondet_int(), !dbg !859
  store i32 %25, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !858
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !860, metadata !113), !dbg !861
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__TargetObject, metadata !862, metadata !113), !dbg !863
  %26 = call i32 @__VERIFIER_nondet_int(), !dbg !864
  store i32 %26, i32* %disketteExtension__TargetObject, align 4, !dbg !863
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__MaxTransferSize, metadata !865, metadata !113), !dbg !866
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__DriveType, metadata !867, metadata !113), !dbg !868
  %27 = call i32 @__VERIFIER_nondet_int(), !dbg !869
  store i32 %27, i32* %disketteExtension__DriveType, align 4, !dbg !868
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__PerpendicularMode, metadata !870, metadata !113), !dbg !871
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__DeviceUnit, metadata !872, metadata !113), !dbg !873
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__DriveOnValue, metadata !874, metadata !113), !dbg !875
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__UnderlyingPDO, metadata !876, metadata !113), !dbg !877
  %28 = call i32 @__VERIFIER_nondet_int(), !dbg !878
  store i32 %28, i32* %disketteExtension__UnderlyingPDO, align 4, !dbg !877
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__InterfaceString, metadata !879, metadata !113), !dbg !880
  %29 = call i32 @__VERIFIER_nondet_int(), !dbg !881
  store i32 %29, i32* %disketteExtension__InterfaceString, align 4, !dbg !880
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__IsStarted, metadata !882, metadata !113), !dbg !883
  call void @llvm.dbg.declare(metadata i32* %disketteExtension__HoldNewRequests, metadata !884, metadata !113), !dbg !885
  call void @llvm.dbg.declare(metadata i32* %ntStatus, metadata !886, metadata !113), !dbg !887
  call void @llvm.dbg.declare(metadata i32* %pnpStatus, metadata !888, metadata !113), !dbg !889
  call void @llvm.dbg.declare(metadata i32* %doneEvent, metadata !890, metadata !113), !dbg !891
  %30 = call i32 @__VERIFIER_nondet_int(), !dbg !892
  store i32 %30, i32* %doneEvent, align 4, !dbg !891
  call void @llvm.dbg.declare(metadata i32* %fdcInfo, metadata !893, metadata !113), !dbg !894
  %31 = call i32 @__VERIFIER_nondet_int(), !dbg !895
  store i32 %31, i32* %fdcInfo, align 4, !dbg !894
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__BufferCount, metadata !896, metadata !113), !dbg !897
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__BufferSize, metadata !898, metadata !113), !dbg !899
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__MaxTransferSize, metadata !900, metadata !113), !dbg !901
  %32 = call i32 @__VERIFIER_nondet_int(), !dbg !902
  store i32 %32, i32* %fdcInfo__MaxTransferSize, align 4, !dbg !901
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__AcpiBios, metadata !903, metadata !113), !dbg !904
  %33 = call i32 @__VERIFIER_nondet_int(), !dbg !905
  store i32 %33, i32* %fdcInfo__AcpiBios, align 4, !dbg !904
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__AcpiFdiSupported, metadata !906, metadata !113), !dbg !907
  %34 = call i32 @__VERIFIER_nondet_int(), !dbg !908
  store i32 %34, i32* %fdcInfo__AcpiFdiSupported, align 4, !dbg !907
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__PeripheralNumber, metadata !909, metadata !113), !dbg !910
  %35 = call i32 @__VERIFIER_nondet_int(), !dbg !911
  store i32 %35, i32* %fdcInfo__PeripheralNumber, align 4, !dbg !910
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__BusType, metadata !912, metadata !113), !dbg !913
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__ControllerNumber, metadata !914, metadata !113), !dbg !915
  %36 = call i32 @__VERIFIER_nondet_int(), !dbg !916
  store i32 %36, i32* %fdcInfo__ControllerNumber, align 4, !dbg !915
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__UnitNumber, metadata !917, metadata !113), !dbg !918
  %37 = call i32 @__VERIFIER_nondet_int(), !dbg !919
  store i32 %37, i32* %fdcInfo__UnitNumber, align 4, !dbg !918
  call void @llvm.dbg.declare(metadata i32* %fdcInfo__BusNumber, metadata !920, metadata !113), !dbg !921
  %38 = call i32 @__VERIFIER_nondet_int(), !dbg !922
  store i32 %38, i32* %fdcInfo__BusNumber, align 4, !dbg !921
  call void @llvm.dbg.declare(metadata i32* %Dc, metadata !923, metadata !113), !dbg !924
  call void @llvm.dbg.declare(metadata i32* %Fp, metadata !925, metadata !113), !dbg !926
  call void @llvm.dbg.declare(metadata i32* %disketteExtension, metadata !927, metadata !113), !dbg !928
  call void @llvm.dbg.declare(metadata i32* %irpSp, metadata !929, metadata !113), !dbg !930
  call void @llvm.dbg.declare(metadata i32* %irpSp___0, metadata !931, metadata !113), !dbg !932
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp, metadata !933, metadata !113), !dbg !934
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp__Control, metadata !935, metadata !113), !dbg !936
  call void @llvm.dbg.declare(metadata i32* %irpSp___1, metadata !937, metadata !113), !dbg !938
  call void @llvm.dbg.declare(metadata i32* %irpSp__Control, metadata !939, metadata !113), !dbg !940
  call void @llvm.dbg.declare(metadata i32* %irpSp__Context, metadata !941, metadata !113), !dbg !942
  call void @llvm.dbg.declare(metadata i32* %InterfaceType, metadata !943, metadata !113), !dbg !944
  call void @llvm.dbg.declare(metadata i32* %KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86, metadata !945, metadata !113), !dbg !946
  %39 = call i32 @__VERIFIER_nondet_int(), !dbg !947
  store i32 %39, i32* %KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86, align 4, !dbg !946
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp42, metadata !948, metadata !113), !dbg !949
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp43, metadata !950, metadata !113), !dbg !951
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp44, metadata !952, metadata !113), !dbg !953
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp45, metadata !954, metadata !113), !dbg !955
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp46, metadata !956, metadata !113), !dbg !957
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp47, metadata !958, metadata !113), !dbg !959
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp48, metadata !960, metadata !113), !dbg !961
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp49, metadata !962, metadata !113), !dbg !963
  %40 = load i32, i32* @DiskController, align 4, !dbg !964
  store i32 %40, i32* %Dc, align 4, !dbg !966
  %41 = load i32, i32* @FloppyDiskPeripheral, align 4, !dbg !967
  store i32 %41, i32* %Fp, align 4, !dbg !968
  %42 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !969
  store i32 %42, i32* %disketteExtension, align 4, !dbg !970
  %43 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !971
  store i32 %43, i32* %irpSp, align 4, !dbg !972
  %44 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !973
  store i32 %44, i32* %irpSp___0, align 4, !dbg !974
  %45 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !975
  %46 = sub nsw i32 %45, 1, !dbg !976
  store i32 %46, i32* %nextIrpSp, align 4, !dbg !977
  store i32 0, i32* %nextIrpSp__Control, align 4, !dbg !978
  %47 = load i32, i32* @s, align 4, !dbg !979
  %48 = load i32, i32* @NP, align 4, !dbg !981
  %49 = icmp ne i32 %47, %48, !dbg !982
  call void @llvm.dbg.declare(metadata i32* %20, metadata !112, metadata !113), !dbg !983
  call void @llvm.dbg.declare(metadata i32* %21, metadata !115, metadata !113), !dbg !992
  call void @llvm.dbg.declare(metadata i32* %18, metadata !383, metadata !113), !dbg !993
  call void @llvm.dbg.declare(metadata i32* %19, metadata !389, metadata !113), !dbg !996
  call void @llvm.dbg.declare(metadata i32* %10, metadata !997, metadata !113), !dbg !998
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1004, metadata !113), !dbg !1005
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1006, metadata !113), !dbg !1007
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1008, metadata !113), !dbg !1009
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1010, metadata !113), !dbg !1011
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1012, metadata !113), !dbg !1013
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1014, metadata !113), !dbg !1015
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1016, metadata !113), !dbg !1017
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_4.i, metadata !1018, metadata !113), !dbg !1020
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1021, metadata !113), !dbg !1022
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1027, metadata !113), !dbg !1028
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1029, metadata !113), !dbg !1030
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1031, metadata !113), !dbg !1032
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_5.i, metadata !1033, metadata !113), !dbg !1035
  call void @llvm.dbg.declare(metadata i32* %2, metadata !420, metadata !113), !dbg !1036
  call void @llvm.dbg.declare(metadata i32* %3, metadata !426, metadata !113), !dbg !1041
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_6.i, metadata !428, metadata !113), !dbg !1042
  br i1 %49, label %50, label %51, !dbg !1043

; <label>:50                                      ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !1044
  unreachable, !dbg !1044

errorFn.exit:                                     ; No predecessors!
  br label %57, !dbg !1048

; <label>:51                                      ; preds = %0
  %52 = load i32, i32* @compRegistered, align 4, !dbg !1049
  %53 = icmp ne i32 %52, 0, !dbg !1052
  br i1 %53, label %54, label %55, !dbg !1053

; <label>:54                                      ; preds = %51
  call void (...) @__VERIFIER_error() #6, !dbg !1054
  unreachable, !dbg !1054

errorFn.exit1:                                    ; No predecessors!
  br label %56, !dbg !1058

; <label>:55                                      ; preds = %51
  store i32 1, i32* @compRegistered, align 4, !dbg !1059
  br label %56

; <label>:56                                      ; preds = %55, %errorFn.exit1
  br label %57

; <label>:57                                      ; preds = %56, %errorFn.exit
  %58 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1061
  %59 = sub nsw i32 %58, 1, !dbg !1063
  store i32 %59, i32* %irpSp___1, align 4, !dbg !1064
  %60 = load i32, i32* %doneEvent, align 4, !dbg !1065
  store i32 %60, i32* %irpSp__Context, align 4, !dbg !1066
  store i32 224, i32* %irpSp__Control, align 4, !dbg !1067
  %61 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !1068
  %62 = load i32, i32* %23, align 4, !dbg !1069
  %63 = call i32 @IofCallDriver(i32 %61, i32 %62), !dbg !1070
  store i32 %63, i32* %ntStatus, align 4, !dbg !1071
  %64 = load i32, i32* %ntStatus, align 4, !dbg !1072
  %65 = sext i32 %64 to i64, !dbg !1074
  store i64 %65, i64* %__cil_tmp42, align 8, !dbg !1075
  %66 = load i64, i64* %__cil_tmp42, align 8, !dbg !1076
  %67 = icmp eq i64 %66, 259, !dbg !1078
  br i1 %67, label %68, label %74, !dbg !1079

; <label>:68                                      ; preds = %57
  %69 = load i32, i32* %doneEvent, align 4, !dbg !1080
  %70 = load i32, i32* @Executive, align 4, !dbg !1083
  %71 = load i32, i32* @KernelMode, align 4, !dbg !1084
  %72 = call i32 @KeWaitForSingleObject(i32 %69, i32 %70, i32 %71, i32 0, i32 0), !dbg !1085
  store i32 %72, i32* %ntStatus, align 4, !dbg !1086
  %73 = load i32, i32* @myStatus, align 4, !dbg !1087
  store i32 %73, i32* %ntStatus, align 4, !dbg !1088
  br label %74, !dbg !1089

; <label>:74                                      ; preds = %68, %57
  store i32 0, i32* %fdcInfo__BufferCount, align 4, !dbg !1090
  store i32 0, i32* %fdcInfo__BufferSize, align 4, !dbg !1092
  store i32 3080, i32* %__cil_tmp43, align 4, !dbg !1093
  store i32 458752, i32* %__cil_tmp44, align 4, !dbg !1093
  store i32 461832, i32* %__cil_tmp45, align 4, !dbg !1093
  store i32 461835, i32* %__cil_tmp46, align 4, !dbg !1093
  %75 = load i32, i32* %disketteExtension__TargetObject, align 4, !dbg !1094
  %76 = load i32, i32* %__cil_tmp46, align 4, !dbg !1095
  %77 = load i32, i32* %fdcInfo, align 4, !dbg !1096
  %78 = call i32 @FlFdcDeviceIo(i32 %75, i32 %76, i32 %77), !dbg !1097
  store i32 %78, i32* %ntStatus, align 4, !dbg !1098
  %79 = load i32, i32* %ntStatus, align 4, !dbg !1099
  %80 = icmp sge i32 %79, 0, !dbg !1100
  br i1 %80, label %81, label %209, !dbg !1101

; <label>:81                                      ; preds = %74
  %82 = load i32, i32* %fdcInfo__MaxTransferSize, align 4, !dbg !1102
  store i32 %82, i32* %disketteExtension__MaxTransferSize, align 4, !dbg !1103
  %83 = load i32, i32* %fdcInfo__AcpiBios, align 4, !dbg !1104
  %84 = icmp ne i32 %83, 0, !dbg !1104
  br i1 %84, label %85, label %101, !dbg !1105

; <label>:85                                      ; preds = %81
  %86 = load i32, i32* %fdcInfo__AcpiFdiSupported, align 4, !dbg !1106
  %87 = icmp ne i32 %86, 0, !dbg !1106
  br i1 %87, label %88, label %99, !dbg !1107

; <label>:88                                      ; preds = %85
  %89 = load i32, i32* %disketteExtension, align 4, !dbg !1108
  %90 = load i32, i32* %fdcInfo, align 4, !dbg !1109
  %91 = bitcast i32* %20 to i8*, !dbg !1110
  call void @llvm.lifetime.start(i64 4, i8* %91), !dbg !1110
  %92 = bitcast i32* %21 to i8*, !dbg !1110
  call void @llvm.lifetime.start(i64 4, i8* %92), !dbg !1110
  store i32 %89, i32* %20, align 4, !dbg !1110
  store i32 %90, i32* %21, align 4, !dbg !1110
  %93 = bitcast i32* %20 to i8*, !dbg !1111
  call void @llvm.lifetime.end(i64 4, i8* %93), !dbg !1111
  %94 = bitcast i32* %21 to i8*, !dbg !1111
  call void @llvm.lifetime.end(i64 4, i8* %94), !dbg !1111
  store i32 0, i32* %ntStatus, align 4, !dbg !1112
  %95 = load i32, i32* %disketteExtension__DriveType, align 4, !dbg !1113
  %96 = icmp eq i32 %95, 4, !dbg !1115
  br i1 %96, label %97, label %98, !dbg !1116

; <label>:97                                      ; preds = %88
  br label %98, !dbg !1117

; <label>:98                                      ; preds = %97, %88
  br label %100, !dbg !1119

; <label>:99                                      ; preds = %85
  br label %102, !dbg !1120

; <label>:100                                     ; preds = %98
  br label %157, !dbg !1122

; <label>:101                                     ; preds = %81
  br label %102, !dbg !1123

; <label>:102                                     ; preds = %101, %99
  %103 = load i32, i32* %disketteExtension__DriveType, align 4, !dbg !1124
  %104 = icmp eq i32 %103, 4, !dbg !1126
  br i1 %104, label %105, label %106, !dbg !1127

; <label>:105                                     ; preds = %102
  br label %106, !dbg !1128

; <label>:106                                     ; preds = %105, %102
  store i32 0, i32* %InterfaceType, align 4, !dbg !1130
  br label %107, !dbg !1131

; <label>:107                                     ; preds = %152, %106
  br label %108, !dbg !1132

; <label>:108                                     ; preds = %107
  %109 = load i32, i32* %InterfaceType, align 4, !dbg !1133
  %110 = load i32, i32* @MaximumInterfaceType, align 4, !dbg !1135
  %111 = icmp sge i32 %109, %110, !dbg !1136
  br i1 %111, label %112, label %113, !dbg !1137

; <label>:112                                     ; preds = %108
  br label %156, !dbg !1138

; <label>:113                                     ; preds = %108
  %114 = load i32, i32* %InterfaceType, align 4, !dbg !1140
  store i32 %114, i32* %fdcInfo__BusType, align 4, !dbg !1141
  %115 = load i32, i32* %fdcInfo__BusType, align 4, !dbg !1142
  %116 = load i32, i32* %fdcInfo__BusNumber, align 4, !dbg !1143
  %117 = load i32, i32* %Dc, align 4, !dbg !1144
  %118 = load i32, i32* %fdcInfo__ControllerNumber, align 4, !dbg !1145
  %119 = load i32, i32* %Fp, align 4, !dbg !1146
  %120 = load i32, i32* %fdcInfo__PeripheralNumber, align 4, !dbg !1147
  %121 = load i32, i32* @FlConfigCallBack, align 4, !dbg !1148
  %122 = load i32, i32* %disketteExtension, align 4, !dbg !1149
  %123 = bitcast i32* %9 to i8*, !dbg !1150
  call void @llvm.lifetime.start(i64 4, i8* %123), !dbg !1150
  %124 = bitcast i32* %10 to i8*, !dbg !1150
  call void @llvm.lifetime.start(i64 4, i8* %124), !dbg !1150
  %125 = bitcast i32* %11 to i8*, !dbg !1150
  call void @llvm.lifetime.start(i64 4, i8* %125), !dbg !1150
  %126 = bitcast i32* %12 to i8*, !dbg !1150
  call void @llvm.lifetime.start(i64 4, i8* %126), !dbg !1150
  %127 = bitcast i32* %13 to i8*, !dbg !1150
  call void @llvm.lifetime.start(i64 4, i8* %127), !dbg !1150
  %128 = bitcast i32* %14 to i8*, !dbg !1150
  call void @llvm.lifetime.start(i64 4, i8* %128), !dbg !1150
  %129 = bitcast i32* %15 to i8*, !dbg !1150
  call void @llvm.lifetime.start(i64 4, i8* %129), !dbg !1150
  %130 = bitcast i32* %16 to i8*, !dbg !1150
  call void @llvm.lifetime.start(i64 4, i8* %130), !dbg !1150
  %131 = bitcast i32* %17 to i8*, !dbg !1150
  call void @llvm.lifetime.start(i64 4, i8* %131), !dbg !1150
  %132 = bitcast i32* %tmp_ndt_4.i to i8*, !dbg !1150
  call void @llvm.lifetime.start(i64 4, i8* %132), !dbg !1150
  store i32 %115, i32* %10, align 4, !dbg !1150
  store i32 %116, i32* %11, align 4, !dbg !1150
  store i32 %117, i32* %12, align 4, !dbg !1150
  store i32 %118, i32* %13, align 4, !dbg !1150
  store i32 %119, i32* %14, align 4, !dbg !1150
  store i32 %120, i32* %15, align 4, !dbg !1150
  store i32 %121, i32* %16, align 4, !dbg !1150
  store i32 %122, i32* %17, align 4, !dbg !1150
  %133 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1151
  store i32 %133, i32* %tmp_ndt_4.i, align 4, !dbg !1152
  %134 = load i32, i32* %tmp_ndt_4.i, align 4, !dbg !1153
  %135 = icmp eq i32 %134, 0, !dbg !1155
  br i1 %135, label %136, label %137, !dbg !1156

; <label>:136                                     ; preds = %113
  store i32 0, i32* %9, !dbg !1157
  br label %IoQueryDeviceDescription.exit, !dbg !1157

; <label>:137                                     ; preds = %113
  store i32 -1073741823, i32* %9, !dbg !1161
  br label %IoQueryDeviceDescription.exit, !dbg !1161

IoQueryDeviceDescription.exit:                    ; preds = %136, %137
  %138 = load i32, i32* %9, !dbg !1162
  %139 = bitcast i32* %9 to i8*, !dbg !1162
  call void @llvm.lifetime.end(i64 4, i8* %139), !dbg !1162
  %140 = bitcast i32* %10 to i8*, !dbg !1162
  call void @llvm.lifetime.end(i64 4, i8* %140), !dbg !1162
  %141 = bitcast i32* %11 to i8*, !dbg !1162
  call void @llvm.lifetime.end(i64 4, i8* %141), !dbg !1162
  %142 = bitcast i32* %12 to i8*, !dbg !1162
  call void @llvm.lifetime.end(i64 4, i8* %142), !dbg !1162
  %143 = bitcast i32* %13 to i8*, !dbg !1162
  call void @llvm.lifetime.end(i64 4, i8* %143), !dbg !1162
  %144 = bitcast i32* %14 to i8*, !dbg !1162
  call void @llvm.lifetime.end(i64 4, i8* %144), !dbg !1162
  %145 = bitcast i32* %15 to i8*, !dbg !1162
  call void @llvm.lifetime.end(i64 4, i8* %145), !dbg !1162
  %146 = bitcast i32* %16 to i8*, !dbg !1162
  call void @llvm.lifetime.end(i64 4, i8* %146), !dbg !1162
  %147 = bitcast i32* %17 to i8*, !dbg !1162
  call void @llvm.lifetime.end(i64 4, i8* %147), !dbg !1162
  %148 = bitcast i32* %tmp_ndt_4.i to i8*, !dbg !1162
  call void @llvm.lifetime.end(i64 4, i8* %148), !dbg !1162
  store i32 %138, i32* %ntStatus, align 4, !dbg !1163
  %149 = load i32, i32* %ntStatus, align 4, !dbg !1164
  %150 = icmp sge i32 %149, 0, !dbg !1166
  br i1 %150, label %151, label %152, !dbg !1167

; <label>:151                                     ; preds = %IoQueryDeviceDescription.exit
  br label %156, !dbg !1168

; <label>:152                                     ; preds = %IoQueryDeviceDescription.exit
  %153 = load i32, i32* %InterfaceType, align 4, !dbg !1170
  %154 = add nsw i32 %153, 1, !dbg !1170
  store i32 %154, i32* %InterfaceType, align 4, !dbg !1170
  br label %107, !dbg !1131
                                                  ; No predecessors!
  br label %156, !dbg !1171

; <label>:156                                     ; preds = %155, %151, %112
  br label %157

; <label>:157                                     ; preds = %156, %100
  %158 = load i32, i32* %ntStatus, align 4, !dbg !1172
  %159 = icmp sge i32 %158, 0, !dbg !1173
  br i1 %159, label %160, label %208, !dbg !1174

; <label>:160                                     ; preds = %157
  %161 = load i32, i32* %KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86, align 4, !dbg !1175
  %162 = icmp ne i32 %161, 0, !dbg !1177
  br i1 %162, label %163, label %165, !dbg !1178

; <label>:163                                     ; preds = %160
  %164 = load i32, i32* %fdcInfo__UnitNumber, align 4, !dbg !1179
  store i32 %164, i32* %disketteExtension__DeviceUnit, align 4, !dbg !1181
  br label %167, !dbg !1182

; <label>:165                                     ; preds = %160
  %166 = load i32, i32* %fdcInfo__PeripheralNumber, align 4, !dbg !1183
  store i32 %166, i32* %disketteExtension__DeviceUnit, align 4, !dbg !1185
  br label %167

; <label>:167                                     ; preds = %165, %163
  %168 = load i32, i32* %disketteExtension__UnderlyingPDO, align 4, !dbg !1186
  %169 = load i32, i32* @MOUNTDEV_MOUNTED_DEVICE_GUID, align 4, !dbg !1187
  %170 = load i32, i32* %disketteExtension__InterfaceString, align 4, !dbg !1188
  %171 = bitcast i32* %4 to i8*, !dbg !1189
  call void @llvm.lifetime.start(i64 4, i8* %171), !dbg !1189
  %172 = bitcast i32* %5 to i8*, !dbg !1189
  call void @llvm.lifetime.start(i64 4, i8* %172), !dbg !1189
  %173 = bitcast i32* %6 to i8*, !dbg !1189
  call void @llvm.lifetime.start(i64 4, i8* %173), !dbg !1189
  %174 = bitcast i32* %7 to i8*, !dbg !1189
  call void @llvm.lifetime.start(i64 4, i8* %174), !dbg !1189
  %175 = bitcast i32* %8 to i8*, !dbg !1189
  call void @llvm.lifetime.start(i64 4, i8* %175), !dbg !1189
  %176 = bitcast i32* %tmp_ndt_5.i to i8*, !dbg !1189
  call void @llvm.lifetime.start(i64 4, i8* %176), !dbg !1189
  store i32 %168, i32* %5, align 4, !dbg !1189
  store i32 %169, i32* %6, align 4, !dbg !1189
  store i32 0, i32* %7, align 4, !dbg !1189
  store i32 %170, i32* %8, align 4, !dbg !1189
  %177 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1190
  store i32 %177, i32* %tmp_ndt_5.i, align 4, !dbg !1191
  %178 = load i32, i32* %tmp_ndt_5.i, align 4, !dbg !1192
  %179 = icmp eq i32 %178, 0, !dbg !1194
  br i1 %179, label %180, label %181, !dbg !1195

; <label>:180                                     ; preds = %167
  store i32 0, i32* %4, !dbg !1196
  br label %IoRegisterDeviceInterface.exit, !dbg !1196

; <label>:181                                     ; preds = %167
  store i32 -1073741808, i32* %4, !dbg !1200
  br label %IoRegisterDeviceInterface.exit, !dbg !1200

IoRegisterDeviceInterface.exit:                   ; preds = %180, %181
  %182 = load i32, i32* %4, !dbg !1201
  %183 = bitcast i32* %4 to i8*, !dbg !1201
  call void @llvm.lifetime.end(i64 4, i8* %183), !dbg !1201
  %184 = bitcast i32* %5 to i8*, !dbg !1201
  call void @llvm.lifetime.end(i64 4, i8* %184), !dbg !1201
  %185 = bitcast i32* %6 to i8*, !dbg !1201
  call void @llvm.lifetime.end(i64 4, i8* %185), !dbg !1201
  %186 = bitcast i32* %7 to i8*, !dbg !1201
  call void @llvm.lifetime.end(i64 4, i8* %186), !dbg !1201
  %187 = bitcast i32* %8 to i8*, !dbg !1201
  call void @llvm.lifetime.end(i64 4, i8* %187), !dbg !1201
  %188 = bitcast i32* %tmp_ndt_5.i to i8*, !dbg !1201
  call void @llvm.lifetime.end(i64 4, i8* %188), !dbg !1201
  store i32 %182, i32* %pnpStatus, align 4, !dbg !1202
  %189 = load i32, i32* %pnpStatus, align 4, !dbg !1203
  %190 = icmp sge i32 %189, 0, !dbg !1204
  br i1 %190, label %191, label %207, !dbg !1205

; <label>:191                                     ; preds = %IoRegisterDeviceInterface.exit
  %192 = load i32, i32* %disketteExtension__InterfaceString, align 4, !dbg !1206
  %193 = bitcast i32* %1 to i8*, !dbg !1207
  call void @llvm.lifetime.start(i64 4, i8* %193), !dbg !1207
  %194 = bitcast i32* %2 to i8*, !dbg !1207
  call void @llvm.lifetime.start(i64 4, i8* %194), !dbg !1207
  %195 = bitcast i32* %3 to i8*, !dbg !1207
  call void @llvm.lifetime.start(i64 4, i8* %195), !dbg !1207
  %196 = bitcast i32* %tmp_ndt_6.i to i8*, !dbg !1207
  call void @llvm.lifetime.start(i64 4, i8* %196), !dbg !1207
  store i32 %192, i32* %2, align 4, !dbg !1207
  store i32 1, i32* %3, align 4, !dbg !1207
  %197 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1208
  store i32 %197, i32* %tmp_ndt_6.i, align 4, !dbg !1209
  %198 = load i32, i32* %tmp_ndt_6.i, align 4, !dbg !1210
  %199 = icmp eq i32 %198, 0, !dbg !1211
  br i1 %199, label %200, label %201, !dbg !1212

; <label>:200                                     ; preds = %191
  store i32 0, i32* %1, !dbg !1213
  br label %IoSetDeviceInterfaceState.exit, !dbg !1213

; <label>:201                                     ; preds = %191
  store i32 -1073741823, i32* %1, !dbg !1214
  br label %IoSetDeviceInterfaceState.exit, !dbg !1214

IoSetDeviceInterfaceState.exit:                   ; preds = %200, %201
  %202 = load i32, i32* %1, !dbg !1215
  %203 = bitcast i32* %1 to i8*, !dbg !1215
  call void @llvm.lifetime.end(i64 4, i8* %203), !dbg !1215
  %204 = bitcast i32* %2 to i8*, !dbg !1215
  call void @llvm.lifetime.end(i64 4, i8* %204), !dbg !1215
  %205 = bitcast i32* %3 to i8*, !dbg !1215
  call void @llvm.lifetime.end(i64 4, i8* %205), !dbg !1215
  %206 = bitcast i32* %tmp_ndt_6.i to i8*, !dbg !1215
  call void @llvm.lifetime.end(i64 4, i8* %206), !dbg !1215
  store i32 %202, i32* %pnpStatus, align 4, !dbg !1216
  br label %207, !dbg !1217

; <label>:207                                     ; preds = %IoSetDeviceInterfaceState.exit, %IoRegisterDeviceInterface.exit
  store i32 1, i32* %disketteExtension__IsStarted, align 4, !dbg !1218
  store i32 0, i32* %disketteExtension__HoldNewRequests, align 4, !dbg !1219
  br label %208, !dbg !1220

; <label>:208                                     ; preds = %207, %157
  br label %209, !dbg !1221

; <label>:209                                     ; preds = %208, %74
  %210 = load i32, i32* %ntStatus, align 4, !dbg !1222
  store i32 %210, i32* %Irp__IoStatus__Status, align 4, !dbg !1223
  %211 = load i32, i32* %ntStatus, align 4, !dbg !1224
  store i32 %211, i32* @myStatus, align 4, !dbg !1225
  %212 = load i32, i32* %23, align 4, !dbg !1226
  %213 = bitcast i32* %18 to i8*, !dbg !1227
  call void @llvm.lifetime.start(i64 4, i8* %213), !dbg !1227
  %214 = bitcast i32* %19 to i8*, !dbg !1227
  call void @llvm.lifetime.start(i64 4, i8* %214), !dbg !1227
  store i32 %212, i32* %18, align 4, !dbg !1227
  store i32 0, i32* %19, align 4, !dbg !1227
  %215 = load i32, i32* @s, align 4, !dbg !1228
  %216 = load i32, i32* @NP, align 4, !dbg !1229
  %217 = icmp eq i32 %215, %216, !dbg !1230
  br i1 %217, label %IofCompleteRequest.exit, label %218, !dbg !1231

; <label>:218                                     ; preds = %209
  call void (...) @__VERIFIER_error() #6, !dbg !1232
  unreachable, !dbg !1232

IofCompleteRequest.exit:                          ; preds = %209
  %219 = load i32, i32* @DC, align 4, !dbg !1234
  store i32 %219, i32* @s, align 4, !dbg !1235
  %220 = bitcast i32* %18 to i8*, !dbg !1236
  call void @llvm.lifetime.end(i64 4, i8* %220), !dbg !1236
  %221 = bitcast i32* %19 to i8*, !dbg !1236
  call void @llvm.lifetime.end(i64 4, i8* %221), !dbg !1236
  %222 = load i32, i32* %ntStatus, align 4, !dbg !1237
  ret i32 %222, !dbg !1238
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
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1239, metadata !113), !dbg !1240
  store i32 %Irp, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1241, metadata !113), !dbg !1242
  store i32 %Context, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1243, metadata !113), !dbg !1244
  %7 = load i32, i32* %6, align 4, !dbg !1245
  %8 = bitcast i32* %1 to i8*, !dbg !1248
  call void @llvm.lifetime.start(i64 4, i8* %8), !dbg !1248
  %9 = bitcast i32* %2 to i8*, !dbg !1248
  call void @llvm.lifetime.start(i64 4, i8* %9), !dbg !1248
  %10 = bitcast i32* %3 to i8*, !dbg !1248
  call void @llvm.lifetime.start(i64 4, i8* %10), !dbg !1248
  %11 = bitcast i32* %l.i to i8*, !dbg !1248
  call void @llvm.lifetime.start(i64 4, i8* %11), !dbg !1248
  store i32 %7, i32* %1, align 4, !dbg !1248
  store i32 1, i32* %2, align 4, !dbg !1248
  store i32 0, i32* %3, align 4, !dbg !1248
  %12 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1249
  store i32 %12, i32* %l.i, align 4, !dbg !1251
  store i32 1, i32* @setEventCalled, align 4, !dbg !1252
  %13 = load i32, i32* %l.i, align 4, !dbg !1254
  %14 = bitcast i32* %1 to i8*, !dbg !1255
  call void @llvm.lifetime.end(i64 4, i8* %14), !dbg !1255
  %15 = bitcast i32* %2 to i8*, !dbg !1255
  call void @llvm.lifetime.end(i64 4, i8* %15), !dbg !1255
  %16 = bitcast i32* %3 to i8*, !dbg !1255
  call void @llvm.lifetime.end(i64 4, i8* %16), !dbg !1255
  %17 = bitcast i32* %l.i to i8*, !dbg !1255
  call void @llvm.lifetime.end(i64 4, i8* %17), !dbg !1255
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1256, metadata !113), !dbg !1257
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1258, metadata !113), !dbg !1259
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1260, metadata !113), !dbg !1261
  call void @llvm.dbg.declare(metadata i32* %l.i, metadata !1262, metadata !113), !dbg !1251
  ret i32 -1073741802, !dbg !1263
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
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1264, metadata !113), !dbg !1265
  store i32 %Ioctl, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1266, metadata !113), !dbg !1267
  store i32 %Data, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1268, metadata !113), !dbg !1269
  call void @llvm.dbg.declare(metadata i32* %ntStatus, metadata !1270, metadata !113), !dbg !1271
  call void @llvm.dbg.declare(metadata i32* %irp, metadata !1272, metadata !113), !dbg !1273
  call void @llvm.dbg.declare(metadata i32* %irpStack, metadata !1274, metadata !113), !dbg !1275
  call void @llvm.dbg.declare(metadata i32* %doneEvent, metadata !1276, metadata !113), !dbg !1277
  %15 = call i32 @__VERIFIER_nondet_int(), !dbg !1278
  store i32 %15, i32* %doneEvent, align 4, !dbg !1277
  call void @llvm.dbg.declare(metadata i32* %ioStatus, metadata !1279, metadata !113), !dbg !1280
  %16 = call i32 @__VERIFIER_nondet_int(), !dbg !1281
  store i32 %16, i32* %ioStatus, align 4, !dbg !1280
  call void @llvm.dbg.declare(metadata i32* %irp__Tail__Overlay__CurrentStackLocation, metadata !1282, metadata !113), !dbg !1283
  %17 = call i32 @__VERIFIER_nondet_int(), !dbg !1284
  store i32 %17, i32* %irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1283
  call void @llvm.dbg.declare(metadata i32* %irpStack__Parameters__DeviceIoControl__Type3InputBuffer, metadata !1285, metadata !113), !dbg !1286
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp11, metadata !1287, metadata !113), !dbg !1288
  %18 = load i32, i32* %13, align 4, !dbg !1289
  %19 = load i32, i32* %12, align 4, !dbg !1292
  %20 = load i32, i32* %doneEvent, align 4, !dbg !1293
  %21 = load i32, i32* %ioStatus, align 4, !dbg !1294
  %22 = bitcast i32* %1 to i8*, !dbg !1295
  call void @llvm.lifetime.start(i64 4, i8* %22), !dbg !1295
  %23 = bitcast i32* %2 to i8*, !dbg !1295
  call void @llvm.lifetime.start(i64 4, i8* %23), !dbg !1295
  %24 = bitcast i32* %3 to i8*, !dbg !1295
  call void @llvm.lifetime.start(i64 4, i8* %24), !dbg !1295
  %25 = bitcast i32* %4 to i8*, !dbg !1295
  call void @llvm.lifetime.start(i64 4, i8* %25), !dbg !1295
  %26 = bitcast i32* %5 to i8*, !dbg !1295
  call void @llvm.lifetime.start(i64 4, i8* %26), !dbg !1295
  %27 = bitcast i32* %6 to i8*, !dbg !1295
  call void @llvm.lifetime.start(i64 4, i8* %27), !dbg !1295
  %28 = bitcast i32* %7 to i8*, !dbg !1295
  call void @llvm.lifetime.start(i64 4, i8* %28), !dbg !1295
  %29 = bitcast i32* %8 to i8*, !dbg !1295
  call void @llvm.lifetime.start(i64 4, i8* %29), !dbg !1295
  %30 = bitcast i32* %9 to i8*, !dbg !1295
  call void @llvm.lifetime.start(i64 4, i8* %30), !dbg !1295
  %31 = bitcast i32* %10 to i8*, !dbg !1295
  call void @llvm.lifetime.start(i64 4, i8* %31), !dbg !1295
  %32 = bitcast i32* %malloc.i to i8*, !dbg !1295
  call void @llvm.lifetime.start(i64 4, i8* %32), !dbg !1295
  %33 = bitcast i32* %tmp_ndt_2.i to i8*, !dbg !1295
  call void @llvm.lifetime.start(i64 4, i8* %33), !dbg !1295
  store i32 %18, i32* %2, align 4, !dbg !1295
  store i32 %19, i32* %3, align 4, !dbg !1295
  store i32 0, i32* %4, align 4, !dbg !1295
  store i32 0, i32* %5, align 4, !dbg !1295
  store i32 0, i32* %6, align 4, !dbg !1295
  store i32 0, i32* %7, align 4, !dbg !1295
  store i32 1, i32* %8, align 4, !dbg !1295
  store i32 %20, i32* %9, align 4, !dbg !1295
  store i32 %21, i32* %10, align 4, !dbg !1295
  %34 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1296
  store i32 %34, i32* %malloc.i, align 4, !dbg !1298
  store i32 1, i32* @customIrp, align 4, !dbg !1299
  %35 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1301
  store i32 %35, i32* %tmp_ndt_2.i, align 4, !dbg !1302
  %36 = load i32, i32* %tmp_ndt_2.i, align 4, !dbg !1303
  %37 = icmp eq i32 %36, 0, !dbg !1305
  br i1 %37, label %38, label %40, !dbg !1306

; <label>:38                                      ; preds = %0
  %39 = load i32, i32* %malloc.i, align 4, !dbg !1307
  store i32 %39, i32* %1, !dbg !1311
  br label %IoBuildDeviceIoControlRequest.exit, !dbg !1311

; <label>:40                                      ; preds = %0
  store i32 0, i32* %1, !dbg !1312
  br label %IoBuildDeviceIoControlRequest.exit, !dbg !1312

IoBuildDeviceIoControlRequest.exit:               ; preds = %38, %40
  %41 = load i32, i32* %1, !dbg !1313
  %42 = bitcast i32* %1 to i8*, !dbg !1313
  call void @llvm.lifetime.end(i64 4, i8* %42), !dbg !1313
  %43 = bitcast i32* %2 to i8*, !dbg !1313
  call void @llvm.lifetime.end(i64 4, i8* %43), !dbg !1313
  %44 = bitcast i32* %3 to i8*, !dbg !1313
  call void @llvm.lifetime.end(i64 4, i8* %44), !dbg !1313
  %45 = bitcast i32* %4 to i8*, !dbg !1313
  call void @llvm.lifetime.end(i64 4, i8* %45), !dbg !1313
  %46 = bitcast i32* %5 to i8*, !dbg !1313
  call void @llvm.lifetime.end(i64 4, i8* %46), !dbg !1313
  %47 = bitcast i32* %6 to i8*, !dbg !1313
  call void @llvm.lifetime.end(i64 4, i8* %47), !dbg !1313
  %48 = bitcast i32* %7 to i8*, !dbg !1313
  call void @llvm.lifetime.end(i64 4, i8* %48), !dbg !1313
  %49 = bitcast i32* %8 to i8*, !dbg !1313
  call void @llvm.lifetime.end(i64 4, i8* %49), !dbg !1313
  %50 = bitcast i32* %9 to i8*, !dbg !1313
  call void @llvm.lifetime.end(i64 4, i8* %50), !dbg !1313
  %51 = bitcast i32* %10 to i8*, !dbg !1313
  call void @llvm.lifetime.end(i64 4, i8* %51), !dbg !1313
  %52 = bitcast i32* %malloc.i to i8*, !dbg !1313
  call void @llvm.lifetime.end(i64 4, i8* %52), !dbg !1313
  %53 = bitcast i32* %tmp_ndt_2.i to i8*, !dbg !1313
  call void @llvm.lifetime.end(i64 4, i8* %53), !dbg !1313
  store i32 %41, i32* %irp, align 4, !dbg !1314
  %54 = load i32, i32* %irp, align 4, !dbg !1315
  %55 = icmp eq i32 %54, 0, !dbg !1317
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1318, metadata !113), !dbg !1319
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1320, metadata !113), !dbg !1321
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1322, metadata !113), !dbg !1323
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1324, metadata !113), !dbg !1325
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1326, metadata !113), !dbg !1327
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1328, metadata !113), !dbg !1329
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1330, metadata !113), !dbg !1331
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1332, metadata !113), !dbg !1333
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1334, metadata !113), !dbg !1335
  call void @llvm.dbg.declare(metadata i32* %malloc.i, metadata !1336, metadata !113), !dbg !1298
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_2.i, metadata !1337, metadata !113), !dbg !1338
  br i1 %55, label %56, label %57, !dbg !1339

; <label>:56                                      ; preds = %IoBuildDeviceIoControlRequest.exit
  store i32 -1073741670, i32* %11, !dbg !1340
  br label %76, !dbg !1340

; <label>:57                                      ; preds = %IoBuildDeviceIoControlRequest.exit
  %58 = load i32, i32* %irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1342
  %59 = sub nsw i32 %58, 1, !dbg !1344
  store i32 %59, i32* %irpStack, align 4, !dbg !1345
  %60 = load i32, i32* %14, align 4, !dbg !1346
  store i32 %60, i32* %irpStack__Parameters__DeviceIoControl__Type3InputBuffer, align 4, !dbg !1347
  %61 = load i32, i32* %12, align 4, !dbg !1348
  %62 = load i32, i32* %irp, align 4, !dbg !1349
  %63 = call i32 @IofCallDriver(i32 %61, i32 %62), !dbg !1350
  store i32 %63, i32* %ntStatus, align 4, !dbg !1351
  %64 = load i32, i32* %ntStatus, align 4, !dbg !1352
  %65 = sext i32 %64 to i64, !dbg !1354
  store i64 %65, i64* %__cil_tmp11, align 8, !dbg !1355
  %66 = load i64, i64* %__cil_tmp11, align 8, !dbg !1356
  %67 = icmp eq i64 %66, 259, !dbg !1358
  br i1 %67, label %68, label %74, !dbg !1359

; <label>:68                                      ; preds = %57
  %69 = load i32, i32* %doneEvent, align 4, !dbg !1360
  %70 = load i32, i32* @Suspended, align 4, !dbg !1363
  %71 = load i32, i32* @KernelMode, align 4, !dbg !1364
  %72 = call i32 @KeWaitForSingleObject(i32 %69, i32 %70, i32 %71, i32 0, i32 0), !dbg !1365
  %73 = load i32, i32* @myStatus, align 4, !dbg !1366
  store i32 %73, i32* %ntStatus, align 4, !dbg !1367
  br label %74, !dbg !1368

; <label>:74                                      ; preds = %68, %57
  %75 = load i32, i32* %ntStatus, align 4, !dbg !1369
  store i32 %75, i32* %11, !dbg !1370
  br label %76, !dbg !1370

; <label>:76                                      ; preds = %74, %56
  %77 = load i32, i32* %11, !dbg !1371
  ret i32 %77, !dbg !1371
}

; Function Attrs: nounwind ssp uwtable
define void @FloppyProcessQueuedRequests(i32 %DisketteExtension) #0 {
  %1 = alloca i32, align 4
  store i32 %DisketteExtension, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1372, metadata !113), !dbg !1373
  ret void, !dbg !1374
}

; Function Attrs: nounwind ssp uwtable
define void @stub_driver_init() #0 {
  %1 = load i32, i32* @NP, align 4, !dbg !1376
  store i32 %1, i32* @s, align 4, !dbg !1378
  store i32 0, i32* @pended, align 4, !dbg !1379
  store i32 0, i32* @compRegistered, align 4, !dbg !1380
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !1381
  store i32 0, i32* @setEventCalled, align 4, !dbg !1382
  store i32 0, i32* @customIrp, align 4, !dbg !1383
  ret void, !dbg !1384
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
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1385, metadata !113), !dbg !1386
  call void @llvm.dbg.declare(metadata i32* %irp, metadata !1387, metadata !113), !dbg !1388
  %2 = call i32 @__VERIFIER_nondet_int(), !dbg !1389
  store i32 %2, i32* %irp, align 4, !dbg !1388
  call void @llvm.dbg.declare(metadata i32* %pirp, metadata !1390, metadata !113), !dbg !1391
  call void @llvm.dbg.declare(metadata i32* %pirp__IoStatus__Status, metadata !1392, metadata !113), !dbg !1393
  call void @llvm.dbg.declare(metadata i32* %irp_choice, metadata !1394, metadata !113), !dbg !1395
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !1396
  store i32 %3, i32* %irp_choice, align 4, !dbg !1395
  call void @llvm.dbg.declare(metadata i32* %devobj, metadata !1397, metadata !113), !dbg !1398
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !1399
  store i32 %4, i32* %devobj, align 4, !dbg !1398
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp8, metadata !1400, metadata !113), !dbg !1401
  store i32 0, i32* @FloppyThread, align 4, !dbg !1402
  store i32 0, i32* @KernelMode, align 4, !dbg !1403
  store i32 0, i32* @Suspended, align 4, !dbg !1404
  store i32 0, i32* @Executive, align 4, !dbg !1405
  store i32 0, i32* @DiskController, align 4, !dbg !1406
  store i32 0, i32* @FloppyDiskPeripheral, align 4, !dbg !1407
  store i32 0, i32* @FlConfigCallBack, align 4, !dbg !1408
  store i32 0, i32* @MaximumInterfaceType, align 4, !dbg !1409
  store i32 0, i32* @MOUNTDEV_MOUNTED_DEVICE_GUID, align 4, !dbg !1410
  store i32 0, i32* @myStatus, align 4, !dbg !1411
  store i32 0, i32* @s, align 4, !dbg !1412
  store i32 0, i32* @UNLOADED, align 4, !dbg !1413
  store i32 0, i32* @NP, align 4, !dbg !1414
  store i32 0, i32* @DC, align 4, !dbg !1415
  store i32 0, i32* @SKIP1, align 4, !dbg !1416
  store i32 0, i32* @SKIP2, align 4, !dbg !1417
  store i32 0, i32* @MPR1, align 4, !dbg !1418
  store i32 0, i32* @MPR3, align 4, !dbg !1419
  store i32 0, i32* @IPC, align 4, !dbg !1420
  store i32 0, i32* @pended, align 4, !dbg !1421
  store i32 0, i32* @compRegistered, align 4, !dbg !1422
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !1423
  store i32 0, i32* @setEventCalled, align 4, !dbg !1424
  store i32 0, i32* @customIrp, align 4, !dbg !1425
  store i32 0, i32* %status, align 4, !dbg !1426
  %5 = load i32, i32* %irp, align 4, !dbg !1429
  store i32 %5, i32* %pirp, align 4, !dbg !1430
  store i32 0, i32* @UNLOADED, align 4, !dbg !1431
  store i32 1, i32* @NP, align 4, !dbg !1433
  store i32 2, i32* @DC, align 4, !dbg !1434
  store i32 3, i32* @SKIP1, align 4, !dbg !1435
  store i32 4, i32* @SKIP2, align 4, !dbg !1436
  store i32 5, i32* @MPR1, align 4, !dbg !1437
  store i32 6, i32* @MPR3, align 4, !dbg !1438
  store i32 7, i32* @IPC, align 4, !dbg !1439
  %6 = load i32, i32* @UNLOADED, align 4, !dbg !1440
  store i32 %6, i32* @s, align 4, !dbg !1441
  store i32 0, i32* @pended, align 4, !dbg !1442
  store i32 0, i32* @compRegistered, align 4, !dbg !1443
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !1444
  store i32 0, i32* @setEventCalled, align 4, !dbg !1445
  store i32 0, i32* @customIrp, align 4, !dbg !1446
  %7 = load i32, i32* %status, align 4, !dbg !1447
  %8 = icmp sge i32 %7, 0, !dbg !1449
  br i1 %8, label %9, label %40, !dbg !1450

; <label>:9                                       ; preds = %0
  %10 = load i32, i32* @NP, align 4, !dbg !1451
  store i32 %10, i32* @s, align 4, !dbg !1453
  store i32 0, i32* @customIrp, align 4, !dbg !1454
  %11 = load i32, i32* @customIrp, align 4, !dbg !1455
  store i32 %11, i32* @setEventCalled, align 4, !dbg !1456
  %12 = load i32, i32* @setEventCalled, align 4, !dbg !1457
  store i32 %12, i32* @lowerDriverReturn, align 4, !dbg !1458
  %13 = load i32, i32* @lowerDriverReturn, align 4, !dbg !1459
  store i32 %13, i32* @compRegistered, align 4, !dbg !1460
  %14 = load i32, i32* @compRegistered, align 4, !dbg !1461
  store i32 %14, i32* @pended, align 4, !dbg !1462
  store i32 0, i32* %pirp__IoStatus__Status, align 4, !dbg !1463
  store i32 0, i32* @myStatus, align 4, !dbg !1464
  %15 = load i32, i32* %irp_choice, align 4, !dbg !1465
  %16 = icmp eq i32 %15, 0, !dbg !1467
  br i1 %16, label %17, label %18, !dbg !1468

; <label>:17                                      ; preds = %9
  store i32 -1073741637, i32* %pirp__IoStatus__Status, align 4, !dbg !1469
  store i32 -1073741637, i32* @myStatus, align 4, !dbg !1471
  br label %18, !dbg !1472

; <label>:18                                      ; preds = %17, %9
  %19 = load i32, i32* @NP, align 4, !dbg !1473
  store i32 %19, i32* @s, align 4, !dbg !1476
  store i32 0, i32* @pended, align 4, !dbg !1477
  store i32 0, i32* @compRegistered, align 4, !dbg !1478
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !1479
  store i32 0, i32* @setEventCalled, align 4, !dbg !1480
  store i32 0, i32* @customIrp, align 4, !dbg !1481
  %20 = load i32, i32* %status, align 4, !dbg !1482
  %21 = icmp slt i32 %20, 0, !dbg !1485
  br i1 %21, label %22, label %23, !dbg !1486

; <label>:22                                      ; preds = %18
  store i32 -1, i32* %1, !dbg !1487
  br label %120, !dbg !1487

; <label>:23                                      ; preds = %18
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_1, metadata !1489, metadata !113), !dbg !1490
  %24 = call i32 @__VERIFIER_nondet_int(), !dbg !1491
  store i32 %24, i32* %tmp_ndt_1, align 4, !dbg !1492
  %25 = load i32, i32* %tmp_ndt_1, align 4, !dbg !1493
  %26 = icmp eq i32 %25, 3, !dbg !1495
  br i1 %26, label %27, label %28, !dbg !1496

; <label>:27                                      ; preds = %23
  br label %31, !dbg !1497

; <label>:28                                      ; preds = %23
  br label %35, !dbg !1499
                                                  ; No predecessors!
  br i1 false, label %30, label %36, !dbg !1501

; <label>:30                                      ; preds = %29
  br label %31, !dbg !1502

; <label>:31                                      ; preds = %30, %27
  %32 = load i32, i32* %devobj, align 4, !dbg !1504
  %33 = load i32, i32* %pirp, align 4, !dbg !1507
  %34 = call i32 @FloppyPnp(i32 %32, i32 %33), !dbg !1508
  store i32 %34, i32* %status, align 4, !dbg !1509
  br label %37, !dbg !1510

; <label>:35                                      ; preds = %28
  store i32 -1, i32* %1, !dbg !1511
  br label %120, !dbg !1511

; <label>:36                                      ; preds = %29
  br label %37, !dbg !1512

; <label>:37                                      ; preds = %36, %31
  br label %38

; <label>:38                                      ; preds = %37
  br label %39

; <label>:39                                      ; preds = %38
  br label %40, !dbg !1513

; <label>:40                                      ; preds = %39, %0
  %41 = load i32, i32* @pended, align 4, !dbg !1514
  %42 = icmp eq i32 %41, 1, !dbg !1516
  br i1 %42, label %43, label %51, !dbg !1517

; <label>:43                                      ; preds = %40
  %44 = load i32, i32* @s, align 4, !dbg !1518
  %45 = load i32, i32* @NP, align 4, !dbg !1521
  %46 = icmp eq i32 %44, %45, !dbg !1522
  br i1 %46, label %47, label %49, !dbg !1523

; <label>:47                                      ; preds = %43
  %48 = load i32, i32* @NP, align 4, !dbg !1524
  store i32 %48, i32* @s, align 4, !dbg !1526
  br label %50, !dbg !1527

; <label>:49                                      ; preds = %43
  br label %52, !dbg !1528

; <label>:50                                      ; preds = %47
  br label %118, !dbg !1530

; <label>:51                                      ; preds = %40
  br label %52, !dbg !1531

; <label>:52                                      ; preds = %51, %49
  %53 = load i32, i32* @pended, align 4, !dbg !1532
  %54 = icmp eq i32 %53, 1, !dbg !1535
  br i1 %54, label %55, label %63, !dbg !1536

; <label>:55                                      ; preds = %52
  %56 = load i32, i32* @s, align 4, !dbg !1537
  %57 = load i32, i32* @MPR3, align 4, !dbg !1540
  %58 = icmp eq i32 %56, %57, !dbg !1541
  br i1 %58, label %59, label %61, !dbg !1542

; <label>:59                                      ; preds = %55
  %60 = load i32, i32* @MPR3, align 4, !dbg !1543
  store i32 %60, i32* @s, align 4, !dbg !1545
  br label %62, !dbg !1546

; <label>:61                                      ; preds = %55
  br label %64, !dbg !1547

; <label>:62                                      ; preds = %59
  br label %117, !dbg !1549

; <label>:63                                      ; preds = %52
  br label %64, !dbg !1550

; <label>:64                                      ; preds = %63, %61
  %65 = load i32, i32* @s, align 4, !dbg !1551
  %66 = load i32, i32* @UNLOADED, align 4, !dbg !1554
  %67 = icmp ne i32 %65, %66, !dbg !1555
  br i1 %67, label %68, label %116, !dbg !1556

; <label>:68                                      ; preds = %64
  %69 = load i32, i32* %status, align 4, !dbg !1557
  %70 = icmp ne i32 %69, -1, !dbg !1560
  br i1 %70, label %71, label %115, !dbg !1561

; <label>:71                                      ; preds = %68
  %72 = load i32, i32* @s, align 4, !dbg !1562
  %73 = load i32, i32* @SKIP2, align 4, !dbg !1565
  %74 = icmp ne i32 %72, %73, !dbg !1566
  br i1 %74, label %75, label %88, !dbg !1567

; <label>:75                                      ; preds = %71
  %76 = load i32, i32* @s, align 4, !dbg !1568
  %77 = load i32, i32* @IPC, align 4, !dbg !1571
  %78 = icmp ne i32 %76, %77, !dbg !1572
  br i1 %78, label %79, label %86, !dbg !1573

; <label>:79                                      ; preds = %75
  %80 = load i32, i32* @s, align 4, !dbg !1574
  %81 = load i32, i32* @DC, align 4, !dbg !1577
  %82 = icmp ne i32 %80, %81, !dbg !1578
  br i1 %82, label %83, label %84, !dbg !1579

; <label>:83                                      ; preds = %79
  call void (...) @__VERIFIER_error() #6, !dbg !1580
  unreachable, !dbg !1580

errorFn.exit2:                                    ; No predecessors!
  br label %85, !dbg !1584

; <label>:84                                      ; preds = %79
  br label %89, !dbg !1585

; <label>:85                                      ; preds = %errorFn.exit2
  br label %87, !dbg !1587

; <label>:86                                      ; preds = %75
  br label %89, !dbg !1588

; <label>:87                                      ; preds = %85
  br label %114, !dbg !1590

; <label>:88                                      ; preds = %71
  br label %89, !dbg !1591

; <label>:89                                      ; preds = %88, %86, %84
  %90 = load i32, i32* @pended, align 4, !dbg !1592
  %91 = icmp eq i32 %90, 1, !dbg !1595
  br i1 %91, label %92, label %97, !dbg !1596

; <label>:92                                      ; preds = %89
  %93 = load i32, i32* %status, align 4, !dbg !1597
  %94 = icmp ne i32 %93, 259, !dbg !1600
  br i1 %94, label %95, label %96, !dbg !1601

; <label>:95                                      ; preds = %92
  store i32 0, i32* %status, align 4, !dbg !1602
  br label %96, !dbg !1604

; <label>:96                                      ; preds = %95, %92
  br label %113, !dbg !1605

; <label>:97                                      ; preds = %89
  %98 = load i32, i32* @s, align 4, !dbg !1606
  %99 = load i32, i32* @DC, align 4, !dbg !1609
  %100 = icmp eq i32 %98, %99, !dbg !1610
  br i1 %100, label %101, label %106, !dbg !1611

; <label>:101                                     ; preds = %97
  %102 = load i32, i32* %status, align 4, !dbg !1612
  %103 = icmp eq i32 %102, 259, !dbg !1615
  br i1 %103, label %104, label %105, !dbg !1616

; <label>:104                                     ; preds = %101
  call void (...) @__VERIFIER_error() #6, !dbg !1617
  unreachable, !dbg !1617

errorFn.exit1:                                    ; No predecessors!
  br label %105, !dbg !1621

; <label>:105                                     ; preds = %errorFn.exit1, %101
  br label %112, !dbg !1622

; <label>:106                                     ; preds = %97
  %107 = load i32, i32* %status, align 4, !dbg !1623
  %108 = load i32, i32* @lowerDriverReturn, align 4, !dbg !1626
  %109 = icmp ne i32 %107, %108, !dbg !1627
  br i1 %109, label %110, label %111, !dbg !1628

; <label>:110                                     ; preds = %106
  call void (...) @__VERIFIER_error() #6, !dbg !1629
  unreachable, !dbg !1629

errorFn.exit:                                     ; No predecessors!
  br label %111, !dbg !1633

; <label>:111                                     ; preds = %errorFn.exit, %106
  br label %112

; <label>:112                                     ; preds = %111, %105
  br label %113

; <label>:113                                     ; preds = %112, %96
  br label %114

; <label>:114                                     ; preds = %113, %87
  br label %115, !dbg !1634

; <label>:115                                     ; preds = %114, %68
  br label %116, !dbg !1635

; <label>:116                                     ; preds = %115, %64
  br label %117

; <label>:117                                     ; preds = %116, %62
  br label %118

; <label>:118                                     ; preds = %117, %50
  store i32 0, i32* %status, align 4, !dbg !1636
  %119 = load i32, i32* %status, align 4, !dbg !1637
  store i32 %119, i32* %1, !dbg !1638
  br label %120, !dbg !1638

; <label>:120                                     ; preds = %118, %35, %22
  %121 = load i32, i32* %1, !dbg !1639
  ret i32 %121, !dbg !1639
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1318, metadata !113), !dbg !1640
  store i32 %DeviceObject, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1320, metadata !113), !dbg !1641
  store i32 %InputBuffer, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1322, metadata !113), !dbg !1642
  store i32 %InputBufferLength, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1324, metadata !113), !dbg !1643
  store i32 %OutputBuffer, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1326, metadata !113), !dbg !1644
  store i32 %OutputBufferLength, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1328, metadata !113), !dbg !1645
  store i32 %InternalDeviceIoControl, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1330, metadata !113), !dbg !1646
  store i32 %Event, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1332, metadata !113), !dbg !1647
  store i32 %IoStatusBlock, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1334, metadata !113), !dbg !1648
  call void @llvm.dbg.declare(metadata i32* %malloc, metadata !1336, metadata !113), !dbg !1649
  %11 = call i32 @__VERIFIER_nondet_int(), !dbg !1650
  store i32 %11, i32* %malloc, align 4, !dbg !1649
  store i32 1, i32* @customIrp, align 4, !dbg !1651
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_2, metadata !1337, metadata !113), !dbg !1652
  %12 = call i32 @__VERIFIER_nondet_int(), !dbg !1653
  store i32 %12, i32* %tmp_ndt_2, align 4, !dbg !1654
  %13 = load i32, i32* %tmp_ndt_2, align 4, !dbg !1655
  %14 = icmp eq i32 %13, 0, !dbg !1656
  br i1 %14, label %15, label %16, !dbg !1657

; <label>:15                                      ; preds = %0
  br label %19, !dbg !1658

; <label>:16                                      ; preds = %0
  br label %21, !dbg !1660
                                                  ; No predecessors!
  br i1 false, label %18, label %22, !dbg !1661

; <label>:18                                      ; preds = %17
  br label %19, !dbg !1662

; <label>:19                                      ; preds = %18, %15
  %20 = load i32, i32* %malloc, align 4, !dbg !1663
  store i32 %20, i32* %1, !dbg !1664
  br label %24, !dbg !1664

; <label>:21                                      ; preds = %16
  store i32 0, i32* %1, !dbg !1665
  br label %24, !dbg !1665

; <label>:22                                      ; preds = %17
  br label %23

; <label>:23                                      ; preds = %22
  br label %24

; <label>:24                                      ; preds = %23, %21, %19
  %25 = load i32, i32* %1, !dbg !1666
  ret i32 %25, !dbg !1666
}

; Function Attrs: nounwind ssp uwtable
define i32 @IoDeleteSymbolicLink(i32 %SymbolicLinkName) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %tmp_ndt_3 = alloca i32, align 4
  store i32 %SymbolicLinkName, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !431, metadata !113), !dbg !1667
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_3, metadata !437, metadata !113), !dbg !1668
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !1669
  store i32 %3, i32* %tmp_ndt_3, align 4, !dbg !1670
  %4 = load i32, i32* %tmp_ndt_3, align 4, !dbg !1671
  %5 = icmp eq i32 %4, 0, !dbg !1672
  br i1 %5, label %6, label %7, !dbg !1673

; <label>:6                                       ; preds = %0
  br label %10, !dbg !1674

; <label>:7                                       ; preds = %0
  br label %11, !dbg !1676
                                                  ; No predecessors!
  br i1 false, label %9, label %12, !dbg !1677

; <label>:9                                       ; preds = %8
  br label %10, !dbg !1678

; <label>:10                                      ; preds = %9, %6
  store i32 0, i32* %1, !dbg !1679
  br label %14, !dbg !1679

; <label>:11                                      ; preds = %7
  store i32 -1073741823, i32* %1, !dbg !1680
  br label %14, !dbg !1680

; <label>:12                                      ; preds = %8
  br label %13

; <label>:13                                      ; preds = %12
  br label %14

; <label>:14                                      ; preds = %13, %11, %10
  %15 = load i32, i32* %1, !dbg !1681
  ret i32 %15, !dbg !1681
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !997, metadata !113), !dbg !1682
  store i32 %BusNumber, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1004, metadata !113), !dbg !1683
  store i32 %ControllerType, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1006, metadata !113), !dbg !1684
  store i32 %ControllerNumber, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1008, metadata !113), !dbg !1685
  store i32 %PeripheralType, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1010, metadata !113), !dbg !1686
  store i32 %PeripheralNumber, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1012, metadata !113), !dbg !1687
  store i32 %CalloutRoutine, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1014, metadata !113), !dbg !1688
  store i32 %Context, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1016, metadata !113), !dbg !1689
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_4, metadata !1018, metadata !113), !dbg !1690
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !1691
  store i32 %10, i32* %tmp_ndt_4, align 4, !dbg !1692
  %11 = load i32, i32* %tmp_ndt_4, align 4, !dbg !1693
  %12 = icmp eq i32 %11, 0, !dbg !1694
  br i1 %12, label %13, label %14, !dbg !1695

; <label>:13                                      ; preds = %0
  br label %17, !dbg !1696

; <label>:14                                      ; preds = %0
  br label %18, !dbg !1698
                                                  ; No predecessors!
  br i1 false, label %16, label %19, !dbg !1699

; <label>:16                                      ; preds = %15
  br label %17, !dbg !1700

; <label>:17                                      ; preds = %16, %13
  store i32 0, i32* %1, !dbg !1701
  br label %21, !dbg !1701

; <label>:18                                      ; preds = %14
  store i32 -1073741823, i32* %1, !dbg !1702
  br label %21, !dbg !1702

; <label>:19                                      ; preds = %15
  br label %20

; <label>:20                                      ; preds = %19
  br label %21

; <label>:21                                      ; preds = %20, %18, %17
  %22 = load i32, i32* %1, !dbg !1703
  ret i32 %22, !dbg !1703
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1021, metadata !113), !dbg !1704
  store i32 %InterfaceClassGuid, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1027, metadata !113), !dbg !1705
  store i32 %ReferenceString, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1029, metadata !113), !dbg !1706
  store i32 %SymbolicLinkName, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1031, metadata !113), !dbg !1707
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_5, metadata !1033, metadata !113), !dbg !1708
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !1709
  store i32 %6, i32* %tmp_ndt_5, align 4, !dbg !1710
  %7 = load i32, i32* %tmp_ndt_5, align 4, !dbg !1711
  %8 = icmp eq i32 %7, 0, !dbg !1712
  br i1 %8, label %9, label %10, !dbg !1713

; <label>:9                                       ; preds = %0
  br label %13, !dbg !1714

; <label>:10                                      ; preds = %0
  br label %14, !dbg !1716
                                                  ; No predecessors!
  br i1 false, label %12, label %15, !dbg !1717

; <label>:12                                      ; preds = %11
  br label %13, !dbg !1718

; <label>:13                                      ; preds = %12, %9
  store i32 0, i32* %1, !dbg !1719
  br label %17, !dbg !1719

; <label>:14                                      ; preds = %10
  store i32 -1073741808, i32* %1, !dbg !1720
  br label %17, !dbg !1720

; <label>:15                                      ; preds = %11
  br label %16

; <label>:16                                      ; preds = %15
  br label %17

; <label>:17                                      ; preds = %16, %14, %13
  %18 = load i32, i32* %1, !dbg !1721
  ret i32 %18, !dbg !1721
}

; Function Attrs: nounwind ssp uwtable
define i32 @IoSetDeviceInterfaceState(i32 %SymbolicLinkName, i32 %Enable) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %tmp_ndt_6 = alloca i32, align 4
  store i32 %SymbolicLinkName, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !420, metadata !113), !dbg !1722
  store i32 %Enable, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !426, metadata !113), !dbg !1723
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_6, metadata !428, metadata !113), !dbg !1724
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !1725
  store i32 %4, i32* %tmp_ndt_6, align 4, !dbg !1726
  %5 = load i32, i32* %tmp_ndt_6, align 4, !dbg !1727
  %6 = icmp eq i32 %5, 0, !dbg !1728
  br i1 %6, label %7, label %8, !dbg !1729

; <label>:7                                       ; preds = %0
  br label %11, !dbg !1730

; <label>:8                                       ; preds = %0
  br label %12, !dbg !1732
                                                  ; No predecessors!
  br i1 false, label %10, label %13, !dbg !1733

; <label>:10                                      ; preds = %9
  br label %11, !dbg !1734

; <label>:11                                      ; preds = %10, %7
  store i32 0, i32* %1, !dbg !1735
  br label %15, !dbg !1735

; <label>:12                                      ; preds = %8
  store i32 -1073741823, i32* %1, !dbg !1736
  br label %15, !dbg !1736

; <label>:13                                      ; preds = %9
  br label %14

; <label>:14                                      ; preds = %13
  br label %15

; <label>:15                                      ; preds = %14, %12, %11
  %16 = load i32, i32* %1, !dbg !1737
  ret i32 %16, !dbg !1737
}

; Function Attrs: nounwind ssp uwtable
define void @stubMoreProcessingRequired() #0 {
  %1 = load i32, i32* @s, align 4, !dbg !1738
  %2 = load i32, i32* @NP, align 4, !dbg !1741
  %3 = icmp eq i32 %1, %2, !dbg !1742
  br i1 %3, label %4, label %6, !dbg !1743

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* @MPR1, align 4, !dbg !1744
  store i32 %5, i32* @s, align 4, !dbg !1746
  br label %7, !dbg !1747

; <label>:6                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !1748
  unreachable, !dbg !1748

errorFn.exit:                                     ; No predecessors!
  br label %7

; <label>:7                                       ; preds = %errorFn.exit, %4
  ret void, !dbg !1752
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
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1753, metadata !113), !dbg !1754
  store i32 %Irp, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1755, metadata !113), !dbg !1756
  call void @llvm.dbg.declare(metadata i32* %returnVal2, metadata !1757, metadata !113), !dbg !1758
  call void @llvm.dbg.declare(metadata i32* %compRetStatus1, metadata !1759, metadata !113), !dbg !1760
  call void @llvm.dbg.declare(metadata i32* %lcontext, metadata !1761, metadata !113), !dbg !1762
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !1763
  store i32 %9, i32* %lcontext, align 4, !dbg !1762
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp7, metadata !1764, metadata !113), !dbg !1765
  %10 = load i32, i32* @compRegistered, align 4, !dbg !1766
  %11 = icmp ne i32 %10, 0, !dbg !1766
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1256, metadata !113), !dbg !1769
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1258, metadata !113), !dbg !1774
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1260, metadata !113), !dbg !1775
  call void @llvm.dbg.declare(metadata i32* %l.i.i, metadata !1262, metadata !113), !dbg !1776
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1239, metadata !113), !dbg !1777
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1241, metadata !113), !dbg !1778
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1243, metadata !113), !dbg !1779
  br i1 %11, label %12, label %44, !dbg !1780

; <label>:12                                      ; preds = %0
  %13 = load i32, i32* %7, align 4, !dbg !1781
  %14 = load i32, i32* %8, align 4, !dbg !1782
  %15 = load i32, i32* %lcontext, align 4, !dbg !1783
  %16 = bitcast i32* %4 to i8*, !dbg !1784
  call void @llvm.lifetime.start(i64 4, i8* %16), !dbg !1784
  %17 = bitcast i32* %5 to i8*, !dbg !1784
  call void @llvm.lifetime.start(i64 4, i8* %17), !dbg !1784
  %18 = bitcast i32* %6 to i8*, !dbg !1784
  call void @llvm.lifetime.start(i64 4, i8* %18), !dbg !1784
  store i32 %13, i32* %4, align 4, !dbg !1784
  store i32 %14, i32* %5, align 4, !dbg !1784
  store i32 %15, i32* %6, align 4, !dbg !1784
  %19 = load i32, i32* %6, align 4, !dbg !1785
  %20 = bitcast i32* %1 to i8*, !dbg !1786
  call void @llvm.lifetime.start(i64 4, i8* %20) #4, !dbg !1786
  %21 = bitcast i32* %2 to i8*, !dbg !1786
  call void @llvm.lifetime.start(i64 4, i8* %21) #4, !dbg !1786
  %22 = bitcast i32* %3 to i8*, !dbg !1786
  call void @llvm.lifetime.start(i64 4, i8* %22) #4, !dbg !1786
  %23 = bitcast i32* %l.i.i to i8*, !dbg !1786
  call void @llvm.lifetime.start(i64 4, i8* %23) #4, !dbg !1786
  store i32 %19, i32* %1, align 4, !dbg !1786
  store i32 1, i32* %2, align 4, !dbg !1786
  store i32 0, i32* %3, align 4, !dbg !1786
  %24 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1787
  store i32 %24, i32* %l.i.i, align 4, !dbg !1776
  store i32 1, i32* @setEventCalled, align 4, !dbg !1788
  %25 = load i32, i32* %l.i.i, align 4, !dbg !1789
  %26 = bitcast i32* %1 to i8*, !dbg !1790
  call void @llvm.lifetime.end(i64 4, i8* %26) #4, !dbg !1790
  %27 = bitcast i32* %2 to i8*, !dbg !1790
  call void @llvm.lifetime.end(i64 4, i8* %27) #4, !dbg !1790
  %28 = bitcast i32* %3 to i8*, !dbg !1790
  call void @llvm.lifetime.end(i64 4, i8* %28) #4, !dbg !1790
  %29 = bitcast i32* %l.i.i to i8*, !dbg !1790
  call void @llvm.lifetime.end(i64 4, i8* %29) #4, !dbg !1790
  %30 = bitcast i32* %4 to i8*, !dbg !1791
  call void @llvm.lifetime.end(i64 4, i8* %30), !dbg !1791
  %31 = bitcast i32* %5 to i8*, !dbg !1791
  call void @llvm.lifetime.end(i64 4, i8* %31), !dbg !1791
  %32 = bitcast i32* %6 to i8*, !dbg !1791
  call void @llvm.lifetime.end(i64 4, i8* %32), !dbg !1791
  store i32 -1073741802, i32* %compRetStatus1, align 4, !dbg !1792
  %33 = load i32, i32* %compRetStatus1, align 4, !dbg !1793
  %34 = sext i32 %33 to i64, !dbg !1795
  store i64 %34, i64* %__cil_tmp7, align 8, !dbg !1796
  %35 = load i64, i64* %__cil_tmp7, align 8, !dbg !1797
  %36 = icmp eq i64 %35, -1073741802, !dbg !1799
  br i1 %36, label %37, label %43, !dbg !1800

; <label>:37                                      ; preds = %12
  %38 = load i32, i32* @s, align 4, !dbg !1801
  %39 = load i32, i32* @NP, align 4, !dbg !1805
  %40 = icmp eq i32 %38, %39, !dbg !1806
  br i1 %40, label %stubMoreProcessingRequired.exit, label %41, !dbg !1807

; <label>:41                                      ; preds = %37
  call void (...) @__VERIFIER_error() #6, !dbg !1808
  unreachable, !dbg !1808

stubMoreProcessingRequired.exit:                  ; preds = %37
  %42 = load i32, i32* @MPR1, align 4, !dbg !1810
  store i32 %42, i32* @s, align 4, !dbg !1811
  br label %43, !dbg !1812

; <label>:43                                      ; preds = %stubMoreProcessingRequired.exit, %12
  br label %44, !dbg !1813

; <label>:44                                      ; preds = %43, %0
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_7, metadata !1814, metadata !113), !dbg !1815
  %45 = call i32 @__VERIFIER_nondet_int(), !dbg !1816
  store i32 %45, i32* %tmp_ndt_7, align 4, !dbg !1817
  %46 = load i32, i32* %tmp_ndt_7, align 4, !dbg !1818
  %47 = icmp eq i32 %46, 0, !dbg !1820
  br i1 %47, label %48, label %49, !dbg !1821

; <label>:48                                      ; preds = %44
  br label %57, !dbg !1822

; <label>:49                                      ; preds = %44
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_8, metadata !1824, metadata !113), !dbg !1826
  %50 = call i32 @__VERIFIER_nondet_int(), !dbg !1827
  store i32 %50, i32* %tmp_ndt_8, align 4, !dbg !1828
  %51 = load i32, i32* %tmp_ndt_8, align 4, !dbg !1829
  %52 = icmp eq i32 %51, 1, !dbg !1831
  br i1 %52, label %53, label %54, !dbg !1832

; <label>:53                                      ; preds = %49
  br label %58, !dbg !1833

; <label>:54                                      ; preds = %49
  br label %59, !dbg !1835
                                                  ; No predecessors!
  br i1 false, label %56, label %60, !dbg !1837

; <label>:56                                      ; preds = %55
  br label %57, !dbg !1838

; <label>:57                                      ; preds = %56, %48
  store i32 0, i32* %returnVal2, align 4, !dbg !1840
  br label %61, !dbg !1842

; <label>:58                                      ; preds = %53
  store i32 -1073741823, i32* %returnVal2, align 4, !dbg !1843
  br label %61, !dbg !1844

; <label>:59                                      ; preds = %54
  store i32 259, i32* %returnVal2, align 4, !dbg !1845
  br label %61, !dbg !1846

; <label>:60                                      ; preds = %55
  br label %61, !dbg !1847

; <label>:61                                      ; preds = %60, %59, %58, %57
  br label %62

; <label>:62                                      ; preds = %61
  br label %63

; <label>:63                                      ; preds = %62
  br label %64

; <label>:64                                      ; preds = %63
  %65 = load i32, i32* @s, align 4, !dbg !1848
  %66 = load i32, i32* @NP, align 4, !dbg !1850
  %67 = icmp eq i32 %65, %66, !dbg !1851
  br i1 %67, label %68, label %71, !dbg !1852

; <label>:68                                      ; preds = %64
  %69 = load i32, i32* @IPC, align 4, !dbg !1853
  store i32 %69, i32* @s, align 4, !dbg !1855
  %70 = load i32, i32* %returnVal2, align 4, !dbg !1856
  store i32 %70, i32* @lowerDriverReturn, align 4, !dbg !1857
  br label %95, !dbg !1858

; <label>:71                                      ; preds = %64
  %72 = load i32, i32* @s, align 4, !dbg !1859
  %73 = load i32, i32* @MPR1, align 4, !dbg !1862
  %74 = icmp eq i32 %72, %73, !dbg !1863
  br i1 %74, label %75, label %85, !dbg !1864

; <label>:75                                      ; preds = %71
  %76 = load i32, i32* %returnVal2, align 4, !dbg !1865
  %77 = icmp eq i32 %76, 259, !dbg !1868
  br i1 %77, label %78, label %81, !dbg !1869

; <label>:78                                      ; preds = %75
  %79 = load i32, i32* @MPR3, align 4, !dbg !1870
  store i32 %79, i32* @s, align 4, !dbg !1872
  %80 = load i32, i32* %returnVal2, align 4, !dbg !1873
  store i32 %80, i32* @lowerDriverReturn, align 4, !dbg !1874
  br label %84, !dbg !1875

; <label>:81                                      ; preds = %75
  %82 = load i32, i32* @NP, align 4, !dbg !1876
  store i32 %82, i32* @s, align 4, !dbg !1878
  %83 = load i32, i32* %returnVal2, align 4, !dbg !1879
  store i32 %83, i32* @lowerDriverReturn, align 4, !dbg !1880
  br label %84

; <label>:84                                      ; preds = %81, %78
  br label %94, !dbg !1881

; <label>:85                                      ; preds = %71
  %86 = load i32, i32* @s, align 4, !dbg !1882
  %87 = load i32, i32* @SKIP1, align 4, !dbg !1885
  %88 = icmp eq i32 %86, %87, !dbg !1886
  br i1 %88, label %89, label %92, !dbg !1887

; <label>:89                                      ; preds = %85
  %90 = load i32, i32* @SKIP2, align 4, !dbg !1888
  store i32 %90, i32* @s, align 4, !dbg !1890
  %91 = load i32, i32* %returnVal2, align 4, !dbg !1891
  store i32 %91, i32* @lowerDriverReturn, align 4, !dbg !1892
  br label %93, !dbg !1893

; <label>:92                                      ; preds = %85
  call void (...) @__VERIFIER_error() #6, !dbg !1894
  unreachable, !dbg !1894

errorFn.exit:                                     ; No predecessors!
  br label %93

; <label>:93                                      ; preds = %errorFn.exit, %89
  br label %94

; <label>:94                                      ; preds = %93, %84
  br label %95

; <label>:95                                      ; preds = %94, %68
  %96 = load i32, i32* %returnVal2, align 4, !dbg !1898
  ret i32 %96, !dbg !1899
}

; Function Attrs: nounwind ssp uwtable
define i32 @KeSetEvent(i32 %Event, i32 %Increment, i32 %Wait) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 %Event, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1256, metadata !113), !dbg !1900
  store i32 %Increment, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1258, metadata !113), !dbg !1901
  store i32 %Wait, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1260, metadata !113), !dbg !1902
  call void @llvm.dbg.declare(metadata i32* %l, metadata !1262, metadata !113), !dbg !1903
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !1904
  store i32 %4, i32* %l, align 4, !dbg !1903
  store i32 1, i32* @setEventCalled, align 4, !dbg !1905
  %5 = load i32, i32* %l, align 4, !dbg !1906
  ret i32 %5, !dbg !1907
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1908, metadata !113), !dbg !1909
  store i32 %WaitReason, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1910, metadata !113), !dbg !1911
  store i32 %WaitMode, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1912, metadata !113), !dbg !1913
  store i32 %Alertable, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1914, metadata !113), !dbg !1915
  store i32 %Timeout, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1916, metadata !113), !dbg !1917
  %7 = load i32, i32* @s, align 4, !dbg !1918
  %8 = load i32, i32* @MPR3, align 4, !dbg !1921
  %9 = icmp eq i32 %7, %8, !dbg !1922
  br i1 %9, label %10, label %17, !dbg !1923

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* @setEventCalled, align 4, !dbg !1924
  %12 = icmp eq i32 %11, 1, !dbg !1927
  br i1 %12, label %13, label %15, !dbg !1928

; <label>:13                                      ; preds = %10
  %14 = load i32, i32* @NP, align 4, !dbg !1929
  store i32 %14, i32* @s, align 4, !dbg !1931
  store i32 0, i32* @setEventCalled, align 4, !dbg !1932
  br label %16, !dbg !1933

; <label>:15                                      ; preds = %10
  br label %18, !dbg !1934

; <label>:16                                      ; preds = %13
  br label %30, !dbg !1936

; <label>:17                                      ; preds = %0
  br label %18, !dbg !1937

; <label>:18                                      ; preds = %17, %15
  %19 = load i32, i32* @customIrp, align 4, !dbg !1938
  %20 = icmp eq i32 %19, 1, !dbg !1941
  br i1 %20, label %21, label %23, !dbg !1942

; <label>:21                                      ; preds = %18
  %22 = load i32, i32* @NP, align 4, !dbg !1943
  store i32 %22, i32* @s, align 4, !dbg !1945
  store i32 0, i32* @customIrp, align 4, !dbg !1946
  br label %29, !dbg !1947

; <label>:23                                      ; preds = %18
  %24 = load i32, i32* @s, align 4, !dbg !1948
  %25 = load i32, i32* @MPR3, align 4, !dbg !1951
  %26 = icmp eq i32 %24, %25, !dbg !1952
  br i1 %26, label %27, label %28, !dbg !1953

; <label>:27                                      ; preds = %23
  call void (...) @__VERIFIER_error() #6, !dbg !1954
  unreachable, !dbg !1954

errorFn.exit:                                     ; No predecessors!
  br label %28, !dbg !1958

; <label>:28                                      ; preds = %errorFn.exit, %23
  br label %29

; <label>:29                                      ; preds = %28, %21
  br label %30

; <label>:30                                      ; preds = %29, %16
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_9, metadata !1959, metadata !113), !dbg !1960
  %31 = call i32 @__VERIFIER_nondet_int(), !dbg !1961
  store i32 %31, i32* %tmp_ndt_9, align 4, !dbg !1962
  %32 = load i32, i32* %tmp_ndt_9, align 4, !dbg !1963
  %33 = icmp eq i32 %32, 0, !dbg !1965
  br i1 %33, label %34, label %35, !dbg !1966

; <label>:34                                      ; preds = %30
  br label %38, !dbg !1967

; <label>:35                                      ; preds = %30
  br label %39, !dbg !1969
                                                  ; No predecessors!
  br i1 false, label %37, label %40, !dbg !1971

; <label>:37                                      ; preds = %36
  br label %38, !dbg !1972

; <label>:38                                      ; preds = %37, %34
  store i32 0, i32* %1, !dbg !1974
  br label %42, !dbg !1974

; <label>:39                                      ; preds = %35
  store i32 -1073741823, i32* %1, !dbg !1976
  br label %42, !dbg !1976

; <label>:40                                      ; preds = %36
  br label %41

; <label>:41                                      ; preds = %40
  br label %42

; <label>:42                                      ; preds = %41, %39, %38
  %43 = load i32, i32* %1, !dbg !1977
  ret i32 %43, !dbg !1977
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !175, metadata !113), !dbg !1978
  store i32 %DesiredAccess, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !179, metadata !113), !dbg !1979
  store i32 %ObjectType, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !181, metadata !113), !dbg !1980
  store i32 %AccessMode, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !183, metadata !113), !dbg !1981
  store i32 %Object, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !185, metadata !113), !dbg !1982
  store i32 %HandleInformation, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !187, metadata !113), !dbg !1983
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_10, metadata !189, metadata !113), !dbg !1984
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !1985
  store i32 %8, i32* %tmp_ndt_10, align 4, !dbg !1986
  %9 = load i32, i32* %tmp_ndt_10, align 4, !dbg !1987
  %10 = icmp eq i32 %9, 0, !dbg !1988
  br i1 %10, label %11, label %12, !dbg !1989

; <label>:11                                      ; preds = %0
  br label %15, !dbg !1990

; <label>:12                                      ; preds = %0
  br label %16, !dbg !1992
                                                  ; No predecessors!
  br i1 false, label %14, label %17, !dbg !1993

; <label>:14                                      ; preds = %13
  br label %15, !dbg !1994

; <label>:15                                      ; preds = %14, %11
  store i32 0, i32* %1, !dbg !1995
  br label %19, !dbg !1995

; <label>:16                                      ; preds = %12
  store i32 -1073741823, i32* %1, !dbg !1996
  br label %19, !dbg !1996

; <label>:17                                      ; preds = %13
  br label %18

; <label>:18                                      ; preds = %17
  br label %19

; <label>:19                                      ; preds = %18, %16, %15
  %20 = load i32, i32* %1, !dbg !1997
  ret i32 %20, !dbg !1997
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !154, metadata !113), !dbg !1998
  store i32 %DesiredAccess, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !160, metadata !113), !dbg !1999
  store i32 %ObjectAttributes, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !162, metadata !113), !dbg !2000
  store i32 %ProcessHandle, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !164, metadata !113), !dbg !2001
  store i32 %ClientId, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !166, metadata !113), !dbg !2002
  store i32 %StartRoutine, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !168, metadata !113), !dbg !2003
  store i32 %StartContext, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !170, metadata !113), !dbg !2004
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_11, metadata !172, metadata !113), !dbg !2005
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !2006
  store i32 %9, i32* %tmp_ndt_11, align 4, !dbg !2007
  %10 = load i32, i32* %tmp_ndt_11, align 4, !dbg !2008
  %11 = icmp eq i32 %10, 0, !dbg !2009
  br i1 %11, label %12, label %13, !dbg !2010

; <label>:12                                      ; preds = %0
  br label %16, !dbg !2011

; <label>:13                                      ; preds = %0
  br label %17, !dbg !2013
                                                  ; No predecessors!
  br i1 false, label %15, label %18, !dbg !2014

; <label>:15                                      ; preds = %14
  br label %16, !dbg !2015

; <label>:16                                      ; preds = %15, %12
  store i32 0, i32* %1, !dbg !2016
  br label %20, !dbg !2016

; <label>:17                                      ; preds = %13
  store i32 -1073741823, i32* %1, !dbg !2017
  br label %20, !dbg !2017

; <label>:18                                      ; preds = %14
  br label %19

; <label>:19                                      ; preds = %18
  br label %20

; <label>:20                                      ; preds = %19, %17, %16
  %21 = load i32, i32* %1, !dbg !2018
  ret i32 %21, !dbg !2018
}

; Function Attrs: nounwind ssp uwtable
define i32 @ZwClose(i32 %Handle) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %tmp_ndt_12 = alloca i32, align 4
  store i32 %Handle, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !192, metadata !113), !dbg !2019
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_12, metadata !195, metadata !113), !dbg !2020
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !2021
  store i32 %3, i32* %tmp_ndt_12, align 4, !dbg !2022
  %4 = load i32, i32* %tmp_ndt_12, align 4, !dbg !2023
  %5 = icmp eq i32 %4, 0, !dbg !2024
  br i1 %5, label %6, label %7, !dbg !2025

; <label>:6                                       ; preds = %0
  br label %10, !dbg !2026

; <label>:7                                       ; preds = %0
  br label %11, !dbg !2028
                                                  ; No predecessors!
  br i1 false, label %9, label %12, !dbg !2029

; <label>:9                                       ; preds = %8
  br label %10, !dbg !2030

; <label>:10                                      ; preds = %9, %6
  store i32 0, i32* %1, !dbg !2031
  br label %14, !dbg !2031

; <label>:11                                      ; preds = %7
  store i32 -1073741823, i32* %1, !dbg !2032
  br label %14, !dbg !2032

; <label>:12                                      ; preds = %8
  br label %13

; <label>:13                                      ; preds = %12
  br label %14

; <label>:14                                      ; preds = %13, %11, %10
  %15 = load i32, i32* %1, !dbg !2033
  ret i32 %15, !dbg !2033
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
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2034, metadata !113), !dbg !2035
  store i32 %Irp, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2036, metadata !113), !dbg !2037
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !2038, metadata !113), !dbg !2039
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !2040, metadata !113), !dbg !2041
  store i32 0, i32* @myStatus, align 4, !dbg !2042
  store i32 0, i32* %Irp__IoStatus__Status, align 4, !dbg !2045
  store i32 1, i32* %Irp__IoStatus__Information, align 4, !dbg !2046
  %5 = load i32, i32* %4, align 4, !dbg !2047
  %6 = bitcast i32* %1 to i8*, !dbg !2048
  call void @llvm.lifetime.start(i64 4, i8* %6), !dbg !2048
  %7 = bitcast i32* %2 to i8*, !dbg !2048
  call void @llvm.lifetime.start(i64 4, i8* %7), !dbg !2048
  store i32 %5, i32* %1, align 4, !dbg !2048
  store i32 0, i32* %2, align 4, !dbg !2048
  %8 = load i32, i32* @s, align 4, !dbg !2049
  %9 = load i32, i32* @NP, align 4, !dbg !2051
  %10 = icmp eq i32 %8, %9, !dbg !2052
  br i1 %10, label %IofCompleteRequest.exit, label %11, !dbg !2053

; <label>:11                                      ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !2054
  unreachable, !dbg !2054

IofCompleteRequest.exit:                          ; preds = %0
  %12 = load i32, i32* @DC, align 4, !dbg !2056
  store i32 %12, i32* @s, align 4, !dbg !2057
  %13 = bitcast i32* %1 to i8*, !dbg !2058
  call void @llvm.lifetime.end(i64 4, i8* %13), !dbg !2058
  %14 = bitcast i32* %2 to i8*, !dbg !2058
  call void @llvm.lifetime.end(i64 4, i8* %14), !dbg !2058
  call void @llvm.dbg.declare(metadata i32* %1, metadata !383, metadata !113), !dbg !2059
  call void @llvm.dbg.declare(metadata i32* %2, metadata !389, metadata !113), !dbg !2060
  ret i32 0, !dbg !2061
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
!llvm.module.flags = !{!87, !88, !89}
!llvm.ident = !{!90}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !60)
!1 = !DIFile(filename: "../sv-comp-2016/c/ntdrivers-simplified/floppy_simpl3_true-unreach-call_true-termination.cil.c", directory: "/Users/franck/development/perentiemq")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!6 = !{!7, !10, !11, !16, !17, !18, !19, !22, !23, !26, !27, !30, !33, !36, !39, !42, !43, !44, !45, !48, !49, !52, !55, !58, !59}
!7 = !DISubprogram(name: "errorFn", scope: !1, file: !1, line: 34, type: !8, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @errorFn, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !DISubprogram(name: "_BLAST_init", scope: !1, file: !1, line: 43, type: !8, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @_BLAST_init, variables: !2)
!11 = !DISubprogram(name: "FlAcpiConfigureFloppy", scope: !12, file: !12, line: 92, type: !13, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @FlAcpiConfigureFloppy, variables: !2)
!12 = !DIFile(filename: "floppy_simpl3.cil.c", directory: "/Users/franck/development/perentiemq")
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !15, !15}
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DISubprogram(name: "FlQueueIrpToThread", scope: !12, file: !12, line: 99, type: !13, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @FlQueueIrpToThread, variables: !2)
!17 = !DISubprogram(name: "FloppyPnp", scope: !12, file: !12, line: 168, type: !13, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @FloppyPnp, variables: !2)
!18 = !DISubprogram(name: "FloppyStartDevice", scope: !12, file: !12, line: 461, type: !13, isLocal: false, isDefinition: true, scopeLine: 462, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @FloppyStartDevice, variables: !2)
!19 = !DISubprogram(name: "FloppyPnpComplete", scope: !12, file: !12, line: 629, type: !20, isLocal: false, isDefinition: true, scopeLine: 630, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @FloppyPnpComplete, variables: !2)
!20 = !DISubroutineType(types: !21)
!21 = !{!15, !15, !15, !15}
!22 = !DISubprogram(name: "FlFdcDeviceIo", scope: !12, file: !12, line: 639, type: !20, isLocal: false, isDefinition: true, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @FlFdcDeviceIo, variables: !2)
!23 = !DISubprogram(name: "FloppyProcessQueuedRequests", scope: !12, file: !12, line: 674, type: !24, isLocal: false, isDefinition: true, scopeLine: 675, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @FloppyProcessQueuedRequests, variables: !2)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !15}
!26 = !DISubprogram(name: "stub_driver_init", scope: !12, file: !12, line: 681, type: !8, isLocal: false, isDefinition: true, scopeLine: 682, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stub_driver_init, variables: !2)
!27 = !DISubprogram(name: "main", scope: !12, file: !12, line: 694, type: !28, isLocal: false, isDefinition: true, scopeLine: 695, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !2)
!28 = !DISubroutineType(types: !29)
!29 = !{!15}
!30 = !DISubprogram(name: "IoBuildDeviceIoControlRequest", scope: !12, file: !12, line: 823, type: !31, isLocal: false, isDefinition: true, scopeLine: 826, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)* @IoBuildDeviceIoControlRequest, variables: !2)
!31 = !DISubroutineType(types: !32)
!32 = !{!15, !15, !15, !15, !15, !15, !15, !15, !15, !15}
!33 = !DISubprogram(name: "IoDeleteSymbolicLink", scope: !12, file: !12, line: 848, type: !34, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32)* @IoDeleteSymbolicLink, variables: !2)
!34 = !DISubroutineType(types: !35)
!35 = !{!15, !15}
!36 = !DISubprogram(name: "IoQueryDeviceDescription", scope: !12, file: !12, line: 869, type: !37, isLocal: false, isDefinition: true, scopeLine: 872, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32, i32, i32, i32)* @IoQueryDeviceDescription, variables: !2)
!37 = !DISubroutineType(types: !38)
!38 = !{!15, !15, !15, !15, !15, !15, !15, !15, !15}
!39 = !DISubprogram(name: "IoRegisterDeviceInterface", scope: !12, file: !12, line: 892, type: !40, isLocal: false, isDefinition: true, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32)* @IoRegisterDeviceInterface, variables: !2)
!40 = !DISubroutineType(types: !41)
!41 = !{!15, !15, !15, !15, !15}
!42 = !DISubprogram(name: "IoSetDeviceInterfaceState", scope: !12, file: !12, line: 914, type: !13, isLocal: false, isDefinition: true, scopeLine: 915, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @IoSetDeviceInterfaceState, variables: !2)
!43 = !DISubprogram(name: "stubMoreProcessingRequired", scope: !12, file: !12, line: 935, type: !8, isLocal: false, isDefinition: true, scopeLine: 936, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stubMoreProcessingRequired, variables: !2)
!44 = !DISubprogram(name: "IofCallDriver", scope: !12, file: !12, line: 949, type: !13, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @IofCallDriver, variables: !2)
!45 = !DISubprogram(name: "IofCompleteRequest", scope: !12, file: !12, line: 1020, type: !46, isLocal: false, isDefinition: true, scopeLine: 1021, flags: DIFlagPrototyped, isOptimized: false, function: void (i32, i32)* @IofCompleteRequest, variables: !2)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !15, !15}
!48 = !DISubprogram(name: "KeSetEvent", scope: !12, file: !12, line: 1034, type: !20, isLocal: false, isDefinition: true, scopeLine: 1035, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @KeSetEvent, variables: !2)
!49 = !DISubprogram(name: "KeWaitForSingleObject", scope: !12, file: !12, line: 1042, type: !50, isLocal: false, isDefinition: true, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32)* @KeWaitForSingleObject, variables: !2)
!50 = !DISubroutineType(types: !51)
!51 = !{!15, !15, !15, !15, !15, !15}
!52 = !DISubprogram(name: "ObReferenceObjectByHandle", scope: !12, file: !12, line: 1086, type: !53, isLocal: false, isDefinition: true, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32, i32)* @ObReferenceObjectByHandle, variables: !2)
!53 = !DISubroutineType(types: !54)
!54 = !{!15, !15, !15, !15, !15, !15, !15}
!55 = !DISubprogram(name: "PsCreateSystemThread", scope: !12, file: !12, line: 1108, type: !56, isLocal: false, isDefinition: true, scopeLine: 1110, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32, i32, i32)* @PsCreateSystemThread, variables: !2)
!56 = !DISubroutineType(types: !57)
!57 = !{!15, !15, !15, !15, !15, !15, !15, !15}
!58 = !DISubprogram(name: "ZwClose", scope: !12, file: !12, line: 1130, type: !34, isLocal: false, isDefinition: true, scopeLine: 1131, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32)* @ZwClose, variables: !2)
!59 = !DISubprogram(name: "FloppyCreateClose", scope: !12, file: !12, line: 1151, type: !13, isLocal: false, isDefinition: true, scopeLine: 1152, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @FloppyCreateClose, variables: !2)
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!61 = !DIGlobalVariable(name: "PagingReferenceCount", scope: !0, file: !12, line: 90, type: !15, isLocal: false, isDefinition: true, variable: i32* @PagingReferenceCount)
!62 = !DIGlobalVariable(name: "PagingMutex", scope: !0, file: !12, line: 91, type: !15, isLocal: false, isDefinition: true, variable: i32* @PagingMutex)
!63 = !DIGlobalVariable(name: "FloppyThread", scope: !0, file: !1, line: 9, type: !15, isLocal: false, isDefinition: true, variable: i32* @FloppyThread)
!64 = !DIGlobalVariable(name: "KernelMode", scope: !0, file: !1, line: 10, type: !15, isLocal: false, isDefinition: true, variable: i32* @KernelMode)
!65 = !DIGlobalVariable(name: "Suspended", scope: !0, file: !1, line: 11, type: !15, isLocal: false, isDefinition: true, variable: i32* @Suspended)
!66 = !DIGlobalVariable(name: "Executive", scope: !0, file: !1, line: 12, type: !15, isLocal: false, isDefinition: true, variable: i32* @Executive)
!67 = !DIGlobalVariable(name: "DiskController", scope: !0, file: !1, line: 13, type: !15, isLocal: false, isDefinition: true, variable: i32* @DiskController)
!68 = !DIGlobalVariable(name: "FloppyDiskPeripheral", scope: !0, file: !1, line: 14, type: !15, isLocal: false, isDefinition: true, variable: i32* @FloppyDiskPeripheral)
!69 = !DIGlobalVariable(name: "FlConfigCallBack", scope: !0, file: !1, line: 15, type: !15, isLocal: false, isDefinition: true, variable: i32* @FlConfigCallBack)
!70 = !DIGlobalVariable(name: "MaximumInterfaceType", scope: !0, file: !1, line: 16, type: !15, isLocal: false, isDefinition: true, variable: i32* @MaximumInterfaceType)
!71 = !DIGlobalVariable(name: "MOUNTDEV_MOUNTED_DEVICE_GUID", scope: !0, file: !1, line: 17, type: !15, isLocal: false, isDefinition: true, variable: i32* @MOUNTDEV_MOUNTED_DEVICE_GUID)
!72 = !DIGlobalVariable(name: "myStatus", scope: !0, file: !1, line: 18, type: !15, isLocal: false, isDefinition: true, variable: i32* @myStatus)
!73 = !DIGlobalVariable(name: "s", scope: !0, file: !1, line: 19, type: !15, isLocal: false, isDefinition: true, variable: i32* @s)
!74 = !DIGlobalVariable(name: "UNLOADED", scope: !0, file: !1, line: 20, type: !15, isLocal: false, isDefinition: true, variable: i32* @UNLOADED)
!75 = !DIGlobalVariable(name: "NP", scope: !0, file: !1, line: 21, type: !15, isLocal: false, isDefinition: true, variable: i32* @NP)
!76 = !DIGlobalVariable(name: "DC", scope: !0, file: !1, line: 22, type: !15, isLocal: false, isDefinition: true, variable: i32* @DC)
!77 = !DIGlobalVariable(name: "SKIP1", scope: !0, file: !1, line: 23, type: !15, isLocal: false, isDefinition: true, variable: i32* @SKIP1)
!78 = !DIGlobalVariable(name: "SKIP2", scope: !0, file: !1, line: 24, type: !15, isLocal: false, isDefinition: true, variable: i32* @SKIP2)
!79 = !DIGlobalVariable(name: "MPR1", scope: !0, file: !1, line: 25, type: !15, isLocal: false, isDefinition: true, variable: i32* @MPR1)
!80 = !DIGlobalVariable(name: "MPR3", scope: !0, file: !1, line: 26, type: !15, isLocal: false, isDefinition: true, variable: i32* @MPR3)
!81 = !DIGlobalVariable(name: "IPC", scope: !0, file: !1, line: 27, type: !15, isLocal: false, isDefinition: true, variable: i32* @IPC)
!82 = !DIGlobalVariable(name: "pended", scope: !0, file: !1, line: 28, type: !15, isLocal: false, isDefinition: true, variable: i32* @pended)
!83 = !DIGlobalVariable(name: "compRegistered", scope: !0, file: !1, line: 29, type: !15, isLocal: false, isDefinition: true, variable: i32* @compRegistered)
!84 = !DIGlobalVariable(name: "lowerDriverReturn", scope: !0, file: !1, line: 30, type: !15, isLocal: false, isDefinition: true, variable: i32* @lowerDriverReturn)
!85 = !DIGlobalVariable(name: "setEventCalled", scope: !0, file: !1, line: 31, type: !15, isLocal: false, isDefinition: true, variable: i32* @setEventCalled)
!86 = !DIGlobalVariable(name: "customIrp", scope: !0, file: !1, line: 32, type: !15, isLocal: false, isDefinition: true, variable: i32* @customIrp)
!87 = !{i32 2, !"Dwarf Version", i32 2}
!88 = !{i32 2, !"Debug Info Version", i32 3}
!89 = !{i32 1, !"PIC Level", i32 2}
!90 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!91 = !DILocation(line: 37, column: 3, scope: !7)
!92 = !DILocation(line: 38, column: 10, scope: !93)
!93 = distinct !DILexicalBlock(scope: !7, file: !1, line: 37, column: 3)
!94 = !DILocation(line: 41, column: 1, scope: !7)
!95 = !DILocation(line: 73, column: 12, scope: !96)
!96 = distinct !DILexicalBlock(scope: !10, file: !1, line: 46, column: 3)
!97 = !DILocation(line: 74, column: 6, scope: !96)
!98 = !DILocation(line: 75, column: 6, scope: !96)
!99 = !DILocation(line: 76, column: 9, scope: !96)
!100 = !DILocation(line: 77, column: 9, scope: !96)
!101 = !DILocation(line: 78, column: 8, scope: !96)
!102 = !DILocation(line: 79, column: 8, scope: !96)
!103 = !DILocation(line: 80, column: 7, scope: !96)
!104 = !DILocation(line: 81, column: 7, scope: !96)
!105 = !DILocation(line: 81, column: 5, scope: !96)
!106 = !DILocation(line: 82, column: 10, scope: !96)
!107 = !DILocation(line: 83, column: 18, scope: !96)
!108 = !DILocation(line: 84, column: 21, scope: !96)
!109 = !DILocation(line: 85, column: 18, scope: !96)
!110 = !DILocation(line: 86, column: 13, scope: !96)
!111 = !DILocation(line: 87, column: 3, scope: !96)
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DisketteExtension", arg: 1, scope: !11, file: !12, line: 92, type: !15)
!113 = !DIExpression()
!114 = !DILocation(line: 92, column: 31, scope: !11)
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "FdcInfo", arg: 2, scope: !11, file: !12, line: 92, type: !15)
!116 = !DILocation(line: 92, column: 55, scope: !11)
!117 = !DILocation(line: 96, column: 3, scope: !118)
!118 = distinct !DILexicalBlock(scope: !11, file: !12, line: 95, column: 3)
!119 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 1, scope: !16, file: !12, line: 99, type: !15)
!120 = !DILocation(line: 99, column: 28, scope: !16)
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DisketteExtension", arg: 2, scope: !16, file: !12, line: 99, type: !15)
!122 = !DILocation(line: 99, column: 38, scope: !16)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !16, file: !12, line: 100, type: !15)
!124 = !DILocation(line: 100, column: 7, scope: !16)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "threadHandle", scope: !16, file: !12, line: 101, type: !15)
!126 = !DILocation(line: 101, column: 7, scope: !16)
!127 = !DILocation(line: 101, column: 22, scope: !16)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DisketteExtension__PoweringDown", scope: !16, file: !12, line: 102, type: !15)
!129 = !DILocation(line: 102, column: 7, scope: !16)
!130 = !DILocation(line: 102, column: 41, scope: !16)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DisketteExtension__ThreadReferenceCount", scope: !16, file: !12, line: 103, type: !15)
!132 = !DILocation(line: 103, column: 7, scope: !16)
!133 = !DILocation(line: 103, column: 49, scope: !16)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DisketteExtension__FloppyThread", scope: !16, file: !12, line: 104, type: !15)
!135 = !DILocation(line: 104, column: 7, scope: !16)
!136 = !DILocation(line: 104, column: 41, scope: !16)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !16, file: !12, line: 105, type: !15)
!138 = !DILocation(line: 105, column: 7, scope: !16)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !16, file: !12, line: 106, type: !15)
!140 = !DILocation(line: 106, column: 7, scope: !16)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation__Control", scope: !16, file: !12, line: 107, type: !15)
!142 = !DILocation(line: 107, column: 7, scope: !16)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ObjAttributes", scope: !16, file: !12, line: 108, type: !15)
!144 = !DILocation(line: 108, column: 7, scope: !16)
!145 = !DILocation(line: 108, column: 23, scope: !16)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp12", scope: !16, file: !12, line: 109, type: !15)
!147 = !DILocation(line: 109, column: 7, scope: !16)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp13", scope: !16, file: !12, line: 110, type: !15)
!149 = !DILocation(line: 110, column: 7, scope: !16)
!150 = !DILocation(line: 111, column: 7, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !12, line: 111, column: 7)
!152 = distinct !DILexicalBlock(scope: !16, file: !12, line: 112, column: 3)
!153 = !DILocation(line: 111, column: 39, scope: !151)
!154 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ThreadHandle", arg: 1, scope: !55, file: !12, line: 1108, type: !15)
!155 = !DILocation(line: 1108, column: 30, scope: !55, inlinedAt: !156)
!156 = distinct !DILocation(line: 129, column: 14, scope: !157)
!157 = distinct !DILexicalBlock(scope: !158, file: !12, line: 126, column: 5)
!158 = distinct !DILexicalBlock(scope: !159, file: !12, line: 120, column: 53)
!159 = distinct !DILexicalBlock(scope: !152, file: !12, line: 120, column: 7)
!160 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DesiredAccess", arg: 2, scope: !55, file: !12, line: 1108, type: !15)
!161 = !DILocation(line: 1108, column: 49, scope: !55, inlinedAt: !156)
!162 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ObjectAttributes", arg: 3, scope: !55, file: !12, line: 1108, type: !15)
!163 = !DILocation(line: 1108, column: 69, scope: !55, inlinedAt: !156)
!164 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ProcessHandle", arg: 4, scope: !55, file: !12, line: 1109, type: !15)
!165 = !DILocation(line: 1109, column: 30, scope: !55, inlinedAt: !156)
!166 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ClientId", arg: 5, scope: !55, file: !12, line: 1109, type: !15)
!167 = !DILocation(line: 1109, column: 50, scope: !55, inlinedAt: !156)
!168 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "StartRoutine", arg: 6, scope: !55, file: !12, line: 1109, type: !15)
!169 = !DILocation(line: 1109, column: 65, scope: !55, inlinedAt: !156)
!170 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "StartContext", arg: 7, scope: !55, file: !12, line: 1109, type: !15)
!171 = !DILocation(line: 1109, column: 84, scope: !55, inlinedAt: !156)
!172 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_11", scope: !173, file: !12, line: 1113, type: !15)
!173 = distinct !DILexicalBlock(scope: !55, file: !12, line: 1112, column: 3)
!174 = !DILocation(line: 1113, column: 7, scope: !173, inlinedAt: !156)
!175 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Handle", arg: 1, scope: !52, file: !12, line: 1086, type: !15)
!176 = !DILocation(line: 1086, column: 35, scope: !52, inlinedAt: !177)
!177 = distinct !DILocation(line: 145, column: 14, scope: !178)
!178 = distinct !DILexicalBlock(scope: !158, file: !12, line: 143, column: 5)
!179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DesiredAccess", arg: 2, scope: !52, file: !12, line: 1086, type: !15)
!180 = !DILocation(line: 1086, column: 48, scope: !52, inlinedAt: !177)
!181 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ObjectType", arg: 3, scope: !52, file: !12, line: 1086, type: !15)
!182 = !DILocation(line: 1086, column: 68, scope: !52, inlinedAt: !177)
!183 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "AccessMode", arg: 4, scope: !52, file: !12, line: 1086, type: !15)
!184 = !DILocation(line: 1086, column: 85, scope: !52, inlinedAt: !177)
!185 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Object", arg: 5, scope: !52, file: !12, line: 1087, type: !15)
!186 = !DILocation(line: 1087, column: 35, scope: !52, inlinedAt: !177)
!187 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "HandleInformation", arg: 6, scope: !52, file: !12, line: 1087, type: !15)
!188 = !DILocation(line: 1087, column: 48, scope: !52, inlinedAt: !177)
!189 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_10", scope: !190, file: !12, line: 1091, type: !15)
!190 = distinct !DILexicalBlock(scope: !52, file: !12, line: 1090, column: 3)
!191 = !DILocation(line: 1091, column: 7, scope: !190, inlinedAt: !177)
!192 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Handle", arg: 1, scope: !58, file: !12, line: 1130, type: !15)
!193 = !DILocation(line: 1130, column: 17, scope: !58, inlinedAt: !194)
!194 = distinct !DILocation(line: 147, column: 5, scope: !178)
!195 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_12", scope: !196, file: !12, line: 1134, type: !15)
!196 = distinct !DILexicalBlock(scope: !58, file: !12, line: 1133, column: 3)
!197 = !DILocation(line: 1134, column: 7, scope: !196, inlinedAt: !194)
!198 = !DILocation(line: 111, column: 7, scope: !152)
!199 = !DILocation(line: 112, column: 14, scope: !200)
!200 = distinct !DILexicalBlock(scope: !151, file: !12, line: 111, column: 45)
!201 = !DILocation(line: 113, column: 27, scope: !200)
!202 = !DILocation(line: 114, column: 32, scope: !200)
!203 = !DILocation(line: 115, column: 5, scope: !200)
!204 = !DILocation(line: 119, column: 43, scope: !152)
!205 = !DILocation(line: 120, column: 7, scope: !159)
!206 = !DILocation(line: 120, column: 47, scope: !159)
!207 = !DILocation(line: 120, column: 7, scope: !152)
!208 = !DILocation(line: 121, column: 45, scope: !158)
!209 = !DILocation(line: 122, column: 26, scope: !158)
!210 = !DILocation(line: 123, column: 9, scope: !211)
!211 = distinct !DILexicalBlock(scope: !158, file: !12, line: 123, column: 9)
!212 = !DILocation(line: 123, column: 30, scope: !211)
!213 = !DILocation(line: 123, column: 9, scope: !158)
!214 = !DILocation(line: 125, column: 5, scope: !215)
!215 = distinct !DILexicalBlock(scope: !211, file: !12, line: 123, column: 36)
!216 = !DILocation(line: 129, column: 35, scope: !157)
!217 = !DILocation(line: 129, column: 52, scope: !157)
!218 = !DILocation(line: 129, column: 73, scope: !157)
!219 = !DILocation(line: 130, column: 35, scope: !157)
!220 = !DILocation(line: 129, column: 14, scope: !157)
!221 = !DILocation(line: 1114, column: 16, scope: !173, inlinedAt: !156)
!222 = !DILocation(line: 1114, column: 14, scope: !173, inlinedAt: !156)
!223 = !DILocation(line: 1115, column: 7, scope: !224, inlinedAt: !156)
!224 = distinct !DILexicalBlock(scope: !173, file: !12, line: 1115, column: 7)
!225 = !DILocation(line: 1115, column: 18, scope: !224, inlinedAt: !156)
!226 = !DILocation(line: 1115, column: 7, scope: !173, inlinedAt: !156)
!227 = !DILocation(line: 1120, column: 7, scope: !228, inlinedAt: !156)
!228 = distinct !DILexicalBlock(scope: !229, file: !12, line: 1118, column: 12)
!229 = distinct !DILexicalBlock(scope: !230, file: !12, line: 1118, column: 9)
!230 = distinct !DILexicalBlock(scope: !224, file: !12, line: 1117, column: 10)
!231 = !DILocation(line: 1122, column: 7, scope: !228, inlinedAt: !156)
!232 = !DILocation(line: 1128, column: 1, scope: !55, inlinedAt: !156)
!233 = !DILocation(line: 129, column: 12, scope: !157)
!234 = !DILocation(line: 132, column: 9, scope: !235)
!235 = distinct !DILexicalBlock(scope: !236, file: !12, line: 132, column: 9)
!236 = distinct !DILexicalBlock(scope: !158, file: !12, line: 132, column: 5)
!237 = !DILocation(line: 132, column: 16, scope: !235)
!238 = !DILocation(line: 132, column: 9, scope: !236)
!239 = !DILocation(line: 133, column: 47, scope: !240)
!240 = distinct !DILexicalBlock(scope: !235, file: !12, line: 132, column: 21)
!241 = !DILocation(line: 134, column: 28, scope: !240)
!242 = !DILocation(line: 135, column: 11, scope: !243)
!243 = distinct !DILexicalBlock(scope: !240, file: !12, line: 135, column: 11)
!244 = !DILocation(line: 135, column: 32, scope: !243)
!245 = !DILocation(line: 135, column: 11, scope: !240)
!246 = !DILocation(line: 137, column: 7, scope: !247)
!247 = distinct !DILexicalBlock(scope: !243, file: !12, line: 135, column: 38)
!248 = !DILocation(line: 140, column: 15, scope: !240)
!249 = !DILocation(line: 140, column: 7, scope: !240)
!250 = !DILocation(line: 145, column: 40, scope: !178)
!251 = !DILocation(line: 145, column: 66, scope: !178)
!252 = !DILocation(line: 145, column: 78, scope: !178)
!253 = !DILocation(line: 145, column: 14, scope: !178)
!254 = !DILocation(line: 1092, column: 16, scope: !190, inlinedAt: !177)
!255 = !DILocation(line: 1092, column: 14, scope: !190, inlinedAt: !177)
!256 = !DILocation(line: 1093, column: 7, scope: !257, inlinedAt: !177)
!257 = distinct !DILexicalBlock(scope: !190, file: !12, line: 1093, column: 7)
!258 = !DILocation(line: 1093, column: 18, scope: !257, inlinedAt: !177)
!259 = !DILocation(line: 1093, column: 7, scope: !190, inlinedAt: !177)
!260 = !DILocation(line: 1098, column: 7, scope: !261, inlinedAt: !177)
!261 = distinct !DILexicalBlock(scope: !262, file: !12, line: 1096, column: 12)
!262 = distinct !DILexicalBlock(scope: !263, file: !12, line: 1096, column: 9)
!263 = distinct !DILexicalBlock(scope: !257, file: !12, line: 1095, column: 10)
!264 = !DILocation(line: 1100, column: 7, scope: !261, inlinedAt: !177)
!265 = !DILocation(line: 1106, column: 1, scope: !52, inlinedAt: !177)
!266 = !DILocation(line: 145, column: 12, scope: !178)
!267 = !DILocation(line: 147, column: 13, scope: !178)
!268 = !DILocation(line: 147, column: 5, scope: !178)
!269 = !DILocation(line: 1135, column: 16, scope: !196, inlinedAt: !194)
!270 = !DILocation(line: 1135, column: 14, scope: !196, inlinedAt: !194)
!271 = !DILocation(line: 1136, column: 7, scope: !272, inlinedAt: !194)
!272 = distinct !DILexicalBlock(scope: !196, file: !12, line: 1136, column: 7)
!273 = !DILocation(line: 1136, column: 18, scope: !272, inlinedAt: !194)
!274 = !DILocation(line: 1136, column: 7, scope: !196, inlinedAt: !194)
!275 = !DILocation(line: 1141, column: 7, scope: !276, inlinedAt: !194)
!276 = distinct !DILexicalBlock(scope: !277, file: !12, line: 1139, column: 12)
!277 = distinct !DILexicalBlock(scope: !278, file: !12, line: 1139, column: 9)
!278 = distinct !DILexicalBlock(scope: !272, file: !12, line: 1138, column: 10)
!279 = !DILocation(line: 1143, column: 7, scope: !276, inlinedAt: !194)
!280 = !DILocation(line: 1149, column: 1, scope: !58, inlinedAt: !194)
!281 = !DILocation(line: 149, column: 9, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !12, line: 149, column: 9)
!283 = distinct !DILexicalBlock(scope: !158, file: !12, line: 149, column: 5)
!284 = !DILocation(line: 149, column: 16, scope: !282)
!285 = !DILocation(line: 149, column: 9, scope: !283)
!286 = !DILocation(line: 150, column: 15, scope: !287)
!287 = distinct !DILexicalBlock(scope: !282, file: !12, line: 149, column: 21)
!288 = !DILocation(line: 150, column: 7, scope: !287)
!289 = !DILocation(line: 153, column: 3, scope: !158)
!290 = !DILocation(line: 158, column: 7, scope: !291)
!291 = distinct !DILexicalBlock(scope: !152, file: !12, line: 158, column: 7)
!292 = !DILocation(line: 158, column: 14, scope: !291)
!293 = !DILocation(line: 158, column: 7, scope: !152)
!294 = !DILocation(line: 159, column: 12, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !12, line: 158, column: 20)
!296 = !DILocation(line: 160, column: 3, scope: !295)
!297 = !DILocation(line: 38, column: 10, scope: !93, inlinedAt: !298)
!298 = distinct !DILocation(line: 162, column: 5, scope: !299)
!299 = distinct !DILexicalBlock(scope: !300, file: !12, line: 161, column: 5)
!300 = distinct !DILexicalBlock(scope: !291, file: !12, line: 160, column: 10)
!301 = !DILocation(line: 165, column: 3, scope: !152)
!302 = !DILocation(line: 167, column: 1, scope: !16)
!303 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !17, file: !12, line: 168, type: !15)
!304 = !DILocation(line: 168, column: 19, scope: !17)
!305 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !17, file: !12, line: 168, type: !15)
!306 = !DILocation(line: 168, column: 38, scope: !17)
!307 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !17, file: !12, line: 169, type: !15)
!308 = !DILocation(line: 169, column: 7, scope: !17)
!309 = !DILocation(line: 169, column: 39, scope: !17)
!310 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !17, file: !12, line: 170, type: !15)
!311 = !DILocation(line: 170, column: 7, scope: !17)
!312 = !DILocation(line: 170, column: 50, scope: !17)
!313 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !17, file: !12, line: 171, type: !15)
!314 = !DILocation(line: 171, column: 7, scope: !17)
!315 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !17, file: !12, line: 172, type: !15)
!316 = !DILocation(line: 172, column: 7, scope: !17)
!317 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !17, file: !12, line: 173, type: !15)
!318 = !DILocation(line: 173, column: 7, scope: !17)
!319 = !DILocation(line: 173, column: 30, scope: !17)
!320 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__IsRemoved", scope: !17, file: !12, line: 174, type: !15)
!321 = !DILocation(line: 174, column: 7, scope: !17)
!322 = !DILocation(line: 174, column: 38, scope: !17)
!323 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__IsStarted", scope: !17, file: !12, line: 175, type: !15)
!324 = !DILocation(line: 175, column: 7, scope: !17)
!325 = !DILocation(line: 175, column: 38, scope: !17)
!326 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__TargetObject", scope: !17, file: !12, line: 176, type: !15)
!327 = !DILocation(line: 176, column: 7, scope: !17)
!328 = !DILocation(line: 176, column: 41, scope: !17)
!329 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__HoldNewRequests", scope: !17, file: !12, line: 177, type: !15)
!330 = !DILocation(line: 177, column: 7, scope: !17)
!331 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__FloppyThread", scope: !17, file: !12, line: 178, type: !15)
!332 = !DILocation(line: 178, column: 7, scope: !17)
!333 = !DILocation(line: 178, column: 41, scope: !17)
!334 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__InterfaceString__Buffer", scope: !17, file: !12, line: 179, type: !15)
!335 = !DILocation(line: 179, column: 7, scope: !17)
!336 = !DILocation(line: 179, column: 52, scope: !17)
!337 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__InterfaceString", scope: !17, file: !12, line: 180, type: !15)
!338 = !DILocation(line: 180, column: 7, scope: !17)
!339 = !DILocation(line: 180, column: 44, scope: !17)
!340 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__ArcName__Length", scope: !17, file: !12, line: 181, type: !15)
!341 = !DILocation(line: 181, column: 7, scope: !17)
!342 = !DILocation(line: 181, column: 44, scope: !17)
!343 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__ArcName", scope: !17, file: !12, line: 182, type: !15)
!344 = !DILocation(line: 182, column: 7, scope: !17)
!345 = !DILocation(line: 182, column: 36, scope: !17)
!346 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__MinorFunction", scope: !17, file: !12, line: 183, type: !15)
!347 = !DILocation(line: 183, column: 7, scope: !17)
!348 = !DILocation(line: 183, column: 30, scope: !17)
!349 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "IoGetConfigurationInformation__FloppyCount", scope: !17, file: !12, line: 184, type: !15)
!350 = !DILocation(line: 184, column: 7, scope: !17)
!351 = !DILocation(line: 184, column: 52, scope: !17)
!352 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp", scope: !17, file: !12, line: 185, type: !15)
!353 = !DILocation(line: 185, column: 7, scope: !17)
!354 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension", scope: !17, file: !12, line: 186, type: !15)
!355 = !DILocation(line: 186, column: 7, scope: !17)
!356 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ntStatus", scope: !17, file: !12, line: 187, type: !15)
!357 = !DILocation(line: 187, column: 7, scope: !17)
!358 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doneEvent", scope: !17, file: !12, line: 188, type: !15)
!359 = !DILocation(line: 188, column: 7, scope: !17)
!360 = !DILocation(line: 188, column: 19, scope: !17)
!361 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___0", scope: !17, file: !12, line: 189, type: !15)
!362 = !DILocation(line: 189, column: 7, scope: !17)
!363 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp", scope: !17, file: !12, line: 190, type: !15)
!364 = !DILocation(line: 190, column: 7, scope: !17)
!365 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp__Control", scope: !17, file: !12, line: 191, type: !15)
!366 = !DILocation(line: 191, column: 7, scope: !17)
!367 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___1", scope: !17, file: !12, line: 192, type: !15)
!368 = !DILocation(line: 192, column: 7, scope: !17)
!369 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Context", scope: !17, file: !12, line: 193, type: !15)
!370 = !DILocation(line: 193, column: 7, scope: !17)
!371 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Control", scope: !17, file: !12, line: 194, type: !15)
!372 = !DILocation(line: 194, column: 7, scope: !17)
!373 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp29", scope: !17, file: !12, line: 195, type: !4)
!374 = !DILocation(line: 195, column: 8, scope: !17)
!375 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp30", scope: !17, file: !12, line: 196, type: !4)
!376 = !DILocation(line: 196, column: 8, scope: !17)
!377 = !DILocation(line: 197, column: 12, scope: !378)
!378 = distinct !DILexicalBlock(scope: !17, file: !12, line: 198, column: 3)
!379 = !DILocation(line: 198, column: 24, scope: !378)
!380 = !DILocation(line: 199, column: 7, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !12, line: 199, column: 7)
!382 = !DILocation(line: 199, column: 28, scope: !381)
!383 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 1, scope: !45, file: !12, line: 1020, type: !15)
!384 = !DILocation(line: 1020, column: 29, scope: !45, inlinedAt: !385)
!385 = distinct !DILocation(line: 211, column: 5, scope: !386)
!386 = distinct !DILexicalBlock(scope: !387, file: !12, line: 207, column: 5)
!387 = distinct !DILexicalBlock(scope: !388, file: !12, line: 206, column: 37)
!388 = distinct !DILexicalBlock(scope: !378, file: !12, line: 206, column: 7)
!389 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PriorityBoost", arg: 2, scope: !45, file: !12, line: 1020, type: !15)
!390 = !DILocation(line: 1020, column: 39, scope: !45, inlinedAt: !385)
!391 = !DILocation(line: 1020, column: 29, scope: !45, inlinedAt: !392)
!392 = distinct !DILocation(line: 305, column: 21, scope: !393)
!393 = distinct !DILexicalBlock(scope: !394, file: !12, line: 300, column: 21)
!394 = distinct !DILexicalBlock(scope: !395, file: !12, line: 299, column: 26)
!395 = distinct !DILexicalBlock(scope: !396, file: !12, line: 274, column: 23)
!396 = distinct !DILexicalBlock(scope: !397, file: !12, line: 274, column: 19)
!397 = distinct !DILexicalBlock(scope: !398, file: !12, line: 240, column: 24)
!398 = distinct !DILexicalBlock(scope: !399, file: !12, line: 240, column: 21)
!399 = distinct !DILexicalBlock(scope: !400, file: !12, line: 237, column: 22)
!400 = distinct !DILexicalBlock(scope: !401, file: !12, line: 235, column: 19)
!401 = distinct !DILexicalBlock(scope: !402, file: !12, line: 234, column: 20)
!402 = distinct !DILexicalBlock(scope: !403, file: !12, line: 232, column: 17)
!403 = distinct !DILexicalBlock(scope: !404, file: !12, line: 231, column: 18)
!404 = distinct !DILexicalBlock(scope: !405, file: !12, line: 229, column: 15)
!405 = distinct !DILexicalBlock(scope: !406, file: !12, line: 228, column: 16)
!406 = distinct !DILexicalBlock(scope: !407, file: !12, line: 226, column: 13)
!407 = distinct !DILexicalBlock(scope: !408, file: !12, line: 225, column: 14)
!408 = distinct !DILexicalBlock(scope: !409, file: !12, line: 223, column: 11)
!409 = distinct !DILexicalBlock(scope: !410, file: !12, line: 222, column: 12)
!410 = distinct !DILexicalBlock(scope: !411, file: !12, line: 220, column: 9)
!411 = distinct !DILexicalBlock(scope: !412, file: !12, line: 219, column: 10)
!412 = distinct !DILexicalBlock(scope: !378, file: !12, line: 217, column: 7)
!413 = !DILocation(line: 1020, column: 39, scope: !45, inlinedAt: !392)
!414 = !DILocation(line: 1020, column: 29, scope: !45, inlinedAt: !415)
!415 = distinct !DILocation(line: 372, column: 21, scope: !416)
!416 = distinct !DILexicalBlock(scope: !417, file: !12, line: 366, column: 21)
!417 = distinct !DILexicalBlock(scope: !418, file: !12, line: 331, column: 26)
!418 = distinct !DILexicalBlock(scope: !397, file: !12, line: 316, column: 23)
!419 = !DILocation(line: 1020, column: 39, scope: !45, inlinedAt: !415)
!420 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SymbolicLinkName", arg: 1, scope: !42, file: !12, line: 914, type: !15)
!421 = !DILocation(line: 914, column: 35, scope: !42, inlinedAt: !422)
!422 = distinct !DILocation(line: 413, column: 21, scope: !423)
!423 = distinct !DILexicalBlock(scope: !424, file: !12, line: 412, column: 21)
!424 = distinct !DILexicalBlock(scope: !425, file: !12, line: 411, column: 72)
!425 = distinct !DILexicalBlock(scope: !397, file: !12, line: 411, column: 23)
!426 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Enable", arg: 2, scope: !42, file: !12, line: 914, type: !15)
!427 = !DILocation(line: 914, column: 58, scope: !42, inlinedAt: !422)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_6", scope: !429, file: !12, line: 918, type: !15)
!429 = distinct !DILexicalBlock(scope: !42, file: !12, line: 917, column: 3)
!430 = !DILocation(line: 918, column: 7, scope: !429, inlinedAt: !422)
!431 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SymbolicLinkName", arg: 1, scope: !33, file: !12, line: 848, type: !15)
!432 = !DILocation(line: 848, column: 30, scope: !33, inlinedAt: !433)
!433 = distinct !DILocation(line: 421, column: 21, scope: !434)
!434 = distinct !DILexicalBlock(scope: !435, file: !12, line: 420, column: 21)
!435 = distinct !DILexicalBlock(scope: !436, file: !12, line: 419, column: 64)
!436 = distinct !DILexicalBlock(scope: !397, file: !12, line: 419, column: 23)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_3", scope: !438, file: !12, line: 852, type: !15)
!438 = distinct !DILexicalBlock(scope: !33, file: !12, line: 851, column: 3)
!439 = !DILocation(line: 852, column: 7, scope: !438, inlinedAt: !433)
!440 = !DILocation(line: 199, column: 7, scope: !378)
!441 = !DILocation(line: 201, column: 3, scope: !442)
!442 = distinct !DILexicalBlock(scope: !381, file: !12, line: 199, column: 34)
!443 = !DILocation(line: 204, column: 23, scope: !378)
!444 = !DILocation(line: 204, column: 21, scope: !378)
!445 = !DILocation(line: 205, column: 11, scope: !378)
!446 = !DILocation(line: 205, column: 9, scope: !378)
!447 = !DILocation(line: 206, column: 7, scope: !388)
!448 = !DILocation(line: 206, column: 7, scope: !378)
!449 = !DILocation(line: 208, column: 32, scope: !386)
!450 = !DILocation(line: 209, column: 27, scope: !386)
!451 = !DILocation(line: 210, column: 14, scope: !386)
!452 = !DILocation(line: 211, column: 24, scope: !386)
!453 = !DILocation(line: 211, column: 5, scope: !386)
!454 = !DILocation(line: 1024, column: 7, scope: !455, inlinedAt: !385)
!455 = distinct !DILexicalBlock(scope: !456, file: !12, line: 1024, column: 7)
!456 = distinct !DILexicalBlock(scope: !45, file: !12, line: 1023, column: 3)
!457 = !DILocation(line: 1024, column: 12, scope: !455, inlinedAt: !385)
!458 = !DILocation(line: 1024, column: 9, scope: !455, inlinedAt: !385)
!459 = !DILocation(line: 1024, column: 7, scope: !456, inlinedAt: !385)
!460 = !DILocation(line: 38, column: 10, scope: !93, inlinedAt: !461)
!461 = distinct !DILocation(line: 1028, column: 5, scope: !462, inlinedAt: !385)
!462 = distinct !DILexicalBlock(scope: !463, file: !12, line: 1027, column: 5)
!463 = distinct !DILexicalBlock(scope: !455, file: !12, line: 1026, column: 10)
!464 = !DILocation(line: 1025, column: 9, scope: !465, inlinedAt: !385)
!465 = distinct !DILexicalBlock(scope: !455, file: !12, line: 1024, column: 16)
!466 = !DILocation(line: 1025, column: 7, scope: !465, inlinedAt: !385)
!467 = !DILocation(line: 1031, column: 3, scope: !456, inlinedAt: !385)
!468 = !DILocation(line: 213, column: 5, scope: !387)
!469 = !DILocation(line: 217, column: 7, scope: !412)
!470 = !DILocation(line: 217, column: 28, scope: !412)
!471 = !DILocation(line: 217, column: 7, scope: !378)
!472 = !DILocation(line: 218, column: 5, scope: !473)
!473 = distinct !DILexicalBlock(scope: !412, file: !12, line: 217, column: 34)
!474 = !DILocation(line: 220, column: 9, scope: !410)
!475 = !DILocation(line: 220, column: 30, scope: !410)
!476 = !DILocation(line: 220, column: 9, scope: !411)
!477 = !DILocation(line: 221, column: 7, scope: !478)
!478 = distinct !DILexicalBlock(scope: !410, file: !12, line: 220, column: 36)
!479 = !DILocation(line: 223, column: 11, scope: !408)
!480 = !DILocation(line: 223, column: 32, scope: !408)
!481 = !DILocation(line: 223, column: 11, scope: !409)
!482 = !DILocation(line: 224, column: 9, scope: !483)
!483 = distinct !DILexicalBlock(scope: !408, file: !12, line: 223, column: 38)
!484 = !DILocation(line: 226, column: 13, scope: !406)
!485 = !DILocation(line: 226, column: 34, scope: !406)
!486 = !DILocation(line: 226, column: 13, scope: !407)
!487 = !DILocation(line: 227, column: 11, scope: !488)
!488 = distinct !DILexicalBlock(scope: !406, file: !12, line: 226, column: 40)
!489 = !DILocation(line: 229, column: 15, scope: !404)
!490 = !DILocation(line: 229, column: 36, scope: !404)
!491 = !DILocation(line: 229, column: 15, scope: !405)
!492 = !DILocation(line: 230, column: 13, scope: !493)
!493 = distinct !DILexicalBlock(scope: !404, file: !12, line: 229, column: 42)
!494 = !DILocation(line: 232, column: 17, scope: !402)
!495 = !DILocation(line: 232, column: 38, scope: !402)
!496 = !DILocation(line: 232, column: 17, scope: !403)
!497 = !DILocation(line: 233, column: 15, scope: !498)
!498 = distinct !DILexicalBlock(scope: !402, file: !12, line: 232, column: 44)
!499 = !DILocation(line: 235, column: 19, scope: !400)
!500 = !DILocation(line: 235, column: 40, scope: !400)
!501 = !DILocation(line: 235, column: 19, scope: !401)
!502 = !DILocation(line: 236, column: 17, scope: !503)
!503 = distinct !DILexicalBlock(scope: !400, file: !12, line: 235, column: 46)
!504 = !DILocation(line: 238, column: 17, scope: !399)
!505 = !DILocation(line: 240, column: 21, scope: !399)
!506 = !DILocation(line: 240, column: 24, scope: !398)
!507 = !DILocation(line: 243, column: 48, scope: !508)
!508 = distinct !DILexicalBlock(scope: !397, file: !12, line: 242, column: 19)
!509 = !DILocation(line: 243, column: 62, scope: !508)
!510 = !DILocation(line: 243, column: 30, scope: !508)
!511 = !DILocation(line: 243, column: 28, scope: !508)
!512 = !DILocation(line: 245, column: 19, scope: !397)
!513 = !DILocation(line: 248, column: 23, scope: !514)
!514 = distinct !DILexicalBlock(scope: !397, file: !12, line: 248, column: 23)
!515 = !DILocation(line: 248, column: 44, scope: !514)
!516 = !DILocation(line: 248, column: 23, scope: !397)
!517 = !DILocation(line: 250, column: 19, scope: !518)
!518 = distinct !DILexicalBlock(scope: !514, file: !12, line: 248, column: 50)
!519 = !DILocation(line: 253, column: 25, scope: !520)
!520 = distinct !DILexicalBlock(scope: !397, file: !12, line: 253, column: 23)
!521 = !DILocation(line: 253, column: 23, scope: !397)
!522 = !DILocation(line: 254, column: 25, scope: !523)
!523 = distinct !DILexicalBlock(scope: !524, file: !12, line: 254, column: 25)
!524 = distinct !DILexicalBlock(scope: !520, file: !12, line: 253, column: 55)
!525 = !DILocation(line: 254, column: 30, scope: !523)
!526 = !DILocation(line: 254, column: 27, scope: !523)
!527 = !DILocation(line: 254, column: 25, scope: !524)
!528 = !DILocation(line: 255, column: 27, scope: !529)
!529 = distinct !DILexicalBlock(scope: !523, file: !12, line: 254, column: 34)
!530 = !DILocation(line: 255, column: 25, scope: !529)
!531 = !DILocation(line: 256, column: 21, scope: !529)
!532 = !DILocation(line: 38, column: 10, scope: !93, inlinedAt: !533)
!533 = distinct !DILocation(line: 258, column: 23, scope: !534)
!534 = distinct !DILexicalBlock(scope: !535, file: !12, line: 257, column: 23)
!535 = distinct !DILexicalBlock(scope: !523, file: !12, line: 256, column: 28)
!536 = !DILocation(line: 262, column: 42, scope: !537)
!537 = distinct !DILexicalBlock(scope: !524, file: !12, line: 261, column: 21)
!538 = !DILocation(line: 263, column: 62, scope: !537)
!539 = !DILocation(line: 264, column: 46, scope: !537)
!540 = !DILocation(line: 264, column: 79, scope: !537)
!541 = !DILocation(line: 264, column: 32, scope: !537)
!542 = !DILocation(line: 264, column: 30, scope: !537)
!543 = !DILocation(line: 266, column: 29, scope: !524)
!544 = !DILocation(line: 266, column: 21, scope: !524)
!545 = !DILocation(line: 271, column: 54, scope: !546)
!546 = distinct !DILexicalBlock(scope: !397, file: !12, line: 268, column: 19)
!547 = !DILocation(line: 272, column: 49, scope: !546)
!548 = !DILocation(line: 272, column: 54, scope: !546)
!549 = !DILocation(line: 272, column: 30, scope: !546)
!550 = !DILocation(line: 272, column: 28, scope: !546)
!551 = !DILocation(line: 274, column: 40, scope: !396)
!552 = !DILocation(line: 274, column: 33, scope: !396)
!553 = !DILocation(line: 274, column: 31, scope: !396)
!554 = !DILocation(line: 274, column: 23, scope: !395)
!555 = !DILocation(line: 274, column: 35, scope: !395)
!556 = !DILocation(line: 274, column: 23, scope: !396)
!557 = !DILocation(line: 276, column: 43, scope: !558)
!558 = distinct !DILexicalBlock(scope: !559, file: !12, line: 275, column: 21)
!559 = distinct !DILexicalBlock(scope: !395, file: !12, line: 274, column: 44)
!560 = !DILocation(line: 276, column: 76, scope: !558)
!561 = !DILocation(line: 277, column: 43, scope: !558)
!562 = !DILocation(line: 276, column: 21, scope: !558)
!563 = !DILocation(line: 279, column: 25, scope: !564)
!564 = distinct !DILexicalBlock(scope: !559, file: !12, line: 279, column: 25)
!565 = !DILocation(line: 279, column: 57, scope: !564)
!566 = !DILocation(line: 279, column: 25, scope: !559)
!567 = !DILocation(line: 281, column: 21, scope: !568)
!568 = distinct !DILexicalBlock(scope: !564, file: !12, line: 279, column: 63)
!569 = !DILocation(line: 284, column: 53, scope: !559)
!570 = !DILocation(line: 285, column: 43, scope: !559)
!571 = !DILocation(line: 286, column: 30, scope: !559)
!572 = !DILocation(line: 287, column: 25, scope: !573)
!573 = distinct !DILexicalBlock(scope: !559, file: !12, line: 287, column: 25)
!574 = !DILocation(line: 287, column: 30, scope: !573)
!575 = !DILocation(line: 287, column: 27, scope: !573)
!576 = !DILocation(line: 287, column: 25, scope: !559)
!577 = !DILocation(line: 288, column: 27, scope: !578)
!578 = distinct !DILexicalBlock(scope: !573, file: !12, line: 287, column: 34)
!579 = !DILocation(line: 288, column: 25, scope: !578)
!580 = !DILocation(line: 289, column: 21, scope: !578)
!581 = !DILocation(line: 38, column: 10, scope: !93, inlinedAt: !582)
!582 = distinct !DILocation(line: 291, column: 23, scope: !583)
!583 = distinct !DILexicalBlock(scope: !584, file: !12, line: 290, column: 23)
!584 = distinct !DILexicalBlock(scope: !573, file: !12, line: 289, column: 28)
!585 = !DILocation(line: 295, column: 42, scope: !586)
!586 = distinct !DILexicalBlock(scope: !559, file: !12, line: 294, column: 21)
!587 = !DILocation(line: 296, column: 62, scope: !586)
!588 = !DILocation(line: 297, column: 46, scope: !586)
!589 = !DILocation(line: 297, column: 79, scope: !586)
!590 = !DILocation(line: 297, column: 32, scope: !586)
!591 = !DILocation(line: 297, column: 30, scope: !586)
!592 = !DILocation(line: 299, column: 19, scope: !559)
!593 = !DILocation(line: 301, column: 30, scope: !393)
!594 = !DILocation(line: 302, column: 45, scope: !393)
!595 = !DILocation(line: 302, column: 43, scope: !393)
!596 = !DILocation(line: 303, column: 32, scope: !393)
!597 = !DILocation(line: 303, column: 30, scope: !393)
!598 = !DILocation(line: 304, column: 48, scope: !393)
!599 = !DILocation(line: 305, column: 40, scope: !393)
!600 = !DILocation(line: 305, column: 21, scope: !393)
!601 = !DILocation(line: 1024, column: 7, scope: !455, inlinedAt: !392)
!602 = !DILocation(line: 1024, column: 12, scope: !455, inlinedAt: !392)
!603 = !DILocation(line: 1024, column: 9, scope: !455, inlinedAt: !392)
!604 = !DILocation(line: 1024, column: 7, scope: !456, inlinedAt: !392)
!605 = !DILocation(line: 38, column: 10, scope: !93, inlinedAt: !606)
!606 = distinct !DILocation(line: 1028, column: 5, scope: !462, inlinedAt: !392)
!607 = !DILocation(line: 1025, column: 9, scope: !465, inlinedAt: !392)
!608 = !DILocation(line: 1025, column: 7, scope: !465, inlinedAt: !392)
!609 = !DILocation(line: 1031, column: 3, scope: !456, inlinedAt: !392)
!610 = !DILocation(line: 309, column: 19, scope: !397)
!611 = !DILocation(line: 311, column: 23, scope: !612)
!612 = distinct !DILexicalBlock(scope: !397, file: !12, line: 311, column: 23)
!613 = !DILocation(line: 311, column: 44, scope: !612)
!614 = !DILocation(line: 311, column: 23, scope: !397)
!615 = !DILocation(line: 313, column: 19, scope: !616)
!616 = distinct !DILexicalBlock(scope: !612, file: !12, line: 311, column: 50)
!617 = !DILocation(line: 316, column: 25, scope: !418)
!618 = !DILocation(line: 316, column: 23, scope: !397)
!619 = !DILocation(line: 317, column: 43, scope: !620)
!620 = distinct !DILexicalBlock(scope: !418, file: !12, line: 316, column: 55)
!621 = !DILocation(line: 318, column: 30, scope: !620)
!622 = !DILocation(line: 319, column: 25, scope: !623)
!623 = distinct !DILexicalBlock(scope: !620, file: !12, line: 319, column: 25)
!624 = !DILocation(line: 319, column: 30, scope: !623)
!625 = !DILocation(line: 319, column: 27, scope: !623)
!626 = !DILocation(line: 319, column: 25, scope: !620)
!627 = !DILocation(line: 320, column: 27, scope: !628)
!628 = distinct !DILexicalBlock(scope: !623, file: !12, line: 319, column: 34)
!629 = !DILocation(line: 320, column: 25, scope: !628)
!630 = !DILocation(line: 321, column: 21, scope: !628)
!631 = !DILocation(line: 38, column: 10, scope: !93, inlinedAt: !632)
!632 = distinct !DILocation(line: 323, column: 23, scope: !633)
!633 = distinct !DILexicalBlock(scope: !634, file: !12, line: 322, column: 23)
!634 = distinct !DILexicalBlock(scope: !623, file: !12, line: 321, column: 28)
!635 = !DILocation(line: 327, column: 42, scope: !636)
!636 = distinct !DILexicalBlock(scope: !620, file: !12, line: 326, column: 21)
!637 = !DILocation(line: 328, column: 62, scope: !636)
!638 = !DILocation(line: 329, column: 46, scope: !636)
!639 = !DILocation(line: 329, column: 79, scope: !636)
!640 = !DILocation(line: 329, column: 32, scope: !636)
!641 = !DILocation(line: 329, column: 30, scope: !636)
!642 = !DILocation(line: 331, column: 19, scope: !620)
!643 = !DILocation(line: 332, column: 43, scope: !417)
!644 = !DILocation(line: 333, column: 30, scope: !417)
!645 = !DILocation(line: 334, column: 33, scope: !417)
!646 = !DILocation(line: 334, column: 31, scope: !417)
!647 = !DILocation(line: 335, column: 33, scope: !417)
!648 = !DILocation(line: 335, column: 74, scope: !417)
!649 = !DILocation(line: 335, column: 31, scope: !417)
!650 = !DILocation(line: 336, column: 40, scope: !417)
!651 = !DILocation(line: 337, column: 25, scope: !652)
!652 = distinct !DILexicalBlock(scope: !417, file: !12, line: 337, column: 25)
!653 = !DILocation(line: 337, column: 30, scope: !652)
!654 = !DILocation(line: 337, column: 27, scope: !652)
!655 = !DILocation(line: 337, column: 25, scope: !417)
!656 = !DILocation(line: 38, column: 10, scope: !93, inlinedAt: !657)
!657 = distinct !DILocation(line: 339, column: 23, scope: !658)
!658 = distinct !DILexicalBlock(scope: !659, file: !12, line: 338, column: 23)
!659 = distinct !DILexicalBlock(scope: !652, file: !12, line: 337, column: 34)
!660 = !DILocation(line: 341, column: 21, scope: !659)
!661 = !DILocation(line: 342, column: 27, scope: !662)
!662 = distinct !DILexicalBlock(scope: !663, file: !12, line: 342, column: 27)
!663 = distinct !DILexicalBlock(scope: !652, file: !12, line: 341, column: 28)
!664 = !DILocation(line: 342, column: 42, scope: !662)
!665 = !DILocation(line: 342, column: 27, scope: !663)
!666 = !DILocation(line: 38, column: 10, scope: !93, inlinedAt: !667)
!667 = distinct !DILocation(line: 344, column: 25, scope: !668)
!668 = distinct !DILexicalBlock(scope: !669, file: !12, line: 343, column: 25)
!669 = distinct !DILexicalBlock(scope: !662, file: !12, line: 342, column: 48)
!670 = !DILocation(line: 346, column: 23, scope: !669)
!671 = !DILocation(line: 347, column: 40, scope: !672)
!672 = distinct !DILexicalBlock(scope: !662, file: !12, line: 346, column: 30)
!673 = !DILocation(line: 351, column: 33, scope: !674)
!674 = distinct !DILexicalBlock(scope: !417, file: !12, line: 350, column: 21)
!675 = !DILocation(line: 351, column: 74, scope: !674)
!676 = !DILocation(line: 351, column: 31, scope: !674)
!677 = !DILocation(line: 352, column: 38, scope: !674)
!678 = !DILocation(line: 352, column: 36, scope: !674)
!679 = !DILocation(line: 353, column: 36, scope: !674)
!680 = !DILocation(line: 357, column: 46, scope: !674)
!681 = !DILocation(line: 357, column: 79, scope: !674)
!682 = !DILocation(line: 357, column: 32, scope: !674)
!683 = !DILocation(line: 357, column: 30, scope: !674)
!684 = !DILocation(line: 359, column: 42, scope: !685)
!685 = distinct !DILexicalBlock(scope: !417, file: !12, line: 359, column: 21)
!686 = !DILocation(line: 359, column: 35, scope: !685)
!687 = !DILocation(line: 359, column: 33, scope: !685)
!688 = !DILocation(line: 359, column: 25, scope: !689)
!689 = distinct !DILexicalBlock(scope: !685, file: !12, line: 359, column: 25)
!690 = !DILocation(line: 359, column: 37, scope: !689)
!691 = !DILocation(line: 359, column: 25, scope: !685)
!692 = !DILocation(line: 361, column: 45, scope: !693)
!693 = distinct !DILexicalBlock(scope: !694, file: !12, line: 360, column: 23)
!694 = distinct !DILexicalBlock(scope: !689, file: !12, line: 359, column: 46)
!695 = !DILocation(line: 361, column: 56, scope: !693)
!696 = !DILocation(line: 361, column: 67, scope: !693)
!697 = !DILocation(line: 361, column: 23, scope: !693)
!698 = !DILocation(line: 362, column: 34, scope: !693)
!699 = !DILocation(line: 362, column: 32, scope: !693)
!700 = !DILocation(line: 364, column: 21, scope: !694)
!701 = !DILocation(line: 368, column: 56, scope: !416)
!702 = !DILocation(line: 369, column: 45, scope: !416)
!703 = !DILocation(line: 369, column: 43, scope: !416)
!704 = !DILocation(line: 370, column: 32, scope: !416)
!705 = !DILocation(line: 370, column: 30, scope: !416)
!706 = !DILocation(line: 371, column: 48, scope: !416)
!707 = !DILocation(line: 372, column: 40, scope: !416)
!708 = !DILocation(line: 372, column: 21, scope: !416)
!709 = !DILocation(line: 1024, column: 7, scope: !455, inlinedAt: !415)
!710 = !DILocation(line: 1024, column: 12, scope: !455, inlinedAt: !415)
!711 = !DILocation(line: 1024, column: 9, scope: !455, inlinedAt: !415)
!712 = !DILocation(line: 1024, column: 7, scope: !456, inlinedAt: !415)
!713 = !DILocation(line: 38, column: 10, scope: !93, inlinedAt: !714)
!714 = distinct !DILocation(line: 1028, column: 5, scope: !462, inlinedAt: !415)
!715 = !DILocation(line: 1025, column: 9, scope: !465, inlinedAt: !415)
!716 = !DILocation(line: 1025, column: 7, scope: !465, inlinedAt: !415)
!717 = !DILocation(line: 1031, column: 3, scope: !456, inlinedAt: !415)
!718 = !DILocation(line: 375, column: 19, scope: !397)
!719 = !DILocation(line: 377, column: 48, scope: !397)
!720 = !DILocation(line: 378, column: 41, scope: !397)
!721 = !DILocation(line: 379, column: 28, scope: !397)
!722 = !DILocation(line: 380, column: 23, scope: !723)
!723 = distinct !DILexicalBlock(scope: !397, file: !12, line: 380, column: 23)
!724 = !DILocation(line: 380, column: 28, scope: !723)
!725 = !DILocation(line: 380, column: 25, scope: !723)
!726 = !DILocation(line: 380, column: 23, scope: !397)
!727 = !DILocation(line: 381, column: 25, scope: !728)
!728 = distinct !DILexicalBlock(scope: !723, file: !12, line: 380, column: 32)
!729 = !DILocation(line: 381, column: 23, scope: !728)
!730 = !DILocation(line: 382, column: 19, scope: !728)
!731 = !DILocation(line: 38, column: 10, scope: !93, inlinedAt: !732)
!732 = distinct !DILocation(line: 384, column: 21, scope: !733)
!733 = distinct !DILexicalBlock(scope: !734, file: !12, line: 383, column: 21)
!734 = distinct !DILexicalBlock(scope: !723, file: !12, line: 382, column: 26)
!735 = !DILocation(line: 388, column: 40, scope: !736)
!736 = distinct !DILexicalBlock(scope: !397, file: !12, line: 387, column: 19)
!737 = !DILocation(line: 389, column: 60, scope: !736)
!738 = !DILocation(line: 390, column: 44, scope: !736)
!739 = !DILocation(line: 390, column: 77, scope: !736)
!740 = !DILocation(line: 390, column: 30, scope: !736)
!741 = !DILocation(line: 390, column: 28, scope: !736)
!742 = !DILocation(line: 392, column: 19, scope: !397)
!743 = !DILocation(line: 394, column: 54, scope: !397)
!744 = !DILocation(line: 395, column: 48, scope: !397)
!745 = !DILocation(line: 396, column: 48, scope: !397)
!746 = !DILocation(line: 397, column: 23, scope: !747)
!747 = distinct !DILexicalBlock(scope: !397, file: !12, line: 397, column: 23)
!748 = !DILocation(line: 397, column: 28, scope: !747)
!749 = !DILocation(line: 397, column: 25, scope: !747)
!750 = !DILocation(line: 397, column: 23, scope: !397)
!751 = !DILocation(line: 398, column: 25, scope: !752)
!752 = distinct !DILexicalBlock(scope: !747, file: !12, line: 397, column: 32)
!753 = !DILocation(line: 398, column: 23, scope: !752)
!754 = !DILocation(line: 399, column: 19, scope: !752)
!755 = !DILocation(line: 38, column: 10, scope: !93, inlinedAt: !756)
!756 = distinct !DILocation(line: 401, column: 21, scope: !757)
!757 = distinct !DILexicalBlock(scope: !758, file: !12, line: 400, column: 21)
!758 = distinct !DILexicalBlock(scope: !747, file: !12, line: 399, column: 26)
!759 = !DILocation(line: 405, column: 40, scope: !760)
!760 = distinct !DILexicalBlock(scope: !397, file: !12, line: 404, column: 19)
!761 = !DILocation(line: 406, column: 60, scope: !760)
!762 = !DILocation(line: 407, column: 41, scope: !760)
!763 = !DILocation(line: 408, column: 28, scope: !760)
!764 = !DILocation(line: 409, column: 44, scope: !760)
!765 = !DILocation(line: 409, column: 77, scope: !760)
!766 = !DILocation(line: 409, column: 30, scope: !760)
!767 = !DILocation(line: 409, column: 28, scope: !760)
!768 = !DILocation(line: 411, column: 23, scope: !425)
!769 = !DILocation(line: 411, column: 66, scope: !425)
!770 = !DILocation(line: 411, column: 23, scope: !397)
!771 = !DILocation(line: 413, column: 47, scope: !423)
!772 = !DILocation(line: 413, column: 21, scope: !423)
!773 = !DILocation(line: 919, column: 15, scope: !429, inlinedAt: !422)
!774 = !DILocation(line: 919, column: 13, scope: !429, inlinedAt: !422)
!775 = !DILocation(line: 920, column: 7, scope: !776, inlinedAt: !422)
!776 = distinct !DILexicalBlock(scope: !429, file: !12, line: 920, column: 7)
!777 = !DILocation(line: 920, column: 17, scope: !776, inlinedAt: !422)
!778 = !DILocation(line: 920, column: 7, scope: !429, inlinedAt: !422)
!779 = !DILocation(line: 925, column: 7, scope: !780, inlinedAt: !422)
!780 = distinct !DILexicalBlock(scope: !781, file: !12, line: 923, column: 12)
!781 = distinct !DILexicalBlock(scope: !782, file: !12, line: 923, column: 9)
!782 = distinct !DILexicalBlock(scope: !776, file: !12, line: 922, column: 10)
!783 = !DILocation(line: 927, column: 7, scope: !780, inlinedAt: !422)
!784 = !DILocation(line: 933, column: 1, scope: !42, inlinedAt: !422)
!785 = !DILocation(line: 416, column: 19, scope: !424)
!786 = !DILocation(line: 419, column: 23, scope: !436)
!787 = !DILocation(line: 419, column: 58, scope: !436)
!788 = !DILocation(line: 419, column: 23, scope: !397)
!789 = !DILocation(line: 421, column: 42, scope: !434)
!790 = !DILocation(line: 421, column: 21, scope: !434)
!791 = !DILocation(line: 853, column: 15, scope: !438, inlinedAt: !433)
!792 = !DILocation(line: 853, column: 13, scope: !438, inlinedAt: !433)
!793 = !DILocation(line: 854, column: 7, scope: !794, inlinedAt: !433)
!794 = distinct !DILexicalBlock(scope: !438, file: !12, line: 854, column: 7)
!795 = !DILocation(line: 854, column: 17, scope: !794, inlinedAt: !433)
!796 = !DILocation(line: 854, column: 7, scope: !438, inlinedAt: !433)
!797 = !DILocation(line: 859, column: 7, scope: !798, inlinedAt: !433)
!798 = distinct !DILexicalBlock(scope: !799, file: !12, line: 857, column: 12)
!799 = distinct !DILexicalBlock(scope: !800, file: !12, line: 857, column: 9)
!800 = distinct !DILexicalBlock(scope: !794, file: !12, line: 856, column: 10)
!801 = !DILocation(line: 861, column: 7, scope: !798, inlinedAt: !433)
!802 = !DILocation(line: 867, column: 1, scope: !33, inlinedAt: !433)
!803 = !DILocation(line: 423, column: 19, scope: !435)
!804 = !DILocation(line: 426, column: 62, scope: !397)
!805 = !DILocation(line: 427, column: 19, scope: !397)
!806 = !DILocation(line: 429, column: 23, scope: !807)
!807 = distinct !DILexicalBlock(scope: !397, file: !12, line: 429, column: 23)
!808 = !DILocation(line: 429, column: 28, scope: !807)
!809 = !DILocation(line: 429, column: 25, scope: !807)
!810 = !DILocation(line: 429, column: 23, scope: !397)
!811 = !DILocation(line: 430, column: 25, scope: !812)
!812 = distinct !DILexicalBlock(scope: !807, file: !12, line: 429, column: 32)
!813 = !DILocation(line: 430, column: 23, scope: !812)
!814 = !DILocation(line: 431, column: 19, scope: !812)
!815 = !DILocation(line: 38, column: 10, scope: !93, inlinedAt: !816)
!816 = distinct !DILocation(line: 433, column: 21, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !12, line: 432, column: 21)
!818 = distinct !DILexicalBlock(scope: !807, file: !12, line: 431, column: 26)
!819 = !DILocation(line: 437, column: 40, scope: !820)
!820 = distinct !DILexicalBlock(scope: !397, file: !12, line: 436, column: 19)
!821 = !DILocation(line: 438, column: 60, scope: !820)
!822 = !DILocation(line: 439, column: 44, scope: !820)
!823 = !DILocation(line: 439, column: 77, scope: !820)
!824 = !DILocation(line: 439, column: 30, scope: !820)
!825 = !DILocation(line: 439, column: 28, scope: !820)
!826 = !DILocation(line: 441, column: 17, scope: !397)
!827 = !DILocation(line: 441, column: 24, scope: !398)
!828 = !DILocation(line: 452, column: 24, scope: !378)
!829 = !DILocation(line: 453, column: 7, scope: !830)
!830 = distinct !DILexicalBlock(scope: !378, file: !12, line: 453, column: 7)
!831 = !DILocation(line: 453, column: 28, scope: !830)
!832 = !DILocation(line: 453, column: 7, scope: !378)
!833 = !DILocation(line: 455, column: 3, scope: !834)
!834 = distinct !DILexicalBlock(scope: !830, file: !12, line: 453, column: 34)
!835 = !DILocation(line: 458, column: 11, scope: !378)
!836 = !DILocation(line: 458, column: 3, scope: !378)
!837 = !DILocation(line: 460, column: 1, scope: !17)
!838 = !DILocation(line: 1020, column: 29, scope: !45)
!839 = !DILocation(line: 1020, column: 39, scope: !45)
!840 = !DILocation(line: 1024, column: 7, scope: !455)
!841 = !DILocation(line: 1024, column: 12, scope: !455)
!842 = !DILocation(line: 1024, column: 9, scope: !455)
!843 = !DILocation(line: 1024, column: 7, scope: !456)
!844 = !DILocation(line: 1025, column: 9, scope: !465)
!845 = !DILocation(line: 1025, column: 7, scope: !465)
!846 = !DILocation(line: 1026, column: 3, scope: !465)
!847 = !DILocation(line: 38, column: 10, scope: !93, inlinedAt: !848)
!848 = distinct !DILocation(line: 1028, column: 5, scope: !462)
!849 = !DILocation(line: 1031, column: 3, scope: !456)
!850 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !18, file: !12, line: 461, type: !15)
!851 = !DILocation(line: 461, column: 27, scope: !18)
!852 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !18, file: !12, line: 461, type: !15)
!853 = !DILocation(line: 461, column: 46, scope: !18)
!854 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !18, file: !12, line: 462, type: !15)
!855 = !DILocation(line: 462, column: 7, scope: !18)
!856 = !DILocation(line: 462, column: 39, scope: !18)
!857 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !18, file: !12, line: 463, type: !15)
!858 = !DILocation(line: 463, column: 7, scope: !18)
!859 = !DILocation(line: 463, column: 50, scope: !18)
!860 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !18, file: !12, line: 464, type: !15)
!861 = !DILocation(line: 464, column: 7, scope: !18)
!862 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__TargetObject", scope: !18, file: !12, line: 465, type: !15)
!863 = !DILocation(line: 465, column: 7, scope: !18)
!864 = !DILocation(line: 465, column: 41, scope: !18)
!865 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__MaxTransferSize", scope: !18, file: !12, line: 466, type: !15)
!866 = !DILocation(line: 466, column: 7, scope: !18)
!867 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__DriveType", scope: !18, file: !12, line: 467, type: !15)
!868 = !DILocation(line: 467, column: 7, scope: !18)
!869 = !DILocation(line: 467, column: 38, scope: !18)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__PerpendicularMode", scope: !18, file: !12, line: 468, type: !15)
!871 = !DILocation(line: 468, column: 7, scope: !18)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__DeviceUnit", scope: !18, file: !12, line: 469, type: !15)
!873 = !DILocation(line: 469, column: 7, scope: !18)
!874 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__DriveOnValue", scope: !18, file: !12, line: 470, type: !15)
!875 = !DILocation(line: 470, column: 7, scope: !18)
!876 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__UnderlyingPDO", scope: !18, file: !12, line: 471, type: !15)
!877 = !DILocation(line: 471, column: 7, scope: !18)
!878 = !DILocation(line: 471, column: 42, scope: !18)
!879 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__InterfaceString", scope: !18, file: !12, line: 472, type: !15)
!880 = !DILocation(line: 472, column: 7, scope: !18)
!881 = !DILocation(line: 472, column: 44, scope: !18)
!882 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__IsStarted", scope: !18, file: !12, line: 473, type: !15)
!883 = !DILocation(line: 473, column: 7, scope: !18)
!884 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension__HoldNewRequests", scope: !18, file: !12, line: 474, type: !15)
!885 = !DILocation(line: 474, column: 7, scope: !18)
!886 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ntStatus", scope: !18, file: !12, line: 475, type: !15)
!887 = !DILocation(line: 475, column: 7, scope: !18)
!888 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pnpStatus", scope: !18, file: !12, line: 476, type: !15)
!889 = !DILocation(line: 476, column: 7, scope: !18)
!890 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doneEvent", scope: !18, file: !12, line: 477, type: !15)
!891 = !DILocation(line: 477, column: 7, scope: !18)
!892 = !DILocation(line: 477, column: 19, scope: !18)
!893 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo", scope: !18, file: !12, line: 478, type: !15)
!894 = !DILocation(line: 478, column: 7, scope: !18)
!895 = !DILocation(line: 478, column: 17, scope: !18)
!896 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__BufferCount", scope: !18, file: !12, line: 479, type: !15)
!897 = !DILocation(line: 479, column: 7, scope: !18)
!898 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__BufferSize", scope: !18, file: !12, line: 480, type: !15)
!899 = !DILocation(line: 480, column: 7, scope: !18)
!900 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__MaxTransferSize", scope: !18, file: !12, line: 481, type: !15)
!901 = !DILocation(line: 481, column: 7, scope: !18)
!902 = !DILocation(line: 481, column: 34, scope: !18)
!903 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__AcpiBios", scope: !18, file: !12, line: 482, type: !15)
!904 = !DILocation(line: 482, column: 7, scope: !18)
!905 = !DILocation(line: 482, column: 27, scope: !18)
!906 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__AcpiFdiSupported", scope: !18, file: !12, line: 483, type: !15)
!907 = !DILocation(line: 483, column: 7, scope: !18)
!908 = !DILocation(line: 483, column: 35, scope: !18)
!909 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__PeripheralNumber", scope: !18, file: !12, line: 484, type: !15)
!910 = !DILocation(line: 484, column: 7, scope: !18)
!911 = !DILocation(line: 484, column: 35, scope: !18)
!912 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__BusType", scope: !18, file: !12, line: 485, type: !15)
!913 = !DILocation(line: 485, column: 7, scope: !18)
!914 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__ControllerNumber", scope: !18, file: !12, line: 486, type: !15)
!915 = !DILocation(line: 486, column: 7, scope: !18)
!916 = !DILocation(line: 486, column: 35, scope: !18)
!917 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__UnitNumber", scope: !18, file: !12, line: 487, type: !15)
!918 = !DILocation(line: 487, column: 7, scope: !18)
!919 = !DILocation(line: 487, column: 29, scope: !18)
!920 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdcInfo__BusNumber", scope: !18, file: !12, line: 488, type: !15)
!921 = !DILocation(line: 488, column: 7, scope: !18)
!922 = !DILocation(line: 488, column: 28, scope: !18)
!923 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Dc", scope: !18, file: !12, line: 489, type: !15)
!924 = !DILocation(line: 489, column: 7, scope: !18)
!925 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Fp", scope: !18, file: !12, line: 490, type: !15)
!926 = !DILocation(line: 490, column: 7, scope: !18)
!927 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disketteExtension", scope: !18, file: !12, line: 491, type: !15)
!928 = !DILocation(line: 491, column: 7, scope: !18)
!929 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp", scope: !18, file: !12, line: 492, type: !15)
!930 = !DILocation(line: 492, column: 7, scope: !18)
!931 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___0", scope: !18, file: !12, line: 493, type: !15)
!932 = !DILocation(line: 493, column: 7, scope: !18)
!933 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp", scope: !18, file: !12, line: 494, type: !15)
!934 = !DILocation(line: 494, column: 7, scope: !18)
!935 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp__Control", scope: !18, file: !12, line: 495, type: !15)
!936 = !DILocation(line: 495, column: 7, scope: !18)
!937 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___1", scope: !18, file: !12, line: 496, type: !15)
!938 = !DILocation(line: 496, column: 7, scope: !18)
!939 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Control", scope: !18, file: !12, line: 497, type: !15)
!940 = !DILocation(line: 497, column: 7, scope: !18)
!941 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Context", scope: !18, file: !12, line: 498, type: !15)
!942 = !DILocation(line: 498, column: 7, scope: !18)
!943 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "InterfaceType", scope: !18, file: !12, line: 499, type: !15)
!944 = !DILocation(line: 499, column: 7, scope: !18)
!945 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86", scope: !18, file: !12, line: 500, type: !15)
!946 = !DILocation(line: 500, column: 7, scope: !18)
!947 = !DILocation(line: 500, column: 61, scope: !18)
!948 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp42", scope: !18, file: !12, line: 501, type: !4)
!949 = !DILocation(line: 501, column: 8, scope: !18)
!950 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp43", scope: !18, file: !12, line: 502, type: !15)
!951 = !DILocation(line: 502, column: 7, scope: !18)
!952 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp44", scope: !18, file: !12, line: 503, type: !15)
!953 = !DILocation(line: 503, column: 7, scope: !18)
!954 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp45", scope: !18, file: !12, line: 504, type: !15)
!955 = !DILocation(line: 504, column: 7, scope: !18)
!956 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp46", scope: !18, file: !12, line: 505, type: !15)
!957 = !DILocation(line: 505, column: 7, scope: !18)
!958 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp47", scope: !18, file: !12, line: 506, type: !15)
!959 = !DILocation(line: 506, column: 7, scope: !18)
!960 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp48", scope: !18, file: !12, line: 507, type: !15)
!961 = !DILocation(line: 507, column: 7, scope: !18)
!962 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp49", scope: !18, file: !12, line: 508, type: !15)
!963 = !DILocation(line: 508, column: 7, scope: !18)
!964 = !DILocation(line: 503, column: 8, scope: !965)
!965 = distinct !DILexicalBlock(scope: !18, file: !12, line: 510, column: 3)
!966 = !DILocation(line: 503, column: 6, scope: !965)
!967 = !DILocation(line: 504, column: 8, scope: !965)
!968 = !DILocation(line: 504, column: 6, scope: !965)
!969 = !DILocation(line: 505, column: 23, scope: !965)
!970 = !DILocation(line: 505, column: 21, scope: !965)
!971 = !DILocation(line: 506, column: 11, scope: !965)
!972 = !DILocation(line: 506, column: 9, scope: !965)
!973 = !DILocation(line: 507, column: 15, scope: !965)
!974 = !DILocation(line: 507, column: 13, scope: !965)
!975 = !DILocation(line: 508, column: 15, scope: !965)
!976 = !DILocation(line: 508, column: 56, scope: !965)
!977 = !DILocation(line: 508, column: 13, scope: !965)
!978 = !DILocation(line: 509, column: 22, scope: !965)
!979 = !DILocation(line: 510, column: 7, scope: !980)
!980 = distinct !DILexicalBlock(scope: !965, file: !12, line: 510, column: 7)
!981 = !DILocation(line: 510, column: 12, scope: !980)
!982 = !DILocation(line: 510, column: 9, scope: !980)
!983 = !DILocation(line: 92, column: 31, scope: !11, inlinedAt: !984)
!984 = distinct !DILocation(line: 551, column: 20, scope: !985)
!985 = distinct !DILexicalBlock(scope: !986, file: !12, line: 550, column: 9)
!986 = distinct !DILexicalBlock(scope: !987, file: !12, line: 549, column: 38)
!987 = distinct !DILexicalBlock(scope: !988, file: !12, line: 549, column: 11)
!988 = distinct !DILexicalBlock(scope: !989, file: !12, line: 548, column: 28)
!989 = distinct !DILexicalBlock(scope: !990, file: !12, line: 548, column: 9)
!990 = distinct !DILexicalBlock(scope: !991, file: !12, line: 546, column: 22)
!991 = distinct !DILexicalBlock(scope: !965, file: !12, line: 546, column: 7)
!992 = !DILocation(line: 92, column: 55, scope: !11, inlinedAt: !984)
!993 = !DILocation(line: 1020, column: 29, scope: !45, inlinedAt: !994)
!994 = distinct !DILocation(line: 624, column: 3, scope: !995)
!995 = distinct !DILexicalBlock(scope: !965, file: !12, line: 617, column: 3)
!996 = !DILocation(line: 1020, column: 39, scope: !45, inlinedAt: !994)
!997 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "BusType", arg: 1, scope: !36, file: !12, line: 869, type: !15)
!998 = !DILocation(line: 869, column: 34, scope: !36, inlinedAt: !999)
!999 = distinct !DILocation(line: 579, column: 20, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !12, line: 575, column: 9)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !12, line: 570, column: 17)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !12, line: 569, column: 7)
!1003 = distinct !DILexicalBlock(scope: !989, file: !12, line: 559, column: 12)
!1004 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "BusNumber", arg: 2, scope: !36, file: !12, line: 869, type: !15)
!1005 = !DILocation(line: 869, column: 48, scope: !36, inlinedAt: !999)
!1006 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ControllerType", arg: 3, scope: !36, file: !12, line: 869, type: !15)
!1007 = !DILocation(line: 869, column: 64, scope: !36, inlinedAt: !999)
!1008 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ControllerNumber", arg: 4, scope: !36, file: !12, line: 869, type: !15)
!1009 = !DILocation(line: 869, column: 85, scope: !36, inlinedAt: !999)
!1010 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PeripheralType", arg: 5, scope: !36, file: !12, line: 870, type: !15)
!1011 = !DILocation(line: 870, column: 34, scope: !36, inlinedAt: !999)
!1012 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PeripheralNumber", arg: 6, scope: !36, file: !12, line: 870, type: !15)
!1013 = !DILocation(line: 870, column: 55, scope: !36, inlinedAt: !999)
!1014 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "CalloutRoutine", arg: 7, scope: !36, file: !12, line: 870, type: !15)
!1015 = !DILocation(line: 870, column: 78, scope: !36, inlinedAt: !999)
!1016 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 8, scope: !36, file: !12, line: 871, type: !15)
!1017 = !DILocation(line: 871, column: 34, scope: !36, inlinedAt: !999)
!1018 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_4", scope: !1019, file: !12, line: 875, type: !15)
!1019 = distinct !DILexicalBlock(scope: !36, file: !12, line: 874, column: 3)
!1020 = !DILocation(line: 875, column: 7, scope: !1019, inlinedAt: !999)
!1021 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PhysicalDeviceObject", arg: 1, scope: !39, file: !12, line: 892, type: !15)
!1022 = !DILocation(line: 892, column: 35, scope: !39, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 602, column: 19, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !12, line: 601, column: 7)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !12, line: 593, column: 24)
!1026 = distinct !DILexicalBlock(scope: !990, file: !12, line: 593, column: 9)
!1027 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InterfaceClassGuid", arg: 2, scope: !39, file: !12, line: 892, type: !15)
!1028 = !DILocation(line: 892, column: 62, scope: !39, inlinedAt: !1023)
!1029 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ReferenceString", arg: 3, scope: !39, file: !12, line: 893, type: !15)
!1030 = !DILocation(line: 893, column: 35, scope: !39, inlinedAt: !1023)
!1031 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SymbolicLinkName", arg: 4, scope: !39, file: !12, line: 893, type: !15)
!1032 = !DILocation(line: 893, column: 57, scope: !39, inlinedAt: !1023)
!1033 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_5", scope: !1034, file: !12, line: 897, type: !15)
!1034 = distinct !DILexicalBlock(scope: !39, file: !12, line: 896, column: 3)
!1035 = !DILocation(line: 897, column: 7, scope: !1034, inlinedAt: !1023)
!1036 = !DILocation(line: 914, column: 35, scope: !42, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 607, column: 21, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !12, line: 606, column: 9)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !12, line: 605, column: 27)
!1040 = distinct !DILexicalBlock(scope: !1025, file: !12, line: 605, column: 11)
!1041 = !DILocation(line: 914, column: 58, scope: !42, inlinedAt: !1037)
!1042 = !DILocation(line: 918, column: 7, scope: !429, inlinedAt: !1037)
!1043 = !DILocation(line: 510, column: 7, scope: !965)
!1044 = !DILocation(line: 38, column: 10, scope: !93, inlinedAt: !1045)
!1045 = distinct !DILocation(line: 512, column: 5, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !12, line: 511, column: 5)
!1047 = distinct !DILexicalBlock(scope: !980, file: !12, line: 510, column: 16)
!1048 = !DILocation(line: 514, column: 3, scope: !1047)
!1049 = !DILocation(line: 515, column: 9, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !12, line: 515, column: 9)
!1051 = distinct !DILexicalBlock(scope: !980, file: !12, line: 514, column: 10)
!1052 = !DILocation(line: 515, column: 24, scope: !1050)
!1053 = !DILocation(line: 515, column: 9, scope: !1051)
!1054 = !DILocation(line: 38, column: 10, scope: !93, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 517, column: 7, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !12, line: 516, column: 7)
!1057 = distinct !DILexicalBlock(scope: !1050, file: !12, line: 515, column: 30)
!1058 = !DILocation(line: 519, column: 5, scope: !1057)
!1059 = !DILocation(line: 520, column: 22, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1050, file: !12, line: 519, column: 12)
!1061 = !DILocation(line: 524, column: 15, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !965, file: !12, line: 523, column: 3)
!1063 = !DILocation(line: 524, column: 56, scope: !1062)
!1064 = !DILocation(line: 524, column: 13, scope: !1062)
!1065 = !DILocation(line: 525, column: 20, scope: !1062)
!1066 = !DILocation(line: 525, column: 18, scope: !1062)
!1067 = !DILocation(line: 526, column: 18, scope: !1062)
!1068 = !DILocation(line: 530, column: 28, scope: !1062)
!1069 = !DILocation(line: 530, column: 61, scope: !1062)
!1070 = !DILocation(line: 530, column: 14, scope: !1062)
!1071 = !DILocation(line: 530, column: 12, scope: !1062)
!1072 = !DILocation(line: 532, column: 24, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !965, file: !12, line: 532, column: 3)
!1074 = !DILocation(line: 532, column: 17, scope: !1073)
!1075 = !DILocation(line: 532, column: 15, scope: !1073)
!1076 = !DILocation(line: 532, column: 7, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1073, file: !12, line: 532, column: 7)
!1078 = !DILocation(line: 532, column: 19, scope: !1077)
!1079 = !DILocation(line: 532, column: 7, scope: !1073)
!1080 = !DILocation(line: 534, column: 38, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !12, line: 533, column: 5)
!1082 = distinct !DILexicalBlock(scope: !1077, file: !12, line: 532, column: 28)
!1083 = !DILocation(line: 534, column: 49, scope: !1081)
!1084 = !DILocation(line: 534, column: 60, scope: !1081)
!1085 = !DILocation(line: 534, column: 16, scope: !1081)
!1086 = !DILocation(line: 534, column: 14, scope: !1081)
!1087 = !DILocation(line: 535, column: 16, scope: !1081)
!1088 = !DILocation(line: 535, column: 14, scope: !1081)
!1089 = !DILocation(line: 537, column: 3, scope: !1082)
!1090 = !DILocation(line: 541, column: 24, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !965, file: !12, line: 539, column: 3)
!1092 = !DILocation(line: 542, column: 23, scope: !1091)
!1093 = !DILocation(line: 543, column: 15, scope: !1091)
!1094 = !DILocation(line: 543, column: 28, scope: !1091)
!1095 = !DILocation(line: 543, column: 61, scope: !1091)
!1096 = !DILocation(line: 543, column: 74, scope: !1091)
!1097 = !DILocation(line: 543, column: 14, scope: !1091)
!1098 = !DILocation(line: 543, column: 12, scope: !1091)
!1099 = !DILocation(line: 546, column: 7, scope: !991)
!1100 = !DILocation(line: 546, column: 16, scope: !991)
!1101 = !DILocation(line: 546, column: 7, scope: !965)
!1102 = !DILocation(line: 547, column: 42, scope: !990)
!1103 = !DILocation(line: 547, column: 40, scope: !990)
!1104 = !DILocation(line: 548, column: 9, scope: !989)
!1105 = !DILocation(line: 548, column: 9, scope: !990)
!1106 = !DILocation(line: 549, column: 11, scope: !987)
!1107 = !DILocation(line: 549, column: 11, scope: !988)
!1108 = !DILocation(line: 551, column: 42, scope: !985)
!1109 = !DILocation(line: 551, column: 61, scope: !985)
!1110 = !DILocation(line: 551, column: 20, scope: !985)
!1111 = !DILocation(line: 96, column: 3, scope: !118, inlinedAt: !984)
!1112 = !DILocation(line: 551, column: 18, scope: !985)
!1113 = !DILocation(line: 553, column: 13, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !986, file: !12, line: 553, column: 13)
!1115 = !DILocation(line: 553, column: 42, scope: !1114)
!1116 = !DILocation(line: 553, column: 13, scope: !986)
!1117 = !DILocation(line: 555, column: 9, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1114, file: !12, line: 553, column: 48)
!1119 = !DILocation(line: 556, column: 7, scope: !986)
!1120 = !DILocation(line: 557, column: 9, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !987, file: !12, line: 556, column: 14)
!1122 = !DILocation(line: 559, column: 5, scope: !988)
!1123 = !DILocation(line: 559, column: 12, scope: !989)
!1124 = !DILocation(line: 563, column: 11, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1003, file: !12, line: 563, column: 11)
!1126 = !DILocation(line: 563, column: 40, scope: !1125)
!1127 = !DILocation(line: 563, column: 11, scope: !1003)
!1128 = !DILocation(line: 565, column: 7, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1125, file: !12, line: 563, column: 46)
!1130 = !DILocation(line: 568, column: 21, scope: !1003)
!1131 = !DILocation(line: 570, column: 7, scope: !1002)
!1132 = !DILocation(line: 570, column: 17, scope: !1002)
!1133 = !DILocation(line: 572, column: 13, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1001, file: !12, line: 572, column: 13)
!1135 = !DILocation(line: 572, column: 30, scope: !1134)
!1136 = !DILocation(line: 572, column: 27, scope: !1134)
!1137 = !DILocation(line: 572, column: 13, scope: !1001)
!1138 = !DILocation(line: 573, column: 11, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1134, file: !12, line: 572, column: 52)
!1140 = !DILocation(line: 578, column: 28, scope: !1000)
!1141 = !DILocation(line: 578, column: 26, scope: !1000)
!1142 = !DILocation(line: 579, column: 45, scope: !1000)
!1143 = !DILocation(line: 579, column: 63, scope: !1000)
!1144 = !DILocation(line: 580, column: 45, scope: !1000)
!1145 = !DILocation(line: 580, column: 49, scope: !1000)
!1146 = !DILocation(line: 580, column: 76, scope: !1000)
!1147 = !DILocation(line: 580, column: 80, scope: !1000)
!1148 = !DILocation(line: 581, column: 45, scope: !1000)
!1149 = !DILocation(line: 581, column: 63, scope: !1000)
!1150 = !DILocation(line: 579, column: 20, scope: !1000)
!1151 = !DILocation(line: 876, column: 15, scope: !1019, inlinedAt: !999)
!1152 = !DILocation(line: 876, column: 13, scope: !1019, inlinedAt: !999)
!1153 = !DILocation(line: 877, column: 7, scope: !1154, inlinedAt: !999)
!1154 = distinct !DILexicalBlock(scope: !1019, file: !12, line: 877, column: 7)
!1155 = !DILocation(line: 877, column: 17, scope: !1154, inlinedAt: !999)
!1156 = !DILocation(line: 877, column: 7, scope: !1019, inlinedAt: !999)
!1157 = !DILocation(line: 882, column: 7, scope: !1158, inlinedAt: !999)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !12, line: 880, column: 12)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !12, line: 880, column: 9)
!1160 = distinct !DILexicalBlock(scope: !1154, file: !12, line: 879, column: 10)
!1161 = !DILocation(line: 884, column: 7, scope: !1158, inlinedAt: !999)
!1162 = !DILocation(line: 890, column: 1, scope: !36, inlinedAt: !999)
!1163 = !DILocation(line: 579, column: 18, scope: !1000)
!1164 = !DILocation(line: 583, column: 13, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1001, file: !12, line: 583, column: 13)
!1166 = !DILocation(line: 583, column: 22, scope: !1165)
!1167 = !DILocation(line: 583, column: 13, scope: !1001)
!1168 = !DILocation(line: 584, column: 11, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1165, file: !12, line: 583, column: 28)
!1170 = !DILocation(line: 588, column: 23, scope: !1001)
!1171 = !DILocation(line: 591, column: 7, scope: !1002)
!1172 = !DILocation(line: 593, column: 9, scope: !1026)
!1173 = !DILocation(line: 593, column: 18, scope: !1026)
!1174 = !DILocation(line: 593, column: 9, scope: !990)
!1175 = !DILocation(line: 594, column: 11, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1025, file: !12, line: 594, column: 11)
!1177 = !DILocation(line: 594, column: 63, scope: !1176)
!1178 = !DILocation(line: 594, column: 11, scope: !1025)
!1179 = !DILocation(line: 595, column: 41, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1176, file: !12, line: 594, column: 69)
!1181 = !DILocation(line: 595, column: 39, scope: !1180)
!1182 = !DILocation(line: 597, column: 7, scope: !1180)
!1183 = !DILocation(line: 598, column: 41, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1176, file: !12, line: 597, column: 14)
!1185 = !DILocation(line: 598, column: 39, scope: !1184)
!1186 = !DILocation(line: 602, column: 45, scope: !1024)
!1187 = !DILocation(line: 602, column: 79, scope: !1024)
!1188 = !DILocation(line: 603, column: 48, scope: !1024)
!1189 = !DILocation(line: 602, column: 19, scope: !1024)
!1190 = !DILocation(line: 898, column: 15, scope: !1034, inlinedAt: !1023)
!1191 = !DILocation(line: 898, column: 13, scope: !1034, inlinedAt: !1023)
!1192 = !DILocation(line: 899, column: 7, scope: !1193, inlinedAt: !1023)
!1193 = distinct !DILexicalBlock(scope: !1034, file: !12, line: 899, column: 7)
!1194 = !DILocation(line: 899, column: 17, scope: !1193, inlinedAt: !1023)
!1195 = !DILocation(line: 899, column: 7, scope: !1034, inlinedAt: !1023)
!1196 = !DILocation(line: 904, column: 7, scope: !1197, inlinedAt: !1023)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !12, line: 902, column: 12)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !12, line: 902, column: 9)
!1199 = distinct !DILexicalBlock(scope: !1193, file: !12, line: 901, column: 10)
!1200 = !DILocation(line: 906, column: 7, scope: !1197, inlinedAt: !1023)
!1201 = !DILocation(line: 912, column: 1, scope: !39, inlinedAt: !1023)
!1202 = !DILocation(line: 602, column: 17, scope: !1024)
!1203 = !DILocation(line: 605, column: 11, scope: !1040)
!1204 = !DILocation(line: 605, column: 21, scope: !1040)
!1205 = !DILocation(line: 605, column: 11, scope: !1025)
!1206 = !DILocation(line: 607, column: 47, scope: !1038)
!1207 = !DILocation(line: 607, column: 21, scope: !1038)
!1208 = !DILocation(line: 919, column: 15, scope: !429, inlinedAt: !1037)
!1209 = !DILocation(line: 919, column: 13, scope: !429, inlinedAt: !1037)
!1210 = !DILocation(line: 920, column: 7, scope: !776, inlinedAt: !1037)
!1211 = !DILocation(line: 920, column: 17, scope: !776, inlinedAt: !1037)
!1212 = !DILocation(line: 920, column: 7, scope: !429, inlinedAt: !1037)
!1213 = !DILocation(line: 925, column: 7, scope: !780, inlinedAt: !1037)
!1214 = !DILocation(line: 927, column: 7, scope: !780, inlinedAt: !1037)
!1215 = !DILocation(line: 933, column: 1, scope: !42, inlinedAt: !1037)
!1216 = !DILocation(line: 607, column: 19, scope: !1038)
!1217 = !DILocation(line: 610, column: 7, scope: !1039)
!1218 = !DILocation(line: 613, column: 36, scope: !1025)
!1219 = !DILocation(line: 614, column: 42, scope: !1025)
!1220 = !DILocation(line: 615, column: 5, scope: !1025)
!1221 = !DILocation(line: 616, column: 3, scope: !990)
!1222 = !DILocation(line: 622, column: 27, scope: !995)
!1223 = !DILocation(line: 622, column: 25, scope: !995)
!1224 = !DILocation(line: 623, column: 14, scope: !995)
!1225 = !DILocation(line: 623, column: 12, scope: !995)
!1226 = !DILocation(line: 624, column: 22, scope: !995)
!1227 = !DILocation(line: 624, column: 3, scope: !995)
!1228 = !DILocation(line: 1024, column: 7, scope: !455, inlinedAt: !994)
!1229 = !DILocation(line: 1024, column: 12, scope: !455, inlinedAt: !994)
!1230 = !DILocation(line: 1024, column: 9, scope: !455, inlinedAt: !994)
!1231 = !DILocation(line: 1024, column: 7, scope: !456, inlinedAt: !994)
!1232 = !DILocation(line: 38, column: 10, scope: !93, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 1028, column: 5, scope: !462, inlinedAt: !994)
!1234 = !DILocation(line: 1025, column: 9, scope: !465, inlinedAt: !994)
!1235 = !DILocation(line: 1025, column: 7, scope: !465, inlinedAt: !994)
!1236 = !DILocation(line: 1031, column: 3, scope: !456, inlinedAt: !994)
!1237 = !DILocation(line: 626, column: 11, scope: !965)
!1238 = !DILocation(line: 626, column: 3, scope: !965)
!1239 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !19, file: !12, line: 629, type: !15)
!1240 = !DILocation(line: 629, column: 27, scope: !19)
!1241 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !19, file: !12, line: 629, type: !15)
!1242 = !DILocation(line: 629, column: 46, scope: !19)
!1243 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 3, scope: !19, file: !12, line: 629, type: !15)
!1244 = !DILocation(line: 629, column: 56, scope: !19)
!1245 = !DILocation(line: 634, column: 14, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !12, line: 633, column: 3)
!1247 = distinct !DILexicalBlock(scope: !19, file: !12, line: 632, column: 3)
!1248 = !DILocation(line: 634, column: 3, scope: !1246)
!1249 = !DILocation(line: 1035, column: 11, scope: !48, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 634, column: 3, scope: !1246)
!1251 = !DILocation(line: 1035, column: 7, scope: !48, inlinedAt: !1250)
!1252 = !DILocation(line: 1038, column: 18, scope: !1253, inlinedAt: !1250)
!1253 = distinct !DILexicalBlock(scope: !48, file: !12, line: 1037, column: 3)
!1254 = !DILocation(line: 1039, column: 11, scope: !1253, inlinedAt: !1250)
!1255 = !DILocation(line: 1039, column: 3, scope: !1253, inlinedAt: !1250)
!1256 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 1, scope: !48, file: !12, line: 1034, type: !15)
!1257 = !DILocation(line: 1034, column: 20, scope: !48, inlinedAt: !1250)
!1258 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Increment", arg: 2, scope: !48, file: !12, line: 1034, type: !15)
!1259 = !DILocation(line: 1034, column: 32, scope: !48, inlinedAt: !1250)
!1260 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Wait", arg: 3, scope: !48, file: !12, line: 1034, type: !15)
!1261 = !DILocation(line: 1034, column: 48, scope: !48, inlinedAt: !1250)
!1262 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !48, file: !12, line: 1035, type: !15)
!1263 = !DILocation(line: 636, column: 3, scope: !1247)
!1264 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !22, file: !12, line: 639, type: !15)
!1265 = !DILocation(line: 639, column: 23, scope: !22)
!1266 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Ioctl", arg: 2, scope: !22, file: !12, line: 639, type: !15)
!1267 = !DILocation(line: 639, column: 42, scope: !22)
!1268 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Data", arg: 3, scope: !22, file: !12, line: 639, type: !15)
!1269 = !DILocation(line: 639, column: 54, scope: !22)
!1270 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ntStatus", scope: !22, file: !12, line: 640, type: !15)
!1271 = !DILocation(line: 640, column: 7, scope: !22)
!1272 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp", scope: !22, file: !12, line: 641, type: !15)
!1273 = !DILocation(line: 641, column: 7, scope: !22)
!1274 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack", scope: !22, file: !12, line: 642, type: !15)
!1275 = !DILocation(line: 642, column: 7, scope: !22)
!1276 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doneEvent", scope: !22, file: !12, line: 643, type: !15)
!1277 = !DILocation(line: 643, column: 7, scope: !22)
!1278 = !DILocation(line: 643, column: 19, scope: !22)
!1279 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ioStatus", scope: !22, file: !12, line: 644, type: !15)
!1280 = !DILocation(line: 644, column: 7, scope: !22)
!1281 = !DILocation(line: 644, column: 18, scope: !22)
!1282 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp__Tail__Overlay__CurrentStackLocation", scope: !22, file: !12, line: 645, type: !15)
!1283 = !DILocation(line: 645, column: 7, scope: !22)
!1284 = !DILocation(line: 645, column: 50, scope: !22)
!1285 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack__Parameters__DeviceIoControl__Type3InputBuffer", scope: !22, file: !12, line: 646, type: !15)
!1286 = !DILocation(line: 646, column: 7, scope: !22)
!1287 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp11", scope: !22, file: !12, line: 647, type: !4)
!1288 = !DILocation(line: 647, column: 8, scope: !22)
!1289 = !DILocation(line: 650, column: 39, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !12, line: 650, column: 3)
!1291 = distinct !DILexicalBlock(scope: !22, file: !12, line: 649, column: 3)
!1292 = !DILocation(line: 650, column: 46, scope: !1290)
!1293 = !DILocation(line: 650, column: 75, scope: !1290)
!1294 = !DILocation(line: 651, column: 39, scope: !1290)
!1295 = !DILocation(line: 650, column: 9, scope: !1290)
!1296 = !DILocation(line: 827, column: 16, scope: !30, inlinedAt: !1297)
!1297 = distinct !DILocation(line: 650, column: 9, scope: !1290)
!1298 = !DILocation(line: 827, column: 7, scope: !30, inlinedAt: !1297)
!1299 = !DILocation(line: 830, column: 13, scope: !1300, inlinedAt: !1297)
!1300 = distinct !DILexicalBlock(scope: !30, file: !12, line: 829, column: 3)
!1301 = !DILocation(line: 832, column: 15, scope: !1300, inlinedAt: !1297)
!1302 = !DILocation(line: 832, column: 13, scope: !1300, inlinedAt: !1297)
!1303 = !DILocation(line: 833, column: 7, scope: !1304, inlinedAt: !1297)
!1304 = distinct !DILexicalBlock(scope: !1300, file: !12, line: 833, column: 7)
!1305 = !DILocation(line: 833, column: 17, scope: !1304, inlinedAt: !1297)
!1306 = !DILocation(line: 833, column: 7, scope: !1300, inlinedAt: !1297)
!1307 = !DILocation(line: 838, column: 15, scope: !1308, inlinedAt: !1297)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !12, line: 836, column: 12)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !12, line: 836, column: 9)
!1310 = distinct !DILexicalBlock(scope: !1304, file: !12, line: 835, column: 10)
!1311 = !DILocation(line: 838, column: 7, scope: !1308, inlinedAt: !1297)
!1312 = !DILocation(line: 840, column: 7, scope: !1308, inlinedAt: !1297)
!1313 = !DILocation(line: 846, column: 1, scope: !30, inlinedAt: !1297)
!1314 = !DILocation(line: 650, column: 7, scope: !1290)
!1315 = !DILocation(line: 653, column: 7, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1291, file: !12, line: 653, column: 7)
!1317 = !DILocation(line: 653, column: 11, scope: !1316)
!1318 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "IoControlCode", arg: 1, scope: !30, file: !12, line: 823, type: !15)
!1319 = !DILocation(line: 823, column: 39, scope: !30, inlinedAt: !1297)
!1320 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 2, scope: !30, file: !12, line: 823, type: !15)
!1321 = !DILocation(line: 823, column: 59, scope: !30, inlinedAt: !1297)
!1322 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InputBuffer", arg: 3, scope: !30, file: !12, line: 823, type: !15)
!1323 = !DILocation(line: 823, column: 78, scope: !30, inlinedAt: !1297)
!1324 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InputBufferLength", arg: 4, scope: !30, file: !12, line: 824, type: !15)
!1325 = !DILocation(line: 824, column: 39, scope: !30, inlinedAt: !1297)
!1326 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "OutputBuffer", arg: 5, scope: !30, file: !12, line: 824, type: !15)
!1327 = !DILocation(line: 824, column: 63, scope: !30, inlinedAt: !1297)
!1328 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "OutputBufferLength", arg: 6, scope: !30, file: !12, line: 824, type: !15)
!1329 = !DILocation(line: 824, column: 82, scope: !30, inlinedAt: !1297)
!1330 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InternalDeviceIoControl", arg: 7, scope: !30, file: !12, line: 825, type: !15)
!1331 = !DILocation(line: 825, column: 39, scope: !30, inlinedAt: !1297)
!1332 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 8, scope: !30, file: !12, line: 825, type: !15)
!1333 = !DILocation(line: 825, column: 69, scope: !30, inlinedAt: !1297)
!1334 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "IoStatusBlock", arg: 9, scope: !30, file: !12, line: 825, type: !15)
!1335 = !DILocation(line: 825, column: 81, scope: !30, inlinedAt: !1297)
!1336 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "malloc", scope: !30, file: !12, line: 827, type: !15)
!1337 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_2", scope: !1300, file: !12, line: 831, type: !15)
!1338 = !DILocation(line: 831, column: 7, scope: !1300, inlinedAt: !1297)
!1339 = !DILocation(line: 653, column: 7, scope: !1291)
!1340 = !DILocation(line: 654, column: 5, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1316, file: !12, line: 653, column: 17)
!1342 = !DILocation(line: 659, column: 14, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1291, file: !12, line: 656, column: 3)
!1344 = !DILocation(line: 659, column: 55, scope: !1343)
!1345 = !DILocation(line: 659, column: 12, scope: !1343)
!1346 = !DILocation(line: 660, column: 61, scope: !1343)
!1347 = !DILocation(line: 660, column: 59, scope: !1343)
!1348 = !DILocation(line: 661, column: 28, scope: !1343)
!1349 = !DILocation(line: 661, column: 42, scope: !1343)
!1350 = !DILocation(line: 661, column: 14, scope: !1343)
!1351 = !DILocation(line: 661, column: 12, scope: !1343)
!1352 = !DILocation(line: 663, column: 24, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1291, file: !12, line: 663, column: 3)
!1354 = !DILocation(line: 663, column: 17, scope: !1353)
!1355 = !DILocation(line: 663, column: 15, scope: !1353)
!1356 = !DILocation(line: 663, column: 7, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1353, file: !12, line: 663, column: 7)
!1358 = !DILocation(line: 663, column: 19, scope: !1357)
!1359 = !DILocation(line: 663, column: 7, scope: !1353)
!1360 = !DILocation(line: 665, column: 27, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !12, line: 664, column: 5)
!1362 = distinct !DILexicalBlock(scope: !1357, file: !12, line: 663, column: 28)
!1363 = !DILocation(line: 665, column: 38, scope: !1361)
!1364 = !DILocation(line: 665, column: 49, scope: !1361)
!1365 = !DILocation(line: 665, column: 5, scope: !1361)
!1366 = !DILocation(line: 666, column: 16, scope: !1361)
!1367 = !DILocation(line: 666, column: 14, scope: !1361)
!1368 = !DILocation(line: 668, column: 3, scope: !1362)
!1369 = !DILocation(line: 671, column: 11, scope: !1291)
!1370 = !DILocation(line: 671, column: 3, scope: !1291)
!1371 = !DILocation(line: 673, column: 1, scope: !22)
!1372 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DisketteExtension", arg: 1, scope: !23, file: !12, line: 674, type: !15)
!1373 = !DILocation(line: 674, column: 38, scope: !23)
!1374 = !DILocation(line: 678, column: 3, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !23, file: !12, line: 677, column: 3)
!1376 = !DILocation(line: 685, column: 7, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !26, file: !12, line: 684, column: 3)
!1378 = !DILocation(line: 685, column: 5, scope: !1377)
!1379 = !DILocation(line: 686, column: 10, scope: !1377)
!1380 = !DILocation(line: 687, column: 18, scope: !1377)
!1381 = !DILocation(line: 688, column: 21, scope: !1377)
!1382 = !DILocation(line: 689, column: 18, scope: !1377)
!1383 = !DILocation(line: 690, column: 13, scope: !1377)
!1384 = !DILocation(line: 691, column: 3, scope: !1377)
!1385 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !27, file: !12, line: 695, type: !15)
!1386 = !DILocation(line: 695, column: 7, scope: !27)
!1387 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp", scope: !27, file: !12, line: 696, type: !15)
!1388 = !DILocation(line: 696, column: 7, scope: !27)
!1389 = !DILocation(line: 696, column: 13, scope: !27)
!1390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pirp", scope: !27, file: !12, line: 697, type: !15)
!1391 = !DILocation(line: 697, column: 7, scope: !27)
!1392 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pirp__IoStatus__Status", scope: !27, file: !12, line: 698, type: !15)
!1393 = !DILocation(line: 698, column: 7, scope: !27)
!1394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp_choice", scope: !27, file: !12, line: 699, type: !15)
!1395 = !DILocation(line: 699, column: 7, scope: !27)
!1396 = !DILocation(line: 699, column: 20, scope: !27)
!1397 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devobj", scope: !27, file: !12, line: 700, type: !15)
!1398 = !DILocation(line: 700, column: 7, scope: !27)
!1399 = !DILocation(line: 700, column: 16, scope: !27)
!1400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp8", scope: !27, file: !12, line: 701, type: !15)
!1401 = !DILocation(line: 701, column: 7, scope: !27)
!1402 = !DILocation(line: 703, column: 16, scope: !27)
!1403 = !DILocation(line: 704, column: 14, scope: !27)
!1404 = !DILocation(line: 705, column: 13, scope: !27)
!1405 = !DILocation(line: 706, column: 13, scope: !27)
!1406 = !DILocation(line: 707, column: 18, scope: !27)
!1407 = !DILocation(line: 708, column: 24, scope: !27)
!1408 = !DILocation(line: 709, column: 20, scope: !27)
!1409 = !DILocation(line: 710, column: 24, scope: !27)
!1410 = !DILocation(line: 711, column: 32, scope: !27)
!1411 = !DILocation(line: 712, column: 12, scope: !27)
!1412 = !DILocation(line: 713, column: 5, scope: !27)
!1413 = !DILocation(line: 714, column: 12, scope: !27)
!1414 = !DILocation(line: 715, column: 6, scope: !27)
!1415 = !DILocation(line: 716, column: 6, scope: !27)
!1416 = !DILocation(line: 717, column: 9, scope: !27)
!1417 = !DILocation(line: 718, column: 9, scope: !27)
!1418 = !DILocation(line: 719, column: 8, scope: !27)
!1419 = !DILocation(line: 720, column: 8, scope: !27)
!1420 = !DILocation(line: 721, column: 7, scope: !27)
!1421 = !DILocation(line: 722, column: 10, scope: !27)
!1422 = !DILocation(line: 723, column: 18, scope: !27)
!1423 = !DILocation(line: 724, column: 21, scope: !27)
!1424 = !DILocation(line: 725, column: 18, scope: !27)
!1425 = !DILocation(line: 726, column: 13, scope: !27)
!1426 = !DILocation(line: 705, column: 10, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !12, line: 729, column: 3)
!1428 = distinct !DILexicalBlock(scope: !27, file: !12, line: 728, column: 3)
!1429 = !DILocation(line: 706, column: 10, scope: !1427)
!1430 = !DILocation(line: 706, column: 8, scope: !1427)
!1431 = !DILocation(line: 73, column: 12, scope: !96, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 707, column: 3, scope: !1427)
!1433 = !DILocation(line: 74, column: 6, scope: !96, inlinedAt: !1432)
!1434 = !DILocation(line: 75, column: 6, scope: !96, inlinedAt: !1432)
!1435 = !DILocation(line: 76, column: 9, scope: !96, inlinedAt: !1432)
!1436 = !DILocation(line: 77, column: 9, scope: !96, inlinedAt: !1432)
!1437 = !DILocation(line: 78, column: 8, scope: !96, inlinedAt: !1432)
!1438 = !DILocation(line: 79, column: 8, scope: !96, inlinedAt: !1432)
!1439 = !DILocation(line: 80, column: 7, scope: !96, inlinedAt: !1432)
!1440 = !DILocation(line: 81, column: 7, scope: !96, inlinedAt: !1432)
!1441 = !DILocation(line: 81, column: 5, scope: !96, inlinedAt: !1432)
!1442 = !DILocation(line: 82, column: 10, scope: !96, inlinedAt: !1432)
!1443 = !DILocation(line: 83, column: 18, scope: !96, inlinedAt: !1432)
!1444 = !DILocation(line: 84, column: 21, scope: !96, inlinedAt: !1432)
!1445 = !DILocation(line: 85, column: 18, scope: !96, inlinedAt: !1432)
!1446 = !DILocation(line: 86, column: 13, scope: !96, inlinedAt: !1432)
!1447 = !DILocation(line: 709, column: 7, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1428, file: !12, line: 709, column: 7)
!1449 = !DILocation(line: 709, column: 14, scope: !1448)
!1450 = !DILocation(line: 709, column: 7, scope: !1428)
!1451 = !DILocation(line: 710, column: 9, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1448, file: !12, line: 709, column: 20)
!1453 = !DILocation(line: 710, column: 7, scope: !1452)
!1454 = !DILocation(line: 711, column: 15, scope: !1452)
!1455 = !DILocation(line: 712, column: 22, scope: !1452)
!1456 = !DILocation(line: 712, column: 20, scope: !1452)
!1457 = !DILocation(line: 713, column: 25, scope: !1452)
!1458 = !DILocation(line: 713, column: 23, scope: !1452)
!1459 = !DILocation(line: 714, column: 22, scope: !1452)
!1460 = !DILocation(line: 714, column: 20, scope: !1452)
!1461 = !DILocation(line: 715, column: 14, scope: !1452)
!1462 = !DILocation(line: 715, column: 12, scope: !1452)
!1463 = !DILocation(line: 716, column: 28, scope: !1452)
!1464 = !DILocation(line: 717, column: 14, scope: !1452)
!1465 = !DILocation(line: 718, column: 9, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1452, file: !12, line: 718, column: 9)
!1467 = !DILocation(line: 718, column: 20, scope: !1466)
!1468 = !DILocation(line: 718, column: 9, scope: !1452)
!1469 = !DILocation(line: 719, column: 30, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1466, file: !12, line: 718, column: 26)
!1471 = !DILocation(line: 720, column: 16, scope: !1470)
!1472 = !DILocation(line: 721, column: 5, scope: !1470)
!1473 = !DILocation(line: 685, column: 7, scope: !1377, inlinedAt: !1474)
!1474 = distinct !DILocation(line: 725, column: 5, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1452, file: !12, line: 722, column: 5)
!1476 = !DILocation(line: 685, column: 5, scope: !1377, inlinedAt: !1474)
!1477 = !DILocation(line: 686, column: 10, scope: !1377, inlinedAt: !1474)
!1478 = !DILocation(line: 687, column: 18, scope: !1377, inlinedAt: !1474)
!1479 = !DILocation(line: 688, column: 21, scope: !1377, inlinedAt: !1474)
!1480 = !DILocation(line: 689, column: 18, scope: !1377, inlinedAt: !1474)
!1481 = !DILocation(line: 690, column: 13, scope: !1377, inlinedAt: !1474)
!1482 = !DILocation(line: 727, column: 9, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !12, line: 727, column: 9)
!1484 = distinct !DILexicalBlock(scope: !1452, file: !12, line: 727, column: 5)
!1485 = !DILocation(line: 727, column: 16, scope: !1483)
!1486 = !DILocation(line: 727, column: 9, scope: !1484)
!1487 = !DILocation(line: 728, column: 7, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1483, file: !12, line: 727, column: 21)
!1489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_1", scope: !1452, file: !12, line: 732, type: !15)
!1490 = !DILocation(line: 732, column: 9, scope: !1452)
!1491 = !DILocation(line: 733, column: 17, scope: !1452)
!1492 = !DILocation(line: 733, column: 15, scope: !1452)
!1493 = !DILocation(line: 734, column: 9, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1452, file: !12, line: 734, column: 9)
!1495 = !DILocation(line: 734, column: 19, scope: !1494)
!1496 = !DILocation(line: 734, column: 9, scope: !1452)
!1497 = !DILocation(line: 735, column: 7, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1494, file: !12, line: 734, column: 25)
!1499 = !DILocation(line: 737, column: 7, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1494, file: !12, line: 736, column: 12)
!1501 = !DILocation(line: 737, column: 11, scope: !1500)
!1502 = !DILocation(line: 737, column: 14, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1500, file: !12, line: 737, column: 11)
!1504 = !DILocation(line: 740, column: 28, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !12, line: 739, column: 9)
!1506 = distinct !DILexicalBlock(scope: !1503, file: !12, line: 737, column: 14)
!1507 = !DILocation(line: 740, column: 36, scope: !1505)
!1508 = !DILocation(line: 740, column: 18, scope: !1505)
!1509 = !DILocation(line: 740, column: 16, scope: !1505)
!1510 = !DILocation(line: 742, column: 9, scope: !1506)
!1511 = !DILocation(line: 744, column: 9, scope: !1506)
!1512 = !DILocation(line: 745, column: 14, scope: !1503)
!1513 = !DILocation(line: 749, column: 3, scope: !1452)
!1514 = !DILocation(line: 753, column: 7, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1428, file: !12, line: 753, column: 7)
!1516 = !DILocation(line: 753, column: 14, scope: !1515)
!1517 = !DILocation(line: 753, column: 7, scope: !1428)
!1518 = !DILocation(line: 754, column: 9, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !12, line: 754, column: 9)
!1520 = distinct !DILexicalBlock(scope: !1515, file: !12, line: 753, column: 20)
!1521 = !DILocation(line: 754, column: 14, scope: !1519)
!1522 = !DILocation(line: 754, column: 11, scope: !1519)
!1523 = !DILocation(line: 754, column: 9, scope: !1520)
!1524 = !DILocation(line: 755, column: 11, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1519, file: !12, line: 754, column: 18)
!1526 = !DILocation(line: 755, column: 9, scope: !1525)
!1527 = !DILocation(line: 756, column: 5, scope: !1525)
!1528 = !DILocation(line: 757, column: 7, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1519, file: !12, line: 756, column: 12)
!1530 = !DILocation(line: 759, column: 3, scope: !1520)
!1531 = !DILocation(line: 759, column: 10, scope: !1515)
!1532 = !DILocation(line: 761, column: 9, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !12, line: 761, column: 9)
!1534 = distinct !DILexicalBlock(scope: !1515, file: !12, line: 759, column: 10)
!1535 = !DILocation(line: 761, column: 16, scope: !1533)
!1536 = !DILocation(line: 761, column: 9, scope: !1534)
!1537 = !DILocation(line: 762, column: 11, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !12, line: 762, column: 11)
!1539 = distinct !DILexicalBlock(scope: !1533, file: !12, line: 761, column: 22)
!1540 = !DILocation(line: 762, column: 16, scope: !1538)
!1541 = !DILocation(line: 762, column: 13, scope: !1538)
!1542 = !DILocation(line: 762, column: 11, scope: !1539)
!1543 = !DILocation(line: 763, column: 13, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1538, file: !12, line: 762, column: 22)
!1545 = !DILocation(line: 763, column: 11, scope: !1544)
!1546 = !DILocation(line: 764, column: 7, scope: !1544)
!1547 = !DILocation(line: 765, column: 9, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1538, file: !12, line: 764, column: 14)
!1549 = !DILocation(line: 767, column: 5, scope: !1539)
!1550 = !DILocation(line: 767, column: 12, scope: !1533)
!1551 = !DILocation(line: 769, column: 11, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !12, line: 769, column: 11)
!1553 = distinct !DILexicalBlock(scope: !1533, file: !12, line: 767, column: 12)
!1554 = !DILocation(line: 769, column: 16, scope: !1552)
!1555 = !DILocation(line: 769, column: 13, scope: !1552)
!1556 = !DILocation(line: 769, column: 11, scope: !1553)
!1557 = !DILocation(line: 772, column: 13, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !12, line: 772, column: 13)
!1559 = distinct !DILexicalBlock(scope: !1552, file: !12, line: 769, column: 26)
!1560 = !DILocation(line: 772, column: 20, scope: !1558)
!1561 = !DILocation(line: 772, column: 13, scope: !1559)
!1562 = !DILocation(line: 775, column: 15, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !12, line: 775, column: 15)
!1564 = distinct !DILexicalBlock(scope: !1558, file: !12, line: 772, column: 27)
!1565 = !DILocation(line: 775, column: 20, scope: !1563)
!1566 = !DILocation(line: 775, column: 17, scope: !1563)
!1567 = !DILocation(line: 775, column: 15, scope: !1564)
!1568 = !DILocation(line: 776, column: 17, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !12, line: 776, column: 17)
!1570 = distinct !DILexicalBlock(scope: !1563, file: !12, line: 775, column: 27)
!1571 = !DILocation(line: 776, column: 22, scope: !1569)
!1572 = !DILocation(line: 776, column: 19, scope: !1569)
!1573 = !DILocation(line: 776, column: 17, scope: !1570)
!1574 = !DILocation(line: 777, column: 19, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !12, line: 777, column: 19)
!1576 = distinct !DILexicalBlock(scope: !1569, file: !12, line: 776, column: 27)
!1577 = !DILocation(line: 777, column: 24, scope: !1575)
!1578 = !DILocation(line: 777, column: 21, scope: !1575)
!1579 = !DILocation(line: 777, column: 19, scope: !1576)
!1580 = !DILocation(line: 38, column: 10, scope: !93, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 779, column: 17, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !12, line: 778, column: 17)
!1583 = distinct !DILexicalBlock(scope: !1575, file: !12, line: 777, column: 28)
!1584 = !DILocation(line: 781, column: 15, scope: !1583)
!1585 = !DILocation(line: 782, column: 17, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1575, file: !12, line: 781, column: 22)
!1587 = !DILocation(line: 784, column: 13, scope: !1576)
!1588 = !DILocation(line: 785, column: 15, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1569, file: !12, line: 784, column: 20)
!1590 = !DILocation(line: 787, column: 11, scope: !1570)
!1591 = !DILocation(line: 787, column: 18, scope: !1563)
!1592 = !DILocation(line: 789, column: 17, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !12, line: 789, column: 17)
!1594 = distinct !DILexicalBlock(scope: !1563, file: !12, line: 787, column: 18)
!1595 = !DILocation(line: 789, column: 24, scope: !1593)
!1596 = !DILocation(line: 789, column: 17, scope: !1594)
!1597 = !DILocation(line: 790, column: 19, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !12, line: 790, column: 19)
!1599 = distinct !DILexicalBlock(scope: !1593, file: !12, line: 789, column: 30)
!1600 = !DILocation(line: 790, column: 26, scope: !1598)
!1601 = !DILocation(line: 790, column: 19, scope: !1599)
!1602 = !DILocation(line: 791, column: 24, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1598, file: !12, line: 790, column: 34)
!1604 = !DILocation(line: 792, column: 15, scope: !1603)
!1605 = !DILocation(line: 793, column: 13, scope: !1599)
!1606 = !DILocation(line: 796, column: 19, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !12, line: 796, column: 19)
!1608 = distinct !DILexicalBlock(scope: !1593, file: !12, line: 793, column: 20)
!1609 = !DILocation(line: 796, column: 24, scope: !1607)
!1610 = !DILocation(line: 796, column: 21, scope: !1607)
!1611 = !DILocation(line: 796, column: 19, scope: !1608)
!1612 = !DILocation(line: 797, column: 21, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !12, line: 797, column: 21)
!1614 = distinct !DILexicalBlock(scope: !1607, file: !12, line: 796, column: 28)
!1615 = !DILocation(line: 797, column: 28, scope: !1613)
!1616 = !DILocation(line: 797, column: 21, scope: !1614)
!1617 = !DILocation(line: 38, column: 10, scope: !93, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 799, column: 19, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !12, line: 798, column: 19)
!1620 = distinct !DILexicalBlock(scope: !1613, file: !12, line: 797, column: 36)
!1621 = !DILocation(line: 801, column: 17, scope: !1620)
!1622 = !DILocation(line: 802, column: 15, scope: !1614)
!1623 = !DILocation(line: 805, column: 21, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !12, line: 805, column: 21)
!1625 = distinct !DILexicalBlock(scope: !1607, file: !12, line: 802, column: 22)
!1626 = !DILocation(line: 805, column: 31, scope: !1624)
!1627 = !DILocation(line: 805, column: 28, scope: !1624)
!1628 = !DILocation(line: 805, column: 21, scope: !1625)
!1629 = !DILocation(line: 38, column: 10, scope: !93, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 807, column: 19, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !12, line: 806, column: 19)
!1632 = distinct !DILexicalBlock(scope: !1624, file: !12, line: 805, column: 50)
!1633 = !DILocation(line: 809, column: 17, scope: !1632)
!1634 = !DILocation(line: 813, column: 9, scope: !1564)
!1635 = !DILocation(line: 814, column: 7, scope: !1559)
!1636 = !DILocation(line: 819, column: 10, scope: !1428)
!1637 = !DILocation(line: 820, column: 11, scope: !1428)
!1638 = !DILocation(line: 820, column: 3, scope: !1428)
!1639 = !DILocation(line: 822, column: 1, scope: !27)
!1640 = !DILocation(line: 823, column: 39, scope: !30)
!1641 = !DILocation(line: 823, column: 59, scope: !30)
!1642 = !DILocation(line: 823, column: 78, scope: !30)
!1643 = !DILocation(line: 824, column: 39, scope: !30)
!1644 = !DILocation(line: 824, column: 63, scope: !30)
!1645 = !DILocation(line: 824, column: 82, scope: !30)
!1646 = !DILocation(line: 825, column: 39, scope: !30)
!1647 = !DILocation(line: 825, column: 69, scope: !30)
!1648 = !DILocation(line: 825, column: 81, scope: !30)
!1649 = !DILocation(line: 827, column: 7, scope: !30)
!1650 = !DILocation(line: 827, column: 16, scope: !30)
!1651 = !DILocation(line: 830, column: 13, scope: !1300)
!1652 = !DILocation(line: 831, column: 7, scope: !1300)
!1653 = !DILocation(line: 832, column: 15, scope: !1300)
!1654 = !DILocation(line: 832, column: 13, scope: !1300)
!1655 = !DILocation(line: 833, column: 7, scope: !1304)
!1656 = !DILocation(line: 833, column: 17, scope: !1304)
!1657 = !DILocation(line: 833, column: 7, scope: !1300)
!1658 = !DILocation(line: 834, column: 5, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1304, file: !12, line: 833, column: 23)
!1660 = !DILocation(line: 836, column: 5, scope: !1310)
!1661 = !DILocation(line: 836, column: 9, scope: !1310)
!1662 = !DILocation(line: 836, column: 12, scope: !1309)
!1663 = !DILocation(line: 838, column: 15, scope: !1308)
!1664 = !DILocation(line: 838, column: 7, scope: !1308)
!1665 = !DILocation(line: 840, column: 7, scope: !1308)
!1666 = !DILocation(line: 846, column: 1, scope: !30)
!1667 = !DILocation(line: 848, column: 30, scope: !33)
!1668 = !DILocation(line: 852, column: 7, scope: !438)
!1669 = !DILocation(line: 853, column: 15, scope: !438)
!1670 = !DILocation(line: 853, column: 13, scope: !438)
!1671 = !DILocation(line: 854, column: 7, scope: !794)
!1672 = !DILocation(line: 854, column: 17, scope: !794)
!1673 = !DILocation(line: 854, column: 7, scope: !438)
!1674 = !DILocation(line: 855, column: 5, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !794, file: !12, line: 854, column: 23)
!1676 = !DILocation(line: 857, column: 5, scope: !800)
!1677 = !DILocation(line: 857, column: 9, scope: !800)
!1678 = !DILocation(line: 857, column: 12, scope: !799)
!1679 = !DILocation(line: 859, column: 7, scope: !798)
!1680 = !DILocation(line: 861, column: 7, scope: !798)
!1681 = !DILocation(line: 867, column: 1, scope: !33)
!1682 = !DILocation(line: 869, column: 34, scope: !36)
!1683 = !DILocation(line: 869, column: 48, scope: !36)
!1684 = !DILocation(line: 869, column: 64, scope: !36)
!1685 = !DILocation(line: 869, column: 85, scope: !36)
!1686 = !DILocation(line: 870, column: 34, scope: !36)
!1687 = !DILocation(line: 870, column: 55, scope: !36)
!1688 = !DILocation(line: 870, column: 78, scope: !36)
!1689 = !DILocation(line: 871, column: 34, scope: !36)
!1690 = !DILocation(line: 875, column: 7, scope: !1019)
!1691 = !DILocation(line: 876, column: 15, scope: !1019)
!1692 = !DILocation(line: 876, column: 13, scope: !1019)
!1693 = !DILocation(line: 877, column: 7, scope: !1154)
!1694 = !DILocation(line: 877, column: 17, scope: !1154)
!1695 = !DILocation(line: 877, column: 7, scope: !1019)
!1696 = !DILocation(line: 878, column: 5, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1154, file: !12, line: 877, column: 23)
!1698 = !DILocation(line: 880, column: 5, scope: !1160)
!1699 = !DILocation(line: 880, column: 9, scope: !1160)
!1700 = !DILocation(line: 880, column: 12, scope: !1159)
!1701 = !DILocation(line: 882, column: 7, scope: !1158)
!1702 = !DILocation(line: 884, column: 7, scope: !1158)
!1703 = !DILocation(line: 890, column: 1, scope: !36)
!1704 = !DILocation(line: 892, column: 35, scope: !39)
!1705 = !DILocation(line: 892, column: 62, scope: !39)
!1706 = !DILocation(line: 893, column: 35, scope: !39)
!1707 = !DILocation(line: 893, column: 57, scope: !39)
!1708 = !DILocation(line: 897, column: 7, scope: !1034)
!1709 = !DILocation(line: 898, column: 15, scope: !1034)
!1710 = !DILocation(line: 898, column: 13, scope: !1034)
!1711 = !DILocation(line: 899, column: 7, scope: !1193)
!1712 = !DILocation(line: 899, column: 17, scope: !1193)
!1713 = !DILocation(line: 899, column: 7, scope: !1034)
!1714 = !DILocation(line: 900, column: 5, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1193, file: !12, line: 899, column: 23)
!1716 = !DILocation(line: 902, column: 5, scope: !1199)
!1717 = !DILocation(line: 902, column: 9, scope: !1199)
!1718 = !DILocation(line: 902, column: 12, scope: !1198)
!1719 = !DILocation(line: 904, column: 7, scope: !1197)
!1720 = !DILocation(line: 906, column: 7, scope: !1197)
!1721 = !DILocation(line: 912, column: 1, scope: !39)
!1722 = !DILocation(line: 914, column: 35, scope: !42)
!1723 = !DILocation(line: 914, column: 58, scope: !42)
!1724 = !DILocation(line: 918, column: 7, scope: !429)
!1725 = !DILocation(line: 919, column: 15, scope: !429)
!1726 = !DILocation(line: 919, column: 13, scope: !429)
!1727 = !DILocation(line: 920, column: 7, scope: !776)
!1728 = !DILocation(line: 920, column: 17, scope: !776)
!1729 = !DILocation(line: 920, column: 7, scope: !429)
!1730 = !DILocation(line: 921, column: 5, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !776, file: !12, line: 920, column: 23)
!1732 = !DILocation(line: 923, column: 5, scope: !782)
!1733 = !DILocation(line: 923, column: 9, scope: !782)
!1734 = !DILocation(line: 923, column: 12, scope: !781)
!1735 = !DILocation(line: 925, column: 7, scope: !780)
!1736 = !DILocation(line: 927, column: 7, scope: !780)
!1737 = !DILocation(line: 933, column: 1, scope: !42)
!1738 = !DILocation(line: 939, column: 7, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !12, line: 939, column: 7)
!1740 = distinct !DILexicalBlock(scope: !43, file: !12, line: 938, column: 3)
!1741 = !DILocation(line: 939, column: 12, scope: !1739)
!1742 = !DILocation(line: 939, column: 9, scope: !1739)
!1743 = !DILocation(line: 939, column: 7, scope: !1740)
!1744 = !DILocation(line: 940, column: 9, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1739, file: !12, line: 939, column: 16)
!1746 = !DILocation(line: 940, column: 7, scope: !1745)
!1747 = !DILocation(line: 941, column: 3, scope: !1745)
!1748 = !DILocation(line: 38, column: 10, scope: !93, inlinedAt: !1749)
!1749 = distinct !DILocation(line: 943, column: 5, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !12, line: 942, column: 5)
!1751 = distinct !DILexicalBlock(scope: !1739, file: !12, line: 941, column: 10)
!1752 = !DILocation(line: 946, column: 3, scope: !1740)
!1753 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !44, file: !12, line: 949, type: !15)
!1754 = !DILocation(line: 949, column: 23, scope: !44)
!1755 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !44, file: !12, line: 949, type: !15)
!1756 = !DILocation(line: 949, column: 42, scope: !44)
!1757 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "returnVal2", scope: !44, file: !12, line: 951, type: !15)
!1758 = !DILocation(line: 951, column: 7, scope: !44)
!1759 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compRetStatus1", scope: !44, file: !12, line: 952, type: !15)
!1760 = !DILocation(line: 952, column: 7, scope: !44)
!1761 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lcontext", scope: !44, file: !12, line: 953, type: !15)
!1762 = !DILocation(line: 953, column: 7, scope: !44)
!1763 = !DILocation(line: 953, column: 18, scope: !44)
!1764 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp7", scope: !44, file: !12, line: 954, type: !5)
!1765 = !DILocation(line: 954, column: 17, scope: !44)
!1766 = !DILocation(line: 956, column: 7, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !12, line: 956, column: 7)
!1768 = distinct !DILexicalBlock(scope: !44, file: !12, line: 956, column: 3)
!1769 = !DILocation(line: 1034, column: 20, scope: !48, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 634, column: 3, scope: !1246, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 958, column: 22, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !12, line: 957, column: 5)
!1773 = distinct !DILexicalBlock(scope: !1767, file: !12, line: 956, column: 23)
!1774 = !DILocation(line: 1034, column: 32, scope: !48, inlinedAt: !1770)
!1775 = !DILocation(line: 1034, column: 48, scope: !48, inlinedAt: !1770)
!1776 = !DILocation(line: 1035, column: 7, scope: !48, inlinedAt: !1770)
!1777 = !DILocation(line: 629, column: 27, scope: !19, inlinedAt: !1771)
!1778 = !DILocation(line: 629, column: 46, scope: !19, inlinedAt: !1771)
!1779 = !DILocation(line: 629, column: 56, scope: !19, inlinedAt: !1771)
!1780 = !DILocation(line: 956, column: 7, scope: !1768)
!1781 = !DILocation(line: 958, column: 40, scope: !1772)
!1782 = !DILocation(line: 958, column: 54, scope: !1772)
!1783 = !DILocation(line: 958, column: 59, scope: !1772)
!1784 = !DILocation(line: 958, column: 22, scope: !1772)
!1785 = !DILocation(line: 634, column: 14, scope: !1246, inlinedAt: !1771)
!1786 = !DILocation(line: 634, column: 3, scope: !1246, inlinedAt: !1771)
!1787 = !DILocation(line: 1035, column: 11, scope: !48, inlinedAt: !1770)
!1788 = !DILocation(line: 1038, column: 18, scope: !1253, inlinedAt: !1770)
!1789 = !DILocation(line: 1039, column: 11, scope: !1253, inlinedAt: !1770)
!1790 = !DILocation(line: 1039, column: 3, scope: !1253, inlinedAt: !1770)
!1791 = !DILocation(line: 636, column: 3, scope: !1247, inlinedAt: !1771)
!1792 = !DILocation(line: 958, column: 20, scope: !1772)
!1793 = !DILocation(line: 960, column: 34, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1773, file: !12, line: 960, column: 5)
!1795 = !DILocation(line: 960, column: 18, scope: !1794)
!1796 = !DILocation(line: 960, column: 16, scope: !1794)
!1797 = !DILocation(line: 960, column: 9, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1794, file: !12, line: 960, column: 9)
!1799 = !DILocation(line: 960, column: 20, scope: !1798)
!1800 = !DILocation(line: 960, column: 9, scope: !1794)
!1801 = !DILocation(line: 939, column: 7, scope: !1739, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 962, column: 7, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !12, line: 961, column: 7)
!1804 = distinct !DILexicalBlock(scope: !1798, file: !12, line: 960, column: 36)
!1805 = !DILocation(line: 939, column: 12, scope: !1739, inlinedAt: !1802)
!1806 = !DILocation(line: 939, column: 9, scope: !1739, inlinedAt: !1802)
!1807 = !DILocation(line: 939, column: 7, scope: !1740, inlinedAt: !1802)
!1808 = !DILocation(line: 38, column: 10, scope: !93, inlinedAt: !1809)
!1809 = distinct !DILocation(line: 943, column: 5, scope: !1750, inlinedAt: !1802)
!1810 = !DILocation(line: 940, column: 9, scope: !1745, inlinedAt: !1802)
!1811 = !DILocation(line: 940, column: 7, scope: !1745, inlinedAt: !1802)
!1812 = !DILocation(line: 964, column: 5, scope: !1804)
!1813 = !DILocation(line: 966, column: 3, scope: !1773)
!1814 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_7", scope: !1768, file: !12, line: 970, type: !15)
!1815 = !DILocation(line: 970, column: 7, scope: !1768)
!1816 = !DILocation(line: 971, column: 15, scope: !1768)
!1817 = !DILocation(line: 971, column: 13, scope: !1768)
!1818 = !DILocation(line: 972, column: 7, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1768, file: !12, line: 972, column: 7)
!1820 = !DILocation(line: 972, column: 17, scope: !1819)
!1821 = !DILocation(line: 972, column: 7, scope: !1768)
!1822 = !DILocation(line: 973, column: 5, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1819, file: !12, line: 972, column: 23)
!1824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_8", scope: !1825, file: !12, line: 973, type: !15)
!1825 = distinct !DILexicalBlock(scope: !1819, file: !12, line: 974, column: 10)
!1826 = !DILocation(line: 973, column: 9, scope: !1825)
!1827 = !DILocation(line: 974, column: 17, scope: !1825)
!1828 = !DILocation(line: 974, column: 15, scope: !1825)
!1829 = !DILocation(line: 975, column: 9, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1825, file: !12, line: 975, column: 9)
!1831 = !DILocation(line: 975, column: 19, scope: !1830)
!1832 = !DILocation(line: 975, column: 9, scope: !1825)
!1833 = !DILocation(line: 976, column: 7, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1830, file: !12, line: 975, column: 25)
!1835 = !DILocation(line: 978, column: 7, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1830, file: !12, line: 977, column: 12)
!1837 = !DILocation(line: 978, column: 11, scope: !1836)
!1838 = !DILocation(line: 978, column: 14, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1836, file: !12, line: 978, column: 11)
!1840 = !DILocation(line: 980, column: 20, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1839, file: !12, line: 978, column: 14)
!1842 = !DILocation(line: 981, column: 9, scope: !1841)
!1843 = !DILocation(line: 983, column: 20, scope: !1841)
!1844 = !DILocation(line: 984, column: 9, scope: !1841)
!1845 = !DILocation(line: 986, column: 20, scope: !1841)
!1846 = !DILocation(line: 987, column: 9, scope: !1841)
!1847 = !DILocation(line: 988, column: 14, scope: !1839)
!1848 = !DILocation(line: 994, column: 7, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1768, file: !12, line: 994, column: 7)
!1850 = !DILocation(line: 994, column: 12, scope: !1849)
!1851 = !DILocation(line: 994, column: 9, scope: !1849)
!1852 = !DILocation(line: 994, column: 7, scope: !1768)
!1853 = !DILocation(line: 995, column: 9, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1849, file: !12, line: 994, column: 16)
!1855 = !DILocation(line: 995, column: 7, scope: !1854)
!1856 = !DILocation(line: 996, column: 25, scope: !1854)
!1857 = !DILocation(line: 996, column: 23, scope: !1854)
!1858 = !DILocation(line: 997, column: 3, scope: !1854)
!1859 = !DILocation(line: 998, column: 9, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !12, line: 998, column: 9)
!1861 = distinct !DILexicalBlock(scope: !1849, file: !12, line: 997, column: 10)
!1862 = !DILocation(line: 998, column: 14, scope: !1860)
!1863 = !DILocation(line: 998, column: 11, scope: !1860)
!1864 = !DILocation(line: 998, column: 9, scope: !1861)
!1865 = !DILocation(line: 999, column: 11, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !12, line: 999, column: 11)
!1867 = distinct !DILexicalBlock(scope: !1860, file: !12, line: 998, column: 20)
!1868 = !DILocation(line: 999, column: 22, scope: !1866)
!1869 = !DILocation(line: 999, column: 11, scope: !1867)
!1870 = !DILocation(line: 1000, column: 13, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1866, file: !12, line: 999, column: 30)
!1872 = !DILocation(line: 1000, column: 11, scope: !1871)
!1873 = !DILocation(line: 1001, column: 29, scope: !1871)
!1874 = !DILocation(line: 1001, column: 27, scope: !1871)
!1875 = !DILocation(line: 1002, column: 7, scope: !1871)
!1876 = !DILocation(line: 1003, column: 13, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1866, file: !12, line: 1002, column: 14)
!1878 = !DILocation(line: 1003, column: 11, scope: !1877)
!1879 = !DILocation(line: 1004, column: 29, scope: !1877)
!1880 = !DILocation(line: 1004, column: 27, scope: !1877)
!1881 = !DILocation(line: 1006, column: 5, scope: !1867)
!1882 = !DILocation(line: 1007, column: 11, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !12, line: 1007, column: 11)
!1884 = distinct !DILexicalBlock(scope: !1860, file: !12, line: 1006, column: 12)
!1885 = !DILocation(line: 1007, column: 16, scope: !1883)
!1886 = !DILocation(line: 1007, column: 13, scope: !1883)
!1887 = !DILocation(line: 1007, column: 11, scope: !1884)
!1888 = !DILocation(line: 1008, column: 13, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1883, file: !12, line: 1007, column: 23)
!1890 = !DILocation(line: 1008, column: 11, scope: !1889)
!1891 = !DILocation(line: 1009, column: 29, scope: !1889)
!1892 = !DILocation(line: 1009, column: 27, scope: !1889)
!1893 = !DILocation(line: 1010, column: 7, scope: !1889)
!1894 = !DILocation(line: 38, column: 10, scope: !93, inlinedAt: !1895)
!1895 = distinct !DILocation(line: 1012, column: 9, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !12, line: 1011, column: 9)
!1897 = distinct !DILexicalBlock(scope: !1883, file: !12, line: 1010, column: 14)
!1898 = !DILocation(line: 1017, column: 11, scope: !1768)
!1899 = !DILocation(line: 1017, column: 3, scope: !1768)
!1900 = !DILocation(line: 1034, column: 20, scope: !48)
!1901 = !DILocation(line: 1034, column: 32, scope: !48)
!1902 = !DILocation(line: 1034, column: 48, scope: !48)
!1903 = !DILocation(line: 1035, column: 7, scope: !48)
!1904 = !DILocation(line: 1035, column: 11, scope: !48)
!1905 = !DILocation(line: 1038, column: 18, scope: !1253)
!1906 = !DILocation(line: 1039, column: 11, scope: !1253)
!1907 = !DILocation(line: 1039, column: 3, scope: !1253)
!1908 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Object", arg: 1, scope: !49, file: !12, line: 1042, type: !15)
!1909 = !DILocation(line: 1042, column: 31, scope: !49)
!1910 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitReason", arg: 2, scope: !49, file: !12, line: 1042, type: !15)
!1911 = !DILocation(line: 1042, column: 44, scope: !49)
!1912 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitMode", arg: 3, scope: !49, file: !12, line: 1042, type: !15)
!1913 = !DILocation(line: 1042, column: 61, scope: !49)
!1914 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Alertable", arg: 4, scope: !49, file: !12, line: 1042, type: !15)
!1915 = !DILocation(line: 1042, column: 76, scope: !49)
!1916 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Timeout", arg: 5, scope: !49, file: !12, line: 1043, type: !15)
!1917 = !DILocation(line: 1043, column: 31, scope: !49)
!1918 = !DILocation(line: 1047, column: 7, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !12, line: 1047, column: 7)
!1920 = distinct !DILexicalBlock(scope: !49, file: !12, line: 1046, column: 3)
!1921 = !DILocation(line: 1047, column: 12, scope: !1919)
!1922 = !DILocation(line: 1047, column: 9, scope: !1919)
!1923 = !DILocation(line: 1047, column: 7, scope: !1920)
!1924 = !DILocation(line: 1048, column: 9, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !12, line: 1048, column: 9)
!1926 = distinct !DILexicalBlock(scope: !1919, file: !12, line: 1047, column: 18)
!1927 = !DILocation(line: 1048, column: 24, scope: !1925)
!1928 = !DILocation(line: 1048, column: 9, scope: !1926)
!1929 = !DILocation(line: 1049, column: 11, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1925, file: !12, line: 1048, column: 30)
!1931 = !DILocation(line: 1049, column: 9, scope: !1930)
!1932 = !DILocation(line: 1050, column: 22, scope: !1930)
!1933 = !DILocation(line: 1051, column: 5, scope: !1930)
!1934 = !DILocation(line: 1052, column: 7, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1925, file: !12, line: 1051, column: 12)
!1936 = !DILocation(line: 1054, column: 3, scope: !1926)
!1937 = !DILocation(line: 1054, column: 10, scope: !1919)
!1938 = !DILocation(line: 1056, column: 9, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !12, line: 1056, column: 9)
!1940 = distinct !DILexicalBlock(scope: !1919, file: !12, line: 1054, column: 10)
!1941 = !DILocation(line: 1056, column: 19, scope: !1939)
!1942 = !DILocation(line: 1056, column: 9, scope: !1940)
!1943 = !DILocation(line: 1057, column: 11, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1939, file: !12, line: 1056, column: 25)
!1945 = !DILocation(line: 1057, column: 9, scope: !1944)
!1946 = !DILocation(line: 1058, column: 17, scope: !1944)
!1947 = !DILocation(line: 1059, column: 5, scope: !1944)
!1948 = !DILocation(line: 1060, column: 11, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !12, line: 1060, column: 11)
!1950 = distinct !DILexicalBlock(scope: !1939, file: !12, line: 1059, column: 12)
!1951 = !DILocation(line: 1060, column: 16, scope: !1949)
!1952 = !DILocation(line: 1060, column: 13, scope: !1949)
!1953 = !DILocation(line: 1060, column: 11, scope: !1950)
!1954 = !DILocation(line: 38, column: 10, scope: !93, inlinedAt: !1955)
!1955 = distinct !DILocation(line: 1062, column: 9, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !12, line: 1061, column: 9)
!1957 = distinct !DILexicalBlock(scope: !1949, file: !12, line: 1060, column: 22)
!1958 = !DILocation(line: 1064, column: 7, scope: !1957)
!1959 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_9", scope: !1920, file: !12, line: 1069, type: !15)
!1960 = !DILocation(line: 1069, column: 7, scope: !1920)
!1961 = !DILocation(line: 1070, column: 15, scope: !1920)
!1962 = !DILocation(line: 1070, column: 13, scope: !1920)
!1963 = !DILocation(line: 1071, column: 7, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1920, file: !12, line: 1071, column: 7)
!1965 = !DILocation(line: 1071, column: 17, scope: !1964)
!1966 = !DILocation(line: 1071, column: 7, scope: !1920)
!1967 = !DILocation(line: 1072, column: 5, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1964, file: !12, line: 1071, column: 23)
!1969 = !DILocation(line: 1074, column: 5, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1964, file: !12, line: 1073, column: 10)
!1971 = !DILocation(line: 1074, column: 9, scope: !1970)
!1972 = !DILocation(line: 1074, column: 12, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1970, file: !12, line: 1074, column: 9)
!1974 = !DILocation(line: 1076, column: 7, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1973, file: !12, line: 1074, column: 12)
!1976 = !DILocation(line: 1078, column: 7, scope: !1975)
!1977 = !DILocation(line: 1084, column: 1, scope: !49)
!1978 = !DILocation(line: 1086, column: 35, scope: !52)
!1979 = !DILocation(line: 1086, column: 48, scope: !52)
!1980 = !DILocation(line: 1086, column: 68, scope: !52)
!1981 = !DILocation(line: 1086, column: 85, scope: !52)
!1982 = !DILocation(line: 1087, column: 35, scope: !52)
!1983 = !DILocation(line: 1087, column: 48, scope: !52)
!1984 = !DILocation(line: 1091, column: 7, scope: !190)
!1985 = !DILocation(line: 1092, column: 16, scope: !190)
!1986 = !DILocation(line: 1092, column: 14, scope: !190)
!1987 = !DILocation(line: 1093, column: 7, scope: !257)
!1988 = !DILocation(line: 1093, column: 18, scope: !257)
!1989 = !DILocation(line: 1093, column: 7, scope: !190)
!1990 = !DILocation(line: 1094, column: 5, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !257, file: !12, line: 1093, column: 24)
!1992 = !DILocation(line: 1096, column: 5, scope: !263)
!1993 = !DILocation(line: 1096, column: 9, scope: !263)
!1994 = !DILocation(line: 1096, column: 12, scope: !262)
!1995 = !DILocation(line: 1098, column: 7, scope: !261)
!1996 = !DILocation(line: 1100, column: 7, scope: !261)
!1997 = !DILocation(line: 1106, column: 1, scope: !52)
!1998 = !DILocation(line: 1108, column: 30, scope: !55)
!1999 = !DILocation(line: 1108, column: 49, scope: !55)
!2000 = !DILocation(line: 1108, column: 69, scope: !55)
!2001 = !DILocation(line: 1109, column: 30, scope: !55)
!2002 = !DILocation(line: 1109, column: 50, scope: !55)
!2003 = !DILocation(line: 1109, column: 65, scope: !55)
!2004 = !DILocation(line: 1109, column: 84, scope: !55)
!2005 = !DILocation(line: 1113, column: 7, scope: !173)
!2006 = !DILocation(line: 1114, column: 16, scope: !173)
!2007 = !DILocation(line: 1114, column: 14, scope: !173)
!2008 = !DILocation(line: 1115, column: 7, scope: !224)
!2009 = !DILocation(line: 1115, column: 18, scope: !224)
!2010 = !DILocation(line: 1115, column: 7, scope: !173)
!2011 = !DILocation(line: 1116, column: 5, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !224, file: !12, line: 1115, column: 24)
!2013 = !DILocation(line: 1118, column: 5, scope: !230)
!2014 = !DILocation(line: 1118, column: 9, scope: !230)
!2015 = !DILocation(line: 1118, column: 12, scope: !229)
!2016 = !DILocation(line: 1120, column: 7, scope: !228)
!2017 = !DILocation(line: 1122, column: 7, scope: !228)
!2018 = !DILocation(line: 1128, column: 1, scope: !55)
!2019 = !DILocation(line: 1130, column: 17, scope: !58)
!2020 = !DILocation(line: 1134, column: 7, scope: !196)
!2021 = !DILocation(line: 1135, column: 16, scope: !196)
!2022 = !DILocation(line: 1135, column: 14, scope: !196)
!2023 = !DILocation(line: 1136, column: 7, scope: !272)
!2024 = !DILocation(line: 1136, column: 18, scope: !272)
!2025 = !DILocation(line: 1136, column: 7, scope: !196)
!2026 = !DILocation(line: 1137, column: 5, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !272, file: !12, line: 1136, column: 24)
!2028 = !DILocation(line: 1139, column: 5, scope: !278)
!2029 = !DILocation(line: 1139, column: 9, scope: !278)
!2030 = !DILocation(line: 1139, column: 12, scope: !277)
!2031 = !DILocation(line: 1141, column: 7, scope: !276)
!2032 = !DILocation(line: 1143, column: 7, scope: !276)
!2033 = !DILocation(line: 1149, column: 1, scope: !58)
!2034 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !59, file: !12, line: 1151, type: !15)
!2035 = !DILocation(line: 1151, column: 27, scope: !59)
!2036 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !59, file: !12, line: 1151, type: !15)
!2037 = !DILocation(line: 1151, column: 46, scope: !59)
!2038 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !59, file: !12, line: 1152, type: !15)
!2039 = !DILocation(line: 1152, column: 7, scope: !59)
!2040 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !59, file: !12, line: 1153, type: !15)
!2041 = !DILocation(line: 1153, column: 7, scope: !59)
!2042 = !DILocation(line: 1157, column: 12, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !12, line: 1156, column: 3)
!2044 = distinct !DILexicalBlock(scope: !59, file: !12, line: 1155, column: 3)
!2045 = !DILocation(line: 1158, column: 25, scope: !2043)
!2046 = !DILocation(line: 1159, column: 30, scope: !2043)
!2047 = !DILocation(line: 1160, column: 22, scope: !2043)
!2048 = !DILocation(line: 1160, column: 3, scope: !2043)
!2049 = !DILocation(line: 1024, column: 7, scope: !455, inlinedAt: !2050)
!2050 = distinct !DILocation(line: 1160, column: 3, scope: !2043)
!2051 = !DILocation(line: 1024, column: 12, scope: !455, inlinedAt: !2050)
!2052 = !DILocation(line: 1024, column: 9, scope: !455, inlinedAt: !2050)
!2053 = !DILocation(line: 1024, column: 7, scope: !456, inlinedAt: !2050)
!2054 = !DILocation(line: 38, column: 10, scope: !93, inlinedAt: !2055)
!2055 = distinct !DILocation(line: 1028, column: 5, scope: !462, inlinedAt: !2050)
!2056 = !DILocation(line: 1025, column: 9, scope: !465, inlinedAt: !2050)
!2057 = !DILocation(line: 1025, column: 7, scope: !465, inlinedAt: !2050)
!2058 = !DILocation(line: 1031, column: 3, scope: !456, inlinedAt: !2050)
!2059 = !DILocation(line: 1020, column: 29, scope: !45, inlinedAt: !2050)
!2060 = !DILocation(line: 1020, column: 39, scope: !45, inlinedAt: !2050)
!2061 = !DILocation(line: 1162, column: 3, scope: !2044)
