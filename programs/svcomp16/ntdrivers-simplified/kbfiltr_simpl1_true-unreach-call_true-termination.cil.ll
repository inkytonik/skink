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
  %1 = load i32, i32* @NP, align 4, !dbg !54
  store i32 %1, i32* @s, align 4, !dbg !56
  store i32 0, i32* @pended, align 4, !dbg !57
  store i32 0, i32* @compFptr, align 4, !dbg !58
  store i32 0, i32* @compRegistered, align 4, !dbg !59
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !60
  store i32 0, i32* @setEventCalled, align 4, !dbg !61
  store i32 0, i32* @customIrp, align 4, !dbg !62
  ret void, !dbg !63
}

; Function Attrs: nounwind ssp uwtable
define void @_BLAST_init() #0 {
  store i32 0, i32* @UNLOADED, align 4, !dbg !64
  store i32 1, i32* @NP, align 4, !dbg !66
  store i32 2, i32* @DC, align 4, !dbg !67
  store i32 3, i32* @SKIP1, align 4, !dbg !68
  store i32 4, i32* @SKIP2, align 4, !dbg !69
  store i32 5, i32* @MPR1, align 4, !dbg !70
  store i32 6, i32* @MPR3, align 4, !dbg !71
  store i32 7, i32* @IPC, align 4, !dbg !72
  %1 = load i32, i32* @UNLOADED, align 4, !dbg !73
  store i32 %1, i32* @s, align 4, !dbg !74
  store i32 0, i32* @pended, align 4, !dbg !75
  store i32 0, i32* @compFptr, align 4, !dbg !76
  store i32 0, i32* @compRegistered, align 4, !dbg !77
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !78
  store i32 0, i32* @setEventCalled, align 4, !dbg !79
  store i32 0, i32* @customIrp, align 4, !dbg !80
  ret void, !dbg !81
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
  call void @llvm.dbg.declare(metadata i32* %3, metadata !82, metadata !83), !dbg !84
  store i32 %Irp, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !85, metadata !83), !dbg !86
  call void @llvm.dbg.declare(metadata i32* %devExt, metadata !87, metadata !83), !dbg !88
  call void @llvm.dbg.declare(metadata i32* %irpStack, metadata !89, metadata !83), !dbg !90
  call void @llvm.dbg.declare(metadata i32* %status, metadata !91, metadata !83), !dbg !92
  call void @llvm.dbg.declare(metadata i32* %event, metadata !93, metadata !83), !dbg !94
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !95
  store i32 %5, i32* %event, align 4, !dbg !94
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !96, metadata !83), !dbg !97
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !98
  store i32 %6, i32* %DeviceObject__DeviceExtension, align 4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !99, metadata !83), !dbg !100
  %7 = call i32 @__VERIFIER_nondet_int(), !dbg !101
  store i32 %7, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %irpStack__MinorFunction, metadata !102, metadata !83), !dbg !103
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !104
  store i32 %8, i32* %irpStack__MinorFunction, align 4, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %devExt__TopOfStack, metadata !105, metadata !83), !dbg !106
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !107
  store i32 %9, i32* %devExt__TopOfStack, align 4, !dbg !106
  call void @llvm.dbg.declare(metadata i32* %devExt__Started, metadata !108, metadata !83), !dbg !109
  call void @llvm.dbg.declare(metadata i32* %devExt__Removed, metadata !110, metadata !83), !dbg !111
  call void @llvm.dbg.declare(metadata i32* %devExt__SurpriseRemoved, metadata !112, metadata !83), !dbg !113
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !114, metadata !83), !dbg !115
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !116, metadata !83), !dbg !117
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !118, metadata !83), !dbg !119
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !120
  store i32 %10, i32* %Irp__CurrentLocation, align 4, !dbg !119
  call void @llvm.dbg.declare(metadata i32* %irpSp, metadata !121, metadata !83), !dbg !122
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp, metadata !123, metadata !83), !dbg !124
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp__Control, metadata !125, metadata !83), !dbg !126
  call void @llvm.dbg.declare(metadata i32* %irpSp___0, metadata !127, metadata !83), !dbg !128
  call void @llvm.dbg.declare(metadata i32* %irpSp__Context, metadata !129, metadata !83), !dbg !130
  call void @llvm.dbg.declare(metadata i32* %irpSp__Control, metadata !131, metadata !83), !dbg !132
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp23, metadata !133, metadata !83), !dbg !134
  store i32 0, i32* %status, align 4, !dbg !135
  %11 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !137
  store i32 %11, i32* %devExt, align 4, !dbg !138
  %12 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !139
  store i32 %12, i32* %irpStack, align 4, !dbg !140
  %13 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !141
  %14 = icmp eq i32 %13, 0, !dbg !143
  call void @llvm.dbg.declare(metadata i32* %1, metadata !144, metadata !83), !dbg !145
  call void @llvm.dbg.declare(metadata i32* %2, metadata !191, metadata !83), !dbg !192
  br i1 %14, label %15, label %16, !dbg !193

; <label>:15                                      ; preds = %0
  br label %99, !dbg !194

; <label>:16                                      ; preds = %0
  %17 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !196
  %18 = icmp eq i32 %17, 23, !dbg !197
  br i1 %18, label %19, label %20, !dbg !198

; <label>:19                                      ; preds = %16
  br label %149, !dbg !199

; <label>:20                                      ; preds = %16
  %21 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !201
  %22 = icmp eq i32 %21, 2, !dbg !202
  br i1 %22, label %23, label %24, !dbg !203

; <label>:23                                      ; preds = %20
  br label %164, !dbg !204

; <label>:24                                      ; preds = %20
  %25 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !206
  %26 = icmp eq i32 %25, 1, !dbg !207
  br i1 %26, label %27, label %28, !dbg !208

; <label>:27                                      ; preds = %24
  br label %179, !dbg !209

; <label>:28                                      ; preds = %24
  %29 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !211
  %30 = icmp eq i32 %29, 5, !dbg !212
  br i1 %30, label %31, label %32, !dbg !213

; <label>:31                                      ; preds = %28
  br label %179, !dbg !214

; <label>:32                                      ; preds = %28
  %33 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !216
  %34 = icmp eq i32 %33, 3, !dbg !217
  br i1 %34, label %35, label %36, !dbg !218

; <label>:35                                      ; preds = %32
  br label %179, !dbg !219

; <label>:36                                      ; preds = %32
  %37 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !221
  %38 = icmp eq i32 %37, 6, !dbg !222
  br i1 %38, label %39, label %40, !dbg !223

; <label>:39                                      ; preds = %36
  br label %179, !dbg !224

; <label>:40                                      ; preds = %36
  %41 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !226
  %42 = icmp eq i32 %41, 13, !dbg !227
  br i1 %42, label %43, label %44, !dbg !228

; <label>:43                                      ; preds = %40
  br label %179, !dbg !229

; <label>:44                                      ; preds = %40
  %45 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !231
  %46 = icmp eq i32 %45, 4, !dbg !232
  br i1 %46, label %47, label %48, !dbg !233

; <label>:47                                      ; preds = %44
  br label %179, !dbg !234

; <label>:48                                      ; preds = %44
  %49 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !236
  %50 = icmp eq i32 %49, 7, !dbg !237
  br i1 %50, label %51, label %52, !dbg !238

; <label>:51                                      ; preds = %48
  br label %179, !dbg !239

; <label>:52                                      ; preds = %48
  %53 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !241
  %54 = icmp eq i32 %53, 8, !dbg !242
  br i1 %54, label %55, label %56, !dbg !243

; <label>:55                                      ; preds = %52
  br label %179, !dbg !244

; <label>:56                                      ; preds = %52
  %57 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !246
  %58 = icmp eq i32 %57, 9, !dbg !247
  br i1 %58, label %59, label %60, !dbg !248

; <label>:59                                      ; preds = %56
  br label %179, !dbg !249

; <label>:60                                      ; preds = %56
  %61 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !251
  %62 = icmp eq i32 %61, 12, !dbg !252
  br i1 %62, label %63, label %64, !dbg !253

; <label>:63                                      ; preds = %60
  br label %179, !dbg !254

; <label>:64                                      ; preds = %60
  %65 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !256
  %66 = icmp eq i32 %65, 10, !dbg !257
  br i1 %66, label %67, label %68, !dbg !258

; <label>:67                                      ; preds = %64
  br label %179, !dbg !259

; <label>:68                                      ; preds = %64
  %69 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !261
  %70 = icmp eq i32 %69, 11, !dbg !262
  br i1 %70, label %71, label %72, !dbg !263

; <label>:71                                      ; preds = %68
  br label %179, !dbg !264

; <label>:72                                      ; preds = %68
  %73 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !266
  %74 = icmp eq i32 %73, 15, !dbg !267
  br i1 %74, label %75, label %76, !dbg !268

; <label>:75                                      ; preds = %72
  br label %179, !dbg !269

; <label>:76                                      ; preds = %72
  %77 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !271
  %78 = icmp eq i32 %77, 16, !dbg !272
  br i1 %78, label %79, label %80, !dbg !273

; <label>:79                                      ; preds = %76
  br label %179, !dbg !274

; <label>:80                                      ; preds = %76
  %81 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !276
  %82 = icmp eq i32 %81, 17, !dbg !277
  br i1 %82, label %83, label %84, !dbg !278

; <label>:83                                      ; preds = %80
  br label %179, !dbg !279

; <label>:84                                      ; preds = %80
  %85 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !281
  %86 = icmp eq i32 %85, 18, !dbg !282
  br i1 %86, label %87, label %88, !dbg !283

; <label>:87                                      ; preds = %84
  br label %179, !dbg !284

; <label>:88                                      ; preds = %84
  %89 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !286
  %90 = icmp eq i32 %89, 19, !dbg !287
  br i1 %90, label %91, label %92, !dbg !288

; <label>:91                                      ; preds = %88
  br label %179, !dbg !289

; <label>:92                                      ; preds = %88
  %93 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !291
  %94 = icmp eq i32 %93, 20, !dbg !292
  br i1 %94, label %95, label %96, !dbg !293

; <label>:95                                      ; preds = %92
  br label %179, !dbg !294

; <label>:96                                      ; preds = %92
  br label %179, !dbg !296
                                                  ; No predecessors!
  br i1 false, label %98, label %194, !dbg !297

; <label>:98                                      ; preds = %97
  br label %99, !dbg !298

; <label>:99                                      ; preds = %98, %15
  %100 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !299
  store i32 %100, i32* %irpSp, align 4, !dbg !300
  %101 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !301
  %102 = sub nsw i32 %101, 1, !dbg !302
  store i32 %102, i32* %nextIrpSp, align 4, !dbg !303
  store i32 0, i32* %nextIrpSp__Control, align 4, !dbg !304
  %103 = load i32, i32* @s, align 4, !dbg !305
  %104 = load i32, i32* @NP, align 4, !dbg !307
  %105 = icmp ne i32 %103, %104, !dbg !308
  br i1 %105, label %106, label %107, !dbg !309

; <label>:106                                     ; preds = %99
  call void (...) @__VERIFIER_error() #5, !dbg !310
  unreachable, !dbg !310

errorFn.exit:                                     ; No predecessors!
  br label %113, !dbg !315

; <label>:107                                     ; preds = %99
  %108 = load i32, i32* @compRegistered, align 4, !dbg !316
  %109 = icmp ne i32 %108, 0, !dbg !319
  br i1 %109, label %110, label %111, !dbg !320

; <label>:110                                     ; preds = %107
  call void (...) @__VERIFIER_error() #5, !dbg !321
  unreachable, !dbg !321

errorFn.exit1:                                    ; No predecessors!
  br label %112, !dbg !325

; <label>:111                                     ; preds = %107
  store i32 1, i32* @compRegistered, align 4, !dbg !326
  br label %112

; <label>:112                                     ; preds = %111, %errorFn.exit1
  br label %113

; <label>:113                                     ; preds = %112, %errorFn.exit
  %114 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !328
  %115 = sub nsw i32 %114, 1, !dbg !330
  store i32 %115, i32* %irpSp___0, align 4, !dbg !331
  store i32 224, i32* %irpSp__Control, align 4, !dbg !332
  %116 = load i32, i32* %devExt__TopOfStack, align 4, !dbg !333
  %117 = load i32, i32* %4, align 4, !dbg !334
  %118 = call i32 @IofCallDriver(i32 %116, i32 %117), !dbg !335
  store i32 %118, i32* %status, align 4, !dbg !336
  %119 = load i32, i32* %status, align 4, !dbg !337
  %120 = sext i32 %119 to i64, !dbg !339
  store i64 %120, i64* %__cil_tmp23, align 8, !dbg !340
  %121 = load i64, i64* %__cil_tmp23, align 8, !dbg !341
  %122 = icmp eq i64 %121, 259, !dbg !343
  br i1 %122, label %123, label %128, !dbg !344

; <label>:123                                     ; preds = %113
  %124 = load i32, i32* %event, align 4, !dbg !345
  %125 = load i32, i32* @Executive, align 4, !dbg !348
  %126 = load i32, i32* @KernelMode, align 4, !dbg !349
  %127 = call i32 @KeWaitForSingleObject(i32 %124, i32 %125, i32 %126, i32 0, i32 0), !dbg !350
  br label %128, !dbg !351

; <label>:128                                     ; preds = %123, %113
  %129 = load i32, i32* %status, align 4, !dbg !352
  %130 = icmp sge i32 %129, 0, !dbg !354
  br i1 %130, label %131, label %136, !dbg !355

; <label>:131                                     ; preds = %128
  %132 = load i32, i32* @myStatus, align 4, !dbg !356
  %133 = icmp sge i32 %132, 0, !dbg !359
  br i1 %133, label %134, label %135, !dbg !360

; <label>:134                                     ; preds = %131
  store i32 1, i32* %devExt__Started, align 4, !dbg !361
  store i32 0, i32* %devExt__Removed, align 4, !dbg !363
  store i32 0, i32* %devExt__SurpriseRemoved, align 4, !dbg !364
  br label %135, !dbg !365

; <label>:135                                     ; preds = %134, %131
  br label %136, !dbg !366

; <label>:136                                     ; preds = %135, %128
  %137 = load i32, i32* %status, align 4, !dbg !367
  store i32 %137, i32* %Irp__IoStatus__Status, align 4, !dbg !368
  %138 = load i32, i32* %status, align 4, !dbg !369
  store i32 %138, i32* @myStatus, align 4, !dbg !370
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !371
  %139 = load i32, i32* %4, align 4, !dbg !372
  %140 = bitcast i32* %1 to i8*, !dbg !373
  call void @llvm.lifetime.start(i64 4, i8* %140), !dbg !373
  %141 = bitcast i32* %2 to i8*, !dbg !373
  call void @llvm.lifetime.start(i64 4, i8* %141), !dbg !373
  store i32 %139, i32* %1, align 4, !dbg !373
  store i32 0, i32* %2, align 4, !dbg !373
  %142 = load i32, i32* @s, align 4, !dbg !374
  %143 = load i32, i32* @NP, align 4, !dbg !377
  %144 = icmp eq i32 %142, %143, !dbg !378
  br i1 %144, label %IofCompleteRequest.exit, label %145, !dbg !379

; <label>:145                                     ; preds = %136
  call void (...) @__VERIFIER_error() #5, !dbg !380
  unreachable, !dbg !380

IofCompleteRequest.exit:                          ; preds = %136
  %146 = load i32, i32* @DC, align 4, !dbg !384
  store i32 %146, i32* @s, align 4, !dbg !386
  %147 = bitcast i32* %1 to i8*, !dbg !387
  call void @llvm.lifetime.end(i64 4, i8* %147), !dbg !387
  %148 = bitcast i32* %2 to i8*, !dbg !387
  call void @llvm.lifetime.end(i64 4, i8* %148), !dbg !387
  br label %195, !dbg !388

; <label>:149                                     ; preds = %19
  store i32 1, i32* %devExt__SurpriseRemoved, align 4, !dbg !389
  %150 = load i32, i32* @s, align 4, !dbg !390
  %151 = load i32, i32* @NP, align 4, !dbg !392
  %152 = icmp eq i32 %150, %151, !dbg !393
  br i1 %152, label %153, label %155, !dbg !394

