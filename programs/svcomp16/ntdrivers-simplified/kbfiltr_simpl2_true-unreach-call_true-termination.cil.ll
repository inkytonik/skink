; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@NP = common global i32 0, align 4
@s = common global i32 0, align 4
@pended = common global i32 0, align 4
@compFptr = common global i32 0, align 4
@compRegistered = common global i32 0, align 4
@lowerDriverReturn = common global i32 0, align 4
@setEventCalled = common global i32 0, align 4
@customIrp = common global i32 0, align 4
@UNLOADED = common global i32 0, align 4
@DC = common global i32 0, align 4
@SKIP1 = common global i32 0, align 4
@SKIP2 = common global i32 0, align 4
@MPR1 = common global i32 0, align 4
@MPR3 = common global i32 0, align 4
@IPC = common global i32 0, align 4
@Executive = common global i32 0, align 4
@KernelMode = common global i32 0, align 4
@myStatus = common global i32 0, align 4
@DevicePowerState = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @stub_driver_init() #0 {
  %1 = load i32, i32* @NP, align 4, !dbg !62
  store i32 %1, i32* @s, align 4, !dbg !64
  store i32 0, i32* @pended, align 4, !dbg !65
  store i32 0, i32* @compFptr, align 4, !dbg !66
  store i32 0, i32* @compRegistered, align 4, !dbg !67
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !68
  store i32 0, i32* @setEventCalled, align 4, !dbg !69
  store i32 0, i32* @customIrp, align 4, !dbg !70
  ret void, !dbg !71
}

; Function Attrs: nounwind ssp uwtable
define void @_BLAST_init() #0 {
  store i32 0, i32* @UNLOADED, align 4, !dbg !72
  store i32 1, i32* @NP, align 4, !dbg !74
  store i32 2, i32* @DC, align 4, !dbg !75
  store i32 3, i32* @SKIP1, align 4, !dbg !76
  store i32 4, i32* @SKIP2, align 4, !dbg !77
  store i32 5, i32* @MPR1, align 4, !dbg !78
  store i32 6, i32* @MPR3, align 4, !dbg !79
  store i32 7, i32* @IPC, align 4, !dbg !80
  %1 = load i32, i32* @UNLOADED, align 4, !dbg !81
  store i32 %1, i32* @s, align 4, !dbg !82
  store i32 0, i32* @pended, align 4, !dbg !83
  store i32 0, i32* @compFptr, align 4, !dbg !84
  store i32 0, i32* @compRegistered, align 4, !dbg !85
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !86
  store i32 0, i32* @setEventCalled, align 4, !dbg !87
  store i32 0, i32* @customIrp, align 4, !dbg !88
  ret void, !dbg !89
}

; Function Attrs: nounwind ssp uwtable
define i32 @KbFilter_PnP(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %devExt = alloca i32, align 4
  %irpStack = alloca i32, align 4
  %status = alloca i32, align 4
  %event = alloca i32, align 4
  %DeviceObject__DeviceExtension = alloca i32, align 4
  %Irp__Tail__Overlay__CurrentStackLocation = alloca i32, align 4
  %irpStack__MinorFunction = alloca i32, align 4
  %devExt__TopOfStack = alloca i32, align 4
  %devExt__Started = alloca i32, align 4
  %devExt__Removed = alloca i32, align 4
  %devExt__SurpriseRemoved = alloca i32, align 4
  %Irp__IoStatus__Status = alloca i32, align 4
  %Irp__IoStatus__Information = alloca i32, align 4
  %Irp__CurrentLocation = alloca i32, align 4
  %irpSp = alloca i32, align 4
  %nextIrpSp = alloca i32, align 4
  %nextIrpSp__Control = alloca i32, align 4
  %irpSp___0 = alloca i32, align 4
  %irpSp__Context = alloca i32, align 4
  %irpSp__Control = alloca i32, align 4
  %__cil_tmp23 = alloca i64, align 8
  store i32 %DeviceObject, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !90, metadata !91), !dbg !92
  store i32 %Irp, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !93, metadata !91), !dbg !94
  call void @llvm.dbg.declare(metadata i32* %devExt, metadata !95, metadata !91), !dbg !96
  call void @llvm.dbg.declare(metadata i32* %irpStack, metadata !97, metadata !91), !dbg !98
  call void @llvm.dbg.declare(metadata i32* %status, metadata !99, metadata !91), !dbg !100
  call void @llvm.dbg.declare(metadata i32* %event, metadata !101, metadata !91), !dbg !102
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !103
  store i32 %5, i32* %event, align 4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !104, metadata !91), !dbg !105
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !106
  store i32 %6, i32* %DeviceObject__DeviceExtension, align 4, !dbg !105
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !107, metadata !91), !dbg !108
  %7 = call i32 @__VERIFIER_nondet_int(), !dbg !109
  store i32 %7, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !108
  call void @llvm.dbg.declare(metadata i32* %irpStack__MinorFunction, metadata !110, metadata !91), !dbg !111
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !112
  store i32 %8, i32* %irpStack__MinorFunction, align 4, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %devExt__TopOfStack, metadata !113, metadata !91), !dbg !114
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !115
  store i32 %9, i32* %devExt__TopOfStack, align 4, !dbg !114
  call void @llvm.dbg.declare(metadata i32* %devExt__Started, metadata !116, metadata !91), !dbg !117
  call void @llvm.dbg.declare(metadata i32* %devExt__Removed, metadata !118, metadata !91), !dbg !119
  call void @llvm.dbg.declare(metadata i32* %devExt__SurpriseRemoved, metadata !120, metadata !91), !dbg !121
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !122, metadata !91), !dbg !123
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !124, metadata !91), !dbg !125
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !126, metadata !91), !dbg !127
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !128
  store i32 %10, i32* %Irp__CurrentLocation, align 4, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %irpSp, metadata !129, metadata !91), !dbg !130
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp, metadata !131, metadata !91), !dbg !132
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp__Control, metadata !133, metadata !91), !dbg !134
  call void @llvm.dbg.declare(metadata i32* %irpSp___0, metadata !135, metadata !91), !dbg !136
  call void @llvm.dbg.declare(metadata i32* %irpSp__Context, metadata !137, metadata !91), !dbg !138
  call void @llvm.dbg.declare(metadata i32* %irpSp__Control, metadata !139, metadata !91), !dbg !140
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp23, metadata !141, metadata !91), !dbg !142
  store i32 0, i32* %status, align 4, !dbg !143
  %11 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !145
  store i32 %11, i32* %devExt, align 4, !dbg !146
  %12 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !147
  store i32 %12, i32* %irpStack, align 4, !dbg !148
  %13 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !149
  %14 = icmp eq i32 %13, 0, !dbg !151
  call void @llvm.dbg.declare(metadata i32* %1, metadata !152, metadata !91), !dbg !153
  call void @llvm.dbg.declare(metadata i32* %2, metadata !199, metadata !91), !dbg !200
  br i1 %14, label %15, label %16, !dbg !201

; <label>:15                                      ; preds = %0
  br label %99, !dbg !202

; <label>:16                                      ; preds = %0
  %17 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !204
  %18 = icmp eq i32 %17, 23, !dbg !205
  br i1 %18, label %19, label %20, !dbg !206

; <label>:19                                      ; preds = %16
  br label %150, !dbg !207

; <label>:20                                      ; preds = %16
  %21 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !209
  %22 = icmp eq i32 %21, 2, !dbg !210
  br i1 %22, label %23, label %24, !dbg !211

; <label>:23                                      ; preds = %20
  br label %165, !dbg !212

; <label>:24                                      ; preds = %20
  %25 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !214
  %26 = icmp eq i32 %25, 1, !dbg !215
  br i1 %26, label %27, label %28, !dbg !216

; <label>:27                                      ; preds = %24
  br label %180, !dbg !217

; <label>:28                                      ; preds = %24
  %29 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !219
  %30 = icmp eq i32 %29, 5, !dbg !220
  br i1 %30, label %31, label %32, !dbg !221

; <label>:31                                      ; preds = %28
  br label %180, !dbg !222

; <label>:32                                      ; preds = %28
  %33 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !224
  %34 = icmp eq i32 %33, 3, !dbg !225
  br i1 %34, label %35, label %36, !dbg !226

; <label>:35                                      ; preds = %32
  br label %180, !dbg !227

; <label>:36                                      ; preds = %32
  %37 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !229
  %38 = icmp eq i32 %37, 6, !dbg !230
  br i1 %38, label %39, label %40, !dbg !231

; <label>:39                                      ; preds = %36
  br label %180, !dbg !232

; <label>:40                                      ; preds = %36
  %41 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !234
  %42 = icmp eq i32 %41, 13, !dbg !235
  br i1 %42, label %43, label %44, !dbg !236

; <label>:43                                      ; preds = %40
  br label %180, !dbg !237

; <label>:44                                      ; preds = %40
  %45 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !239
  %46 = icmp eq i32 %45, 4, !dbg !240
  br i1 %46, label %47, label %48, !dbg !241

; <label>:47                                      ; preds = %44
  br label %180, !dbg !242

; <label>:48                                      ; preds = %44
  %49 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !244
  %50 = icmp eq i32 %49, 7, !dbg !245
  br i1 %50, label %51, label %52, !dbg !246

; <label>:51                                      ; preds = %48
  br label %180, !dbg !247

; <label>:52                                      ; preds = %48
  %53 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !249
  %54 = icmp eq i32 %53, 8, !dbg !250
  br i1 %54, label %55, label %56, !dbg !251

; <label>:55                                      ; preds = %52
  br label %180, !dbg !252

; <label>:56                                      ; preds = %52
  %57 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !254
  %58 = icmp eq i32 %57, 9, !dbg !255
  br i1 %58, label %59, label %60, !dbg !256

; <label>:59                                      ; preds = %56
  br label %180, !dbg !257

; <label>:60                                      ; preds = %56
  %61 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !259
  %62 = icmp eq i32 %61, 12, !dbg !260
  br i1 %62, label %63, label %64, !dbg !261

; <label>:63                                      ; preds = %60
  br label %180, !dbg !262

; <label>:64                                      ; preds = %60
  %65 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !264
  %66 = icmp eq i32 %65, 10, !dbg !265
  br i1 %66, label %67, label %68, !dbg !266

; <label>:67                                      ; preds = %64
  br label %180, !dbg !267

; <label>:68                                      ; preds = %64
  %69 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !269
  %70 = icmp eq i32 %69, 11, !dbg !270
  br i1 %70, label %71, label %72, !dbg !271

; <label>:71                                      ; preds = %68
  br label %180, !dbg !272

; <label>:72                                      ; preds = %68
  %73 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !274
  %74 = icmp eq i32 %73, 15, !dbg !275
  br i1 %74, label %75, label %76, !dbg !276

; <label>:75                                      ; preds = %72
  br label %180, !dbg !277

; <label>:76                                      ; preds = %72
  %77 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !279
  %78 = icmp eq i32 %77, 16, !dbg !280
  br i1 %78, label %79, label %80, !dbg !281

; <label>:79                                      ; preds = %76
  br label %180, !dbg !282

; <label>:80                                      ; preds = %76
  %81 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !284
  %82 = icmp eq i32 %81, 17, !dbg !285
  br i1 %82, label %83, label %84, !dbg !286

; <label>:83                                      ; preds = %80
  br label %180, !dbg !287

; <label>:84                                      ; preds = %80
  %85 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !289
  %86 = icmp eq i32 %85, 18, !dbg !290
  br i1 %86, label %87, label %88, !dbg !291

; <label>:87                                      ; preds = %84
  br label %180, !dbg !292

; <label>:88                                      ; preds = %84
  %89 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !294
  %90 = icmp eq i32 %89, 19, !dbg !295
  br i1 %90, label %91, label %92, !dbg !296

; <label>:91                                      ; preds = %88
  br label %180, !dbg !297

; <label>:92                                      ; preds = %88
  %93 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !299
  %94 = icmp eq i32 %93, 20, !dbg !300
  br i1 %94, label %95, label %96, !dbg !301

; <label>:95                                      ; preds = %92
  br label %180, !dbg !302

; <label>:96                                      ; preds = %92
  br label %180, !dbg !304
                                                  ; No predecessors!
  br i1 false, label %98, label %195, !dbg !305

; <label>:98                                      ; preds = %97
  br label %99, !dbg !306

; <label>:99                                      ; preds = %98, %15
  %100 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !307
  store i32 %100, i32* %irpSp, align 4, !dbg !308
  %101 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !309
  %102 = sub nsw i32 %101, 1, !dbg !310
  store i32 %102, i32* %nextIrpSp, align 4, !dbg !311
  store i32 0, i32* %nextIrpSp__Control, align 4, !dbg !312
  %103 = load i32, i32* @s, align 4, !dbg !313
  %104 = load i32, i32* @NP, align 4, !dbg !315
  %105 = icmp ne i32 %103, %104, !dbg !316
  br i1 %105, label %106, label %107, !dbg !317

; <label>:106                                     ; preds = %99
  call void (...) @__VERIFIER_error() #5, !dbg !318
  unreachable, !dbg !318

errorFn.exit:                                     ; No predecessors!
  br label %113, !dbg !323

; <label>:107                                     ; preds = %99
  %108 = load i32, i32* @compRegistered, align 4, !dbg !324
  %109 = icmp ne i32 %108, 0, !dbg !327
  br i1 %109, label %110, label %111, !dbg !328

; <label>:110                                     ; preds = %107
  call void (...) @__VERIFIER_error() #5, !dbg !329
  unreachable, !dbg !329

errorFn.exit1:                                    ; No predecessors!
  br label %112, !dbg !333

; <label>:111                                     ; preds = %107
  store i32 1, i32* @compRegistered, align 4, !dbg !334
  br label %112

; <label>:112                                     ; preds = %111, %errorFn.exit1
  br label %113

; <label>:113                                     ; preds = %112, %errorFn.exit
  %114 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !336
  %115 = sub nsw i32 %114, 1, !dbg !338
  store i32 %115, i32* %irpSp___0, align 4, !dbg !339
  %116 = load i32, i32* %event, align 4, !dbg !340
  store i32 %116, i32* %irpSp__Context, align 4, !dbg !341
  store i32 224, i32* %irpSp__Control, align 4, !dbg !342
  %117 = load i32, i32* %devExt__TopOfStack, align 4, !dbg !343
  %118 = load i32, i32* %4, align 4, !dbg !344
  %119 = call i32 @IofCallDriver(i32 %117, i32 %118), !dbg !345
  store i32 %119, i32* %status, align 4, !dbg !346
  %120 = load i32, i32* %status, align 4, !dbg !347
  %121 = sext i32 %120 to i64, !dbg !349
  store i64 %121, i64* %__cil_tmp23, align 8, !dbg !350
  %122 = load i64, i64* %__cil_tmp23, align 8, !dbg !351
  %123 = icmp eq i64 %122, 259, !dbg !353
  br i1 %123, label %124, label %129, !dbg !354

; <label>:124                                     ; preds = %113
  %125 = load i32, i32* %event, align 4, !dbg !355
  %126 = load i32, i32* @Executive, align 4, !dbg !358
  %127 = load i32, i32* @KernelMode, align 4, !dbg !359
  %128 = call i32 @KeWaitForSingleObject(i32 %125, i32 %126, i32 %127, i32 0, i32 0), !dbg !360
  br label %129, !dbg !361

; <label>:129                                     ; preds = %124, %113
  %130 = load i32, i32* %status, align 4, !dbg !362
  %131 = icmp sge i32 %130, 0, !dbg !364
  br i1 %131, label %132, label %137, !dbg !365

; <label>:132                                     ; preds = %129
  %133 = load i32, i32* @myStatus, align 4, !dbg !366
  %134 = icmp sge i32 %133, 0, !dbg !369
  br i1 %134, label %135, label %136, !dbg !370

; <label>:135                                     ; preds = %132
  store i32 1, i32* %devExt__Started, align 4, !dbg !371
  store i32 0, i32* %devExt__Removed, align 4, !dbg !373
  store i32 0, i32* %devExt__SurpriseRemoved, align 4, !dbg !374
  br label %136, !dbg !375

; <label>:136                                     ; preds = %135, %132
  br label %137, !dbg !376

; <label>:137                                     ; preds = %136, %129
  %138 = load i32, i32* %status, align 4, !dbg !377
  store i32 %138, i32* %Irp__IoStatus__Status, align 4, !dbg !378
  %139 = load i32, i32* %status, align 4, !dbg !379
  store i32 %139, i32* @myStatus, align 4, !dbg !380
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !381
  %140 = load i32, i32* %4, align 4, !dbg !382
  %141 = bitcast i32* %1 to i8*, !dbg !383
  call void @llvm.lifetime.start(i64 4, i8* %141), !dbg !383
  %142 = bitcast i32* %2 to i8*, !dbg !383
  call void @llvm.lifetime.start(i64 4, i8* %142), !dbg !383
  store i32 %140, i32* %1, align 4, !dbg !383
  store i32 0, i32* %2, align 4, !dbg !383
  %143 = load i32, i32* @s, align 4, !dbg !384
  %144 = load i32, i32* @NP, align 4, !dbg !387
  %145 = icmp eq i32 %143, %144, !dbg !388
  br i1 %145, label %IofCompleteRequest.exit, label %146, !dbg !389

; <label>:146                                     ; preds = %137
  call void (...) @__VERIFIER_error() #5, !dbg !390
  unreachable, !dbg !390

IofCompleteRequest.exit:                          ; preds = %137
  %147 = load i32, i32* @DC, align 4, !dbg !394
  store i32 %147, i32* @s, align 4, !dbg !396
  %148 = bitcast i32* %1 to i8*, !dbg !397
  call void @llvm.lifetime.end(i64 4, i8* %148), !dbg !397
  %149 = bitcast i32* %2 to i8*, !dbg !397
  call void @llvm.lifetime.end(i64 4, i8* %149), !dbg !397
  br label %196, !dbg !398

; <label>:150                                     ; preds = %19
  store i32 1, i32* %devExt__SurpriseRemoved, align 4, !dbg !399
  %151 = load i32, i32* @s, align 4, !dbg !400
  %152 = load i32, i32* @NP, align 4, !dbg !402
  %153 = icmp eq i32 %151, %152, !dbg !403
  br i1 %153, label %154, label %156, !dbg !404

; <label>:154                                     ; preds = %150
  %155 = load i32, i32* @SKIP1, align 4, !dbg !405
  store i32 %155, i32* @s, align 4, !dbg !407
  br label %157, !dbg !408

; <label>:156                                     ; preds = %150
  call void (...) @__VERIFIER_error() #5, !dbg !409
  unreachable, !dbg !409

errorFn.exit2:                                    ; No predecessors!
  br label %157

; <label>:157                                     ; preds = %errorFn.exit2, %154
  %158 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !413
  %159 = add nsw i32 %158, 1, !dbg !413
  store i32 %159, i32* %Irp__CurrentLocation, align 4, !dbg !413
  %160 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !415
  %161 = add nsw i32 %160, 1, !dbg !415
  store i32 %161, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !415
  %162 = load i32, i32* %devExt__TopOfStack, align 4, !dbg !416
  %163 = load i32, i32* %4, align 4, !dbg !417
  %164 = call i32 @IofCallDriver(i32 %162, i32 %163), !dbg !418
  store i32 %164, i32* %status, align 4, !dbg !419
  br label %196, !dbg !420

; <label>:165                                     ; preds = %23
  store i32 1, i32* %devExt__Removed, align 4, !dbg !421
  %166 = load i32, i32* @s, align 4, !dbg !422
  %167 = load i32, i32* @NP, align 4, !dbg !424
  %168 = icmp eq i32 %166, %167, !dbg !425
  br i1 %168, label %169, label %171, !dbg !426

; <label>:169                                     ; preds = %165
  %170 = load i32, i32* @SKIP1, align 4, !dbg !427
  store i32 %170, i32* @s, align 4, !dbg !429
  br label %172, !dbg !430

; <label>:171                                     ; preds = %165
  call void (...) @__VERIFIER_error() #5, !dbg !431
  unreachable, !dbg !431

errorFn.exit3:                                    ; No predecessors!
  br label %172

; <label>:172                                     ; preds = %errorFn.exit3, %169
  %173 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !435
  %174 = add nsw i32 %173, 1, !dbg !435
  store i32 %174, i32* %Irp__CurrentLocation, align 4, !dbg !435
  %175 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !437
  %176 = add nsw i32 %175, 1, !dbg !437
  store i32 %176, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !437
  %177 = load i32, i32* %devExt__TopOfStack, align 4, !dbg !438
  %178 = load i32, i32* %4, align 4, !dbg !439
  %179 = call i32 @IofCallDriver(i32 %177, i32 %178), !dbg !440
  store i32 0, i32* %status, align 4, !dbg !441
  br label %196, !dbg !442

; <label>:180                                     ; preds = %96, %95, %91, %87, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27
  %181 = load i32, i32* @s, align 4, !dbg !443
  %182 = load i32, i32* @NP, align 4, !dbg !445
  %183 = icmp eq i32 %181, %182, !dbg !446
  br i1 %183, label %184, label %186, !dbg !447

; <label>:184                                     ; preds = %180
  %185 = load i32, i32* @SKIP1, align 4, !dbg !448
  store i32 %185, i32* @s, align 4, !dbg !450
  br label %187, !dbg !451

; <label>:186                                     ; preds = %180
  call void (...) @__VERIFIER_error() #5, !dbg !452
  unreachable, !dbg !452

errorFn.exit4:                                    ; No predecessors!
  br label %187

; <label>:187                                     ; preds = %errorFn.exit4, %184
  %188 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !456
  %189 = add nsw i32 %188, 1, !dbg !456
  store i32 %189, i32* %Irp__CurrentLocation, align 4, !dbg !456
  %190 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !458
  %191 = add nsw i32 %190, 1, !dbg !458
  store i32 %191, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !458
  %192 = load i32, i32* %devExt__TopOfStack, align 4, !dbg !459
  %193 = load i32, i32* %4, align 4, !dbg !460
  %194 = call i32 @IofCallDriver(i32 %192, i32 %193), !dbg !461
  store i32 %194, i32* %status, align 4, !dbg !462
  br label %196, !dbg !463

; <label>:195                                     ; preds = %97
  br label %196, !dbg !464

; <label>:196                                     ; preds = %195, %187, %172, %157, %IofCompleteRequest.exit
  br label %197

; <label>:197                                     ; preds = %196
  br label %198

; <label>:198                                     ; preds = %197
  br label %199

; <label>:199                                     ; preds = %198
  br label %200

; <label>:200                                     ; preds = %199
  br label %201

; <label>:201                                     ; preds = %200
  br label %202

; <label>:202                                     ; preds = %201
  br label %203

; <label>:203                                     ; preds = %202
  br label %204

; <label>:204                                     ; preds = %203
  br label %205

; <label>:205                                     ; preds = %204
  br label %206

; <label>:206                                     ; preds = %205
  br label %207

; <label>:207                                     ; preds = %206
  br label %208

; <label>:208                                     ; preds = %207
  br label %209

; <label>:209                                     ; preds = %208
  br label %210

; <label>:210                                     ; preds = %209
  br label %211

; <label>:211                                     ; preds = %210
  br label %212

; <label>:212                                     ; preds = %211
  br label %213

; <label>:213                                     ; preds = %212
  br label %214

; <label>:214                                     ; preds = %213
  br label %215

; <label>:215                                     ; preds = %214
  br label %216

; <label>:216                                     ; preds = %215
  br label %217

; <label>:217                                     ; preds = %216
  br label %218

; <label>:218                                     ; preds = %217
  %219 = load i32, i32* %status, align 4, !dbg !465
  ret i32 %219, !dbg !466
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind ssp uwtable
define void @errorFn() #0 {
  br label %1, !dbg !467

; <label>:1                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !468
  unreachable, !dbg !468
                                                  ; No predecessors!
  ret void, !dbg !469
}

; Function Attrs: nounwind ssp uwtable
define void @IofCompleteRequest(i32 %Irp, i32 %PriorityBoost) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %Irp, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !152, metadata !91), !dbg !470
  store i32 %PriorityBoost, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !199, metadata !91), !dbg !471
  %3 = load i32, i32* @s, align 4, !dbg !472
  %4 = load i32, i32* @NP, align 4, !dbg !473
  %5 = icmp eq i32 %3, %4, !dbg !474
  br i1 %5, label %6, label %8, !dbg !475

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* @DC, align 4, !dbg !476
  store i32 %7, i32* @s, align 4, !dbg !477
  br label %9, !dbg !478

; <label>:8                                       ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !479
  unreachable, !dbg !479

errorFn.exit:                                     ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %errorFn.exit, %6
  ret void, !dbg !481
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
  %tmp_ndt_2 = alloca i32, align 4
  %tmp_ndt_3 = alloca i32, align 4
  %tmp_ndt_4 = alloca i32, align 4
  %tmp_ndt_5 = alloca i32, align 4
  store i32 0, i32* %1
  call void @llvm.dbg.declare(metadata i32* %status, metadata !482, metadata !91), !dbg !483
  call void @llvm.dbg.declare(metadata i32* %irp, metadata !484, metadata !91), !dbg !485
  %2 = call i32 @__VERIFIER_nondet_int(), !dbg !486
  store i32 %2, i32* %irp, align 4, !dbg !485
  call void @llvm.dbg.declare(metadata i32* %pirp, metadata !487, metadata !91), !dbg !488
  call void @llvm.dbg.declare(metadata i32* %pirp__IoStatus__Status, metadata !489, metadata !91), !dbg !490
  call void @llvm.dbg.declare(metadata i32* %irp_choice, metadata !491, metadata !91), !dbg !492
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !493
  store i32 %3, i32* %irp_choice, align 4, !dbg !492
  call void @llvm.dbg.declare(metadata i32* %devobj, metadata !494, metadata !91), !dbg !495
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !496
  store i32 %4, i32* %devobj, align 4, !dbg !495
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp8, metadata !497, metadata !91), !dbg !498
  store i32 0, i32* @KernelMode, align 4, !dbg !499
  store i32 0, i32* @Executive, align 4, !dbg !500
  store i32 1, i32* @DevicePowerState, align 4, !dbg !501
  store i32 0, i32* @s, align 4, !dbg !502
  store i32 0, i32* @UNLOADED, align 4, !dbg !503
  store i32 0, i32* @NP, align 4, !dbg !504
  store i32 0, i32* @DC, align 4, !dbg !505
  store i32 0, i32* @SKIP1, align 4, !dbg !506
  store i32 0, i32* @SKIP2, align 4, !dbg !507
  store i32 0, i32* @MPR1, align 4, !dbg !508
  store i32 0, i32* @MPR3, align 4, !dbg !509
  store i32 0, i32* @IPC, align 4, !dbg !510
  store i32 0, i32* @pended, align 4, !dbg !511
  store i32 0, i32* @compFptr, align 4, !dbg !512
  store i32 0, i32* @compRegistered, align 4, !dbg !513
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !514
  store i32 0, i32* @setEventCalled, align 4, !dbg !515
  store i32 0, i32* @customIrp, align 4, !dbg !516
  store i32 0, i32* @myStatus, align 4, !dbg !517
  store i32 0, i32* %status, align 4, !dbg !518
  %5 = load i32, i32* %irp, align 4, !dbg !521
  store i32 %5, i32* %pirp, align 4, !dbg !522
  store i32 0, i32* @UNLOADED, align 4, !dbg !523
  store i32 1, i32* @NP, align 4, !dbg !525
  store i32 2, i32* @DC, align 4, !dbg !526
  store i32 3, i32* @SKIP1, align 4, !dbg !527
  store i32 4, i32* @SKIP2, align 4, !dbg !528
  store i32 5, i32* @MPR1, align 4, !dbg !529
  store i32 6, i32* @MPR3, align 4, !dbg !530
  store i32 7, i32* @IPC, align 4, !dbg !531
  %6 = load i32, i32* @UNLOADED, align 4, !dbg !532
  store i32 %6, i32* @s, align 4, !dbg !533
  store i32 0, i32* @pended, align 4, !dbg !534
  store i32 0, i32* @compFptr, align 4, !dbg !535
  store i32 0, i32* @compRegistered, align 4, !dbg !536
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !537
  store i32 0, i32* @setEventCalled, align 4, !dbg !538
  store i32 0, i32* @customIrp, align 4, !dbg !539
  %7 = load i32, i32* %status, align 4, !dbg !540
  %8 = icmp sge i32 %7, 0, !dbg !542
  br i1 %8, label %9, label %80, !dbg !543

