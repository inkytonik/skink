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
@DevicePowerState = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @stub_driver_init() #0 {
  %1 = load i32, i32* @NP, align 4, !dbg !61
  store i32 %1, i32* @s, align 4, !dbg !63
  store i32 0, i32* @pended, align 4, !dbg !64
  store i32 0, i32* @compFptr, align 4, !dbg !65
  store i32 0, i32* @compRegistered, align 4, !dbg !66
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !67
  store i32 0, i32* @setEventCalled, align 4, !dbg !68
  store i32 0, i32* @customIrp, align 4, !dbg !69
  ret void, !dbg !70
}

; Function Attrs: nounwind ssp uwtable
define void @_BLAST_init() #0 {
  store i32 0, i32* @UNLOADED, align 4, !dbg !71
  store i32 1, i32* @NP, align 4, !dbg !73
  store i32 2, i32* @DC, align 4, !dbg !74
  store i32 3, i32* @SKIP1, align 4, !dbg !75
  store i32 4, i32* @SKIP2, align 4, !dbg !76
  store i32 5, i32* @MPR1, align 4, !dbg !77
  store i32 6, i32* @MPR3, align 4, !dbg !78
  store i32 7, i32* @IPC, align 4, !dbg !79
  %1 = load i32, i32* @UNLOADED, align 4, !dbg !80
  store i32 %1, i32* @s, align 4, !dbg !81
  store i32 0, i32* @pended, align 4, !dbg !82
  store i32 0, i32* @compFptr, align 4, !dbg !83
  store i32 0, i32* @compRegistered, align 4, !dbg !84
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !85
  store i32 0, i32* @setEventCalled, align 4, !dbg !86
  store i32 0, i32* @customIrp, align 4, !dbg !87
  ret void, !dbg !88
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
  call void @llvm.dbg.declare(metadata i32* %3, metadata !89, metadata !90), !dbg !91
  store i32 %Irp, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !92, metadata !90), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %devExt, metadata !94, metadata !90), !dbg !95
  call void @llvm.dbg.declare(metadata i32* %irpStack, metadata !96, metadata !90), !dbg !97
  call void @llvm.dbg.declare(metadata i32* %status, metadata !98, metadata !90), !dbg !99
  call void @llvm.dbg.declare(metadata i32* %event, metadata !100, metadata !90), !dbg !101
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !102
  store i32 %5, i32* %event, align 4, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension, metadata !103, metadata !90), !dbg !104
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !105
  store i32 %6, i32* %DeviceObject__DeviceExtension, align 4, !dbg !104
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !106, metadata !90), !dbg !107
  %7 = call i32 @__VERIFIER_nondet_int(), !dbg !108
  store i32 %7, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %irpStack__MinorFunction, metadata !109, metadata !90), !dbg !110
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !111
  store i32 %8, i32* %irpStack__MinorFunction, align 4, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %devExt__TopOfStack, metadata !112, metadata !90), !dbg !113
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !114
  store i32 %9, i32* %devExt__TopOfStack, align 4, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %devExt__Started, metadata !115, metadata !90), !dbg !116
  call void @llvm.dbg.declare(metadata i32* %devExt__Removed, metadata !117, metadata !90), !dbg !118
  call void @llvm.dbg.declare(metadata i32* %devExt__SurpriseRemoved, metadata !119, metadata !90), !dbg !120
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !121, metadata !90), !dbg !122
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !123, metadata !90), !dbg !124
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !125, metadata !90), !dbg !126
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !127
  store i32 %10, i32* %Irp__CurrentLocation, align 4, !dbg !126
  call void @llvm.dbg.declare(metadata i32* %irpSp, metadata !128, metadata !90), !dbg !129
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp, metadata !130, metadata !90), !dbg !131
  call void @llvm.dbg.declare(metadata i32* %nextIrpSp__Control, metadata !132, metadata !90), !dbg !133
  call void @llvm.dbg.declare(metadata i32* %irpSp___0, metadata !134, metadata !90), !dbg !135
  call void @llvm.dbg.declare(metadata i32* %irpSp__Context, metadata !136, metadata !90), !dbg !137
  call void @llvm.dbg.declare(metadata i32* %irpSp__Control, metadata !138, metadata !90), !dbg !139
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp23, metadata !140, metadata !90), !dbg !141
  store i32 0, i32* %status, align 4, !dbg !142
  %11 = load i32, i32* %DeviceObject__DeviceExtension, align 4, !dbg !144
  store i32 %11, i32* %devExt, align 4, !dbg !145
  %12 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !146
  store i32 %12, i32* %irpStack, align 4, !dbg !147
  %13 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !148
  %14 = icmp eq i32 %13, 0, !dbg !150
  call void @llvm.dbg.declare(metadata i32* %1, metadata !151, metadata !90), !dbg !152
  call void @llvm.dbg.declare(metadata i32* %2, metadata !198, metadata !90), !dbg !199
  br i1 %14, label %15, label %16, !dbg !200

; <label>:15                                      ; preds = %0
  br label %99, !dbg !201

; <label>:16                                      ; preds = %0
  %17 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !203
  %18 = icmp eq i32 %17, 23, !dbg !204
  br i1 %18, label %19, label %20, !dbg !205

; <label>:19                                      ; preds = %16
  br label %150, !dbg !206

; <label>:20                                      ; preds = %16
  %21 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !208
  %22 = icmp eq i32 %21, 2, !dbg !209
  br i1 %22, label %23, label %24, !dbg !210

; <label>:23                                      ; preds = %20
  br label %165, !dbg !211

; <label>:24                                      ; preds = %20
  %25 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !213
  %26 = icmp eq i32 %25, 1, !dbg !214
  br i1 %26, label %27, label %28, !dbg !215

; <label>:27                                      ; preds = %24
  br label %180, !dbg !216

; <label>:28                                      ; preds = %24
  %29 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !218
  %30 = icmp eq i32 %29, 5, !dbg !219
  br i1 %30, label %31, label %32, !dbg !220

; <label>:31                                      ; preds = %28
  br label %180, !dbg !221

; <label>:32                                      ; preds = %28
  %33 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !223
  %34 = icmp eq i32 %33, 3, !dbg !224
  br i1 %34, label %35, label %36, !dbg !225

; <label>:35                                      ; preds = %32
  br label %180, !dbg !226

; <label>:36                                      ; preds = %32
  %37 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !228
  %38 = icmp eq i32 %37, 6, !dbg !229
  br i1 %38, label %39, label %40, !dbg !230

; <label>:39                                      ; preds = %36
  br label %180, !dbg !231

; <label>:40                                      ; preds = %36
  %41 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !233
  %42 = icmp eq i32 %41, 13, !dbg !234
  br i1 %42, label %43, label %44, !dbg !235

; <label>:43                                      ; preds = %40
  br label %180, !dbg !236

; <label>:44                                      ; preds = %40
  %45 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !238
  %46 = icmp eq i32 %45, 4, !dbg !239
  br i1 %46, label %47, label %48, !dbg !240

; <label>:47                                      ; preds = %44
  br label %180, !dbg !241

; <label>:48                                      ; preds = %44
  %49 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !243
  %50 = icmp eq i32 %49, 7, !dbg !244
  br i1 %50, label %51, label %52, !dbg !245

; <label>:51                                      ; preds = %48
  br label %180, !dbg !246

; <label>:52                                      ; preds = %48
  %53 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !248
  %54 = icmp eq i32 %53, 8, !dbg !249
  br i1 %54, label %55, label %56, !dbg !250

; <label>:55                                      ; preds = %52
  br label %180, !dbg !251

; <label>:56                                      ; preds = %52
  %57 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !253
  %58 = icmp eq i32 %57, 9, !dbg !254
  br i1 %58, label %59, label %60, !dbg !255

; <label>:59                                      ; preds = %56
  br label %180, !dbg !256

; <label>:60                                      ; preds = %56
  %61 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !258
  %62 = icmp eq i32 %61, 12, !dbg !259
  br i1 %62, label %63, label %64, !dbg !260

; <label>:63                                      ; preds = %60
  br label %180, !dbg !261

; <label>:64                                      ; preds = %60
  %65 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !263
  %66 = icmp eq i32 %65, 10, !dbg !264
  br i1 %66, label %67, label %68, !dbg !265

; <label>:67                                      ; preds = %64
  br label %180, !dbg !266

; <label>:68                                      ; preds = %64
  %69 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !268
  %70 = icmp eq i32 %69, 11, !dbg !269
  br i1 %70, label %71, label %72, !dbg !270

; <label>:71                                      ; preds = %68
  br label %180, !dbg !271

; <label>:72                                      ; preds = %68
  %73 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !273
  %74 = icmp eq i32 %73, 15, !dbg !274
  br i1 %74, label %75, label %76, !dbg !275

; <label>:75                                      ; preds = %72
  br label %180, !dbg !276

; <label>:76                                      ; preds = %72
  %77 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !278
  %78 = icmp eq i32 %77, 16, !dbg !279
  br i1 %78, label %79, label %80, !dbg !280

; <label>:79                                      ; preds = %76
  br label %180, !dbg !281

; <label>:80                                      ; preds = %76
  %81 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !283
  %82 = icmp eq i32 %81, 17, !dbg !284
  br i1 %82, label %83, label %84, !dbg !285

; <label>:83                                      ; preds = %80
  br label %180, !dbg !286

; <label>:84                                      ; preds = %80
  %85 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !288
  %86 = icmp eq i32 %85, 18, !dbg !289
  br i1 %86, label %87, label %88, !dbg !290

; <label>:87                                      ; preds = %84
  br label %180, !dbg !291

; <label>:88                                      ; preds = %84
  %89 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !293
  %90 = icmp eq i32 %89, 19, !dbg !294
  br i1 %90, label %91, label %92, !dbg !295

; <label>:91                                      ; preds = %88
  br label %180, !dbg !296

; <label>:92                                      ; preds = %88
  %93 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !298
  %94 = icmp eq i32 %93, 20, !dbg !299
  br i1 %94, label %95, label %96, !dbg !300

; <label>:95                                      ; preds = %92
  br label %180, !dbg !301

; <label>:96                                      ; preds = %92
  br label %180, !dbg !303
                                                  ; No predecessors!
  br i1 false, label %98, label %195, !dbg !304

; <label>:98                                      ; preds = %97
  br label %99, !dbg !305

; <label>:99                                      ; preds = %98, %15
  %100 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !306
  store i32 %100, i32* %irpSp, align 4, !dbg !307
  %101 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !308
  %102 = sub nsw i32 %101, 1, !dbg !309
  store i32 %102, i32* %nextIrpSp, align 4, !dbg !310
  store i32 0, i32* %nextIrpSp__Control, align 4, !dbg !311
  %103 = load i32, i32* @s, align 4, !dbg !312
  %104 = load i32, i32* @NP, align 4, !dbg !314
  %105 = icmp ne i32 %103, %104, !dbg !315
  br i1 %105, label %106, label %107, !dbg !316

; <label>:106                                     ; preds = %99
  call void (...) @__VERIFIER_error() #5, !dbg !317
  unreachable, !dbg !317

errorFn.exit:                                     ; No predecessors!
  br label %113, !dbg !322

; <label>:107                                     ; preds = %99
  %108 = load i32, i32* @compRegistered, align 4, !dbg !323
  %109 = icmp ne i32 %108, 0, !dbg !326
  br i1 %109, label %110, label %111, !dbg !327

; <label>:110                                     ; preds = %107
  call void (...) @__VERIFIER_error() #5, !dbg !328
  unreachable, !dbg !328

errorFn.exit1:                                    ; No predecessors!
  br label %112, !dbg !332

; <label>:111                                     ; preds = %107
  store i32 1, i32* @compRegistered, align 4, !dbg !333
  br label %112

; <label>:112                                     ; preds = %111, %errorFn.exit1
  br label %113

; <label>:113                                     ; preds = %112, %errorFn.exit
  %114 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !335
  %115 = sub nsw i32 %114, 1, !dbg !337
  store i32 %115, i32* %irpSp___0, align 4, !dbg !338
  %116 = load i32, i32* %event, align 4, !dbg !339
  store i32 %116, i32* %irpSp__Context, align 4, !dbg !340
  store i32 224, i32* %irpSp__Control, align 4, !dbg !341
  %117 = load i32, i32* %devExt__TopOfStack, align 4, !dbg !342
  %118 = load i32, i32* %4, align 4, !dbg !343
  %119 = call i32 @IofCallDriver(i32 %117, i32 %118), !dbg !344
  store i32 %119, i32* %status, align 4, !dbg !345
  %120 = load i32, i32* %status, align 4, !dbg !346
  %121 = sext i32 %120 to i64, !dbg !348
  store i64 %121, i64* %__cil_tmp23, align 8, !dbg !349
  %122 = load i64, i64* %__cil_tmp23, align 8, !dbg !350
  %123 = icmp eq i64 %122, 259, !dbg !352
  br i1 %123, label %124, label %129, !dbg !353

; <label>:124                                     ; preds = %113
  %125 = load i32, i32* %event, align 4, !dbg !354
  %126 = load i32, i32* @Executive, align 4, !dbg !357
  %127 = load i32, i32* @KernelMode, align 4, !dbg !358
  %128 = call i32 @KeWaitForSingleObject(i32 %125, i32 %126, i32 %127, i32 0, i32 0), !dbg !359
  br label %129, !dbg !360

; <label>:129                                     ; preds = %124, %113
  %130 = load i32, i32* %status, align 4, !dbg !361
  %131 = icmp sge i32 %130, 0, !dbg !363
  br i1 %131, label %132, label %137, !dbg !364

; <label>:132                                     ; preds = %129
  %133 = load i32, i32* @myStatus, align 4, !dbg !365
  %134 = icmp sge i32 %133, 0, !dbg !368
  br i1 %134, label %135, label %136, !dbg !369

; <label>:135                                     ; preds = %132
  store i32 1, i32* %devExt__Started, align 4, !dbg !370
  store i32 0, i32* %devExt__Removed, align 4, !dbg !372
  store i32 0, i32* %devExt__SurpriseRemoved, align 4, !dbg !373
  br label %136, !dbg !374

; <label>:136                                     ; preds = %135, %132
  br label %137, !dbg !375

; <label>:137                                     ; preds = %136, %129
  %138 = load i32, i32* %status, align 4, !dbg !376
  store i32 %138, i32* %Irp__IoStatus__Status, align 4, !dbg !377
  %139 = load i32, i32* %status, align 4, !dbg !378
  store i32 %139, i32* @myStatus, align 4, !dbg !379
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !380
  %140 = load i32, i32* %4, align 4, !dbg !381
  %141 = bitcast i32* %1 to i8*, !dbg !382
  call void @llvm.lifetime.start(i64 4, i8* %141), !dbg !382
  %142 = bitcast i32* %2 to i8*, !dbg !382
  call void @llvm.lifetime.start(i64 4, i8* %142), !dbg !382
  store i32 %140, i32* %1, align 4, !dbg !382
  store i32 0, i32* %2, align 4, !dbg !382
  %143 = load i32, i32* @s, align 4, !dbg !383
  %144 = load i32, i32* @NP, align 4, !dbg !386
  %145 = icmp eq i32 %143, %144, !dbg !387
  br i1 %145, label %IofCompleteRequest.exit, label %146, !dbg !388

; <label>:146                                     ; preds = %137
  call void (...) @__VERIFIER_error() #5, !dbg !389
  unreachable, !dbg !389

IofCompleteRequest.exit:                          ; preds = %137
  %147 = load i32, i32* @DC, align 4, !dbg !393
  store i32 %147, i32* @s, align 4, !dbg !395
  %148 = bitcast i32* %1 to i8*, !dbg !396
  call void @llvm.lifetime.end(i64 4, i8* %148), !dbg !396
  %149 = bitcast i32* %2 to i8*, !dbg !396
  call void @llvm.lifetime.end(i64 4, i8* %149), !dbg !396
  br label %196, !dbg !397

; <label>:150                                     ; preds = %19
  store i32 1, i32* %devExt__SurpriseRemoved, align 4, !dbg !398
  %151 = load i32, i32* @s, align 4, !dbg !399
  %152 = load i32, i32* @NP, align 4, !dbg !401
  %153 = icmp eq i32 %151, %152, !dbg !402
  br i1 %153, label %154, label %156, !dbg !403

; <label>:154                                     ; preds = %150
  %155 = load i32, i32* @SKIP1, align 4, !dbg !404
  store i32 %155, i32* @s, align 4, !dbg !406
  br label %157, !dbg !407

; <label>:156                                     ; preds = %150
  call void (...) @__VERIFIER_error() #5, !dbg !408
  unreachable, !dbg !408

errorFn.exit2:                                    ; No predecessors!
  br label %157

; <label>:157                                     ; preds = %errorFn.exit2, %154
  %158 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !412
  %159 = add nsw i32 %158, 1, !dbg !412
  store i32 %159, i32* %Irp__CurrentLocation, align 4, !dbg !412
  %160 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !414
  %161 = add nsw i32 %160, 1, !dbg !414
  store i32 %161, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !414
  %162 = load i32, i32* %devExt__TopOfStack, align 4, !dbg !415
  %163 = load i32, i32* %4, align 4, !dbg !416
  %164 = call i32 @IofCallDriver(i32 %162, i32 %163), !dbg !417
  store i32 %164, i32* %status, align 4, !dbg !418
  br label %196, !dbg !419

; <label>:165                                     ; preds = %23
  store i32 1, i32* %devExt__Removed, align 4, !dbg !420
  %166 = load i32, i32* @s, align 4, !dbg !421
  %167 = load i32, i32* @NP, align 4, !dbg !423
  %168 = icmp eq i32 %166, %167, !dbg !424
  br i1 %168, label %169, label %171, !dbg !425

; <label>:169                                     ; preds = %165
  %170 = load i32, i32* @SKIP1, align 4, !dbg !426
  store i32 %170, i32* @s, align 4, !dbg !428
  br label %172, !dbg !429

; <label>:171                                     ; preds = %165
  call void (...) @__VERIFIER_error() #5, !dbg !430
  unreachable, !dbg !430

errorFn.exit3:                                    ; No predecessors!
  br label %172

; <label>:172                                     ; preds = %errorFn.exit3, %169
  %173 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !434
  %174 = add nsw i32 %173, 1, !dbg !434
  store i32 %174, i32* %Irp__CurrentLocation, align 4, !dbg !434
  %175 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !436
  %176 = add nsw i32 %175, 1, !dbg !436
  store i32 %176, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !436
  %177 = load i32, i32* %devExt__TopOfStack, align 4, !dbg !437
  %178 = load i32, i32* %4, align 4, !dbg !438
  %179 = call i32 @IofCallDriver(i32 %177, i32 %178), !dbg !439
  store i32 0, i32* %status, align 4, !dbg !440
  br label %196, !dbg !441

; <label>:180                                     ; preds = %96, %95, %91, %87, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27
  %181 = load i32, i32* @s, align 4, !dbg !442
  %182 = load i32, i32* @NP, align 4, !dbg !444
  %183 = icmp eq i32 %181, %182, !dbg !445
  br i1 %183, label %184, label %186, !dbg !446

; <label>:184                                     ; preds = %180
  %185 = load i32, i32* @SKIP1, align 4, !dbg !447
  store i32 %185, i32* @s, align 4, !dbg !449
  br label %187, !dbg !450

; <label>:186                                     ; preds = %180
  call void (...) @__VERIFIER_error() #5, !dbg !451
  unreachable, !dbg !451

errorFn.exit4:                                    ; No predecessors!
  br label %187

; <label>:187                                     ; preds = %errorFn.exit4, %184
  %188 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !455
  %189 = add nsw i32 %188, 1, !dbg !455
  store i32 %189, i32* %Irp__CurrentLocation, align 4, !dbg !455
  %190 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !457
  %191 = add nsw i32 %190, 1, !dbg !457
  store i32 %191, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !457
  %192 = load i32, i32* %devExt__TopOfStack, align 4, !dbg !458
  %193 = load i32, i32* %4, align 4, !dbg !459
  %194 = call i32 @IofCallDriver(i32 %192, i32 %193), !dbg !460
  store i32 %194, i32* %status, align 4, !dbg !461
  br label %196, !dbg !462

; <label>:195                                     ; preds = %97
  br label %196, !dbg !463

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
  %219 = load i32, i32* %status, align 4, !dbg !464
  ret i32 %219, !dbg !465
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind ssp uwtable
define void @errorFn() #0 {
  br label %1, !dbg !466

; <label>:1                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !467
  unreachable, !dbg !467
                                                  ; No predecessors!
  ret void, !dbg !468
}

; Function Attrs: nounwind ssp uwtable
define void @IofCompleteRequest(i32 %Irp, i32 %PriorityBoost) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %Irp, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !151, metadata !90), !dbg !469
  store i32 %PriorityBoost, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !198, metadata !90), !dbg !470
  %3 = load i32, i32* @s, align 4, !dbg !471
  %4 = load i32, i32* @NP, align 4, !dbg !472
  %5 = icmp eq i32 %3, %4, !dbg !473
  br i1 %5, label %6, label %8, !dbg !474

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* @DC, align 4, !dbg !475
  store i32 %7, i32* @s, align 4, !dbg !476
  br label %9, !dbg !477

; <label>:8                                       ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !478
  unreachable, !dbg !478

errorFn.exit:                                     ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %errorFn.exit, %6
  ret void, !dbg !480
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
  call void @llvm.dbg.declare(metadata i32* %status, metadata !481, metadata !90), !dbg !482
  call void @llvm.dbg.declare(metadata i32* %irp, metadata !483, metadata !90), !dbg !484
  %2 = call i32 @__VERIFIER_nondet_int(), !dbg !485
  store i32 %2, i32* %irp, align 4, !dbg !484
  call void @llvm.dbg.declare(metadata i32* %pirp, metadata !486, metadata !90), !dbg !487
  call void @llvm.dbg.declare(metadata i32* %pirp__IoStatus__Status, metadata !488, metadata !90), !dbg !489
  call void @llvm.dbg.declare(metadata i32* %irp_choice, metadata !490, metadata !90), !dbg !491
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !492
  store i32 %3, i32* %irp_choice, align 4, !dbg !491
  call void @llvm.dbg.declare(metadata i32* %devobj, metadata !493, metadata !90), !dbg !494
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !495
  store i32 %4, i32* %devobj, align 4, !dbg !494
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp8, metadata !496, metadata !90), !dbg !497
  store i32 0, i32* @KernelMode, align 4, !dbg !498
  store i32 0, i32* @Executive, align 4, !dbg !499
  store i32 1, i32* @DevicePowerState, align 4, !dbg !500
  store i32 0, i32* @s, align 4, !dbg !501
  store i32 0, i32* @UNLOADED, align 4, !dbg !502
  store i32 0, i32* @NP, align 4, !dbg !503
  store i32 0, i32* @DC, align 4, !dbg !504
  store i32 0, i32* @SKIP1, align 4, !dbg !505
  store i32 0, i32* @SKIP2, align 4, !dbg !506
  store i32 0, i32* @MPR1, align 4, !dbg !507
  store i32 0, i32* @MPR3, align 4, !dbg !508
  store i32 0, i32* @IPC, align 4, !dbg !509
  store i32 0, i32* @pended, align 4, !dbg !510
  store i32 0, i32* @compFptr, align 4, !dbg !511
  store i32 0, i32* @compRegistered, align 4, !dbg !512
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !513
  store i32 0, i32* @setEventCalled, align 4, !dbg !514
  store i32 0, i32* @customIrp, align 4, !dbg !515
  store i32 0, i32* @myStatus, align 4, !dbg !516
  store i32 0, i32* %status, align 4, !dbg !517
  %5 = load i32, i32* %irp, align 4, !dbg !520
  store i32 %5, i32* %pirp, align 4, !dbg !521
  store i32 0, i32* @UNLOADED, align 4, !dbg !522
  store i32 1, i32* @NP, align 4, !dbg !524
  store i32 2, i32* @DC, align 4, !dbg !525
  store i32 3, i32* @SKIP1, align 4, !dbg !526
  store i32 4, i32* @SKIP2, align 4, !dbg !527
  store i32 5, i32* @MPR1, align 4, !dbg !528
  store i32 6, i32* @MPR3, align 4, !dbg !529
  store i32 7, i32* @IPC, align 4, !dbg !530
  %6 = load i32, i32* @UNLOADED, align 4, !dbg !531
  store i32 %6, i32* @s, align 4, !dbg !532
  store i32 0, i32* @pended, align 4, !dbg !533
  store i32 0, i32* @compFptr, align 4, !dbg !534
  store i32 0, i32* @compRegistered, align 4, !dbg !535
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !536
  store i32 0, i32* @setEventCalled, align 4, !dbg !537
  store i32 0, i32* @customIrp, align 4, !dbg !538
  %7 = load i32, i32* %status, align 4, !dbg !539
  %8 = icmp sge i32 %7, 0, !dbg !541
  br i1 %8, label %9, label %80, !dbg !542

; <label>:9                                       ; preds = %0
  %10 = load i32, i32* @NP, align 4, !dbg !543
  store i32 %10, i32* @s, align 4, !dbg !545
  store i32 0, i32* @customIrp, align 4, !dbg !546
  %11 = load i32, i32* @customIrp, align 4, !dbg !547
  store i32 %11, i32* @setEventCalled, align 4, !dbg !548
  %12 = load i32, i32* @setEventCalled, align 4, !dbg !549
  store i32 %12, i32* @lowerDriverReturn, align 4, !dbg !550
  %13 = load i32, i32* @lowerDriverReturn, align 4, !dbg !551
  store i32 %13, i32* @compRegistered, align 4, !dbg !552
  %14 = load i32, i32* @compRegistered, align 4, !dbg !553
  store i32 %14, i32* @pended, align 4, !dbg !554
  store i32 0, i32* %pirp__IoStatus__Status, align 4, !dbg !555
  store i32 0, i32* @myStatus, align 4, !dbg !556
  %15 = load i32, i32* %irp_choice, align 4, !dbg !557
  %16 = icmp eq i32 %15, 0, !dbg !559
  br i1 %16, label %17, label %18, !dbg !560

; <label>:17                                      ; preds = %9
  store i32 -1073741637, i32* %pirp__IoStatus__Status, align 4, !dbg !561
  store i32 -1073741637, i32* @myStatus, align 4, !dbg !563
  br label %18, !dbg !564

; <label>:18                                      ; preds = %17, %9
  %19 = load i32, i32* @NP, align 4, !dbg !565
  store i32 %19, i32* @s, align 4, !dbg !568
  store i32 0, i32* @pended, align 4, !dbg !569
  store i32 0, i32* @compFptr, align 4, !dbg !570
  store i32 0, i32* @compRegistered, align 4, !dbg !571
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !572
  store i32 0, i32* @setEventCalled, align 4, !dbg !573
  store i32 0, i32* @customIrp, align 4, !dbg !574
  %20 = load i32, i32* %status, align 4, !dbg !575
  %21 = icmp slt i32 %20, 0, !dbg !578
  br i1 %21, label %22, label %23, !dbg !579

; <label>:22                                      ; preds = %18
  store i32 -1, i32* %1, !dbg !580
  br label %160, !dbg !580

; <label>:23                                      ; preds = %18
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_1, metadata !582, metadata !90), !dbg !583
  %24 = call i32 @__VERIFIER_nondet_int(), !dbg !584
  store i32 %24, i32* %tmp_ndt_1, align 4, !dbg !585
  %25 = load i32, i32* %tmp_ndt_1, align 4, !dbg !586
  %26 = icmp eq i32 %25, 0, !dbg !588
  br i1 %26, label %27, label %28, !dbg !589

