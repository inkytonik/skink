; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

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

; Function Attrs: nounwind ssp uwtable
define void @stub_driver_init() #0 {
  %1 = load i32, i32* @NP, align 4, !dbg !53
  store i32 %1, i32* @s, align 4, !dbg !55
  store i32 0, i32* @pended, align 4, !dbg !56
  store i32 0, i32* @compFptr, align 4, !dbg !57
  store i32 0, i32* @compRegistered, align 4, !dbg !58
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !59
  store i32 0, i32* @setEventCalled, align 4, !dbg !60
  store i32 0, i32* @customIrp, align 4, !dbg !61
  ret void, !dbg !62
}

; Function Attrs: nounwind ssp uwtable
define void @_BLAST_init() #0 {
  store i32 0, i32* @UNLOADED, align 4, !dbg !63
  store i32 1, i32* @NP, align 4, !dbg !65
  store i32 2, i32* @DC, align 4, !dbg !66
  store i32 3, i32* @SKIP1, align 4, !dbg !67
  store i32 4, i32* @SKIP2, align 4, !dbg !68
  store i32 5, i32* @MPR1, align 4, !dbg !69
  store i32 6, i32* @MPR3, align 4, !dbg !70
  store i32 7, i32* @IPC, align 4, !dbg !71
  %1 = load i32, i32* @UNLOADED, align 4, !dbg !72
  store i32 %1, i32* @s, align 4, !dbg !73
  store i32 0, i32* @pended, align 4, !dbg !74
  store i32 0, i32* @compFptr, align 4, !dbg !75
  store i32 0, i32* @compRegistered, align 4, !dbg !76
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !77
  store i32 0, i32* @setEventCalled, align 4, !dbg !78
  store i32 0, i32* @customIrp, align 4, !dbg !79
  ret void, !dbg !80
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
  call void @llvm.dbg.declare(metadata i32* %3, metadata !81, metadata !82), !dbg !83
  store i32 %Irp, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !84, metadata !82), !dbg !85
  call void @llvm.dbg.declare(metadata i32* %devExt, metadata !86, metadata !82), !dbg !87
  call void @llvm.dbg.declare(metadata i32* %irpStack, metadata !88, metadata !82), !dbg !89
  call void @llvm.dbg.declare(metadata i32* %status, metadata !90, metadata !82), !dbg !91
  call void @llvm.dbg.declare(metadata i32* %event, metadata !92, metadata !82), !dbg !93
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !94
  store i32 %5, i32* %event, align 4, !dbg !93
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !95, metadata !82), !dbg !96
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !97
  store i32 %6, i32* %DeviceObject__DeviceExtension, align 4, !dbg !96
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !98, metadata !82), !dbg !99
  %7 = call i32 @__VERIFIER_nondet_int(), !dbg !100
  store i32 %7, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %irpStack__MinorFunction, metadata !101, metadata !82), !dbg !102
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !103
  store i32 %8, i32* %irpStack__MinorFunction, align 4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %devExt__TopOfStack, metadata !104, metadata !82), !dbg !105
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !106
  store i32 %9, i32* %devExt__TopOfStack, align 4, !dbg !105
  call void @llvm.dbg.declare(metadata i32* %devExt__Started, metadata !107, metadata !82), !dbg !108
  call void @llvm.dbg.declare(metadata i32* %devExt__Removed, metadata !109, metadata !82), !dbg !110
  call void @llvm.dbg.declare(metadata i32* %devExt__SurpriseRemoved, metadata !111, metadata !82), !dbg !112
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !113, metadata !82), !dbg !114
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !115, metadata !82), !dbg !116
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !117, metadata !82), !dbg !118
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !119
  store i32 %10, i32* %Irp__CurrentLocation, align 4, !dbg !118
  call void @llvm.dbg.declare(metadata i32* %irpSp, metadata !120, metadata !82), !dbg !121
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp, metadata !122, metadata !82), !dbg !123
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp__Control, metadata !124, metadata !82), !dbg !125
  call void @llvm.dbg.declare(metadata i32* %irpSp___0, metadata !126, metadata !82), !dbg !127
  call void @llvm.dbg.declare(metadata i32* %irpSp__Context, metadata !128, metadata !82), !dbg !129
  call void @llvm.dbg.declare(metadata i32* %irpSp__Control, metadata !130, metadata !82), !dbg !131
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp23, metadata !132, metadata !82), !dbg !133
  store i32 0, i32* %status, align 4, !dbg !134
  %11 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !136
  store i32 %11, i32* %devExt, align 4, !dbg !137
  %12 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !138
  store i32 %12, i32* %irpStack, align 4, !dbg !139
  %13 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !140
  %14 = icmp eq i32 %13, 0, !dbg !142
  call void @llvm.dbg.declare(metadata i32* %1, metadata !143, metadata !82), !dbg !144
  call void @llvm.dbg.declare(metadata i32* %2, metadata !190, metadata !82), !dbg !191
  br i1 %14, label %15, label %16, !dbg !192

; <label>:15                                      ; preds = %0
  br label %99, !dbg !193

; <label>:16                                      ; preds = %0
  %17 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !195
  %18 = icmp eq i32 %17, 23, !dbg !196
  br i1 %18, label %19, label %20, !dbg !197

; <label>:19                                      ; preds = %16
  br label %149, !dbg !198

; <label>:20                                      ; preds = %16
  %21 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !200
  %22 = icmp eq i32 %21, 2, !dbg !201
  br i1 %22, label %23, label %24, !dbg !202

; <label>:23                                      ; preds = %20
  br label %164, !dbg !203

; <label>:24                                      ; preds = %20
  %25 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !205
  %26 = icmp eq i32 %25, 1, !dbg !206
  br i1 %26, label %27, label %28, !dbg !207

; <label>:27                                      ; preds = %24
  br label %179, !dbg !208

; <label>:28                                      ; preds = %24
  %29 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !210
  %30 = icmp eq i32 %29, 5, !dbg !211
  br i1 %30, label %31, label %32, !dbg !212

; <label>:31                                      ; preds = %28
  br label %179, !dbg !213

; <label>:32                                      ; preds = %28
  %33 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !215
  %34 = icmp eq i32 %33, 3, !dbg !216
  br i1 %34, label %35, label %36, !dbg !217

; <label>:35                                      ; preds = %32
  br label %179, !dbg !218

; <label>:36                                      ; preds = %32
  %37 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !220
  %38 = icmp eq i32 %37, 6, !dbg !221
  br i1 %38, label %39, label %40, !dbg !222

; <label>:39                                      ; preds = %36
  br label %179, !dbg !223

; <label>:40                                      ; preds = %36
  %41 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !225
  %42 = icmp eq i32 %41, 13, !dbg !226
  br i1 %42, label %43, label %44, !dbg !227

; <label>:43                                      ; preds = %40
  br label %179, !dbg !228

; <label>:44                                      ; preds = %40
  %45 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !230
  %46 = icmp eq i32 %45, 4, !dbg !231
  br i1 %46, label %47, label %48, !dbg !232

; <label>:47                                      ; preds = %44
  br label %179, !dbg !233

; <label>:48                                      ; preds = %44
  %49 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !235
  %50 = icmp eq i32 %49, 7, !dbg !236
  br i1 %50, label %51, label %52, !dbg !237

; <label>:51                                      ; preds = %48
  br label %179, !dbg !238

; <label>:52                                      ; preds = %48
  %53 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !240
  %54 = icmp eq i32 %53, 8, !dbg !241
  br i1 %54, label %55, label %56, !dbg !242

; <label>:55                                      ; preds = %52
  br label %179, !dbg !243

; <label>:56                                      ; preds = %52
  %57 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !245
  %58 = icmp eq i32 %57, 9, !dbg !246
  br i1 %58, label %59, label %60, !dbg !247

; <label>:59                                      ; preds = %56
  br label %179, !dbg !248

; <label>:60                                      ; preds = %56
  %61 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !250
  %62 = icmp eq i32 %61, 12, !dbg !251
  br i1 %62, label %63, label %64, !dbg !252

; <label>:63                                      ; preds = %60
  br label %179, !dbg !253

; <label>:64                                      ; preds = %60
  %65 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !255
  %66 = icmp eq i32 %65, 10, !dbg !256
  br i1 %66, label %67, label %68, !dbg !257

; <label>:67                                      ; preds = %64
  br label %179, !dbg !258

; <label>:68                                      ; preds = %64
  %69 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !260
  %70 = icmp eq i32 %69, 11, !dbg !261
  br i1 %70, label %71, label %72, !dbg !262

; <label>:71                                      ; preds = %68
  br label %179, !dbg !263

; <label>:72                                      ; preds = %68
  %73 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !265
  %74 = icmp eq i32 %73, 15, !dbg !266
  br i1 %74, label %75, label %76, !dbg !267

; <label>:75                                      ; preds = %72
  br label %179, !dbg !268

; <label>:76                                      ; preds = %72
  %77 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !270
  %78 = icmp eq i32 %77, 16, !dbg !271
  br i1 %78, label %79, label %80, !dbg !272

; <label>:79                                      ; preds = %76
  br label %179, !dbg !273

; <label>:80                                      ; preds = %76
  %81 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !275
  %82 = icmp eq i32 %81, 17, !dbg !276
  br i1 %82, label %83, label %84, !dbg !277

; <label>:83                                      ; preds = %80
  br label %179, !dbg !278

; <label>:84                                      ; preds = %80
  %85 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !280
  %86 = icmp eq i32 %85, 18, !dbg !281
  br i1 %86, label %87, label %88, !dbg !282

; <label>:87                                      ; preds = %84
  br label %179, !dbg !283

; <label>:88                                      ; preds = %84
  %89 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !285
  %90 = icmp eq i32 %89, 19, !dbg !286
  br i1 %90, label %91, label %92, !dbg !287

; <label>:91                                      ; preds = %88
  br label %179, !dbg !288

; <label>:92                                      ; preds = %88
  %93 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !290
  %94 = icmp eq i32 %93, 20, !dbg !291
  br i1 %94, label %95, label %96, !dbg !292

; <label>:95                                      ; preds = %92
  br label %179, !dbg !293

; <label>:96                                      ; preds = %92
  br label %179, !dbg !295
                                                  ; No predecessors!
  br i1 false, label %98, label %194, !dbg !296

; <label>:98                                      ; preds = %97
  br label %99, !dbg !297

; <label>:99                                      ; preds = %98, %15
  %100 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !298
  store i32 %100, i32* %irpSp, align 4, !dbg !299
  %101 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !300
  %102 = sub nsw i32 %101, 1, !dbg !301
  store i32 %102, i32* %nextIrpSp, align 4, !dbg !302
  store i32 0, i32* %nextIrpSp__Control, align 4, !dbg !303
  %103 = load i32, i32* @s, align 4, !dbg !304
  %104 = load i32, i32* @NP, align 4, !dbg !306
  %105 = icmp ne i32 %103, %104, !dbg !307
  br i1 %105, label %106, label %107, !dbg !308

; <label>:106                                     ; preds = %99
  call void (...) @__VERIFIER_error() #5, !dbg !309
  unreachable, !dbg !309

errorFn.exit:                                     ; No predecessors!
  br label %113, !dbg !314

; <label>:107                                     ; preds = %99
  %108 = load i32, i32* @compRegistered, align 4, !dbg !315
  %109 = icmp ne i32 %108, 0, !dbg !318
  br i1 %109, label %110, label %111, !dbg !319

; <label>:110                                     ; preds = %107
  call void (...) @__VERIFIER_error() #5, !dbg !320
  unreachable, !dbg !320

errorFn.exit1:                                    ; No predecessors!
  br label %112, !dbg !324

; <label>:111                                     ; preds = %107
  store i32 1, i32* @compRegistered, align 4, !dbg !325
  br label %112

; <label>:112                                     ; preds = %111, %errorFn.exit1
  br label %113

; <label>:113                                     ; preds = %112, %errorFn.exit
  %114 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !327
  %115 = sub nsw i32 %114, 1, !dbg !329
  store i32 %115, i32* %irpSp___0, align 4, !dbg !330
  store i32 224, i32* %irpSp__Control, align 4, !dbg !331
  %116 = load i32, i32* %devExt__TopOfStack, align 4, !dbg !332
  %117 = load i32, i32* %4, align 4, !dbg !333
  %118 = call i32 @IofCallDriver(i32 %116, i32 %117), !dbg !334
  store i32 %118, i32* %status, align 4, !dbg !335
  %119 = load i32, i32* %status, align 4, !dbg !336
  %120 = sext i32 %119 to i64, !dbg !338
  store i64 %120, i64* %__cil_tmp23, align 8, !dbg !339
  %121 = load i64, i64* %__cil_tmp23, align 8, !dbg !340
  %122 = icmp eq i64 %121, 259, !dbg !342
  br i1 %122, label %123, label %128, !dbg !343

; <label>:123                                     ; preds = %113
  %124 = load i32, i32* %event, align 4, !dbg !344
  %125 = load i32, i32* @Executive, align 4, !dbg !347
  %126 = load i32, i32* @KernelMode, align 4, !dbg !348
  %127 = call i32 @KeWaitForSingleObject(i32 %124, i32 %125, i32 %126, i32 0, i32 0), !dbg !349
  br label %128, !dbg !350

; <label>:128                                     ; preds = %123, %113
  %129 = load i32, i32* %status, align 4, !dbg !351
  %130 = icmp sge i32 %129, 0, !dbg !353
  br i1 %130, label %131, label %136, !dbg !354

; <label>:131                                     ; preds = %128
  %132 = load i32, i32* @myStatus, align 4, !dbg !355
  %133 = icmp sge i32 %132, 0, !dbg !358
  br i1 %133, label %134, label %135, !dbg !359

; <label>:134                                     ; preds = %131
  store i32 1, i32* %devExt__Started, align 4, !dbg !360
  store i32 0, i32* %devExt__Removed, align 4, !dbg !362
  store i32 0, i32* %devExt__SurpriseRemoved, align 4, !dbg !363
  br label %135, !dbg !364

; <label>:135                                     ; preds = %134, %131
  br label %136, !dbg !365

; <label>:136                                     ; preds = %135, %128
  %137 = load i32, i32* %status, align 4, !dbg !366
  store i32 %137, i32* %Irp__IoStatus__Status, align 4, !dbg !367
  %138 = load i32, i32* %status, align 4, !dbg !368
  store i32 %138, i32* @myStatus, align 4, !dbg !369
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !370
  %139 = load i32, i32* %4, align 4, !dbg !371
  %140 = bitcast i32* %1 to i8*, !dbg !372
  call void @llvm.lifetime.start(i64 4, i8* %140), !dbg !372
  %141 = bitcast i32* %2 to i8*, !dbg !372
  call void @llvm.lifetime.start(i64 4, i8* %141), !dbg !372
  store i32 %139, i32* %1, align 4, !dbg !372
  store i32 0, i32* %2, align 4, !dbg !372
  %142 = load i32, i32* @s, align 4, !dbg !373
  %143 = load i32, i32* @NP, align 4, !dbg !376
  %144 = icmp eq i32 %142, %143, !dbg !377
  br i1 %144, label %IofCompleteRequest.exit, label %145, !dbg !378

; <label>:145                                     ; preds = %136
  call void (...) @__VERIFIER_error() #5, !dbg !379
  unreachable, !dbg !379

IofCompleteRequest.exit:                          ; preds = %136
  %146 = load i32, i32* @DC, align 4, !dbg !383
  store i32 %146, i32* @s, align 4, !dbg !385
  %147 = bitcast i32* %1 to i8*, !dbg !386
  call void @llvm.lifetime.end(i64 4, i8* %147), !dbg !386
  %148 = bitcast i32* %2 to i8*, !dbg !386
  call void @llvm.lifetime.end(i64 4, i8* %148), !dbg !386
  br label %195, !dbg !387

; <label>:149                                     ; preds = %19
  store i32 1, i32* %devExt__SurpriseRemoved, align 4, !dbg !388
  %150 = load i32, i32* @s, align 4, !dbg !389
  %151 = load i32, i32* @NP, align 4, !dbg !391
  %152 = icmp eq i32 %150, %151, !dbg !392
  br i1 %152, label %153, label %155, !dbg !393