; <label>:153                                     ; preds = %149
  %154 = load i32, i32* @SKIP1, align 4, !dbg !395
  store i32 %154, i32* @s, align 4, !dbg !397
  br label %156, !dbg !398

; <label>:155                                     ; preds = %149
  call void (...) @__VERIFIER_error() #5, !dbg !399
  unreachable, !dbg !399

errorFn.exit2:                                    ; No predecessors!
  br label %156

; <label>:156                                     ; preds = %errorFn.exit2, %153
  %157 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !403
  %158 = add nsw i32 %157, 1, !dbg !403
  store i32 %158, i32* %Irp__CurrentLocation, align 4, !dbg !403
  %159 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !405
  %160 = add nsw i32 %159, 1, !dbg !405
  store i32 %160, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !405
  %161 = load i32, i32* %devExt__TopOfStack, align 4, !dbg !406
  %162 = load i32, i32* %4, align 4, !dbg !407
  %163 = call i32 @IofCallDriver(i32 %161, i32 %162), !dbg !408
  store i32 %163, i32* %status, align 4, !dbg !409
  br label %195, !dbg !410

; <label>:164                                     ; preds = %23
  store i32 1, i32* %devExt__Removed, align 4, !dbg !411
  %165 = load i32, i32* @s, align 4, !dbg !412
  %166 = load i32, i32* @NP, align 4, !dbg !414
  %167 = icmp eq i32 %165, %166, !dbg !415
  br i1 %167, label %168, label %170, !dbg !416

; <label>:168                                     ; preds = %164
  %169 = load i32, i32* @SKIP1, align 4, !dbg !417
  store i32 %169, i32* @s, align 4, !dbg !419
  br label %171, !dbg !420

; <label>:170                                     ; preds = %164
  call void (...) @__VERIFIER_error() #5, !dbg !421
  unreachable, !dbg !421

errorFn.exit3:                                    ; No predecessors!
  br label %171

; <label>:171                                     ; preds = %errorFn.exit3, %168
  %172 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !425
  %173 = add nsw i32 %172, 1, !dbg !425
  store i32 %173, i32* %Irp__CurrentLocation, align 4, !dbg !425
  %174 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !427
  %175 = add nsw i32 %174, 1, !dbg !427
  store i32 %175, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !427
  %176 = load i32, i32* %devExt__TopOfStack, align 4, !dbg !428
  %177 = load i32, i32* %4, align 4, !dbg !429
  %178 = call i32 @IofCallDriver(i32 %176, i32 %177), !dbg !430
  store i32 0, i32* %status, align 4, !dbg !431
  br label %195, !dbg !432

; <label>:179                                     ; preds = %96, %95, %91, %87, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27
  %180 = load i32, i32* @s, align 4, !dbg !433
  %181 = load i32, i32* @NP, align 4, !dbg !435
  %182 = icmp eq i32 %180, %181, !dbg !436
  br i1 %182, label %183, label %185, !dbg !437

; <label>:183                                     ; preds = %179
  %184 = load i32, i32* @SKIP1, align 4, !dbg !438
  store i32 %184, i32* @s, align 4, !dbg !440
  br label %186, !dbg !441

; <label>:185                                     ; preds = %179
  call void (...) @__VERIFIER_error() #5, !dbg !442
  unreachable, !dbg !442

errorFn.exit4:                                    ; No predecessors!
  br label %186

; <label>:186                                     ; preds = %errorFn.exit4, %183
  %187 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !446
  %188 = add nsw i32 %187, 1, !dbg !446
  store i32 %188, i32* %Irp__CurrentLocation, align 4, !dbg !446
  %189 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !448
  %190 = add nsw i32 %189, 1, !dbg !448
  store i32 %190, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !448
  %191 = load i32, i32* %devExt__TopOfStack, align 4, !dbg !449
  %192 = load i32, i32* %4, align 4, !dbg !450
  %193 = call i32 @IofCallDriver(i32 %191, i32 %192), !dbg !451
  store i32 %193, i32* %status, align 4, !dbg !452
  br label %195, !dbg !453

; <label>:194                                     ; preds = %97
  br label %195, !dbg !454

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
  %218 = load i32, i32* %status, align 4, !dbg !455
  ret i32 %218, !dbg !456
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind ssp uwtable
define void @errorFn() #0 {
  br label %1, !dbg !457

; <label>:1                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !458
  unreachable, !dbg !458
                                                  ; No predecessors!
  ret void, !dbg !459
}

; Function Attrs: nounwind ssp uwtable
define void @IofCompleteRequest(i32 %Irp, i32 %PriorityBoost) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %Irp, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !144, metadata !83), !dbg !460
  store i32 %PriorityBoost, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !191, metadata !83), !dbg !461
  %3 = load i32, i32* @s, align 4, !dbg !462
  %4 = load i32, i32* @NP, align 4, !dbg !463
  %5 = icmp eq i32 %3, %4, !dbg !464
  br i1 %5, label %6, label %8, !dbg !465

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* @DC, align 4, !dbg !466
  store i32 %7, i32* @s, align 4, !dbg !467
  br label %9, !dbg !468

; <label>:8                                       ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !469
  unreachable, !dbg !469

errorFn.exit:                                     ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %errorFn.exit, %6
  ret void, !dbg !471
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
  call void @llvm.dbg.declare(metadata i32* %status, metadata !472, metadata !83), !dbg !473
  call void @llvm.dbg.declare(metadata i32* %irp, metadata !474, metadata !83), !dbg !475
  %2 = call i32 @__VERIFIER_nondet_int(), !dbg !476
  store i32 %2, i32* %irp, align 4, !dbg !475
  call void @llvm.dbg.declare(metadata i32* %pirp, metadata !477, metadata !83), !dbg !478
  call void @llvm.dbg.declare(metadata i32* %pirp__IoStatus__Status, metadata !479, metadata !83), !dbg !480
  call void @llvm.dbg.declare(metadata i32* %irp_choice, metadata !481, metadata !83), !dbg !482
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !483
  store i32 %3, i32* %irp_choice, align 4, !dbg !482
  call void @llvm.dbg.declare(metadata i32* %devobj, metadata !484, metadata !83), !dbg !485
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !486
  store i32 %4, i32* %devobj, align 4, !dbg !485
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp8, metadata !487, metadata !83), !dbg !488
  store i32 0, i32* @KernelMode, align 4, !dbg !489
  store i32 0, i32* @Executive, align 4, !dbg !492
  store i32 0, i32* @s, align 4, !dbg !493
  store i32 0, i32* @UNLOADED, align 4, !dbg !494
  store i32 0, i32* @NP, align 4, !dbg !495
  store i32 0, i32* @DC, align 4, !dbg !496
  store i32 0, i32* @SKIP1, align 4, !dbg !497
  store i32 0, i32* @SKIP2, align 4, !dbg !498
  store i32 0, i32* @MPR1, align 4, !dbg !499
  store i32 0, i32* @MPR3, align 4, !dbg !500
  store i32 0, i32* @IPC, align 4, !dbg !501
  store i32 0, i32* @pended, align 4, !dbg !502
  store i32 0, i32* @compFptr, align 4, !dbg !503
  store i32 0, i32* @compRegistered, align 4, !dbg !504
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !505
  store i32 0, i32* @setEventCalled, align 4, !dbg !506
  store i32 0, i32* @customIrp, align 4, !dbg !507
  store i32 0, i32* @myStatus, align 4, !dbg !508
  store i32 0, i32* %status, align 4, !dbg !509
  %5 = load i32, i32* %irp, align 4, !dbg !510
  store i32 %5, i32* %pirp, align 4, !dbg !511
  store i32 0, i32* @UNLOADED, align 4, !dbg !512
  store i32 1, i32* @NP, align 4, !dbg !514
  store i32 2, i32* @DC, align 4, !dbg !515
  store i32 3, i32* @SKIP1, align 4, !dbg !516
  store i32 4, i32* @SKIP2, align 4, !dbg !517
  store i32 5, i32* @MPR1, align 4, !dbg !518
  store i32 6, i32* @MPR3, align 4, !dbg !519
  store i32 7, i32* @IPC, align 4, !dbg !520
  %6 = load i32, i32* @UNLOADED, align 4, !dbg !521
  store i32 %6, i32* @s, align 4, !dbg !522
  store i32 0, i32* @pended, align 4, !dbg !523
  store i32 0, i32* @compFptr, align 4, !dbg !524
  store i32 0, i32* @compRegistered, align 4, !dbg !525
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !526
  store i32 0, i32* @setEventCalled, align 4, !dbg !527
  store i32 0, i32* @customIrp, align 4, !dbg !528
  %7 = load i32, i32* %status, align 4, !dbg !529
  %8 = icmp sge i32 %7, 0, !dbg !531
  br i1 %8, label %9, label %45, !dbg !532

; <label>:9                                       ; preds = %0
  %10 = load i32, i32* @NP, align 4, !dbg !533
  store i32 %10, i32* @s, align 4, !dbg !535
  store i32 0, i32* @customIrp, align 4, !dbg !536
  %11 = load i32, i32* @customIrp, align 4, !dbg !537
  store i32 %11, i32* @setEventCalled, align 4, !dbg !538
  %12 = load i32, i32* @setEventCalled, align 4, !dbg !539
  store i32 %12, i32* @lowerDriverReturn, align 4, !dbg !540
  %13 = load i32, i32* @lowerDriverReturn, align 4, !dbg !541
  store i32 %13, i32* @compRegistered, align 4, !dbg !542
  %14 = load i32, i32* @compRegistered, align 4, !dbg !543
  store i32 %14, i32* @pended, align 4, !dbg !544
  store i32 0, i32* %pirp__IoStatus__Status, align 4, !dbg !545
  store i32 0, i32* @myStatus, align 4, !dbg !546
  %15 = load i32, i32* %irp_choice, align 4, !dbg !547
  %16 = icmp eq i32 %15, 0, !dbg !549
  br i1 %16, label %17, label %18, !dbg !550

; <label>:17                                      ; preds = %9
  store i32 -1073741637, i32* %pirp__IoStatus__Status, align 4, !dbg !551
  store i32 -1073741637, i32* @myStatus, align 4, !dbg !553
  br label %18, !dbg !554

; <label>:18                                      ; preds = %17, %9
  %19 = load i32, i32* @NP, align 4, !dbg !555
  store i32 %19, i32* @s, align 4, !dbg !558
  store i32 0, i32* @pended, align 4, !dbg !559
  store i32 0, i32* @compFptr, align 4, !dbg !560
  store i32 0, i32* @compRegistered, align 4, !dbg !561
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !562
  store i32 0, i32* @setEventCalled, align 4, !dbg !563
  store i32 0, i32* @customIrp, align 4, !dbg !564
  %20 = load i32, i32* %status, align 4, !dbg !565
  %21 = icmp sge i32 %20, 0, !dbg !568
  br i1 %21, label %22, label %23, !dbg !569

; <label>:22                                      ; preds = %18
  store i32 1, i32* %__cil_tmp8, align 4, !dbg !570
  br label %24, !dbg !572

; <label>:23                                      ; preds = %18
  store i32 0, i32* %__cil_tmp8, align 4, !dbg !573
  br label %24

; <label>:24                                      ; preds = %23, %22
  %25 = load i32, i32* %__cil_tmp8, align 4, !dbg !575
  %26 = icmp ne i32 %25, 0, !dbg !575
  br i1 %26, label %28, label %27, !dbg !577

; <label>:27                                      ; preds = %24
  store i32 -1, i32* %1, !dbg !578
  br label %124, !dbg !578

; <label>:28                                      ; preds = %24
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_1, metadata !580, metadata !83), !dbg !581
  %29 = call i32 @__VERIFIER_nondet_int(), !dbg !582
  store i32 %29, i32* %tmp_ndt_1, align 4, !dbg !583
  %30 = load i32, i32* %tmp_ndt_1, align 4, !dbg !584
  %31 = icmp eq i32 %30, 3, !dbg !586
  br i1 %31, label %32, label %33, !dbg !587

; <label>:32                                      ; preds = %28
  br label %36, !dbg !588

; <label>:33                                      ; preds = %28
  br label %40, !dbg !590
                                                  ; No predecessors!
  br i1 false, label %35, label %41, !dbg !592

; <label>:35                                      ; preds = %34
  br label %36, !dbg !593

; <label>:36                                      ; preds = %35, %32
  %37 = load i32, i32* %devobj, align 4, !dbg !595
  %38 = load i32, i32* %pirp, align 4, !dbg !598
  %39 = call i32 @KbFilter_PnP(i32 %37, i32 %38), !dbg !599
  store i32 %39, i32* %status, align 4, !dbg !600
  br label %42, !dbg !601

; <label>:40                                      ; preds = %33
  store i32 -1, i32* %1, !dbg !602
  br label %124, !dbg !602

; <label>:41                                      ; preds = %34
  br label %42, !dbg !603

; <label>:42                                      ; preds = %41, %36
  br label %43

; <label>:43                                      ; preds = %42
  br label %44

; <label>:44                                      ; preds = %43
  br label %45, !dbg !604

; <label>:45                                      ; preds = %44, %0
  %46 = load i32, i32* @pended, align 4, !dbg !605
  %47 = icmp eq i32 %46, 1, !dbg !607
  br i1 %47, label %48, label %56, !dbg !608

; <label>:48                                      ; preds = %45
  %49 = load i32, i32* @s, align 4, !dbg !609
  %50 = load i32, i32* @NP, align 4, !dbg !612
  %51 = icmp eq i32 %49, %50, !dbg !613
  br i1 %51, label %52, label %54, !dbg !614

; <label>:52                                      ; preds = %48
  %53 = load i32, i32* @NP, align 4, !dbg !615
  store i32 %53, i32* @s, align 4, !dbg !617
  br label %55, !dbg !618

; <label>:54                                      ; preds = %48
  br label %57, !dbg !619

; <label>:55                                      ; preds = %52
  br label %122, !dbg !621

; <label>:56                                      ; preds = %45
  br label %57, !dbg !622

; <label>:57                                      ; preds = %56, %54
  %58 = load i32, i32* @pended, align 4, !dbg !623
  %59 = icmp eq i32 %58, 1, !dbg !626
  br i1 %59, label %60, label %68, !dbg !627

; <label>:60                                      ; preds = %57
  %61 = load i32, i32* @s, align 4, !dbg !628
  %62 = load i32, i32* @MPR3, align 4, !dbg !631
  %63 = icmp eq i32 %61, %62, !dbg !632
  br i1 %63, label %64, label %66, !dbg !633

; <label>:64                                      ; preds = %60
  %65 = load i32, i32* @MPR3, align 4, !dbg !634
  store i32 %65, i32* @s, align 4, !dbg !636
  br label %67, !dbg !637

; <label>:66                                      ; preds = %60
  br label %69, !dbg !638

; <label>:67                                      ; preds = %64
  br label %121, !dbg !640

; <label>:68                                      ; preds = %57
  br label %69, !dbg !641

; <label>:69                                      ; preds = %68, %66
  %70 = load i32, i32* @s, align 4, !dbg !642
  %71 = load i32, i32* @UNLOADED, align 4, !dbg !645
  %72 = icmp ne i32 %70, %71, !dbg !646
  br i1 %72, label %73, label %120, !dbg !647

; <label>:73                                      ; preds = %69
  %74 = load i32, i32* %status, align 4, !dbg !648
  %75 = icmp ne i32 %74, -1, !dbg !651
  br i1 %75, label %76, label %119, !dbg !652

; <label>:76                                      ; preds = %73
  %77 = load i32, i32* @s, align 4, !dbg !653
  %78 = load i32, i32* @SKIP2, align 4, !dbg !656
  %79 = icmp ne i32 %77, %78, !dbg !657
  br i1 %79, label %80, label %92, !dbg !658

; <label>:80                                      ; preds = %76
  %81 = load i32, i32* @s, align 4, !dbg !659
  %82 = load i32, i32* @IPC, align 4, !dbg !662
  %83 = icmp ne i32 %81, %82, !dbg !663
  br i1 %83, label %84, label %90, !dbg !664

; <label>:84                                      ; preds = %80
  %85 = load i32, i32* @s, align 4, !dbg !665
  %86 = load i32, i32* @DC, align 4, !dbg !668
  %87 = icmp eq i32 %85, %86, !dbg !669
  br i1 %87, label %88, label %89, !dbg !670