; <label>:9                                       ; preds = %0
  %10 = load i32, i32* @NP, align 4, !dbg !544
  store i32 %10, i32* @s, align 4, !dbg !546
  store i32 0, i32* @customIrp, align 4, !dbg !547
  %11 = load i32, i32* @customIrp, align 4, !dbg !548
  store i32 %11, i32* @setEventCalled, align 4, !dbg !549
  %12 = load i32, i32* @setEventCalled, align 4, !dbg !550
  store i32 %12, i32* @lowerDriverReturn, align 4, !dbg !551
  %13 = load i32, i32* @lowerDriverReturn, align 4, !dbg !552
  store i32 %13, i32* @compRegistered, align 4, !dbg !553
  %14 = load i32, i32* @compRegistered, align 4, !dbg !554
  store i32 %14, i32* @pended, align 4, !dbg !555
  store i32 0, i32* %pirp__IoStatus__Status, align 4, !dbg !556
  store i32 0, i32* @myStatus, align 4, !dbg !557
  %15 = load i32, i32* %irp_choice, align 4, !dbg !558
  %16 = icmp eq i32 %15, 0, !dbg !560
  br i1 %16, label %17, label %18, !dbg !561

; <label>:17                                      ; preds = %9
  store i32 -1073741637, i32* %pirp__IoStatus__Status, align 4, !dbg !562
  store i32 -1073741637, i32* @myStatus, align 4, !dbg !564
  br label %18, !dbg !565

; <label>:18                                      ; preds = %17, %9
  %19 = load i32, i32* @NP, align 4, !dbg !566
  store i32 %19, i32* @s, align 4, !dbg !569
  store i32 0, i32* @pended, align 4, !dbg !570
  store i32 0, i32* @compFptr, align 4, !dbg !571
  store i32 0, i32* @compRegistered, align 4, !dbg !572
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !573
  store i32 0, i32* @setEventCalled, align 4, !dbg !574
  store i32 0, i32* @customIrp, align 4, !dbg !575
  %20 = load i32, i32* %status, align 4, !dbg !576
  %21 = icmp slt i32 %20, 0, !dbg !579
  br i1 %21, label %22, label %23, !dbg !580

; <label>:22                                      ; preds = %18
  store i32 -1, i32* %1, !dbg !581
  br label %159, !dbg !581

; <label>:23                                      ; preds = %18
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_1, metadata !583, metadata !91), !dbg !584
  %24 = call i32 @__VERIFIER_nondet_int(), !dbg !585
  store i32 %24, i32* %tmp_ndt_1, align 4, !dbg !586
  %25 = load i32, i32* %tmp_ndt_1, align 4, !dbg !587
  %26 = icmp eq i32 %25, 0, !dbg !589
  br i1 %26, label %27, label %28, !dbg !590

; <label>:27                                      ; preds = %23
  br label %51, !dbg !591

; <label>:28                                      ; preds = %23
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_2, metadata !593, metadata !91), !dbg !595
  %29 = call i32 @__VERIFIER_nondet_int(), !dbg !596
  store i32 %29, i32* %tmp_ndt_2, align 4, !dbg !597
  %30 = load i32, i32* %tmp_ndt_2, align 4, !dbg !598
  %31 = icmp eq i32 %30, 1, !dbg !600
  br i1 %31, label %32, label %33, !dbg !601

; <label>:32                                      ; preds = %28
  br label %55, !dbg !602

; <label>:33                                      ; preds = %28
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_3, metadata !604, metadata !91), !dbg !606
  %34 = call i32 @__VERIFIER_nondet_int(), !dbg !607
  store i32 %34, i32* %tmp_ndt_3, align 4, !dbg !608
  %35 = load i32, i32* %tmp_ndt_3, align 4, !dbg !609
  %36 = icmp eq i32 %35, 3, !dbg !611
  br i1 %36, label %37, label %38, !dbg !612

; <label>:37                                      ; preds = %33
  br label %59, !dbg !613

; <label>:38                                      ; preds = %33
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_4, metadata !615, metadata !91), !dbg !617
  %39 = call i32 @__VERIFIER_nondet_int(), !dbg !618
  store i32 %39, i32* %tmp_ndt_4, align 4, !dbg !619
  %40 = load i32, i32* %tmp_ndt_4, align 4, !dbg !620
  %41 = icmp eq i32 %40, 4, !dbg !622
  br i1 %41, label %42, label %43, !dbg !623

; <label>:42                                      ; preds = %38
  br label %63, !dbg !624

; <label>:43                                      ; preds = %38
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_5, metadata !626, metadata !91), !dbg !628
  %44 = call i32 @__VERIFIER_nondet_int(), !dbg !629
  store i32 %44, i32* %tmp_ndt_5, align 4, !dbg !630
  %45 = load i32, i32* %tmp_ndt_5, align 4, !dbg !631
  %46 = icmp eq i32 %45, 8, !dbg !633
  br i1 %46, label %47, label %48, !dbg !634

; <label>:47                                      ; preds = %43
  br label %67, !dbg !635

; <label>:48                                      ; preds = %43
  br label %71, !dbg !637
                                                  ; No predecessors!
  br i1 false, label %50, label %72, !dbg !639

; <label>:50                                      ; preds = %49
  br label %51, !dbg !640

; <label>:51                                      ; preds = %50, %27
  %52 = load i32, i32* %devobj, align 4, !dbg !642
  %53 = load i32, i32* %pirp, align 4, !dbg !645
  %54 = call i32 @KbFilter_CreateClose(i32 %52, i32 %53), !dbg !646
  store i32 %54, i32* %status, align 4, !dbg !647
  br label %73, !dbg !648

; <label>:55                                      ; preds = %32
  %56 = load i32, i32* %devobj, align 4, !dbg !649
  %57 = load i32, i32* %pirp, align 4, !dbg !651
  %58 = call i32 @KbFilter_CreateClose(i32 %56, i32 %57), !dbg !652
  store i32 %58, i32* %status, align 4, !dbg !653
  br label %73, !dbg !654

; <label>:59                                      ; preds = %37
  %60 = load i32, i32* %devobj, align 4, !dbg !655
  %61 = load i32, i32* %pirp, align 4, !dbg !657
  %62 = call i32 @KbFilter_PnP(i32 %60, i32 %61), !dbg !658
  store i32 %62, i32* %status, align 4, !dbg !659
  br label %73, !dbg !660

; <label>:63                                      ; preds = %42
  %64 = load i32, i32* %devobj, align 4, !dbg !661
  %65 = load i32, i32* %pirp, align 4, !dbg !663
  %66 = call i32 @KbFilter_Power(i32 %64, i32 %65), !dbg !664
  store i32 %66, i32* %status, align 4, !dbg !665
  br label %73, !dbg !666

; <label>:67                                      ; preds = %47
  %68 = load i32, i32* %devobj, align 4, !dbg !667
  %69 = load i32, i32* %pirp, align 4, !dbg !669
  %70 = call i32 @KbFilter_InternIoCtl(i32 %68, i32 %69), !dbg !670
  store i32 %70, i32* %status, align 4, !dbg !671
  br label %73, !dbg !672

; <label>:71                                      ; preds = %48
  store i32 -1, i32* %1, !dbg !673
  br label %159, !dbg !673

; <label>:72                                      ; preds = %49
  br label %73, !dbg !674

; <label>:73                                      ; preds = %72, %67, %63, %59, %55, %51
  br label %74

; <label>:74                                      ; preds = %73
  br label %75

; <label>:75                                      ; preds = %74
  br label %76

; <label>:76                                      ; preds = %75
  br label %77

; <label>:77                                      ; preds = %76
  br label %78

; <label>:78                                      ; preds = %77
  br label %79

; <label>:79                                      ; preds = %78
  br label %80, !dbg !675

; <label>:80                                      ; preds = %79, %0
  %81 = load i32, i32* @pended, align 4, !dbg !676
  %82 = icmp eq i32 %81, 1, !dbg !678
  br i1 %82, label %83, label %91, !dbg !679

; <label>:83                                      ; preds = %80
  %84 = load i32, i32* @s, align 4, !dbg !680
  %85 = load i32, i32* @NP, align 4, !dbg !683
  %86 = icmp eq i32 %84, %85, !dbg !684
  br i1 %86, label %87, label %89, !dbg !685

; <label>:87                                      ; preds = %83
  %88 = load i32, i32* @NP, align 4, !dbg !686
  store i32 %88, i32* @s, align 4, !dbg !688
  br label %90, !dbg !689

; <label>:89                                      ; preds = %83
  br label %92, !dbg !690

; <label>:90                                      ; preds = %87
  br label %157, !dbg !692

; <label>:91                                      ; preds = %80
  br label %92, !dbg !693

; <label>:92                                      ; preds = %91, %89
  %93 = load i32, i32* @pended, align 4, !dbg !694
  %94 = icmp eq i32 %93, 1, !dbg !697
  br i1 %94, label %95, label %103, !dbg !698

; <label>:95                                      ; preds = %92
  %96 = load i32, i32* @s, align 4, !dbg !699
  %97 = load i32, i32* @MPR3, align 4, !dbg !702
  %98 = icmp eq i32 %96, %97, !dbg !703
  br i1 %98, label %99, label %101, !dbg !704

; <label>:99                                      ; preds = %95
  %100 = load i32, i32* @MPR3, align 4, !dbg !705
  store i32 %100, i32* @s, align 4, !dbg !707
  br label %102, !dbg !708

; <label>:101                                     ; preds = %95
  br label %104, !dbg !709

; <label>:102                                     ; preds = %99
  br label %156, !dbg !711

; <label>:103                                     ; preds = %92
  br label %104, !dbg !712

; <label>:104                                     ; preds = %103, %101
  %105 = load i32, i32* @s, align 4, !dbg !713
  %106 = load i32, i32* @UNLOADED, align 4, !dbg !716
  %107 = icmp ne i32 %105, %106, !dbg !717
  br i1 %107, label %108, label %155, !dbg !718

; <label>:108                                     ; preds = %104
  %109 = load i32, i32* %status, align 4, !dbg !719
  %110 = icmp ne i32 %109, -1, !dbg !722
  br i1 %110, label %111, label %154, !dbg !723

; <label>:111                                     ; preds = %108
  %112 = load i32, i32* @s, align 4, !dbg !724
  %113 = load i32, i32* @SKIP2, align 4, !dbg !727
  %114 = icmp ne i32 %112, %113, !dbg !728
  br i1 %114, label %115, label %127, !dbg !729

; <label>:115                                     ; preds = %111
  %116 = load i32, i32* @s, align 4, !dbg !730
  %117 = load i32, i32* @IPC, align 4, !dbg !733
  %118 = icmp ne i32 %116, %117, !dbg !734
  br i1 %118, label %119, label %125, !dbg !735

; <label>:119                                     ; preds = %115
  %120 = load i32, i32* @s, align 4, !dbg !736
  %121 = load i32, i32* @DC, align 4, !dbg !739
  %122 = icmp eq i32 %120, %121, !dbg !740
  br i1 %122, label %123, label %124, !dbg !741

; <label>:123                                     ; preds = %119
  br label %128, !dbg !742

; <label>:124                                     ; preds = %119
  br label %126, !dbg !744

; <label>:125                                     ; preds = %115
  br label %128, !dbg !745

; <label>:126                                     ; preds = %124
  br label %153, !dbg !747

; <label>:127                                     ; preds = %111
  br label %128, !dbg !748

; <label>:128                                     ; preds = %127, %125, %123
  %129 = load i32, i32* @pended, align 4, !dbg !749
  %130 = icmp eq i32 %129, 1, !dbg !752
  br i1 %130, label %131, label %136, !dbg !753

; <label>:131                                     ; preds = %128
  %132 = load i32, i32* %status, align 4, !dbg !754
  %133 = icmp ne i32 %132, 259, !dbg !757
  br i1 %133, label %134, label %135, !dbg !758

; <label>:134                                     ; preds = %131
  call void (...) @__VERIFIER_error() #5, !dbg !759
  unreachable, !dbg !759

errorFn.exit:                                     ; No predecessors!
  br label %135, !dbg !763

; <label>:135                                     ; preds = %errorFn.exit, %131
  br label %152, !dbg !764

; <label>:136                                     ; preds = %128
  %137 = load i32, i32* @s, align 4, !dbg !765
  %138 = load i32, i32* @DC, align 4, !dbg !768
  %139 = icmp eq i32 %137, %138, !dbg !769
  br i1 %139, label %140, label %145, !dbg !770

; <label>:140                                     ; preds = %136
  %141 = load i32, i32* %status, align 4, !dbg !771
  %142 = icmp eq i32 %141, 259, !dbg !774
  br i1 %142, label %143, label %144, !dbg !775

; <label>:143                                     ; preds = %140
  br label %144, !dbg !776

; <label>:144                                     ; preds = %143, %140
  br label %151, !dbg !778

; <label>:145                                     ; preds = %136
  %146 = load i32, i32* %status, align 4, !dbg !779
  %147 = load i32, i32* @lowerDriverReturn, align 4, !dbg !782
  %148 = icmp ne i32 %146, %147, !dbg !783
  br i1 %148, label %149, label %150, !dbg !784

; <label>:149                                     ; preds = %145
  br label %150, !dbg !785

; <label>:150                                     ; preds = %149, %145
  br label %151

; <label>:151                                     ; preds = %150, %144
  br label %152

; <label>:152                                     ; preds = %151, %135
  br label %153

; <label>:153                                     ; preds = %152, %126
  br label %154, !dbg !787

; <label>:154                                     ; preds = %153, %108
  br label %155, !dbg !788

; <label>:155                                     ; preds = %154, %104
  br label %156

; <label>:156                                     ; preds = %155, %102
  br label %157

; <label>:157                                     ; preds = %156, %90
  %158 = load i32, i32* %status, align 4, !dbg !789
  store i32 %158, i32* %1, !dbg !790
  br label %159, !dbg !790

; <label>:159                                     ; preds = %157, %71, %22
  %160 = load i32, i32* %1, !dbg !791
  ret i32 %160, !dbg !791
}

; Function Attrs: nounwind ssp uwtable
define void @stubMoreProcessingRequired() #0 {
  %1 = load i32, i32* @s, align 4, !dbg !792
  %2 = load i32, i32* @NP, align 4, !dbg !795
  %3 = icmp eq i32 %1, %2, !dbg !796
  br i1 %3, label %4, label %6, !dbg !797

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* @MPR1, align 4, !dbg !798
  store i32 %5, i32* @s, align 4, !dbg !800
  br label %7, !dbg !801

; <label>:6                                       ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !802
  unreachable, !dbg !802

errorFn.exit:                                     ; No predecessors!
  br label %7

; <label>:7                                       ; preds = %errorFn.exit, %4
  ret void, !dbg !806
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
  %event.i = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %returnVal2 = alloca i32, align 4
  %compRetStatus = alloca i32, align 4
  %lcontext = alloca i32, align 4
  %__cil_tmp7 = alloca i64, align 8
  %tmp_ndt_6 = alloca i32, align 4
  %tmp_ndt_7 = alloca i32, align 4
  store i32 %DeviceObject, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !807, metadata !91), !dbg !808
  store i32 %Irp, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !809, metadata !91), !dbg !810
  call void @llvm.dbg.declare(metadata i32* %returnVal2, metadata !811, metadata !91), !dbg !812
  call void @llvm.dbg.declare(metadata i32* %compRetStatus, metadata !813, metadata !91), !dbg !814
  call void @llvm.dbg.declare(metadata i32* %lcontext, metadata !815, metadata !91), !dbg !816
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !817
  store i32 %9, i32* %lcontext, align 4, !dbg !816
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp7, metadata !818, metadata !91), !dbg !819
  %10 = load i32, i32* @compRegistered, align 4, !dbg !820
  %11 = icmp ne i32 %10, 0, !dbg !820
  call void @llvm.dbg.declare(metadata i32* %1, metadata !823, metadata !91), !dbg !824
  call void @llvm.dbg.declare(metadata i32* %2, metadata !831, metadata !91), !dbg !832
  call void @llvm.dbg.declare(metadata i32* %3, metadata !833, metadata !91), !dbg !834
  call void @llvm.dbg.declare(metadata i32* %l.i.i, metadata !835, metadata !91), !dbg !836
  call void @llvm.dbg.declare(metadata i32* %4, metadata !837, metadata !91), !dbg !838
  call void @llvm.dbg.declare(metadata i32* %5, metadata !839, metadata !91), !dbg !840
  call void @llvm.dbg.declare(metadata i32* %6, metadata !841, metadata !91), !dbg !842
  call void @llvm.dbg.declare(metadata i32* %event.i, metadata !843, metadata !91), !dbg !844
  br i1 %11, label %12, label %47, !dbg !845

; <label>:12                                      ; preds = %0
  %13 = load i32, i32* %7, align 4, !dbg !846
  %14 = load i32, i32* %8, align 4, !dbg !847
  %15 = load i32, i32* %lcontext, align 4, !dbg !848
  %16 = bitcast i32* %4 to i8*, !dbg !849
  call void @llvm.lifetime.start(i64 4, i8* %16), !dbg !849
  %17 = bitcast i32* %5 to i8*, !dbg !849
  call void @llvm.lifetime.start(i64 4, i8* %17), !dbg !849
  %18 = bitcast i32* %6 to i8*, !dbg !849
  call void @llvm.lifetime.start(i64 4, i8* %18), !dbg !849
  %19 = bitcast i32* %event.i to i8*, !dbg !849
  call void @llvm.lifetime.start(i64 4, i8* %19), !dbg !849
  store i32 %13, i32* %4, align 4, !dbg !849
  store i32 %14, i32* %5, align 4, !dbg !849
  store i32 %15, i32* %6, align 4, !dbg !849
  %20 = load i32, i32* %6, align 4, !dbg !850
  store i32 %20, i32* %event.i, align 4, !dbg !851
  %21 = load i32, i32* %event.i, align 4, !dbg !852
  %22 = bitcast i32* %1 to i8*, !dbg !853
  call void @llvm.lifetime.start(i64 4, i8* %22) #4, !dbg !853
  %23 = bitcast i32* %2 to i8*, !dbg !853
  call void @llvm.lifetime.start(i64 4, i8* %23) #4, !dbg !853
  %24 = bitcast i32* %3 to i8*, !dbg !853
  call void @llvm.lifetime.start(i64 4, i8* %24) #4, !dbg !853
  %25 = bitcast i32* %l.i.i to i8*, !dbg !853
  call void @llvm.lifetime.start(i64 4, i8* %25) #4, !dbg !853
  store i32 %21, i32* %1, align 4, !dbg !853
  store i32 0, i32* %2, align 4, !dbg !853
  store i32 0, i32* %3, align 4, !dbg !853
  %26 = call i32 @__VERIFIER_nondet_int() #4, !dbg !854
  store i32 %26, i32* %l.i.i, align 4, !dbg !836
  store i32 1, i32* @setEventCalled, align 4, !dbg !855
  %27 = load i32, i32* %l.i.i, align 4, !dbg !857
  %28 = bitcast i32* %1 to i8*, !dbg !858
  call void @llvm.lifetime.end(i64 4, i8* %28) #4, !dbg !858
  %29 = bitcast i32* %2 to i8*, !dbg !858
  call void @llvm.lifetime.end(i64 4, i8* %29) #4, !dbg !858
  %30 = bitcast i32* %3 to i8*, !dbg !858
  call void @llvm.lifetime.end(i64 4, i8* %30) #4, !dbg !858
  %31 = bitcast i32* %l.i.i to i8*, !dbg !858
  call void @llvm.lifetime.end(i64 4, i8* %31) #4, !dbg !858
  %32 = bitcast i32* %4 to i8*, !dbg !859
  call void @llvm.lifetime.end(i64 4, i8* %32), !dbg !859
  %33 = bitcast i32* %5 to i8*, !dbg !859
  call void @llvm.lifetime.end(i64 4, i8* %33), !dbg !859
  %34 = bitcast i32* %6 to i8*, !dbg !859
  call void @llvm.lifetime.end(i64 4, i8* %34), !dbg !859
  %35 = bitcast i32* %event.i to i8*, !dbg !859
  call void @llvm.lifetime.end(i64 4, i8* %35), !dbg !859
  store i32 -1073741802, i32* %compRetStatus, align 4, !dbg !860
  %36 = load i32, i32* %compRetStatus, align 4, !dbg !861
  %37 = sext i32 %36 to i64, !dbg !863
  store i64 %37, i64* %__cil_tmp7, align 8, !dbg !864
  %38 = load i64, i64* %__cil_tmp7, align 8, !dbg !865
  %39 = icmp eq i64 %38, -1073741802, !dbg !867
  br i1 %39, label %40, label %46, !dbg !868

; <label>:40                                      ; preds = %12
  %41 = load i32, i32* @s, align 4, !dbg !869
  %42 = load i32, i32* @NP, align 4, !dbg !873
  %43 = icmp eq i32 %41, %42, !dbg !874
  br i1 %43, label %stubMoreProcessingRequired.exit, label %44, !dbg !875

; <label>:44                                      ; preds = %40
  call void (...) @__VERIFIER_error() #5, !dbg !876
  unreachable, !dbg !876

stubMoreProcessingRequired.exit:                  ; preds = %40
  %45 = load i32, i32* @MPR1, align 4, !dbg !878
  store i32 %45, i32* @s, align 4, !dbg !879
  br label %46, !dbg !880

; <label>:46                                      ; preds = %stubMoreProcessingRequired.exit, %12
  br label %47, !dbg !881

; <label>:47                                      ; preds = %46, %0
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_6, metadata !882, metadata !91), !dbg !883
  %48 = call i32 @__VERIFIER_nondet_int(), !dbg !884
  store i32 %48, i32* %tmp_ndt_6, align 4, !dbg !885
  %49 = load i32, i32* %tmp_ndt_6, align 4, !dbg !886
  %50 = icmp eq i32 %49, 0, !dbg !888
  br i1 %50, label %51, label %52, !dbg !889

; <label>:51                                      ; preds = %47
  br label %60, !dbg !890

; <label>:52                                      ; preds = %47
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_7, metadata !892, metadata !91), !dbg !894
  %53 = call i32 @__VERIFIER_nondet_int(), !dbg !895
  store i32 %53, i32* %tmp_ndt_7, align 4, !dbg !896
  %54 = load i32, i32* %tmp_ndt_7, align 4, !dbg !897
  %55 = icmp eq i32 %54, 1, !dbg !899
  br i1 %55, label %56, label %57, !dbg !900

; <label>:56                                      ; preds = %52
  br label %61, !dbg !901

; <label>:57                                      ; preds = %52
  br label %62, !dbg !903
                                                  ; No predecessors!
  br i1 false, label %59, label %63, !dbg !905

; <label>:59                                      ; preds = %58
  br label %60, !dbg !906

; <label>:60                                      ; preds = %59, %51
  store i32 0, i32* %returnVal2, align 4, !dbg !908
  br label %64, !dbg !910

; <label>:61                                      ; preds = %56
  store i32 -1073741823, i32* %returnVal2, align 4, !dbg !911
  br label %64, !dbg !912

; <label>:62                                      ; preds = %57
  store i32 259, i32* %returnVal2, align 4, !dbg !913
  br label %64, !dbg !914

; <label>:63                                      ; preds = %58
  br label %64, !dbg !915

; <label>:64                                      ; preds = %63, %62, %61, %60
  br label %65

; <label>:65                                      ; preds = %64
  br label %66

; <label>:66                                      ; preds = %65
  br label %67

; <label>:67                                      ; preds = %66
  %68 = load i32, i32* @s, align 4, !dbg !916
  %69 = load i32, i32* @NP, align 4, !dbg !918
  %70 = icmp eq i32 %68, %69, !dbg !919
  br i1 %70, label %71, label %74, !dbg !920

; <label>:71                                      ; preds = %67
  %72 = load i32, i32* @IPC, align 4, !dbg !921
  store i32 %72, i32* @s, align 4, !dbg !923
  %73 = load i32, i32* %returnVal2, align 4, !dbg !924
  store i32 %73, i32* @lowerDriverReturn, align 4, !dbg !925
  br label %98, !dbg !926

; <label>:74                                      ; preds = %67
  %75 = load i32, i32* @s, align 4, !dbg !927
  %76 = load i32, i32* @MPR1, align 4, !dbg !930
  %77 = icmp eq i32 %75, %76, !dbg !931
  br i1 %77, label %78, label %88, !dbg !932

; <label>:78                                      ; preds = %74
  %79 = load i32, i32* %returnVal2, align 4, !dbg !933
  %80 = icmp eq i32 %79, 259, !dbg !936
  br i1 %80, label %81, label %84, !dbg !937

; <label>:81                                      ; preds = %78
  %82 = load i32, i32* @MPR3, align 4, !dbg !938
  store i32 %82, i32* @s, align 4, !dbg !940
  %83 = load i32, i32* %returnVal2, align 4, !dbg !941
  store i32 %83, i32* @lowerDriverReturn, align 4, !dbg !942
  br label %87, !dbg !943

; <label>:84                                      ; preds = %78
  %85 = load i32, i32* @NP, align 4, !dbg !944
  store i32 %85, i32* @s, align 4, !dbg !946
  %86 = load i32, i32* %returnVal2, align 4, !dbg !947
  store i32 %86, i32* @lowerDriverReturn, align 4, !dbg !948
  br label %87

; <label>:87                                      ; preds = %84, %81
  br label %97, !dbg !949

; <label>:88                                      ; preds = %74
  %89 = load i32, i32* @s, align 4, !dbg !950
  %90 = load i32, i32* @SKIP1, align 4, !dbg !953
  %91 = icmp eq i32 %89, %90, !dbg !954
  br i1 %91, label %92, label %95, !dbg !955

; <label>:92                                      ; preds = %88
  %93 = load i32, i32* @SKIP2, align 4, !dbg !956
  store i32 %93, i32* @s, align 4, !dbg !958
  %94 = load i32, i32* %returnVal2, align 4, !dbg !959
  store i32 %94, i32* @lowerDriverReturn, align 4, !dbg !960
  br label %96, !dbg !961

; <label>:95                                      ; preds = %88
  call void (...) @__VERIFIER_error() #5, !dbg !962
  unreachable, !dbg !962

errorFn.exit:                                     ; No predecessors!
  br label %96

; <label>:96                                      ; preds = %errorFn.exit, %92
  br label %97

; <label>:97                                      ; preds = %96, %87
  br label %98

; <label>:98                                      ; preds = %97, %71
  %99 = load i32, i32* %returnVal2, align 4, !dbg !966
  ret i32 %99, !dbg !967
}

; Function Attrs: nounwind ssp uwtable
define i32 @KeSetEvent(i32 %Event, i32 %Increment, i32 %Wait) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 %Event, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !823, metadata !91), !dbg !968
  store i32 %Increment, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !831, metadata !91), !dbg !969
  store i32 %Wait, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !833, metadata !91), !dbg !970
  call void @llvm.dbg.declare(metadata i32* %l, metadata !835, metadata !91), !dbg !971
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !972
  store i32 %4, i32* %l, align 4, !dbg !971
  store i32 1, i32* @setEventCalled, align 4, !dbg !973
  %5 = load i32, i32* %l, align 4, !dbg !974
  ret i32 %5, !dbg !975
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !976, metadata !91), !dbg !977
  store i32 %WaitReason, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !978, metadata !91), !dbg !979
  store i32 %WaitMode, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !980, metadata !91), !dbg !981
  store i32 %Alertable, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !982, metadata !91), !dbg !983
  store i32 %Timeout, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !984, metadata !91), !dbg !985
  %7 = load i32, i32* @s, align 4, !dbg !986
  %8 = load i32, i32* @MPR3, align 4, !dbg !989
  %9 = icmp eq i32 %7, %8, !dbg !990
  br i1 %9, label %10, label %17, !dbg !991

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* @setEventCalled, align 4, !dbg !992
  %12 = icmp eq i32 %11, 1, !dbg !995
  br i1 %12, label %13, label %15, !dbg !996

; <label>:13                                      ; preds = %10
  %14 = load i32, i32* @NP, align 4, !dbg !997
  store i32 %14, i32* @s, align 4, !dbg !999
  store i32 0, i32* @setEventCalled, align 4, !dbg !1000
  br label %16, !dbg !1001

; <label>:15                                      ; preds = %10
  br label %18, !dbg !1002

; <label>:16                                      ; preds = %13
  br label %30, !dbg !1004

; <label>:17                                      ; preds = %0
  br label %18, !dbg !1005