; <label>:153                                     ; preds = %149
  %154 = load i32, i32* @SKIP1, align 4, !dbg !394
  store i32 %154, i32* @s, align 4, !dbg !396
  br label %156, !dbg !397

; <label>:155                                     ; preds = %149
  call void (...) @__VERIFIER_error() #5, !dbg !398
  unreachable, !dbg !398

errorFn.exit2:                                    ; No predecessors!
  br label %156

; <label>:156                                     ; preds = %errorFn.exit2, %153
  %157 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !402
  %158 = add nsw i32 %157, 1, !dbg !402
  store i32 %158, i32* %Irp__CurrentLocation, align 4, !dbg !402
  %159 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !404
  %160 = add nsw i32 %159, 1, !dbg !404
  store i32 %160, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !404
  %161 = load i32, i32* %devExt__TopOfStack, align 4, !dbg !405
  %162 = load i32, i32* %4, align 4, !dbg !406
  %163 = call i32 @IofCallDriver(i32 %161, i32 %162), !dbg !407
  store i32 %163, i32* %status, align 4, !dbg !408
  br label %195, !dbg !409

; <label>:164                                     ; preds = %23
  store i32 1, i32* %devExt__Removed, align 4, !dbg !410
  %165 = load i32, i32* @s, align 4, !dbg !411
  %166 = load i32, i32* @NP, align 4, !dbg !413
  %167 = icmp eq i32 %165, %166, !dbg !414
  br i1 %167, label %168, label %170, !dbg !415

; <label>:168                                     ; preds = %164
  %169 = load i32, i32* @SKIP1, align 4, !dbg !416
  store i32 %169, i32* @s, align 4, !dbg !418
  br label %171, !dbg !419

; <label>:170                                     ; preds = %164
  call void (...) @__VERIFIER_error() #5, !dbg !420
  unreachable, !dbg !420

errorFn.exit3:                                    ; No predecessors!
  br label %171

; <label>:171                                     ; preds = %errorFn.exit3, %168
  %172 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !424
  %173 = add nsw i32 %172, 1, !dbg !424
  store i32 %173, i32* %Irp__CurrentLocation, align 4, !dbg !424
  %174 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !426
  %175 = add nsw i32 %174, 1, !dbg !426
  store i32 %175, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !426
  %176 = load i32, i32* %devExt__TopOfStack, align 4, !dbg !427
  %177 = load i32, i32* %4, align 4, !dbg !428
  %178 = call i32 @IofCallDriver(i32 %176, i32 %177), !dbg !429
  store i32 0, i32* %status, align 4, !dbg !430
  br label %195, !dbg !431

; <label>:179                                     ; preds = %96, %95, %91, %87, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27
  %180 = load i32, i32* @s, align 4, !dbg !432
  %181 = load i32, i32* @NP, align 4, !dbg !434
  %182 = icmp eq i32 %180, %181, !dbg !435
  br i1 %182, label %183, label %185, !dbg !436

; <label>:183                                     ; preds = %179
  %184 = load i32, i32* @SKIP1, align 4, !dbg !437
  store i32 %184, i32* @s, align 4, !dbg !439
  br label %186, !dbg !440

; <label>:185                                     ; preds = %179
  call void (...) @__VERIFIER_error() #5, !dbg !441
  unreachable, !dbg !441

errorFn.exit4:                                    ; No predecessors!
  br label %186

; <label>:186                                     ; preds = %errorFn.exit4, %183
  %187 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !445
  %188 = add nsw i32 %187, 1, !dbg !445
  store i32 %188, i32* %Irp__CurrentLocation, align 4, !dbg !445
  %189 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !447
  %190 = add nsw i32 %189, 1, !dbg !447
  store i32 %190, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !447
  %191 = load i32, i32* %devExt__TopOfStack, align 4, !dbg !448
  %192 = load i32, i32* %4, align 4, !dbg !449
  %193 = call i32 @IofCallDriver(i32 %191, i32 %192), !dbg !450
  store i32 %193, i32* %status, align 4, !dbg !451
  br label %195, !dbg !452

; <label>:194                                     ; preds = %97
  br label %195, !dbg !453

; <label>:195                                     ; preds = %194, %186, %171, %156, %IofCompleteRequest.exit
  br label %196

; <label>:196                                     ; preds = %195
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
  %218 = load i32, i32* %status, align 4, !dbg !454
  ret i32 %218, !dbg !455
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind ssp uwtable
define void @errorFn() #0 {
  br label %1, !dbg !456

; <label>:1                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !457
  unreachable, !dbg !457
                                                  ; No predecessors!
  ret void, !dbg !458
}

; Function Attrs: nounwind ssp uwtable
define void @IofCompleteRequest(i32 %Irp, i32 %PriorityBoost) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %Irp, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !143, metadata !82), !dbg !459
  store i32 %PriorityBoost, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !190, metadata !82), !dbg !460
  %3 = load i32, i32* @s, align 4, !dbg !461
  %4 = load i32, i32* @NP, align 4, !dbg !462
  %5 = icmp eq i32 %3, %4, !dbg !463
  br i1 %5, label %6, label %8, !dbg !464

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* @DC, align 4, !dbg !465
  store i32 %7, i32* @s, align 4, !dbg !466
  br label %9, !dbg !467

; <label>:8                                       ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !468
  unreachable, !dbg !468

errorFn.exit:                                     ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %errorFn.exit, %6
  ret void, !dbg !470
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
  call void @llvm.dbg.declare(metadata i32* %status, metadata !471, metadata !82), !dbg !472
  call void @llvm.dbg.declare(metadata i32* %irp, metadata !473, metadata !82), !dbg !474
  %2 = call i32 @__VERIFIER_nondet_int(), !dbg !475
  store i32 %2, i32* %irp, align 4, !dbg !474
  call void @llvm.dbg.declare(metadata i32* %pirp, metadata !476, metadata !82), !dbg !477
  call void @llvm.dbg.declare(metadata i32* %pirp__IoStatus__Status, metadata !478, metadata !82), !dbg !479
  call void @llvm.dbg.declare(metadata i32* %irp_choice, metadata !480, metadata !82), !dbg !481
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !482
  store i32 %3, i32* %irp_choice, align 4, !dbg !481
  call void @llvm.dbg.declare(metadata i32* %devobj, metadata !483, metadata !82), !dbg !484
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !485
  store i32 %4, i32* %devobj, align 4, !dbg !484
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp8, metadata !486, metadata !82), !dbg !487
  store i32 0, i32* @KernelMode, align 4, !dbg !488
  store i32 0, i32* @Executive, align 4, !dbg !491
  store i32 0, i32* @s, align 4, !dbg !492
  store i32 0, i32* @UNLOADED, align 4, !dbg !493
  store i32 0, i32* @NP, align 4, !dbg !494
  store i32 0, i32* @DC, align 4, !dbg !495
  store i32 0, i32* @SKIP1, align 4, !dbg !496
  store i32 0, i32* @SKIP2, align 4, !dbg !497
  store i32 0, i32* @MPR1, align 4, !dbg !498
  store i32 0, i32* @MPR3, align 4, !dbg !499
  store i32 0, i32* @IPC, align 4, !dbg !500
  store i32 0, i32* @pended, align 4, !dbg !501
  store i32 0, i32* @compFptr, align 4, !dbg !502
  store i32 0, i32* @compRegistered, align 4, !dbg !503
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !504
  store i32 0, i32* @setEventCalled, align 4, !dbg !505
  store i32 0, i32* @customIrp, align 4, !dbg !506
  store i32 0, i32* @myStatus, align 4, !dbg !507
  store i32 0, i32* %status, align 4, !dbg !508
  %5 = load i32, i32* %irp, align 4, !dbg !509
  store i32 %5, i32* %pirp, align 4, !dbg !510
  store i32 0, i32* @UNLOADED, align 4, !dbg !511
  store i32 1, i32* @NP, align 4, !dbg !513
  store i32 2, i32* @DC, align 4, !dbg !514
  store i32 3, i32* @SKIP1, align 4, !dbg !515
  store i32 4, i32* @SKIP2, align 4, !dbg !516
  store i32 5, i32* @MPR1, align 4, !dbg !517
  store i32 6, i32* @MPR3, align 4, !dbg !518
  store i32 7, i32* @IPC, align 4, !dbg !519
  %6 = load i32, i32* @UNLOADED, align 4, !dbg !520
  store i32 %6, i32* @s, align 4, !dbg !521
  store i32 0, i32* @pended, align 4, !dbg !522
  store i32 0, i32* @compFptr, align 4, !dbg !523
  store i32 0, i32* @compRegistered, align 4, !dbg !524
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !525
  store i32 0, i32* @setEventCalled, align 4, !dbg !526
  store i32 0, i32* @customIrp, align 4, !dbg !527
  %7 = load i32, i32* %status, align 4, !dbg !528
  %8 = icmp sge i32 %7, 0, !dbg !530
  br i1 %8, label %9, label %45, !dbg !531

; <label>:9                                       ; preds = %0
  %10 = load i32, i32* @NP, align 4, !dbg !532
  store i32 %10, i32* @s, align 4, !dbg !534
  store i32 0, i32* @customIrp, align 4, !dbg !535
  %11 = load i32, i32* @customIrp, align 4, !dbg !536
  store i32 %11, i32* @setEventCalled, align 4, !dbg !537
  %12 = load i32, i32* @setEventCalled, align 4, !dbg !538
  store i32 %12, i32* @lowerDriverReturn, align 4, !dbg !539
  %13 = load i32, i32* @lowerDriverReturn, align 4, !dbg !540
  store i32 %13, i32* @compRegistered, align 4, !dbg !541
  %14 = load i32, i32* @compRegistered, align 4, !dbg !542
  store i32 %14, i32* @pended, align 4, !dbg !543
  store i32 0, i32* %pirp__IoStatus__Status, align 4, !dbg !544
  store i32 0, i32* @myStatus, align 4, !dbg !545
  %15 = load i32, i32* %irp_choice, align 4, !dbg !546
  %16 = icmp eq i32 %15, 0, !dbg !548
  br i1 %16, label %17, label %18, !dbg !549

; <label>:17                                      ; preds = %9
  store i32 -1073741637, i32* %pirp__IoStatus__Status, align 4, !dbg !550
  store i32 -1073741637, i32* @myStatus, align 4, !dbg !552
  br label %18, !dbg !553

; <label>:18                                      ; preds = %17, %9
  %19 = load i32, i32* @NP, align 4, !dbg !554
  store i32 %19, i32* @s, align 4, !dbg !557
  store i32 0, i32* @pended, align 4, !dbg !558
  store i32 0, i32* @compFptr, align 4, !dbg !559
  store i32 0, i32* @compRegistered, align 4, !dbg !560
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !561
  store i32 0, i32* @setEventCalled, align 4, !dbg !562
  store i32 0, i32* @customIrp, align 4, !dbg !563
  %20 = load i32, i32* %status, align 4, !dbg !564
  %21 = icmp sge i32 %20, 0, !dbg !567
  br i1 %21, label %22, label %23, !dbg !568

; <label>:22                                      ; preds = %18
  store i32 1, i32* %__cil_tmp8, align 4, !dbg !569
  br label %24, !dbg !571

; <label>:23                                      ; preds = %18
  store i32 0, i32* %__cil_tmp8, align 4, !dbg !572
  br label %24

; <label>:24                                      ; preds = %23, %22
  %25 = load i32, i32* %__cil_tmp8, align 4, !dbg !574
  %26 = icmp ne i32 %25, 0, !dbg !574
  br i1 %26, label %28, label %27, !dbg !576

; <label>:27                                      ; preds = %24
  store i32 -1, i32* %1, !dbg !577
  br label %124, !dbg !577

; <label>:28                                      ; preds = %24
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_1, metadata !579, metadata !82), !dbg !580
  %29 = call i32 @__VERIFIER_nondet_int(), !dbg !581
  store i32 %29, i32* %tmp_ndt_1, align 4, !dbg !582
  %30 = load i32, i32* %tmp_ndt_1, align 4, !dbg !583
  %31 = icmp eq i32 %30, 3, !dbg !585
  br i1 %31, label %32, label %33, !dbg !586

; <label>:32                                      ; preds = %28
  br label %36, !dbg !587

; <label>:33                                      ; preds = %28
  br label %40, !dbg !589
                                                  ; No predecessors!
  br i1 false, label %35, label %41, !dbg !591

; <label>:35                                      ; preds = %34
  br label %36, !dbg !592

; <label>:36                                      ; preds = %35, %32
  %37 = load i32, i32* %devobj, align 4, !dbg !594
  %38 = load i32, i32* %pirp, align 4, !dbg !597
  %39 = call i32 @KbFilter_PnP(i32 %37, i32 %38), !dbg !598
  store i32 %39, i32* %status, align 4, !dbg !599
  br label %42, !dbg !600

; <label>:40                                      ; preds = %33
  store i32 -1, i32* %1, !dbg !601
  br label %124, !dbg !601

; <label>:41                                      ; preds = %34
  br label %42, !dbg !602

; <label>:42                                      ; preds = %41, %36
  br label %43

; <label>:43                                      ; preds = %42
  br label %44

; <label>:44                                      ; preds = %43
  br label %45, !dbg !603

; <label>:45                                      ; preds = %44, %0
  %46 = load i32, i32* @pended, align 4, !dbg !604
  %47 = icmp eq i32 %46, 1, !dbg !606
  br i1 %47, label %48, label %56, !dbg !607

; <label>:48                                      ; preds = %45
  %49 = load i32, i32* @s, align 4, !dbg !608
  %50 = load i32, i32* @NP, align 4, !dbg !611
  %51 = icmp eq i32 %49, %50, !dbg !612
  br i1 %51, label %52, label %54, !dbg !613

; <label>:52                                      ; preds = %48
  %53 = load i32, i32* @NP, align 4, !dbg !614
  store i32 %53, i32* @s, align 4, !dbg !616
  br label %55, !dbg !617

; <label>:54                                      ; preds = %48
  br label %57, !dbg !618

; <label>:55                                      ; preds = %52
  br label %122, !dbg !620

; <label>:56                                      ; preds = %45
  br label %57, !dbg !621

; <label>:57                                      ; preds = %56, %54
  %58 = load i32, i32* @pended, align 4, !dbg !622
  %59 = icmp eq i32 %58, 1, !dbg !625
  br i1 %59, label %60, label %68, !dbg !626

; <label>:60                                      ; preds = %57
  %61 = load i32, i32* @s, align 4, !dbg !627
  %62 = load i32, i32* @MPR3, align 4, !dbg !630
  %63 = icmp eq i32 %61, %62, !dbg !631
  br i1 %63, label %64, label %66, !dbg !632

; <label>:64                                      ; preds = %60
  %65 = load i32, i32* @MPR3, align 4, !dbg !633
  store i32 %65, i32* @s, align 4, !dbg !635
  br label %67, !dbg !636

; <label>:66                                      ; preds = %60
  br label %69, !dbg !637

; <label>:67                                      ; preds = %64
  br label %121, !dbg !639

; <label>:68                                      ; preds = %57
  br label %69, !dbg !640

; <label>:69                                      ; preds = %68, %66
  %70 = load i32, i32* @s, align 4, !dbg !641
  %71 = load i32, i32* @UNLOADED, align 4, !dbg !644
  %72 = icmp ne i32 %70, %71, !dbg !645
  br i1 %72, label %73, label %120, !dbg !646

; <label>:73                                      ; preds = %69
  %74 = load i32, i32* %status, align 4, !dbg !647
  %75 = icmp ne i32 %74, -1, !dbg !650
  br i1 %75, label %76, label %119, !dbg !651

; <label>:76                                      ; preds = %73
  %77 = load i32, i32* @s, align 4, !dbg !652
  %78 = load i32, i32* @SKIP2, align 4, !dbg !655
  %79 = icmp ne i32 %77, %78, !dbg !656
  br i1 %79, label %80, label %92, !dbg !657

; <label>:80                                      ; preds = %76
  %81 = load i32, i32* @s, align 4, !dbg !658
  %82 = load i32, i32* @IPC, align 4, !dbg !661
  %83 = icmp ne i32 %81, %82, !dbg !662
  br i1 %83, label %84, label %90, !dbg !663