; <label>:88                                      ; preds = %84
  br label %93, !dbg !671

; <label>:89                                      ; preds = %84
  br label %91, !dbg !673

; <label>:90                                      ; preds = %80
  br label %93, !dbg !674

; <label>:91                                      ; preds = %89
  br label %118, !dbg !676

; <label>:92                                      ; preds = %76
  br label %93, !dbg !677

; <label>:93                                      ; preds = %92, %90, %88
  %94 = load i32, i32* @pended, align 4, !dbg !678
  %95 = icmp eq i32 %94, 1, !dbg !681
  br i1 %95, label %96, label %101, !dbg !682

; <label>:96                                      ; preds = %93
  %97 = load i32, i32* %status, align 4, !dbg !683
  %98 = icmp ne i32 %97, 259, !dbg !686
  br i1 %98, label %99, label %100, !dbg !687

; <label>:99                                      ; preds = %96
  call void (...) @__VERIFIER_error() #5, !dbg !688
  unreachable, !dbg !688

errorFn.exit:                                     ; No predecessors!
  br label %100, !dbg !692

; <label>:100                                     ; preds = %errorFn.exit, %96
  br label %117, !dbg !693

; <label>:101                                     ; preds = %93
  %102 = load i32, i32* @s, align 4, !dbg !694
  %103 = load i32, i32* @DC, align 4, !dbg !697
  %104 = icmp eq i32 %102, %103, !dbg !698
  br i1 %104, label %105, label %110, !dbg !699

; <label>:105                                     ; preds = %101
  %106 = load i32, i32* %status, align 4, !dbg !700
  %107 = icmp eq i32 %106, 259, !dbg !703
  br i1 %107, label %108, label %109, !dbg !704

; <label>:108                                     ; preds = %105
  br label %109, !dbg !705

; <label>:109                                     ; preds = %108, %105
  br label %116, !dbg !707

; <label>:110                                     ; preds = %101
  %111 = load i32, i32* %status, align 4, !dbg !708
  %112 = load i32, i32* @lowerDriverReturn, align 4, !dbg !711
  %113 = icmp ne i32 %111, %112, !dbg !712
  br i1 %113, label %114, label %115, !dbg !713

; <label>:114                                     ; preds = %110
  br label %115, !dbg !714

; <label>:115                                     ; preds = %114, %110
  br label %116

; <label>:116                                     ; preds = %115, %109
  br label %117

; <label>:117                                     ; preds = %116, %100
  br label %118

; <label>:118                                     ; preds = %117, %91
  br label %119, !dbg !716

; <label>:119                                     ; preds = %118, %73
  br label %120, !dbg !717

; <label>:120                                     ; preds = %119, %69
  br label %121

; <label>:121                                     ; preds = %120, %67
  br label %122

; <label>:122                                     ; preds = %121, %55
  %123 = load i32, i32* %status, align 4, !dbg !718
  store i32 %123, i32* %1, !dbg !719
  br label %124, !dbg !719

; <label>:124                                     ; preds = %122, %40, %27
  %125 = load i32, i32* %1, !dbg !720
  ret i32 %125, !dbg !720
}

; Function Attrs: nounwind ssp uwtable
define void @stubMoreProcessingRequired() #0 {
  %1 = load i32, i32* @s, align 4, !dbg !721
  %2 = load i32, i32* @NP, align 4, !dbg !724
  %3 = icmp eq i32 %1, %2, !dbg !725
  br i1 %3, label %4, label %6, !dbg !726

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* @MPR1, align 4, !dbg !727
  store i32 %5, i32* @s, align 4, !dbg !729
  br label %7, !dbg !730

; <label>:6                                       ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !731
  unreachable, !dbg !731

errorFn.exit:                                     ; No predecessors!
  br label %7

; <label>:7                                       ; preds = %errorFn.exit, %4
  ret void, !dbg !735
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
  call void @llvm.dbg.declare(metadata i32* %7, metadata !736, metadata !83), !dbg !737
  store i32 %Irp, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !738, metadata !83), !dbg !739
  call void @llvm.dbg.declare(metadata i32* %returnVal2, metadata !740, metadata !83), !dbg !741
  call void @llvm.dbg.declare(metadata i32* %compRetStatus, metadata !742, metadata !83), !dbg !743
  call void @llvm.dbg.declare(metadata i32* %lcontext, metadata !744, metadata !83), !dbg !745
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !746
  store i32 %9, i32* %lcontext, align 4, !dbg !745
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp7, metadata !747, metadata !83), !dbg !749
  %10 = load i32, i32* @compRegistered, align 4, !dbg !750
  %11 = icmp ne i32 %10, 0, !dbg !750
  call void @llvm.dbg.declare(metadata i32* %1, metadata !753, metadata !83), !dbg !754
  call void @llvm.dbg.declare(metadata i32* %2, metadata !760, metadata !83), !dbg !761
  call void @llvm.dbg.declare(metadata i32* %3, metadata !762, metadata !83), !dbg !763
  call void @llvm.dbg.declare(metadata i32* %l.i.i, metadata !764, metadata !83), !dbg !765
  call void @llvm.dbg.declare(metadata i32* %4, metadata !766, metadata !83), !dbg !767
  call void @llvm.dbg.declare(metadata i32* %5, metadata !768, metadata !83), !dbg !769
  call void @llvm.dbg.declare(metadata i32* %6, metadata !770, metadata !83), !dbg !771
  call void @llvm.dbg.declare(metadata i32* %event.i, metadata !772, metadata !83), !dbg !773
  br i1 %11, label %12, label %41, !dbg !774

; <label>:12                                      ; preds = %0
  %13 = load i32, i32* %7, align 4, !dbg !775
  %14 = load i32, i32* %8, align 4, !dbg !776
  %15 = load i32, i32* %lcontext, align 4, !dbg !777
  %16 = bitcast i32* %4 to i8*, !dbg !778
  call void @llvm.lifetime.start(i64 4, i8* %16), !dbg !778
  %17 = bitcast i32* %5 to i8*, !dbg !778
  call void @llvm.lifetime.start(i64 4, i8* %17), !dbg !778
  %18 = bitcast i32* %6 to i8*, !dbg !778
  call void @llvm.lifetime.start(i64 4, i8* %18), !dbg !778
  %19 = bitcast i32* %event.i to i8*, !dbg !778
  call void @llvm.lifetime.start(i64 4, i8* %19), !dbg !778
  store i32 %13, i32* %4, align 4, !dbg !778
  store i32 %14, i32* %5, align 4, !dbg !778
  store i32 %15, i32* %6, align 4, !dbg !778
  %20 = load i32, i32* %6, align 4, !dbg !779
  store i32 %20, i32* %event.i, align 4, !dbg !780
  %21 = load i32, i32* %event.i, align 4, !dbg !781
  %22 = bitcast i32* %1 to i8*, !dbg !782
  call void @llvm.lifetime.start(i64 4, i8* %22) #4, !dbg !782
  %23 = bitcast i32* %2 to i8*, !dbg !782
  call void @llvm.lifetime.start(i64 4, i8* %23) #4, !dbg !782
  %24 = bitcast i32* %3 to i8*, !dbg !782
  call void @llvm.lifetime.start(i64 4, i8* %24) #4, !dbg !782
  %25 = bitcast i32* %l.i.i to i8*, !dbg !782
  call void @llvm.lifetime.start(i64 4, i8* %25) #4, !dbg !782
  store i32 %21, i32* %1, align 4, !dbg !782
  store i32 0, i32* %2, align 4, !dbg !782
  store i32 0, i32* %3, align 4, !dbg !782
  %26 = call i32 @__VERIFIER_nondet_int() #4, !dbg !783
  store i32 %26, i32* %l.i.i, align 4, !dbg !765
  store i32 1, i32* @setEventCalled, align 4, !dbg !784
  %27 = load i32, i32* %l.i.i, align 4, !dbg !786
  %28 = bitcast i32* %1 to i8*, !dbg !787
  call void @llvm.lifetime.end(i64 4, i8* %28) #4, !dbg !787
  %29 = bitcast i32* %2 to i8*, !dbg !787
  call void @llvm.lifetime.end(i64 4, i8* %29) #4, !dbg !787
  %30 = bitcast i32* %3 to i8*, !dbg !787
  call void @llvm.lifetime.end(i64 4, i8* %30) #4, !dbg !787
  %31 = bitcast i32* %l.i.i to i8*, !dbg !787
  call void @llvm.lifetime.end(i64 4, i8* %31) #4, !dbg !787
  %32 = bitcast i32* %4 to i8*, !dbg !788
  call void @llvm.lifetime.end(i64 4, i8* %32), !dbg !788
  %33 = bitcast i32* %5 to i8*, !dbg !788
  call void @llvm.lifetime.end(i64 4, i8* %33), !dbg !788
  %34 = bitcast i32* %6 to i8*, !dbg !788
  call void @llvm.lifetime.end(i64 4, i8* %34), !dbg !788
  %35 = bitcast i32* %event.i to i8*, !dbg !788
  call void @llvm.lifetime.end(i64 4, i8* %35), !dbg !788
  store i32 -1073741802, i32* %compRetStatus, align 4, !dbg !789
  %36 = load i32, i32* @s, align 4, !dbg !790
  %37 = load i32, i32* @NP, align 4, !dbg !792
  %38 = icmp eq i32 %36, %37, !dbg !793
  br i1 %38, label %stubMoreProcessingRequired.exit, label %39, !dbg !794

; <label>:39                                      ; preds = %12
  call void (...) @__VERIFIER_error() #5, !dbg !795
  unreachable, !dbg !795

stubMoreProcessingRequired.exit:                  ; preds = %12
  %40 = load i32, i32* @MPR1, align 4, !dbg !797
  store i32 %40, i32* @s, align 4, !dbg !798
  br label %41, !dbg !799

; <label>:41                                      ; preds = %stubMoreProcessingRequired.exit, %0
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_2, metadata !800, metadata !83), !dbg !801
  %42 = call i32 @__VERIFIER_nondet_int(), !dbg !802
  store i32 %42, i32* %tmp_ndt_2, align 4, !dbg !803
  %43 = load i32, i32* %tmp_ndt_2, align 4, !dbg !804
  %44 = icmp eq i32 %43, 0, !dbg !806
  br i1 %44, label %45, label %46, !dbg !807

; <label>:45                                      ; preds = %41
  br label %54, !dbg !808

; <label>:46                                      ; preds = %41
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_3, metadata !810, metadata !83), !dbg !812
  %47 = call i32 @__VERIFIER_nondet_int(), !dbg !813
  store i32 %47, i32* %tmp_ndt_3, align 4, !dbg !814
  %48 = load i32, i32* %tmp_ndt_3, align 4, !dbg !815
  %49 = icmp eq i32 %48, 1, !dbg !817
  br i1 %49, label %50, label %51, !dbg !818

; <label>:50                                      ; preds = %46
  br label %55, !dbg !819

; <label>:51                                      ; preds = %46
  br label %56, !dbg !821
                                                  ; No predecessors!
  br i1 false, label %53, label %57, !dbg !823

; <label>:53                                      ; preds = %52
  br label %54, !dbg !824

; <label>:54                                      ; preds = %53, %45
  store i32 0, i32* %returnVal2, align 4, !dbg !826
  br label %58, !dbg !828

; <label>:55                                      ; preds = %50
  store i32 -1073741823, i32* %returnVal2, align 4, !dbg !829
  br label %58, !dbg !830

; <label>:56                                      ; preds = %51
  store i32 259, i32* %returnVal2, align 4, !dbg !831
  br label %58, !dbg !832

; <label>:57                                      ; preds = %52
  br label %58, !dbg !833

; <label>:58                                      ; preds = %57, %56, %55, %54
  br label %59

; <label>:59                                      ; preds = %58
  br label %60

; <label>:60                                      ; preds = %59
  br label %61

; <label>:61                                      ; preds = %60
  %62 = load i32, i32* @s, align 4, !dbg !834
  %63 = load i32, i32* @NP, align 4, !dbg !836
  %64 = icmp eq i32 %62, %63, !dbg !837
  br i1 %64, label %65, label %68, !dbg !838

; <label>:65                                      ; preds = %61
  %66 = load i32, i32* @IPC, align 4, !dbg !839
  store i32 %66, i32* @s, align 4, !dbg !841
  %67 = load i32, i32* %returnVal2, align 4, !dbg !842
  store i32 %67, i32* @lowerDriverReturn, align 4, !dbg !843
  br label %92, !dbg !844

; <label>:68                                      ; preds = %61
  %69 = load i32, i32* @s, align 4, !dbg !845
  %70 = load i32, i32* @MPR1, align 4, !dbg !848
  %71 = icmp eq i32 %69, %70, !dbg !849
  br i1 %71, label %72, label %82, !dbg !850

; <label>:72                                      ; preds = %68
  %73 = load i32, i32* %returnVal2, align 4, !dbg !851
  %74 = icmp eq i32 %73, 259, !dbg !854
  br i1 %74, label %75, label %78, !dbg !855

; <label>:75                                      ; preds = %72
  %76 = load i32, i32* @MPR3, align 4, !dbg !856
  store i32 %76, i32* @s, align 4, !dbg !858
  %77 = load i32, i32* %returnVal2, align 4, !dbg !859
  store i32 %77, i32* @lowerDriverReturn, align 4, !dbg !860
  br label %81, !dbg !861

; <label>:78                                      ; preds = %72
  %79 = load i32, i32* @NP, align 4, !dbg !862
  store i32 %79, i32* @s, align 4, !dbg !864
  %80 = load i32, i32* %returnVal2, align 4, !dbg !865
  store i32 %80, i32* @lowerDriverReturn, align 4, !dbg !866
  br label %81

; <label>:81                                      ; preds = %78, %75
  br label %91, !dbg !867

; <label>:82                                      ; preds = %68
  %83 = load i32, i32* @s, align 4, !dbg !868
  %84 = load i32, i32* @SKIP1, align 4, !dbg !871
  %85 = icmp eq i32 %83, %84, !dbg !872
  br i1 %85, label %86, label %89, !dbg !873

; <label>:86                                      ; preds = %82
  %87 = load i32, i32* @SKIP2, align 4, !dbg !874
  store i32 %87, i32* @s, align 4, !dbg !876
  %88 = load i32, i32* %returnVal2, align 4, !dbg !877
  store i32 %88, i32* @lowerDriverReturn, align 4, !dbg !878
  br label %90, !dbg !879

; <label>:89                                      ; preds = %82
  call void (...) @__VERIFIER_error() #5, !dbg !880
  unreachable, !dbg !880

errorFn.exit:                                     ; No predecessors!
  br label %90

; <label>:90                                      ; preds = %errorFn.exit, %86
  br label %91

; <label>:91                                      ; preds = %90, %81
  br label %92

; <label>:92                                      ; preds = %91, %65
  %93 = load i32, i32* %returnVal2, align 4, !dbg !884
  ret i32 %93, !dbg !885
}

; Function Attrs: nounwind ssp uwtable
define i32 @KeSetEvent(i32 %Event, i32 %Increment, i32 %Wait) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 %Event, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !753, metadata !83), !dbg !886
  store i32 %Increment, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !760, metadata !83), !dbg !887
  store i32 %Wait, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !762, metadata !83), !dbg !888
  call void @llvm.dbg.declare(metadata i32* %l, metadata !764, metadata !83), !dbg !889
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !890
  store i32 %4, i32* %l, align 4, !dbg !889
  store i32 1, i32* @setEventCalled, align 4, !dbg !891
  %5 = load i32, i32* %l, align 4, !dbg !892
  ret i32 %5, !dbg !893
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !894, metadata !83), !dbg !895
  store i32 %WaitReason, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !896, metadata !83), !dbg !897
  store i32 %WaitMode, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !898, metadata !83), !dbg !899
  store i32 %Alertable, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !900, metadata !83), !dbg !901
  store i32 %Timeout, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !902, metadata !83), !dbg !903
  %7 = load i32, i32* @s, align 4, !dbg !904
  %8 = load i32, i32* @MPR3, align 4, !dbg !907
  %9 = icmp eq i32 %7, %8, !dbg !908
  br i1 %9, label %10, label %17, !dbg !909

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* @setEventCalled, align 4, !dbg !910
  %12 = icmp eq i32 %11, 1, !dbg !913
  br i1 %12, label %13, label %15, !dbg !914