; <label>:27                                      ; preds = %23
  br label %51, !dbg !590

; <label>:28                                      ; preds = %23
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_2, metadata !592, metadata !90), !dbg !594
  %29 = call i32 @__VERIFIER_nondet_int(), !dbg !595
  store i32 %29, i32* %tmp_ndt_2, align 4, !dbg !596
  %30 = load i32, i32* %tmp_ndt_2, align 4, !dbg !597
  %31 = icmp eq i32 %30, 1, !dbg !599
  br i1 %31, label %32, label %33, !dbg !600

; <label>:32                                      ; preds = %28
  br label %55, !dbg !601

; <label>:33                                      ; preds = %28
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_3, metadata !603, metadata !90), !dbg !605
  %34 = call i32 @__VERIFIER_nondet_int(), !dbg !606
  store i32 %34, i32* %tmp_ndt_3, align 4, !dbg !607
  %35 = load i32, i32* %tmp_ndt_3, align 4, !dbg !608
  %36 = icmp eq i32 %35, 3, !dbg !610
  br i1 %36, label %37, label %38, !dbg !611

; <label>:37                                      ; preds = %33
  br label %59, !dbg !612

; <label>:38                                      ; preds = %33
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_4, metadata !614, metadata !90), !dbg !616
  %39 = call i32 @__VERIFIER_nondet_int(), !dbg !617
  store i32 %39, i32* %tmp_ndt_4, align 4, !dbg !618
  %40 = load i32, i32* %tmp_ndt_4, align 4, !dbg !619
  %41 = icmp eq i32 %40, 4, !dbg !621
  br i1 %41, label %42, label %43, !dbg !622

; <label>:42                                      ; preds = %38
  br label %63, !dbg !623

; <label>:43                                      ; preds = %38
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_5, metadata !625, metadata !90), !dbg !627
  %44 = call i32 @__VERIFIER_nondet_int(), !dbg !628
  store i32 %44, i32* %tmp_ndt_5, align 4, !dbg !629
  %45 = load i32, i32* %tmp_ndt_5, align 4, !dbg !630
  %46 = icmp eq i32 %45, 8, !dbg !632
  br i1 %46, label %47, label %48, !dbg !633

; <label>:47                                      ; preds = %43
  br label %67, !dbg !634

; <label>:48                                      ; preds = %43
  br label %71, !dbg !636
                                                  ; No predecessors!
  br i1 false, label %50, label %72, !dbg !638

; <label>:50                                      ; preds = %49
  br label %51, !dbg !639

; <label>:51                                      ; preds = %50, %27
  %52 = load i32, i32* %devobj, align 4, !dbg !641
  %53 = load i32, i32* %pirp, align 4, !dbg !644
  %54 = call i32 @KbFilter_CreateClose(i32 %52, i32 %53), !dbg !645
  store i32 %54, i32* %status, align 4, !dbg !646
  br label %73, !dbg !647

; <label>:55                                      ; preds = %32
  %56 = load i32, i32* %devobj, align 4, !dbg !648
  %57 = load i32, i32* %pirp, align 4, !dbg !650
  %58 = call i32 @KbFilter_CreateClose(i32 %56, i32 %57), !dbg !651
  store i32 %58, i32* %status, align 4, !dbg !652
  br label %73, !dbg !653

; <label>:59                                      ; preds = %37
  %60 = load i32, i32* %devobj, align 4, !dbg !654
  %61 = load i32, i32* %pirp, align 4, !dbg !656
  %62 = call i32 @KbFilter_PnP(i32 %60, i32 %61), !dbg !657
  store i32 %62, i32* %status, align 4, !dbg !658
  br label %73, !dbg !659

; <label>:63                                      ; preds = %42
  %64 = load i32, i32* %devobj, align 4, !dbg !660
  %65 = load i32, i32* %pirp, align 4, !dbg !662
  %66 = call i32 @KbFilter_Power(i32 %64, i32 %65), !dbg !663
  store i32 %66, i32* %status, align 4, !dbg !664
  br label %73, !dbg !665

; <label>:67                                      ; preds = %47
  %68 = load i32, i32* %devobj, align 4, !dbg !666
  %69 = load i32, i32* %pirp, align 4, !dbg !668
  %70 = call i32 @KbFilter_InternIoCtl(i32 %68, i32 %69), !dbg !669
  store i32 %70, i32* %status, align 4, !dbg !670
  br label %73, !dbg !671

; <label>:71                                      ; preds = %48
  store i32 -1, i32* %1, !dbg !672
  br label %160, !dbg !672

; <label>:72                                      ; preds = %49
  br label %73, !dbg !673

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
  br label %80, !dbg !674

; <label>:80                                      ; preds = %79, %0
  %81 = load i32, i32* @pended, align 4, !dbg !675
  %82 = icmp eq i32 %81, 1, !dbg !677
  br i1 %82, label %83, label %91, !dbg !678

; <label>:83                                      ; preds = %80
  %84 = load i32, i32* @s, align 4, !dbg !679
  %85 = load i32, i32* @NP, align 4, !dbg !682
  %86 = icmp eq i32 %84, %85, !dbg !683
  br i1 %86, label %87, label %89, !dbg !684

; <label>:87                                      ; preds = %83
  %88 = load i32, i32* @NP, align 4, !dbg !685
  store i32 %88, i32* @s, align 4, !dbg !687
  br label %90, !dbg !688

; <label>:89                                      ; preds = %83
  br label %92, !dbg !689

; <label>:90                                      ; preds = %87
  br label %158, !dbg !691

; <label>:91                                      ; preds = %80
  br label %92, !dbg !692

; <label>:92                                      ; preds = %91, %89
  %93 = load i32, i32* @pended, align 4, !dbg !693
  %94 = icmp eq i32 %93, 1, !dbg !696
  br i1 %94, label %95, label %103, !dbg !697

; <label>:95                                      ; preds = %92
  %96 = load i32, i32* @s, align 4, !dbg !698
  %97 = load i32, i32* @MPR3, align 4, !dbg !701
  %98 = icmp eq i32 %96, %97, !dbg !702
  br i1 %98, label %99, label %101, !dbg !703

; <label>:99                                      ; preds = %95
  %100 = load i32, i32* @MPR3, align 4, !dbg !704
  store i32 %100, i32* @s, align 4, !dbg !706
  br label %102, !dbg !707

; <label>:101                                     ; preds = %95
  br label %104, !dbg !708

; <label>:102                                     ; preds = %99
  br label %157, !dbg !710

; <label>:103                                     ; preds = %92
  br label %104, !dbg !711

; <label>:104                                     ; preds = %103, %101
  %105 = load i32, i32* @s, align 4, !dbg !712
  %106 = load i32, i32* @UNLOADED, align 4, !dbg !715
  %107 = icmp ne i32 %105, %106, !dbg !716
  br i1 %107, label %108, label %156, !dbg !717

; <label>:108                                     ; preds = %104
  %109 = load i32, i32* %status, align 4, !dbg !718
  %110 = icmp ne i32 %109, -1, !dbg !721
  br i1 %110, label %111, label %155, !dbg !722

; <label>:111                                     ; preds = %108
  %112 = load i32, i32* @s, align 4, !dbg !723
  %113 = load i32, i32* @SKIP2, align 4, !dbg !726
  %114 = icmp ne i32 %112, %113, !dbg !727
  br i1 %114, label %115, label %127, !dbg !728

; <label>:115                                     ; preds = %111
  %116 = load i32, i32* @s, align 4, !dbg !729
  %117 = load i32, i32* @IPC, align 4, !dbg !732
  %118 = icmp ne i32 %116, %117, !dbg !733
  br i1 %118, label %119, label %125, !dbg !734

; <label>:119                                     ; preds = %115
  %120 = load i32, i32* @s, align 4, !dbg !735
  %121 = load i32, i32* @DC, align 4, !dbg !738
  %122 = icmp eq i32 %120, %121, !dbg !739
  br i1 %122, label %123, label %124, !dbg !740

; <label>:123                                     ; preds = %119
  br label %128, !dbg !741

; <label>:124                                     ; preds = %119
  br label %126, !dbg !743

; <label>:125                                     ; preds = %115
  br label %128, !dbg !744

; <label>:126                                     ; preds = %124
  br label %154, !dbg !746

; <label>:127                                     ; preds = %111
  br label %128, !dbg !747

; <label>:128                                     ; preds = %127, %125, %123
  %129 = load i32, i32* @pended, align 4, !dbg !748
  %130 = icmp eq i32 %129, 1, !dbg !751
  br i1 %130, label %131, label %136, !dbg !752

; <label>:131                                     ; preds = %128
  %132 = load i32, i32* %status, align 4, !dbg !753
  %133 = icmp ne i32 %132, 259, !dbg !756
  br i1 %133, label %134, label %135, !dbg !757

; <label>:134                                     ; preds = %131
  call void (...) @__VERIFIER_error() #5, !dbg !758
  unreachable, !dbg !758

errorFn.exit1:                                    ; No predecessors!
  br label %135, !dbg !762

; <label>:135                                     ; preds = %errorFn.exit1, %131
  br label %153, !dbg !763

; <label>:136                                     ; preds = %128
  %137 = load i32, i32* @s, align 4, !dbg !764
  %138 = load i32, i32* @DC, align 4, !dbg !767
  %139 = icmp eq i32 %137, %138, !dbg !768
  br i1 %139, label %140, label %145, !dbg !769

; <label>:140                                     ; preds = %136
  %141 = load i32, i32* %status, align 4, !dbg !770
  %142 = icmp eq i32 %141, 259, !dbg !773
  br i1 %142, label %143, label %144, !dbg !774

; <label>:143                                     ; preds = %140
  br label %144, !dbg !775

; <label>:144                                     ; preds = %143, %140
  br label %152, !dbg !777

; <label>:145                                     ; preds = %136
  %146 = load i32, i32* %status, align 4, !dbg !778
  %147 = load i32, i32* @lowerDriverReturn, align 4, !dbg !781
  %148 = icmp ne i32 %146, %147, !dbg !782
  br i1 %148, label %149, label %150, !dbg !783

; <label>:149                                     ; preds = %145
  call void (...) @__VERIFIER_error() #5, !dbg !784
  unreachable, !dbg !784

errorFn.exit:                                     ; No predecessors!
  br label %151, !dbg !787

; <label>:150                                     ; preds = %145
  br label %151

; <label>:151                                     ; preds = %150, %errorFn.exit
  br label %152

; <label>:152                                     ; preds = %151, %144
  br label %153

; <label>:153                                     ; preds = %152, %135
  br label %154

; <label>:154                                     ; preds = %153, %126
  br label %155, !dbg !788

; <label>:155                                     ; preds = %154, %108
  br label %156, !dbg !789

; <label>:156                                     ; preds = %155, %104
  br label %157

; <label>:157                                     ; preds = %156, %102
  br label %158

; <label>:158                                     ; preds = %157, %90
  %159 = load i32, i32* %status, align 4, !dbg !790
  store i32 %159, i32* %1, !dbg !791
  br label %160, !dbg !791

; <label>:160                                     ; preds = %158, %71, %22
  %161 = load i32, i32* %1, !dbg !792
  ret i32 %161, !dbg !792
}

; Function Attrs: nounwind ssp uwtable
define void @stubMoreProcessingRequired() #0 {
  %1 = load i32, i32* @s, align 4, !dbg !793
  %2 = load i32, i32* @NP, align 4, !dbg !796
  %3 = icmp eq i32 %1, %2, !dbg !797
  br i1 %3, label %4, label %6, !dbg !798

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* @MPR1, align 4, !dbg !799
  store i32 %5, i32* @s, align 4, !dbg !801
  br label %7, !dbg !802

; <label>:6                                       ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !803
  unreachable, !dbg !803

errorFn.exit:                                     ; No predecessors!
  br label %7

; <label>:7                                       ; preds = %errorFn.exit, %4
  ret void, !dbg !807
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
  call void @llvm.dbg.declare(metadata i32* %7, metadata !808, metadata !90), !dbg !809
  store i32 %Irp, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !810, metadata !90), !dbg !811
  call void @llvm.dbg.declare(metadata i32* %returnVal2, metadata !812, metadata !90), !dbg !813
  call void @llvm.dbg.declare(metadata i32* %compRetStatus, metadata !814, metadata !90), !dbg !815
  call void @llvm.dbg.declare(metadata i32* %lcontext, metadata !816, metadata !90), !dbg !817
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !818
  store i32 %9, i32* %lcontext, align 4, !dbg !817
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp7, metadata !819, metadata !90), !dbg !820
  %10 = load i32, i32* @compRegistered, align 4, !dbg !821
  %11 = icmp ne i32 %10, 0, !dbg !821
  call void @llvm.dbg.declare(metadata i32* %1, metadata !824, metadata !90), !dbg !825
  call void @llvm.dbg.declare(metadata i32* %2, metadata !832, metadata !90), !dbg !833
  call void @llvm.dbg.declare(metadata i32* %3, metadata !834, metadata !90), !dbg !835
  call void @llvm.dbg.declare(metadata i32* %l.i.i, metadata !836, metadata !90), !dbg !837
  call void @llvm.dbg.declare(metadata i32* %4, metadata !838, metadata !90), !dbg !839
  call void @llvm.dbg.declare(metadata i32* %5, metadata !840, metadata !90), !dbg !841
  call void @llvm.dbg.declare(metadata i32* %6, metadata !842, metadata !90), !dbg !843
  call void @llvm.dbg.declare(metadata i32* %event.i, metadata !844, metadata !90), !dbg !845
  br i1 %11, label %12, label %47, !dbg !846

; <label>:12                                      ; preds = %0
  %13 = load i32, i32* %7, align 4, !dbg !847
  %14 = load i32, i32* %8, align 4, !dbg !848
  %15 = load i32, i32* %lcontext, align 4, !dbg !849
  %16 = bitcast i32* %4 to i8*, !dbg !850
  call void @llvm.lifetime.start(i64 4, i8* %16), !dbg !850
  %17 = bitcast i32* %5 to i8*, !dbg !850
  call void @llvm.lifetime.start(i64 4, i8* %17), !dbg !850
  %18 = bitcast i32* %6 to i8*, !dbg !850
  call void @llvm.lifetime.start(i64 4, i8* %18), !dbg !850
  %19 = bitcast i32* %event.i to i8*, !dbg !850
  call void @llvm.lifetime.start(i64 4, i8* %19), !dbg !850
  store i32 %13, i32* %4, align 4, !dbg !850
  store i32 %14, i32* %5, align 4, !dbg !850
  store i32 %15, i32* %6, align 4, !dbg !850
  %20 = load i32, i32* %6, align 4, !dbg !851
  store i32 %20, i32* %event.i, align 4, !dbg !852
  %21 = load i32, i32* %event.i, align 4, !dbg !853
  %22 = bitcast i32* %1 to i8*, !dbg !854
  call void @llvm.lifetime.start(i64 4, i8* %22) #4, !dbg !854
  %23 = bitcast i32* %2 to i8*, !dbg !854
  call void @llvm.lifetime.start(i64 4, i8* %23) #4, !dbg !854
  %24 = bitcast i32* %3 to i8*, !dbg !854
  call void @llvm.lifetime.start(i64 4, i8* %24) #4, !dbg !854
  %25 = bitcast i32* %l.i.i to i8*, !dbg !854
  call void @llvm.lifetime.start(i64 4, i8* %25) #4, !dbg !854
  store i32 %21, i32* %1, align 4, !dbg !854
  store i32 0, i32* %2, align 4, !dbg !854
  store i32 0, i32* %3, align 4, !dbg !854
  %26 = call i32 @__VERIFIER_nondet_int() #4, !dbg !855
  store i32 %26, i32* %l.i.i, align 4, !dbg !837
  store i32 1, i32* @setEventCalled, align 4, !dbg !856
  %27 = load i32, i32* %l.i.i, align 4, !dbg !858
  %28 = bitcast i32* %1 to i8*, !dbg !859
  call void @llvm.lifetime.end(i64 4, i8* %28) #4, !dbg !859
  %29 = bitcast i32* %2 to i8*, !dbg !859
  call void @llvm.lifetime.end(i64 4, i8* %29) #4, !dbg !859
  %30 = bitcast i32* %3 to i8*, !dbg !859
  call void @llvm.lifetime.end(i64 4, i8* %30) #4, !dbg !859
  %31 = bitcast i32* %l.i.i to i8*, !dbg !859
  call void @llvm.lifetime.end(i64 4, i8* %31) #4, !dbg !859
  %32 = bitcast i32* %4 to i8*, !dbg !860
  call void @llvm.lifetime.end(i64 4, i8* %32), !dbg !860
  %33 = bitcast i32* %5 to i8*, !dbg !860
  call void @llvm.lifetime.end(i64 4, i8* %33), !dbg !860
  %34 = bitcast i32* %6 to i8*, !dbg !860
  call void @llvm.lifetime.end(i64 4, i8* %34), !dbg !860
  %35 = bitcast i32* %event.i to i8*, !dbg !860
  call void @llvm.lifetime.end(i64 4, i8* %35), !dbg !860
  store i32 -1073741802, i32* %compRetStatus, align 4, !dbg !861
  %36 = load i32, i32* %compRetStatus, align 4, !dbg !862
  %37 = sext i32 %36 to i64, !dbg !864
  store i64 %37, i64* %__cil_tmp7, align 8, !dbg !865
  %38 = load i64, i64* %__cil_tmp7, align 8, !dbg !866
  %39 = icmp eq i64 %38, -1073741802, !dbg !868
  br i1 %39, label %40, label %46, !dbg !869

; <label>:40                                      ; preds = %12
  %41 = load i32, i32* @s, align 4, !dbg !870
  %42 = load i32, i32* @NP, align 4, !dbg !874
  %43 = icmp eq i32 %41, %42, !dbg !875
  br i1 %43, label %stubMoreProcessingRequired.exit, label %44, !dbg !876

; <label>:44                                      ; preds = %40
  call void (...) @__VERIFIER_error() #5, !dbg !877
  unreachable, !dbg !877

stubMoreProcessingRequired.exit:                  ; preds = %40
  %45 = load i32, i32* @MPR1, align 4, !dbg !879
  store i32 %45, i32* @s, align 4, !dbg !880
  br label %46, !dbg !881

; <label>:46                                      ; preds = %stubMoreProcessingRequired.exit, %12
  br label %47, !dbg !882

; <label>:47                                      ; preds = %46, %0
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_6, metadata !883, metadata !90), !dbg !884
  %48 = call i32 @__VERIFIER_nondet_int(), !dbg !885
  store i32 %48, i32* %tmp_ndt_6, align 4, !dbg !886
  %49 = load i32, i32* %tmp_ndt_6, align 4, !dbg !887
  %50 = icmp eq i32 %49, 0, !dbg !889
  br i1 %50, label %51, label %52, !dbg !890

; <label>:51                                      ; preds = %47
  br label %60, !dbg !891

; <label>:52                                      ; preds = %47
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_7, metadata !893, metadata !90), !dbg !895
  %53 = call i32 @__VERIFIER_nondet_int(), !dbg !896
  store i32 %53, i32* %tmp_ndt_7, align 4, !dbg !897
  %54 = load i32, i32* %tmp_ndt_7, align 4, !dbg !898
  %55 = icmp eq i32 %54, 1, !dbg !900
  br i1 %55, label %56, label %57, !dbg !901

; <label>:56                                      ; preds = %52
  br label %61, !dbg !902

; <label>:57                                      ; preds = %52
  br label %62, !dbg !904
                                                  ; No predecessors!
  br i1 false, label %59, label %63, !dbg !906

; <label>:59                                      ; preds = %58
  br label %60, !dbg !907

; <label>:60                                      ; preds = %59, %51
  store i32 0, i32* %returnVal2, align 4, !dbg !909
  br label %64, !dbg !911

; <label>:61                                      ; preds = %56
  store i32 -1073741823, i32* %returnVal2, align 4, !dbg !912
  br label %64, !dbg !913

; <label>:62                                      ; preds = %57
  store i32 259, i32* %returnVal2, align 4, !dbg !914
  br label %64, !dbg !915

; <label>:63                                      ; preds = %58
  br label %64, !dbg !916

; <label>:64                                      ; preds = %63, %62, %61, %60
  br label %65

; <label>:65                                      ; preds = %64
  br label %66

; <label>:66                                      ; preds = %65
  br label %67

; <label>:67                                      ; preds = %66
  %68 = load i32, i32* @s, align 4, !dbg !917
  %69 = load i32, i32* @NP, align 4, !dbg !919
  %70 = icmp eq i32 %68, %69, !dbg !920
  br i1 %70, label %71, label %74, !dbg !921

; <label>:71                                      ; preds = %67
  %72 = load i32, i32* @IPC, align 4, !dbg !922
  store i32 %72, i32* @s, align 4, !dbg !924
  %73 = load i32, i32* %returnVal2, align 4, !dbg !925
  store i32 %73, i32* @lowerDriverReturn, align 4, !dbg !926
  br label %98, !dbg !927

; <label>:74                                      ; preds = %67
  %75 = load i32, i32* @s, align 4, !dbg !928
  %76 = load i32, i32* @MPR1, align 4, !dbg !931
  %77 = icmp eq i32 %75, %76, !dbg !932
  br i1 %77, label %78, label %88, !dbg !933

; <label>:78                                      ; preds = %74
  %79 = load i32, i32* %returnVal2, align 4, !dbg !934
  %80 = icmp eq i32 %79, 259, !dbg !937
  br i1 %80, label %81, label %84, !dbg !938

; <label>:81                                      ; preds = %78
  %82 = load i32, i32* @MPR3, align 4, !dbg !939
  store i32 %82, i32* @s, align 4, !dbg !941
  %83 = load i32, i32* %returnVal2, align 4, !dbg !942
  store i32 %83, i32* @lowerDriverReturn, align 4, !dbg !943
  br label %87, !dbg !944

; <label>:84                                      ; preds = %78
  %85 = load i32, i32* @NP, align 4, !dbg !945
  store i32 %85, i32* @s, align 4, !dbg !947
  %86 = load i32, i32* %returnVal2, align 4, !dbg !948
  store i32 %86, i32* @lowerDriverReturn, align 4, !dbg !949
  br label %87

; <label>:87                                      ; preds = %84, %81
  br label %97, !dbg !950

; <label>:88                                      ; preds = %74
  %89 = load i32, i32* @s, align 4, !dbg !951
  %90 = load i32, i32* @SKIP1, align 4, !dbg !954
  %91 = icmp eq i32 %89, %90, !dbg !955
  br i1 %91, label %92, label %95, !dbg !956

; <label>:92                                      ; preds = %88
  %93 = load i32, i32* @SKIP2, align 4, !dbg !957
  store i32 %93, i32* @s, align 4, !dbg !959
  %94 = load i32, i32* %returnVal2, align 4, !dbg !960
  store i32 %94, i32* @lowerDriverReturn, align 4, !dbg !961
  br label %96, !dbg !962

; <label>:95                                      ; preds = %88
  call void (...) @__VERIFIER_error() #5, !dbg !963
  unreachable, !dbg !963

errorFn.exit:                                     ; No predecessors!
  br label %96

; <label>:96                                      ; preds = %errorFn.exit, %92
  br label %97

; <label>:97                                      ; preds = %96, %87
  br label %98

; <label>:98                                      ; preds = %97, %71
  %99 = load i32, i32* %returnVal2, align 4, !dbg !967
  ret i32 %99, !dbg !968
}

; Function Attrs: nounwind ssp uwtable
define i32 @KeSetEvent(i32 %Event, i32 %Increment, i32 %Wait) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 %Event, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !824, metadata !90), !dbg !969
  store i32 %Increment, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !832, metadata !90), !dbg !970
  store i32 %Wait, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !834, metadata !90), !dbg !971
  call void @llvm.dbg.declare(metadata i32* %l, metadata !836, metadata !90), !dbg !972
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !973
  store i32 %4, i32* %l, align 4, !dbg !972
  store i32 1, i32* @setEventCalled, align 4, !dbg !974
  %5 = load i32, i32* %l, align 4, !dbg !975
  ret i32 %5, !dbg !976
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
  call void @llvm.dbg.declare(metadata i32* %2, metadata !977, metadata !90), !dbg !978
  store i32 %WaitReason, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !979, metadata !90), !dbg !980
  store i32 %WaitMode, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !981, metadata !90), !dbg !982
  store i32 %Alertable, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !983, metadata !90), !dbg !984
  store i32 %Timeout, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !985, metadata !90), !dbg !986
  %7 = load i32, i32* @s, align 4, !dbg !987
  %8 = load i32, i32* @MPR3, align 4, !dbg !990
  %9 = icmp eq i32 %7, %8, !dbg !991
  br i1 %9, label %10, label %17, !dbg !992

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* @setEventCalled, align 4, !dbg !993
  %12 = icmp eq i32 %11, 1, !dbg !996
  br i1 %12, label %13, label %15, !dbg !997

; <label>:13                                      ; preds = %10
  %14 = load i32, i32* @NP, align 4, !dbg !998
  store i32 %14, i32* @s, align 4, !dbg !1000
  store i32 0, i32* @setEventCalled, align 4, !dbg !1001
  br label %16, !dbg !1002

; <label>:15                                      ; preds = %10
  br label %18, !dbg !1003

; <label>:16                                      ; preds = %13
  br label %30, !dbg !1005

; <label>:17                                      ; preds = %0
  br label %18, !dbg !1006

; <label>:18                                      ; preds = %17, %15
  %19 = load i32, i32* @customIrp, align 4, !dbg !1007
  %20 = icmp eq i32 %19, 1, !dbg !1010
  br i1 %20, label %21, label %23, !dbg !1011

; <label>:21                                      ; preds = %18
  %22 = load i32, i32* @NP, align 4, !dbg !1012
  store i32 %22, i32* @s, align 4, !dbg !1014
  store i32 0, i32* @customIrp, align 4, !dbg !1015
  br label %29, !dbg !1016

; <label>:23                                      ; preds = %18
  %24 = load i32, i32* @s, align 4, !dbg !1017
  %25 = load i32, i32* @MPR3, align 4, !dbg !1020
  %26 = icmp eq i32 %24, %25, !dbg !1021
  br i1 %26, label %27, label %28, !dbg !1022

; <label>:27                                      ; preds = %23
  call void (...) @__VERIFIER_error() #5, !dbg !1023
  unreachable, !dbg !1023

errorFn.exit:                                     ; No predecessors!
  br label %28, !dbg !1027

; <label>:28                                      ; preds = %errorFn.exit, %23
  br label %29

; <label>:29                                      ; preds = %28, %21
  br label %30

; <label>:30                                      ; preds = %29, %16
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_8, metadata !1028, metadata !90), !dbg !1029
  %31 = call i32 @__VERIFIER_nondet_int(), !dbg !1030
  store i32 %31, i32* %tmp_ndt_8, align 4, !dbg !1031
  %32 = load i32, i32* %tmp_ndt_8, align 4, !dbg !1032
  %33 = icmp eq i32 %32, 0, !dbg !1034
  br i1 %33, label %34, label %35, !dbg !1035

; <label>:34                                      ; preds = %30
  br label %38, !dbg !1036

; <label>:35                                      ; preds = %30
  br label %39, !dbg !1038
                                                  ; No predecessors!
  br i1 false, label %37, label %40, !dbg !1040

; <label>:37                                      ; preds = %36
  br label %38, !dbg !1041

; <label>:38                                      ; preds = %37, %34
  store i32 0, i32* %1, !dbg !1043
  br label %42, !dbg !1043

; <label>:39                                      ; preds = %35
  store i32 -1073741823, i32* %1, !dbg !1045
  br label %42, !dbg !1045