; <label>:18                                      ; preds = %17, %15
  %19 = load i32, i32* @customIrp, align 4, !dbg !1006
  %20 = icmp eq i32 %19, 1, !dbg !1009
  br i1 %20, label %21, label %23, !dbg !1010

; <label>:21                                      ; preds = %18
  %22 = load i32, i32* @NP, align 4, !dbg !1011
  store i32 %22, i32* @s, align 4, !dbg !1013
  store i32 0, i32* @customIrp, align 4, !dbg !1014
  br label %29, !dbg !1015

; <label>:23                                      ; preds = %18
  %24 = load i32, i32* @s, align 4, !dbg !1016
  %25 = load i32, i32* @MPR3, align 4, !dbg !1019
  %26 = icmp eq i32 %24, %25, !dbg !1020
  br i1 %26, label %27, label %28, !dbg !1021

; <label>:27                                      ; preds = %23
  call void (...) @__VERIFIER_error() #5, !dbg !1022
  unreachable, !dbg !1022

errorFn.exit:                                     ; No predecessors!
  br label %28, !dbg !1026

; <label>:28                                      ; preds = %errorFn.exit, %23
  br label %29

; <label>:29                                      ; preds = %28, %21
  br label %30

; <label>:30                                      ; preds = %29, %16
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_8, metadata !1027, metadata !91), !dbg !1028
  %31 = call i32 @__VERIFIER_nondet_int(), !dbg !1029
  store i32 %31, i32* %tmp_ndt_8, align 4, !dbg !1030
  %32 = load i32, i32* %tmp_ndt_8, align 4, !dbg !1031
  %33 = icmp eq i32 %32, 0, !dbg !1033
  br i1 %33, label %34, label %35, !dbg !1034

; <label>:34                                      ; preds = %30
  br label %38, !dbg !1035

; <label>:35                                      ; preds = %30
  br label %39, !dbg !1037
                                                  ; No predecessors!
  br i1 false, label %37, label %40, !dbg !1039

; <label>:37                                      ; preds = %36
  br label %38, !dbg !1040

; <label>:38                                      ; preds = %37, %34
  store i32 0, i32* %1, !dbg !1042
  br label %42, !dbg !1042

; <label>:39                                      ; preds = %35
  store i32 -1073741823, i32* %1, !dbg !1044
  br label %42, !dbg !1044

; <label>:40                                      ; preds = %36
  br label %41

; <label>:41                                      ; preds = %40
  br label %42

; <label>:42                                      ; preds = %41, %39, %38
  %43 = load i32, i32* %1, !dbg !1045
  ret i32 %43, !dbg !1045
}

; Function Attrs: nounwind ssp uwtable
define i32 @KbFilter_Complete(i32 %DeviceObject, i32 %Irp, i32 %Context) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %l.i = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %event = alloca i32, align 4
  store i32 %DeviceObject, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !837, metadata !91), !dbg !1046
  store i32 %Irp, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !839, metadata !91), !dbg !1047
  store i32 %Context, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !841, metadata !91), !dbg !1048
  call void @llvm.dbg.declare(metadata i32* %event, metadata !843, metadata !91), !dbg !1049
  %7 = load i32, i32* %6, align 4, !dbg !1050
  store i32 %7, i32* %event, align 4, !dbg !1051
  %8 = load i32, i32* %event, align 4, !dbg !1052
  %9 = bitcast i32* %1 to i8*, !dbg !1053
  call void @llvm.lifetime.start(i64 4, i8* %9), !dbg !1053
  %10 = bitcast i32* %2 to i8*, !dbg !1053
  call void @llvm.lifetime.start(i64 4, i8* %10), !dbg !1053
  %11 = bitcast i32* %3 to i8*, !dbg !1053
  call void @llvm.lifetime.start(i64 4, i8* %11), !dbg !1053
  %12 = bitcast i32* %l.i to i8*, !dbg !1053
  call void @llvm.lifetime.start(i64 4, i8* %12), !dbg !1053
  store i32 %8, i32* %1, align 4, !dbg !1053
  store i32 0, i32* %2, align 4, !dbg !1053
  store i32 0, i32* %3, align 4, !dbg !1053
  %13 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1054
  store i32 %13, i32* %l.i, align 4, !dbg !1056
  store i32 1, i32* @setEventCalled, align 4, !dbg !1057
  %14 = load i32, i32* %l.i, align 4, !dbg !1058
  %15 = bitcast i32* %1 to i8*, !dbg !1059
  call void @llvm.lifetime.end(i64 4, i8* %15), !dbg !1059
  %16 = bitcast i32* %2 to i8*, !dbg !1059
  call void @llvm.lifetime.end(i64 4, i8* %16), !dbg !1059
  %17 = bitcast i32* %3 to i8*, !dbg !1059
  call void @llvm.lifetime.end(i64 4, i8* %17), !dbg !1059
  %18 = bitcast i32* %l.i to i8*, !dbg !1059
  call void @llvm.lifetime.end(i64 4, i8* %18), !dbg !1059
  call void @llvm.dbg.declare(metadata i32* %1, metadata !823, metadata !91), !dbg !1060
  call void @llvm.dbg.declare(metadata i32* %2, metadata !831, metadata !91), !dbg !1061
  call void @llvm.dbg.declare(metadata i32* %3, metadata !833, metadata !91), !dbg !1062
  call void @llvm.dbg.declare(metadata i32* %l.i, metadata !835, metadata !91), !dbg !1056
  ret i32 -1073741802, !dbg !1063
}

; Function Attrs: nounwind ssp uwtable
define i32 @KbFilter_CreateClose(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %irpStack__MajorFunction = alloca i32, align 4
  %devExt__UpperConnectData__ClassService = alloca i32, align 4
  %Irp__IoStatus__Status = alloca i32, align 4
  %status = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %DeviceObject, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1064, metadata !91), !dbg !1065
  store i32 %Irp, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1066, metadata !91), !dbg !1067
  call void @llvm.dbg.declare(metadata i32* %irpStack__MajorFunction, metadata !1068, metadata !91), !dbg !1069
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !1070
  store i32 %3, i32* %irpStack__MajorFunction, align 4, !dbg !1069
  call void @llvm.dbg.declare(metadata i32* %devExt__UpperConnectData__ClassService, metadata !1071, metadata !91), !dbg !1072
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !1073
  store i32 %4, i32* %devExt__UpperConnectData__ClassService, align 4, !dbg !1072
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !1074, metadata !91), !dbg !1075
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1076, metadata !91), !dbg !1077
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !1078, metadata !91), !dbg !1079
  %5 = load i32, i32* @myStatus, align 4, !dbg !1080
  store i32 %5, i32* %status, align 4, !dbg !1082
  %6 = load i32, i32* %irpStack__MajorFunction, align 4, !dbg !1083
  %7 = icmp eq i32 %6, 0, !dbg !1085
  br i1 %7, label %8, label %9, !dbg !1086

; <label>:8                                       ; preds = %0
  br label %15, !dbg !1087

; <label>:9                                       ; preds = %0
  %10 = load i32, i32* %irpStack__MajorFunction, align 4, !dbg !1089
  %11 = icmp eq i32 %10, 2, !dbg !1092
  br i1 %11, label %12, label %13, !dbg !1093

; <label>:12                                      ; preds = %9
  br label %20, !dbg !1094

; <label>:13                                      ; preds = %9
  br i1 false, label %14, label %21, !dbg !1096

; <label>:14                                      ; preds = %13
  br label %15, !dbg !1098

; <label>:15                                      ; preds = %14, %8
  %16 = load i32, i32* %devExt__UpperConnectData__ClassService, align 4, !dbg !1100
  %17 = icmp eq i32 %16, 0, !dbg !1103
  br i1 %17, label %18, label %19, !dbg !1104

; <label>:18                                      ; preds = %15
  store i32 -1073741436, i32* %status, align 4, !dbg !1105
  br label %19, !dbg !1107

; <label>:19                                      ; preds = %18, %15
  br label %22, !dbg !1108

; <label>:20                                      ; preds = %12
  br label %22, !dbg !1109

; <label>:21                                      ; preds = %13
  br label %22, !dbg !1110

; <label>:22                                      ; preds = %21, %20, %19
  br label %23

; <label>:23                                      ; preds = %22
  br label %24

; <label>:24                                      ; preds = %23
  br label %25

; <label>:25                                      ; preds = %24
  %26 = load i32, i32* %status, align 4, !dbg !1111
  store i32 %26, i32* %Irp__IoStatus__Status, align 4, !dbg !1113
  %27 = load i32, i32* %status, align 4, !dbg !1114
  store i32 %27, i32* @myStatus, align 4, !dbg !1115
  %28 = load i32, i32* %1, align 4, !dbg !1116
  %29 = load i32, i32* %2, align 4, !dbg !1117
  %30 = call i32 @KbFilter_DispatchPassThrough(i32 %28, i32 %29), !dbg !1118
  store i32 %30, i32* %tmp, align 4, !dbg !1119
  %31 = load i32, i32* %tmp, align 4, !dbg !1120
  ret i32 %31, !dbg !1121
}

; Function Attrs: nounwind ssp uwtable
define i32 @KbFilter_DispatchPassThrough(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %Irp__Tail__Overlay__CurrentStackLocation = alloca i32, align 4
  %Irp__CurrentLocation = alloca i32, align 4
  %DeviceObject__DeviceExtension__TopOfStack = alloca i32, align 4
  %irpStack = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %DeviceObject, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1122, metadata !91), !dbg !1123
  store i32 %Irp, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1124, metadata !91), !dbg !1125
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !1126, metadata !91), !dbg !1127
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !1128
  store i32 %3, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1127
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !1129, metadata !91), !dbg !1130
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !1131
  store i32 %4, i32* %Irp__CurrentLocation, align 4, !dbg !1130
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension__TopOfStack, metadata !1132, metadata !91), !dbg !1133
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !1134
  store i32 %5, i32* %DeviceObject__DeviceExtension__TopOfStack, align 4, !dbg !1133
  call void @llvm.dbg.declare(metadata i32* %irpStack, metadata !1135, metadata !91), !dbg !1136
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !1137, metadata !91), !dbg !1138
  %6 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1139
  store i32 %6, i32* %irpStack, align 4, !dbg !1141
  %7 = load i32, i32* @s, align 4, !dbg !1142
  %8 = load i32, i32* @NP, align 4, !dbg !1144
  %9 = icmp eq i32 %7, %8, !dbg !1145
  br i1 %9, label %10, label %12, !dbg !1146

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* @SKIP1, align 4, !dbg !1147
  store i32 %11, i32* @s, align 4, !dbg !1149
  br label %13, !dbg !1150

; <label>:12                                      ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !1151
  unreachable, !dbg !1151

errorFn.exit:                                     ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %errorFn.exit, %10
  %14 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !1155
  %15 = add nsw i32 %14, 1, !dbg !1155
  store i32 %15, i32* %Irp__CurrentLocation, align 4, !dbg !1155
  %16 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1157
  %17 = add nsw i32 %16, 1, !dbg !1157
  store i32 %17, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1157
  %18 = load i32, i32* %DeviceObject__DeviceExtension__TopOfStack, align 4, !dbg !1158
  %19 = load i32, i32* %2, align 4, !dbg !1159
  %20 = call i32 @IofCallDriver(i32 %18, i32 %19), !dbg !1160
  store i32 %20, i32* %tmp, align 4, !dbg !1161
  %21 = load i32, i32* %tmp, align 4, !dbg !1162
  ret i32 %21, !dbg !1163
}

; Function Attrs: nounwind ssp uwtable
define i32 @KbFilter_Power(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %irpStack__MinorFunction = alloca i32, align 4
  %devExt__DeviceState = alloca i32, align 4
  %powerState__DeviceState = alloca i32, align 4
  %Irp__CurrentLocation = alloca i32, align 4
  %Irp__Tail__Overlay__CurrentStackLocation = alloca i32, align 4
  %devExt__TopOfStack = alloca i32, align 4
  %powerType = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %DeviceObject, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1164, metadata !91), !dbg !1165
  store i32 %Irp, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1166, metadata !91), !dbg !1167
  call void @llvm.dbg.declare(metadata i32* %irpStack__MinorFunction, metadata !1168, metadata !91), !dbg !1169
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !1170
  store i32 %3, i32* %irpStack__MinorFunction, align 4, !dbg !1169
  call void @llvm.dbg.declare(metadata i32* %devExt__DeviceState, metadata !1171, metadata !91), !dbg !1172
  call void @llvm.dbg.declare(metadata i32* %powerState__DeviceState, metadata !1173, metadata !91), !dbg !1174
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !1175
  store i32 %4, i32* %powerState__DeviceState, align 4, !dbg !1174
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !1176, metadata !91), !dbg !1177
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !1178
  store i32 %5, i32* %Irp__CurrentLocation, align 4, !dbg !1177
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !1179, metadata !91), !dbg !1180
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !1181
  store i32 %6, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1180
  call void @llvm.dbg.declare(metadata i32* %devExt__TopOfStack, metadata !1182, metadata !91), !dbg !1183
  %7 = call i32 @__VERIFIER_nondet_int(), !dbg !1184
  store i32 %7, i32* %devExt__TopOfStack, align 4, !dbg !1183
  call void @llvm.dbg.declare(metadata i32* %powerType, metadata !1185, metadata !91), !dbg !1186
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !1187
  store i32 %8, i32* %powerType, align 4, !dbg !1186
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !1188, metadata !91), !dbg !1189
  %9 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !1190
  %10 = icmp eq i32 %9, 2, !dbg !1193
  br i1 %10, label %11, label %12, !dbg !1194

; <label>:11                                      ; preds = %0
  br label %27, !dbg !1195

; <label>:12                                      ; preds = %0
  %13 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !1197
  %14 = icmp eq i32 %13, 1, !dbg !1200
  br i1 %14, label %15, label %16, !dbg !1201

; <label>:15                                      ; preds = %12
  br label %34, !dbg !1202

; <label>:16                                      ; preds = %12
  %17 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !1204
  %18 = icmp eq i32 %17, 0, !dbg !1207
  br i1 %18, label %19, label %20, !dbg !1208

; <label>:19                                      ; preds = %16
  br label %35, !dbg !1209

; <label>:20                                      ; preds = %16
  %21 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !1211
  %22 = icmp eq i32 %21, 3, !dbg !1214
  br i1 %22, label %23, label %24, !dbg !1215

; <label>:23                                      ; preds = %20
  br label %36, !dbg !1216

; <label>:24                                      ; preds = %20
  br label %37, !dbg !1218
                                                  ; No predecessors!
  br i1 false, label %26, label %38, !dbg !1220

; <label>:26                                      ; preds = %25
  br label %27, !dbg !1221

; <label>:27                                      ; preds = %26, %11
  %28 = load i32, i32* %powerType, align 4, !dbg !1223
  %29 = load i32, i32* @DevicePowerState, align 4, !dbg !1226
  %30 = icmp eq i32 %28, %29, !dbg !1227
  br i1 %30, label %31, label %33, !dbg !1228

; <label>:31                                      ; preds = %27
  %32 = load i32, i32* %powerState__DeviceState, align 4, !dbg !1229
  store i32 %32, i32* %devExt__DeviceState, align 4, !dbg !1231
  br label %33, !dbg !1232

; <label>:33                                      ; preds = %31, %27
  br label %34, !dbg !1226

; <label>:34                                      ; preds = %33, %15
  br label %35, !dbg !1226

; <label>:35                                      ; preds = %34, %19
  br label %36, !dbg !1226

; <label>:36                                      ; preds = %35, %23
  br label %37, !dbg !1226

; <label>:37                                      ; preds = %36, %24
  br label %39, !dbg !1233

; <label>:38                                      ; preds = %25
  br label %39, !dbg !1234

; <label>:39                                      ; preds = %38, %37
  br label %40

; <label>:40                                      ; preds = %39
  br label %41

; <label>:41                                      ; preds = %40
  br label %42

; <label>:42                                      ; preds = %41
  br label %43

; <label>:43                                      ; preds = %42
  br label %44

; <label>:44                                      ; preds = %43
  %45 = load i32, i32* @s, align 4, !dbg !1235
  %46 = load i32, i32* @NP, align 4, !dbg !1237
  %47 = icmp eq i32 %45, %46, !dbg !1238
  br i1 %47, label %48, label %50, !dbg !1239

; <label>:48                                      ; preds = %44
  %49 = load i32, i32* @SKIP1, align 4, !dbg !1240
  store i32 %49, i32* @s, align 4, !dbg !1242
  br label %51, !dbg !1243

; <label>:50                                      ; preds = %44
  call void (...) @__VERIFIER_error() #5, !dbg !1244
  unreachable, !dbg !1244

errorFn.exit:                                     ; No predecessors!
  br label %51

; <label>:51                                      ; preds = %errorFn.exit, %48
  %52 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !1248
  %53 = add nsw i32 %52, 1, !dbg !1248
  store i32 %53, i32* %Irp__CurrentLocation, align 4, !dbg !1248
  %54 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1250
  %55 = add nsw i32 %54, 1, !dbg !1250
  store i32 %55, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1250
  %56 = load i32, i32* %devExt__TopOfStack, align 4, !dbg !1251
  %57 = load i32, i32* %2, align 4, !dbg !1252
  %58 = call i32 @PoCallDriver(i32 %56, i32 %57), !dbg !1253
  store i32 %58, i32* %tmp, align 4, !dbg !1254
  %59 = load i32, i32* %tmp, align 4, !dbg !1255
  ret i32 %59, !dbg !1256
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
  %event.i = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %compRetStatus = alloca i32, align 4
  %returnVal = alloca i32, align 4
  %lcontext = alloca i32, align 4
  %__cil_tmp7 = alloca i64, align 8
  %__cil_tmp8 = alloca i64, align 8
  %tmp_ndt_9 = alloca i32, align 4
  %tmp_ndt_10 = alloca i32, align 4
  store i32 %DeviceObject, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1257, metadata !91), !dbg !1258
  store i32 %Irp, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1259, metadata !91), !dbg !1260
  call void @llvm.dbg.declare(metadata i32* %compRetStatus, metadata !1261, metadata !91), !dbg !1262
  call void @llvm.dbg.declare(metadata i32* %returnVal, metadata !1263, metadata !91), !dbg !1264
  call void @llvm.dbg.declare(metadata i32* %lcontext, metadata !1265, metadata !91), !dbg !1266
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !1267
  store i32 %9, i32* %lcontext, align 4, !dbg !1266
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp7, metadata !1268, metadata !91), !dbg !1269
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp8, metadata !1270, metadata !91), !dbg !1271
  %10 = load i32, i32* @compRegistered, align 4, !dbg !1272
  %11 = icmp ne i32 %10, 0, !dbg !1272
  call void @llvm.dbg.declare(metadata i32* %1, metadata !823, metadata !91), !dbg !1275
  call void @llvm.dbg.declare(metadata i32* %2, metadata !831, metadata !91), !dbg !1280
  call void @llvm.dbg.declare(metadata i32* %3, metadata !833, metadata !91), !dbg !1281
  call void @llvm.dbg.declare(metadata i32* %l.i.i, metadata !835, metadata !91), !dbg !1282
  call void @llvm.dbg.declare(metadata i32* %4, metadata !837, metadata !91), !dbg !1283
  call void @llvm.dbg.declare(metadata i32* %5, metadata !839, metadata !91), !dbg !1284
  call void @llvm.dbg.declare(metadata i32* %6, metadata !841, metadata !91), !dbg !1285
  call void @llvm.dbg.declare(metadata i32* %event.i, metadata !843, metadata !91), !dbg !1286
  br i1 %11, label %12, label %47, !dbg !1287

; <label>:12                                      ; preds = %0
  %13 = load i32, i32* %7, align 4, !dbg !1288
  %14 = load i32, i32* %8, align 4, !dbg !1289
  %15 = load i32, i32* %lcontext, align 4, !dbg !1290
  %16 = bitcast i32* %4 to i8*, !dbg !1291
  call void @llvm.lifetime.start(i64 4, i8* %16), !dbg !1291
  %17 = bitcast i32* %5 to i8*, !dbg !1291
  call void @llvm.lifetime.start(i64 4, i8* %17), !dbg !1291
  %18 = bitcast i32* %6 to i8*, !dbg !1291
  call void @llvm.lifetime.start(i64 4, i8* %18), !dbg !1291
  %19 = bitcast i32* %event.i to i8*, !dbg !1291
  call void @llvm.lifetime.start(i64 4, i8* %19), !dbg !1291
  store i32 %13, i32* %4, align 4, !dbg !1291
  store i32 %14, i32* %5, align 4, !dbg !1291
  store i32 %15, i32* %6, align 4, !dbg !1291
  %20 = load i32, i32* %6, align 4, !dbg !1292
  store i32 %20, i32* %event.i, align 4, !dbg !1293
  %21 = load i32, i32* %event.i, align 4, !dbg !1294
  %22 = bitcast i32* %1 to i8*, !dbg !1295
  call void @llvm.lifetime.start(i64 4, i8* %22) #4, !dbg !1295
  %23 = bitcast i32* %2 to i8*, !dbg !1295
  call void @llvm.lifetime.start(i64 4, i8* %23) #4, !dbg !1295
  %24 = bitcast i32* %3 to i8*, !dbg !1295
  call void @llvm.lifetime.start(i64 4, i8* %24) #4, !dbg !1295
  %25 = bitcast i32* %l.i.i to i8*, !dbg !1295
  call void @llvm.lifetime.start(i64 4, i8* %25) #4, !dbg !1295
  store i32 %21, i32* %1, align 4, !dbg !1295
  store i32 0, i32* %2, align 4, !dbg !1295
  store i32 0, i32* %3, align 4, !dbg !1295
  %26 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1296
  store i32 %26, i32* %l.i.i, align 4, !dbg !1282
  store i32 1, i32* @setEventCalled, align 4, !dbg !1297
  %27 = load i32, i32* %l.i.i, align 4, !dbg !1298
  %28 = bitcast i32* %1 to i8*, !dbg !1299
  call void @llvm.lifetime.end(i64 4, i8* %28) #4, !dbg !1299
  %29 = bitcast i32* %2 to i8*, !dbg !1299
  call void @llvm.lifetime.end(i64 4, i8* %29) #4, !dbg !1299
  %30 = bitcast i32* %3 to i8*, !dbg !1299
  call void @llvm.lifetime.end(i64 4, i8* %30) #4, !dbg !1299
  %31 = bitcast i32* %l.i.i to i8*, !dbg !1299
  call void @llvm.lifetime.end(i64 4, i8* %31) #4, !dbg !1299
  %32 = bitcast i32* %4 to i8*, !dbg !1300
  call void @llvm.lifetime.end(i64 4, i8* %32), !dbg !1300
  %33 = bitcast i32* %5 to i8*, !dbg !1300
  call void @llvm.lifetime.end(i64 4, i8* %33), !dbg !1300
  %34 = bitcast i32* %6 to i8*, !dbg !1300
  call void @llvm.lifetime.end(i64 4, i8* %34), !dbg !1300
  %35 = bitcast i32* %event.i to i8*, !dbg !1300
  call void @llvm.lifetime.end(i64 4, i8* %35), !dbg !1300
  store i32 -1073741802, i32* %compRetStatus, align 4, !dbg !1301
  %36 = load i32, i32* %compRetStatus, align 4, !dbg !1302
  %37 = sext i32 %36 to i64, !dbg !1304
  store i64 %37, i64* %__cil_tmp7, align 8, !dbg !1305
  %38 = load i64, i64* %__cil_tmp7, align 8, !dbg !1306
  %39 = icmp eq i64 %38, -1073741802, !dbg !1308
  br i1 %39, label %40, label %46, !dbg !1309

; <label>:40                                      ; preds = %12
  %41 = load i32, i32* @s, align 4, !dbg !1310
  %42 = load i32, i32* @NP, align 4, !dbg !1314
  %43 = icmp eq i32 %41, %42, !dbg !1315
  br i1 %43, label %stubMoreProcessingRequired.exit, label %44, !dbg !1316

; <label>:44                                      ; preds = %40
  call void (...) @__VERIFIER_error() #5, !dbg !1317
  unreachable, !dbg !1317

stubMoreProcessingRequired.exit:                  ; preds = %40
  %45 = load i32, i32* @MPR1, align 4, !dbg !1319
  store i32 %45, i32* @s, align 4, !dbg !1320
  br label %46, !dbg !1321

; <label>:46                                      ; preds = %stubMoreProcessingRequired.exit, %12
  br label %47, !dbg !1322

; <label>:47                                      ; preds = %46, %0
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_9, metadata !1323, metadata !91), !dbg !1324
  %48 = call i32 @__VERIFIER_nondet_int(), !dbg !1325
  store i32 %48, i32* %tmp_ndt_9, align 4, !dbg !1326
  %49 = load i32, i32* %tmp_ndt_9, align 4, !dbg !1327
  %50 = icmp eq i32 %49, 0, !dbg !1329
  br i1 %50, label %51, label %52, !dbg !1330

; <label>:51                                      ; preds = %47
  br label %60, !dbg !1331

; <label>:52                                      ; preds = %47
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_10, metadata !1333, metadata !91), !dbg !1335
  %53 = call i32 @__VERIFIER_nondet_int(), !dbg !1336
  store i32 %53, i32* %tmp_ndt_10, align 4, !dbg !1337
  %54 = load i32, i32* %tmp_ndt_10, align 4, !dbg !1338
  %55 = icmp eq i32 %54, 1, !dbg !1340
  br i1 %55, label %56, label %57, !dbg !1341

; <label>:56                                      ; preds = %52
  br label %61, !dbg !1342

; <label>:57                                      ; preds = %52
  br label %62, !dbg !1344
                                                  ; No predecessors!
  br i1 false, label %59, label %63, !dbg !1346

; <label>:59                                      ; preds = %58
  br label %60, !dbg !1347

; <label>:60                                      ; preds = %59, %51
  store i32 0, i32* %returnVal, align 4, !dbg !1349
  br label %64, !dbg !1351

; <label>:61                                      ; preds = %56
  store i32 -1073741823, i32* %returnVal, align 4, !dbg !1352
  br label %64, !dbg !1353

; <label>:62                                      ; preds = %57
  store i32 259, i32* %returnVal, align 4, !dbg !1354
  br label %64, !dbg !1355

; <label>:63                                      ; preds = %58
  br label %64, !dbg !1356

; <label>:64                                      ; preds = %63, %62, %61, %60
  br label %65

; <label>:65                                      ; preds = %64
  br label %66

; <label>:66                                      ; preds = %65
  br label %67

; <label>:67                                      ; preds = %66
  %68 = load i32, i32* @s, align 4, !dbg !1357
  %69 = load i32, i32* @NP, align 4, !dbg !1359
  %70 = icmp eq i32 %68, %69, !dbg !1360
  br i1 %70, label %71, label %74, !dbg !1361

; <label>:71                                      ; preds = %67
  %72 = load i32, i32* @IPC, align 4, !dbg !1362
  store i32 %72, i32* @s, align 4, !dbg !1364
  %73 = load i32, i32* %returnVal, align 4, !dbg !1365
  store i32 %73, i32* @lowerDriverReturn, align 4, !dbg !1366
  br label %100, !dbg !1367

; <label>:74                                      ; preds = %67
  %75 = load i32, i32* @s, align 4, !dbg !1368
  %76 = load i32, i32* @MPR1, align 4, !dbg !1371
  %77 = icmp eq i32 %75, %76, !dbg !1372
  br i1 %77, label %78, label %90, !dbg !1373

; <label>:78                                      ; preds = %74
  %79 = load i32, i32* %returnVal, align 4, !dbg !1374
  %80 = sext i32 %79 to i64, !dbg !1377
  store i64 %80, i64* %__cil_tmp8, align 8, !dbg !1378
  %81 = load i64, i64* %__cil_tmp8, align 8, !dbg !1379
  %82 = icmp eq i64 %81, 259, !dbg !1381
  br i1 %82, label %83, label %86, !dbg !1382

; <label>:83                                      ; preds = %78
  %84 = load i32, i32* @MPR3, align 4, !dbg !1383
  store i32 %84, i32* @s, align 4, !dbg !1385
  %85 = load i32, i32* %returnVal, align 4, !dbg !1386
  store i32 %85, i32* @lowerDriverReturn, align 4, !dbg !1387
  br label %89, !dbg !1388