; <label>:13                                      ; preds = %10
  %14 = load i32, i32* @NP, align 4, !dbg !915
  store i32 %14, i32* @s, align 4, !dbg !917
  store i32 0, i32* @setEventCalled, align 4, !dbg !918
  br label %16, !dbg !919

; <label>:15                                      ; preds = %10
  br label %18, !dbg !920

; <label>:16                                      ; preds = %13
  br label %30, !dbg !922

; <label>:17                                      ; preds = %0
  br label %18, !dbg !923

; <label>:18                                      ; preds = %17, %15
  %19 = load i32, i32* @customIrp, align 4, !dbg !924
  %20 = icmp eq i32 %19, 1, !dbg !927
  br i1 %20, label %21, label %23, !dbg !928

; <label>:21                                      ; preds = %18
  %22 = load i32, i32* @NP, align 4, !dbg !929
  store i32 %22, i32* @s, align 4, !dbg !931
  store i32 0, i32* @customIrp, align 4, !dbg !932
  br label %29, !dbg !933

; <label>:23                                      ; preds = %18
  %24 = load i32, i32* @s, align 4, !dbg !934
  %25 = load i32, i32* @MPR3, align 4, !dbg !937
  %26 = icmp eq i32 %24, %25, !dbg !938
  br i1 %26, label %27, label %28, !dbg !939

; <label>:27                                      ; preds = %23
  call void (...) @__VERIFIER_error() #5, !dbg !940
  unreachable, !dbg !940

errorFn.exit:                                     ; No predecessors!
  br label %28, !dbg !944

; <label>:28                                      ; preds = %errorFn.exit, %23
  br label %29

; <label>:29                                      ; preds = %28, %21
  br label %30

; <label>:30                                      ; preds = %29, %16
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_4, metadata !945, metadata !83), !dbg !946
  %31 = call i32 @__VERIFIER_nondet_int(), !dbg !947
  store i32 %31, i32* %tmp_ndt_4, align 4, !dbg !948
  %32 = load i32, i32* %tmp_ndt_4, align 4, !dbg !949
  %33 = icmp eq i32 %32, 0, !dbg !951
  br i1 %33, label %34, label %35, !dbg !952

; <label>:34                                      ; preds = %30
  br label %38, !dbg !953

; <label>:35                                      ; preds = %30
  br label %39, !dbg !955
                                                  ; No predecessors!
  br i1 false, label %37, label %40, !dbg !957

; <label>:37                                      ; preds = %36
  br label %38, !dbg !958

; <label>:38                                      ; preds = %37, %34
  store i32 0, i32* %1, !dbg !960
  br label %42, !dbg !960

; <label>:39                                      ; preds = %35
  store i32 -1073741823, i32* %1, !dbg !962
  br label %42, !dbg !962

; <label>:40                                      ; preds = %36
  br label %41

; <label>:41                                      ; preds = %40
  br label %42