; <label>:84                                      ; preds = %80
  %85 = load i32, i32* @s, align 4, !dbg !664
  %86 = load i32, i32* @DC, align 4, !dbg !667
  %87 = icmp eq i32 %85, %86, !dbg !668
  br i1 %87, label %88, label %89, !dbg !669

; <label>:88                                      ; preds = %84
  br label %93, !dbg !670

; <label>:89                                      ; preds = %84
  br label %91, !dbg !672

; <label>:90                                      ; preds = %80
  br label %93, !dbg !673

; <label>:91                                      ; preds = %89
  br label %118, !dbg !675

; <label>:92                                      ; preds = %76
  br label %93, !dbg !676

; <label>:93                                      ; preds = %92, %90, %88
  %94 = load i32, i32* @pended, align 4, !dbg !677
  %95 = icmp eq i32 %94, 1, !dbg !680
  br i1 %95, label %96, label %101, !dbg !681

; <label>:96                                      ; preds = %93
  %97 = load i32, i32* %status, align 4, !dbg !682
  %98 = icmp ne i32 %97, 259, !dbg !685
  br i1 %98, label %99, label %100, !dbg !686

; <label>:99                                      ; preds = %96
  call void (...) @__VERIFIER_error() #5, !dbg !687
  unreachable, !dbg !687

errorFn.exit:                                     ; No predecessors!
  br label %100, !dbg !691

; <label>:100                                     ; preds = %errorFn.exit, %96
  br label %117, !dbg !692

; <label>:101                                     ; preds = %93
  %102 = load i32, i32* @s, align 4, !dbg !693
  %103 = load i32, i32* @DC, align 4, !dbg !696
  %104 = icmp eq i32 %102, %103, !dbg !697
  br i1 %104, label %105, label %110, !dbg !698

; <label>:105                                     ; preds = %101
  %106 = load i32, i32* %status, align 4, !dbg !699
  %107 = icmp eq i32 %106, 259, !dbg !702
  br i1 %107, label %108, label %109, !dbg !703

; <label>:108                                     ; preds = %105
  br label %109, !dbg !704

; <label>:109                                     ; preds = %108, %105
  br label %116, !dbg !706

; <label>:110                                     ; preds = %101
  %111 = load i32, i32* %status, align 4, !dbg !707
  %112 = load i32, i32* @lowerDriverReturn, align 4, !dbg !710
  %113 = icmp ne i32 %111, %112, !dbg !711
  br i1 %113, label %114, label %115, !dbg !712

; <label>:114                                     ; preds = %110
  br label %115, !dbg !713

; <label>:115                                     ; preds = %114, %110
  br label %116

; <label>:116                                     ; preds = %115, %109
  br label %117

; <label>:117                                     ; preds = %116, %100
  br label %118

; <label>:118                                     ; preds = %117, %91
  br label %119, !dbg !715

; <label>:119                                     ; preds = %118, %73
  br label %120, !dbg !716

; <label>:120                                     ; preds = %119, %69
  br label %121

; <label>:121                                     ; preds = %120, %67
  br label %122

; <label>:122                                     ; preds = %121, %55
  %123 = load i32, i32* %status, align 4, !dbg !717
  store i32 %123, i32* %1, !dbg !718
  br label %124, !dbg !718

; <label>:124                                     ; preds = %122, %40, %27
  %125 = load i32, i32* %1, !dbg !719
  ret i32 %125, !dbg !719
}

; Function Attrs: nounwind ssp uwtable
define void @stubMoreProcessingRequired() #0 {
  %1 = load i32, i32* @s, align 4, !dbg !720
  %2 = load i32, i32* @NP, align 4, !dbg !723
  %3 = icmp eq i32 %1, %2, !dbg !724
  br i1 %3, label %4, label %6, !dbg !725

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* @MPR1, align 4, !dbg !726
  store i32 %5, i32* @s, align 4, !dbg !728
  br label %7, !dbg !729

; <label>:6                                       ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !730
  unreachable, !dbg !730

errorFn.exit:                                     ; No predecessors!
  br label %7

; <label>:7                                       ; preds = %errorFn.exit, %4
  ret void, !dbg !734
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
  %tmp_ndt_2 = alloca i32, align 4
  %tmp_ndt_3 = alloca i32, align 4
  store i32 %DeviceObject, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !735, metadata !82), !dbg !736
  store i32 %Irp, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !737, metadata !82), !dbg !738
  call void @llvm.dbg.declare(metadata i32* %returnVal2, metadata !739, metadata !82), !dbg !740
  call void @llvm.dbg.declare(metadata i32* %compRetStatus, metadata !741, metadata !82), !dbg !742
  call void @llvm.dbg.declare(metadata i32* %lcontext, metadata !743, metadata !82), !dbg !744
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !745
  store i32 %9, i32* %lcontext, align 4, !dbg !744
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp7, metadata !746, metadata !82), !dbg !748
  %10 = load i32, i32* @compRegistered, align 4, !dbg !749
  %11 = icmp ne i32 %10, 0, !dbg !749
  call void @llvm.dbg.declare(metadata i32* %1, metadata !752, metadata !82), !dbg !753
  call void @llvm.dbg.declare(metadata i32* %2, metadata !759, metadata !82), !dbg !760
  call void @llvm.dbg.declare(metadata i32* %3, metadata !761, metadata !82), !dbg !762
  call void @llvm.dbg.declare(metadata i32* %l.i.i, metadata !763, metadata !82), !dbg !764
  call void @llvm.dbg.declare(metadata i32* %4, metadata !765, metadata !82), !dbg !766
  call void @llvm.dbg.declare(metadata i32* %5, metadata !767, metadata !82), !dbg !768
  call void @llvm.dbg.declare(metadata i32* %6, metadata !769, metadata !82), !dbg !770
  call void @llvm.dbg.declare(metadata i32* %event.i, metadata !771, metadata !82), !dbg !772
  br i1 %11, label %12, label %41, !dbg !773

; <label>:12                                      ; preds = %0
  %13 = load i32, i32* %7, align 4, !dbg !774
  %14 = load i32, i32* %8, align 4, !dbg !775
  %15 = load i32, i32* %lcontext, align 4, !dbg !776
  %16 = bitcast i32* %4 to i8*, !dbg !777
  call void @llvm.lifetime.start(i64 4, i8* %16), !dbg !777
  %17 = bitcast i32* %5 to i8*, !dbg !777
  call void @llvm.lifetime.start(i64 4, i8* %17), !dbg !777
  %18 = bitcast i32* %6 to i8*, !dbg !777
  call void @llvm.lifetime.start(i64 4, i8* %18), !dbg !777
  %19 = bitcast i32* %event.i to i8*, !dbg !777
  call void @llvm.lifetime.start(i64 4, i8* %19), !dbg !777
  store i32 %13, i32* %4, align 4, !dbg !777
  store i32 %14, i32* %5, align 4, !dbg !777
  store i32 %15, i32* %6, align 4, !dbg !777
  %20 = load i32, i32* %6, align 4, !dbg !778
  store i32 %20, i32* %event.i, align 4, !dbg !779
  %21 = load i32, i32* %event.i, align 4, !dbg !780
  %22 = bitcast i32* %1 to i8*, !dbg !781
  call void @llvm.lifetime.start(i64 4, i8* %22) #4, !dbg !781
  %23 = bitcast i32* %2 to i8*, !dbg !781
  call void @llvm.lifetime.start(i64 4, i8* %23) #4, !dbg !781
  %24 = bitcast i32* %3 to i8*, !dbg !781
  call void @llvm.lifetime.start(i64 4, i8* %24) #4, !dbg !781
  %25 = bitcast i32* %l.i.i to i8*, !dbg !781
  call void @llvm.lifetime.start(i64 4, i8* %25) #4, !dbg !781
  store i32 %21, i32* %1, align 4, !dbg !781
  store i32 0, i32* %2, align 4, !dbg !781
  store i32 0, i32* %3, align 4, !dbg !781
  %26 = call i32 @__VERIFIER_nondet_int() #4, !dbg !782
  store i32 %26, i32* %l.i.i, align 4, !dbg !764
  store i32 1, i32* @setEventCalled, align 4, !dbg !783
  %27 = load i32, i32* %l.i.i, align 4, !dbg !785
  %28 = bitcast i32* %1 to i8*, !dbg !786
  call void @llvm.lifetime.end(i64 4, i8* %28) #4, !dbg !786
  %29 = bitcast i32* %2 to i8*, !dbg !786
  call void @llvm.lifetime.end(i64 4, i8* %29) #4, !dbg !786
  %30 = bitcast i32* %3 to i8*, !dbg !786
  call void @llvm.lifetime.end(i64 4, i8* %30) #4, !dbg !786
  %31 = bitcast i32* %l.i.i to i8*, !dbg !786
  call void @llvm.lifetime.end(i64 4, i8* %31) #4, !dbg !786
  %32 = bitcast i32* %4 to i8*, !dbg !787
  call void @llvm.lifetime.end(i64 4, i8* %32), !dbg !787
  %33 = bitcast i32* %5 to i8*, !dbg !787
  call void @llvm.lifetime.end(i64 4, i8* %33), !dbg !787
  %34 = bitcast i32* %6 to i8*, !dbg !787
  call void @llvm.lifetime.end(i64 4, i8* %34), !dbg !787
  %35 = bitcast i32* %event.i to i8*, !dbg !787
  call void @llvm.lifetime.end(i64 4, i8* %35), !dbg !787
  store i32 -1073741802, i32* %compRetStatus, align 4, !dbg !788
  %36 = load i32, i32* @s, align 4, !dbg !789
  %37 = load i32, i32* @NP, align 4, !dbg !791
  %38 = icmp eq i32 %36, %37, !dbg !792
  br i1 %38, label %stubMoreProcessingRequired.exit, label %39, !dbg !793

; <label>:39                                      ; preds = %12
  call void (...) @__VERIFIER_error() #5, !dbg !794
  unreachable, !dbg !794

stubMoreProcessingRequired.exit:                  ; preds = %12
  %40 = load i32, i32* @MPR1, align 4, !dbg !796
  store i32 %40, i32* @s, align 4, !dbg !797
  br label %41, !dbg !798

; <label>:41                                      ; preds = %stubMoreProcessingRequired.exit, %0
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_2, metadata !799, metadata !82), !dbg !800
  %42 = call i32 @__VERIFIER_nondet_int(), !dbg !801
  store i32 %42, i32* %tmp_ndt_2, align 4, !dbg !802
  %43 = load i32, i32* %tmp_ndt_2, align 4, !dbg !803
  %44 = icmp eq i32 %43, 0, !dbg !805
  br i1 %44, label %45, label %46, !dbg !806

; <label>:45                                      ; preds = %41
  br label %54, !dbg !807

; <label>:46                                      ; preds = %41
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_3, metadata !809, metadata !82), !dbg !811
  %47 = call i32 @__VERIFIER_nondet_int(), !dbg !812
  store i32 %47, i32* %tmp_ndt_3, align 4, !dbg !813
  %48 = load i32, i32* %tmp_ndt_3, align 4, !dbg !814
  %49 = icmp eq i32 %48, 1, !dbg !816
  br i1 %49, label %50, label %51, !dbg !817

; <label>:50                                      ; preds = %46
  br label %55, !dbg !818

; <label>:51                                      ; preds = %46
  br label %56, !dbg !820
                                                  ; No predecessors!
  br i1 false, label %53, label %57, !dbg !822

; <label>:53                                      ; preds = %52
  br label %54, !dbg !823

; <label>:54                                      ; preds = %53, %45
  store i32 0, i32* %returnVal2, align 4, !dbg !825
  br label %58, !dbg !827

; <label>:55                                      ; preds = %50
  store i32 -1073741823, i32* %returnVal2, align 4, !dbg !828
  br label %58, !dbg !829

; <label>:56                                      ; preds = %51
  store i32 259, i32* %returnVal2, align 4, !dbg !830
  br label %58, !dbg !831

; <label>:57                                      ; preds = %52
  br label %58, !dbg !832

; <label>:58                                      ; preds = %57, %56, %55, %54
  br label %59

; <label>:59                                      ; preds = %58
  br label %60

; <label>:60                                      ; preds = %59
  br label %61

; <label>:61                                      ; preds = %60
  %62 = load i32, i32* @s, align 4, !dbg !833
  %63 = load i32, i32* @NP, align 4, !dbg !835
  %64 = icmp eq i32 %62, %63, !dbg !836
  br i1 %64, label %65, label %68, !dbg !837

; <label>:65                                      ; preds = %61
  %66 = load i32, i32* @IPC, align 4, !dbg !838
  store i32 %66, i32* @s, align 4, !dbg !840
  %67 = load i32, i32* %returnVal2, align 4, !dbg !841
  store i32 %67, i32* @lowerDriverReturn, align 4, !dbg !842
  br label %92, !dbg !843

; <label>:68                                      ; preds = %61
  %69 = load i32, i32* @s, align 4, !dbg !844
  %70 = load i32, i32* @MPR1, align 4, !dbg !847
  %71 = icmp eq i32 %69, %70, !dbg !848
  br i1 %71, label %72, label %82, !dbg !849

; <label>:72                                      ; preds = %68
  %73 = load i32, i32* %returnVal2, align 4, !dbg !850
  %74 = icmp eq i32 %73, 259, !dbg !853
  br i1 %74, label %75, label %78, !dbg !854

; <label>:75                                      ; preds = %72
  %76 = load i32, i32* @MPR3, align 4, !dbg !855
  store i32 %76, i32* @s, align 4, !dbg !857
  %77 = load i32, i32* %returnVal2, align 4, !dbg !858
  store i32 %77, i32* @lowerDriverReturn, align 4, !dbg !859
  br label %81, !dbg !860

; <label>:78                                      ; preds = %72
  %79 = load i32, i32* @NP, align 4, !dbg !861
  store i32 %79, i32* @s, align 4, !dbg !863
  %80 = load i32, i32* %returnVal2, align 4, !dbg !864
  store i32 %80, i32* @lowerDriverReturn, align 4, !dbg !865
  br label %81

; <label>:81                                      ; preds = %78, %75
  br label %91, !dbg !866

; <label>:82                                      ; preds = %68
  %83 = load i32, i32* @s, align 4, !dbg !867
  %84 = load i32, i32* @SKIP1, align 4, !dbg !870
  %85 = icmp eq i32 %83, %84, !dbg !871
  br i1 %85, label %86, label %89, !dbg !872

; <label>:86                                      ; preds = %82
  %87 = load i32, i32* @SKIP2, align 4, !dbg !873
  store i32 %87, i32* @s, align 4, !dbg !875
  %88 = load i32, i32* %returnVal2, align 4, !dbg !876
  store i32 %88, i32* @lowerDriverReturn, align 4, !dbg !877
  br label %90, !dbg !878

; <label>:89                                      ; preds = %82
  call void (...) @__VERIFIER_error() #5, !dbg !879
  unreachable, !dbg !879

errorFn.exit:                                     ; No predecessors!
  br label %90

; <label>:90                                      ; preds = %errorFn.exit, %86
  br label %91

; <label>:91                                      ; preds = %90, %81
  br label %92

; <label>:92                                      ; preds = %91, %65
  %93 = load i32, i32* %returnVal2, align 4, !dbg !883
  ret i32 %93, !dbg !884
}

; Function Attrs: nounwind ssp uwtable
define i32 @KeSetEvent(i32 %Event, i32 %Increment, i32 %Wait) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 %Event, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !752, metadata !82), !dbg !885
  store i32 %Increment, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !759, metadata !82), !dbg !886
  store i32 %Wait, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !761, metadata !82), !dbg !887
  call void @llvm.dbg.declare(metadata i32* %l, metadata !763, metadata !82), !dbg !888
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !889
  store i32 %4, i32* %l, align 4, !dbg !888
  store i32 1, i32* @setEventCalled, align 4, !dbg !890
  %5 = load i32, i32* %l, align 4, !dbg !891
  ret i32 %5, !dbg !892
}