; <label>:40                                      ; preds = %36
  br label %41

; <label>:41                                      ; preds = %40
  br label %42

; <label>:42                                      ; preds = %41, %39, %38
  %43 = load i32, i32* %1, !dbg !1046
  ret i32 %43, !dbg !1046
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
  call void @llvm.dbg.declare(metadata i32* %4, metadata !838, metadata !90), !dbg !1047
  store i32 %Irp, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !840, metadata !90), !dbg !1048
  store i32 %Context, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !842, metadata !90), !dbg !1049
  call void @llvm.dbg.declare(metadata i32* %event, metadata !844, metadata !90), !dbg !1050
  %7 = load i32, i32* %6, align 4, !dbg !1051
  store i32 %7, i32* %event, align 4, !dbg !1052
  %8 = load i32, i32* %event, align 4, !dbg !1053
  %9 = bitcast i32* %1 to i8*, !dbg !1054
  call void @llvm.lifetime.start(i64 4, i8* %9), !dbg !1054
  %10 = bitcast i32* %2 to i8*, !dbg !1054
  call void @llvm.lifetime.start(i64 4, i8* %10), !dbg !1054
  %11 = bitcast i32* %3 to i8*, !dbg !1054
  call void @llvm.lifetime.start(i64 4, i8* %11), !dbg !1054
  %12 = bitcast i32* %l.i to i8*, !dbg !1054
  call void @llvm.lifetime.start(i64 4, i8* %12), !dbg !1054
  store i32 %8, i32* %1, align 4, !dbg !1054
  store i32 0, i32* %2, align 4, !dbg !1054
  store i32 0, i32* %3, align 4, !dbg !1054
  %13 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1055
  store i32 %13, i32* %l.i, align 4, !dbg !1057
  store i32 1, i32* @setEventCalled, align 4, !dbg !1058
  %14 = load i32, i32* %l.i, align 4, !dbg !1059
  %15 = bitcast i32* %1 to i8*, !dbg !1060
  call void @llvm.lifetime.end(i64 4, i8* %15), !dbg !1060
  %16 = bitcast i32* %2 to i8*, !dbg !1060
  call void @llvm.lifetime.end(i64 4, i8* %16), !dbg !1060
  %17 = bitcast i32* %3 to i8*, !dbg !1060
  call void @llvm.lifetime.end(i64 4, i8* %17), !dbg !1060
  %18 = bitcast i32* %l.i to i8*, !dbg !1060
  call void @llvm.lifetime.end(i64 4, i8* %18), !dbg !1060
  call void @llvm.dbg.declare(metadata i32* %1, metadata !824, metadata !90), !dbg !1061
  call void @llvm.dbg.declare(metadata i32* %2, metadata !832, metadata !90), !dbg !1062
  call void @llvm.dbg.declare(metadata i32* %3, metadata !834, metadata !90), !dbg !1063
  call void @llvm.dbg.declare(metadata i32* %l.i, metadata !836, metadata !90), !dbg !1057
  ret i32 -1073741802, !dbg !1064
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
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1065, metadata !90), !dbg !1066
  store i32 %Irp, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1067, metadata !90), !dbg !1068
  call void @llvm.dbg.declare(metadata i32* %irpStack__MajorFunction, metadata !1069, metadata !90), !dbg !1070
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !1071
  store i32 %3, i32* %irpStack__MajorFunction, align 4, !dbg !1070
  call void @llvm.dbg.declare(metadata i32* %devExt__UpperConnectData__ClassService, metadata !1072, metadata !90), !dbg !1073
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !1074
  store i32 %4, i32* %devExt__UpperConnectData__ClassService, align 4, !dbg !1073
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !1075, metadata !90), !dbg !1076
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1077, metadata !90), !dbg !1078
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !1079, metadata !90), !dbg !1080
  %5 = load i32, i32* @myStatus, align 4, !dbg !1081
  store i32 %5, i32* %status, align 4, !dbg !1083
  %6 = load i32, i32* %irpStack__MajorFunction, align 4, !dbg !1084
  %7 = icmp eq i32 %6, 0, !dbg !1086
  br i1 %7, label %8, label %9, !dbg !1087

; <label>:8                                       ; preds = %0
  br label %15, !dbg !1088

; <label>:9                                       ; preds = %0
  %10 = load i32, i32* %irpStack__MajorFunction, align 4, !dbg !1090
  %11 = icmp eq i32 %10, 2, !dbg !1093
  br i1 %11, label %12, label %13, !dbg !1094

; <label>:12                                      ; preds = %9
  br label %20, !dbg !1095

; <label>:13                                      ; preds = %9
  br i1 false, label %14, label %21, !dbg !1097

; <label>:14                                      ; preds = %13
  br label %15, !dbg !1099

; <label>:15                                      ; preds = %14, %8
  %16 = load i32, i32* %devExt__UpperConnectData__ClassService, align 4, !dbg !1101
  %17 = icmp eq i32 %16, 0, !dbg !1104
  br i1 %17, label %18, label %19, !dbg !1105

; <label>:18                                      ; preds = %15
  store i32 -1073741436, i32* %status, align 4, !dbg !1106
  br label %19, !dbg !1108

; <label>:19                                      ; preds = %18, %15
  br label %22, !dbg !1109

; <label>:20                                      ; preds = %12
  br label %22, !dbg !1110

; <label>:21                                      ; preds = %13
  br label %22, !dbg !1111

; <label>:22                                      ; preds = %21, %20, %19
  br label %23

; <label>:23                                      ; preds = %22
  br label %24

; <label>:24                                      ; preds = %23
  br label %25

; <label>:25                                      ; preds = %24
  %26 = load i32, i32* %status, align 4, !dbg !1112
  store i32 %26, i32* %Irp__IoStatus__Status, align 4, !dbg !1114
  %27 = load i32, i32* %status, align 4, !dbg !1115
  store i32 %27, i32* @myStatus, align 4, !dbg !1116
  %28 = load i32, i32* %1, align 4, !dbg !1117
  %29 = load i32, i32* %2, align 4, !dbg !1118
  %30 = call i32 @KbFilter_DispatchPassThrough(i32 %28, i32 %29), !dbg !1119
  store i32 %30, i32* %tmp, align 4, !dbg !1120
  %31 = load i32, i32* %tmp, align 4, !dbg !1121
  ret i32 %31, !dbg !1122
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
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1123, metadata !90), !dbg !1124
  store i32 %Irp, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1125, metadata !90), !dbg !1126
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !1127, metadata !90), !dbg !1128
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !1129
  store i32 %3, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1128
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !1130, metadata !90), !dbg !1131
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !1132
  store i32 %4, i32* %Irp__CurrentLocation, align 4, !dbg !1131
  call void @llvm.dbg.declare(metadata i32* %DeviceObject__DeviceExtension__TopOfStack, metadata !1133, metadata !90), !dbg !1134
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !1135
  store i32 %5, i32* %DeviceObject__DeviceExtension__TopOfStack, align 4, !dbg !1134
  call void @llvm.dbg.declare(metadata i32* %irpStack, metadata !1136, metadata !90), !dbg !1137
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !1138, metadata !90), !dbg !1139
  %6 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1140
  store i32 %6, i32* %irpStack, align 4, !dbg !1142
  %7 = load i32, i32* @s, align 4, !dbg !1143
  %8 = load i32, i32* @NP, align 4, !dbg !1145
  %9 = icmp eq i32 %7, %8, !dbg !1146
  br i1 %9, label %10, label %12, !dbg !1147

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* @SKIP1, align 4, !dbg !1148
  store i32 %11, i32* @s, align 4, !dbg !1150
  br label %13, !dbg !1151

; <label>:12                                      ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !1152
  unreachable, !dbg !1152

errorFn.exit:                                     ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %errorFn.exit, %10
  %14 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !1156
  %15 = add nsw i32 %14, 1, !dbg !1156
  store i32 %15, i32* %Irp__CurrentLocation, align 4, !dbg !1156
  %16 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1158
  %17 = add nsw i32 %16, 1, !dbg !1158
  store i32 %17, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1158
  %18 = load i32, i32* %DeviceObject__DeviceExtension__TopOfStack, align 4, !dbg !1159
  %19 = load i32, i32* %2, align 4, !dbg !1160
  %20 = call i32 @IofCallDriver(i32 %18, i32 %19), !dbg !1161
  store i32 %20, i32* %tmp, align 4, !dbg !1162
  %21 = load i32, i32* %tmp, align 4, !dbg !1163
  ret i32 %21, !dbg !1164
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
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1165, metadata !90), !dbg !1166
  store i32 %Irp, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1167, metadata !90), !dbg !1168
  call void @llvm.dbg.declare(metadata i32* %irpStack__MinorFunction, metadata !1169, metadata !90), !dbg !1170
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !1171
  store i32 %3, i32* %irpStack__MinorFunction, align 4, !dbg !1170
  call void @llvm.dbg.declare(metadata i32* %devExt__DeviceState, metadata !1172, metadata !90), !dbg !1173
  call void @llvm.dbg.declare(metadata i32* %powerState__DeviceState, metadata !1174, metadata !90), !dbg !1175
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !1176
  store i32 %4, i32* %powerState__DeviceState, align 4, !dbg !1175
  call void @llvm.dbg.declare(metadata i32* %Irp__CurrentLocation, metadata !1177, metadata !90), !dbg !1178
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !1179
  store i32 %5, i32* %Irp__CurrentLocation, align 4, !dbg !1178
  call void @llvm.dbg.declare(metadata i32* %Irp__Tail__Overlay__CurrentStackLocation, metadata !1180, metadata !90), !dbg !1181
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !1182
  store i32 %6, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1181
  call void @llvm.dbg.declare(metadata i32* %devExt__TopOfStack, metadata !1183, metadata !90), !dbg !1184
  %7 = call i32 @__VERIFIER_nondet_int(), !dbg !1185
  store i32 %7, i32* %devExt__TopOfStack, align 4, !dbg !1184
  call void @llvm.dbg.declare(metadata i32* %powerType, metadata !1186, metadata !90), !dbg !1187
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !1188
  store i32 %8, i32* %powerType, align 4, !dbg !1187
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !1189, metadata !90), !dbg !1190
  %9 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !1191
  %10 = icmp eq i32 %9, 2, !dbg !1194
  br i1 %10, label %11, label %12, !dbg !1195

; <label>:11                                      ; preds = %0
  br label %27, !dbg !1196

; <label>:12                                      ; preds = %0
  %13 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !1198
  %14 = icmp eq i32 %13, 1, !dbg !1201
  br i1 %14, label %15, label %16, !dbg !1202

; <label>:15                                      ; preds = %12
  br label %34, !dbg !1203

; <label>:16                                      ; preds = %12
  %17 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !1205
  %18 = icmp eq i32 %17, 0, !dbg !1208
  br i1 %18, label %19, label %20, !dbg !1209

; <label>:19                                      ; preds = %16
  br label %35, !dbg !1210

; <label>:20                                      ; preds = %16
  %21 = load i32, i32* %irpStack__MinorFunction, align 4, !dbg !1212
  %22 = icmp eq i32 %21, 3, !dbg !1215
  br i1 %22, label %23, label %24, !dbg !1216

; <label>:23                                      ; preds = %20
  br label %36, !dbg !1217

; <label>:24                                      ; preds = %20
  br label %37, !dbg !1219
                                                  ; No predecessors!
  br i1 false, label %26, label %38, !dbg !1221

; <label>:26                                      ; preds = %25
  br label %27, !dbg !1222

; <label>:27                                      ; preds = %26, %11
  %28 = load i32, i32* %powerType, align 4, !dbg !1224
  %29 = load i32, i32* @DevicePowerState, align 4, !dbg !1227
  %30 = icmp eq i32 %28, %29, !dbg !1228
  br i1 %30, label %31, label %33, !dbg !1229

; <label>:31                                      ; preds = %27
  %32 = load i32, i32* %powerState__DeviceState, align 4, !dbg !1230
  store i32 %32, i32* %devExt__DeviceState, align 4, !dbg !1232
  br label %33, !dbg !1233

; <label>:33                                      ; preds = %31, %27
  br label %34, !dbg !1227

; <label>:34                                      ; preds = %33, %15
  br label %35, !dbg !1227

; <label>:35                                      ; preds = %34, %19
  br label %36, !dbg !1227

; <label>:36                                      ; preds = %35, %23
  br label %37, !dbg !1227

; <label>:37                                      ; preds = %36, %24
  br label %39, !dbg !1234

; <label>:38                                      ; preds = %25
  br label %39, !dbg !1235

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
  %45 = load i32, i32* @s, align 4, !dbg !1236
  %46 = load i32, i32* @NP, align 4, !dbg !1238
  %47 = icmp eq i32 %45, %46, !dbg !1239
  br i1 %47, label %48, label %50, !dbg !1240

; <label>:48                                      ; preds = %44
  %49 = load i32, i32* @SKIP1, align 4, !dbg !1241
  store i32 %49, i32* @s, align 4, !dbg !1243
  br label %51, !dbg !1244

; <label>:50                                      ; preds = %44
  call void (...) @__VERIFIER_error() #5, !dbg !1245
  unreachable, !dbg !1245

errorFn.exit:                                     ; No predecessors!
  br label %51

; <label>:51                                      ; preds = %errorFn.exit, %48
  %52 = load i32, i32* %Irp__CurrentLocation, align 4, !dbg !1249
  %53 = add nsw i32 %52, 1, !dbg !1249
  store i32 %53, i32* %Irp__CurrentLocation, align 4, !dbg !1249
  %54 = load i32, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1251
  %55 = add nsw i32 %54, 1, !dbg !1251
  store i32 %55, i32* %Irp__Tail__Overlay__CurrentStackLocation, align 4, !dbg !1251
  %56 = load i32, i32* %devExt__TopOfStack, align 4, !dbg !1252
  %57 = load i32, i32* %2, align 4, !dbg !1253
  %58 = call i32 @PoCallDriver(i32 %56, i32 %57), !dbg !1254
  store i32 %58, i32* %tmp, align 4, !dbg !1255
  %59 = load i32, i32* %tmp, align 4, !dbg !1256
  ret i32 %59, !dbg !1257
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
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1258, metadata !90), !dbg !1259
  store i32 %Irp, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1260, metadata !90), !dbg !1261
  call void @llvm.dbg.declare(metadata i32* %compRetStatus, metadata !1262, metadata !90), !dbg !1263
  call void @llvm.dbg.declare(metadata i32* %returnVal, metadata !1264, metadata !90), !dbg !1265
  call void @llvm.dbg.declare(metadata i32* %lcontext, metadata !1266, metadata !90), !dbg !1267
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !1268
  store i32 %9, i32* %lcontext, align 4, !dbg !1267
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp7, metadata !1269, metadata !90), !dbg !1270
  call void @llvm.dbg.declare(metadata i64* %__cil_tmp8, metadata !1271, metadata !90), !dbg !1272
  %10 = load i32, i32* @compRegistered, align 4, !dbg !1273
  %11 = icmp ne i32 %10, 0, !dbg !1273
  call void @llvm.dbg.declare(metadata i32* %1, metadata !824, metadata !90), !dbg !1276
  call void @llvm.dbg.declare(metadata i32* %2, metadata !832, metadata !90), !dbg !1281
  call void @llvm.dbg.declare(metadata i32* %3, metadata !834, metadata !90), !dbg !1282
  call void @llvm.dbg.declare(metadata i32* %l.i.i, metadata !836, metadata !90), !dbg !1283
  call void @llvm.dbg.declare(metadata i32* %4, metadata !838, metadata !90), !dbg !1284
  call void @llvm.dbg.declare(metadata i32* %5, metadata !840, metadata !90), !dbg !1285
  call void @llvm.dbg.declare(metadata i32* %6, metadata !842, metadata !90), !dbg !1286
  call void @llvm.dbg.declare(metadata i32* %event.i, metadata !844, metadata !90), !dbg !1287
  br i1 %11, label %12, label %47, !dbg !1288

; <label>:12                                      ; preds = %0
  %13 = load i32, i32* %7, align 4, !dbg !1289
  %14 = load i32, i32* %8, align 4, !dbg !1290
  %15 = load i32, i32* %lcontext, align 4, !dbg !1291
  %16 = bitcast i32* %4 to i8*, !dbg !1292
  call void @llvm.lifetime.start(i64 4, i8* %16), !dbg !1292
  %17 = bitcast i32* %5 to i8*, !dbg !1292
  call void @llvm.lifetime.start(i64 4, i8* %17), !dbg !1292
  %18 = bitcast i32* %6 to i8*, !dbg !1292
  call void @llvm.lifetime.start(i64 4, i8* %18), !dbg !1292
  %19 = bitcast i32* %event.i to i8*, !dbg !1292
  call void @llvm.lifetime.start(i64 4, i8* %19), !dbg !1292
  store i32 %13, i32* %4, align 4, !dbg !1292
  store i32 %14, i32* %5, align 4, !dbg !1292
  store i32 %15, i32* %6, align 4, !dbg !1292
  %20 = load i32, i32* %6, align 4, !dbg !1293
  store i32 %20, i32* %event.i, align 4, !dbg !1294
  %21 = load i32, i32* %event.i, align 4, !dbg !1295
  %22 = bitcast i32* %1 to i8*, !dbg !1296
  call void @llvm.lifetime.start(i64 4, i8* %22) #4, !dbg !1296
  %23 = bitcast i32* %2 to i8*, !dbg !1296
  call void @llvm.lifetime.start(i64 4, i8* %23) #4, !dbg !1296
  %24 = bitcast i32* %3 to i8*, !dbg !1296
  call void @llvm.lifetime.start(i64 4, i8* %24) #4, !dbg !1296
  %25 = bitcast i32* %l.i.i to i8*, !dbg !1296
  call void @llvm.lifetime.start(i64 4, i8* %25) #4, !dbg !1296
  store i32 %21, i32* %1, align 4, !dbg !1296
  store i32 0, i32* %2, align 4, !dbg !1296
  store i32 0, i32* %3, align 4, !dbg !1296
  %26 = call i32 @__VERIFIER_nondet_int() #4, !dbg !1297
  store i32 %26, i32* %l.i.i, align 4, !dbg !1283
  store i32 1, i32* @setEventCalled, align 4, !dbg !1298
  %27 = load i32, i32* %l.i.i, align 4, !dbg !1299
  %28 = bitcast i32* %1 to i8*, !dbg !1300
  call void @llvm.lifetime.end(i64 4, i8* %28) #4, !dbg !1300
  %29 = bitcast i32* %2 to i8*, !dbg !1300
  call void @llvm.lifetime.end(i64 4, i8* %29) #4, !dbg !1300
  %30 = bitcast i32* %3 to i8*, !dbg !1300
  call void @llvm.lifetime.end(i64 4, i8* %30) #4, !dbg !1300
  %31 = bitcast i32* %l.i.i to i8*, !dbg !1300
  call void @llvm.lifetime.end(i64 4, i8* %31) #4, !dbg !1300
  %32 = bitcast i32* %4 to i8*, !dbg !1301
  call void @llvm.lifetime.end(i64 4, i8* %32), !dbg !1301
  %33 = bitcast i32* %5 to i8*, !dbg !1301
  call void @llvm.lifetime.end(i64 4, i8* %33), !dbg !1301
  %34 = bitcast i32* %6 to i8*, !dbg !1301
  call void @llvm.lifetime.end(i64 4, i8* %34), !dbg !1301
  %35 = bitcast i32* %event.i to i8*, !dbg !1301
  call void @llvm.lifetime.end(i64 4, i8* %35), !dbg !1301
  store i32 -1073741802, i32* %compRetStatus, align 4, !dbg !1302
  %36 = load i32, i32* %compRetStatus, align 4, !dbg !1303
  %37 = sext i32 %36 to i64, !dbg !1305
  store i64 %37, i64* %__cil_tmp7, align 8, !dbg !1306
  %38 = load i64, i64* %__cil_tmp7, align 8, !dbg !1307
  %39 = icmp eq i64 %38, -1073741802, !dbg !1309
  br i1 %39, label %40, label %46, !dbg !1310

; <label>:40                                      ; preds = %12
  %41 = load i32, i32* @s, align 4, !dbg !1311
  %42 = load i32, i32* @NP, align 4, !dbg !1315
  %43 = icmp eq i32 %41, %42, !dbg !1316
  br i1 %43, label %stubMoreProcessingRequired.exit, label %44, !dbg !1317

; <label>:44                                      ; preds = %40
  call void (...) @__VERIFIER_error() #5, !dbg !1318
  unreachable, !dbg !1318

stubMoreProcessingRequired.exit:                  ; preds = %40
  %45 = load i32, i32* @MPR1, align 4, !dbg !1320
  store i32 %45, i32* @s, align 4, !dbg !1321
  br label %46, !dbg !1322

; <label>:46                                      ; preds = %stubMoreProcessingRequired.exit, %12
  br label %47, !dbg !1323

; <label>:47                                      ; preds = %46, %0
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_9, metadata !1324, metadata !90), !dbg !1325
  %48 = call i32 @__VERIFIER_nondet_int(), !dbg !1326
  store i32 %48, i32* %tmp_ndt_9, align 4, !dbg !1327
  %49 = load i32, i32* %tmp_ndt_9, align 4, !dbg !1328
  %50 = icmp eq i32 %49, 0, !dbg !1330
  br i1 %50, label %51, label %52, !dbg !1331

; <label>:51                                      ; preds = %47
  br label %60, !dbg !1332

; <label>:52                                      ; preds = %47
  call void @llvm.dbg.declare(metadata i32* %tmp_ndt_10, metadata !1334, metadata !90), !dbg !1336
  %53 = call i32 @__VERIFIER_nondet_int(), !dbg !1337
  store i32 %53, i32* %tmp_ndt_10, align 4, !dbg !1338
  %54 = load i32, i32* %tmp_ndt_10, align 4, !dbg !1339
  %55 = icmp eq i32 %54, 1, !dbg !1341
  br i1 %55, label %56, label %57, !dbg !1342

; <label>:56                                      ; preds = %52
  br label %61, !dbg !1343

; <label>:57                                      ; preds = %52
  br label %62, !dbg !1345
                                                  ; No predecessors!
  br i1 false, label %59, label %63, !dbg !1347

; <label>:59                                      ; preds = %58
  br label %60, !dbg !1348

; <label>:60                                      ; preds = %59, %51
  store i32 0, i32* %returnVal, align 4, !dbg !1350
  br label %64, !dbg !1352

; <label>:61                                      ; preds = %56
  store i32 -1073741823, i32* %returnVal, align 4, !dbg !1353
  br label %64, !dbg !1354

; <label>:62                                      ; preds = %57
  store i32 259, i32* %returnVal, align 4, !dbg !1355
  br label %64, !dbg !1356

; <label>:63                                      ; preds = %58
  br label %64, !dbg !1357

; <label>:64                                      ; preds = %63, %62, %61, %60
  br label %65

; <label>:65                                      ; preds = %64
  br label %66

; <label>:66                                      ; preds = %65
  br label %67

; <label>:67                                      ; preds = %66
  %68 = load i32, i32* @s, align 4, !dbg !1358
  %69 = load i32, i32* @NP, align 4, !dbg !1360
  %70 = icmp eq i32 %68, %69, !dbg !1361
  br i1 %70, label %71, label %74, !dbg !1362

; <label>:71                                      ; preds = %67
  %72 = load i32, i32* @IPC, align 4, !dbg !1363
  store i32 %72, i32* @s, align 4, !dbg !1365
  %73 = load i32, i32* %returnVal, align 4, !dbg !1366
  store i32 %73, i32* @lowerDriverReturn, align 4, !dbg !1367
  br label %100, !dbg !1368

; <label>:74                                      ; preds = %67
  %75 = load i32, i32* @s, align 4, !dbg !1369
  %76 = load i32, i32* @MPR1, align 4, !dbg !1372
  %77 = icmp eq i32 %75, %76, !dbg !1373
  br i1 %77, label %78, label %90, !dbg !1374

; <label>:78                                      ; preds = %74
  %79 = load i32, i32* %returnVal, align 4, !dbg !1375
  %80 = sext i32 %79 to i64, !dbg !1378
  store i64 %80, i64* %__cil_tmp8, align 8, !dbg !1379
  %81 = load i64, i64* %__cil_tmp8, align 8, !dbg !1380
  %82 = icmp eq i64 %81, 259, !dbg !1382
  br i1 %82, label %83, label %86, !dbg !1383

; <label>:83                                      ; preds = %78
  %84 = load i32, i32* @MPR3, align 4, !dbg !1384
  store i32 %84, i32* @s, align 4, !dbg !1386
  %85 = load i32, i32* %returnVal, align 4, !dbg !1387
  store i32 %85, i32* @lowerDriverReturn, align 4, !dbg !1388
  br label %89, !dbg !1389

; <label>:86                                      ; preds = %78
  %87 = load i32, i32* @NP, align 4, !dbg !1390
  store i32 %87, i32* @s, align 4, !dbg !1392
  %88 = load i32, i32* %returnVal, align 4, !dbg !1393
  store i32 %88, i32* @lowerDriverReturn, align 4, !dbg !1394
  br label %89

; <label>:89                                      ; preds = %86, %83
  br label %99, !dbg !1395

; <label>:90                                      ; preds = %74
  %91 = load i32, i32* @s, align 4, !dbg !1396
  %92 = load i32, i32* @SKIP1, align 4, !dbg !1399
  %93 = icmp eq i32 %91, %92, !dbg !1400
  br i1 %93, label %94, label %97, !dbg !1401

; <label>:94                                      ; preds = %90
  %95 = load i32, i32* @SKIP2, align 4, !dbg !1402
  store i32 %95, i32* @s, align 4, !dbg !1404
  %96 = load i32, i32* %returnVal, align 4, !dbg !1405
  store i32 %96, i32* @lowerDriverReturn, align 4, !dbg !1406
  br label %98, !dbg !1407

; <label>:97                                      ; preds = %90
  call void (...) @__VERIFIER_error() #5, !dbg !1408
  unreachable, !dbg !1408

errorFn.exit:                                     ; No predecessors!
  br label %98

; <label>:98                                      ; preds = %errorFn.exit, %94
  br label %99

; <label>:99                                      ; preds = %98, %89
  br label %100