; <label>:42                                      ; preds = %41, %39, %38
  %43 = load i32, i32* %1, !dbg !963
  ret i32 %43, !dbg !963
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
  call void @llvm.dbg.declare(metadata i32* %4, metadata !766, metadata !83), !dbg !964
  store i32 %Irp, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !768, metadata !83), !dbg !965
  store i32 %Context, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !770, metadata !83), !dbg !966
  call void @llvm.dbg.declare(metadata i32* %event, metadata !772, metadata !83), !dbg !967
  %7 = load i32, i32* %6, align 4, !dbg !968
  store i32 %7, i32* %event, align 4, !dbg !969
  %8 = load i32, i32* %event, align 4, !dbg !970
  %9 = bitcast i32* %1 to i8*, !dbg !971
  call void @llvm.lifetime.start(i64 4, i8* %9), !dbg !971
  %10 = bitcast i32* %2 to i8*, !dbg !971
  call void @llvm.lifetime.start(i64 4, i8* %10), !dbg !971
  %11 = bitcast i32* %3 to i8*, !dbg !971
  call void @llvm.lifetime.start(i64 4, i8* %11), !dbg !971
  %12 = bitcast i32* %l.i to i8*, !dbg !971
  call void @llvm.lifetime.start(i64 4, i8* %12), !dbg !971
  store i32 %8, i32* %1, align 4, !dbg !971
  store i32 0, i32* %2, align 4, !dbg !971
  store i32 0, i32* %3, align 4, !dbg !971
  %13 = call i32 @__VERIFIER_nondet_int() #4, !dbg !972
  store i32 %13, i32* %l.i, align 4, !dbg !974
  store i32 1, i32* @setEventCalled, align 4, !dbg !975
  %14 = load i32, i32* %l.i, align 4, !dbg !976
  %15 = bitcast i32* %1 to i8*, !dbg !977
  call void @llvm.lifetime.end(i64 4, i8* %15), !dbg !977
  %16 = bitcast i32* %2 to i8*, !dbg !977
  call void @llvm.lifetime.end(i64 4, i8* %16), !dbg !977
  %17 = bitcast i32* %3 to i8*, !dbg !977
  call void @llvm.lifetime.end(i64 4, i8* %17), !dbg !977
  %18 = bitcast i32* %l.i to i8*, !dbg !977
  call void @llvm.lifetime.end(i64 4, i8* %18), !dbg !977
  call void @llvm.dbg.declare(metadata i32* %1, metadata !753, metadata !83), !dbg !978
  call void @llvm.dbg.declare(metadata i32* %2, metadata !760, metadata !83), !dbg !979
  call void @llvm.dbg.declare(metadata i32* %3, metadata !762, metadata !83), !dbg !980
  call void @llvm.dbg.declare(metadata i32* %l.i, metadata !764, metadata !83), !dbg !974
  ret i32 -1073741802, !dbg !981
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
!llvm.module.flags = !{!50, !51, !52}
!llvm.ident = !{!53}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !31)
!1 = !DIFile(filename: "programs/svcomp16/ntdrivers-simplified/kbfiltr_simpl1_true-unreach-call_true-termination.cil.c", directory: ".")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!5 = !{!6, !9, !11, !15, !18, !19, !20, !23, !26, !29, !30}
!6 = !DISubprogram(name: "stub_driver_init", scope: !1, file: !1, line: 30, type: !7, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stub_driver_init, variables: !2)
!7 = !DISubroutineType(types: !8)
!8 = !{null}
!9 = !DISubprogram(name: "_BLAST_init", scope: !10, file: !10, line: 56, type: !7, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @_BLAST_init, variables: !2)
!10 = !DIFile(filename: "kbfiltr_simpl1.cil.c", directory: ".")
!11 = !DISubprogram(name: "KbFilter_PnP", scope: !10, file: !10, line: 80, type: !12, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @KbFilter_PnP, variables: !2)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14, !14}
!14 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!15 = !DISubprogram(name: "main", scope: !10, file: !10, line: 317, type: !16, isLocal: false, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !2)
!16 = !DISubroutineType(types: !17)
!17 = !{!14}
!18 = !DISubprogram(name: "stubMoreProcessingRequired", scope: !10, file: !10, line: 441, type: !7, isLocal: false, isDefinition: true, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stubMoreProcessingRequired, variables: !2)
!19 = !DISubprogram(name: "IofCallDriver", scope: !10, file: !10, line: 455, type: !12, isLocal: false, isDefinition: true, scopeLine: 456, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @IofCallDriver, variables: !2)
!20 = !DISubprogram(name: "IofCompleteRequest", scope: !10, file: !10, line: 526, type: !21, isLocal: false, isDefinition: true, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: false, function: void (i32, i32)* @IofCompleteRequest, variables: !2)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !14, !14}
!23 = !DISubprogram(name: "KeSetEvent", scope: !10, file: !10, line: 540, type: !24, isLocal: false, isDefinition: true, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @KeSetEvent, variables: !2)
!24 = !DISubroutineType(types: !25)
!25 = !{!14, !14, !14, !14}
!26 = !DISubprogram(name: "KeWaitForSingleObject", scope: !10, file: !10, line: 548, type: !27, isLocal: false, isDefinition: true, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32)* @KeWaitForSingleObject, variables: !2)
!27 = !DISubroutineType(types: !28)
!28 = !{!14, !14, !14, !14, !14, !14}
!29 = !DISubprogram(name: "KbFilter_Complete", scope: !10, file: !10, line: 592, type: !24, isLocal: false, isDefinition: true, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @KbFilter_Complete, variables: !2)
!30 = !DISubprogram(name: "errorFn", scope: !10, file: !10, line: 604, type: !7, isLocal: false, isDefinition: true, scopeLine: 605, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @errorFn, variables: !2)
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!32 = !DIGlobalVariable(name: "KernelMode", scope: !0, file: !1, line: 11, type: !14, isLocal: false, isDefinition: true, variable: i32* @KernelMode)
!33 = !DIGlobalVariable(name: "Executive", scope: !0, file: !1, line: 12, type: !14, isLocal: false, isDefinition: true, variable: i32* @Executive)
!34 = !DIGlobalVariable(name: "s", scope: !0, file: !1, line: 13, type: !14, isLocal: false, isDefinition: true, variable: i32* @s)
!35 = !DIGlobalVariable(name: "UNLOADED", scope: !0, file: !1, line: 14, type: !14, isLocal: false, isDefinition: true, variable: i32* @UNLOADED)
!36 = !DIGlobalVariable(name: "NP", scope: !0, file: !1, line: 15, type: !14, isLocal: false, isDefinition: true, variable: i32* @NP)
!37 = !DIGlobalVariable(name: "DC", scope: !0, file: !1, line: 16, type: !14, isLocal: false, isDefinition: true, variable: i32* @DC)
!38 = !DIGlobalVariable(name: "SKIP1", scope: !0, file: !1, line: 17, type: !14, isLocal: false, isDefinition: true, variable: i32* @SKIP1)
!39 = !DIGlobalVariable(name: "SKIP2", scope: !0, file: !1, line: 18, type: !14, isLocal: false, isDefinition: true, variable: i32* @SKIP2)
!40 = !DIGlobalVariable(name: "MPR1", scope: !0, file: !1, line: 19, type: !14, isLocal: false, isDefinition: true, variable: i32* @MPR1)
!41 = !DIGlobalVariable(name: "MPR3", scope: !0, file: !1, line: 20, type: !14, isLocal: false, isDefinition: true, variable: i32* @MPR3)
!42 = !DIGlobalVariable(name: "IPC", scope: !0, file: !1, line: 21, type: !14, isLocal: false, isDefinition: true, variable: i32* @IPC)
!43 = !DIGlobalVariable(name: "pended", scope: !0, file: !1, line: 22, type: !14, isLocal: false, isDefinition: true, variable: i32* @pended)
!44 = !DIGlobalVariable(name: "compFptr", scope: !0, file: !1, line: 23, type: !14, isLocal: false, isDefinition: true, variable: i32* @compFptr)
!45 = !DIGlobalVariable(name: "compRegistered", scope: !0, file: !1, line: 24, type: !14, isLocal: false, isDefinition: true, variable: i32* @compRegistered)
!46 = !DIGlobalVariable(name: "lowerDriverReturn", scope: !0, file: !1, line: 25, type: !14, isLocal: false, isDefinition: true, variable: i32* @lowerDriverReturn)
!47 = !DIGlobalVariable(name: "setEventCalled", scope: !0, file: !1, line: 26, type: !14, isLocal: false, isDefinition: true, variable: i32* @setEventCalled)
!48 = !DIGlobalVariable(name: "customIrp", scope: !0, file: !1, line: 27, type: !14, isLocal: false, isDefinition: true, variable: i32* @customIrp)
!49 = !DIGlobalVariable(name: "myStatus", scope: !0, file: !1, line: 28, type: !14, isLocal: false, isDefinition: true, variable: i32* @myStatus)
!50 = !{i32 2, !"Dwarf Version", i32 2}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{i32 1, !"PIC Level", i32 2}
!53 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!54 = !DILocation(line: 46, column: 7, scope: !55)
!55 = distinct !DILexicalBlock(scope: !6, file: !1, line: 33, column: 3)
!56 = !DILocation(line: 46, column: 5, scope: !55)
!57 = !DILocation(line: 47, column: 10, scope: !55)
!58 = !DILocation(line: 48, column: 12, scope: !55)
!59 = !DILocation(line: 49, column: 18, scope: !55)
!60 = !DILocation(line: 50, column: 21, scope: !55)
!61 = !DILocation(line: 51, column: 18, scope: !55)
!62 = !DILocation(line: 52, column: 13, scope: !55)
!63 = !DILocation(line: 53, column: 3, scope: !55)
!64 = !DILocation(line: 60, column: 12, scope: !65)
!65 = distinct !DILexicalBlock(scope: !9, file: !10, line: 59, column: 3)
!66 = !DILocation(line: 61, column: 6, scope: !65)
!67 = !DILocation(line: 62, column: 6, scope: !65)
!68 = !DILocation(line: 63, column: 9, scope: !65)
!69 = !DILocation(line: 64, column: 9, scope: !65)
!70 = !DILocation(line: 65, column: 8, scope: !65)
!71 = !DILocation(line: 66, column: 8, scope: !65)
!72 = !DILocation(line: 67, column: 7, scope: !65)
!73 = !DILocation(line: 68, column: 7, scope: !65)
!74 = !DILocation(line: 68, column: 5, scope: !65)
!75 = !DILocation(line: 69, column: 10, scope: !65)
!76 = !DILocation(line: 70, column: 12, scope: !65)
!77 = !DILocation(line: 71, column: 18, scope: !65)
!78 = !DILocation(line: 72, column: 21, scope: !65)
!79 = !DILocation(line: 73, column: 18, scope: !65)
!80 = !DILocation(line: 74, column: 13, scope: !65)
!81 = !DILocation(line: 75, column: 3, scope: !65)
!82 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !11, file: !10, line: 80, type: !14)
!83 = !DIExpression()
!84 = !DILocation(line: 80, column: 22, scope: !11)
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !11, file: !10, line: 80, type: !14)
!86 = !DILocation(line: 80, column: 41, scope: !11)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt", scope: !11, file: !10, line: 81, type: !14)
!88 = !DILocation(line: 81, column: 7, scope: !11)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack", scope: !11, file: !10, line: 82, type: !14)
!90 = !DILocation(line: 82, column: 7, scope: !11)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !11, file: !10, line: 83, type: !14)
!92 = !DILocation(line: 83, column: 7, scope: !11)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "event", scope: !11, file: !10, line: 84, type: !14)
!94 = !DILocation(line: 84, column: 7, scope: !11)
!95 = !DILocation(line: 84, column: 15, scope: !11)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !11, file: !10, line: 85, type: !14)
!97 = !DILocation(line: 85, column: 7, scope: !11)
!98 = !DILocation(line: 85, column: 39, scope: !11)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !11, file: !10, line: 86, type: !14)
!100 = !DILocation(line: 86, column: 7, scope: !11)
!101 = !DILocation(line: 86, column: 50, scope: !11)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack__MinorFunction", scope: !11, file: !10, line: 87, type: !14)
!103 = !DILocation(line: 87, column: 7, scope: !11)
!104 = !DILocation(line: 87, column: 33, scope: !11)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt__TopOfStack", scope: !11, file: !10, line: 88, type: !14)
!106 = !DILocation(line: 88, column: 7, scope: !11)
!107 = !DILocation(line: 88, column: 28, scope: !11)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt__Started", scope: !11, file: !10, line: 89, type: !14)
!109 = !DILocation(line: 89, column: 7, scope: !11)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt__Removed", scope: !11, file: !10, line: 90, type: !14)
!111 = !DILocation(line: 90, column: 7, scope: !11)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt__SurpriseRemoved", scope: !11, file: !10, line: 91, type: !14)
!113 = !DILocation(line: 91, column: 7, scope: !11)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !11, file: !10, line: 92, type: !14)
!115 = !DILocation(line: 92, column: 7, scope: !11)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !11, file: !10, line: 93, type: !14)
!117 = !DILocation(line: 93, column: 7, scope: !11)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !11, file: !10, line: 94, type: !14)
!119 = !DILocation(line: 94, column: 7, scope: !11)
!120 = !DILocation(line: 94, column: 30, scope: !11)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp", scope: !11, file: !10, line: 95, type: !14)
!122 = !DILocation(line: 95, column: 7, scope: !11)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp", scope: !11, file: !10, line: 96, type: !14)
!124 = !DILocation(line: 96, column: 7, scope: !11)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp__Control", scope: !11, file: !10, line: 97, type: !14)
!126 = !DILocation(line: 97, column: 7, scope: !11)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___0", scope: !11, file: !10, line: 98, type: !14)
!128 = !DILocation(line: 98, column: 7, scope: !11)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Context", scope: !11, file: !10, line: 99, type: !14)
!130 = !DILocation(line: 99, column: 7, scope: !11)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Control", scope: !11, file: !10, line: 100, type: !14)
!132 = !DILocation(line: 100, column: 7, scope: !11)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp23", scope: !11, file: !10, line: 101, type: !4)
!134 = !DILocation(line: 101, column: 8, scope: !11)
!135 = !DILocation(line: 101, column: 10, scope: !136)
!136 = distinct !DILexicalBlock(scope: !11, file: !10, line: 103, column: 3)
!137 = !DILocation(line: 102, column: 12, scope: !136)
!138 = !DILocation(line: 102, column: 10, scope: !136)
!139 = !DILocation(line: 103, column: 14, scope: !136)
!140 = !DILocation(line: 103, column: 12, scope: !136)
!141 = !DILocation(line: 104, column: 7, scope: !142)
!142 = distinct !DILexicalBlock(scope: !136, file: !10, line: 104, column: 7)
!143 = !DILocation(line: 104, column: 31, scope: !142)
!144 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 1, scope: !20, file: !10, line: 526, type: !14)
!145 = !DILocation(line: 526, column: 29, scope: !20, inlinedAt: !146)
!146 = distinct !DILocation(line: 221, column: 47, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !10, line: 213, column: 47)
!148 = distinct !DILexicalBlock(scope: !149, file: !10, line: 169, column: 52)
!149 = distinct !DILexicalBlock(scope: !150, file: !10, line: 169, column: 49)
!150 = distinct !DILexicalBlock(scope: !151, file: !10, line: 166, column: 50)
!151 = distinct !DILexicalBlock(scope: !152, file: !10, line: 164, column: 47)
!152 = distinct !DILexicalBlock(scope: !153, file: !10, line: 163, column: 48)
!153 = distinct !DILexicalBlock(scope: !154, file: !10, line: 161, column: 45)
!154 = distinct !DILexicalBlock(scope: !155, file: !10, line: 160, column: 46)
!155 = distinct !DILexicalBlock(scope: !156, file: !10, line: 158, column: 43)
!156 = distinct !DILexicalBlock(scope: !157, file: !10, line: 157, column: 44)
!157 = distinct !DILexicalBlock(scope: !158, file: !10, line: 155, column: 41)
!158 = distinct !DILexicalBlock(scope: !159, file: !10, line: 154, column: 42)
!159 = distinct !DILexicalBlock(scope: !160, file: !10, line: 152, column: 39)
!160 = distinct !DILexicalBlock(scope: !161, file: !10, line: 151, column: 40)
!161 = distinct !DILexicalBlock(scope: !162, file: !10, line: 149, column: 37)
!162 = distinct !DILexicalBlock(scope: !163, file: !10, line: 148, column: 38)
!163 = distinct !DILexicalBlock(scope: !164, file: !10, line: 146, column: 35)
!164 = distinct !DILexicalBlock(scope: !165, file: !10, line: 145, column: 36)
!165 = distinct !DILexicalBlock(scope: !166, file: !10, line: 143, column: 33)
!166 = distinct !DILexicalBlock(scope: !167, file: !10, line: 142, column: 34)
!167 = distinct !DILexicalBlock(scope: !168, file: !10, line: 140, column: 31)
!168 = distinct !DILexicalBlock(scope: !169, file: !10, line: 139, column: 32)
!169 = distinct !DILexicalBlock(scope: !170, file: !10, line: 137, column: 29)
!170 = distinct !DILexicalBlock(scope: !171, file: !10, line: 136, column: 30)
!171 = distinct !DILexicalBlock(scope: !172, file: !10, line: 134, column: 27)
!172 = distinct !DILexicalBlock(scope: !173, file: !10, line: 133, column: 28)
!173 = distinct !DILexicalBlock(scope: !174, file: !10, line: 131, column: 25)
!174 = distinct !DILexicalBlock(scope: !175, file: !10, line: 130, column: 26)
!175 = distinct !DILexicalBlock(scope: !176, file: !10, line: 128, column: 23)
!176 = distinct !DILexicalBlock(scope: !177, file: !10, line: 127, column: 24)
!177 = distinct !DILexicalBlock(scope: !178, file: !10, line: 125, column: 21)
!178 = distinct !DILexicalBlock(scope: !179, file: !10, line: 124, column: 22)
!179 = distinct !DILexicalBlock(scope: !180, file: !10, line: 122, column: 19)
!180 = distinct !DILexicalBlock(scope: !181, file: !10, line: 121, column: 20)
!181 = distinct !DILexicalBlock(scope: !182, file: !10, line: 119, column: 17)
!182 = distinct !DILexicalBlock(scope: !183, file: !10, line: 118, column: 18)
!183 = distinct !DILexicalBlock(scope: !184, file: !10, line: 116, column: 15)
!184 = distinct !DILexicalBlock(scope: !185, file: !10, line: 115, column: 16)
!185 = distinct !DILexicalBlock(scope: !186, file: !10, line: 113, column: 13)
!186 = distinct !DILexicalBlock(scope: !187, file: !10, line: 112, column: 14)
!187 = distinct !DILexicalBlock(scope: !188, file: !10, line: 110, column: 11)
!188 = distinct !DILexicalBlock(scope: !189, file: !10, line: 109, column: 12)
!189 = distinct !DILexicalBlock(scope: !190, file: !10, line: 107, column: 9)
!190 = distinct !DILexicalBlock(scope: !142, file: !10, line: 106, column: 10)
!191 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PriorityBoost", arg: 2, scope: !20, file: !10, line: 526, type: !14)
!192 = !DILocation(line: 526, column: 39, scope: !20, inlinedAt: !146)
!193 = !DILocation(line: 104, column: 7, scope: !136)
!194 = !DILocation(line: 105, column: 5, scope: !195)
!195 = distinct !DILexicalBlock(scope: !142, file: !10, line: 104, column: 37)
!196 = !DILocation(line: 107, column: 9, scope: !189)
!197 = !DILocation(line: 107, column: 33, scope: !189)
!198 = !DILocation(line: 107, column: 9, scope: !190)
!199 = !DILocation(line: 108, column: 7, scope: !200)
!200 = distinct !DILexicalBlock(scope: !189, file: !10, line: 107, column: 40)
!201 = !DILocation(line: 110, column: 11, scope: !187)
!202 = !DILocation(line: 110, column: 35, scope: !187)
!203 = !DILocation(line: 110, column: 11, scope: !188)
!204 = !DILocation(line: 111, column: 9, scope: !205)
!205 = distinct !DILexicalBlock(scope: !187, file: !10, line: 110, column: 41)
!206 = !DILocation(line: 113, column: 13, scope: !185)
!207 = !DILocation(line: 113, column: 37, scope: !185)
!208 = !DILocation(line: 113, column: 13, scope: !186)
!209 = !DILocation(line: 114, column: 11, scope: !210)
!210 = distinct !DILexicalBlock(scope: !185, file: !10, line: 113, column: 43)
!211 = !DILocation(line: 116, column: 15, scope: !183)
!212 = !DILocation(line: 116, column: 39, scope: !183)
!213 = !DILocation(line: 116, column: 15, scope: !184)
!214 = !DILocation(line: 117, column: 13, scope: !215)
!215 = distinct !DILexicalBlock(scope: !183, file: !10, line: 116, column: 45)
!216 = !DILocation(line: 119, column: 17, scope: !181)
!217 = !DILocation(line: 119, column: 41, scope: !181)
!218 = !DILocation(line: 119, column: 17, scope: !182)
!219 = !DILocation(line: 120, column: 15, scope: !220)
!220 = distinct !DILexicalBlock(scope: !181, file: !10, line: 119, column: 47)
!221 = !DILocation(line: 122, column: 19, scope: !179)
!222 = !DILocation(line: 122, column: 43, scope: !179)
!223 = !DILocation(line: 122, column: 19, scope: !180)
!224 = !DILocation(line: 123, column: 17, scope: !225)
!225 = distinct !DILexicalBlock(scope: !179, file: !10, line: 122, column: 49)
!226 = !DILocation(line: 125, column: 21, scope: !177)
!227 = !DILocation(line: 125, column: 45, scope: !177)
!228 = !DILocation(line: 125, column: 21, scope: !178)
!229 = !DILocation(line: 126, column: 19, scope: !230)
!230 = distinct !DILexicalBlock(scope: !177, file: !10, line: 125, column: 52)
!231 = !DILocation(line: 128, column: 23, scope: !175)
!232 = !DILocation(line: 128, column: 47, scope: !175)
!233 = !DILocation(line: 128, column: 23, scope: !176)
!234 = !DILocation(line: 129, column: 21, scope: !235)
!235 = distinct !DILexicalBlock(scope: !175, file: !10, line: 128, column: 53)
!236 = !DILocation(line: 131, column: 25, scope: !173)
!237 = !DILocation(line: 131, column: 49, scope: !173)
!238 = !DILocation(line: 131, column: 25, scope: !174)
!239 = !DILocation(line: 132, column: 23, scope: !240)
!240 = distinct !DILexicalBlock(scope: !173, file: !10, line: 131, column: 55)
!241 = !DILocation(line: 134, column: 27, scope: !171)
!242 = !DILocation(line: 134, column: 51, scope: !171)
!243 = !DILocation(line: 134, column: 27, scope: !172)
!244 = !DILocation(line: 135, column: 25, scope: !245)
!245 = distinct !DILexicalBlock(scope: !171, file: !10, line: 134, column: 57)
!246 = !DILocation(line: 137, column: 29, scope: !169)
!247 = !DILocation(line: 137, column: 53, scope: !169)
!248 = !DILocation(line: 137, column: 29, scope: !170)
!249 = !DILocation(line: 138, column: 27, scope: !250)
!250 = distinct !DILexicalBlock(scope: !169, file: !10, line: 137, column: 59)
!251 = !DILocation(line: 140, column: 31, scope: !167)
!252 = !DILocation(line: 140, column: 55, scope: !167)
!253 = !DILocation(line: 140, column: 31, scope: !168)
!254 = !DILocation(line: 141, column: 29, scope: !255)
!255 = distinct !DILexicalBlock(scope: !167, file: !10, line: 140, column: 62)
!256 = !DILocation(line: 143, column: 33, scope: !165)
!257 = !DILocation(line: 143, column: 57, scope: !165)
!258 = !DILocation(line: 143, column: 33, scope: !166)
!259 = !DILocation(line: 144, column: 31, scope: !260)
!260 = distinct !DILexicalBlock(scope: !165, file: !10, line: 143, column: 64)
!261 = !DILocation(line: 146, column: 35, scope: !163)
!262 = !DILocation(line: 146, column: 59, scope: !163)
!263 = !DILocation(line: 146, column: 35, scope: !164)
!264 = !DILocation(line: 147, column: 33, scope: !265)
!265 = distinct !DILexicalBlock(scope: !163, file: !10, line: 146, column: 66)
!266 = !DILocation(line: 149, column: 37, scope: !161)
!267 = !DILocation(line: 149, column: 61, scope: !161)
!268 = !DILocation(line: 149, column: 37, scope: !162)
!269 = !DILocation(line: 150, column: 35, scope: !270)
!270 = distinct !DILexicalBlock(scope: !161, file: !10, line: 149, column: 68)
!271 = !DILocation(line: 152, column: 39, scope: !159)
!272 = !DILocation(line: 152, column: 63, scope: !159)
!273 = !DILocation(line: 152, column: 39, scope: !160)
!274 = !DILocation(line: 153, column: 37, scope: !275)
!275 = distinct !DILexicalBlock(scope: !159, file: !10, line: 152, column: 70)
!276 = !DILocation(line: 155, column: 41, scope: !157)
!277 = !DILocation(line: 155, column: 65, scope: !157)
!278 = !DILocation(line: 155, column: 41, scope: !158)
!279 = !DILocation(line: 156, column: 39, scope: !280)
!280 = distinct !DILexicalBlock(scope: !157, file: !10, line: 155, column: 72)
!281 = !DILocation(line: 158, column: 43, scope: !155)
!282 = !DILocation(line: 158, column: 67, scope: !155)
!283 = !DILocation(line: 158, column: 43, scope: !156)
!284 = !DILocation(line: 159, column: 41, scope: !285)
!285 = distinct !DILexicalBlock(scope: !155, file: !10, line: 158, column: 74)
!286 = !DILocation(line: 161, column: 45, scope: !153)
!287 = !DILocation(line: 161, column: 69, scope: !153)
!288 = !DILocation(line: 161, column: 45, scope: !154)
!289 = !DILocation(line: 162, column: 43, scope: !290)
!290 = distinct !DILexicalBlock(scope: !153, file: !10, line: 161, column: 76)
!291 = !DILocation(line: 164, column: 47, scope: !151)
!292 = !DILocation(line: 164, column: 71, scope: !151)
!293 = !DILocation(line: 164, column: 47, scope: !152)
!294 = !DILocation(line: 165, column: 45, scope: !295)
!295 = distinct !DILexicalBlock(scope: !151, file: !10, line: 164, column: 78)
!296 = !DILocation(line: 167, column: 45, scope: !150)
!297 = !DILocation(line: 169, column: 49, scope: !150)
!298 = !DILocation(line: 169, column: 52, scope: !149)
!299 = !DILocation(line: 171, column: 55, scope: !148)
!300 = !DILocation(line: 171, column: 53, scope: !148)
!301 = !DILocation(line: 172, column: 59, scope: !148)
!302 = !DILocation(line: 172, column: 100, scope: !148)
!303 = !DILocation(line: 172, column: 57, scope: !148)
!304 = !DILocation(line: 173, column: 66, scope: !148)
!305 = !DILocation(line: 174, column: 51, scope: !306)
!306 = distinct !DILexicalBlock(scope: !148, file: !10, line: 174, column: 51)
!307 = !DILocation(line: 174, column: 56, scope: !306)
!308 = !DILocation(line: 174, column: 53, scope: !306)
!309 = !DILocation(line: 174, column: 51, scope: !148)
!310 = !DILocation(line: 608, column: 10, scope: !311, inlinedAt: !312)
!311 = distinct !DILexicalBlock(scope: !30, file: !10, line: 607, column: 3)
!312 = distinct !DILocation(line: 176, column: 49, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !10, line: 175, column: 49)
!314 = distinct !DILexicalBlock(scope: !306, file: !10, line: 174, column: 60)
!315 = !DILocation(line: 178, column: 47, scope: !314)
!316 = !DILocation(line: 179, column: 53, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !10, line: 179, column: 53)
!318 = distinct !DILexicalBlock(scope: !306, file: !10, line: 178, column: 54)
!319 = !DILocation(line: 179, column: 68, scope: !317)
!320 = !DILocation(line: 179, column: 53, scope: !318)
!321 = !DILocation(line: 608, column: 10, scope: !311, inlinedAt: !322)
!322 = distinct !DILocation(line: 181, column: 51, scope: !323)
!323 = distinct !DILexicalBlock(scope: !324, file: !10, line: 180, column: 51)
!324 = distinct !DILexicalBlock(scope: !317, file: !10, line: 179, column: 74)
!325 = !DILocation(line: 183, column: 49, scope: !324)
!326 = !DILocation(line: 184, column: 66, scope: !327)
!327 = distinct !DILexicalBlock(scope: !317, file: !10, line: 183, column: 56)
!328 = !DILocation(line: 188, column: 59, scope: !329)
!329 = distinct !DILexicalBlock(scope: !148, file: !10, line: 187, column: 47)
!330 = !DILocation(line: 188, column: 100, scope: !329)
!331 = !DILocation(line: 188, column: 57, scope: !329)
!332 = !DILocation(line: 189, column: 62, scope: !329)
!333 = !DILocation(line: 192, column: 70, scope: !329)
!334 = !DILocation(line: 193, column: 70, scope: !329)
!335 = !DILocation(line: 192, column: 56, scope: !329)
!336 = !DILocation(line: 192, column: 54, scope: !329)
!337 = !DILocation(line: 197, column: 68, scope: !338)
!338 = distinct !DILexicalBlock(scope: !148, file: !10, line: 195, column: 47)
!339 = !DILocation(line: 197, column: 61, scope: !338)
!340 = !DILocation(line: 197, column: 59, scope: !338)
!341 = !DILocation(line: 197, column: 51, scope: !342)
!342 = distinct !DILexicalBlock(scope: !338, file: !10, line: 197, column: 51)
!343 = !DILocation(line: 197, column: 63, scope: !342)
!344 = !DILocation(line: 197, column: 51, scope: !338)
!345 = !DILocation(line: 199, column: 71, scope: !346)
!346 = distinct !DILexicalBlock(scope: !347, file: !10, line: 198, column: 49)
!347 = distinct !DILexicalBlock(scope: !342, file: !10, line: 197, column: 72)
!348 = !DILocation(line: 199, column: 78, scope: !346)
!349 = !DILocation(line: 200, column: 71, scope: !346)
!350 = !DILocation(line: 199, column: 49, scope: !346)
!351 = !DILocation(line: 203, column: 47, scope: !347)
!352 = !DILocation(line: 206, column: 51, scope: !353)
!353 = distinct !DILexicalBlock(scope: !148, file: !10, line: 206, column: 51)
!354 = !DILocation(line: 206, column: 58, scope: !353)
!355 = !DILocation(line: 206, column: 51, scope: !148)
!356 = !DILocation(line: 207, column: 53, scope: !357)
!357 = distinct !DILexicalBlock(scope: !358, file: !10, line: 207, column: 53)
!358 = distinct !DILexicalBlock(scope: !353, file: !10, line: 206, column: 64)
!359 = !DILocation(line: 207, column: 62, scope: !357)
!360 = !DILocation(line: 207, column: 53, scope: !358)
!361 = !DILocation(line: 208, column: 67, scope: !362)
!362 = distinct !DILexicalBlock(scope: !357, file: !10, line: 207, column: 68)
!363 = !DILocation(line: 209, column: 67, scope: !362)
!364 = !DILocation(line: 210, column: 75, scope: !362)
!365 = !DILocation(line: 211, column: 49, scope: !362)
!366 = !DILocation(line: 212, column: 47, scope: !358)
!367 = !DILocation(line: 218, column: 71, scope: !147)
!368 = !DILocation(line: 218, column: 69, scope: !147)
!369 = !DILocation(line: 219, column: 58, scope: !147)
!370 = !DILocation(line: 219, column: 56, scope: !147)
!371 = !DILocation(line: 220, column: 74, scope: !147)
!372 = !DILocation(line: 221, column: 66, scope: !147)
!373 = !DILocation(line: 221, column: 47, scope: !147)
!374 = !DILocation(line: 530, column: 7, scope: !375, inlinedAt: !146)
!375 = distinct !DILexicalBlock(scope: !376, file: !10, line: 530, column: 7)
!376 = distinct !DILexicalBlock(scope: !20, file: !10, line: 529, column: 3)
!377 = !DILocation(line: 530, column: 12, scope: !375, inlinedAt: !146)
!378 = !DILocation(line: 530, column: 9, scope: !375, inlinedAt: !146)
!379 = !DILocation(line: 530, column: 7, scope: !376, inlinedAt: !146)
!380 = !DILocation(line: 608, column: 10, scope: !311, inlinedAt: !381)
!381 = distinct !DILocation(line: 534, column: 5, scope: !382, inlinedAt: !146)
!382 = distinct !DILexicalBlock(scope: !383, file: !10, line: 533, column: 5)
!383 = distinct !DILexicalBlock(scope: !375, file: !10, line: 532, column: 10)
!384 = !DILocation(line: 531, column: 9, scope: !385, inlinedAt: !146)
!385 = distinct !DILexicalBlock(scope: !375, file: !10, line: 530, column: 16)
!386 = !DILocation(line: 531, column: 7, scope: !385, inlinedAt: !146)
!387 = !DILocation(line: 537, column: 3, scope: !376, inlinedAt: !146)
!388 = !DILocation(line: 223, column: 47, scope: !148)
!389 = !DILocation(line: 225, column: 71, scope: !148)
!390 = !DILocation(line: 226, column: 51, scope: !391)
!391 = distinct !DILexicalBlock(scope: !148, file: !10, line: 226, column: 51)
!392 = !DILocation(line: 226, column: 56, scope: !391)
!393 = !DILocation(line: 226, column: 53, scope: !391)
!394 = !DILocation(line: 226, column: 51, scope: !148)
!395 = !DILocation(line: 227, column: 53, scope: !396)
!396 = distinct !DILexicalBlock(scope: !391, file: !10, line: 226, column: 60)
!397 = !DILocation(line: 227, column: 51, scope: !396)
!398 = !DILocation(line: 228, column: 47, scope: !396)
!399 = !DILocation(line: 608, column: 10, scope: !311, inlinedAt: !400)
!400 = distinct !DILocation(line: 230, column: 49, scope: !401)
!401 = distinct !DILexicalBlock(scope: !402, file: !10, line: 229, column: 49)
!402 = distinct !DILexicalBlock(scope: !391, file: !10, line: 228, column: 54)
!403 = !DILocation(line: 234, column: 68, scope: !404)
!404 = distinct !DILexicalBlock(scope: !148, file: !10, line: 233, column: 47)
!405 = !DILocation(line: 235, column: 88, scope: !404)
!406 = !DILocation(line: 236, column: 70, scope: !404)
!407 = !DILocation(line: 237, column: 70, scope: !404)
!408 = !DILocation(line: 236, column: 56, scope: !404)
!409 = !DILocation(line: 236, column: 54, scope: !404)
!410 = !DILocation(line: 239, column: 47, scope: !148)
!411 = !DILocation(line: 241, column: 63, scope: !148)
!412 = !DILocation(line: 242, column: 51, scope: !413)
!413 = distinct !DILexicalBlock(scope: !148, file: !10, line: 242, column: 51)
!414 = !DILocation(line: 242, column: 56, scope: !413)
!415 = !DILocation(line: 242, column: 53, scope: !413)
!416 = !DILocation(line: 242, column: 51, scope: !148)
!417 = !DILocation(line: 243, column: 53, scope: !418)
!418 = distinct !DILexicalBlock(scope: !413, file: !10, line: 242, column: 60)
!419 = !DILocation(line: 243, column: 51, scope: !418)
!420 = !DILocation(line: 244, column: 47, scope: !418)
!421 = !DILocation(line: 608, column: 10, scope: !311, inlinedAt: !422)
!422 = distinct !DILocation(line: 246, column: 49, scope: !423)
!423 = distinct !DILexicalBlock(scope: !424, file: !10, line: 245, column: 49)
!424 = distinct !DILexicalBlock(scope: !413, file: !10, line: 244, column: 54)
!425 = !DILocation(line: 250, column: 68, scope: !426)
!426 = distinct !DILexicalBlock(scope: !148, file: !10, line: 249, column: 47)
!427 = !DILocation(line: 251, column: 88, scope: !426)
!428 = !DILocation(line: 252, column: 61, scope: !426)
!429 = !DILocation(line: 252, column: 81, scope: !426)
!430 = !DILocation(line: 252, column: 47, scope: !426)
!431 = !DILocation(line: 253, column: 54, scope: !426)
!432 = !DILocation(line: 255, column: 47, scope: !148)
!433 = !DILocation(line: 275, column: 51, scope: !434)
!434 = distinct !DILexicalBlock(scope: !148, file: !10, line: 275, column: 51)
!435 = !DILocation(line: 275, column: 56, scope: !434)
!436 = !DILocation(line: 275, column: 53, scope: !434)
!437 = !DILocation(line: 275, column: 51, scope: !148)
!438 = !DILocation(line: 276, column: 53, scope: !439)
!439 = distinct !DILexicalBlock(scope: !434, file: !10, line: 275, column: 60)
!440 = !DILocation(line: 276, column: 51, scope: !439)
!441 = !DILocation(line: 277, column: 47, scope: !439)
!442 = !DILocation(line: 608, column: 10, scope: !311, inlinedAt: !443)
!443 = distinct !DILocation(line: 279, column: 49, scope: !444)
!444 = distinct !DILexicalBlock(scope: !445, file: !10, line: 278, column: 49)
!445 = distinct !DILexicalBlock(scope: !434, file: !10, line: 277, column: 54)
!446 = !DILocation(line: 283, column: 68, scope: !447)
!447 = distinct !DILexicalBlock(scope: !148, file: !10, line: 282, column: 47)
!448 = !DILocation(line: 284, column: 88, scope: !447)
!449 = !DILocation(line: 285, column: 70, scope: !447)
!450 = !DILocation(line: 286, column: 70, scope: !447)
!451 = !DILocation(line: 285, column: 56, scope: !447)
!452 = !DILocation(line: 285, column: 54, scope: !447)
!453 = !DILocation(line: 288, column: 47, scope: !148)
!454 = !DILocation(line: 289, column: 52, scope: !149)
!455 = !DILocation(line: 314, column: 11, scope: !136)
!456 = !DILocation(line: 314, column: 3, scope: !136)
!457 = !DILocation(line: 607, column: 3, scope: !30)
!458 = !DILocation(line: 608, column: 10, scope: !311)
!459 = !DILocation(line: 25, column: 1, scope: !30)
!460 = !DILocation(line: 526, column: 29, scope: !20)
!461 = !DILocation(line: 526, column: 39, scope: !20)
!462 = !DILocation(line: 530, column: 7, scope: !375)
!463 = !DILocation(line: 530, column: 12, scope: !375)
!464 = !DILocation(line: 530, column: 9, scope: !375)
!465 = !DILocation(line: 530, column: 7, scope: !376)
!466 = !DILocation(line: 531, column: 9, scope: !385)
!467 = !DILocation(line: 531, column: 7, scope: !385)
!468 = !DILocation(line: 532, column: 3, scope: !385)
!469 = !DILocation(line: 608, column: 10, scope: !311, inlinedAt: !470)
!470 = distinct !DILocation(line: 534, column: 5, scope: !382)
!471 = !DILocation(line: 537, column: 3, scope: !376)
!472 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !15, file: !10, line: 318, type: !14)
!473 = !DILocation(line: 318, column: 7, scope: !15)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp", scope: !15, file: !10, line: 319, type: !14)
!475 = !DILocation(line: 319, column: 7, scope: !15)
!476 = !DILocation(line: 319, column: 13, scope: !15)
!477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pirp", scope: !15, file: !10, line: 320, type: !14)
!478 = !DILocation(line: 320, column: 7, scope: !15)
!479 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pirp__IoStatus__Status", scope: !15, file: !10, line: 321, type: !14)
!480 = !DILocation(line: 321, column: 7, scope: !15)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp_choice", scope: !15, file: !10, line: 322, type: !14)
!482 = !DILocation(line: 322, column: 7, scope: !15)
!483 = !DILocation(line: 322, column: 20, scope: !15)
!484 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devobj", scope: !15, file: !10, line: 323, type: !14)
!485 = !DILocation(line: 323, column: 7, scope: !15)
!486 = !DILocation(line: 323, column: 16, scope: !15)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp8", scope: !15, file: !10, line: 324, type: !14)
!488 = !DILocation(line: 324, column: 7, scope: !15)
!489 = !DILocation(line: 329, column: 12, scope: !490)
!490 = distinct !DILexicalBlock(scope: !491, file: !10, line: 327, column: 3)
!491 = distinct !DILexicalBlock(scope: !15, file: !10, line: 326, column: 3)
!492 = !DILocation(line: 330, column: 13, scope: !490)
!493 = !DILocation(line: 331, column: 4, scope: !490)
!494 = !DILocation(line: 332, column: 11, scope: !490)
!495 = !DILocation(line: 333, column: 5, scope: !490)
!496 = !DILocation(line: 334, column: 6, scope: !490)
!497 = !DILocation(line: 335, column: 9, scope: !490)
!498 = !DILocation(line: 336, column: 9, scope: !490)
!499 = !DILocation(line: 337, column: 8, scope: !490)
!500 = !DILocation(line: 338, column: 8, scope: !490)
!501 = !DILocation(line: 339, column: 7, scope: !490)
!502 = !DILocation(line: 340, column: 10, scope: !490)
!503 = !DILocation(line: 341, column: 12, scope: !490)
!504 = !DILocation(line: 342, column: 18, scope: !490)
!505 = !DILocation(line: 343, column: 21, scope: !490)
!506 = !DILocation(line: 344, column: 18, scope: !490)
!507 = !DILocation(line: 345, column: 13, scope: !490)
!508 = !DILocation(line: 346, column: 12, scope: !490)
!509 = !DILocation(line: 328, column: 10, scope: !490)
!510 = !DILocation(line: 329, column: 10, scope: !490)
!511 = !DILocation(line: 329, column: 8, scope: !490)
!512 = !DILocation(line: 60, column: 12, scope: !65, inlinedAt: !513)
!513 = distinct !DILocation(line: 330, column: 3, scope: !490)
!514 = !DILocation(line: 61, column: 6, scope: !65, inlinedAt: !513)
!515 = !DILocation(line: 62, column: 6, scope: !65, inlinedAt: !513)
!516 = !DILocation(line: 63, column: 9, scope: !65, inlinedAt: !513)
!517 = !DILocation(line: 64, column: 9, scope: !65, inlinedAt: !513)
!518 = !DILocation(line: 65, column: 8, scope: !65, inlinedAt: !513)
!519 = !DILocation(line: 66, column: 8, scope: !65, inlinedAt: !513)
!520 = !DILocation(line: 67, column: 7, scope: !65, inlinedAt: !513)
!521 = !DILocation(line: 68, column: 7, scope: !65, inlinedAt: !513)
!522 = !DILocation(line: 68, column: 5, scope: !65, inlinedAt: !513)
!523 = !DILocation(line: 69, column: 10, scope: !65, inlinedAt: !513)
!524 = !DILocation(line: 70, column: 12, scope: !65, inlinedAt: !513)
!525 = !DILocation(line: 71, column: 18, scope: !65, inlinedAt: !513)
!526 = !DILocation(line: 72, column: 21, scope: !65, inlinedAt: !513)
!527 = !DILocation(line: 73, column: 18, scope: !65, inlinedAt: !513)
!528 = !DILocation(line: 74, column: 13, scope: !65, inlinedAt: !513)
!529 = !DILocation(line: 332, column: 7, scope: !530)
!530 = distinct !DILexicalBlock(scope: !491, file: !10, line: 332, column: 7)
!531 = !DILocation(line: 332, column: 14, scope: !530)
!532 = !DILocation(line: 332, column: 7, scope: !491)
!533 = !DILocation(line: 333, column: 9, scope: !534)
!534 = distinct !DILexicalBlock(scope: !530, file: !10, line: 332, column: 20)
!535 = !DILocation(line: 333, column: 7, scope: !534)
!536 = !DILocation(line: 334, column: 15, scope: !534)
!537 = !DILocation(line: 335, column: 22, scope: !534)
!538 = !DILocation(line: 335, column: 20, scope: !534)
!539 = !DILocation(line: 336, column: 25, scope: !534)
!540 = !DILocation(line: 336, column: 23, scope: !534)
!541 = !DILocation(line: 337, column: 22, scope: !534)
!542 = !DILocation(line: 337, column: 20, scope: !534)
!543 = !DILocation(line: 338, column: 14, scope: !534)
!544 = !DILocation(line: 338, column: 12, scope: !534)
!545 = !DILocation(line: 339, column: 28, scope: !534)
!546 = !DILocation(line: 340, column: 14, scope: !534)
!547 = !DILocation(line: 341, column: 9, scope: !548)
!548 = distinct !DILexicalBlock(scope: !534, file: !10, line: 341, column: 9)
!549 = !DILocation(line: 341, column: 20, scope: !548)
!550 = !DILocation(line: 341, column: 9, scope: !534)
!551 = !DILocation(line: 342, column: 30, scope: !552)
!552 = distinct !DILexicalBlock(scope: !548, file: !10, line: 341, column: 26)
!553 = !DILocation(line: 343, column: 16, scope: !552)
!554 = !DILocation(line: 344, column: 5, scope: !552)
!555 = !DILocation(line: 46, column: 7, scope: !55, inlinedAt: !556)
!556 = distinct !DILocation(line: 348, column: 5, scope: !557)
!557 = distinct !DILexicalBlock(scope: !534, file: !10, line: 345, column: 5)
!558 = !DILocation(line: 46, column: 5, scope: !55, inlinedAt: !556)
!559 = !DILocation(line: 47, column: 10, scope: !55, inlinedAt: !556)
!560 = !DILocation(line: 48, column: 12, scope: !55, inlinedAt: !556)
!561 = !DILocation(line: 49, column: 18, scope: !55, inlinedAt: !556)
!562 = !DILocation(line: 50, column: 21, scope: !55, inlinedAt: !556)
!563 = !DILocation(line: 51, column: 18, scope: !55, inlinedAt: !556)
!564 = !DILocation(line: 52, column: 13, scope: !55, inlinedAt: !556)
!565 = !DILocation(line: 350, column: 8, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !10, line: 350, column: 8)
!567 = distinct !DILexicalBlock(scope: !534, file: !10, line: 350, column: 5)
!568 = !DILocation(line: 350, column: 15, scope: !566)
!569 = !DILocation(line: 350, column: 8, scope: !567)
!570 = !DILocation(line: 351, column: 18, scope: !571)
!571 = distinct !DILexicalBlock(scope: !566, file: !10, line: 350, column: 20)
!572 = !DILocation(line: 352, column: 5, scope: !571)
!573 = !DILocation(line: 354, column: 18, scope: !574)
!574 = distinct !DILexicalBlock(scope: !566, file: !10, line: 353, column: 9)
!575 = !DILocation(line: 350, column: 11, scope: !576)
!576 = distinct !DILexicalBlock(scope: !567, file: !10, line: 350, column: 9)
!577 = !DILocation(line: 350, column: 9, scope: !567)
!578 = !DILocation(line: 351, column: 7, scope: !579)
!579 = distinct !DILexicalBlock(scope: !576, file: !10, line: 350, column: 23)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_1", scope: !534, file: !10, line: 355, type: !14)
!581 = !DILocation(line: 355, column: 9, scope: !534)
!582 = !DILocation(line: 356, column: 17, scope: !534)
!583 = !DILocation(line: 356, column: 15, scope: !534)
!584 = !DILocation(line: 357, column: 9, scope: !585)
!585 = distinct !DILexicalBlock(scope: !534, file: !10, line: 357, column: 9)
!586 = !DILocation(line: 357, column: 19, scope: !585)
!587 = !DILocation(line: 357, column: 9, scope: !534)
!588 = !DILocation(line: 358, column: 7, scope: !589)
!589 = distinct !DILexicalBlock(scope: !585, file: !10, line: 357, column: 25)
!590 = !DILocation(line: 360, column: 7, scope: !591)
!591 = distinct !DILexicalBlock(scope: !585, file: !10, line: 359, column: 12)
!592 = !DILocation(line: 360, column: 11, scope: !591)
!593 = !DILocation(line: 360, column: 14, scope: !594)
!594 = distinct !DILexicalBlock(scope: !591, file: !10, line: 360, column: 11)
!595 = !DILocation(line: 363, column: 31, scope: !596)
!596 = distinct !DILexicalBlock(scope: !597, file: !10, line: 362, column: 9)
!597 = distinct !DILexicalBlock(scope: !594, file: !10, line: 360, column: 14)
!598 = !DILocation(line: 363, column: 39, scope: !596)
!599 = !DILocation(line: 363, column: 18, scope: !596)
!600 = !DILocation(line: 363, column: 16, scope: !596)
!601 = !DILocation(line: 365, column: 9, scope: !597)
!602 = !DILocation(line: 367, column: 9, scope: !597)
!603 = !DILocation(line: 368, column: 14, scope: !594)
!604 = !DILocation(line: 372, column: 3, scope: !534)
!605 = !DILocation(line: 376, column: 7, scope: !606)
!606 = distinct !DILexicalBlock(scope: !491, file: !10, line: 376, column: 7)
!607 = !DILocation(line: 376, column: 14, scope: !606)
!608 = !DILocation(line: 376, column: 7, scope: !491)
!609 = !DILocation(line: 377, column: 9, scope: !610)
!610 = distinct !DILexicalBlock(scope: !611, file: !10, line: 377, column: 9)
!611 = distinct !DILexicalBlock(scope: !606, file: !10, line: 376, column: 20)
!612 = !DILocation(line: 377, column: 14, scope: !610)
!613 = !DILocation(line: 377, column: 11, scope: !610)
!614 = !DILocation(line: 377, column: 9, scope: !611)
!615 = !DILocation(line: 378, column: 11, scope: !616)
!616 = distinct !DILexicalBlock(scope: !610, file: !10, line: 377, column: 18)
!617 = !DILocation(line: 378, column: 9, scope: !616)
!618 = !DILocation(line: 379, column: 5, scope: !616)
!619 = !DILocation(line: 380, column: 7, scope: !620)
!620 = distinct !DILexicalBlock(scope: !610, file: !10, line: 379, column: 12)
!621 = !DILocation(line: 382, column: 3, scope: !611)
!622 = !DILocation(line: 382, column: 10, scope: !606)
!623 = !DILocation(line: 384, column: 9, scope: !624)
!624 = distinct !DILexicalBlock(scope: !625, file: !10, line: 384, column: 9)
!625 = distinct !DILexicalBlock(scope: !606, file: !10, line: 382, column: 10)
!626 = !DILocation(line: 384, column: 16, scope: !624)
!627 = !DILocation(line: 384, column: 9, scope: !625)
!628 = !DILocation(line: 385, column: 11, scope: !629)
!629 = distinct !DILexicalBlock(scope: !630, file: !10, line: 385, column: 11)
!630 = distinct !DILexicalBlock(scope: !624, file: !10, line: 384, column: 22)
!631 = !DILocation(line: 385, column: 16, scope: !629)
!632 = !DILocation(line: 385, column: 13, scope: !629)
!633 = !DILocation(line: 385, column: 11, scope: !630)
!634 = !DILocation(line: 386, column: 13, scope: !635)
!635 = distinct !DILexicalBlock(scope: !629, file: !10, line: 385, column: 22)
!636 = !DILocation(line: 386, column: 11, scope: !635)
!637 = !DILocation(line: 387, column: 7, scope: !635)
!638 = !DILocation(line: 388, column: 9, scope: !639)
!639 = distinct !DILexicalBlock(scope: !629, file: !10, line: 387, column: 14)
!640 = !DILocation(line: 390, column: 5, scope: !630)
!641 = !DILocation(line: 390, column: 12, scope: !624)
!642 = !DILocation(line: 392, column: 11, scope: !643)
!643 = distinct !DILexicalBlock(scope: !644, file: !10, line: 392, column: 11)
!644 = distinct !DILexicalBlock(scope: !624, file: !10, line: 390, column: 12)
!645 = !DILocation(line: 392, column: 16, scope: !643)
!646 = !DILocation(line: 392, column: 13, scope: !643)
!647 = !DILocation(line: 392, column: 11, scope: !644)
!648 = !DILocation(line: 395, column: 13, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !10, line: 395, column: 13)
!650 = distinct !DILexicalBlock(scope: !643, file: !10, line: 392, column: 26)
!651 = !DILocation(line: 395, column: 20, scope: !649)
!652 = !DILocation(line: 395, column: 13, scope: !650)
!653 = !DILocation(line: 398, column: 15, scope: !654)
!654 = distinct !DILexicalBlock(scope: !655, file: !10, line: 398, column: 15)
!655 = distinct !DILexicalBlock(scope: !649, file: !10, line: 395, column: 27)
!656 = !DILocation(line: 398, column: 20, scope: !654)
!657 = !DILocation(line: 398, column: 17, scope: !654)
!658 = !DILocation(line: 398, column: 15, scope: !655)
!659 = !DILocation(line: 399, column: 17, scope: !660)
!660 = distinct !DILexicalBlock(scope: !661, file: !10, line: 399, column: 17)
!661 = distinct !DILexicalBlock(scope: !654, file: !10, line: 398, column: 27)
!662 = !DILocation(line: 399, column: 22, scope: !660)
!663 = !DILocation(line: 399, column: 19, scope: !660)
!664 = !DILocation(line: 399, column: 17, scope: !661)
!665 = !DILocation(line: 400, column: 19, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !10, line: 400, column: 19)
!667 = distinct !DILexicalBlock(scope: !660, file: !10, line: 399, column: 27)
!668 = !DILocation(line: 400, column: 24, scope: !666)
!669 = !DILocation(line: 400, column: 21, scope: !666)
!670 = !DILocation(line: 400, column: 19, scope: !667)
!671 = !DILocation(line: 401, column: 17, scope: !672)
!672 = distinct !DILexicalBlock(scope: !666, file: !10, line: 400, column: 28)
!673 = !DILocation(line: 403, column: 13, scope: !667)
!674 = !DILocation(line: 404, column: 15, scope: !675)
!675 = distinct !DILexicalBlock(scope: !660, file: !10, line: 403, column: 20)
!676 = !DILocation(line: 406, column: 11, scope: !661)
!677 = !DILocation(line: 406, column: 18, scope: !654)
!678 = !DILocation(line: 410, column: 17, scope: !679)
!679 = distinct !DILexicalBlock(scope: !680, file: !10, line: 410, column: 17)
!680 = distinct !DILexicalBlock(scope: !654, file: !10, line: 406, column: 18)
!681 = !DILocation(line: 410, column: 24, scope: !679)
!682 = !DILocation(line: 410, column: 17, scope: !680)
!683 = !DILocation(line: 411, column: 19, scope: !684)
!684 = distinct !DILexicalBlock(scope: !685, file: !10, line: 411, column: 19)
!685 = distinct !DILexicalBlock(scope: !679, file: !10, line: 410, column: 30)
!686 = !DILocation(line: 411, column: 26, scope: !684)
!687 = !DILocation(line: 411, column: 19, scope: !685)
!688 = !DILocation(line: 608, column: 10, scope: !311, inlinedAt: !689)
!689 = distinct !DILocation(line: 413, column: 17, scope: !690)
!690 = distinct !DILexicalBlock(scope: !691, file: !10, line: 412, column: 17)
!691 = distinct !DILexicalBlock(scope: !684, file: !10, line: 411, column: 34)
!692 = !DILocation(line: 415, column: 15, scope: !691)
!693 = !DILocation(line: 416, column: 13, scope: !685)
!694 = !DILocation(line: 419, column: 19, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !10, line: 419, column: 19)
!696 = distinct !DILexicalBlock(scope: !679, file: !10, line: 416, column: 20)
!697 = !DILocation(line: 419, column: 24, scope: !695)
!698 = !DILocation(line: 419, column: 21, scope: !695)
!699 = !DILocation(line: 419, column: 19, scope: !696)
!700 = !DILocation(line: 420, column: 21, scope: !701)
!701 = distinct !DILexicalBlock(scope: !702, file: !10, line: 420, column: 21)
!702 = distinct !DILexicalBlock(scope: !695, file: !10, line: 419, column: 28)
!703 = !DILocation(line: 420, column: 28, scope: !701)
!704 = !DILocation(line: 420, column: 21, scope: !702)
!705 = !DILocation(line: 422, column: 17, scope: !706)
!706 = distinct !DILexicalBlock(scope: !701, file: !10, line: 420, column: 36)
!707 = !DILocation(line: 423, column: 15, scope: !702)
!708 = !DILocation(line: 426, column: 21, scope: !709)
!709 = distinct !DILexicalBlock(scope: !710, file: !10, line: 426, column: 21)
!710 = distinct !DILexicalBlock(scope: !695, file: !10, line: 423, column: 22)
!711 = !DILocation(line: 426, column: 31, scope: !709)
!712 = !DILocation(line: 426, column: 28, scope: !709)
!713 = !DILocation(line: 426, column: 21, scope: !710)
!714 = !DILocation(line: 428, column: 17, scope: !715)
!715 = distinct !DILexicalBlock(scope: !709, file: !10, line: 426, column: 50)
!716 = !DILocation(line: 432, column: 9, scope: !655)
!717 = !DILocation(line: 433, column: 7, scope: !650)
!718 = !DILocation(line: 437, column: 11, scope: !491)
!719 = !DILocation(line: 437, column: 3, scope: !491)
!720 = !DILocation(line: 439, column: 1, scope: !15)
!721 = !DILocation(line: 445, column: 7, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !10, line: 445, column: 7)
!723 = distinct !DILexicalBlock(scope: !18, file: !10, line: 444, column: 3)
!724 = !DILocation(line: 445, column: 12, scope: !722)
!725 = !DILocation(line: 445, column: 9, scope: !722)
!726 = !DILocation(line: 445, column: 7, scope: !723)
!727 = !DILocation(line: 446, column: 9, scope: !728)
!728 = distinct !DILexicalBlock(scope: !722, file: !10, line: 445, column: 16)
!729 = !DILocation(line: 446, column: 7, scope: !728)
!730 = !DILocation(line: 447, column: 3, scope: !728)
!731 = !DILocation(line: 608, column: 10, scope: !311, inlinedAt: !732)
!732 = distinct !DILocation(line: 449, column: 5, scope: !733)
!733 = distinct !DILexicalBlock(scope: !734, file: !10, line: 448, column: 5)
!734 = distinct !DILexicalBlock(scope: !722, file: !10, line: 447, column: 10)
!735 = !DILocation(line: 452, column: 3, scope: !723)
!736 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !19, file: !10, line: 455, type: !14)
!737 = !DILocation(line: 455, column: 23, scope: !19)
!738 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !19, file: !10, line: 455, type: !14)
!739 = !DILocation(line: 455, column: 42, scope: !19)
!740 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "returnVal2", scope: !19, file: !10, line: 457, type: !14)
!741 = !DILocation(line: 457, column: 7, scope: !19)
!742 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compRetStatus", scope: !19, file: !10, line: 458, type: !14)
!743 = !DILocation(line: 458, column: 7, scope: !19)
!744 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lcontext", scope: !19, file: !10, line: 459, type: !14)
!745 = !DILocation(line: 459, column: 7, scope: !19)
!746 = !DILocation(line: 459, column: 18, scope: !19)
!747 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp7", scope: !19, file: !10, line: 460, type: !748)
!748 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!749 = !DILocation(line: 460, column: 13, scope: !19)
!750 = !DILocation(line: 462, column: 7, scope: !751)
!751 = distinct !DILexicalBlock(scope: !752, file: !10, line: 462, column: 7)
!752 = distinct !DILexicalBlock(scope: !19, file: !10, line: 462, column: 3)
!753 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 1, scope: !23, file: !10, line: 540, type: !14)
!754 = !DILocation(line: 540, column: 20, scope: !23, inlinedAt: !755)
!755 = distinct !DILocation(line: 598, column: 3, scope: !756, inlinedAt: !758)
!756 = distinct !DILexicalBlock(scope: !757, file: !10, line: 596, column: 3)
!757 = distinct !DILexicalBlock(scope: !29, file: !10, line: 595, column: 3)
!758 = distinct !DILocation(line: 463, column: 21, scope: !759)
!759 = distinct !DILexicalBlock(scope: !751, file: !10, line: 462, column: 23)
!760 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Increment", arg: 2, scope: !23, file: !10, line: 540, type: !14)
!761 = !DILocation(line: 540, column: 32, scope: !23, inlinedAt: !755)
!762 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Wait", arg: 3, scope: !23, file: !10, line: 540, type: !14)
!763 = !DILocation(line: 540, column: 48, scope: !23, inlinedAt: !755)
!764 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !23, file: !10, line: 541, type: !14)
!765 = !DILocation(line: 541, column: 7, scope: !23, inlinedAt: !755)
!766 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !29, file: !10, line: 592, type: !14)
!767 = !DILocation(line: 592, column: 27, scope: !29, inlinedAt: !758)
!768 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !29, file: !10, line: 592, type: !14)
!769 = !DILocation(line: 592, column: 46, scope: !29, inlinedAt: !758)
!770 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 3, scope: !29, file: !10, line: 592, type: !14)
!771 = !DILocation(line: 592, column: 56, scope: !29, inlinedAt: !758)
!772 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "event", scope: !29, file: !10, line: 593, type: !14)
!773 = !DILocation(line: 593, column: 7, scope: !29, inlinedAt: !758)
!774 = !DILocation(line: 462, column: 7, scope: !752)
!775 = !DILocation(line: 463, column: 39, scope: !759)
!776 = !DILocation(line: 463, column: 53, scope: !759)
!777 = !DILocation(line: 463, column: 58, scope: !759)
!778 = !DILocation(line: 463, column: 21, scope: !759)
!779 = !DILocation(line: 597, column: 11, scope: !756, inlinedAt: !758)
!780 = !DILocation(line: 597, column: 9, scope: !756, inlinedAt: !758)
!781 = !DILocation(line: 598, column: 14, scope: !756, inlinedAt: !758)
!782 = !DILocation(line: 598, column: 3, scope: !756, inlinedAt: !758)
!783 = !DILocation(line: 541, column: 11, scope: !23, inlinedAt: !755)
!784 = !DILocation(line: 544, column: 18, scope: !785, inlinedAt: !755)
!785 = distinct !DILexicalBlock(scope: !23, file: !10, line: 543, column: 3)
!786 = !DILocation(line: 545, column: 11, scope: !785, inlinedAt: !755)
!787 = !DILocation(line: 545, column: 3, scope: !785, inlinedAt: !755)
!788 = !DILocation(line: 600, column: 3, scope: !757, inlinedAt: !758)
!789 = !DILocation(line: 463, column: 19, scope: !759)
!790 = !DILocation(line: 445, column: 7, scope: !722, inlinedAt: !791)
!791 = distinct !DILocation(line: 464, column: 5, scope: !759)
!792 = !DILocation(line: 445, column: 12, scope: !722, inlinedAt: !791)
!793 = !DILocation(line: 445, column: 9, scope: !722, inlinedAt: !791)
!794 = !DILocation(line: 445, column: 7, scope: !723, inlinedAt: !791)
!795 = !DILocation(line: 608, column: 10, scope: !311, inlinedAt: !796)
!796 = distinct !DILocation(line: 449, column: 5, scope: !733, inlinedAt: !791)
!797 = !DILocation(line: 446, column: 9, scope: !728, inlinedAt: !791)
!798 = !DILocation(line: 446, column: 7, scope: !728, inlinedAt: !791)
!799 = !DILocation(line: 465, column: 3, scope: !759)
!800 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_2", scope: !752, file: !10, line: 476, type: !14)
!801 = !DILocation(line: 476, column: 7, scope: !752)
!802 = !DILocation(line: 477, column: 15, scope: !752)
!803 = !DILocation(line: 477, column: 13, scope: !752)
!804 = !DILocation(line: 478, column: 7, scope: !805)
!805 = distinct !DILexicalBlock(scope: !752, file: !10, line: 478, column: 7)
!806 = !DILocation(line: 478, column: 17, scope: !805)
!807 = !DILocation(line: 478, column: 7, scope: !752)
!808 = !DILocation(line: 479, column: 5, scope: !809)
!809 = distinct !DILexicalBlock(scope: !805, file: !10, line: 478, column: 23)
!810 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_3", scope: !811, file: !10, line: 479, type: !14)
!811 = distinct !DILexicalBlock(scope: !805, file: !10, line: 480, column: 10)
!812 = !DILocation(line: 479, column: 9, scope: !811)
!813 = !DILocation(line: 480, column: 17, scope: !811)
!814 = !DILocation(line: 480, column: 15, scope: !811)
!815 = !DILocation(line: 481, column: 9, scope: !816)
!816 = distinct !DILexicalBlock(scope: !811, file: !10, line: 481, column: 9)
!817 = !DILocation(line: 481, column: 19, scope: !816)
!818 = !DILocation(line: 481, column: 9, scope: !811)
!819 = !DILocation(line: 482, column: 7, scope: !820)
!820 = distinct !DILexicalBlock(scope: !816, file: !10, line: 481, column: 25)
!821 = !DILocation(line: 484, column: 7, scope: !822)
!822 = distinct !DILexicalBlock(scope: !816, file: !10, line: 483, column: 12)
!823 = !DILocation(line: 484, column: 11, scope: !822)
!824 = !DILocation(line: 484, column: 14, scope: !825)
!825 = distinct !DILexicalBlock(scope: !822, file: !10, line: 484, column: 11)
!826 = !DILocation(line: 486, column: 20, scope: !827)
!827 = distinct !DILexicalBlock(scope: !825, file: !10, line: 484, column: 14)
!828 = !DILocation(line: 487, column: 9, scope: !827)
!829 = !DILocation(line: 489, column: 20, scope: !827)
!830 = !DILocation(line: 490, column: 9, scope: !827)
!831 = !DILocation(line: 492, column: 20, scope: !827)
!832 = !DILocation(line: 493, column: 9, scope: !827)
!833 = !DILocation(line: 494, column: 14, scope: !825)
!834 = !DILocation(line: 500, column: 7, scope: !835)
!835 = distinct !DILexicalBlock(scope: !752, file: !10, line: 500, column: 7)
!836 = !DILocation(line: 500, column: 12, scope: !835)
!837 = !DILocation(line: 500, column: 9, scope: !835)
!838 = !DILocation(line: 500, column: 7, scope: !752)
!839 = !DILocation(line: 501, column: 9, scope: !840)
!840 = distinct !DILexicalBlock(scope: !835, file: !10, line: 500, column: 16)
!841 = !DILocation(line: 501, column: 7, scope: !840)
!842 = !DILocation(line: 502, column: 25, scope: !840)
!843 = !DILocation(line: 502, column: 23, scope: !840)
!844 = !DILocation(line: 503, column: 3, scope: !840)
!845 = !DILocation(line: 504, column: 9, scope: !846)
!846 = distinct !DILexicalBlock(scope: !847, file: !10, line: 504, column: 9)
!847 = distinct !DILexicalBlock(scope: !835, file: !10, line: 503, column: 10)
!848 = !DILocation(line: 504, column: 14, scope: !846)
!849 = !DILocation(line: 504, column: 11, scope: !846)
!850 = !DILocation(line: 504, column: 9, scope: !847)
!851 = !DILocation(line: 505, column: 11, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !10, line: 505, column: 11)
!853 = distinct !DILexicalBlock(scope: !846, file: !10, line: 504, column: 20)
!854 = !DILocation(line: 505, column: 22, scope: !852)
!855 = !DILocation(line: 505, column: 11, scope: !853)
!856 = !DILocation(line: 506, column: 13, scope: !857)
!857 = distinct !DILexicalBlock(scope: !852, file: !10, line: 505, column: 30)
!858 = !DILocation(line: 506, column: 11, scope: !857)
!859 = !DILocation(line: 507, column: 29, scope: !857)
!860 = !DILocation(line: 507, column: 27, scope: !857)
!861 = !DILocation(line: 508, column: 7, scope: !857)
!862 = !DILocation(line: 509, column: 13, scope: !863)
!863 = distinct !DILexicalBlock(scope: !852, file: !10, line: 508, column: 14)
!864 = !DILocation(line: 509, column: 11, scope: !863)
!865 = !DILocation(line: 510, column: 29, scope: !863)
!866 = !DILocation(line: 510, column: 27, scope: !863)
!867 = !DILocation(line: 512, column: 5, scope: !853)
!868 = !DILocation(line: 513, column: 11, scope: !869)
!869 = distinct !DILexicalBlock(scope: !870, file: !10, line: 513, column: 11)
!870 = distinct !DILexicalBlock(scope: !846, file: !10, line: 512, column: 12)
!871 = !DILocation(line: 513, column: 16, scope: !869)
!872 = !DILocation(line: 513, column: 13, scope: !869)
!873 = !DILocation(line: 513, column: 11, scope: !870)
!874 = !DILocation(line: 514, column: 13, scope: !875)
!875 = distinct !DILexicalBlock(scope: !869, file: !10, line: 513, column: 23)
!876 = !DILocation(line: 514, column: 11, scope: !875)
!877 = !DILocation(line: 515, column: 29, scope: !875)
!878 = !DILocation(line: 515, column: 27, scope: !875)
!879 = !DILocation(line: 516, column: 7, scope: !875)
!880 = !DILocation(line: 608, column: 10, scope: !311, inlinedAt: !881)
!881 = distinct !DILocation(line: 518, column: 9, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !10, line: 517, column: 9)
!883 = distinct !DILexicalBlock(scope: !869, file: !10, line: 516, column: 14)
!884 = !DILocation(line: 523, column: 11, scope: !752)
!885 = !DILocation(line: 523, column: 3, scope: !752)
!886 = !DILocation(line: 540, column: 20, scope: !23)
!887 = !DILocation(line: 540, column: 32, scope: !23)
!888 = !DILocation(line: 540, column: 48, scope: !23)
!889 = !DILocation(line: 541, column: 7, scope: !23)
!890 = !DILocation(line: 541, column: 11, scope: !23)
!891 = !DILocation(line: 544, column: 18, scope: !785)
!892 = !DILocation(line: 545, column: 11, scope: !785)
!893 = !DILocation(line: 545, column: 3, scope: !785)
!894 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Object", arg: 1, scope: !26, file: !10, line: 548, type: !14)
!895 = !DILocation(line: 548, column: 31, scope: !26)
!896 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitReason", arg: 2, scope: !26, file: !10, line: 548, type: !14)
!897 = !DILocation(line: 548, column: 44, scope: !26)
!898 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitMode", arg: 3, scope: !26, file: !10, line: 548, type: !14)
!899 = !DILocation(line: 548, column: 61, scope: !26)
!900 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Alertable", arg: 4, scope: !26, file: !10, line: 548, type: !14)
!901 = !DILocation(line: 548, column: 76, scope: !26)
!902 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Timeout", arg: 5, scope: !26, file: !10, line: 549, type: !14)
!903 = !DILocation(line: 549, column: 31, scope: !26)
!904 = !DILocation(line: 553, column: 7, scope: !905)
!905 = distinct !DILexicalBlock(scope: !906, file: !10, line: 553, column: 7)
!906 = distinct !DILexicalBlock(scope: !26, file: !10, line: 552, column: 3)
!907 = !DILocation(line: 553, column: 12, scope: !905)
!908 = !DILocation(line: 553, column: 9, scope: !905)
!909 = !DILocation(line: 553, column: 7, scope: !906)
!910 = !DILocation(line: 554, column: 9, scope: !911)
!911 = distinct !DILexicalBlock(scope: !912, file: !10, line: 554, column: 9)
!912 = distinct !DILexicalBlock(scope: !905, file: !10, line: 553, column: 18)
!913 = !DILocation(line: 554, column: 24, scope: !911)
!914 = !DILocation(line: 554, column: 9, scope: !912)
!915 = !DILocation(line: 555, column: 11, scope: !916)
!916 = distinct !DILexicalBlock(scope: !911, file: !10, line: 554, column: 30)
!917 = !DILocation(line: 555, column: 9, scope: !916)
!918 = !DILocation(line: 556, column: 22, scope: !916)
!919 = !DILocation(line: 557, column: 5, scope: !916)
!920 = !DILocation(line: 558, column: 7, scope: !921)
!921 = distinct !DILexicalBlock(scope: !911, file: !10, line: 557, column: 12)
!922 = !DILocation(line: 560, column: 3, scope: !912)
!923 = !DILocation(line: 560, column: 10, scope: !905)
!924 = !DILocation(line: 562, column: 9, scope: !925)
!925 = distinct !DILexicalBlock(scope: !926, file: !10, line: 562, column: 9)
!926 = distinct !DILexicalBlock(scope: !905, file: !10, line: 560, column: 10)
!927 = !DILocation(line: 562, column: 19, scope: !925)
!928 = !DILocation(line: 562, column: 9, scope: !926)
!929 = !DILocation(line: 563, column: 11, scope: !930)
!930 = distinct !DILexicalBlock(scope: !925, file: !10, line: 562, column: 25)
!931 = !DILocation(line: 563, column: 9, scope: !930)
!932 = !DILocation(line: 564, column: 17, scope: !930)
!933 = !DILocation(line: 565, column: 5, scope: !930)
!934 = !DILocation(line: 566, column: 11, scope: !935)
!935 = distinct !DILexicalBlock(scope: !936, file: !10, line: 566, column: 11)
!936 = distinct !DILexicalBlock(scope: !925, file: !10, line: 565, column: 12)
!937 = !DILocation(line: 566, column: 16, scope: !935)
!938 = !DILocation(line: 566, column: 13, scope: !935)
!939 = !DILocation(line: 566, column: 11, scope: !936)
!940 = !DILocation(line: 608, column: 10, scope: !311, inlinedAt: !941)
!941 = distinct !DILocation(line: 568, column: 9, scope: !942)
!942 = distinct !DILexicalBlock(scope: !943, file: !10, line: 567, column: 9)
!943 = distinct !DILexicalBlock(scope: !935, file: !10, line: 566, column: 22)
!944 = !DILocation(line: 570, column: 7, scope: !943)
!945 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_4", scope: !906, file: !10, line: 575, type: !14)
!946 = !DILocation(line: 575, column: 7, scope: !906)
!947 = !DILocation(line: 576, column: 15, scope: !906)
!948 = !DILocation(line: 576, column: 13, scope: !906)
!949 = !DILocation(line: 577, column: 7, scope: !950)
!950 = distinct !DILexicalBlock(scope: !906, file: !10, line: 577, column: 7)
!951 = !DILocation(line: 577, column: 17, scope: !950)
!952 = !DILocation(line: 577, column: 7, scope: !906)
!953 = !DILocation(line: 578, column: 5, scope: !954)
!954 = distinct !DILexicalBlock(scope: !950, file: !10, line: 577, column: 23)
!955 = !DILocation(line: 580, column: 5, scope: !956)
!956 = distinct !DILexicalBlock(scope: !950, file: !10, line: 579, column: 10)
!957 = !DILocation(line: 580, column: 9, scope: !956)
!958 = !DILocation(line: 580, column: 12, scope: !959)
!959 = distinct !DILexicalBlock(scope: !956, file: !10, line: 580, column: 9)
!960 = !DILocation(line: 582, column: 7, scope: !961)
!961 = distinct !DILexicalBlock(scope: !959, file: !10, line: 580, column: 12)
!962 = !DILocation(line: 584, column: 7, scope: !961)
!963 = !DILocation(line: 590, column: 1, scope: !26)
!964 = !DILocation(line: 592, column: 27, scope: !29)
!965 = !DILocation(line: 592, column: 46, scope: !29)
!966 = !DILocation(line: 592, column: 56, scope: !29)
!967 = !DILocation(line: 593, column: 7, scope: !29)
!968 = !DILocation(line: 597, column: 11, scope: !756)
!969 = !DILocation(line: 597, column: 9, scope: !756)
!970 = !DILocation(line: 598, column: 14, scope: !756)
!971 = !DILocation(line: 598, column: 3, scope: !756)
!972 = !DILocation(line: 541, column: 11, scope: !23, inlinedAt: !973)
!973 = distinct !DILocation(line: 598, column: 3, scope: !756)
!974 = !DILocation(line: 541, column: 7, scope: !23, inlinedAt: !973)
!975 = !DILocation(line: 544, column: 18, scope: !785, inlinedAt: !973)
!976 = !DILocation(line: 545, column: 11, scope: !785, inlinedAt: !973)
!977 = !DILocation(line: 545, column: 3, scope: !785, inlinedAt: !973)
!978 = !DILocation(line: 540, column: 20, scope: !23, inlinedAt: !973)
!979 = !DILocation(line: 540, column: 32, scope: !23, inlinedAt: !973)
!980 = !DILocation(line: 540, column: 48, scope: !23, inlinedAt: !973)
!981 = !DILocation(line: 600, column: 3, scope: !757)