; <label>:86                                      ; preds = %78
  %87 = load i32, i32* @NP, align 4, !dbg !1389
  store i32 %87, i32* @s, align 4, !dbg !1391
  %88 = load i32, i32* %returnVal, align 4, !dbg !1392
  store i32 %88, i32* @lowerDriverReturn, align 4, !dbg !1393
  br label %89

; <label>:89                                      ; preds = %86, %83
  br label %99, !dbg !1394

; <label>:90                                      ; preds = %74
  %91 = load i32, i32* @s, align 4, !dbg !1395
  %92 = load i32, i32* @SKIP1, align 4, !dbg !1398
  %93 = icmp eq i32 %91, %92, !dbg !1399
  br i1 %93, label %94, label %97, !dbg !1400

; <label>:94                                      ; preds = %90
  %95 = load i32, i32* @SKIP2, align 4, !dbg !1401
  store i32 %95, i32* @s, align 4, !dbg !1403
  %96 = load i32, i32* %returnVal, align 4, !dbg !1404
  store i32 %96, i32* @lowerDriverReturn, align 4, !dbg !1405
  br label %98, !dbg !1406

; <label>:97                                      ; preds = %90
  call void (...) @__VERIFIER_error() #5, !dbg !1407
  unreachable, !dbg !1407

errorFn.exit:                                     ; No predecessors!
  br label %98

; <label>:98                                      ; preds = %errorFn.exit, %94
  br label %99

; <label>:99                                      ; preds = %98, %89
  br label %100

; <label>:100                                     ; preds = %99, %71
  %101 = load i32, i32* %returnVal, align 4, !dbg !1411
  ret i32 %101, !dbg !1412
}

; Function Attrs: nounwind ssp uwtable
define i32 @KbFilter_InternIoCtl(i32 %DeviceObject, i32 %Irp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %Irp__IoStatus__Information = alloca i32, align 4
  %irpStack__Parameters__DeviceIoControl__IoControlCode = alloca i32, align 4
  %devExt__UpperConnectData__ClassService = alloca i32, align 4
  %irpStack__Parameters__DeviceIoControl__InputBufferLength = alloca i32, align 4
  %sizeof__CONNECT_DATA = alloca i32, align 4
  %irpStack__Parameters__DeviceIoControl__Type3InputBuffer = alloca i32, align 4
  %sizeof__INTERNAL_I8042_HOOK_KEYBOARD = alloca i32, align 4
  %hookKeyboard__InitializationRoutine = alloca i32, align 4
  %hookKeyboard__IsrRoutine = alloca i32, align 4
  %Irp__IoStatus__Status = alloca i32, align 4
  %hookKeyboard = alloca i32, align 4
  %connectData = alloca i32, align 4
  %status = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__cil_tmp17 = alloca i32, align 4
  %__cil_tmp18 = alloca i32, align 4
  %__cil_tmp19 = alloca i32, align 4
  %__cil_tmp20 = alloca i32, align 4
  %__cil_tmp21 = alloca i32, align 4
  %__cil_tmp22 = alloca i32, align 4
  %__cil_tmp23 = alloca i32, align 4
  %__cil_tmp24 = alloca i32, align 4
  %__cil_tmp25 = alloca i32, align 4
  %__cil_tmp26 = alloca i32, align 4
  %__cil_tmp27 = alloca i32, align 4
  %__cil_tmp28 = alloca i32, align 4
  %__cil_tmp29 = alloca i32, align 4
  %__cil_tmp30 = alloca i32, align 4
  %__cil_tmp31 = alloca i32, align 4
  %__cil_tmp32 = alloca i32, align 4
  %__cil_tmp33 = alloca i32, align 4
  %__cil_tmp34 = alloca i32, align 4
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
  store i32 %DeviceObject, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1413, metadata !91), !dbg !1414
  store i32 %Irp, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1415, metadata !91), !dbg !1416
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !1417, metadata !91), !dbg !1418
  call void @llvm.dbg.declare(metadata i32* %irpStack__Parameters__DeviceIoControl__IoControlCode, metadata !1419, metadata !91), !dbg !1420
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !1421
  store i32 %6, i32* %irpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1420
  call void @llvm.dbg.declare(metadata i32* %devExt__UpperConnectData__ClassService, metadata !1422, metadata !91), !dbg !1423
  %7 = call i32 @__VERIFIER_nondet_int(), !dbg !1424
  store i32 %7, i32* %devExt__UpperConnectData__ClassService, align 4, !dbg !1423
  call void @llvm.dbg.declare(metadata i32* %irpStack__Parameters__DeviceIoControl__InputBufferLength, metadata !1425, metadata !91), !dbg !1426
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !1427
  store i32 %8, i32* %irpStack__Parameters__DeviceIoControl__InputBufferLength, align 4, !dbg !1426
  call void @llvm.dbg.declare(metadata i32* %sizeof__CONNECT_DATA, metadata !1428, metadata !91), !dbg !1429
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !1430
  store i32 %9, i32* %sizeof__CONNECT_DATA, align 4, !dbg !1429
  call void @llvm.dbg.declare(metadata i32* %irpStack__Parameters__DeviceIoControl__Type3InputBuffer, metadata !1431, metadata !91), !dbg !1432
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !1433
  store i32 %10, i32* %irpStack__Parameters__DeviceIoControl__Type3InputBuffer, align 4, !dbg !1432
  call void @llvm.dbg.declare(metadata i32* %sizeof__INTERNAL_I8042_HOOK_KEYBOARD, metadata !1434, metadata !91), !dbg !1435
  %11 = call i32 @__VERIFIER_nondet_int(), !dbg !1436
  store i32 %11, i32* %sizeof__INTERNAL_I8042_HOOK_KEYBOARD, align 4, !dbg !1435
  call void @llvm.dbg.declare(metadata i32* %hookKeyboard__InitializationRoutine, metadata !1437, metadata !91), !dbg !1438
  %12 = call i32 @__VERIFIER_nondet_int(), !dbg !1439
  store i32 %12, i32* %hookKeyboard__InitializationRoutine, align 4, !dbg !1438
  call void @llvm.dbg.declare(metadata i32* %hookKeyboard__IsrRoutine, metadata !1440, metadata !91), !dbg !1441
  %13 = call i32 @__VERIFIER_nondet_int(), !dbg !1442
  store i32 %13, i32* %hookKeyboard__IsrRoutine, align 4, !dbg !1441
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !1443, metadata !91), !dbg !1444
  call void @llvm.dbg.declare(metadata i32* %hookKeyboard, metadata !1445, metadata !91), !dbg !1446
  call void @llvm.dbg.declare(metadata i32* %connectData, metadata !1447, metadata !91), !dbg !1448
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1449, metadata !91), !dbg !1450
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !1451, metadata !91), !dbg !1452
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp17, metadata !1453, metadata !91), !dbg !1454
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp18, metadata !1455, metadata !91), !dbg !1456
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp19, metadata !1457, metadata !91), !dbg !1458
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp20, metadata !1459, metadata !91), !dbg !1460
  %14 = call i32 @__VERIFIER_nondet_int(), !dbg !1461
  store i32 %14, i32* %__cil_tmp20, align 4, !dbg !1460
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp21, metadata !1462, metadata !91), !dbg !1463
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp22, metadata !1464, metadata !91), !dbg !1465
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp23, metadata !1466, metadata !91), !dbg !1467
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp24, metadata !1468, metadata !91), !dbg !1469
  %15 = call i32 @__VERIFIER_nondet_int(), !dbg !1470
  store i32 %15, i32* %__cil_tmp24, align 4, !dbg !1469
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp25, metadata !1471, metadata !91), !dbg !1472
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp26, metadata !1473, metadata !91), !dbg !1474
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp27, metadata !1475, metadata !91), !dbg !1476
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp28, metadata !1477, metadata !91), !dbg !1478
  %16 = call i32 @__VERIFIER_nondet_int(), !dbg !1479
  store i32 %16, i32* %__cil_tmp28, align 4, !dbg !1478
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp29, metadata !1480, metadata !91), !dbg !1481
  %17 = call i32 @__VERIFIER_nondet_int(), !dbg !1482
  store i32 %17, i32* %__cil_tmp29, align 4, !dbg !1481
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp30, metadata !1483, metadata !91), !dbg !1484
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp31, metadata !1485, metadata !91), !dbg !1486
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp32, metadata !1487, metadata !91), !dbg !1488
  %18 = call i32 @__VERIFIER_nondet_int(), !dbg !1489
  store i32 %18, i32* %__cil_tmp32, align 4, !dbg !1488
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp33, metadata !1490, metadata !91), !dbg !1491
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp34, metadata !1492, metadata !91), !dbg !1493
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp35, metadata !1494, metadata !91), !dbg !1495
  %19 = call i32 @__VERIFIER_nondet_int(), !dbg !1496
  store i32 %19, i32* %__cil_tmp35, align 4, !dbg !1495
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp36, metadata !1497, metadata !91), !dbg !1498
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp37, metadata !1499, metadata !91), !dbg !1500
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp38, metadata !1501, metadata !91), !dbg !1502
  %20 = call i32 @__VERIFIER_nondet_int(), !dbg !1503
  store i32 %20, i32* %__cil_tmp38, align 4, !dbg !1502
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp39, metadata !1504, metadata !91), !dbg !1505
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp40, metadata !1506, metadata !91), !dbg !1507
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp41, metadata !1508, metadata !91), !dbg !1509
  %21 = call i32 @__VERIFIER_nondet_int(), !dbg !1510
  store i32 %21, i32* %__cil_tmp41, align 4, !dbg !1509
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp42, metadata !1511, metadata !91), !dbg !1512
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp43, metadata !1513, metadata !91), !dbg !1514
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp44, metadata !1515, metadata !91), !dbg !1516
  %22 = call i32 @__VERIFIER_nondet_int(), !dbg !1517
  store i32 %22, i32* %__cil_tmp44, align 4, !dbg !1516
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp45, metadata !1518, metadata !91), !dbg !1519
  store i32 0, i32* %status, align 4, !dbg !1520
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1522
  %23 = load i32, i32* %irpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1523
  %24 = load i32, i32* %__cil_tmp20, align 4, !dbg !1526
  %25 = icmp eq i32 %23, %24, !dbg !1527
  call void @llvm.dbg.declare(metadata i32* %1, metadata !152, metadata !91), !dbg !1528
  call void @llvm.dbg.declare(metadata i32* %2, metadata !199, metadata !91), !dbg !1534
  br i1 %25, label %26, label %27, !dbg !1535

; <label>:26                                      ; preds = %0
  br label %69, !dbg !1536

; <label>:27                                      ; preds = %0
  %28 = load i32, i32* %irpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1538
  %29 = load i32, i32* %__cil_tmp24, align 4, !dbg !1542
  %30 = icmp eq i32 %28, %29, !dbg !1543
  br i1 %30, label %31, label %32, !dbg !1544

; <label>:31                                      ; preds = %27
  br label %81, !dbg !1545

; <label>:32                                      ; preds = %27
  %33 = load i32, i32* %irpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1547
  %34 = load i32, i32* %__cil_tmp28, align 4, !dbg !1551
  %35 = icmp eq i32 %33, %34, !dbg !1552
  br i1 %35, label %36, label %37, !dbg !1553

; <label>:36                                      ; preds = %32
  br label %82, !dbg !1554

; <label>:37                                      ; preds = %32
  %38 = load i32, i32* %irpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1556
  %39 = load i32, i32* %__cil_tmp29, align 4, !dbg !1560
  %40 = icmp eq i32 %38, %39, !dbg !1561
  br i1 %40, label %41, label %42, !dbg !1562

; <label>:41                                      ; preds = %37
  br label %97, !dbg !1563

; <label>:42                                      ; preds = %37
  %43 = load i32, i32* %irpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1565
  %44 = load i32, i32* %__cil_tmp32, align 4, !dbg !1569
  %45 = icmp eq i32 %43, %44, !dbg !1570
  br i1 %45, label %46, label %47, !dbg !1571

; <label>:46                                      ; preds = %42
  br label %98, !dbg !1572

; <label>:47                                      ; preds = %42
  %48 = load i32, i32* %irpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1574
  %49 = load i32, i32* %__cil_tmp35, align 4, !dbg !1578
  %50 = icmp eq i32 %48, %49, !dbg !1579
  br i1 %50, label %51, label %52, !dbg !1580

; <label>:51                                      ; preds = %47
  br label %99, !dbg !1581

; <label>:52                                      ; preds = %47
  %53 = load i32, i32* %irpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1583
  %54 = load i32, i32* %__cil_tmp38, align 4, !dbg !1587
  %55 = icmp eq i32 %53, %54, !dbg !1588
  br i1 %55, label %56, label %57, !dbg !1589

; <label>:56                                      ; preds = %52
  br label %100, !dbg !1590

; <label>:57                                      ; preds = %52
  %58 = load i32, i32* %irpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1592
  %59 = load i32, i32* %__cil_tmp41, align 4, !dbg !1596
  %60 = icmp eq i32 %58, %59, !dbg !1597
  br i1 %60, label %61, label %62, !dbg !1598

; <label>:61                                      ; preds = %57
  br label %101, !dbg !1599

; <label>:62                                      ; preds = %57
  %63 = load i32, i32* %irpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1601
  %64 = load i32, i32* %__cil_tmp44, align 4, !dbg !1605
  %65 = icmp eq i32 %63, %64, !dbg !1606
  br i1 %65, label %66, label %67, !dbg !1607

; <label>:66                                      ; preds = %62
  br label %102, !dbg !1608

; <label>:67                                      ; preds = %62
  br i1 false, label %68, label %103, !dbg !1610

; <label>:68                                      ; preds = %67
  br label %69, !dbg !1612

; <label>:69                                      ; preds = %68, %26
  %70 = load i32, i32* %devExt__UpperConnectData__ClassService, align 4, !dbg !1614
  %71 = icmp ne i32 %70, 0, !dbg !1617
  br i1 %71, label %72, label %73, !dbg !1618

; <label>:72                                      ; preds = %69
  store i32 -1073741757, i32* %status, align 4, !dbg !1619
  br label %104, !dbg !1621

; <label>:73                                      ; preds = %69
  %74 = load i32, i32* %irpStack__Parameters__DeviceIoControl__InputBufferLength, align 4, !dbg !1622
  %75 = load i32, i32* %sizeof__CONNECT_DATA, align 4, !dbg !1625
  %76 = icmp slt i32 %74, %75, !dbg !1626
  br i1 %76, label %77, label %78, !dbg !1627

; <label>:77                                      ; preds = %73
  store i32 -1073741811, i32* %status, align 4, !dbg !1628
  br label %104, !dbg !1630

; <label>:78                                      ; preds = %73
  br label %79

; <label>:79                                      ; preds = %78
  %80 = load i32, i32* %irpStack__Parameters__DeviceIoControl__Type3InputBuffer, align 4, !dbg !1631
  store i32 %80, i32* %connectData, align 4, !dbg !1632
  br label %104, !dbg !1633

; <label>:81                                      ; preds = %31
  store i32 -1073741822, i32* %status, align 4, !dbg !1634
  br label %104, !dbg !1635

; <label>:82                                      ; preds = %36
  %83 = load i32, i32* %irpStack__Parameters__DeviceIoControl__InputBufferLength, align 4, !dbg !1636
  %84 = load i32, i32* %sizeof__INTERNAL_I8042_HOOK_KEYBOARD, align 4, !dbg !1638
  %85 = icmp slt i32 %83, %84, !dbg !1639
  br i1 %85, label %86, label %87, !dbg !1640

; <label>:86                                      ; preds = %82
  store i32 -1073741811, i32* %status, align 4, !dbg !1641
  br label %104, !dbg !1643

; <label>:87                                      ; preds = %82
  %88 = load i32, i32* %irpStack__Parameters__DeviceIoControl__Type3InputBuffer, align 4, !dbg !1644
  store i32 %88, i32* %hookKeyboard, align 4, !dbg !1645
  %89 = load i32, i32* %hookKeyboard__InitializationRoutine, align 4, !dbg !1646
  %90 = icmp ne i32 %89, 0, !dbg !1646
  br i1 %90, label %91, label %92, !dbg !1648

; <label>:91                                      ; preds = %87
  br label %92, !dbg !1649

; <label>:92                                      ; preds = %91, %87
  %93 = load i32, i32* %hookKeyboard__IsrRoutine, align 4, !dbg !1651
  %94 = icmp ne i32 %93, 0, !dbg !1651
  br i1 %94, label %95, label %96, !dbg !1653

; <label>:95                                      ; preds = %92
  br label %96, !dbg !1654

; <label>:96                                      ; preds = %95, %92
  store i32 0, i32* %status, align 4, !dbg !1656
  br label %104, !dbg !1657

; <label>:97                                      ; preds = %41
  br label %98, !dbg !1657

; <label>:98                                      ; preds = %97, %46
  br label %99, !dbg !1657

; <label>:99                                      ; preds = %98, %51
  br label %100, !dbg !1657

; <label>:100                                     ; preds = %99, %56
  br label %101, !dbg !1657

; <label>:101                                     ; preds = %100, %61
  br label %102, !dbg !1657

; <label>:102                                     ; preds = %101, %66
  br label %104, !dbg !1658

; <label>:103                                     ; preds = %67
  br label %104, !dbg !1659

; <label>:104                                     ; preds = %103, %102, %96, %86, %81, %79, %77, %72
  br label %105

; <label>:105                                     ; preds = %104
  br label %106

; <label>:106                                     ; preds = %105
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
  br label %112

; <label>:112                                     ; preds = %111
  br label %113

; <label>:113                                     ; preds = %112
  br label %114

; <label>:114                                     ; preds = %113
  %115 = load i32, i32* %status, align 4, !dbg !1660
  %116 = icmp slt i32 %115, 0, !dbg !1661
  br i1 %116, label %117, label %131, !dbg !1662

; <label>:117                                     ; preds = %114
  %118 = load i32, i32* %status, align 4, !dbg !1663
  store i32 %118, i32* %Irp__IoStatus__Status, align 4, !dbg !1664
  %119 = load i32, i32* %status, align 4, !dbg !1665
  store i32 %119, i32* @myStatus, align 4, !dbg !1666
  %120 = load i32, i32* %5, align 4, !dbg !1667
  %121 = bitcast i32* %1 to i8*, !dbg !1668
  call void @llvm.lifetime.start(i64 4, i8* %121), !dbg !1668
  %122 = bitcast i32* %2 to i8*, !dbg !1668
  call void @llvm.lifetime.start(i64 4, i8* %122), !dbg !1668
  store i32 %120, i32* %1, align 4, !dbg !1668
  store i32 0, i32* %2, align 4, !dbg !1668
  %123 = load i32, i32* @s, align 4, !dbg !1669
  %124 = load i32, i32* @NP, align 4, !dbg !1670
  %125 = icmp eq i32 %123, %124, !dbg !1671
  br i1 %125, label %IofCompleteRequest.exit, label %126, !dbg !1672

; <label>:126                                     ; preds = %117
  call void (...) @__VERIFIER_error() #5, !dbg !1673
  unreachable, !dbg !1673

IofCompleteRequest.exit:                          ; preds = %117
  %127 = load i32, i32* @DC, align 4, !dbg !1675
  store i32 %127, i32* @s, align 4, !dbg !1676
  %128 = bitcast i32* %1 to i8*, !dbg !1677
  call void @llvm.lifetime.end(i64 4, i8* %128), !dbg !1677
  %129 = bitcast i32* %2 to i8*, !dbg !1677
  call void @llvm.lifetime.end(i64 4, i8* %129), !dbg !1677
  %130 = load i32, i32* %status, align 4, !dbg !1678
  store i32 %130, i32* %3, !dbg !1679
  br label %136, !dbg !1679

; <label>:131                                     ; preds = %114
  %132 = load i32, i32* %4, align 4, !dbg !1680
  %133 = load i32, i32* %5, align 4, !dbg !1682
  %134 = call i32 @KbFilter_DispatchPassThrough(i32 %132, i32 %133), !dbg !1683
  store i32 %134, i32* %tmp, align 4, !dbg !1684
  %135 = load i32, i32* %tmp, align 4, !dbg !1685
  store i32 %135, i32* %3, !dbg !1686
  br label %136, !dbg !1686