; <label>:100                                     ; preds = %99, %71
  %101 = load i32, i32* %returnVal, align 4, !dbg !1412
  ret i32 %101, !dbg !1413
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
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1414, metadata !90), !dbg !1415
  store i32 %Irp, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1416, metadata !90), !dbg !1417
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Information, metadata !1418, metadata !90), !dbg !1419
  call void @llvm.dbg.declare(metadata i32* %irpStack__Parameters__DeviceIoControl__IoControlCode, metadata !1420, metadata !90), !dbg !1421
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !1422
  store i32 %6, i32* %irpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1421
  call void @llvm.dbg.declare(metadata i32* %devExt__UpperConnectData__ClassService, metadata !1423, metadata !90), !dbg !1424
  %7 = call i32 @__VERIFIER_nondet_int(), !dbg !1425
  store i32 %7, i32* %devExt__UpperConnectData__ClassService, align 4, !dbg !1424
  call void @llvm.dbg.declare(metadata i32* %irpStack__Parameters__DeviceIoControl__InputBufferLength, metadata !1426, metadata !90), !dbg !1427
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !1428
  store i32 %8, i32* %irpStack__Parameters__DeviceIoControl__InputBufferLength, align 4, !dbg !1427
  call void @llvm.dbg.declare(metadata i32* %sizeof__CONNECT_DATA, metadata !1429, metadata !90), !dbg !1430
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !1431
  store i32 %9, i32* %sizeof__CONNECT_DATA, align 4, !dbg !1430
  call void @llvm.dbg.declare(metadata i32* %irpStack__Parameters__DeviceIoControl__Type3InputBuffer, metadata !1432, metadata !90), !dbg !1433
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !1434
  store i32 %10, i32* %irpStack__Parameters__DeviceIoControl__Type3InputBuffer, align 4, !dbg !1433
  call void @llvm.dbg.declare(metadata i32* %sizeof__INTERNAL_I8042_HOOK_KEYBOARD, metadata !1435, metadata !90), !dbg !1436
  %11 = call i32 @__VERIFIER_nondet_int(), !dbg !1437
  store i32 %11, i32* %sizeof__INTERNAL_I8042_HOOK_KEYBOARD, align 4, !dbg !1436
  call void @llvm.dbg.declare(metadata i32* %hookKeyboard__InitializationRoutine, metadata !1438, metadata !90), !dbg !1439
  %12 = call i32 @__VERIFIER_nondet_int(), !dbg !1440
  store i32 %12, i32* %hookKeyboard__InitializationRoutine, align 4, !dbg !1439
  call void @llvm.dbg.declare(metadata i32* %hookKeyboard__IsrRoutine, metadata !1441, metadata !90), !dbg !1442
  %13 = call i32 @__VERIFIER_nondet_int(), !dbg !1443
  store i32 %13, i32* %hookKeyboard__IsrRoutine, align 4, !dbg !1442
  call void @llvm.dbg.declare(metadata i32* %Irp__IoStatus__Status, metadata !1444, metadata !90), !dbg !1445
  call void @llvm.dbg.declare(metadata i32* %hookKeyboard, metadata !1446, metadata !90), !dbg !1447
  call void @llvm.dbg.declare(metadata i32* %connectData, metadata !1448, metadata !90), !dbg !1449
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1450, metadata !90), !dbg !1451
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !1452, metadata !90), !dbg !1453
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp17, metadata !1454, metadata !90), !dbg !1455
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp18, metadata !1456, metadata !90), !dbg !1457
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp19, metadata !1458, metadata !90), !dbg !1459
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp20, metadata !1460, metadata !90), !dbg !1461
  %14 = call i32 @__VERIFIER_nondet_int(), !dbg !1462
  store i32 %14, i32* %__cil_tmp20, align 4, !dbg !1461
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp21, metadata !1463, metadata !90), !dbg !1464
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp22, metadata !1465, metadata !90), !dbg !1466
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp23, metadata !1467, metadata !90), !dbg !1468
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp24, metadata !1469, metadata !90), !dbg !1470
  %15 = call i32 @__VERIFIER_nondet_int(), !dbg !1471
  store i32 %15, i32* %__cil_tmp24, align 4, !dbg !1470
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp25, metadata !1472, metadata !90), !dbg !1473
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp26, metadata !1474, metadata !90), !dbg !1475
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp27, metadata !1476, metadata !90), !dbg !1477
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp28, metadata !1478, metadata !90), !dbg !1479
  %16 = call i32 @__VERIFIER_nondet_int(), !dbg !1480
  store i32 %16, i32* %__cil_tmp28, align 4, !dbg !1479
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp29, metadata !1481, metadata !90), !dbg !1482
  %17 = call i32 @__VERIFIER_nondet_int(), !dbg !1483
  store i32 %17, i32* %__cil_tmp29, align 4, !dbg !1482
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp30, metadata !1484, metadata !90), !dbg !1485
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp31, metadata !1486, metadata !90), !dbg !1487
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp32, metadata !1488, metadata !90), !dbg !1489
  %18 = call i32 @__VERIFIER_nondet_int(), !dbg !1490
  store i32 %18, i32* %__cil_tmp32, align 4, !dbg !1489
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp33, metadata !1491, metadata !90), !dbg !1492
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp34, metadata !1493, metadata !90), !dbg !1494
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp35, metadata !1495, metadata !90), !dbg !1496
  %19 = call i32 @__VERIFIER_nondet_int(), !dbg !1497
  store i32 %19, i32* %__cil_tmp35, align 4, !dbg !1496
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp36, metadata !1498, metadata !90), !dbg !1499
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp37, metadata !1500, metadata !90), !dbg !1501
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp38, metadata !1502, metadata !90), !dbg !1503
  %20 = call i32 @__VERIFIER_nondet_int(), !dbg !1504
  store i32 %20, i32* %__cil_tmp38, align 4, !dbg !1503
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp39, metadata !1505, metadata !90), !dbg !1506
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp40, metadata !1507, metadata !90), !dbg !1508
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp41, metadata !1509, metadata !90), !dbg !1510
  %21 = call i32 @__VERIFIER_nondet_int(), !dbg !1511
  store i32 %21, i32* %__cil_tmp41, align 4, !dbg !1510
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp42, metadata !1512, metadata !90), !dbg !1513
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp43, metadata !1514, metadata !90), !dbg !1515
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp44, metadata !1516, metadata !90), !dbg !1517
  %22 = call i32 @__VERIFIER_nondet_int(), !dbg !1518
  store i32 %22, i32* %__cil_tmp44, align 4, !dbg !1517
  call void @llvm.dbg.declare(metadata i32* %__cil_tmp45, metadata !1519, metadata !90), !dbg !1520
  store i32 0, i32* %status, align 4, !dbg !1521
  store i32 0, i32* %Irp__IoStatus__Information, align 4, !dbg !1523
  %23 = load i32, i32* %irpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1524
  %24 = load i32, i32* %__cil_tmp20, align 4, !dbg !1527
  %25 = icmp eq i32 %23, %24, !dbg !1528
  call void @llvm.dbg.declare(metadata i32* %1, metadata !151, metadata !90), !dbg !1529
  call void @llvm.dbg.declare(metadata i32* %2, metadata !198, metadata !90), !dbg !1535
  br i1 %25, label %26, label %27, !dbg !1536

; <label>:26                                      ; preds = %0
  br label %69, !dbg !1537

; <label>:27                                      ; preds = %0
  %28 = load i32, i32* %irpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1539
  %29 = load i32, i32* %__cil_tmp24, align 4, !dbg !1543
  %30 = icmp eq i32 %28, %29, !dbg !1544
  br i1 %30, label %31, label %32, !dbg !1545

; <label>:31                                      ; preds = %27
  br label %81, !dbg !1546

; <label>:32                                      ; preds = %27
  %33 = load i32, i32* %irpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1548
  %34 = load i32, i32* %__cil_tmp28, align 4, !dbg !1552
  %35 = icmp eq i32 %33, %34, !dbg !1553
  br i1 %35, label %36, label %37, !dbg !1554

; <label>:36                                      ; preds = %32
  br label %82, !dbg !1555

; <label>:37                                      ; preds = %32
  %38 = load i32, i32* %irpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1557
  %39 = load i32, i32* %__cil_tmp29, align 4, !dbg !1561
  %40 = icmp eq i32 %38, %39, !dbg !1562
  br i1 %40, label %41, label %42, !dbg !1563

; <label>:41                                      ; preds = %37
  br label %97, !dbg !1564

; <label>:42                                      ; preds = %37
  %43 = load i32, i32* %irpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1566
  %44 = load i32, i32* %__cil_tmp32, align 4, !dbg !1570
  %45 = icmp eq i32 %43, %44, !dbg !1571
  br i1 %45, label %46, label %47, !dbg !1572

; <label>:46                                      ; preds = %42
  br label %98, !dbg !1573

; <label>:47                                      ; preds = %42
  %48 = load i32, i32* %irpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1575
  %49 = load i32, i32* %__cil_tmp35, align 4, !dbg !1579
  %50 = icmp eq i32 %48, %49, !dbg !1580
  br i1 %50, label %51, label %52, !dbg !1581

; <label>:51                                      ; preds = %47
  br label %99, !dbg !1582

; <label>:52                                      ; preds = %47
  %53 = load i32, i32* %irpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1584
  %54 = load i32, i32* %__cil_tmp38, align 4, !dbg !1588
  %55 = icmp eq i32 %53, %54, !dbg !1589
  br i1 %55, label %56, label %57, !dbg !1590

; <label>:56                                      ; preds = %52
  br label %100, !dbg !1591

; <label>:57                                      ; preds = %52
  %58 = load i32, i32* %irpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1593
  %59 = load i32, i32* %__cil_tmp41, align 4, !dbg !1597
  %60 = icmp eq i32 %58, %59, !dbg !1598
  br i1 %60, label %61, label %62, !dbg !1599

; <label>:61                                      ; preds = %57
  br label %101, !dbg !1600

; <label>:62                                      ; preds = %57
  %63 = load i32, i32* %irpStack__Parameters__DeviceIoControl__IoControlCode, align 4, !dbg !1602
  %64 = load i32, i32* %__cil_tmp44, align 4, !dbg !1606
  %65 = icmp eq i32 %63, %64, !dbg !1607
  br i1 %65, label %66, label %67, !dbg !1608

; <label>:66                                      ; preds = %62
  br label %102, !dbg !1609

; <label>:67                                      ; preds = %62
  br i1 false, label %68, label %103, !dbg !1611

; <label>:68                                      ; preds = %67
  br label %69, !dbg !1613

; <label>:69                                      ; preds = %68, %26
  %70 = load i32, i32* %devExt__UpperConnectData__ClassService, align 4, !dbg !1615
  %71 = icmp ne i32 %70, 0, !dbg !1618
  br i1 %71, label %72, label %73, !dbg !1619

; <label>:72                                      ; preds = %69
  store i32 -1073741757, i32* %status, align 4, !dbg !1620
  br label %104, !dbg !1622

; <label>:73                                      ; preds = %69
  %74 = load i32, i32* %irpStack__Parameters__DeviceIoControl__InputBufferLength, align 4, !dbg !1623
  %75 = load i32, i32* %sizeof__CONNECT_DATA, align 4, !dbg !1626
  %76 = icmp slt i32 %74, %75, !dbg !1627
  br i1 %76, label %77, label %78, !dbg !1628

; <label>:77                                      ; preds = %73
  store i32 -1073741811, i32* %status, align 4, !dbg !1629
  br label %104, !dbg !1631

; <label>:78                                      ; preds = %73
  br label %79

; <label>:79                                      ; preds = %78
  %80 = load i32, i32* %irpStack__Parameters__DeviceIoControl__Type3InputBuffer, align 4, !dbg !1632
  store i32 %80, i32* %connectData, align 4, !dbg !1633
  br label %104, !dbg !1634

; <label>:81                                      ; preds = %31
  store i32 -1073741822, i32* %status, align 4, !dbg !1635
  br label %104, !dbg !1636

; <label>:82                                      ; preds = %36
  %83 = load i32, i32* %irpStack__Parameters__DeviceIoControl__InputBufferLength, align 4, !dbg !1637
  %84 = load i32, i32* %sizeof__INTERNAL_I8042_HOOK_KEYBOARD, align 4, !dbg !1639
  %85 = icmp slt i32 %83, %84, !dbg !1640
  br i1 %85, label %86, label %87, !dbg !1641

; <label>:86                                      ; preds = %82
  store i32 -1073741811, i32* %status, align 4, !dbg !1642
  br label %104, !dbg !1644

; <label>:87                                      ; preds = %82
  %88 = load i32, i32* %irpStack__Parameters__DeviceIoControl__Type3InputBuffer, align 4, !dbg !1645
  store i32 %88, i32* %hookKeyboard, align 4, !dbg !1646
  %89 = load i32, i32* %hookKeyboard__InitializationRoutine, align 4, !dbg !1647
  %90 = icmp ne i32 %89, 0, !dbg !1647
  br i1 %90, label %91, label %92, !dbg !1649

; <label>:91                                      ; preds = %87
  br label %92, !dbg !1650

; <label>:92                                      ; preds = %91, %87
  %93 = load i32, i32* %hookKeyboard__IsrRoutine, align 4, !dbg !1652
  %94 = icmp ne i32 %93, 0, !dbg !1652
  br i1 %94, label %95, label %96, !dbg !1654

; <label>:95                                      ; preds = %92
  br label %96, !dbg !1655

; <label>:96                                      ; preds = %95, %92
  store i32 0, i32* %status, align 4, !dbg !1657
  br label %104, !dbg !1658

; <label>:97                                      ; preds = %41
  br label %98, !dbg !1658

; <label>:98                                      ; preds = %97, %46
  br label %99, !dbg !1658

; <label>:99                                      ; preds = %98, %51
  br label %100, !dbg !1658

; <label>:100                                     ; preds = %99, %56
  br label %101, !dbg !1658

; <label>:101                                     ; preds = %100, %61
  br label %102, !dbg !1658

; <label>:102                                     ; preds = %101, %66
  br label %104, !dbg !1659

; <label>:103                                     ; preds = %67
  br label %104, !dbg !1660

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
  %115 = load i32, i32* %status, align 4, !dbg !1661
  %116 = icmp slt i32 %115, 0, !dbg !1662
  br i1 %116, label %117, label %131, !dbg !1663

; <label>:117                                     ; preds = %114
  %118 = load i32, i32* %status, align 4, !dbg !1664
  store i32 %118, i32* %Irp__IoStatus__Status, align 4, !dbg !1665
  %119 = load i32, i32* %status, align 4, !dbg !1666
  store i32 %119, i32* @myStatus, align 4, !dbg !1667
  %120 = load i32, i32* %5, align 4, !dbg !1668
  %121 = bitcast i32* %1 to i8*, !dbg !1669
  call void @llvm.lifetime.start(i64 4, i8* %121), !dbg !1669
  %122 = bitcast i32* %2 to i8*, !dbg !1669
  call void @llvm.lifetime.start(i64 4, i8* %122), !dbg !1669
  store i32 %120, i32* %1, align 4, !dbg !1669
  store i32 0, i32* %2, align 4, !dbg !1669
  %123 = load i32, i32* @s, align 4, !dbg !1670
  %124 = load i32, i32* @NP, align 4, !dbg !1671
  %125 = icmp eq i32 %123, %124, !dbg !1672
  br i1 %125, label %IofCompleteRequest.exit, label %126, !dbg !1673

; <label>:126                                     ; preds = %117
  call void (...) @__VERIFIER_error() #5, !dbg !1674
  unreachable, !dbg !1674

IofCompleteRequest.exit:                          ; preds = %117
  %127 = load i32, i32* @DC, align 4, !dbg !1676
  store i32 %127, i32* @s, align 4, !dbg !1677
  %128 = bitcast i32* %1 to i8*, !dbg !1678
  call void @llvm.lifetime.end(i64 4, i8* %128), !dbg !1678
  %129 = bitcast i32* %2 to i8*, !dbg !1678
  call void @llvm.lifetime.end(i64 4, i8* %129), !dbg !1678
  %130 = load i32, i32* %status, align 4, !dbg !1679
  store i32 %130, i32* %3, !dbg !1680
  br label %136, !dbg !1680

; <label>:131                                     ; preds = %114
  %132 = load i32, i32* %4, align 4, !dbg !1681
  %133 = load i32, i32* %5, align 4, !dbg !1683
  %134 = call i32 @KbFilter_DispatchPassThrough(i32 %132, i32 %133), !dbg !1684
  store i32 %134, i32* %tmp, align 4, !dbg !1685
  %135 = load i32, i32* %tmp, align 4, !dbg !1686
  store i32 %135, i32* %3, !dbg !1687
  br label %136, !dbg !1687