; Function Attrs: nounwind ssp uwtable
define i32 @KeWaitForSingleObject(i32 %Object, i32 %WaitReason, i32 %WaitMode, i32 %Alertable, i32 %Timeout) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %tmp_ndt_4 = alloca i32, align 4
  store i32 %Object, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !893, metadata !82), !dbg !894
  store i32 %WaitReason, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !895, metadata !82), !dbg !896
  store i32 %WaitMode, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !897, metadata !82), !dbg !898
  store i32 %Alertable, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !899, metadata !82), !dbg !900
  store i32 %Timeout, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !901, metadata !82), !dbg !902
  %7 = load i32, i32* @s, align 4, !dbg !903
  %8 = load i32, i32* @MPR3, align 4, !dbg !906
  %9 = icmp eq i32 %7, %8, !dbg !907
  br i1 %9, label %10, label %17, !dbg !908

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* @setEventCalled, align 4, !dbg !909
  %12 = icmp eq i32 %11, 1, !dbg !912
  br i1 %12, label %13, label %15, !dbg !913

; <label>:13                                      ; preds = %10
  %14 = load i32, i32* @NP, align 4, !dbg !914
  store i32 %14, i32* @s, align 4, !dbg !916
  store i32 0, i32* @setEventCalled, align 4, !dbg !917
  br label %16, !dbg !918

; <label>:15                                      ; preds = %10
  br label %18, !dbg !919

; <label>:16                                      ; preds = %13
  br label %30, !dbg !921

; <label>:17                                      ; preds = %0
  br label %18, !dbg !922

; <label>:18                                      ; preds = %17, %15
  %19 = load i32, i32* @customIrp, align 4, !dbg !923
  %20 = icmp eq i32 %19, 1, !dbg !926
  br i1 %20, label %21, label %23, !dbg !927

; <label>:21                                      ; preds = %18
  %22 = load i32, i32* @NP, align 4, !dbg !928
  store i32 %22, i32* @s, align 4, !dbg !930
  store i32 0, i32* @customIrp, align 4, !dbg !931
  br label %29, !dbg !932

; <label>:23                                      ; preds = %18
  %24 = load i32, i32* @s, align 4, !dbg !933
  %25 = load i32, i32* @MPR3, align 4, !dbg !936
  %26 = icmp eq i32 %24, %25, !dbg !937
  br i1 %26, label %27, label %28, !dbg !938

; <label>:27                                      ; preds = %23
  call void (...) @__VERIFIER_error() #5, !dbg !939
  unreachable, !dbg !939

errorFn.exit:                                     ; No predecessors!
  br label %28, !dbg !943

; <label>:28                                      ; preds = %errorFn.exit, %23
  br label %29

; <label>:29                                      ; preds = %28, %21
  br label %30

; <label>:30                                      ; preds = %29, %16
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_4, metadata !944, metadata !82), !dbg !945
  %31 = call i32 @__VERIFIER_nondet_int(), !dbg !946
  store i32 %31, i32* %tmp_ndt_4, align 4, !dbg !947
  %32 = load i32, i32* %tmp_ndt_4, align 4, !dbg !948
  %33 = icmp eq i32 %32, 0, !dbg !950
  br i1 %33, label %34, label %35, !dbg !951

; <label>:34                                      ; preds = %30
  br label %38, !dbg !952

; <label>:35                                      ; preds = %30
  br label %39, !dbg !954
                                                  ; No predecessors!
  br i1 false, label %37, label %40, !dbg !956

; <label>:37                                      ; preds = %36
  br label %38, !dbg !957

; <label>:38                                      ; preds = %37, %34
  store i32 0, i32* %1, !dbg !959
  br label %42, !dbg !959

; <label>:39                                      ; preds = %35
  store i32 -1073741823, i32* %1, !dbg !961
  br label %42, !dbg !961

; <label>:40                                      ; preds = %36
  br label %41

; <label>:41                                      ; preds = %40
  br label %42