; <label>:136                                     ; preds = %131, %IofCompleteRequest.exit
  %137 = load i32, i32* %3, !dbg !1687
  ret i32 %137, !dbg !1687
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
!llvm.module.flags = !{!58, !59, !60}
!llvm.ident = !{!61}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7, globals: !38)
!1 = !DIFile(filename: "../sv-comp-2016/c/ntdrivers-simplified/kbfiltr_simpl2_true-unreach-call_true-termination.cil.c", directory: "/Users/franck/development/perentiemq")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!6 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!7 = !{!8, !11, !13, !17, !20, !21, !22, !25, !28, !31, !32, !33, !34, !35, !36, !37}
!8 = !DISubprogram(name: "stub_driver_init", scope: !1, file: !1, line: 28, type: !9, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stub_driver_init, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{null}
!11 = !DISubprogram(name: "_BLAST_init", scope: !12, file: !12, line: 62, type: !9, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @_BLAST_init, variables: !2)
!12 = !DIFile(filename: "kbfiltr_simpl2.cil.c", directory: "/Users/franck/development/perentiemq")
!13 = !DISubprogram(name: "KbFilter_PnP", scope: !12, file: !12, line: 86, type: !14, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @KbFilter_PnP, variables: !2)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !16, !16}
!16 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!17 = !DISubprogram(name: "main", scope: !12, file: !12, line: 323, type: !18, isLocal: false, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !2)
!18 = !DISubroutineType(types: !19)
!19 = !{!16}
!20 = !DISubprogram(name: "stubMoreProcessingRequired", scope: !12, file: !12, line: 483, type: !9, isLocal: false, isDefinition: true, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stubMoreProcessingRequired, variables: !2)
!21 = !DISubprogram(name: "IofCallDriver", scope: !12, file: !12, line: 497, type: !14, isLocal: false, isDefinition: true, scopeLine: 498, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @IofCallDriver, variables: !2)
!22 = !DISubprogram(name: "IofCompleteRequest", scope: !12, file: !12, line: 568, type: !23, isLocal: false, isDefinition: true, scopeLine: 569, flags: DIFlagPrototyped, isOptimized: false, function: void (i32, i32)* @IofCompleteRequest, variables: !2)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !16, !16}
!25 = !DISubprogram(name: "KeSetEvent", scope: !12, file: !12, line: 582, type: !26, isLocal: false, isDefinition: true, scopeLine: 583, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @KeSetEvent, variables: !2)
!26 = !DISubroutineType(types: !27)
!27 = !{!16, !16, !16, !16}
!28 = !DISubprogram(name: "KeWaitForSingleObject", scope: !12, file: !12, line: 590, type: !29, isLocal: false, isDefinition: true, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32)* @KeWaitForSingleObject, variables: !2)
!29 = !DISubroutineType(types: !30)
!30 = !{!16, !16, !16, !16, !16, !16}
!31 = !DISubprogram(name: "KbFilter_Complete", scope: !12, file: !12, line: 634, type: !26, isLocal: false, isDefinition: true, scopeLine: 635, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @KbFilter_Complete, variables: !2)
!32 = !DISubprogram(name: "KbFilter_CreateClose", scope: !12, file: !12, line: 645, type: !14, isLocal: false, isDefinition: true, scopeLine: 646, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @KbFilter_CreateClose, variables: !2)
!33 = !DISubprogram(name: "KbFilter_DispatchPassThrough", scope: !12, file: !12, line: 683, type: !14, isLocal: false, isDefinition: true, scopeLine: 684, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @KbFilter_DispatchPassThrough, variables: !2)
!34 = !DISubprogram(name: "KbFilter_Power", scope: !12, file: !12, line: 707, type: !14, isLocal: false, isDefinition: true, scopeLine: 708, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @KbFilter_Power, variables: !2)
!35 = !DISubprogram(name: "PoCallDriver", scope: !12, file: !12, line: 767, type: !14, isLocal: false, isDefinition: true, scopeLine: 768, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @PoCallDriver, variables: !2)
!36 = !DISubprogram(name: "KbFilter_InternIoCtl", scope: !12, file: !12, line: 838, type: !14, isLocal: false, isDefinition: true, scopeLine: 839, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @KbFilter_InternIoCtl, variables: !2)
!37 = !DISubprogram(name: "errorFn", scope: !12, file: !12, line: 958, type: !9, isLocal: false, isDefinition: true, scopeLine: 959, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @errorFn, variables: !2)
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!39 = !DIGlobalVariable(name: "KernelMode", scope: !0, file: !1, line: 8, type: !16, isLocal: false, isDefinition: true, variable: i32* @KernelMode)
!40 = !DIGlobalVariable(name: "Executive", scope: !0, file: !1, line: 9, type: !16, isLocal: false, isDefinition: true, variable: i32* @Executive)
!41 = !DIGlobalVariable(name: "DevicePowerState", scope: !0, file: !1, line: 10, type: !16, isLocal: false, isDefinition: true, variable: i32* @DevicePowerState)
!42 = !DIGlobalVariable(name: "s", scope: !0, file: !1, line: 11, type: !16, isLocal: false, isDefinition: true, variable: i32* @s)
!43 = !DIGlobalVariable(name: "UNLOADED", scope: !0, file: !1, line: 12, type: !16, isLocal: false, isDefinition: true, variable: i32* @UNLOADED)
!44 = !DIGlobalVariable(name: "NP", scope: !0, file: !1, line: 13, type: !16, isLocal: false, isDefinition: true, variable: i32* @NP)
!45 = !DIGlobalVariable(name: "DC", scope: !0, file: !1, line: 14, type: !16, isLocal: false, isDefinition: true, variable: i32* @DC)
!46 = !DIGlobalVariable(name: "SKIP1", scope: !0, file: !1, line: 15, type: !16, isLocal: false, isDefinition: true, variable: i32* @SKIP1)
!47 = !DIGlobalVariable(name: "SKIP2", scope: !0, file: !1, line: 16, type: !16, isLocal: false, isDefinition: true, variable: i32* @SKIP2)
!48 = !DIGlobalVariable(name: "MPR1", scope: !0, file: !1, line: 17, type: !16, isLocal: false, isDefinition: true, variable: i32* @MPR1)
!49 = !DIGlobalVariable(name: "MPR3", scope: !0, file: !1, line: 18, type: !16, isLocal: false, isDefinition: true, variable: i32* @MPR3)
!50 = !DIGlobalVariable(name: "IPC", scope: !0, file: !1, line: 19, type: !16, isLocal: false, isDefinition: true, variable: i32* @IPC)
!51 = !DIGlobalVariable(name: "pended", scope: !0, file: !1, line: 20, type: !16, isLocal: false, isDefinition: true, variable: i32* @pended)
!52 = !DIGlobalVariable(name: "compFptr", scope: !0, file: !1, line: 21, type: !16, isLocal: false, isDefinition: true, variable: i32* @compFptr)
!53 = !DIGlobalVariable(name: "compRegistered", scope: !0, file: !1, line: 22, type: !16, isLocal: false, isDefinition: true, variable: i32* @compRegistered)
!54 = !DIGlobalVariable(name: "lowerDriverReturn", scope: !0, file: !1, line: 23, type: !16, isLocal: false, isDefinition: true, variable: i32* @lowerDriverReturn)
!55 = !DIGlobalVariable(name: "setEventCalled", scope: !0, file: !1, line: 24, type: !16, isLocal: false, isDefinition: true, variable: i32* @setEventCalled)
!56 = !DIGlobalVariable(name: "customIrp", scope: !0, file: !1, line: 25, type: !16, isLocal: false, isDefinition: true, variable: i32* @customIrp)
!57 = !DIGlobalVariable(name: "myStatus", scope: !0, file: !1, line: 26, type: !16, isLocal: false, isDefinition: true, variable: i32* @myStatus)
!58 = !{i32 2, !"Dwarf Version", i32 2}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"PIC Level", i32 2}
!61 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!62 = !DILocation(line: 52, column: 7, scope: !63)
!63 = distinct !DILexicalBlock(scope: !8, file: !1, line: 31, column: 3)
!64 = !DILocation(line: 52, column: 5, scope: !63)
!65 = !DILocation(line: 53, column: 10, scope: !63)
!66 = !DILocation(line: 54, column: 12, scope: !63)
!67 = !DILocation(line: 55, column: 18, scope: !63)
!68 = !DILocation(line: 56, column: 21, scope: !63)
!69 = !DILocation(line: 57, column: 18, scope: !63)
!70 = !DILocation(line: 58, column: 13, scope: !63)
!71 = !DILocation(line: 59, column: 3, scope: !63)
!72 = !DILocation(line: 66, column: 12, scope: !73)
!73 = distinct !DILexicalBlock(scope: !11, file: !12, line: 65, column: 3)
!74 = !DILocation(line: 67, column: 6, scope: !73)
!75 = !DILocation(line: 68, column: 6, scope: !73)
!76 = !DILocation(line: 69, column: 9, scope: !73)
!77 = !DILocation(line: 70, column: 9, scope: !73)
!78 = !DILocation(line: 71, column: 8, scope: !73)
!79 = !DILocation(line: 72, column: 8, scope: !73)
!80 = !DILocation(line: 73, column: 7, scope: !73)
!81 = !DILocation(line: 74, column: 7, scope: !73)
!82 = !DILocation(line: 74, column: 5, scope: !73)
!83 = !DILocation(line: 75, column: 10, scope: !73)
!84 = !DILocation(line: 76, column: 12, scope: !73)
!85 = !DILocation(line: 77, column: 18, scope: !73)
!86 = !DILocation(line: 78, column: 21, scope: !73)
!87 = !DILocation(line: 79, column: 18, scope: !73)
!88 = !DILocation(line: 80, column: 13, scope: !73)
!89 = !DILocation(line: 81, column: 3, scope: !73)
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !13, file: !12, line: 86, type: !16)
!91 = !DIExpression()
!92 = !DILocation(line: 86, column: 22, scope: !13)
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !13, file: !12, line: 86, type: !16)
!94 = !DILocation(line: 86, column: 41, scope: !13)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt", scope: !13, file: !12, line: 87, type: !16)
!96 = !DILocation(line: 87, column: 7, scope: !13)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack", scope: !13, file: !12, line: 88, type: !16)
!98 = !DILocation(line: 88, column: 7, scope: !13)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !13, file: !12, line: 89, type: !16)
!100 = !DILocation(line: 89, column: 7, scope: !13)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "event", scope: !13, file: !12, line: 90, type: !16)
!102 = !DILocation(line: 90, column: 7, scope: !13)
!103 = !DILocation(line: 90, column: 15, scope: !13)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !13, file: !12, line: 91, type: !16)
!105 = !DILocation(line: 91, column: 7, scope: !13)
!106 = !DILocation(line: 91, column: 39, scope: !13)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !13, file: !12, line: 92, type: !16)
!108 = !DILocation(line: 92, column: 7, scope: !13)
!109 = !DILocation(line: 92, column: 50, scope: !13)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack__MinorFunction", scope: !13, file: !12, line: 93, type: !16)
!111 = !DILocation(line: 93, column: 7, scope: !13)
!112 = !DILocation(line: 93, column: 33, scope: !13)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt__TopOfStack", scope: !13, file: !12, line: 94, type: !16)
!114 = !DILocation(line: 94, column: 7, scope: !13)
!115 = !DILocation(line: 94, column: 28, scope: !13)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt__Started", scope: !13, file: !12, line: 95, type: !16)
!117 = !DILocation(line: 95, column: 7, scope: !13)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt__Removed", scope: !13, file: !12, line: 96, type: !16)
!119 = !DILocation(line: 96, column: 7, scope: !13)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt__SurpriseRemoved", scope: !13, file: !12, line: 97, type: !16)
!121 = !DILocation(line: 97, column: 7, scope: !13)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !13, file: !12, line: 98, type: !16)
!123 = !DILocation(line: 98, column: 7, scope: !13)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !13, file: !12, line: 99, type: !16)
!125 = !DILocation(line: 99, column: 7, scope: !13)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !13, file: !12, line: 100, type: !16)
!127 = !DILocation(line: 100, column: 7, scope: !13)
!128 = !DILocation(line: 100, column: 30, scope: !13)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp", scope: !13, file: !12, line: 101, type: !16)
!130 = !DILocation(line: 101, column: 7, scope: !13)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp", scope: !13, file: !12, line: 102, type: !16)
!132 = !DILocation(line: 102, column: 7, scope: !13)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp__Control", scope: !13, file: !12, line: 103, type: !16)
!134 = !DILocation(line: 103, column: 7, scope: !13)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___0", scope: !13, file: !12, line: 104, type: !16)
!136 = !DILocation(line: 104, column: 7, scope: !13)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Context", scope: !13, file: !12, line: 105, type: !16)
!138 = !DILocation(line: 105, column: 7, scope: !13)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Control", scope: !13, file: !12, line: 106, type: !16)
!140 = !DILocation(line: 106, column: 7, scope: !13)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp23", scope: !13, file: !12, line: 107, type: !4)
!142 = !DILocation(line: 107, column: 8, scope: !13)
!143 = !DILocation(line: 107, column: 10, scope: !144)
!144 = distinct !DILexicalBlock(scope: !13, file: !12, line: 109, column: 3)
!145 = !DILocation(line: 108, column: 12, scope: !144)
!146 = !DILocation(line: 108, column: 10, scope: !144)
!147 = !DILocation(line: 109, column: 14, scope: !144)
!148 = !DILocation(line: 109, column: 12, scope: !144)
!149 = !DILocation(line: 110, column: 7, scope: !150)
!150 = distinct !DILexicalBlock(scope: !144, file: !12, line: 110, column: 7)
!151 = !DILocation(line: 110, column: 31, scope: !150)
!152 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 1, scope: !22, file: !12, line: 568, type: !16)
!153 = !DILocation(line: 568, column: 29, scope: !22, inlinedAt: !154)
!154 = distinct !DILocation(line: 227, column: 47, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !12, line: 219, column: 47)
!156 = distinct !DILexicalBlock(scope: !157, file: !12, line: 175, column: 52)
!157 = distinct !DILexicalBlock(scope: !158, file: !12, line: 175, column: 49)
!158 = distinct !DILexicalBlock(scope: !159, file: !12, line: 172, column: 50)
!159 = distinct !DILexicalBlock(scope: !160, file: !12, line: 170, column: 47)
!160 = distinct !DILexicalBlock(scope: !161, file: !12, line: 169, column: 48)
!161 = distinct !DILexicalBlock(scope: !162, file: !12, line: 167, column: 45)
!162 = distinct !DILexicalBlock(scope: !163, file: !12, line: 166, column: 46)
!163 = distinct !DILexicalBlock(scope: !164, file: !12, line: 164, column: 43)
!164 = distinct !DILexicalBlock(scope: !165, file: !12, line: 163, column: 44)
!165 = distinct !DILexicalBlock(scope: !166, file: !12, line: 161, column: 41)
!166 = distinct !DILexicalBlock(scope: !167, file: !12, line: 160, column: 42)
!167 = distinct !DILexicalBlock(scope: !168, file: !12, line: 158, column: 39)
!168 = distinct !DILexicalBlock(scope: !169, file: !12, line: 157, column: 40)
!169 = distinct !DILexicalBlock(scope: !170, file: !12, line: 155, column: 37)
!170 = distinct !DILexicalBlock(scope: !171, file: !12, line: 154, column: 38)
!171 = distinct !DILexicalBlock(scope: !172, file: !12, line: 152, column: 35)
!172 = distinct !DILexicalBlock(scope: !173, file: !12, line: 151, column: 36)
!173 = distinct !DILexicalBlock(scope: !174, file: !12, line: 149, column: 33)
!174 = distinct !DILexicalBlock(scope: !175, file: !12, line: 148, column: 34)
!175 = distinct !DILexicalBlock(scope: !176, file: !12, line: 146, column: 31)
!176 = distinct !DILexicalBlock(scope: !177, file: !12, line: 145, column: 32)
!177 = distinct !DILexicalBlock(scope: !178, file: !12, line: 143, column: 29)
!178 = distinct !DILexicalBlock(scope: !179, file: !12, line: 142, column: 30)
!179 = distinct !DILexicalBlock(scope: !180, file: !12, line: 140, column: 27)
!180 = distinct !DILexicalBlock(scope: !181, file: !12, line: 139, column: 28)
!181 = distinct !DILexicalBlock(scope: !182, file: !12, line: 137, column: 25)
!182 = distinct !DILexicalBlock(scope: !183, file: !12, line: 136, column: 26)
!183 = distinct !DILexicalBlock(scope: !184, file: !12, line: 134, column: 23)
!184 = distinct !DILexicalBlock(scope: !185, file: !12, line: 133, column: 24)
!185 = distinct !DILexicalBlock(scope: !186, file: !12, line: 131, column: 21)
!186 = distinct !DILexicalBlock(scope: !187, file: !12, line: 130, column: 22)
!187 = distinct !DILexicalBlock(scope: !188, file: !12, line: 128, column: 19)
!188 = distinct !DILexicalBlock(scope: !189, file: !12, line: 127, column: 20)
!189 = distinct !DILexicalBlock(scope: !190, file: !12, line: 125, column: 17)
!190 = distinct !DILexicalBlock(scope: !191, file: !12, line: 124, column: 18)
!191 = distinct !DILexicalBlock(scope: !192, file: !12, line: 122, column: 15)
!192 = distinct !DILexicalBlock(scope: !193, file: !12, line: 121, column: 16)
!193 = distinct !DILexicalBlock(scope: !194, file: !12, line: 119, column: 13)
!194 = distinct !DILexicalBlock(scope: !195, file: !12, line: 118, column: 14)
!195 = distinct !DILexicalBlock(scope: !196, file: !12, line: 116, column: 11)
!196 = distinct !DILexicalBlock(scope: !197, file: !12, line: 115, column: 12)
!197 = distinct !DILexicalBlock(scope: !198, file: !12, line: 113, column: 9)
!198 = distinct !DILexicalBlock(scope: !150, file: !12, line: 112, column: 10)
!199 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PriorityBoost", arg: 2, scope: !22, file: !12, line: 568, type: !16)
!200 = !DILocation(line: 568, column: 39, scope: !22, inlinedAt: !154)
!201 = !DILocation(line: 110, column: 7, scope: !144)
!202 = !DILocation(line: 111, column: 5, scope: !203)
!203 = distinct !DILexicalBlock(scope: !150, file: !12, line: 110, column: 37)
!204 = !DILocation(line: 113, column: 9, scope: !197)
!205 = !DILocation(line: 113, column: 33, scope: !197)
!206 = !DILocation(line: 113, column: 9, scope: !198)
!207 = !DILocation(line: 114, column: 7, scope: !208)
!208 = distinct !DILexicalBlock(scope: !197, file: !12, line: 113, column: 40)
!209 = !DILocation(line: 116, column: 11, scope: !195)
!210 = !DILocation(line: 116, column: 35, scope: !195)
!211 = !DILocation(line: 116, column: 11, scope: !196)
!212 = !DILocation(line: 117, column: 9, scope: !213)
!213 = distinct !DILexicalBlock(scope: !195, file: !12, line: 116, column: 41)
!214 = !DILocation(line: 119, column: 13, scope: !193)
!215 = !DILocation(line: 119, column: 37, scope: !193)
!216 = !DILocation(line: 119, column: 13, scope: !194)
!217 = !DILocation(line: 120, column: 11, scope: !218)
!218 = distinct !DILexicalBlock(scope: !193, file: !12, line: 119, column: 43)
!219 = !DILocation(line: 122, column: 15, scope: !191)
!220 = !DILocation(line: 122, column: 39, scope: !191)
!221 = !DILocation(line: 122, column: 15, scope: !192)
!222 = !DILocation(line: 123, column: 13, scope: !223)
!223 = distinct !DILexicalBlock(scope: !191, file: !12, line: 122, column: 45)
!224 = !DILocation(line: 125, column: 17, scope: !189)
!225 = !DILocation(line: 125, column: 41, scope: !189)
!226 = !DILocation(line: 125, column: 17, scope: !190)
!227 = !DILocation(line: 126, column: 15, scope: !228)
!228 = distinct !DILexicalBlock(scope: !189, file: !12, line: 125, column: 47)
!229 = !DILocation(line: 128, column: 19, scope: !187)
!230 = !DILocation(line: 128, column: 43, scope: !187)
!231 = !DILocation(line: 128, column: 19, scope: !188)
!232 = !DILocation(line: 129, column: 17, scope: !233)
!233 = distinct !DILexicalBlock(scope: !187, file: !12, line: 128, column: 49)
!234 = !DILocation(line: 131, column: 21, scope: !185)
!235 = !DILocation(line: 131, column: 45, scope: !185)
!236 = !DILocation(line: 131, column: 21, scope: !186)
!237 = !DILocation(line: 132, column: 19, scope: !238)
!238 = distinct !DILexicalBlock(scope: !185, file: !12, line: 131, column: 52)
!239 = !DILocation(line: 134, column: 23, scope: !183)
!240 = !DILocation(line: 134, column: 47, scope: !183)
!241 = !DILocation(line: 134, column: 23, scope: !184)
!242 = !DILocation(line: 135, column: 21, scope: !243)
!243 = distinct !DILexicalBlock(scope: !183, file: !12, line: 134, column: 53)
!244 = !DILocation(line: 137, column: 25, scope: !181)
!245 = !DILocation(line: 137, column: 49, scope: !181)
!246 = !DILocation(line: 137, column: 25, scope: !182)
!247 = !DILocation(line: 138, column: 23, scope: !248)
!248 = distinct !DILexicalBlock(scope: !181, file: !12, line: 137, column: 55)
!249 = !DILocation(line: 140, column: 27, scope: !179)
!250 = !DILocation(line: 140, column: 51, scope: !179)
!251 = !DILocation(line: 140, column: 27, scope: !180)
!252 = !DILocation(line: 141, column: 25, scope: !253)
!253 = distinct !DILexicalBlock(scope: !179, file: !12, line: 140, column: 57)
!254 = !DILocation(line: 143, column: 29, scope: !177)
!255 = !DILocation(line: 143, column: 53, scope: !177)
!256 = !DILocation(line: 143, column: 29, scope: !178)
!257 = !DILocation(line: 144, column: 27, scope: !258)
!258 = distinct !DILexicalBlock(scope: !177, file: !12, line: 143, column: 59)
!259 = !DILocation(line: 146, column: 31, scope: !175)
!260 = !DILocation(line: 146, column: 55, scope: !175)
!261 = !DILocation(line: 146, column: 31, scope: !176)
!262 = !DILocation(line: 147, column: 29, scope: !263)
!263 = distinct !DILexicalBlock(scope: !175, file: !12, line: 146, column: 62)
!264 = !DILocation(line: 149, column: 33, scope: !173)
!265 = !DILocation(line: 149, column: 57, scope: !173)
!266 = !DILocation(line: 149, column: 33, scope: !174)
!267 = !DILocation(line: 150, column: 31, scope: !268)
!268 = distinct !DILexicalBlock(scope: !173, file: !12, line: 149, column: 64)
!269 = !DILocation(line: 152, column: 35, scope: !171)
!270 = !DILocation(line: 152, column: 59, scope: !171)
!271 = !DILocation(line: 152, column: 35, scope: !172)
!272 = !DILocation(line: 153, column: 33, scope: !273)
!273 = distinct !DILexicalBlock(scope: !171, file: !12, line: 152, column: 66)
!274 = !DILocation(line: 155, column: 37, scope: !169)
!275 = !DILocation(line: 155, column: 61, scope: !169)
!276 = !DILocation(line: 155, column: 37, scope: !170)
!277 = !DILocation(line: 156, column: 35, scope: !278)
!278 = distinct !DILexicalBlock(scope: !169, file: !12, line: 155, column: 68)
!279 = !DILocation(line: 158, column: 39, scope: !167)
!280 = !DILocation(line: 158, column: 63, scope: !167)
!281 = !DILocation(line: 158, column: 39, scope: !168)
!282 = !DILocation(line: 159, column: 37, scope: !283)
!283 = distinct !DILexicalBlock(scope: !167, file: !12, line: 158, column: 70)
!284 = !DILocation(line: 161, column: 41, scope: !165)
!285 = !DILocation(line: 161, column: 65, scope: !165)
!286 = !DILocation(line: 161, column: 41, scope: !166)
!287 = !DILocation(line: 162, column: 39, scope: !288)
!288 = distinct !DILexicalBlock(scope: !165, file: !12, line: 161, column: 72)
!289 = !DILocation(line: 164, column: 43, scope: !163)
!290 = !DILocation(line: 164, column: 67, scope: !163)
!291 = !DILocation(line: 164, column: 43, scope: !164)
!292 = !DILocation(line: 165, column: 41, scope: !293)
!293 = distinct !DILexicalBlock(scope: !163, file: !12, line: 164, column: 74)
!294 = !DILocation(line: 167, column: 45, scope: !161)
!295 = !DILocation(line: 167, column: 69, scope: !161)
!296 = !DILocation(line: 167, column: 45, scope: !162)
!297 = !DILocation(line: 168, column: 43, scope: !298)
!298 = distinct !DILexicalBlock(scope: !161, file: !12, line: 167, column: 76)
!299 = !DILocation(line: 170, column: 47, scope: !159)
!300 = !DILocation(line: 170, column: 71, scope: !159)
!301 = !DILocation(line: 170, column: 47, scope: !160)
!302 = !DILocation(line: 171, column: 45, scope: !303)
!303 = distinct !DILexicalBlock(scope: !159, file: !12, line: 170, column: 78)
!304 = !DILocation(line: 173, column: 45, scope: !158)
!305 = !DILocation(line: 175, column: 49, scope: !158)
!306 = !DILocation(line: 175, column: 52, scope: !157)
!307 = !DILocation(line: 177, column: 55, scope: !156)
!308 = !DILocation(line: 177, column: 53, scope: !156)
!309 = !DILocation(line: 178, column: 59, scope: !156)
!310 = !DILocation(line: 178, column: 100, scope: !156)
!311 = !DILocation(line: 178, column: 57, scope: !156)
!312 = !DILocation(line: 179, column: 66, scope: !156)
!313 = !DILocation(line: 180, column: 51, scope: !314)
!314 = distinct !DILexicalBlock(scope: !156, file: !12, line: 180, column: 51)
!315 = !DILocation(line: 180, column: 56, scope: !314)
!316 = !DILocation(line: 180, column: 53, scope: !314)
!317 = !DILocation(line: 180, column: 51, scope: !156)
!318 = !DILocation(line: 962, column: 10, scope: !319, inlinedAt: !320)
!319 = distinct !DILexicalBlock(scope: !37, file: !12, line: 961, column: 3)
!320 = distinct !DILocation(line: 182, column: 49, scope: !321)
!321 = distinct !DILexicalBlock(scope: !322, file: !12, line: 181, column: 49)
!322 = distinct !DILexicalBlock(scope: !314, file: !12, line: 180, column: 60)
!323 = !DILocation(line: 184, column: 47, scope: !322)
!324 = !DILocation(line: 185, column: 53, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !12, line: 185, column: 53)
!326 = distinct !DILexicalBlock(scope: !314, file: !12, line: 184, column: 54)
!327 = !DILocation(line: 185, column: 68, scope: !325)
!328 = !DILocation(line: 185, column: 53, scope: !326)
!329 = !DILocation(line: 962, column: 10, scope: !319, inlinedAt: !330)
!330 = distinct !DILocation(line: 187, column: 51, scope: !331)
!331 = distinct !DILexicalBlock(scope: !332, file: !12, line: 186, column: 51)
!332 = distinct !DILexicalBlock(scope: !325, file: !12, line: 185, column: 74)
!333 = !DILocation(line: 189, column: 49, scope: !332)
!334 = !DILocation(line: 190, column: 66, scope: !335)
!335 = distinct !DILexicalBlock(scope: !325, file: !12, line: 189, column: 56)
!336 = !DILocation(line: 194, column: 59, scope: !337)
!337 = distinct !DILexicalBlock(scope: !156, file: !12, line: 193, column: 47)
!338 = !DILocation(line: 194, column: 100, scope: !337)
!339 = !DILocation(line: 194, column: 57, scope: !337)
!340 = !DILocation(line: 195, column: 64, scope: !337)
!341 = !DILocation(line: 195, column: 62, scope: !337)
!342 = !DILocation(line: 196, column: 62, scope: !337)
!343 = !DILocation(line: 200, column: 70, scope: !337)
!344 = !DILocation(line: 201, column: 70, scope: !337)
!345 = !DILocation(line: 200, column: 56, scope: !337)
!346 = !DILocation(line: 200, column: 54, scope: !337)
!347 = !DILocation(line: 203, column: 68, scope: !348)
!348 = distinct !DILexicalBlock(scope: !156, file: !12, line: 203, column: 47)
!349 = !DILocation(line: 203, column: 61, scope: !348)
!350 = !DILocation(line: 203, column: 59, scope: !348)
!351 = !DILocation(line: 203, column: 51, scope: !352)
!352 = distinct !DILexicalBlock(scope: !348, file: !12, line: 203, column: 51)
!353 = !DILocation(line: 203, column: 63, scope: !352)
!354 = !DILocation(line: 203, column: 51, scope: !348)
!355 = !DILocation(line: 205, column: 71, scope: !356)
!356 = distinct !DILexicalBlock(scope: !357, file: !12, line: 204, column: 49)
!357 = distinct !DILexicalBlock(scope: !352, file: !12, line: 203, column: 71)
!358 = !DILocation(line: 205, column: 78, scope: !356)
!359 = !DILocation(line: 206, column: 71, scope: !356)
!360 = !DILocation(line: 205, column: 49, scope: !356)
!361 = !DILocation(line: 209, column: 47, scope: !357)
!362 = !DILocation(line: 212, column: 51, scope: !363)
!363 = distinct !DILexicalBlock(scope: !156, file: !12, line: 212, column: 51)
!364 = !DILocation(line: 212, column: 58, scope: !363)
!365 = !DILocation(line: 212, column: 51, scope: !156)
!366 = !DILocation(line: 213, column: 53, scope: !367)
!367 = distinct !DILexicalBlock(scope: !368, file: !12, line: 213, column: 53)
!368 = distinct !DILexicalBlock(scope: !363, file: !12, line: 212, column: 64)
!369 = !DILocation(line: 213, column: 62, scope: !367)
!370 = !DILocation(line: 213, column: 53, scope: !368)
!371 = !DILocation(line: 214, column: 67, scope: !372)
!372 = distinct !DILexicalBlock(scope: !367, file: !12, line: 213, column: 68)
!373 = !DILocation(line: 215, column: 67, scope: !372)
!374 = !DILocation(line: 216, column: 75, scope: !372)
!375 = !DILocation(line: 217, column: 49, scope: !372)
!376 = !DILocation(line: 218, column: 47, scope: !368)
!377 = !DILocation(line: 224, column: 71, scope: !155)
!378 = !DILocation(line: 224, column: 69, scope: !155)
!379 = !DILocation(line: 225, column: 58, scope: !155)
!380 = !DILocation(line: 225, column: 56, scope: !155)
!381 = !DILocation(line: 226, column: 74, scope: !155)
!382 = !DILocation(line: 227, column: 66, scope: !155)
!383 = !DILocation(line: 227, column: 47, scope: !155)
!384 = !DILocation(line: 572, column: 7, scope: !385, inlinedAt: !154)
!385 = distinct !DILexicalBlock(scope: !386, file: !12, line: 572, column: 7)
!386 = distinct !DILexicalBlock(scope: !22, file: !12, line: 571, column: 3)
!387 = !DILocation(line: 572, column: 12, scope: !385, inlinedAt: !154)
!388 = !DILocation(line: 572, column: 9, scope: !385, inlinedAt: !154)
!389 = !DILocation(line: 572, column: 7, scope: !386, inlinedAt: !154)
!390 = !DILocation(line: 962, column: 10, scope: !319, inlinedAt: !391)
!391 = distinct !DILocation(line: 576, column: 5, scope: !392, inlinedAt: !154)
!392 = distinct !DILexicalBlock(scope: !393, file: !12, line: 575, column: 5)
!393 = distinct !DILexicalBlock(scope: !385, file: !12, line: 574, column: 10)
!394 = !DILocation(line: 573, column: 9, scope: !395, inlinedAt: !154)
!395 = distinct !DILexicalBlock(scope: !385, file: !12, line: 572, column: 16)
!396 = !DILocation(line: 573, column: 7, scope: !395, inlinedAt: !154)
!397 = !DILocation(line: 579, column: 3, scope: !386, inlinedAt: !154)
!398 = !DILocation(line: 229, column: 47, scope: !156)
!399 = !DILocation(line: 231, column: 71, scope: !156)
!400 = !DILocation(line: 232, column: 51, scope: !401)
!401 = distinct !DILexicalBlock(scope: !156, file: !12, line: 232, column: 51)
!402 = !DILocation(line: 232, column: 56, scope: !401)
!403 = !DILocation(line: 232, column: 53, scope: !401)
!404 = !DILocation(line: 232, column: 51, scope: !156)
!405 = !DILocation(line: 233, column: 53, scope: !406)
!406 = distinct !DILexicalBlock(scope: !401, file: !12, line: 232, column: 60)
!407 = !DILocation(line: 233, column: 51, scope: !406)
!408 = !DILocation(line: 234, column: 47, scope: !406)
!409 = !DILocation(line: 962, column: 10, scope: !319, inlinedAt: !410)
!410 = distinct !DILocation(line: 236, column: 49, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !12, line: 235, column: 49)
!412 = distinct !DILexicalBlock(scope: !401, file: !12, line: 234, column: 54)
!413 = !DILocation(line: 240, column: 68, scope: !414)
!414 = distinct !DILexicalBlock(scope: !156, file: !12, line: 239, column: 47)
!415 = !DILocation(line: 241, column: 88, scope: !414)
!416 = !DILocation(line: 242, column: 70, scope: !414)
!417 = !DILocation(line: 243, column: 70, scope: !414)
!418 = !DILocation(line: 242, column: 56, scope: !414)
!419 = !DILocation(line: 242, column: 54, scope: !414)
!420 = !DILocation(line: 245, column: 47, scope: !156)
!421 = !DILocation(line: 247, column: 63, scope: !156)
!422 = !DILocation(line: 248, column: 51, scope: !423)
!423 = distinct !DILexicalBlock(scope: !156, file: !12, line: 248, column: 51)
!424 = !DILocation(line: 248, column: 56, scope: !423)
!425 = !DILocation(line: 248, column: 53, scope: !423)
!426 = !DILocation(line: 248, column: 51, scope: !156)
!427 = !DILocation(line: 249, column: 53, scope: !428)
!428 = distinct !DILexicalBlock(scope: !423, file: !12, line: 248, column: 60)
!429 = !DILocation(line: 249, column: 51, scope: !428)
!430 = !DILocation(line: 250, column: 47, scope: !428)
!431 = !DILocation(line: 962, column: 10, scope: !319, inlinedAt: !432)
!432 = distinct !DILocation(line: 252, column: 49, scope: !433)
!433 = distinct !DILexicalBlock(scope: !434, file: !12, line: 251, column: 49)
!434 = distinct !DILexicalBlock(scope: !423, file: !12, line: 250, column: 54)
!435 = !DILocation(line: 256, column: 68, scope: !436)
!436 = distinct !DILexicalBlock(scope: !156, file: !12, line: 255, column: 47)
!437 = !DILocation(line: 257, column: 88, scope: !436)
!438 = !DILocation(line: 258, column: 61, scope: !436)
!439 = !DILocation(line: 258, column: 81, scope: !436)
!440 = !DILocation(line: 258, column: 47, scope: !436)
!441 = !DILocation(line: 259, column: 54, scope: !436)
!442 = !DILocation(line: 261, column: 47, scope: !156)
!443 = !DILocation(line: 281, column: 51, scope: !444)
!444 = distinct !DILexicalBlock(scope: !156, file: !12, line: 281, column: 51)
!445 = !DILocation(line: 281, column: 56, scope: !444)
!446 = !DILocation(line: 281, column: 53, scope: !444)
!447 = !DILocation(line: 281, column: 51, scope: !156)
!448 = !DILocation(line: 282, column: 53, scope: !449)
!449 = distinct !DILexicalBlock(scope: !444, file: !12, line: 281, column: 60)
!450 = !DILocation(line: 282, column: 51, scope: !449)
!451 = !DILocation(line: 283, column: 47, scope: !449)
!452 = !DILocation(line: 962, column: 10, scope: !319, inlinedAt: !453)
!453 = distinct !DILocation(line: 285, column: 49, scope: !454)
!454 = distinct !DILexicalBlock(scope: !455, file: !12, line: 284, column: 49)
!455 = distinct !DILexicalBlock(scope: !444, file: !12, line: 283, column: 54)
!456 = !DILocation(line: 289, column: 68, scope: !457)
!457 = distinct !DILexicalBlock(scope: !156, file: !12, line: 288, column: 47)
!458 = !DILocation(line: 290, column: 88, scope: !457)
!459 = !DILocation(line: 291, column: 70, scope: !457)
!460 = !DILocation(line: 292, column: 70, scope: !457)
!461 = !DILocation(line: 291, column: 56, scope: !457)
!462 = !DILocation(line: 291, column: 54, scope: !457)
!463 = !DILocation(line: 294, column: 47, scope: !156)
!464 = !DILocation(line: 295, column: 52, scope: !157)
!465 = !DILocation(line: 320, column: 11, scope: !144)
!466 = !DILocation(line: 320, column: 3, scope: !144)
!467 = !DILocation(line: 961, column: 3, scope: !37)
!468 = !DILocation(line: 962, column: 10, scope: !319)
!469 = !DILocation(line: 31, column: 1, scope: !37)
!470 = !DILocation(line: 568, column: 29, scope: !22)
!471 = !DILocation(line: 568, column: 39, scope: !22)
!472 = !DILocation(line: 572, column: 7, scope: !385)
!473 = !DILocation(line: 572, column: 12, scope: !385)
!474 = !DILocation(line: 572, column: 9, scope: !385)
!475 = !DILocation(line: 572, column: 7, scope: !386)
!476 = !DILocation(line: 573, column: 9, scope: !395)
!477 = !DILocation(line: 573, column: 7, scope: !395)
!478 = !DILocation(line: 574, column: 3, scope: !395)
!479 = !DILocation(line: 962, column: 10, scope: !319, inlinedAt: !480)
!480 = distinct !DILocation(line: 576, column: 5, scope: !392)
!481 = !DILocation(line: 579, column: 3, scope: !386)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !17, file: !12, line: 324, type: !16)
!483 = !DILocation(line: 324, column: 7, scope: !17)
!484 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp", scope: !17, file: !12, line: 325, type: !16)
!485 = !DILocation(line: 325, column: 7, scope: !17)
!486 = !DILocation(line: 325, column: 13, scope: !17)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pirp", scope: !17, file: !12, line: 326, type: !16)
!488 = !DILocation(line: 326, column: 7, scope: !17)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pirp__IoStatus__Status", scope: !17, file: !12, line: 327, type: !16)
!490 = !DILocation(line: 327, column: 7, scope: !17)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp_choice", scope: !17, file: !12, line: 328, type: !16)
!492 = !DILocation(line: 328, column: 7, scope: !17)
!493 = !DILocation(line: 328, column: 20, scope: !17)
!494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devobj", scope: !17, file: !12, line: 329, type: !16)
!495 = !DILocation(line: 329, column: 7, scope: !17)
!496 = !DILocation(line: 329, column: 16, scope: !17)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp8", scope: !17, file: !12, line: 330, type: !16)
!498 = !DILocation(line: 330, column: 7, scope: !17)
!499 = !DILocation(line: 332, column: 14, scope: !17)
!500 = !DILocation(line: 333, column: 13, scope: !17)
!501 = !DILocation(line: 334, column: 20, scope: !17)
!502 = !DILocation(line: 335, column: 5, scope: !17)
!503 = !DILocation(line: 336, column: 12, scope: !17)
!504 = !DILocation(line: 337, column: 6, scope: !17)
!505 = !DILocation(line: 338, column: 6, scope: !17)
!506 = !DILocation(line: 339, column: 9, scope: !17)
!507 = !DILocation(line: 340, column: 8, scope: !17)
!508 = !DILocation(line: 341, column: 8, scope: !17)
!509 = !DILocation(line: 342, column: 8, scope: !17)
!510 = !DILocation(line: 343, column: 7, scope: !17)
!511 = !DILocation(line: 344, column: 10, scope: !17)
!512 = !DILocation(line: 345, column: 12, scope: !17)
!513 = !DILocation(line: 346, column: 18, scope: !17)
!514 = !DILocation(line: 347, column: 21, scope: !17)
!515 = !DILocation(line: 348, column: 18, scope: !17)
!516 = !DILocation(line: 349, column: 13, scope: !17)
!517 = !DILocation(line: 350, column: 12, scope: !17)
!518 = !DILocation(line: 334, column: 10, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !12, line: 353, column: 3)
!520 = distinct !DILexicalBlock(scope: !17, file: !12, line: 352, column: 3)
!521 = !DILocation(line: 335, column: 10, scope: !519)
!522 = !DILocation(line: 335, column: 8, scope: !519)
!523 = !DILocation(line: 66, column: 12, scope: !73, inlinedAt: !524)
!524 = distinct !DILocation(line: 336, column: 3, scope: !519)
!525 = !DILocation(line: 67, column: 6, scope: !73, inlinedAt: !524)
!526 = !DILocation(line: 68, column: 6, scope: !73, inlinedAt: !524)
!527 = !DILocation(line: 69, column: 9, scope: !73, inlinedAt: !524)
!528 = !DILocation(line: 70, column: 9, scope: !73, inlinedAt: !524)
!529 = !DILocation(line: 71, column: 8, scope: !73, inlinedAt: !524)
!530 = !DILocation(line: 72, column: 8, scope: !73, inlinedAt: !524)
!531 = !DILocation(line: 73, column: 7, scope: !73, inlinedAt: !524)
!532 = !DILocation(line: 74, column: 7, scope: !73, inlinedAt: !524)
!533 = !DILocation(line: 74, column: 5, scope: !73, inlinedAt: !524)
!534 = !DILocation(line: 75, column: 10, scope: !73, inlinedAt: !524)
!535 = !DILocation(line: 76, column: 12, scope: !73, inlinedAt: !524)
!536 = !DILocation(line: 77, column: 18, scope: !73, inlinedAt: !524)
!537 = !DILocation(line: 78, column: 21, scope: !73, inlinedAt: !524)
!538 = !DILocation(line: 79, column: 18, scope: !73, inlinedAt: !524)
!539 = !DILocation(line: 80, column: 13, scope: !73, inlinedAt: !524)
!540 = !DILocation(line: 338, column: 7, scope: !541)
!541 = distinct !DILexicalBlock(scope: !520, file: !12, line: 338, column: 7)
!542 = !DILocation(line: 338, column: 14, scope: !541)
!543 = !DILocation(line: 338, column: 7, scope: !520)
!544 = !DILocation(line: 339, column: 9, scope: !545)
!545 = distinct !DILexicalBlock(scope: !541, file: !12, line: 338, column: 20)
!546 = !DILocation(line: 339, column: 7, scope: !545)
!547 = !DILocation(line: 340, column: 15, scope: !545)
!548 = !DILocation(line: 341, column: 22, scope: !545)
!549 = !DILocation(line: 341, column: 20, scope: !545)
!550 = !DILocation(line: 342, column: 25, scope: !545)
!551 = !DILocation(line: 342, column: 23, scope: !545)
!552 = !DILocation(line: 343, column: 22, scope: !545)
!553 = !DILocation(line: 343, column: 20, scope: !545)
!554 = !DILocation(line: 344, column: 14, scope: !545)
!555 = !DILocation(line: 344, column: 12, scope: !545)
!556 = !DILocation(line: 345, column: 28, scope: !545)
!557 = !DILocation(line: 346, column: 14, scope: !545)
!558 = !DILocation(line: 347, column: 9, scope: !559)
!559 = distinct !DILexicalBlock(scope: !545, file: !12, line: 347, column: 9)
!560 = !DILocation(line: 347, column: 20, scope: !559)
!561 = !DILocation(line: 347, column: 9, scope: !545)
!562 = !DILocation(line: 348, column: 30, scope: !563)
!563 = distinct !DILexicalBlock(scope: !559, file: !12, line: 347, column: 26)
!564 = !DILocation(line: 349, column: 16, scope: !563)
!565 = !DILocation(line: 350, column: 5, scope: !563)
!566 = !DILocation(line: 52, column: 7, scope: !63, inlinedAt: !567)
!567 = distinct !DILocation(line: 354, column: 5, scope: !568)
!568 = distinct !DILexicalBlock(scope: !545, file: !12, line: 351, column: 5)
!569 = !DILocation(line: 52, column: 5, scope: !63, inlinedAt: !567)
!570 = !DILocation(line: 53, column: 10, scope: !63, inlinedAt: !567)
!571 = !DILocation(line: 54, column: 12, scope: !63, inlinedAt: !567)
!572 = !DILocation(line: 55, column: 18, scope: !63, inlinedAt: !567)
!573 = !DILocation(line: 56, column: 21, scope: !63, inlinedAt: !567)
!574 = !DILocation(line: 57, column: 18, scope: !63, inlinedAt: !567)
!575 = !DILocation(line: 58, column: 13, scope: !63, inlinedAt: !567)
!576 = !DILocation(line: 356, column: 9, scope: !577)
!577 = distinct !DILexicalBlock(scope: !578, file: !12, line: 356, column: 9)
!578 = distinct !DILexicalBlock(scope: !545, file: !12, line: 356, column: 5)
!579 = !DILocation(line: 356, column: 16, scope: !577)
!580 = !DILocation(line: 356, column: 9, scope: !578)
!581 = !DILocation(line: 357, column: 7, scope: !582)
!582 = distinct !DILexicalBlock(scope: !577, file: !12, line: 356, column: 21)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_1", scope: !545, file: !12, line: 361, type: !16)
!584 = !DILocation(line: 361, column: 9, scope: !545)
!585 = !DILocation(line: 362, column: 17, scope: !545)
!586 = !DILocation(line: 362, column: 15, scope: !545)
!587 = !DILocation(line: 363, column: 9, scope: !588)
!588 = distinct !DILexicalBlock(scope: !545, file: !12, line: 363, column: 9)
!589 = !DILocation(line: 363, column: 19, scope: !588)
!590 = !DILocation(line: 363, column: 9, scope: !545)
!591 = !DILocation(line: 364, column: 7, scope: !592)
!592 = distinct !DILexicalBlock(scope: !588, file: !12, line: 363, column: 25)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_2", scope: !594, file: !12, line: 364, type: !16)
!594 = distinct !DILexicalBlock(scope: !588, file: !12, line: 365, column: 12)
!595 = !DILocation(line: 364, column: 11, scope: !594)
!596 = !DILocation(line: 365, column: 19, scope: !594)
!597 = !DILocation(line: 365, column: 17, scope: !594)
!598 = !DILocation(line: 366, column: 11, scope: !599)
!599 = distinct !DILexicalBlock(scope: !594, file: !12, line: 366, column: 11)
!600 = !DILocation(line: 366, column: 21, scope: !599)
!601 = !DILocation(line: 366, column: 11, scope: !594)
!602 = !DILocation(line: 367, column: 9, scope: !603)
!603 = distinct !DILexicalBlock(scope: !599, file: !12, line: 366, column: 27)
!604 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_3", scope: !605, file: !12, line: 367, type: !16)
!605 = distinct !DILexicalBlock(scope: !599, file: !12, line: 368, column: 14)
!606 = !DILocation(line: 367, column: 13, scope: !605)
!607 = !DILocation(line: 368, column: 21, scope: !605)
!608 = !DILocation(line: 368, column: 19, scope: !605)
!609 = !DILocation(line: 369, column: 13, scope: !610)
!610 = distinct !DILexicalBlock(scope: !605, file: !12, line: 369, column: 13)
!611 = !DILocation(line: 369, column: 23, scope: !610)
!612 = !DILocation(line: 369, column: 13, scope: !605)
!613 = !DILocation(line: 370, column: 11, scope: !614)
!614 = distinct !DILexicalBlock(scope: !610, file: !12, line: 369, column: 29)
!615 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_4", scope: !616, file: !12, line: 370, type: !16)
!616 = distinct !DILexicalBlock(scope: !610, file: !12, line: 371, column: 16)
!617 = !DILocation(line: 370, column: 15, scope: !616)
!618 = !DILocation(line: 371, column: 23, scope: !616)
!619 = !DILocation(line: 371, column: 21, scope: !616)
!620 = !DILocation(line: 372, column: 15, scope: !621)
!621 = distinct !DILexicalBlock(scope: !616, file: !12, line: 372, column: 15)
!622 = !DILocation(line: 372, column: 25, scope: !621)
!623 = !DILocation(line: 372, column: 15, scope: !616)
!624 = !DILocation(line: 373, column: 13, scope: !625)
!625 = distinct !DILexicalBlock(scope: !621, file: !12, line: 372, column: 31)
!626 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_5", scope: !627, file: !12, line: 373, type: !16)
!627 = distinct !DILexicalBlock(scope: !621, file: !12, line: 374, column: 18)
!628 = !DILocation(line: 373, column: 17, scope: !627)
!629 = !DILocation(line: 374, column: 25, scope: !627)
!630 = !DILocation(line: 374, column: 23, scope: !627)
!631 = !DILocation(line: 375, column: 17, scope: !632)
!632 = distinct !DILexicalBlock(scope: !627, file: !12, line: 375, column: 17)
!633 = !DILocation(line: 375, column: 27, scope: !632)
!634 = !DILocation(line: 375, column: 17, scope: !627)
!635 = !DILocation(line: 376, column: 15, scope: !636)
!636 = distinct !DILexicalBlock(scope: !632, file: !12, line: 375, column: 33)
!637 = !DILocation(line: 378, column: 15, scope: !638)
!638 = distinct !DILexicalBlock(scope: !632, file: !12, line: 377, column: 20)
!639 = !DILocation(line: 378, column: 19, scope: !638)
!640 = !DILocation(line: 378, column: 22, scope: !641)
!641 = distinct !DILexicalBlock(scope: !638, file: !12, line: 378, column: 19)
!642 = !DILocation(line: 381, column: 47, scope: !643)
!643 = distinct !DILexicalBlock(scope: !644, file: !12, line: 380, column: 17)
!644 = distinct !DILexicalBlock(scope: !641, file: !12, line: 378, column: 22)
!645 = !DILocation(line: 381, column: 55, scope: !643)
!646 = !DILocation(line: 381, column: 26, scope: !643)
!647 = !DILocation(line: 381, column: 24, scope: !643)
!648 = !DILocation(line: 383, column: 17, scope: !644)
!649 = !DILocation(line: 386, column: 47, scope: !650)
!650 = distinct !DILexicalBlock(scope: !644, file: !12, line: 385, column: 17)
!651 = !DILocation(line: 386, column: 55, scope: !650)
!652 = !DILocation(line: 386, column: 26, scope: !650)
!653 = !DILocation(line: 386, column: 24, scope: !650)
!654 = !DILocation(line: 388, column: 17, scope: !644)
!655 = !DILocation(line: 391, column: 39, scope: !656)
!656 = distinct !DILexicalBlock(scope: !644, file: !12, line: 390, column: 17)
!657 = !DILocation(line: 391, column: 47, scope: !656)
!658 = !DILocation(line: 391, column: 26, scope: !656)
!659 = !DILocation(line: 391, column: 24, scope: !656)
!660 = !DILocation(line: 393, column: 17, scope: !644)
!661 = !DILocation(line: 396, column: 41, scope: !662)
!662 = distinct !DILexicalBlock(scope: !644, file: !12, line: 395, column: 17)
!663 = !DILocation(line: 396, column: 49, scope: !662)
!664 = !DILocation(line: 396, column: 26, scope: !662)
!665 = !DILocation(line: 396, column: 24, scope: !662)
!666 = !DILocation(line: 398, column: 17, scope: !644)
!667 = !DILocation(line: 401, column: 47, scope: !668)
!668 = distinct !DILexicalBlock(scope: !644, file: !12, line: 400, column: 17)
!669 = !DILocation(line: 401, column: 55, scope: !668)
!670 = !DILocation(line: 401, column: 26, scope: !668)
!671 = !DILocation(line: 401, column: 24, scope: !668)
!672 = !DILocation(line: 403, column: 17, scope: !644)
!673 = !DILocation(line: 405, column: 17, scope: !644)
!674 = !DILocation(line: 406, column: 22, scope: !641)
!675 = !DILocation(line: 414, column: 3, scope: !545)
!676 = !DILocation(line: 418, column: 7, scope: !677)
!677 = distinct !DILexicalBlock(scope: !520, file: !12, line: 418, column: 7)
!678 = !DILocation(line: 418, column: 14, scope: !677)
!679 = !DILocation(line: 418, column: 7, scope: !520)
!680 = !DILocation(line: 419, column: 9, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !12, line: 419, column: 9)
!682 = distinct !DILexicalBlock(scope: !677, file: !12, line: 418, column: 20)
!683 = !DILocation(line: 419, column: 14, scope: !681)
!684 = !DILocation(line: 419, column: 11, scope: !681)
!685 = !DILocation(line: 419, column: 9, scope: !682)
!686 = !DILocation(line: 420, column: 11, scope: !687)
!687 = distinct !DILexicalBlock(scope: !681, file: !12, line: 419, column: 18)
!688 = !DILocation(line: 420, column: 9, scope: !687)
!689 = !DILocation(line: 421, column: 5, scope: !687)
!690 = !DILocation(line: 422, column: 7, scope: !691)
!691 = distinct !DILexicalBlock(scope: !681, file: !12, line: 421, column: 12)
!692 = !DILocation(line: 424, column: 3, scope: !682)
!693 = !DILocation(line: 424, column: 10, scope: !677)
!694 = !DILocation(line: 426, column: 9, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !12, line: 426, column: 9)
!696 = distinct !DILexicalBlock(scope: !677, file: !12, line: 424, column: 10)
!697 = !DILocation(line: 426, column: 16, scope: !695)
!698 = !DILocation(line: 426, column: 9, scope: !696)
!699 = !DILocation(line: 427, column: 11, scope: !700)
!700 = distinct !DILexicalBlock(scope: !701, file: !12, line: 427, column: 11)
!701 = distinct !DILexicalBlock(scope: !695, file: !12, line: 426, column: 22)
!702 = !DILocation(line: 427, column: 16, scope: !700)
!703 = !DILocation(line: 427, column: 13, scope: !700)
!704 = !DILocation(line: 427, column: 11, scope: !701)
!705 = !DILocation(line: 428, column: 13, scope: !706)
!706 = distinct !DILexicalBlock(scope: !700, file: !12, line: 427, column: 22)
!707 = !DILocation(line: 428, column: 11, scope: !706)
!708 = !DILocation(line: 429, column: 7, scope: !706)
!709 = !DILocation(line: 430, column: 9, scope: !710)
!710 = distinct !DILexicalBlock(scope: !700, file: !12, line: 429, column: 14)
!711 = !DILocation(line: 432, column: 5, scope: !701)
!712 = !DILocation(line: 432, column: 12, scope: !695)
!713 = !DILocation(line: 434, column: 11, scope: !714)
!714 = distinct !DILexicalBlock(scope: !715, file: !12, line: 434, column: 11)
!715 = distinct !DILexicalBlock(scope: !695, file: !12, line: 432, column: 12)
!716 = !DILocation(line: 434, column: 16, scope: !714)
!717 = !DILocation(line: 434, column: 13, scope: !714)
!718 = !DILocation(line: 434, column: 11, scope: !715)
!719 = !DILocation(line: 437, column: 13, scope: !720)
!720 = distinct !DILexicalBlock(scope: !721, file: !12, line: 437, column: 13)
!721 = distinct !DILexicalBlock(scope: !714, file: !12, line: 434, column: 26)
!722 = !DILocation(line: 437, column: 20, scope: !720)
!723 = !DILocation(line: 437, column: 13, scope: !721)
!724 = !DILocation(line: 440, column: 15, scope: !725)
!725 = distinct !DILexicalBlock(scope: !726, file: !12, line: 440, column: 15)
!726 = distinct !DILexicalBlock(scope: !720, file: !12, line: 437, column: 27)
!727 = !DILocation(line: 440, column: 20, scope: !725)
!728 = !DILocation(line: 440, column: 17, scope: !725)
!729 = !DILocation(line: 440, column: 15, scope: !726)
!730 = !DILocation(line: 441, column: 17, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !12, line: 441, column: 17)
!732 = distinct !DILexicalBlock(scope: !725, file: !12, line: 440, column: 27)
!733 = !DILocation(line: 441, column: 22, scope: !731)
!734 = !DILocation(line: 441, column: 19, scope: !731)
!735 = !DILocation(line: 441, column: 17, scope: !732)
!736 = !DILocation(line: 442, column: 19, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !12, line: 442, column: 19)
!738 = distinct !DILexicalBlock(scope: !731, file: !12, line: 441, column: 27)
!739 = !DILocation(line: 442, column: 24, scope: !737)
!740 = !DILocation(line: 442, column: 21, scope: !737)
!741 = !DILocation(line: 442, column: 19, scope: !738)
!742 = !DILocation(line: 443, column: 17, scope: !743)
!743 = distinct !DILexicalBlock(scope: !737, file: !12, line: 442, column: 28)
!744 = !DILocation(line: 445, column: 13, scope: !738)
!745 = !DILocation(line: 446, column: 15, scope: !746)
!746 = distinct !DILexicalBlock(scope: !731, file: !12, line: 445, column: 20)
!747 = !DILocation(line: 448, column: 11, scope: !732)
!748 = !DILocation(line: 448, column: 18, scope: !725)
!749 = !DILocation(line: 452, column: 17, scope: !750)
!750 = distinct !DILexicalBlock(scope: !751, file: !12, line: 452, column: 17)
!751 = distinct !DILexicalBlock(scope: !725, file: !12, line: 448, column: 18)
!752 = !DILocation(line: 452, column: 24, scope: !750)
!753 = !DILocation(line: 452, column: 17, scope: !751)
!754 = !DILocation(line: 453, column: 19, scope: !755)
!755 = distinct !DILexicalBlock(scope: !756, file: !12, line: 453, column: 19)
!756 = distinct !DILexicalBlock(scope: !750, file: !12, line: 452, column: 30)
!757 = !DILocation(line: 453, column: 26, scope: !755)
!758 = !DILocation(line: 453, column: 19, scope: !756)
!759 = !DILocation(line: 962, column: 10, scope: !319, inlinedAt: !760)
!760 = distinct !DILocation(line: 455, column: 17, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !12, line: 454, column: 17)
!762 = distinct !DILexicalBlock(scope: !755, file: !12, line: 453, column: 34)
!763 = !DILocation(line: 457, column: 15, scope: !762)
!764 = !DILocation(line: 458, column: 13, scope: !756)
!765 = !DILocation(line: 461, column: 19, scope: !766)
!766 = distinct !DILexicalBlock(scope: !767, file: !12, line: 461, column: 19)
!767 = distinct !DILexicalBlock(scope: !750, file: !12, line: 458, column: 20)
!768 = !DILocation(line: 461, column: 24, scope: !766)
!769 = !DILocation(line: 461, column: 21, scope: !766)
!770 = !DILocation(line: 461, column: 19, scope: !767)
!771 = !DILocation(line: 462, column: 21, scope: !772)
!772 = distinct !DILexicalBlock(scope: !773, file: !12, line: 462, column: 21)
!773 = distinct !DILexicalBlock(scope: !766, file: !12, line: 461, column: 28)
!774 = !DILocation(line: 462, column: 28, scope: !772)
!775 = !DILocation(line: 462, column: 21, scope: !773)
!776 = !DILocation(line: 464, column: 17, scope: !777)
!777 = distinct !DILexicalBlock(scope: !772, file: !12, line: 462, column: 36)
!778 = !DILocation(line: 465, column: 15, scope: !773)
!779 = !DILocation(line: 468, column: 21, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !12, line: 468, column: 21)
!781 = distinct !DILexicalBlock(scope: !766, file: !12, line: 465, column: 22)
!782 = !DILocation(line: 468, column: 31, scope: !780)
!783 = !DILocation(line: 468, column: 28, scope: !780)
!784 = !DILocation(line: 468, column: 21, scope: !781)
!785 = !DILocation(line: 470, column: 17, scope: !786)
!786 = distinct !DILexicalBlock(scope: !780, file: !12, line: 468, column: 50)
!787 = !DILocation(line: 474, column: 9, scope: !726)
!788 = !DILocation(line: 475, column: 7, scope: !721)
!789 = !DILocation(line: 480, column: 11, scope: !520)
!790 = !DILocation(line: 480, column: 3, scope: !520)
!791 = !DILocation(line: 482, column: 1, scope: !17)
!792 = !DILocation(line: 487, column: 7, scope: !793)
!793 = distinct !DILexicalBlock(scope: !794, file: !12, line: 487, column: 7)
!794 = distinct !DILexicalBlock(scope: !20, file: !12, line: 486, column: 3)
!795 = !DILocation(line: 487, column: 12, scope: !793)
!796 = !DILocation(line: 487, column: 9, scope: !793)
!797 = !DILocation(line: 487, column: 7, scope: !794)
!798 = !DILocation(line: 488, column: 9, scope: !799)
!799 = distinct !DILexicalBlock(scope: !793, file: !12, line: 487, column: 16)
!800 = !DILocation(line: 488, column: 7, scope: !799)
!801 = !DILocation(line: 489, column: 3, scope: !799)
!802 = !DILocation(line: 962, column: 10, scope: !319, inlinedAt: !803)
!803 = distinct !DILocation(line: 491, column: 5, scope: !804)
!804 = distinct !DILexicalBlock(scope: !805, file: !12, line: 490, column: 5)
!805 = distinct !DILexicalBlock(scope: !793, file: !12, line: 489, column: 10)
!806 = !DILocation(line: 494, column: 3, scope: !794)
!807 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !21, file: !12, line: 497, type: !16)
!808 = !DILocation(line: 497, column: 23, scope: !21)
!809 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !21, file: !12, line: 497, type: !16)
!810 = !DILocation(line: 497, column: 42, scope: !21)
!811 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "returnVal2", scope: !21, file: !12, line: 499, type: !16)
!812 = !DILocation(line: 499, column: 7, scope: !21)
!813 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compRetStatus", scope: !21, file: !12, line: 500, type: !16)
!814 = !DILocation(line: 500, column: 7, scope: !21)
!815 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lcontext", scope: !21, file: !12, line: 501, type: !16)
!816 = !DILocation(line: 501, column: 7, scope: !21)
!817 = !DILocation(line: 501, column: 18, scope: !21)
!818 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp7", scope: !21, file: !12, line: 502, type: !5)
!819 = !DILocation(line: 502, column: 13, scope: !21)
!820 = !DILocation(line: 504, column: 7, scope: !821)
!821 = distinct !DILexicalBlock(scope: !822, file: !12, line: 504, column: 7)
!822 = distinct !DILexicalBlock(scope: !21, file: !12, line: 504, column: 3)
!823 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 1, scope: !25, file: !12, line: 582, type: !16)
!824 = !DILocation(line: 582, column: 20, scope: !25, inlinedAt: !825)
!825 = distinct !DILocation(line: 640, column: 3, scope: !826, inlinedAt: !828)
!826 = distinct !DILexicalBlock(scope: !827, file: !12, line: 638, column: 3)
!827 = distinct !DILexicalBlock(scope: !31, file: !12, line: 637, column: 3)
!828 = distinct !DILocation(line: 506, column: 21, scope: !829)
!829 = distinct !DILexicalBlock(scope: !830, file: !12, line: 505, column: 5)
!830 = distinct !DILexicalBlock(scope: !821, file: !12, line: 504, column: 23)
!831 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Increment", arg: 2, scope: !25, file: !12, line: 582, type: !16)
!832 = !DILocation(line: 582, column: 32, scope: !25, inlinedAt: !825)
!833 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Wait", arg: 3, scope: !25, file: !12, line: 582, type: !16)
!834 = !DILocation(line: 582, column: 48, scope: !25, inlinedAt: !825)
!835 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !25, file: !12, line: 583, type: !16)
!836 = !DILocation(line: 583, column: 7, scope: !25, inlinedAt: !825)
!837 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !31, file: !12, line: 634, type: !16)
!838 = !DILocation(line: 634, column: 27, scope: !31, inlinedAt: !828)
!839 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !31, file: !12, line: 634, type: !16)
!840 = !DILocation(line: 634, column: 46, scope: !31, inlinedAt: !828)
!841 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 3, scope: !31, file: !12, line: 634, type: !16)
!842 = !DILocation(line: 634, column: 56, scope: !31, inlinedAt: !828)
!843 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "event", scope: !31, file: !12, line: 635, type: !16)
!844 = !DILocation(line: 635, column: 7, scope: !31, inlinedAt: !828)
!845 = !DILocation(line: 504, column: 7, scope: !822)
!846 = !DILocation(line: 506, column: 39, scope: !829)
!847 = !DILocation(line: 506, column: 53, scope: !829)
!848 = !DILocation(line: 506, column: 58, scope: !829)
!849 = !DILocation(line: 506, column: 21, scope: !829)
!850 = !DILocation(line: 639, column: 11, scope: !826, inlinedAt: !828)
!851 = !DILocation(line: 639, column: 9, scope: !826, inlinedAt: !828)
!852 = !DILocation(line: 640, column: 14, scope: !826, inlinedAt: !828)
!853 = !DILocation(line: 640, column: 3, scope: !826, inlinedAt: !828)
!854 = !DILocation(line: 583, column: 11, scope: !25, inlinedAt: !825)
!855 = !DILocation(line: 586, column: 18, scope: !856, inlinedAt: !825)
!856 = distinct !DILexicalBlock(scope: !25, file: !12, line: 585, column: 3)
!857 = !DILocation(line: 587, column: 11, scope: !856, inlinedAt: !825)
!858 = !DILocation(line: 587, column: 3, scope: !856, inlinedAt: !825)
!859 = !DILocation(line: 642, column: 3, scope: !827, inlinedAt: !828)
!860 = !DILocation(line: 506, column: 19, scope: !829)
!861 = !DILocation(line: 508, column: 30, scope: !862)
!862 = distinct !DILexicalBlock(scope: !830, file: !12, line: 508, column: 5)
!863 = !DILocation(line: 508, column: 18, scope: !862)
!864 = !DILocation(line: 508, column: 16, scope: !862)
!865 = !DILocation(line: 508, column: 9, scope: !866)
!866 = distinct !DILexicalBlock(scope: !862, file: !12, line: 508, column: 9)
!867 = !DILocation(line: 508, column: 20, scope: !866)
!868 = !DILocation(line: 508, column: 9, scope: !862)
!869 = !DILocation(line: 487, column: 7, scope: !793, inlinedAt: !870)
!870 = distinct !DILocation(line: 510, column: 7, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !12, line: 509, column: 7)
!872 = distinct !DILexicalBlock(scope: !866, file: !12, line: 508, column: 36)
!873 = !DILocation(line: 487, column: 12, scope: !793, inlinedAt: !870)
!874 = !DILocation(line: 487, column: 9, scope: !793, inlinedAt: !870)
!875 = !DILocation(line: 487, column: 7, scope: !794, inlinedAt: !870)
!876 = !DILocation(line: 962, column: 10, scope: !319, inlinedAt: !877)
!877 = distinct !DILocation(line: 491, column: 5, scope: !804, inlinedAt: !870)
!878 = !DILocation(line: 488, column: 9, scope: !799, inlinedAt: !870)
!879 = !DILocation(line: 488, column: 7, scope: !799, inlinedAt: !870)
!880 = !DILocation(line: 512, column: 5, scope: !872)
!881 = !DILocation(line: 514, column: 3, scope: !830)
!882 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_6", scope: !822, file: !12, line: 518, type: !16)
!883 = !DILocation(line: 518, column: 7, scope: !822)
!884 = !DILocation(line: 519, column: 15, scope: !822)
!885 = !DILocation(line: 519, column: 13, scope: !822)
!886 = !DILocation(line: 520, column: 7, scope: !887)
!887 = distinct !DILexicalBlock(scope: !822, file: !12, line: 520, column: 7)
!888 = !DILocation(line: 520, column: 17, scope: !887)
!889 = !DILocation(line: 520, column: 7, scope: !822)
!890 = !DILocation(line: 521, column: 5, scope: !891)
!891 = distinct !DILexicalBlock(scope: !887, file: !12, line: 520, column: 23)
!892 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_7", scope: !893, file: !12, line: 521, type: !16)
!893 = distinct !DILexicalBlock(scope: !887, file: !12, line: 522, column: 10)
!894 = !DILocation(line: 521, column: 9, scope: !893)
!895 = !DILocation(line: 522, column: 17, scope: !893)
!896 = !DILocation(line: 522, column: 15, scope: !893)
!897 = !DILocation(line: 523, column: 9, scope: !898)
!898 = distinct !DILexicalBlock(scope: !893, file: !12, line: 523, column: 9)
!899 = !DILocation(line: 523, column: 19, scope: !898)
!900 = !DILocation(line: 523, column: 9, scope: !893)
!901 = !DILocation(line: 524, column: 7, scope: !902)
!902 = distinct !DILexicalBlock(scope: !898, file: !12, line: 523, column: 25)
!903 = !DILocation(line: 526, column: 7, scope: !904)
!904 = distinct !DILexicalBlock(scope: !898, file: !12, line: 525, column: 12)
!905 = !DILocation(line: 526, column: 11, scope: !904)
!906 = !DILocation(line: 526, column: 14, scope: !907)
!907 = distinct !DILexicalBlock(scope: !904, file: !12, line: 526, column: 11)
!908 = !DILocation(line: 528, column: 20, scope: !909)
!909 = distinct !DILexicalBlock(scope: !907, file: !12, line: 526, column: 14)
!910 = !DILocation(line: 529, column: 9, scope: !909)
!911 = !DILocation(line: 531, column: 20, scope: !909)
!912 = !DILocation(line: 532, column: 9, scope: !909)
!913 = !DILocation(line: 534, column: 20, scope: !909)
!914 = !DILocation(line: 535, column: 9, scope: !909)
!915 = !DILocation(line: 536, column: 14, scope: !907)
!916 = !DILocation(line: 542, column: 7, scope: !917)
!917 = distinct !DILexicalBlock(scope: !822, file: !12, line: 542, column: 7)
!918 = !DILocation(line: 542, column: 12, scope: !917)
!919 = !DILocation(line: 542, column: 9, scope: !917)
!920 = !DILocation(line: 542, column: 7, scope: !822)
!921 = !DILocation(line: 543, column: 9, scope: !922)
!922 = distinct !DILexicalBlock(scope: !917, file: !12, line: 542, column: 16)
!923 = !DILocation(line: 543, column: 7, scope: !922)
!924 = !DILocation(line: 544, column: 25, scope: !922)
!925 = !DILocation(line: 544, column: 23, scope: !922)
!926 = !DILocation(line: 545, column: 3, scope: !922)
!927 = !DILocation(line: 546, column: 9, scope: !928)
!928 = distinct !DILexicalBlock(scope: !929, file: !12, line: 546, column: 9)
!929 = distinct !DILexicalBlock(scope: !917, file: !12, line: 545, column: 10)
!930 = !DILocation(line: 546, column: 14, scope: !928)
!931 = !DILocation(line: 546, column: 11, scope: !928)
!932 = !DILocation(line: 546, column: 9, scope: !929)
!933 = !DILocation(line: 547, column: 11, scope: !934)
!934 = distinct !DILexicalBlock(scope: !935, file: !12, line: 547, column: 11)
!935 = distinct !DILexicalBlock(scope: !928, file: !12, line: 546, column: 20)
!936 = !DILocation(line: 547, column: 22, scope: !934)
!937 = !DILocation(line: 547, column: 11, scope: !935)
!938 = !DILocation(line: 548, column: 13, scope: !939)
!939 = distinct !DILexicalBlock(scope: !934, file: !12, line: 547, column: 30)
!940 = !DILocation(line: 548, column: 11, scope: !939)
!941 = !DILocation(line: 549, column: 29, scope: !939)
!942 = !DILocation(line: 549, column: 27, scope: !939)
!943 = !DILocation(line: 550, column: 7, scope: !939)
!944 = !DILocation(line: 551, column: 13, scope: !945)
!945 = distinct !DILexicalBlock(scope: !934, file: !12, line: 550, column: 14)
!946 = !DILocation(line: 551, column: 11, scope: !945)
!947 = !DILocation(line: 552, column: 29, scope: !945)
!948 = !DILocation(line: 552, column: 27, scope: !945)
!949 = !DILocation(line: 554, column: 5, scope: !935)
!950 = !DILocation(line: 555, column: 11, scope: !951)
!951 = distinct !DILexicalBlock(scope: !952, file: !12, line: 555, column: 11)
!952 = distinct !DILexicalBlock(scope: !928, file: !12, line: 554, column: 12)
!953 = !DILocation(line: 555, column: 16, scope: !951)
!954 = !DILocation(line: 555, column: 13, scope: !951)
!955 = !DILocation(line: 555, column: 11, scope: !952)
!956 = !DILocation(line: 556, column: 13, scope: !957)
!957 = distinct !DILexicalBlock(scope: !951, file: !12, line: 555, column: 23)
!958 = !DILocation(line: 556, column: 11, scope: !957)
!959 = !DILocation(line: 557, column: 29, scope: !957)
!960 = !DILocation(line: 557, column: 27, scope: !957)
!961 = !DILocation(line: 558, column: 7, scope: !957)
!962 = !DILocation(line: 962, column: 10, scope: !319, inlinedAt: !963)
!963 = distinct !DILocation(line: 560, column: 9, scope: !964)
!964 = distinct !DILexicalBlock(scope: !965, file: !12, line: 559, column: 9)
!965 = distinct !DILexicalBlock(scope: !951, file: !12, line: 558, column: 14)
!966 = !DILocation(line: 565, column: 11, scope: !822)
!967 = !DILocation(line: 565, column: 3, scope: !822)
!968 = !DILocation(line: 582, column: 20, scope: !25)
!969 = !DILocation(line: 582, column: 32, scope: !25)
!970 = !DILocation(line: 582, column: 48, scope: !25)
!971 = !DILocation(line: 583, column: 7, scope: !25)
!972 = !DILocation(line: 583, column: 11, scope: !25)
!973 = !DILocation(line: 586, column: 18, scope: !856)
!974 = !DILocation(line: 587, column: 11, scope: !856)
!975 = !DILocation(line: 587, column: 3, scope: !856)
!976 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Object", arg: 1, scope: !28, file: !12, line: 590, type: !16)
!977 = !DILocation(line: 590, column: 31, scope: !28)
!978 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitReason", arg: 2, scope: !28, file: !12, line: 590, type: !16)
!979 = !DILocation(line: 590, column: 44, scope: !28)
!980 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitMode", arg: 3, scope: !28, file: !12, line: 590, type: !16)
!981 = !DILocation(line: 590, column: 61, scope: !28)
!982 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Alertable", arg: 4, scope: !28, file: !12, line: 590, type: !16)
!983 = !DILocation(line: 590, column: 76, scope: !28)
!984 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Timeout", arg: 5, scope: !28, file: !12, line: 591, type: !16)
!985 = !DILocation(line: 591, column: 31, scope: !28)
!986 = !DILocation(line: 595, column: 7, scope: !987)
!987 = distinct !DILexicalBlock(scope: !988, file: !12, line: 595, column: 7)
!988 = distinct !DILexicalBlock(scope: !28, file: !12, line: 594, column: 3)
!989 = !DILocation(line: 595, column: 12, scope: !987)
!990 = !DILocation(line: 595, column: 9, scope: !987)
!991 = !DILocation(line: 595, column: 7, scope: !988)
!992 = !DILocation(line: 596, column: 9, scope: !993)
!993 = distinct !DILexicalBlock(scope: !994, file: !12, line: 596, column: 9)
!994 = distinct !DILexicalBlock(scope: !987, file: !12, line: 595, column: 18)
!995 = !DILocation(line: 596, column: 24, scope: !993)
!996 = !DILocation(line: 596, column: 9, scope: !994)
!997 = !DILocation(line: 597, column: 11, scope: !998)
!998 = distinct !DILexicalBlock(scope: !993, file: !12, line: 596, column: 30)
!999 = !DILocation(line: 597, column: 9, scope: !998)
!1000 = !DILocation(line: 598, column: 22, scope: !998)
!1001 = !DILocation(line: 599, column: 5, scope: !998)
!1002 = !DILocation(line: 600, column: 7, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !993, file: !12, line: 599, column: 12)
!1004 = !DILocation(line: 602, column: 3, scope: !994)
!1005 = !DILocation(line: 602, column: 10, scope: !987)
!1006 = !DILocation(line: 604, column: 9, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !12, line: 604, column: 9)
!1008 = distinct !DILexicalBlock(scope: !987, file: !12, line: 602, column: 10)
!1009 = !DILocation(line: 604, column: 19, scope: !1007)
!1010 = !DILocation(line: 604, column: 9, scope: !1008)
!1011 = !DILocation(line: 605, column: 11, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1007, file: !12, line: 604, column: 25)
!1013 = !DILocation(line: 605, column: 9, scope: !1012)
!1014 = !DILocation(line: 606, column: 17, scope: !1012)
!1015 = !DILocation(line: 607, column: 5, scope: !1012)
!1016 = !DILocation(line: 608, column: 11, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !12, line: 608, column: 11)
!1018 = distinct !DILexicalBlock(scope: !1007, file: !12, line: 607, column: 12)
!1019 = !DILocation(line: 608, column: 16, scope: !1017)
!1020 = !DILocation(line: 608, column: 13, scope: !1017)
!1021 = !DILocation(line: 608, column: 11, scope: !1018)
!1022 = !DILocation(line: 962, column: 10, scope: !319, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 610, column: 9, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !12, line: 609, column: 9)
!1025 = distinct !DILexicalBlock(scope: !1017, file: !12, line: 608, column: 22)
!1026 = !DILocation(line: 612, column: 7, scope: !1025)
!1027 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_8", scope: !988, file: !12, line: 617, type: !16)
!1028 = !DILocation(line: 617, column: 7, scope: !988)
!1029 = !DILocation(line: 618, column: 15, scope: !988)
!1030 = !DILocation(line: 618, column: 13, scope: !988)
!1031 = !DILocation(line: 619, column: 7, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !988, file: !12, line: 619, column: 7)
!1033 = !DILocation(line: 619, column: 17, scope: !1032)
!1034 = !DILocation(line: 619, column: 7, scope: !988)
!1035 = !DILocation(line: 620, column: 5, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1032, file: !12, line: 619, column: 23)
!1037 = !DILocation(line: 622, column: 5, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1032, file: !12, line: 621, column: 10)
!1039 = !DILocation(line: 622, column: 9, scope: !1038)
!1040 = !DILocation(line: 622, column: 12, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1038, file: !12, line: 622, column: 9)
!1042 = !DILocation(line: 624, column: 7, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1041, file: !12, line: 622, column: 12)
!1044 = !DILocation(line: 626, column: 7, scope: !1043)
!1045 = !DILocation(line: 632, column: 1, scope: !28)
!1046 = !DILocation(line: 634, column: 27, scope: !31)
!1047 = !DILocation(line: 634, column: 46, scope: !31)
!1048 = !DILocation(line: 634, column: 56, scope: !31)
!1049 = !DILocation(line: 635, column: 7, scope: !31)
!1050 = !DILocation(line: 639, column: 11, scope: !826)
!1051 = !DILocation(line: 639, column: 9, scope: !826)
!1052 = !DILocation(line: 640, column: 14, scope: !826)
!1053 = !DILocation(line: 640, column: 3, scope: !826)
!1054 = !DILocation(line: 583, column: 11, scope: !25, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 640, column: 3, scope: !826)
!1056 = !DILocation(line: 583, column: 7, scope: !25, inlinedAt: !1055)
!1057 = !DILocation(line: 586, column: 18, scope: !856, inlinedAt: !1055)
!1058 = !DILocation(line: 587, column: 11, scope: !856, inlinedAt: !1055)
!1059 = !DILocation(line: 587, column: 3, scope: !856, inlinedAt: !1055)
!1060 = !DILocation(line: 582, column: 20, scope: !25, inlinedAt: !1055)
!1061 = !DILocation(line: 582, column: 32, scope: !25, inlinedAt: !1055)
!1062 = !DILocation(line: 582, column: 48, scope: !25, inlinedAt: !1055)
!1063 = !DILocation(line: 642, column: 3, scope: !827)
!1064 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !32, file: !12, line: 645, type: !16)
!1065 = !DILocation(line: 645, column: 30, scope: !32)
!1066 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !32, file: !12, line: 645, type: !16)
!1067 = !DILocation(line: 645, column: 49, scope: !32)
!1068 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack__MajorFunction", scope: !32, file: !12, line: 646, type: !16)
!1069 = !DILocation(line: 646, column: 7, scope: !32)
!1070 = !DILocation(line: 646, column: 33, scope: !32)
!1071 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt__UpperConnectData__ClassService", scope: !32, file: !12, line: 647, type: !16)
!1072 = !DILocation(line: 647, column: 7, scope: !32)
!1073 = !DILocation(line: 647, column: 48, scope: !32)
!1074 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !32, file: !12, line: 648, type: !16)
!1075 = !DILocation(line: 648, column: 7, scope: !32)
!1076 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !32, file: !12, line: 649, type: !16)
!1077 = !DILocation(line: 649, column: 7, scope: !32)
!1078 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !32, file: !12, line: 650, type: !16)
!1079 = !DILocation(line: 650, column: 7, scope: !32)
!1080 = !DILocation(line: 653, column: 12, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !32, file: !12, line: 652, column: 3)
!1082 = !DILocation(line: 653, column: 10, scope: !1081)
!1083 = !DILocation(line: 654, column: 7, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1081, file: !12, line: 654, column: 7)
!1085 = !DILocation(line: 654, column: 31, scope: !1084)
!1086 = !DILocation(line: 654, column: 7, scope: !1081)
!1087 = !DILocation(line: 655, column: 5, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1084, file: !12, line: 654, column: 37)
!1089 = !DILocation(line: 657, column: 9, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !12, line: 657, column: 9)
!1091 = distinct !DILexicalBlock(scope: !1084, file: !12, line: 656, column: 10)
!1092 = !DILocation(line: 657, column: 33, scope: !1090)
!1093 = !DILocation(line: 657, column: 9, scope: !1091)
!1094 = !DILocation(line: 658, column: 7, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1090, file: !12, line: 657, column: 39)
!1096 = !DILocation(line: 660, column: 11, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1090, file: !12, line: 659, column: 12)
!1098 = !DILocation(line: 660, column: 14, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1097, file: !12, line: 660, column: 11)
!1100 = !DILocation(line: 662, column: 13, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !12, line: 662, column: 13)
!1102 = distinct !DILexicalBlock(scope: !1099, file: !12, line: 660, column: 14)
!1103 = !DILocation(line: 662, column: 52, scope: !1101)
!1104 = !DILocation(line: 662, column: 13, scope: !1102)
!1105 = !DILocation(line: 663, column: 18, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1101, file: !12, line: 662, column: 58)
!1107 = !DILocation(line: 664, column: 9, scope: !1106)
!1108 = !DILocation(line: 665, column: 9, scope: !1102)
!1109 = !DILocation(line: 667, column: 9, scope: !1102)
!1110 = !DILocation(line: 668, column: 14, scope: !1099)
!1111 = !DILocation(line: 676, column: 27, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1081, file: !12, line: 673, column: 3)
!1113 = !DILocation(line: 676, column: 25, scope: !1112)
!1114 = !DILocation(line: 677, column: 14, scope: !1112)
!1115 = !DILocation(line: 677, column: 12, scope: !1112)
!1116 = !DILocation(line: 678, column: 38, scope: !1112)
!1117 = !DILocation(line: 678, column: 52, scope: !1112)
!1118 = !DILocation(line: 678, column: 9, scope: !1112)
!1119 = !DILocation(line: 678, column: 7, scope: !1112)
!1120 = !DILocation(line: 680, column: 11, scope: !1081)
!1121 = !DILocation(line: 680, column: 3, scope: !1081)
!1122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !33, file: !12, line: 683, type: !16)
!1123 = !DILocation(line: 683, column: 38, scope: !33)
!1124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !33, file: !12, line: 683, type: !16)
!1125 = !DILocation(line: 683, column: 57, scope: !33)
!1126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !33, file: !12, line: 684, type: !16)
!1127 = !DILocation(line: 684, column: 7, scope: !33)
!1128 = !DILocation(line: 684, column: 50, scope: !33)
!1129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !33, file: !12, line: 685, type: !16)
!1130 = !DILocation(line: 685, column: 7, scope: !33)
!1131 = !DILocation(line: 685, column: 30, scope: !33)
!1132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension__TopOfStack", scope: !33, file: !12, line: 686, type: !16)
!1133 = !DILocation(line: 686, column: 7, scope: !33)
!1134 = !DILocation(line: 686, column: 51, scope: !33)
!1135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack", scope: !33, file: !12, line: 687, type: !16)
!1136 = !DILocation(line: 687, column: 7, scope: !33)
!1137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !33, file: !12, line: 688, type: !16)
!1138 = !DILocation(line: 688, column: 7, scope: !33)
!1139 = !DILocation(line: 691, column: 14, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !33, file: !12, line: 690, column: 3)
!1141 = !DILocation(line: 691, column: 12, scope: !1140)
!1142 = !DILocation(line: 692, column: 7, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1140, file: !12, line: 692, column: 7)
!1144 = !DILocation(line: 692, column: 12, scope: !1143)
!1145 = !DILocation(line: 692, column: 9, scope: !1143)
!1146 = !DILocation(line: 692, column: 7, scope: !1140)
!1147 = !DILocation(line: 693, column: 9, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1143, file: !12, line: 692, column: 16)
!1149 = !DILocation(line: 693, column: 7, scope: !1148)
!1150 = !DILocation(line: 694, column: 3, scope: !1148)
!1151 = !DILocation(line: 962, column: 10, scope: !319, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 696, column: 5, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !12, line: 695, column: 5)
!1154 = distinct !DILexicalBlock(scope: !1143, file: !12, line: 694, column: 10)
!1155 = !DILocation(line: 700, column: 24, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1140, file: !12, line: 699, column: 3)
!1157 = !DILocation(line: 701, column: 44, scope: !1156)
!1158 = !DILocation(line: 702, column: 23, scope: !1156)
!1159 = !DILocation(line: 702, column: 66, scope: !1156)
!1160 = !DILocation(line: 702, column: 9, scope: !1156)
!1161 = !DILocation(line: 702, column: 7, scope: !1156)
!1162 = !DILocation(line: 704, column: 11, scope: !1140)
!1163 = !DILocation(line: 704, column: 3, scope: !1140)
!1164 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !34, file: !12, line: 707, type: !16)
!1165 = !DILocation(line: 707, column: 24, scope: !34)
!1166 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !34, file: !12, line: 707, type: !16)
!1167 = !DILocation(line: 707, column: 43, scope: !34)
!1168 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack__MinorFunction", scope: !34, file: !12, line: 708, type: !16)
!1169 = !DILocation(line: 708, column: 7, scope: !34)
!1170 = !DILocation(line: 708, column: 33, scope: !34)
!1171 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt__DeviceState", scope: !34, file: !12, line: 709, type: !16)
!1172 = !DILocation(line: 709, column: 7, scope: !34)
!1173 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "powerState__DeviceState", scope: !34, file: !12, line: 710, type: !16)
!1174 = !DILocation(line: 710, column: 7, scope: !34)
!1175 = !DILocation(line: 710, column: 33, scope: !34)
!1176 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !34, file: !12, line: 711, type: !16)
!1177 = !DILocation(line: 711, column: 7, scope: !34)
!1178 = !DILocation(line: 711, column: 30, scope: !34)
!1179 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !34, file: !12, line: 712, type: !16)
!1180 = !DILocation(line: 712, column: 7, scope: !34)
!1181 = !DILocation(line: 712, column: 50, scope: !34)
!1182 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt__TopOfStack", scope: !34, file: !12, line: 713, type: !16)
!1183 = !DILocation(line: 713, column: 7, scope: !34)
!1184 = !DILocation(line: 713, column: 28, scope: !34)
!1185 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "powerType", scope: !34, file: !12, line: 714, type: !16)
!1186 = !DILocation(line: 714, column: 7, scope: !34)
!1187 = !DILocation(line: 714, column: 19, scope: !34)
!1188 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !34, file: !12, line: 715, type: !16)
!1189 = !DILocation(line: 715, column: 7, scope: !34)
!1190 = !DILocation(line: 718, column: 7, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 718, column: 7)
!1192 = distinct !DILexicalBlock(scope: !34, file: !12, line: 717, column: 3)
!1193 = !DILocation(line: 718, column: 31, scope: !1191)
!1194 = !DILocation(line: 718, column: 7, scope: !1192)
!1195 = !DILocation(line: 719, column: 5, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1191, file: !12, line: 718, column: 37)
!1197 = !DILocation(line: 721, column: 9, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !12, line: 721, column: 9)
!1199 = distinct !DILexicalBlock(scope: !1191, file: !12, line: 720, column: 10)
!1200 = !DILocation(line: 721, column: 33, scope: !1198)
!1201 = !DILocation(line: 721, column: 9, scope: !1199)
!1202 = !DILocation(line: 722, column: 7, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1198, file: !12, line: 721, column: 39)
!1204 = !DILocation(line: 724, column: 11, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !12, line: 724, column: 11)
!1206 = distinct !DILexicalBlock(scope: !1198, file: !12, line: 723, column: 12)
!1207 = !DILocation(line: 724, column: 35, scope: !1205)
!1208 = !DILocation(line: 724, column: 11, scope: !1206)
!1209 = !DILocation(line: 725, column: 9, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1205, file: !12, line: 724, column: 41)
!1211 = !DILocation(line: 727, column: 13, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !12, line: 727, column: 13)
!1213 = distinct !DILexicalBlock(scope: !1205, file: !12, line: 726, column: 14)
!1214 = !DILocation(line: 727, column: 37, scope: !1212)
!1215 = !DILocation(line: 727, column: 13, scope: !1213)
!1216 = !DILocation(line: 728, column: 11, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1212, file: !12, line: 727, column: 43)
!1218 = !DILocation(line: 730, column: 11, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1212, file: !12, line: 729, column: 16)
!1220 = !DILocation(line: 732, column: 15, scope: !1219)
!1221 = !DILocation(line: 732, column: 18, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1219, file: !12, line: 732, column: 15)
!1223 = !DILocation(line: 734, column: 17, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !12, line: 734, column: 17)
!1225 = distinct !DILexicalBlock(scope: !1222, file: !12, line: 732, column: 18)
!1226 = !DILocation(line: 734, column: 30, scope: !1224)
!1227 = !DILocation(line: 734, column: 27, scope: !1224)
!1228 = !DILocation(line: 734, column: 17, scope: !1225)
!1229 = !DILocation(line: 735, column: 37, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1224, file: !12, line: 734, column: 48)
!1231 = !DILocation(line: 735, column: 35, scope: !1230)
!1232 = !DILocation(line: 736, column: 13, scope: !1230)
!1233 = !DILocation(line: 741, column: 13, scope: !1225)
!1234 = !DILocation(line: 742, column: 18, scope: !1222)
!1235 = !DILocation(line: 752, column: 7, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 752, column: 7)
!1237 = !DILocation(line: 752, column: 12, scope: !1236)
!1238 = !DILocation(line: 752, column: 9, scope: !1236)
!1239 = !DILocation(line: 752, column: 7, scope: !1192)
!1240 = !DILocation(line: 753, column: 9, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1236, file: !12, line: 752, column: 16)
!1242 = !DILocation(line: 753, column: 7, scope: !1241)
!1243 = !DILocation(line: 754, column: 3, scope: !1241)
!1244 = !DILocation(line: 962, column: 10, scope: !319, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 756, column: 5, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !12, line: 755, column: 5)
!1247 = distinct !DILexicalBlock(scope: !1236, file: !12, line: 754, column: 10)
!1248 = !DILocation(line: 760, column: 24, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 759, column: 3)
!1250 = !DILocation(line: 761, column: 44, scope: !1249)
!1251 = !DILocation(line: 762, column: 22, scope: !1249)
!1252 = !DILocation(line: 762, column: 42, scope: !1249)
!1253 = !DILocation(line: 762, column: 9, scope: !1249)
!1254 = !DILocation(line: 762, column: 7, scope: !1249)
!1255 = !DILocation(line: 764, column: 11, scope: !1192)
!1256 = !DILocation(line: 764, column: 3, scope: !1192)
!1257 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !35, file: !12, line: 767, type: !16)
!1258 = !DILocation(line: 767, column: 22, scope: !35)
!1259 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !35, file: !12, line: 767, type: !16)
!1260 = !DILocation(line: 767, column: 41, scope: !35)
!1261 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compRetStatus", scope: !35, file: !12, line: 769, type: !16)
!1262 = !DILocation(line: 769, column: 7, scope: !35)
!1263 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "returnVal", scope: !35, file: !12, line: 770, type: !16)
!1264 = !DILocation(line: 770, column: 7, scope: !35)
!1265 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lcontext", scope: !35, file: !12, line: 771, type: !16)
!1266 = !DILocation(line: 771, column: 7, scope: !35)
!1267 = !DILocation(line: 771, column: 18, scope: !35)
!1268 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp7", scope: !35, file: !12, line: 772, type: !6)
!1269 = !DILocation(line: 772, column: 17, scope: !35)
!1270 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp8", scope: !35, file: !12, line: 773, type: !4)
!1271 = !DILocation(line: 773, column: 8, scope: !35)
!1272 = !DILocation(line: 774, column: 7, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !12, line: 774, column: 7)
!1274 = distinct !DILexicalBlock(scope: !35, file: !12, line: 775, column: 3)
!1275 = !DILocation(line: 582, column: 20, scope: !25, inlinedAt: !1276)
!1276 = distinct !DILocation(line: 640, column: 3, scope: !826, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 776, column: 21, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !12, line: 775, column: 5)
!1279 = distinct !DILexicalBlock(scope: !1273, file: !12, line: 774, column: 23)
!1280 = !DILocation(line: 582, column: 32, scope: !25, inlinedAt: !1276)
!1281 = !DILocation(line: 582, column: 48, scope: !25, inlinedAt: !1276)
!1282 = !DILocation(line: 583, column: 7, scope: !25, inlinedAt: !1276)
!1283 = !DILocation(line: 634, column: 27, scope: !31, inlinedAt: !1277)
!1284 = !DILocation(line: 634, column: 46, scope: !31, inlinedAt: !1277)
!1285 = !DILocation(line: 634, column: 56, scope: !31, inlinedAt: !1277)
!1286 = !DILocation(line: 635, column: 7, scope: !31, inlinedAt: !1277)
!1287 = !DILocation(line: 774, column: 7, scope: !1274)
!1288 = !DILocation(line: 776, column: 39, scope: !1278)
!1289 = !DILocation(line: 776, column: 53, scope: !1278)
!1290 = !DILocation(line: 776, column: 58, scope: !1278)
!1291 = !DILocation(line: 776, column: 21, scope: !1278)
!1292 = !DILocation(line: 639, column: 11, scope: !826, inlinedAt: !1277)
!1293 = !DILocation(line: 639, column: 9, scope: !826, inlinedAt: !1277)
!1294 = !DILocation(line: 640, column: 14, scope: !826, inlinedAt: !1277)
!1295 = !DILocation(line: 640, column: 3, scope: !826, inlinedAt: !1277)
!1296 = !DILocation(line: 583, column: 11, scope: !25, inlinedAt: !1276)
!1297 = !DILocation(line: 586, column: 18, scope: !856, inlinedAt: !1276)
!1298 = !DILocation(line: 587, column: 11, scope: !856, inlinedAt: !1276)
!1299 = !DILocation(line: 587, column: 3, scope: !856, inlinedAt: !1276)
!1300 = !DILocation(line: 642, column: 3, scope: !827, inlinedAt: !1277)
!1301 = !DILocation(line: 776, column: 19, scope: !1278)
!1302 = !DILocation(line: 778, column: 34, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1279, file: !12, line: 778, column: 5)
!1304 = !DILocation(line: 778, column: 18, scope: !1303)
!1305 = !DILocation(line: 778, column: 16, scope: !1303)
!1306 = !DILocation(line: 778, column: 9, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1303, file: !12, line: 778, column: 9)
!1308 = !DILocation(line: 778, column: 20, scope: !1307)
!1309 = !DILocation(line: 778, column: 9, scope: !1303)
!1310 = !DILocation(line: 487, column: 7, scope: !793, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 780, column: 7, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !12, line: 779, column: 7)
!1313 = distinct !DILexicalBlock(scope: !1307, file: !12, line: 778, column: 36)
!1314 = !DILocation(line: 487, column: 12, scope: !793, inlinedAt: !1311)
!1315 = !DILocation(line: 487, column: 9, scope: !793, inlinedAt: !1311)
!1316 = !DILocation(line: 487, column: 7, scope: !794, inlinedAt: !1311)
!1317 = !DILocation(line: 962, column: 10, scope: !319, inlinedAt: !1318)
!1318 = distinct !DILocation(line: 491, column: 5, scope: !804, inlinedAt: !1311)
!1319 = !DILocation(line: 488, column: 9, scope: !799, inlinedAt: !1311)
!1320 = !DILocation(line: 488, column: 7, scope: !799, inlinedAt: !1311)
!1321 = !DILocation(line: 782, column: 5, scope: !1313)
!1322 = !DILocation(line: 784, column: 3, scope: !1279)
!1323 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_9", scope: !1274, file: !12, line: 788, type: !16)
!1324 = !DILocation(line: 788, column: 7, scope: !1274)
!1325 = !DILocation(line: 789, column: 15, scope: !1274)
!1326 = !DILocation(line: 789, column: 13, scope: !1274)
!1327 = !DILocation(line: 790, column: 7, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1274, file: !12, line: 790, column: 7)
!1329 = !DILocation(line: 790, column: 17, scope: !1328)
!1330 = !DILocation(line: 790, column: 7, scope: !1274)
!1331 = !DILocation(line: 791, column: 5, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1328, file: !12, line: 790, column: 23)
!1333 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_10", scope: !1334, file: !12, line: 791, type: !16)
!1334 = distinct !DILexicalBlock(scope: !1328, file: !12, line: 792, column: 10)
!1335 = !DILocation(line: 791, column: 9, scope: !1334)
!1336 = !DILocation(line: 792, column: 18, scope: !1334)
!1337 = !DILocation(line: 792, column: 16, scope: !1334)
!1338 = !DILocation(line: 793, column: 9, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1334, file: !12, line: 793, column: 9)
!1340 = !DILocation(line: 793, column: 20, scope: !1339)
!1341 = !DILocation(line: 793, column: 9, scope: !1334)
!1342 = !DILocation(line: 794, column: 7, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1339, file: !12, line: 793, column: 26)
!1344 = !DILocation(line: 796, column: 7, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1339, file: !12, line: 795, column: 12)
!1346 = !DILocation(line: 796, column: 11, scope: !1345)
!1347 = !DILocation(line: 796, column: 14, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1345, file: !12, line: 796, column: 11)
!1349 = !DILocation(line: 798, column: 19, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1348, file: !12, line: 796, column: 14)
!1351 = !DILocation(line: 799, column: 9, scope: !1350)
!1352 = !DILocation(line: 801, column: 19, scope: !1350)
!1353 = !DILocation(line: 802, column: 9, scope: !1350)
!1354 = !DILocation(line: 804, column: 19, scope: !1350)
!1355 = !DILocation(line: 805, column: 9, scope: !1350)
!1356 = !DILocation(line: 806, column: 14, scope: !1348)
!1357 = !DILocation(line: 812, column: 7, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1274, file: !12, line: 812, column: 7)
!1359 = !DILocation(line: 812, column: 12, scope: !1358)
!1360 = !DILocation(line: 812, column: 9, scope: !1358)
!1361 = !DILocation(line: 812, column: 7, scope: !1274)
!1362 = !DILocation(line: 813, column: 9, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1358, file: !12, line: 812, column: 16)
!1364 = !DILocation(line: 813, column: 7, scope: !1363)
!1365 = !DILocation(line: 814, column: 25, scope: !1363)
!1366 = !DILocation(line: 814, column: 23, scope: !1363)
!1367 = !DILocation(line: 815, column: 3, scope: !1363)
!1368 = !DILocation(line: 816, column: 9, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !12, line: 816, column: 9)
!1370 = distinct !DILexicalBlock(scope: !1358, file: !12, line: 815, column: 10)
!1371 = !DILocation(line: 816, column: 14, scope: !1369)
!1372 = !DILocation(line: 816, column: 11, scope: !1369)
!1373 = !DILocation(line: 816, column: 9, scope: !1370)
!1374 = !DILocation(line: 817, column: 27, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !12, line: 817, column: 7)
!1376 = distinct !DILexicalBlock(scope: !1369, file: !12, line: 816, column: 20)
!1377 = !DILocation(line: 817, column: 20, scope: !1375)
!1378 = !DILocation(line: 817, column: 18, scope: !1375)
!1379 = !DILocation(line: 817, column: 11, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1375, file: !12, line: 817, column: 11)
!1381 = !DILocation(line: 817, column: 22, scope: !1380)
!1382 = !DILocation(line: 817, column: 11, scope: !1375)
!1383 = !DILocation(line: 818, column: 13, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1380, file: !12, line: 817, column: 31)
!1385 = !DILocation(line: 818, column: 11, scope: !1384)
!1386 = !DILocation(line: 819, column: 29, scope: !1384)
!1387 = !DILocation(line: 819, column: 27, scope: !1384)
!1388 = !DILocation(line: 820, column: 7, scope: !1384)
!1389 = !DILocation(line: 821, column: 13, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1380, file: !12, line: 820, column: 14)
!1391 = !DILocation(line: 821, column: 11, scope: !1390)
!1392 = !DILocation(line: 822, column: 29, scope: !1390)
!1393 = !DILocation(line: 822, column: 27, scope: !1390)
!1394 = !DILocation(line: 825, column: 5, scope: !1376)
!1395 = !DILocation(line: 825, column: 11, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !12, line: 825, column: 11)
!1397 = distinct !DILexicalBlock(scope: !1369, file: !12, line: 825, column: 12)
!1398 = !DILocation(line: 825, column: 16, scope: !1396)
!1399 = !DILocation(line: 825, column: 13, scope: !1396)
!1400 = !DILocation(line: 825, column: 11, scope: !1397)
!1401 = !DILocation(line: 826, column: 13, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1396, file: !12, line: 825, column: 23)
!1403 = !DILocation(line: 826, column: 11, scope: !1402)
!1404 = !DILocation(line: 827, column: 29, scope: !1402)
!1405 = !DILocation(line: 827, column: 27, scope: !1402)
!1406 = !DILocation(line: 828, column: 7, scope: !1402)
!1407 = !DILocation(line: 962, column: 10, scope: !319, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 830, column: 9, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !12, line: 829, column: 9)
!1410 = distinct !DILexicalBlock(scope: !1396, file: !12, line: 828, column: 14)
!1411 = !DILocation(line: 835, column: 11, scope: !1274)
!1412 = !DILocation(line: 835, column: 3, scope: !1274)
!1413 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !36, file: !12, line: 838, type: !16)
!1414 = !DILocation(line: 838, column: 30, scope: !36)
!1415 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !36, file: !12, line: 838, type: !16)
!1416 = !DILocation(line: 838, column: 49, scope: !36)
!1417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !36, file: !12, line: 839, type: !16)
!1418 = !DILocation(line: 839, column: 7, scope: !36)
!1419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack__Parameters__DeviceIoControl__IoControlCode", scope: !36, file: !12, line: 840, type: !16)
!1420 = !DILocation(line: 840, column: 7, scope: !36)
!1421 = !DILocation(line: 840, column: 62, scope: !36)
!1422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt__UpperConnectData__ClassService", scope: !36, file: !12, line: 841, type: !16)
!1423 = !DILocation(line: 841, column: 7, scope: !36)
!1424 = !DILocation(line: 841, column: 48, scope: !36)
!1425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack__Parameters__DeviceIoControl__InputBufferLength", scope: !36, file: !12, line: 842, type: !16)
!1426 = !DILocation(line: 842, column: 7, scope: !36)
!1427 = !DILocation(line: 842, column: 66, scope: !36)
!1428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__CONNECT_DATA", scope: !36, file: !12, line: 843, type: !16)
!1429 = !DILocation(line: 843, column: 7, scope: !36)
!1430 = !DILocation(line: 843, column: 30, scope: !36)
!1431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack__Parameters__DeviceIoControl__Type3InputBuffer", scope: !36, file: !12, line: 844, type: !16)
!1432 = !DILocation(line: 844, column: 7, scope: !36)
!1433 = !DILocation(line: 844, column: 65, scope: !36)
!1434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__INTERNAL_I8042_HOOK_KEYBOARD", scope: !36, file: !12, line: 845, type: !16)
!1435 = !DILocation(line: 845, column: 7, scope: !36)
!1436 = !DILocation(line: 845, column: 46, scope: !36)
!1437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hookKeyboard__InitializationRoutine", scope: !36, file: !12, line: 846, type: !16)
!1438 = !DILocation(line: 846, column: 7, scope: !36)
!1439 = !DILocation(line: 846, column: 45, scope: !36)
!1440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hookKeyboard__IsrRoutine", scope: !36, file: !12, line: 847, type: !16)
!1441 = !DILocation(line: 847, column: 7, scope: !36)
!1442 = !DILocation(line: 847, column: 34, scope: !36)
!1443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !36, file: !12, line: 848, type: !16)
!1444 = !DILocation(line: 848, column: 7, scope: !36)
!1445 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hookKeyboard", scope: !36, file: !12, line: 849, type: !16)
!1446 = !DILocation(line: 849, column: 7, scope: !36)
!1447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "connectData", scope: !36, file: !12, line: 850, type: !16)
!1448 = !DILocation(line: 850, column: 7, scope: !36)
!1449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !36, file: !12, line: 851, type: !16)
!1450 = !DILocation(line: 851, column: 7, scope: !36)
!1451 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !36, file: !12, line: 852, type: !16)
!1452 = !DILocation(line: 852, column: 7, scope: !36)
!1453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp17", scope: !36, file: !12, line: 853, type: !16)
!1454 = !DILocation(line: 853, column: 7, scope: !36)
!1455 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp18", scope: !36, file: !12, line: 854, type: !16)
!1456 = !DILocation(line: 854, column: 7, scope: !36)
!1457 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp19", scope: !36, file: !12, line: 855, type: !16)
!1458 = !DILocation(line: 855, column: 7, scope: !36)
!1459 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp20", scope: !36, file: !12, line: 856, type: !16)
!1460 = !DILocation(line: 856, column: 7, scope: !36)
!1461 = !DILocation(line: 856, column: 21, scope: !36)
!1462 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp21", scope: !36, file: !12, line: 857, type: !16)
!1463 = !DILocation(line: 857, column: 7, scope: !36)
!1464 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp22", scope: !36, file: !12, line: 858, type: !16)
!1465 = !DILocation(line: 858, column: 7, scope: !36)
!1466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp23", scope: !36, file: !12, line: 859, type: !16)
!1467 = !DILocation(line: 859, column: 7, scope: !36)
!1468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp24", scope: !36, file: !12, line: 860, type: !16)
!1469 = !DILocation(line: 860, column: 7, scope: !36)
!1470 = !DILocation(line: 860, column: 21, scope: !36)
!1471 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp25", scope: !36, file: !12, line: 861, type: !16)
!1472 = !DILocation(line: 861, column: 7, scope: !36)
!1473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp26", scope: !36, file: !12, line: 862, type: !16)
!1474 = !DILocation(line: 862, column: 7, scope: !36)
!1475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp27", scope: !36, file: !12, line: 863, type: !16)
!1476 = !DILocation(line: 863, column: 7, scope: !36)
!1477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp28", scope: !36, file: !12, line: 864, type: !16)
!1478 = !DILocation(line: 864, column: 7, scope: !36)
!1479 = !DILocation(line: 864, column: 21, scope: !36)
!1480 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp29", scope: !36, file: !12, line: 865, type: !16)
!1481 = !DILocation(line: 865, column: 7, scope: !36)
!1482 = !DILocation(line: 865, column: 21, scope: !36)
!1483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp30", scope: !36, file: !12, line: 866, type: !16)
!1484 = !DILocation(line: 866, column: 7, scope: !36)
!1485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp31", scope: !36, file: !12, line: 867, type: !16)
!1486 = !DILocation(line: 867, column: 7, scope: !36)
!1487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp32", scope: !36, file: !12, line: 868, type: !16)
!1488 = !DILocation(line: 868, column: 7, scope: !36)
!1489 = !DILocation(line: 868, column: 21, scope: !36)
!1490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp33", scope: !36, file: !12, line: 869, type: !16)
!1491 = !DILocation(line: 869, column: 7, scope: !36)
!1492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp34", scope: !36, file: !12, line: 870, type: !16)
!1493 = !DILocation(line: 870, column: 7, scope: !36)
!1494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp35", scope: !36, file: !12, line: 871, type: !16)
!1495 = !DILocation(line: 871, column: 7, scope: !36)
!1496 = !DILocation(line: 871, column: 21, scope: !36)
!1497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp36", scope: !36, file: !12, line: 872, type: !16)
!1498 = !DILocation(line: 872, column: 7, scope: !36)
!1499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp37", scope: !36, file: !12, line: 873, type: !16)
!1500 = !DILocation(line: 873, column: 7, scope: !36)
!1501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp38", scope: !36, file: !12, line: 874, type: !16)
!1502 = !DILocation(line: 874, column: 7, scope: !36)
!1503 = !DILocation(line: 874, column: 21, scope: !36)
!1504 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp39", scope: !36, file: !12, line: 875, type: !16)
!1505 = !DILocation(line: 875, column: 7, scope: !36)
!1506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp40", scope: !36, file: !12, line: 876, type: !16)
!1507 = !DILocation(line: 876, column: 7, scope: !36)
!1508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp41", scope: !36, file: !12, line: 877, type: !16)
!1509 = !DILocation(line: 877, column: 7, scope: !36)
!1510 = !DILocation(line: 877, column: 21, scope: !36)
!1511 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp42", scope: !36, file: !12, line: 878, type: !16)
!1512 = !DILocation(line: 878, column: 7, scope: !36)
!1513 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp43", scope: !36, file: !12, line: 879, type: !16)
!1514 = !DILocation(line: 879, column: 7, scope: !36)
!1515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp44", scope: !36, file: !12, line: 880, type: !16)
!1516 = !DILocation(line: 880, column: 7, scope: !36)
!1517 = !DILocation(line: 880, column: 21, scope: !36)
!1518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp45", scope: !36, file: !12, line: 881, type: !16)
!1519 = !DILocation(line: 881, column: 7, scope: !36)
!1520 = !DILocation(line: 855, column: 10, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !36, file: !12, line: 883, column: 3)
!1522 = !DILocation(line: 856, column: 30, scope: !1521)
!1523 = !DILocation(line: 857, column: 7, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !12, line: 857, column: 7)
!1525 = distinct !DILexicalBlock(scope: !1521, file: !12, line: 857, column: 3)
!1526 = !DILocation(line: 857, column: 63, scope: !1524)
!1527 = !DILocation(line: 857, column: 60, scope: !1524)
!1528 = !DILocation(line: 568, column: 29, scope: !22, inlinedAt: !1529)
!1529 = distinct !DILocation(line: 945, column: 5, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !12, line: 942, column: 5)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !12, line: 941, column: 19)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !12, line: 941, column: 7)
!1533 = distinct !DILexicalBlock(scope: !1521, file: !12, line: 950, column: 3)
!1534 = !DILocation(line: 568, column: 39, scope: !22, inlinedAt: !1529)
!1535 = !DILocation(line: 857, column: 7, scope: !1525)
!1536 = !DILocation(line: 858, column: 5, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1524, file: !12, line: 857, column: 76)
!1538 = !DILocation(line: 860, column: 9, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !12, line: 860, column: 9)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !12, line: 860, column: 5)
!1541 = distinct !DILexicalBlock(scope: !1524, file: !12, line: 859, column: 10)
!1542 = !DILocation(line: 860, column: 65, scope: !1539)
!1543 = !DILocation(line: 860, column: 62, scope: !1539)
!1544 = !DILocation(line: 860, column: 9, scope: !1540)
!1545 = !DILocation(line: 861, column: 7, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1539, file: !12, line: 860, column: 78)
!1547 = !DILocation(line: 863, column: 11, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !12, line: 863, column: 11)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !12, line: 863, column: 7)
!1550 = distinct !DILexicalBlock(scope: !1539, file: !12, line: 862, column: 12)
!1551 = !DILocation(line: 863, column: 67, scope: !1548)
!1552 = !DILocation(line: 863, column: 64, scope: !1548)
!1553 = !DILocation(line: 863, column: 11, scope: !1549)
!1554 = !DILocation(line: 864, column: 9, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1548, file: !12, line: 863, column: 80)
!1556 = !DILocation(line: 866, column: 13, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !12, line: 866, column: 13)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !12, line: 866, column: 9)
!1559 = distinct !DILexicalBlock(scope: !1548, file: !12, line: 865, column: 14)
!1560 = !DILocation(line: 866, column: 69, scope: !1557)
!1561 = !DILocation(line: 866, column: 66, scope: !1557)
!1562 = !DILocation(line: 866, column: 13, scope: !1558)
!1563 = !DILocation(line: 867, column: 11, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1557, file: !12, line: 866, column: 82)
!1565 = !DILocation(line: 869, column: 15, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !12, line: 869, column: 15)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !12, line: 869, column: 11)
!1568 = distinct !DILexicalBlock(scope: !1557, file: !12, line: 868, column: 16)
!1569 = !DILocation(line: 869, column: 71, scope: !1566)
!1570 = !DILocation(line: 869, column: 68, scope: !1566)
!1571 = !DILocation(line: 869, column: 15, scope: !1567)
!1572 = !DILocation(line: 870, column: 13, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1566, file: !12, line: 869, column: 84)
!1574 = !DILocation(line: 872, column: 17, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !12, line: 872, column: 17)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !12, line: 872, column: 13)
!1577 = distinct !DILexicalBlock(scope: !1566, file: !12, line: 871, column: 18)
!1578 = !DILocation(line: 872, column: 73, scope: !1575)
!1579 = !DILocation(line: 872, column: 70, scope: !1575)
!1580 = !DILocation(line: 872, column: 17, scope: !1576)
!1581 = !DILocation(line: 873, column: 15, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1575, file: !12, line: 872, column: 86)
!1583 = !DILocation(line: 875, column: 19, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !12, line: 875, column: 19)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !12, line: 875, column: 15)
!1586 = distinct !DILexicalBlock(scope: !1575, file: !12, line: 874, column: 20)
!1587 = !DILocation(line: 875, column: 75, scope: !1584)
!1588 = !DILocation(line: 875, column: 72, scope: !1584)
!1589 = !DILocation(line: 875, column: 19, scope: !1585)
!1590 = !DILocation(line: 876, column: 17, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1584, file: !12, line: 875, column: 88)
!1592 = !DILocation(line: 878, column: 21, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !12, line: 878, column: 21)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !12, line: 878, column: 17)
!1595 = distinct !DILexicalBlock(scope: !1584, file: !12, line: 877, column: 22)
!1596 = !DILocation(line: 878, column: 77, scope: !1593)
!1597 = !DILocation(line: 878, column: 74, scope: !1593)
!1598 = !DILocation(line: 878, column: 21, scope: !1594)
!1599 = !DILocation(line: 879, column: 19, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1593, file: !12, line: 878, column: 90)
!1601 = !DILocation(line: 881, column: 23, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !12, line: 881, column: 23)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 881, column: 19)
!1604 = distinct !DILexicalBlock(scope: !1593, file: !12, line: 880, column: 24)
!1605 = !DILocation(line: 881, column: 79, scope: !1602)
!1606 = !DILocation(line: 881, column: 76, scope: !1602)
!1607 = !DILocation(line: 881, column: 23, scope: !1603)
!1608 = !DILocation(line: 882, column: 21, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1602, file: !12, line: 881, column: 92)
!1610 = !DILocation(line: 884, column: 25, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1602, file: !12, line: 883, column: 26)
!1612 = !DILocation(line: 884, column: 28, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1611, file: !12, line: 884, column: 25)
!1614 = !DILocation(line: 886, column: 27, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !12, line: 886, column: 27)
!1616 = distinct !DILexicalBlock(scope: !1613, file: !12, line: 884, column: 28)
!1617 = !DILocation(line: 886, column: 66, scope: !1615)
!1618 = !DILocation(line: 886, column: 27, scope: !1616)
!1619 = !DILocation(line: 887, column: 32, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1615, file: !12, line: 886, column: 72)
!1621 = !DILocation(line: 888, column: 25, scope: !1620)
!1622 = !DILocation(line: 890, column: 29, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !12, line: 890, column: 29)
!1624 = distinct !DILexicalBlock(scope: !1615, file: !12, line: 889, column: 30)
!1625 = !DILocation(line: 890, column: 88, scope: !1623)
!1626 = !DILocation(line: 890, column: 86, scope: !1623)
!1627 = !DILocation(line: 890, column: 29, scope: !1624)
!1628 = !DILocation(line: 891, column: 34, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1623, file: !12, line: 890, column: 110)
!1630 = !DILocation(line: 892, column: 27, scope: !1629)
!1631 = !DILocation(line: 897, column: 37, scope: !1616)
!1632 = !DILocation(line: 897, column: 35, scope: !1616)
!1633 = !DILocation(line: 898, column: 23, scope: !1616)
!1634 = !DILocation(line: 900, column: 30, scope: !1616)
!1635 = !DILocation(line: 901, column: 23, scope: !1616)
!1636 = !DILocation(line: 903, column: 27, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1616, file: !12, line: 903, column: 27)
!1638 = !DILocation(line: 903, column: 86, scope: !1637)
!1639 = !DILocation(line: 903, column: 84, scope: !1637)
!1640 = !DILocation(line: 903, column: 27, scope: !1616)
!1641 = !DILocation(line: 904, column: 32, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1637, file: !12, line: 903, column: 124)
!1643 = !DILocation(line: 905, column: 25, scope: !1642)
!1644 = !DILocation(line: 909, column: 38, scope: !1616)
!1645 = !DILocation(line: 909, column: 36, scope: !1616)
!1646 = !DILocation(line: 910, column: 27, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1616, file: !12, line: 910, column: 27)
!1648 = !DILocation(line: 910, column: 27, scope: !1616)
!1649 = !DILocation(line: 912, column: 23, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1647, file: !12, line: 910, column: 64)
!1651 = !DILocation(line: 915, column: 27, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1616, file: !12, line: 915, column: 27)
!1653 = !DILocation(line: 915, column: 27, scope: !1616)
!1654 = !DILocation(line: 917, column: 23, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1652, file: !12, line: 915, column: 53)
!1656 = !DILocation(line: 920, column: 30, scope: !1616)
!1657 = !DILocation(line: 921, column: 23, scope: !1616)
!1658 = !DILocation(line: 928, column: 23, scope: !1616)
!1659 = !DILocation(line: 929, column: 28, scope: !1613)
!1660 = !DILocation(line: 941, column: 7, scope: !1532)
!1661 = !DILocation(line: 941, column: 14, scope: !1532)
!1662 = !DILocation(line: 941, column: 7, scope: !1533)
!1663 = !DILocation(line: 943, column: 29, scope: !1530)
!1664 = !DILocation(line: 943, column: 27, scope: !1530)
!1665 = !DILocation(line: 944, column: 16, scope: !1530)
!1666 = !DILocation(line: 944, column: 14, scope: !1530)
!1667 = !DILocation(line: 945, column: 24, scope: !1530)
!1668 = !DILocation(line: 945, column: 5, scope: !1530)
!1669 = !DILocation(line: 572, column: 7, scope: !385, inlinedAt: !1529)
!1670 = !DILocation(line: 572, column: 12, scope: !385, inlinedAt: !1529)
!1671 = !DILocation(line: 572, column: 9, scope: !385, inlinedAt: !1529)
!1672 = !DILocation(line: 572, column: 7, scope: !386, inlinedAt: !1529)
!1673 = !DILocation(line: 962, column: 10, scope: !319, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 576, column: 5, scope: !392, inlinedAt: !1529)
!1675 = !DILocation(line: 573, column: 9, scope: !395, inlinedAt: !1529)
!1676 = !DILocation(line: 573, column: 7, scope: !395, inlinedAt: !1529)
!1677 = !DILocation(line: 579, column: 3, scope: !386, inlinedAt: !1529)
!1678 = !DILocation(line: 947, column: 13, scope: !1531)
!1679 = !DILocation(line: 947, column: 5, scope: !1531)
!1680 = !DILocation(line: 952, column: 38, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1521, file: !12, line: 950, column: 3)
!1682 = !DILocation(line: 952, column: 52, scope: !1681)
!1683 = !DILocation(line: 952, column: 9, scope: !1681)
!1684 = !DILocation(line: 952, column: 7, scope: !1681)
!1685 = !DILocation(line: 954, column: 11, scope: !1521)
!1686 = !DILocation(line: 954, column: 3, scope: !1521)
!1687 = !DILocation(line: 956, column: 1, scope: !36)