; <label>:136                                     ; preds = %131, %IofCompleteRequest.exit
  %137 = load i32, i32* %3, !dbg !1688
  ret i32 %137, !dbg !1688
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
!llvm.module.flags = !{!57, !58, !59}
!llvm.ident = !{!60}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7, globals: !37)
!1 = !DIFile(filename: "svcomp16/ntdrivers-simplified/kbfiltr_simpl2_false-unreach-call_true-termination.cil.c", directory: ".")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!6 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!7 = !{!8, !11, !12, !16, !19, !20, !21, !24, !27, !30, !31, !32, !33, !34, !35, !36}
!8 = !DISubprogram(name: "stub_driver_init", scope: !1, file: !1, line: 30, type: !9, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stub_driver_init, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{null}
!11 = !DISubprogram(name: "_BLAST_init", scope: !1, file: !1, line: 44, type: !9, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @_BLAST_init, variables: !2)
!12 = !DISubprogram(name: "KbFilter_PnP", scope: !1, file: !1, line: 66, type: !13, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @KbFilter_PnP, variables: !2)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !15, !15}
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DISubprogram(name: "main", scope: !1, file: !1, line: 280, type: !17, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !2)
!17 = !DISubroutineType(types: !18)
!18 = !{!15}
!19 = !DISubprogram(name: "stubMoreProcessingRequired", scope: !1, file: !1, line: 454, type: !9, isLocal: false, isDefinition: true, scopeLine: 455, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stubMoreProcessingRequired, variables: !2)
!20 = !DISubprogram(name: "IofCallDriver", scope: !1, file: !1, line: 468, type: !13, isLocal: false, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @IofCallDriver, variables: !2)
!21 = !DISubprogram(name: "IofCompleteRequest", scope: !1, file: !1, line: 541, type: !22, isLocal: false, isDefinition: true, scopeLine: 542, flags: DIFlagPrototyped, isOptimized: false, function: void (i32, i32)* @IofCompleteRequest, variables: !2)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !15, !15}
!24 = !DISubprogram(name: "KeSetEvent", scope: !1, file: !1, line: 555, type: !25, isLocal: false, isDefinition: true, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @KeSetEvent, variables: !2)
!25 = !DISubroutineType(types: !26)
!26 = !{!15, !15, !15, !15}
!27 = !DISubprogram(name: "KeWaitForSingleObject", scope: !1, file: !1, line: 563, type: !28, isLocal: false, isDefinition: true, scopeLine: 565, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32, i32, i32)* @KeWaitForSingleObject, variables: !2)
!28 = !DISubroutineType(types: !29)
!29 = !{!15, !15, !15, !15, !15, !15}
!30 = !DISubprogram(name: "KbFilter_Complete", scope: !1, file: !1, line: 605, type: !25, isLocal: false, isDefinition: true, scopeLine: 606, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32, i32)* @KbFilter_Complete, variables: !2)
!31 = !DISubprogram(name: "KbFilter_CreateClose", scope: !1, file: !1, line: 616, type: !13, isLocal: false, isDefinition: true, scopeLine: 617, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @KbFilter_CreateClose, variables: !2)
!32 = !DISubprogram(name: "KbFilter_DispatchPassThrough", scope: !1, file: !1, line: 652, type: !13, isLocal: false, isDefinition: true, scopeLine: 653, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @KbFilter_DispatchPassThrough, variables: !2)
!33 = !DISubprogram(name: "KbFilter_Power", scope: !1, file: !1, line: 676, type: !13, isLocal: false, isDefinition: true, scopeLine: 677, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @KbFilter_Power, variables: !2)
!34 = !DISubprogram(name: "PoCallDriver", scope: !1, file: !1, line: 732, type: !13, isLocal: false, isDefinition: true, scopeLine: 733, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @PoCallDriver, variables: !2)
!35 = !DISubprogram(name: "KbFilter_InternIoCtl", scope: !1, file: !1, line: 809, type: !13, isLocal: false, isDefinition: true, scopeLine: 810, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i32)* @KbFilter_InternIoCtl, variables: !2)
!36 = !DISubprogram(name: "errorFn", scope: !1, file: !1, line: 996, type: !9, isLocal: false, isDefinition: true, scopeLine: 997, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @errorFn, variables: !2)
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!38 = !DIGlobalVariable(name: "KernelMode", scope: !0, file: !1, line: 10, type: !15, isLocal: false, isDefinition: true, variable: i32* @KernelMode)
!39 = !DIGlobalVariable(name: "Executive", scope: !0, file: !1, line: 11, type: !15, isLocal: false, isDefinition: true, variable: i32* @Executive)
!40 = !DIGlobalVariable(name: "DevicePowerState", scope: !0, file: !1, line: 12, type: !15, isLocal: false, isDefinition: true, variable: i32* @DevicePowerState)
!41 = !DIGlobalVariable(name: "s", scope: !0, file: !1, line: 13, type: !15, isLocal: false, isDefinition: true, variable: i32* @s)
!42 = !DIGlobalVariable(name: "UNLOADED", scope: !0, file: !1, line: 14, type: !15, isLocal: false, isDefinition: true, variable: i32* @UNLOADED)
!43 = !DIGlobalVariable(name: "NP", scope: !0, file: !1, line: 15, type: !15, isLocal: false, isDefinition: true, variable: i32* @NP)
!44 = !DIGlobalVariable(name: "DC", scope: !0, file: !1, line: 16, type: !15, isLocal: false, isDefinition: true, variable: i32* @DC)
!45 = !DIGlobalVariable(name: "SKIP1", scope: !0, file: !1, line: 17, type: !15, isLocal: false, isDefinition: true, variable: i32* @SKIP1)
!46 = !DIGlobalVariable(name: "SKIP2", scope: !0, file: !1, line: 18, type: !15, isLocal: false, isDefinition: true, variable: i32* @SKIP2)
!47 = !DIGlobalVariable(name: "MPR1", scope: !0, file: !1, line: 19, type: !15, isLocal: false, isDefinition: true, variable: i32* @MPR1)
!48 = !DIGlobalVariable(name: "MPR3", scope: !0, file: !1, line: 20, type: !15, isLocal: false, isDefinition: true, variable: i32* @MPR3)
!49 = !DIGlobalVariable(name: "IPC", scope: !0, file: !1, line: 21, type: !15, isLocal: false, isDefinition: true, variable: i32* @IPC)
!50 = !DIGlobalVariable(name: "pended", scope: !0, file: !1, line: 22, type: !15, isLocal: false, isDefinition: true, variable: i32* @pended)
!51 = !DIGlobalVariable(name: "compFptr", scope: !0, file: !1, line: 23, type: !15, isLocal: false, isDefinition: true, variable: i32* @compFptr)
!52 = !DIGlobalVariable(name: "compRegistered", scope: !0, file: !1, line: 24, type: !15, isLocal: false, isDefinition: true, variable: i32* @compRegistered)
!53 = !DIGlobalVariable(name: "lowerDriverReturn", scope: !0, file: !1, line: 25, type: !15, isLocal: false, isDefinition: true, variable: i32* @lowerDriverReturn)
!54 = !DIGlobalVariable(name: "setEventCalled", scope: !0, file: !1, line: 26, type: !15, isLocal: false, isDefinition: true, variable: i32* @setEventCalled)
!55 = !DIGlobalVariable(name: "customIrp", scope: !0, file: !1, line: 27, type: !15, isLocal: false, isDefinition: true, variable: i32* @customIrp)
!56 = !DIGlobalVariable(name: "myStatus", scope: !0, file: !1, line: 28, type: !15, isLocal: false, isDefinition: true, variable: i32* @myStatus)
!57 = !{i32 2, !"Dwarf Version", i32 2}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"PIC Level", i32 2}
!60 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!61 = !DILocation(line: 34, column: 7, scope: !62)
!62 = distinct !DILexicalBlock(scope: !8, file: !1, line: 33, column: 3)
!63 = !DILocation(line: 34, column: 5, scope: !62)
!64 = !DILocation(line: 35, column: 10, scope: !62)
!65 = !DILocation(line: 36, column: 12, scope: !62)
!66 = !DILocation(line: 37, column: 18, scope: !62)
!67 = !DILocation(line: 38, column: 21, scope: !62)
!68 = !DILocation(line: 39, column: 18, scope: !62)
!69 = !DILocation(line: 40, column: 13, scope: !62)
!70 = !DILocation(line: 41, column: 3, scope: !62)
!71 = !DILocation(line: 48, column: 12, scope: !72)
!72 = distinct !DILexicalBlock(scope: !11, file: !1, line: 47, column: 3)
!73 = !DILocation(line: 49, column: 6, scope: !72)
!74 = !DILocation(line: 50, column: 6, scope: !72)
!75 = !DILocation(line: 51, column: 9, scope: !72)
!76 = !DILocation(line: 52, column: 9, scope: !72)
!77 = !DILocation(line: 53, column: 8, scope: !72)
!78 = !DILocation(line: 54, column: 8, scope: !72)
!79 = !DILocation(line: 55, column: 7, scope: !72)
!80 = !DILocation(line: 56, column: 7, scope: !72)
!81 = !DILocation(line: 56, column: 5, scope: !72)
!82 = !DILocation(line: 57, column: 10, scope: !72)
!83 = !DILocation(line: 58, column: 12, scope: !72)
!84 = !DILocation(line: 59, column: 18, scope: !72)
!85 = !DILocation(line: 60, column: 21, scope: !72)
!86 = !DILocation(line: 61, column: 18, scope: !72)
!87 = !DILocation(line: 62, column: 13, scope: !72)
!88 = !DILocation(line: 63, column: 3, scope: !72)
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !12, file: !1, line: 66, type: !15)
!90 = !DIExpression()
!91 = !DILocation(line: 66, column: 22, scope: !12)
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !12, file: !1, line: 66, type: !15)
!93 = !DILocation(line: 66, column: 41, scope: !12)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt", scope: !12, file: !1, line: 67, type: !15)
!95 = !DILocation(line: 67, column: 7, scope: !12)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack", scope: !12, file: !1, line: 68, type: !15)
!97 = !DILocation(line: 68, column: 7, scope: !12)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !12, file: !1, line: 69, type: !15)
!99 = !DILocation(line: 69, column: 7, scope: !12)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "event", scope: !12, file: !1, line: 70, type: !15)
!101 = !DILocation(line: 70, column: 7, scope: !12)
!102 = !DILocation(line: 70, column: 15, scope: !12)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension", scope: !12, file: !1, line: 71, type: !15)
!104 = !DILocation(line: 71, column: 7, scope: !12)
!105 = !DILocation(line: 71, column: 39, scope: !12)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !12, file: !1, line: 72, type: !15)
!107 = !DILocation(line: 72, column: 7, scope: !12)
!108 = !DILocation(line: 72, column: 50, scope: !12)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack__MinorFunction", scope: !12, file: !1, line: 73, type: !15)
!110 = !DILocation(line: 73, column: 7, scope: !12)
!111 = !DILocation(line: 73, column: 33, scope: !12)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt__TopOfStack", scope: !12, file: !1, line: 74, type: !15)
!113 = !DILocation(line: 74, column: 7, scope: !12)
!114 = !DILocation(line: 74, column: 28, scope: !12)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt__Started", scope: !12, file: !1, line: 75, type: !15)
!116 = !DILocation(line: 75, column: 7, scope: !12)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt__Removed", scope: !12, file: !1, line: 76, type: !15)
!118 = !DILocation(line: 76, column: 7, scope: !12)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt__SurpriseRemoved", scope: !12, file: !1, line: 77, type: !15)
!120 = !DILocation(line: 77, column: 7, scope: !12)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !12, file: !1, line: 78, type: !15)
!122 = !DILocation(line: 78, column: 7, scope: !12)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !12, file: !1, line: 79, type: !15)
!124 = !DILocation(line: 79, column: 7, scope: !12)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !12, file: !1, line: 80, type: !15)
!126 = !DILocation(line: 80, column: 7, scope: !12)
!127 = !DILocation(line: 80, column: 30, scope: !12)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp", scope: !12, file: !1, line: 81, type: !15)
!129 = !DILocation(line: 81, column: 7, scope: !12)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp", scope: !12, file: !1, line: 82, type: !15)
!131 = !DILocation(line: 82, column: 7, scope: !12)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp__Control", scope: !12, file: !1, line: 83, type: !15)
!133 = !DILocation(line: 83, column: 7, scope: !12)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___0", scope: !12, file: !1, line: 84, type: !15)
!135 = !DILocation(line: 84, column: 7, scope: !12)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Context", scope: !12, file: !1, line: 85, type: !15)
!137 = !DILocation(line: 85, column: 7, scope: !12)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp__Control", scope: !12, file: !1, line: 86, type: !15)
!139 = !DILocation(line: 86, column: 7, scope: !12)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp23", scope: !12, file: !1, line: 87, type: !4)
!141 = !DILocation(line: 87, column: 8, scope: !12)
!142 = !DILocation(line: 90, column: 10, scope: !143)
!143 = distinct !DILexicalBlock(scope: !12, file: !1, line: 89, column: 3)
!144 = !DILocation(line: 91, column: 12, scope: !143)
!145 = !DILocation(line: 91, column: 10, scope: !143)
!146 = !DILocation(line: 92, column: 14, scope: !143)
!147 = !DILocation(line: 92, column: 12, scope: !143)
!148 = !DILocation(line: 93, column: 7, scope: !149)
!149 = distinct !DILexicalBlock(scope: !143, file: !1, line: 93, column: 7)
!150 = !DILocation(line: 93, column: 31, scope: !149)
!151 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 1, scope: !21, file: !1, line: 541, type: !15)
!152 = !DILocation(line: 541, column: 29, scope: !21, inlinedAt: !153)
!153 = distinct !DILocation(line: 203, column: 47, scope: !154)
!154 = distinct !DILexicalBlock(scope: !155, file: !1, line: 199, column: 47)
!155 = distinct !DILexicalBlock(scope: !156, file: !1, line: 157, column: 52)
!156 = distinct !DILexicalBlock(scope: !157, file: !1, line: 157, column: 49)
!157 = distinct !DILexicalBlock(scope: !158, file: !1, line: 155, column: 50)
!158 = distinct !DILexicalBlock(scope: !159, file: !1, line: 153, column: 47)
!159 = distinct !DILexicalBlock(scope: !160, file: !1, line: 152, column: 48)
!160 = distinct !DILexicalBlock(scope: !161, file: !1, line: 150, column: 45)
!161 = distinct !DILexicalBlock(scope: !162, file: !1, line: 149, column: 46)
!162 = distinct !DILexicalBlock(scope: !163, file: !1, line: 147, column: 43)
!163 = distinct !DILexicalBlock(scope: !164, file: !1, line: 146, column: 44)
!164 = distinct !DILexicalBlock(scope: !165, file: !1, line: 144, column: 41)
!165 = distinct !DILexicalBlock(scope: !166, file: !1, line: 143, column: 42)
!166 = distinct !DILexicalBlock(scope: !167, file: !1, line: 141, column: 39)
!167 = distinct !DILexicalBlock(scope: !168, file: !1, line: 140, column: 40)
!168 = distinct !DILexicalBlock(scope: !169, file: !1, line: 138, column: 37)
!169 = distinct !DILexicalBlock(scope: !170, file: !1, line: 137, column: 38)
!170 = distinct !DILexicalBlock(scope: !171, file: !1, line: 135, column: 35)
!171 = distinct !DILexicalBlock(scope: !172, file: !1, line: 134, column: 36)
!172 = distinct !DILexicalBlock(scope: !173, file: !1, line: 132, column: 33)
!173 = distinct !DILexicalBlock(scope: !174, file: !1, line: 131, column: 34)
!174 = distinct !DILexicalBlock(scope: !175, file: !1, line: 129, column: 31)
!175 = distinct !DILexicalBlock(scope: !176, file: !1, line: 128, column: 32)
!176 = distinct !DILexicalBlock(scope: !177, file: !1, line: 126, column: 29)
!177 = distinct !DILexicalBlock(scope: !178, file: !1, line: 125, column: 30)
!178 = distinct !DILexicalBlock(scope: !179, file: !1, line: 123, column: 27)
!179 = distinct !DILexicalBlock(scope: !180, file: !1, line: 122, column: 28)
!180 = distinct !DILexicalBlock(scope: !181, file: !1, line: 120, column: 25)
!181 = distinct !DILexicalBlock(scope: !182, file: !1, line: 119, column: 26)
!182 = distinct !DILexicalBlock(scope: !183, file: !1, line: 117, column: 23)
!183 = distinct !DILexicalBlock(scope: !184, file: !1, line: 116, column: 24)
!184 = distinct !DILexicalBlock(scope: !185, file: !1, line: 114, column: 21)
!185 = distinct !DILexicalBlock(scope: !186, file: !1, line: 113, column: 22)
!186 = distinct !DILexicalBlock(scope: !187, file: !1, line: 111, column: 19)
!187 = distinct !DILexicalBlock(scope: !188, file: !1, line: 110, column: 20)
!188 = distinct !DILexicalBlock(scope: !189, file: !1, line: 108, column: 17)
!189 = distinct !DILexicalBlock(scope: !190, file: !1, line: 107, column: 18)
!190 = distinct !DILexicalBlock(scope: !191, file: !1, line: 105, column: 15)
!191 = distinct !DILexicalBlock(scope: !192, file: !1, line: 104, column: 16)
!192 = distinct !DILexicalBlock(scope: !193, file: !1, line: 102, column: 13)
!193 = distinct !DILexicalBlock(scope: !194, file: !1, line: 101, column: 14)
!194 = distinct !DILexicalBlock(scope: !195, file: !1, line: 99, column: 11)
!195 = distinct !DILexicalBlock(scope: !196, file: !1, line: 98, column: 12)
!196 = distinct !DILexicalBlock(scope: !197, file: !1, line: 96, column: 9)
!197 = distinct !DILexicalBlock(scope: !149, file: !1, line: 95, column: 10)
!198 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PriorityBoost", arg: 2, scope: !21, file: !1, line: 541, type: !15)
!199 = !DILocation(line: 541, column: 39, scope: !21, inlinedAt: !153)
!200 = !DILocation(line: 93, column: 7, scope: !143)
!201 = !DILocation(line: 94, column: 5, scope: !202)
!202 = distinct !DILexicalBlock(scope: !149, file: !1, line: 93, column: 37)
!203 = !DILocation(line: 96, column: 9, scope: !196)
!204 = !DILocation(line: 96, column: 33, scope: !196)
!205 = !DILocation(line: 96, column: 9, scope: !197)
!206 = !DILocation(line: 97, column: 7, scope: !207)
!207 = distinct !DILexicalBlock(scope: !196, file: !1, line: 96, column: 40)
!208 = !DILocation(line: 99, column: 11, scope: !194)
!209 = !DILocation(line: 99, column: 35, scope: !194)
!210 = !DILocation(line: 99, column: 11, scope: !195)
!211 = !DILocation(line: 100, column: 9, scope: !212)
!212 = distinct !DILexicalBlock(scope: !194, file: !1, line: 99, column: 41)
!213 = !DILocation(line: 102, column: 13, scope: !192)
!214 = !DILocation(line: 102, column: 37, scope: !192)
!215 = !DILocation(line: 102, column: 13, scope: !193)
!216 = !DILocation(line: 103, column: 11, scope: !217)
!217 = distinct !DILexicalBlock(scope: !192, file: !1, line: 102, column: 43)
!218 = !DILocation(line: 105, column: 15, scope: !190)
!219 = !DILocation(line: 105, column: 39, scope: !190)
!220 = !DILocation(line: 105, column: 15, scope: !191)
!221 = !DILocation(line: 106, column: 13, scope: !222)
!222 = distinct !DILexicalBlock(scope: !190, file: !1, line: 105, column: 45)
!223 = !DILocation(line: 108, column: 17, scope: !188)
!224 = !DILocation(line: 108, column: 41, scope: !188)
!225 = !DILocation(line: 108, column: 17, scope: !189)
!226 = !DILocation(line: 109, column: 15, scope: !227)
!227 = distinct !DILexicalBlock(scope: !188, file: !1, line: 108, column: 47)
!228 = !DILocation(line: 111, column: 19, scope: !186)
!229 = !DILocation(line: 111, column: 43, scope: !186)
!230 = !DILocation(line: 111, column: 19, scope: !187)
!231 = !DILocation(line: 112, column: 17, scope: !232)
!232 = distinct !DILexicalBlock(scope: !186, file: !1, line: 111, column: 49)
!233 = !DILocation(line: 114, column: 21, scope: !184)
!234 = !DILocation(line: 114, column: 45, scope: !184)
!235 = !DILocation(line: 114, column: 21, scope: !185)
!236 = !DILocation(line: 115, column: 19, scope: !237)
!237 = distinct !DILexicalBlock(scope: !184, file: !1, line: 114, column: 52)
!238 = !DILocation(line: 117, column: 23, scope: !182)
!239 = !DILocation(line: 117, column: 47, scope: !182)
!240 = !DILocation(line: 117, column: 23, scope: !183)
!241 = !DILocation(line: 118, column: 21, scope: !242)
!242 = distinct !DILexicalBlock(scope: !182, file: !1, line: 117, column: 53)
!243 = !DILocation(line: 120, column: 25, scope: !180)
!244 = !DILocation(line: 120, column: 49, scope: !180)
!245 = !DILocation(line: 120, column: 25, scope: !181)
!246 = !DILocation(line: 121, column: 23, scope: !247)
!247 = distinct !DILexicalBlock(scope: !180, file: !1, line: 120, column: 55)
!248 = !DILocation(line: 123, column: 27, scope: !178)
!249 = !DILocation(line: 123, column: 51, scope: !178)
!250 = !DILocation(line: 123, column: 27, scope: !179)
!251 = !DILocation(line: 124, column: 25, scope: !252)
!252 = distinct !DILexicalBlock(scope: !178, file: !1, line: 123, column: 57)
!253 = !DILocation(line: 126, column: 29, scope: !176)
!254 = !DILocation(line: 126, column: 53, scope: !176)
!255 = !DILocation(line: 126, column: 29, scope: !177)
!256 = !DILocation(line: 127, column: 27, scope: !257)
!257 = distinct !DILexicalBlock(scope: !176, file: !1, line: 126, column: 59)
!258 = !DILocation(line: 129, column: 31, scope: !174)
!259 = !DILocation(line: 129, column: 55, scope: !174)
!260 = !DILocation(line: 129, column: 31, scope: !175)
!261 = !DILocation(line: 130, column: 29, scope: !262)
!262 = distinct !DILexicalBlock(scope: !174, file: !1, line: 129, column: 62)
!263 = !DILocation(line: 132, column: 33, scope: !172)
!264 = !DILocation(line: 132, column: 57, scope: !172)
!265 = !DILocation(line: 132, column: 33, scope: !173)
!266 = !DILocation(line: 133, column: 31, scope: !267)
!267 = distinct !DILexicalBlock(scope: !172, file: !1, line: 132, column: 64)
!268 = !DILocation(line: 135, column: 35, scope: !170)
!269 = !DILocation(line: 135, column: 59, scope: !170)
!270 = !DILocation(line: 135, column: 35, scope: !171)
!271 = !DILocation(line: 136, column: 33, scope: !272)
!272 = distinct !DILexicalBlock(scope: !170, file: !1, line: 135, column: 66)
!273 = !DILocation(line: 138, column: 37, scope: !168)
!274 = !DILocation(line: 138, column: 61, scope: !168)
!275 = !DILocation(line: 138, column: 37, scope: !169)
!276 = !DILocation(line: 139, column: 35, scope: !277)
!277 = distinct !DILexicalBlock(scope: !168, file: !1, line: 138, column: 68)
!278 = !DILocation(line: 141, column: 39, scope: !166)
!279 = !DILocation(line: 141, column: 63, scope: !166)
!280 = !DILocation(line: 141, column: 39, scope: !167)
!281 = !DILocation(line: 142, column: 37, scope: !282)
!282 = distinct !DILexicalBlock(scope: !166, file: !1, line: 141, column: 70)
!283 = !DILocation(line: 144, column: 41, scope: !164)
!284 = !DILocation(line: 144, column: 65, scope: !164)
!285 = !DILocation(line: 144, column: 41, scope: !165)
!286 = !DILocation(line: 145, column: 39, scope: !287)
!287 = distinct !DILexicalBlock(scope: !164, file: !1, line: 144, column: 72)
!288 = !DILocation(line: 147, column: 43, scope: !162)
!289 = !DILocation(line: 147, column: 67, scope: !162)
!290 = !DILocation(line: 147, column: 43, scope: !163)
!291 = !DILocation(line: 148, column: 41, scope: !292)
!292 = distinct !DILexicalBlock(scope: !162, file: !1, line: 147, column: 74)
!293 = !DILocation(line: 150, column: 45, scope: !160)
!294 = !DILocation(line: 150, column: 69, scope: !160)
!295 = !DILocation(line: 150, column: 45, scope: !161)
!296 = !DILocation(line: 151, column: 43, scope: !297)
!297 = distinct !DILexicalBlock(scope: !160, file: !1, line: 150, column: 76)
!298 = !DILocation(line: 153, column: 47, scope: !158)
!299 = !DILocation(line: 153, column: 71, scope: !158)
!300 = !DILocation(line: 153, column: 47, scope: !159)
!301 = !DILocation(line: 154, column: 45, scope: !302)
!302 = distinct !DILexicalBlock(scope: !158, file: !1, line: 153, column: 78)
!303 = !DILocation(line: 156, column: 45, scope: !157)
!304 = !DILocation(line: 157, column: 49, scope: !157)
!305 = !DILocation(line: 157, column: 52, scope: !156)
!306 = !DILocation(line: 159, column: 55, scope: !155)
!307 = !DILocation(line: 159, column: 53, scope: !155)
!308 = !DILocation(line: 160, column: 59, scope: !155)
!309 = !DILocation(line: 160, column: 100, scope: !155)
!310 = !DILocation(line: 160, column: 57, scope: !155)
!311 = !DILocation(line: 161, column: 66, scope: !155)
!312 = !DILocation(line: 162, column: 51, scope: !313)
!313 = distinct !DILexicalBlock(scope: !155, file: !1, line: 162, column: 51)
!314 = !DILocation(line: 162, column: 56, scope: !313)
!315 = !DILocation(line: 162, column: 53, scope: !313)
!316 = !DILocation(line: 162, column: 51, scope: !155)
!317 = !DILocation(line: 1000, column: 10, scope: !318, inlinedAt: !319)
!318 = distinct !DILexicalBlock(scope: !36, file: !1, line: 999, column: 3)
!319 = distinct !DILocation(line: 164, column: 49, scope: !320)
!320 = distinct !DILexicalBlock(scope: !321, file: !1, line: 163, column: 49)
!321 = distinct !DILexicalBlock(scope: !313, file: !1, line: 162, column: 60)
!322 = !DILocation(line: 166, column: 47, scope: !321)
!323 = !DILocation(line: 167, column: 53, scope: !324)
!324 = distinct !DILexicalBlock(scope: !325, file: !1, line: 167, column: 53)
!325 = distinct !DILexicalBlock(scope: !313, file: !1, line: 166, column: 54)
!326 = !DILocation(line: 167, column: 68, scope: !324)
!327 = !DILocation(line: 167, column: 53, scope: !325)
!328 = !DILocation(line: 1000, column: 10, scope: !318, inlinedAt: !329)
!329 = distinct !DILocation(line: 169, column: 51, scope: !330)
!330 = distinct !DILexicalBlock(scope: !331, file: !1, line: 168, column: 51)
!331 = distinct !DILexicalBlock(scope: !324, file: !1, line: 167, column: 74)
!332 = !DILocation(line: 171, column: 49, scope: !331)
!333 = !DILocation(line: 172, column: 66, scope: !334)
!334 = distinct !DILexicalBlock(scope: !324, file: !1, line: 171, column: 56)
!335 = !DILocation(line: 176, column: 59, scope: !336)
!336 = distinct !DILexicalBlock(scope: !155, file: !1, line: 175, column: 47)
!337 = !DILocation(line: 176, column: 100, scope: !336)
!338 = !DILocation(line: 176, column: 57, scope: !336)
!339 = !DILocation(line: 177, column: 64, scope: !336)
!340 = !DILocation(line: 177, column: 62, scope: !336)
!341 = !DILocation(line: 178, column: 62, scope: !336)
!342 = !DILocation(line: 179, column: 70, scope: !336)
!343 = !DILocation(line: 180, column: 70, scope: !336)
!344 = !DILocation(line: 179, column: 56, scope: !336)
!345 = !DILocation(line: 179, column: 54, scope: !336)
!346 = !DILocation(line: 183, column: 68, scope: !347)
!347 = distinct !DILexicalBlock(scope: !155, file: !1, line: 182, column: 47)
!348 = !DILocation(line: 183, column: 61, scope: !347)
!349 = !DILocation(line: 183, column: 59, scope: !347)
!350 = !DILocation(line: 184, column: 51, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !1, line: 184, column: 51)
!352 = !DILocation(line: 184, column: 63, scope: !351)
!353 = !DILocation(line: 184, column: 51, scope: !347)
!354 = !DILocation(line: 186, column: 71, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !1, line: 185, column: 49)
!356 = distinct !DILexicalBlock(scope: !351, file: !1, line: 184, column: 71)
!357 = !DILocation(line: 186, column: 78, scope: !355)
!358 = !DILocation(line: 187, column: 71, scope: !355)
!359 = !DILocation(line: 186, column: 49, scope: !355)
!360 = !DILocation(line: 190, column: 47, scope: !356)
!361 = !DILocation(line: 192, column: 51, scope: !362)
!362 = distinct !DILexicalBlock(scope: !155, file: !1, line: 192, column: 51)
!363 = !DILocation(line: 192, column: 58, scope: !362)
!364 = !DILocation(line: 192, column: 51, scope: !155)
!365 = !DILocation(line: 193, column: 53, scope: !366)
!366 = distinct !DILexicalBlock(scope: !367, file: !1, line: 193, column: 53)
!367 = distinct !DILexicalBlock(scope: !362, file: !1, line: 192, column: 64)
!368 = !DILocation(line: 193, column: 62, scope: !366)
!369 = !DILocation(line: 193, column: 53, scope: !367)
!370 = !DILocation(line: 194, column: 67, scope: !371)
!371 = distinct !DILexicalBlock(scope: !366, file: !1, line: 193, column: 68)
!372 = !DILocation(line: 195, column: 67, scope: !371)
!373 = !DILocation(line: 196, column: 75, scope: !371)
!374 = !DILocation(line: 197, column: 49, scope: !371)
!375 = !DILocation(line: 198, column: 47, scope: !367)
!376 = !DILocation(line: 200, column: 71, scope: !154)
!377 = !DILocation(line: 200, column: 69, scope: !154)
!378 = !DILocation(line: 201, column: 58, scope: !154)
!379 = !DILocation(line: 201, column: 56, scope: !154)
!380 = !DILocation(line: 202, column: 74, scope: !154)
!381 = !DILocation(line: 203, column: 66, scope: !154)
!382 = !DILocation(line: 203, column: 47, scope: !154)
!383 = !DILocation(line: 545, column: 7, scope: !384, inlinedAt: !153)
!384 = distinct !DILexicalBlock(scope: !385, file: !1, line: 545, column: 7)
!385 = distinct !DILexicalBlock(scope: !21, file: !1, line: 544, column: 3)
!386 = !DILocation(line: 545, column: 12, scope: !384, inlinedAt: !153)
!387 = !DILocation(line: 545, column: 9, scope: !384, inlinedAt: !153)
!388 = !DILocation(line: 545, column: 7, scope: !385, inlinedAt: !153)
!389 = !DILocation(line: 1000, column: 10, scope: !318, inlinedAt: !390)
!390 = distinct !DILocation(line: 549, column: 5, scope: !391, inlinedAt: !153)
!391 = distinct !DILexicalBlock(scope: !392, file: !1, line: 548, column: 5)
!392 = distinct !DILexicalBlock(scope: !384, file: !1, line: 547, column: 10)
!393 = !DILocation(line: 546, column: 9, scope: !394, inlinedAt: !153)
!394 = distinct !DILexicalBlock(scope: !384, file: !1, line: 545, column: 16)
!395 = !DILocation(line: 546, column: 7, scope: !394, inlinedAt: !153)
!396 = !DILocation(line: 552, column: 3, scope: !385, inlinedAt: !153)
!397 = !DILocation(line: 205, column: 47, scope: !155)
!398 = !DILocation(line: 207, column: 71, scope: !155)
!399 = !DILocation(line: 208, column: 51, scope: !400)
!400 = distinct !DILexicalBlock(scope: !155, file: !1, line: 208, column: 51)
!401 = !DILocation(line: 208, column: 56, scope: !400)
!402 = !DILocation(line: 208, column: 53, scope: !400)
!403 = !DILocation(line: 208, column: 51, scope: !155)
!404 = !DILocation(line: 209, column: 53, scope: !405)
!405 = distinct !DILexicalBlock(scope: !400, file: !1, line: 208, column: 60)
!406 = !DILocation(line: 209, column: 51, scope: !405)
!407 = !DILocation(line: 210, column: 47, scope: !405)
!408 = !DILocation(line: 1000, column: 10, scope: !318, inlinedAt: !409)
!409 = distinct !DILocation(line: 212, column: 49, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !1, line: 211, column: 49)
!411 = distinct !DILexicalBlock(scope: !400, file: !1, line: 210, column: 54)
!412 = !DILocation(line: 216, column: 68, scope: !413)
!413 = distinct !DILexicalBlock(scope: !155, file: !1, line: 215, column: 47)
!414 = !DILocation(line: 217, column: 88, scope: !413)
!415 = !DILocation(line: 218, column: 70, scope: !413)
!416 = !DILocation(line: 219, column: 70, scope: !413)
!417 = !DILocation(line: 218, column: 56, scope: !413)
!418 = !DILocation(line: 218, column: 54, scope: !413)
!419 = !DILocation(line: 221, column: 47, scope: !155)
!420 = !DILocation(line: 223, column: 63, scope: !155)
!421 = !DILocation(line: 224, column: 51, scope: !422)
!422 = distinct !DILexicalBlock(scope: !155, file: !1, line: 224, column: 51)
!423 = !DILocation(line: 224, column: 56, scope: !422)
!424 = !DILocation(line: 224, column: 53, scope: !422)
!425 = !DILocation(line: 224, column: 51, scope: !155)
!426 = !DILocation(line: 225, column: 53, scope: !427)
!427 = distinct !DILexicalBlock(scope: !422, file: !1, line: 224, column: 60)
!428 = !DILocation(line: 225, column: 51, scope: !427)
!429 = !DILocation(line: 226, column: 47, scope: !427)
!430 = !DILocation(line: 1000, column: 10, scope: !318, inlinedAt: !431)
!431 = distinct !DILocation(line: 228, column: 49, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !1, line: 227, column: 49)
!433 = distinct !DILexicalBlock(scope: !422, file: !1, line: 226, column: 54)
!434 = !DILocation(line: 232, column: 68, scope: !435)
!435 = distinct !DILexicalBlock(scope: !155, file: !1, line: 231, column: 47)
!436 = !DILocation(line: 233, column: 88, scope: !435)
!437 = !DILocation(line: 234, column: 61, scope: !435)
!438 = !DILocation(line: 234, column: 81, scope: !435)
!439 = !DILocation(line: 234, column: 47, scope: !435)
!440 = !DILocation(line: 235, column: 54, scope: !435)
!441 = !DILocation(line: 237, column: 47, scope: !155)
!442 = !DILocation(line: 239, column: 51, scope: !443)
!443 = distinct !DILexicalBlock(scope: !155, file: !1, line: 239, column: 51)
!444 = !DILocation(line: 239, column: 56, scope: !443)
!445 = !DILocation(line: 239, column: 53, scope: !443)
!446 = !DILocation(line: 239, column: 51, scope: !155)
!447 = !DILocation(line: 240, column: 53, scope: !448)
!448 = distinct !DILexicalBlock(scope: !443, file: !1, line: 239, column: 60)
!449 = !DILocation(line: 240, column: 51, scope: !448)
!450 = !DILocation(line: 241, column: 47, scope: !448)
!451 = !DILocation(line: 1000, column: 10, scope: !318, inlinedAt: !452)
!452 = distinct !DILocation(line: 243, column: 49, scope: !453)
!453 = distinct !DILexicalBlock(scope: !454, file: !1, line: 242, column: 49)
!454 = distinct !DILexicalBlock(scope: !443, file: !1, line: 241, column: 54)
!455 = !DILocation(line: 247, column: 68, scope: !456)
!456 = distinct !DILexicalBlock(scope: !155, file: !1, line: 246, column: 47)
!457 = !DILocation(line: 248, column: 88, scope: !456)
!458 = !DILocation(line: 249, column: 70, scope: !456)
!459 = !DILocation(line: 250, column: 70, scope: !456)
!460 = !DILocation(line: 249, column: 56, scope: !456)
!461 = !DILocation(line: 249, column: 54, scope: !456)
!462 = !DILocation(line: 252, column: 47, scope: !155)
!463 = !DILocation(line: 253, column: 52, scope: !156)
!464 = !DILocation(line: 277, column: 11, scope: !143)
!465 = !DILocation(line: 277, column: 3, scope: !143)
!466 = !DILocation(line: 999, column: 3, scope: !36)
!467 = !DILocation(line: 1000, column: 10, scope: !318)
!468 = !DILocation(line: 1003, column: 1, scope: !36)
!469 = !DILocation(line: 541, column: 29, scope: !21)
!470 = !DILocation(line: 541, column: 39, scope: !21)
!471 = !DILocation(line: 545, column: 7, scope: !384)
!472 = !DILocation(line: 545, column: 12, scope: !384)
!473 = !DILocation(line: 545, column: 9, scope: !384)
!474 = !DILocation(line: 545, column: 7, scope: !385)
!475 = !DILocation(line: 546, column: 9, scope: !394)
!476 = !DILocation(line: 546, column: 7, scope: !394)
!477 = !DILocation(line: 547, column: 3, scope: !394)
!478 = !DILocation(line: 1000, column: 10, scope: !318, inlinedAt: !479)
!479 = distinct !DILocation(line: 549, column: 5, scope: !391)
!480 = !DILocation(line: 552, column: 3, scope: !385)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !16, file: !1, line: 281, type: !15)
!482 = !DILocation(line: 281, column: 7, scope: !16)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp", scope: !16, file: !1, line: 282, type: !15)
!484 = !DILocation(line: 282, column: 7, scope: !16)
!485 = !DILocation(line: 282, column: 13, scope: !16)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pirp", scope: !16, file: !1, line: 283, type: !15)
!487 = !DILocation(line: 283, column: 7, scope: !16)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pirp__IoStatus__Status", scope: !16, file: !1, line: 284, type: !15)
!489 = !DILocation(line: 284, column: 7, scope: !16)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp_choice", scope: !16, file: !1, line: 285, type: !15)
!491 = !DILocation(line: 285, column: 7, scope: !16)
!492 = !DILocation(line: 285, column: 20, scope: !16)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devobj", scope: !16, file: !1, line: 286, type: !15)
!494 = !DILocation(line: 286, column: 7, scope: !16)
!495 = !DILocation(line: 286, column: 16, scope: !16)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp8", scope: !16, file: !1, line: 287, type: !15)
!497 = !DILocation(line: 287, column: 7, scope: !16)
!498 = !DILocation(line: 289, column: 14, scope: !16)
!499 = !DILocation(line: 290, column: 13, scope: !16)
!500 = !DILocation(line: 291, column: 20, scope: !16)
!501 = !DILocation(line: 292, column: 5, scope: !16)
!502 = !DILocation(line: 293, column: 12, scope: !16)
!503 = !DILocation(line: 294, column: 6, scope: !16)
!504 = !DILocation(line: 295, column: 6, scope: !16)
!505 = !DILocation(line: 296, column: 9, scope: !16)
!506 = !DILocation(line: 297, column: 8, scope: !16)
!507 = !DILocation(line: 298, column: 8, scope: !16)
!508 = !DILocation(line: 299, column: 8, scope: !16)
!509 = !DILocation(line: 300, column: 7, scope: !16)
!510 = !DILocation(line: 301, column: 10, scope: !16)
!511 = !DILocation(line: 302, column: 12, scope: !16)
!512 = !DILocation(line: 303, column: 18, scope: !16)
!513 = !DILocation(line: 304, column: 21, scope: !16)
!514 = !DILocation(line: 305, column: 18, scope: !16)
!515 = !DILocation(line: 306, column: 13, scope: !16)
!516 = !DILocation(line: 307, column: 12, scope: !16)
!517 = !DILocation(line: 311, column: 10, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !1, line: 310, column: 3)
!519 = distinct !DILexicalBlock(scope: !16, file: !1, line: 309, column: 3)
!520 = !DILocation(line: 312, column: 10, scope: !518)
!521 = !DILocation(line: 312, column: 8, scope: !518)
!522 = !DILocation(line: 48, column: 12, scope: !72, inlinedAt: !523)
!523 = distinct !DILocation(line: 313, column: 3, scope: !518)
!524 = !DILocation(line: 49, column: 6, scope: !72, inlinedAt: !523)
!525 = !DILocation(line: 50, column: 6, scope: !72, inlinedAt: !523)
!526 = !DILocation(line: 51, column: 9, scope: !72, inlinedAt: !523)
!527 = !DILocation(line: 52, column: 9, scope: !72, inlinedAt: !523)
!528 = !DILocation(line: 53, column: 8, scope: !72, inlinedAt: !523)
!529 = !DILocation(line: 54, column: 8, scope: !72, inlinedAt: !523)
!530 = !DILocation(line: 55, column: 7, scope: !72, inlinedAt: !523)
!531 = !DILocation(line: 56, column: 7, scope: !72, inlinedAt: !523)
!532 = !DILocation(line: 56, column: 5, scope: !72, inlinedAt: !523)
!533 = !DILocation(line: 57, column: 10, scope: !72, inlinedAt: !523)
!534 = !DILocation(line: 58, column: 12, scope: !72, inlinedAt: !523)
!535 = !DILocation(line: 59, column: 18, scope: !72, inlinedAt: !523)
!536 = !DILocation(line: 60, column: 21, scope: !72, inlinedAt: !523)
!537 = !DILocation(line: 61, column: 18, scope: !72, inlinedAt: !523)
!538 = !DILocation(line: 62, column: 13, scope: !72, inlinedAt: !523)
!539 = !DILocation(line: 315, column: 7, scope: !540)
!540 = distinct !DILexicalBlock(scope: !519, file: !1, line: 315, column: 7)
!541 = !DILocation(line: 315, column: 14, scope: !540)
!542 = !DILocation(line: 315, column: 7, scope: !519)
!543 = !DILocation(line: 316, column: 9, scope: !544)
!544 = distinct !DILexicalBlock(scope: !540, file: !1, line: 315, column: 20)
!545 = !DILocation(line: 316, column: 7, scope: !544)
!546 = !DILocation(line: 317, column: 15, scope: !544)
!547 = !DILocation(line: 318, column: 22, scope: !544)
!548 = !DILocation(line: 318, column: 20, scope: !544)
!549 = !DILocation(line: 319, column: 25, scope: !544)
!550 = !DILocation(line: 319, column: 23, scope: !544)
!551 = !DILocation(line: 320, column: 22, scope: !544)
!552 = !DILocation(line: 320, column: 20, scope: !544)
!553 = !DILocation(line: 321, column: 14, scope: !544)
!554 = !DILocation(line: 321, column: 12, scope: !544)
!555 = !DILocation(line: 322, column: 28, scope: !544)
!556 = !DILocation(line: 323, column: 14, scope: !544)
!557 = !DILocation(line: 324, column: 9, scope: !558)
!558 = distinct !DILexicalBlock(scope: !544, file: !1, line: 324, column: 9)
!559 = !DILocation(line: 324, column: 20, scope: !558)
!560 = !DILocation(line: 324, column: 9, scope: !544)
!561 = !DILocation(line: 325, column: 30, scope: !562)
!562 = distinct !DILexicalBlock(scope: !558, file: !1, line: 324, column: 26)
!563 = !DILocation(line: 326, column: 16, scope: !562)
!564 = !DILocation(line: 327, column: 5, scope: !562)
!565 = !DILocation(line: 34, column: 7, scope: !62, inlinedAt: !566)
!566 = distinct !DILocation(line: 329, column: 5, scope: !567)
!567 = distinct !DILexicalBlock(scope: !544, file: !1, line: 328, column: 5)
!568 = !DILocation(line: 34, column: 5, scope: !62, inlinedAt: !566)
!569 = !DILocation(line: 35, column: 10, scope: !62, inlinedAt: !566)
!570 = !DILocation(line: 36, column: 12, scope: !62, inlinedAt: !566)
!571 = !DILocation(line: 37, column: 18, scope: !62, inlinedAt: !566)
!572 = !DILocation(line: 38, column: 21, scope: !62, inlinedAt: !566)
!573 = !DILocation(line: 39, column: 18, scope: !62, inlinedAt: !566)
!574 = !DILocation(line: 40, column: 13, scope: !62, inlinedAt: !566)
!575 = !DILocation(line: 332, column: 9, scope: !576)
!576 = distinct !DILexicalBlock(scope: !577, file: !1, line: 332, column: 9)
!577 = distinct !DILexicalBlock(scope: !544, file: !1, line: 331, column: 5)
!578 = !DILocation(line: 332, column: 16, scope: !576)
!579 = !DILocation(line: 332, column: 9, scope: !577)
!580 = !DILocation(line: 333, column: 7, scope: !581)
!581 = distinct !DILexicalBlock(scope: !576, file: !1, line: 332, column: 21)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_1", scope: !544, file: !1, line: 336, type: !15)
!583 = !DILocation(line: 336, column: 9, scope: !544)
!584 = !DILocation(line: 337, column: 17, scope: !544)
!585 = !DILocation(line: 337, column: 15, scope: !544)
!586 = !DILocation(line: 338, column: 9, scope: !587)
!587 = distinct !DILexicalBlock(scope: !544, file: !1, line: 338, column: 9)
!588 = !DILocation(line: 338, column: 19, scope: !587)
!589 = !DILocation(line: 338, column: 9, scope: !544)
!590 = !DILocation(line: 339, column: 7, scope: !591)
!591 = distinct !DILexicalBlock(scope: !587, file: !1, line: 338, column: 25)
!592 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_2", scope: !593, file: !1, line: 341, type: !15)
!593 = distinct !DILexicalBlock(scope: !587, file: !1, line: 340, column: 12)
!594 = !DILocation(line: 341, column: 11, scope: !593)
!595 = !DILocation(line: 342, column: 19, scope: !593)
!596 = !DILocation(line: 342, column: 17, scope: !593)
!597 = !DILocation(line: 343, column: 11, scope: !598)
!598 = distinct !DILexicalBlock(scope: !593, file: !1, line: 343, column: 11)
!599 = !DILocation(line: 343, column: 21, scope: !598)
!600 = !DILocation(line: 343, column: 11, scope: !593)
!601 = !DILocation(line: 344, column: 9, scope: !602)
!602 = distinct !DILexicalBlock(scope: !598, file: !1, line: 343, column: 27)
!603 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_3", scope: !604, file: !1, line: 346, type: !15)
!604 = distinct !DILexicalBlock(scope: !598, file: !1, line: 345, column: 14)
!605 = !DILocation(line: 346, column: 13, scope: !604)
!606 = !DILocation(line: 347, column: 21, scope: !604)
!607 = !DILocation(line: 347, column: 19, scope: !604)
!608 = !DILocation(line: 348, column: 13, scope: !609)
!609 = distinct !DILexicalBlock(scope: !604, file: !1, line: 348, column: 13)
!610 = !DILocation(line: 348, column: 23, scope: !609)
!611 = !DILocation(line: 348, column: 13, scope: !604)
!612 = !DILocation(line: 349, column: 11, scope: !613)
!613 = distinct !DILexicalBlock(scope: !609, file: !1, line: 348, column: 29)
!614 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_4", scope: !615, file: !1, line: 351, type: !15)
!615 = distinct !DILexicalBlock(scope: !609, file: !1, line: 350, column: 16)
!616 = !DILocation(line: 351, column: 12, scope: !615)
!617 = !DILocation(line: 352, column: 23, scope: !615)
!618 = !DILocation(line: 352, column: 21, scope: !615)
!619 = !DILocation(line: 353, column: 15, scope: !620)
!620 = distinct !DILexicalBlock(scope: !615, file: !1, line: 353, column: 15)
!621 = !DILocation(line: 353, column: 25, scope: !620)
!622 = !DILocation(line: 353, column: 15, scope: !615)
!623 = !DILocation(line: 354, column: 13, scope: !624)
!624 = distinct !DILexicalBlock(scope: !620, file: !1, line: 353, column: 31)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_5", scope: !626, file: !1, line: 356, type: !15)
!626 = distinct !DILexicalBlock(scope: !620, file: !1, line: 355, column: 18)
!627 = !DILocation(line: 356, column: 14, scope: !626)
!628 = !DILocation(line: 357, column: 25, scope: !626)
!629 = !DILocation(line: 357, column: 23, scope: !626)
!630 = !DILocation(line: 358, column: 17, scope: !631)
!631 = distinct !DILexicalBlock(scope: !626, file: !1, line: 358, column: 17)
!632 = !DILocation(line: 358, column: 27, scope: !631)
!633 = !DILocation(line: 358, column: 17, scope: !626)
!634 = !DILocation(line: 359, column: 15, scope: !635)
!635 = distinct !DILexicalBlock(scope: !631, file: !1, line: 358, column: 33)
!636 = !DILocation(line: 361, column: 15, scope: !637)
!637 = distinct !DILexicalBlock(scope: !631, file: !1, line: 360, column: 20)
!638 = !DILocation(line: 362, column: 19, scope: !637)
!639 = !DILocation(line: 362, column: 22, scope: !640)
!640 = distinct !DILexicalBlock(scope: !637, file: !1, line: 362, column: 19)
!641 = !DILocation(line: 365, column: 47, scope: !642)
!642 = distinct !DILexicalBlock(scope: !643, file: !1, line: 364, column: 17)
!643 = distinct !DILexicalBlock(scope: !640, file: !1, line: 362, column: 22)
!644 = !DILocation(line: 365, column: 55, scope: !642)
!645 = !DILocation(line: 365, column: 26, scope: !642)
!646 = !DILocation(line: 365, column: 24, scope: !642)
!647 = !DILocation(line: 367, column: 17, scope: !643)
!648 = !DILocation(line: 370, column: 47, scope: !649)
!649 = distinct !DILexicalBlock(scope: !643, file: !1, line: 369, column: 17)
!650 = !DILocation(line: 370, column: 55, scope: !649)
!651 = !DILocation(line: 370, column: 26, scope: !649)
!652 = !DILocation(line: 370, column: 24, scope: !649)
!653 = !DILocation(line: 372, column: 17, scope: !643)
!654 = !DILocation(line: 375, column: 39, scope: !655)
!655 = distinct !DILexicalBlock(scope: !643, file: !1, line: 374, column: 17)
!656 = !DILocation(line: 375, column: 47, scope: !655)
!657 = !DILocation(line: 375, column: 26, scope: !655)
!658 = !DILocation(line: 375, column: 24, scope: !655)
!659 = !DILocation(line: 377, column: 17, scope: !643)
!660 = !DILocation(line: 380, column: 41, scope: !661)
!661 = distinct !DILexicalBlock(scope: !643, file: !1, line: 379, column: 17)
!662 = !DILocation(line: 380, column: 49, scope: !661)
!663 = !DILocation(line: 380, column: 26, scope: !661)
!664 = !DILocation(line: 380, column: 24, scope: !661)
!665 = !DILocation(line: 382, column: 17, scope: !643)
!666 = !DILocation(line: 385, column: 47, scope: !667)
!667 = distinct !DILexicalBlock(scope: !643, file: !1, line: 384, column: 17)
!668 = !DILocation(line: 385, column: 55, scope: !667)
!669 = !DILocation(line: 385, column: 26, scope: !667)
!670 = !DILocation(line: 385, column: 24, scope: !667)
!671 = !DILocation(line: 387, column: 17, scope: !643)
!672 = !DILocation(line: 389, column: 17, scope: !643)
!673 = !DILocation(line: 390, column: 22, scope: !640)
!674 = !DILocation(line: 398, column: 3, scope: !544)
!675 = !DILocation(line: 399, column: 7, scope: !676)
!676 = distinct !DILexicalBlock(scope: !519, file: !1, line: 399, column: 7)
!677 = !DILocation(line: 399, column: 14, scope: !676)
!678 = !DILocation(line: 399, column: 7, scope: !519)
!679 = !DILocation(line: 400, column: 9, scope: !680)
!680 = distinct !DILexicalBlock(scope: !681, file: !1, line: 400, column: 9)
!681 = distinct !DILexicalBlock(scope: !676, file: !1, line: 399, column: 20)
!682 = !DILocation(line: 400, column: 14, scope: !680)
!683 = !DILocation(line: 400, column: 11, scope: !680)
!684 = !DILocation(line: 400, column: 9, scope: !681)
!685 = !DILocation(line: 401, column: 11, scope: !686)
!686 = distinct !DILexicalBlock(scope: !680, file: !1, line: 400, column: 18)
!687 = !DILocation(line: 401, column: 9, scope: !686)
!688 = !DILocation(line: 402, column: 5, scope: !686)
!689 = !DILocation(line: 403, column: 7, scope: !690)
!690 = distinct !DILexicalBlock(scope: !680, file: !1, line: 402, column: 12)
!691 = !DILocation(line: 405, column: 3, scope: !681)
!692 = !DILocation(line: 405, column: 10, scope: !676)
!693 = !DILocation(line: 407, column: 9, scope: !694)
!694 = distinct !DILexicalBlock(scope: !695, file: !1, line: 407, column: 9)
!695 = distinct !DILexicalBlock(scope: !676, file: !1, line: 405, column: 10)
!696 = !DILocation(line: 407, column: 16, scope: !694)
!697 = !DILocation(line: 407, column: 9, scope: !695)
!698 = !DILocation(line: 408, column: 11, scope: !699)
!699 = distinct !DILexicalBlock(scope: !700, file: !1, line: 408, column: 11)
!700 = distinct !DILexicalBlock(scope: !694, file: !1, line: 407, column: 22)
!701 = !DILocation(line: 408, column: 16, scope: !699)
!702 = !DILocation(line: 408, column: 13, scope: !699)
!703 = !DILocation(line: 408, column: 11, scope: !700)
!704 = !DILocation(line: 409, column: 13, scope: !705)
!705 = distinct !DILexicalBlock(scope: !699, file: !1, line: 408, column: 22)
!706 = !DILocation(line: 409, column: 11, scope: !705)
!707 = !DILocation(line: 410, column: 7, scope: !705)
!708 = !DILocation(line: 411, column: 9, scope: !709)
!709 = distinct !DILexicalBlock(scope: !699, file: !1, line: 410, column: 14)
!710 = !DILocation(line: 413, column: 5, scope: !700)
!711 = !DILocation(line: 413, column: 12, scope: !694)
!712 = !DILocation(line: 415, column: 11, scope: !713)
!713 = distinct !DILexicalBlock(scope: !714, file: !1, line: 415, column: 11)
!714 = distinct !DILexicalBlock(scope: !694, file: !1, line: 413, column: 12)
!715 = !DILocation(line: 415, column: 16, scope: !713)
!716 = !DILocation(line: 415, column: 13, scope: !713)
!717 = !DILocation(line: 415, column: 11, scope: !714)
!718 = !DILocation(line: 416, column: 13, scope: !719)
!719 = distinct !DILexicalBlock(scope: !720, file: !1, line: 416, column: 13)
!720 = distinct !DILexicalBlock(scope: !713, file: !1, line: 415, column: 26)
!721 = !DILocation(line: 416, column: 20, scope: !719)
!722 = !DILocation(line: 416, column: 13, scope: !720)
!723 = !DILocation(line: 417, column: 15, scope: !724)
!724 = distinct !DILexicalBlock(scope: !725, file: !1, line: 417, column: 15)
!725 = distinct !DILexicalBlock(scope: !719, file: !1, line: 416, column: 27)
!726 = !DILocation(line: 417, column: 20, scope: !724)
!727 = !DILocation(line: 417, column: 17, scope: !724)
!728 = !DILocation(line: 417, column: 15, scope: !725)
!729 = !DILocation(line: 418, column: 17, scope: !730)
!730 = distinct !DILexicalBlock(scope: !731, file: !1, line: 418, column: 17)
!731 = distinct !DILexicalBlock(scope: !724, file: !1, line: 417, column: 27)
!732 = !DILocation(line: 418, column: 22, scope: !730)
!733 = !DILocation(line: 418, column: 19, scope: !730)
!734 = !DILocation(line: 418, column: 17, scope: !731)
!735 = !DILocation(line: 419, column: 19, scope: !736)
!736 = distinct !DILexicalBlock(scope: !737, file: !1, line: 419, column: 19)
!737 = distinct !DILexicalBlock(scope: !730, file: !1, line: 418, column: 27)
!738 = !DILocation(line: 419, column: 24, scope: !736)
!739 = !DILocation(line: 419, column: 21, scope: !736)
!740 = !DILocation(line: 419, column: 19, scope: !737)
!741 = !DILocation(line: 420, column: 17, scope: !742)
!742 = distinct !DILexicalBlock(scope: !736, file: !1, line: 419, column: 28)
!743 = !DILocation(line: 422, column: 13, scope: !737)
!744 = !DILocation(line: 423, column: 15, scope: !745)
!745 = distinct !DILexicalBlock(scope: !730, file: !1, line: 422, column: 20)
!746 = !DILocation(line: 425, column: 11, scope: !731)
!747 = !DILocation(line: 425, column: 18, scope: !724)
!748 = !DILocation(line: 427, column: 17, scope: !749)
!749 = distinct !DILexicalBlock(scope: !750, file: !1, line: 427, column: 17)
!750 = distinct !DILexicalBlock(scope: !724, file: !1, line: 425, column: 18)
!751 = !DILocation(line: 427, column: 24, scope: !749)
!752 = !DILocation(line: 427, column: 17, scope: !750)
!753 = !DILocation(line: 428, column: 19, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !1, line: 428, column: 19)
!755 = distinct !DILexicalBlock(scope: !749, file: !1, line: 427, column: 30)
!756 = !DILocation(line: 428, column: 26, scope: !754)
!757 = !DILocation(line: 428, column: 19, scope: !755)
!758 = !DILocation(line: 1000, column: 10, scope: !318, inlinedAt: !759)
!759 = distinct !DILocation(line: 430, column: 17, scope: !760)
!760 = distinct !DILexicalBlock(scope: !761, file: !1, line: 429, column: 17)
!761 = distinct !DILexicalBlock(scope: !754, file: !1, line: 428, column: 34)
!762 = !DILocation(line: 432, column: 15, scope: !761)
!763 = !DILocation(line: 433, column: 13, scope: !755)
!764 = !DILocation(line: 434, column: 19, scope: !765)
!765 = distinct !DILexicalBlock(scope: !766, file: !1, line: 434, column: 19)
!766 = distinct !DILexicalBlock(scope: !749, file: !1, line: 433, column: 20)
!767 = !DILocation(line: 434, column: 24, scope: !765)
!768 = !DILocation(line: 434, column: 21, scope: !765)
!769 = !DILocation(line: 434, column: 19, scope: !766)
!770 = !DILocation(line: 435, column: 21, scope: !771)
!771 = distinct !DILexicalBlock(scope: !772, file: !1, line: 435, column: 21)
!772 = distinct !DILexicalBlock(scope: !765, file: !1, line: 434, column: 28)
!773 = !DILocation(line: 435, column: 28, scope: !771)
!774 = !DILocation(line: 435, column: 21, scope: !772)
!775 = !DILocation(line: 437, column: 17, scope: !776)
!776 = distinct !DILexicalBlock(scope: !771, file: !1, line: 435, column: 36)
!777 = !DILocation(line: 438, column: 15, scope: !772)
!778 = !DILocation(line: 439, column: 21, scope: !779)
!779 = distinct !DILexicalBlock(scope: !780, file: !1, line: 439, column: 21)
!780 = distinct !DILexicalBlock(scope: !765, file: !1, line: 438, column: 22)
!781 = !DILocation(line: 439, column: 31, scope: !779)
!782 = !DILocation(line: 439, column: 28, scope: !779)
!783 = !DILocation(line: 439, column: 21, scope: !780)
!784 = !DILocation(line: 1000, column: 10, scope: !318, inlinedAt: !785)
!785 = distinct !DILocation(line: 440, column: 20, scope: !786)
!786 = distinct !DILexicalBlock(scope: !779, file: !1, line: 439, column: 50)
!787 = !DILocation(line: 441, column: 17, scope: !786)
!788 = !DILocation(line: 447, column: 9, scope: !725)
!789 = !DILocation(line: 448, column: 7, scope: !720)
!790 = !DILocation(line: 451, column: 11, scope: !519)
!791 = !DILocation(line: 451, column: 3, scope: !519)
!792 = !DILocation(line: 453, column: 1, scope: !16)
!793 = !DILocation(line: 458, column: 7, scope: !794)
!794 = distinct !DILexicalBlock(scope: !795, file: !1, line: 458, column: 7)
!795 = distinct !DILexicalBlock(scope: !19, file: !1, line: 457, column: 3)
!796 = !DILocation(line: 458, column: 12, scope: !794)
!797 = !DILocation(line: 458, column: 9, scope: !794)
!798 = !DILocation(line: 458, column: 7, scope: !795)
!799 = !DILocation(line: 459, column: 9, scope: !800)
!800 = distinct !DILexicalBlock(scope: !794, file: !1, line: 458, column: 16)
!801 = !DILocation(line: 459, column: 7, scope: !800)
!802 = !DILocation(line: 460, column: 3, scope: !800)
!803 = !DILocation(line: 1000, column: 10, scope: !318, inlinedAt: !804)
!804 = distinct !DILocation(line: 462, column: 5, scope: !805)
!805 = distinct !DILexicalBlock(scope: !806, file: !1, line: 461, column: 5)
!806 = distinct !DILexicalBlock(scope: !794, file: !1, line: 460, column: 10)
!807 = !DILocation(line: 465, column: 3, scope: !795)
!808 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !20, file: !1, line: 468, type: !15)
!809 = !DILocation(line: 468, column: 23, scope: !20)
!810 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !20, file: !1, line: 468, type: !15)
!811 = !DILocation(line: 468, column: 42, scope: !20)
!812 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "returnVal2", scope: !20, file: !1, line: 470, type: !15)
!813 = !DILocation(line: 470, column: 7, scope: !20)
!814 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compRetStatus", scope: !20, file: !1, line: 471, type: !15)
!815 = !DILocation(line: 471, column: 7, scope: !20)
!816 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lcontext", scope: !20, file: !1, line: 472, type: !15)
!817 = !DILocation(line: 472, column: 7, scope: !20)
!818 = !DILocation(line: 472, column: 18, scope: !20)
!819 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp7", scope: !20, file: !1, line: 473, type: !5)
!820 = !DILocation(line: 473, column: 13, scope: !20)
!821 = !DILocation(line: 476, column: 7, scope: !822)
!822 = distinct !DILexicalBlock(scope: !823, file: !1, line: 476, column: 7)
!823 = distinct !DILexicalBlock(scope: !20, file: !1, line: 475, column: 3)
!824 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 1, scope: !24, file: !1, line: 555, type: !15)
!825 = !DILocation(line: 555, column: 20, scope: !24, inlinedAt: !826)
!826 = distinct !DILocation(line: 611, column: 3, scope: !827, inlinedAt: !829)
!827 = distinct !DILexicalBlock(scope: !828, file: !1, line: 609, column: 3)
!828 = distinct !DILexicalBlock(scope: !30, file: !1, line: 608, column: 3)
!829 = distinct !DILocation(line: 478, column: 21, scope: !830)
!830 = distinct !DILexicalBlock(scope: !831, file: !1, line: 477, column: 5)
!831 = distinct !DILexicalBlock(scope: !822, file: !1, line: 476, column: 23)
!832 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Increment", arg: 2, scope: !24, file: !1, line: 555, type: !15)
!833 = !DILocation(line: 555, column: 32, scope: !24, inlinedAt: !826)
!834 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Wait", arg: 3, scope: !24, file: !1, line: 555, type: !15)
!835 = !DILocation(line: 555, column: 48, scope: !24, inlinedAt: !826)
!836 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !24, file: !1, line: 556, type: !15)
!837 = !DILocation(line: 556, column: 7, scope: !24, inlinedAt: !826)
!838 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !30, file: !1, line: 605, type: !15)
!839 = !DILocation(line: 605, column: 27, scope: !30, inlinedAt: !829)
!840 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !30, file: !1, line: 605, type: !15)
!841 = !DILocation(line: 605, column: 46, scope: !30, inlinedAt: !829)
!842 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 3, scope: !30, file: !1, line: 605, type: !15)
!843 = !DILocation(line: 605, column: 56, scope: !30, inlinedAt: !829)
!844 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "event", scope: !30, file: !1, line: 606, type: !15)
!845 = !DILocation(line: 606, column: 7, scope: !30, inlinedAt: !829)
!846 = !DILocation(line: 476, column: 7, scope: !823)
!847 = !DILocation(line: 478, column: 39, scope: !830)
!848 = !DILocation(line: 478, column: 53, scope: !830)
!849 = !DILocation(line: 478, column: 58, scope: !830)
!850 = !DILocation(line: 478, column: 21, scope: !830)
!851 = !DILocation(line: 610, column: 11, scope: !827, inlinedAt: !829)
!852 = !DILocation(line: 610, column: 9, scope: !827, inlinedAt: !829)
!853 = !DILocation(line: 611, column: 14, scope: !827, inlinedAt: !829)
!854 = !DILocation(line: 611, column: 3, scope: !827, inlinedAt: !829)
!855 = !DILocation(line: 556, column: 11, scope: !24, inlinedAt: !826)
!856 = !DILocation(line: 559, column: 18, scope: !857, inlinedAt: !826)
!857 = distinct !DILexicalBlock(scope: !24, file: !1, line: 558, column: 3)
!858 = !DILocation(line: 560, column: 11, scope: !857, inlinedAt: !826)
!859 = !DILocation(line: 560, column: 3, scope: !857, inlinedAt: !826)
!860 = !DILocation(line: 613, column: 3, scope: !828, inlinedAt: !829)
!861 = !DILocation(line: 478, column: 19, scope: !830)
!862 = !DILocation(line: 481, column: 30, scope: !863)
!863 = distinct !DILexicalBlock(scope: !831, file: !1, line: 480, column: 5)
!864 = !DILocation(line: 481, column: 18, scope: !863)
!865 = !DILocation(line: 481, column: 16, scope: !863)
!866 = !DILocation(line: 482, column: 9, scope: !867)
!867 = distinct !DILexicalBlock(scope: !863, file: !1, line: 482, column: 9)
!868 = !DILocation(line: 482, column: 20, scope: !867)
!869 = !DILocation(line: 482, column: 9, scope: !863)
!870 = !DILocation(line: 458, column: 7, scope: !794, inlinedAt: !871)
!871 = distinct !DILocation(line: 484, column: 7, scope: !872)
!872 = distinct !DILexicalBlock(scope: !873, file: !1, line: 483, column: 7)
!873 = distinct !DILexicalBlock(scope: !867, file: !1, line: 482, column: 36)
!874 = !DILocation(line: 458, column: 12, scope: !794, inlinedAt: !871)
!875 = !DILocation(line: 458, column: 9, scope: !794, inlinedAt: !871)
!876 = !DILocation(line: 458, column: 7, scope: !795, inlinedAt: !871)
!877 = !DILocation(line: 1000, column: 10, scope: !318, inlinedAt: !878)
!878 = distinct !DILocation(line: 462, column: 5, scope: !805, inlinedAt: !871)
!879 = !DILocation(line: 459, column: 9, scope: !800, inlinedAt: !871)
!880 = !DILocation(line: 459, column: 7, scope: !800, inlinedAt: !871)
!881 = !DILocation(line: 486, column: 5, scope: !873)
!882 = !DILocation(line: 488, column: 3, scope: !831)
!883 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_6", scope: !823, file: !1, line: 489, type: !15)
!884 = !DILocation(line: 489, column: 7, scope: !823)
!885 = !DILocation(line: 490, column: 15, scope: !823)
!886 = !DILocation(line: 490, column: 13, scope: !823)
!887 = !DILocation(line: 491, column: 7, scope: !888)
!888 = distinct !DILexicalBlock(scope: !823, file: !1, line: 491, column: 7)
!889 = !DILocation(line: 491, column: 17, scope: !888)
!890 = !DILocation(line: 491, column: 7, scope: !823)
!891 = !DILocation(line: 492, column: 5, scope: !892)
!892 = distinct !DILexicalBlock(scope: !888, file: !1, line: 491, column: 23)
!893 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_7", scope: !894, file: !1, line: 494, type: !15)
!894 = distinct !DILexicalBlock(scope: !888, file: !1, line: 493, column: 10)
!895 = !DILocation(line: 494, column: 9, scope: !894)
!896 = !DILocation(line: 495, column: 17, scope: !894)
!897 = !DILocation(line: 495, column: 15, scope: !894)
!898 = !DILocation(line: 496, column: 9, scope: !899)
!899 = distinct !DILexicalBlock(scope: !894, file: !1, line: 496, column: 9)
!900 = !DILocation(line: 496, column: 19, scope: !899)
!901 = !DILocation(line: 496, column: 9, scope: !894)
!902 = !DILocation(line: 497, column: 7, scope: !903)
!903 = distinct !DILexicalBlock(scope: !899, file: !1, line: 496, column: 25)
!904 = !DILocation(line: 499, column: 7, scope: !905)
!905 = distinct !DILexicalBlock(scope: !899, file: !1, line: 498, column: 12)
!906 = !DILocation(line: 500, column: 11, scope: !905)
!907 = !DILocation(line: 500, column: 14, scope: !908)
!908 = distinct !DILexicalBlock(scope: !905, file: !1, line: 500, column: 11)
!909 = !DILocation(line: 502, column: 20, scope: !910)
!910 = distinct !DILexicalBlock(scope: !908, file: !1, line: 500, column: 14)
!911 = !DILocation(line: 503, column: 9, scope: !910)
!912 = !DILocation(line: 505, column: 20, scope: !910)
!913 = !DILocation(line: 506, column: 9, scope: !910)
!914 = !DILocation(line: 508, column: 20, scope: !910)
!915 = !DILocation(line: 509, column: 9, scope: !910)
!916 = !DILocation(line: 510, column: 14, scope: !908)
!917 = !DILocation(line: 515, column: 7, scope: !918)
!918 = distinct !DILexicalBlock(scope: !823, file: !1, line: 515, column: 7)
!919 = !DILocation(line: 515, column: 12, scope: !918)
!920 = !DILocation(line: 515, column: 9, scope: !918)
!921 = !DILocation(line: 515, column: 7, scope: !823)
!922 = !DILocation(line: 516, column: 9, scope: !923)
!923 = distinct !DILexicalBlock(scope: !918, file: !1, line: 515, column: 16)
!924 = !DILocation(line: 516, column: 7, scope: !923)
!925 = !DILocation(line: 517, column: 25, scope: !923)
!926 = !DILocation(line: 517, column: 23, scope: !923)
!927 = !DILocation(line: 518, column: 3, scope: !923)
!928 = !DILocation(line: 519, column: 9, scope: !929)
!929 = distinct !DILexicalBlock(scope: !930, file: !1, line: 519, column: 9)
!930 = distinct !DILexicalBlock(scope: !918, file: !1, line: 518, column: 10)
!931 = !DILocation(line: 519, column: 14, scope: !929)
!932 = !DILocation(line: 519, column: 11, scope: !929)
!933 = !DILocation(line: 519, column: 9, scope: !930)
!934 = !DILocation(line: 520, column: 11, scope: !935)
!935 = distinct !DILexicalBlock(scope: !936, file: !1, line: 520, column: 11)
!936 = distinct !DILexicalBlock(scope: !929, file: !1, line: 519, column: 20)
!937 = !DILocation(line: 520, column: 22, scope: !935)
!938 = !DILocation(line: 520, column: 11, scope: !936)
!939 = !DILocation(line: 521, column: 13, scope: !940)
!940 = distinct !DILexicalBlock(scope: !935, file: !1, line: 520, column: 30)
!941 = !DILocation(line: 521, column: 11, scope: !940)
!942 = !DILocation(line: 522, column: 29, scope: !940)
!943 = !DILocation(line: 522, column: 27, scope: !940)
!944 = !DILocation(line: 523, column: 7, scope: !940)
!945 = !DILocation(line: 524, column: 13, scope: !946)
!946 = distinct !DILexicalBlock(scope: !935, file: !1, line: 523, column: 14)
!947 = !DILocation(line: 524, column: 11, scope: !946)
!948 = !DILocation(line: 525, column: 29, scope: !946)
!949 = !DILocation(line: 525, column: 27, scope: !946)
!950 = !DILocation(line: 527, column: 5, scope: !936)
!951 = !DILocation(line: 528, column: 11, scope: !952)
!952 = distinct !DILexicalBlock(scope: !953, file: !1, line: 528, column: 11)
!953 = distinct !DILexicalBlock(scope: !929, file: !1, line: 527, column: 12)
!954 = !DILocation(line: 528, column: 16, scope: !952)
!955 = !DILocation(line: 528, column: 13, scope: !952)
!956 = !DILocation(line: 528, column: 11, scope: !953)
!957 = !DILocation(line: 529, column: 13, scope: !958)
!958 = distinct !DILexicalBlock(scope: !952, file: !1, line: 528, column: 23)
!959 = !DILocation(line: 529, column: 11, scope: !958)
!960 = !DILocation(line: 530, column: 29, scope: !958)
!961 = !DILocation(line: 530, column: 27, scope: !958)
!962 = !DILocation(line: 531, column: 7, scope: !958)
!963 = !DILocation(line: 1000, column: 10, scope: !318, inlinedAt: !964)
!964 = distinct !DILocation(line: 533, column: 9, scope: !965)
!965 = distinct !DILexicalBlock(scope: !966, file: !1, line: 532, column: 9)
!966 = distinct !DILexicalBlock(scope: !952, file: !1, line: 531, column: 14)
!967 = !DILocation(line: 538, column: 11, scope: !823)
!968 = !DILocation(line: 538, column: 3, scope: !823)
!969 = !DILocation(line: 555, column: 20, scope: !24)
!970 = !DILocation(line: 555, column: 32, scope: !24)
!971 = !DILocation(line: 555, column: 48, scope: !24)
!972 = !DILocation(line: 556, column: 7, scope: !24)
!973 = !DILocation(line: 556, column: 11, scope: !24)
!974 = !DILocation(line: 559, column: 18, scope: !857)
!975 = !DILocation(line: 560, column: 11, scope: !857)
!976 = !DILocation(line: 560, column: 3, scope: !857)
!977 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Object", arg: 1, scope: !27, file: !1, line: 563, type: !15)
!978 = !DILocation(line: 563, column: 31, scope: !27)
!979 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitReason", arg: 2, scope: !27, file: !1, line: 563, type: !15)
!980 = !DILocation(line: 563, column: 44, scope: !27)
!981 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitMode", arg: 3, scope: !27, file: !1, line: 563, type: !15)
!982 = !DILocation(line: 563, column: 61, scope: !27)
!983 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Alertable", arg: 4, scope: !27, file: !1, line: 563, type: !15)
!984 = !DILocation(line: 563, column: 76, scope: !27)
!985 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Timeout", arg: 5, scope: !27, file: !1, line: 564, type: !15)
!986 = !DILocation(line: 564, column: 31, scope: !27)
!987 = !DILocation(line: 568, column: 7, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !1, line: 568, column: 7)
!989 = distinct !DILexicalBlock(scope: !27, file: !1, line: 567, column: 3)
!990 = !DILocation(line: 568, column: 12, scope: !988)
!991 = !DILocation(line: 568, column: 9, scope: !988)
!992 = !DILocation(line: 568, column: 7, scope: !989)
!993 = !DILocation(line: 569, column: 9, scope: !994)
!994 = distinct !DILexicalBlock(scope: !995, file: !1, line: 569, column: 9)
!995 = distinct !DILexicalBlock(scope: !988, file: !1, line: 568, column: 18)
!996 = !DILocation(line: 569, column: 24, scope: !994)
!997 = !DILocation(line: 569, column: 9, scope: !995)
!998 = !DILocation(line: 570, column: 11, scope: !999)
!999 = distinct !DILexicalBlock(scope: !994, file: !1, line: 569, column: 30)
!1000 = !DILocation(line: 570, column: 9, scope: !999)
!1001 = !DILocation(line: 571, column: 22, scope: !999)
!1002 = !DILocation(line: 572, column: 5, scope: !999)
!1003 = !DILocation(line: 573, column: 7, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !994, file: !1, line: 572, column: 12)
!1005 = !DILocation(line: 575, column: 3, scope: !995)
!1006 = !DILocation(line: 575, column: 10, scope: !988)
!1007 = !DILocation(line: 577, column: 9, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 577, column: 9)
!1009 = distinct !DILexicalBlock(scope: !988, file: !1, line: 575, column: 10)
!1010 = !DILocation(line: 577, column: 19, scope: !1008)
!1011 = !DILocation(line: 577, column: 9, scope: !1009)
!1012 = !DILocation(line: 578, column: 11, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1008, file: !1, line: 577, column: 25)
!1014 = !DILocation(line: 578, column: 9, scope: !1013)
!1015 = !DILocation(line: 579, column: 17, scope: !1013)
!1016 = !DILocation(line: 580, column: 5, scope: !1013)
!1017 = !DILocation(line: 581, column: 11, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !1, line: 581, column: 11)
!1019 = distinct !DILexicalBlock(scope: !1008, file: !1, line: 580, column: 12)
!1020 = !DILocation(line: 581, column: 16, scope: !1018)
!1021 = !DILocation(line: 581, column: 13, scope: !1018)
!1022 = !DILocation(line: 581, column: 11, scope: !1019)
!1023 = !DILocation(line: 1000, column: 10, scope: !318, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 583, column: 9, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !1, line: 582, column: 9)
!1026 = distinct !DILexicalBlock(scope: !1018, file: !1, line: 581, column: 22)
!1027 = !DILocation(line: 585, column: 7, scope: !1026)
!1028 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_8", scope: !989, file: !1, line: 588, type: !15)
!1029 = !DILocation(line: 588, column: 7, scope: !989)
!1030 = !DILocation(line: 589, column: 15, scope: !989)
!1031 = !DILocation(line: 589, column: 13, scope: !989)
!1032 = !DILocation(line: 590, column: 7, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !989, file: !1, line: 590, column: 7)
!1034 = !DILocation(line: 590, column: 17, scope: !1033)
!1035 = !DILocation(line: 590, column: 7, scope: !989)
!1036 = !DILocation(line: 591, column: 5, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1033, file: !1, line: 590, column: 23)
!1038 = !DILocation(line: 593, column: 5, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1033, file: !1, line: 592, column: 10)
!1040 = !DILocation(line: 594, column: 9, scope: !1039)
!1041 = !DILocation(line: 594, column: 12, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1039, file: !1, line: 594, column: 9)
!1043 = !DILocation(line: 596, column: 7, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 594, column: 12)
!1045 = !DILocation(line: 598, column: 7, scope: !1044)
!1046 = !DILocation(line: 604, column: 1, scope: !27)
!1047 = !DILocation(line: 605, column: 27, scope: !30)
!1048 = !DILocation(line: 605, column: 46, scope: !30)
!1049 = !DILocation(line: 605, column: 56, scope: !30)
!1050 = !DILocation(line: 606, column: 7, scope: !30)
!1051 = !DILocation(line: 610, column: 11, scope: !827)
!1052 = !DILocation(line: 610, column: 9, scope: !827)
!1053 = !DILocation(line: 611, column: 14, scope: !827)
!1054 = !DILocation(line: 611, column: 3, scope: !827)
!1055 = !DILocation(line: 556, column: 11, scope: !24, inlinedAt: !1056)
!1056 = distinct !DILocation(line: 611, column: 3, scope: !827)
!1057 = !DILocation(line: 556, column: 7, scope: !24, inlinedAt: !1056)
!1058 = !DILocation(line: 559, column: 18, scope: !857, inlinedAt: !1056)
!1059 = !DILocation(line: 560, column: 11, scope: !857, inlinedAt: !1056)
!1060 = !DILocation(line: 560, column: 3, scope: !857, inlinedAt: !1056)
!1061 = !DILocation(line: 555, column: 20, scope: !24, inlinedAt: !1056)
!1062 = !DILocation(line: 555, column: 32, scope: !24, inlinedAt: !1056)
!1063 = !DILocation(line: 555, column: 48, scope: !24, inlinedAt: !1056)
!1064 = !DILocation(line: 613, column: 3, scope: !828)
!1065 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !31, file: !1, line: 616, type: !15)
!1066 = !DILocation(line: 616, column: 30, scope: !31)
!1067 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !31, file: !1, line: 616, type: !15)
!1068 = !DILocation(line: 616, column: 49, scope: !31)
!1069 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack__MajorFunction", scope: !31, file: !1, line: 617, type: !15)
!1070 = !DILocation(line: 617, column: 7, scope: !31)
!1071 = !DILocation(line: 617, column: 33, scope: !31)
!1072 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt__UpperConnectData__ClassService", scope: !31, file: !1, line: 618, type: !15)
!1073 = !DILocation(line: 618, column: 7, scope: !31)
!1074 = !DILocation(line: 618, column: 48, scope: !31)
!1075 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !31, file: !1, line: 619, type: !15)
!1076 = !DILocation(line: 619, column: 7, scope: !31)
!1077 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !31, file: !1, line: 620, type: !15)
!1078 = !DILocation(line: 620, column: 7, scope: !31)
!1079 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !31, file: !1, line: 621, type: !15)
!1080 = !DILocation(line: 621, column: 7, scope: !31)
!1081 = !DILocation(line: 624, column: 12, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !31, file: !1, line: 623, column: 3)
!1083 = !DILocation(line: 624, column: 10, scope: !1082)
!1084 = !DILocation(line: 625, column: 7, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1082, file: !1, line: 625, column: 7)
!1086 = !DILocation(line: 625, column: 31, scope: !1085)
!1087 = !DILocation(line: 625, column: 7, scope: !1082)
!1088 = !DILocation(line: 626, column: 5, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1085, file: !1, line: 625, column: 37)
!1090 = !DILocation(line: 628, column: 9, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !1, line: 628, column: 9)
!1092 = distinct !DILexicalBlock(scope: !1085, file: !1, line: 627, column: 10)
!1093 = !DILocation(line: 628, column: 33, scope: !1091)
!1094 = !DILocation(line: 628, column: 9, scope: !1092)
!1095 = !DILocation(line: 629, column: 7, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1091, file: !1, line: 628, column: 39)
!1097 = !DILocation(line: 631, column: 11, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1091, file: !1, line: 630, column: 12)
!1099 = !DILocation(line: 631, column: 14, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 631, column: 11)
!1101 = !DILocation(line: 633, column: 13, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 633, column: 13)
!1103 = distinct !DILexicalBlock(scope: !1100, file: !1, line: 631, column: 14)
!1104 = !DILocation(line: 633, column: 52, scope: !1102)
!1105 = !DILocation(line: 633, column: 13, scope: !1103)
!1106 = !DILocation(line: 634, column: 18, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1102, file: !1, line: 633, column: 58)
!1108 = !DILocation(line: 635, column: 9, scope: !1107)
!1109 = !DILocation(line: 636, column: 9, scope: !1103)
!1110 = !DILocation(line: 638, column: 9, scope: !1103)
!1111 = !DILocation(line: 639, column: 14, scope: !1100)
!1112 = !DILocation(line: 645, column: 27, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1082, file: !1, line: 644, column: 3)
!1114 = !DILocation(line: 645, column: 25, scope: !1113)
!1115 = !DILocation(line: 646, column: 14, scope: !1113)
!1116 = !DILocation(line: 646, column: 12, scope: !1113)
!1117 = !DILocation(line: 647, column: 38, scope: !1113)
!1118 = !DILocation(line: 647, column: 52, scope: !1113)
!1119 = !DILocation(line: 647, column: 9, scope: !1113)
!1120 = !DILocation(line: 647, column: 7, scope: !1113)
!1121 = !DILocation(line: 649, column: 11, scope: !1082)
!1122 = !DILocation(line: 649, column: 3, scope: !1082)
!1123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !32, file: !1, line: 652, type: !15)
!1124 = !DILocation(line: 652, column: 38, scope: !32)
!1125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !32, file: !1, line: 652, type: !15)
!1126 = !DILocation(line: 652, column: 57, scope: !32)
!1127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !32, file: !1, line: 653, type: !15)
!1128 = !DILocation(line: 653, column: 7, scope: !32)
!1129 = !DILocation(line: 653, column: 50, scope: !32)
!1130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !32, file: !1, line: 654, type: !15)
!1131 = !DILocation(line: 654, column: 7, scope: !32)
!1132 = !DILocation(line: 654, column: 30, scope: !32)
!1133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "DeviceObject__DeviceExtension__TopOfStack", scope: !32, file: !1, line: 655, type: !15)
!1134 = !DILocation(line: 655, column: 7, scope: !32)
!1135 = !DILocation(line: 655, column: 51, scope: !32)
!1136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack", scope: !32, file: !1, line: 656, type: !15)
!1137 = !DILocation(line: 656, column: 7, scope: !32)
!1138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !32, file: !1, line: 657, type: !15)
!1139 = !DILocation(line: 657, column: 7, scope: !32)
!1140 = !DILocation(line: 660, column: 14, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !32, file: !1, line: 659, column: 3)
!1142 = !DILocation(line: 660, column: 12, scope: !1141)
!1143 = !DILocation(line: 661, column: 7, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1141, file: !1, line: 661, column: 7)
!1145 = !DILocation(line: 661, column: 12, scope: !1144)
!1146 = !DILocation(line: 661, column: 9, scope: !1144)
!1147 = !DILocation(line: 661, column: 7, scope: !1141)
!1148 = !DILocation(line: 662, column: 9, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1144, file: !1, line: 661, column: 16)
!1150 = !DILocation(line: 662, column: 7, scope: !1149)
!1151 = !DILocation(line: 663, column: 3, scope: !1149)
!1152 = !DILocation(line: 1000, column: 10, scope: !318, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 665, column: 5, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !1, line: 664, column: 5)
!1155 = distinct !DILexicalBlock(scope: !1144, file: !1, line: 663, column: 10)
!1156 = !DILocation(line: 669, column: 24, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1141, file: !1, line: 668, column: 3)
!1158 = !DILocation(line: 670, column: 44, scope: !1157)
!1159 = !DILocation(line: 671, column: 23, scope: !1157)
!1160 = !DILocation(line: 671, column: 66, scope: !1157)
!1161 = !DILocation(line: 671, column: 9, scope: !1157)
!1162 = !DILocation(line: 671, column: 7, scope: !1157)
!1163 = !DILocation(line: 673, column: 11, scope: !1141)
!1164 = !DILocation(line: 673, column: 3, scope: !1141)
!1165 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !33, file: !1, line: 676, type: !15)
!1166 = !DILocation(line: 676, column: 24, scope: !33)
!1167 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !33, file: !1, line: 676, type: !15)
!1168 = !DILocation(line: 676, column: 43, scope: !33)
!1169 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack__MinorFunction", scope: !33, file: !1, line: 677, type: !15)
!1170 = !DILocation(line: 677, column: 7, scope: !33)
!1171 = !DILocation(line: 677, column: 33, scope: !33)
!1172 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt__DeviceState", scope: !33, file: !1, line: 678, type: !15)
!1173 = !DILocation(line: 678, column: 7, scope: !33)
!1174 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "powerState__DeviceState", scope: !33, file: !1, line: 679, type: !15)
!1175 = !DILocation(line: 679, column: 7, scope: !33)
!1176 = !DILocation(line: 679, column: 33, scope: !33)
!1177 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__CurrentLocation", scope: !33, file: !1, line: 680, type: !15)
!1178 = !DILocation(line: 680, column: 7, scope: !33)
!1179 = !DILocation(line: 680, column: 30, scope: !33)
!1180 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__Tail__Overlay__CurrentStackLocation", scope: !33, file: !1, line: 681, type: !15)
!1181 = !DILocation(line: 681, column: 7, scope: !33)
!1182 = !DILocation(line: 681, column: 50, scope: !33)
!1183 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt__TopOfStack", scope: !33, file: !1, line: 682, type: !15)
!1184 = !DILocation(line: 682, column: 7, scope: !33)
!1185 = !DILocation(line: 682, column: 28, scope: !33)
!1186 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "powerType", scope: !33, file: !1, line: 683, type: !15)
!1187 = !DILocation(line: 683, column: 7, scope: !33)
!1188 = !DILocation(line: 683, column: 19, scope: !33)
!1189 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !33, file: !1, line: 684, type: !15)
!1190 = !DILocation(line: 684, column: 7, scope: !33)
!1191 = !DILocation(line: 687, column: 7, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !1, line: 687, column: 7)
!1193 = distinct !DILexicalBlock(scope: !33, file: !1, line: 686, column: 3)
!1194 = !DILocation(line: 687, column: 31, scope: !1192)
!1195 = !DILocation(line: 687, column: 7, scope: !1193)
!1196 = !DILocation(line: 688, column: 5, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 687, column: 37)
!1198 = !DILocation(line: 690, column: 9, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !1, line: 690, column: 9)
!1200 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 689, column: 10)
!1201 = !DILocation(line: 690, column: 33, scope: !1199)
!1202 = !DILocation(line: 690, column: 9, scope: !1200)
!1203 = !DILocation(line: 691, column: 7, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1199, file: !1, line: 690, column: 39)
!1205 = !DILocation(line: 693, column: 11, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !1, line: 693, column: 11)
!1207 = distinct !DILexicalBlock(scope: !1199, file: !1, line: 692, column: 12)
!1208 = !DILocation(line: 693, column: 35, scope: !1206)
!1209 = !DILocation(line: 693, column: 11, scope: !1207)
!1210 = !DILocation(line: 694, column: 9, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1206, file: !1, line: 693, column: 41)
!1212 = !DILocation(line: 696, column: 13, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !1, line: 696, column: 13)
!1214 = distinct !DILexicalBlock(scope: !1206, file: !1, line: 695, column: 14)
!1215 = !DILocation(line: 696, column: 37, scope: !1213)
!1216 = !DILocation(line: 696, column: 13, scope: !1214)
!1217 = !DILocation(line: 697, column: 11, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1213, file: !1, line: 696, column: 43)
!1219 = !DILocation(line: 699, column: 11, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1213, file: !1, line: 698, column: 16)
!1221 = !DILocation(line: 700, column: 15, scope: !1220)
!1222 = !DILocation(line: 700, column: 18, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1220, file: !1, line: 700, column: 15)
!1224 = !DILocation(line: 702, column: 17, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !1, line: 702, column: 17)
!1226 = distinct !DILexicalBlock(scope: !1223, file: !1, line: 700, column: 18)
!1227 = !DILocation(line: 702, column: 30, scope: !1225)
!1228 = !DILocation(line: 702, column: 27, scope: !1225)
!1229 = !DILocation(line: 702, column: 17, scope: !1226)
!1230 = !DILocation(line: 703, column: 37, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1225, file: !1, line: 702, column: 48)
!1232 = !DILocation(line: 703, column: 35, scope: !1231)
!1233 = !DILocation(line: 704, column: 13, scope: !1231)
!1234 = !DILocation(line: 709, column: 13, scope: !1226)
!1235 = !DILocation(line: 710, column: 18, scope: !1223)
!1236 = !DILocation(line: 717, column: 7, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1193, file: !1, line: 717, column: 7)
!1238 = !DILocation(line: 717, column: 12, scope: !1237)
!1239 = !DILocation(line: 717, column: 9, scope: !1237)
!1240 = !DILocation(line: 717, column: 7, scope: !1193)
!1241 = !DILocation(line: 718, column: 9, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1237, file: !1, line: 717, column: 16)
!1243 = !DILocation(line: 718, column: 7, scope: !1242)
!1244 = !DILocation(line: 719, column: 3, scope: !1242)
!1245 = !DILocation(line: 1000, column: 10, scope: !318, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 721, column: 5, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !1, line: 720, column: 5)
!1248 = distinct !DILexicalBlock(scope: !1237, file: !1, line: 719, column: 10)
!1249 = !DILocation(line: 725, column: 24, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1193, file: !1, line: 724, column: 3)
!1251 = !DILocation(line: 726, column: 44, scope: !1250)
!1252 = !DILocation(line: 727, column: 22, scope: !1250)
!1253 = !DILocation(line: 727, column: 42, scope: !1250)
!1254 = !DILocation(line: 727, column: 9, scope: !1250)
!1255 = !DILocation(line: 727, column: 7, scope: !1250)
!1256 = !DILocation(line: 729, column: 11, scope: !1193)
!1257 = !DILocation(line: 729, column: 3, scope: !1193)
!1258 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !34, file: !1, line: 732, type: !15)
!1259 = !DILocation(line: 732, column: 22, scope: !34)
!1260 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !34, file: !1, line: 732, type: !15)
!1261 = !DILocation(line: 732, column: 41, scope: !34)
!1262 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compRetStatus", scope: !34, file: !1, line: 734, type: !15)
!1263 = !DILocation(line: 734, column: 7, scope: !34)
!1264 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "returnVal", scope: !34, file: !1, line: 735, type: !15)
!1265 = !DILocation(line: 735, column: 7, scope: !34)
!1266 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lcontext", scope: !34, file: !1, line: 736, type: !15)
!1267 = !DILocation(line: 736, column: 7, scope: !34)
!1268 = !DILocation(line: 736, column: 18, scope: !34)
!1269 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp7", scope: !34, file: !1, line: 737, type: !6)
!1270 = !DILocation(line: 737, column: 17, scope: !34)
!1271 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp8", scope: !34, file: !1, line: 738, type: !4)
!1272 = !DILocation(line: 738, column: 8, scope: !34)
!1273 = !DILocation(line: 741, column: 7, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !1, line: 741, column: 7)
!1275 = distinct !DILexicalBlock(scope: !34, file: !1, line: 740, column: 3)
!1276 = !DILocation(line: 555, column: 20, scope: !24, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 611, column: 3, scope: !827, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 743, column: 21, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !1, line: 742, column: 5)
!1280 = distinct !DILexicalBlock(scope: !1274, file: !1, line: 741, column: 23)
!1281 = !DILocation(line: 555, column: 32, scope: !24, inlinedAt: !1277)
!1282 = !DILocation(line: 555, column: 48, scope: !24, inlinedAt: !1277)
!1283 = !DILocation(line: 556, column: 7, scope: !24, inlinedAt: !1277)
!1284 = !DILocation(line: 605, column: 27, scope: !30, inlinedAt: !1278)
!1285 = !DILocation(line: 605, column: 46, scope: !30, inlinedAt: !1278)
!1286 = !DILocation(line: 605, column: 56, scope: !30, inlinedAt: !1278)
!1287 = !DILocation(line: 606, column: 7, scope: !30, inlinedAt: !1278)
!1288 = !DILocation(line: 741, column: 7, scope: !1275)
!1289 = !DILocation(line: 743, column: 39, scope: !1279)
!1290 = !DILocation(line: 743, column: 53, scope: !1279)
!1291 = !DILocation(line: 743, column: 58, scope: !1279)
!1292 = !DILocation(line: 743, column: 21, scope: !1279)
!1293 = !DILocation(line: 610, column: 11, scope: !827, inlinedAt: !1278)
!1294 = !DILocation(line: 610, column: 9, scope: !827, inlinedAt: !1278)
!1295 = !DILocation(line: 611, column: 14, scope: !827, inlinedAt: !1278)
!1296 = !DILocation(line: 611, column: 3, scope: !827, inlinedAt: !1278)
!1297 = !DILocation(line: 556, column: 11, scope: !24, inlinedAt: !1277)
!1298 = !DILocation(line: 559, column: 18, scope: !857, inlinedAt: !1277)
!1299 = !DILocation(line: 560, column: 11, scope: !857, inlinedAt: !1277)
!1300 = !DILocation(line: 560, column: 3, scope: !857, inlinedAt: !1277)
!1301 = !DILocation(line: 613, column: 3, scope: !828, inlinedAt: !1278)
!1302 = !DILocation(line: 743, column: 19, scope: !1279)
!1303 = !DILocation(line: 746, column: 34, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1280, file: !1, line: 745, column: 5)
!1305 = !DILocation(line: 746, column: 18, scope: !1304)
!1306 = !DILocation(line: 746, column: 16, scope: !1304)
!1307 = !DILocation(line: 747, column: 9, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1304, file: !1, line: 747, column: 9)
!1309 = !DILocation(line: 747, column: 20, scope: !1308)
!1310 = !DILocation(line: 747, column: 9, scope: !1304)
!1311 = !DILocation(line: 458, column: 7, scope: !794, inlinedAt: !1312)
!1312 = distinct !DILocation(line: 749, column: 7, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !1, line: 748, column: 7)
!1314 = distinct !DILexicalBlock(scope: !1308, file: !1, line: 747, column: 36)
!1315 = !DILocation(line: 458, column: 12, scope: !794, inlinedAt: !1312)
!1316 = !DILocation(line: 458, column: 9, scope: !794, inlinedAt: !1312)
!1317 = !DILocation(line: 458, column: 7, scope: !795, inlinedAt: !1312)
!1318 = !DILocation(line: 1000, column: 10, scope: !318, inlinedAt: !1319)
!1319 = distinct !DILocation(line: 462, column: 5, scope: !805, inlinedAt: !1312)
!1320 = !DILocation(line: 459, column: 9, scope: !800, inlinedAt: !1312)
!1321 = !DILocation(line: 459, column: 7, scope: !800, inlinedAt: !1312)
!1322 = !DILocation(line: 751, column: 5, scope: !1314)
!1323 = !DILocation(line: 753, column: 3, scope: !1280)
!1324 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_9", scope: !1275, file: !1, line: 754, type: !15)
!1325 = !DILocation(line: 754, column: 7, scope: !1275)
!1326 = !DILocation(line: 755, column: 15, scope: !1275)
!1327 = !DILocation(line: 755, column: 13, scope: !1275)
!1328 = !DILocation(line: 756, column: 7, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1275, file: !1, line: 756, column: 7)
!1330 = !DILocation(line: 756, column: 17, scope: !1329)
!1331 = !DILocation(line: 756, column: 7, scope: !1275)
!1332 = !DILocation(line: 757, column: 5, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1329, file: !1, line: 756, column: 23)
!1334 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_ndt_10", scope: !1335, file: !1, line: 759, type: !15)
!1335 = distinct !DILexicalBlock(scope: !1329, file: !1, line: 758, column: 10)
!1336 = !DILocation(line: 759, column: 9, scope: !1335)
!1337 = !DILocation(line: 760, column: 18, scope: !1335)
!1338 = !DILocation(line: 760, column: 16, scope: !1335)
!1339 = !DILocation(line: 761, column: 9, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1335, file: !1, line: 761, column: 9)
!1341 = !DILocation(line: 761, column: 20, scope: !1340)
!1342 = !DILocation(line: 761, column: 9, scope: !1335)
!1343 = !DILocation(line: 762, column: 7, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1340, file: !1, line: 761, column: 26)
!1345 = !DILocation(line: 764, column: 7, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1340, file: !1, line: 763, column: 12)
!1347 = !DILocation(line: 765, column: 11, scope: !1346)
!1348 = !DILocation(line: 765, column: 14, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1346, file: !1, line: 765, column: 11)
!1350 = !DILocation(line: 767, column: 19, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1349, file: !1, line: 765, column: 14)
!1352 = !DILocation(line: 768, column: 9, scope: !1351)
!1353 = !DILocation(line: 770, column: 19, scope: !1351)
!1354 = !DILocation(line: 771, column: 9, scope: !1351)
!1355 = !DILocation(line: 773, column: 19, scope: !1351)
!1356 = !DILocation(line: 774, column: 9, scope: !1351)
!1357 = !DILocation(line: 775, column: 14, scope: !1349)
!1358 = !DILocation(line: 780, column: 7, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1275, file: !1, line: 780, column: 7)
!1360 = !DILocation(line: 780, column: 12, scope: !1359)
!1361 = !DILocation(line: 780, column: 9, scope: !1359)
!1362 = !DILocation(line: 780, column: 7, scope: !1275)
!1363 = !DILocation(line: 781, column: 9, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1359, file: !1, line: 780, column: 16)
!1365 = !DILocation(line: 781, column: 7, scope: !1364)
!1366 = !DILocation(line: 782, column: 25, scope: !1364)
!1367 = !DILocation(line: 782, column: 23, scope: !1364)
!1368 = !DILocation(line: 783, column: 3, scope: !1364)
!1369 = !DILocation(line: 784, column: 9, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !1, line: 784, column: 9)
!1371 = distinct !DILexicalBlock(scope: !1359, file: !1, line: 783, column: 10)
!1372 = !DILocation(line: 784, column: 14, scope: !1370)
!1373 = !DILocation(line: 784, column: 11, scope: !1370)
!1374 = !DILocation(line: 784, column: 9, scope: !1371)
!1375 = !DILocation(line: 786, column: 27, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !1, line: 785, column: 7)
!1377 = distinct !DILexicalBlock(scope: !1370, file: !1, line: 784, column: 20)
!1378 = !DILocation(line: 786, column: 20, scope: !1376)
!1379 = !DILocation(line: 786, column: 18, scope: !1376)
!1380 = !DILocation(line: 787, column: 11, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1376, file: !1, line: 787, column: 11)
!1382 = !DILocation(line: 787, column: 22, scope: !1381)
!1383 = !DILocation(line: 787, column: 11, scope: !1376)
!1384 = !DILocation(line: 788, column: 13, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 787, column: 31)
!1386 = !DILocation(line: 788, column: 11, scope: !1385)
!1387 = !DILocation(line: 789, column: 29, scope: !1385)
!1388 = !DILocation(line: 789, column: 27, scope: !1385)
!1389 = !DILocation(line: 790, column: 7, scope: !1385)
!1390 = !DILocation(line: 791, column: 13, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 790, column: 14)
!1392 = !DILocation(line: 791, column: 11, scope: !1391)
!1393 = !DILocation(line: 792, column: 29, scope: !1391)
!1394 = !DILocation(line: 792, column: 27, scope: !1391)
!1395 = !DILocation(line: 795, column: 5, scope: !1377)
!1396 = !DILocation(line: 796, column: 11, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !1, line: 796, column: 11)
!1398 = distinct !DILexicalBlock(scope: !1370, file: !1, line: 795, column: 12)
!1399 = !DILocation(line: 796, column: 16, scope: !1397)
!1400 = !DILocation(line: 796, column: 13, scope: !1397)
!1401 = !DILocation(line: 796, column: 11, scope: !1398)
!1402 = !DILocation(line: 797, column: 13, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1397, file: !1, line: 796, column: 23)
!1404 = !DILocation(line: 797, column: 11, scope: !1403)
!1405 = !DILocation(line: 798, column: 29, scope: !1403)
!1406 = !DILocation(line: 798, column: 27, scope: !1403)
!1407 = !DILocation(line: 799, column: 7, scope: !1403)
!1408 = !DILocation(line: 1000, column: 10, scope: !318, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 801, column: 9, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !1, line: 800, column: 9)
!1411 = distinct !DILexicalBlock(scope: !1397, file: !1, line: 799, column: 14)
!1412 = !DILocation(line: 806, column: 11, scope: !1275)
!1413 = !DILocation(line: 806, column: 3, scope: !1275)
!1414 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !35, file: !1, line: 809, type: !15)
!1415 = !DILocation(line: 809, column: 30, scope: !35)
!1416 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !35, file: !1, line: 809, type: !15)
!1417 = !DILocation(line: 809, column: 49, scope: !35)
!1418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Information", scope: !35, file: !1, line: 810, type: !15)
!1419 = !DILocation(line: 810, column: 7, scope: !35)
!1420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack__Parameters__DeviceIoControl__IoControlCode", scope: !35, file: !1, line: 811, type: !15)
!1421 = !DILocation(line: 811, column: 7, scope: !35)
!1422 = !DILocation(line: 811, column: 62, scope: !35)
!1423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt__UpperConnectData__ClassService", scope: !35, file: !1, line: 812, type: !15)
!1424 = !DILocation(line: 812, column: 7, scope: !35)
!1425 = !DILocation(line: 812, column: 48, scope: !35)
!1426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack__Parameters__DeviceIoControl__InputBufferLength", scope: !35, file: !1, line: 813, type: !15)
!1427 = !DILocation(line: 813, column: 7, scope: !35)
!1428 = !DILocation(line: 813, column: 66, scope: !35)
!1429 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__CONNECT_DATA", scope: !35, file: !1, line: 814, type: !15)
!1430 = !DILocation(line: 814, column: 7, scope: !35)
!1431 = !DILocation(line: 814, column: 30, scope: !35)
!1432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack__Parameters__DeviceIoControl__Type3InputBuffer", scope: !35, file: !1, line: 815, type: !15)
!1433 = !DILocation(line: 815, column: 7, scope: !35)
!1434 = !DILocation(line: 815, column: 65, scope: !35)
!1435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeof__INTERNAL_I8042_HOOK_KEYBOARD", scope: !35, file: !1, line: 816, type: !15)
!1436 = !DILocation(line: 816, column: 7, scope: !35)
!1437 = !DILocation(line: 816, column: 46, scope: !35)
!1438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hookKeyboard__InitializationRoutine", scope: !35, file: !1, line: 817, type: !15)
!1439 = !DILocation(line: 817, column: 7, scope: !35)
!1440 = !DILocation(line: 817, column: 45, scope: !35)
!1441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hookKeyboard__IsrRoutine", scope: !35, file: !1, line: 818, type: !15)
!1442 = !DILocation(line: 818, column: 7, scope: !35)
!1443 = !DILocation(line: 818, column: 34, scope: !35)
!1444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Irp__IoStatus__Status", scope: !35, file: !1, line: 819, type: !15)
!1445 = !DILocation(line: 819, column: 7, scope: !35)
!1446 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hookKeyboard", scope: !35, file: !1, line: 820, type: !15)
!1447 = !DILocation(line: 820, column: 7, scope: !35)
!1448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "connectData", scope: !35, file: !1, line: 821, type: !15)
!1449 = !DILocation(line: 821, column: 7, scope: !35)
!1450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !35, file: !1, line: 822, type: !15)
!1451 = !DILocation(line: 822, column: 7, scope: !35)
!1452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !35, file: !1, line: 823, type: !15)
!1453 = !DILocation(line: 823, column: 7, scope: !35)
!1454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp17", scope: !35, file: !1, line: 824, type: !15)
!1455 = !DILocation(line: 824, column: 7, scope: !35)
!1456 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp18", scope: !35, file: !1, line: 825, type: !15)
!1457 = !DILocation(line: 825, column: 7, scope: !35)
!1458 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp19", scope: !35, file: !1, line: 826, type: !15)
!1459 = !DILocation(line: 826, column: 7, scope: !35)
!1460 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp20", scope: !35, file: !1, line: 827, type: !15)
!1461 = !DILocation(line: 827, column: 7, scope: !35)
!1462 = !DILocation(line: 827, column: 21, scope: !35)
!1463 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp21", scope: !35, file: !1, line: 828, type: !15)
!1464 = !DILocation(line: 828, column: 7, scope: !35)
!1465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp22", scope: !35, file: !1, line: 829, type: !15)
!1466 = !DILocation(line: 829, column: 7, scope: !35)
!1467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp23", scope: !35, file: !1, line: 830, type: !15)
!1468 = !DILocation(line: 830, column: 7, scope: !35)
!1469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp24", scope: !35, file: !1, line: 831, type: !15)
!1470 = !DILocation(line: 831, column: 7, scope: !35)
!1471 = !DILocation(line: 831, column: 21, scope: !35)
!1472 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp25", scope: !35, file: !1, line: 832, type: !15)
!1473 = !DILocation(line: 832, column: 7, scope: !35)
!1474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp26", scope: !35, file: !1, line: 833, type: !15)
!1475 = !DILocation(line: 833, column: 7, scope: !35)
!1476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp27", scope: !35, file: !1, line: 834, type: !15)
!1477 = !DILocation(line: 834, column: 7, scope: !35)
!1478 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp28", scope: !35, file: !1, line: 835, type: !15)
!1479 = !DILocation(line: 835, column: 7, scope: !35)
!1480 = !DILocation(line: 835, column: 21, scope: !35)
!1481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp29", scope: !35, file: !1, line: 836, type: !15)
!1482 = !DILocation(line: 836, column: 7, scope: !35)
!1483 = !DILocation(line: 836, column: 21, scope: !35)
!1484 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp30", scope: !35, file: !1, line: 837, type: !15)
!1485 = !DILocation(line: 837, column: 7, scope: !35)
!1486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp31", scope: !35, file: !1, line: 838, type: !15)
!1487 = !DILocation(line: 838, column: 7, scope: !35)
!1488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp32", scope: !35, file: !1, line: 839, type: !15)
!1489 = !DILocation(line: 839, column: 7, scope: !35)
!1490 = !DILocation(line: 839, column: 21, scope: !35)
!1491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp33", scope: !35, file: !1, line: 840, type: !15)
!1492 = !DILocation(line: 840, column: 7, scope: !35)
!1493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp34", scope: !35, file: !1, line: 841, type: !15)
!1494 = !DILocation(line: 841, column: 7, scope: !35)
!1495 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp35", scope: !35, file: !1, line: 842, type: !15)
!1496 = !DILocation(line: 842, column: 7, scope: !35)
!1497 = !DILocation(line: 842, column: 21, scope: !35)
!1498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp36", scope: !35, file: !1, line: 843, type: !15)
!1499 = !DILocation(line: 843, column: 7, scope: !35)
!1500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp37", scope: !35, file: !1, line: 844, type: !15)
!1501 = !DILocation(line: 844, column: 7, scope: !35)
!1502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp38", scope: !35, file: !1, line: 845, type: !15)
!1503 = !DILocation(line: 845, column: 7, scope: !35)
!1504 = !DILocation(line: 845, column: 21, scope: !35)
!1505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp39", scope: !35, file: !1, line: 846, type: !15)
!1506 = !DILocation(line: 846, column: 7, scope: !35)
!1507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp40", scope: !35, file: !1, line: 847, type: !15)
!1508 = !DILocation(line: 847, column: 7, scope: !35)
!1509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp41", scope: !35, file: !1, line: 848, type: !15)
!1510 = !DILocation(line: 848, column: 7, scope: !35)
!1511 = !DILocation(line: 848, column: 21, scope: !35)
!1512 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp42", scope: !35, file: !1, line: 849, type: !15)
!1513 = !DILocation(line: 849, column: 7, scope: !35)
!1514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp43", scope: !35, file: !1, line: 850, type: !15)
!1515 = !DILocation(line: 850, column: 7, scope: !35)
!1516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp44", scope: !35, file: !1, line: 851, type: !15)
!1517 = !DILocation(line: 851, column: 7, scope: !35)
!1518 = !DILocation(line: 851, column: 21, scope: !35)
!1519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__cil_tmp45", scope: !35, file: !1, line: 852, type: !15)
!1520 = !DILocation(line: 852, column: 7, scope: !35)
!1521 = !DILocation(line: 855, column: 10, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !35, file: !1, line: 854, column: 3)
!1523 = !DILocation(line: 856, column: 30, scope: !1522)
!1524 = !DILocation(line: 862, column: 7, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !1, line: 862, column: 7)
!1526 = distinct !DILexicalBlock(scope: !1522, file: !1, line: 857, column: 3)
!1527 = !DILocation(line: 862, column: 63, scope: !1525)
!1528 = !DILocation(line: 862, column: 60, scope: !1525)
!1529 = !DILocation(line: 541, column: 29, scope: !21, inlinedAt: !1530)
!1530 = distinct !DILocation(line: 984, column: 5, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !1, line: 981, column: 5)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !1, line: 980, column: 19)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !1, line: 980, column: 7)
!1534 = distinct !DILexicalBlock(scope: !1522, file: !1, line: 979, column: 3)
!1535 = !DILocation(line: 541, column: 39, scope: !21, inlinedAt: !1530)
!1536 = !DILocation(line: 862, column: 7, scope: !1526)
!1537 = !DILocation(line: 863, column: 5, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1525, file: !1, line: 862, column: 76)
!1539 = !DILocation(line: 870, column: 9, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !1, line: 870, column: 9)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !1, line: 865, column: 5)
!1542 = distinct !DILexicalBlock(scope: !1525, file: !1, line: 864, column: 10)
!1543 = !DILocation(line: 870, column: 65, scope: !1540)
!1544 = !DILocation(line: 870, column: 62, scope: !1540)
!1545 = !DILocation(line: 870, column: 9, scope: !1541)
!1546 = !DILocation(line: 871, column: 7, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1540, file: !1, line: 870, column: 78)
!1548 = !DILocation(line: 878, column: 11, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !1, line: 878, column: 11)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !1, line: 873, column: 7)
!1551 = distinct !DILexicalBlock(scope: !1540, file: !1, line: 872, column: 12)
!1552 = !DILocation(line: 878, column: 67, scope: !1549)
!1553 = !DILocation(line: 878, column: 64, scope: !1549)
!1554 = !DILocation(line: 878, column: 11, scope: !1550)
!1555 = !DILocation(line: 879, column: 9, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1549, file: !1, line: 878, column: 80)
!1557 = !DILocation(line: 883, column: 13, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !1, line: 883, column: 13)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !1, line: 881, column: 9)
!1560 = distinct !DILexicalBlock(scope: !1549, file: !1, line: 880, column: 14)
!1561 = !DILocation(line: 883, column: 69, scope: !1558)
!1562 = !DILocation(line: 883, column: 66, scope: !1558)
!1563 = !DILocation(line: 883, column: 13, scope: !1559)
!1564 = !DILocation(line: 884, column: 11, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1558, file: !1, line: 883, column: 82)
!1566 = !DILocation(line: 890, column: 15, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !1, line: 890, column: 15)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !1, line: 886, column: 11)
!1569 = distinct !DILexicalBlock(scope: !1558, file: !1, line: 885, column: 16)
!1570 = !DILocation(line: 890, column: 71, scope: !1567)
!1571 = !DILocation(line: 890, column: 68, scope: !1567)
!1572 = !DILocation(line: 890, column: 15, scope: !1568)
!1573 = !DILocation(line: 891, column: 13, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1567, file: !1, line: 890, column: 84)
!1575 = !DILocation(line: 897, column: 17, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !1, line: 897, column: 17)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !1, line: 893, column: 13)
!1578 = distinct !DILexicalBlock(scope: !1567, file: !1, line: 892, column: 18)
!1579 = !DILocation(line: 897, column: 73, scope: !1576)
!1580 = !DILocation(line: 897, column: 70, scope: !1576)
!1581 = !DILocation(line: 897, column: 17, scope: !1577)
!1582 = !DILocation(line: 898, column: 15, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1576, file: !1, line: 897, column: 86)
!1584 = !DILocation(line: 904, column: 19, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !1, line: 904, column: 19)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !1, line: 900, column: 15)
!1587 = distinct !DILexicalBlock(scope: !1576, file: !1, line: 899, column: 20)
!1588 = !DILocation(line: 904, column: 75, scope: !1585)
!1589 = !DILocation(line: 904, column: 72, scope: !1585)
!1590 = !DILocation(line: 904, column: 19, scope: !1586)
!1591 = !DILocation(line: 905, column: 17, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1585, file: !1, line: 904, column: 88)
!1593 = !DILocation(line: 911, column: 21, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !1, line: 911, column: 21)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !1, line: 907, column: 17)
!1596 = distinct !DILexicalBlock(scope: !1585, file: !1, line: 906, column: 22)
!1597 = !DILocation(line: 911, column: 77, scope: !1594)
!1598 = !DILocation(line: 911, column: 74, scope: !1594)
!1599 = !DILocation(line: 911, column: 21, scope: !1595)
!1600 = !DILocation(line: 912, column: 19, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1594, file: !1, line: 911, column: 90)
!1602 = !DILocation(line: 918, column: 23, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !1, line: 918, column: 23)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !1, line: 914, column: 19)
!1605 = distinct !DILexicalBlock(scope: !1594, file: !1, line: 913, column: 24)
!1606 = !DILocation(line: 918, column: 79, scope: !1603)
!1607 = !DILocation(line: 918, column: 76, scope: !1603)
!1608 = !DILocation(line: 918, column: 23, scope: !1604)
!1609 = !DILocation(line: 919, column: 21, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1603, file: !1, line: 918, column: 92)
!1611 = !DILocation(line: 921, column: 25, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1603, file: !1, line: 920, column: 26)
!1613 = !DILocation(line: 921, column: 28, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 921, column: 25)
!1615 = !DILocation(line: 923, column: 27, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !1, line: 923, column: 27)
!1617 = distinct !DILexicalBlock(scope: !1614, file: !1, line: 921, column: 28)
!1618 = !DILocation(line: 923, column: 66, scope: !1616)
!1619 = !DILocation(line: 923, column: 27, scope: !1617)
!1620 = !DILocation(line: 924, column: 32, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1616, file: !1, line: 923, column: 72)
!1622 = !DILocation(line: 925, column: 25, scope: !1621)
!1623 = !DILocation(line: 927, column: 29, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !1, line: 927, column: 29)
!1625 = distinct !DILexicalBlock(scope: !1616, file: !1, line: 926, column: 30)
!1626 = !DILocation(line: 927, column: 88, scope: !1624)
!1627 = !DILocation(line: 927, column: 86, scope: !1624)
!1628 = !DILocation(line: 927, column: 29, scope: !1625)
!1629 = !DILocation(line: 928, column: 34, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1624, file: !1, line: 927, column: 110)
!1631 = !DILocation(line: 929, column: 27, scope: !1630)
!1632 = !DILocation(line: 932, column: 37, scope: !1617)
!1633 = !DILocation(line: 932, column: 35, scope: !1617)
!1634 = !DILocation(line: 933, column: 23, scope: !1617)
!1635 = !DILocation(line: 935, column: 30, scope: !1617)
!1636 = !DILocation(line: 936, column: 23, scope: !1617)
!1637 = !DILocation(line: 938, column: 27, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1617, file: !1, line: 938, column: 27)
!1639 = !DILocation(line: 938, column: 86, scope: !1638)
!1640 = !DILocation(line: 938, column: 84, scope: !1638)
!1641 = !DILocation(line: 938, column: 27, scope: !1617)
!1642 = !DILocation(line: 939, column: 32, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1638, file: !1, line: 938, column: 124)
!1644 = !DILocation(line: 940, column: 25, scope: !1643)
!1645 = !DILocation(line: 942, column: 38, scope: !1617)
!1646 = !DILocation(line: 942, column: 36, scope: !1617)
!1647 = !DILocation(line: 943, column: 27, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1617, file: !1, line: 943, column: 27)
!1649 = !DILocation(line: 943, column: 27, scope: !1617)
!1650 = !DILocation(line: 945, column: 23, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1648, file: !1, line: 943, column: 64)
!1652 = !DILocation(line: 946, column: 27, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1617, file: !1, line: 946, column: 27)
!1654 = !DILocation(line: 946, column: 27, scope: !1617)
!1655 = !DILocation(line: 948, column: 23, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1653, file: !1, line: 946, column: 53)
!1657 = !DILocation(line: 949, column: 30, scope: !1617)
!1658 = !DILocation(line: 950, column: 23, scope: !1617)
!1659 = !DILocation(line: 957, column: 23, scope: !1617)
!1660 = !DILocation(line: 958, column: 28, scope: !1614)
!1661 = !DILocation(line: 980, column: 7, scope: !1533)
!1662 = !DILocation(line: 980, column: 14, scope: !1533)
!1663 = !DILocation(line: 980, column: 7, scope: !1534)
!1664 = !DILocation(line: 982, column: 29, scope: !1531)
!1665 = !DILocation(line: 982, column: 27, scope: !1531)
!1666 = !DILocation(line: 983, column: 16, scope: !1531)
!1667 = !DILocation(line: 983, column: 14, scope: !1531)
!1668 = !DILocation(line: 984, column: 24, scope: !1531)
!1669 = !DILocation(line: 984, column: 5, scope: !1531)
!1670 = !DILocation(line: 545, column: 7, scope: !384, inlinedAt: !1530)
!1671 = !DILocation(line: 545, column: 12, scope: !384, inlinedAt: !1530)
!1672 = !DILocation(line: 545, column: 9, scope: !384, inlinedAt: !1530)
!1673 = !DILocation(line: 545, column: 7, scope: !385, inlinedAt: !1530)
!1674 = !DILocation(line: 1000, column: 10, scope: !318, inlinedAt: !1675)
!1675 = distinct !DILocation(line: 549, column: 5, scope: !391, inlinedAt: !1530)
!1676 = !DILocation(line: 546, column: 9, scope: !394, inlinedAt: !1530)
!1677 = !DILocation(line: 546, column: 7, scope: !394, inlinedAt: !1530)
!1678 = !DILocation(line: 552, column: 3, scope: !385, inlinedAt: !1530)
!1679 = !DILocation(line: 986, column: 13, scope: !1532)
!1680 = !DILocation(line: 986, column: 5, scope: !1532)
!1681 = !DILocation(line: 990, column: 38, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1522, file: !1, line: 989, column: 3)
!1683 = !DILocation(line: 990, column: 52, scope: !1682)
!1684 = !DILocation(line: 990, column: 9, scope: !1682)
!1685 = !DILocation(line: 990, column: 7, scope: !1682)
!1686 = !DILocation(line: 992, column: 11, scope: !1522)
!1687 = !DILocation(line: 992, column: 3, scope: !1522)
!1688 = !DILocation(line: 994, column: 1, scope: !35)