; <label>:42                                      ; preds = %41, %39, %38
  %43 = load i32, i32* %1, !dbg !962
  ret i32 %43, !dbg !962
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
  call void @llvm.dbg.declare(metadata i32* %4, metadata !765, metadata !82), !dbg !963
  store i32 %Irp, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !767, metadata !82), !dbg !964
  store i32 %Context, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !769, metadata !82), !dbg !965
  call void @llvm.dbg.declare(metadata i32* %event, metadata !771, metadata !82), !dbg !966
  %7 = load i32, i32* %6, align 4, !dbg !967
  store i32 %7, i32* %event, align 4, !dbg !968
  %8 = load i32, i32* %event, align 4, !dbg !969
  %9 = bitcast i32* %1 to i8*, !dbg !970
  call void @llvm.lifetime.start(i64 4, i8* %9), !dbg !970
  %10 = bitcast i32* %2 to i8*, !dbg !970
  call void @llvm.lifetime.start(i64 4, i8* %10), !dbg !970
  %11 = bitcast i32* %3 to i8*, !dbg !970
  call void @llvm.lifetime.start(i64 4, i8* %11), !dbg !970
  %12 = bitcast i32* %l.i to i8*, !dbg !970
  call void @llvm.lifetime.start(i64 4, i8* %12), !dbg !970
  store i32 %8, i32* %1, align 4, !dbg !970
  store i32 0, i32* %2, align 4, !dbg !970
  store i32 0, i32* %3, align 4, !dbg !970
  %13 = call i32 @__VERIFIER_nondet_int() #4, !dbg !971
  store i32 %13, i32* %l.i, align 4, !dbg !973
  store i32 1, i32* @setEventCalled, align 4, !dbg !974
  %14 = load i32, i32* %l.i, align 4, !dbg !975
  %15 = bitcast i32* %1 to i8*, !dbg !976
  call void @llvm.lifetime.end(i64 4, i8* %15), !dbg !976
  %16 = bitcast i32* %2 to i8*, !dbg !976
  call void @llvm.lifetime.end(i64 4, i8* %16), !dbg !976
  %17 = bitcast i32* %3 to i8*, !dbg !976
  call void @llvm.lifetime.end(i64 4, i8* %17), !dbg !976
  %18 = bitcast i32* %l.i to i8*, !dbg !976
  call void @llvm.lifetime.end(i64 4, i8* %18), !dbg !976
  call void @llvm.dbg.declare(metadata i32* %1, metadata !752, metadata !82), !dbg !977
  call void @llvm.dbg.declare(metadata i32* %2, metadata !759, metadata !82), !dbg !978
  call void @llvm.dbg.declare(metadata i32* %3, metadata !761, metadata !82), !dbg !979
  call void @llvm.dbg.declare(metadata i32* %l.i, metadata !763, metadata !82), !dbg !973
  ret i32 -1073741802, !dbg !980
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
!llvm.module.flags = !{!49, !50, !51}
!llvm.ident = !{!52}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !30)
!1 = !DIFile(filename: "svcomp16/ntdrivers-simplified/kbfiltr_simpl1_true-unreach-call_true-termination.cil.c", directory: ".")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!5 = !{!6, !9, !10, !14, !17, !18, !19, !22, !25, !28, !29}
!6 = !DISubprogram(name: "stub_driver_init", scope: !1, file: !1, line: 30, type: !7, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stub_driver_init, variables: !2)
!7 = !DISubroutineType(types: !8)
!8 = !{null}
!9 = !DISubprogram(name: "_BLAST_init", scope: !1, file: !1, line: 44, type: !7, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @_BLAST_init, variables: !2)
!10 = !DISubprogram(name: "KbFilter_PnP", scope: !1, file: !1, line: 68, type: !11, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @KbFilter_PnP, variables: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13, !13}
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !DISubprogram(name: "main", scope: !1, file: !1, line: 281, type: !15, isLocal: false, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !2)
!15 = !DISubroutineType(types: !16)
!16 = !{!13}
!17 = !DISubprogram(name: "stubMoreProcessingRequired", scope: !1, file: !1, line: 416, type: !7, isLocal: false, isDefinition: true, scopeLine: 417, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stubMoreProcessingRequired, variables: !2)
!18 = !DISubprogram(name: "IofCallDriver", scope: !1, file: !1, line: 430, type: !11, isLocal: false, isDefinition: true, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @IofCallDriver, variables: !2)
!19 = !DISubprogram(name: "IofCompleteRequest", scope: !1, file: !1, line: 494, type: !20, isLocal: false, isDefinition: true, scopeLine: 495, flags: DIFlagPrototyped, isOptimized: false, function: void (i32, i32)* @IofCompleteRequest, variables: !2)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !13, !13}
!22 = !DISubprogram(name: "KeSetEvent", scope: !1, file: !1, line: 508, type: !23, isLocal: false, isDefinition: true, scopeLine: 509, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @KeSetEvent, variables: !2)
!23 = !DISubroutineType(types: !24)
!24 = !{!13, !13, !13, !13}
!25 = !DISubprogram(name: "KeWaitForSingleObject", scope: !1, file: !1, line: 516, type: !26, isLocal: false, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32)* @KeWaitForSingleObject, variables: !2)
!26 = !DISubroutineType(types: !27)
!27 = !{!13, !13, !13, !13, !13, !13}
!28 = !DISubprogram(name: "KbFilter_Complete", scope: !1, file: !1, line: 558, type: !23, isLocal: false, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @KbFilter_Complete, variables: !2)
!29 = !DISubprogram(name: "errorFn", scope: !1, file: !1, line: 570, type: !7, isLocal: false, isDefinition: true, scopeLine: 571, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @errorFn, variables: !2)
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!31 = !DIGlobalVariable(name: "KernelMode", scope: !0, file: !1, line: 11, type: !13, isLocal: false, isDefinition: true, variable: i32* @KernelMode)
!32 = !DIGlobalVariable(name: "Executive", scope: !0, file: !1, line: 12, type: !13, isLocal: false, isDefinition: true, variable: i32* @Executive)
!33 = !DIGlobalVariable(name: "s", scope: !0, file: !1, line: 13, type: !13, isLocal: false, isDefinition: true, variable: i32* @s)
!34 = !DIGlobalVariable(name: "UNLOADED", scope: !0, file: !1, line: 14, type: !13, isLocal: false, isDefinition: true, variable: i32* @UNLOADED)
!35 = !DIGlobalVariable(name: "NP", scope: !0, file: !1, line: 15, type: !13, isLocal: false, isDefinition: true, variable: i32* @NP)
!36 = !DIGlobalVariable(name: "DC", scope: !0, file: !1, line: 16, type: !13, isLocal: false, isDefinition: true, variable: i32* @DC)
!37 = !DIGlobalVariable(name: "SKIP1", scope: !0, file: !1, line: 17, type: !13, isLocal: false, isDefinition: true, variable: i32* @SKIP1)
!38 = !DIGlobalVariable(name: "SKIP2", scope: !0, file: !1, line: 18, type: !13, isLocal: false, isDefinition: true, variable: i32* @SKIP2)
!39 = !DIGlobalVariable(name: "MPR1", scope: !0, file: !1, line: 19, type: !13, isLocal: false, isDefinition: true, variable: i32* @MPR1)
!40 = !DIGlobalVariable(name: "MPR3", scope: !0, file: !1, line: 20, type: !13, isLocal: false, isDefinition: true, variable: i32* @MPR3)
!41 = !DIGlobalVariable(name: "IPC", scope: !0, file: !1, line: 21, type: !13, isLocal: false, isDefinition: true, variable: i32* @IPC)
!42 = !DIGlobalVariable(name: "pended", scope: !0, file: !1, line: 22, type: !13, isLocal: false, isDefinition: true, variable: i32* @pended)
!43 = !DIGlobalVariable(name: "compFptr", scope: !0, file: !1, line: 23, type: !13, isLocal: false, isDefinition: true, variable: i32* @compFptr)
!44 = !DIGlobalVariable(name: "compRegistered", scope: !0, file: !1, line: 24, type: !13, isLocal: false, isDefinition: true, variable: i32* @compRegistered)
!45 = !DIGlobalVariable(name: "lowerDriverReturn", scope: !0, file: !1, line: 25, type: !13, isLocal: false, isDefinition: true, variable: i32* @lowerDriverReturn)
!46 = !DIGlobalVariable(name: "setEventCalled", scope: !0, file: !1, line: 26, type: !13, isLocal: false, isDefinition: true, variable: i32* @setEventCalled)
!47 = !DIGlobalVariable(name: "customIrp", scope: !0, file: !1, line: 27, type: !13, isLocal: false, isDefinition: true, variable: i32* @customIrp)
!48 = !DIGlobalVariable(name: "myStatus", scope: !0, file: !1, line: 28, type: !13, isLocal: false, isDefinition: true, variable: i32* @myStatus)
!49 = !{i32 2, !"Dwarf Version", i32 2}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"PIC Level", i32 2}
!52 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!53 = !DILocation(line: 34, column: 7, scope: !54)
!54 = distinct !DILexicalBlock(scope: !6, file: !1, line: 33, column: 3)
!55 = !DILocation(line: 34, column: 5, scope: !54)
!56 = !DILocation(line: 35, column: 10, scope: !54)
!57 = !DILocation(line: 36, column: 12, scope: !54)
!58 = !DILocation(line: 37, column: 18, scope: !54)
!59 = !DILocation(line: 38, column: 21, scope: !54)
!60 = !DILocation(line: 39, column: 18, scope: !54)
!61 = !DILocation(line: 40, column: 13, scope: !54)
!62 = !DILocation(line: 41, column: 3, scope: !54)
!63 = !DILocation(line: 48, column: 12, scope: !64)
!64 = distinct !DILexicalBlock(scope: !9, file: !1, line: 47, column: 3)
!65 = !DILocation(line: 49, column: 6, scope: !64)
!66 = !DILocation(line: 50, column: 6, scope: !64)
!67 = !DILocation(line: 51, column: 9, scope: !64)
!68 = !DILocation(line: 52, column: 9, scope: !64)
!69 = !DILocation(line: 53, column: 8, scope: !64)
!70 = !DILocation(line: 54, column: 8, scope: !64)
!71 = !DILocation(line: 55, column: 7, scope: !64)
!72 = !DILocation(line: 56, column: 7, scope: !64)
!73 = !DILocation(line: 56, column: 5, scope: !64)
!74 = !DILocation(line: 57, column: 10, scope: !64)
!75 = !DILocation(line: 58, column: 12, scope: !64)
!76 = !DILocation(line: 59, column: 18, scope: !64)
!77 = !DILocation(line: 60, column: 21, scope: !64)
!78 = !DILocation(line: 61, column: 18, scope: !64)
!79 = !DILocation(line: 62, column: 13, scope: !64)
!80 = !DILocation(line: 63, column: 3, scope: !64)
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !10, file: !1, line: 68, type: !13)
!82 = !DIExpression()
!83 = !DILocation(line: 68, column: 22, scope: !10)
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !10, file: !1, line: 68, type: !13)
!85 = !DILocation(line: 68, column: 41, scope: !10)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt", scope: !10, file: !1, line: 69, type: !13)
!87 = !DILocation(line: 69, column: 7, scope: !10)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack", scope: !10, file: !1, line: 70, type: !13)
!89 = !DILocation(line: 70, column: 7, scope: !10)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !10, file: !1, line: 71, type: !13)
!91 = !DILocation(line: 71, column: 7, scope: !10)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "event", scope: !10, file: !1, line: 72, type: !13)
!93 = !DILocation(line: 72, column: 7, scope: !10)
!94 = !DILocation(line: 72, column: 15, scope: !10)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !10, file: !1, line: 73, type: !13)
!96 = !DILocation(line: 73, column: 7, scope: !10)
!97 = !DILocation(line: 73, column: 39, scope: !10)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !10, file: !1, line: 74, type: !13)
!99 = !DILocation(line: 74, column: 7, scope: !10)
!100 = !DILocation(line: 74, column: 50, scope: !10)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack__MinorFunction", scope: !10, file: !1, line: 75, type: !13)
!102 = !DILocation(line: 75, column: 7, scope: !10)
!103 = !DILocation(line: 75, column: 33, scope: !10)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt__TopOfStack", scope: !10, file: !1, line: 76, type: !13)
!105 = !DILocation(line: 76, column: 7, scope: !10)
!106 = !DILocation(line: 76, column: 28, scope: !10)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt__Started", scope: !10, file: !1, line: 77, type: !13)
!108 = !DILocation(line: 77, column: 7, scope: !10)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt__Removed", scope: !10, file: !1, line: 78, type: !13)
!110 = !DILocation(line: 78, column: 7, scope: !10)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt__SurpriseRemoved", scope: !10, file: !1, line: 79, type: !13)
!112 = !DILocation(line: 79, column: 7, scope: !10)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !10, file: !1, line: 80, type: !13)
!114 = !DILocation(line: 80, column: 7, scope: !10)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !10, file: !1, line: 81, type: !13)
!116 = !DILocation(line: 81, column: 7, scope: !10)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !10, file: !1, line: 82, type: !13)
!118 = !DILocation(line: 82, column: 7, scope: !10)
!119 = !DILocation(line: 82, column: 30, scope: !10)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp", scope: !10, file: !1, line: 83, type: !13)
!121 = !DILocation(line: 83, column: 7, scope: !10)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp", scope: !10, file: !1, line: 84, type: !13)
!123 = !DILocation(line: 84, column: 7, scope: !10)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp__Control", scope: !10, file: !1, line: 85, type: !13)
!125 = !DILocation(line: 85, column: 7, scope: !10)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___0", scope: !10, file: !1, line: 86, type: !13)
!127 = !DILocation(line: 86, column: 7, scope: !10)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Context", scope: !10, file: !1, line: 87, type: !13)
!129 = !DILocation(line: 87, column: 7, scope: !10)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Control", scope: !10, file: !1, line: 88, type: !13)
!131 = !DILocation(line: 88, column: 7, scope: !10)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp23", scope: !10, file: !1, line: 89, type: !4)
!133 = !DILocation(line: 89, column: 8, scope: !10)
!134 = !DILocation(line: 92, column: 10, scope: !135)
!135 = distinct !DILexicalBlock(scope: !10, file: !1, line: 91, column: 3)
!136 = !DILocation(line: 93, column: 12, scope: !135)
!137 = !DILocation(line: 93, column: 10, scope: !135)
!138 = !DILocation(line: 94, column: 14, scope: !135)
!139 = !DILocation(line: 94, column: 12, scope: !135)
!140 = !DILocation(line: 95, column: 7, scope: !141)
!141 = distinct !DILexicalBlock(scope: !135, file: !1, line: 95, column: 7)
!142 = !DILocation(line: 95, column: 31, scope: !141)
!143 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 1, scope: !19, file: !1, line: 494, type: !13)
!144 = !DILocation(line: 494, column: 29, scope: !19, inlinedAt: !145)
!145 = distinct !DILocation(line: 204, column: 47, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !1, line: 200, column: 47)
!147 = distinct !DILexicalBlock(scope: !148, file: !1, line: 159, column: 52)
!148 = distinct !DILexicalBlock(scope: !149, file: !1, line: 159, column: 49)
!149 = distinct !DILexicalBlock(scope: !150, file: !1, line: 157, column: 50)
!150 = distinct !DILexicalBlock(scope: !151, file: !1, line: 155, column: 47)
!151 = distinct !DILexicalBlock(scope: !152, file: !1, line: 154, column: 48)
!152 = distinct !DILexicalBlock(scope: !153, file: !1, line: 152, column: 45)
!153 = distinct !DILexicalBlock(scope: !154, file: !1, line: 151, column: 46)
!154 = distinct !DILexicalBlock(scope: !155, file: !1, line: 149, column: 43)
!155 = distinct !DILexicalBlock(scope: !156, file: !1, line: 148, column: 44)
!156 = distinct !DILexicalBlock(scope: !157, file: !1, line: 146, column: 41)
!157 = distinct !DILexicalBlock(scope: !158, file: !1, line: 145, column: 42)
!158 = distinct !DILexicalBlock(scope: !159, file: !1, line: 143, column: 39)
!159 = distinct !DILexicalBlock(scope: !160, file: !1, line: 142, column: 40)
!160 = distinct !DILexicalBlock(scope: !161, file: !1, line: 140, column: 37)
!161 = distinct !DILexicalBlock(scope: !162, file: !1, line: 139, column: 38)
!162 = distinct !DILexicalBlock(scope: !163, file: !1, line: 137, column: 35)
!163 = distinct !DILexicalBlock(scope: !164, file: !1, line: 136, column: 36)
!164 = distinct !DILexicalBlock(scope: !165, file: !1, line: 134, column: 33)
!165 = distinct !DILexicalBlock(scope: !166, file: !1, line: 133, column: 34)
!166 = distinct !DILexicalBlock(scope: !167, file: !1, line: 131, column: 31)
!167 = distinct !DILexicalBlock(scope: !168, file: !1, line: 130, column: 32)
!168 = distinct !DILexicalBlock(scope: !169, file: !1, line: 128, column: 29)
!169 = distinct !DILexicalBlock(scope: !170, file: !1, line: 127, column: 30)
!170 = distinct !DILexicalBlock(scope: !171, file: !1, line: 125, column: 27)
!171 = distinct !DILexicalBlock(scope: !172, file: !1, line: 124, column: 28)
!172 = distinct !DILexicalBlock(scope: !173, file: !1, line: 122, column: 25)
!173 = distinct !DILexicalBlock(scope: !174, file: !1, line: 121, column: 26)
!174 = distinct !DILexicalBlock(scope: !175, file: !1, line: 119, column: 23)
!175 = distinct !DILexicalBlock(scope: !176, file: !1, line: 118, column: 24)
!176 = distinct !DILexicalBlock(scope: !177, file: !1, line: 116, column: 21)
!177 = distinct !DILexicalBlock(scope: !178, file: !1, line: 115, column: 22)
!178 = distinct !DILexicalBlock(scope: !179, file: !1, line: 113, column: 19)
!179 = distinct !DILexicalBlock(scope: !180, file: !1, line: 112, column: 20)
!180 = distinct !DILexicalBlock(scope: !181, file: !1, line: 110, column: 17)
!181 = distinct !DILexicalBlock(scope: !182, file: !1, line: 109, column: 18)
!182 = distinct !DILexicalBlock(scope: !183, file: !1, line: 107, column: 15)
!183 = distinct !DILexicalBlock(scope: !184, file: !1, line: 106, column: 16)
!184 = distinct !DILexicalBlock(scope: !185, file: !1, line: 104, column: 13)
!185 = distinct !DILexicalBlock(scope: !186, file: !1, line: 103, column: 14)
!186 = distinct !DILexicalBlock(scope: !187, file: !1, line: 101, column: 11)
!187 = distinct !DILexicalBlock(scope: !188, file: !1, line: 100, column: 12)
!188 = distinct !DILexicalBlock(scope: !189, file: !1, line: 98, column: 9)
!189 = distinct !DILexicalBlock(scope: !141, file: !1, line: 97, column: 10)
!190 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PriorityBoost", arg: 2, scope: !19, file: !1, line: 494, type: !13)
!191 = !DILocation(line: 494, column: 39, scope: !19, inlinedAt: !145)
!192 = !DILocation(line: 95, column: 7, scope: !135)
!193 = !DILocation(line: 96, column: 5, scope: !194)
!194 = distinct !DILexicalBlock(scope: !141, file: !1, line: 95, column: 37)
!195 = !DILocation(line: 98, column: 9, scope: !188)
!196 = !DILocation(line: 98, column: 33, scope: !188)
!197 = !DILocation(line: 98, column: 9, scope: !189)
!198 = !DILocation(line: 99, column: 7, scope: !199)
!199 = distinct !DILexicalBlock(scope: !188, file: !1, line: 98, column: 40)
!200 = !DILocation(line: 101, column: 11, scope: !186)
!201 = !DILocation(line: 101, column: 35, scope: !186)
!202 = !DILocation(line: 101, column: 11, scope: !187)
!203 = !DILocation(line: 102, column: 9, scope: !204)
!204 = distinct !DILexicalBlock(scope: !186, file: !1, line: 101, column: 41)
!205 = !DILocation(line: 104, column: 13, scope: !184)
!206 = !DILocation(line: 104, column: 37, scope: !184)
!207 = !DILocation(line: 104, column: 13, scope: !185)
!208 = !DILocation(line: 105, column: 11, scope: !209)
!209 = distinct !DILexicalBlock(scope: !184, file: !1, line: 104, column: 43)
!210 = !DILocation(line: 107, column: 15, scope: !182)
!211 = !DILocation(line: 107, column: 39, scope: !182)
!212 = !DILocation(line: 107, column: 15, scope: !183)
!213 = !DILocation(line: 108, column: 13, scope: !214)
!214 = distinct !DILexicalBlock(scope: !182, file: !1, line: 107, column: 45)
!215 = !DILocation(line: 110, column: 17, scope: !180)
!216 = !DILocation(line: 110, column: 41, scope: !180)
!217 = !DILocation(line: 110, column: 17, scope: !181)
!218 = !DILocation(line: 111, column: 15, scope: !219)
!219 = distinct !DILexicalBlock(scope: !180, file: !1, line: 110, column: 47)
!220 = !DILocation(line: 113, column: 19, scope: !178)
!221 = !DILocation(line: 113, column: 43, scope: !178)
!222 = !DILocation(line: 113, column: 19, scope: !179)
!223 = !DILocation(line: 114, column: 17, scope: !224)
!224 = distinct !DILexicalBlock(scope: !178, file: !1, line: 113, column: 49)
!225 = !DILocation(line: 116, column: 21, scope: !176)
!226 = !DILocation(line: 116, column: 45, scope: !176)
!227 = !DILocation(line: 116, column: 21, scope: !177)
!228 = !DILocation(line: 117, column: 19, scope: !229)
!229 = distinct !DILexicalBlock(scope: !176, file: !1, line: 116, column: 52)
!230 = !DILocation(line: 119, column: 23, scope: !174)
!231 = !DILocation(line: 119, column: 47, scope: !174)
!232 = !DILocation(line: 119, column: 23, scope: !175)
!233 = !DILocation(line: 120, column: 21, scope: !234)
!234 = distinct !DILexicalBlock(scope: !174, file: !1, line: 119, column: 53)
!235 = !DILocation(line: 122, column: 25, scope: !172)
!236 = !DILocation(line: 122, column: 49, scope: !172)
!237 = !DILocation(line: 122, column: 25, scope: !173)
!238 = !DILocation(line: 123, column: 23, scope: !239)
!239 = distinct !DILexicalBlock(scope: !172, file: !1, line: 122, column: 55)
!240 = !DILocation(line: 125, column: 27, scope: !170)
!241 = !DILocation(line: 125, column: 51, scope: !170)
!242 = !DILocation(line: 125, column: 27, scope: !171)
!243 = !DILocation(line: 126, column: 25, scope: !244)
!244 = distinct !DILexicalBlock(scope: !170, file: !1, line: 125, column: 57)
!245 = !DILocation(line: 128, column: 29, scope: !168)
!246 = !DILocation(line: 128, column: 53, scope: !168)
!247 = !DILocation(line: 128, column: 29, scope: !169)
!248 = !DILocation(line: 129, column: 27, scope: !249)
!249 = distinct !DILexicalBlock(scope: !168, file: !1, line: 128, column: 59)
!250 = !DILocation(line: 131, column: 31, scope: !166)
!251 = !DILocation(line: 131, column: 55, scope: !166)
!252 = !DILocation(line: 131, column: 31, scope: !167)
!253 = !DILocation(line: 132, column: 29, scope: !254)
!254 = distinct !DILexicalBlock(scope: !166, file: !1, line: 131, column: 62)
!255 = !DILocation(line: 134, column: 33, scope: !164)
!256 = !DILocation(line: 134, column: 57, scope: !164)
!257 = !DILocation(line: 134, column: 33, scope: !165)
!258 = !DILocation(line: 135, column: 31, scope: !259)
!259 = distinct !DILexicalBlock(scope: !164, file: !1, line: 134, column: 64)
!260 = !DILocation(line: 137, column: 35, scope: !162)
!261 = !DILocation(line: 137, column: 59, scope: !162)
!262 = !DILocation(line: 137, column: 35, scope: !163)
!263 = !DILocation(line: 138, column: 33, scope: !264)
!264 = distinct !DILexicalBlock(scope: !162, file: !1, line: 137, column: 66)
!265 = !DILocation(line: 140, column: 37, scope: !160)
!266 = !DILocation(line: 140, column: 61, scope: !160)
!267 = !DILocation(line: 140, column: 37, scope: !161)
!268 = !DILocation(line: 141, column: 35, scope: !269)
!269 = distinct !DILexicalBlock(scope: !160, file: !1, line: 140, column: 68)
!270 = !DILocation(line: 143, column: 39, scope: !158)
!271 = !DILocation(line: 143, column: 63, scope: !158)
!272 = !DILocation(line: 143, column: 39, scope: !159)
!273 = !DILocation(line: 144, column: 37, scope: !274)
!274 = distinct !DILexicalBlock(scope: !158, file: !1, line: 143, column: 70)
!275 = !DILocation(line: 146, column: 41, scope: !156)
!276 = !DILocation(line: 146, column: 65, scope: !156)
!277 = !DILocation(line: 146, column: 41, scope: !157)
!278 = !DILocation(line: 147, column: 39, scope: !279)
!279 = distinct !DILexicalBlock(scope: !156, file: !1, line: 146, column: 72)
!280 = !DILocation(line: 149, column: 43, scope: !154)
!281 = !DILocation(line: 149, column: 67, scope: !154)
!282 = !DILocation(line: 149, column: 43, scope: !155)
!283 = !DILocation(line: 150, column: 41, scope: !284)
!284 = distinct !DILexicalBlock(scope: !154, file: !1, line: 149, column: 74)
!285 = !DILocation(line: 152, column: 45, scope: !152)
!286 = !DILocation(line: 152, column: 69, scope: !152)
!287 = !DILocation(line: 152, column: 45, scope: !153)
!288 = !DILocation(line: 153, column: 43, scope: !289)
!289 = distinct !DILexicalBlock(scope: !152, file: !1, line: 152, column: 76)
!290 = !DILocation(line: 155, column: 47, scope: !150)
!291 = !DILocation(line: 155, column: 71, scope: !150)
!292 = !DILocation(line: 155, column: 47, scope: !151)
!293 = !DILocation(line: 156, column: 45, scope: !294)
!294 = distinct !DILexicalBlock(scope: !150, file: !1, line: 155, column: 78)
!295 = !DILocation(line: 158, column: 45, scope: !149)
!296 = !DILocation(line: 159, column: 49, scope: !149)
!297 = !DILocation(line: 159, column: 52, scope: !148)
!298 = !DILocation(line: 161, column: 55, scope: !147)
!299 = !DILocation(line: 161, column: 53, scope: !147)
!300 = !DILocation(line: 162, column: 59, scope: !147)
!301 = !DILocation(line: 162, column: 100, scope: !147)
!302 = !DILocation(line: 162, column: 57, scope: !147)
!303 = !DILocation(line: 163, column: 66, scope: !147)
!304 = !DILocation(line: 164, column: 51, scope: !305)
!305 = distinct !DILexicalBlock(scope: !147, file: !1, line: 164, column: 51)
!306 = !DILocation(line: 164, column: 56, scope: !305)
!307 = !DILocation(line: 164, column: 53, scope: !305)
!308 = !DILocation(line: 164, column: 51, scope: !147)
!309 = !DILocation(line: 574, column: 10, scope: !310, inlinedAt: !311)
!310 = distinct !DILexicalBlock(scope: !29, file: !1, line: 573, column: 3)
!311 = distinct !DILocation(line: 166, column: 49, scope: !312)
!312 = distinct !DILexicalBlock(scope: !313, file: !1, line: 165, column: 49)
!313 = distinct !DILexicalBlock(scope: !305, file: !1, line: 164, column: 60)
!314 = !DILocation(line: 168, column: 47, scope: !313)
!315 = !DILocation(line: 169, column: 53, scope: !316)
!316 = distinct !DILexicalBlock(scope: !317, file: !1, line: 169, column: 53)
!317 = distinct !DILexicalBlock(scope: !305, file: !1, line: 168, column: 54)
!318 = !DILocation(line: 169, column: 68, scope: !316)
!319 = !DILocation(line: 169, column: 53, scope: !317)
!320 = !DILocation(line: 574, column: 10, scope: !310, inlinedAt: !321)
!321 = distinct !DILocation(line: 171, column: 51, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !1, line: 170, column: 51)
!323 = distinct !DILexicalBlock(scope: !316, file: !1, line: 169, column: 74)
!324 = !DILocation(line: 173, column: 49, scope: !323)
!325 = !DILocation(line: 174, column: 66, scope: !326)
!326 = distinct !DILexicalBlock(scope: !316, file: !1, line: 173, column: 56)
!327 = !DILocation(line: 178, column: 59, scope: !328)
!328 = distinct !DILexicalBlock(scope: !147, file: !1, line: 177, column: 47)
!329 = !DILocation(line: 178, column: 100, scope: !328)
!330 = !DILocation(line: 178, column: 57, scope: !328)
!331 = !DILocation(line: 179, column: 62, scope: !328)
!332 = !DILocation(line: 180, column: 70, scope: !328)
!333 = !DILocation(line: 181, column: 70, scope: !328)
!334 = !DILocation(line: 180, column: 56, scope: !328)
!335 = !DILocation(line: 180, column: 54, scope: !328)
!336 = !DILocation(line: 184, column: 68, scope: !337)
!337 = distinct !DILexicalBlock(scope: !147, file: !1, line: 183, column: 47)
!338 = !DILocation(line: 184, column: 61, scope: !337)
!339 = !DILocation(line: 184, column: 59, scope: !337)
!340 = !DILocation(line: 185, column: 51, scope: !341)
!341 = distinct !DILexicalBlock(scope: !337, file: !1, line: 185, column: 51)
!342 = !DILocation(line: 185, column: 63, scope: !341)
!343 = !DILocation(line: 185, column: 51, scope: !337)
!344 = !DILocation(line: 187, column: 71, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !1, line: 186, column: 49)
!346 = distinct !DILexicalBlock(scope: !341, file: !1, line: 185, column: 72)
!347 = !DILocation(line: 187, column: 78, scope: !345)
!348 = !DILocation(line: 188, column: 71, scope: !345)
!349 = !DILocation(line: 187, column: 49, scope: !345)
!350 = !DILocation(line: 191, column: 47, scope: !346)
!351 = !DILocation(line: 193, column: 51, scope: !352)
!352 = distinct !DILexicalBlock(scope: !147, file: !1, line: 193, column: 51)
!353 = !DILocation(line: 193, column: 58, scope: !352)
!354 = !DILocation(line: 193, column: 51, scope: !147)
!355 = !DILocation(line: 194, column: 53, scope: !356)
!356 = distinct !DILexicalBlock(scope: !357, file: !1, line: 194, column: 53)
!357 = distinct !DILexicalBlock(scope: !352, file: !1, line: 193, column: 64)
!358 = !DILocation(line: 194, column: 62, scope: !356)
!359 = !DILocation(line: 194, column: 53, scope: !357)
!360 = !DILocation(line: 195, column: 67, scope: !361)
!361 = distinct !DILexicalBlock(scope: !356, file: !1, line: 194, column: 68)
!362 = !DILocation(line: 196, column: 67, scope: !361)
!363 = !DILocation(line: 197, column: 75, scope: !361)
!364 = !DILocation(line: 198, column: 49, scope: !361)
!365 = !DILocation(line: 199, column: 47, scope: !357)
!366 = !DILocation(line: 201, column: 71, scope: !146)
!367 = !DILocation(line: 201, column: 69, scope: !146)
!368 = !DILocation(line: 202, column: 58, scope: !146)
!369 = !DILocation(line: 202, column: 56, scope: !146)
!370 = !DILocation(line: 203, column: 74, scope: !146)
!371 = !DILocation(line: 204, column: 66, scope: !146)
!372 = !DILocation(line: 204, column: 47, scope: !146)
!373 = !DILocation(line: 498, column: 7, scope: !374, inlinedAt: !145)
!374 = distinct !DILexicalBlock(scope: !375, file: !1, line: 498, column: 7)
!375 = distinct !DILexicalBlock(scope: !19, file: !1, line: 497, column: 3)
!376 = !DILocation(line: 498, column: 12, scope: !374, inlinedAt: !145)
!377 = !DILocation(line: 498, column: 9, scope: !374, inlinedAt: !145)
!378 = !DILocation(line: 498, column: 7, scope: !375, inlinedAt: !145)
!379 = !DILocation(line: 574, column: 10, scope: !310, inlinedAt: !380)
!380 = distinct !DILocation(line: 502, column: 5, scope: !381, inlinedAt: !145)
!381 = distinct !DILexicalBlock(scope: !382, file: !1, line: 501, column: 5)
!382 = distinct !DILexicalBlock(scope: !374, file: !1, line: 500, column: 10)
!383 = !DILocation(line: 499, column: 9, scope: !384, inlinedAt: !145)
!384 = distinct !DILexicalBlock(scope: !374, file: !1, line: 498, column: 16)
!385 = !DILocation(line: 499, column: 7, scope: !384, inlinedAt: !145)
!386 = !DILocation(line: 505, column: 3, scope: !375, inlinedAt: !145)
!387 = !DILocation(line: 206, column: 47, scope: !147)
!388 = !DILocation(line: 208, column: 71, scope: !147)
!389 = !DILocation(line: 209, column: 51, scope: !390)
!390 = distinct !DILexicalBlock(scope: !147, file: !1, line: 209, column: 51)
!391 = !DILocation(line: 209, column: 56, scope: !390)
!392 = !DILocation(line: 209, column: 53, scope: !390)
!393 = !DILocation(line: 209, column: 51, scope: !147)
!394 = !DILocation(line: 210, column: 53, scope: !395)
!395 = distinct !DILexicalBlock(scope: !390, file: !1, line: 209, column: 60)
!396 = !DILocation(line: 210, column: 51, scope: !395)
!397 = !DILocation(line: 211, column: 47, scope: !395)
!398 = !DILocation(line: 574, column: 10, scope: !310, inlinedAt: !399)
!399 = distinct !DILocation(line: 213, column: 49, scope: !400)
!400 = distinct !DILexicalBlock(scope: !401, file: !1, line: 212, column: 49)
!401 = distinct !DILexicalBlock(scope: !390, file: !1, line: 211, column: 54)
!402 = !DILocation(line: 217, column: 68, scope: !403)
!403 = distinct !DILexicalBlock(scope: !147, file: !1, line: 216, column: 47)
!404 = !DILocation(line: 218, column: 88, scope: !403)
!405 = !DILocation(line: 219, column: 70, scope: !403)
!406 = !DILocation(line: 220, column: 70, scope: !403)
!407 = !DILocation(line: 219, column: 56, scope: !403)
!408 = !DILocation(line: 219, column: 54, scope: !403)
!409 = !DILocation(line: 222, column: 47, scope: !147)
!410 = !DILocation(line: 224, column: 63, scope: !147)
!411 = !DILocation(line: 225, column: 51, scope: !412)
!412 = distinct !DILexicalBlock(scope: !147, file: !1, line: 225, column: 51)
!413 = !DILocation(line: 225, column: 56, scope: !412)
!414 = !DILocation(line: 225, column: 53, scope: !412)
!415 = !DILocation(line: 225, column: 51, scope: !147)
!416 = !DILocation(line: 226, column: 53, scope: !417)
!417 = distinct !DILexicalBlock(scope: !412, file: !1, line: 225, column: 60)
!418 = !DILocation(line: 226, column: 51, scope: !417)
!419 = !DILocation(line: 227, column: 47, scope: !417)
!420 = !DILocation(line: 574, column: 10, scope: !310, inlinedAt: !421)
!421 = distinct !DILocation(line: 229, column: 49, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !1, line: 228, column: 49)
!423 = distinct !DILexicalBlock(scope: !412, file: !1, line: 227, column: 54)
!424 = !DILocation(line: 233, column: 68, scope: !425)
!425 = distinct !DILexicalBlock(scope: !147, file: !1, line: 232, column: 47)
!426 = !DILocation(line: 234, column: 88, scope: !425)
!427 = !DILocation(line: 235, column: 61, scope: !425)
!428 = !DILocation(line: 235, column: 81, scope: !425)
!429 = !DILocation(line: 235, column: 47, scope: !425)
!430 = !DILocation(line: 236, column: 54, scope: !425)
!431 = !DILocation(line: 238, column: 47, scope: !147)
!432 = !DILocation(line: 240, column: 51, scope: !433)
!433 = distinct !DILexicalBlock(scope: !147, file: !1, line: 240, column: 51)
!434 = !DILocation(line: 240, column: 56, scope: !433)
!435 = !DILocation(line: 240, column: 53, scope: !433)
!436 = !DILocation(line: 240, column: 51, scope: !147)
!437 = !DILocation(line: 241, column: 53, scope: !438)
!438 = distinct !DILexicalBlock(scope: !433, file: !1, line: 240, column: 60)
!439 = !DILocation(line: 241, column: 51, scope: !438)
!440 = !DILocation(line: 242, column: 47, scope: !438)
!441 = !DILocation(line: 574, column: 10, scope: !310, inlinedAt: !442)
!442 = distinct !DILocation(line: 244, column: 49, scope: !443)
!443 = distinct !DILexicalBlock(scope: !444, file: !1, line: 243, column: 49)
!444 = distinct !DILexicalBlock(scope: !433, file: !1, line: 242, column: 54)
!445 = !DILocation(line: 248, column: 68, scope: !446)
!446 = distinct !DILexicalBlock(scope: !147, file: !1, line: 247, column: 47)
!447 = !DILocation(line: 249, column: 88, scope: !446)
!448 = !DILocation(line: 250, column: 70, scope: !446)
!449 = !DILocation(line: 251, column: 70, scope: !446)
!450 = !DILocation(line: 250, column: 56, scope: !446)
!451 = !DILocation(line: 250, column: 54, scope: !446)
!452 = !DILocation(line: 253, column: 47, scope: !147)
!453 = !DILocation(line: 254, column: 52, scope: !148)
!454 = !DILocation(line: 278, column: 11, scope: !135)
!455 = !DILocation(line: 278, column: 3, scope: !135)
!456 = !DILocation(line: 573, column: 3, scope: !29)
!457 = !DILocation(line: 574, column: 10, scope: !310)
!458 = !DILocation(line: 577, column: 1, scope: !29)
!459 = !DILocation(line: 494, column: 29, scope: !19)
!460 = !DILocation(line: 494, column: 39, scope: !19)
!461 = !DILocation(line: 498, column: 7, scope: !374)
!462 = !DILocation(line: 498, column: 12, scope: !374)
!463 = !DILocation(line: 498, column: 9, scope: !374)
!464 = !DILocation(line: 498, column: 7, scope: !375)
!465 = !DILocation(line: 499, column: 9, scope: !384)
!466 = !DILocation(line: 499, column: 7, scope: !384)
!467 = !DILocation(line: 500, column: 3, scope: !384)
!468 = !DILocation(line: 574, column: 10, scope: !310, inlinedAt: !469)
!469 = distinct !DILocation(line: 502, column: 5, scope: !381)
!470 = !DILocation(line: 505, column: 3, scope: !375)
!471 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !14, file: !1, line: 282, type: !13)
!472 = !DILocation(line: 282, column: 7, scope: !14)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp", scope: !14, file: !1, line: 283, type: !13)
!474 = !DILocation(line: 283, column: 7, scope: !14)
!475 = !DILocation(line: 283, column: 13, scope: !14)
!476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pirp", scope: !14, file: !1, line: 284, type: !13)
!477 = !DILocation(line: 284, column: 7, scope: !14)
!478 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pirp__IoStatus__Status", scope: !14, file: !1, line: 285, type: !13)
!479 = !DILocation(line: 285, column: 7, scope: !14)
!480 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp_choice", scope: !14, file: !1, line: 286, type: !13)
!481 = !DILocation(line: 286, column: 7, scope: !14)
!482 = !DILocation(line: 286, column: 20, scope: !14)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devobj", scope: !14, file: !1, line: 287, type: !13)
!484 = !DILocation(line: 287, column: 7, scope: !14)
!485 = !DILocation(line: 287, column: 16, scope: !14)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp8", scope: !14, file: !1, line: 288, type: !13)
!487 = !DILocation(line: 288, column: 7, scope: !14)
!488 = !DILocation(line: 293, column: 12, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !1, line: 291, column: 3)
!490 = distinct !DILexicalBlock(scope: !14, file: !1, line: 290, column: 3)
!491 = !DILocation(line: 294, column: 13, scope: !489)
!492 = !DILocation(line: 295, column: 4, scope: !489)
!493 = !DILocation(line: 296, column: 11, scope: !489)
!494 = !DILocation(line: 297, column: 5, scope: !489)
!495 = !DILocation(line: 298, column: 6, scope: !489)
!496 = !DILocation(line: 299, column: 9, scope: !489)
!497 = !DILocation(line: 300, column: 9, scope: !489)
!498 = !DILocation(line: 301, column: 8, scope: !489)
!499 = !DILocation(line: 302, column: 8, scope: !489)
!500 = !DILocation(line: 303, column: 7, scope: !489)
!501 = !DILocation(line: 304, column: 10, scope: !489)
!502 = !DILocation(line: 305, column: 12, scope: !489)
!503 = !DILocation(line: 306, column: 18, scope: !489)
!504 = !DILocation(line: 307, column: 21, scope: !489)
!505 = !DILocation(line: 308, column: 18, scope: !489)
!506 = !DILocation(line: 309, column: 13, scope: !489)
!507 = !DILocation(line: 310, column: 12, scope: !489)
!508 = !DILocation(line: 312, column: 10, scope: !489)
!509 = !DILocation(line: 313, column: 10, scope: !489)
!510 = !DILocation(line: 313, column: 8, scope: !489)
!511 = !DILocation(line: 48, column: 12, scope: !64, inlinedAt: !512)
!512 = distinct !DILocation(line: 314, column: 3, scope: !489)
!513 = !DILocation(line: 49, column: 6, scope: !64, inlinedAt: !512)
!514 = !DILocation(line: 50, column: 6, scope: !64, inlinedAt: !512)
!515 = !DILocation(line: 51, column: 9, scope: !64, inlinedAt: !512)
!516 = !DILocation(line: 52, column: 9, scope: !64, inlinedAt: !512)
!517 = !DILocation(line: 53, column: 8, scope: !64, inlinedAt: !512)
!518 = !DILocation(line: 54, column: 8, scope: !64, inlinedAt: !512)
!519 = !DILocation(line: 55, column: 7, scope: !64, inlinedAt: !512)
!520 = !DILocation(line: 56, column: 7, scope: !64, inlinedAt: !512)
!521 = !DILocation(line: 56, column: 5, scope: !64, inlinedAt: !512)
!522 = !DILocation(line: 57, column: 10, scope: !64, inlinedAt: !512)
!523 = !DILocation(line: 58, column: 12, scope: !64, inlinedAt: !512)
!524 = !DILocation(line: 59, column: 18, scope: !64, inlinedAt: !512)
!525 = !DILocation(line: 60, column: 21, scope: !64, inlinedAt: !512)
!526 = !DILocation(line: 61, column: 18, scope: !64, inlinedAt: !512)
!527 = !DILocation(line: 62, column: 13, scope: !64, inlinedAt: !512)
!528 = !DILocation(line: 316, column: 7, scope: !529)
!529 = distinct !DILexicalBlock(scope: !490, file: !1, line: 316, column: 7)
!530 = !DILocation(line: 316, column: 14, scope: !529)
!531 = !DILocation(line: 316, column: 7, scope: !490)
!532 = !DILocation(line: 317, column: 9, scope: !533)
!533 = distinct !DILexicalBlock(scope: !529, file: !1, line: 316, column: 20)
!534 = !DILocation(line: 317, column: 7, scope: !533)
!535 = !DILocation(line: 318, column: 15, scope: !533)
!536 = !DILocation(line: 319, column: 22, scope: !533)
!537 = !DILocation(line: 319, column: 20, scope: !533)
!538 = !DILocation(line: 320, column: 25, scope: !533)
!539 = !DILocation(line: 320, column: 23, scope: !533)
!540 = !DILocation(line: 321, column: 22, scope: !533)
!541 = !DILocation(line: 321, column: 20, scope: !533)
!542 = !DILocation(line: 322, column: 14, scope: !533)
!543 = !DILocation(line: 322, column: 12, scope: !533)
!544 = !DILocation(line: 323, column: 28, scope: !533)
!545 = !DILocation(line: 324, column: 14, scope: !533)
!546 = !DILocation(line: 325, column: 9, scope: !547)
!547 = distinct !DILexicalBlock(scope: !533, file: !1, line: 325, column: 9)
!548 = !DILocation(line: 325, column: 20, scope: !547)
!549 = !DILocation(line: 325, column: 9, scope: !533)
!550 = !DILocation(line: 326, column: 30, scope: !551)
!551 = distinct !DILexicalBlock(scope: !547, file: !1, line: 325, column: 26)
!552 = !DILocation(line: 327, column: 16, scope: !551)
!553 = !DILocation(line: 328, column: 5, scope: !551)
!554 = !DILocation(line: 34, column: 7, scope: !54, inlinedAt: !555)
!555 = distinct !DILocation(line: 330, column: 5, scope: !556)
!556 = distinct !DILexicalBlock(scope: !533, file: !1, line: 329, column: 5)
!557 = !DILocation(line: 34, column: 5, scope: !54, inlinedAt: !555)
!558 = !DILocation(line: 35, column: 10, scope: !54, inlinedAt: !555)
!559 = !DILocation(line: 36, column: 12, scope: !54, inlinedAt: !555)
!560 = !DILocation(line: 37, column: 18, scope: !54, inlinedAt: !555)
!561 = !DILocation(line: 38, column: 21, scope: !54, inlinedAt: !555)
!562 = !DILocation(line: 39, column: 18, scope: !54, inlinedAt: !555)
!563 = !DILocation(line: 40, column: 13, scope: !54, inlinedAt: !555)
!564 = !DILocation(line: 333, column: 8, scope: !565)
!565 = distinct !DILexicalBlock(scope: !566, file: !1, line: 333, column: 8)
!566 = distinct !DILexicalBlock(scope: !533, file: !1, line: 332, column: 5)
!567 = !DILocation(line: 333, column: 15, scope: !565)
!568 = !DILocation(line: 333, column: 8, scope: !566)
!569 = !DILocation(line: 334, column: 18, scope: !570)
!570 = distinct !DILexicalBlock(scope: !565, file: !1, line: 333, column: 20)
!571 = !DILocation(line: 335, column: 5, scope: !570)
!572 = !DILocation(line: 337, column: 18, scope: !573)
!573 = distinct !DILexicalBlock(scope: !565, file: !1, line: 336, column: 9)
!574 = !DILocation(line: 339, column: 11, scope: !575)
!575 = distinct !DILexicalBlock(scope: !566, file: !1, line: 339, column: 9)
!576 = !DILocation(line: 339, column: 9, scope: !566)
!577 = !DILocation(line: 340, column: 7, scope: !578)
!578 = distinct !DILexicalBlock(scope: !575, file: !1, line: 339, column: 23)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_1", scope: !533, file: !1, line: 343, type: !13)
!580 = !DILocation(line: 343, column: 9, scope: !533)
!581 = !DILocation(line: 344, column: 17, scope: !533)
!582 = !DILocation(line: 344, column: 15, scope: !533)
!583 = !DILocation(line: 345, column: 9, scope: !584)
!584 = distinct !DILexicalBlock(scope: !533, file: !1, line: 345, column: 9)
!585 = !DILocation(line: 345, column: 19, scope: !584)
!586 = !DILocation(line: 345, column: 9, scope: !533)
!587 = !DILocation(line: 346, column: 7, scope: !588)
!588 = distinct !DILexicalBlock(scope: !584, file: !1, line: 345, column: 25)
!589 = !DILocation(line: 348, column: 7, scope: !590)
!590 = distinct !DILexicalBlock(scope: !584, file: !1, line: 347, column: 12)
!591 = !DILocation(line: 349, column: 11, scope: !590)
!592 = !DILocation(line: 349, column: 14, scope: !593)
!593 = distinct !DILexicalBlock(scope: !590, file: !1, line: 349, column: 11)
!594 = !DILocation(line: 352, column: 31, scope: !595)
!595 = distinct !DILexicalBlock(scope: !596, file: !1, line: 351, column: 9)
!596 = distinct !DILexicalBlock(scope: !593, file: !1, line: 349, column: 14)
!597 = !DILocation(line: 352, column: 39, scope: !595)
!598 = !DILocation(line: 352, column: 18, scope: !595)
!599 = !DILocation(line: 352, column: 16, scope: !595)
!600 = !DILocation(line: 354, column: 9, scope: !596)
!601 = !DILocation(line: 356, column: 9, scope: !596)
!602 = !DILocation(line: 357, column: 14, scope: !593)
!603 = !DILocation(line: 361, column: 3, scope: !533)
!604 = !DILocation(line: 362, column: 7, scope: !605)
!605 = distinct !DILexicalBlock(scope: !490, file: !1, line: 362, column: 7)
!606 = !DILocation(line: 362, column: 14, scope: !605)
!607 = !DILocation(line: 362, column: 7, scope: !490)
!608 = !DILocation(line: 363, column: 9, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !1, line: 363, column: 9)
!610 = distinct !DILexicalBlock(scope: !605, file: !1, line: 362, column: 20)
!611 = !DILocation(line: 363, column: 14, scope: !609)
!612 = !DILocation(line: 363, column: 11, scope: !609)
!613 = !DILocation(line: 363, column: 9, scope: !610)
!614 = !DILocation(line: 364, column: 11, scope: !615)
!615 = distinct !DILexicalBlock(scope: !609, file: !1, line: 363, column: 18)
!616 = !DILocation(line: 364, column: 9, scope: !615)
!617 = !DILocation(line: 365, column: 5, scope: !615)
!618 = !DILocation(line: 366, column: 7, scope: !619)
!619 = distinct !DILexicalBlock(scope: !609, file: !1, line: 365, column: 12)
!620 = !DILocation(line: 368, column: 3, scope: !610)
!621 = !DILocation(line: 368, column: 10, scope: !605)
!622 = !DILocation(line: 370, column: 9, scope: !623)
!623 = distinct !DILexicalBlock(scope: !624, file: !1, line: 370, column: 9)
!624 = distinct !DILexicalBlock(scope: !605, file: !1, line: 368, column: 10)
!625 = !DILocation(line: 370, column: 16, scope: !623)
!626 = !DILocation(line: 370, column: 9, scope: !624)
!627 = !DILocation(line: 371, column: 11, scope: !628)
!628 = distinct !DILexicalBlock(scope: !629, file: !1, line: 371, column: 11)
!629 = distinct !DILexicalBlock(scope: !623, file: !1, line: 370, column: 22)
!630 = !DILocation(line: 371, column: 16, scope: !628)
!631 = !DILocation(line: 371, column: 13, scope: !628)
!632 = !DILocation(line: 371, column: 11, scope: !629)
!633 = !DILocation(line: 372, column: 13, scope: !634)
!634 = distinct !DILexicalBlock(scope: !628, file: !1, line: 371, column: 22)
!635 = !DILocation(line: 372, column: 11, scope: !634)
!636 = !DILocation(line: 373, column: 7, scope: !634)
!637 = !DILocation(line: 374, column: 9, scope: !638)
!638 = distinct !DILexicalBlock(scope: !628, file: !1, line: 373, column: 14)
!639 = !DILocation(line: 376, column: 5, scope: !629)
!640 = !DILocation(line: 376, column: 12, scope: !623)
!641 = !DILocation(line: 378, column: 11, scope: !642)
!642 = distinct !DILexicalBlock(scope: !643, file: !1, line: 378, column: 11)
!643 = distinct !DILexicalBlock(scope: !623, file: !1, line: 376, column: 12)
!644 = !DILocation(line: 378, column: 16, scope: !642)
!645 = !DILocation(line: 378, column: 13, scope: !642)
!646 = !DILocation(line: 378, column: 11, scope: !643)
!647 = !DILocation(line: 379, column: 13, scope: !648)
!648 = distinct !DILexicalBlock(scope: !649, file: !1, line: 379, column: 13)
!649 = distinct !DILexicalBlock(scope: !642, file: !1, line: 378, column: 26)
!650 = !DILocation(line: 379, column: 20, scope: !648)
!651 = !DILocation(line: 379, column: 13, scope: !649)
!652 = !DILocation(line: 380, column: 15, scope: !653)
!653 = distinct !DILexicalBlock(scope: !654, file: !1, line: 380, column: 15)
!654 = distinct !DILexicalBlock(scope: !648, file: !1, line: 379, column: 27)
!655 = !DILocation(line: 380, column: 20, scope: !653)
!656 = !DILocation(line: 380, column: 17, scope: !653)
!657 = !DILocation(line: 380, column: 15, scope: !654)
!658 = !DILocation(line: 381, column: 17, scope: !659)
!659 = distinct !DILexicalBlock(scope: !660, file: !1, line: 381, column: 17)
!660 = distinct !DILexicalBlock(scope: !653, file: !1, line: 380, column: 27)
!661 = !DILocation(line: 381, column: 22, scope: !659)
!662 = !DILocation(line: 381, column: 19, scope: !659)
!663 = !DILocation(line: 381, column: 17, scope: !660)
!664 = !DILocation(line: 382, column: 19, scope: !665)
!665 = distinct !DILexicalBlock(scope: !666, file: !1, line: 382, column: 19)
!666 = distinct !DILexicalBlock(scope: !659, file: !1, line: 381, column: 27)
!667 = !DILocation(line: 382, column: 24, scope: !665)
!668 = !DILocation(line: 382, column: 21, scope: !665)
!669 = !DILocation(line: 382, column: 19, scope: !666)
!670 = !DILocation(line: 383, column: 17, scope: !671)
!671 = distinct !DILexicalBlock(scope: !665, file: !1, line: 382, column: 28)
!672 = !DILocation(line: 385, column: 13, scope: !666)
!673 = !DILocation(line: 386, column: 15, scope: !674)
!674 = distinct !DILexicalBlock(scope: !659, file: !1, line: 385, column: 20)
!675 = !DILocation(line: 388, column: 11, scope: !660)
!676 = !DILocation(line: 388, column: 18, scope: !653)
!677 = !DILocation(line: 390, column: 17, scope: !678)
!678 = distinct !DILexicalBlock(scope: !679, file: !1, line: 390, column: 17)
!679 = distinct !DILexicalBlock(scope: !653, file: !1, line: 388, column: 18)
!680 = !DILocation(line: 390, column: 24, scope: !678)
!681 = !DILocation(line: 390, column: 17, scope: !679)
!682 = !DILocation(line: 391, column: 19, scope: !683)
!683 = distinct !DILexicalBlock(scope: !684, file: !1, line: 391, column: 19)
!684 = distinct !DILexicalBlock(scope: !678, file: !1, line: 390, column: 30)
!685 = !DILocation(line: 391, column: 26, scope: !683)
!686 = !DILocation(line: 391, column: 19, scope: !684)
!687 = !DILocation(line: 574, column: 10, scope: !310, inlinedAt: !688)
!688 = distinct !DILocation(line: 393, column: 17, scope: !689)
!689 = distinct !DILexicalBlock(scope: !690, file: !1, line: 392, column: 17)
!690 = distinct !DILexicalBlock(scope: !683, file: !1, line: 391, column: 34)
!691 = !DILocation(line: 395, column: 15, scope: !690)
!692 = !DILocation(line: 396, column: 13, scope: !684)
!693 = !DILocation(line: 397, column: 19, scope: !694)
!694 = distinct !DILexicalBlock(scope: !695, file: !1, line: 397, column: 19)
!695 = distinct !DILexicalBlock(scope: !678, file: !1, line: 396, column: 20)
!696 = !DILocation(line: 397, column: 24, scope: !694)
!697 = !DILocation(line: 397, column: 21, scope: !694)
!698 = !DILocation(line: 397, column: 19, scope: !695)
!699 = !DILocation(line: 398, column: 21, scope: !700)
!700 = distinct !DILexicalBlock(scope: !701, file: !1, line: 398, column: 21)
!701 = distinct !DILexicalBlock(scope: !694, file: !1, line: 397, column: 28)
!702 = !DILocation(line: 398, column: 28, scope: !700)
!703 = !DILocation(line: 398, column: 21, scope: !701)
!704 = !DILocation(line: 400, column: 17, scope: !705)
!705 = distinct !DILexicalBlock(scope: !700, file: !1, line: 398, column: 36)
!706 = !DILocation(line: 401, column: 15, scope: !701)
!707 = !DILocation(line: 402, column: 21, scope: !708)
!708 = distinct !DILexicalBlock(scope: !709, file: !1, line: 402, column: 21)
!709 = distinct !DILexicalBlock(scope: !694, file: !1, line: 401, column: 22)
!710 = !DILocation(line: 402, column: 31, scope: !708)
!711 = !DILocation(line: 402, column: 28, scope: !708)
!712 = !DILocation(line: 402, column: 21, scope: !709)
!713 = !DILocation(line: 404, column: 17, scope: !714)
!714 = distinct !DILexicalBlock(scope: !708, file: !1, line: 402, column: 50)
!715 = !DILocation(line: 408, column: 9, scope: !654)
!716 = !DILocation(line: 409, column: 7, scope: !649)
!717 = !DILocation(line: 413, column: 11, scope: !490)
!718 = !DILocation(line: 413, column: 3, scope: !490)
!719 = !DILocation(line: 415, column: 1, scope: !14)
!720 = !DILocation(line: 420, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !722, file: !1, line: 420, column: 7)
!722 = distinct !DILexicalBlock(scope: !17, file: !1, line: 419, column: 3)
!723 = !DILocation(line: 420, column: 12, scope: !721)
!724 = !DILocation(line: 420, column: 9, scope: !721)
!725 = !DILocation(line: 420, column: 7, scope: !722)
!726 = !DILocation(line: 421, column: 9, scope: !727)
!727 = distinct !DILexicalBlock(scope: !721, file: !1, line: 420, column: 16)
!728 = !DILocation(line: 421, column: 7, scope: !727)
!729 = !DILocation(line: 422, column: 3, scope: !727)
!730 = !DILocation(line: 574, column: 10, scope: !310, inlinedAt: !731)
!731 = distinct !DILocation(line: 424, column: 5, scope: !732)
!732 = distinct !DILexicalBlock(scope: !733, file: !1, line: 423, column: 5)
!733 = distinct !DILexicalBlock(scope: !721, file: !1, line: 422, column: 10)
!734 = !DILocation(line: 427, column: 3, scope: !722)
!735 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !18, file: !1, line: 430, type: !13)
!736 = !DILocation(line: 430, column: 23, scope: !18)
!737 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !18, file: !1, line: 430, type: !13)
!738 = !DILocation(line: 430, column: 42, scope: !18)
!739 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "returnVal2", scope: !18, file: !1, line: 432, type: !13)
!740 = !DILocation(line: 432, column: 7, scope: !18)
!741 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compRetStatus", scope: !18, file: !1, line: 433, type: !13)
!742 = !DILocation(line: 433, column: 7, scope: !18)
!743 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lcontext", scope: !18, file: !1, line: 434, type: !13)
!744 = !DILocation(line: 434, column: 7, scope: !18)
!745 = !DILocation(line: 434, column: 18, scope: !18)
!746 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp7", scope: !18, file: !1, line: 435, type: !747)
!747 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!748 = !DILocation(line: 435, column: 13, scope: !18)
!749 = !DILocation(line: 438, column: 7, scope: !750)
!750 = distinct !DILexicalBlock(scope: !751, file: !1, line: 438, column: 7)
!751 = distinct !DILexicalBlock(scope: !18, file: !1, line: 437, column: 3)
!752 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 1, scope: !22, file: !1, line: 508, type: !13)
!753 = !DILocation(line: 508, column: 20, scope: !22, inlinedAt: !754)
!754 = distinct !DILocation(line: 564, column: 3, scope: !755, inlinedAt: !757)
!755 = distinct !DILexicalBlock(scope: !756, file: !1, line: 562, column: 3)
!756 = distinct !DILexicalBlock(scope: !28, file: !1, line: 561, column: 3)
!757 = distinct !DILocation(line: 439, column: 21, scope: !758)
!758 = distinct !DILexicalBlock(scope: !750, file: !1, line: 438, column: 23)
!759 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Increment", arg: 2, scope: !22, file: !1, line: 508, type: !13)
!760 = !DILocation(line: 508, column: 32, scope: !22, inlinedAt: !754)
!761 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Wait", arg: 3, scope: !22, file: !1, line: 508, type: !13)
!762 = !DILocation(line: 508, column: 48, scope: !22, inlinedAt: !754)
!763 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !22, file: !1, line: 509, type: !13)
!764 = !DILocation(line: 509, column: 7, scope: !22, inlinedAt: !754)
!765 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !28, file: !1, line: 558, type: !13)
!766 = !DILocation(line: 558, column: 27, scope: !28, inlinedAt: !757)
!767 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !28, file: !1, line: 558, type: !13)
!768 = !DILocation(line: 558, column: 46, scope: !28, inlinedAt: !757)
!769 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 3, scope: !28, file: !1, line: 558, type: !13)
!770 = !DILocation(line: 558, column: 56, scope: !28, inlinedAt: !757)
!771 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "event", scope: !28, file: !1, line: 559, type: !13)
!772 = !DILocation(line: 559, column: 7, scope: !28, inlinedAt: !757)
!773 = !DILocation(line: 438, column: 7, scope: !751)
!774 = !DILocation(line: 439, column: 39, scope: !758)
!775 = !DILocation(line: 439, column: 53, scope: !758)
!776 = !DILocation(line: 439, column: 58, scope: !758)
!777 = !DILocation(line: 439, column: 21, scope: !758)
!778 = !DILocation(line: 563, column: 11, scope: !755, inlinedAt: !757)
!779 = !DILocation(line: 563, column: 9, scope: !755, inlinedAt: !757)
!780 = !DILocation(line: 564, column: 14, scope: !755, inlinedAt: !757)
!781 = !DILocation(line: 564, column: 3, scope: !755, inlinedAt: !757)
!782 = !DILocation(line: 509, column: 11, scope: !22, inlinedAt: !754)
!783 = !DILocation(line: 512, column: 18, scope: !784, inlinedAt: !754)
!784 = distinct !DILexicalBlock(scope: !22, file: !1, line: 511, column: 3)
!785 = !DILocation(line: 513, column: 11, scope: !784, inlinedAt: !754)
!786 = !DILocation(line: 513, column: 3, scope: !784, inlinedAt: !754)
!787 = !DILocation(line: 566, column: 3, scope: !756, inlinedAt: !757)
!788 = !DILocation(line: 439, column: 19, scope: !758)
!789 = !DILocation(line: 420, column: 7, scope: !721, inlinedAt: !790)
!790 = distinct !DILocation(line: 440, column: 5, scope: !758)
!791 = !DILocation(line: 420, column: 12, scope: !721, inlinedAt: !790)
!792 = !DILocation(line: 420, column: 9, scope: !721, inlinedAt: !790)
!793 = !DILocation(line: 420, column: 7, scope: !722, inlinedAt: !790)
!794 = !DILocation(line: 574, column: 10, scope: !310, inlinedAt: !795)
!795 = distinct !DILocation(line: 424, column: 5, scope: !732, inlinedAt: !790)
!796 = !DILocation(line: 421, column: 9, scope: !727, inlinedAt: !790)
!797 = !DILocation(line: 421, column: 7, scope: !727, inlinedAt: !790)
!798 = !DILocation(line: 441, column: 3, scope: !758)
!799 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_2", scope: !751, file: !1, line: 442, type: !13)
!800 = !DILocation(line: 442, column: 7, scope: !751)
!801 = !DILocation(line: 443, column: 15, scope: !751)
!802 = !DILocation(line: 443, column: 13, scope: !751)
!803 = !DILocation(line: 444, column: 7, scope: !804)
!804 = distinct !DILexicalBlock(scope: !751, file: !1, line: 444, column: 7)
!805 = !DILocation(line: 444, column: 17, scope: !804)
!806 = !DILocation(line: 444, column: 7, scope: !751)
!807 = !DILocation(line: 445, column: 5, scope: !808)
!808 = distinct !DILexicalBlock(scope: !804, file: !1, line: 444, column: 23)
!809 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_3", scope: !810, file: !1, line: 447, type: !13)
!810 = distinct !DILexicalBlock(scope: !804, file: !1, line: 446, column: 10)
!811 = !DILocation(line: 447, column: 9, scope: !810)
!812 = !DILocation(line: 448, column: 17, scope: !810)
!813 = !DILocation(line: 448, column: 15, scope: !810)
!814 = !DILocation(line: 449, column: 9, scope: !815)
!815 = distinct !DILexicalBlock(scope: !810, file: !1, line: 449, column: 9)
!816 = !DILocation(line: 449, column: 19, scope: !815)
!817 = !DILocation(line: 449, column: 9, scope: !810)
!818 = !DILocation(line: 450, column: 7, scope: !819)
!819 = distinct !DILexicalBlock(scope: !815, file: !1, line: 449, column: 25)
!820 = !DILocation(line: 452, column: 7, scope: !821)
!821 = distinct !DILexicalBlock(scope: !815, file: !1, line: 451, column: 12)
!822 = !DILocation(line: 453, column: 11, scope: !821)
!823 = !DILocation(line: 453, column: 14, scope: !824)
!824 = distinct !DILexicalBlock(scope: !821, file: !1, line: 453, column: 11)
!825 = !DILocation(line: 455, column: 20, scope: !826)
!826 = distinct !DILexicalBlock(scope: !824, file: !1, line: 453, column: 14)
!827 = !DILocation(line: 456, column: 9, scope: !826)
!828 = !DILocation(line: 458, column: 20, scope: !826)
!829 = !DILocation(line: 459, column: 9, scope: !826)
!830 = !DILocation(line: 461, column: 20, scope: !826)
!831 = !DILocation(line: 462, column: 9, scope: !826)
!832 = !DILocation(line: 463, column: 14, scope: !824)
!833 = !DILocation(line: 468, column: 7, scope: !834)
!834 = distinct !DILexicalBlock(scope: !751, file: !1, line: 468, column: 7)
!835 = !DILocation(line: 468, column: 12, scope: !834)
!836 = !DILocation(line: 468, column: 9, scope: !834)
!837 = !DILocation(line: 468, column: 7, scope: !751)
!838 = !DILocation(line: 469, column: 9, scope: !839)
!839 = distinct !DILexicalBlock(scope: !834, file: !1, line: 468, column: 16)
!840 = !DILocation(line: 469, column: 7, scope: !839)
!841 = !DILocation(line: 470, column: 25, scope: !839)
!842 = !DILocation(line: 470, column: 23, scope: !839)
!843 = !DILocation(line: 471, column: 3, scope: !839)
!844 = !DILocation(line: 472, column: 9, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !1, line: 472, column: 9)
!846 = distinct !DILexicalBlock(scope: !834, file: !1, line: 471, column: 10)
!847 = !DILocation(line: 472, column: 14, scope: !845)
!848 = !DILocation(line: 472, column: 11, scope: !845)
!849 = !DILocation(line: 472, column: 9, scope: !846)
!850 = !DILocation(line: 473, column: 11, scope: !851)
!851 = distinct !DILexicalBlock(scope: !852, file: !1, line: 473, column: 11)
!852 = distinct !DILexicalBlock(scope: !845, file: !1, line: 472, column: 20)
!853 = !DILocation(line: 473, column: 22, scope: !851)
!854 = !DILocation(line: 473, column: 11, scope: !852)
!855 = !DILocation(line: 474, column: 13, scope: !856)
!856 = distinct !DILexicalBlock(scope: !851, file: !1, line: 473, column: 30)
!857 = !DILocation(line: 474, column: 11, scope: !856)
!858 = !DILocation(line: 475, column: 29, scope: !856)
!859 = !DILocation(line: 475, column: 27, scope: !856)
!860 = !DILocation(line: 476, column: 7, scope: !856)
!861 = !DILocation(line: 477, column: 13, scope: !862)
!862 = distinct !DILexicalBlock(scope: !851, file: !1, line: 476, column: 14)
!863 = !DILocation(line: 477, column: 11, scope: !862)
!864 = !DILocation(line: 478, column: 29, scope: !862)
!865 = !DILocation(line: 478, column: 27, scope: !862)
!866 = !DILocation(line: 480, column: 5, scope: !852)
!867 = !DILocation(line: 481, column: 11, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !1, line: 481, column: 11)
!869 = distinct !DILexicalBlock(scope: !845, file: !1, line: 480, column: 12)
!870 = !DILocation(line: 481, column: 16, scope: !868)
!871 = !DILocation(line: 481, column: 13, scope: !868)
!872 = !DILocation(line: 481, column: 11, scope: !869)
!873 = !DILocation(line: 482, column: 13, scope: !874)
!874 = distinct !DILexicalBlock(scope: !868, file: !1, line: 481, column: 23)
!875 = !DILocation(line: 482, column: 11, scope: !874)
!876 = !DILocation(line: 483, column: 29, scope: !874)
!877 = !DILocation(line: 483, column: 27, scope: !874)
!878 = !DILocation(line: 484, column: 7, scope: !874)
!879 = !DILocation(line: 574, column: 10, scope: !310, inlinedAt: !880)
!880 = distinct !DILocation(line: 486, column: 9, scope: !881)
!881 = distinct !DILexicalBlock(scope: !882, file: !1, line: 485, column: 9)
!882 = distinct !DILexicalBlock(scope: !868, file: !1, line: 484, column: 14)
!883 = !DILocation(line: 491, column: 11, scope: !751)
!884 = !DILocation(line: 491, column: 3, scope: !751)
!885 = !DILocation(line: 508, column: 20, scope: !22)
!886 = !DILocation(line: 508, column: 32, scope: !22)
!887 = !DILocation(line: 508, column: 48, scope: !22)
!888 = !DILocation(line: 509, column: 7, scope: !22)
!889 = !DILocation(line: 509, column: 11, scope: !22)
!890 = !DILocation(line: 512, column: 18, scope: !784)
!891 = !DILocation(line: 513, column: 11, scope: !784)
!892 = !DILocation(line: 513, column: 3, scope: !784)
!893 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Object", arg: 1, scope: !25, file: !1, line: 516, type: !13)
!894 = !DILocation(line: 516, column: 31, scope: !25)
!895 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitReason", arg: 2, scope: !25, file: !1, line: 516, type: !13)
!896 = !DILocation(line: 516, column: 44, scope: !25)
!897 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitMode", arg: 3, scope: !25, file: !1, line: 516, type: !13)
!898 = !DILocation(line: 516, column: 61, scope: !25)
!899 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Alertable", arg: 4, scope: !25, file: !1, line: 516, type: !13)
!900 = !DILocation(line: 516, column: 76, scope: !25)
!901 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Timeout", arg: 5, scope: !25, file: !1, line: 517, type: !13)
!902 = !DILocation(line: 517, column: 31, scope: !25)
!903 = !DILocation(line: 521, column: 7, scope: !904)
!904 = distinct !DILexicalBlock(scope: !905, file: !1, line: 521, column: 7)
!905 = distinct !DILexicalBlock(scope: !25, file: !1, line: 520, column: 3)
!906 = !DILocation(line: 521, column: 12, scope: !904)
!907 = !DILocation(line: 521, column: 9, scope: !904)
!908 = !DILocation(line: 521, column: 7, scope: !905)
!909 = !DILocation(line: 522, column: 9, scope: !910)
!910 = distinct !DILexicalBlock(scope: !911, file: !1, line: 522, column: 9)
!911 = distinct !DILexicalBlock(scope: !904, file: !1, line: 521, column: 18)
!912 = !DILocation(line: 522, column: 24, scope: !910)
!913 = !DILocation(line: 522, column: 9, scope: !911)
!914 = !DILocation(line: 523, column: 11, scope: !915)
!915 = distinct !DILexicalBlock(scope: !910, file: !1, line: 522, column: 30)
!916 = !DILocation(line: 523, column: 9, scope: !915)
!917 = !DILocation(line: 524, column: 22, scope: !915)
!918 = !DILocation(line: 525, column: 5, scope: !915)
!919 = !DILocation(line: 526, column: 7, scope: !920)
!920 = distinct !DILexicalBlock(scope: !910, file: !1, line: 525, column: 12)
!921 = !DILocation(line: 528, column: 3, scope: !911)
!922 = !DILocation(line: 528, column: 10, scope: !904)
!923 = !DILocation(line: 530, column: 9, scope: !924)
!924 = distinct !DILexicalBlock(scope: !925, file: !1, line: 530, column: 9)
!925 = distinct !DILexicalBlock(scope: !904, file: !1, line: 528, column: 10)
!926 = !DILocation(line: 530, column: 19, scope: !924)
!927 = !DILocation(line: 530, column: 9, scope: !925)
!928 = !DILocation(line: 531, column: 11, scope: !929)
!929 = distinct !DILexicalBlock(scope: !924, file: !1, line: 530, column: 25)
!930 = !DILocation(line: 531, column: 9, scope: !929)
!931 = !DILocation(line: 532, column: 17, scope: !929)
!932 = !DILocation(line: 533, column: 5, scope: !929)
!933 = !DILocation(line: 534, column: 11, scope: !934)
!934 = distinct !DILexicalBlock(scope: !935, file: !1, line: 534, column: 11)
!935 = distinct !DILexicalBlock(scope: !924, file: !1, line: 533, column: 12)
!936 = !DILocation(line: 534, column: 16, scope: !934)
!937 = !DILocation(line: 534, column: 13, scope: !934)
!938 = !DILocation(line: 534, column: 11, scope: !935)
!939 = !DILocation(line: 574, column: 10, scope: !310, inlinedAt: !940)
!940 = distinct !DILocation(line: 536, column: 9, scope: !941)
!941 = distinct !DILexicalBlock(scope: !942, file: !1, line: 535, column: 9)
!942 = distinct !DILexicalBlock(scope: !934, file: !1, line: 534, column: 22)
!943 = !DILocation(line: 538, column: 7, scope: !942)
!944 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_4", scope: !905, file: !1, line: 541, type: !13)
!945 = !DILocation(line: 541, column: 7, scope: !905)
!946 = !DILocation(line: 542, column: 15, scope: !905)
!947 = !DILocation(line: 542, column: 13, scope: !905)
!948 = !DILocation(line: 543, column: 7, scope: !949)
!949 = distinct !DILexicalBlock(scope: !905, file: !1, line: 543, column: 7)
!950 = !DILocation(line: 543, column: 17, scope: !949)
!951 = !DILocation(line: 543, column: 7, scope: !905)
!952 = !DILocation(line: 544, column: 5, scope: !953)
!953 = distinct !DILexicalBlock(scope: !949, file: !1, line: 543, column: 23)
!954 = !DILocation(line: 546, column: 5, scope: !955)
!955 = distinct !DILexicalBlock(scope: !949, file: !1, line: 545, column: 10)
!956 = !DILocation(line: 547, column: 9, scope: !955)
!957 = !DILocation(line: 547, column: 12, scope: !958)
!958 = distinct !DILexicalBlock(scope: !955, file: !1, line: 547, column: 9)
!959 = !DILocation(line: 549, column: 7, scope: !960)
!960 = distinct !DILexicalBlock(scope: !958, file: !1, line: 547, column: 12)
!961 = !DILocation(line: 551, column: 7, scope: !960)
!962 = !DILocation(line: 557, column: 1, scope: !25)
!963 = !DILocation(line: 558, column: 27, scope: !28)
!964 = !DILocation(line: 558, column: 46, scope: !28)
!965 = !DILocation(line: 558, column: 56, scope: !28)
!966 = !DILocation(line: 559, column: 7, scope: !28)
!967 = !DILocation(line: 563, column: 11, scope: !755)
!968 = !DILocation(line: 563, column: 9, scope: !755)
!969 = !DILocation(line: 564, column: 14, scope: !755)
!970 = !DILocation(line: 564, column: 3, scope: !755)
!971 = !DILocation(line: 509, column: 11, scope: !22, inlinedAt: !972)
!972 = distinct !DILocation(line: 564, column: 3, scope: !755)
!973 = !DILocation(line: 509, column: 7, scope: !22, inlinedAt: !972)
!974 = !DILocation(line: 512, column: 18, scope: !784, inlinedAt: !972)
!975 = !DILocation(line: 513, column: 11, scope: !784, inlinedAt: !972)
!976 = !DILocation(line: 513, column: 3, scope: !784, inlinedAt: !972)
!977 = !DILocation(line: 508, column: 20, scope: !22, inlinedAt: !972)
!978 = !DILocation(line: 508, column: 32, scope: !22, inlinedAt: !972)
!979 = !DILocation(line: 508, column: 48, scope: !22, inlinedAt: !972)
!980 = !DILocation(line: 566, column: 3, scope: !756)
