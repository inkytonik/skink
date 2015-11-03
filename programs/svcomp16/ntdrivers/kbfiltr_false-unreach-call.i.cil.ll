; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

%struct._DEVICE_OBJECT = type { i16, i16, i64, %struct._DRIVER_OBJECT*, %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT*, %struct._IRP*, %struct._IO_TIMER*, i64, i64, %struct._VPB*, i8*, i64, i8, %union.__anonunion_Queue_43, i64, %struct._KDEVICE_QUEUE, %struct._KDPC, i64, i8*, %struct._KEVENT, i16, i16, %struct._DEVOBJ_EXTENSION*, i8* }
%struct._DRIVER_OBJECT = type { i16, i16, %struct._DEVICE_OBJECT*, i64, i8*, i64, i8*, %struct._DRIVER_EXTENSION*, %struct._UNICODE_STRING, %struct._UNICODE_STRING*, %struct._FAST_IO_DISPATCH*, i64 (%struct._DRIVER_OBJECT*, %struct._UNICODE_STRING*)*, void (%struct._DEVICE_OBJECT*, %struct._IRP*)*, void (%struct._DRIVER_OBJECT*)*, [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*] }
%struct._DRIVER_EXTENSION = type { %struct._DRIVER_OBJECT*, i64 (%struct._DRIVER_OBJECT*, %struct._DEVICE_OBJECT*)*, i64, %struct._UNICODE_STRING }
%struct._UNICODE_STRING = type { i16, i16, i16* }
%struct._FAST_IO_DISPATCH = type { i64, i8 (%struct._FILE_OBJECT*, %union._LARGE_INTEGER*, i64, i8, i64, i8, %struct._IO_STATUS_BLOCK*, %struct._DEVICE_OBJECT*)*, i8 (%struct._FILE_OBJECT*, %union._LARGE_INTEGER*, i64, i8, i64, i8*, %struct._IO_STATUS_BLOCK*, %struct._DEVICE_OBJECT*)*, i8 (%struct._FILE_OBJECT*, %union._LARGE_INTEGER*, i64, i8, i64, i8*, %struct._IO_STATUS_BLOCK*, %struct._DEVICE_OBJECT*)*, i8 (%struct._FILE_OBJECT*, i8, %struct._FILE_BASIC_INFORMATION*, %struct._IO_STATUS_BLOCK*, %struct._DEVICE_OBJECT*)*, i8 (%struct._FILE_OBJECT*, i8, %struct._FILE_STANDARD_INFORMATION*, %struct._IO_STATUS_BLOCK*, %struct._DEVICE_OBJECT*)*, i8 (%struct._FILE_OBJECT*, %union._LARGE_INTEGER*, %union._LARGE_INTEGER*, %struct._EPROCESS*, i64, i8, i8, %struct._IO_STATUS_BLOCK*, %struct._DEVICE_OBJECT*)*, i8 (%struct._FILE_OBJECT*, %union._LARGE_INTEGER*, %union._LARGE_INTEGER*, %struct._EPROCESS*, i64, %struct._IO_STATUS_BLOCK*, %struct._DEVICE_OBJECT*)*, i8 (%struct._FILE_OBJECT*, %struct._EPROCESS*, %struct._IO_STATUS_BLOCK*, %struct._DEVICE_OBJECT*)*, i8 (%struct._FILE_OBJECT*, i8*, i64, %struct._IO_STATUS_BLOCK*, %struct._DEVICE_OBJECT*)*, i8 (%struct._FILE_OBJECT*, i8, i8*, i64, i8*, i64, i64, %struct._IO_STATUS_BLOCK*, %struct._DEVICE_OBJECT*)*, void (%struct._FILE_OBJECT*)*, void (%struct._FILE_OBJECT*)*, void (%struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT*)*, i8 (%struct._FILE_OBJECT*, i8, %struct._FILE_NETWORK_OPEN_INFORMATION*, %struct._IO_STATUS_BLOCK*, %struct._DEVICE_OBJECT*)*, i64 (%struct._FILE_OBJECT*, %union._LARGE_INTEGER*, %struct._ERESOURCE**, %struct._DEVICE_OBJECT*)*, i8 (%struct._FILE_OBJECT*, %union._LARGE_INTEGER*, i64, i64, %struct._MDL**, %struct._IO_STATUS_BLOCK*, %struct._DEVICE_OBJECT*)*, i8 (%struct._FILE_OBJECT*, %struct._MDL*, %struct._DEVICE_OBJECT*)*, i8 (%struct._FILE_OBJECT*, %union._LARGE_INTEGER*, i64, i64, %struct._MDL**, %struct._IO_STATUS_BLOCK*, %struct._DEVICE_OBJECT*)*, i8 (%struct._FILE_OBJECT*, %union._LARGE_INTEGER*, %struct._MDL*, %struct._DEVICE_OBJECT*)*, i8 (%struct._FILE_OBJECT*, %union._LARGE_INTEGER*, i64, i64, i8*, %struct._MDL**, %struct._IO_STATUS_BLOCK*, %struct._COMPRESSED_DATA_INFO*, i64, %struct._DEVICE_OBJECT*)*, i8 (%struct._FILE_OBJECT*, %union._LARGE_INTEGER*, i64, i64, i8*, %struct._MDL**, %struct._IO_STATUS_BLOCK*, %struct._COMPRESSED_DATA_INFO*, i64, %struct._DEVICE_OBJECT*)*, i8 (%struct._FILE_OBJECT*, %struct._MDL*, %struct._DEVICE_OBJECT*)*, i8 (%struct._FILE_OBJECT*, %union._LARGE_INTEGER*, %struct._MDL*, %struct._DEVICE_OBJECT*)*, i8 (%struct._IRP*, %struct._FILE_NETWORK_OPEN_INFORMATION*, %struct._DEVICE_OBJECT*)*, i64 (%struct._FILE_OBJECT*, %struct._ERESOURCE*, %struct._DEVICE_OBJECT*)*, i64 (%struct._FILE_OBJECT*, %struct._DEVICE_OBJECT*)*, i64 (%struct._FILE_OBJECT*, %struct._DEVICE_OBJECT*)* }
%struct._FILE_OBJECT = type { i16, i16, %struct._DEVICE_OBJECT*, %struct._VPB*, i8*, i8*, %struct._SECTION_OBJECT_POINTERS*, i8*, i64, %struct._FILE_OBJECT*, i8, i8, i8, i8, i8, i8, i8, i8, i64, %struct._UNICODE_STRING, %union._LARGE_INTEGER, i64, i64, i8*, %struct._KEVENT, %struct._KEVENT, %struct._IO_COMPLETION_CONTEXT* }
%struct._SECTION_OBJECT_POINTERS = type { i8*, i8*, i8* }
%union._LARGE_INTEGER = type { %struct.__anonstruct____missing_field_name_1 }
%struct.__anonstruct____missing_field_name_1 = type { i64, i64 }
%struct._IO_COMPLETION_CONTEXT = type { i8*, i8* }
%struct._IO_STATUS_BLOCK = type { %union.__anonunion____missing_field_name_6, i64 }
%union.__anonunion____missing_field_name_6 = type { i64 }
%struct._FILE_BASIC_INFORMATION = type { %union._LARGE_INTEGER, %union._LARGE_INTEGER, %union._LARGE_INTEGER, %union._LARGE_INTEGER, i64 }
%struct._FILE_STANDARD_INFORMATION = type { %union._LARGE_INTEGER, %union._LARGE_INTEGER, i64, i8, i8 }
%struct._EPROCESS = type opaque
%struct._FILE_NETWORK_OPEN_INFORMATION = type { %union._LARGE_INTEGER, %union._LARGE_INTEGER, %union._LARGE_INTEGER, %union._LARGE_INTEGER, %union._LARGE_INTEGER, %union._LARGE_INTEGER, i64 }
%struct._ERESOURCE = type { %struct._LIST_ENTRY, %struct._OWNER_ENTRY*, i16, i16, %struct._KSEMAPHORE*, %struct._KEVENT*, [2 x %struct._OWNER_ENTRY], i64, i16, i16, %union.__anonunion____missing_field_name_39, i64 }
%struct._LIST_ENTRY = type { %struct._LIST_ENTRY*, %struct._LIST_ENTRY* }
%struct._OWNER_ENTRY = type { i64, %union.__anonunion____missing_field_name_38 }
%union.__anonunion____missing_field_name_38 = type { i64 }
%struct._KSEMAPHORE = type { %struct._DISPATCHER_HEADER, i64 }
%struct._DISPATCHER_HEADER = type { i8, i8, i8, i8, i64, %struct._LIST_ENTRY }
%union.__anonunion____missing_field_name_39 = type { i8* }
%struct._MDL = type { %struct._MDL*, i16, i16, %struct._EPROCESS*, i8*, i8*, i64, i64 }
%struct._COMPRESSED_DATA_INFO = type opaque
%struct._IO_TIMER = type opaque
%struct._VPB = type { i16, i16, i16, i16, %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT*, i64, i64, [32 x i16] }
%union.__anonunion_Queue_43 = type { %struct._WAIT_CONTEXT_BLOCK }
%struct._WAIT_CONTEXT_BLOCK = type { %struct._KDEVICE_QUEUE_ENTRY, i32 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*, i8*)*, i8*, i64, i8*, i8*, %struct._KDPC* }
%struct._KDEVICE_QUEUE_ENTRY = type { %struct._LIST_ENTRY, i64, i8 }
%struct._KDEVICE_QUEUE = type { i16, i16, %struct._LIST_ENTRY, i64, i8 }
%struct._KDPC = type { i16, i8, i8, %struct._LIST_ENTRY, void (%struct._KDPC*, i8*, i8*, i8*)*, i8*, i8*, i8*, i64* }
%struct._KEVENT = type { %struct._DISPATCHER_HEADER }
%struct._DEVOBJ_EXTENSION = type { i16, i16, %struct._DEVICE_OBJECT* }
%struct._IRP = type { i16, i16, %struct._MDL*, i64, %union.__anonunion_AssociatedIrp_44, %struct._LIST_ENTRY, %struct._IO_STATUS_BLOCK, i8, i8, i8, i8, i8, i8, i8, i8, %struct._IO_STATUS_BLOCK*, %struct._KEVENT*, %union.__anonunion_Overlay_45, void (%struct._DEVICE_OBJECT*, %struct._IRP*)*, i8*, %union.__anonunion_Tail_47 }
%union.__anonunion_AssociatedIrp_44 = type { %struct._IRP* }
%union.__anonunion_Overlay_45 = type { %struct.__anonstruct_AsynchronousParameters_46 }
%struct.__anonstruct_AsynchronousParameters_46 = type { void (i8*, %struct._IO_STATUS_BLOCK*, i64)*, i8* }
%union.__anonunion_Tail_47 = type { %struct._KAPC }
%struct._KAPC = type { i16, i16, i64, %struct._KTHREAD*, %struct._LIST_ENTRY, void (%struct._KAPC*, void (i8*, i8*, i8*)**, i8**, i8**, i8**)*, void (%struct._KAPC*)*, void (i8*, i8*, i8*)*, i8*, i8*, i8*, i8, i8, i8 }
%struct._KTHREAD = type opaque
%struct._IO_STACK_LOCATION = type <{ i8, i8, i8, i8, %union.__anonunion_Parameters_55, %struct._DEVICE_OBJECT*, %struct._FILE_OBJECT*, {}*, i8* }>
%union.__anonunion_Parameters_55 = type { %struct.__anonstruct_Read_57 }
%struct.__anonstruct_Read_57 = type { i64, i64, %union._LARGE_INTEGER }
%struct.__anonstruct_Overlay_48 = type { %union.__anonunion____missing_field_name_49, %struct._ETHREAD*, i8*, %struct.__anonstruct____missing_field_name_51, %struct._FILE_OBJECT* }
%union.__anonunion____missing_field_name_49 = type { %struct._KDEVICE_QUEUE_ENTRY }
%struct._ETHREAD = type opaque
%struct.__anonstruct____missing_field_name_51 = type { %struct._LIST_ENTRY, %union.__anonunion____missing_field_name_52 }
%union.__anonunion____missing_field_name_52 = type { %struct._IO_STACK_LOCATION* }
%struct._DEVICE_EXTENSION = type { %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT*, i64, %struct._CONNECT_DATA, i8*, i64 (i8*, i8*, i64 (i8*, i8*, i8)*, i64 (i8*, i8, i8)*, i8*)*, i8 (i8*, %struct._KEYBOARD_INPUT_DATA*, %struct._OUTPUT_PACKET*, i8, i8*, i8*, i32*)*, void (i8*, i8)*, void (i8*)*, i8*, i32, i8, i8, i8 }
%struct._CONNECT_DATA = type { %struct._DEVICE_OBJECT*, i8* }
%struct._KEYBOARD_INPUT_DATA = type { i16, i16, i16, i16, i64 }
%struct._OUTPUT_PACKET = type { i8*, i64, i64, i32 }
%union._POWER_STATE = type { i32 }
%struct.__anonstruct_Power_81 = type <{ i64, i32, %union._POWER_STATE, i32 }>
%struct._INTERNAL_I8042_HOOK_KEYBOARD = type { i8*, i64 (i8*, i8*, i64 (i8*, i8*, i8)*, i64 (i8*, i8, i8)*, i8*)*, i8 (i8*, %struct._KEYBOARD_INPUT_DATA*, %struct._OUTPUT_PACKET*, i8, i8*, i8*, i32*)*, void (i8*, i8)*, void (i8*)*, i8* }
%struct.__anonstruct_DeviceIoControl_64 = type { i64, i64, i64, i8* }
%struct._FAST_MUTEX = type { i64, %struct._KTHREAD*, i64, %struct._KEVENT, i64 }
%struct._CONFIGURATION_INFORMATION = type { i64, i64, i64, i64, i64, i64, i64, i8, i8, i64, i64 }
%struct._KEY_VALUE_FULL_INFORMATION = type { i64, i64, i64, i64, i64, [1 x i16] }
%struct._GUID = type { i64, i16, i16, [8 x i8] }
%struct._OBJECT_TYPE = type opaque
%struct._OBJECT_HANDLE_INFORMATION = type { i64, i64 }
%struct._OBJECT_ATTRIBUTES = type { i64, i8*, %struct._UNICODE_STRING*, i64, i8*, i8* }
%struct._CLIENT_ID = type { i8*, i8* }
%struct._STRING = type { i16, i16, i8* }
%struct._RTL_QUERY_REGISTRY_TABLE = type { i64 (i16*, i64, i8*, i64, i8*, i8*)*, i64, i16*, i8*, i64, i8*, i64 }

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
@compFptr = common global i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)* null, align 8
@compRegistered = common global i32 0, align 4
@lowerDriverReturn = common global i32 0, align 4
@setEventCalled = common global i32 0, align 4
@customIrp = common global i32 0, align 4
@myStatus = common global i32 0, align 4
@pirp = common global %struct._IRP* null, align 8
@_SLAM_alloc_dummy = common global i8 0, align 1

; Function Attrs: nounwind ssp uwtable
define void @errorFn() #0 {
  br label %1, !dbg !1747

; <label>:1                                       ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !1748
  unreachable, !dbg !1748
                                                  ; No predecessors!
  ret void, !dbg !1750
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

; Function Attrs: nounwind ssp uwtable
define void @_BLAST_init() #0 {
  store i32 0, i32* @UNLOADED, align 4, !dbg !1751
  store i32 1, i32* @NP, align 4, !dbg !1753
  store i32 2, i32* @DC, align 4, !dbg !1754
  store i32 3, i32* @SKIP1, align 4, !dbg !1755
  store i32 4, i32* @SKIP2, align 4, !dbg !1756
  store i32 5, i32* @MPR1, align 4, !dbg !1757
  store i32 6, i32* @MPR3, align 4, !dbg !1758
  store i32 7, i32* @IPC, align 4, !dbg !1759
  %1 = load i32, i32* @UNLOADED, align 4, !dbg !1760
  store i32 %1, i32* @s, align 4, !dbg !1761
  store i32 0, i32* @pended, align 4, !dbg !1762
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)* null, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)** @compFptr, align 8, !dbg !1763
  store i32 0, i32* @compRegistered, align 4, !dbg !1764
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !1765
  store i32 0, i32* @setEventCalled, align 4, !dbg !1766
  store i32 0, i32* @customIrp, align 4, !dbg !1767
  ret void, !dbg !1768
}

; Function Attrs: nounwind ssp uwtable
define i64 @DriverEntry(%struct._DRIVER_OBJECT* %DriverObject, %struct._UNICODE_STRING* %RegistryPath) #0 {
  %1 = alloca %struct._DRIVER_OBJECT*, align 8
  %2 = alloca %struct._UNICODE_STRING*, align 8
  %i = alloca i64, align 8
  store %struct._DRIVER_OBJECT* %DriverObject, %struct._DRIVER_OBJECT** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._DRIVER_OBJECT** %1, metadata !1769, metadata !1770), !dbg !1771
  store %struct._UNICODE_STRING* %RegistryPath, %struct._UNICODE_STRING** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %2, metadata !1772, metadata !1770), !dbg !1773
  call void @llvm.dbg.declare(metadata i64* %i, metadata !1774, metadata !1770), !dbg !1775
  %3 = call i64 @__VERIFIER_nondet_long(), !dbg !1776
  store i64 %3, i64* %i, align 8, !dbg !1775
  %4 = load i64, i64* %i, align 8, !dbg !1777
  %5 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %1, align 8, !dbg !1779
  %6 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %5, i32 0, i32 14, !dbg !1780
  %7 = getelementptr inbounds [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*], [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*]* %6, i32 0, i64 %4, !dbg !1779
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @KbFilter_DispatchPassThrough, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)** %7, align 8, !dbg !1781
  %8 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %1, align 8, !dbg !1782
  %9 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %8, i32 0, i32 14, !dbg !1783
  %10 = getelementptr inbounds [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*], [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*]* %9, i32 0, i64 0, !dbg !1782
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @KbFilter_CreateClose, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)** %10, align 8, !dbg !1784
  %11 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %1, align 8, !dbg !1785
  %12 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %11, i32 0, i32 14, !dbg !1786
  %13 = getelementptr inbounds [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*], [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*]* %12, i32 0, i64 2, !dbg !1785
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @KbFilter_CreateClose, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)** %13, align 8, !dbg !1787
  %14 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %1, align 8, !dbg !1788
  %15 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %14, i32 0, i32 14, !dbg !1789
  %16 = getelementptr inbounds [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*], [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*]* %15, i32 0, i64 27, !dbg !1788
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @KbFilter_PnP, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)** %16, align 8, !dbg !1790
  %17 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %1, align 8, !dbg !1791
  %18 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %17, i32 0, i32 14, !dbg !1792
  %19 = getelementptr inbounds [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*], [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*]* %18, i32 0, i64 22, !dbg !1791
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @KbFilter_Power, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)** %19, align 8, !dbg !1793
  %20 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %1, align 8, !dbg !1794
  %21 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %20, i32 0, i32 14, !dbg !1795
  %22 = getelementptr inbounds [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*], [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*]* %21, i32 0, i64 15, !dbg !1794
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @KbFilter_InternIoCtl, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)** %22, align 8, !dbg !1796
  %23 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %1, align 8, !dbg !1797
  %24 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %23, i32 0, i32 13, !dbg !1798
  store void (%struct._DRIVER_OBJECT*)* @KbFilter_Unload, void (%struct._DRIVER_OBJECT*)** %24, align 8, !dbg !1799
  %25 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %1, align 8, !dbg !1800
  %26 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %25, i32 0, i32 7, !dbg !1801
  %27 = load %struct._DRIVER_EXTENSION*, %struct._DRIVER_EXTENSION** %26, align 8, !dbg !1801
  %28 = getelementptr inbounds %struct._DRIVER_EXTENSION, %struct._DRIVER_EXTENSION* %27, i32 0, i32 1, !dbg !1802
  store i64 (%struct._DRIVER_OBJECT*, %struct._DEVICE_OBJECT*)* @KbFilter_AddDevice, i64 (%struct._DRIVER_OBJECT*, %struct._DEVICE_OBJECT*)** %28, align 8, !dbg !1803
  ret i64 0, !dbg !1804
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i64 @__VERIFIER_nondet_long() #3

; Function Attrs: nounwind ssp uwtable
define i64 @KbFilter_DispatchPassThrough(%struct._DEVICE_OBJECT* %DeviceObject, %struct._IRP* %Irp) #0 {
  %1 = alloca %struct._DEVICE_OBJECT*, align 8
  %2 = alloca %struct._IRP*, align 8
  %irpStack = alloca %struct._IO_STACK_LOCATION*, align 8
  %tmp = alloca i64, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %1, metadata !1805, metadata !1770), !dbg !1806
  store %struct._IRP* %Irp, %struct._IRP** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %2, metadata !1807, metadata !1770), !dbg !1808
  call void @llvm.dbg.declare(metadata %struct._IO_STACK_LOCATION** %irpStack, metadata !1809, metadata !1770), !dbg !1811
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !1812, metadata !1770), !dbg !1813
  %3 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !1814
  %4 = getelementptr inbounds %struct._IRP, %struct._IRP* %3, i32 0, i32 20, !dbg !1816
  %5 = bitcast %union.__anonunion_Tail_47* %4 to %struct.__anonstruct_Overlay_48*, !dbg !1817
  %6 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %5, i32 0, i32 3, !dbg !1818
  %7 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %6, i32 0, i32 1, !dbg !1819
  %8 = bitcast %union.__anonunion____missing_field_name_52* %7 to %struct._IO_STACK_LOCATION**, !dbg !1820
  %9 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %8, align 8, !dbg !1820
  store %struct._IO_STACK_LOCATION* %9, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !1821
  %10 = load i32, i32* @s, align 4, !dbg !1822
  %11 = load i32, i32* @NP, align 4, !dbg !1824
  %12 = icmp eq i32 %10, %11, !dbg !1825
  br i1 %12, label %13, label %15, !dbg !1826

; <label>:13                                      ; preds = %0
  %14 = load i32, i32* @SKIP1, align 4, !dbg !1827
  store i32 %14, i32* @s, align 4, !dbg !1829
  br label %16, !dbg !1830

; <label>:15                                      ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !1831
  unreachable, !dbg !1831

errorFn.exit:                                     ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %errorFn.exit, %13
  %17 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !1835
  %18 = getelementptr inbounds %struct._IRP, %struct._IRP* %17, i32 0, i32 10, !dbg !1837
  %19 = load i8, i8* %18, align 1, !dbg !1837
  %20 = sext i8 %19 to i32, !dbg !1838
  %21 = add nsw i32 %20, 1, !dbg !1839
  %22 = trunc i32 %21 to i8, !dbg !1840
  %23 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !1841
  %24 = getelementptr inbounds %struct._IRP, %struct._IRP* %23, i32 0, i32 10, !dbg !1842
  store i8 %22, i8* %24, align 1, !dbg !1843
  %25 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !1844
  %26 = getelementptr inbounds %struct._IRP, %struct._IRP* %25, i32 0, i32 20, !dbg !1845
  %27 = bitcast %union.__anonunion_Tail_47* %26 to %struct.__anonstruct_Overlay_48*, !dbg !1846
  %28 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %27, i32 0, i32 3, !dbg !1847
  %29 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %28, i32 0, i32 1, !dbg !1848
  %30 = bitcast %union.__anonunion____missing_field_name_52* %29 to %struct._IO_STACK_LOCATION**, !dbg !1849
  %31 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %30, align 8, !dbg !1850
  %32 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %31, i64 1, !dbg !1850
  store %struct._IO_STACK_LOCATION* %32, %struct._IO_STACK_LOCATION** %30, align 8, !dbg !1850
  %33 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %1, align 8, !dbg !1851
  %34 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %33, i32 0, i32 11, !dbg !1852
  %35 = load i8*, i8** %34, align 8, !dbg !1852
  %36 = bitcast i8* %35 to %struct._DEVICE_EXTENSION*, !dbg !1853
  %37 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %36, i32 0, i32 2, !dbg !1854
  %38 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %37, align 8, !dbg !1854
  %39 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !1855
  %40 = call i64 @IofCallDriver(%struct._DEVICE_OBJECT* %38, %struct._IRP* %39), !dbg !1856
  store i64 %40, i64* %tmp, align 8, !dbg !1857
  %41 = load i64, i64* %tmp, align 8, !dbg !1858
  ret i64 %41, !dbg !1859
}

; Function Attrs: nounwind ssp uwtable
define i64 @KbFilter_CreateClose(%struct._DEVICE_OBJECT* %DeviceObject, %struct._IRP* %Irp) #0 {
  %1 = alloca %struct._DEVICE_OBJECT*, align 8
  %2 = alloca %struct._IRP*, align 8
  %irpStack.i = alloca %struct._IO_STACK_LOCATION*, align 8
  %tmp.i = alloca i64, align 8
  %3 = alloca %struct._DEVICE_OBJECT*, align 8
  %4 = alloca %struct._IRP*, align 8
  %irpStack = alloca %struct._IO_STACK_LOCATION*, align 8
  %status = alloca i64, align 8
  %devExt = alloca %struct._DEVICE_EXTENSION*, align 8
  %tmp = alloca i64, align 8
  %tmp___0 = alloca i64, align 8
  %tmp___1 = alloca i64, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %3, metadata !1860, metadata !1770), !dbg !1861
  store %struct._IRP* %Irp, %struct._IRP** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %4, metadata !1862, metadata !1770), !dbg !1863
  call void @llvm.dbg.declare(metadata %struct._IO_STACK_LOCATION** %irpStack, metadata !1864, metadata !1770), !dbg !1865
  call void @llvm.dbg.declare(metadata i64* %status, metadata !1866, metadata !1770), !dbg !1867
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %devExt, metadata !1868, metadata !1770), !dbg !1870
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !1871, metadata !1770), !dbg !1872
  call void @llvm.dbg.declare(metadata i64* %tmp___0, metadata !1873, metadata !1770), !dbg !1874
  call void @llvm.dbg.declare(metadata i64* %tmp___1, metadata !1875, metadata !1770), !dbg !1876
  %5 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !1877
  %6 = getelementptr inbounds %struct._IRP, %struct._IRP* %5, i32 0, i32 20, !dbg !1879
  %7 = bitcast %union.__anonunion_Tail_47* %6 to %struct.__anonstruct_Overlay_48*, !dbg !1880
  %8 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %7, i32 0, i32 3, !dbg !1881
  %9 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %8, i32 0, i32 1, !dbg !1882
  %10 = bitcast %union.__anonunion____missing_field_name_52* %9 to %struct._IO_STACK_LOCATION**, !dbg !1883
  %11 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %10, align 8, !dbg !1883
  store %struct._IO_STACK_LOCATION* %11, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !1884
  %12 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %3, align 8, !dbg !1885
  %13 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %12, i32 0, i32 11, !dbg !1886
  %14 = load i8*, i8** %13, align 8, !dbg !1886
  %15 = bitcast i8* %14 to %struct._DEVICE_EXTENSION*, !dbg !1887
  store %struct._DEVICE_EXTENSION* %15, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !1888
  %16 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !1889
  %17 = getelementptr inbounds %struct._IRP, %struct._IRP* %16, i32 0, i32 6, !dbg !1890
  %18 = getelementptr inbounds %struct._IO_STATUS_BLOCK, %struct._IO_STATUS_BLOCK* %17, i32 0, i32 0, !dbg !1891
  %19 = bitcast %union.__anonunion____missing_field_name_6* %18 to i64*, !dbg !1892
  %20 = load i64, i64* %19, align 8, !dbg !1892
  store i64 %20, i64* %status, align 8, !dbg !1893
  %21 = load i32, i32* @myStatus, align 4, !dbg !1894
  %22 = sext i32 %21 to i64, !dbg !1894
  store i64 %22, i64* %status, align 8, !dbg !1895
  %23 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !1896
  %24 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %23, i32 0, i32 0, !dbg !1898
  %25 = load i8, i8* %24, align 1, !dbg !1898
  %26 = zext i8 %25 to i32, !dbg !1896
  %27 = icmp eq i32 %26, 0, !dbg !1899
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %1, metadata !1805, metadata !1770), !dbg !1900
  call void @llvm.dbg.declare(metadata %struct._IRP** %2, metadata !1807, metadata !1770), !dbg !1903
  call void @llvm.dbg.declare(metadata %struct._IO_STACK_LOCATION** %irpStack.i, metadata !1809, metadata !1770), !dbg !1904
  call void @llvm.dbg.declare(metadata i64* %tmp.i, metadata !1812, metadata !1770), !dbg !1905
  br i1 %27, label %28, label %29, !dbg !1906

; <label>:28                                      ; preds = %0
  br label %38, !dbg !1907

; <label>:29                                      ; preds = %0
  %30 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !1909
  %31 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %30, i32 0, i32 0, !dbg !1912
  %32 = load i8, i8* %31, align 1, !dbg !1912
  %33 = zext i8 %32 to i32, !dbg !1909
  %34 = icmp eq i32 %33, 2, !dbg !1913
  br i1 %34, label %35, label %36, !dbg !1914

; <label>:35                                      ; preds = %29
  br label %56, !dbg !1915

; <label>:36                                      ; preds = %29
  br i1 false, label %37, label %65, !dbg !1917

; <label>:37                                      ; preds = %36
  br label %38, !dbg !1919

; <label>:38                                      ; preds = %37, %28
  %39 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !1921
  %40 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %39, i32 0, i32 4, !dbg !1924
  %41 = getelementptr inbounds %struct._CONNECT_DATA, %struct._CONNECT_DATA* %40, i32 0, i32 1, !dbg !1925
  %42 = load i8*, i8** %41, align 8, !dbg !1925
  %43 = ptrtoint i8* %42 to i32, !dbg !1926
  %44 = icmp eq i32 0, %43, !dbg !1927
  br i1 %44, label %45, label %46, !dbg !1928

; <label>:45                                      ; preds = %38
  store i64 -1073741436, i64* %status, align 8, !dbg !1929
  br label %55, !dbg !1931

; <label>:46                                      ; preds = %38
  %47 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !1932
  %48 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %47, i32 0, i32 3, !dbg !1935
  %49 = call i64 @InterlockedIncrement(i64* %48), !dbg !1936
  store i64 %49, i64* %tmp, align 8, !dbg !1937
  %50 = load i64, i64* %tmp, align 8, !dbg !1938
  %51 = icmp eq i64 1, %50, !dbg !1940
  br i1 %51, label %52, label %53, !dbg !1941

; <label>:52                                      ; preds = %46
  br label %54, !dbg !1942

; <label>:53                                      ; preds = %46
  br label %54

; <label>:54                                      ; preds = %53, %52
  br label %55

; <label>:55                                      ; preds = %54, %45
  br label %66, !dbg !1944

; <label>:56                                      ; preds = %35
  %57 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !1945
  %58 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %57, i32 0, i32 3, !dbg !1947
  %59 = call i64 @InterlockedDecrement(i64* %58), !dbg !1948
  store i64 %59, i64* %tmp___0, align 8, !dbg !1949
  %60 = load i64, i64* %tmp___0, align 8, !dbg !1950
  %61 = icmp eq i64 0, %60, !dbg !1952
  br i1 %61, label %62, label %63, !dbg !1953

; <label>:62                                      ; preds = %56
  br label %64, !dbg !1954

; <label>:63                                      ; preds = %56
  br label %64

; <label>:64                                      ; preds = %63, %62
  br label %66, !dbg !1956

; <label>:65                                      ; preds = %36
  br label %66, !dbg !1957

; <label>:66                                      ; preds = %65, %64, %55
  br label %67

; <label>:67                                      ; preds = %66
  br label %68

; <label>:68                                      ; preds = %67
  br label %69

; <label>:69                                      ; preds = %68
  %70 = load i64, i64* %status, align 8, !dbg !1958
  %71 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !1959
  %72 = getelementptr inbounds %struct._IRP, %struct._IRP* %71, i32 0, i32 6, !dbg !1960
  %73 = getelementptr inbounds %struct._IO_STATUS_BLOCK, %struct._IO_STATUS_BLOCK* %72, i32 0, i32 0, !dbg !1961
  %74 = bitcast %union.__anonunion____missing_field_name_6* %73 to i64*, !dbg !1962
  store i64 %70, i64* %74, align 8, !dbg !1963
  %75 = load i64, i64* %status, align 8, !dbg !1964
  %76 = trunc i64 %75 to i32, !dbg !1964
  store i32 %76, i32* @myStatus, align 4, !dbg !1965
  %77 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %3, align 8, !dbg !1966
  %78 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !1967
  %79 = bitcast %struct._DEVICE_OBJECT** %1 to i8*, !dbg !1968
  call void @llvm.lifetime.start(i64 8, i8* %79), !dbg !1968
  %80 = bitcast %struct._IRP** %2 to i8*, !dbg !1968
  call void @llvm.lifetime.start(i64 8, i8* %80), !dbg !1968
  %81 = bitcast %struct._IO_STACK_LOCATION** %irpStack.i to i8*, !dbg !1968
  call void @llvm.lifetime.start(i64 8, i8* %81), !dbg !1968
  %82 = bitcast i64* %tmp.i to i8*, !dbg !1968
  call void @llvm.lifetime.start(i64 8, i8* %82), !dbg !1968
  store %struct._DEVICE_OBJECT* %77, %struct._DEVICE_OBJECT** %1, align 8, !dbg !1968
  store %struct._IRP* %78, %struct._IRP** %2, align 8, !dbg !1968
  %83 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !1969
  %84 = getelementptr inbounds %struct._IRP, %struct._IRP* %83, i32 0, i32 20, !dbg !1970
  %85 = bitcast %union.__anonunion_Tail_47* %84 to %struct.__anonstruct_Overlay_48*, !dbg !1971
  %86 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %85, i32 0, i32 3, !dbg !1972
  %87 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %86, i32 0, i32 1, !dbg !1973
  %88 = bitcast %union.__anonunion____missing_field_name_52* %87 to %struct._IO_STACK_LOCATION**, !dbg !1974
  %89 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %88, align 8, !dbg !1974
  store %struct._IO_STACK_LOCATION* %89, %struct._IO_STACK_LOCATION** %irpStack.i, align 8, !dbg !1975
  %90 = load i32, i32* @s, align 4, !dbg !1976
  %91 = load i32, i32* @NP, align 4, !dbg !1977
  %92 = icmp eq i32 %90, %91, !dbg !1978
  br i1 %92, label %KbFilter_DispatchPassThrough.exit, label %93, !dbg !1979

; <label>:93                                      ; preds = %69
  call void (...) @__VERIFIER_error() #6, !dbg !1980
  unreachable, !dbg !1980

KbFilter_DispatchPassThrough.exit:                ; preds = %69
  %94 = load i32, i32* @SKIP1, align 4, !dbg !1982
  store i32 %94, i32* @s, align 4, !dbg !1983
  %95 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !1984
  %96 = getelementptr inbounds %struct._IRP, %struct._IRP* %95, i32 0, i32 10, !dbg !1985
  %97 = load i8, i8* %96, align 1, !dbg !1985
  %98 = sext i8 %97 to i32, !dbg !1986
  %99 = add nsw i32 %98, 1, !dbg !1987
  %100 = trunc i32 %99 to i8, !dbg !1988
  %101 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !1989
  %102 = getelementptr inbounds %struct._IRP, %struct._IRP* %101, i32 0, i32 10, !dbg !1990
  store i8 %100, i8* %102, align 1, !dbg !1991
  %103 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !1992
  %104 = getelementptr inbounds %struct._IRP, %struct._IRP* %103, i32 0, i32 20, !dbg !1993
  %105 = bitcast %union.__anonunion_Tail_47* %104 to %struct.__anonstruct_Overlay_48*, !dbg !1994
  %106 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %105, i32 0, i32 3, !dbg !1995
  %107 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %106, i32 0, i32 1, !dbg !1996
  %108 = bitcast %union.__anonunion____missing_field_name_52* %107 to %struct._IO_STACK_LOCATION**, !dbg !1997
  %109 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %108, align 8, !dbg !1998
  %110 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %109, i64 1, !dbg !1998
  store %struct._IO_STACK_LOCATION* %110, %struct._IO_STACK_LOCATION** %108, align 8, !dbg !1998
  %111 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %1, align 8, !dbg !1999
  %112 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %111, i32 0, i32 11, !dbg !2000
  %113 = load i8*, i8** %112, align 8, !dbg !2000
  %114 = bitcast i8* %113 to %struct._DEVICE_EXTENSION*, !dbg !2001
  %115 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %114, i32 0, i32 2, !dbg !2002
  %116 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %115, align 8, !dbg !2002
  %117 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2003
  %118 = call i64 @IofCallDriver(%struct._DEVICE_OBJECT* %116, %struct._IRP* %117) #4, !dbg !2004
  store i64 %118, i64* %tmp.i, align 8, !dbg !2005
  %119 = load i64, i64* %tmp.i, align 8, !dbg !2006
  %120 = bitcast %struct._DEVICE_OBJECT** %1 to i8*, !dbg !2007
  call void @llvm.lifetime.end(i64 8, i8* %120), !dbg !2007
  %121 = bitcast %struct._IRP** %2 to i8*, !dbg !2007
  call void @llvm.lifetime.end(i64 8, i8* %121), !dbg !2007
  %122 = bitcast %struct._IO_STACK_LOCATION** %irpStack.i to i8*, !dbg !2007
  call void @llvm.lifetime.end(i64 8, i8* %122), !dbg !2007
  %123 = bitcast i64* %tmp.i to i8*, !dbg !2007
  call void @llvm.lifetime.end(i64 8, i8* %123), !dbg !2007
  store i64 %119, i64* %tmp___1, align 8, !dbg !2008
  %124 = load i64, i64* %tmp___1, align 8, !dbg !2009
  ret i64 %124, !dbg !2010
}

; Function Attrs: nounwind ssp uwtable
define i64 @KbFilter_PnP(%struct._DEVICE_OBJECT* %DeviceObject, %struct._IRP* %Irp) #0 {
  %1 = alloca %struct._IRP*, align 8
  %2 = alloca i8, align 1
  %3 = alloca %struct._DEVICE_OBJECT*, align 8
  %4 = alloca %struct._IRP*, align 8
  %devExt = alloca %struct._DEVICE_EXTENSION*, align 8
  %irpStack = alloca %struct._IO_STACK_LOCATION*, align 8
  %status = alloca i64, align 8
  %event = alloca %struct._KEVENT, align 8
  %irpSp = alloca %struct._IO_STACK_LOCATION*, align 8
  %nextIrpSp = alloca %struct._IO_STACK_LOCATION*, align 8
  %irpSp___0 = alloca %struct._IO_STACK_LOCATION*, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %3, metadata !2011, metadata !1770), !dbg !2012
  store %struct._IRP* %Irp, %struct._IRP** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %4, metadata !2013, metadata !1770), !dbg !2014
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %devExt, metadata !2015, metadata !1770), !dbg !2016
  call void @llvm.dbg.declare(metadata %struct._IO_STACK_LOCATION** %irpStack, metadata !2017, metadata !1770), !dbg !2018
  call void @llvm.dbg.declare(metadata i64* %status, metadata !2019, metadata !1770), !dbg !2020
  call void @llvm.dbg.declare(metadata %struct._KEVENT* %event, metadata !2021, metadata !1770), !dbg !2022
  call void @llvm.dbg.declare(metadata %struct._IO_STACK_LOCATION** %irpSp, metadata !2023, metadata !1770), !dbg !2024
  call void @llvm.dbg.declare(metadata %struct._IO_STACK_LOCATION** %nextIrpSp, metadata !2025, metadata !1770), !dbg !2026
  call void @llvm.dbg.declare(metadata %struct._IO_STACK_LOCATION** %irpSp___0, metadata !2027, metadata !1770), !dbg !2028
  store i64 0, i64* %status, align 8, !dbg !2029
  %5 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %3, align 8, !dbg !2031
  %6 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %5, i32 0, i32 11, !dbg !2032
  %7 = load i8*, i8** %6, align 8, !dbg !2032
  %8 = bitcast i8* %7 to %struct._DEVICE_EXTENSION*, !dbg !2033
  store %struct._DEVICE_EXTENSION* %8, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !2034
  %9 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !2035
  %10 = getelementptr inbounds %struct._IRP, %struct._IRP* %9, i32 0, i32 20, !dbg !2036
  %11 = bitcast %union.__anonunion_Tail_47* %10 to %struct.__anonstruct_Overlay_48*, !dbg !2037
  %12 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %11, i32 0, i32 3, !dbg !2038
  %13 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %12, i32 0, i32 1, !dbg !2039
  %14 = bitcast %union.__anonunion____missing_field_name_52* %13 to %struct._IO_STACK_LOCATION**, !dbg !2040
  %15 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %14, align 8, !dbg !2040
  store %struct._IO_STACK_LOCATION* %15, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2041
  %16 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2042
  %17 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %16, i32 0, i32 1, !dbg !2044
  %18 = load i8, i8* %17, align 1, !dbg !2044
  %19 = zext i8 %18 to i32, !dbg !2042
  %20 = icmp eq i32 %19, 0, !dbg !2045
  call void @llvm.dbg.declare(metadata %struct._IRP** %1, metadata !2046, metadata !1770), !dbg !2047
  call void @llvm.dbg.declare(metadata i8* %2, metadata !2094, metadata !1770), !dbg !2095
  br i1 %20, label %21, label %22, !dbg !2096

; <label>:21                                      ; preds = %0
  br label %165, !dbg !2097

; <label>:22                                      ; preds = %0
  %23 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2099
  %24 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %23, i32 0, i32 1, !dbg !2100
  %25 = load i8, i8* %24, align 1, !dbg !2100
  %26 = zext i8 %25 to i32, !dbg !2099
  %27 = icmp eq i32 %26, 23, !dbg !2101
  br i1 %27, label %28, label %29, !dbg !2102

; <label>:28                                      ; preds = %22
  br label %280, !dbg !2103

; <label>:29                                      ; preds = %22
  %30 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2105
  %31 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %30, i32 0, i32 1, !dbg !2106
  %32 = load i8, i8* %31, align 1, !dbg !2106
  %33 = zext i8 %32 to i32, !dbg !2105
  %34 = icmp eq i32 %33, 2, !dbg !2107
  br i1 %34, label %35, label %36, !dbg !2108

; <label>:35                                      ; preds = %29
  br label %311, !dbg !2109

; <label>:36                                      ; preds = %29
  %37 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2111
  %38 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %37, i32 0, i32 1, !dbg !2112
  %39 = load i8, i8* %38, align 1, !dbg !2112
  %40 = zext i8 %39 to i32, !dbg !2111
  %41 = icmp eq i32 %40, 1, !dbg !2113
  br i1 %41, label %42, label %43, !dbg !2114

; <label>:42                                      ; preds = %36
  br label %342, !dbg !2115

; <label>:43                                      ; preds = %36
  %44 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2117
  %45 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %44, i32 0, i32 1, !dbg !2118
  %46 = load i8, i8* %45, align 1, !dbg !2118
  %47 = zext i8 %46 to i32, !dbg !2117
  %48 = icmp eq i32 %47, 5, !dbg !2119
  br i1 %48, label %49, label %50, !dbg !2120

; <label>:49                                      ; preds = %43
  br label %343, !dbg !2121

; <label>:50                                      ; preds = %43
  %51 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2123
  %52 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %51, i32 0, i32 1, !dbg !2124
  %53 = load i8, i8* %52, align 1, !dbg !2124
  %54 = zext i8 %53 to i32, !dbg !2123
  %55 = icmp eq i32 %54, 3, !dbg !2125
  br i1 %55, label %56, label %57, !dbg !2126

; <label>:56                                      ; preds = %50
  br label %344, !dbg !2127

; <label>:57                                      ; preds = %50
  %58 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2129
  %59 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %58, i32 0, i32 1, !dbg !2130
  %60 = load i8, i8* %59, align 1, !dbg !2130
  %61 = zext i8 %60 to i32, !dbg !2129
  %62 = icmp eq i32 %61, 6, !dbg !2131
  br i1 %62, label %63, label %64, !dbg !2132

; <label>:63                                      ; preds = %57
  br label %345, !dbg !2133

; <label>:64                                      ; preds = %57
  %65 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2135
  %66 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %65, i32 0, i32 1, !dbg !2136
  %67 = load i8, i8* %66, align 1, !dbg !2136
  %68 = zext i8 %67 to i32, !dbg !2135
  %69 = icmp eq i32 %68, 13, !dbg !2137
  br i1 %69, label %70, label %71, !dbg !2138

; <label>:70                                      ; preds = %64
  br label %346, !dbg !2139

; <label>:71                                      ; preds = %64
  %72 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2141
  %73 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %72, i32 0, i32 1, !dbg !2142
  %74 = load i8, i8* %73, align 1, !dbg !2142
  %75 = zext i8 %74 to i32, !dbg !2141
  %76 = icmp eq i32 %75, 4, !dbg !2143
  br i1 %76, label %77, label %78, !dbg !2144

; <label>:77                                      ; preds = %71
  br label %347, !dbg !2145

; <label>:78                                      ; preds = %71
  %79 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2147
  %80 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %79, i32 0, i32 1, !dbg !2148
  %81 = load i8, i8* %80, align 1, !dbg !2148
  %82 = zext i8 %81 to i32, !dbg !2147
  %83 = icmp eq i32 %82, 7, !dbg !2149
  br i1 %83, label %84, label %85, !dbg !2150

; <label>:84                                      ; preds = %78
  br label %348, !dbg !2151

; <label>:85                                      ; preds = %78
  %86 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2153
  %87 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %86, i32 0, i32 1, !dbg !2154
  %88 = load i8, i8* %87, align 1, !dbg !2154
  %89 = zext i8 %88 to i32, !dbg !2153
  %90 = icmp eq i32 %89, 8, !dbg !2155
  br i1 %90, label %91, label %92, !dbg !2156

; <label>:91                                      ; preds = %85
  br label %349, !dbg !2157

; <label>:92                                      ; preds = %85
  %93 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2159
  %94 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %93, i32 0, i32 1, !dbg !2160
  %95 = load i8, i8* %94, align 1, !dbg !2160
  %96 = zext i8 %95 to i32, !dbg !2159
  %97 = icmp eq i32 %96, 9, !dbg !2161
  br i1 %97, label %98, label %99, !dbg !2162

; <label>:98                                      ; preds = %92
  br label %350, !dbg !2163

; <label>:99                                      ; preds = %92
  %100 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2165
  %101 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %100, i32 0, i32 1, !dbg !2166
  %102 = load i8, i8* %101, align 1, !dbg !2166
  %103 = zext i8 %102 to i32, !dbg !2165
  %104 = icmp eq i32 %103, 12, !dbg !2167
  br i1 %104, label %105, label %106, !dbg !2168

; <label>:105                                     ; preds = %99
  br label %351, !dbg !2169

; <label>:106                                     ; preds = %99
  %107 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2171
  %108 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %107, i32 0, i32 1, !dbg !2172
  %109 = load i8, i8* %108, align 1, !dbg !2172
  %110 = zext i8 %109 to i32, !dbg !2171
  %111 = icmp eq i32 %110, 10, !dbg !2173
  br i1 %111, label %112, label %113, !dbg !2174

; <label>:112                                     ; preds = %106
  br label %352, !dbg !2175

; <label>:113                                     ; preds = %106
  %114 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2177
  %115 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %114, i32 0, i32 1, !dbg !2178
  %116 = load i8, i8* %115, align 1, !dbg !2178
  %117 = zext i8 %116 to i32, !dbg !2177
  %118 = icmp eq i32 %117, 11, !dbg !2179
  br i1 %118, label %119, label %120, !dbg !2180

; <label>:119                                     ; preds = %113
  br label %353, !dbg !2181

; <label>:120                                     ; preds = %113
  %121 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2183
  %122 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %121, i32 0, i32 1, !dbg !2184
  %123 = load i8, i8* %122, align 1, !dbg !2184
  %124 = zext i8 %123 to i32, !dbg !2183
  %125 = icmp eq i32 %124, 15, !dbg !2185
  br i1 %125, label %126, label %127, !dbg !2186

; <label>:126                                     ; preds = %120
  br label %354, !dbg !2187

; <label>:127                                     ; preds = %120
  %128 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2189
  %129 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %128, i32 0, i32 1, !dbg !2190
  %130 = load i8, i8* %129, align 1, !dbg !2190
  %131 = zext i8 %130 to i32, !dbg !2189
  %132 = icmp eq i32 %131, 16, !dbg !2191
  br i1 %132, label %133, label %134, !dbg !2192

; <label>:133                                     ; preds = %127
  br label %355, !dbg !2193

; <label>:134                                     ; preds = %127
  %135 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2195
  %136 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %135, i32 0, i32 1, !dbg !2196
  %137 = load i8, i8* %136, align 1, !dbg !2196
  %138 = zext i8 %137 to i32, !dbg !2195
  %139 = icmp eq i32 %138, 17, !dbg !2197
  br i1 %139, label %140, label %141, !dbg !2198

; <label>:140                                     ; preds = %134
  br label %356, !dbg !2199

; <label>:141                                     ; preds = %134
  %142 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2201
  %143 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %142, i32 0, i32 1, !dbg !2202
  %144 = load i8, i8* %143, align 1, !dbg !2202
  %145 = zext i8 %144 to i32, !dbg !2201
  %146 = icmp eq i32 %145, 18, !dbg !2203
  br i1 %146, label %147, label %148, !dbg !2204

; <label>:147                                     ; preds = %141
  br label %357, !dbg !2205

; <label>:148                                     ; preds = %141
  %149 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2207
  %150 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %149, i32 0, i32 1, !dbg !2208
  %151 = load i8, i8* %150, align 1, !dbg !2208
  %152 = zext i8 %151 to i32, !dbg !2207
  %153 = icmp eq i32 %152, 19, !dbg !2209
  br i1 %153, label %154, label %155, !dbg !2210

; <label>:154                                     ; preds = %148
  br label %358, !dbg !2211

; <label>:155                                     ; preds = %148
  %156 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2213
  %157 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %156, i32 0, i32 1, !dbg !2214
  %158 = load i8, i8* %157, align 1, !dbg !2214
  %159 = zext i8 %158 to i32, !dbg !2213
  %160 = icmp eq i32 %159, 20, !dbg !2215
  br i1 %160, label %161, label %162, !dbg !2216

; <label>:161                                     ; preds = %155
  br label %359, !dbg !2217

; <label>:162                                     ; preds = %155
  br label %360, !dbg !2219
                                                  ; No predecessors!
  br i1 false, label %164, label %389, !dbg !2220

; <label>:164                                     ; preds = %163
  br label %165, !dbg !2221

; <label>:165                                     ; preds = %164, %21
  %166 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !2222
  %167 = getelementptr inbounds %struct._IRP, %struct._IRP* %166, i32 0, i32 20, !dbg !2224
  %168 = bitcast %union.__anonunion_Tail_47* %167 to %struct.__anonstruct_Overlay_48*, !dbg !2225
  %169 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %168, i32 0, i32 3, !dbg !2226
  %170 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %169, i32 0, i32 1, !dbg !2227
  %171 = bitcast %union.__anonunion____missing_field_name_52* %170 to %struct._IO_STACK_LOCATION**, !dbg !2228
  %172 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %171, align 8, !dbg !2228
  store %struct._IO_STACK_LOCATION* %172, %struct._IO_STACK_LOCATION** %irpSp, align 8, !dbg !2229
  %173 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !2230
  %174 = getelementptr inbounds %struct._IRP, %struct._IRP* %173, i32 0, i32 20, !dbg !2231
  %175 = bitcast %union.__anonunion_Tail_47* %174 to %struct.__anonstruct_Overlay_48*, !dbg !2232
  %176 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %175, i32 0, i32 3, !dbg !2233
  %177 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %176, i32 0, i32 1, !dbg !2234
  %178 = bitcast %union.__anonunion____missing_field_name_52* %177 to %struct._IO_STACK_LOCATION**, !dbg !2235
  %179 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %178, align 8, !dbg !2235
  %180 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %179, i64 -1, !dbg !2236
  store %struct._IO_STACK_LOCATION* %180, %struct._IO_STACK_LOCATION** %nextIrpSp, align 8, !dbg !2237
  %181 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %nextIrpSp, align 8, !dbg !2238
  %182 = bitcast %struct._IO_STACK_LOCATION* %181 to i8*, !dbg !2238
  %183 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp, align 8, !dbg !2239
  %184 = bitcast %struct._IO_STACK_LOCATION* %183 to i8*, !dbg !2239
  %185 = call i8* @memcpy(i8* %182, i8* %184, i32 ptrtoint ({}** getelementptr inbounds (%struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* null, i32 0, i32 7) to i32)), !dbg !2240
  %186 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %nextIrpSp, align 8, !dbg !2241
  %187 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %186, i32 0, i32 3, !dbg !2242
  store i8 0, i8* %187, align 1, !dbg !2243
  %188 = load i32, i32* @s, align 4, !dbg !2244
  %189 = load i32, i32* @NP, align 4, !dbg !2246
  %190 = icmp ne i32 %188, %189, !dbg !2247
  br i1 %190, label %191, label %192, !dbg !2248

; <label>:191                                     ; preds = %165
  call void (...) @__VERIFIER_error() #6, !dbg !2249
  unreachable, !dbg !2249

errorFn.exit:                                     ; No predecessors!
  br label %198, !dbg !2253

; <label>:192                                     ; preds = %165
  %193 = load i32, i32* @compRegistered, align 4, !dbg !2254
  %194 = icmp ne i32 %193, 0, !dbg !2257
  br i1 %194, label %195, label %196, !dbg !2258

; <label>:195                                     ; preds = %192
  call void (...) @__VERIFIER_error() #6, !dbg !2259
  unreachable, !dbg !2259

errorFn.exit1:                                    ; No predecessors!
  br label %197, !dbg !2263

; <label>:196                                     ; preds = %192
  store i32 1, i32* @compRegistered, align 4, !dbg !2264
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)* @KbFilter_Complete, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)** @compFptr, align 8, !dbg !2266
  br label %197

; <label>:197                                     ; preds = %196, %errorFn.exit1
  br label %198

; <label>:198                                     ; preds = %197, %errorFn.exit
  %199 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !2267
  %200 = getelementptr inbounds %struct._IRP, %struct._IRP* %199, i32 0, i32 20, !dbg !2269
  %201 = bitcast %union.__anonunion_Tail_47* %200 to %struct.__anonstruct_Overlay_48*, !dbg !2270
  %202 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %201, i32 0, i32 3, !dbg !2271
  %203 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %202, i32 0, i32 1, !dbg !2272
  %204 = bitcast %union.__anonunion____missing_field_name_52* %203 to %struct._IO_STACK_LOCATION**, !dbg !2273
  %205 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %204, align 8, !dbg !2273
  %206 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %205, i64 -1, !dbg !2274
  store %struct._IO_STACK_LOCATION* %206, %struct._IO_STACK_LOCATION** %irpSp___0, align 8, !dbg !2275
  %207 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp___0, align 8, !dbg !2276
  %208 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %207, i32 0, i32 7, !dbg !2277
  %209 = bitcast {}** %208 to i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)**, !dbg !2277
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)* @KbFilter_Complete, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)** %209, align 4, !dbg !2278
  %210 = bitcast %struct._KEVENT* %event to i8*, !dbg !2279
  %211 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp___0, align 8, !dbg !2280
  %212 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %211, i32 0, i32 8, !dbg !2281
  store i8* %210, i8** %212, align 4, !dbg !2282
  %213 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp___0, align 8, !dbg !2283
  %214 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %213, i32 0, i32 3, !dbg !2284
  store i8 0, i8* %214, align 1, !dbg !2285
  %215 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp___0, align 8, !dbg !2286
  %216 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %215, i32 0, i32 3, !dbg !2287
  store i8 64, i8* %216, align 1, !dbg !2288
  %217 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp___0, align 8, !dbg !2289
  %218 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %217, i32 0, i32 3, !dbg !2290
  %219 = load i8, i8* %218, align 1, !dbg !2290
  %220 = zext i8 %219 to i32, !dbg !2291
  %221 = or i32 %220, 128, !dbg !2292
  %222 = trunc i32 %221 to i8, !dbg !2291
  %223 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp___0, align 8, !dbg !2293
  %224 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %223, i32 0, i32 3, !dbg !2294
  store i8 %222, i8* %224, align 1, !dbg !2295
  %225 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp___0, align 8, !dbg !2296
  %226 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %225, i32 0, i32 3, !dbg !2297
  %227 = load i8, i8* %226, align 1, !dbg !2297
  %228 = zext i8 %227 to i32, !dbg !2298
  %229 = or i32 %228, 32, !dbg !2299
  %230 = trunc i32 %229 to i8, !dbg !2298
  %231 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp___0, align 8, !dbg !2300
  %232 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %231, i32 0, i32 3, !dbg !2301
  store i8 %230, i8* %232, align 1, !dbg !2302
  %233 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !2303
  %234 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %233, i32 0, i32 2, !dbg !2304
  %235 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %234, align 8, !dbg !2304
  %236 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !2305
  %237 = call i64 @IofCallDriver(%struct._DEVICE_OBJECT* %235, %struct._IRP* %236), !dbg !2306
  store i64 %237, i64* %status, align 8, !dbg !2307
  %238 = load i64, i64* %status, align 8, !dbg !2308
  %239 = icmp eq i64 259, %238, !dbg !2310
  br i1 %239, label %240, label %243, !dbg !2311

; <label>:240                                     ; preds = %198
  %241 = bitcast %struct._KEVENT* %event to i8*, !dbg !2312
  %242 = call i64 @KeWaitForSingleObject(i8* %241, i32 0, i8 signext 0, i8 zeroext 0, %union._LARGE_INTEGER* null), !dbg !2315
  br label %244, !dbg !2316

; <label>:243                                     ; preds = %198
  br label %244

; <label>:244                                     ; preds = %243, %240
  %245 = load i64, i64* %status, align 8, !dbg !2317
  %246 = icmp sge i64 %245, 0, !dbg !2319
  br i1 %246, label %247, label %260, !dbg !2320

; <label>:247                                     ; preds = %244
  %248 = load i32, i32* @myStatus, align 4, !dbg !2321
  %249 = sext i32 %248 to i64, !dbg !2324
  %250 = icmp sge i64 %249, 0, !dbg !2325
  br i1 %250, label %251, label %258, !dbg !2326

; <label>:251                                     ; preds = %247
  %252 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !2327
  %253 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %252, i32 0, i32 12, !dbg !2329
  store i8 1, i8* %253, align 1, !dbg !2330
  %254 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !2331
  %255 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %254, i32 0, i32 14, !dbg !2332
  store i8 0, i8* %255, align 1, !dbg !2333
  %256 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !2334
  %257 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %256, i32 0, i32 13, !dbg !2335
  store i8 0, i8* %257, align 1, !dbg !2336
  br label %259, !dbg !2337

; <label>:258                                     ; preds = %247
  br label %259

; <label>:259                                     ; preds = %258, %251
  br label %261, !dbg !2338

; <label>:260                                     ; preds = %244
  br label %261

; <label>:261                                     ; preds = %260, %259
  %262 = load i64, i64* %status, align 8, !dbg !2339
  %263 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !2340
  %264 = getelementptr inbounds %struct._IRP, %struct._IRP* %263, i32 0, i32 6, !dbg !2341
  %265 = getelementptr inbounds %struct._IO_STATUS_BLOCK, %struct._IO_STATUS_BLOCK* %264, i32 0, i32 0, !dbg !2342
  %266 = bitcast %union.__anonunion____missing_field_name_6* %265 to i64*, !dbg !2343
  store i64 %262, i64* %266, align 8, !dbg !2344
  %267 = load i64, i64* %status, align 8, !dbg !2345
  %268 = trunc i64 %267 to i32, !dbg !2345
  store i32 %268, i32* @myStatus, align 4, !dbg !2346
  %269 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !2347
  %270 = getelementptr inbounds %struct._IRP, %struct._IRP* %269, i32 0, i32 6, !dbg !2348
  %271 = getelementptr inbounds %struct._IO_STATUS_BLOCK, %struct._IO_STATUS_BLOCK* %270, i32 0, i32 1, !dbg !2349
  store i64 0, i64* %271, align 8, !dbg !2350
  %272 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !2351
  %273 = bitcast %struct._IRP** %1 to i8*, !dbg !2352
  call void @llvm.lifetime.start(i64 8, i8* %273), !dbg !2352
  call void @llvm.lifetime.start(i64 1, i8* %2), !dbg !2352
  store %struct._IRP* %272, %struct._IRP** %1, align 8, !dbg !2352
  store i8 0, i8* %2, align 1, !dbg !2352
  %274 = load i32, i32* @s, align 4, !dbg !2353
  %275 = load i32, i32* @NP, align 4, !dbg !2356
  %276 = icmp eq i32 %274, %275, !dbg !2357
  br i1 %276, label %IofCompleteRequest.exit, label %277, !dbg !2358

; <label>:277                                     ; preds = %261
  call void (...) @__VERIFIER_error() #6, !dbg !2359
  unreachable, !dbg !2359

IofCompleteRequest.exit:                          ; preds = %261
  %278 = load i32, i32* @DC, align 4, !dbg !2363
  store i32 %278, i32* @s, align 4, !dbg !2365
  %279 = bitcast %struct._IRP** %1 to i8*, !dbg !2366
  call void @llvm.lifetime.end(i64 8, i8* %279), !dbg !2366
  call void @llvm.lifetime.end(i64 1, i8* %2), !dbg !2366
  br label %390, !dbg !2367

; <label>:280                                     ; preds = %28
  %281 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !2368
  %282 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %281, i32 0, i32 13, !dbg !2369
  store i8 1, i8* %282, align 1, !dbg !2370
  %283 = load i32, i32* @s, align 4, !dbg !2371
  %284 = load i32, i32* @NP, align 4, !dbg !2373
  %285 = icmp eq i32 %283, %284, !dbg !2374
  br i1 %285, label %286, label %288, !dbg !2375

; <label>:286                                     ; preds = %280
  %287 = load i32, i32* @SKIP1, align 4, !dbg !2376
  store i32 %287, i32* @s, align 4, !dbg !2378
  br label %289, !dbg !2379

; <label>:288                                     ; preds = %280
  call void (...) @__VERIFIER_error() #6, !dbg !2380
  unreachable, !dbg !2380

errorFn.exit2:                                    ; No predecessors!
  br label %289

; <label>:289                                     ; preds = %errorFn.exit2, %286
  %290 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !2384
  %291 = getelementptr inbounds %struct._IRP, %struct._IRP* %290, i32 0, i32 10, !dbg !2386
  %292 = load i8, i8* %291, align 1, !dbg !2386
  %293 = sext i8 %292 to i32, !dbg !2387
  %294 = add nsw i32 %293, 1, !dbg !2388
  %295 = trunc i32 %294 to i8, !dbg !2389
  %296 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !2390
  %297 = getelementptr inbounds %struct._IRP, %struct._IRP* %296, i32 0, i32 10, !dbg !2391
  store i8 %295, i8* %297, align 1, !dbg !2392
  %298 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !2393
  %299 = getelementptr inbounds %struct._IRP, %struct._IRP* %298, i32 0, i32 20, !dbg !2394
  %300 = bitcast %union.__anonunion_Tail_47* %299 to %struct.__anonstruct_Overlay_48*, !dbg !2395
  %301 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %300, i32 0, i32 3, !dbg !2396
  %302 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %301, i32 0, i32 1, !dbg !2397
  %303 = bitcast %union.__anonunion____missing_field_name_52* %302 to %struct._IO_STACK_LOCATION**, !dbg !2398
  %304 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %303, align 8, !dbg !2399
  %305 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %304, i64 1, !dbg !2399
  store %struct._IO_STACK_LOCATION* %305, %struct._IO_STACK_LOCATION** %303, align 8, !dbg !2399
  %306 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !2400
  %307 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %306, i32 0, i32 2, !dbg !2401
  %308 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %307, align 8, !dbg !2401
  %309 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !2402
  %310 = call i64 @IofCallDriver(%struct._DEVICE_OBJECT* %308, %struct._IRP* %309), !dbg !2403
  store i64 %310, i64* %status, align 8, !dbg !2404
  br label %390, !dbg !2405

; <label>:311                                     ; preds = %35
  %312 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !2406
  %313 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %312, i32 0, i32 14, !dbg !2407
  store i8 1, i8* %313, align 1, !dbg !2408
  %314 = load i32, i32* @s, align 4, !dbg !2409
  %315 = load i32, i32* @NP, align 4, !dbg !2411
  %316 = icmp eq i32 %314, %315, !dbg !2412
  br i1 %316, label %317, label %319, !dbg !2413

; <label>:317                                     ; preds = %311
  %318 = load i32, i32* @SKIP1, align 4, !dbg !2414
  store i32 %318, i32* @s, align 4, !dbg !2416
  br label %320, !dbg !2417

; <label>:319                                     ; preds = %311
  call void (...) @__VERIFIER_error() #6, !dbg !2418
  unreachable, !dbg !2418

errorFn.exit3:                                    ; No predecessors!
  br label %320

; <label>:320                                     ; preds = %errorFn.exit3, %317
  %321 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !2422
  %322 = getelementptr inbounds %struct._IRP, %struct._IRP* %321, i32 0, i32 10, !dbg !2424
  %323 = load i8, i8* %322, align 1, !dbg !2424
  %324 = sext i8 %323 to i32, !dbg !2425
  %325 = add nsw i32 %324, 1, !dbg !2426
  %326 = trunc i32 %325 to i8, !dbg !2427
  %327 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !2428
  %328 = getelementptr inbounds %struct._IRP, %struct._IRP* %327, i32 0, i32 10, !dbg !2429
  store i8 %326, i8* %328, align 1, !dbg !2430
  %329 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !2431
  %330 = getelementptr inbounds %struct._IRP, %struct._IRP* %329, i32 0, i32 20, !dbg !2432
  %331 = bitcast %union.__anonunion_Tail_47* %330 to %struct.__anonstruct_Overlay_48*, !dbg !2433
  %332 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %331, i32 0, i32 3, !dbg !2434
  %333 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %332, i32 0, i32 1, !dbg !2435
  %334 = bitcast %union.__anonunion____missing_field_name_52* %333 to %struct._IO_STACK_LOCATION**, !dbg !2436
  %335 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %334, align 8, !dbg !2437
  %336 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %335, i64 1, !dbg !2437
  store %struct._IO_STACK_LOCATION* %336, %struct._IO_STACK_LOCATION** %334, align 8, !dbg !2437
  %337 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !2438
  %338 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %337, i32 0, i32 2, !dbg !2439
  %339 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %338, align 8, !dbg !2439
  %340 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !2440
  %341 = call i64 @IofCallDriver(%struct._DEVICE_OBJECT* %339, %struct._IRP* %340), !dbg !2441
  store i64 0, i64* %status, align 8, !dbg !2442
  br label %390, !dbg !2443

; <label>:342                                     ; preds = %42
  br label %343, !dbg !2443

; <label>:343                                     ; preds = %342, %49
  br label %344, !dbg !2443

; <label>:344                                     ; preds = %343, %56
  br label %345, !dbg !2443

; <label>:345                                     ; preds = %344, %63
  br label %346, !dbg !2443

; <label>:346                                     ; preds = %345, %70
  br label %347, !dbg !2443

; <label>:347                                     ; preds = %346, %77
  br label %348, !dbg !2443

; <label>:348                                     ; preds = %347, %84
  br label %349, !dbg !2443

; <label>:349                                     ; preds = %348, %91
  br label %350, !dbg !2443

; <label>:350                                     ; preds = %349, %98
  br label %351, !dbg !2443

; <label>:351                                     ; preds = %350, %105
  br label %352, !dbg !2443

; <label>:352                                     ; preds = %351, %112
  br label %353, !dbg !2443

; <label>:353                                     ; preds = %352, %119
  br label %354, !dbg !2443

; <label>:354                                     ; preds = %353, %126
  br label %355, !dbg !2443

; <label>:355                                     ; preds = %354, %133
  br label %356, !dbg !2443

; <label>:356                                     ; preds = %355, %140
  br label %357, !dbg !2443

; <label>:357                                     ; preds = %356, %147
  br label %358, !dbg !2443

; <label>:358                                     ; preds = %357, %154
  br label %359, !dbg !2443

; <label>:359                                     ; preds = %358, %161
  br label %360, !dbg !2443

; <label>:360                                     ; preds = %359, %162
  %361 = load i32, i32* @s, align 4, !dbg !2444
  %362 = load i32, i32* @NP, align 4, !dbg !2446
  %363 = icmp eq i32 %361, %362, !dbg !2447
  br i1 %363, label %364, label %366, !dbg !2448

; <label>:364                                     ; preds = %360
  %365 = load i32, i32* @SKIP1, align 4, !dbg !2449
  store i32 %365, i32* @s, align 4, !dbg !2451
  br label %367, !dbg !2452

; <label>:366                                     ; preds = %360
  call void (...) @__VERIFIER_error() #6, !dbg !2453
  unreachable, !dbg !2453

errorFn.exit4:                                    ; No predecessors!
  br label %367

; <label>:367                                     ; preds = %errorFn.exit4, %364
  %368 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !2457
  %369 = getelementptr inbounds %struct._IRP, %struct._IRP* %368, i32 0, i32 10, !dbg !2459
  %370 = load i8, i8* %369, align 1, !dbg !2459
  %371 = sext i8 %370 to i32, !dbg !2460
  %372 = add nsw i32 %371, 1, !dbg !2461
  %373 = trunc i32 %372 to i8, !dbg !2462
  %374 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !2463
  %375 = getelementptr inbounds %struct._IRP, %struct._IRP* %374, i32 0, i32 10, !dbg !2464
  store i8 %373, i8* %375, align 1, !dbg !2465
  %376 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !2466
  %377 = getelementptr inbounds %struct._IRP, %struct._IRP* %376, i32 0, i32 20, !dbg !2467
  %378 = bitcast %union.__anonunion_Tail_47* %377 to %struct.__anonstruct_Overlay_48*, !dbg !2468
  %379 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %378, i32 0, i32 3, !dbg !2469
  %380 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %379, i32 0, i32 1, !dbg !2470
  %381 = bitcast %union.__anonunion____missing_field_name_52* %380 to %struct._IO_STACK_LOCATION**, !dbg !2471
  %382 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %381, align 8, !dbg !2472
  %383 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %382, i64 1, !dbg !2472
  store %struct._IO_STACK_LOCATION* %383, %struct._IO_STACK_LOCATION** %381, align 8, !dbg !2472
  %384 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !2473
  %385 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %384, i32 0, i32 2, !dbg !2474
  %386 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %385, align 8, !dbg !2474
  %387 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !2475
  %388 = call i64 @IofCallDriver(%struct._DEVICE_OBJECT* %386, %struct._IRP* %387), !dbg !2476
  store i64 %388, i64* %status, align 8, !dbg !2477
  br label %390, !dbg !2478

; <label>:389                                     ; preds = %163
  br label %390, !dbg !2479

; <label>:390                                     ; preds = %389, %367, %320, %289, %IofCompleteRequest.exit
  br label %391

; <label>:391                                     ; preds = %390
  br label %392

; <label>:392                                     ; preds = %391
  br label %393

; <label>:393                                     ; preds = %392
  br label %394

; <label>:394                                     ; preds = %393
  br label %395

; <label>:395                                     ; preds = %394
  br label %396

; <label>:396                                     ; preds = %395
  br label %397

; <label>:397                                     ; preds = %396
  br label %398

; <label>:398                                     ; preds = %397
  br label %399

; <label>:399                                     ; preds = %398
  br label %400

; <label>:400                                     ; preds = %399
  br label %401

; <label>:401                                     ; preds = %400
  br label %402

; <label>:402                                     ; preds = %401
  br label %403

; <label>:403                                     ; preds = %402
  br label %404

; <label>:404                                     ; preds = %403
  br label %405

; <label>:405                                     ; preds = %404
  br label %406

; <label>:406                                     ; preds = %405
  br label %407

; <label>:407                                     ; preds = %406
  br label %408

; <label>:408                                     ; preds = %407
  br label %409

; <label>:409                                     ; preds = %408
  br label %410

; <label>:410                                     ; preds = %409
  br label %411

; <label>:411                                     ; preds = %410
  br label %412

; <label>:412                                     ; preds = %411
  %413 = load i64, i64* %status, align 8, !dbg !2480
  ret i64 %413, !dbg !2481
}

; Function Attrs: nounwind ssp uwtable
define i64 @KbFilter_Power(%struct._DEVICE_OBJECT* %DeviceObject, %struct._IRP* %Irp) #0 {
  %1 = alloca %struct._DEVICE_OBJECT*, align 8
  %2 = alloca %struct._IRP*, align 8
  %irpStack = alloca %struct._IO_STACK_LOCATION*, align 8
  %devExt = alloca %struct._DEVICE_EXTENSION*, align 8
  %powerState = alloca %union._POWER_STATE, align 4
  %powerType = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %1, metadata !2482, metadata !1770), !dbg !2483
  store %struct._IRP* %Irp, %struct._IRP** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %2, metadata !2484, metadata !1770), !dbg !2485
  call void @llvm.dbg.declare(metadata %struct._IO_STACK_LOCATION** %irpStack, metadata !2486, metadata !1770), !dbg !2487
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %devExt, metadata !2488, metadata !1770), !dbg !2489
  call void @llvm.dbg.declare(metadata %union._POWER_STATE* %powerState, metadata !2490, metadata !1770), !dbg !2491
  call void @llvm.dbg.declare(metadata i32* %powerType, metadata !2492, metadata !1770), !dbg !2493
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !2494, metadata !1770), !dbg !2495
  %3 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %1, align 8, !dbg !2496
  %4 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %3, i32 0, i32 11, !dbg !2498
  %5 = load i8*, i8** %4, align 8, !dbg !2498
  %6 = bitcast i8* %5 to %struct._DEVICE_EXTENSION*, !dbg !2499
  store %struct._DEVICE_EXTENSION* %6, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !2500
  %7 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2501
  %8 = getelementptr inbounds %struct._IRP, %struct._IRP* %7, i32 0, i32 20, !dbg !2502
  %9 = bitcast %union.__anonunion_Tail_47* %8 to %struct.__anonstruct_Overlay_48*, !dbg !2503
  %10 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %9, i32 0, i32 3, !dbg !2504
  %11 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %10, i32 0, i32 1, !dbg !2505
  %12 = bitcast %union.__anonunion____missing_field_name_52* %11 to %struct._IO_STACK_LOCATION**, !dbg !2506
  %13 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %12, align 8, !dbg !2506
  store %struct._IO_STACK_LOCATION* %13, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2507
  %14 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2508
  %15 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %14, i32 0, i32 4, !dbg !2509
  %16 = bitcast %union.__anonunion_Parameters_55* %15 to %struct.__anonstruct_Power_81*, !dbg !2510
  %17 = getelementptr inbounds %struct.__anonstruct_Power_81, %struct.__anonstruct_Power_81* %16, i32 0, i32 1, !dbg !2511
  %18 = load i32, i32* %17, align 4, !dbg !2511
  store i32 %18, i32* %powerType, align 4, !dbg !2512
  %19 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2513
  %20 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %19, i32 0, i32 4, !dbg !2514
  %21 = bitcast %union.__anonunion_Parameters_55* %20 to %struct.__anonstruct_Power_81*, !dbg !2515
  %22 = getelementptr inbounds %struct.__anonstruct_Power_81, %struct.__anonstruct_Power_81* %21, i32 0, i32 2, !dbg !2516
  %23 = bitcast %union._POWER_STATE* %powerState to i8*, !dbg !2516
  %24 = bitcast %union._POWER_STATE* %22 to i8*, !dbg !2516
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 4, i32 4, i1 false), !dbg !2516
  %25 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2517
  %26 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %25, i32 0, i32 1, !dbg !2519
  %27 = load i8, i8* %26, align 1, !dbg !2519
  %28 = zext i8 %27 to i32, !dbg !2517
  %29 = icmp eq i32 %28, 2, !dbg !2520
  br i1 %29, label %30, label %31, !dbg !2521

; <label>:30                                      ; preds = %0
  br label %55, !dbg !2522

; <label>:31                                      ; preds = %0
  %32 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2524
  %33 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %32, i32 0, i32 1, !dbg !2527
  %34 = load i8, i8* %33, align 1, !dbg !2527
  %35 = zext i8 %34 to i32, !dbg !2524
  %36 = icmp eq i32 %35, 1, !dbg !2528
  br i1 %36, label %37, label %38, !dbg !2529

; <label>:37                                      ; preds = %31
  br label %65, !dbg !2530

; <label>:38                                      ; preds = %31
  %39 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2532
  %40 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %39, i32 0, i32 1, !dbg !2535
  %41 = load i8, i8* %40, align 1, !dbg !2535
  %42 = zext i8 %41 to i32, !dbg !2532
  %43 = icmp eq i32 %42, 0, !dbg !2536
  br i1 %43, label %44, label %45, !dbg !2537

; <label>:44                                      ; preds = %38
  br label %66, !dbg !2538

; <label>:45                                      ; preds = %38
  %46 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2540
  %47 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %46, i32 0, i32 1, !dbg !2543
  %48 = load i8, i8* %47, align 1, !dbg !2543
  %49 = zext i8 %48 to i32, !dbg !2540
  %50 = icmp eq i32 %49, 3, !dbg !2544
  br i1 %50, label %51, label %52, !dbg !2545

; <label>:51                                      ; preds = %45
  br label %67, !dbg !2546

; <label>:52                                      ; preds = %45
  br label %68, !dbg !2548
                                                  ; No predecessors!
  br i1 false, label %54, label %69, !dbg !2551

; <label>:54                                      ; preds = %53
  br label %55, !dbg !2552

; <label>:55                                      ; preds = %54, %30
  %56 = load i32, i32* %powerType, align 4, !dbg !2554
  %57 = icmp eq i32 %56, 1, !dbg !2557
  br i1 %57, label %58, label %63, !dbg !2558

; <label>:58                                      ; preds = %55
  %59 = bitcast %union._POWER_STATE* %powerState to i32*, !dbg !2559
  %60 = load i32, i32* %59, align 4, !dbg !2559
  %61 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !2561
  %62 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %61, i32 0, i32 11, !dbg !2562
  store i32 %60, i32* %62, align 4, !dbg !2563
  br label %64, !dbg !2564

; <label>:63                                      ; preds = %55
  br label %64

; <label>:64                                      ; preds = %63, %58
  br label %65, !dbg !2565

; <label>:65                                      ; preds = %64, %37
  br label %66, !dbg !2565

; <label>:66                                      ; preds = %65, %44
  br label %67, !dbg !2565

; <label>:67                                      ; preds = %66, %51
  br label %68, !dbg !2565

; <label>:68                                      ; preds = %67, %52
  br label %70, !dbg !2566

; <label>:69                                      ; preds = %53
  br label %70, !dbg !2567

; <label>:70                                      ; preds = %69, %68
  br label %71

; <label>:71                                      ; preds = %70
  br label %72

; <label>:72                                      ; preds = %71
  br label %73

; <label>:73                                      ; preds = %72
  br label %74

; <label>:74                                      ; preds = %73
  br label %75

; <label>:75                                      ; preds = %74
  %76 = load i32, i32* @s, align 4, !dbg !2568
  %77 = load i32, i32* @NP, align 4, !dbg !2570
  %78 = icmp eq i32 %76, %77, !dbg !2571
  br i1 %78, label %79, label %81, !dbg !2572

; <label>:79                                      ; preds = %75
  %80 = load i32, i32* @SKIP1, align 4, !dbg !2573
  store i32 %80, i32* @s, align 4, !dbg !2575
  br label %82, !dbg !2576

; <label>:81                                      ; preds = %75
  call void (...) @__VERIFIER_error() #6, !dbg !2577
  unreachable, !dbg !2577

errorFn.exit:                                     ; No predecessors!
  br label %82

; <label>:82                                      ; preds = %errorFn.exit, %79
  %83 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2581
  %84 = getelementptr inbounds %struct._IRP, %struct._IRP* %83, i32 0, i32 10, !dbg !2583
  %85 = load i8, i8* %84, align 1, !dbg !2583
  %86 = sext i8 %85 to i32, !dbg !2584
  %87 = add nsw i32 %86, 1, !dbg !2585
  %88 = trunc i32 %87 to i8, !dbg !2586
  %89 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2587
  %90 = getelementptr inbounds %struct._IRP, %struct._IRP* %89, i32 0, i32 10, !dbg !2588
  store i8 %88, i8* %90, align 1, !dbg !2589
  %91 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2590
  %92 = getelementptr inbounds %struct._IRP, %struct._IRP* %91, i32 0, i32 20, !dbg !2591
  %93 = bitcast %union.__anonunion_Tail_47* %92 to %struct.__anonstruct_Overlay_48*, !dbg !2592
  %94 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %93, i32 0, i32 3, !dbg !2593
  %95 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %94, i32 0, i32 1, !dbg !2594
  %96 = bitcast %union.__anonunion____missing_field_name_52* %95 to %struct._IO_STACK_LOCATION**, !dbg !2595
  %97 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %96, align 8, !dbg !2596
  %98 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %97, i64 1, !dbg !2596
  store %struct._IO_STACK_LOCATION* %98, %struct._IO_STACK_LOCATION** %96, align 8, !dbg !2596
  %99 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !2597
  %100 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %99, i32 0, i32 2, !dbg !2598
  %101 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %100, align 8, !dbg !2598
  %102 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2599
  %103 = call i64 @PoCallDriver(%struct._DEVICE_OBJECT* %101, %struct._IRP* %102), !dbg !2600
  store i64 %103, i64* %tmp, align 8, !dbg !2601
  %104 = load i64, i64* %tmp, align 8, !dbg !2602
  ret i64 %104, !dbg !2603
}

; Function Attrs: nounwind ssp uwtable
define i64 @KbFilter_InternIoCtl(%struct._DEVICE_OBJECT* %DeviceObject, %struct._IRP* %Irp) #0 {
  %1 = alloca %struct._DEVICE_OBJECT*, align 8
  %2 = alloca %struct._IRP*, align 8
  %irpStack.i = alloca %struct._IO_STACK_LOCATION*, align 8
  %tmp.i = alloca i64, align 8
  %3 = alloca %struct._IRP*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca %struct._DEVICE_OBJECT*, align 8
  %7 = alloca %struct._IRP*, align 8
  %irpStack = alloca %struct._IO_STACK_LOCATION*, align 8
  %devExt = alloca %struct._DEVICE_EXTENSION*, align 8
  %hookKeyboard = alloca %struct._INTERNAL_I8042_HOOK_KEYBOARD*, align 8
  %connectData = alloca %struct._CONNECT_DATA*, align 8
  %status = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %6, metadata !2604, metadata !1770), !dbg !2605
  store %struct._IRP* %Irp, %struct._IRP** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %7, metadata !2606, metadata !1770), !dbg !2607
  call void @llvm.dbg.declare(metadata %struct._IO_STACK_LOCATION** %irpStack, metadata !2608, metadata !1770), !dbg !2609
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %devExt, metadata !2610, metadata !1770), !dbg !2611
  call void @llvm.dbg.declare(metadata %struct._INTERNAL_I8042_HOOK_KEYBOARD** %hookKeyboard, metadata !2612, metadata !1770), !dbg !2614
  call void @llvm.dbg.declare(metadata %struct._CONNECT_DATA** %connectData, metadata !2615, metadata !1770), !dbg !2617
  call void @llvm.dbg.declare(metadata i64* %status, metadata !2618, metadata !1770), !dbg !2619
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !2620, metadata !1770), !dbg !2621
  store i64 0, i64* %status, align 8, !dbg !2622
  %8 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %6, align 8, !dbg !2624
  %9 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %8, i32 0, i32 11, !dbg !2625
  %10 = load i8*, i8** %9, align 8, !dbg !2625
  %11 = bitcast i8* %10 to %struct._DEVICE_EXTENSION*, !dbg !2626
  store %struct._DEVICE_EXTENSION* %11, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !2627
  %12 = load %struct._IRP*, %struct._IRP** %7, align 8, !dbg !2628
  %13 = getelementptr inbounds %struct._IRP, %struct._IRP* %12, i32 0, i32 6, !dbg !2629
  %14 = getelementptr inbounds %struct._IO_STATUS_BLOCK, %struct._IO_STATUS_BLOCK* %13, i32 0, i32 1, !dbg !2630
  store i64 0, i64* %14, align 8, !dbg !2631
  %15 = load %struct._IRP*, %struct._IRP** %7, align 8, !dbg !2632
  %16 = getelementptr inbounds %struct._IRP, %struct._IRP* %15, i32 0, i32 20, !dbg !2633
  %17 = bitcast %union.__anonunion_Tail_47* %16 to %struct.__anonstruct_Overlay_48*, !dbg !2634
  %18 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %17, i32 0, i32 3, !dbg !2635
  %19 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %18, i32 0, i32 1, !dbg !2636
  %20 = bitcast %union.__anonunion____missing_field_name_52* %19 to %struct._IO_STACK_LOCATION**, !dbg !2637
  %21 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %20, align 8, !dbg !2637
  store %struct._IO_STACK_LOCATION* %21, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2638
  %22 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2639
  %23 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %22, i32 0, i32 4, !dbg !2641
  %24 = bitcast %union.__anonunion_Parameters_55* %23 to %struct.__anonstruct_DeviceIoControl_64*, !dbg !2642
  %25 = getelementptr inbounds %struct.__anonstruct_DeviceIoControl_64, %struct.__anonstruct_DeviceIoControl_64* %24, i32 0, i32 2, !dbg !2643
  %26 = load i64, i64* %25, align 4, !dbg !2643
  %27 = icmp eq i64 %26, 721411, !dbg !2644
  call void @llvm.dbg.declare(metadata %struct._IRP** %3, metadata !2046, metadata !1770), !dbg !2645
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2094, metadata !1770), !dbg !2650
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %1, metadata !1805, metadata !1770), !dbg !2651
  call void @llvm.dbg.declare(metadata %struct._IRP** %2, metadata !1807, metadata !1770), !dbg !2654
  call void @llvm.dbg.declare(metadata %struct._IO_STACK_LOCATION** %irpStack.i, metadata !1809, metadata !1770), !dbg !2655
  call void @llvm.dbg.declare(metadata i64* %tmp.i, metadata !1812, metadata !1770), !dbg !2656
  br i1 %27, label %28, label %29, !dbg !2657

; <label>:28                                      ; preds = %0
  br label %95, !dbg !2658

; <label>:29                                      ; preds = %0
  %30 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2660
  %31 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %30, i32 0, i32 4, !dbg !2663
  %32 = bitcast %union.__anonunion_Parameters_55* %31 to %struct.__anonstruct_DeviceIoControl_64*, !dbg !2664
  %33 = getelementptr inbounds %struct.__anonstruct_DeviceIoControl_64, %struct.__anonstruct_DeviceIoControl_64* %32, i32 0, i32 2, !dbg !2665
  %34 = load i64, i64* %33, align 4, !dbg !2665
  %35 = icmp eq i64 %34, 721923, !dbg !2666
  br i1 %35, label %36, label %37, !dbg !2667

; <label>:36                                      ; preds = %29
  br label %132, !dbg !2668

; <label>:37                                      ; preds = %29
  %38 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2670
  %39 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %38, i32 0, i32 4, !dbg !2673
  %40 = bitcast %union.__anonunion_Parameters_55* %39 to %struct.__anonstruct_DeviceIoControl_64*, !dbg !2674
  %41 = getelementptr inbounds %struct.__anonstruct_DeviceIoControl_64, %struct.__anonstruct_DeviceIoControl_64* %40, i32 0, i32 2, !dbg !2675
  %42 = load i64, i64* %41, align 4, !dbg !2675
  %43 = icmp eq i64 %42, 737219, !dbg !2676
  br i1 %43, label %44, label %45, !dbg !2677

; <label>:44                                      ; preds = %37
  br label %133, !dbg !2678

; <label>:45                                      ; preds = %37
  %46 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2680
  %47 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %46, i32 0, i32 4, !dbg !2683
  %48 = bitcast %union.__anonunion_Parameters_55* %47 to %struct.__anonstruct_DeviceIoControl_64*, !dbg !2684
  %49 = getelementptr inbounds %struct.__anonstruct_DeviceIoControl_64, %struct.__anonstruct_DeviceIoControl_64* %48, i32 0, i32 2, !dbg !2685
  %50 = load i64, i64* %49, align 4, !dbg !2685
  %51 = icmp eq i64 %50, 720896, !dbg !2686
  br i1 %51, label %52, label %53, !dbg !2687

; <label>:52                                      ; preds = %45
  br label %201, !dbg !2688

; <label>:53                                      ; preds = %45
  %54 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2690
  %55 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %54, i32 0, i32 4, !dbg !2693
  %56 = bitcast %union.__anonunion_Parameters_55* %55 to %struct.__anonstruct_DeviceIoControl_64*, !dbg !2694
  %57 = getelementptr inbounds %struct.__anonstruct_DeviceIoControl_64, %struct.__anonstruct_DeviceIoControl_64* %56, i32 0, i32 2, !dbg !2695
  %58 = load i64, i64* %57, align 4, !dbg !2695
  %59 = icmp eq i64 %58, 721024, !dbg !2696
  br i1 %59, label %60, label %61, !dbg !2697

; <label>:60                                      ; preds = %53
  br label %202, !dbg !2698

; <label>:61                                      ; preds = %53
  %62 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2700
  %63 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %62, i32 0, i32 4, !dbg !2703
  %64 = bitcast %union.__anonunion_Parameters_55* %63 to %struct.__anonstruct_DeviceIoControl_64*, !dbg !2704
  %65 = getelementptr inbounds %struct.__anonstruct_DeviceIoControl_64, %struct.__anonstruct_DeviceIoControl_64* %64, i32 0, i32 2, !dbg !2705
  %66 = load i64, i64* %65, align 4, !dbg !2705
  %67 = icmp eq i64 %66, 720960, !dbg !2706
  br i1 %67, label %68, label %69, !dbg !2707

; <label>:68                                      ; preds = %61
  br label %203, !dbg !2708

; <label>:69                                      ; preds = %61
  %70 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2710
  %71 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %70, i32 0, i32 4, !dbg !2713
  %72 = bitcast %union.__anonunion_Parameters_55* %71 to %struct.__anonstruct_DeviceIoControl_64*, !dbg !2714
  %73 = getelementptr inbounds %struct.__anonstruct_DeviceIoControl_64, %struct.__anonstruct_DeviceIoControl_64* %72, i32 0, i32 2, !dbg !2715
  %74 = load i64, i64* %73, align 4, !dbg !2715
  %75 = icmp eq i64 %74, 720904, !dbg !2716
  br i1 %75, label %76, label %77, !dbg !2717

; <label>:76                                      ; preds = %69
  br label %204, !dbg !2718

; <label>:77                                      ; preds = %69
  %78 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2720
  %79 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %78, i32 0, i32 4, !dbg !2723
  %80 = bitcast %union.__anonunion_Parameters_55* %79 to %struct.__anonstruct_DeviceIoControl_64*, !dbg !2724
  %81 = getelementptr inbounds %struct.__anonstruct_DeviceIoControl_64, %struct.__anonstruct_DeviceIoControl_64* %80, i32 0, i32 2, !dbg !2725
  %82 = load i64, i64* %81, align 4, !dbg !2725
  %83 = icmp eq i64 %82, 720928, !dbg !2726
  br i1 %83, label %84, label %85, !dbg !2727

; <label>:84                                      ; preds = %77
  br label %205, !dbg !2728

; <label>:85                                      ; preds = %77
  %86 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2730
  %87 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %86, i32 0, i32 4, !dbg !2733
  %88 = bitcast %union.__anonunion_Parameters_55* %87 to %struct.__anonstruct_DeviceIoControl_64*, !dbg !2734
  %89 = getelementptr inbounds %struct.__anonstruct_DeviceIoControl_64, %struct.__anonstruct_DeviceIoControl_64* %88, i32 0, i32 2, !dbg !2735
  %90 = load i64, i64* %89, align 4, !dbg !2735
  %91 = icmp eq i64 %90, 720900, !dbg !2736
  br i1 %91, label %92, label %93, !dbg !2737

; <label>:92                                      ; preds = %85
  br label %206, !dbg !2738

; <label>:93                                      ; preds = %85
  br i1 false, label %94, label %207, !dbg !2740

; <label>:94                                      ; preds = %93
  br label %95, !dbg !2742

; <label>:95                                      ; preds = %94, %28
  %96 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !2744
  %97 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %96, i32 0, i32 4, !dbg !2747
  %98 = getelementptr inbounds %struct._CONNECT_DATA, %struct._CONNECT_DATA* %97, i32 0, i32 1, !dbg !2748
  %99 = load i8*, i8** %98, align 8, !dbg !2748
  %100 = ptrtoint i8* %99 to i32, !dbg !2749
  %101 = icmp ne i32 %100, 0, !dbg !2750
  br i1 %101, label %102, label %103, !dbg !2751

; <label>:102                                     ; preds = %95
  store i64 -1073741757, i64* %status, align 8, !dbg !2752
  br label %208, !dbg !2754

; <label>:103                                     ; preds = %95
  %104 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2755
  %105 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %104, i32 0, i32 4, !dbg !2758
  %106 = bitcast %union.__anonunion_Parameters_55* %105 to %struct.__anonstruct_DeviceIoControl_64*, !dbg !2759
  %107 = getelementptr inbounds %struct.__anonstruct_DeviceIoControl_64, %struct.__anonstruct_DeviceIoControl_64* %106, i32 0, i32 1, !dbg !2760
  %108 = load i64, i64* %107, align 4, !dbg !2760
  %109 = icmp ult i64 %108, 16, !dbg !2761
  br i1 %109, label %110, label %111, !dbg !2762

; <label>:110                                     ; preds = %103
  store i64 -1073741811, i64* %status, align 8, !dbg !2763
  br label %208, !dbg !2765

; <label>:111                                     ; preds = %103
  br label %112

; <label>:112                                     ; preds = %111
  br label %113

; <label>:113                                     ; preds = %112
  %114 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2766
  %115 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %114, i32 0, i32 4, !dbg !2767
  %116 = bitcast %union.__anonunion_Parameters_55* %115 to %struct.__anonstruct_DeviceIoControl_64*, !dbg !2768
  %117 = getelementptr inbounds %struct.__anonstruct_DeviceIoControl_64, %struct.__anonstruct_DeviceIoControl_64* %116, i32 0, i32 3, !dbg !2769
  %118 = load i8*, i8** %117, align 4, !dbg !2769
  %119 = bitcast i8* %118 to %struct._CONNECT_DATA*, !dbg !2770
  store %struct._CONNECT_DATA* %119, %struct._CONNECT_DATA** %connectData, align 8, !dbg !2771
  %120 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !2772
  %121 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %120, i32 0, i32 4, !dbg !2773
  %122 = load %struct._CONNECT_DATA*, %struct._CONNECT_DATA** %connectData, align 8, !dbg !2774
  %123 = bitcast %struct._CONNECT_DATA* %121 to i8*, !dbg !2775
  %124 = bitcast %struct._CONNECT_DATA* %122 to i8*, !dbg !2775
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %123, i8* %124, i64 16, i32 8, i1 false), !dbg !2775
  %125 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !2776
  %126 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %125, i32 0, i32 0, !dbg !2777
  %127 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %126, align 8, !dbg !2777
  %128 = load %struct._CONNECT_DATA*, %struct._CONNECT_DATA** %connectData, align 8, !dbg !2778
  %129 = getelementptr inbounds %struct._CONNECT_DATA, %struct._CONNECT_DATA* %128, i32 0, i32 0, !dbg !2779
  store %struct._DEVICE_OBJECT* %127, %struct._DEVICE_OBJECT** %129, align 8, !dbg !2780
  %130 = load %struct._CONNECT_DATA*, %struct._CONNECT_DATA** %connectData, align 8, !dbg !2781
  %131 = getelementptr inbounds %struct._CONNECT_DATA, %struct._CONNECT_DATA* %130, i32 0, i32 1, !dbg !2782
  store i8* bitcast (void (%struct._DEVICE_OBJECT*, %struct._KEYBOARD_INPUT_DATA*, %struct._KEYBOARD_INPUT_DATA*, i64*)* @KbFilter_ServiceCallback to i8*), i8** %131, align 8, !dbg !2783
  br label %208, !dbg !2784

; <label>:132                                     ; preds = %36
  store i64 -1073741822, i64* %status, align 8, !dbg !2785
  br label %208, !dbg !2786

; <label>:133                                     ; preds = %44
  %134 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2787
  %135 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %134, i32 0, i32 4, !dbg !2789
  %136 = bitcast %union.__anonunion_Parameters_55* %135 to %struct.__anonstruct_DeviceIoControl_64*, !dbg !2790
  %137 = getelementptr inbounds %struct.__anonstruct_DeviceIoControl_64, %struct.__anonstruct_DeviceIoControl_64* %136, i32 0, i32 1, !dbg !2791
  %138 = load i64, i64* %137, align 4, !dbg !2791
  %139 = icmp ult i64 %138, 48, !dbg !2792
  br i1 %139, label %140, label %141, !dbg !2793

; <label>:140                                     ; preds = %133
  store i64 -1073741811, i64* %status, align 8, !dbg !2794
  br label %208, !dbg !2796

; <label>:141                                     ; preds = %133
  br label %142

; <label>:142                                     ; preds = %141
  %143 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !2797
  %144 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %143, i32 0, i32 4, !dbg !2798
  %145 = bitcast %union.__anonunion_Parameters_55* %144 to %struct.__anonstruct_DeviceIoControl_64*, !dbg !2799
  %146 = getelementptr inbounds %struct.__anonstruct_DeviceIoControl_64, %struct.__anonstruct_DeviceIoControl_64* %145, i32 0, i32 3, !dbg !2800
  %147 = load i8*, i8** %146, align 4, !dbg !2800
  %148 = bitcast i8* %147 to %struct._INTERNAL_I8042_HOOK_KEYBOARD*, !dbg !2801
  store %struct._INTERNAL_I8042_HOOK_KEYBOARD* %148, %struct._INTERNAL_I8042_HOOK_KEYBOARD** %hookKeyboard, align 8, !dbg !2802
  %149 = load %struct._INTERNAL_I8042_HOOK_KEYBOARD*, %struct._INTERNAL_I8042_HOOK_KEYBOARD** %hookKeyboard, align 8, !dbg !2803
  %150 = getelementptr inbounds %struct._INTERNAL_I8042_HOOK_KEYBOARD, %struct._INTERNAL_I8042_HOOK_KEYBOARD* %149, i32 0, i32 0, !dbg !2804
  %151 = load i8*, i8** %150, align 8, !dbg !2804
  %152 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !2805
  %153 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %152, i32 0, i32 5, !dbg !2806
  store i8* %151, i8** %153, align 8, !dbg !2807
  %154 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %6, align 8, !dbg !2808
  %155 = bitcast %struct._DEVICE_OBJECT* %154 to i8*, !dbg !2809
  %156 = load %struct._INTERNAL_I8042_HOOK_KEYBOARD*, %struct._INTERNAL_I8042_HOOK_KEYBOARD** %hookKeyboard, align 8, !dbg !2810
  %157 = getelementptr inbounds %struct._INTERNAL_I8042_HOOK_KEYBOARD, %struct._INTERNAL_I8042_HOOK_KEYBOARD* %156, i32 0, i32 0, !dbg !2811
  store i8* %155, i8** %157, align 8, !dbg !2812
  %158 = load %struct._INTERNAL_I8042_HOOK_KEYBOARD*, %struct._INTERNAL_I8042_HOOK_KEYBOARD** %hookKeyboard, align 8, !dbg !2813
  %159 = getelementptr inbounds %struct._INTERNAL_I8042_HOOK_KEYBOARD, %struct._INTERNAL_I8042_HOOK_KEYBOARD* %158, i32 0, i32 1, !dbg !2815
  %160 = load i64 (i8*, i8*, i64 (i8*, i8*, i8)*, i64 (i8*, i8, i8)*, i8*)*, i64 (i8*, i8*, i64 (i8*, i8*, i8)*, i64 (i8*, i8, i8)*, i8*)** %159, align 8, !dbg !2815
  %161 = icmp ne i64 (i8*, i8*, i64 (i8*, i8*, i8)*, i64 (i8*, i8, i8)*, i8*)* %160, null, !dbg !2813
  br i1 %161, label %162, label %168, !dbg !2816

; <label>:162                                     ; preds = %142
  %163 = load %struct._INTERNAL_I8042_HOOK_KEYBOARD*, %struct._INTERNAL_I8042_HOOK_KEYBOARD** %hookKeyboard, align 8, !dbg !2817
  %164 = getelementptr inbounds %struct._INTERNAL_I8042_HOOK_KEYBOARD, %struct._INTERNAL_I8042_HOOK_KEYBOARD* %163, i32 0, i32 1, !dbg !2819
  %165 = load i64 (i8*, i8*, i64 (i8*, i8*, i8)*, i64 (i8*, i8, i8)*, i8*)*, i64 (i8*, i8*, i64 (i8*, i8*, i8)*, i64 (i8*, i8, i8)*, i8*)** %164, align 8, !dbg !2819
  %166 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !2820
  %167 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %166, i32 0, i32 6, !dbg !2821
  store i64 (i8*, i8*, i64 (i8*, i8*, i8)*, i64 (i8*, i8, i8)*, i8*)* %165, i64 (i8*, i8*, i64 (i8*, i8*, i8)*, i64 (i8*, i8, i8)*, i8*)** %167, align 8, !dbg !2822
  br label %169, !dbg !2823

; <label>:168                                     ; preds = %142
  br label %169

; <label>:169                                     ; preds = %168, %162
  %170 = load %struct._INTERNAL_I8042_HOOK_KEYBOARD*, %struct._INTERNAL_I8042_HOOK_KEYBOARD** %hookKeyboard, align 8, !dbg !2824
  %171 = getelementptr inbounds %struct._INTERNAL_I8042_HOOK_KEYBOARD, %struct._INTERNAL_I8042_HOOK_KEYBOARD* %170, i32 0, i32 1, !dbg !2825
  store i64 (i8*, i8*, i64 (i8*, i8*, i8)*, i64 (i8*, i8, i8)*, i8*)* bitcast (i64 (%struct._DEVICE_OBJECT*, i8*, i64 (i8*, i8*, i8)*, i64 (i8*, i8, i8)*, i8*)* @KbFilter_InitializationRoutine to i64 (i8*, i8*, i64 (i8*, i8*, i8)*, i64 (i8*, i8, i8)*, i8*)*), i64 (i8*, i8*, i64 (i8*, i8*, i8)*, i64 (i8*, i8, i8)*, i8*)** %171, align 8, !dbg !2826
  %172 = load %struct._INTERNAL_I8042_HOOK_KEYBOARD*, %struct._INTERNAL_I8042_HOOK_KEYBOARD** %hookKeyboard, align 8, !dbg !2827
  %173 = getelementptr inbounds %struct._INTERNAL_I8042_HOOK_KEYBOARD, %struct._INTERNAL_I8042_HOOK_KEYBOARD* %172, i32 0, i32 2, !dbg !2829
  %174 = load i8 (i8*, %struct._KEYBOARD_INPUT_DATA*, %struct._OUTPUT_PACKET*, i8, i8*, i8*, i32*)*, i8 (i8*, %struct._KEYBOARD_INPUT_DATA*, %struct._OUTPUT_PACKET*, i8, i8*, i8*, i32*)** %173, align 8, !dbg !2829
  %175 = icmp ne i8 (i8*, %struct._KEYBOARD_INPUT_DATA*, %struct._OUTPUT_PACKET*, i8, i8*, i8*, i32*)* %174, null, !dbg !2827
  br i1 %175, label %176, label %182, !dbg !2830

; <label>:176                                     ; preds = %169
  %177 = load %struct._INTERNAL_I8042_HOOK_KEYBOARD*, %struct._INTERNAL_I8042_HOOK_KEYBOARD** %hookKeyboard, align 8, !dbg !2831
  %178 = getelementptr inbounds %struct._INTERNAL_I8042_HOOK_KEYBOARD, %struct._INTERNAL_I8042_HOOK_KEYBOARD* %177, i32 0, i32 2, !dbg !2833
  %179 = load i8 (i8*, %struct._KEYBOARD_INPUT_DATA*, %struct._OUTPUT_PACKET*, i8, i8*, i8*, i32*)*, i8 (i8*, %struct._KEYBOARD_INPUT_DATA*, %struct._OUTPUT_PACKET*, i8, i8*, i8*, i32*)** %178, align 8, !dbg !2833
  %180 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !2834
  %181 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %180, i32 0, i32 7, !dbg !2835
  store i8 (i8*, %struct._KEYBOARD_INPUT_DATA*, %struct._OUTPUT_PACKET*, i8, i8*, i8*, i32*)* %179, i8 (i8*, %struct._KEYBOARD_INPUT_DATA*, %struct._OUTPUT_PACKET*, i8, i8*, i8*, i32*)** %181, align 8, !dbg !2836
  br label %183, !dbg !2837

; <label>:182                                     ; preds = %169
  br label %183

; <label>:183                                     ; preds = %182, %176
  %184 = load %struct._INTERNAL_I8042_HOOK_KEYBOARD*, %struct._INTERNAL_I8042_HOOK_KEYBOARD** %hookKeyboard, align 8, !dbg !2838
  %185 = getelementptr inbounds %struct._INTERNAL_I8042_HOOK_KEYBOARD, %struct._INTERNAL_I8042_HOOK_KEYBOARD* %184, i32 0, i32 2, !dbg !2839
  store i8 (i8*, %struct._KEYBOARD_INPUT_DATA*, %struct._OUTPUT_PACKET*, i8, i8*, i8*, i32*)* bitcast (i8 (%struct._DEVICE_OBJECT*, %struct._KEYBOARD_INPUT_DATA*, %struct._OUTPUT_PACKET*, i8, i8*, i8*, i32*)* @KbFilter_IsrHook to i8 (i8*, %struct._KEYBOARD_INPUT_DATA*, %struct._OUTPUT_PACKET*, i8, i8*, i8*, i32*)*), i8 (i8*, %struct._KEYBOARD_INPUT_DATA*, %struct._OUTPUT_PACKET*, i8, i8*, i8*, i32*)** %185, align 8, !dbg !2840
  %186 = load %struct._INTERNAL_I8042_HOOK_KEYBOARD*, %struct._INTERNAL_I8042_HOOK_KEYBOARD** %hookKeyboard, align 8, !dbg !2841
  %187 = getelementptr inbounds %struct._INTERNAL_I8042_HOOK_KEYBOARD, %struct._INTERNAL_I8042_HOOK_KEYBOARD* %186, i32 0, i32 3, !dbg !2842
  %188 = load void (i8*, i8)*, void (i8*, i8)** %187, align 8, !dbg !2842
  %189 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !2843
  %190 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %189, i32 0, i32 8, !dbg !2844
  store void (i8*, i8)* %188, void (i8*, i8)** %190, align 8, !dbg !2845
  %191 = load %struct._INTERNAL_I8042_HOOK_KEYBOARD*, %struct._INTERNAL_I8042_HOOK_KEYBOARD** %hookKeyboard, align 8, !dbg !2846
  %192 = getelementptr inbounds %struct._INTERNAL_I8042_HOOK_KEYBOARD, %struct._INTERNAL_I8042_HOOK_KEYBOARD* %191, i32 0, i32 4, !dbg !2847
  %193 = load void (i8*)*, void (i8*)** %192, align 8, !dbg !2847
  %194 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !2848
  %195 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %194, i32 0, i32 9, !dbg !2849
  store void (i8*)* %193, void (i8*)** %195, align 8, !dbg !2850
  %196 = load %struct._INTERNAL_I8042_HOOK_KEYBOARD*, %struct._INTERNAL_I8042_HOOK_KEYBOARD** %hookKeyboard, align 8, !dbg !2851
  %197 = getelementptr inbounds %struct._INTERNAL_I8042_HOOK_KEYBOARD, %struct._INTERNAL_I8042_HOOK_KEYBOARD* %196, i32 0, i32 5, !dbg !2852
  %198 = load i8*, i8** %197, align 8, !dbg !2852
  %199 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !2853
  %200 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %199, i32 0, i32 10, !dbg !2854
  store i8* %198, i8** %200, align 8, !dbg !2855
  store i64 0, i64* %status, align 8, !dbg !2856
  br label %208, !dbg !2857

; <label>:201                                     ; preds = %52
  br label %202, !dbg !2857

; <label>:202                                     ; preds = %201, %60
  br label %203, !dbg !2857

; <label>:203                                     ; preds = %202, %68
  br label %204, !dbg !2857

; <label>:204                                     ; preds = %203, %76
  br label %205, !dbg !2857

; <label>:205                                     ; preds = %204, %84
  br label %206, !dbg !2857

; <label>:206                                     ; preds = %205, %92
  br label %208, !dbg !2858

; <label>:207                                     ; preds = %93
  br label %208, !dbg !2859

; <label>:208                                     ; preds = %207, %206, %183, %140, %132, %113, %110, %102
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
  %219 = load i64, i64* %status, align 8, !dbg !2860
  %220 = icmp sge i64 %219, 0, !dbg !2861
  br i1 %220, label %238, label %221, !dbg !2862

; <label>:221                                     ; preds = %218
  %222 = load i64, i64* %status, align 8, !dbg !2863
  %223 = load %struct._IRP*, %struct._IRP** %7, align 8, !dbg !2864
  %224 = getelementptr inbounds %struct._IRP, %struct._IRP* %223, i32 0, i32 6, !dbg !2865
  %225 = getelementptr inbounds %struct._IO_STATUS_BLOCK, %struct._IO_STATUS_BLOCK* %224, i32 0, i32 0, !dbg !2866
  %226 = bitcast %union.__anonunion____missing_field_name_6* %225 to i64*, !dbg !2867
  store i64 %222, i64* %226, align 8, !dbg !2868
  %227 = load i64, i64* %status, align 8, !dbg !2869
  %228 = trunc i64 %227 to i32, !dbg !2869
  store i32 %228, i32* @myStatus, align 4, !dbg !2870
  %229 = load %struct._IRP*, %struct._IRP** %7, align 8, !dbg !2871
  %230 = bitcast %struct._IRP** %3 to i8*, !dbg !2872
  call void @llvm.lifetime.start(i64 8, i8* %230), !dbg !2872
  call void @llvm.lifetime.start(i64 1, i8* %4), !dbg !2872
  store %struct._IRP* %229, %struct._IRP** %3, align 8, !dbg !2872
  store i8 0, i8* %4, align 1, !dbg !2872
  %231 = load i32, i32* @s, align 4, !dbg !2873
  %232 = load i32, i32* @NP, align 4, !dbg !2874
  %233 = icmp eq i32 %231, %232, !dbg !2875
  br i1 %233, label %IofCompleteRequest.exit, label %234, !dbg !2876

; <label>:234                                     ; preds = %221
  call void (...) @__VERIFIER_error() #6, !dbg !2877
  unreachable, !dbg !2877

IofCompleteRequest.exit:                          ; preds = %221
  %235 = load i32, i32* @DC, align 4, !dbg !2879
  store i32 %235, i32* @s, align 4, !dbg !2880
  %236 = bitcast %struct._IRP** %3 to i8*, !dbg !2881
  call void @llvm.lifetime.end(i64 8, i8* %236), !dbg !2881
  call void @llvm.lifetime.end(i64 1, i8* %4), !dbg !2881
  %237 = load i64, i64* %status, align 8, !dbg !2882
  store i64 %237, i64* %5, !dbg !2883
  br label %288, !dbg !2883

; <label>:238                                     ; preds = %218
  br label %239

; <label>:239                                     ; preds = %238
  %240 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %6, align 8, !dbg !2884
  %241 = load %struct._IRP*, %struct._IRP** %7, align 8, !dbg !2885
  %242 = bitcast %struct._DEVICE_OBJECT** %1 to i8*, !dbg !2886
  call void @llvm.lifetime.start(i64 8, i8* %242), !dbg !2886
  %243 = bitcast %struct._IRP** %2 to i8*, !dbg !2886
  call void @llvm.lifetime.start(i64 8, i8* %243), !dbg !2886
  %244 = bitcast %struct._IO_STACK_LOCATION** %irpStack.i to i8*, !dbg !2886
  call void @llvm.lifetime.start(i64 8, i8* %244), !dbg !2886
  %245 = bitcast i64* %tmp.i to i8*, !dbg !2886
  call void @llvm.lifetime.start(i64 8, i8* %245), !dbg !2886
  store %struct._DEVICE_OBJECT* %240, %struct._DEVICE_OBJECT** %1, align 8, !dbg !2886
  store %struct._IRP* %241, %struct._IRP** %2, align 8, !dbg !2886
  %246 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2887
  %247 = getelementptr inbounds %struct._IRP, %struct._IRP* %246, i32 0, i32 20, !dbg !2888
  %248 = bitcast %union.__anonunion_Tail_47* %247 to %struct.__anonstruct_Overlay_48*, !dbg !2889
  %249 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %248, i32 0, i32 3, !dbg !2890
  %250 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %249, i32 0, i32 1, !dbg !2891
  %251 = bitcast %union.__anonunion____missing_field_name_52* %250 to %struct._IO_STACK_LOCATION**, !dbg !2892
  %252 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %251, align 8, !dbg !2892
  store %struct._IO_STACK_LOCATION* %252, %struct._IO_STACK_LOCATION** %irpStack.i, align 8, !dbg !2893
  %253 = load i32, i32* @s, align 4, !dbg !2894
  %254 = load i32, i32* @NP, align 4, !dbg !2895
  %255 = icmp eq i32 %253, %254, !dbg !2896
  br i1 %255, label %KbFilter_DispatchPassThrough.exit, label %256, !dbg !2897

; <label>:256                                     ; preds = %239
  call void (...) @__VERIFIER_error() #6, !dbg !2898
  unreachable, !dbg !2898

KbFilter_DispatchPassThrough.exit:                ; preds = %239
  %257 = load i32, i32* @SKIP1, align 4, !dbg !2900
  store i32 %257, i32* @s, align 4, !dbg !2901
  %258 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2902
  %259 = getelementptr inbounds %struct._IRP, %struct._IRP* %258, i32 0, i32 10, !dbg !2903
  %260 = load i8, i8* %259, align 1, !dbg !2903
  %261 = sext i8 %260 to i32, !dbg !2904
  %262 = add nsw i32 %261, 1, !dbg !2905
  %263 = trunc i32 %262 to i8, !dbg !2906
  %264 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2907
  %265 = getelementptr inbounds %struct._IRP, %struct._IRP* %264, i32 0, i32 10, !dbg !2908
  store i8 %263, i8* %265, align 1, !dbg !2909
  %266 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2910
  %267 = getelementptr inbounds %struct._IRP, %struct._IRP* %266, i32 0, i32 20, !dbg !2911
  %268 = bitcast %union.__anonunion_Tail_47* %267 to %struct.__anonstruct_Overlay_48*, !dbg !2912
  %269 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %268, i32 0, i32 3, !dbg !2913
  %270 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %269, i32 0, i32 1, !dbg !2914
  %271 = bitcast %union.__anonunion____missing_field_name_52* %270 to %struct._IO_STACK_LOCATION**, !dbg !2915
  %272 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %271, align 8, !dbg !2916
  %273 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %272, i64 1, !dbg !2916
  store %struct._IO_STACK_LOCATION* %273, %struct._IO_STACK_LOCATION** %271, align 8, !dbg !2916
  %274 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %1, align 8, !dbg !2917
  %275 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %274, i32 0, i32 11, !dbg !2918
  %276 = load i8*, i8** %275, align 8, !dbg !2918
  %277 = bitcast i8* %276 to %struct._DEVICE_EXTENSION*, !dbg !2919
  %278 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %277, i32 0, i32 2, !dbg !2920
  %279 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %278, align 8, !dbg !2920
  %280 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2921
  %281 = call i64 @IofCallDriver(%struct._DEVICE_OBJECT* %279, %struct._IRP* %280) #4, !dbg !2922
  store i64 %281, i64* %tmp.i, align 8, !dbg !2923
  %282 = load i64, i64* %tmp.i, align 8, !dbg !2924
  %283 = bitcast %struct._DEVICE_OBJECT** %1 to i8*, !dbg !2925
  call void @llvm.lifetime.end(i64 8, i8* %283), !dbg !2925
  %284 = bitcast %struct._IRP** %2 to i8*, !dbg !2925
  call void @llvm.lifetime.end(i64 8, i8* %284), !dbg !2925
  %285 = bitcast %struct._IO_STACK_LOCATION** %irpStack.i to i8*, !dbg !2925
  call void @llvm.lifetime.end(i64 8, i8* %285), !dbg !2925
  %286 = bitcast i64* %tmp.i to i8*, !dbg !2925
  call void @llvm.lifetime.end(i64 8, i8* %286), !dbg !2925
  store i64 %282, i64* %tmp, align 8, !dbg !2926
  %287 = load i64, i64* %tmp, align 8, !dbg !2927
  store i64 %287, i64* %5, !dbg !2928
  br label %288, !dbg !2928

; <label>:288                                     ; preds = %KbFilter_DispatchPassThrough.exit, %IofCompleteRequest.exit
  %289 = load i64, i64* %5, !dbg !2929
  ret i64 %289, !dbg !2929
}

; Function Attrs: nounwind ssp uwtable
define void @KbFilter_Unload(%struct._DRIVER_OBJECT* %Driver) #0 {
  %1 = alloca %struct._DRIVER_OBJECT*, align 8
  store %struct._DRIVER_OBJECT* %Driver, %struct._DRIVER_OBJECT** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._DRIVER_OBJECT** %1, metadata !2930, metadata !1770), !dbg !2931
  ret void, !dbg !2932
}

; Function Attrs: nounwind ssp uwtable
define i64 @KbFilter_AddDevice(%struct._DRIVER_OBJECT* %Driver, %struct._DEVICE_OBJECT* %PDO) #0 {
  %1 = alloca %struct._DEVICE_OBJECT*, align 8
  %2 = alloca %struct._DEVICE_OBJECT*, align 8
  %3 = alloca %struct._DEVICE_OBJECT*, align 8
  %__BLAST_NONDET.i.1 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %__BLAST_NONDET.i.i = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct._DRIVER_OBJECT*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct._UNICODE_STRING*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca %struct._DEVICE_OBJECT**, align 8
  %__BLAST_NONDET.i = alloca i32, align 4
  %tmp.i = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct._DRIVER_OBJECT*, align 8
  %16 = alloca %struct._DEVICE_OBJECT*, align 8
  %devExt = alloca %struct._DEVICE_EXTENSION*, align 8
  %device = alloca %struct._DEVICE_OBJECT*, align 8
  %status = alloca i64, align 8
  store %struct._DRIVER_OBJECT* %Driver, %struct._DRIVER_OBJECT** %15, align 8
  call void @llvm.dbg.declare(metadata %struct._DRIVER_OBJECT** %15, metadata !2934, metadata !1770), !dbg !2935
  store %struct._DEVICE_OBJECT* %PDO, %struct._DEVICE_OBJECT** %16, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %16, metadata !2936, metadata !1770), !dbg !2937
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %devExt, metadata !2938, metadata !1770), !dbg !2939
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %device, metadata !2940, metadata !1770), !dbg !2941
  call void @llvm.dbg.declare(metadata i64* %status, metadata !2942, metadata !1770), !dbg !2943
  store i64 0, i64* %status, align 8, !dbg !2944
  %17 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %15, align 8, !dbg !2947
  %18 = bitcast i64* %6 to i8*, !dbg !2948
  call void @llvm.lifetime.start(i64 8, i8* %18), !dbg !2948
  %19 = bitcast %struct._DRIVER_OBJECT** %7 to i8*, !dbg !2948
  call void @llvm.lifetime.start(i64 8, i8* %19), !dbg !2948
  %20 = bitcast i64* %8 to i8*, !dbg !2948
  call void @llvm.lifetime.start(i64 8, i8* %20), !dbg !2948
  %21 = bitcast %struct._UNICODE_STRING** %9 to i8*, !dbg !2948
  call void @llvm.lifetime.start(i64 8, i8* %21), !dbg !2948
  %22 = bitcast i64* %10 to i8*, !dbg !2948
  call void @llvm.lifetime.start(i64 8, i8* %22), !dbg !2948
  %23 = bitcast i64* %11 to i8*, !dbg !2948
  call void @llvm.lifetime.start(i64 8, i8* %23), !dbg !2948
  call void @llvm.lifetime.start(i64 1, i8* %12), !dbg !2948
  %24 = bitcast %struct._DEVICE_OBJECT*** %13 to i8*, !dbg !2948
  call void @llvm.lifetime.start(i64 8, i8* %24), !dbg !2948
  %25 = bitcast i32* %__BLAST_NONDET.i to i8*, !dbg !2948
  call void @llvm.lifetime.start(i64 4, i8* %25), !dbg !2948
  %26 = bitcast i8** %tmp.i to i8*, !dbg !2948
  call void @llvm.lifetime.start(i64 8, i8* %26), !dbg !2948
  store %struct._DRIVER_OBJECT* %17, %struct._DRIVER_OBJECT** %7, align 8, !dbg !2948
  store i64 104, i64* %8, align 8, !dbg !2948
  store %struct._UNICODE_STRING* null, %struct._UNICODE_STRING** %9, align 8, !dbg !2948
  store i64 11, i64* %10, align 8, !dbg !2948
  store i64 0, i64* %11, align 8, !dbg !2948
  store i8 0, i8* %12, align 1, !dbg !2948
  store %struct._DEVICE_OBJECT** %device, %struct._DEVICE_OBJECT*** %13, align 8, !dbg !2948
  %27 = call i32 @__VERIFIER_nondet_int() #4, !dbg !2949
  store i32 %27, i32* %__BLAST_NONDET.i, align 4, !dbg !2951
  %28 = load i32, i32* %__BLAST_NONDET.i, align 4, !dbg !2952
  %29 = icmp eq i32 %28, 0, !dbg !2955
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %2, metadata !2956, metadata !1770), !dbg !2957
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %3, metadata !2960, metadata !1770), !dbg !2961
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET.i.1, metadata !2962, metadata !1770), !dbg !2963
  br i1 %29, label %30, label %37, !dbg !2964

; <label>:30                                      ; preds = %0
  %31 = bitcast i8** %4 to i8*, !dbg !2965
  call void @llvm.lifetime.start(i64 8, i8* %31) #4, !dbg !2965
  %32 = bitcast i32* %5 to i8*, !dbg !2965
  call void @llvm.lifetime.start(i64 4, i8* %32) #4, !dbg !2965
  %33 = bitcast i32* %__BLAST_NONDET.i.i to i8*, !dbg !2965
  call void @llvm.lifetime.start(i64 4, i8* %33) #4, !dbg !2965
  store i32 368, i32* %5, align 4, !dbg !2965
  %34 = call i32 @__VERIFIER_nondet_int() #4, !dbg !2971
  store i32 %34, i32* %__BLAST_NONDET.i.i, align 4, !dbg !2973
  %35 = load i32, i32* %__BLAST_NONDET.i.i, align 4, !dbg !2974
  %36 = icmp ne i32 %35, 0, !dbg !2974
  br i1 %36, label %38, label %39, !dbg !2977

; <label>:37                                      ; preds = %0
  store i64 -1073741823, i64* %6, !dbg !2978
  br label %IoCreateDevice.exit, !dbg !2978

; <label>:38                                      ; preds = %30
  store i8* null, i8** %4, !dbg !2979
  br label %malloc.exit.i, !dbg !2979

; <label>:39                                      ; preds = %30
  store i8* inttoptr (i64 1 to i8*), i8** %4, !dbg !2981
  br label %malloc.exit.i, !dbg !2981

malloc.exit.i:                                    ; preds = %39, %38
  %40 = load i8*, i8** %4, !dbg !2983
  %41 = bitcast i8** %4 to i8*, !dbg !2983
  call void @llvm.lifetime.end(i64 8, i8* %41) #4, !dbg !2983
  %42 = bitcast i32* %5 to i8*, !dbg !2983
  call void @llvm.lifetime.end(i64 4, i8* %42) #4, !dbg !2983
  %43 = bitcast i32* %__BLAST_NONDET.i.i to i8*, !dbg !2983
  call void @llvm.lifetime.end(i64 4, i8* %43) #4, !dbg !2983
  store i8* %40, i8** %tmp.i, align 8, !dbg !2984
  %44 = load i8*, i8** %tmp.i, align 8, !dbg !2985
  %45 = bitcast i8* %44 to %struct._DEVICE_OBJECT*, !dbg !2986
  %46 = load %struct._DEVICE_OBJECT**, %struct._DEVICE_OBJECT*** %13, align 8, !dbg !2987
  store %struct._DEVICE_OBJECT* %45, %struct._DEVICE_OBJECT** %46, align 8, !dbg !2988
  store i64 0, i64* %6, !dbg !2989
  br label %IoCreateDevice.exit, !dbg !2989

IoCreateDevice.exit:                              ; preds = %malloc.exit.i, %37
  %47 = load i64, i64* %6, !dbg !2990
  %48 = bitcast i64* %6 to i8*, !dbg !2990
  call void @llvm.lifetime.end(i64 8, i8* %48), !dbg !2990
  %49 = bitcast %struct._DRIVER_OBJECT** %7 to i8*, !dbg !2990
  call void @llvm.lifetime.end(i64 8, i8* %49), !dbg !2990
  %50 = bitcast i64* %8 to i8*, !dbg !2990
  call void @llvm.lifetime.end(i64 8, i8* %50), !dbg !2990
  %51 = bitcast %struct._UNICODE_STRING** %9 to i8*, !dbg !2990
  call void @llvm.lifetime.end(i64 8, i8* %51), !dbg !2990
  %52 = bitcast i64* %10 to i8*, !dbg !2990
  call void @llvm.lifetime.end(i64 8, i8* %52), !dbg !2990
  %53 = bitcast i64* %11 to i8*, !dbg !2990
  call void @llvm.lifetime.end(i64 8, i8* %53), !dbg !2990
  call void @llvm.lifetime.end(i64 1, i8* %12), !dbg !2990
  %54 = bitcast %struct._DEVICE_OBJECT*** %13 to i8*, !dbg !2990
  call void @llvm.lifetime.end(i64 8, i8* %54), !dbg !2990
  %55 = bitcast i32* %__BLAST_NONDET.i to i8*, !dbg !2990
  call void @llvm.lifetime.end(i64 4, i8* %55), !dbg !2990
  %56 = bitcast i8** %tmp.i to i8*, !dbg !2990
  call void @llvm.lifetime.end(i64 8, i8* %56), !dbg !2990
  store i64 %47, i64* %status, align 8, !dbg !2991
  %57 = load i64, i64* %status, align 8, !dbg !2992
  %58 = icmp sge i64 %57, 0, !dbg !2994
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2995, metadata !1770), !dbg !2996
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET.i.i, metadata !2997, metadata !1770), !dbg !2973
  call void @llvm.dbg.declare(metadata %struct._DRIVER_OBJECT** %7, metadata !2998, metadata !1770), !dbg !2999
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3000, metadata !1770), !dbg !3001
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %9, metadata !3002, metadata !1770), !dbg !3003
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3004, metadata !1770), !dbg !3005
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3006, metadata !1770), !dbg !3007
  call void @llvm.dbg.declare(metadata i8* %12, metadata !3008, metadata !1770), !dbg !3009
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT*** %13, metadata !3010, metadata !1770), !dbg !3011
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET.i, metadata !3012, metadata !1770), !dbg !2951
  call void @llvm.dbg.declare(metadata i8** %tmp.i, metadata !3013, metadata !1770), !dbg !3014
  br i1 %58, label %61, label %59, !dbg !3015

; <label>:59                                      ; preds = %IoCreateDevice.exit
  %60 = load i64, i64* %status, align 8, !dbg !3016
  store i64 %60, i64* %14, !dbg !3018
  br label %113, !dbg !3018

; <label>:61                                      ; preds = %IoCreateDevice.exit
  br label %62

; <label>:62                                      ; preds = %61
  %63 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %device, align 8, !dbg !3019
  %64 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %63, i32 0, i32 11, !dbg !3020
  %65 = load i8*, i8** %64, align 8, !dbg !3020
  %66 = call i8* @memset(i8* %65, i32 0, i32 104), !dbg !3021
  %67 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %device, align 8, !dbg !3022
  %68 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %67, i32 0, i32 11, !dbg !3023
  %69 = load i8*, i8** %68, align 8, !dbg !3023
  %70 = bitcast i8* %69 to %struct._DEVICE_EXTENSION*, !dbg !3024
  store %struct._DEVICE_EXTENSION* %70, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !3025
  %71 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %device, align 8, !dbg !3026
  %72 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %16, align 8, !dbg !3027
  %73 = bitcast %struct._DEVICE_OBJECT** %1 to i8*, !dbg !3028
  call void @llvm.lifetime.start(i64 8, i8* %73), !dbg !3028
  %74 = bitcast %struct._DEVICE_OBJECT** %2 to i8*, !dbg !3028
  call void @llvm.lifetime.start(i64 8, i8* %74), !dbg !3028
  %75 = bitcast %struct._DEVICE_OBJECT** %3 to i8*, !dbg !3028
  call void @llvm.lifetime.start(i64 8, i8* %75), !dbg !3028
  %76 = bitcast i32* %__BLAST_NONDET.i.1 to i8*, !dbg !3028
  call void @llvm.lifetime.start(i64 4, i8* %76), !dbg !3028
  store %struct._DEVICE_OBJECT* %71, %struct._DEVICE_OBJECT** %2, align 8, !dbg !3028
  store %struct._DEVICE_OBJECT* %72, %struct._DEVICE_OBJECT** %3, align 8, !dbg !3028
  %77 = call i32 @__VERIFIER_nondet_int() #4, !dbg !3029
  store i32 %77, i32* %__BLAST_NONDET.i.1, align 4, !dbg !2963
  %78 = load i32, i32* %__BLAST_NONDET.i.1, align 4, !dbg !3030
  %79 = icmp eq i32 %78, 0, !dbg !3033
  br i1 %79, label %80, label %82, !dbg !3034

; <label>:80                                      ; preds = %62
  %81 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %3, align 8, !dbg !3035
  store %struct._DEVICE_OBJECT* %81, %struct._DEVICE_OBJECT** %1, !dbg !3040
  br label %IoAttachDeviceToDeviceStack.exit, !dbg !3040

; <label>:82                                      ; preds = %62
  store %struct._DEVICE_OBJECT* null, %struct._DEVICE_OBJECT** %1, !dbg !3041
  br label %IoAttachDeviceToDeviceStack.exit, !dbg !3041

IoAttachDeviceToDeviceStack.exit:                 ; preds = %80, %82
  %83 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %1, !dbg !3042
  %84 = bitcast %struct._DEVICE_OBJECT** %1 to i8*, !dbg !3042
  call void @llvm.lifetime.end(i64 8, i8* %84), !dbg !3042
  %85 = bitcast %struct._DEVICE_OBJECT** %2 to i8*, !dbg !3042
  call void @llvm.lifetime.end(i64 8, i8* %85), !dbg !3042
  %86 = bitcast %struct._DEVICE_OBJECT** %3 to i8*, !dbg !3042
  call void @llvm.lifetime.end(i64 8, i8* %86), !dbg !3042
  %87 = bitcast i32* %__BLAST_NONDET.i.1 to i8*, !dbg !3042
  call void @llvm.lifetime.end(i64 4, i8* %87), !dbg !3042
  %88 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !3043
  %89 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %88, i32 0, i32 2, !dbg !3044
  store %struct._DEVICE_OBJECT* %83, %struct._DEVICE_OBJECT** %89, align 8, !dbg !3045
  %90 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %device, align 8, !dbg !3046
  %91 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !3047
  %92 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %91, i32 0, i32 0, !dbg !3048
  store %struct._DEVICE_OBJECT* %90, %struct._DEVICE_OBJECT** %92, align 8, !dbg !3049
  %93 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %16, align 8, !dbg !3050
  %94 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !3051
  %95 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %94, i32 0, i32 1, !dbg !3052
  store %struct._DEVICE_OBJECT* %93, %struct._DEVICE_OBJECT** %95, align 8, !dbg !3053
  %96 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !3054
  %97 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %96, i32 0, i32 11, !dbg !3055
  store i32 1, i32* %97, align 4, !dbg !3056
  %98 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !3057
  %99 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %98, i32 0, i32 13, !dbg !3058
  store i8 0, i8* %99, align 1, !dbg !3059
  %100 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !3060
  %101 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %100, i32 0, i32 14, !dbg !3061
  store i8 0, i8* %101, align 1, !dbg !3062
  %102 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !3063
  %103 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %102, i32 0, i32 12, !dbg !3064
  store i8 0, i8* %103, align 1, !dbg !3065
  %104 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %device, align 8, !dbg !3066
  %105 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %104, i32 0, i32 8, !dbg !3067
  %106 = load i64, i64* %105, align 8, !dbg !3068
  %107 = or i64 %106, 8196, !dbg !3068
  store i64 %107, i64* %105, align 8, !dbg !3068
  %108 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %device, align 8, !dbg !3069
  %109 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %108, i32 0, i32 8, !dbg !3070
  %110 = load i64, i64* %109, align 8, !dbg !3071
  %111 = and i64 %110, 4294967167, !dbg !3071
  store i64 %111, i64* %109, align 8, !dbg !3071
  %112 = load i64, i64* %status, align 8, !dbg !3072
  store i64 %112, i64* %14, !dbg !3073
  br label %113, !dbg !3073

; <label>:113                                     ; preds = %IoAttachDeviceToDeviceStack.exit, %59
  %114 = load i64, i64* %14, !dbg !3074
  ret i64 %114, !dbg !3074
}

; Function Attrs: nounwind ssp uwtable
define i64 @IoCreateDevice(%struct._DRIVER_OBJECT* %DriverObject, i64 %DeviceExtensionSize, %struct._UNICODE_STRING* %DeviceName, i64 %DeviceType, i64 %DeviceCharacteristics, i8 zeroext %Exclusive, %struct._DEVICE_OBJECT** %DeviceObject) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %__BLAST_NONDET.i = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct._DRIVER_OBJECT*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._UNICODE_STRING*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct._DEVICE_OBJECT**, align 8
  %__BLAST_NONDET = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store %struct._DRIVER_OBJECT* %DriverObject, %struct._DRIVER_OBJECT** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._DRIVER_OBJECT** %4, metadata !2998, metadata !1770), !dbg !3075
  store i64 %DeviceExtensionSize, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3000, metadata !1770), !dbg !3076
  store %struct._UNICODE_STRING* %DeviceName, %struct._UNICODE_STRING** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %6, metadata !3002, metadata !1770), !dbg !3077
  store i64 %DeviceType, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3004, metadata !1770), !dbg !3078
  store i64 %DeviceCharacteristics, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3006, metadata !1770), !dbg !3079
  store i8 %Exclusive, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !3008, metadata !1770), !dbg !3080
  store %struct._DEVICE_OBJECT** %DeviceObject, %struct._DEVICE_OBJECT*** %10, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT*** %10, metadata !3010, metadata !1770), !dbg !3081
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET, metadata !3012, metadata !1770), !dbg !3082
  %11 = call i32 @__VERIFIER_nondet_int(), !dbg !3083
  store i32 %11, i32* %__BLAST_NONDET, align 4, !dbg !3082
  call void @llvm.dbg.declare(metadata i8** %tmp, metadata !3013, metadata !1770), !dbg !3084
  %12 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !3085
  %13 = icmp eq i32 %12, 0, !dbg !3086
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2995, metadata !1770), !dbg !3087
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET.i, metadata !2997, metadata !1770), !dbg !3089
  br i1 %13, label %14, label %15, !dbg !3090

; <label>:14                                      ; preds = %0
  br label %18, !dbg !3091

; <label>:15                                      ; preds = %0
  br label %34, !dbg !3093
                                                  ; No predecessors!
  br i1 false, label %17, label %35, !dbg !3094

; <label>:17                                      ; preds = %16
  br label %18, !dbg !3095

; <label>:18                                      ; preds = %17, %14
  %19 = bitcast i8** %1 to i8*, !dbg !3096
  call void @llvm.lifetime.start(i64 8, i8* %19), !dbg !3096
  %20 = bitcast i32* %2 to i8*, !dbg !3096
  call void @llvm.lifetime.start(i64 4, i8* %20), !dbg !3096
  %21 = bitcast i32* %__BLAST_NONDET.i to i8*, !dbg !3096
  call void @llvm.lifetime.start(i64 4, i8* %21), !dbg !3096
  store i32 368, i32* %2, align 4, !dbg !3096
  %22 = call i32 @__VERIFIER_nondet_int() #4, !dbg !3097
  store i32 %22, i32* %__BLAST_NONDET.i, align 4, !dbg !3089
  %23 = load i32, i32* %__BLAST_NONDET.i, align 4, !dbg !3098
  %24 = icmp ne i32 %23, 0, !dbg !3098
  br i1 %24, label %25, label %26, !dbg !3099

; <label>:25                                      ; preds = %18
  store i8* null, i8** %1, !dbg !3100
  br label %malloc.exit, !dbg !3100

; <label>:26                                      ; preds = %18
  store i8* inttoptr (i64 1 to i8*), i8** %1, !dbg !3101
  br label %malloc.exit, !dbg !3101

malloc.exit:                                      ; preds = %25, %26
  %27 = load i8*, i8** %1, !dbg !3102
  %28 = bitcast i8** %1 to i8*, !dbg !3102
  call void @llvm.lifetime.end(i64 8, i8* %28), !dbg !3102
  %29 = bitcast i32* %2 to i8*, !dbg !3102
  call void @llvm.lifetime.end(i64 4, i8* %29), !dbg !3102
  %30 = bitcast i32* %__BLAST_NONDET.i to i8*, !dbg !3102
  call void @llvm.lifetime.end(i64 4, i8* %30), !dbg !3102
  store i8* %27, i8** %tmp, align 8, !dbg !3103
  %31 = load i8*, i8** %tmp, align 8, !dbg !3104
  %32 = bitcast i8* %31 to %struct._DEVICE_OBJECT*, !dbg !3105
  %33 = load %struct._DEVICE_OBJECT**, %struct._DEVICE_OBJECT*** %10, align 8, !dbg !3106
  store %struct._DEVICE_OBJECT* %32, %struct._DEVICE_OBJECT** %33, align 8, !dbg !3107
  store i64 0, i64* %3, !dbg !3108
  br label %38, !dbg !3108

; <label>:34                                      ; preds = %15
  store i64 -1073741823, i64* %3, !dbg !3109
  br label %38, !dbg !3109

; <label>:35                                      ; preds = %16
  br label %36, !dbg !3110

; <label>:36                                      ; preds = %35
  br label %37

; <label>:37                                      ; preds = %36
  br label %38

; <label>:38                                      ; preds = %37, %34, %malloc.exit
  %39 = load i64, i64* %3, !dbg !3111
  ret i64 %39, !dbg !3111
}

declare i8* @memset(i8*, i32, i32) #3

; Function Attrs: nounwind ssp uwtable
define %struct._DEVICE_OBJECT* @IoAttachDeviceToDeviceStack(%struct._DEVICE_OBJECT* %SourceDevice, %struct._DEVICE_OBJECT* %TargetDevice) #0 {
  %1 = alloca %struct._DEVICE_OBJECT*, align 8
  %2 = alloca %struct._DEVICE_OBJECT*, align 8
  %3 = alloca %struct._DEVICE_OBJECT*, align 8
  %__BLAST_NONDET = alloca i32, align 4
  store %struct._DEVICE_OBJECT* %SourceDevice, %struct._DEVICE_OBJECT** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %2, metadata !2956, metadata !1770), !dbg !3112
  store %struct._DEVICE_OBJECT* %TargetDevice, %struct._DEVICE_OBJECT** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %3, metadata !2960, metadata !1770), !dbg !3113
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET, metadata !2962, metadata !1770), !dbg !3114
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !3115
  store i32 %4, i32* %__BLAST_NONDET, align 4, !dbg !3114
  %5 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !3116
  %6 = icmp eq i32 %5, 0, !dbg !3117
  br i1 %6, label %7, label %8, !dbg !3118

; <label>:7                                       ; preds = %0
  br label %11, !dbg !3119

; <label>:8                                       ; preds = %0
  br label %13, !dbg !3121
                                                  ; No predecessors!
  br i1 false, label %10, label %14, !dbg !3122

; <label>:10                                      ; preds = %9
  br label %11, !dbg !3123

; <label>:11                                      ; preds = %10, %7
  %12 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %3, align 8, !dbg !3124
  store %struct._DEVICE_OBJECT* %12, %struct._DEVICE_OBJECT** %1, !dbg !3125
  br label %17, !dbg !3125

; <label>:13                                      ; preds = %8
  store %struct._DEVICE_OBJECT* null, %struct._DEVICE_OBJECT** %1, !dbg !3126
  br label %17, !dbg !3126

; <label>:14                                      ; preds = %9
  br label %15, !dbg !3127

; <label>:15                                      ; preds = %14
  br label %16

; <label>:16                                      ; preds = %15
  br label %17

; <label>:17                                      ; preds = %16, %13, %11
  %18 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %1, !dbg !3128
  ret %struct._DEVICE_OBJECT* %18, !dbg !3128
}

; Function Attrs: nounwind ssp uwtable
define i64 @KbFilter_Complete(%struct._DEVICE_OBJECT* %DeviceObject, %struct._IRP* %Irp, i8* %Context) #0 {
  %1 = alloca %struct._KEVENT*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  %l.i = alloca i64, align 8
  %4 = alloca %struct._DEVICE_OBJECT*, align 8
  %5 = alloca %struct._IRP*, align 8
  %6 = alloca i8*, align 8
  %event = alloca %struct._KEVENT*, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %4, metadata !3129, metadata !1770), !dbg !3130
  store %struct._IRP* %Irp, %struct._IRP** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %5, metadata !3131, metadata !1770), !dbg !3132
  store i8* %Context, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3133, metadata !1770), !dbg !3134
  call void @llvm.dbg.declare(metadata %struct._KEVENT** %event, metadata !3135, metadata !1770), !dbg !3136
  %7 = load i8*, i8** %6, align 8, !dbg !3137
  %8 = bitcast i8* %7 to %struct._KEVENT*, !dbg !3140
  store %struct._KEVENT* %8, %struct._KEVENT** %event, align 8, !dbg !3141
  %9 = load %struct._KEVENT*, %struct._KEVENT** %event, align 8, !dbg !3142
  %10 = bitcast %struct._KEVENT** %1 to i8*, !dbg !3143
  call void @llvm.lifetime.start(i64 8, i8* %10), !dbg !3143
  %11 = bitcast i64* %2 to i8*, !dbg !3143
  call void @llvm.lifetime.start(i64 8, i8* %11), !dbg !3143
  call void @llvm.lifetime.start(i64 1, i8* %3), !dbg !3143
  %12 = bitcast i64* %l.i to i8*, !dbg !3143
  call void @llvm.lifetime.start(i64 8, i8* %12), !dbg !3143
  store %struct._KEVENT* %9, %struct._KEVENT** %1, align 8, !dbg !3143
  store i64 0, i64* %2, align 8, !dbg !3143
  store i8 0, i8* %3, align 1, !dbg !3143
  %13 = call i64 @__VERIFIER_nondet_long() #4, !dbg !3144
  store i64 %13, i64* %l.i, align 8, !dbg !3146
  store i32 1, i32* @setEventCalled, align 4, !dbg !3147
  %14 = load i64, i64* %l.i, align 8, !dbg !3149
  %15 = bitcast %struct._KEVENT** %1 to i8*, !dbg !3150
  call void @llvm.lifetime.end(i64 8, i8* %15), !dbg !3150
  %16 = bitcast i64* %2 to i8*, !dbg !3150
  call void @llvm.lifetime.end(i64 8, i8* %16), !dbg !3150
  call void @llvm.lifetime.end(i64 1, i8* %3), !dbg !3150
  %17 = bitcast i64* %l.i to i8*, !dbg !3150
  call void @llvm.lifetime.end(i64 8, i8* %17), !dbg !3150
  call void @llvm.dbg.declare(metadata %struct._KEVENT** %1, metadata !3151, metadata !1770), !dbg !3152
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3153, metadata !1770), !dbg !3154
  call void @llvm.dbg.declare(metadata i8* %3, metadata !3155, metadata !1770), !dbg !3156
  call void @llvm.dbg.declare(metadata i64* %l.i, metadata !3157, metadata !1770), !dbg !3146
  ret i64 -1073741802, !dbg !3158
}

; Function Attrs: nounwind ssp uwtable
define i64 @KeSetEvent(%struct._KEVENT* %Event, i64 %Increment, i8 zeroext %Wait) #0 {
  %1 = alloca %struct._KEVENT*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  %l = alloca i64, align 8
  store %struct._KEVENT* %Event, %struct._KEVENT** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._KEVENT** %1, metadata !3151, metadata !1770), !dbg !3159
  store i64 %Increment, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3153, metadata !1770), !dbg !3160
  store i8 %Wait, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !3155, metadata !1770), !dbg !3161
  call void @llvm.dbg.declare(metadata i64* %l, metadata !3157, metadata !1770), !dbg !3162
  %4 = call i64 @__VERIFIER_nondet_long(), !dbg !3163
  store i64 %4, i64* %l, align 8, !dbg !3162
  store i32 1, i32* @setEventCalled, align 4, !dbg !3164
  %5 = load i64, i64* %l, align 8, !dbg !3165
  ret i64 %5, !dbg !3166
}

declare i64 @InterlockedIncrement(i64*) #3

declare i64 @InterlockedDecrement(i64*) #3

; Function Attrs: nounwind ssp uwtable
define i64 @IofCallDriver(%struct._DEVICE_OBJECT* %DeviceObject, %struct._IRP* %Irp) #0 {
  %1 = alloca %struct._KEVENT*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  %l.i.i = alloca i64, align 8
  %4 = alloca %struct._DEVICE_OBJECT*, align 8
  %5 = alloca %struct._IRP*, align 8
  %6 = alloca i8*, align 8
  %event.i = alloca %struct._KEVENT*, align 8
  %7 = alloca %struct._DEVICE_OBJECT*, align 8
  %8 = alloca %struct._IRP*, align 8
  %__BLAST_NONDET = alloca i32, align 4
  %returnVal2 = alloca i64, align 8
  %compRetStatus = alloca i32, align 4
  %lcontext = alloca i8*, align 8
  %tmp = alloca i64, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %7, metadata !3167, metadata !1770), !dbg !3168
  store %struct._IRP* %Irp, %struct._IRP** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %8, metadata !3169, metadata !1770), !dbg !3170
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET, metadata !3171, metadata !1770), !dbg !3172
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !3173
  store i32 %9, i32* %__BLAST_NONDET, align 4, !dbg !3172
  call void @llvm.dbg.declare(metadata i64* %returnVal2, metadata !3174, metadata !1770), !dbg !3175
  call void @llvm.dbg.declare(metadata i32* %compRetStatus, metadata !3176, metadata !1770), !dbg !3177
  call void @llvm.dbg.declare(metadata i8** %lcontext, metadata !3178, metadata !1770), !dbg !3179
  %10 = call i8* @__VERIFIER_nondet_pointer(), !dbg !3180
  store i8* %10, i8** %lcontext, align 8, !dbg !3179
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !3181, metadata !1770), !dbg !3182
  %11 = load i32, i32* @compRegistered, align 4, !dbg !3183
  %12 = icmp ne i32 %11, 0, !dbg !3183
  call void @llvm.dbg.declare(metadata %struct._KEVENT** %1, metadata !3151, metadata !1770), !dbg !3186
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3153, metadata !1770), !dbg !3191
  call void @llvm.dbg.declare(metadata i8* %3, metadata !3155, metadata !1770), !dbg !3192
  call void @llvm.dbg.declare(metadata i64* %l.i.i, metadata !3157, metadata !1770), !dbg !3193
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %4, metadata !3129, metadata !1770), !dbg !3194
  call void @llvm.dbg.declare(metadata %struct._IRP** %5, metadata !3131, metadata !1770), !dbg !3195
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3133, metadata !1770), !dbg !3196
  call void @llvm.dbg.declare(metadata %struct._KEVENT** %event.i, metadata !3135, metadata !1770), !dbg !3197
  br i1 %12, label %13, label %49, !dbg !3198

; <label>:13                                      ; preds = %0
  %14 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %7, align 8, !dbg !3199
  %15 = load %struct._IRP*, %struct._IRP** %8, align 8, !dbg !3200
  %16 = load i8*, i8** %lcontext, align 8, !dbg !3201
  %17 = bitcast %struct._DEVICE_OBJECT** %4 to i8*, !dbg !3202
  call void @llvm.lifetime.start(i64 8, i8* %17), !dbg !3202
  %18 = bitcast %struct._IRP** %5 to i8*, !dbg !3202
  call void @llvm.lifetime.start(i64 8, i8* %18), !dbg !3202
  %19 = bitcast i8** %6 to i8*, !dbg !3202
  call void @llvm.lifetime.start(i64 8, i8* %19), !dbg !3202
  %20 = bitcast %struct._KEVENT** %event.i to i8*, !dbg !3202
  call void @llvm.lifetime.start(i64 8, i8* %20), !dbg !3202
  store %struct._DEVICE_OBJECT* %14, %struct._DEVICE_OBJECT** %4, align 8, !dbg !3202
  store %struct._IRP* %15, %struct._IRP** %5, align 8, !dbg !3202
  store i8* %16, i8** %6, align 8, !dbg !3202
  %21 = load i8*, i8** %6, align 8, !dbg !3203
  %22 = bitcast i8* %21 to %struct._KEVENT*, !dbg !3204
  store %struct._KEVENT* %22, %struct._KEVENT** %event.i, align 8, !dbg !3205
  %23 = load %struct._KEVENT*, %struct._KEVENT** %event.i, align 8, !dbg !3206
  %24 = bitcast %struct._KEVENT** %1 to i8*, !dbg !3207
  call void @llvm.lifetime.start(i64 8, i8* %24) #4, !dbg !3207
  %25 = bitcast i64* %2 to i8*, !dbg !3207
  call void @llvm.lifetime.start(i64 8, i8* %25) #4, !dbg !3207
  call void @llvm.lifetime.start(i64 1, i8* %3) #4, !dbg !3207
  %26 = bitcast i64* %l.i.i to i8*, !dbg !3207
  call void @llvm.lifetime.start(i64 8, i8* %26) #4, !dbg !3207
  store %struct._KEVENT* %23, %struct._KEVENT** %1, align 8, !dbg !3207
  store i64 0, i64* %2, align 8, !dbg !3207
  store i8 0, i8* %3, align 1, !dbg !3207
  %27 = call i64 @__VERIFIER_nondet_long() #4, !dbg !3208
  store i64 %27, i64* %l.i.i, align 8, !dbg !3193
  store i32 1, i32* @setEventCalled, align 4, !dbg !3209
  %28 = load i64, i64* %l.i.i, align 8, !dbg !3210
  %29 = bitcast %struct._KEVENT** %1 to i8*, !dbg !3211
  call void @llvm.lifetime.end(i64 8, i8* %29) #4, !dbg !3211
  %30 = bitcast i64* %2 to i8*, !dbg !3211
  call void @llvm.lifetime.end(i64 8, i8* %30) #4, !dbg !3211
  call void @llvm.lifetime.end(i64 1, i8* %3) #4, !dbg !3211
  %31 = bitcast i64* %l.i.i to i8*, !dbg !3211
  call void @llvm.lifetime.end(i64 8, i8* %31) #4, !dbg !3211
  %32 = bitcast %struct._DEVICE_OBJECT** %4 to i8*, !dbg !3212
  call void @llvm.lifetime.end(i64 8, i8* %32), !dbg !3212
  %33 = bitcast %struct._IRP** %5 to i8*, !dbg !3212
  call void @llvm.lifetime.end(i64 8, i8* %33), !dbg !3212
  %34 = bitcast i8** %6 to i8*, !dbg !3212
  call void @llvm.lifetime.end(i64 8, i8* %34), !dbg !3212
  %35 = bitcast %struct._KEVENT** %event.i to i8*, !dbg !3212
  call void @llvm.lifetime.end(i64 8, i8* %35), !dbg !3212
  store i64 -1073741802, i64* %tmp, align 8, !dbg !3213
  %36 = load i64, i64* %tmp, align 8, !dbg !3214
  %37 = trunc i64 %36 to i32, !dbg !3214
  store i32 %37, i32* %compRetStatus, align 4, !dbg !3215
  %38 = load i32, i32* %compRetStatus, align 4, !dbg !3216
  %39 = sext i32 %38 to i64, !dbg !3218
  %40 = icmp eq i64 %39, -1073741802, !dbg !3219
  br i1 %40, label %41, label %47, !dbg !3220

; <label>:41                                      ; preds = %13
  %42 = load i32, i32* @s, align 4, !dbg !3221
  %43 = load i32, i32* @NP, align 4, !dbg !3227
  %44 = icmp eq i32 %42, %43, !dbg !3228
  br i1 %44, label %stubMoreProcessingRequired.exit, label %45, !dbg !3229

; <label>:45                                      ; preds = %41
  call void (...) @__VERIFIER_error() #6, !dbg !3230
  unreachable, !dbg !3230

stubMoreProcessingRequired.exit:                  ; preds = %41
  %46 = load i32, i32* @MPR1, align 4, !dbg !3234
  store i32 %46, i32* @s, align 4, !dbg !3236
  br label %48, !dbg !3237

; <label>:47                                      ; preds = %13
  br label %48

; <label>:48                                      ; preds = %47, %stubMoreProcessingRequired.exit
  br label %50, !dbg !3238

; <label>:49                                      ; preds = %0
  br label %50

; <label>:50                                      ; preds = %49, %48
  %51 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !3239
  %52 = icmp eq i32 %51, 0, !dbg !3241
  br i1 %52, label %53, label %54, !dbg !3242

; <label>:53                                      ; preds = %50
  br label %61, !dbg !3243

; <label>:54                                      ; preds = %50
  %55 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !3245
  %56 = icmp eq i32 %55, 1, !dbg !3248
  br i1 %56, label %57, label %58, !dbg !3249

; <label>:57                                      ; preds = %54
  br label %62, !dbg !3250

; <label>:58                                      ; preds = %54
  br label %63, !dbg !3252
                                                  ; No predecessors!
  br i1 false, label %60, label %64, !dbg !3255

; <label>:60                                      ; preds = %59
  br label %61, !dbg !3256

; <label>:61                                      ; preds = %60, %53
  store i64 0, i64* %returnVal2, align 8, !dbg !3258
  br label %65, !dbg !3260

; <label>:62                                      ; preds = %57
  store i64 -1073741823, i64* %returnVal2, align 8, !dbg !3261
  br label %65, !dbg !3262

; <label>:63                                      ; preds = %58
  store i64 259, i64* %returnVal2, align 8, !dbg !3263
  br label %65, !dbg !3264

; <label>:64                                      ; preds = %59
  br label %65, !dbg !3265

; <label>:65                                      ; preds = %64, %63, %62, %61
  br label %66

; <label>:66                                      ; preds = %65
  br label %67

; <label>:67                                      ; preds = %66
  br label %68

; <label>:68                                      ; preds = %67
  %69 = load i32, i32* @s, align 4, !dbg !3266
  %70 = load i32, i32* @NP, align 4, !dbg !3268
  %71 = icmp eq i32 %69, %70, !dbg !3269
  br i1 %71, label %72, label %76, !dbg !3270

; <label>:72                                      ; preds = %68
  %73 = load i32, i32* @IPC, align 4, !dbg !3271
  store i32 %73, i32* @s, align 4, !dbg !3273
  %74 = load i64, i64* %returnVal2, align 8, !dbg !3274
  %75 = trunc i64 %74 to i32, !dbg !3274
  store i32 %75, i32* @lowerDriverReturn, align 4, !dbg !3275
  br label %103, !dbg !3276

; <label>:76                                      ; preds = %68
  %77 = load i32, i32* @s, align 4, !dbg !3277
  %78 = load i32, i32* @MPR1, align 4, !dbg !3280
  %79 = icmp eq i32 %77, %78, !dbg !3281
  br i1 %79, label %80, label %92, !dbg !3282

; <label>:80                                      ; preds = %76
  %81 = load i64, i64* %returnVal2, align 8, !dbg !3283
  %82 = icmp eq i64 %81, 259, !dbg !3286
  br i1 %82, label %83, label %87, !dbg !3287

; <label>:83                                      ; preds = %80
  %84 = load i32, i32* @MPR3, align 4, !dbg !3288
  store i32 %84, i32* @s, align 4, !dbg !3290
  %85 = load i64, i64* %returnVal2, align 8, !dbg !3291
  %86 = trunc i64 %85 to i32, !dbg !3291
  store i32 %86, i32* @lowerDriverReturn, align 4, !dbg !3292
  br label %91, !dbg !3293

; <label>:87                                      ; preds = %80
  %88 = load i32, i32* @NP, align 4, !dbg !3294
  store i32 %88, i32* @s, align 4, !dbg !3296
  %89 = load i64, i64* %returnVal2, align 8, !dbg !3297
  %90 = trunc i64 %89 to i32, !dbg !3297
  store i32 %90, i32* @lowerDriverReturn, align 4, !dbg !3298
  br label %91

; <label>:91                                      ; preds = %87, %83
  br label %102, !dbg !3299

; <label>:92                                      ; preds = %76
  %93 = load i32, i32* @s, align 4, !dbg !3300
  %94 = load i32, i32* @SKIP1, align 4, !dbg !3303
  %95 = icmp eq i32 %93, %94, !dbg !3304
  br i1 %95, label %96, label %100, !dbg !3305

; <label>:96                                      ; preds = %92
  %97 = load i32, i32* @SKIP2, align 4, !dbg !3306
  store i32 %97, i32* @s, align 4, !dbg !3308
  %98 = load i64, i64* %returnVal2, align 8, !dbg !3309
  %99 = trunc i64 %98 to i32, !dbg !3309
  store i32 %99, i32* @lowerDriverReturn, align 4, !dbg !3310
  br label %101, !dbg !3311

; <label>:100                                     ; preds = %92
  call void (...) @__VERIFIER_error() #6, !dbg !3312
  unreachable, !dbg !3312

errorFn.exit:                                     ; No predecessors!
  br label %101

; <label>:101                                     ; preds = %errorFn.exit, %96
  br label %102

; <label>:102                                     ; preds = %101, %91
  br label %103

; <label>:103                                     ; preds = %102, %72
  %104 = load i64, i64* %returnVal2, align 8, !dbg !3316
  ret i64 %104, !dbg !3317
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind ssp uwtable
define void @KbFilter_ServiceCallback(%struct._DEVICE_OBJECT* %DeviceObject, %struct._KEYBOARD_INPUT_DATA* %InputDataStart, %struct._KEYBOARD_INPUT_DATA* %InputDataEnd, i64* %InputDataConsumed) #0 {
  %1 = alloca %struct._DEVICE_OBJECT*, align 8
  %2 = alloca %struct._KEYBOARD_INPUT_DATA*, align 8
  %3 = alloca %struct._KEYBOARD_INPUT_DATA*, align 8
  %4 = alloca i64*, align 8
  %devExt = alloca %struct._DEVICE_EXTENSION*, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %1, metadata !3318, metadata !1770), !dbg !3319
  store %struct._KEYBOARD_INPUT_DATA* %InputDataStart, %struct._KEYBOARD_INPUT_DATA** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._KEYBOARD_INPUT_DATA** %2, metadata !3320, metadata !1770), !dbg !3321
  store %struct._KEYBOARD_INPUT_DATA* %InputDataEnd, %struct._KEYBOARD_INPUT_DATA** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._KEYBOARD_INPUT_DATA** %3, metadata !3322, metadata !1770), !dbg !3323
  store i64* %InputDataConsumed, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3324, metadata !1770), !dbg !3325
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %devExt, metadata !3326, metadata !1770), !dbg !3327
  %5 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %1, align 8, !dbg !3328
  %6 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %5, i32 0, i32 11, !dbg !3331
  %7 = load i8*, i8** %6, align 8, !dbg !3331
  %8 = bitcast i8* %7 to %struct._DEVICE_EXTENSION*, !dbg !3332
  store %struct._DEVICE_EXTENSION* %8, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !3333
  %9 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !3334
  %10 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %9, i32 0, i32 4, !dbg !3335
  %11 = getelementptr inbounds %struct._CONNECT_DATA, %struct._CONNECT_DATA* %10, i32 0, i32 1, !dbg !3336
  %12 = load i8*, i8** %11, align 8, !dbg !3336
  %13 = bitcast i8* %12 to void (i8*, i8*, i8*, i8*)*, !dbg !3337
  %14 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !3338
  %15 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %14, i32 0, i32 4, !dbg !3339
  %16 = getelementptr inbounds %struct._CONNECT_DATA, %struct._CONNECT_DATA* %15, i32 0, i32 0, !dbg !3340
  %17 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %16, align 8, !dbg !3340
  %18 = bitcast %struct._DEVICE_OBJECT* %17 to i8*, !dbg !3338
  %19 = load %struct._KEYBOARD_INPUT_DATA*, %struct._KEYBOARD_INPUT_DATA** %2, align 8, !dbg !3341
  %20 = bitcast %struct._KEYBOARD_INPUT_DATA* %19 to i8*, !dbg !3341
  %21 = load %struct._KEYBOARD_INPUT_DATA*, %struct._KEYBOARD_INPUT_DATA** %3, align 8, !dbg !3342
  %22 = bitcast %struct._KEYBOARD_INPUT_DATA* %21 to i8*, !dbg !3342
  %23 = load i64*, i64** %4, align 8, !dbg !3343
  %24 = bitcast i64* %23 to i8*, !dbg !3343
  call void %13(i8* %18, i8* %20, i8* %22, i8* %24), !dbg !3344
  ret void, !dbg !3345
}

; Function Attrs: nounwind ssp uwtable
define i64 @KbFilter_InitializationRoutine(%struct._DEVICE_OBJECT* %DeviceObject, i8* %SynchFuncContext, i64 (i8*, i8*, i8)* %ReadPort, i64 (i8*, i8, i8)* %WritePort, i8* %TurnTranslationOn) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct._DEVICE_OBJECT*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64 (i8*, i8*, i8)*, align 8
  %5 = alloca i64 (i8*, i8, i8)*, align 8
  %6 = alloca i8*, align 8
  %devExt = alloca %struct._DEVICE_EXTENSION*, align 8
  %status = alloca i64, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %2, metadata !3346, metadata !1770), !dbg !3347
  store i8* %SynchFuncContext, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3348, metadata !1770), !dbg !3349
  store i64 (i8*, i8*, i8)* %ReadPort, i64 (i8*, i8*, i8)** %4, align 8
  call void @llvm.dbg.declare(metadata i64 (i8*, i8*, i8)** %4, metadata !3350, metadata !1770), !dbg !3351
  store i64 (i8*, i8, i8)* %WritePort, i64 (i8*, i8, i8)** %5, align 8
  call void @llvm.dbg.declare(metadata i64 (i8*, i8, i8)** %5, metadata !3352, metadata !1770), !dbg !3353
  store i8* %TurnTranslationOn, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3354, metadata !1770), !dbg !3355
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %devExt, metadata !3356, metadata !1770), !dbg !3357
  call void @llvm.dbg.declare(metadata i64* %status, metadata !3358, metadata !1770), !dbg !3359
  store i64 0, i64* %status, align 8, !dbg !3360
  %7 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %2, align 8, !dbg !3362
  %8 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %7, i32 0, i32 11, !dbg !3363
  %9 = load i8*, i8** %8, align 8, !dbg !3363
  %10 = bitcast i8* %9 to %struct._DEVICE_EXTENSION*, !dbg !3362
  store %struct._DEVICE_EXTENSION* %10, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !3364
  %11 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !3365
  %12 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %11, i32 0, i32 6, !dbg !3367
  %13 = load i64 (i8*, i8*, i64 (i8*, i8*, i8)*, i64 (i8*, i8, i8)*, i8*)*, i64 (i8*, i8*, i64 (i8*, i8*, i8)*, i64 (i8*, i8, i8)*, i8*)** %12, align 8, !dbg !3367
  %14 = icmp ne i64 (i8*, i8*, i64 (i8*, i8*, i8)*, i64 (i8*, i8, i8)*, i8*)* %13, null, !dbg !3365
  br i1 %14, label %15, label %33, !dbg !3368

; <label>:15                                      ; preds = %0
  %16 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !3369
  %17 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %16, i32 0, i32 6, !dbg !3372
  %18 = load i64 (i8*, i8*, i64 (i8*, i8*, i8)*, i64 (i8*, i8, i8)*, i8*)*, i64 (i8*, i8*, i64 (i8*, i8*, i8)*, i64 (i8*, i8, i8)*, i8*)** %17, align 8, !dbg !3372
  %19 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !3373
  %20 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %19, i32 0, i32 5, !dbg !3374
  %21 = load i8*, i8** %20, align 8, !dbg !3374
  %22 = load i8*, i8** %3, align 8, !dbg !3375
  %23 = load i64 (i8*, i8*, i8)*, i64 (i8*, i8*, i8)** %4, align 8, !dbg !3376
  %24 = load i64 (i8*, i8, i8)*, i64 (i8*, i8, i8)** %5, align 8, !dbg !3377
  %25 = load i8*, i8** %6, align 8, !dbg !3378
  %26 = call i64 %18(i8* %21, i8* %22, i64 (i8*, i8*, i8)* %23, i64 (i8*, i8, i8)* %24, i8* %25), !dbg !3379
  store i64 %26, i64* %status, align 8, !dbg !3380
  %27 = load i64, i64* %status, align 8, !dbg !3381
  %28 = icmp sge i64 %27, 0, !dbg !3383
  br i1 %28, label %31, label %29, !dbg !3384

; <label>:29                                      ; preds = %15
  %30 = load i64, i64* %status, align 8, !dbg !3385
  store i64 %30, i64* %1, !dbg !3387
  br label %37, !dbg !3387

; <label>:31                                      ; preds = %15
  br label %32

; <label>:32                                      ; preds = %31
  br label %34, !dbg !3388

; <label>:33                                      ; preds = %0
  br label %34

; <label>:34                                      ; preds = %33, %32
  %35 = load i8*, i8** %6, align 8, !dbg !3389
  store i8 1, i8* %35, align 1, !dbg !3390
  %36 = load i64, i64* %status, align 8, !dbg !3391
  store i64 %36, i64* %1, !dbg !3392
  br label %37, !dbg !3392

; <label>:37                                      ; preds = %34, %29
  %38 = load i64, i64* %1, !dbg !3393
  ret i64 %38, !dbg !3393
}

; Function Attrs: nounwind ssp uwtable
define zeroext i8 @KbFilter_IsrHook(%struct._DEVICE_OBJECT* %DeviceObject, %struct._KEYBOARD_INPUT_DATA* %CurrentInput, %struct._OUTPUT_PACKET* %CurrentOutput, i8 zeroext %StatusByte, i8* %DataByte, i8* %ContinueProcessing, i32* %ScanState) #0 {
  %1 = alloca i8, align 1
  %2 = alloca %struct._DEVICE_OBJECT*, align 8
  %3 = alloca %struct._KEYBOARD_INPUT_DATA*, align 8
  %4 = alloca %struct._OUTPUT_PACKET*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %devExt = alloca %struct._DEVICE_EXTENSION*, align 8
  %retVal = alloca i8, align 1
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %2, metadata !3394, metadata !1770), !dbg !3395
  store %struct._KEYBOARD_INPUT_DATA* %CurrentInput, %struct._KEYBOARD_INPUT_DATA** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._KEYBOARD_INPUT_DATA** %3, metadata !3396, metadata !1770), !dbg !3397
  store %struct._OUTPUT_PACKET* %CurrentOutput, %struct._OUTPUT_PACKET** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._OUTPUT_PACKET** %4, metadata !3398, metadata !1770), !dbg !3399
  store i8 %StatusByte, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3400, metadata !1770), !dbg !3401
  store i8* %DataByte, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3402, metadata !1770), !dbg !3403
  store i8* %ContinueProcessing, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3404, metadata !1770), !dbg !3405
  store i32* %ScanState, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !3406, metadata !1770), !dbg !3407
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %devExt, metadata !3408, metadata !1770), !dbg !3409
  call void @llvm.dbg.declare(metadata i8* %retVal, metadata !3410, metadata !1770), !dbg !3411
  store i8 1, i8* %retVal, align 1, !dbg !3412
  %9 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %2, align 8, !dbg !3414
  %10 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %9, i32 0, i32 11, !dbg !3415
  %11 = load i8*, i8** %10, align 8, !dbg !3415
  %12 = bitcast i8* %11 to %struct._DEVICE_EXTENSION*, !dbg !3414
  store %struct._DEVICE_EXTENSION* %12, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !3416
  %13 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !3417
  %14 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %13, i32 0, i32 7, !dbg !3419
  %15 = load i8 (i8*, %struct._KEYBOARD_INPUT_DATA*, %struct._OUTPUT_PACKET*, i8, i8*, i8*, i32*)*, i8 (i8*, %struct._KEYBOARD_INPUT_DATA*, %struct._OUTPUT_PACKET*, i8, i8*, i8*, i32*)** %14, align 8, !dbg !3419
  %16 = icmp ne i8 (i8*, %struct._KEYBOARD_INPUT_DATA*, %struct._OUTPUT_PACKET*, i8, i8*, i8*, i32*)* %15, null, !dbg !3417
  br i1 %16, label %17, label %44, !dbg !3420

; <label>:17                                      ; preds = %0
  %18 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !3421
  %19 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %18, i32 0, i32 7, !dbg !3424
  %20 = load i8 (i8*, %struct._KEYBOARD_INPUT_DATA*, %struct._OUTPUT_PACKET*, i8, i8*, i8*, i32*)*, i8 (i8*, %struct._KEYBOARD_INPUT_DATA*, %struct._OUTPUT_PACKET*, i8, i8*, i8*, i32*)** %19, align 8, !dbg !3424
  %21 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %devExt, align 8, !dbg !3425
  %22 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %21, i32 0, i32 5, !dbg !3426
  %23 = load i8*, i8** %22, align 8, !dbg !3426
  %24 = load %struct._KEYBOARD_INPUT_DATA*, %struct._KEYBOARD_INPUT_DATA** %3, align 8, !dbg !3427
  %25 = load %struct._OUTPUT_PACKET*, %struct._OUTPUT_PACKET** %4, align 8, !dbg !3428
  %26 = load i8, i8* %5, align 1, !dbg !3429
  %27 = load i8*, i8** %6, align 8, !dbg !3430
  %28 = load i8*, i8** %7, align 8, !dbg !3431
  %29 = load i32*, i32** %8, align 8, !dbg !3432
  %30 = call zeroext i8 %20(i8* %23, %struct._KEYBOARD_INPUT_DATA* %24, %struct._OUTPUT_PACKET* %25, i8 zeroext %26, i8* %27, i8* %28, i32* %29), !dbg !3433
  store i8 %30, i8* %retVal, align 1, !dbg !3434
  %31 = load i8, i8* %retVal, align 1, !dbg !3435
  %32 = icmp ne i8 %31, 0, !dbg !3435
  br i1 %32, label %35, label %33, !dbg !3437

; <label>:33                                      ; preds = %17
  %34 = load i8, i8* %retVal, align 1, !dbg !3438
  store i8 %34, i8* %1, !dbg !3440
  br label %48, !dbg !3440

; <label>:35                                      ; preds = %17
  %36 = load i8*, i8** %7, align 8, !dbg !3441
  %37 = load i8, i8* %36, align 1, !dbg !3444
  %38 = icmp ne i8 %37, 0, !dbg !3444
  br i1 %38, label %41, label %39, !dbg !3445

; <label>:39                                      ; preds = %35
  %40 = load i8, i8* %retVal, align 1, !dbg !3446
  store i8 %40, i8* %1, !dbg !3448
  br label %48, !dbg !3448

; <label>:41                                      ; preds = %35
  br label %42

; <label>:42                                      ; preds = %41
  br label %43

; <label>:43                                      ; preds = %42
  br label %45, !dbg !3449

; <label>:44                                      ; preds = %0
  br label %45

; <label>:45                                      ; preds = %44, %43
  %46 = load i8*, i8** %7, align 8, !dbg !3450
  store i8 1, i8* %46, align 1, !dbg !3451
  %47 = load i8, i8* %retVal, align 1, !dbg !3452
  store i8 %47, i8* %1, !dbg !3453
  br label %48, !dbg !3453

; <label>:48                                      ; preds = %45, %39, %33
  %49 = load i8, i8* %1, !dbg !3454
  ret i8 %49, !dbg !3454
}

; Function Attrs: nounwind ssp uwtable
define void @IofCompleteRequest(%struct._IRP* %Irp, i8 signext %PriorityBoost) #0 {
  %1 = alloca %struct._IRP*, align 8
  %2 = alloca i8, align 1
  store %struct._IRP* %Irp, %struct._IRP** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %1, metadata !2046, metadata !1770), !dbg !3455
  store i8 %PriorityBoost, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !2094, metadata !1770), !dbg !3456
  %3 = load i32, i32* @s, align 4, !dbg !3457
  %4 = load i32, i32* @NP, align 4, !dbg !3458
  %5 = icmp eq i32 %3, %4, !dbg !3459
  br i1 %5, label %6, label %8, !dbg !3460

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* @DC, align 4, !dbg !3461
  store i32 %7, i32* @s, align 4, !dbg !3462
  br label %9, !dbg !3463

; <label>:8                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !3464
  unreachable, !dbg !3464

errorFn.exit:                                     ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %errorFn.exit, %6
  ret void, !dbg !3466
}

declare i8* @memcpy(i8*, i8*, i32) #3

; Function Attrs: nounwind ssp uwtable
define i64 @KeWaitForSingleObject(i8* %Object, i32 %WaitReason, i8 signext %WaitMode, i8 zeroext %Alertable, %union._LARGE_INTEGER* %Timeout) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca %union._LARGE_INTEGER*, align 8
  %__BLAST_NONDET = alloca i32, align 4
  store i8* %Object, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3467, metadata !1770), !dbg !3468
  store i32 %WaitReason, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3469, metadata !1770), !dbg !3470
  store i8 %WaitMode, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3471, metadata !1770), !dbg !3472
  store i8 %Alertable, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3473, metadata !1770), !dbg !3474
  store %union._LARGE_INTEGER* %Timeout, %union._LARGE_INTEGER** %6, align 8
  call void @llvm.dbg.declare(metadata %union._LARGE_INTEGER** %6, metadata !3475, metadata !1770), !dbg !3476
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET, metadata !3477, metadata !1770), !dbg !3478
  %7 = call i32 @__VERIFIER_nondet_int(), !dbg !3479
  store i32 %7, i32* %__BLAST_NONDET, align 4, !dbg !3478
  %8 = load i32, i32* @s, align 4, !dbg !3480
  %9 = load i32, i32* @MPR3, align 4, !dbg !3483
  %10 = icmp eq i32 %8, %9, !dbg !3484
  br i1 %10, label %11, label %18, !dbg !3485

; <label>:11                                      ; preds = %0
  %12 = load i32, i32* @setEventCalled, align 4, !dbg !3486
  %13 = icmp eq i32 %12, 1, !dbg !3489
  br i1 %13, label %14, label %16, !dbg !3490

; <label>:14                                      ; preds = %11
  %15 = load i32, i32* @NP, align 4, !dbg !3491
  store i32 %15, i32* @s, align 4, !dbg !3493
  store i32 0, i32* @setEventCalled, align 4, !dbg !3494
  br label %17, !dbg !3495

; <label>:16                                      ; preds = %11
  br label %19, !dbg !3496

; <label>:17                                      ; preds = %14
  br label %32, !dbg !3498

; <label>:18                                      ; preds = %0
  br label %19, !dbg !3499

; <label>:19                                      ; preds = %18, %16
  %20 = load i32, i32* @customIrp, align 4, !dbg !3500
  %21 = icmp eq i32 %20, 1, !dbg !3503
  br i1 %21, label %22, label %24, !dbg !3504

; <label>:22                                      ; preds = %19
  %23 = load i32, i32* @NP, align 4, !dbg !3505
  store i32 %23, i32* @s, align 4, !dbg !3507
  store i32 0, i32* @customIrp, align 4, !dbg !3508
  br label %31, !dbg !3509

; <label>:24                                      ; preds = %19
  %25 = load i32, i32* @s, align 4, !dbg !3510
  %26 = load i32, i32* @MPR3, align 4, !dbg !3513
  %27 = icmp eq i32 %25, %26, !dbg !3514
  br i1 %27, label %28, label %29, !dbg !3515

; <label>:28                                      ; preds = %24
  call void (...) @__VERIFIER_error() #6, !dbg !3516
  unreachable, !dbg !3516

errorFn.exit:                                     ; No predecessors!
  br label %30, !dbg !3520

; <label>:29                                      ; preds = %24
  br label %30

; <label>:30                                      ; preds = %29, %errorFn.exit
  br label %31

; <label>:31                                      ; preds = %30, %22
  br label %32

; <label>:32                                      ; preds = %31, %17
  %33 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !3521
  %34 = icmp eq i32 %33, 0, !dbg !3523
  br i1 %34, label %35, label %36, !dbg !3524

; <label>:35                                      ; preds = %32
  br label %39, !dbg !3525

; <label>:36                                      ; preds = %32
  br label %40, !dbg !3527
                                                  ; No predecessors!
  br i1 false, label %38, label %41, !dbg !3530

; <label>:38                                      ; preds = %37
  br label %39, !dbg !3531

; <label>:39                                      ; preds = %38, %35
  store i64 0, i64* %1, !dbg !3533
  br label %44, !dbg !3533

; <label>:40                                      ; preds = %36
  store i64 -1073741823, i64* %1, !dbg !3535
  br label %44, !dbg !3535

; <label>:41                                      ; preds = %37
  br label %42, !dbg !3536

; <label>:42                                      ; preds = %41
  br label %43

; <label>:43                                      ; preds = %42
  br label %44

; <label>:44                                      ; preds = %43, %40, %39
  %45 = load i64, i64* %1, !dbg !3537
  ret i64 %45, !dbg !3537
}

; Function Attrs: nounwind ssp uwtable
define i64 @PoCallDriver(%struct._DEVICE_OBJECT* %DeviceObject, %struct._IRP* %Irp) #0 {
  %1 = alloca %struct._KEVENT*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  %l.i.i = alloca i64, align 8
  %4 = alloca %struct._DEVICE_OBJECT*, align 8
  %5 = alloca %struct._IRP*, align 8
  %6 = alloca i8*, align 8
  %event.i = alloca %struct._KEVENT*, align 8
  %7 = alloca %struct._DEVICE_OBJECT*, align 8
  %8 = alloca %struct._IRP*, align 8
  %__BLAST_NONDET = alloca i32, align 4
  %compRetStatus = alloca i32, align 4
  %returnVal = alloca i64, align 8
  %lcontext = alloca i8*, align 8
  %tmp = alloca i64, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %7, metadata !3538, metadata !1770), !dbg !3539
  store %struct._IRP* %Irp, %struct._IRP** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %8, metadata !3540, metadata !1770), !dbg !3541
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET, metadata !3542, metadata !1770), !dbg !3543
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !3544
  store i32 %9, i32* %__BLAST_NONDET, align 4, !dbg !3543
  call void @llvm.dbg.declare(metadata i32* %compRetStatus, metadata !3545, metadata !1770), !dbg !3546
  call void @llvm.dbg.declare(metadata i64* %returnVal, metadata !3547, metadata !1770), !dbg !3548
  call void @llvm.dbg.declare(metadata i8** %lcontext, metadata !3549, metadata !1770), !dbg !3550
  %10 = call i8* @__VERIFIER_nondet_pointer(), !dbg !3551
  store i8* %10, i8** %lcontext, align 8, !dbg !3550
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !3552, metadata !1770), !dbg !3553
  %11 = load i32, i32* @compRegistered, align 4, !dbg !3554
  %12 = icmp ne i32 %11, 0, !dbg !3554
  call void @llvm.dbg.declare(metadata %struct._KEVENT** %1, metadata !3151, metadata !1770), !dbg !3557
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3153, metadata !1770), !dbg !3562
  call void @llvm.dbg.declare(metadata i8* %3, metadata !3155, metadata !1770), !dbg !3563
  call void @llvm.dbg.declare(metadata i64* %l.i.i, metadata !3157, metadata !1770), !dbg !3564
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %4, metadata !3129, metadata !1770), !dbg !3565
  call void @llvm.dbg.declare(metadata %struct._IRP** %5, metadata !3131, metadata !1770), !dbg !3566
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3133, metadata !1770), !dbg !3567
  call void @llvm.dbg.declare(metadata %struct._KEVENT** %event.i, metadata !3135, metadata !1770), !dbg !3568
  br i1 %12, label %13, label %49, !dbg !3569

; <label>:13                                      ; preds = %0
  %14 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %7, align 8, !dbg !3570
  %15 = load %struct._IRP*, %struct._IRP** %8, align 8, !dbg !3571
  %16 = load i8*, i8** %lcontext, align 8, !dbg !3572
  %17 = bitcast %struct._DEVICE_OBJECT** %4 to i8*, !dbg !3573
  call void @llvm.lifetime.start(i64 8, i8* %17), !dbg !3573
  %18 = bitcast %struct._IRP** %5 to i8*, !dbg !3573
  call void @llvm.lifetime.start(i64 8, i8* %18), !dbg !3573
  %19 = bitcast i8** %6 to i8*, !dbg !3573
  call void @llvm.lifetime.start(i64 8, i8* %19), !dbg !3573
  %20 = bitcast %struct._KEVENT** %event.i to i8*, !dbg !3573
  call void @llvm.lifetime.start(i64 8, i8* %20), !dbg !3573
  store %struct._DEVICE_OBJECT* %14, %struct._DEVICE_OBJECT** %4, align 8, !dbg !3573
  store %struct._IRP* %15, %struct._IRP** %5, align 8, !dbg !3573
  store i8* %16, i8** %6, align 8, !dbg !3573
  %21 = load i8*, i8** %6, align 8, !dbg !3574
  %22 = bitcast i8* %21 to %struct._KEVENT*, !dbg !3575
  store %struct._KEVENT* %22, %struct._KEVENT** %event.i, align 8, !dbg !3576
  %23 = load %struct._KEVENT*, %struct._KEVENT** %event.i, align 8, !dbg !3577
  %24 = bitcast %struct._KEVENT** %1 to i8*, !dbg !3578
  call void @llvm.lifetime.start(i64 8, i8* %24) #4, !dbg !3578
  %25 = bitcast i64* %2 to i8*, !dbg !3578
  call void @llvm.lifetime.start(i64 8, i8* %25) #4, !dbg !3578
  call void @llvm.lifetime.start(i64 1, i8* %3) #4, !dbg !3578
  %26 = bitcast i64* %l.i.i to i8*, !dbg !3578
  call void @llvm.lifetime.start(i64 8, i8* %26) #4, !dbg !3578
  store %struct._KEVENT* %23, %struct._KEVENT** %1, align 8, !dbg !3578
  store i64 0, i64* %2, align 8, !dbg !3578
  store i8 0, i8* %3, align 1, !dbg !3578
  %27 = call i64 @__VERIFIER_nondet_long() #4, !dbg !3579
  store i64 %27, i64* %l.i.i, align 8, !dbg !3564
  store i32 1, i32* @setEventCalled, align 4, !dbg !3580
  %28 = load i64, i64* %l.i.i, align 8, !dbg !3581
  %29 = bitcast %struct._KEVENT** %1 to i8*, !dbg !3582
  call void @llvm.lifetime.end(i64 8, i8* %29) #4, !dbg !3582
  %30 = bitcast i64* %2 to i8*, !dbg !3582
  call void @llvm.lifetime.end(i64 8, i8* %30) #4, !dbg !3582
  call void @llvm.lifetime.end(i64 1, i8* %3) #4, !dbg !3582
  %31 = bitcast i64* %l.i.i to i8*, !dbg !3582
  call void @llvm.lifetime.end(i64 8, i8* %31) #4, !dbg !3582
  %32 = bitcast %struct._DEVICE_OBJECT** %4 to i8*, !dbg !3583
  call void @llvm.lifetime.end(i64 8, i8* %32), !dbg !3583
  %33 = bitcast %struct._IRP** %5 to i8*, !dbg !3583
  call void @llvm.lifetime.end(i64 8, i8* %33), !dbg !3583
  %34 = bitcast i8** %6 to i8*, !dbg !3583
  call void @llvm.lifetime.end(i64 8, i8* %34), !dbg !3583
  %35 = bitcast %struct._KEVENT** %event.i to i8*, !dbg !3583
  call void @llvm.lifetime.end(i64 8, i8* %35), !dbg !3583
  store i64 -1073741802, i64* %tmp, align 8, !dbg !3584
  %36 = load i64, i64* %tmp, align 8, !dbg !3585
  %37 = trunc i64 %36 to i32, !dbg !3585
  store i32 %37, i32* %compRetStatus, align 4, !dbg !3586
  %38 = load i32, i32* %compRetStatus, align 4, !dbg !3587
  %39 = sext i32 %38 to i64, !dbg !3589
  %40 = icmp eq i64 %39, -1073741802, !dbg !3590
  br i1 %40, label %41, label %47, !dbg !3591

; <label>:41                                      ; preds = %13
  %42 = load i32, i32* @s, align 4, !dbg !3592
  %43 = load i32, i32* @NP, align 4, !dbg !3596
  %44 = icmp eq i32 %42, %43, !dbg !3597
  br i1 %44, label %stubMoreProcessingRequired.exit, label %45, !dbg !3598

; <label>:45                                      ; preds = %41
  call void (...) @__VERIFIER_error() #6, !dbg !3599
  unreachable, !dbg !3599

stubMoreProcessingRequired.exit:                  ; preds = %41
  %46 = load i32, i32* @MPR1, align 4, !dbg !3601
  store i32 %46, i32* @s, align 4, !dbg !3602
  br label %48, !dbg !3603

; <label>:47                                      ; preds = %13
  br label %48

; <label>:48                                      ; preds = %47, %stubMoreProcessingRequired.exit
  br label %50, !dbg !3604

; <label>:49                                      ; preds = %0
  br label %50

; <label>:50                                      ; preds = %49, %48
  %51 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !3605
  %52 = icmp eq i32 %51, 0, !dbg !3607
  br i1 %52, label %53, label %54, !dbg !3608

; <label>:53                                      ; preds = %50
  br label %61, !dbg !3609

; <label>:54                                      ; preds = %50
  %55 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !3611
  %56 = icmp eq i32 %55, 1, !dbg !3614
  br i1 %56, label %57, label %58, !dbg !3615

; <label>:57                                      ; preds = %54
  br label %62, !dbg !3616

; <label>:58                                      ; preds = %54
  br label %63, !dbg !3618
                                                  ; No predecessors!
  br i1 false, label %60, label %64, !dbg !3621

; <label>:60                                      ; preds = %59
  br label %61, !dbg !3622

; <label>:61                                      ; preds = %60, %53
  store i64 0, i64* %returnVal, align 8, !dbg !3624
  br label %65, !dbg !3626

; <label>:62                                      ; preds = %57
  store i64 -1073741823, i64* %returnVal, align 8, !dbg !3627
  br label %65, !dbg !3628

; <label>:63                                      ; preds = %58
  store i64 259, i64* %returnVal, align 8, !dbg !3629
  br label %65, !dbg !3630

; <label>:64                                      ; preds = %59
  br label %65, !dbg !3631

; <label>:65                                      ; preds = %64, %63, %62, %61
  br label %66

; <label>:66                                      ; preds = %65
  br label %67

; <label>:67                                      ; preds = %66
  br label %68

; <label>:68                                      ; preds = %67
  %69 = load i32, i32* @s, align 4, !dbg !3632
  %70 = load i32, i32* @NP, align 4, !dbg !3634
  %71 = icmp eq i32 %69, %70, !dbg !3635
  br i1 %71, label %72, label %76, !dbg !3636

; <label>:72                                      ; preds = %68
  %73 = load i32, i32* @IPC, align 4, !dbg !3637
  store i32 %73, i32* @s, align 4, !dbg !3639
  %74 = load i64, i64* %returnVal, align 8, !dbg !3640
  %75 = trunc i64 %74 to i32, !dbg !3640
  store i32 %75, i32* @lowerDriverReturn, align 4, !dbg !3641
  br label %103, !dbg !3642

; <label>:76                                      ; preds = %68
  %77 = load i32, i32* @s, align 4, !dbg !3643
  %78 = load i32, i32* @MPR1, align 4, !dbg !3646
  %79 = icmp eq i32 %77, %78, !dbg !3647
  br i1 %79, label %80, label %92, !dbg !3648

; <label>:80                                      ; preds = %76
  %81 = load i64, i64* %returnVal, align 8, !dbg !3649
  %82 = icmp eq i64 %81, 259, !dbg !3652
  br i1 %82, label %83, label %87, !dbg !3653

; <label>:83                                      ; preds = %80
  %84 = load i32, i32* @MPR3, align 4, !dbg !3654
  store i32 %84, i32* @s, align 4, !dbg !3656
  %85 = load i64, i64* %returnVal, align 8, !dbg !3657
  %86 = trunc i64 %85 to i32, !dbg !3657
  store i32 %86, i32* @lowerDriverReturn, align 4, !dbg !3658
  br label %91, !dbg !3659

; <label>:87                                      ; preds = %80
  %88 = load i32, i32* @NP, align 4, !dbg !3660
  store i32 %88, i32* @s, align 4, !dbg !3662
  %89 = load i64, i64* %returnVal, align 8, !dbg !3663
  %90 = trunc i64 %89 to i32, !dbg !3663
  store i32 %90, i32* @lowerDriverReturn, align 4, !dbg !3664
  br label %91

; <label>:91                                      ; preds = %87, %83
  br label %102, !dbg !3665

; <label>:92                                      ; preds = %76
  %93 = load i32, i32* @s, align 4, !dbg !3666
  %94 = load i32, i32* @SKIP1, align 4, !dbg !3669
  %95 = icmp eq i32 %93, %94, !dbg !3670
  br i1 %95, label %96, label %100, !dbg !3671

; <label>:96                                      ; preds = %92
  %97 = load i32, i32* @SKIP2, align 4, !dbg !3672
  store i32 %97, i32* @s, align 4, !dbg !3674
  %98 = load i64, i64* %returnVal, align 8, !dbg !3675
  %99 = trunc i64 %98 to i32, !dbg !3675
  store i32 %99, i32* @lowerDriverReturn, align 4, !dbg !3676
  br label %101, !dbg !3677

; <label>:100                                     ; preds = %92
  call void (...) @__VERIFIER_error() #6, !dbg !3678
  unreachable, !dbg !3678

errorFn.exit:                                     ; No predecessors!
  br label %101

; <label>:101                                     ; preds = %errorFn.exit, %96
  br label %102

; <label>:102                                     ; preds = %101, %91
  br label %103

; <label>:103                                     ; preds = %102, %72
  %104 = load i64, i64* %returnVal, align 8, !dbg !3682
  ret i64 %104, !dbg !3683
}

; Function Attrs: nounwind ssp uwtable
define void @stub_driver_init() #0 {
  %1 = load i32, i32* @NP, align 4, !dbg !3684
  store i32 %1, i32* @s, align 4, !dbg !3686
  store i32 0, i32* @pended, align 4, !dbg !3687
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)* null, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)** @compFptr, align 8, !dbg !3688
  store i32 0, i32* @compRegistered, align 4, !dbg !3689
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !3690
  store i32 0, i32* @setEventCalled, align 4, !dbg !3691
  store i32 0, i32* @customIrp, align 4, !dbg !3692
  ret void, !dbg !3693
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca %struct._DRIVER_OBJECT*, align 8
  %2 = alloca %struct._UNICODE_STRING*, align 8
  %i.i = alloca i64, align 8
  %3 = alloca i32, align 4
  %d = alloca %struct._DRIVER_OBJECT, align 8
  %u = alloca %struct._UNICODE_STRING, align 8
  %status = alloca i64, align 8
  %we_should_unload = alloca i32, align 4
  %irp = alloca %struct._IRP*, align 8
  %__BLAST_NONDET = alloca i32, align 4
  %irp_choice = alloca i32, align 4
  %devobj = alloca %struct._DEVICE_OBJECT, align 8
  store i32 0, i32* %3
  call void @llvm.dbg.declare(metadata %struct._DRIVER_OBJECT* %d, metadata !3694, metadata !1770), !dbg !3696
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING* %u, metadata !3697, metadata !1770), !dbg !3698
  call void @llvm.dbg.declare(metadata i64* %status, metadata !3699, metadata !1770), !dbg !3700
  call void @llvm.dbg.declare(metadata i32* %we_should_unload, metadata !3701, metadata !1770), !dbg !3702
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !3703
  store i32 %4, i32* %we_should_unload, align 4, !dbg !3702
  call void @llvm.dbg.declare(metadata %struct._IRP** %irp, metadata !3704, metadata !1770), !dbg !3705
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET, metadata !3706, metadata !1770), !dbg !3707
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !3708
  store i32 %5, i32* %__BLAST_NONDET, align 4, !dbg !3707
  call void @llvm.dbg.declare(metadata i32* %irp_choice, metadata !3709, metadata !1770), !dbg !3710
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !3711
  store i32 %6, i32* %irp_choice, align 4, !dbg !3710
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT* %devobj, metadata !3712, metadata !1770), !dbg !3714
  %7 = bitcast %struct._IRP** %irp to %struct._IRP*, !dbg !3715
  store %struct._IRP* %7, %struct._IRP** @pirp, align 8, !dbg !3718
  store i32 0, i32* @UNLOADED, align 4, !dbg !3719
  store i32 1, i32* @NP, align 4, !dbg !3721
  store i32 2, i32* @DC, align 4, !dbg !3722
  store i32 3, i32* @SKIP1, align 4, !dbg !3723
  store i32 4, i32* @SKIP2, align 4, !dbg !3724
  store i32 5, i32* @MPR1, align 4, !dbg !3725
  store i32 6, i32* @MPR3, align 4, !dbg !3726
  store i32 7, i32* @IPC, align 4, !dbg !3727
  %8 = load i32, i32* @UNLOADED, align 4, !dbg !3728
  store i32 %8, i32* @s, align 4, !dbg !3729
  store i32 0, i32* @pended, align 4, !dbg !3730
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)* null, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)** @compFptr, align 8, !dbg !3731
  store i32 0, i32* @compRegistered, align 4, !dbg !3732
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !3733
  store i32 0, i32* @setEventCalled, align 4, !dbg !3734
  store i32 0, i32* @customIrp, align 4, !dbg !3735
  %9 = bitcast %struct._DRIVER_OBJECT** %1 to i8*, !dbg !3736
  call void @llvm.lifetime.start(i64 8, i8* %9), !dbg !3736
  %10 = bitcast %struct._UNICODE_STRING** %2 to i8*, !dbg !3736
  call void @llvm.lifetime.start(i64 8, i8* %10), !dbg !3736
  %11 = bitcast i64* %i.i to i8*, !dbg !3736
  call void @llvm.lifetime.start(i64 8, i8* %11), !dbg !3736
  store %struct._DRIVER_OBJECT* %d, %struct._DRIVER_OBJECT** %1, align 8, !dbg !3736
  store %struct._UNICODE_STRING* %u, %struct._UNICODE_STRING** %2, align 8, !dbg !3736
  %12 = call i64 @__VERIFIER_nondet_long() #4, !dbg !3737
  store i64 %12, i64* %i.i, align 8, !dbg !3739
  %13 = load i64, i64* %i.i, align 8, !dbg !3740
  %14 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %1, align 8, !dbg !3741
  %15 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %14, i32 0, i32 14, !dbg !3742
  %16 = getelementptr inbounds [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*], [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*]* %15, i32 0, i64 %13, !dbg !3741
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @KbFilter_DispatchPassThrough, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)** %16, align 8, !dbg !3743
  %17 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %1, align 8, !dbg !3744
  %18 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %17, i32 0, i32 14, !dbg !3745
  %19 = getelementptr inbounds [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*], [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*]* %18, i32 0, i64 0, !dbg !3744
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @KbFilter_CreateClose, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)** %19, align 8, !dbg !3746
  %20 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %1, align 8, !dbg !3747
  %21 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %20, i32 0, i32 14, !dbg !3748
  %22 = getelementptr inbounds [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*], [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*]* %21, i32 0, i64 2, !dbg !3747
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @KbFilter_CreateClose, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)** %22, align 8, !dbg !3749
  %23 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %1, align 8, !dbg !3750
  %24 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %23, i32 0, i32 14, !dbg !3751
  %25 = getelementptr inbounds [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*], [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*]* %24, i32 0, i64 27, !dbg !3750
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @KbFilter_PnP, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)** %25, align 8, !dbg !3752
  %26 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %1, align 8, !dbg !3753
  %27 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %26, i32 0, i32 14, !dbg !3754
  %28 = getelementptr inbounds [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*], [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*]* %27, i32 0, i64 22, !dbg !3753
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @KbFilter_Power, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)** %28, align 8, !dbg !3755
  %29 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %1, align 8, !dbg !3756
  %30 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %29, i32 0, i32 14, !dbg !3757
  %31 = getelementptr inbounds [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*], [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*]* %30, i32 0, i64 15, !dbg !3756
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @KbFilter_InternIoCtl, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)** %31, align 8, !dbg !3758
  %32 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %1, align 8, !dbg !3759
  %33 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %32, i32 0, i32 13, !dbg !3760
  store void (%struct._DRIVER_OBJECT*)* @KbFilter_Unload, void (%struct._DRIVER_OBJECT*)** %33, align 8, !dbg !3761
  %34 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %1, align 8, !dbg !3762
  %35 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %34, i32 0, i32 7, !dbg !3763
  %36 = load %struct._DRIVER_EXTENSION*, %struct._DRIVER_EXTENSION** %35, align 8, !dbg !3763
  %37 = getelementptr inbounds %struct._DRIVER_EXTENSION, %struct._DRIVER_EXTENSION* %36, i32 0, i32 1, !dbg !3764
  store i64 (%struct._DRIVER_OBJECT*, %struct._DEVICE_OBJECT*)* @KbFilter_AddDevice, i64 (%struct._DRIVER_OBJECT*, %struct._DEVICE_OBJECT*)** %37, align 8, !dbg !3765
  %38 = bitcast %struct._DRIVER_OBJECT** %1 to i8*, !dbg !3766
  call void @llvm.lifetime.end(i64 8, i8* %38), !dbg !3766
  %39 = bitcast %struct._UNICODE_STRING** %2 to i8*, !dbg !3766
  call void @llvm.lifetime.end(i64 8, i8* %39), !dbg !3766
  %40 = bitcast i64* %i.i to i8*, !dbg !3766
  call void @llvm.lifetime.end(i64 8, i8* %40), !dbg !3766
  store i64 0, i64* %status, align 8, !dbg !3767
  %41 = load i64, i64* %status, align 8, !dbg !3768
  %42 = icmp sge i64 %41, 0, !dbg !3770
  call void @llvm.dbg.declare(metadata %struct._DRIVER_OBJECT** %1, metadata !1769, metadata !1770), !dbg !3771
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %2, metadata !1772, metadata !1770), !dbg !3772
  call void @llvm.dbg.declare(metadata i64* %i.i, metadata !1774, metadata !1770), !dbg !3739
  br i1 %42, label %43, label %132, !dbg !3773

; <label>:43                                      ; preds = %0
  %44 = load i32, i32* @NP, align 4, !dbg !3774
  store i32 %44, i32* @s, align 4, !dbg !3776
  store i32 0, i32* @customIrp, align 4, !dbg !3777
  %45 = load i32, i32* @customIrp, align 4, !dbg !3778
  store i32 %45, i32* @setEventCalled, align 4, !dbg !3779
  %46 = load i32, i32* @setEventCalled, align 4, !dbg !3780
  store i32 %46, i32* @lowerDriverReturn, align 4, !dbg !3781
  %47 = load i32, i32* @lowerDriverReturn, align 4, !dbg !3782
  store i32 %47, i32* @compRegistered, align 4, !dbg !3783
  %48 = load i32, i32* @compRegistered, align 4, !dbg !3784
  %49 = sext i32 %48 to i64, !dbg !3784
  %50 = inttoptr i64 %49 to i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)*, !dbg !3784
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)* %50, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)** @compFptr, align 8, !dbg !3785
  %51 = load i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)*, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)** @compFptr, align 8, !dbg !3786
  %52 = ptrtoint i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)* %51 to i32, !dbg !3786
  store i32 %52, i32* @pended, align 4, !dbg !3787
  %53 = load %struct._IRP*, %struct._IRP** @pirp, align 8, !dbg !3788
  %54 = getelementptr inbounds %struct._IRP, %struct._IRP* %53, i32 0, i32 6, !dbg !3789
  %55 = getelementptr inbounds %struct._IO_STATUS_BLOCK, %struct._IO_STATUS_BLOCK* %54, i32 0, i32 0, !dbg !3790
  %56 = bitcast %union.__anonunion____missing_field_name_6* %55 to i64*, !dbg !3791
  store i64 0, i64* %56, align 8, !dbg !3792
  store i32 0, i32* @myStatus, align 4, !dbg !3793
  %57 = load i32, i32* %irp_choice, align 4, !dbg !3794
  %58 = icmp eq i32 %57, 0, !dbg !3796
  br i1 %58, label %59, label %64, !dbg !3797

; <label>:59                                      ; preds = %43
  %60 = load %struct._IRP*, %struct._IRP** @pirp, align 8, !dbg !3798
  %61 = getelementptr inbounds %struct._IRP, %struct._IRP* %60, i32 0, i32 6, !dbg !3800
  %62 = getelementptr inbounds %struct._IO_STATUS_BLOCK, %struct._IO_STATUS_BLOCK* %61, i32 0, i32 0, !dbg !3801
  %63 = bitcast %union.__anonunion____missing_field_name_6* %62 to i64*, !dbg !3802
  store i64 -1073741637, i64* %63, align 8, !dbg !3803
  store i32 -1073741637, i32* @myStatus, align 4, !dbg !3804
  br label %65, !dbg !3805

; <label>:64                                      ; preds = %43
  br label %65

; <label>:65                                      ; preds = %64, %59
  %66 = call i64 @KbFilter_AddDevice(%struct._DRIVER_OBJECT* %d, %struct._DEVICE_OBJECT* %devobj), !dbg !3806
  store i64 %66, i64* %status, align 8, !dbg !3808
  %67 = load i32, i32* @NP, align 4, !dbg !3809
  store i32 %67, i32* @s, align 4, !dbg !3811
  store i32 0, i32* @pended, align 4, !dbg !3812
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)* null, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)** @compFptr, align 8, !dbg !3813
  store i32 0, i32* @compRegistered, align 4, !dbg !3814
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !3815
  store i32 0, i32* @setEventCalled, align 4, !dbg !3816
  store i32 0, i32* @customIrp, align 4, !dbg !3817
  %68 = load i64, i64* %status, align 8, !dbg !3818
  %69 = icmp sge i64 %68, 0, !dbg !3820
  br i1 %69, label %71, label %70, !dbg !3821

; <label>:70                                      ; preds = %65
  store i32 -1, i32* %3, !dbg !3822
  br label %220, !dbg !3822

; <label>:71                                      ; preds = %65
  br label %72

; <label>:72                                      ; preds = %71
  %73 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !3824
  %74 = icmp eq i32 %73, 0, !dbg !3826
  br i1 %74, label %75, label %76, !dbg !3827

; <label>:75                                      ; preds = %72
  br label %99, !dbg !3828

; <label>:76                                      ; preds = %72
  %77 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !3830
  %78 = icmp eq i32 %77, 1, !dbg !3833
  br i1 %78, label %79, label %80, !dbg !3834

; <label>:79                                      ; preds = %76
  br label %102, !dbg !3835

; <label>:80                                      ; preds = %76
  %81 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !3837
  %82 = icmp eq i32 %81, 2, !dbg !3840
  br i1 %82, label %83, label %84, !dbg !3841

; <label>:83                                      ; preds = %80
  br label %105, !dbg !3842

; <label>:84                                      ; preds = %80
  %85 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !3844
  %86 = icmp eq i32 %85, 3, !dbg !3847
  br i1 %86, label %87, label %88, !dbg !3848

; <label>:87                                      ; preds = %84
  br label %108, !dbg !3849

; <label>:88                                      ; preds = %84
  %89 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !3851
  %90 = icmp eq i32 %89, 4, !dbg !3854
  br i1 %90, label %91, label %92, !dbg !3855

; <label>:91                                      ; preds = %88
  br label %111, !dbg !3856

; <label>:92                                      ; preds = %88
  %93 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !3858
  %94 = icmp eq i32 %93, 8, !dbg !3861
  br i1 %94, label %95, label %96, !dbg !3862

; <label>:95                                      ; preds = %92
  br label %114, !dbg !3863

; <label>:96                                      ; preds = %92
  br label %117, !dbg !3865
                                                  ; No predecessors!
  br i1 false, label %98, label %118, !dbg !3868

; <label>:98                                      ; preds = %97
  br label %99, !dbg !3869

; <label>:99                                      ; preds = %98, %75
  %100 = load %struct._IRP*, %struct._IRP** @pirp, align 8, !dbg !3871
  %101 = call i64 @KbFilter_CreateClose(%struct._DEVICE_OBJECT* %devobj, %struct._IRP* %100), !dbg !3874
  store i64 %101, i64* %status, align 8, !dbg !3875
  br label %119, !dbg !3876

; <label>:102                                     ; preds = %79
  %103 = load %struct._IRP*, %struct._IRP** @pirp, align 8, !dbg !3877
  %104 = call i64 @KbFilter_CreateClose(%struct._DEVICE_OBJECT* %devobj, %struct._IRP* %103), !dbg !3879
  store i64 %104, i64* %status, align 8, !dbg !3880
  br label %119, !dbg !3881

; <label>:105                                     ; preds = %83
  %106 = load %struct._IRP*, %struct._IRP** @pirp, align 8, !dbg !3882
  %107 = call i64 @KbFilter_IoCtl(%struct._DEVICE_OBJECT* %devobj, %struct._IRP* %106), !dbg !3884
  store i64 %107, i64* %status, align 8, !dbg !3885
  br label %119, !dbg !3886

; <label>:108                                     ; preds = %87
  %109 = load %struct._IRP*, %struct._IRP** @pirp, align 8, !dbg !3887
  %110 = call i64 @KbFilter_PnP(%struct._DEVICE_OBJECT* %devobj, %struct._IRP* %109), !dbg !3889
  store i64 %110, i64* %status, align 8, !dbg !3890
  br label %119, !dbg !3891

; <label>:111                                     ; preds = %91
  %112 = load %struct._IRP*, %struct._IRP** @pirp, align 8, !dbg !3892
  %113 = call i64 @KbFilter_Power(%struct._DEVICE_OBJECT* %devobj, %struct._IRP* %112), !dbg !3894
  store i64 %113, i64* %status, align 8, !dbg !3895
  br label %119, !dbg !3896

; <label>:114                                     ; preds = %95
  %115 = load %struct._IRP*, %struct._IRP** @pirp, align 8, !dbg !3897
  %116 = call i64 @KbFilter_InternIoCtl(%struct._DEVICE_OBJECT* %devobj, %struct._IRP* %115), !dbg !3899
  store i64 %116, i64* %status, align 8, !dbg !3900
  br label %119, !dbg !3901

; <label>:117                                     ; preds = %96
  store i32 -1, i32* %3, !dbg !3902
  br label %220, !dbg !3902

; <label>:118                                     ; preds = %97
  br label %119, !dbg !3903

; <label>:119                                     ; preds = %118, %114, %111, %108, %105, %102, %99
  br label %120

; <label>:120                                     ; preds = %119
  br label %121

; <label>:121                                     ; preds = %120
  br label %122

; <label>:122                                     ; preds = %121
  br label %123

; <label>:123                                     ; preds = %122
  br label %124

; <label>:124                                     ; preds = %123
  br label %125

; <label>:125                                     ; preds = %124
  br label %126

; <label>:126                                     ; preds = %125
  %127 = load i32, i32* %we_should_unload, align 4, !dbg !3904
  %128 = icmp ne i32 %127, 0, !dbg !3904
  br i1 %128, label %129, label %130, !dbg !3906

; <label>:129                                     ; preds = %126
  br label %131, !dbg !3907

; <label>:130                                     ; preds = %126
  br label %131

; <label>:131                                     ; preds = %130, %129
  br label %133, !dbg !3909

; <label>:132                                     ; preds = %0
  br label %133

; <label>:133                                     ; preds = %132, %131
  %134 = load i32, i32* @pended, align 4, !dbg !3910
  %135 = icmp eq i32 %134, 1, !dbg !3912
  br i1 %135, label %136, label %144, !dbg !3913

; <label>:136                                     ; preds = %133
  %137 = load i32, i32* @s, align 4, !dbg !3914
  %138 = load i32, i32* @NP, align 4, !dbg !3917
  %139 = icmp eq i32 %137, %138, !dbg !3918
  br i1 %139, label %140, label %142, !dbg !3919

; <label>:140                                     ; preds = %136
  %141 = load i32, i32* @NP, align 4, !dbg !3920
  store i32 %141, i32* @s, align 4, !dbg !3922
  br label %143, !dbg !3923

; <label>:142                                     ; preds = %136
  br label %145, !dbg !3924

; <label>:143                                     ; preds = %140
  br label %217, !dbg !3926

; <label>:144                                     ; preds = %133
  br label %145, !dbg !3927

; <label>:145                                     ; preds = %144, %142
  %146 = load i32, i32* @pended, align 4, !dbg !3928
  %147 = icmp eq i32 %146, 1, !dbg !3931
  br i1 %147, label %148, label %156, !dbg !3932

; <label>:148                                     ; preds = %145
  %149 = load i32, i32* @s, align 4, !dbg !3933
  %150 = load i32, i32* @MPR3, align 4, !dbg !3936
  %151 = icmp eq i32 %149, %150, !dbg !3937
  br i1 %151, label %152, label %154, !dbg !3938

; <label>:152                                     ; preds = %148
  %153 = load i32, i32* @MPR3, align 4, !dbg !3939
  store i32 %153, i32* @s, align 4, !dbg !3941
  br label %155, !dbg !3942

; <label>:154                                     ; preds = %148
  br label %157, !dbg !3943

; <label>:155                                     ; preds = %152
  br label %216, !dbg !3945

; <label>:156                                     ; preds = %145
  br label %157, !dbg !3946

; <label>:157                                     ; preds = %156, %154
  %158 = load i32, i32* @s, align 4, !dbg !3947
  %159 = load i32, i32* @UNLOADED, align 4, !dbg !3950
  %160 = icmp eq i32 %158, %159, !dbg !3951
  br i1 %160, label %161, label %162, !dbg !3952

; <label>:161                                     ; preds = %157
  br label %215, !dbg !3953

; <label>:162                                     ; preds = %157
  %163 = load i64, i64* %status, align 8, !dbg !3955
  %164 = icmp eq i64 %163, -1, !dbg !3958
  br i1 %164, label %165, label %166, !dbg !3959

; <label>:165                                     ; preds = %162
  br label %214, !dbg !3960

; <label>:166                                     ; preds = %162
  %167 = load i32, i32* @s, align 4, !dbg !3962
  %168 = load i32, i32* @SKIP2, align 4, !dbg !3965
  %169 = icmp ne i32 %167, %168, !dbg !3966
  br i1 %169, label %170, label %183, !dbg !3967

; <label>:170                                     ; preds = %166
  %171 = load i32, i32* @s, align 4, !dbg !3968
  %172 = load i32, i32* @IPC, align 4, !dbg !3971
  %173 = icmp ne i32 %171, %172, !dbg !3972
  br i1 %173, label %174, label %181, !dbg !3973

; <label>:174                                     ; preds = %170
  %175 = load i32, i32* @s, align 4, !dbg !3974
  %176 = load i32, i32* @DC, align 4, !dbg !3977
  %177 = icmp ne i32 %175, %176, !dbg !3978
  br i1 %177, label %178, label %179, !dbg !3979

; <label>:178                                     ; preds = %174
  br label %180, !dbg !3980

; <label>:179                                     ; preds = %174
  br label %184, !dbg !3982

; <label>:180                                     ; preds = %178
  br label %182, !dbg !3984

; <label>:181                                     ; preds = %170
  br label %184, !dbg !3985

; <label>:182                                     ; preds = %180
  br label %213, !dbg !3987

; <label>:183                                     ; preds = %166
  br label %184, !dbg !3988

; <label>:184                                     ; preds = %183, %181, %179
  %185 = load i32, i32* @pended, align 4, !dbg !3989
  %186 = icmp eq i32 %185, 1, !dbg !3992
  br i1 %186, label %187, label %193, !dbg !3993

; <label>:187                                     ; preds = %184
  %188 = load i64, i64* %status, align 8, !dbg !3994
  %189 = icmp ne i64 %188, 259, !dbg !3997
  br i1 %189, label %190, label %191, !dbg !3998

; <label>:190                                     ; preds = %187
  call void (...) @__VERIFIER_error() #6, !dbg !3999
  unreachable, !dbg !3999

errorFn.exit1:                                    ; No predecessors!
  br label %192, !dbg !4003

; <label>:191                                     ; preds = %187
  br label %192

; <label>:192                                     ; preds = %191, %errorFn.exit1
  br label %212, !dbg !4004

; <label>:193                                     ; preds = %184
  %194 = load i32, i32* @s, align 4, !dbg !4005
  %195 = load i32, i32* @DC, align 4, !dbg !4008
  %196 = icmp eq i32 %194, %195, !dbg !4009
  br i1 %196, label %197, label %203, !dbg !4010

; <label>:197                                     ; preds = %193
  %198 = load i64, i64* %status, align 8, !dbg !4011
  %199 = icmp eq i64 %198, 259, !dbg !4014
  br i1 %199, label %200, label %201, !dbg !4015

; <label>:200                                     ; preds = %197
  call void (...) @__VERIFIER_error() #6, !dbg !4016
  unreachable, !dbg !4016

errorFn.exit:                                     ; No predecessors!
  br label %202, !dbg !4020

; <label>:201                                     ; preds = %197
  br label %202

; <label>:202                                     ; preds = %201, %errorFn.exit
  br label %211, !dbg !4021

; <label>:203                                     ; preds = %193
  %204 = load i64, i64* %status, align 8, !dbg !4022
  %205 = load i32, i32* @lowerDriverReturn, align 4, !dbg !4025
  %206 = sext i32 %205 to i64, !dbg !4026
  %207 = icmp ne i64 %204, %206, !dbg !4027
  br i1 %207, label %208, label %209, !dbg !4028

; <label>:208                                     ; preds = %203
  br label %210, !dbg !4029

; <label>:209                                     ; preds = %203
  br label %210

; <label>:210                                     ; preds = %209, %208
  br label %211

; <label>:211                                     ; preds = %210, %202
  br label %212

; <label>:212                                     ; preds = %211, %192
  br label %213

; <label>:213                                     ; preds = %212, %182
  br label %214

; <label>:214                                     ; preds = %213, %165
  br label %215

; <label>:215                                     ; preds = %214, %161
  br label %216

; <label>:216                                     ; preds = %215, %155
  br label %217

; <label>:217                                     ; preds = %216, %143
  %218 = load i64, i64* %status, align 8, !dbg !4031
  %219 = trunc i64 %218 to i32, !dbg !4032
  store i32 %219, i32* %3, !dbg !4033
  br label %220, !dbg !4033

; <label>:220                                     ; preds = %217, %117, %70
  %221 = load i32, i32* %3, !dbg !4034
  ret i32 %221, !dbg !4034
}

declare i32 @__VERIFIER_nondet_int() #3

declare i64 @KbFilter_IoCtl(%struct._DEVICE_OBJECT*, %struct._IRP*) #3

; Function Attrs: nounwind ssp uwtable
define i8* @malloc(i32 %i) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %__BLAST_NONDET = alloca i32, align 4
  store i32 %i, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2995, metadata !1770), !dbg !4035
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET, metadata !2997, metadata !1770), !dbg !4036
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !4037
  store i32 %3, i32* %__BLAST_NONDET, align 4, !dbg !4036
  %4 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !4038
  %5 = icmp ne i32 %4, 0, !dbg !4038
  br i1 %5, label %6, label %7, !dbg !4039

; <label>:6                                       ; preds = %0
  store i8* null, i8** %1, !dbg !4040
  br label %8, !dbg !4040

; <label>:7                                       ; preds = %0
  store i8* inttoptr (i64 1 to i8*), i8** %1, !dbg !4041
  br label %8, !dbg !4041

; <label>:8                                       ; preds = %7, %6
  %9 = load i8*, i8** %1, !dbg !4042
  ret i8* %9, !dbg !4042
}

; Function Attrs: nounwind ssp uwtable
define void @ExAcquireFastMutex(%struct._FAST_MUTEX* %FastMutex) #0 {
  %1 = alloca %struct._FAST_MUTEX*, align 8
  store %struct._FAST_MUTEX* %FastMutex, %struct._FAST_MUTEX** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._FAST_MUTEX** %1, metadata !4043, metadata !1770), !dbg !4044
  ret void, !dbg !4045
}

; Function Attrs: nounwind ssp uwtable
define void @ExReleaseFastMutex(%struct._FAST_MUTEX* %FastMutex) #0 {
  %1 = alloca %struct._FAST_MUTEX*, align 8
  store %struct._FAST_MUTEX* %FastMutex, %struct._FAST_MUTEX** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._FAST_MUTEX** %1, metadata !4047, metadata !1770), !dbg !4048
  ret void, !dbg !4049
}

; Function Attrs: nounwind ssp uwtable
define i8* @ExAllocatePoolWithTag(i32 %PoolType, i64 %NumberOfBytes, i64 %Tag) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %__BLAST_NONDET.i = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %x = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  store i32 %PoolType, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4051, metadata !1770), !dbg !4052
  store i64 %NumberOfBytes, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4053, metadata !1770), !dbg !4054
  store i64 %Tag, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4055, metadata !1770), !dbg !4056
  call void @llvm.dbg.declare(metadata i8** %x, metadata !4057, metadata !1770), !dbg !4058
  call void @llvm.dbg.declare(metadata i8** %tmp, metadata !4059, metadata !1770), !dbg !4060
  %6 = load i64, i64* %4, align 8, !dbg !4061
  %7 = trunc i64 %6 to i32, !dbg !4061
  %8 = bitcast i8** %1 to i8*, !dbg !4064
  call void @llvm.lifetime.start(i64 8, i8* %8), !dbg !4064
  %9 = bitcast i32* %2 to i8*, !dbg !4064
  call void @llvm.lifetime.start(i64 4, i8* %9), !dbg !4064
  %10 = bitcast i32* %__BLAST_NONDET.i to i8*, !dbg !4064
  call void @llvm.lifetime.start(i64 4, i8* %10), !dbg !4064
  store i32 %7, i32* %2, align 4, !dbg !4064
  %11 = call i32 @__VERIFIER_nondet_int() #4, !dbg !4065
  store i32 %11, i32* %__BLAST_NONDET.i, align 4, !dbg !4067
  %12 = load i32, i32* %__BLAST_NONDET.i, align 4, !dbg !4068
  %13 = icmp ne i32 %12, 0, !dbg !4068
  br i1 %13, label %14, label %15, !dbg !4069

; <label>:14                                      ; preds = %0
  store i8* null, i8** %1, !dbg !4070
  br label %malloc.exit, !dbg !4070

; <label>:15                                      ; preds = %0
  store i8* inttoptr (i64 1 to i8*), i8** %1, !dbg !4071
  br label %malloc.exit, !dbg !4071

malloc.exit:                                      ; preds = %14, %15
  %16 = load i8*, i8** %1, !dbg !4072
  %17 = bitcast i8** %1 to i8*, !dbg !4072
  call void @llvm.lifetime.end(i64 8, i8* %17), !dbg !4072
  %18 = bitcast i32* %2 to i8*, !dbg !4072
  call void @llvm.lifetime.end(i64 4, i8* %18), !dbg !4072
  %19 = bitcast i32* %__BLAST_NONDET.i to i8*, !dbg !4072
  call void @llvm.lifetime.end(i64 4, i8* %19), !dbg !4072
  store i8* %16, i8** %tmp, align 8, !dbg !4073
  %20 = load i8*, i8** %tmp, align 8, !dbg !4074
  store i8* %20, i8** %x, align 8, !dbg !4075
  %21 = load i8*, i8** %x, align 8, !dbg !4076
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2995, metadata !1770), !dbg !4077
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET.i, metadata !2997, metadata !1770), !dbg !4067
  ret i8* %21, !dbg !4078
}

; Function Attrs: nounwind ssp uwtable
define void @ExFreePool(i8* %P) #0 {
  %1 = alloca i8*, align 8
  store i8* %P, i8** %1, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !4079, metadata !1770), !dbg !4080
  ret void, !dbg !4081
}

; Function Attrs: nounwind ssp uwtable
define %struct._LIST_ENTRY* @ExfInterlockedInsertHeadList(%struct._LIST_ENTRY* %ListHead, %struct._LIST_ENTRY* %ListEntry, i64* %Lock) #0 {
  %1 = alloca %struct._LIST_ENTRY*, align 8
  %2 = alloca %struct._LIST_ENTRY*, align 8
  %3 = alloca i64*, align 8
  store %struct._LIST_ENTRY* %ListHead, %struct._LIST_ENTRY** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._LIST_ENTRY** %1, metadata !4083, metadata !1770), !dbg !4084
  store %struct._LIST_ENTRY* %ListEntry, %struct._LIST_ENTRY** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._LIST_ENTRY** %2, metadata !4085, metadata !1770), !dbg !4086
  store i64* %Lock, i64** %3, align 8
  call void @llvm.dbg.declare(metadata i64** %3, metadata !4087, metadata !1770), !dbg !4088
  ret %struct._LIST_ENTRY* null, !dbg !4089
}

; Function Attrs: nounwind ssp uwtable
define %struct._LIST_ENTRY* @ExfInterlockedInsertTailList(%struct._LIST_ENTRY* %ListHead, %struct._LIST_ENTRY* %ListEntry, i64* %Lock) #0 {
  %1 = alloca %struct._LIST_ENTRY*, align 8
  %2 = alloca %struct._LIST_ENTRY*, align 8
  %3 = alloca i64*, align 8
  store %struct._LIST_ENTRY* %ListHead, %struct._LIST_ENTRY** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._LIST_ENTRY** %1, metadata !4091, metadata !1770), !dbg !4092
  store %struct._LIST_ENTRY* %ListEntry, %struct._LIST_ENTRY** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._LIST_ENTRY** %2, metadata !4093, metadata !1770), !dbg !4094
  store i64* %Lock, i64** %3, align 8
  call void @llvm.dbg.declare(metadata i64** %3, metadata !4095, metadata !1770), !dbg !4096
  ret %struct._LIST_ENTRY* null, !dbg !4097
}

; Function Attrs: nounwind ssp uwtable
define %struct._LIST_ENTRY* @ExfInterlockedRemoveHeadList(%struct._LIST_ENTRY* %ListHead, i64* %Lock) #0 {
  %1 = alloca %struct._LIST_ENTRY*, align 8
  %2 = alloca i64*, align 8
  store %struct._LIST_ENTRY* %ListHead, %struct._LIST_ENTRY** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._LIST_ENTRY** %1, metadata !4099, metadata !1770), !dbg !4100
  store i64* %Lock, i64** %2, align 8
  call void @llvm.dbg.declare(metadata i64** %2, metadata !4101, metadata !1770), !dbg !4102
  ret %struct._LIST_ENTRY* null, !dbg !4103
}

; Function Attrs: nounwind ssp uwtable
define %struct._MDL* @IoAllocateMdl(i8* %VirtualAddress, i64 %Length, i8 zeroext %SecondaryBuffer, i8 zeroext %ChargeQuota, %struct._IRP* %Irp) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %__BLAST_NONDET.i = alloca i32, align 4
  %3 = alloca %struct._MDL*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct._IRP*, align 8
  %__BLAST_NONDET = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store i8* %VirtualAddress, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4105, metadata !1770), !dbg !4106
  store i64 %Length, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4107, metadata !1770), !dbg !4108
  store i8 %SecondaryBuffer, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !4109, metadata !1770), !dbg !4110
  store i8 %ChargeQuota, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !4111, metadata !1770), !dbg !4112
  store %struct._IRP* %Irp, %struct._IRP** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %8, metadata !4113, metadata !1770), !dbg !4114
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET, metadata !4115, metadata !1770), !dbg !4116
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !4117
  store i32 %9, i32* %__BLAST_NONDET, align 4, !dbg !4116
  call void @llvm.dbg.declare(metadata i8** %tmp, metadata !4118, metadata !1770), !dbg !4119
  %10 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !4120
  %11 = icmp eq i32 %10, 0, !dbg !4123
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2995, metadata !1770), !dbg !4124
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET.i, metadata !2997, metadata !1770), !dbg !4131
  br i1 %11, label %12, label %13, !dbg !4132

; <label>:12                                      ; preds = %0
  br label %16, !dbg !4133

; <label>:13                                      ; preds = %0
  br label %31, !dbg !4135
                                                  ; No predecessors!
  br i1 false, label %15, label %32, !dbg !4136

; <label>:15                                      ; preds = %14
  br label %16, !dbg !4137

; <label>:16                                      ; preds = %15, %12
  %17 = bitcast i8** %1 to i8*, !dbg !4138
  call void @llvm.lifetime.start(i64 8, i8* %17), !dbg !4138
  %18 = bitcast i32* %2 to i8*, !dbg !4138
  call void @llvm.lifetime.start(i64 4, i8* %18), !dbg !4138
  %19 = bitcast i32* %__BLAST_NONDET.i to i8*, !dbg !4138
  call void @llvm.lifetime.start(i64 4, i8* %19), !dbg !4138
  store i32 56, i32* %2, align 4, !dbg !4138
  %20 = call i32 @__VERIFIER_nondet_int() #4, !dbg !4139
  store i32 %20, i32* %__BLAST_NONDET.i, align 4, !dbg !4131
  %21 = load i32, i32* %__BLAST_NONDET.i, align 4, !dbg !4140
  %22 = icmp ne i32 %21, 0, !dbg !4140
  br i1 %22, label %23, label %24, !dbg !4141

; <label>:23                                      ; preds = %16
  store i8* null, i8** %1, !dbg !4142
  br label %malloc.exit, !dbg !4142

; <label>:24                                      ; preds = %16
  store i8* inttoptr (i64 1 to i8*), i8** %1, !dbg !4143
  br label %malloc.exit, !dbg !4143

malloc.exit:                                      ; preds = %23, %24
  %25 = load i8*, i8** %1, !dbg !4144
  %26 = bitcast i8** %1 to i8*, !dbg !4144
  call void @llvm.lifetime.end(i64 8, i8* %26), !dbg !4144
  %27 = bitcast i32* %2 to i8*, !dbg !4144
  call void @llvm.lifetime.end(i64 4, i8* %27), !dbg !4144
  %28 = bitcast i32* %__BLAST_NONDET.i to i8*, !dbg !4144
  call void @llvm.lifetime.end(i64 4, i8* %28), !dbg !4144
  store i8* %25, i8** %tmp, align 8, !dbg !4145
  %29 = load i8*, i8** %tmp, align 8, !dbg !4146
  %30 = bitcast i8* %29 to %struct._MDL*, !dbg !4147
  store %struct._MDL* %30, %struct._MDL** %3, !dbg !4148
  br label %35, !dbg !4148

; <label>:31                                      ; preds = %13
  store %struct._MDL* null, %struct._MDL** %3, !dbg !4149
  br label %35, !dbg !4149

; <label>:32                                      ; preds = %14
  br label %33, !dbg !4150

; <label>:33                                      ; preds = %32
  br label %34

; <label>:34                                      ; preds = %33
  br label %35

; <label>:35                                      ; preds = %34, %31, %malloc.exit
  %36 = load %struct._MDL*, %struct._MDL** %3, !dbg !4151
  ret %struct._MDL* %36, !dbg !4151
}

; Function Attrs: nounwind ssp uwtable
define %struct._IRP* @IoBuildAsynchronousFsdRequest(i64 %MajorFunction, %struct._DEVICE_OBJECT* %DeviceObject, i8* %Buffer, i64 %Length, %union._LARGE_INTEGER* %StartingOffset, %struct._IO_STATUS_BLOCK* %IoStatusBlock) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %__BLAST_NONDET.i = alloca i32, align 4
  %3 = alloca %struct._IRP*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct._DEVICE_OBJECT*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union._LARGE_INTEGER*, align 8
  %9 = alloca %struct._IO_STATUS_BLOCK*, align 8
  %__BLAST_NONDET = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store i64 %MajorFunction, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4152, metadata !1770), !dbg !4153
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %5, metadata !4154, metadata !1770), !dbg !4155
  store i8* %Buffer, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4156, metadata !1770), !dbg !4157
  store i64 %Length, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4158, metadata !1770), !dbg !4159
  store %union._LARGE_INTEGER* %StartingOffset, %union._LARGE_INTEGER** %8, align 8
  call void @llvm.dbg.declare(metadata %union._LARGE_INTEGER** %8, metadata !4160, metadata !1770), !dbg !4161
  store %struct._IO_STATUS_BLOCK* %IoStatusBlock, %struct._IO_STATUS_BLOCK** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_STATUS_BLOCK** %9, metadata !4162, metadata !1770), !dbg !4163
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET, metadata !4164, metadata !1770), !dbg !4165
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !4166
  store i32 %10, i32* %__BLAST_NONDET, align 4, !dbg !4165
  call void @llvm.dbg.declare(metadata i8** %tmp, metadata !4167, metadata !1770), !dbg !4168
  store i32 1, i32* @customIrp, align 4, !dbg !4169
  %11 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !4171
  %12 = icmp eq i32 %11, 0, !dbg !4173
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2995, metadata !1770), !dbg !4174
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET.i, metadata !2997, metadata !1770), !dbg !4181
  br i1 %12, label %13, label %14, !dbg !4182

; <label>:13                                      ; preds = %0
  br label %17, !dbg !4183

; <label>:14                                      ; preds = %0
  br label %32, !dbg !4185
                                                  ; No predecessors!
  br i1 false, label %16, label %33, !dbg !4186

; <label>:16                                      ; preds = %15
  br label %17, !dbg !4187

; <label>:17                                      ; preds = %16, %13
  %18 = bitcast i8** %1 to i8*, !dbg !4188
  call void @llvm.lifetime.start(i64 8, i8* %18), !dbg !4188
  %19 = bitcast i32* %2 to i8*, !dbg !4188
  call void @llvm.lifetime.start(i64 4, i8* %19), !dbg !4188
  %20 = bitcast i32* %__BLAST_NONDET.i to i8*, !dbg !4188
  call void @llvm.lifetime.start(i64 4, i8* %20), !dbg !4188
  store i32 216, i32* %2, align 4, !dbg !4188
  %21 = call i32 @__VERIFIER_nondet_int() #4, !dbg !4189
  store i32 %21, i32* %__BLAST_NONDET.i, align 4, !dbg !4181
  %22 = load i32, i32* %__BLAST_NONDET.i, align 4, !dbg !4190
  %23 = icmp ne i32 %22, 0, !dbg !4190
  br i1 %23, label %24, label %25, !dbg !4191

; <label>:24                                      ; preds = %17
  store i8* null, i8** %1, !dbg !4192
  br label %malloc.exit, !dbg !4192

; <label>:25                                      ; preds = %17
  store i8* inttoptr (i64 1 to i8*), i8** %1, !dbg !4193
  br label %malloc.exit, !dbg !4193

malloc.exit:                                      ; preds = %24, %25
  %26 = load i8*, i8** %1, !dbg !4194
  %27 = bitcast i8** %1 to i8*, !dbg !4194
  call void @llvm.lifetime.end(i64 8, i8* %27), !dbg !4194
  %28 = bitcast i32* %2 to i8*, !dbg !4194
  call void @llvm.lifetime.end(i64 4, i8* %28), !dbg !4194
  %29 = bitcast i32* %__BLAST_NONDET.i to i8*, !dbg !4194
  call void @llvm.lifetime.end(i64 4, i8* %29), !dbg !4194
  store i8* %26, i8** %tmp, align 8, !dbg !4195
  %30 = load i8*, i8** %tmp, align 8, !dbg !4196
  %31 = bitcast i8* %30 to %struct._IRP*, !dbg !4197
  store %struct._IRP* %31, %struct._IRP** %3, !dbg !4198
  br label %36, !dbg !4198

; <label>:32                                      ; preds = %14
  store %struct._IRP* null, %struct._IRP** %3, !dbg !4199
  br label %36, !dbg !4199

; <label>:33                                      ; preds = %15
  br label %34, !dbg !4200

; <label>:34                                      ; preds = %33
  br label %35

; <label>:35                                      ; preds = %34
  br label %36

; <label>:36                                      ; preds = %35, %32, %malloc.exit
  %37 = load %struct._IRP*, %struct._IRP** %3, !dbg !4201
  ret %struct._IRP* %37, !dbg !4201
}

; Function Attrs: nounwind ssp uwtable
define %struct._IRP* @IoBuildDeviceIoControlRequest(i64 %IoControlCode, %struct._DEVICE_OBJECT* %DeviceObject, i8* %InputBuffer, i64 %InputBufferLength, i8* %OutputBuffer, i64 %OutputBufferLength, i8 zeroext %InternalDeviceIoControl, %struct._KEVENT* %Event, %struct._IO_STATUS_BLOCK* %IoStatusBlock) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %__BLAST_NONDET.i = alloca i32, align 4
  %3 = alloca %struct._IRP*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct._DEVICE_OBJECT*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct._KEVENT*, align 8
  %12 = alloca %struct._IO_STATUS_BLOCK*, align 8
  %__BLAST_NONDET = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store i64 %IoControlCode, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4202, metadata !1770), !dbg !4203
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %5, metadata !4204, metadata !1770), !dbg !4205
  store i8* %InputBuffer, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4206, metadata !1770), !dbg !4207
  store i64 %InputBufferLength, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4208, metadata !1770), !dbg !4209
  store i8* %OutputBuffer, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4210, metadata !1770), !dbg !4211
  store i64 %OutputBufferLength, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4212, metadata !1770), !dbg !4213
  store i8 %InternalDeviceIoControl, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !4214, metadata !1770), !dbg !4215
  store %struct._KEVENT* %Event, %struct._KEVENT** %11, align 8
  call void @llvm.dbg.declare(metadata %struct._KEVENT** %11, metadata !4216, metadata !1770), !dbg !4217
  store %struct._IO_STATUS_BLOCK* %IoStatusBlock, %struct._IO_STATUS_BLOCK** %12, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_STATUS_BLOCK** %12, metadata !4218, metadata !1770), !dbg !4219
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET, metadata !4220, metadata !1770), !dbg !4221
  %13 = call i32 @__VERIFIER_nondet_int(), !dbg !4222
  store i32 %13, i32* %__BLAST_NONDET, align 4, !dbg !4221
  call void @llvm.dbg.declare(metadata i8** %tmp, metadata !4223, metadata !1770), !dbg !4224
  store i32 1, i32* @customIrp, align 4, !dbg !4225
  %14 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !4227
  %15 = icmp eq i32 %14, 0, !dbg !4229
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2995, metadata !1770), !dbg !4230
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET.i, metadata !2997, metadata !1770), !dbg !4237
  br i1 %15, label %16, label %17, !dbg !4238

; <label>:16                                      ; preds = %0
  br label %20, !dbg !4239

; <label>:17                                      ; preds = %0
  br label %35, !dbg !4241
                                                  ; No predecessors!
  br i1 false, label %19, label %36, !dbg !4242

; <label>:19                                      ; preds = %18
  br label %20, !dbg !4243

; <label>:20                                      ; preds = %19, %16
  %21 = bitcast i8** %1 to i8*, !dbg !4244
  call void @llvm.lifetime.start(i64 8, i8* %21), !dbg !4244
  %22 = bitcast i32* %2 to i8*, !dbg !4244
  call void @llvm.lifetime.start(i64 4, i8* %22), !dbg !4244
  %23 = bitcast i32* %__BLAST_NONDET.i to i8*, !dbg !4244
  call void @llvm.lifetime.start(i64 4, i8* %23), !dbg !4244
  store i32 216, i32* %2, align 4, !dbg !4244
  %24 = call i32 @__VERIFIER_nondet_int() #4, !dbg !4245
  store i32 %24, i32* %__BLAST_NONDET.i, align 4, !dbg !4237
  %25 = load i32, i32* %__BLAST_NONDET.i, align 4, !dbg !4246
  %26 = icmp ne i32 %25, 0, !dbg !4246
  br i1 %26, label %27, label %28, !dbg !4247

; <label>:27                                      ; preds = %20
  store i8* null, i8** %1, !dbg !4248
  br label %malloc.exit, !dbg !4248

; <label>:28                                      ; preds = %20
  store i8* inttoptr (i64 1 to i8*), i8** %1, !dbg !4249
  br label %malloc.exit, !dbg !4249

malloc.exit:                                      ; preds = %27, %28
  %29 = load i8*, i8** %1, !dbg !4250
  %30 = bitcast i8** %1 to i8*, !dbg !4250
  call void @llvm.lifetime.end(i64 8, i8* %30), !dbg !4250
  %31 = bitcast i32* %2 to i8*, !dbg !4250
  call void @llvm.lifetime.end(i64 4, i8* %31), !dbg !4250
  %32 = bitcast i32* %__BLAST_NONDET.i to i8*, !dbg !4250
  call void @llvm.lifetime.end(i64 4, i8* %32), !dbg !4250
  store i8* %29, i8** %tmp, align 8, !dbg !4251
  %33 = load i8*, i8** %tmp, align 8, !dbg !4252
  %34 = bitcast i8* %33 to %struct._IRP*, !dbg !4253
  store %struct._IRP* %34, %struct._IRP** %3, !dbg !4254
  br label %39, !dbg !4254

; <label>:35                                      ; preds = %17
  store %struct._IRP* null, %struct._IRP** %3, !dbg !4255
  br label %39, !dbg !4255

; <label>:36                                      ; preds = %18
  br label %37, !dbg !4256

; <label>:37                                      ; preds = %36
  br label %38

; <label>:38                                      ; preds = %37
  br label %39

; <label>:39                                      ; preds = %38, %35, %malloc.exit
  %40 = load %struct._IRP*, %struct._IRP** %3, !dbg !4257
  ret %struct._IRP* %40, !dbg !4257
}

; Function Attrs: nounwind ssp uwtable
define i64 @IoCreateSymbolicLink(%struct._UNICODE_STRING* %SymbolicLinkName, %struct._UNICODE_STRING* %DeviceName) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct._UNICODE_STRING*, align 8
  %3 = alloca %struct._UNICODE_STRING*, align 8
  %__BLAST_NONDET = alloca i32, align 4
  store %struct._UNICODE_STRING* %SymbolicLinkName, %struct._UNICODE_STRING** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %2, metadata !4258, metadata !1770), !dbg !4259
  store %struct._UNICODE_STRING* %DeviceName, %struct._UNICODE_STRING** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %3, metadata !4260, metadata !1770), !dbg !4261
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET, metadata !4262, metadata !1770), !dbg !4263
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !4264
  store i32 %4, i32* %__BLAST_NONDET, align 4, !dbg !4263
  %5 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !4265
  %6 = icmp eq i32 %5, 0, !dbg !4268
  br i1 %6, label %7, label %8, !dbg !4269

; <label>:7                                       ; preds = %0
  br label %11, !dbg !4270

; <label>:8                                       ; preds = %0
  br label %12, !dbg !4272
                                                  ; No predecessors!
  br i1 false, label %10, label %13, !dbg !4275

; <label>:10                                      ; preds = %9
  br label %11, !dbg !4276

; <label>:11                                      ; preds = %10, %7
  store i64 0, i64* %1, !dbg !4278
  br label %16, !dbg !4278

; <label>:12                                      ; preds = %8
  store i64 -1073741823, i64* %1, !dbg !4280
  br label %16, !dbg !4280

; <label>:13                                      ; preds = %9
  br label %14, !dbg !4281

; <label>:14                                      ; preds = %13
  br label %15

; <label>:15                                      ; preds = %14
  br label %16

; <label>:16                                      ; preds = %15, %12, %11
  %17 = load i64, i64* %1, !dbg !4282
  ret i64 %17, !dbg !4282
}

; Function Attrs: nounwind ssp uwtable
define void @IoDeleteDevice(%struct._DEVICE_OBJECT* %DeviceObject) #0 {
  %1 = alloca %struct._DEVICE_OBJECT*, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %1, metadata !4283, metadata !1770), !dbg !4284
  ret void, !dbg !4285
}

; Function Attrs: nounwind ssp uwtable
define i64 @IoDeleteSymbolicLink(%struct._UNICODE_STRING* %SymbolicLinkName) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct._UNICODE_STRING*, align 8
  %__BLAST_NONDET = alloca i32, align 4
  store %struct._UNICODE_STRING* %SymbolicLinkName, %struct._UNICODE_STRING** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %2, metadata !4287, metadata !1770), !dbg !4288
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET, metadata !4289, metadata !1770), !dbg !4290
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !4291
  store i32 %3, i32* %__BLAST_NONDET, align 4, !dbg !4290
  %4 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !4292
  %5 = icmp eq i32 %4, 0, !dbg !4295
  br i1 %5, label %6, label %7, !dbg !4296

; <label>:6                                       ; preds = %0
  br label %10, !dbg !4297

; <label>:7                                       ; preds = %0
  br label %11, !dbg !4299
                                                  ; No predecessors!
  br i1 false, label %9, label %12, !dbg !4302

; <label>:9                                       ; preds = %8
  br label %10, !dbg !4303

; <label>:10                                      ; preds = %9, %6
  store i64 0, i64* %1, !dbg !4305
  br label %15, !dbg !4305

; <label>:11                                      ; preds = %7
  store i64 -1073741823, i64* %1, !dbg !4307
  br label %15, !dbg !4307

; <label>:12                                      ; preds = %8
  br label %13, !dbg !4308

; <label>:13                                      ; preds = %12
  br label %14

; <label>:14                                      ; preds = %13
  br label %15

; <label>:15                                      ; preds = %14, %11, %10
  %16 = load i64, i64* %1, !dbg !4309
  ret i64 %16, !dbg !4309
}

; Function Attrs: nounwind ssp uwtable
define void @IoDetachDevice(%struct._DEVICE_OBJECT* %TargetDevice) #0 {
  %1 = alloca %struct._DEVICE_OBJECT*, align 8
  store %struct._DEVICE_OBJECT* %TargetDevice, %struct._DEVICE_OBJECT** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %1, metadata !4310, metadata !1770), !dbg !4311
  ret void, !dbg !4312
}

; Function Attrs: nounwind ssp uwtable
define void @IoFreeIrp(%struct._IRP* %Irp) #0 {
  %1 = alloca %struct._IRP*, align 8
  store %struct._IRP* %Irp, %struct._IRP** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %1, metadata !4314, metadata !1770), !dbg !4315
  ret void, !dbg !4316
}

; Function Attrs: nounwind ssp uwtable
define void @IoFreeMdl(%struct._MDL* %Mdl) #0 {
  %1 = alloca %struct._MDL*, align 8
  store %struct._MDL* %Mdl, %struct._MDL** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._MDL** %1, metadata !4318, metadata !1770), !dbg !4319
  ret void, !dbg !4320
}

; Function Attrs: nounwind ssp uwtable
define %struct._CONFIGURATION_INFORMATION* @IoGetConfigurationInformation() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %__BLAST_NONDET.i = alloca i32, align 4
  %tmp = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %tmp, metadata !4322, metadata !1770), !dbg !4323
  %3 = bitcast i8** %1 to i8*, !dbg !4324
  call void @llvm.lifetime.start(i64 8, i8* %3), !dbg !4324
  %4 = bitcast i32* %2 to i8*, !dbg !4324
  call void @llvm.lifetime.start(i64 4, i8* %4), !dbg !4324
  %5 = bitcast i32* %__BLAST_NONDET.i to i8*, !dbg !4324
  call void @llvm.lifetime.start(i64 4, i8* %5), !dbg !4324
  store i32 80, i32* %2, align 4, !dbg !4324
  %6 = call i32 @__VERIFIER_nondet_int() #4, !dbg !4327
  store i32 %6, i32* %__BLAST_NONDET.i, align 4, !dbg !4329
  %7 = load i32, i32* %__BLAST_NONDET.i, align 4, !dbg !4330
  %8 = icmp ne i32 %7, 0, !dbg !4330
  br i1 %8, label %9, label %10, !dbg !4331

; <label>:9                                       ; preds = %0
  store i8* null, i8** %1, !dbg !4332
  br label %malloc.exit, !dbg !4332

; <label>:10                                      ; preds = %0
  store i8* inttoptr (i64 1 to i8*), i8** %1, !dbg !4333
  br label %malloc.exit, !dbg !4333

malloc.exit:                                      ; preds = %9, %10
  %11 = load i8*, i8** %1, !dbg !4334
  %12 = bitcast i8** %1 to i8*, !dbg !4334
  call void @llvm.lifetime.end(i64 8, i8* %12), !dbg !4334
  %13 = bitcast i32* %2 to i8*, !dbg !4334
  call void @llvm.lifetime.end(i64 4, i8* %13), !dbg !4334
  %14 = bitcast i32* %__BLAST_NONDET.i to i8*, !dbg !4334
  call void @llvm.lifetime.end(i64 4, i8* %14), !dbg !4334
  store i8* %11, i8** %tmp, align 8, !dbg !4335
  %15 = load i8*, i8** %tmp, align 8, !dbg !4336
  %16 = bitcast i8* %15 to %struct._CONFIGURATION_INFORMATION*, !dbg !4337
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2995, metadata !1770), !dbg !4338
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET.i, metadata !2997, metadata !1770), !dbg !4329
  ret %struct._CONFIGURATION_INFORMATION* %16, !dbg !4339
}

; Function Attrs: nounwind ssp uwtable
define i64 @IoQueryDeviceDescription(i32* %BusType, i64* %BusNumber, i32* %ControllerType, i64* %ControllerNumber, i32* %PeripheralType, i64* %PeripheralNumber, i64 (i8*, %struct._UNICODE_STRING*, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**)* %CalloutRoutine, i8* %Context) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64 (i8*, %struct._UNICODE_STRING*, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**)*, align 8
  %9 = alloca i8*, align 8
  %__BLAST_NONDET = alloca i32, align 4
  store i32* %BusType, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !4340, metadata !1770), !dbg !4341
  store i64* %BusNumber, i64** %3, align 8
  call void @llvm.dbg.declare(metadata i64** %3, metadata !4342, metadata !1770), !dbg !4343
  store i32* %ControllerType, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !4344, metadata !1770), !dbg !4345
  store i64* %ControllerNumber, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !4346, metadata !1770), !dbg !4347
  store i32* %PeripheralType, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !4348, metadata !1770), !dbg !4349
  store i64* %PeripheralNumber, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !4350, metadata !1770), !dbg !4351
  store i64 (i8*, %struct._UNICODE_STRING*, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**)* %CalloutRoutine, i64 (i8*, %struct._UNICODE_STRING*, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**)** %8, align 8
  call void @llvm.dbg.declare(metadata i64 (i8*, %struct._UNICODE_STRING*, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**)** %8, metadata !4352, metadata !1770), !dbg !4353
  store i8* %Context, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4354, metadata !1770), !dbg !4355
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET, metadata !4356, metadata !1770), !dbg !4357
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !4358
  store i32 %10, i32* %__BLAST_NONDET, align 4, !dbg !4357
  %11 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !4359
  %12 = icmp eq i32 %11, 0, !dbg !4362
  br i1 %12, label %13, label %14, !dbg !4363

; <label>:13                                      ; preds = %0
  br label %17, !dbg !4364

; <label>:14                                      ; preds = %0
  br label %18, !dbg !4366
                                                  ; No predecessors!
  br i1 false, label %16, label %19, !dbg !4369

; <label>:16                                      ; preds = %15
  br label %17, !dbg !4370

; <label>:17                                      ; preds = %16, %13
  store i64 0, i64* %1, !dbg !4372
  br label %22, !dbg !4372

; <label>:18                                      ; preds = %14
  store i64 -1073741823, i64* %1, !dbg !4374
  br label %22, !dbg !4374

; <label>:19                                      ; preds = %15
  br label %20, !dbg !4375

; <label>:20                                      ; preds = %19
  br label %21

; <label>:21                                      ; preds = %20
  br label %22

; <label>:22                                      ; preds = %21, %18, %17
  %23 = load i64, i64* %1, !dbg !4376
  ret i64 %23, !dbg !4376
}

; Function Attrs: nounwind ssp uwtable
define i64 @IoRegisterDeviceInterface(%struct._DEVICE_OBJECT* %PhysicalDeviceObject, %struct._GUID* %InterfaceClassGuid, %struct._UNICODE_STRING* %ReferenceString, %struct._UNICODE_STRING* %SymbolicLinkName) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct._DEVICE_OBJECT*, align 8
  %3 = alloca %struct._GUID*, align 8
  %4 = alloca %struct._UNICODE_STRING*, align 8
  %5 = alloca %struct._UNICODE_STRING*, align 8
  %__BLAST_NONDET = alloca i32, align 4
  store %struct._DEVICE_OBJECT* %PhysicalDeviceObject, %struct._DEVICE_OBJECT** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %2, metadata !4377, metadata !1770), !dbg !4378
  store %struct._GUID* %InterfaceClassGuid, %struct._GUID** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GUID** %3, metadata !4379, metadata !1770), !dbg !4380
  store %struct._UNICODE_STRING* %ReferenceString, %struct._UNICODE_STRING** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %4, metadata !4381, metadata !1770), !dbg !4382
  store %struct._UNICODE_STRING* %SymbolicLinkName, %struct._UNICODE_STRING** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %5, metadata !4383, metadata !1770), !dbg !4384
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET, metadata !4385, metadata !1770), !dbg !4386
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !4387
  store i32 %6, i32* %__BLAST_NONDET, align 4, !dbg !4386
  %7 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !4388
  %8 = icmp eq i32 %7, 0, !dbg !4391
  br i1 %8, label %9, label %10, !dbg !4392

; <label>:9                                       ; preds = %0
  br label %13, !dbg !4393

; <label>:10                                      ; preds = %0
  br label %14, !dbg !4395
                                                  ; No predecessors!
  br i1 false, label %12, label %15, !dbg !4398

; <label>:12                                      ; preds = %11
  br label %13, !dbg !4399

; <label>:13                                      ; preds = %12, %9
  store i64 0, i64* %1, !dbg !4401
  br label %18, !dbg !4401

; <label>:14                                      ; preds = %10
  store i64 -1073741808, i64* %1, !dbg !4403
  br label %18, !dbg !4403

; <label>:15                                      ; preds = %11
  br label %16, !dbg !4404

; <label>:16                                      ; preds = %15
  br label %17

; <label>:17                                      ; preds = %16
  br label %18

; <label>:18                                      ; preds = %17, %14, %13
  %19 = load i64, i64* %1, !dbg !4405
  ret i64 %19, !dbg !4405
}

; Function Attrs: nounwind ssp uwtable
define void @IoReleaseCancelSpinLock(i8 zeroext %Irql) #0 {
  %1 = alloca i8, align 1
  store i8 %Irql, i8* %1, align 1
  call void @llvm.dbg.declare(metadata i8* %1, metadata !4406, metadata !1770), !dbg !4407
  ret void, !dbg !4408
}

; Function Attrs: nounwind ssp uwtable
define i64 @IoSetDeviceInterfaceState(%struct._UNICODE_STRING* %SymbolicLinkName, i8 zeroext %Enable) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct._UNICODE_STRING*, align 8
  %3 = alloca i8, align 1
  %__BLAST_NONDET = alloca i32, align 4
  store %struct._UNICODE_STRING* %SymbolicLinkName, %struct._UNICODE_STRING** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %2, metadata !4410, metadata !1770), !dbg !4411
  store i8 %Enable, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !4412, metadata !1770), !dbg !4413
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET, metadata !4414, metadata !1770), !dbg !4415
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !4416
  store i32 %4, i32* %__BLAST_NONDET, align 4, !dbg !4415
  %5 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !4417
  %6 = icmp eq i32 %5, 0, !dbg !4420
  br i1 %6, label %7, label %8, !dbg !4421

; <label>:7                                       ; preds = %0
  br label %11, !dbg !4422

; <label>:8                                       ; preds = %0
  br label %12, !dbg !4424
                                                  ; No predecessors!
  br i1 false, label %10, label %13, !dbg !4427

; <label>:10                                      ; preds = %9
  br label %11, !dbg !4428

; <label>:11                                      ; preds = %10, %7
  store i64 0, i64* %1, !dbg !4430
  br label %16, !dbg !4430

; <label>:12                                      ; preds = %8
  store i64 -1073741823, i64* %1, !dbg !4432
  br label %16, !dbg !4432

; <label>:13                                      ; preds = %9
  br label %14, !dbg !4433

; <label>:14                                      ; preds = %13
  br label %15

; <label>:15                                      ; preds = %14
  br label %16

; <label>:16                                      ; preds = %15, %12, %11
  %17 = load i64, i64* %1, !dbg !4434
  ret i64 %17, !dbg !4434
}

; Function Attrs: nounwind ssp uwtable
define void @IoSetHardErrorOrVerifyDevice(%struct._IRP* %Irp, %struct._DEVICE_OBJECT* %DeviceObject) #0 {
  %1 = alloca %struct._IRP*, align 8
  %2 = alloca %struct._DEVICE_OBJECT*, align 8
  store %struct._IRP* %Irp, %struct._IRP** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %1, metadata !4435, metadata !1770), !dbg !4436
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %2, metadata !4437, metadata !1770), !dbg !4438
  ret void, !dbg !4439
}

; Function Attrs: nounwind ssp uwtable
define void @stubMoreProcessingRequired() #0 {
  %1 = load i32, i32* @s, align 4, !dbg !4441
  %2 = load i32, i32* @NP, align 4, !dbg !4442
  %3 = icmp eq i32 %1, %2, !dbg !4443
  br i1 %3, label %4, label %6, !dbg !4444

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* @MPR1, align 4, !dbg !4445
  store i32 %5, i32* @s, align 4, !dbg !4446
  br label %7, !dbg !4447

; <label>:6                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !4448
  unreachable, !dbg !4448

errorFn.exit:                                     ; No predecessors!
  br label %7

; <label>:7                                       ; preds = %errorFn.exit, %4
  ret void, !dbg !4450
}

declare i8* @__VERIFIER_nondet_pointer() #3

; Function Attrs: nounwind ssp uwtable
define zeroext i8 @KeAcquireSpinLockRaiseToDpc(i64* %SpinLock) #0 {
  %1 = alloca i64*, align 8
  store i64* %SpinLock, i64** %1, align 8
  call void @llvm.dbg.declare(metadata i64** %1, metadata !4451, metadata !1770), !dbg !4452
  ret i8 0, !dbg !4453
}

; Function Attrs: nounwind ssp uwtable
define i64 @KeDelayExecutionThread(i8 signext %WaitMode, i8 zeroext %Alertable, %union._LARGE_INTEGER* %Interval) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca %union._LARGE_INTEGER*, align 8
  %__BLAST_NONDET = alloca i32, align 4
  store i8 %WaitMode, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !4455, metadata !1770), !dbg !4456
  store i8 %Alertable, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !4457, metadata !1770), !dbg !4458
  store %union._LARGE_INTEGER* %Interval, %union._LARGE_INTEGER** %4, align 8
  call void @llvm.dbg.declare(metadata %union._LARGE_INTEGER** %4, metadata !4459, metadata !1770), !dbg !4460
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET, metadata !4461, metadata !1770), !dbg !4462
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !4463
  store i32 %5, i32* %__BLAST_NONDET, align 4, !dbg !4462
  %6 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !4464
  %7 = icmp eq i32 %6, 0, !dbg !4467
  br i1 %7, label %8, label %9, !dbg !4468

; <label>:8                                       ; preds = %0
  br label %12, !dbg !4469

; <label>:9                                       ; preds = %0
  br label %13, !dbg !4471
                                                  ; No predecessors!
  br i1 false, label %11, label %14, !dbg !4474

; <label>:11                                      ; preds = %10
  br label %12, !dbg !4475

; <label>:12                                      ; preds = %11, %8
  store i64 0, i64* %1, !dbg !4477
  br label %17, !dbg !4477

; <label>:13                                      ; preds = %9
  store i64 -1073741823, i64* %1, !dbg !4479
  br label %17, !dbg !4479

; <label>:14                                      ; preds = %10
  br label %15, !dbg !4480

; <label>:15                                      ; preds = %14
  br label %16

; <label>:16                                      ; preds = %15
  br label %17

; <label>:17                                      ; preds = %16, %13, %12
  %18 = load i64, i64* %1, !dbg !4481
  ret i64 %18, !dbg !4481
}

; Function Attrs: nounwind ssp uwtable
define void @KeInitializeEvent(%struct._KEVENT* %Event, i32 %Type, i8 zeroext %State) #0 {
  %1 = alloca %struct._KEVENT*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store %struct._KEVENT* %Event, %struct._KEVENT** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._KEVENT** %1, metadata !4482, metadata !1770), !dbg !4483
  store i32 %Type, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4484, metadata !1770), !dbg !4485
  store i8 %State, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !4486, metadata !1770), !dbg !4487
  ret void, !dbg !4488
}

; Function Attrs: nounwind ssp uwtable
define void @KeInitializeSemaphore(%struct._KSEMAPHORE* %Semaphore, i64 %Count, i64 %Limit) #0 {
  %1 = alloca %struct._KSEMAPHORE*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store %struct._KSEMAPHORE* %Semaphore, %struct._KSEMAPHORE** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._KSEMAPHORE** %1, metadata !4490, metadata !1770), !dbg !4491
  store i64 %Count, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4492, metadata !1770), !dbg !4493
  store i64 %Limit, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4494, metadata !1770), !dbg !4495
  ret void, !dbg !4496
}

; Function Attrs: nounwind ssp uwtable
define void @KeInitializeSpinLock(i64* %SpinLock) #0 {
  %1 = alloca i64*, align 8
  store i64* %SpinLock, i64** %1, align 8
  call void @llvm.dbg.declare(metadata i64** %1, metadata !4498, metadata !1770), !dbg !4499
  ret void, !dbg !4500
}

; Function Attrs: nounwind ssp uwtable
define i64 @KeReleaseSemaphore(%struct._KSEMAPHORE* %Semaphore, i64 %Increment, i64 %Adjustment, i8 zeroext %Wait) #0 {
  %1 = alloca %struct._KSEMAPHORE*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %r = alloca i64, align 8
  store %struct._KSEMAPHORE* %Semaphore, %struct._KSEMAPHORE** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._KSEMAPHORE** %1, metadata !4502, metadata !1770), !dbg !4503
  store i64 %Increment, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4504, metadata !1770), !dbg !4505
  store i64 %Adjustment, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4506, metadata !1770), !dbg !4507
  store i8 %Wait, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !4508, metadata !1770), !dbg !4509
  call void @llvm.dbg.declare(metadata i64* %r, metadata !4510, metadata !1770), !dbg !4511
  %5 = call i64 @__VERIFIER_nondet_long(), !dbg !4512
  store i64 %5, i64* %r, align 8, !dbg !4511
  %6 = load i64, i64* %r, align 8, !dbg !4513
  ret i64 %6, !dbg !4515
}

; Function Attrs: nounwind ssp uwtable
define void @KfReleaseSpinLock(i64* %SpinLock, i8 zeroext %NewIrql) #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i8, align 1
  store i64* %SpinLock, i64** %1, align 8
  call void @llvm.dbg.declare(metadata i64** %1, metadata !4516, metadata !1770), !dbg !4517
  store i8 %NewIrql, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !4518, metadata !1770), !dbg !4519
  ret void, !dbg !4520
}

; Function Attrs: nounwind ssp uwtable
define i8* @MmAllocateContiguousMemory(i64 %NumberOfBytes, i64 %HighestAcceptableAddress.coerce0, i64 %HighestAcceptableAddress.coerce1) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %__BLAST_NONDET.i = alloca i32, align 4
  %3 = alloca i8*, align 8
  %HighestAcceptableAddress = alloca %union._LARGE_INTEGER, align 8
  %4 = alloca i64, align 8
  %__BLAST_NONDET = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %5 = bitcast %union._LARGE_INTEGER* %HighestAcceptableAddress to { i64, i64 }*
  %6 = getelementptr { i64, i64 }, { i64, i64 }* %5, i32 0, i32 0
  store i64 %HighestAcceptableAddress.coerce0, i64* %6
  %7 = getelementptr { i64, i64 }, { i64, i64 }* %5, i32 0, i32 1
  store i64 %HighestAcceptableAddress.coerce1, i64* %7
  store i64 %NumberOfBytes, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4522, metadata !1770), !dbg !4523
  call void @llvm.dbg.declare(metadata %union._LARGE_INTEGER* %HighestAcceptableAddress, metadata !4524, metadata !1770), !dbg !4525
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET, metadata !4526, metadata !1770), !dbg !4527
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !4528
  store i32 %8, i32* %__BLAST_NONDET, align 4, !dbg !4527
  call void @llvm.dbg.declare(metadata i8** %tmp, metadata !4529, metadata !1770), !dbg !4530
  %9 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !4531
  %10 = icmp eq i32 %9, 0, !dbg !4534
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2995, metadata !1770), !dbg !4535
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET.i, metadata !2997, metadata !1770), !dbg !4543
  br i1 %10, label %11, label %12, !dbg !4544

; <label>:11                                      ; preds = %0
  br label %18, !dbg !4545

; <label>:12                                      ; preds = %0
  %13 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !4547
  %14 = icmp eq i32 %13, 1, !dbg !4548
  br i1 %14, label %15, label %16, !dbg !4549

; <label>:15                                      ; preds = %12
  br label %34, !dbg !4550

; <label>:16                                      ; preds = %12
  br i1 false, label %17, label %35, !dbg !4552

; <label>:17                                      ; preds = %16
  br label %18, !dbg !4553

; <label>:18                                      ; preds = %17, %11
  %19 = load i64, i64* %4, align 8, !dbg !4554
  %20 = trunc i64 %19 to i32, !dbg !4554
  %21 = bitcast i8** %1 to i8*, !dbg !4555
  call void @llvm.lifetime.start(i64 8, i8* %21), !dbg !4555
  %22 = bitcast i32* %2 to i8*, !dbg !4555
  call void @llvm.lifetime.start(i64 4, i8* %22), !dbg !4555
  %23 = bitcast i32* %__BLAST_NONDET.i to i8*, !dbg !4555
  call void @llvm.lifetime.start(i64 4, i8* %23), !dbg !4555
  store i32 %20, i32* %2, align 4, !dbg !4555
  %24 = call i32 @__VERIFIER_nondet_int() #4, !dbg !4556
  store i32 %24, i32* %__BLAST_NONDET.i, align 4, !dbg !4543
  %25 = load i32, i32* %__BLAST_NONDET.i, align 4, !dbg !4557
  %26 = icmp ne i32 %25, 0, !dbg !4557
  br i1 %26, label %27, label %28, !dbg !4558

; <label>:27                                      ; preds = %18
  store i8* null, i8** %1, !dbg !4559
  br label %malloc.exit, !dbg !4559

; <label>:28                                      ; preds = %18
  store i8* inttoptr (i64 1 to i8*), i8** %1, !dbg !4560
  br label %malloc.exit, !dbg !4560

malloc.exit:                                      ; preds = %27, %28
  %29 = load i8*, i8** %1, !dbg !4561
  %30 = bitcast i8** %1 to i8*, !dbg !4561
  call void @llvm.lifetime.end(i64 8, i8* %30), !dbg !4561
  %31 = bitcast i32* %2 to i8*, !dbg !4561
  call void @llvm.lifetime.end(i64 4, i8* %31), !dbg !4561
  %32 = bitcast i32* %__BLAST_NONDET.i to i8*, !dbg !4561
  call void @llvm.lifetime.end(i64 4, i8* %32), !dbg !4561
  store i8* %29, i8** %tmp, align 8, !dbg !4562
  %33 = load i8*, i8** %tmp, align 8, !dbg !4563
  store i8* %33, i8** %3, !dbg !4564
  br label %40, !dbg !4564

; <label>:34                                      ; preds = %15
  store i8* null, i8** %3, !dbg !4565
  br label %40, !dbg !4565

; <label>:35                                      ; preds = %16
  br label %36, !dbg !4566

; <label>:36                                      ; preds = %35
  br label %37

; <label>:37                                      ; preds = %36
  br label %38

; <label>:38                                      ; preds = %37
  br label %39

; <label>:39                                      ; preds = %38
  store i8* null, i8** %3, !dbg !4567
  br label %40, !dbg !4567

; <label>:40                                      ; preds = %39, %34, %malloc.exit
  %41 = load i8*, i8** %3, !dbg !4568
  ret i8* %41, !dbg !4568
}

; Function Attrs: nounwind ssp uwtable
define void @MmFreeContiguousMemory(i8* %BaseAddress) #0 {
  %1 = alloca i8*, align 8
  store i8* %BaseAddress, i8** %1, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !4569, metadata !1770), !dbg !4570
  ret void, !dbg !4571
}

; Function Attrs: nounwind ssp uwtable
define i8* @MmMapLockedPagesSpecifyCache(%struct._MDL* %MemoryDescriptorList, i8 signext %AccessMode, i32 %CacheType, i8* %BaseAddress, i64 %BugCheckOnFailure, i32 %Priority) #0 {
  %1 = alloca %struct._MDL*, align 8
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct._MDL* %MemoryDescriptorList, %struct._MDL** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._MDL** %1, metadata !4573, metadata !1770), !dbg !4574
  store i8 %AccessMode, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !4575, metadata !1770), !dbg !4576
  store i32 %CacheType, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4577, metadata !1770), !dbg !4578
  store i8* %BaseAddress, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4579, metadata !1770), !dbg !4580
  store i64 %BugCheckOnFailure, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4581, metadata !1770), !dbg !4582
  store i32 %Priority, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4583, metadata !1770), !dbg !4584
  ret i8* null, !dbg !4585
}

; Function Attrs: nounwind ssp uwtable
define i8* @MmPageEntireDriver(i8* %AddressWithinSection) #0 {
  %1 = alloca i8*, align 8
  store i8* %AddressWithinSection, i8** %1, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !4587, metadata !1770), !dbg !4588
  ret i8* null, !dbg !4589
}

; Function Attrs: nounwind ssp uwtable
define void @MmResetDriverPaging(i8* %AddressWithinSection) #0 {
  %1 = alloca i8*, align 8
  store i8* %AddressWithinSection, i8** %1, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !4591, metadata !1770), !dbg !4592
  ret void, !dbg !4593
}

; Function Attrs: nounwind ssp uwtable
define void @MmUnlockPages(%struct._MDL* %MemoryDescriptorList) #0 {
  %1 = alloca %struct._MDL*, align 8
  store %struct._MDL* %MemoryDescriptorList, %struct._MDL** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._MDL** %1, metadata !4595, metadata !1770), !dbg !4596
  ret void, !dbg !4597
}

; Function Attrs: nounwind ssp uwtable
define i64 @ObReferenceObjectByHandle(i8* %Handle, i64 %DesiredAccess, %struct._OBJECT_TYPE* %ObjectType, i8 signext %AccessMode, i8** %Object, %struct._OBJECT_HANDLE_INFORMATION* %HandleInformation) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct._OBJECT_TYPE*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8**, align 8
  %7 = alloca %struct._OBJECT_HANDLE_INFORMATION*, align 8
  %__BLAST_NONDET = alloca i32, align 4
  store i8* %Handle, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4599, metadata !1770), !dbg !4600
  store i64 %DesiredAccess, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4601, metadata !1770), !dbg !4602
  store %struct._OBJECT_TYPE* %ObjectType, %struct._OBJECT_TYPE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._OBJECT_TYPE** %4, metadata !4603, metadata !1770), !dbg !4604
  store i8 %AccessMode, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !4605, metadata !1770), !dbg !4606
  store i8** %Object, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !4607, metadata !1770), !dbg !4608
  store %struct._OBJECT_HANDLE_INFORMATION* %HandleInformation, %struct._OBJECT_HANDLE_INFORMATION** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._OBJECT_HANDLE_INFORMATION** %7, metadata !4609, metadata !1770), !dbg !4610
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET, metadata !4611, metadata !1770), !dbg !4612
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !4613
  store i32 %8, i32* %__BLAST_NONDET, align 4, !dbg !4612
  %9 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !4614
  %10 = icmp eq i32 %9, 0, !dbg !4617
  br i1 %10, label %11, label %12, !dbg !4618

; <label>:11                                      ; preds = %0
  br label %15, !dbg !4619

; <label>:12                                      ; preds = %0
  br label %16, !dbg !4621
                                                  ; No predecessors!
  br i1 false, label %14, label %17, !dbg !4624

; <label>:14                                      ; preds = %13
  br label %15, !dbg !4625

; <label>:15                                      ; preds = %14, %11
  store i64 0, i64* %1, !dbg !4627
  br label %20, !dbg !4627

; <label>:16                                      ; preds = %12
  store i64 -1073741823, i64* %1, !dbg !4629
  br label %20, !dbg !4629

; <label>:17                                      ; preds = %13
  br label %18, !dbg !4630

; <label>:18                                      ; preds = %17
  br label %19

; <label>:19                                      ; preds = %18
  br label %20

; <label>:20                                      ; preds = %19, %16, %15
  %21 = load i64, i64* %1, !dbg !4631
  ret i64 %21, !dbg !4631
}

; Function Attrs: nounwind ssp uwtable
define void @ObfDereferenceObject(i8* %Object) #0 {
  %1 = alloca i8*, align 8
  store i8* %Object, i8** %1, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !4632, metadata !1770), !dbg !4633
  ret void, !dbg !4634
}

; Function Attrs: nounwind ssp uwtable
define void @PoStartNextPowerIrp(%struct._IRP* %Irp) #0 {
  %1 = alloca %struct._IRP*, align 8
  store %struct._IRP* %Irp, %struct._IRP** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %1, metadata !4636, metadata !1770), !dbg !4637
  ret void, !dbg !4638
}

; Function Attrs: nounwind ssp uwtable
define i64 @PsCreateSystemThread(i8** %ThreadHandle, i64 %DesiredAccess, %struct._OBJECT_ATTRIBUTES* %ObjectAttributes, i8* %ProcessHandle, %struct._CLIENT_ID* %ClientId, void (i8*)* %StartRoutine, i8* %StartContext) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct._OBJECT_ATTRIBUTES*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._CLIENT_ID*, align 8
  %7 = alloca void (i8*)*, align 8
  %8 = alloca i8*, align 8
  %__BLAST_NONDET = alloca i32, align 4
  store i8** %ThreadHandle, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !4640, metadata !1770), !dbg !4641
  store i64 %DesiredAccess, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4642, metadata !1770), !dbg !4643
  store %struct._OBJECT_ATTRIBUTES* %ObjectAttributes, %struct._OBJECT_ATTRIBUTES** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._OBJECT_ATTRIBUTES** %4, metadata !4644, metadata !1770), !dbg !4645
  store i8* %ProcessHandle, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4646, metadata !1770), !dbg !4647
  store %struct._CLIENT_ID* %ClientId, %struct._CLIENT_ID** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CLIENT_ID** %6, metadata !4648, metadata !1770), !dbg !4649
  store void (i8*)* %StartRoutine, void (i8*)** %7, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %7, metadata !4650, metadata !1770), !dbg !4651
  store i8* %StartContext, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4652, metadata !1770), !dbg !4653
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET, metadata !4654, metadata !1770), !dbg !4655
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !4656
  store i32 %9, i32* %__BLAST_NONDET, align 4, !dbg !4655
  %10 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !4657
  %11 = icmp eq i32 %10, 0, !dbg !4660
  br i1 %11, label %12, label %13, !dbg !4661

; <label>:12                                      ; preds = %0
  br label %16, !dbg !4662

; <label>:13                                      ; preds = %0
  br label %17, !dbg !4664
                                                  ; No predecessors!
  br i1 false, label %15, label %18, !dbg !4667

; <label>:15                                      ; preds = %14
  br label %16, !dbg !4668

; <label>:16                                      ; preds = %15, %12
  store i64 0, i64* %1, !dbg !4670
  br label %21, !dbg !4670

; <label>:17                                      ; preds = %13
  store i64 -1073741823, i64* %1, !dbg !4672
  br label %21, !dbg !4672

; <label>:18                                      ; preds = %14
  br label %19, !dbg !4673

; <label>:19                                      ; preds = %18
  br label %20

; <label>:20                                      ; preds = %19
  br label %21

; <label>:21                                      ; preds = %20, %17, %16
  %22 = load i64, i64* %1, !dbg !4674
  ret i64 %22, !dbg !4674
}

; Function Attrs: nounwind ssp uwtable
define i64 @PsTerminateSystemThread(i64 %ExitStatus) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %__BLAST_NONDET = alloca i32, align 4
  store i64 %ExitStatus, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4675, metadata !1770), !dbg !4676
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET, metadata !4677, metadata !1770), !dbg !4678
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !4679
  store i32 %3, i32* %__BLAST_NONDET, align 4, !dbg !4678
  %4 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !4680
  %5 = icmp eq i32 %4, 0, !dbg !4683
  br i1 %5, label %6, label %7, !dbg !4684

; <label>:6                                       ; preds = %0
  br label %10, !dbg !4685

; <label>:7                                       ; preds = %0
  br label %11, !dbg !4687
                                                  ; No predecessors!
  br i1 false, label %9, label %12, !dbg !4690

; <label>:9                                       ; preds = %8
  br label %10, !dbg !4691

; <label>:10                                      ; preds = %9, %6
  store i64 0, i64* %1, !dbg !4693
  br label %15, !dbg !4693

; <label>:11                                      ; preds = %7
  store i64 -1073741823, i64* %1, !dbg !4695
  br label %15, !dbg !4695

; <label>:12                                      ; preds = %8
  br label %13, !dbg !4696

; <label>:13                                      ; preds = %12
  br label %14

; <label>:14                                      ; preds = %13
  br label %15

; <label>:15                                      ; preds = %14, %11, %10
  %16 = load i64, i64* %1, !dbg !4697
  ret i64 %16, !dbg !4697
}

; Function Attrs: nounwind ssp uwtable
define i64 @RtlAnsiStringToUnicodeString(%struct._UNICODE_STRING* %DestinationString, %struct._STRING* %SourceString, i8 zeroext %AllocateDestinationString) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct._UNICODE_STRING*, align 8
  %3 = alloca %struct._STRING*, align 8
  %4 = alloca i8, align 1
  %__BLAST_NONDET = alloca i32, align 4
  store %struct._UNICODE_STRING* %DestinationString, %struct._UNICODE_STRING** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %2, metadata !4698, metadata !1770), !dbg !4699
  store %struct._STRING* %SourceString, %struct._STRING** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._STRING** %3, metadata !4700, metadata !1770), !dbg !4701
  store i8 %AllocateDestinationString, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !4702, metadata !1770), !dbg !4703
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET, metadata !4704, metadata !1770), !dbg !4705
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !4706
  store i32 %5, i32* %__BLAST_NONDET, align 4, !dbg !4705
  %6 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !4707
  %7 = icmp eq i32 %6, 0, !dbg !4710
  br i1 %7, label %8, label %9, !dbg !4711

; <label>:8                                       ; preds = %0
  br label %12, !dbg !4712

; <label>:9                                       ; preds = %0
  br label %13, !dbg !4714
                                                  ; No predecessors!
  br i1 false, label %11, label %14, !dbg !4717

; <label>:11                                      ; preds = %10
  br label %12, !dbg !4718

; <label>:12                                      ; preds = %11, %8
  store i64 0, i64* %1, !dbg !4720
  br label %17, !dbg !4720

; <label>:13                                      ; preds = %9
  store i64 -1073741823, i64* %1, !dbg !4722
  br label %17, !dbg !4722

; <label>:14                                      ; preds = %10
  br label %15, !dbg !4723

; <label>:15                                      ; preds = %14
  br label %16

; <label>:16                                      ; preds = %15
  br label %17

; <label>:17                                      ; preds = %16, %13, %12
  %18 = load i64, i64* %1, !dbg !4724
  ret i64 %18, !dbg !4724
}

; Function Attrs: nounwind ssp uwtable
define i64 @RtlCompareMemory(i8* %Source1, i8* %Source2, i64 %Length) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %r = alloca i64, align 8
  store i8* %Source1, i8** %1, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !4725, metadata !1770), !dbg !4726
  store i8* %Source2, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4727, metadata !1770), !dbg !4728
  store i64 %Length, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4729, metadata !1770), !dbg !4730
  call void @llvm.dbg.declare(metadata i64* %r, metadata !4731, metadata !1770), !dbg !4732
  %4 = call i64 @__VERIFIER_nondet_long(), !dbg !4733
  store i64 %4, i64* %r, align 8, !dbg !4732
  %5 = load i64, i64* %r, align 8, !dbg !4734
  ret i64 %5, !dbg !4736
}

; Function Attrs: nounwind ssp uwtable
define void @RtlCopyUnicodeString(%struct._UNICODE_STRING* %DestinationString, %struct._UNICODE_STRING* %SourceString) #0 {
  %1 = alloca %struct._UNICODE_STRING*, align 8
  %2 = alloca %struct._UNICODE_STRING*, align 8
  store %struct._UNICODE_STRING* %DestinationString, %struct._UNICODE_STRING** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %1, metadata !4737, metadata !1770), !dbg !4738
  store %struct._UNICODE_STRING* %SourceString, %struct._UNICODE_STRING** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %2, metadata !4739, metadata !1770), !dbg !4740
  ret void, !dbg !4741
}

; Function Attrs: nounwind ssp uwtable
define i64 @RtlDeleteRegistryValue(i64 %RelativeTo, i16* %Path, i16* %ValueName) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  %__BLAST_NONDET = alloca i32, align 4
  store i64 %RelativeTo, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4743, metadata !1770), !dbg !4744
  store i16* %Path, i16** %3, align 8
  call void @llvm.dbg.declare(metadata i16** %3, metadata !4745, metadata !1770), !dbg !4746
  store i16* %ValueName, i16** %4, align 8
  call void @llvm.dbg.declare(metadata i16** %4, metadata !4747, metadata !1770), !dbg !4748
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET, metadata !4749, metadata !1770), !dbg !4750
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !4751
  store i32 %5, i32* %__BLAST_NONDET, align 4, !dbg !4750
  %6 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !4752
  %7 = icmp eq i32 %6, 0, !dbg !4755
  br i1 %7, label %8, label %9, !dbg !4756

; <label>:8                                       ; preds = %0
  br label %12, !dbg !4757

; <label>:9                                       ; preds = %0
  br label %13, !dbg !4759
                                                  ; No predecessors!
  br i1 false, label %11, label %14, !dbg !4762

; <label>:11                                      ; preds = %10
  br label %12, !dbg !4763

; <label>:12                                      ; preds = %11, %8
  store i64 0, i64* %1, !dbg !4765
  br label %17, !dbg !4765

; <label>:13                                      ; preds = %9
  store i64 -1073741823, i64* %1, !dbg !4767
  br label %17, !dbg !4767

; <label>:14                                      ; preds = %10
  br label %15, !dbg !4768

; <label>:15                                      ; preds = %14
  br label %16

; <label>:16                                      ; preds = %15
  br label %17

; <label>:17                                      ; preds = %16, %13, %12
  %18 = load i64, i64* %1, !dbg !4769
  ret i64 %18, !dbg !4769
}

; Function Attrs: nounwind ssp uwtable
define void @RtlFreeUnicodeString(%struct._UNICODE_STRING* %UnicodeString) #0 {
  %1 = alloca %struct._UNICODE_STRING*, align 8
  store %struct._UNICODE_STRING* %UnicodeString, %struct._UNICODE_STRING** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %1, metadata !4770, metadata !1770), !dbg !4771
  ret void, !dbg !4772
}

; Function Attrs: nounwind ssp uwtable
define void @RtlInitString(%struct._STRING* %DestinationString, i8* %SourceString) #0 {
  %1 = alloca %struct._STRING*, align 8
  %2 = alloca i8*, align 8
  store %struct._STRING* %DestinationString, %struct._STRING** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._STRING** %1, metadata !4774, metadata !1770), !dbg !4775
  store i8* %SourceString, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4776, metadata !1770), !dbg !4777
  ret void, !dbg !4778
}

; Function Attrs: nounwind ssp uwtable
define void @RtlInitUnicodeString(%struct._UNICODE_STRING* %DestinationString, i16* %SourceString) #0 {
  %1 = alloca %struct._UNICODE_STRING*, align 8
  %2 = alloca i16*, align 8
  store %struct._UNICODE_STRING* %DestinationString, %struct._UNICODE_STRING** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %1, metadata !4780, metadata !1770), !dbg !4781
  store i16* %SourceString, i16** %2, align 8
  call void @llvm.dbg.declare(metadata i16** %2, metadata !4782, metadata !1770), !dbg !4783
  ret void, !dbg !4784
}

; Function Attrs: nounwind ssp uwtable
define i64 @RtlQueryRegistryValues(i64 %RelativeTo, i16* %Path, %struct._RTL_QUERY_REGISTRY_TABLE* %QueryTable, i8* %Context, i8* %Environment) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i16*, align 8
  %4 = alloca %struct._RTL_QUERY_REGISTRY_TABLE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %__BLAST_NONDET = alloca i32, align 4
  store i64 %RelativeTo, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4786, metadata !1770), !dbg !4787
  store i16* %Path, i16** %3, align 8
  call void @llvm.dbg.declare(metadata i16** %3, metadata !4788, metadata !1770), !dbg !4789
  store %struct._RTL_QUERY_REGISTRY_TABLE* %QueryTable, %struct._RTL_QUERY_REGISTRY_TABLE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._RTL_QUERY_REGISTRY_TABLE** %4, metadata !4790, metadata !1770), !dbg !4791
  store i8* %Context, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4792, metadata !1770), !dbg !4793
  store i8* %Environment, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4794, metadata !1770), !dbg !4795
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET, metadata !4796, metadata !1770), !dbg !4797
  %7 = call i32 @__VERIFIER_nondet_int(), !dbg !4798
  store i32 %7, i32* %__BLAST_NONDET, align 4, !dbg !4797
  %8 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !4799
  %9 = icmp eq i32 %8, 0, !dbg !4802
  br i1 %9, label %10, label %11, !dbg !4803

; <label>:10                                      ; preds = %0
  br label %14, !dbg !4804

; <label>:11                                      ; preds = %0
  br label %15, !dbg !4806
                                                  ; No predecessors!
  br i1 false, label %13, label %16, !dbg !4809

; <label>:13                                      ; preds = %12
  br label %14, !dbg !4810

; <label>:14                                      ; preds = %13, %10
  store i64 0, i64* %1, !dbg !4812
  br label %19, !dbg !4812

; <label>:15                                      ; preds = %11
  store i64 -1073741823, i64* %1, !dbg !4814
  br label %19, !dbg !4814

; <label>:16                                      ; preds = %12
  br label %17, !dbg !4815

; <label>:17                                      ; preds = %16
  br label %18

; <label>:18                                      ; preds = %17
  br label %19

; <label>:19                                      ; preds = %18, %15, %14
  %20 = load i64, i64* %1, !dbg !4816
  ret i64 %20, !dbg !4816
}

; Function Attrs: nounwind ssp uwtable
define i64 @ZwClose(i8* %Handle) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %__BLAST_NONDET = alloca i32, align 4
  store i8* %Handle, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4817, metadata !1770), !dbg !4818
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET, metadata !4819, metadata !1770), !dbg !4820
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !4821
  store i32 %3, i32* %__BLAST_NONDET, align 4, !dbg !4820
  %4 = load i32, i32* %__BLAST_NONDET, align 4, !dbg !4822
  %5 = icmp eq i32 %4, 0, !dbg !4825
  br i1 %5, label %6, label %7, !dbg !4826

; <label>:6                                       ; preds = %0
  br label %10, !dbg !4827

; <label>:7                                       ; preds = %0
  br label %11, !dbg !4829
                                                  ; No predecessors!
  br i1 false, label %9, label %12, !dbg !4832

; <label>:9                                       ; preds = %8
  br label %10, !dbg !4833

; <label>:10                                      ; preds = %9, %6
  store i64 0, i64* %1, !dbg !4835
  br label %15, !dbg !4835

; <label>:11                                      ; preds = %7
  store i64 -1073741823, i64* %1, !dbg !4837
  br label %15, !dbg !4837

; <label>:12                                      ; preds = %8
  br label %13, !dbg !4838

; <label>:13                                      ; preds = %12
  br label %14

; <label>:14                                      ; preds = %13
  br label %15

; <label>:15                                      ; preds = %14, %11, %10
  %16 = load i64, i64* %1, !dbg !4839
  ret i64 %16, !dbg !4839
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
!llvm.module.flags = !{!1743, !1744, !1745}
!llvm.ident = !{!1746}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !257, subprograms: !1415, globals: !1722)
!1 = !DIFile(filename: "programs/svcomp16/ntdrivers/kbfiltr_false-unreach-call.i.cil.c", directory: ".")
!2 = !{!3, !9, !48, !59, !66, !74, !84, !104, !111, !115, !121, !125, !135, !140, !144, !149, !166, !209, !213, !243, !252}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SECURITY_IMPERSONATION_LEVEL", file: !1, line: 182, size: 32, align: 32, elements: !4)
!4 = !{!5, !6, !7, !8}
!5 = !DIEnumerator(name: "SecurityAnonymous", value: 0)
!6 = !DIEnumerator(name: "SecurityIdentification", value: 1)
!7 = !DIEnumerator(name: "SecurityImpersonation", value: 2)
!8 = !DIEnumerator(name: "SecurityDelegation", value: 3)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_FILE_INFORMATION_CLASS", file: !1, line: 223, size: 32, align: 32, elements: !10)
!10 = !{!11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!11 = !DIEnumerator(name: "FileDirectoryInformation", value: 1)
!12 = !DIEnumerator(name: "FileFullDirectoryInformation", value: 2)
!13 = !DIEnumerator(name: "FileBothDirectoryInformation", value: 3)
!14 = !DIEnumerator(name: "FileBasicInformation", value: 4)
!15 = !DIEnumerator(name: "FileStandardInformation", value: 5)
!16 = !DIEnumerator(name: "FileInternalInformation", value: 6)
!17 = !DIEnumerator(name: "FileEaInformation", value: 7)
!18 = !DIEnumerator(name: "FileAccessInformation", value: 8)
!19 = !DIEnumerator(name: "FileNameInformation", value: 9)
!20 = !DIEnumerator(name: "FileRenameInformation", value: 10)
!21 = !DIEnumerator(name: "FileLinkInformation", value: 11)
!22 = !DIEnumerator(name: "FileNamesInformation", value: 12)
!23 = !DIEnumerator(name: "FileDispositionInformation", value: 13)
!24 = !DIEnumerator(name: "FilePositionInformation", value: 14)
!25 = !DIEnumerator(name: "FileFullEaInformation", value: 15)
!26 = !DIEnumerator(name: "FileModeInformation", value: 16)
!27 = !DIEnumerator(name: "FileAlignmentInformation", value: 17)
!28 = !DIEnumerator(name: "FileAllInformation", value: 18)
!29 = !DIEnumerator(name: "FileAllocationInformation", value: 19)
!30 = !DIEnumerator(name: "FileEndOfFileInformation", value: 20)
!31 = !DIEnumerator(name: "FileAlternateNameInformation", value: 21)
!32 = !DIEnumerator(name: "FileStreamInformation", value: 22)
!33 = !DIEnumerator(name: "FilePipeInformation", value: 23)
!34 = !DIEnumerator(name: "FilePipeLocalInformation", value: 24)
!35 = !DIEnumerator(name: "FilePipeRemoteInformation", value: 25)
!36 = !DIEnumerator(name: "FileMailslotQueryInformation", value: 26)
!37 = !DIEnumerator(name: "FileMailslotSetInformation", value: 27)
!38 = !DIEnumerator(name: "FileCompressionInformation", value: 28)
!39 = !DIEnumerator(name: "FileObjectIdInformation", value: 29)
!40 = !DIEnumerator(name: "FileCompletionInformation", value: 30)
!41 = !DIEnumerator(name: "FileMoveClusterInformation", value: 31)
!42 = !DIEnumerator(name: "FileQuotaInformation", value: 32)
!43 = !DIEnumerator(name: "FileReparsePointInformation", value: 33)
!44 = !DIEnumerator(name: "FileNetworkOpenInformation", value: 34)
!45 = !DIEnumerator(name: "FileAttributeTagInformation", value: 35)
!46 = !DIEnumerator(name: "FileTrackingInformation", value: 36)
!47 = !DIEnumerator(name: "FileMaximumInformation", value: 37)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_FSINFOCLASS", file: !1, line: 289, size: 32, align: 32, elements: !49)
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58}
!50 = !DIEnumerator(name: "FileFsVolumeInformation", value: 1)
!51 = !DIEnumerator(name: "FileFsLabelInformation", value: 2)
!52 = !DIEnumerator(name: "FileFsSizeInformation", value: 3)
!53 = !DIEnumerator(name: "FileFsDeviceInformation", value: 4)
!54 = !DIEnumerator(name: "FileFsAttributeInformation", value: 5)
!55 = !DIEnumerator(name: "FileFsControlInformation", value: 6)
!56 = !DIEnumerator(name: "FileFsFullSizeInformation", value: 7)
!57 = !DIEnumerator(name: "FileFsObjectIdInformation", value: 8)
!58 = !DIEnumerator(name: "FileFsMaximumInformation", value: 9)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_DEVICE_RELATION_TYPE", file: !1, line: 1069, size: 32, align: 32, elements: !60)
!60 = !{!61, !62, !63, !64, !65}
!61 = !DIEnumerator(name: "BusRelations", value: 0)
!62 = !DIEnumerator(name: "EjectionRelations", value: 1)
!63 = !DIEnumerator(name: "PowerRelations", value: 2)
!64 = !DIEnumerator(name: "RemovalRelations", value: 3)
!65 = !DIEnumerator(name: "TargetDeviceRelation", value: 4)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_DEVICE_POWER_STATE", file: !1, line: 376, size: 32, align: 32, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73}
!68 = !DIEnumerator(name: "PowerDeviceUnspecified", value: 0)
!69 = !DIEnumerator(name: "PowerDeviceD0", value: 1)
!70 = !DIEnumerator(name: "PowerDeviceD1", value: 2)
!71 = !DIEnumerator(name: "PowerDeviceD2", value: 3)
!72 = !DIEnumerator(name: "PowerDeviceD3", value: 4)
!73 = !DIEnumerator(name: "PowerDeviceMaximum", value: 5)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SYSTEM_POWER_STATE", file: !1, line: 354, size: 32, align: 32, elements: !75)
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83}
!76 = !DIEnumerator(name: "PowerSystemUnspecified", value: 0)
!77 = !DIEnumerator(name: "PowerSystemWorking", value: 1)
!78 = !DIEnumerator(name: "PowerSystemSleeping1", value: 2)
!79 = !DIEnumerator(name: "PowerSystemSleeping2", value: 3)
!80 = !DIEnumerator(name: "PowerSystemSleeping3", value: 4)
!81 = !DIEnumerator(name: "PowerSystemHibernate", value: 5)
!82 = !DIEnumerator(name: "PowerSystemShutdown", value: 6)
!83 = !DIEnumerator(name: "PowerSystemMaximum", value: 7)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_INTERFACE_TYPE", file: !1, line: 301, size: 32, align: 32, elements: !85)
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103}
!86 = !DIEnumerator(name: "InterfaceTypeUndefined", value: -1)
!87 = !DIEnumerator(name: "Internal", value: 0)
!88 = !DIEnumerator(name: "Isa", value: 1)
!89 = !DIEnumerator(name: "Eisa", value: 2)
!90 = !DIEnumerator(name: "MicroChannel", value: 3)
!91 = !DIEnumerator(name: "TurboChannel", value: 4)
!92 = !DIEnumerator(name: "PCIBus", value: 5)
!93 = !DIEnumerator(name: "VMEBus", value: 6)
!94 = !DIEnumerator(name: "NuBus", value: 7)
!95 = !DIEnumerator(name: "PCMCIABus", value: 8)
!96 = !DIEnumerator(name: "CBus", value: 9)
!97 = !DIEnumerator(name: "MPIBus", value: 10)
!98 = !DIEnumerator(name: "MPSABus", value: 11)
!99 = !DIEnumerator(name: "ProcessorInternal", value: 12)
!100 = !DIEnumerator(name: "InternalPowerBus", value: 13)
!101 = !DIEnumerator(name: "PNPISABus", value: 14)
!102 = !DIEnumerator(name: "PNPBus", value: 15)
!103 = !DIEnumerator(name: "MaximumInterfaceType", value: 16)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__anonenum_BUS_QUERY_ID_TYPE_53", file: !1, line: 1129, size: 32, align: 32, elements: !105)
!105 = !{!106, !107, !108, !109, !110}
!106 = !DIEnumerator(name: "BusQueryDeviceID", value: 0)
!107 = !DIEnumerator(name: "BusQueryHardwareIDs", value: 1)
!108 = !DIEnumerator(name: "BusQueryCompatibleIDs", value: 2)
!109 = !DIEnumerator(name: "BusQueryInstanceID", value: 3)
!110 = !DIEnumerator(name: "BusQueryDeviceSerialNumber", value: 4)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__anonenum_DEVICE_TEXT_TYPE_54", file: !1, line: 1137, size: 32, align: 32, elements: !112)
!112 = !{!113, !114}
!113 = !DIEnumerator(name: "DeviceTextDescription", value: 0)
!114 = !DIEnumerator(name: "DeviceTextLocationInformation", value: 1)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_DEVICE_USAGE_NOTIFICATION_TYPE", file: !1, line: 1077, size: 32, align: 32, elements: !116)
!116 = !{!117, !118, !119, !120}
!117 = !DIEnumerator(name: "DeviceUsageTypeUndefined", value: 0)
!118 = !DIEnumerator(name: "DeviceUsageTypePaging", value: 1)
!119 = !DIEnumerator(name: "DeviceUsageTypeHibernation", value: 2)
!120 = !DIEnumerator(name: "DeviceUsageTypeDumpFile", value: 3)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_POWER_STATE_TYPE", file: !1, line: 390, size: 32, align: 32, elements: !122)
!122 = !{!123, !124}
!123 = !DIEnumerator(name: "SystemPowerState", value: 0)
!124 = !DIEnumerator(name: "DevicePowerState", value: 1)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__anonenum_POWER_ACTION_11", file: !1, line: 365, size: 32, align: 32, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134}
!127 = !DIEnumerator(name: "PowerActionNone", value: 0)
!128 = !DIEnumerator(name: "PowerActionReserved", value: 1)
!129 = !DIEnumerator(name: "PowerActionSleep", value: 2)
!130 = !DIEnumerator(name: "PowerActionHibernate", value: 3)
!131 = !DIEnumerator(name: "PowerActionShutdown", value: 4)
!132 = !DIEnumerator(name: "PowerActionShutdownReset", value: 5)
!133 = !DIEnumerator(name: "PowerActionShutdownOff", value: 6)
!134 = !DIEnumerator(name: "PowerActionWarmEject", value: 7)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_IO_ALLOCATION_ACTION", file: !1, line: 859, size: 32, align: 32, elements: !136)
!136 = !{!137, !138, !139}
!137 = !DIEnumerator(name: "KeepObject", value: 1)
!138 = !DIEnumerator(name: "DeallocateObject", value: 2)
!139 = !DIEnumerator(name: "DeallocateObjectKeepRegisters", value: 3)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_TRANSMIT_STATE", file: !1, line: 1350, size: 32, align: 32, elements: !141)
!141 = !{!142, !143}
!142 = !DIEnumerator(name: "Idle", value: 0)
!143 = !DIEnumerator(name: "SendingBytes", value: 1)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_KEYBOARD_SCAN_STATE", file: !1, line: 1362, size: 32, align: 32, elements: !145)
!145 = !{!146, !147, !148}
!146 = !DIEnumerator(name: "Normal", value: 0)
!147 = !DIEnumerator(name: "GotE0", value: 1)
!148 = !DIEnumerator(name: "GotE1", value: 2)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_POOL_TYPE", file: !1, line: 679, size: 32, align: 32, elements: !150)
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165}
!151 = !DIEnumerator(name: "NonPagedPool", value: 0)
!152 = !DIEnumerator(name: "PagedPool", value: 1)
!153 = !DIEnumerator(name: "NonPagedPoolMustSucceed", value: 2)
!154 = !DIEnumerator(name: "DontUseThisType", value: 3)
!155 = !DIEnumerator(name: "NonPagedPoolCacheAligned", value: 4)
!156 = !DIEnumerator(name: "PagedPoolCacheAligned", value: 5)
!157 = !DIEnumerator(name: "NonPagedPoolCacheAlignedMustS", value: 6)
!158 = !DIEnumerator(name: "MaxPoolType", value: 7)
!159 = !DIEnumerator(name: "NonPagedPoolSession", value: 32)
!160 = !DIEnumerator(name: "PagedPoolSession", value: 33)
!161 = !DIEnumerator(name: "NonPagedPoolMustSucceedSession", value: 34)
!162 = !DIEnumerator(name: "DontUseThisTypeSession", value: 35)
!163 = !DIEnumerator(name: "NonPagedPoolCacheAlignedSession", value: 36)
!164 = !DIEnumerator(name: "PagedPoolCacheAlignedSession", value: 37)
!165 = !DIEnumerator(name: "NonPagedPoolCacheAlignedMustSSession", value: 38)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_CONFIGURATION_TYPE", file: !1, line: 558, size: 32, align: 32, elements: !167)
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208}
!168 = !DIEnumerator(name: "ArcSystem", value: 0)
!169 = !DIEnumerator(name: "CentralProcessor", value: 1)
!170 = !DIEnumerator(name: "FloatingPointProcessor", value: 2)
!171 = !DIEnumerator(name: "PrimaryIcache", value: 3)
!172 = !DIEnumerator(name: "PrimaryDcache", value: 4)
!173 = !DIEnumerator(name: "SecondaryIcache", value: 5)
!174 = !DIEnumerator(name: "SecondaryDcache", value: 6)
!175 = !DIEnumerator(name: "SecondaryCache", value: 7)
!176 = !DIEnumerator(name: "EisaAdapter", value: 8)
!177 = !DIEnumerator(name: "TcAdapter", value: 9)
!178 = !DIEnumerator(name: "ScsiAdapter", value: 10)
!179 = !DIEnumerator(name: "DtiAdapter", value: 11)
!180 = !DIEnumerator(name: "MultiFunctionAdapter", value: 12)
!181 = !DIEnumerator(name: "DiskController", value: 13)
!182 = !DIEnumerator(name: "TapeController", value: 14)
!183 = !DIEnumerator(name: "CdromController", value: 15)
!184 = !DIEnumerator(name: "WormController", value: 16)
!185 = !DIEnumerator(name: "SerialController", value: 17)
!186 = !DIEnumerator(name: "NetworkController", value: 18)
!187 = !DIEnumerator(name: "DisplayController", value: 19)
!188 = !DIEnumerator(name: "ParallelController", value: 20)
!189 = !DIEnumerator(name: "PointerController", value: 21)
!190 = !DIEnumerator(name: "KeyboardController", value: 22)
!191 = !DIEnumerator(name: "AudioController", value: 23)
!192 = !DIEnumerator(name: "OtherController", value: 24)
!193 = !DIEnumerator(name: "DiskPeripheral", value: 25)
!194 = !DIEnumerator(name: "FloppyDiskPeripheral", value: 26)
!195 = !DIEnumerator(name: "TapePeripheral", value: 27)
!196 = !DIEnumerator(name: "ModemPeripheral", value: 28)
!197 = !DIEnumerator(name: "MonitorPeripheral", value: 29)
!198 = !DIEnumerator(name: "PrinterPeripheral", value: 30)
!199 = !DIEnumerator(name: "PointerPeripheral", value: 31)
!200 = !DIEnumerator(name: "KeyboardPeripheral", value: 32)
!201 = !DIEnumerator(name: "TerminalPeripheral", value: 33)
!202 = !DIEnumerator(name: "OtherPeripheral", value: 34)
!203 = !DIEnumerator(name: "LinePeripheral", value: 35)
!204 = !DIEnumerator(name: "NetworkPeripheral", value: 36)
!205 = !DIEnumerator(name: "SystemMemory", value: 37)
!206 = !DIEnumerator(name: "DockingInformation", value: 38)
!207 = !DIEnumerator(name: "RealModeIrqRoutingTable", value: 39)
!208 = !DIEnumerator(name: "MaximumType", value: 40)
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_EVENT_TYPE", file: !1, line: 58, size: 32, align: 32, elements: !210)
!210 = !{!211, !212}
!211 = !DIEnumerator(name: "NotificationEvent", value: 0)
!212 = !DIEnumerator(name: "SynchronizationEvent", value: 1)
!213 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_KWAIT_REASON", file: !1, line: 603, size: 32, align: 32, elements: !214)
!214 = !{!215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242}
!215 = !DIEnumerator(name: "Executive", value: 0)
!216 = !DIEnumerator(name: "FreePage", value: 1)
!217 = !DIEnumerator(name: "PageIn", value: 2)
!218 = !DIEnumerator(name: "PoolAllocation", value: 3)
!219 = !DIEnumerator(name: "DelayExecution", value: 4)
!220 = !DIEnumerator(name: "Suspended", value: 5)
!221 = !DIEnumerator(name: "UserRequest", value: 6)
!222 = !DIEnumerator(name: "WrExecutive", value: 7)
!223 = !DIEnumerator(name: "WrFreePage", value: 8)
!224 = !DIEnumerator(name: "WrPageIn", value: 9)
!225 = !DIEnumerator(name: "WrPoolAllocation", value: 10)
!226 = !DIEnumerator(name: "WrDelayExecution", value: 11)
!227 = !DIEnumerator(name: "WrSuspended", value: 12)
!228 = !DIEnumerator(name: "WrUserRequest", value: 13)
!229 = !DIEnumerator(name: "WrEventPair", value: 14)
!230 = !DIEnumerator(name: "WrQueue", value: 15)
!231 = !DIEnumerator(name: "WrLpcReceive", value: 16)
!232 = !DIEnumerator(name: "WrLpcReply", value: 17)
!233 = !DIEnumerator(name: "WrVirtualMemory", value: 18)
!234 = !DIEnumerator(name: "WrPageOut", value: 19)
!235 = !DIEnumerator(name: "WrRendezvous", value: 20)
!236 = !DIEnumerator(name: "Spare2", value: 21)
!237 = !DIEnumerator(name: "Spare3", value: 22)
!238 = !DIEnumerator(name: "Spare4", value: 23)
!239 = !DIEnumerator(name: "Spare5", value: 24)
!240 = !DIEnumerator(name: "Spare6", value: 25)
!241 = !DIEnumerator(name: "WrKernel", value: 26)
!242 = !DIEnumerator(name: "MaximumWaitReason", value: 27)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_MEMORY_CACHING_TYPE", file: !1, line: 669, size: 32, align: 32, elements: !244)
!244 = !{!245, !246, !247, !248, !249, !250, !251}
!245 = !DIEnumerator(name: "MmNonCached", value: 0)
!246 = !DIEnumerator(name: "MmCached", value: 1)
!247 = !DIEnumerator(name: "MmWriteCombined", value: 2)
!248 = !DIEnumerator(name: "MmHardwareCoherentCached", value: 3)
!249 = !DIEnumerator(name: "MmNonCachedUnordered", value: 4)
!250 = !DIEnumerator(name: "MmUSWCCached", value: 5)
!251 = !DIEnumerator(name: "MmMaximumCacheType", value: 6)
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_MM_PAGE_PRIORITY", file: !1, line: 734, size: 32, align: 32, elements: !253)
!253 = !{!254, !255, !256}
!254 = !DIEnumerator(name: "LowPagePriority", value: 0)
!255 = !DIEnumerator(name: "NormalPagePriority", value: 16)
!256 = !DIEnumerator(name: "HighPagePriority", value: 32)
!257 = !{!258, !548, !1397, !287, !625, !1398, !283, !1399, !1400, !1350, !1364, !274, !1409, !1411, !300, !1414, !329}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DEVICE_EXTENSION", file: !1, line: 1385, size: 832, align: 64, elements: !260)
!260 = !{!261, !1339, !1340, !1341, !1342, !1348, !1349, !1363, !1387, !1391, !1392, !1393, !1394, !1395, !1396}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "Self", scope: !259, file: !1, line: 1386, baseType: !262, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "PDEVICE_OBJECT", file: !1, line: 928, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!264 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DEVICE_OBJECT", file: !1, line: 900, size: 2944, align: 64, elements: !265)
!265 = !{!266, !269, !272, !275, !1264, !1265, !1266, !1267, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1314, !1315, !1324, !1326, !1327, !1328, !1329, !1330, !1331, !1338}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !264, file: !1, line: 901, baseType: !267, size: 16, align: 16)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "CSHORT", file: !1, line: 33, baseType: !268)
!268 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !264, file: !1, line: 902, baseType: !270, size: 16, align: 16, offset: 16)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "USHORT", file: !1, line: 26, baseType: !271)
!271 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "ReferenceCount", scope: !264, file: !1, line: 903, baseType: !273, size: 64, align: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "LONG", file: !1, line: 19, baseType: !274)
!274 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "DriverObject", scope: !264, file: !1, line: 904, baseType: !276, size: 64, align: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DRIVER_OBJECT", file: !1, line: 941, size: 2688, align: 64, elements: !278)
!278 = !{!279, !280, !281, !282, !285, !288, !289, !290, !313, !314, !317, !1247, !1251, !1252, !1256}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !277, file: !1, line: 942, baseType: !267, size: 16, align: 16)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !277, file: !1, line: 943, baseType: !267, size: 16, align: 16, offset: 16)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceObject", scope: !277, file: !1, line: 944, baseType: !262, size: 64, align: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !277, file: !1, line: 945, baseType: !283, size: 64, align: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "ULONG", file: !1, line: 27, baseType: !284)
!284 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "DriverStart", scope: !277, file: !1, line: 946, baseType: !286, size: 64, align: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "PVOID", file: !1, line: 16, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "DriverSize", scope: !277, file: !1, line: 947, baseType: !283, size: 64, align: 64, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "DriverSection", scope: !277, file: !1, line: 948, baseType: !286, size: 64, align: 64, offset: 320)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "DriverExtension", scope: !277, file: !1, line: 949, baseType: !291, size: 64, align: 64, offset: 384)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "PDRIVER_EXTENSION", file: !1, line: 940, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DRIVER_EXTENSION", file: !1, line: 934, size: 320, align: 64, elements: !294)
!294 = !{!295, !296, !301, !302}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "DriverObject", scope: !293, file: !1, line: 935, baseType: !276, size: 64, align: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "AddDevice", scope: !293, file: !1, line: 936, baseType: !297, size: 64, align: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!300, !276, !263}
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "NTSTATUS", file: !1, line: 35, baseType: !273)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "Count", scope: !293, file: !1, line: 937, baseType: !283, size: 64, align: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ServiceKeyName", scope: !293, file: !1, line: 938, baseType: !303, size: 128, align: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "UNICODE_STRING", file: !1, line: 77, baseType: !304)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "_UNICODE_STRING", file: !1, line: 72, size: 128, align: 64, elements: !305)
!305 = !{!306, !307, !308}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !304, file: !1, line: 73, baseType: !270, size: 16, align: 16)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "MaximumLength", scope: !304, file: !1, line: 74, baseType: !270, size: 16, align: 16, offset: 16)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "Buffer", scope: !304, file: !1, line: 75, baseType: !309, size: 64, align: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "PWSTR", file: !1, line: 21, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "WCHAR", file: !1, line: 20, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !1, line: 12, baseType: !271)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "DriverName", scope: !277, file: !1, line: 950, baseType: !303, size: 128, align: 64, offset: 448)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "HardwareDatabase", scope: !277, file: !1, line: 951, baseType: !315, size: 64, align: 64, offset: 576)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "PUNICODE_STRING", file: !1, line: 78, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64, align: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoDispatch", scope: !277, file: !1, line: 952, baseType: !318, size: 64, align: 64, offset: 640)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFAST_IO_DISPATCH", file: !1, line: 858, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FAST_IO_DISPATCH", file: !1, line: 789, size: 1792, align: 64, elements: !321)
!321 = !{!322, !323, !438, !442, !443, !456, !469, !476, !480, !484, !488, !492, !496, !497, !501, !515, !564, !581, !585, !586, !590, !596, !597, !598, !599, !1238, !1242, !1246}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "SizeOfFastIoDispatch", scope: !320, file: !1, line: 790, baseType: !283, size: 64, align: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoCheckIfPossible", scope: !320, file: !1, line: 791, baseType: !324, size: 64, align: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!327, !330, !425, !283, !327, !283, !327, !427, !263}
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOOLEAN", file: !1, line: 79, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "UCHAR", file: !1, line: 25, baseType: !329)
!329 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FILE_OBJECT", file: !1, line: 972, size: 1728, align: 64, elements: !332)
!332 = !{!333, !334, !335, !336, !353, !354, !355, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !394, !395, !396, !397, !417, !418}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !331, file: !1, line: 973, baseType: !267, size: 16, align: 16)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !331, file: !1, line: 974, baseType: !267, size: 16, align: 16, offset: 16)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceObject", scope: !331, file: !1, line: 975, baseType: !262, size: 64, align: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "Vpb", scope: !331, file: !1, line: 976, baseType: !337, size: 64, align: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "PVPB", file: !1, line: 883, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DICompositeType(tag: DW_TAG_structure_type, name: "_VPB", file: !1, line: 872, size: 832, align: 64, elements: !340)
!340 = !{!341, !342, !343, !344, !345, !346, !347, !348, !349}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !339, file: !1, line: 873, baseType: !267, size: 16, align: 16)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !339, file: !1, line: 874, baseType: !267, size: 16, align: 16, offset: 16)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !339, file: !1, line: 875, baseType: !270, size: 16, align: 16, offset: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "VolumeLabelLength", scope: !339, file: !1, line: 876, baseType: !270, size: 16, align: 16, offset: 48)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceObject", scope: !339, file: !1, line: 877, baseType: !263, size: 64, align: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "RealDevice", scope: !339, file: !1, line: 878, baseType: !263, size: 64, align: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "SerialNumber", scope: !339, file: !1, line: 879, baseType: !283, size: 64, align: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "ReferenceCount", scope: !339, file: !1, line: 880, baseType: !283, size: 64, align: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "VolumeLabel", scope: !339, file: !1, line: 881, baseType: !350, size: 512, align: 16, offset: 320)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 512, align: 16, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "FsContext", scope: !331, file: !1, line: 977, baseType: !286, size: 64, align: 64, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "FsContext2", scope: !331, file: !1, line: 978, baseType: !286, size: 64, align: 64, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "SectionObjectPointer", scope: !331, file: !1, line: 979, baseType: !356, size: 64, align: 64, offset: 320)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "PSECTION_OBJECT_POINTERS", file: !1, line: 966, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "SECTION_OBJECT_POINTERS", file: !1, line: 965, baseType: !359)
!359 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SECTION_OBJECT_POINTERS", file: !1, line: 960, size: 192, align: 64, elements: !360)
!360 = !{!361, !362, !363}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "DataSectionObject", scope: !359, file: !1, line: 961, baseType: !286, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "SharedCacheMap", scope: !359, file: !1, line: 962, baseType: !286, size: 64, align: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ImageSectionObject", scope: !359, file: !1, line: 963, baseType: !286, size: 64, align: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "PrivateCacheMap", scope: !331, file: !1, line: 980, baseType: !286, size: 64, align: 64, offset: 384)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "FinalStatus", scope: !331, file: !1, line: 981, baseType: !300, size: 64, align: 64, offset: 448)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "RelatedFileObject", scope: !331, file: !1, line: 982, baseType: !330, size: 64, align: 64, offset: 512)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "LockOperation", scope: !331, file: !1, line: 983, baseType: !327, size: 8, align: 8, offset: 576)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "DeletePending", scope: !331, file: !1, line: 984, baseType: !327, size: 8, align: 8, offset: 584)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ReadAccess", scope: !331, file: !1, line: 985, baseType: !327, size: 8, align: 8, offset: 592)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "WriteAccess", scope: !331, file: !1, line: 986, baseType: !327, size: 8, align: 8, offset: 600)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "DeleteAccess", scope: !331, file: !1, line: 987, baseType: !327, size: 8, align: 8, offset: 608)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "SharedRead", scope: !331, file: !1, line: 988, baseType: !327, size: 8, align: 8, offset: 616)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "SharedWrite", scope: !331, file: !1, line: 989, baseType: !327, size: 8, align: 8, offset: 624)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "SharedDelete", scope: !331, file: !1, line: 990, baseType: !327, size: 8, align: 8, offset: 632)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !331, file: !1, line: 991, baseType: !283, size: 64, align: 64, offset: 640)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "FileName", scope: !331, file: !1, line: 992, baseType: !303, size: 128, align: 64, offset: 704)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "CurrentByteOffset", scope: !331, file: !1, line: 993, baseType: !378, size: 128, align: 64, offset: 832)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "LARGE_INTEGER", file: !1, line: 50, baseType: !379)
!379 = !DICompositeType(tag: DW_TAG_union_type, name: "_LARGE_INTEGER", file: !1, line: 45, size: 128, align: 64, elements: !380)
!380 = !{!381, !386, !391}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "__annonCompField1", scope: !379, file: !1, line: 46, baseType: !382, size: 128, align: 64)
!382 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct____missing_field_name_1", file: !1, line: 37, size: 128, align: 64, elements: !383)
!383 = !{!384, !385}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "LowPart", scope: !382, file: !1, line: 38, baseType: !283, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "HighPart", scope: !382, file: !1, line: 39, baseType: !273, size: 64, align: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !379, file: !1, line: 47, baseType: !387, size: 128, align: 64)
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_u_2", file: !1, line: 41, size: 128, align: 64, elements: !388)
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "LowPart", scope: !387, file: !1, line: 42, baseType: !283, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "HighPart", scope: !387, file: !1, line: 43, baseType: !273, size: 64, align: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "QuadPart", scope: !379, file: !1, line: 48, baseType: !392, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "LONGLONG", file: !1, line: 36, baseType: !393)
!393 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "Waiters", scope: !331, file: !1, line: 994, baseType: !283, size: 64, align: 64, offset: 960)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "Busy", scope: !331, file: !1, line: 995, baseType: !283, size: 64, align: 64, offset: 1024)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "LastLock", scope: !331, file: !1, line: 996, baseType: !286, size: 64, align: 64, offset: 1088)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "Lock", scope: !331, file: !1, line: 997, baseType: !398, size: 256, align: 64, offset: 1152)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "KEVENT", file: !1, line: 660, baseType: !399)
!399 = !DICompositeType(tag: DW_TAG_structure_type, name: "_KEVENT", file: !1, line: 657, size: 256, align: 64, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "Header", scope: !399, file: !1, line: 658, baseType: !402, size: 256, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "DISPATCHER_HEADER", file: !1, line: 642, baseType: !403)
!403 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DISPATCHER_HEADER", file: !1, line: 634, size: 256, align: 64, elements: !404)
!404 = !{!405, !406, !407, !408, !409, !410}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !403, file: !1, line: 635, baseType: !328, size: 8, align: 8)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "Absolute", scope: !403, file: !1, line: 636, baseType: !328, size: 8, align: 8, offset: 8)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !403, file: !1, line: 637, baseType: !328, size: 8, align: 8, offset: 16)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "Inserted", scope: !403, file: !1, line: 638, baseType: !328, size: 8, align: 8, offset: 24)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "SignalState", scope: !403, file: !1, line: 639, baseType: !273, size: 64, align: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "WaitListHead", scope: !403, file: !1, line: 640, baseType: !411, size: 128, align: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "LIST_ENTRY", file: !1, line: 85, baseType: !412)
!412 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LIST_ENTRY", file: !1, line: 81, size: 128, align: 64, elements: !413)
!413 = !{!414, !416}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "Flink", scope: !412, file: !1, line: 82, baseType: !415, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "Blink", scope: !412, file: !1, line: 83, baseType: !415, size: 64, align: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "Event", scope: !331, file: !1, line: 998, baseType: !398, size: 256, align: 64, offset: 1408)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "CompletionContext", scope: !331, file: !1, line: 999, baseType: !419, size: 64, align: 64, offset: 1664)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "PIO_COMPLETION_CONTEXT", file: !1, line: 971, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!421 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_COMPLETION_CONTEXT", file: !1, line: 967, size: 128, align: 64, elements: !422)
!422 = !{!423, !424}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "Port", scope: !421, file: !1, line: 968, baseType: !286, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "Key", scope: !421, file: !1, line: 969, baseType: !286, size: 64, align: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "PLARGE_INTEGER", file: !1, line: 51, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "PIO_STATUS_BLOCK", file: !1, line: 222, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, align: 64)
!429 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_STATUS_BLOCK", file: !1, line: 217, size: 128, align: 64, elements: !430)
!430 = !{!431, !436}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "__annonCompField4", scope: !429, file: !1, line: 218, baseType: !432, size: 64, align: 64)
!432 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion____missing_field_name_6", file: !1, line: 213, size: 64, align: 64, elements: !433)
!433 = !{!434, !435}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "Status", scope: !432, file: !1, line: 214, baseType: !300, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "Pointer", scope: !432, file: !1, line: 215, baseType: !286, size: 64, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "Information", scope: !429, file: !1, line: 219, baseType: !437, size: 64, align: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "ULONG_PTR", file: !1, line: 13, baseType: !284)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoRead", scope: !320, file: !1, line: 795, baseType: !439, size: 64, align: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64, align: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!327, !330, !425, !283, !327, !283, !286, !427, !263}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoWrite", scope: !320, file: !1, line: 798, baseType: !439, size: 64, align: 64, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoQueryBasicInfo", scope: !320, file: !1, line: 801, baseType: !444, size: 64, align: 64, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64, align: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!327, !330, !327, !447, !427, !263}
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFILE_BASIC_INFORMATION", file: !1, line: 270, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64, align: 64)
!449 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FILE_BASIC_INFORMATION", file: !1, line: 263, size: 576, align: 64, elements: !450)
!450 = !{!451, !452, !453, !454, !455}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "CreationTime", scope: !449, file: !1, line: 264, baseType: !378, size: 128, align: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "LastAccessTime", scope: !449, file: !1, line: 265, baseType: !378, size: 128, align: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "LastWriteTime", scope: !449, file: !1, line: 266, baseType: !378, size: 128, align: 64, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "ChangeTime", scope: !449, file: !1, line: 267, baseType: !378, size: 128, align: 64, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "FileAttributes", scope: !449, file: !1, line: 268, baseType: !283, size: 64, align: 64, offset: 512)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoQueryStandardInfo", scope: !320, file: !1, line: 804, baseType: !457, size: 64, align: 64, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64, align: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!327, !330, !327, !460, !427, !263}
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFILE_STANDARD_INFORMATION", file: !1, line: 278, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!462 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FILE_STANDARD_INFORMATION", file: !1, line: 271, size: 384, align: 64, elements: !463)
!463 = !{!464, !465, !466, !467, !468}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "AllocationSize", scope: !462, file: !1, line: 272, baseType: !378, size: 128, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "EndOfFile", scope: !462, file: !1, line: 273, baseType: !378, size: 128, align: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfLinks", scope: !462, file: !1, line: 274, baseType: !283, size: 64, align: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "DeletePending", scope: !462, file: !1, line: 275, baseType: !327, size: 8, align: 8, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "Directory", scope: !462, file: !1, line: 276, baseType: !327, size: 8, align: 8, offset: 328)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoLock", scope: !320, file: !1, line: 807, baseType: !470, size: 64, align: 64, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64, align: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!327, !330, !425, !425, !473, !283, !327, !327, !427, !263}
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "PEPROCESS", file: !1, line: 111, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64, align: 64)
!475 = !DICompositeType(tag: DW_TAG_structure_type, name: "_EPROCESS", file: !1, line: 110, flags: DIFlagFwdDecl)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoUnlockSingle", scope: !320, file: !1, line: 811, baseType: !477, size: 64, align: 64, offset: 448)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64, align: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!327, !330, !425, !425, !473, !283, !427, !263}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoUnlockAll", scope: !320, file: !1, line: 814, baseType: !481, size: 64, align: 64, offset: 512)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, align: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!327, !330, !473, !427, !263}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoUnlockAllByKey", scope: !320, file: !1, line: 816, baseType: !485, size: 64, align: 64, offset: 576)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64, align: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!327, !330, !286, !283, !427, !263}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoDeviceControl", scope: !320, file: !1, line: 818, baseType: !489, size: 64, align: 64, offset: 640)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!327, !330, !327, !286, !283, !286, !283, !283, !427, !263}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "AcquireFileForNtCreateSection", scope: !320, file: !1, line: 822, baseType: !493, size: 64, align: 64, offset: 704)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64, align: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !330}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "ReleaseFileForNtCreateSection", scope: !320, file: !1, line: 823, baseType: !493, size: 64, align: 64, offset: 768)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoDetachDevice", scope: !320, file: !1, line: 824, baseType: !498, size: 64, align: 64, offset: 832)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, align: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !263, !263}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoQueryNetworkOpenInfo", scope: !320, file: !1, line: 825, baseType: !502, size: 64, align: 64, offset: 896)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64, align: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!327, !330, !327, !505, !428, !263}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64, align: 64)
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FILE_NETWORK_OPEN_INFORMATION", file: !1, line: 279, size: 832, align: 64, elements: !507)
!507 = !{!508, !509, !510, !511, !512, !513, !514}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "CreationTime", scope: !506, file: !1, line: 280, baseType: !378, size: 128, align: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "LastAccessTime", scope: !506, file: !1, line: 281, baseType: !378, size: 128, align: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "LastWriteTime", scope: !506, file: !1, line: 282, baseType: !378, size: 128, align: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "ChangeTime", scope: !506, file: !1, line: 283, baseType: !378, size: 128, align: 64, offset: 384)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "AllocationSize", scope: !506, file: !1, line: 284, baseType: !378, size: 128, align: 64, offset: 512)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "EndOfFile", scope: !506, file: !1, line: 285, baseType: !378, size: 128, align: 64, offset: 640)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "FileAttributes", scope: !506, file: !1, line: 286, baseType: !283, size: 64, align: 64, offset: 768)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "AcquireForModWrite", scope: !320, file: !1, line: 828, baseType: !516, size: 64, align: 64, offset: 960)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64, align: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!300, !330, !425, !519, !263}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64, align: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64, align: 64)
!521 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ERESOURCE", file: !1, line: 720, size: 896, align: 64, elements: !522)
!522 = !{!523, !524, !536, !538, !539, !546, !549, !554, !555, !556, !557, !562}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "SystemResourcesList", scope: !521, file: !1, line: 721, baseType: !411, size: 128, align: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "OwnerTable", scope: !521, file: !1, line: 722, baseType: !525, size: 64, align: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "POWNER_ENTRY", file: !1, line: 715, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64, align: 64)
!527 = !DICompositeType(tag: DW_TAG_structure_type, name: "_OWNER_ENTRY", file: !1, line: 710, size: 128, align: 64, elements: !528)
!528 = !{!529, !531}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "OwnerThread", scope: !527, file: !1, line: 711, baseType: !530, size: 64, align: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "ERESOURCE_THREAD", file: !1, line: 705, baseType: !437)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "__annonCompField10", scope: !527, file: !1, line: 712, baseType: !532, size: 64, align: 64, offset: 64)
!532 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion____missing_field_name_38", file: !1, line: 706, size: 64, align: 64, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "OwnerCount", scope: !532, file: !1, line: 707, baseType: !273, size: 64, align: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "TableSize", scope: !532, file: !1, line: 708, baseType: !283, size: 64, align: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ActiveCount", scope: !521, file: !1, line: 723, baseType: !537, size: 16, align: 16, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "SHORT", file: !1, line: 18, baseType: !268)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "Flag", scope: !521, file: !1, line: 724, baseType: !270, size: 16, align: 16, offset: 208)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "SharedWaiters", scope: !521, file: !1, line: 725, baseType: !540, size: 64, align: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "PKSEMAPHORE", file: !1, line: 667, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64, align: 64)
!542 = !DICompositeType(tag: DW_TAG_structure_type, name: "_KSEMAPHORE", file: !1, line: 663, size: 320, align: 64, elements: !543)
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "Header", scope: !542, file: !1, line: 664, baseType: !402, size: 256, align: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "Limit", scope: !542, file: !1, line: 665, baseType: !273, size: 64, align: 64, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ExclusiveWaiters", scope: !521, file: !1, line: 726, baseType: !547, size: 64, align: 64, offset: 320)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "PKEVENT", file: !1, line: 661, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, align: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "OwnerThreads", scope: !521, file: !1, line: 727, baseType: !550, size: 256, align: 64, offset: 384)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 256, align: 64, elements: !552)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "OWNER_ENTRY", file: !1, line: 714, baseType: !527)
!552 = !{!553}
!553 = !DISubrange(count: 2)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ContentionCount", scope: !521, file: !1, line: 728, baseType: !283, size: 64, align: 64, offset: 640)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfSharedWaiters", scope: !521, file: !1, line: 729, baseType: !270, size: 16, align: 16, offset: 704)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfExclusiveWaiters", scope: !521, file: !1, line: 730, baseType: !270, size: 16, align: 16, offset: 720)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "__annonCompField11", scope: !521, file: !1, line: 731, baseType: !558, size: 64, align: 64, offset: 768)
!558 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion____missing_field_name_39", file: !1, line: 716, size: 64, align: 64, elements: !559)
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "Address", scope: !558, file: !1, line: 717, baseType: !286, size: 64, align: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "CreatorBackTraceIndex", scope: !558, file: !1, line: 718, baseType: !437, size: 64, align: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "SpinLock", scope: !521, file: !1, line: 732, baseType: !563, size: 64, align: 64, offset: 832)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "KSPIN_LOCK", file: !1, line: 199, baseType: !437)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "MdlRead", scope: !320, file: !1, line: 830, baseType: !565, size: 64, align: 64, offset: 1024)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64, align: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!327, !330, !425, !283, !283, !568, !427, !263}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64, align: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "PMDL", file: !1, line: 165, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64, align: 64)
!571 = !DICompositeType(tag: DW_TAG_structure_type, name: "_MDL", file: !1, line: 154, size: 448, align: 64, elements: !572)
!572 = !{!573, !574, !575, !576, !577, !578, !579, !580}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !571, file: !1, line: 155, baseType: !570, size: 64, align: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !571, file: !1, line: 156, baseType: !267, size: 16, align: 16, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "MdlFlags", scope: !571, file: !1, line: 157, baseType: !267, size: 16, align: 16, offset: 80)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "Process", scope: !571, file: !1, line: 158, baseType: !474, size: 64, align: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "MappedSystemVa", scope: !571, file: !1, line: 159, baseType: !286, size: 64, align: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "StartVa", scope: !571, file: !1, line: 160, baseType: !286, size: 64, align: 64, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "ByteCount", scope: !571, file: !1, line: 161, baseType: !283, size: 64, align: 64, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ByteOffset", scope: !571, file: !1, line: 162, baseType: !283, size: 64, align: 64, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "MdlReadComplete", scope: !320, file: !1, line: 833, baseType: !582, size: 64, align: 64, offset: 1088)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64, align: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!327, !330, !569, !263}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "PrepareMdlWrite", scope: !320, file: !1, line: 834, baseType: !565, size: 64, align: 64, offset: 1152)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "MdlWriteComplete", scope: !320, file: !1, line: 837, baseType: !587, size: 64, align: 64, offset: 1216)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64, align: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!327, !330, !425, !569, !263}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoReadCompressed", scope: !320, file: !1, line: 839, baseType: !591, size: 64, align: 64, offset: 1280)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64, align: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!327, !330, !425, !283, !283, !286, !568, !427, !594, !283, !263}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64, align: 64)
!595 = !DICompositeType(tag: DW_TAG_structure_type, name: "_COMPRESSED_DATA_INFO", file: !1, line: 788, flags: DIFlagFwdDecl)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoWriteCompressed", scope: !320, file: !1, line: 843, baseType: !591, size: 64, align: 64, offset: 1344)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "MdlReadCompleteCompressed", scope: !320, file: !1, line: 847, baseType: !582, size: 64, align: 64, offset: 1408)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "MdlWriteCompleteCompressed", scope: !320, file: !1, line: 849, baseType: !587, size: 64, align: 64, offset: 1472)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoQueryOpen", scope: !320, file: !1, line: 851, baseType: !600, size: 64, align: 64, offset: 1536)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64, align: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!327, !603, !1237, !263}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64, align: 64)
!604 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IRP", file: !1, line: 1044, size: 1728, align: 64, elements: !605)
!605 = !{!606, !607, !608, !609, !610, !616, !617, !619, !623, !624, !626, !627, !628, !630, !631, !632, !633, !634, !646, !650, !651}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !604, file: !1, line: 1045, baseType: !267, size: 16, align: 16)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !604, file: !1, line: 1046, baseType: !270, size: 16, align: 16, offset: 16)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "MdlAddress", scope: !604, file: !1, line: 1047, baseType: !569, size: 64, align: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !604, file: !1, line: 1048, baseType: !283, size: 64, align: 64, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "AssociatedIrp", scope: !604, file: !1, line: 1049, baseType: !611, size: 64, align: 64, offset: 192)
!611 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion_AssociatedIrp_44", file: !1, line: 1002, size: 64, align: 64, elements: !612)
!612 = !{!613, !614, !615}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "MasterIrp", scope: !611, file: !1, line: 1003, baseType: !603, size: 64, align: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "IrpCount", scope: !611, file: !1, line: 1004, baseType: !273, size: 64, align: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "SystemBuffer", scope: !611, file: !1, line: 1005, baseType: !286, size: 64, align: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "ThreadListEntry", scope: !604, file: !1, line: 1050, baseType: !411, size: 128, align: 64, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "IoStatus", scope: !604, file: !1, line: 1051, baseType: !618, size: 128, align: 64, offset: 384)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "IO_STATUS_BLOCK", file: !1, line: 221, baseType: !429)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "RequestorMode", scope: !604, file: !1, line: 1052, baseType: !620, size: 8, align: 8, offset: 512)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "KPROCESSOR_MODE", file: !1, line: 116, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "CCHAR", file: !1, line: 32, baseType: !622)
!622 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "PendingReturned", scope: !604, file: !1, line: 1053, baseType: !327, size: 8, align: 8, offset: 520)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "StackCount", scope: !604, file: !1, line: 1054, baseType: !625, size: 8, align: 8, offset: 528)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAR", file: !1, line: 17, baseType: !622)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "CurrentLocation", scope: !604, file: !1, line: 1055, baseType: !625, size: 8, align: 8, offset: 536)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "Cancel", scope: !604, file: !1, line: 1056, baseType: !327, size: 8, align: 8, offset: 544)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "CancelIrql", scope: !604, file: !1, line: 1057, baseType: !629, size: 8, align: 8, offset: 552)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "KIRQL", file: !1, line: 105, baseType: !328)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "ApcEnvironment", scope: !604, file: !1, line: 1058, baseType: !621, size: 8, align: 8, offset: 560)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "AllocationFlags", scope: !604, file: !1, line: 1059, baseType: !328, size: 8, align: 8, offset: 568)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "UserIosb", scope: !604, file: !1, line: 1060, baseType: !427, size: 64, align: 64, offset: 576)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "UserEvent", scope: !604, file: !1, line: 1061, baseType: !547, size: 64, align: 64, offset: 640)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "Overlay", scope: !604, file: !1, line: 1062, baseType: !635, size: 128, align: 64, offset: 704)
!635 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion_Overlay_45", file: !1, line: 1012, size: 128, align: 64, elements: !636)
!636 = !{!637, !645}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "AsynchronousParameters", scope: !635, file: !1, line: 1013, baseType: !638, size: 128, align: 64)
!638 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_AsynchronousParameters_46", file: !1, line: 1007, size: 128, align: 64, elements: !639)
!639 = !{!640, !644}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "UserApcRoutine", scope: !638, file: !1, line: 1008, baseType: !641, size: 64, align: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64, align: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !286, !427, !283}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "UserApcContext", scope: !638, file: !1, line: 1010, baseType: !286, size: 64, align: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "AllocationSize", scope: !635, file: !1, line: 1014, baseType: !378, size: 128, align: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "CancelRoutine", scope: !604, file: !1, line: 1063, baseType: !647, size: 64, align: 64, offset: 832)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64, align: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !263, !603}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "UserBuffer", scope: !604, file: !1, line: 1064, baseType: !286, size: 64, align: 64, offset: 896)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "Tail", scope: !604, file: !1, line: 1065, baseType: !652, size: 768, align: 64, offset: 960)
!652 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion_Tail_47", file: !1, line: 1039, size: 768, align: 64, elements: !653)
!653 = !{!654, !1203, !1236}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "Overlay", scope: !652, file: !1, line: 1040, baseType: !655, size: 640, align: 64)
!655 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Overlay_48", file: !1, line: 1032, size: 640, align: 64, elements: !656)
!656 = !{!657, !674, !678, !681, !1202}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "__annonCompField15", scope: !655, file: !1, line: 1033, baseType: !658, size: 256, align: 64)
!658 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion____missing_field_name_49", file: !1, line: 1019, size: 256, align: 64, elements: !659)
!659 = !{!660, !667}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceQueueEntry", scope: !658, file: !1, line: 1020, baseType: !661, size: 256, align: 64)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "KDEVICE_QUEUE_ENTRY", file: !1, line: 656, baseType: !662)
!662 = !DICompositeType(tag: DW_TAG_structure_type, name: "_KDEVICE_QUEUE_ENTRY", file: !1, line: 651, size: 256, align: 64, elements: !663)
!663 = !{!664, !665, !666}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceListEntry", scope: !662, file: !1, line: 652, baseType: !411, size: 128, align: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "SortKey", scope: !662, file: !1, line: 653, baseType: !283, size: 64, align: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "Inserted", scope: !662, file: !1, line: 654, baseType: !327, size: 8, align: 8, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "__annonCompField14", scope: !658, file: !1, line: 1021, baseType: !668, size: 256, align: 64)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct____missing_field_name_50", file: !1, line: 1016, size: 256, align: 64, elements: !669)
!669 = !{!670}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "DriverContext", scope: !668, file: !1, line: 1017, baseType: !671, size: 256, align: 64)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 256, align: 64, elements: !672)
!672 = !{!673}
!673 = !DISubrange(count: 4)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "Thread", scope: !655, file: !1, line: 1034, baseType: !675, size: 64, align: 64, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "PETHREAD", file: !1, line: 109, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64, align: 64)
!677 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ETHREAD", file: !1, line: 108, flags: DIFlagFwdDecl)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "AuxiliaryBuffer", scope: !655, file: !1, line: 1035, baseType: !679, size: 64, align: 64, offset: 320)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "PCHAR", file: !1, line: 23, baseType: !680)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64, align: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "__annonCompField17", scope: !655, file: !1, line: 1036, baseType: !682, size: 192, align: 64, offset: 384)
!682 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct____missing_field_name_51", file: !1, line: 1028, size: 192, align: 64, elements: !683)
!683 = !{!684, !685}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ListEntry", scope: !682, file: !1, line: 1029, baseType: !411, size: 128, align: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "__annonCompField16", scope: !682, file: !1, line: 1030, baseType: !686, size: 64, align: 64, offset: 128)
!686 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion____missing_field_name_52", file: !1, line: 1024, size: 64, align: 64, elements: !687)
!687 = !{!688, !1201}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "CurrentStackLocation", scope: !686, file: !1, line: 1025, baseType: !689, size: 64, align: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64, align: 64)
!690 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_STACK_LOCATION", file: !1, line: 1302, size: 544, align: 32, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !1193, !1194, !1195, !1200}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "MajorFunction", scope: !690, file: !1, line: 1303, baseType: !328, size: 8, align: 8)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "MinorFunction", scope: !690, file: !1, line: 1304, baseType: !328, size: 8, align: 8, offset: 8)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !690, file: !1, line: 1305, baseType: !328, size: 8, align: 8, offset: 16)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "Control", scope: !690, file: !1, line: 1306, baseType: !328, size: 8, align: 8, offset: 24)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "Parameters", scope: !690, file: !1, line: 1307, baseType: !697, size: 256, align: 32, offset: 32)
!697 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion_Parameters_55", file: !1, line: 1273, size: 256, align: 32, elements: !698)
!698 = !{!699, !787, !793, !799, !805, !823, !829, !836, !842, !847, !852, !857, !863, !868, !900, !941, !1041, !1048, !1052, !1057, !1064, !1072, !1076, !1087, !1101, !1179, !1186}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "Create", scope: !697, file: !1, line: 1274, baseType: !700, size: 224, align: 32)
!700 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Create_56", file: !1, line: 1143, size: 224, align: 32, elements: !701)
!701 = !{!702, !783, !784, !785, !786}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "SecurityContext", scope: !700, file: !1, line: 1144, baseType: !703, size: 64, align: 64)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "PIO_SECURITY_CONTEXT", file: !1, line: 871, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64, align: 64)
!705 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_SECURITY_CONTEXT", file: !1, line: 865, size: 256, align: 64, elements: !706)
!706 = !{!707, !718, !781, !782}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "SecurityQos", scope: !705, file: !1, line: 866, baseType: !708, size: 64, align: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "PSECURITY_QUALITY_OF_SERVICE", file: !1, line: 196, baseType: !709)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64, align: 64)
!710 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SECURITY_QUALITY_OF_SERVICE", file: !1, line: 190, size: 128, align: 64, elements: !711)
!711 = !{!712, !713, !715, !717}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !710, file: !1, line: 191, baseType: !283, size: 64, align: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "ImpersonationLevel", scope: !710, file: !1, line: 192, baseType: !714, size: 32, align: 32, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "SECURITY_IMPERSONATION_LEVEL", file: !1, line: 188, baseType: !3)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "ContextTrackingMode", scope: !710, file: !1, line: 193, baseType: !716, size: 8, align: 8, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "SECURITY_CONTEXT_TRACKING_MODE", file: !1, line: 189, baseType: !327)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "EffectiveOnly", scope: !710, file: !1, line: 194, baseType: !327, size: 8, align: 8, offset: 104)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "AccessState", scope: !705, file: !1, line: 867, baseType: !719, size: 64, align: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "PACCESS_STATE", file: !1, line: 777, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64, align: 64)
!721 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ACCESS_STATE", file: !1, line: 759, size: 1856, align: 64, elements: !722)
!722 = !{!723, !729, !730, !731, !732, !733, !734, !736, !737, !738, !747, !749, !750, !778, !779, !780}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "OperationID", scope: !721, file: !1, line: 760, baseType: !724, size: 128, align: 64)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "LUID", file: !1, line: 56, baseType: !725)
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LUID", file: !1, line: 52, size: 128, align: 64, elements: !726)
!726 = !{!727, !728}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "LowPart", scope: !725, file: !1, line: 53, baseType: !283, size: 64, align: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "HighPart", scope: !725, file: !1, line: 54, baseType: !273, size: 64, align: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "SecurityEvaluated", scope: !721, file: !1, line: 761, baseType: !327, size: 8, align: 8, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "GenerateAudit", scope: !721, file: !1, line: 762, baseType: !327, size: 8, align: 8, offset: 136)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "GenerateOnClose", scope: !721, file: !1, line: 763, baseType: !327, size: 8, align: 8, offset: 144)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "PrivilegesAllocated", scope: !721, file: !1, line: 764, baseType: !327, size: 8, align: 8, offset: 152)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !721, file: !1, line: 765, baseType: !283, size: 64, align: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "RemainingDesiredAccess", scope: !721, file: !1, line: 766, baseType: !735, size: 64, align: 64, offset: 256)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "ACCESS_MASK", file: !1, line: 168, baseType: !283)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "PreviouslyGrantedAccess", scope: !721, file: !1, line: 767, baseType: !735, size: 64, align: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "OriginalDesiredAccess", scope: !721, file: !1, line: 768, baseType: !735, size: 64, align: 64, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "SubjectSecurityContext", scope: !721, file: !1, line: 769, baseType: !739, size: 256, align: 64, offset: 448)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "SECURITY_SUBJECT_CONTEXT", file: !1, line: 748, baseType: !740)
!740 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SECURITY_SUBJECT_CONTEXT", file: !1, line: 742, size: 256, align: 64, elements: !741)
!741 = !{!742, !744, !745, !746}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "ClientToken", scope: !740, file: !1, line: 743, baseType: !743, size: 64, align: 64)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "PACCESS_TOKEN", file: !1, line: 166, baseType: !286)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "ImpersonationLevel", scope: !740, file: !1, line: 744, baseType: !714, size: 32, align: 32, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "PrimaryToken", scope: !740, file: !1, line: 745, baseType: !743, size: 64, align: 64, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ProcessAuditId", scope: !740, file: !1, line: 746, baseType: !286, size: 64, align: 64, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "SecurityDescriptor", scope: !721, file: !1, line: 770, baseType: !748, size: 64, align: 64, offset: 704)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "PSECURITY_DESCRIPTOR", file: !1, line: 167, baseType: !286)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "AuxData", scope: !721, file: !1, line: 771, baseType: !286, size: 64, align: 64, offset: 768)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "Privileges", scope: !721, file: !1, line: 772, baseType: !751, size: 704, align: 64, offset: 832)
!751 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion_Privileges_40", file: !1, line: 755, size: 704, align: 64, elements: !752)
!752 = !{!753, !768}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "InitialPrivilegeSet", scope: !751, file: !1, line: 756, baseType: !754, size: 704, align: 64)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "INITIAL_PRIVILEGE_SET", file: !1, line: 754, baseType: !755)
!755 = !DICompositeType(tag: DW_TAG_structure_type, name: "_INITIAL_PRIVILEGE_SET", file: !1, line: 749, size: 704, align: 64, elements: !756)
!756 = !{!757, !758, !759}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "PrivilegeCount", scope: !755, file: !1, line: 750, baseType: !283, size: 64, align: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "Control", scope: !755, file: !1, line: 751, baseType: !283, size: 64, align: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "Privilege", scope: !755, file: !1, line: 752, baseType: !760, size: 576, align: 32, offset: 128)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !761, size: 576, align: 32, elements: !766)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "LUID_AND_ATTRIBUTES", file: !1, line: 174, baseType: !762)
!762 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LUID_AND_ATTRIBUTES", file: !1, line: 170, size: 192, align: 32, elements: !763)
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "Luid", scope: !762, file: !1, line: 171, baseType: !724, size: 128, align: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "Attributes", scope: !762, file: !1, line: 172, baseType: !283, size: 64, align: 64, offset: 128)
!766 = !{!767}
!767 = !DISubrange(count: 3)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "PrivilegeSet", scope: !751, file: !1, line: 757, baseType: !769, size: 320, align: 64)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "PRIVILEGE_SET", file: !1, line: 181, baseType: !770)
!770 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PRIVILEGE_SET", file: !1, line: 176, size: 320, align: 64, elements: !771)
!771 = !{!772, !773, !774}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "PrivilegeCount", scope: !770, file: !1, line: 177, baseType: !283, size: 64, align: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "Control", scope: !770, file: !1, line: 178, baseType: !283, size: 64, align: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "Privilege", scope: !770, file: !1, line: 179, baseType: !775, size: 192, align: 32, offset: 128)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !761, size: 192, align: 32, elements: !776)
!776 = !{!777}
!777 = !DISubrange(count: 1)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "AuditPrivileges", scope: !721, file: !1, line: 773, baseType: !327, size: 8, align: 8, offset: 1536)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "ObjectName", scope: !721, file: !1, line: 774, baseType: !303, size: 128, align: 64, offset: 1600)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "ObjectTypeName", scope: !721, file: !1, line: 775, baseType: !303, size: 128, align: 64, offset: 1728)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "DesiredAccess", scope: !705, file: !1, line: 868, baseType: !735, size: 64, align: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "FullCreateOptions", scope: !705, file: !1, line: 869, baseType: !283, size: 64, align: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "Options", scope: !700, file: !1, line: 1145, baseType: !283, size: 64, align: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "FileAttributes", scope: !700, file: !1, line: 1146, baseType: !270, size: 16, align: 16, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ShareAccess", scope: !700, file: !1, line: 1147, baseType: !270, size: 16, align: 16, offset: 144)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "EaLength", scope: !700, file: !1, line: 1148, baseType: !283, size: 64, align: 64, offset: 160)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "Read", scope: !697, file: !1, line: 1275, baseType: !788, size: 256, align: 32)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Read_57", file: !1, line: 1150, size: 256, align: 32, elements: !789)
!789 = !{!790, !791, !792}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !788, file: !1, line: 1151, baseType: !283, size: 64, align: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "Key", scope: !788, file: !1, line: 1152, baseType: !283, size: 64, align: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "ByteOffset", scope: !788, file: !1, line: 1153, baseType: !378, size: 128, align: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "Write", scope: !697, file: !1, line: 1276, baseType: !794, size: 256, align: 32)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Write_58", file: !1, line: 1155, size: 256, align: 32, elements: !795)
!795 = !{!796, !797, !798}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !794, file: !1, line: 1156, baseType: !283, size: 64, align: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "Key", scope: !794, file: !1, line: 1157, baseType: !283, size: 64, align: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "ByteOffset", scope: !794, file: !1, line: 1158, baseType: !378, size: 128, align: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "QueryFile", scope: !697, file: !1, line: 1277, baseType: !800, size: 96, align: 32)
!800 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_QueryFile_59", file: !1, line: 1160, size: 96, align: 32, elements: !801)
!801 = !{!802, !803}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !800, file: !1, line: 1161, baseType: !283, size: 64, align: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "FileInformationClass", scope: !800, file: !1, line: 1162, baseType: !804, size: 32, align: 32, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE_INFORMATION_CLASS", file: !1, line: 262, baseType: !9)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "SetFile", scope: !697, file: !1, line: 1278, baseType: !806, size: 224, align: 32)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_SetFile_60", file: !1, line: 1173, size: 224, align: 32, elements: !807)
!807 = !{!808, !809, !810, !812}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !806, file: !1, line: 1174, baseType: !283, size: 64, align: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "FileInformationClass", scope: !806, file: !1, line: 1175, baseType: !804, size: 32, align: 32, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "FileObject", scope: !806, file: !1, line: 1176, baseType: !811, size: 64, align: 64, offset: 96)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFILE_OBJECT", file: !1, line: 1001, baseType: !330)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "__annonCompField19", scope: !806, file: !1, line: 1177, baseType: !813, size: 64, align: 32, offset: 160)
!813 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion____missing_field_name_61", file: !1, line: 1168, size: 64, align: 32, elements: !814)
!814 = !{!815, !820, !821}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "__annonCompField18", scope: !813, file: !1, line: 1169, baseType: !816, size: 16, align: 8)
!816 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct____missing_field_name_62", file: !1, line: 1164, size: 16, align: 8, elements: !817)
!817 = !{!818, !819}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ReplaceIfExists", scope: !816, file: !1, line: 1165, baseType: !327, size: 8, align: 8)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "AdvanceOnly", scope: !816, file: !1, line: 1166, baseType: !327, size: 8, align: 8, offset: 8)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ClusterCount", scope: !813, file: !1, line: 1170, baseType: !283, size: 64, align: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "DeleteHandle", scope: !813, file: !1, line: 1171, baseType: !822, size: 64, align: 64)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "HANDLE", file: !1, line: 30, baseType: !287)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "QueryVolume", scope: !697, file: !1, line: 1279, baseType: !824, size: 96, align: 32)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_QueryVolume_63", file: !1, line: 1179, size: 96, align: 32, elements: !825)
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !824, file: !1, line: 1180, baseType: !283, size: 64, align: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "FsInformationClass", scope: !824, file: !1, line: 1181, baseType: !828, size: 32, align: 32, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "FS_INFORMATION_CLASS", file: !1, line: 300, baseType: !48)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceIoControl", scope: !697, file: !1, line: 1280, baseType: !830, size: 256, align: 32)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_DeviceIoControl_64", file: !1, line: 1183, size: 256, align: 32, elements: !831)
!831 = !{!832, !833, !834, !835}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "OutputBufferLength", scope: !830, file: !1, line: 1184, baseType: !283, size: 64, align: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "InputBufferLength", scope: !830, file: !1, line: 1185, baseType: !283, size: 64, align: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "IoControlCode", scope: !830, file: !1, line: 1186, baseType: !283, size: 64, align: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "Type3InputBuffer", scope: !830, file: !1, line: 1187, baseType: !286, size: 64, align: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "QuerySecurity", scope: !697, file: !1, line: 1281, baseType: !837, size: 128, align: 32)
!837 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_QuerySecurity_65", file: !1, line: 1189, size: 128, align: 32, elements: !838)
!838 = !{!839, !841}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "SecurityInformation", scope: !837, file: !1, line: 1190, baseType: !840, size: 64, align: 64)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "SECURITY_INFORMATION", file: !1, line: 197, baseType: !283)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !837, file: !1, line: 1191, baseType: !283, size: 64, align: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "SetSecurity", scope: !697, file: !1, line: 1282, baseType: !843, size: 128, align: 32)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_SetSecurity_66", file: !1, line: 1193, size: 128, align: 32, elements: !844)
!844 = !{!845, !846}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "SecurityInformation", scope: !843, file: !1, line: 1194, baseType: !840, size: 64, align: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "SecurityDescriptor", scope: !843, file: !1, line: 1195, baseType: !748, size: 64, align: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "MountVolume", scope: !697, file: !1, line: 1283, baseType: !848, size: 128, align: 32)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_MountVolume_67", file: !1, line: 1197, size: 128, align: 32, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "Vpb", scope: !848, file: !1, line: 1198, baseType: !337, size: 64, align: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceObject", scope: !848, file: !1, line: 1199, baseType: !262, size: 64, align: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "VerifyVolume", scope: !697, file: !1, line: 1284, baseType: !853, size: 128, align: 32)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_VerifyVolume_68", file: !1, line: 1201, size: 128, align: 32, elements: !854)
!854 = !{!855, !856}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "Vpb", scope: !853, file: !1, line: 1202, baseType: !337, size: 64, align: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceObject", scope: !853, file: !1, line: 1203, baseType: !262, size: 64, align: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "Scsi", scope: !697, file: !1, line: 1285, baseType: !858, size: 64, align: 32)
!858 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Scsi_69", file: !1, line: 1205, size: 64, align: 32, elements: !859)
!859 = !{!860}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "Srb", scope: !858, file: !1, line: 1206, baseType: !861, size: 64, align: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64, align: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SCSI_REQUEST_BLOCK", file: !1, line: 785, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "QueryDeviceRelations", scope: !697, file: !1, line: 1286, baseType: !864, size: 32, align: 32)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_QueryDeviceRelations_70", file: !1, line: 1208, size: 32, align: 32, elements: !865)
!865 = !{!866}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !864, file: !1, line: 1209, baseType: !867, size: 32, align: 32)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "DEVICE_RELATION_TYPE", file: !1, line: 1076, baseType: !59)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "QueryInterface", scope: !697, file: !1, line: 1287, baseType: !869, size: 224, align: 32)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_QueryInterface_71", file: !1, line: 1211, size: 224, align: 32, elements: !870)
!870 = !{!871, !884, !885, !886, !899}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "InterfaceType", scope: !869, file: !1, line: 1212, baseType: !872, size: 64, align: 64)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64, align: 64)
!873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !874)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "GUID", file: !1, line: 103, baseType: !875)
!875 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GUID", file: !1, line: 97, size: 192, align: 64, elements: !876)
!876 = !{!877, !878, !879, !880}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "Data1", scope: !875, file: !1, line: 98, baseType: !284, size: 64, align: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "Data2", scope: !875, file: !1, line: 99, baseType: !271, size: 16, align: 16, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "Data3", scope: !875, file: !1, line: 100, baseType: !271, size: 16, align: 16, offset: 80)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "Data4", scope: !875, file: !1, line: 101, baseType: !881, size: 64, align: 8, offset: 96)
!881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 64, align: 8, elements: !882)
!882 = !{!883}
!883 = !DISubrange(count: 8)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !869, file: !1, line: 1213, baseType: !270, size: 16, align: 16, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "Version", scope: !869, file: !1, line: 1214, baseType: !270, size: 16, align: 16, offset: 80)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "Interface", scope: !869, file: !1, line: 1215, baseType: !887, size: 64, align: 64, offset: 96)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "PINTERFACE", file: !1, line: 1091, baseType: !888)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64, align: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "_INTERFACE", file: !1, line: 1084, size: 256, align: 64, elements: !890)
!890 = !{!891, !892, !893, !894, !898}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !889, file: !1, line: 1085, baseType: !270, size: 16, align: 16)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "Version", scope: !889, file: !1, line: 1086, baseType: !270, size: 16, align: 16, offset: 16)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "Context", scope: !889, file: !1, line: 1087, baseType: !286, size: 64, align: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "InterfaceReference", scope: !889, file: !1, line: 1088, baseType: !895, size: 64, align: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64, align: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{null, !286}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "InterfaceDereference", scope: !889, file: !1, line: 1089, baseType: !895, size: 64, align: 64, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "InterfaceSpecificData", scope: !869, file: !1, line: 1216, baseType: !286, size: 64, align: 64, offset: 160)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceCapabilities", scope: !697, file: !1, line: 1288, baseType: !901, size: 64, align: 32)
!901 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_DeviceCapabilities_72", file: !1, line: 1218, size: 64, align: 32, elements: !902)
!902 = !{!903}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "Capabilities", scope: !901, file: !1, line: 1219, baseType: !904, size: 64, align: 64)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "PDEVICE_CAPABILITIES", file: !1, line: 1122, baseType: !905)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64, align: 64)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DEVICE_CAPABILITIES", file: !1, line: 1092, size: 704, align: 64, elements: !907)
!907 = !{!908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !935, !937, !938, !939, !940}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !906, file: !1, line: 1093, baseType: !270, size: 16, align: 16)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "Version", scope: !906, file: !1, line: 1094, baseType: !270, size: 16, align: 16, offset: 16)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceD1", scope: !906, file: !1, line: 1095, baseType: !283, size: 1, align: 64, offset: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceD2", scope: !906, file: !1, line: 1096, baseType: !283, size: 1, align: 64, offset: 33)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "LockSupported", scope: !906, file: !1, line: 1097, baseType: !283, size: 1, align: 64, offset: 34)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "EjectSupported", scope: !906, file: !1, line: 1098, baseType: !283, size: 1, align: 64, offset: 35)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "Removable", scope: !906, file: !1, line: 1099, baseType: !283, size: 1, align: 64, offset: 36)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "DockDevice", scope: !906, file: !1, line: 1100, baseType: !283, size: 1, align: 64, offset: 37)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "UniqueID", scope: !906, file: !1, line: 1101, baseType: !283, size: 1, align: 64, offset: 38)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "SilentInstall", scope: !906, file: !1, line: 1102, baseType: !283, size: 1, align: 64, offset: 39)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "RawDeviceOK", scope: !906, file: !1, line: 1103, baseType: !283, size: 1, align: 64, offset: 40)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "SurpriseRemovalOK", scope: !906, file: !1, line: 1104, baseType: !283, size: 1, align: 64, offset: 41)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "WakeFromD0", scope: !906, file: !1, line: 1105, baseType: !283, size: 1, align: 64, offset: 42)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "WakeFromD1", scope: !906, file: !1, line: 1106, baseType: !283, size: 1, align: 64, offset: 43)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "WakeFromD2", scope: !906, file: !1, line: 1107, baseType: !283, size: 1, align: 64, offset: 44)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "WakeFromD3", scope: !906, file: !1, line: 1108, baseType: !283, size: 1, align: 64, offset: 45)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "HardwareDisabled", scope: !906, file: !1, line: 1109, baseType: !283, size: 1, align: 64, offset: 46)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "NonDynamic", scope: !906, file: !1, line: 1110, baseType: !283, size: 1, align: 64, offset: 47)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "WarmEjectSupported", scope: !906, file: !1, line: 1111, baseType: !283, size: 1, align: 64, offset: 48)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !906, file: !1, line: 1112, baseType: !283, size: 15, align: 64, offset: 49)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "Address", scope: !906, file: !1, line: 1113, baseType: !283, size: 64, align: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "UINumber", scope: !906, file: !1, line: 1114, baseType: !283, size: 64, align: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceState", scope: !906, file: !1, line: 1115, baseType: !931, size: 224, align: 32, offset: 192)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !932, size: 224, align: 32, elements: !933)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "DEVICE_POWER_STATE", file: !1, line: 384, baseType: !66)
!933 = !{!934}
!934 = !DISubrange(count: 7)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "SystemWake", scope: !906, file: !1, line: 1116, baseType: !936, size: 32, align: 32, offset: 416)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "SYSTEM_POWER_STATE", file: !1, line: 364, baseType: !74)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceWake", scope: !906, file: !1, line: 1117, baseType: !932, size: 32, align: 32, offset: 448)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "D1Latency", scope: !906, file: !1, line: 1118, baseType: !283, size: 64, align: 64, offset: 512)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "D2Latency", scope: !906, file: !1, line: 1119, baseType: !283, size: 64, align: 64, offset: 576)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "D3Latency", scope: !906, file: !1, line: 1120, baseType: !283, size: 64, align: 64, offset: 640)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "FilterResourceRequirements", scope: !697, file: !1, line: 1289, baseType: !942, size: 64, align: 32)
!942 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_FilterResourceRequirements_73", file: !1, line: 1221, size: 64, align: 32, elements: !943)
!943 = !{!944}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "IoResourceRequirementList", scope: !942, file: !1, line: 1222, baseType: !945, size: 64, align: 64)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "PIO_RESOURCE_REQUIREMENTS_LIST", file: !1, line: 557, baseType: !946)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64, align: 64)
!947 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_RESOURCE_REQUIREMENTS_LIST", file: !1, line: 548, size: 1088, align: 64, elements: !948)
!948 = !{!949, !950, !952, !953, !954, !956, !957}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "ListSize", scope: !947, file: !1, line: 549, baseType: !283, size: 64, align: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "InterfaceType", scope: !947, file: !1, line: 550, baseType: !951, size: 32, align: 32, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "INTERFACE_TYPE", file: !1, line: 321, baseType: !84)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "BusNumber", scope: !947, file: !1, line: 551, baseType: !283, size: 64, align: 64, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "SlotNumber", scope: !947, file: !1, line: 552, baseType: !283, size: 64, align: 64, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !947, file: !1, line: 553, baseType: !955, size: 192, align: 64, offset: 256)
!955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 192, align: 64, elements: !766)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "AlternativeLists", scope: !947, file: !1, line: 554, baseType: !283, size: 64, align: 64, offset: 448)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "List", scope: !947, file: !1, line: 555, baseType: !958, size: 576, align: 64, offset: 512)
!958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !959, size: 576, align: 64, elements: !776)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "IO_RESOURCE_LIST", file: !1, line: 547, baseType: !960)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_RESOURCE_LIST", file: !1, line: 541, size: 576, align: 64, elements: !961)
!961 = !{!962, !963, !964, !965}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "Version", scope: !960, file: !1, line: 542, baseType: !270, size: 16, align: 16)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "Revision", scope: !960, file: !1, line: 543, baseType: !270, size: 16, align: 16, offset: 16)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "Count", scope: !960, file: !1, line: 544, baseType: !283, size: 64, align: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "Descriptors", scope: !960, file: !1, line: 545, baseType: !966, size: 448, align: 64, offset: 128)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !967, size: 448, align: 64, elements: !776)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "IO_RESOURCE_DESCRIPTOR", file: !1, line: 540, baseType: !968)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_RESOURCE_DESCRIPTOR", file: !1, line: 531, size: 448, align: 64, elements: !969)
!969 = !{!970, !971, !972, !973, !974, !975, !976}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "Option", scope: !968, file: !1, line: 532, baseType: !328, size: 8, align: 8)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !968, file: !1, line: 533, baseType: !328, size: 8, align: 8, offset: 8)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "ShareDisposition", scope: !968, file: !1, line: 534, baseType: !328, size: 8, align: 8, offset: 16)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "Spare1", scope: !968, file: !1, line: 535, baseType: !328, size: 8, align: 8, offset: 24)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !968, file: !1, line: 536, baseType: !270, size: 16, align: 16, offset: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "Spare2", scope: !968, file: !1, line: 537, baseType: !270, size: 16, align: 16, offset: 48)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !968, file: !1, line: 538, baseType: !977, size: 384, align: 64, offset: 64)
!977 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion_u_24", file: !1, line: 519, size: 384, align: 64, elements: !978)
!978 = !{!979, !987, !994, !999, !1004, !1011, !1015, !1022, !1027, !1035}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "Port", scope: !977, file: !1, line: 520, baseType: !980, size: 384, align: 64)
!980 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Port_25", file: !1, line: 470, size: 384, align: 64, elements: !981)
!981 = !{!982, !983, !984, !986}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !980, file: !1, line: 471, baseType: !283, size: 64, align: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "Alignment", scope: !980, file: !1, line: 472, baseType: !283, size: 64, align: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "MinimumAddress", scope: !980, file: !1, line: 473, baseType: !985, size: 128, align: 64, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "PHYSICAL_ADDRESS", file: !1, line: 57, baseType: !378)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "MaximumAddress", scope: !980, file: !1, line: 474, baseType: !985, size: 128, align: 64, offset: 256)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "Memory", scope: !977, file: !1, line: 521, baseType: !988, size: 384, align: 64)
!988 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Memory_26", file: !1, line: 476, size: 384, align: 64, elements: !989)
!989 = !{!990, !991, !992, !993}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !988, file: !1, line: 477, baseType: !283, size: 64, align: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "Alignment", scope: !988, file: !1, line: 478, baseType: !283, size: 64, align: 64, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "MinimumAddress", scope: !988, file: !1, line: 479, baseType: !985, size: 128, align: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "MaximumAddress", scope: !988, file: !1, line: 480, baseType: !985, size: 128, align: 64, offset: 256)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "Interrupt", scope: !977, file: !1, line: 522, baseType: !995, size: 128, align: 64)
!995 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Interrupt_27", file: !1, line: 482, size: 128, align: 64, elements: !996)
!996 = !{!997, !998}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "MinimumVector", scope: !995, file: !1, line: 483, baseType: !283, size: 64, align: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "MaximumVector", scope: !995, file: !1, line: 484, baseType: !283, size: 64, align: 64, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "Dma", scope: !977, file: !1, line: 523, baseType: !1000, size: 128, align: 64)
!1000 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Dma_28", file: !1, line: 486, size: 128, align: 64, elements: !1001)
!1001 = !{!1002, !1003}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "MinimumChannel", scope: !1000, file: !1, line: 487, baseType: !283, size: 64, align: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "MaximumChannel", scope: !1000, file: !1, line: 488, baseType: !283, size: 64, align: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "Generic", scope: !977, file: !1, line: 524, baseType: !1005, size: 384, align: 64)
!1005 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Generic_29", file: !1, line: 490, size: 384, align: 64, elements: !1006)
!1006 = !{!1007, !1008, !1009, !1010}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !1005, file: !1, line: 491, baseType: !283, size: 64, align: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "Alignment", scope: !1005, file: !1, line: 492, baseType: !283, size: 64, align: 64, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "MinimumAddress", scope: !1005, file: !1, line: 493, baseType: !985, size: 128, align: 64, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "MaximumAddress", scope: !1005, file: !1, line: 494, baseType: !985, size: 128, align: 64, offset: 256)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "DevicePrivate", scope: !977, file: !1, line: 525, baseType: !1012, size: 192, align: 64)
!1012 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_DevicePrivate_30", file: !1, line: 496, size: 192, align: 64, elements: !1013)
!1013 = !{!1014}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !1012, file: !1, line: 497, baseType: !955, size: 192, align: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "BusNumber", scope: !977, file: !1, line: 526, baseType: !1016, size: 256, align: 64)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_BusNumber_31", file: !1, line: 499, size: 256, align: 64, elements: !1017)
!1017 = !{!1018, !1019, !1020, !1021}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !1016, file: !1, line: 500, baseType: !283, size: 64, align: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "MinBusNumber", scope: !1016, file: !1, line: 501, baseType: !283, size: 64, align: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "MaxBusNumber", scope: !1016, file: !1, line: 502, baseType: !283, size: 64, align: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !1016, file: !1, line: 503, baseType: !283, size: 64, align: 64, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "AssignedResource", scope: !977, file: !1, line: 527, baseType: !1023, size: 64, align: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_AssignedResource_32", file: !1, line: 505, size: 64, align: 64, elements: !1024)
!1024 = !{!1025}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "AssignedResource", scope: !1023, file: !1, line: 506, baseType: !1026, size: 64, align: 64)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "PASSIGNED_RESOURCE", file: !1, line: 395, baseType: !286)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "SubAllocateFrom", scope: !977, file: !1, line: 528, baseType: !1028, size: 256, align: 64)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_SubAllocateFrom_33", file: !1, line: 508, size: 256, align: 64, elements: !1029)
!1029 = !{!1030, !1031, !1033, !1034}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !1028, file: !1, line: 509, baseType: !328, size: 8, align: 8)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !1028, file: !1, line: 510, baseType: !1032, size: 24, align: 8, offset: 8)
!1032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 24, align: 8, elements: !766)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "AssignedResource", scope: !1028, file: !1, line: 511, baseType: !1026, size: 64, align: 64, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "Transformation", scope: !1028, file: !1, line: 512, baseType: !985, size: 128, align: 64, offset: 128)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "ConfigData", scope: !977, file: !1, line: 529, baseType: !1036, size: 192, align: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_ConfigData_34", file: !1, line: 514, size: 192, align: 64, elements: !1037)
!1037 = !{!1038, !1039, !1040}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "Priority", scope: !1036, file: !1, line: 515, baseType: !283, size: 64, align: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved1", scope: !1036, file: !1, line: 516, baseType: !283, size: 64, align: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved2", scope: !1036, file: !1, line: 517, baseType: !283, size: 64, align: 64, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "ReadWriteConfig", scope: !697, file: !1, line: 1290, baseType: !1042, size: 256, align: 32)
!1042 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_ReadWriteConfig_74", file: !1, line: 1224, size: 256, align: 32, elements: !1043)
!1043 = !{!1044, !1045, !1046, !1047}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "WhichSpace", scope: !1042, file: !1, line: 1225, baseType: !283, size: 64, align: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "Buffer", scope: !1042, file: !1, line: 1226, baseType: !286, size: 64, align: 64, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "Offset", scope: !1042, file: !1, line: 1227, baseType: !283, size: 64, align: 64, offset: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !1042, file: !1, line: 1228, baseType: !283, size: 64, align: 64, offset: 192)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "SetLock", scope: !697, file: !1, line: 1291, baseType: !1049, size: 8, align: 8)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_SetLock_75", file: !1, line: 1230, size: 8, align: 8, elements: !1050)
!1050 = !{!1051}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "Lock", scope: !1049, file: !1, line: 1231, baseType: !327, size: 8, align: 8)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "QueryId", scope: !697, file: !1, line: 1292, baseType: !1053, size: 32, align: 32)
!1053 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_QueryId_76", file: !1, line: 1233, size: 32, align: 32, elements: !1054)
!1054 = !{!1055}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "IdType", scope: !1053, file: !1, line: 1234, baseType: !1056, size: 32, align: 32)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "BUS_QUERY_ID_TYPE", file: !1, line: 1136, baseType: !104)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "QueryDeviceText", scope: !697, file: !1, line: 1293, baseType: !1058, size: 96, align: 32)
!1058 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_QueryDeviceText_77", file: !1, line: 1236, size: 96, align: 32, elements: !1059)
!1059 = !{!1060, !1062}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceTextType", scope: !1058, file: !1, line: 1237, baseType: !1061, size: 32, align: 32)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "DEVICE_TEXT_TYPE", file: !1, line: 1141, baseType: !111)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "LocaleId", scope: !1058, file: !1, line: 1238, baseType: !1063, size: 64, align: 64, offset: 32)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "LCID", file: !1, line: 34, baseType: !283)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "UsageNotification", scope: !697, file: !1, line: 1294, baseType: !1065, size: 64, align: 32)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_UsageNotification_78", file: !1, line: 1240, size: 64, align: 32, elements: !1066)
!1066 = !{!1067, !1068, !1070}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "InPath", scope: !1065, file: !1, line: 1241, baseType: !327, size: 8, align: 8)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !1065, file: !1, line: 1242, baseType: !1069, size: 24, align: 8, offset: 8)
!1069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 24, align: 8, elements: !766)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !1065, file: !1, line: 1243, baseType: !1071, size: 32, align: 32, offset: 32)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "DEVICE_USAGE_NOTIFICATION_TYPE", file: !1, line: 1083, baseType: !115)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "WaitWake", scope: !697, file: !1, line: 1295, baseType: !1073, size: 32, align: 32)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_WaitWake_79", file: !1, line: 1245, size: 32, align: 32, elements: !1074)
!1074 = !{!1075}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "PowerState", scope: !1073, file: !1, line: 1246, baseType: !936, size: 32, align: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "PowerSequence", scope: !697, file: !1, line: 1296, baseType: !1077, size: 64, align: 32)
!1077 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_PowerSequence_80", file: !1, line: 1248, size: 64, align: 32, elements: !1078)
!1078 = !{!1079}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "PowerSequence", scope: !1077, file: !1, line: 1249, baseType: !1080, size: 64, align: 64)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "PPOWER_SEQUENCE", file: !1, line: 1128, baseType: !1081)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64, align: 64)
!1082 = !DICompositeType(tag: DW_TAG_structure_type, name: "_POWER_SEQUENCE", file: !1, line: 1123, size: 192, align: 64, elements: !1083)
!1083 = !{!1084, !1085, !1086}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "SequenceD1", scope: !1082, file: !1, line: 1124, baseType: !283, size: 64, align: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "SequenceD2", scope: !1082, file: !1, line: 1125, baseType: !283, size: 64, align: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "SequenceD3", scope: !1082, file: !1, line: 1126, baseType: !283, size: 64, align: 64, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "Power", scope: !697, file: !1, line: 1297, baseType: !1088, size: 160, align: 32)
!1088 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Power_81", file: !1, line: 1251, size: 160, align: 32, elements: !1089)
!1089 = !{!1090, !1091, !1093, !1099}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "SystemContext", scope: !1088, file: !1, line: 1252, baseType: !283, size: 64, align: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !1088, file: !1, line: 1253, baseType: !1092, size: 32, align: 32, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "POWER_STATE_TYPE", file: !1, line: 394, baseType: !121)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "State", scope: !1088, file: !1, line: 1254, baseType: !1094, size: 32, align: 32, offset: 96)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "POWER_STATE", file: !1, line: 389, baseType: !1095)
!1095 = !DICompositeType(tag: DW_TAG_union_type, name: "_POWER_STATE", file: !1, line: 385, size: 32, align: 32, elements: !1096)
!1096 = !{!1097, !1098}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "SystemState", scope: !1095, file: !1, line: 386, baseType: !936, size: 32, align: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceState", scope: !1095, file: !1, line: 387, baseType: !932, size: 32, align: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ShutdownType", scope: !1088, file: !1, line: 1255, baseType: !1100, size: 32, align: 32, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "POWER_ACTION", file: !1, line: 375, baseType: !125)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "StartDevice", scope: !697, file: !1, line: 1298, baseType: !1102, size: 128, align: 32)
!1102 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_StartDevice_82", file: !1, line: 1257, size: 128, align: 32, elements: !1103)
!1103 = !{!1104, !1178}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "AllocatedResources", scope: !1102, file: !1, line: 1258, baseType: !1105, size: 64, align: 64)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "PCM_RESOURCE_LIST", file: !1, line: 467, baseType: !1106)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64, align: 64)
!1107 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CM_RESOURCE_LIST", file: !1, line: 463, size: 576, align: 64, elements: !1108)
!1108 = !{!1109, !1110}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "Count", scope: !1107, file: !1, line: 464, baseType: !283, size: 64, align: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "List", scope: !1107, file: !1, line: 465, baseType: !1111, size: 512, align: 64, offset: 64)
!1111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1112, size: 512, align: 64, elements: !776)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "CM_FULL_RESOURCE_DESCRIPTOR", file: !1, line: 462, baseType: !1113)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CM_FULL_RESOURCE_DESCRIPTOR", file: !1, line: 457, size: 512, align: 64, elements: !1114)
!1114 = !{!1115, !1116, !1117}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "InterfaceType", scope: !1113, file: !1, line: 458, baseType: !951, size: 32, align: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "BusNumber", scope: !1113, file: !1, line: 459, baseType: !283, size: 64, align: 64, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "PartialResourceList", scope: !1113, file: !1, line: 460, baseType: !1118, size: 384, align: 64, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "CM_PARTIAL_RESOURCE_LIST", file: !1, line: 456, baseType: !1119)
!1119 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CM_PARTIAL_RESOURCE_LIST", file: !1, line: 450, size: 384, align: 64, elements: !1120)
!1120 = !{!1121, !1122, !1123, !1124}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "Version", scope: !1119, file: !1, line: 451, baseType: !270, size: 16, align: 16)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "Revision", scope: !1119, file: !1, line: 452, baseType: !270, size: 16, align: 16, offset: 16)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "Count", scope: !1119, file: !1, line: 453, baseType: !283, size: 64, align: 64, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "PartialDescriptors", scope: !1119, file: !1, line: 454, baseType: !1125, size: 224, align: 32, offset: 128)
!1125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1126, size: 224, align: 32, elements: !776)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "CM_PARTIAL_RESOURCE_DESCRIPTOR", file: !1, line: 448, baseType: !1127)
!1127 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CM_PARTIAL_RESOURCE_DESCRIPTOR", file: !1, line: 442, size: 224, align: 32, elements: !1128)
!1128 = !{!1129, !1130, !1131, !1132}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !1127, file: !1, line: 443, baseType: !328, size: 8, align: 8)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "ShareDisposition", scope: !1127, file: !1, line: 444, baseType: !328, size: 8, align: 8, offset: 8)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !1127, file: !1, line: 445, baseType: !270, size: 16, align: 16, offset: 16)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1127, file: !1, line: 446, baseType: !1133, size: 192, align: 32, offset: 32)
!1133 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion_u_15", file: !1, line: 432, size: 192, align: 32, elements: !1134)
!1134 = !{!1135, !1140, !1145, !1151, !1156, !1162, !1166, !1172}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "Generic", scope: !1133, file: !1, line: 433, baseType: !1136, size: 192, align: 32)
!1136 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Generic_16", file: !1, line: 397, size: 192, align: 32, elements: !1137)
!1137 = !{!1138, !1139}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "Start", scope: !1136, file: !1, line: 398, baseType: !985, size: 128, align: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !1136, file: !1, line: 399, baseType: !283, size: 64, align: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "Port", scope: !1133, file: !1, line: 434, baseType: !1141, size: 192, align: 32)
!1141 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Port_17", file: !1, line: 401, size: 192, align: 32, elements: !1142)
!1142 = !{!1143, !1144}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "Start", scope: !1141, file: !1, line: 402, baseType: !985, size: 128, align: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !1141, file: !1, line: 403, baseType: !283, size: 64, align: 64, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "Interrupt", scope: !1133, file: !1, line: 435, baseType: !1146, size: 192, align: 32)
!1146 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Interrupt_18", file: !1, line: 405, size: 192, align: 32, elements: !1147)
!1147 = !{!1148, !1149, !1150}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "Level", scope: !1146, file: !1, line: 406, baseType: !283, size: 64, align: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "Vector", scope: !1146, file: !1, line: 407, baseType: !283, size: 64, align: 64, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "Affinity", scope: !1146, file: !1, line: 408, baseType: !283, size: 64, align: 64, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "Memory", scope: !1133, file: !1, line: 436, baseType: !1152, size: 192, align: 32)
!1152 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Memory_19", file: !1, line: 410, size: 192, align: 32, elements: !1153)
!1153 = !{!1154, !1155}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "Start", scope: !1152, file: !1, line: 411, baseType: !985, size: 128, align: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !1152, file: !1, line: 412, baseType: !283, size: 64, align: 64, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "Dma", scope: !1133, file: !1, line: 437, baseType: !1157, size: 192, align: 32)
!1157 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Dma_20", file: !1, line: 414, size: 192, align: 32, elements: !1158)
!1158 = !{!1159, !1160, !1161}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "Channel", scope: !1157, file: !1, line: 415, baseType: !283, size: 64, align: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "Port", scope: !1157, file: !1, line: 416, baseType: !283, size: 64, align: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved1", scope: !1157, file: !1, line: 417, baseType: !283, size: 64, align: 64, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "DevicePrivate", scope: !1133, file: !1, line: 438, baseType: !1163, size: 192, align: 32)
!1163 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_DevicePrivate_21", file: !1, line: 419, size: 192, align: 32, elements: !1164)
!1164 = !{!1165}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !1163, file: !1, line: 420, baseType: !955, size: 192, align: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "BusNumber", scope: !1133, file: !1, line: 439, baseType: !1167, size: 192, align: 32)
!1167 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_BusNumber_22", file: !1, line: 422, size: 192, align: 32, elements: !1168)
!1168 = !{!1169, !1170, !1171}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "Start", scope: !1167, file: !1, line: 423, baseType: !283, size: 64, align: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !1167, file: !1, line: 424, baseType: !283, size: 64, align: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !1167, file: !1, line: 425, baseType: !283, size: 64, align: 64, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceSpecificData", scope: !1133, file: !1, line: 440, baseType: !1173, size: 192, align: 32)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_DeviceSpecificData_23", file: !1, line: 427, size: 192, align: 32, elements: !1174)
!1174 = !{!1175, !1176, !1177}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "DataSize", scope: !1173, file: !1, line: 428, baseType: !283, size: 64, align: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved1", scope: !1173, file: !1, line: 429, baseType: !283, size: 64, align: 64, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved2", scope: !1173, file: !1, line: 430, baseType: !283, size: 64, align: 64, offset: 128)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "AllocatedResourcesTranslated", scope: !1102, file: !1, line: 1259, baseType: !1105, size: 64, align: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "WMI", scope: !697, file: !1, line: 1299, baseType: !1180, size: 256, align: 32)
!1180 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_WMI_83", file: !1, line: 1261, size: 256, align: 32, elements: !1181)
!1181 = !{!1182, !1183, !1184, !1185}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "ProviderId", scope: !1180, file: !1, line: 1262, baseType: !437, size: 64, align: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "DataPath", scope: !1180, file: !1, line: 1263, baseType: !286, size: 64, align: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "BufferSize", scope: !1180, file: !1, line: 1264, baseType: !283, size: 64, align: 64, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "Buffer", scope: !1180, file: !1, line: 1265, baseType: !286, size: 64, align: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "Others", scope: !697, file: !1, line: 1300, baseType: !1187, size: 256, align: 32)
!1187 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Others_84", file: !1, line: 1267, size: 256, align: 32, elements: !1188)
!1188 = !{!1189, !1190, !1191, !1192}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "Argument1", scope: !1187, file: !1, line: 1268, baseType: !286, size: 64, align: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "Argument2", scope: !1187, file: !1, line: 1269, baseType: !286, size: 64, align: 64, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "Argument3", scope: !1187, file: !1, line: 1270, baseType: !286, size: 64, align: 64, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "Argument4", scope: !1187, file: !1, line: 1271, baseType: !286, size: 64, align: 64, offset: 192)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceObject", scope: !690, file: !1, line: 1308, baseType: !262, size: 64, align: 64, offset: 288)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "FileObject", scope: !690, file: !1, line: 1309, baseType: !811, size: 64, align: 64, offset: 352)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "CompletionRoutine", scope: !690, file: !1, line: 1310, baseType: !1196, size: 64, align: 64, offset: 416)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64, align: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!300, !262, !1199, !286}
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "PIRP", file: !1, line: 1068, baseType: !603)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "Context", scope: !690, file: !1, line: 1311, baseType: !286, size: 64, align: 64, offset: 480)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "PacketType", scope: !686, file: !1, line: 1026, baseType: !283, size: 64, align: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "OriginalFileObject", scope: !655, file: !1, line: 1037, baseType: !811, size: 64, align: 64, offset: 576)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "Apc", scope: !652, file: !1, line: 1041, baseType: !1204, size: 768, align: 64)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "KAPC", file: !1, line: 137, baseType: !1205)
!1205 = !DICompositeType(tag: DW_TAG_structure_type, name: "_KAPC", file: !1, line: 120, size: 768, align: 64, elements: !1206)
!1206 = !{!1207, !1208, !1209, !1210, !1213, !1214, !1225, !1229, !1230, !1231, !1232, !1233, !1234, !1235}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !1205, file: !1, line: 121, baseType: !267, size: 16, align: 16)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !1205, file: !1, line: 122, baseType: !267, size: 16, align: 16, offset: 16)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "Spare0", scope: !1205, file: !1, line: 123, baseType: !283, size: 64, align: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "Thread", scope: !1205, file: !1, line: 124, baseType: !1211, size: 64, align: 64, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64, align: 64)
!1212 = !DICompositeType(tag: DW_TAG_structure_type, name: "_KTHREAD", file: !1, line: 106, flags: DIFlagFwdDecl)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "ApcListEntry", scope: !1205, file: !1, line: 125, baseType: !411, size: 128, align: 64, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "KernelRoutine", scope: !1205, file: !1, line: 126, baseType: !1215, size: 64, align: 64, offset: 320)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64, align: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{null, !1218, !1219, !1224, !1224, !1224}
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64, align: 64)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64, align: 64)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "PKNORMAL_ROUTINE", file: !1, line: 119, baseType: !1221)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64, align: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{null, !286, !286, !286}
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "RundownRoutine", scope: !1205, file: !1, line: 128, baseType: !1226, size: 64, align: 64, offset: 384)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64, align: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{null, !1218}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "NormalRoutine", scope: !1205, file: !1, line: 129, baseType: !1221, size: 64, align: 64, offset: 448)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "NormalContext", scope: !1205, file: !1, line: 130, baseType: !286, size: 64, align: 64, offset: 512)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "SystemArgument1", scope: !1205, file: !1, line: 131, baseType: !286, size: 64, align: 64, offset: 576)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "SystemArgument2", scope: !1205, file: !1, line: 132, baseType: !286, size: 64, align: 64, offset: 640)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ApcStateIndex", scope: !1205, file: !1, line: 133, baseType: !621, size: 8, align: 8, offset: 704)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ApcMode", scope: !1205, file: !1, line: 134, baseType: !620, size: 8, align: 8, offset: 712)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "Inserted", scope: !1205, file: !1, line: 135, baseType: !327, size: 8, align: 8, offset: 720)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "CompletionKey", scope: !652, file: !1, line: 1042, baseType: !286, size: 64, align: 64)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFILE_NETWORK_OPEN_INFORMATION", file: !1, line: 288, baseType: !505)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "ReleaseForModWrite", scope: !320, file: !1, line: 853, baseType: !1239, size: 64, align: 64, offset: 1600)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64, align: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!300, !330, !520, !263}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "AcquireForCcFlush", scope: !320, file: !1, line: 855, baseType: !1243, size: 64, align: 64, offset: 1664)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64, align: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!300, !330, !263}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "ReleaseForCcFlush", scope: !320, file: !1, line: 856, baseType: !1243, size: 64, align: 64, offset: 1728)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "DriverInit", scope: !277, file: !1, line: 953, baseType: !1248, size: 64, align: 64, offset: 704)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64, align: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!300, !276, !315}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "DriverStartIo", scope: !277, file: !1, line: 954, baseType: !647, size: 64, align: 64, offset: 768)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "DriverUnload", scope: !277, file: !1, line: 955, baseType: !1253, size: 64, align: 64, offset: 832)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64, align: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{null, !276}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "MajorFunction", scope: !277, file: !1, line: 956, baseType: !1257, size: 1792, align: 64, offset: 896)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1258, size: 1792, align: 64, elements: !1262)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "PDRIVER_DISPATCH", file: !1, line: 787, baseType: !1259)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64, align: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!300, !263, !603}
!1262 = !{!1263}
!1263 = !DISubrange(count: 28)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "NextDevice", scope: !264, file: !1, line: 905, baseType: !263, size: 64, align: 64, offset: 192)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "AttachedDevice", scope: !264, file: !1, line: 906, baseType: !263, size: 64, align: 64, offset: 256)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "CurrentIrp", scope: !264, file: !1, line: 907, baseType: !603, size: 64, align: 64, offset: 320)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "Timer", scope: !264, file: !1, line: 908, baseType: !1268, size: 64, align: 64, offset: 384)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "PIO_TIMER", file: !1, line: 113, baseType: !1269)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64, align: 64)
!1270 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_TIMER", file: !1, line: 112, flags: DIFlagFwdDecl)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !264, file: !1, line: 909, baseType: !283, size: 64, align: 64, offset: 448)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "Characteristics", scope: !264, file: !1, line: 910, baseType: !283, size: 64, align: 64, offset: 512)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "Vpb", scope: !264, file: !1, line: 911, baseType: !337, size: 64, align: 64, offset: 576)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceExtension", scope: !264, file: !1, line: 912, baseType: !286, size: 64, align: 64, offset: 640)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceType", scope: !264, file: !1, line: 913, baseType: !283, size: 64, align: 64, offset: 704)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "StackSize", scope: !264, file: !1, line: 914, baseType: !621, size: 8, align: 8, offset: 768)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "Queue", scope: !264, file: !1, line: 915, baseType: !1278, size: 640, align: 64, offset: 832)
!1278 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion_Queue_43", file: !1, line: 895, size: 640, align: 64, elements: !1279)
!1279 = !{!1280, !1281}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "ListEntry", scope: !1278, file: !1, line: 896, baseType: !411, size: 128, align: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "Wcb", scope: !1278, file: !1, line: 897, baseType: !1282, size: 640, align: 64)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "WAIT_CONTEXT_BLOCK", file: !1, line: 894, baseType: !1283)
!1283 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WAIT_CONTEXT_BLOCK", file: !1, line: 884, size: 640, align: 64, elements: !1284)
!1284 = !{!1285, !1286, !1291, !1292, !1293, !1294, !1295}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "WaitQueueEntry", scope: !1283, file: !1, line: 885, baseType: !661, size: 256, align: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceRoutine", scope: !1283, file: !1, line: 886, baseType: !1287, size: 64, align: 64, offset: 256)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64, align: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!1290, !263, !603, !286, !286}
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "IO_ALLOCATION_ACTION", file: !1, line: 864, baseType: !135)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceContext", scope: !1283, file: !1, line: 888, baseType: !286, size: 64, align: 64, offset: 320)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfMapRegisters", scope: !1283, file: !1, line: 889, baseType: !283, size: 64, align: 64, offset: 384)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceObject", scope: !1283, file: !1, line: 890, baseType: !286, size: 64, align: 64, offset: 448)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "CurrentIrp", scope: !1283, file: !1, line: 891, baseType: !286, size: 64, align: 64, offset: 512)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "BufferChainingDpc", scope: !1283, file: !1, line: 892, baseType: !1296, size: 64, align: 64, offset: 576)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "PKDPC", file: !1, line: 153, baseType: !1297)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64, align: 64)
!1298 = !DICompositeType(tag: DW_TAG_structure_type, name: "_KDPC", file: !1, line: 140, size: 512, align: 64, elements: !1299)
!1299 = !{!1300, !1301, !1302, !1303, !1304, !1308, !1309, !1310, !1311}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !1298, file: !1, line: 141, baseType: !267, size: 16, align: 16)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "Number", scope: !1298, file: !1, line: 142, baseType: !328, size: 8, align: 8, offset: 16)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "Importance", scope: !1298, file: !1, line: 143, baseType: !328, size: 8, align: 8, offset: 24)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "DpcListEntry", scope: !1298, file: !1, line: 144, baseType: !411, size: 128, align: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "DeferredRoutine", scope: !1298, file: !1, line: 145, baseType: !1305, size: 64, align: 64, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64, align: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{null, !1297, !286, !286, !286}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "DeferredContext", scope: !1298, file: !1, line: 147, baseType: !286, size: 64, align: 64, offset: 256)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "SystemArgument1", scope: !1298, file: !1, line: 148, baseType: !286, size: 64, align: 64, offset: 320)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "SystemArgument2", scope: !1298, file: !1, line: 149, baseType: !286, size: 64, align: 64, offset: 384)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "Lock", scope: !1298, file: !1, line: 150, baseType: !1312, size: 64, align: 64, offset: 448)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "PULONG_PTR", file: !1, line: 14, baseType: !1313)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "AlignmentRequirement", scope: !264, file: !1, line: 916, baseType: !283, size: 64, align: 64, offset: 1472)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceQueue", scope: !264, file: !1, line: 917, baseType: !1316, size: 320, align: 64, offset: 1536)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "KDEVICE_QUEUE", file: !1, line: 650, baseType: !1317)
!1317 = !DICompositeType(tag: DW_TAG_structure_type, name: "_KDEVICE_QUEUE", file: !1, line: 643, size: 320, align: 64, elements: !1318)
!1318 = !{!1319, !1320, !1321, !1322, !1323}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !1317, file: !1, line: 644, baseType: !267, size: 16, align: 16)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !1317, file: !1, line: 645, baseType: !267, size: 16, align: 16, offset: 16)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceListHead", scope: !1317, file: !1, line: 646, baseType: !411, size: 128, align: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "Lock", scope: !1317, file: !1, line: 647, baseType: !563, size: 64, align: 64, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "Busy", scope: !1317, file: !1, line: 648, baseType: !327, size: 8, align: 8, offset: 256)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "Dpc", scope: !264, file: !1, line: 918, baseType: !1325, size: 512, align: 64, offset: 1856)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "KDPC", file: !1, line: 152, baseType: !1298)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ActiveThreadCount", scope: !264, file: !1, line: 919, baseType: !283, size: 64, align: 64, offset: 2368)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "SecurityDescriptor", scope: !264, file: !1, line: 920, baseType: !748, size: 64, align: 64, offset: 2432)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceLock", scope: !264, file: !1, line: 921, baseType: !398, size: 256, align: 64, offset: 2496)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "SectorSize", scope: !264, file: !1, line: 922, baseType: !270, size: 16, align: 16, offset: 2752)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "Spare1", scope: !264, file: !1, line: 923, baseType: !270, size: 16, align: 16, offset: 2768)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceObjectExtension", scope: !264, file: !1, line: 924, baseType: !1332, size: 64, align: 64, offset: 2816)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64, align: 64)
!1333 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DEVOBJ_EXTENSION", file: !1, line: 929, size: 128, align: 64, elements: !1334)
!1334 = !{!1335, !1336, !1337}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !1333, file: !1, line: 930, baseType: !267, size: 16, align: 16)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !1333, file: !1, line: 931, baseType: !270, size: 16, align: 16, offset: 16)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceObject", scope: !1333, file: !1, line: 932, baseType: !262, size: 64, align: 64, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !264, file: !1, line: 925, baseType: !286, size: 64, align: 64, offset: 2880)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "PDO", scope: !259, file: !1, line: 1387, baseType: !262, size: 64, align: 64, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "TopOfStack", scope: !259, file: !1, line: 1388, baseType: !262, size: 64, align: 64, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "EnableCount", scope: !259, file: !1, line: 1389, baseType: !273, size: 64, align: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "UpperConnectData", scope: !259, file: !1, line: 1390, baseType: !1343, size: 128, align: 64, offset: 256)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONNECT_DATA", file: !1, line: 1348, baseType: !1344)
!1344 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CONNECT_DATA", file: !1, line: 1344, size: 128, align: 64, elements: !1345)
!1345 = !{!1346, !1347}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "ClassDeviceObject", scope: !1344, file: !1, line: 1345, baseType: !262, size: 64, align: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "ClassService", scope: !1344, file: !1, line: 1346, baseType: !286, size: 64, align: 64, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "UpperContext", scope: !259, file: !1, line: 1391, baseType: !286, size: 64, align: 64, offset: 384)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "UpperInitializationRoutine", scope: !259, file: !1, line: 1392, baseType: !1350, size: 64, align: 64, offset: 448)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64, align: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!300, !286, !286, !1353, !1358, !1361}
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64, align: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!300, !286, !1356, !327}
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "PUCHAR", file: !1, line: 28, baseType: !1357)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64, align: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!300, !286, !328, !327}
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "PBOOLEAN", file: !1, line: 80, baseType: !1362)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "UpperIsrHook", scope: !259, file: !1, line: 1398, baseType: !1364, size: 64, align: 64, offset: 512)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64, align: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!327, !286, !1367, !1376, !328, !1356, !1361, !1385}
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "PKEYBOARD_INPUT_DATA", file: !1, line: 1343, baseType: !1368)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64, align: 64)
!1369 = !DICompositeType(tag: DW_TAG_structure_type, name: "_KEYBOARD_INPUT_DATA", file: !1, line: 1336, size: 128, align: 64, elements: !1370)
!1370 = !{!1371, !1372, !1373, !1374, !1375}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "UnitId", scope: !1369, file: !1, line: 1337, baseType: !270, size: 16, align: 16)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "MakeCode", scope: !1369, file: !1, line: 1338, baseType: !270, size: 16, align: 16, offset: 16)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !1369, file: !1, line: 1339, baseType: !270, size: 16, align: 16, offset: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !1369, file: !1, line: 1340, baseType: !270, size: 16, align: 16, offset: 48)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "ExtraInformation", scope: !1369, file: !1, line: 1341, baseType: !283, size: 64, align: 64, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "POUTPUT_PACKET", file: !1, line: 1361, baseType: !1377)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64, align: 64)
!1378 = !DICompositeType(tag: DW_TAG_structure_type, name: "_OUTPUT_PACKET", file: !1, line: 1355, size: 256, align: 64, elements: !1379)
!1379 = !{!1380, !1381, !1382, !1383}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "Bytes", scope: !1378, file: !1, line: 1356, baseType: !1356, size: 64, align: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "CurrentByte", scope: !1378, file: !1, line: 1357, baseType: !283, size: 64, align: 64, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "ByteCount", scope: !1378, file: !1, line: 1358, baseType: !283, size: 64, align: 64, offset: 128)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "State", scope: !1378, file: !1, line: 1359, baseType: !1384, size: 32, align: 32, offset: 192)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "TRANSMIT_STATE", file: !1, line: 1354, baseType: !140)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "PKEYBOARD_SCAN_STATE", file: !1, line: 1367, baseType: !1386)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "IsrWritePort", scope: !259, file: !1, line: 1401, baseType: !1388, size: 64, align: 64, offset: 576)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64, align: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{null, !286, !328}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "QueueKeyboardPacket", scope: !259, file: !1, line: 1402, baseType: !895, size: 64, align: 64, offset: 640)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "CallContext", scope: !259, file: !1, line: 1403, baseType: !286, size: 64, align: 64, offset: 704)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceState", scope: !259, file: !1, line: 1404, baseType: !932, size: 32, align: 32, offset: 768)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "Started", scope: !259, file: !1, line: 1405, baseType: !327, size: 8, align: 8, offset: 800)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "SurpriseRemoved", scope: !259, file: !1, line: 1406, baseType: !327, size: 8, align: 8, offset: 808)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "Removed", scope: !259, file: !1, line: 1407, baseType: !327, size: 8, align: 8, offset: 816)
!1397 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!1398 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64, align: 64)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64, align: 64)
!1401 = !DICompositeType(tag: DW_TAG_structure_type, name: "_INTERNAL_I8042_HOOK_KEYBOARD", file: !1, line: 1368, size: 384, align: 64, elements: !1402)
!1402 = !{!1403, !1404, !1405, !1406, !1407, !1408}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "Context", scope: !1401, file: !1, line: 1369, baseType: !286, size: 64, align: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "InitializationRoutine", scope: !1401, file: !1, line: 1370, baseType: !1350, size: 64, align: 64, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "IsrRoutine", scope: !1401, file: !1, line: 1376, baseType: !1364, size: 64, align: 64, offset: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "IsrWritePort", scope: !1401, file: !1, line: 1379, baseType: !1388, size: 64, align: 64, offset: 192)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "QueueKeyboardPacket", scope: !1401, file: !1, line: 1380, baseType: !895, size: 64, align: 64, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "CallContext", scope: !1401, file: !1, line: 1381, baseType: !286, size: 64, align: 64, offset: 320)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64, align: 64)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "IO_STACK_LOCATION", file: !1, line: 1313, baseType: !690)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64, align: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{null, !286, !286, !286, !286}
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64, align: 64)
!1415 = !{!1416, !1420, !1421, !1425, !1428, !1429, !1432, !1433, !1434, !1435, !1436, !1439, !1442, !1447, !1450, !1451, !1454, !1457, !1470, !1471, !1476, !1477, !1483, !1484, !1487, !1490, !1493, !1496, !1499, !1503, !1506, !1509, !1512, !1513, !1516, !1519, !1537, !1560, !1563, !1566, !1569, !1572, !1573, !1574, !1577, !1580, !1583, !1588, !1592, !1595, !1599, !1602, !1605, !1609, !1612, !1613, !1618, !1621, !1622, !1623, !1635, !1636, !1637, !1638, !1661, !1664, !1676, !1681, !1684, !1690, !1693, !1699, !1702, !1719}
!1416 = !DISubprogram(name: "errorFn", scope: !1, file: !1, line: 1631, type: !1417, isLocal: false, isDefinition: true, scopeLine: 1632, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @errorFn, variables: !1419)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{null}
!1419 = !{}
!1420 = !DISubprogram(name: "_BLAST_init", scope: !1, file: !1, line: 1654, type: !1417, isLocal: false, isDefinition: true, scopeLine: 1655, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @_BLAST_init, variables: !1419)
!1421 = !DISubprogram(name: "DriverEntry", scope: !1, file: !1, line: 1676, type: !1422, isLocal: false, isDefinition: true, scopeLine: 1677, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DRIVER_OBJECT*, %struct._UNICODE_STRING*)* @DriverEntry, variables: !1419)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!300, !1424, !315}
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "PDRIVER_OBJECT", file: !1, line: 959, baseType: !276)
!1425 = !DISubprogram(name: "KbFilter_AddDevice", scope: !1, file: !1, line: 1691, type: !1426, isLocal: false, isDefinition: true, scopeLine: 1692, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DRIVER_OBJECT*, %struct._DEVICE_OBJECT*)* @KbFilter_AddDevice, variables: !1419)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!300, !1424, !262}
!1428 = !DISubprogram(name: "KbFilter_Complete", scope: !1, file: !1, line: 1723, type: !1197, isLocal: false, isDefinition: true, scopeLine: 1724, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)* @KbFilter_Complete, variables: !1419)
!1429 = !DISubprogram(name: "KbFilter_CreateClose", scope: !1, file: !1, line: 1734, type: !1430, isLocal: false, isDefinition: true, scopeLine: 1735, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @KbFilter_CreateClose, variables: !1419)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!300, !262, !1199}
!1432 = !DISubprogram(name: "KbFilter_DispatchPassThrough", scope: !1, file: !1, line: 1791, type: !1430, isLocal: false, isDefinition: true, scopeLine: 1792, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @KbFilter_DispatchPassThrough, variables: !1419)
!1433 = !DISubprogram(name: "KbFilter_InternIoCtl", scope: !1, file: !1, line: 1813, type: !1430, isLocal: false, isDefinition: true, scopeLine: 1814, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @KbFilter_InternIoCtl, variables: !1419)
!1434 = !DISubprogram(name: "KbFilter_PnP", scope: !1, file: !1, line: 1948, type: !1430, isLocal: false, isDefinition: true, scopeLine: 1949, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @KbFilter_PnP, variables: !1419)
!1435 = !DISubprogram(name: "KbFilter_Power", scope: !1, file: !1, line: 2181, type: !1430, isLocal: false, isDefinition: true, scopeLine: 2182, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @KbFilter_Power, variables: !1419)
!1436 = !DISubprogram(name: "KbFilter_InitializationRoutine", scope: !1, file: !1, line: 2245, type: !1437, isLocal: false, isDefinition: true, scopeLine: 2251, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, i8*, i64 (i8*, i8*, i8)*, i64 (i8*, i8, i8)*, i8*)* @KbFilter_InitializationRoutine, variables: !1419)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!300, !262, !286, !1353, !1358, !1361}
!1439 = !DISubprogram(name: "KbFilter_IsrHook", scope: !1, file: !1, line: 2274, type: !1440, isLocal: false, isDefinition: true, scopeLine: 2277, flags: DIFlagPrototyped, isOptimized: false, function: i8 (%struct._DEVICE_OBJECT*, %struct._KEYBOARD_INPUT_DATA*, %struct._OUTPUT_PACKET*, i8, i8*, i8*, i32*)* @KbFilter_IsrHook, variables: !1419)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!327, !262, !1367, !1376, !328, !1356, !1361, !1385}
!1442 = !DISubprogram(name: "KbFilter_ServiceCallback", scope: !1, file: !1, line: 2304, type: !1443, isLocal: false, isDefinition: true, scopeLine: 2306, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._DEVICE_OBJECT*, %struct._KEYBOARD_INPUT_DATA*, %struct._KEYBOARD_INPUT_DATA*, i64*)* @KbFilter_ServiceCallback, variables: !1419)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{null, !262, !1367, !1367, !1445}
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "PULONG", file: !1, line: 29, baseType: !1446)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!1447 = !DISubprogram(name: "KbFilter_Unload", scope: !1, file: !1, line: 2320, type: !1448, isLocal: false, isDefinition: true, scopeLine: 2321, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._DRIVER_OBJECT*)* @KbFilter_Unload, variables: !1419)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{null, !1424}
!1450 = !DISubprogram(name: "stub_driver_init", scope: !1, file: !1, line: 2350, type: !1417, isLocal: false, isDefinition: true, scopeLine: 2351, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stub_driver_init, variables: !1419)
!1451 = !DISubprogram(name: "main", scope: !1, file: !1, line: 2364, type: !1452, isLocal: false, isDefinition: true, scopeLine: 2365, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !1419)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!1398}
!1454 = !DISubprogram(name: "malloc", scope: !1, file: !1, line: 2546, type: !1455, isLocal: false, isDefinition: true, scopeLine: 2547, flags: DIFlagPrototyped, isOptimized: false, function: i8* (i32)* @malloc, variables: !1419)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!1414, !1398}
!1457 = !DISubprogram(name: "ExAcquireFastMutex", scope: !1, file: !1, line: 2558, type: !1458, isLocal: false, isDefinition: true, scopeLine: 2559, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._FAST_MUTEX*)* @ExAcquireFastMutex, variables: !1419)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{null, !1460}
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFAST_MUTEX", file: !1, line: 704, baseType: !1461)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64, align: 64)
!1462 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FAST_MUTEX", file: !1, line: 697, size: 512, align: 64, elements: !1463)
!1463 = !{!1464, !1465, !1467, !1468, !1469}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "Count", scope: !1462, file: !1, line: 698, baseType: !273, size: 64, align: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "Owner", scope: !1462, file: !1, line: 699, baseType: !1466, size: 64, align: 64, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "PKTHREAD", file: !1, line: 107, baseType: !1211)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "Contention", scope: !1462, file: !1, line: 700, baseType: !283, size: 64, align: 64, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "Event", scope: !1462, file: !1, line: 701, baseType: !398, size: 256, align: 64, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "OldIrql", scope: !1462, file: !1, line: 702, baseType: !283, size: 64, align: 64, offset: 448)
!1470 = !DISubprogram(name: "ExReleaseFastMutex", scope: !1, file: !1, line: 2566, type: !1458, isLocal: false, isDefinition: true, scopeLine: 2567, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._FAST_MUTEX*)* @ExReleaseFastMutex, variables: !1419)
!1471 = !DISubprogram(name: "ExAllocatePoolWithTag", scope: !1, file: !1, line: 2576, type: !1472, isLocal: false, isDefinition: true, scopeLine: 2578, flags: DIFlagPrototyped, isOptimized: false, function: i8* (i32, i64, i64)* @ExAllocatePoolWithTag, variables: !1419)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!286, !1474, !1475, !283}
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "POOL_TYPE", file: !1, line: 696, baseType: !149)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIZE_T", file: !1, line: 15, baseType: !437)
!1476 = !DISubprogram(name: "ExFreePool", scope: !1, file: !1, line: 2590, type: !896, isLocal: false, isDefinition: true, scopeLine: 2591, flags: DIFlagPrototyped, isOptimized: false, function: void (i8*)* @ExFreePool, variables: !1419)
!1477 = !DISubprogram(name: "ExfInterlockedInsertHeadList", scope: !1, file: !1, line: 2600, type: !1478, isLocal: false, isDefinition: true, scopeLine: 2603, flags: DIFlagPrototyped, isOptimized: false, function: %struct._LIST_ENTRY* (%struct._LIST_ENTRY*, %struct._LIST_ENTRY*, i64*)* @ExfInterlockedInsertHeadList, variables: !1419)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!1480, !1480, !1480, !1481}
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "PLIST_ENTRY", file: !1, line: 86, baseType: !415)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "PKSPIN_LOCK", file: !1, line: 200, baseType: !1482)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64, align: 64)
!1483 = !DISubprogram(name: "ExfInterlockedInsertTailList", scope: !1, file: !1, line: 2612, type: !1478, isLocal: false, isDefinition: true, scopeLine: 2615, flags: DIFlagPrototyped, isOptimized: false, function: %struct._LIST_ENTRY* (%struct._LIST_ENTRY*, %struct._LIST_ENTRY*, i64*)* @ExfInterlockedInsertTailList, variables: !1419)
!1484 = !DISubprogram(name: "ExfInterlockedRemoveHeadList", scope: !1, file: !1, line: 2623, type: !1485, isLocal: false, isDefinition: true, scopeLine: 2625, flags: DIFlagPrototyped, isOptimized: false, function: %struct._LIST_ENTRY* (%struct._LIST_ENTRY*, i64*)* @ExfInterlockedRemoveHeadList, variables: !1419)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!1480, !1480, !1481}
!1487 = !DISubprogram(name: "IoAllocateMdl", scope: !1, file: !1, line: 2634, type: !1488, isLocal: false, isDefinition: true, scopeLine: 2636, flags: DIFlagPrototyped, isOptimized: false, function: %struct._MDL* (i8*, i64, i8, i8, %struct._IRP*)* @IoAllocateMdl, variables: !1419)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!569, !286, !283, !327, !327, !1199}
!1490 = !DISubprogram(name: "IoAttachDeviceToDeviceStack", scope: !1, file: !1, line: 2662, type: !1491, isLocal: false, isDefinition: true, scopeLine: 2663, flags: DIFlagPrototyped, isOptimized: false, function: %struct._DEVICE_OBJECT* (%struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT*)* @IoAttachDeviceToDeviceStack, variables: !1419)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!262, !262, !262}
!1493 = !DISubprogram(name: "IoBuildAsynchronousFsdRequest", scope: !1, file: !1, line: 2689, type: !1494, isLocal: false, isDefinition: true, scopeLine: 2692, flags: DIFlagPrototyped, isOptimized: false, function: %struct._IRP* (i64, %struct._DEVICE_OBJECT*, i8*, i64, %union._LARGE_INTEGER*, %struct._IO_STATUS_BLOCK*)* @IoBuildAsynchronousFsdRequest, variables: !1419)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!1199, !283, !262, !286, !283, !425, !427}
!1496 = !DISubprogram(name: "IoBuildDeviceIoControlRequest", scope: !1, file: !1, line: 2726, type: !1497, isLocal: false, isDefinition: true, scopeLine: 2730, flags: DIFlagPrototyped, isOptimized: false, function: %struct._IRP* (i64, %struct._DEVICE_OBJECT*, i8*, i64, i8*, i64, i8, %struct._KEVENT*, %struct._IO_STATUS_BLOCK*)* @IoBuildDeviceIoControlRequest, variables: !1419)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!1199, !283, !262, !286, !283, !286, !283, !327, !547, !427}
!1499 = !DISubprogram(name: "IoCreateDevice", scope: !1, file: !1, line: 2760, type: !1500, isLocal: false, isDefinition: true, scopeLine: 2763, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DRIVER_OBJECT*, i64, %struct._UNICODE_STRING*, i64, i64, i8, %struct._DEVICE_OBJECT**)* @IoCreateDevice, variables: !1419)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!300, !1424, !283, !315, !283, !283, !327, !1502}
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!1503 = !DISubprogram(name: "IoCreateSymbolicLink", scope: !1, file: !1, line: 2790, type: !1504, isLocal: false, isDefinition: true, scopeLine: 2791, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._UNICODE_STRING*, %struct._UNICODE_STRING*)* @IoCreateSymbolicLink, variables: !1419)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!300, !315, !315}
!1506 = !DISubprogram(name: "IoDeleteDevice", scope: !1, file: !1, line: 2812, type: !1507, isLocal: false, isDefinition: true, scopeLine: 2813, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._DEVICE_OBJECT*)* @IoDeleteDevice, variables: !1419)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{null, !262}
!1509 = !DISubprogram(name: "IoDeleteSymbolicLink", scope: !1, file: !1, line: 2820, type: !1510, isLocal: false, isDefinition: true, scopeLine: 2821, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._UNICODE_STRING*)* @IoDeleteSymbolicLink, variables: !1419)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!300, !315}
!1512 = !DISubprogram(name: "IoDetachDevice", scope: !1, file: !1, line: 2842, type: !1507, isLocal: false, isDefinition: true, scopeLine: 2843, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._DEVICE_OBJECT*)* @IoDetachDevice, variables: !1419)
!1513 = !DISubprogram(name: "IoFreeIrp", scope: !1, file: !1, line: 2850, type: !1514, isLocal: false, isDefinition: true, scopeLine: 2851, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._IRP*)* @IoFreeIrp, variables: !1419)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{null, !1199}
!1516 = !DISubprogram(name: "IoFreeMdl", scope: !1, file: !1, line: 2858, type: !1517, isLocal: false, isDefinition: true, scopeLine: 2859, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._MDL*)* @IoFreeMdl, variables: !1419)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{null, !569}
!1519 = !DISubprogram(name: "IoGetConfigurationInformation", scope: !1, file: !1, line: 2866, type: !1520, isLocal: false, isDefinition: true, scopeLine: 2867, flags: DIFlagPrototyped, isOptimized: false, function: %struct._CONFIGURATION_INFORMATION* ()* @IoGetConfigurationInformation, variables: !1419)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!1522}
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "PCONFIGURATION_INFORMATION", file: !1, line: 1330, baseType: !1523)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64, align: 64)
!1524 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIGURATION_INFORMATION", file: !1, line: 1316, size: 640, align: 64, elements: !1525)
!1525 = !{!1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "DiskCount", scope: !1524, file: !1, line: 1317, baseType: !283, size: 64, align: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "FloppyCount", scope: !1524, file: !1, line: 1318, baseType: !283, size: 64, align: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "CdRomCount", scope: !1524, file: !1, line: 1319, baseType: !283, size: 64, align: 64, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "TapeCount", scope: !1524, file: !1, line: 1320, baseType: !283, size: 64, align: 64, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "ScsiPortCount", scope: !1524, file: !1, line: 1321, baseType: !283, size: 64, align: 64, offset: 256)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "SerialCount", scope: !1524, file: !1, line: 1322, baseType: !283, size: 64, align: 64, offset: 320)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "ParallelCount", scope: !1524, file: !1, line: 1323, baseType: !283, size: 64, align: 64, offset: 384)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "AtDiskPrimaryAddressClaimed", scope: !1524, file: !1, line: 1324, baseType: !327, size: 8, align: 8, offset: 448)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "AtDiskSecondaryAddressClaimed", scope: !1524, file: !1, line: 1325, baseType: !327, size: 8, align: 8, offset: 456)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "Version", scope: !1524, file: !1, line: 1326, baseType: !283, size: 64, align: 64, offset: 512)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "MediumChangerCount", scope: !1524, file: !1, line: 1327, baseType: !283, size: 64, align: 64, offset: 576)
!1537 = !DISubprogram(name: "IoQueryDeviceDescription", scope: !1, file: !1, line: 2894, type: !1538, isLocal: false, isDefinition: true, scopeLine: 2908, flags: DIFlagPrototyped, isOptimized: false, function: i64 (i32*, i64*, i32*, i64*, i32*, i64*, i64 (i8*, %struct._UNICODE_STRING*, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**)*, i8*)* @IoQueryDeviceDescription, variables: !1419)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!300, !1540, !1445, !1542, !1445, !1542, !1445, !1544, !286}
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "PINTERFACE_TYPE", file: !1, line: 322, baseType: !1541)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "PCONFIGURATION_TYPE", file: !1, line: 602, baseType: !1543)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64, align: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!300, !286, !315, !951, !283, !1547, !1559, !283, !1547, !1559, !283, !1547}
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64, align: 64)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "PKEY_VALUE_FULL_INFORMATION", file: !1, line: 347, baseType: !1549)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64, align: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "_KEY_VALUE_FULL_INFORMATION", file: !1, line: 339, size: 384, align: 64, elements: !1551)
!1551 = !{!1552, !1553, !1554, !1555, !1556, !1557}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "TitleIndex", scope: !1550, file: !1, line: 340, baseType: !283, size: 64, align: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !1550, file: !1, line: 341, baseType: !283, size: 64, align: 64, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "DataOffset", scope: !1550, file: !1, line: 342, baseType: !283, size: 64, align: 64, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "DataLength", scope: !1550, file: !1, line: 343, baseType: !283, size: 64, align: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "NameLength", scope: !1550, file: !1, line: 344, baseType: !283, size: 64, align: 64, offset: 256)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "Name", scope: !1550, file: !1, line: 345, baseType: !1558, size: 16, align: 16, offset: 320)
!1558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 16, align: 16, elements: !776)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIGURATION_TYPE", file: !1, line: 601, baseType: !166)
!1560 = !DISubprogram(name: "IoRegisterDeviceInterface", scope: !1, file: !1, line: 2932, type: !1561, isLocal: false, isDefinition: true, scopeLine: 2936, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._GUID*, %struct._UNICODE_STRING*, %struct._UNICODE_STRING*)* @IoRegisterDeviceInterface, variables: !1419)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!300, !262, !872, !315, !315}
!1563 = !DISubprogram(name: "IoReleaseCancelSpinLock", scope: !1, file: !1, line: 2957, type: !1564, isLocal: false, isDefinition: true, scopeLine: 2958, flags: DIFlagPrototyped, isOptimized: false, function: void (i8)* @IoReleaseCancelSpinLock, variables: !1419)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{null, !629}
!1566 = !DISubprogram(name: "IoSetDeviceInterfaceState", scope: !1, file: !1, line: 2966, type: !1567, isLocal: false, isDefinition: true, scopeLine: 2967, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._UNICODE_STRING*, i8)* @IoSetDeviceInterfaceState, variables: !1419)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!300, !315, !327}
!1569 = !DISubprogram(name: "IoSetHardErrorOrVerifyDevice", scope: !1, file: !1, line: 2988, type: !1570, isLocal: false, isDefinition: true, scopeLine: 2989, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._IRP*, %struct._DEVICE_OBJECT*)* @IoSetHardErrorOrVerifyDevice, variables: !1419)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{null, !1199, !262}
!1572 = !DISubprogram(name: "stubMoreProcessingRequired", scope: !1, file: !1, line: 2995, type: !1417, isLocal: false, isDefinition: true, scopeLine: 2996, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stubMoreProcessingRequired, variables: !1419)
!1573 = !DISubprogram(name: "IofCallDriver", scope: !1, file: !1, line: 3011, type: !1430, isLocal: false, isDefinition: true, scopeLine: 3013, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @IofCallDriver, variables: !1419)
!1574 = !DISubprogram(name: "IofCompleteRequest", scope: !1, file: !1, line: 3087, type: !1575, isLocal: false, isDefinition: true, scopeLine: 3088, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._IRP*, i8)* @IofCompleteRequest, variables: !1419)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{null, !1199, !621}
!1577 = !DISubprogram(name: "KeAcquireSpinLockRaiseToDpc", scope: !1, file: !1, line: 3102, type: !1578, isLocal: false, isDefinition: true, scopeLine: 3103, flags: DIFlagPrototyped, isOptimized: false, function: i8 (i64*)* @KeAcquireSpinLockRaiseToDpc, variables: !1419)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!629, !1481}
!1580 = !DISubprogram(name: "KeDelayExecutionThread", scope: !1, file: !1, line: 3112, type: !1581, isLocal: false, isDefinition: true, scopeLine: 3113, flags: DIFlagPrototyped, isOptimized: false, function: i64 (i8, i8, %union._LARGE_INTEGER*)* @KeDelayExecutionThread, variables: !1419)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!300, !620, !327, !425}
!1583 = !DISubprogram(name: "KeInitializeEvent", scope: !1, file: !1, line: 3135, type: !1584, isLocal: false, isDefinition: true, scopeLine: 3136, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._KEVENT*, i32, i8)* @KeInitializeEvent, variables: !1419)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{null, !1586, !1587, !327}
!1586 = !DIDerivedType(tag: DW_TAG_typedef, name: "PRKEVENT", file: !1, line: 662, baseType: !548)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVENT_TYPE", file: !1, line: 62, baseType: !209)
!1588 = !DISubprogram(name: "KeInitializeSemaphore", scope: !1, file: !1, line: 3144, type: !1589, isLocal: false, isDefinition: true, scopeLine: 3145, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._KSEMAPHORE*, i64, i64)* @KeInitializeSemaphore, variables: !1419)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{null, !1591, !273, !273}
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "PRKSEMAPHORE", file: !1, line: 668, baseType: !541)
!1592 = !DISubprogram(name: "KeInitializeSpinLock", scope: !1, file: !1, line: 3152, type: !1593, isLocal: false, isDefinition: true, scopeLine: 3153, flags: DIFlagPrototyped, isOptimized: false, function: void (i64*)* @KeInitializeSpinLock, variables: !1419)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{null, !1481}
!1595 = !DISubprogram(name: "KeReleaseSemaphore", scope: !1, file: !1, line: 3161, type: !1596, isLocal: false, isDefinition: true, scopeLine: 3163, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._KSEMAPHORE*, i64, i64, i8)* @KeReleaseSemaphore, variables: !1419)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!273, !1591, !1598, !273, !327}
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "KPRIORITY", file: !1, line: 198, baseType: !273)
!1599 = !DISubprogram(name: "KfReleaseSpinLock", scope: !1, file: !1, line: 3171, type: !1600, isLocal: false, isDefinition: true, scopeLine: 3172, flags: DIFlagPrototyped, isOptimized: false, function: void (i64*, i8)* @KfReleaseSpinLock, variables: !1419)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{null, !1481, !629}
!1602 = !DISubprogram(name: "KeSetEvent", scope: !1, file: !1, line: 3180, type: !1603, isLocal: false, isDefinition: true, scopeLine: 3181, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._KEVENT*, i64, i8)* @KeSetEvent, variables: !1419)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!273, !1586, !1598, !327}
!1605 = !DISubprogram(name: "KeWaitForSingleObject", scope: !1, file: !1, line: 3192, type: !1606, isLocal: false, isDefinition: true, scopeLine: 3194, flags: DIFlagPrototyped, isOptimized: false, function: i64 (i8*, i32, i8, i8, %union._LARGE_INTEGER*)* @KeWaitForSingleObject, variables: !1419)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!300, !286, !1608, !620, !327, !425}
!1608 = !DIDerivedType(tag: DW_TAG_typedef, name: "KWAIT_REASON", file: !1, line: 633, baseType: !213)
!1609 = !DISubprogram(name: "MmAllocateContiguousMemory", scope: !1, file: !1, line: 3238, type: !1610, isLocal: false, isDefinition: true, scopeLine: 3239, flags: DIFlagPrototyped, isOptimized: false, function: i8* (i64, i64, i64)* @MmAllocateContiguousMemory, variables: !1419)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!286, !1475, !985}
!1612 = !DISubprogram(name: "MmFreeContiguousMemory", scope: !1, file: !1, line: 3266, type: !896, isLocal: false, isDefinition: true, scopeLine: 3267, flags: DIFlagPrototyped, isOptimized: false, function: void (i8*)* @MmFreeContiguousMemory, variables: !1419)
!1613 = !DISubprogram(name: "MmMapLockedPagesSpecifyCache", scope: !1, file: !1, line: 3279, type: !1614, isLocal: false, isDefinition: true, scopeLine: 3282, flags: DIFlagPrototyped, isOptimized: false, function: i8* (%struct._MDL*, i8, i32, i8*, i64, i32)* @MmMapLockedPagesSpecifyCache, variables: !1419)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!286, !569, !620, !1616, !286, !283, !1617}
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "MEMORY_CACHING_TYPE", file: !1, line: 678, baseType: !243)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "MM_PAGE_PRIORITY", file: !1, line: 739, baseType: !252)
!1618 = !DISubprogram(name: "MmPageEntireDriver", scope: !1, file: !1, line: 3289, type: !1619, isLocal: false, isDefinition: true, scopeLine: 3290, flags: DIFlagPrototyped, isOptimized: false, function: i8* (i8*)* @MmPageEntireDriver, variables: !1419)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!286, !286}
!1621 = !DISubprogram(name: "MmResetDriverPaging", scope: !1, file: !1, line: 3297, type: !896, isLocal: false, isDefinition: true, scopeLine: 3298, flags: DIFlagPrototyped, isOptimized: false, function: void (i8*)* @MmResetDriverPaging, variables: !1419)
!1622 = !DISubprogram(name: "MmUnlockPages", scope: !1, file: !1, line: 3305, type: !1517, isLocal: false, isDefinition: true, scopeLine: 3306, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._MDL*)* @MmUnlockPages, variables: !1419)
!1623 = !DISubprogram(name: "ObReferenceObjectByHandle", scope: !1, file: !1, line: 3318, type: !1624, isLocal: false, isDefinition: true, scopeLine: 3320, flags: DIFlagPrototyped, isOptimized: false, function: i64 (i8*, i64, %struct._OBJECT_TYPE*, i8, i8**, %struct._OBJECT_HANDLE_INFORMATION*)* @ObReferenceObjectByHandle, variables: !1419)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!300, !822, !735, !1626, !620, !1224, !1629}
!1626 = !DIDerivedType(tag: DW_TAG_typedef, name: "POBJECT_TYPE", file: !1, line: 115, baseType: !1627)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64, align: 64)
!1628 = !DICompositeType(tag: DW_TAG_structure_type, name: "_OBJECT_TYPE", file: !1, line: 114, flags: DIFlagFwdDecl)
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "POBJECT_HANDLE_INFORMATION", file: !1, line: 1335, baseType: !1630)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64, align: 64)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "_OBJECT_HANDLE_INFORMATION", file: !1, line: 1331, size: 128, align: 64, elements: !1632)
!1632 = !{!1633, !1634}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "HandleAttributes", scope: !1631, file: !1, line: 1332, baseType: !283, size: 64, align: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "GrantedAccess", scope: !1631, file: !1, line: 1333, baseType: !735, size: 64, align: 64, offset: 64)
!1635 = !DISubprogram(name: "ObfDereferenceObject", scope: !1, file: !1, line: 3341, type: !896, isLocal: false, isDefinition: true, scopeLine: 3342, flags: DIFlagPrototyped, isOptimized: false, function: void (i8*)* @ObfDereferenceObject, variables: !1419)
!1636 = !DISubprogram(name: "PoCallDriver", scope: !1, file: !1, line: 3350, type: !1430, isLocal: false, isDefinition: true, scopeLine: 3351, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @PoCallDriver, variables: !1419)
!1637 = !DISubprogram(name: "PoStartNextPowerIrp", scope: !1, file: !1, line: 3424, type: !1514, isLocal: false, isDefinition: true, scopeLine: 3425, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._IRP*)* @PoStartNextPowerIrp, variables: !1419)
!1638 = !DISubprogram(name: "PsCreateSystemThread", scope: !1, file: !1, line: 3438, type: !1639, isLocal: false, isDefinition: true, scopeLine: 3441, flags: DIFlagPrototyped, isOptimized: false, function: i64 (i8**, i64, %struct._OBJECT_ATTRIBUTES*, i8*, %struct._CLIENT_ID*, void (i8*)*, i8*)* @PsCreateSystemThread, variables: !1419)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!300, !1641, !283, !1643, !822, !1654, !895, !286}
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "PHANDLE", file: !1, line: 31, baseType: !1642)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64, align: 64)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "POBJECT_ATTRIBUTES", file: !1, line: 96, baseType: !1644)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64, align: 64)
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "OBJECT_ATTRIBUTES", file: !1, line: 95, baseType: !1646)
!1646 = !DICompositeType(tag: DW_TAG_structure_type, name: "_OBJECT_ATTRIBUTES", file: !1, line: 87, size: 384, align: 64, elements: !1647)
!1647 = !{!1648, !1649, !1650, !1651, !1652, !1653}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !1646, file: !1, line: 88, baseType: !283, size: 64, align: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "RootDirectory", scope: !1646, file: !1, line: 89, baseType: !822, size: 64, align: 64, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "ObjectName", scope: !1646, file: !1, line: 90, baseType: !315, size: 64, align: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "Attributes", scope: !1646, file: !1, line: 91, baseType: !283, size: 64, align: 64, offset: 192)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "SecurityDescriptor", scope: !1646, file: !1, line: 92, baseType: !286, size: 64, align: 64, offset: 256)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "SecurityQualityOfService", scope: !1646, file: !1, line: 93, baseType: !286, size: 64, align: 64, offset: 320)
!1654 = !DIDerivedType(tag: DW_TAG_typedef, name: "PCLIENT_ID", file: !1, line: 353, baseType: !1655)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64, align: 64)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "CLIENT_ID", file: !1, line: 352, baseType: !1657)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CLIENT_ID", file: !1, line: 348, size: 128, align: 64, elements: !1658)
!1658 = !{!1659, !1660}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "UniqueProcess", scope: !1657, file: !1, line: 349, baseType: !822, size: 64, align: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "UniqueThread", scope: !1657, file: !1, line: 350, baseType: !822, size: 64, align: 64, offset: 64)
!1661 = !DISubprogram(name: "PsTerminateSystemThread", scope: !1, file: !1, line: 3462, type: !1662, isLocal: false, isDefinition: true, scopeLine: 3463, flags: DIFlagPrototyped, isOptimized: false, function: i64 (i64)* @PsTerminateSystemThread, variables: !1419)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!300, !300}
!1664 = !DISubprogram(name: "RtlAnsiStringToUnicodeString", scope: !1, file: !1, line: 3486, type: !1665, isLocal: false, isDefinition: true, scopeLine: 3489, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._UNICODE_STRING*, %struct._STRING*, i8)* @RtlAnsiStringToUnicodeString, variables: !1419)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!300, !315, !1667, !327}
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "PANSI_STRING", file: !1, line: 71, baseType: !1668)
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "PSTRING", file: !1, line: 70, baseType: !1669)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64, align: 64)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRING", file: !1, line: 69, baseType: !1671)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "_STRING", file: !1, line: 64, size: 128, align: 64, elements: !1672)
!1672 = !{!1673, !1674, !1675}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !1671, file: !1, line: 65, baseType: !270, size: 16, align: 16)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "MaximumLength", scope: !1671, file: !1, line: 66, baseType: !270, size: 16, align: 16, offset: 16)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "Buffer", scope: !1671, file: !1, line: 67, baseType: !679, size: 64, align: 64, offset: 64)
!1676 = !DISubprogram(name: "RtlCompareMemory", scope: !1, file: !1, line: 3512, type: !1677, isLocal: false, isDefinition: true, scopeLine: 3514, flags: DIFlagPrototyped, isOptimized: false, function: i64 (i8*, i8*, i64)* @RtlCompareMemory, variables: !1419)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!1475, !1679, !1679, !1475}
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64, align: 64)
!1680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1681 = !DISubprogram(name: "RtlCopyUnicodeString", scope: !1, file: !1, line: 3522, type: !1682, isLocal: false, isDefinition: true, scopeLine: 3524, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._UNICODE_STRING*, %struct._UNICODE_STRING*)* @RtlCopyUnicodeString, variables: !1419)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{null, !315, !315}
!1684 = !DISubprogram(name: "RtlDeleteRegistryValue", scope: !1, file: !1, line: 3533, type: !1685, isLocal: false, isDefinition: true, scopeLine: 3535, flags: DIFlagPrototyped, isOptimized: false, function: i64 (i64, i16*, i16*)* @RtlDeleteRegistryValue, variables: !1419)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!300, !283, !1687, !1687}
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "PCWSTR", file: !1, line: 22, baseType: !1688)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64, align: 64)
!1689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!1690 = !DISubprogram(name: "RtlFreeUnicodeString", scope: !1, file: !1, line: 3556, type: !1691, isLocal: false, isDefinition: true, scopeLine: 3557, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._UNICODE_STRING*)* @RtlFreeUnicodeString, variables: !1419)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{null, !315}
!1693 = !DISubprogram(name: "RtlInitString", scope: !1, file: !1, line: 3565, type: !1694, isLocal: false, isDefinition: true, scopeLine: 3566, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._STRING*, i8*)* @RtlInitString, variables: !1419)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{null, !1668, !1696}
!1696 = !DIDerivedType(tag: DW_TAG_typedef, name: "PCSZ", file: !1, line: 63, baseType: !1697)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64, align: 64)
!1698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!1699 = !DISubprogram(name: "RtlInitUnicodeString", scope: !1, file: !1, line: 3574, type: !1700, isLocal: false, isDefinition: true, scopeLine: 3576, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._UNICODE_STRING*, i16*)* @RtlInitUnicodeString, variables: !1419)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{null, !315, !1687}
!1702 = !DISubprogram(name: "RtlQueryRegistryValues", scope: !1, file: !1, line: 3587, type: !1703, isLocal: false, isDefinition: true, scopeLine: 3590, flags: DIFlagPrototyped, isOptimized: false, function: i64 (i64, i16*, %struct._RTL_QUERY_REGISTRY_TABLE*, i8*, i8*)* @RtlQueryRegistryValues, variables: !1419)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!300, !283, !1687, !1705, !286, !286}
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "PRTL_QUERY_REGISTRY_TABLE", file: !1, line: 212, baseType: !1706)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64, align: 64)
!1707 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RTL_QUERY_REGISTRY_TABLE", file: !1, line: 201, size: 448, align: 64, elements: !1708)
!1708 = !{!1709, !1713, !1714, !1715, !1716, !1717, !1718}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "QueryRoutine", scope: !1707, file: !1, line: 202, baseType: !1710, size: 64, align: 64)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64, align: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!300, !309, !283, !286, !283, !286, !286}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !1707, file: !1, line: 205, baseType: !283, size: 64, align: 64, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "Name", scope: !1707, file: !1, line: 206, baseType: !309, size: 64, align: 64, offset: 128)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "EntryContext", scope: !1707, file: !1, line: 207, baseType: !286, size: 64, align: 64, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "DefaultType", scope: !1707, file: !1, line: 208, baseType: !283, size: 64, align: 64, offset: 256)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "DefaultData", scope: !1707, file: !1, line: 209, baseType: !286, size: 64, align: 64, offset: 320)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "DefaultLength", scope: !1707, file: !1, line: 210, baseType: !283, size: 64, align: 64, offset: 384)
!1719 = !DISubprogram(name: "ZwClose", scope: !1, file: !1, line: 3611, type: !1720, isLocal: false, isDefinition: true, scopeLine: 3612, flags: DIFlagPrototyped, isOptimized: false, function: i64 (i8*)* @ZwClose, variables: !1419)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!300, !822}
!1722 = !{!1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1742}
!1723 = !DIGlobalVariable(name: "s", scope: !0, file: !1, line: 1638, type: !1398, isLocal: false, isDefinition: true, variable: i32* @s)
!1724 = !DIGlobalVariable(name: "UNLOADED", scope: !0, file: !1, line: 1639, type: !1398, isLocal: false, isDefinition: true, variable: i32* @UNLOADED)
!1725 = !DIGlobalVariable(name: "NP", scope: !0, file: !1, line: 1640, type: !1398, isLocal: false, isDefinition: true, variable: i32* @NP)
!1726 = !DIGlobalVariable(name: "DC", scope: !0, file: !1, line: 1641, type: !1398, isLocal: false, isDefinition: true, variable: i32* @DC)
!1727 = !DIGlobalVariable(name: "SKIP1", scope: !0, file: !1, line: 1642, type: !1398, isLocal: false, isDefinition: true, variable: i32* @SKIP1)
!1728 = !DIGlobalVariable(name: "SKIP2", scope: !0, file: !1, line: 1643, type: !1398, isLocal: false, isDefinition: true, variable: i32* @SKIP2)
!1729 = !DIGlobalVariable(name: "MPR1", scope: !0, file: !1, line: 1644, type: !1398, isLocal: false, isDefinition: true, variable: i32* @MPR1)
!1730 = !DIGlobalVariable(name: "MPR3", scope: !0, file: !1, line: 1645, type: !1398, isLocal: false, isDefinition: true, variable: i32* @MPR3)
!1731 = !DIGlobalVariable(name: "IPC", scope: !0, file: !1, line: 1646, type: !1398, isLocal: false, isDefinition: true, variable: i32* @IPC)
!1732 = !DIGlobalVariable(name: "pended", scope: !0, file: !1, line: 1647, type: !1398, isLocal: false, isDefinition: true, variable: i32* @pended)
!1733 = !DIGlobalVariable(name: "compFptr", scope: !0, file: !1, line: 1648, type: !1196, isLocal: false, isDefinition: true, variable: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)** @compFptr)
!1734 = !DIGlobalVariable(name: "compRegistered", scope: !0, file: !1, line: 1649, type: !1398, isLocal: false, isDefinition: true, variable: i32* @compRegistered)
!1735 = !DIGlobalVariable(name: "lowerDriverReturn", scope: !0, file: !1, line: 1650, type: !1398, isLocal: false, isDefinition: true, variable: i32* @lowerDriverReturn)
!1736 = !DIGlobalVariable(name: "setEventCalled", scope: !0, file: !1, line: 1651, type: !1398, isLocal: false, isDefinition: true, variable: i32* @setEventCalled)
!1737 = !DIGlobalVariable(name: "customIrp", scope: !0, file: !1, line: 1652, type: !1398, isLocal: false, isDefinition: true, variable: i32* @customIrp)
!1738 = !DIGlobalVariable(name: "myStatus", scope: !0, file: !1, line: 1653, type: !1398, isLocal: false, isDefinition: true, variable: i32* @myStatus)
!1739 = !DIGlobalVariable(name: "pirp", scope: !0, file: !1, line: 2349, type: !1740, isLocal: false, isDefinition: true, variable: %struct._IRP** @pirp)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64, align: 64)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRP", file: !1, line: 1067, baseType: !604)
!1742 = !DIGlobalVariable(name: "_SLAM_alloc_dummy", scope: !0, file: !1, line: 2545, type: !622, isLocal: false, isDefinition: true, variable: i8* @_SLAM_alloc_dummy)
!1743 = !{i32 2, !"Dwarf Version", i32 2}
!1744 = !{i32 2, !"Debug Info Version", i32 3}
!1745 = !{i32 1, !"PIC Level", i32 2}
!1746 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1747 = !DILocation(line: 1634, column: 3, scope: !1416)
!1748 = !DILocation(line: 1635, column: 10, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1416, file: !1, line: 1634, column: 3)
!1750 = !DILocation(line: 1637, column: 1, scope: !1416)
!1751 = !DILocation(line: 1658, column: 12, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1420, file: !1, line: 1657, column: 3)
!1753 = !DILocation(line: 1659, column: 6, scope: !1752)
!1754 = !DILocation(line: 1660, column: 6, scope: !1752)
!1755 = !DILocation(line: 1661, column: 9, scope: !1752)
!1756 = !DILocation(line: 1662, column: 9, scope: !1752)
!1757 = !DILocation(line: 1663, column: 8, scope: !1752)
!1758 = !DILocation(line: 1664, column: 8, scope: !1752)
!1759 = !DILocation(line: 1665, column: 7, scope: !1752)
!1760 = !DILocation(line: 1666, column: 7, scope: !1752)
!1761 = !DILocation(line: 1666, column: 5, scope: !1752)
!1762 = !DILocation(line: 1667, column: 10, scope: !1752)
!1763 = !DILocation(line: 1668, column: 12, scope: !1752)
!1764 = !DILocation(line: 1669, column: 18, scope: !1752)
!1765 = !DILocation(line: 1670, column: 21, scope: !1752)
!1766 = !DILocation(line: 1671, column: 18, scope: !1752)
!1767 = !DILocation(line: 1672, column: 13, scope: !1752)
!1768 = !DILocation(line: 1673, column: 3, scope: !1752)
!1769 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DriverObject", arg: 1, scope: !1421, file: !1, line: 1676, type: !1424)
!1770 = !DIExpression()
!1771 = !DILocation(line: 1676, column: 37, scope: !1421)
!1772 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "RegistryPath", arg: 2, scope: !1421, file: !1, line: 1676, type: !315)
!1773 = !DILocation(line: 1676, column: 68, scope: !1421)
!1774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1421, file: !1, line: 1677, type: !283)
!1775 = !DILocation(line: 1677, column: 9, scope: !1421)
!1776 = !DILocation(line: 1677, column: 13, scope: !1421)
!1777 = !DILocation(line: 1680, column: 31, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1421, file: !1, line: 1679, column: 3)
!1779 = !DILocation(line: 1680, column: 3, scope: !1778)
!1780 = !DILocation(line: 1680, column: 17, scope: !1778)
!1781 = !DILocation(line: 1680, column: 34, scope: !1778)
!1782 = !DILocation(line: 1681, column: 3, scope: !1778)
!1783 = !DILocation(line: 1681, column: 17, scope: !1778)
!1784 = !DILocation(line: 1681, column: 34, scope: !1778)
!1785 = !DILocation(line: 1682, column: 3, scope: !1778)
!1786 = !DILocation(line: 1682, column: 17, scope: !1778)
!1787 = !DILocation(line: 1682, column: 34, scope: !1778)
!1788 = !DILocation(line: 1683, column: 3, scope: !1778)
!1789 = !DILocation(line: 1683, column: 17, scope: !1778)
!1790 = !DILocation(line: 1683, column: 35, scope: !1778)
!1791 = !DILocation(line: 1684, column: 3, scope: !1778)
!1792 = !DILocation(line: 1684, column: 17, scope: !1778)
!1793 = !DILocation(line: 1684, column: 35, scope: !1778)
!1794 = !DILocation(line: 1685, column: 3, scope: !1778)
!1795 = !DILocation(line: 1685, column: 17, scope: !1778)
!1796 = !DILocation(line: 1685, column: 35, scope: !1778)
!1797 = !DILocation(line: 1686, column: 3, scope: !1778)
!1798 = !DILocation(line: 1686, column: 17, scope: !1778)
!1799 = !DILocation(line: 1686, column: 30, scope: !1778)
!1800 = !DILocation(line: 1687, column: 4, scope: !1778)
!1801 = !DILocation(line: 1687, column: 18, scope: !1778)
!1802 = !DILocation(line: 1687, column: 36, scope: !1778)
!1803 = !DILocation(line: 1687, column: 46, scope: !1778)
!1804 = !DILocation(line: 1688, column: 3, scope: !1778)
!1805 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1432, file: !1, line: 1791, type: !262)
!1806 = !DILocation(line: 1791, column: 54, scope: !1432)
!1807 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !1432, file: !1, line: 1791, type: !1199)
!1808 = !DILocation(line: 1791, column: 74, scope: !1432)
!1809 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack", scope: !1432, file: !1, line: 1792, type: !1810)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "PIO_STACK_LOCATION", file: !1, line: 1314, baseType: !689)
!1811 = !DILocation(line: 1792, column: 22, scope: !1432)
!1812 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1432, file: !1, line: 1793, type: !300)
!1813 = !DILocation(line: 1793, column: 12, scope: !1432)
!1814 = !DILocation(line: 1796, column: 14, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1432, file: !1, line: 1795, column: 3)
!1816 = !DILocation(line: 1796, column: 19, scope: !1815)
!1817 = !DILocation(line: 1796, column: 24, scope: !1815)
!1818 = !DILocation(line: 1796, column: 32, scope: !1815)
!1819 = !DILocation(line: 1796, column: 51, scope: !1815)
!1820 = !DILocation(line: 1796, column: 70, scope: !1815)
!1821 = !DILocation(line: 1796, column: 12, scope: !1815)
!1822 = !DILocation(line: 1797, column: 7, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1815, file: !1, line: 1797, column: 7)
!1824 = !DILocation(line: 1797, column: 12, scope: !1823)
!1825 = !DILocation(line: 1797, column: 9, scope: !1823)
!1826 = !DILocation(line: 1797, column: 7, scope: !1815)
!1827 = !DILocation(line: 1798, column: 9, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1823, file: !1, line: 1797, column: 16)
!1829 = !DILocation(line: 1798, column: 7, scope: !1828)
!1830 = !DILocation(line: 1799, column: 3, scope: !1828)
!1831 = !DILocation(line: 1635, column: 10, scope: !1749, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 1801, column: 5, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !1, line: 1800, column: 5)
!1834 = distinct !DILexicalBlock(scope: !1823, file: !1, line: 1799, column: 10)
!1835 = !DILocation(line: 1805, column: 40, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1815, file: !1, line: 1804, column: 3)
!1837 = !DILocation(line: 1805, column: 45, scope: !1836)
!1838 = !DILocation(line: 1805, column: 34, scope: !1836)
!1839 = !DILocation(line: 1805, column: 61, scope: !1836)
!1840 = !DILocation(line: 1805, column: 26, scope: !1836)
!1841 = !DILocation(line: 1805, column: 3, scope: !1836)
!1842 = !DILocation(line: 1805, column: 8, scope: !1836)
!1843 = !DILocation(line: 1805, column: 24, scope: !1836)
!1844 = !DILocation(line: 1806, column: 3, scope: !1836)
!1845 = !DILocation(line: 1806, column: 8, scope: !1836)
!1846 = !DILocation(line: 1806, column: 13, scope: !1836)
!1847 = !DILocation(line: 1806, column: 21, scope: !1836)
!1848 = !DILocation(line: 1806, column: 40, scope: !1836)
!1849 = !DILocation(line: 1806, column: 59, scope: !1836)
!1850 = !DILocation(line: 1806, column: 80, scope: !1836)
!1851 = !DILocation(line: 1807, column: 52, scope: !1836)
!1852 = !DILocation(line: 1807, column: 66, scope: !1836)
!1853 = !DILocation(line: 1807, column: 24, scope: !1836)
!1854 = !DILocation(line: 1807, column: 84, scope: !1836)
!1855 = !DILocation(line: 1808, column: 23, scope: !1836)
!1856 = !DILocation(line: 1807, column: 9, scope: !1836)
!1857 = !DILocation(line: 1807, column: 7, scope: !1836)
!1858 = !DILocation(line: 1810, column: 11, scope: !1815)
!1859 = !DILocation(line: 1810, column: 3, scope: !1815)
!1860 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1429, file: !1, line: 1734, type: !262)
!1861 = !DILocation(line: 1734, column: 46, scope: !1429)
!1862 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !1429, file: !1, line: 1734, type: !1199)
!1863 = !DILocation(line: 1734, column: 66, scope: !1429)
!1864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack", scope: !1429, file: !1, line: 1735, type: !1810)
!1865 = !DILocation(line: 1735, column: 22, scope: !1429)
!1866 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !1429, file: !1, line: 1736, type: !300)
!1867 = !DILocation(line: 1736, column: 12, scope: !1429)
!1868 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt", scope: !1429, file: !1, line: 1737, type: !1869)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "PDEVICE_EXTENSION", file: !1, line: 1410, baseType: !258)
!1870 = !DILocation(line: 1737, column: 21, scope: !1429)
!1871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1429, file: !1, line: 1738, type: !273)
!1872 = !DILocation(line: 1738, column: 8, scope: !1429)
!1873 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___0", scope: !1429, file: !1, line: 1739, type: !273)
!1874 = !DILocation(line: 1739, column: 8, scope: !1429)
!1875 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___1", scope: !1429, file: !1, line: 1740, type: !300)
!1876 = !DILocation(line: 1740, column: 12, scope: !1429)
!1877 = !DILocation(line: 1743, column: 14, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1429, file: !1, line: 1742, column: 3)
!1879 = !DILocation(line: 1743, column: 19, scope: !1878)
!1880 = !DILocation(line: 1743, column: 24, scope: !1878)
!1881 = !DILocation(line: 1743, column: 32, scope: !1878)
!1882 = !DILocation(line: 1743, column: 51, scope: !1878)
!1883 = !DILocation(line: 1743, column: 70, scope: !1878)
!1884 = !DILocation(line: 1743, column: 12, scope: !1878)
!1885 = !DILocation(line: 1744, column: 40, scope: !1878)
!1886 = !DILocation(line: 1744, column: 54, scope: !1878)
!1887 = !DILocation(line: 1744, column: 12, scope: !1878)
!1888 = !DILocation(line: 1744, column: 10, scope: !1878)
!1889 = !DILocation(line: 1745, column: 12, scope: !1878)
!1890 = !DILocation(line: 1745, column: 17, scope: !1878)
!1891 = !DILocation(line: 1745, column: 26, scope: !1878)
!1892 = !DILocation(line: 1745, column: 44, scope: !1878)
!1893 = !DILocation(line: 1745, column: 10, scope: !1878)
!1894 = !DILocation(line: 1746, column: 12, scope: !1878)
!1895 = !DILocation(line: 1746, column: 10, scope: !1878)
!1896 = !DILocation(line: 1747, column: 7, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1878, file: !1, line: 1747, column: 7)
!1898 = !DILocation(line: 1747, column: 17, scope: !1897)
!1899 = !DILocation(line: 1747, column: 31, scope: !1897)
!1900 = !DILocation(line: 1791, column: 54, scope: !1432, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 1786, column: 13, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1878, file: !1, line: 1783, column: 3)
!1903 = !DILocation(line: 1791, column: 74, scope: !1432, inlinedAt: !1901)
!1904 = !DILocation(line: 1792, column: 22, scope: !1432, inlinedAt: !1901)
!1905 = !DILocation(line: 1793, column: 12, scope: !1432, inlinedAt: !1901)
!1906 = !DILocation(line: 1747, column: 7, scope: !1878)
!1907 = !DILocation(line: 1748, column: 5, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1897, file: !1, line: 1747, column: 37)
!1909 = !DILocation(line: 1750, column: 9, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !1, line: 1750, column: 9)
!1911 = distinct !DILexicalBlock(scope: !1897, file: !1, line: 1749, column: 10)
!1912 = !DILocation(line: 1750, column: 19, scope: !1910)
!1913 = !DILocation(line: 1750, column: 33, scope: !1910)
!1914 = !DILocation(line: 1750, column: 9, scope: !1911)
!1915 = !DILocation(line: 1751, column: 7, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1910, file: !1, line: 1750, column: 39)
!1917 = !DILocation(line: 1753, column: 11, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1910, file: !1, line: 1752, column: 12)
!1919 = !DILocation(line: 1753, column: 14, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1918, file: !1, line: 1753, column: 11)
!1921 = !DILocation(line: 1755, column: 58, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !1, line: 1755, column: 13)
!1923 = distinct !DILexicalBlock(scope: !1920, file: !1, line: 1753, column: 14)
!1924 = !DILocation(line: 1755, column: 66, scope: !1922)
!1925 = !DILocation(line: 1755, column: 83, scope: !1922)
!1926 = !DILocation(line: 1755, column: 43, scope: !1922)
!1927 = !DILocation(line: 1755, column: 40, scope: !1922)
!1928 = !DILocation(line: 1755, column: 13, scope: !1923)
!1929 = !DILocation(line: 1756, column: 18, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1922, file: !1, line: 1755, column: 97)
!1931 = !DILocation(line: 1757, column: 9, scope: !1930)
!1932 = !DILocation(line: 1759, column: 40, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !1, line: 1758, column: 11)
!1934 = distinct !DILexicalBlock(scope: !1922, file: !1, line: 1757, column: 16)
!1935 = !DILocation(line: 1759, column: 48, scope: !1933)
!1936 = !DILocation(line: 1759, column: 17, scope: !1933)
!1937 = !DILocation(line: 1759, column: 15, scope: !1933)
!1938 = !DILocation(line: 1761, column: 21, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1934, file: !1, line: 1761, column: 15)
!1940 = !DILocation(line: 1761, column: 18, scope: !1939)
!1941 = !DILocation(line: 1761, column: 15, scope: !1934)
!1942 = !DILocation(line: 1763, column: 11, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1939, file: !1, line: 1761, column: 26)
!1944 = !DILocation(line: 1767, column: 9, scope: !1923)
!1945 = !DILocation(line: 1770, column: 42, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1923, file: !1, line: 1769, column: 9)
!1947 = !DILocation(line: 1770, column: 50, scope: !1946)
!1948 = !DILocation(line: 1770, column: 19, scope: !1946)
!1949 = !DILocation(line: 1770, column: 17, scope: !1946)
!1950 = !DILocation(line: 1772, column: 19, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1923, file: !1, line: 1772, column: 13)
!1952 = !DILocation(line: 1772, column: 16, scope: !1951)
!1953 = !DILocation(line: 1772, column: 13, scope: !1923)
!1954 = !DILocation(line: 1774, column: 9, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1951, file: !1, line: 1772, column: 28)
!1956 = !DILocation(line: 1777, column: 9, scope: !1923)
!1957 = !DILocation(line: 1778, column: 14, scope: !1920)
!1958 = !DILocation(line: 1784, column: 44, scope: !1902)
!1959 = !DILocation(line: 1784, column: 3, scope: !1902)
!1960 = !DILocation(line: 1784, column: 8, scope: !1902)
!1961 = !DILocation(line: 1784, column: 17, scope: !1902)
!1962 = !DILocation(line: 1784, column: 35, scope: !1902)
!1963 = !DILocation(line: 1784, column: 42, scope: !1902)
!1964 = !DILocation(line: 1785, column: 14, scope: !1902)
!1965 = !DILocation(line: 1785, column: 12, scope: !1902)
!1966 = !DILocation(line: 1786, column: 42, scope: !1902)
!1967 = !DILocation(line: 1786, column: 56, scope: !1902)
!1968 = !DILocation(line: 1786, column: 13, scope: !1902)
!1969 = !DILocation(line: 1796, column: 14, scope: !1815, inlinedAt: !1901)
!1970 = !DILocation(line: 1796, column: 19, scope: !1815, inlinedAt: !1901)
!1971 = !DILocation(line: 1796, column: 24, scope: !1815, inlinedAt: !1901)
!1972 = !DILocation(line: 1796, column: 32, scope: !1815, inlinedAt: !1901)
!1973 = !DILocation(line: 1796, column: 51, scope: !1815, inlinedAt: !1901)
!1974 = !DILocation(line: 1796, column: 70, scope: !1815, inlinedAt: !1901)
!1975 = !DILocation(line: 1796, column: 12, scope: !1815, inlinedAt: !1901)
!1976 = !DILocation(line: 1797, column: 7, scope: !1823, inlinedAt: !1901)
!1977 = !DILocation(line: 1797, column: 12, scope: !1823, inlinedAt: !1901)
!1978 = !DILocation(line: 1797, column: 9, scope: !1823, inlinedAt: !1901)
!1979 = !DILocation(line: 1797, column: 7, scope: !1815, inlinedAt: !1901)
!1980 = !DILocation(line: 1635, column: 10, scope: !1749, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 1801, column: 5, scope: !1833, inlinedAt: !1901)
!1982 = !DILocation(line: 1798, column: 9, scope: !1828, inlinedAt: !1901)
!1983 = !DILocation(line: 1798, column: 7, scope: !1828, inlinedAt: !1901)
!1984 = !DILocation(line: 1805, column: 40, scope: !1836, inlinedAt: !1901)
!1985 = !DILocation(line: 1805, column: 45, scope: !1836, inlinedAt: !1901)
!1986 = !DILocation(line: 1805, column: 34, scope: !1836, inlinedAt: !1901)
!1987 = !DILocation(line: 1805, column: 61, scope: !1836, inlinedAt: !1901)
!1988 = !DILocation(line: 1805, column: 26, scope: !1836, inlinedAt: !1901)
!1989 = !DILocation(line: 1805, column: 3, scope: !1836, inlinedAt: !1901)
!1990 = !DILocation(line: 1805, column: 8, scope: !1836, inlinedAt: !1901)
!1991 = !DILocation(line: 1805, column: 24, scope: !1836, inlinedAt: !1901)
!1992 = !DILocation(line: 1806, column: 3, scope: !1836, inlinedAt: !1901)
!1993 = !DILocation(line: 1806, column: 8, scope: !1836, inlinedAt: !1901)
!1994 = !DILocation(line: 1806, column: 13, scope: !1836, inlinedAt: !1901)
!1995 = !DILocation(line: 1806, column: 21, scope: !1836, inlinedAt: !1901)
!1996 = !DILocation(line: 1806, column: 40, scope: !1836, inlinedAt: !1901)
!1997 = !DILocation(line: 1806, column: 59, scope: !1836, inlinedAt: !1901)
!1998 = !DILocation(line: 1806, column: 80, scope: !1836, inlinedAt: !1901)
!1999 = !DILocation(line: 1807, column: 52, scope: !1836, inlinedAt: !1901)
!2000 = !DILocation(line: 1807, column: 66, scope: !1836, inlinedAt: !1901)
!2001 = !DILocation(line: 1807, column: 24, scope: !1836, inlinedAt: !1901)
!2002 = !DILocation(line: 1807, column: 84, scope: !1836, inlinedAt: !1901)
!2003 = !DILocation(line: 1808, column: 23, scope: !1836, inlinedAt: !1901)
!2004 = !DILocation(line: 1807, column: 9, scope: !1836, inlinedAt: !1901)
!2005 = !DILocation(line: 1807, column: 7, scope: !1836, inlinedAt: !1901)
!2006 = !DILocation(line: 1810, column: 11, scope: !1815, inlinedAt: !1901)
!2007 = !DILocation(line: 1810, column: 3, scope: !1815, inlinedAt: !1901)
!2008 = !DILocation(line: 1786, column: 11, scope: !1902)
!2009 = !DILocation(line: 1788, column: 11, scope: !1878)
!2010 = !DILocation(line: 1788, column: 3, scope: !1878)
!2011 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1434, file: !1, line: 1948, type: !262)
!2012 = !DILocation(line: 1948, column: 38, scope: !1434)
!2013 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !1434, file: !1, line: 1948, type: !1199)
!2014 = !DILocation(line: 1948, column: 58, scope: !1434)
!2015 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt", scope: !1434, file: !1, line: 1949, type: !1869)
!2016 = !DILocation(line: 1949, column: 21, scope: !1434)
!2017 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack", scope: !1434, file: !1, line: 1950, type: !1810)
!2018 = !DILocation(line: 1950, column: 22, scope: !1434)
!2019 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !1434, file: !1, line: 1951, type: !300)
!2020 = !DILocation(line: 1951, column: 12, scope: !1434)
!2021 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "event", scope: !1434, file: !1, line: 1952, type: !398)
!2022 = !DILocation(line: 1952, column: 10, scope: !1434)
!2023 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp", scope: !1434, file: !1, line: 1953, type: !1810)
!2024 = !DILocation(line: 1953, column: 22, scope: !1434)
!2025 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp", scope: !1434, file: !1, line: 1954, type: !1810)
!2026 = !DILocation(line: 1954, column: 22, scope: !1434)
!2027 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___0", scope: !1434, file: !1, line: 1955, type: !1810)
!2028 = !DILocation(line: 1955, column: 22, scope: !1434)
!2029 = !DILocation(line: 1958, column: 10, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1434, file: !1, line: 1957, column: 3)
!2031 = !DILocation(line: 1959, column: 40, scope: !2030)
!2032 = !DILocation(line: 1959, column: 54, scope: !2030)
!2033 = !DILocation(line: 1959, column: 12, scope: !2030)
!2034 = !DILocation(line: 1959, column: 10, scope: !2030)
!2035 = !DILocation(line: 1960, column: 14, scope: !2030)
!2036 = !DILocation(line: 1960, column: 19, scope: !2030)
!2037 = !DILocation(line: 1960, column: 24, scope: !2030)
!2038 = !DILocation(line: 1960, column: 32, scope: !2030)
!2039 = !DILocation(line: 1960, column: 51, scope: !2030)
!2040 = !DILocation(line: 1960, column: 70, scope: !2030)
!2041 = !DILocation(line: 1960, column: 12, scope: !2030)
!2042 = !DILocation(line: 1961, column: 7, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2030, file: !1, line: 1961, column: 7)
!2044 = !DILocation(line: 1961, column: 17, scope: !2043)
!2045 = !DILocation(line: 1961, column: 31, scope: !2043)
!2046 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 1, scope: !1574, file: !1, line: 3087, type: !1199)
!2047 = !DILocation(line: 3087, column: 30, scope: !1574, inlinedAt: !2048)
!2048 = distinct !DILocation(line: 2083, column: 47, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !1, line: 2079, column: 47)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !1, line: 2026, column: 52)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !1, line: 2026, column: 49)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !1, line: 2024, column: 45)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !1, line: 2023, column: 50)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !1, line: 2021, column: 47)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !1, line: 2020, column: 48)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !1, line: 2018, column: 45)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !1, line: 2017, column: 46)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !1, line: 2015, column: 43)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !1, line: 2014, column: 44)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !1, line: 2012, column: 41)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !1, line: 2011, column: 42)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !1, line: 2009, column: 39)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !1, line: 2008, column: 40)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !1, line: 2006, column: 37)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !1, line: 2005, column: 38)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !1, line: 2003, column: 35)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !1, line: 2002, column: 36)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !1, line: 2000, column: 33)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !1, line: 1999, column: 34)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !1, line: 1997, column: 31)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !1, line: 1996, column: 32)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !1, line: 1994, column: 29)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !1, line: 1993, column: 30)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !1, line: 1991, column: 27)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !1, line: 1990, column: 28)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !1, line: 1988, column: 25)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !1, line: 1987, column: 26)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !1, line: 1985, column: 23)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !1, line: 1984, column: 24)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !1, line: 1982, column: 21)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !1, line: 1981, column: 22)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !1, line: 1979, column: 19)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !1, line: 1978, column: 20)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !1, line: 1976, column: 17)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !1, line: 1975, column: 18)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !1, line: 1973, column: 15)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !1, line: 1972, column: 16)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !1, line: 1970, column: 13)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !1, line: 1969, column: 14)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !1, line: 1967, column: 11)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !1, line: 1966, column: 12)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !1, line: 1964, column: 9)
!2093 = distinct !DILexicalBlock(scope: !2043, file: !1, line: 1963, column: 10)
!2094 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PriorityBoost", arg: 2, scope: !1574, file: !1, line: 3087, type: !621)
!2095 = !DILocation(line: 3087, column: 42, scope: !1574, inlinedAt: !2048)
!2096 = !DILocation(line: 1961, column: 7, scope: !2030)
!2097 = !DILocation(line: 1962, column: 5, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2043, file: !1, line: 1961, column: 37)
!2099 = !DILocation(line: 1964, column: 9, scope: !2092)
!2100 = !DILocation(line: 1964, column: 19, scope: !2092)
!2101 = !DILocation(line: 1964, column: 33, scope: !2092)
!2102 = !DILocation(line: 1964, column: 9, scope: !2093)
!2103 = !DILocation(line: 1965, column: 7, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2092, file: !1, line: 1964, column: 40)
!2105 = !DILocation(line: 1967, column: 11, scope: !2090)
!2106 = !DILocation(line: 1967, column: 21, scope: !2090)
!2107 = !DILocation(line: 1967, column: 35, scope: !2090)
!2108 = !DILocation(line: 1967, column: 11, scope: !2091)
!2109 = !DILocation(line: 1968, column: 9, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2090, file: !1, line: 1967, column: 41)
!2111 = !DILocation(line: 1970, column: 13, scope: !2088)
!2112 = !DILocation(line: 1970, column: 23, scope: !2088)
!2113 = !DILocation(line: 1970, column: 37, scope: !2088)
!2114 = !DILocation(line: 1970, column: 13, scope: !2089)
!2115 = !DILocation(line: 1971, column: 11, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2088, file: !1, line: 1970, column: 43)
!2117 = !DILocation(line: 1973, column: 15, scope: !2086)
!2118 = !DILocation(line: 1973, column: 25, scope: !2086)
!2119 = !DILocation(line: 1973, column: 39, scope: !2086)
!2120 = !DILocation(line: 1973, column: 15, scope: !2087)
!2121 = !DILocation(line: 1974, column: 13, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2086, file: !1, line: 1973, column: 45)
!2123 = !DILocation(line: 1976, column: 17, scope: !2084)
!2124 = !DILocation(line: 1976, column: 27, scope: !2084)
!2125 = !DILocation(line: 1976, column: 41, scope: !2084)
!2126 = !DILocation(line: 1976, column: 17, scope: !2085)
!2127 = !DILocation(line: 1977, column: 15, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2084, file: !1, line: 1976, column: 47)
!2129 = !DILocation(line: 1979, column: 19, scope: !2082)
!2130 = !DILocation(line: 1979, column: 29, scope: !2082)
!2131 = !DILocation(line: 1979, column: 43, scope: !2082)
!2132 = !DILocation(line: 1979, column: 19, scope: !2083)
!2133 = !DILocation(line: 1980, column: 17, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2082, file: !1, line: 1979, column: 49)
!2135 = !DILocation(line: 1982, column: 21, scope: !2080)
!2136 = !DILocation(line: 1982, column: 31, scope: !2080)
!2137 = !DILocation(line: 1982, column: 45, scope: !2080)
!2138 = !DILocation(line: 1982, column: 21, scope: !2081)
!2139 = !DILocation(line: 1983, column: 19, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2080, file: !1, line: 1982, column: 52)
!2141 = !DILocation(line: 1985, column: 23, scope: !2078)
!2142 = !DILocation(line: 1985, column: 33, scope: !2078)
!2143 = !DILocation(line: 1985, column: 47, scope: !2078)
!2144 = !DILocation(line: 1985, column: 23, scope: !2079)
!2145 = !DILocation(line: 1986, column: 21, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2078, file: !1, line: 1985, column: 53)
!2147 = !DILocation(line: 1988, column: 25, scope: !2076)
!2148 = !DILocation(line: 1988, column: 35, scope: !2076)
!2149 = !DILocation(line: 1988, column: 49, scope: !2076)
!2150 = !DILocation(line: 1988, column: 25, scope: !2077)
!2151 = !DILocation(line: 1989, column: 23, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2076, file: !1, line: 1988, column: 55)
!2153 = !DILocation(line: 1991, column: 27, scope: !2074)
!2154 = !DILocation(line: 1991, column: 37, scope: !2074)
!2155 = !DILocation(line: 1991, column: 51, scope: !2074)
!2156 = !DILocation(line: 1991, column: 27, scope: !2075)
!2157 = !DILocation(line: 1992, column: 25, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2074, file: !1, line: 1991, column: 57)
!2159 = !DILocation(line: 1994, column: 29, scope: !2072)
!2160 = !DILocation(line: 1994, column: 39, scope: !2072)
!2161 = !DILocation(line: 1994, column: 53, scope: !2072)
!2162 = !DILocation(line: 1994, column: 29, scope: !2073)
!2163 = !DILocation(line: 1995, column: 27, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2072, file: !1, line: 1994, column: 59)
!2165 = !DILocation(line: 1997, column: 31, scope: !2070)
!2166 = !DILocation(line: 1997, column: 41, scope: !2070)
!2167 = !DILocation(line: 1997, column: 55, scope: !2070)
!2168 = !DILocation(line: 1997, column: 31, scope: !2071)
!2169 = !DILocation(line: 1998, column: 29, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2070, file: !1, line: 1997, column: 62)
!2171 = !DILocation(line: 2000, column: 33, scope: !2068)
!2172 = !DILocation(line: 2000, column: 43, scope: !2068)
!2173 = !DILocation(line: 2000, column: 57, scope: !2068)
!2174 = !DILocation(line: 2000, column: 33, scope: !2069)
!2175 = !DILocation(line: 2001, column: 31, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2068, file: !1, line: 2000, column: 64)
!2177 = !DILocation(line: 2003, column: 35, scope: !2066)
!2178 = !DILocation(line: 2003, column: 45, scope: !2066)
!2179 = !DILocation(line: 2003, column: 59, scope: !2066)
!2180 = !DILocation(line: 2003, column: 35, scope: !2067)
!2181 = !DILocation(line: 2004, column: 33, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2066, file: !1, line: 2003, column: 66)
!2183 = !DILocation(line: 2006, column: 37, scope: !2064)
!2184 = !DILocation(line: 2006, column: 47, scope: !2064)
!2185 = !DILocation(line: 2006, column: 61, scope: !2064)
!2186 = !DILocation(line: 2006, column: 37, scope: !2065)
!2187 = !DILocation(line: 2007, column: 35, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2064, file: !1, line: 2006, column: 68)
!2189 = !DILocation(line: 2009, column: 39, scope: !2062)
!2190 = !DILocation(line: 2009, column: 49, scope: !2062)
!2191 = !DILocation(line: 2009, column: 63, scope: !2062)
!2192 = !DILocation(line: 2009, column: 39, scope: !2063)
!2193 = !DILocation(line: 2010, column: 37, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2062, file: !1, line: 2009, column: 70)
!2195 = !DILocation(line: 2012, column: 41, scope: !2060)
!2196 = !DILocation(line: 2012, column: 51, scope: !2060)
!2197 = !DILocation(line: 2012, column: 65, scope: !2060)
!2198 = !DILocation(line: 2012, column: 41, scope: !2061)
!2199 = !DILocation(line: 2013, column: 39, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2060, file: !1, line: 2012, column: 72)
!2201 = !DILocation(line: 2015, column: 43, scope: !2058)
!2202 = !DILocation(line: 2015, column: 53, scope: !2058)
!2203 = !DILocation(line: 2015, column: 67, scope: !2058)
!2204 = !DILocation(line: 2015, column: 43, scope: !2059)
!2205 = !DILocation(line: 2016, column: 41, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2058, file: !1, line: 2015, column: 74)
!2207 = !DILocation(line: 2018, column: 45, scope: !2056)
!2208 = !DILocation(line: 2018, column: 55, scope: !2056)
!2209 = !DILocation(line: 2018, column: 69, scope: !2056)
!2210 = !DILocation(line: 2018, column: 45, scope: !2057)
!2211 = !DILocation(line: 2019, column: 43, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2056, file: !1, line: 2018, column: 76)
!2213 = !DILocation(line: 2021, column: 47, scope: !2054)
!2214 = !DILocation(line: 2021, column: 57, scope: !2054)
!2215 = !DILocation(line: 2021, column: 71, scope: !2054)
!2216 = !DILocation(line: 2021, column: 47, scope: !2055)
!2217 = !DILocation(line: 2022, column: 45, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2054, file: !1, line: 2021, column: 78)
!2219 = !DILocation(line: 2025, column: 45, scope: !2052)
!2220 = !DILocation(line: 2026, column: 49, scope: !2052)
!2221 = !DILocation(line: 2026, column: 52, scope: !2051)
!2222 = !DILocation(line: 2029, column: 55, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2050, file: !1, line: 2028, column: 47)
!2224 = !DILocation(line: 2029, column: 60, scope: !2223)
!2225 = !DILocation(line: 2029, column: 65, scope: !2223)
!2226 = !DILocation(line: 2029, column: 73, scope: !2223)
!2227 = !DILocation(line: 2029, column: 92, scope: !2223)
!2228 = !DILocation(line: 2029, column: 111, scope: !2223)
!2229 = !DILocation(line: 2029, column: 53, scope: !2223)
!2230 = !DILocation(line: 2030, column: 59, scope: !2223)
!2231 = !DILocation(line: 2030, column: 64, scope: !2223)
!2232 = !DILocation(line: 2030, column: 69, scope: !2223)
!2233 = !DILocation(line: 2030, column: 77, scope: !2223)
!2234 = !DILocation(line: 2030, column: 96, scope: !2223)
!2235 = !DILocation(line: 2030, column: 115, scope: !2223)
!2236 = !DILocation(line: 2030, column: 136, scope: !2223)
!2237 = !DILocation(line: 2030, column: 57, scope: !2223)
!2238 = !DILocation(line: 2031, column: 54, scope: !2223)
!2239 = !DILocation(line: 2031, column: 65, scope: !2223)
!2240 = !DILocation(line: 2031, column: 47, scope: !2223)
!2241 = !DILocation(line: 2032, column: 47, scope: !2223)
!2242 = !DILocation(line: 2032, column: 58, scope: !2223)
!2243 = !DILocation(line: 2032, column: 66, scope: !2223)
!2244 = !DILocation(line: 2035, column: 51, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2050, file: !1, line: 2035, column: 51)
!2246 = !DILocation(line: 2035, column: 56, scope: !2245)
!2247 = !DILocation(line: 2035, column: 53, scope: !2245)
!2248 = !DILocation(line: 2035, column: 51, scope: !2050)
!2249 = !DILocation(line: 1635, column: 10, scope: !1749, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 2037, column: 49, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !1, line: 2036, column: 49)
!2252 = distinct !DILexicalBlock(scope: !2245, file: !1, line: 2035, column: 60)
!2253 = !DILocation(line: 2039, column: 47, scope: !2252)
!2254 = !DILocation(line: 2040, column: 53, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !1, line: 2040, column: 53)
!2256 = distinct !DILexicalBlock(scope: !2245, file: !1, line: 2039, column: 54)
!2257 = !DILocation(line: 2040, column: 68, scope: !2255)
!2258 = !DILocation(line: 2040, column: 53, scope: !2256)
!2259 = !DILocation(line: 1635, column: 10, scope: !1749, inlinedAt: !2260)
!2260 = distinct !DILocation(line: 2042, column: 51, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !1, line: 2041, column: 51)
!2262 = distinct !DILexicalBlock(scope: !2255, file: !1, line: 2040, column: 74)
!2263 = !DILocation(line: 2044, column: 49, scope: !2262)
!2264 = !DILocation(line: 2045, column: 66, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2255, file: !1, line: 2044, column: 56)
!2266 = !DILocation(line: 2046, column: 60, scope: !2265)
!2267 = !DILocation(line: 2050, column: 59, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2050, file: !1, line: 2049, column: 47)
!2269 = !DILocation(line: 2050, column: 64, scope: !2268)
!2270 = !DILocation(line: 2050, column: 69, scope: !2268)
!2271 = !DILocation(line: 2050, column: 77, scope: !2268)
!2272 = !DILocation(line: 2050, column: 96, scope: !2268)
!2273 = !DILocation(line: 2050, column: 115, scope: !2268)
!2274 = !DILocation(line: 2050, column: 136, scope: !2268)
!2275 = !DILocation(line: 2050, column: 57, scope: !2268)
!2276 = !DILocation(line: 2051, column: 47, scope: !2268)
!2277 = !DILocation(line: 2051, column: 58, scope: !2268)
!2278 = !DILocation(line: 2051, column: 76, scope: !2268)
!2279 = !DILocation(line: 2052, column: 68, scope: !2268)
!2280 = !DILocation(line: 2052, column: 47, scope: !2268)
!2281 = !DILocation(line: 2052, column: 58, scope: !2268)
!2282 = !DILocation(line: 2052, column: 66, scope: !2268)
!2283 = !DILocation(line: 2053, column: 47, scope: !2268)
!2284 = !DILocation(line: 2053, column: 58, scope: !2268)
!2285 = !DILocation(line: 2053, column: 66, scope: !2268)
!2286 = !DILocation(line: 2054, column: 47, scope: !2268)
!2287 = !DILocation(line: 2054, column: 58, scope: !2268)
!2288 = !DILocation(line: 2054, column: 66, scope: !2268)
!2289 = !DILocation(line: 2055, column: 74, scope: !2268)
!2290 = !DILocation(line: 2055, column: 85, scope: !2268)
!2291 = !DILocation(line: 2055, column: 68, scope: !2268)
!2292 = !DILocation(line: 2055, column: 93, scope: !2268)
!2293 = !DILocation(line: 2055, column: 47, scope: !2268)
!2294 = !DILocation(line: 2055, column: 58, scope: !2268)
!2295 = !DILocation(line: 2055, column: 66, scope: !2268)
!2296 = !DILocation(line: 2056, column: 74, scope: !2268)
!2297 = !DILocation(line: 2056, column: 85, scope: !2268)
!2298 = !DILocation(line: 2056, column: 68, scope: !2268)
!2299 = !DILocation(line: 2056, column: 93, scope: !2268)
!2300 = !DILocation(line: 2056, column: 47, scope: !2268)
!2301 = !DILocation(line: 2056, column: 58, scope: !2268)
!2302 = !DILocation(line: 2056, column: 66, scope: !2268)
!2303 = !DILocation(line: 2057, column: 70, scope: !2268)
!2304 = !DILocation(line: 2057, column: 78, scope: !2268)
!2305 = !DILocation(line: 2058, column: 70, scope: !2268)
!2306 = !DILocation(line: 2057, column: 56, scope: !2268)
!2307 = !DILocation(line: 2057, column: 54, scope: !2268)
!2308 = !DILocation(line: 2060, column: 59, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2050, file: !1, line: 2060, column: 51)
!2310 = !DILocation(line: 2060, column: 56, scope: !2309)
!2311 = !DILocation(line: 2060, column: 51, scope: !2050)
!2312 = !DILocation(line: 2062, column: 71, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !1, line: 2061, column: 49)
!2314 = distinct !DILexicalBlock(scope: !2309, file: !1, line: 2060, column: 67)
!2315 = !DILocation(line: 2062, column: 49, scope: !2313)
!2316 = !DILocation(line: 2065, column: 47, scope: !2314)
!2317 = !DILocation(line: 2068, column: 51, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2050, file: !1, line: 2068, column: 51)
!2319 = !DILocation(line: 2068, column: 58, scope: !2318)
!2320 = !DILocation(line: 2068, column: 51, scope: !2050)
!2321 = !DILocation(line: 2069, column: 60, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !1, line: 2069, column: 53)
!2323 = distinct !DILexicalBlock(scope: !2318, file: !1, line: 2068, column: 65)
!2324 = !DILocation(line: 2069, column: 53, scope: !2322)
!2325 = !DILocation(line: 2069, column: 69, scope: !2322)
!2326 = !DILocation(line: 2069, column: 53, scope: !2323)
!2327 = !DILocation(line: 2070, column: 51, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2322, file: !1, line: 2069, column: 76)
!2329 = !DILocation(line: 2070, column: 59, scope: !2328)
!2330 = !DILocation(line: 2070, column: 67, scope: !2328)
!2331 = !DILocation(line: 2071, column: 51, scope: !2328)
!2332 = !DILocation(line: 2071, column: 59, scope: !2328)
!2333 = !DILocation(line: 2071, column: 67, scope: !2328)
!2334 = !DILocation(line: 2072, column: 51, scope: !2328)
!2335 = !DILocation(line: 2072, column: 59, scope: !2328)
!2336 = !DILocation(line: 2072, column: 75, scope: !2328)
!2337 = !DILocation(line: 2073, column: 49, scope: !2328)
!2338 = !DILocation(line: 2076, column: 47, scope: !2323)
!2339 = !DILocation(line: 2080, column: 88, scope: !2049)
!2340 = !DILocation(line: 2080, column: 47, scope: !2049)
!2341 = !DILocation(line: 2080, column: 52, scope: !2049)
!2342 = !DILocation(line: 2080, column: 61, scope: !2049)
!2343 = !DILocation(line: 2080, column: 79, scope: !2049)
!2344 = !DILocation(line: 2080, column: 86, scope: !2049)
!2345 = !DILocation(line: 2081, column: 58, scope: !2049)
!2346 = !DILocation(line: 2081, column: 56, scope: !2049)
!2347 = !DILocation(line: 2082, column: 47, scope: !2049)
!2348 = !DILocation(line: 2082, column: 52, scope: !2049)
!2349 = !DILocation(line: 2082, column: 61, scope: !2049)
!2350 = !DILocation(line: 2082, column: 73, scope: !2049)
!2351 = !DILocation(line: 2083, column: 66, scope: !2049)
!2352 = !DILocation(line: 2083, column: 47, scope: !2049)
!2353 = !DILocation(line: 3091, column: 7, scope: !2354, inlinedAt: !2048)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !1, line: 3091, column: 7)
!2355 = distinct !DILexicalBlock(scope: !1574, file: !1, line: 3090, column: 3)
!2356 = !DILocation(line: 3091, column: 12, scope: !2354, inlinedAt: !2048)
!2357 = !DILocation(line: 3091, column: 9, scope: !2354, inlinedAt: !2048)
!2358 = !DILocation(line: 3091, column: 7, scope: !2355, inlinedAt: !2048)
!2359 = !DILocation(line: 1635, column: 10, scope: !1749, inlinedAt: !2360)
!2360 = distinct !DILocation(line: 3095, column: 5, scope: !2361, inlinedAt: !2048)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !1, line: 3094, column: 5)
!2362 = distinct !DILexicalBlock(scope: !2354, file: !1, line: 3093, column: 10)
!2363 = !DILocation(line: 3092, column: 9, scope: !2364, inlinedAt: !2048)
!2364 = distinct !DILexicalBlock(scope: !2354, file: !1, line: 3091, column: 16)
!2365 = !DILocation(line: 3092, column: 7, scope: !2364, inlinedAt: !2048)
!2366 = !DILocation(line: 3098, column: 3, scope: !2355, inlinedAt: !2048)
!2367 = !DILocation(line: 2085, column: 47, scope: !2050)
!2368 = !DILocation(line: 2087, column: 47, scope: !2050)
!2369 = !DILocation(line: 2087, column: 55, scope: !2050)
!2370 = !DILocation(line: 2087, column: 71, scope: !2050)
!2371 = !DILocation(line: 2088, column: 51, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2050, file: !1, line: 2088, column: 51)
!2373 = !DILocation(line: 2088, column: 56, scope: !2372)
!2374 = !DILocation(line: 2088, column: 53, scope: !2372)
!2375 = !DILocation(line: 2088, column: 51, scope: !2050)
!2376 = !DILocation(line: 2089, column: 53, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2372, file: !1, line: 2088, column: 60)
!2378 = !DILocation(line: 2089, column: 51, scope: !2377)
!2379 = !DILocation(line: 2090, column: 47, scope: !2377)
!2380 = !DILocation(line: 1635, column: 10, scope: !1749, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 2092, column: 49, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !1, line: 2091, column: 49)
!2383 = distinct !DILexicalBlock(scope: !2372, file: !1, line: 2090, column: 54)
!2384 = !DILocation(line: 2096, column: 84, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2050, file: !1, line: 2095, column: 47)
!2386 = !DILocation(line: 2096, column: 89, scope: !2385)
!2387 = !DILocation(line: 2096, column: 78, scope: !2385)
!2388 = !DILocation(line: 2096, column: 105, scope: !2385)
!2389 = !DILocation(line: 2096, column: 70, scope: !2385)
!2390 = !DILocation(line: 2096, column: 47, scope: !2385)
!2391 = !DILocation(line: 2096, column: 52, scope: !2385)
!2392 = !DILocation(line: 2096, column: 68, scope: !2385)
!2393 = !DILocation(line: 2097, column: 47, scope: !2385)
!2394 = !DILocation(line: 2097, column: 52, scope: !2385)
!2395 = !DILocation(line: 2097, column: 57, scope: !2385)
!2396 = !DILocation(line: 2097, column: 65, scope: !2385)
!2397 = !DILocation(line: 2097, column: 84, scope: !2385)
!2398 = !DILocation(line: 2097, column: 103, scope: !2385)
!2399 = !DILocation(line: 2097, column: 124, scope: !2385)
!2400 = !DILocation(line: 2098, column: 70, scope: !2385)
!2401 = !DILocation(line: 2098, column: 78, scope: !2385)
!2402 = !DILocation(line: 2099, column: 70, scope: !2385)
!2403 = !DILocation(line: 2098, column: 56, scope: !2385)
!2404 = !DILocation(line: 2098, column: 54, scope: !2385)
!2405 = !DILocation(line: 2101, column: 47, scope: !2050)
!2406 = !DILocation(line: 2103, column: 47, scope: !2050)
!2407 = !DILocation(line: 2103, column: 55, scope: !2050)
!2408 = !DILocation(line: 2103, column: 63, scope: !2050)
!2409 = !DILocation(line: 2104, column: 51, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2050, file: !1, line: 2104, column: 51)
!2411 = !DILocation(line: 2104, column: 56, scope: !2410)
!2412 = !DILocation(line: 2104, column: 53, scope: !2410)
!2413 = !DILocation(line: 2104, column: 51, scope: !2050)
!2414 = !DILocation(line: 2105, column: 53, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2410, file: !1, line: 2104, column: 60)
!2416 = !DILocation(line: 2105, column: 51, scope: !2415)
!2417 = !DILocation(line: 2106, column: 47, scope: !2415)
!2418 = !DILocation(line: 1635, column: 10, scope: !1749, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 2108, column: 49, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !1, line: 2107, column: 49)
!2421 = distinct !DILexicalBlock(scope: !2410, file: !1, line: 2106, column: 54)
!2422 = !DILocation(line: 2112, column: 84, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2050, file: !1, line: 2111, column: 47)
!2424 = !DILocation(line: 2112, column: 89, scope: !2423)
!2425 = !DILocation(line: 2112, column: 78, scope: !2423)
!2426 = !DILocation(line: 2112, column: 105, scope: !2423)
!2427 = !DILocation(line: 2112, column: 70, scope: !2423)
!2428 = !DILocation(line: 2112, column: 47, scope: !2423)
!2429 = !DILocation(line: 2112, column: 52, scope: !2423)
!2430 = !DILocation(line: 2112, column: 68, scope: !2423)
!2431 = !DILocation(line: 2113, column: 47, scope: !2423)
!2432 = !DILocation(line: 2113, column: 52, scope: !2423)
!2433 = !DILocation(line: 2113, column: 57, scope: !2423)
!2434 = !DILocation(line: 2113, column: 65, scope: !2423)
!2435 = !DILocation(line: 2113, column: 84, scope: !2423)
!2436 = !DILocation(line: 2113, column: 103, scope: !2423)
!2437 = !DILocation(line: 2113, column: 124, scope: !2423)
!2438 = !DILocation(line: 2114, column: 61, scope: !2423)
!2439 = !DILocation(line: 2114, column: 69, scope: !2423)
!2440 = !DILocation(line: 2114, column: 81, scope: !2423)
!2441 = !DILocation(line: 2114, column: 47, scope: !2423)
!2442 = !DILocation(line: 2117, column: 54, scope: !2423)
!2443 = !DILocation(line: 2119, column: 47, scope: !2050)
!2444 = !DILocation(line: 2139, column: 51, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2050, file: !1, line: 2139, column: 51)
!2446 = !DILocation(line: 2139, column: 56, scope: !2445)
!2447 = !DILocation(line: 2139, column: 53, scope: !2445)
!2448 = !DILocation(line: 2139, column: 51, scope: !2050)
!2449 = !DILocation(line: 2140, column: 53, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2445, file: !1, line: 2139, column: 60)
!2451 = !DILocation(line: 2140, column: 51, scope: !2450)
!2452 = !DILocation(line: 2141, column: 47, scope: !2450)
!2453 = !DILocation(line: 1635, column: 10, scope: !1749, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 2143, column: 49, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !1, line: 2142, column: 49)
!2456 = distinct !DILexicalBlock(scope: !2445, file: !1, line: 2141, column: 54)
!2457 = !DILocation(line: 2147, column: 84, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2050, file: !1, line: 2146, column: 47)
!2459 = !DILocation(line: 2147, column: 89, scope: !2458)
!2460 = !DILocation(line: 2147, column: 78, scope: !2458)
!2461 = !DILocation(line: 2147, column: 105, scope: !2458)
!2462 = !DILocation(line: 2147, column: 70, scope: !2458)
!2463 = !DILocation(line: 2147, column: 47, scope: !2458)
!2464 = !DILocation(line: 2147, column: 52, scope: !2458)
!2465 = !DILocation(line: 2147, column: 68, scope: !2458)
!2466 = !DILocation(line: 2148, column: 47, scope: !2458)
!2467 = !DILocation(line: 2148, column: 52, scope: !2458)
!2468 = !DILocation(line: 2148, column: 57, scope: !2458)
!2469 = !DILocation(line: 2148, column: 65, scope: !2458)
!2470 = !DILocation(line: 2148, column: 84, scope: !2458)
!2471 = !DILocation(line: 2148, column: 103, scope: !2458)
!2472 = !DILocation(line: 2148, column: 124, scope: !2458)
!2473 = !DILocation(line: 2149, column: 70, scope: !2458)
!2474 = !DILocation(line: 2149, column: 78, scope: !2458)
!2475 = !DILocation(line: 2150, column: 70, scope: !2458)
!2476 = !DILocation(line: 2149, column: 56, scope: !2458)
!2477 = !DILocation(line: 2149, column: 54, scope: !2458)
!2478 = !DILocation(line: 2152, column: 47, scope: !2050)
!2479 = !DILocation(line: 2153, column: 52, scope: !2051)
!2480 = !DILocation(line: 2178, column: 11, scope: !2030)
!2481 = !DILocation(line: 2178, column: 3, scope: !2030)
!2482 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1435, file: !1, line: 2181, type: !262)
!2483 = !DILocation(line: 2181, column: 40, scope: !1435)
!2484 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !1435, file: !1, line: 2181, type: !1199)
!2485 = !DILocation(line: 2181, column: 60, scope: !1435)
!2486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack", scope: !1435, file: !1, line: 2182, type: !1810)
!2487 = !DILocation(line: 2182, column: 22, scope: !1435)
!2488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt", scope: !1435, file: !1, line: 2183, type: !1869)
!2489 = !DILocation(line: 2183, column: 21, scope: !1435)
!2490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "powerState", scope: !1435, file: !1, line: 2184, type: !1094)
!2491 = !DILocation(line: 2184, column: 15, scope: !1435)
!2492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "powerType", scope: !1435, file: !1, line: 2185, type: !1092)
!2493 = !DILocation(line: 2185, column: 20, scope: !1435)
!2494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1435, file: !1, line: 2186, type: !300)
!2495 = !DILocation(line: 2186, column: 12, scope: !1435)
!2496 = !DILocation(line: 2189, column: 40, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !1435, file: !1, line: 2188, column: 3)
!2498 = !DILocation(line: 2189, column: 54, scope: !2497)
!2499 = !DILocation(line: 2189, column: 12, scope: !2497)
!2500 = !DILocation(line: 2189, column: 10, scope: !2497)
!2501 = !DILocation(line: 2190, column: 14, scope: !2497)
!2502 = !DILocation(line: 2190, column: 19, scope: !2497)
!2503 = !DILocation(line: 2190, column: 24, scope: !2497)
!2504 = !DILocation(line: 2190, column: 32, scope: !2497)
!2505 = !DILocation(line: 2190, column: 51, scope: !2497)
!2506 = !DILocation(line: 2190, column: 70, scope: !2497)
!2507 = !DILocation(line: 2190, column: 12, scope: !2497)
!2508 = !DILocation(line: 2191, column: 15, scope: !2497)
!2509 = !DILocation(line: 2191, column: 25, scope: !2497)
!2510 = !DILocation(line: 2191, column: 36, scope: !2497)
!2511 = !DILocation(line: 2191, column: 42, scope: !2497)
!2512 = !DILocation(line: 2191, column: 13, scope: !2497)
!2513 = !DILocation(line: 2192, column: 16, scope: !2497)
!2514 = !DILocation(line: 2192, column: 26, scope: !2497)
!2515 = !DILocation(line: 2192, column: 37, scope: !2497)
!2516 = !DILocation(line: 2192, column: 43, scope: !2497)
!2517 = !DILocation(line: 2193, column: 7, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2497, file: !1, line: 2193, column: 7)
!2519 = !DILocation(line: 2193, column: 17, scope: !2518)
!2520 = !DILocation(line: 2193, column: 31, scope: !2518)
!2521 = !DILocation(line: 2193, column: 7, scope: !2497)
!2522 = !DILocation(line: 2194, column: 5, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2518, file: !1, line: 2193, column: 37)
!2524 = !DILocation(line: 2196, column: 9, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !1, line: 2196, column: 9)
!2526 = distinct !DILexicalBlock(scope: !2518, file: !1, line: 2195, column: 10)
!2527 = !DILocation(line: 2196, column: 19, scope: !2525)
!2528 = !DILocation(line: 2196, column: 33, scope: !2525)
!2529 = !DILocation(line: 2196, column: 9, scope: !2526)
!2530 = !DILocation(line: 2197, column: 7, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2525, file: !1, line: 2196, column: 39)
!2532 = !DILocation(line: 2199, column: 11, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !1, line: 2199, column: 11)
!2534 = distinct !DILexicalBlock(scope: !2525, file: !1, line: 2198, column: 12)
!2535 = !DILocation(line: 2199, column: 21, scope: !2533)
!2536 = !DILocation(line: 2199, column: 35, scope: !2533)
!2537 = !DILocation(line: 2199, column: 11, scope: !2534)
!2538 = !DILocation(line: 2200, column: 9, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2533, file: !1, line: 2199, column: 41)
!2540 = !DILocation(line: 2202, column: 13, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !1, line: 2202, column: 13)
!2542 = distinct !DILexicalBlock(scope: !2533, file: !1, line: 2201, column: 14)
!2543 = !DILocation(line: 2202, column: 23, scope: !2541)
!2544 = !DILocation(line: 2202, column: 37, scope: !2541)
!2545 = !DILocation(line: 2202, column: 13, scope: !2542)
!2546 = !DILocation(line: 2203, column: 11, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2541, file: !1, line: 2202, column: 43)
!2548 = !DILocation(line: 2206, column: 11, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !1, line: 2205, column: 11)
!2550 = distinct !DILexicalBlock(scope: !2541, file: !1, line: 2204, column: 16)
!2551 = !DILocation(line: 2207, column: 15, scope: !2549)
!2552 = !DILocation(line: 2207, column: 18, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2549, file: !1, line: 2207, column: 15)
!2554 = !DILocation(line: 2209, column: 23, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !1, line: 2209, column: 17)
!2556 = distinct !DILexicalBlock(scope: !2553, file: !1, line: 2207, column: 18)
!2557 = !DILocation(line: 2209, column: 33, scope: !2555)
!2558 = !DILocation(line: 2209, column: 17, scope: !2556)
!2559 = !DILocation(line: 2210, column: 48, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2555, file: !1, line: 2209, column: 39)
!2561 = !DILocation(line: 2210, column: 15, scope: !2560)
!2562 = !DILocation(line: 2210, column: 23, scope: !2560)
!2563 = !DILocation(line: 2210, column: 35, scope: !2560)
!2564 = !DILocation(line: 2211, column: 13, scope: !2560)
!2565 = !DILocation(line: 2209, column: 36, scope: !2555)
!2566 = !DILocation(line: 2218, column: 13, scope: !2556)
!2567 = !DILocation(line: 2219, column: 18, scope: !2553)
!2568 = !DILocation(line: 2230, column: 7, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2497, file: !1, line: 2230, column: 7)
!2570 = !DILocation(line: 2230, column: 12, scope: !2569)
!2571 = !DILocation(line: 2230, column: 9, scope: !2569)
!2572 = !DILocation(line: 2230, column: 7, scope: !2497)
!2573 = !DILocation(line: 2231, column: 9, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2569, file: !1, line: 2230, column: 16)
!2575 = !DILocation(line: 2231, column: 7, scope: !2574)
!2576 = !DILocation(line: 2232, column: 3, scope: !2574)
!2577 = !DILocation(line: 1635, column: 10, scope: !1749, inlinedAt: !2578)
!2578 = distinct !DILocation(line: 2234, column: 5, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !1, line: 2233, column: 5)
!2580 = distinct !DILexicalBlock(scope: !2569, file: !1, line: 2232, column: 10)
!2581 = !DILocation(line: 2238, column: 40, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2497, file: !1, line: 2237, column: 3)
!2583 = !DILocation(line: 2238, column: 45, scope: !2582)
!2584 = !DILocation(line: 2238, column: 34, scope: !2582)
!2585 = !DILocation(line: 2238, column: 61, scope: !2582)
!2586 = !DILocation(line: 2238, column: 26, scope: !2582)
!2587 = !DILocation(line: 2238, column: 3, scope: !2582)
!2588 = !DILocation(line: 2238, column: 8, scope: !2582)
!2589 = !DILocation(line: 2238, column: 24, scope: !2582)
!2590 = !DILocation(line: 2239, column: 3, scope: !2582)
!2591 = !DILocation(line: 2239, column: 8, scope: !2582)
!2592 = !DILocation(line: 2239, column: 13, scope: !2582)
!2593 = !DILocation(line: 2239, column: 21, scope: !2582)
!2594 = !DILocation(line: 2239, column: 40, scope: !2582)
!2595 = !DILocation(line: 2239, column: 59, scope: !2582)
!2596 = !DILocation(line: 2239, column: 80, scope: !2582)
!2597 = !DILocation(line: 2240, column: 22, scope: !2582)
!2598 = !DILocation(line: 2240, column: 30, scope: !2582)
!2599 = !DILocation(line: 2240, column: 42, scope: !2582)
!2600 = !DILocation(line: 2240, column: 9, scope: !2582)
!2601 = !DILocation(line: 2240, column: 7, scope: !2582)
!2602 = !DILocation(line: 2242, column: 11, scope: !2497)
!2603 = !DILocation(line: 2242, column: 3, scope: !2497)
!2604 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1433, file: !1, line: 1813, type: !262)
!2605 = !DILocation(line: 1813, column: 46, scope: !1433)
!2606 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !1433, file: !1, line: 1813, type: !1199)
!2607 = !DILocation(line: 1813, column: 66, scope: !1433)
!2608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack", scope: !1433, file: !1, line: 1814, type: !1810)
!2609 = !DILocation(line: 1814, column: 22, scope: !1433)
!2610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt", scope: !1433, file: !1, line: 1815, type: !1869)
!2611 = !DILocation(line: 1815, column: 21, scope: !1433)
!2612 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hookKeyboard", scope: !1433, file: !1, line: 1816, type: !2613)
!2613 = !DIDerivedType(tag: DW_TAG_typedef, name: "PINTERNAL_I8042_HOOK_KEYBOARD", file: !1, line: 1384, baseType: !1400)
!2614 = !DILocation(line: 1816, column: 33, scope: !1433)
!2615 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "connectData", scope: !1433, file: !1, line: 1817, type: !2616)
!2616 = !DIDerivedType(tag: DW_TAG_typedef, name: "PCONNECT_DATA", file: !1, line: 1349, baseType: !1399)
!2617 = !DILocation(line: 1817, column: 17, scope: !1433)
!2618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !1433, file: !1, line: 1818, type: !300)
!2619 = !DILocation(line: 1818, column: 12, scope: !1433)
!2620 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1433, file: !1, line: 1819, type: !300)
!2621 = !DILocation(line: 1819, column: 12, scope: !1433)
!2622 = !DILocation(line: 1822, column: 10, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !1433, file: !1, line: 1821, column: 3)
!2624 = !DILocation(line: 1823, column: 40, scope: !2623)
!2625 = !DILocation(line: 1823, column: 54, scope: !2623)
!2626 = !DILocation(line: 1823, column: 12, scope: !2623)
!2627 = !DILocation(line: 1823, column: 10, scope: !2623)
!2628 = !DILocation(line: 1824, column: 3, scope: !2623)
!2629 = !DILocation(line: 1824, column: 8, scope: !2623)
!2630 = !DILocation(line: 1824, column: 17, scope: !2623)
!2631 = !DILocation(line: 1824, column: 29, scope: !2623)
!2632 = !DILocation(line: 1825, column: 14, scope: !2623)
!2633 = !DILocation(line: 1825, column: 19, scope: !2623)
!2634 = !DILocation(line: 1825, column: 24, scope: !2623)
!2635 = !DILocation(line: 1825, column: 32, scope: !2623)
!2636 = !DILocation(line: 1825, column: 51, scope: !2623)
!2637 = !DILocation(line: 1825, column: 70, scope: !2623)
!2638 = !DILocation(line: 1825, column: 12, scope: !2623)
!2639 = !DILocation(line: 1826, column: 7, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2623, file: !1, line: 1826, column: 7)
!2641 = !DILocation(line: 1826, column: 17, scope: !2640)
!2642 = !DILocation(line: 1826, column: 28, scope: !2640)
!2643 = !DILocation(line: 1826, column: 44, scope: !2640)
!2644 = !DILocation(line: 1826, column: 58, scope: !2640)
!2645 = !DILocation(line: 3087, column: 30, scope: !1574, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 1936, column: 5, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !1, line: 1933, column: 5)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !1, line: 1932, column: 25)
!2649 = distinct !DILexicalBlock(scope: !2623, file: !1, line: 1932, column: 7)
!2650 = !DILocation(line: 3087, column: 42, scope: !1574, inlinedAt: !2646)
!2651 = !DILocation(line: 1791, column: 54, scope: !1432, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 1943, column: 9, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2623, file: !1, line: 1942, column: 3)
!2654 = !DILocation(line: 1791, column: 74, scope: !1432, inlinedAt: !2652)
!2655 = !DILocation(line: 1792, column: 22, scope: !1432, inlinedAt: !2652)
!2656 = !DILocation(line: 1793, column: 12, scope: !1432, inlinedAt: !2652)
!2657 = !DILocation(line: 1826, column: 7, scope: !2623)
!2658 = !DILocation(line: 1827, column: 5, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2640, file: !1, line: 1826, column: 94)
!2660 = !DILocation(line: 1829, column: 9, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !1, line: 1829, column: 9)
!2662 = distinct !DILexicalBlock(scope: !2640, file: !1, line: 1828, column: 10)
!2663 = !DILocation(line: 1829, column: 19, scope: !2661)
!2664 = !DILocation(line: 1829, column: 30, scope: !2661)
!2665 = !DILocation(line: 1829, column: 46, scope: !2661)
!2666 = !DILocation(line: 1829, column: 60, scope: !2661)
!2667 = !DILocation(line: 1829, column: 9, scope: !2662)
!2668 = !DILocation(line: 1830, column: 7, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2661, file: !1, line: 1829, column: 96)
!2670 = !DILocation(line: 1832, column: 11, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !1, line: 1832, column: 11)
!2672 = distinct !DILexicalBlock(scope: !2661, file: !1, line: 1831, column: 12)
!2673 = !DILocation(line: 1832, column: 21, scope: !2671)
!2674 = !DILocation(line: 1832, column: 32, scope: !2671)
!2675 = !DILocation(line: 1832, column: 48, scope: !2671)
!2676 = !DILocation(line: 1832, column: 62, scope: !2671)
!2677 = !DILocation(line: 1832, column: 11, scope: !2672)
!2678 = !DILocation(line: 1833, column: 9, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2671, file: !1, line: 1832, column: 99)
!2680 = !DILocation(line: 1835, column: 13, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !1, line: 1835, column: 13)
!2682 = distinct !DILexicalBlock(scope: !2671, file: !1, line: 1834, column: 14)
!2683 = !DILocation(line: 1835, column: 23, scope: !2681)
!2684 = !DILocation(line: 1835, column: 34, scope: !2681)
!2685 = !DILocation(line: 1835, column: 50, scope: !2681)
!2686 = !DILocation(line: 1835, column: 64, scope: !2681)
!2687 = !DILocation(line: 1835, column: 13, scope: !2682)
!2688 = !DILocation(line: 1836, column: 11, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2681, file: !1, line: 1835, column: 77)
!2690 = !DILocation(line: 1838, column: 15, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !1, line: 1838, column: 15)
!2692 = distinct !DILexicalBlock(scope: !2681, file: !1, line: 1837, column: 16)
!2693 = !DILocation(line: 1838, column: 25, scope: !2691)
!2694 = !DILocation(line: 1838, column: 36, scope: !2691)
!2695 = !DILocation(line: 1838, column: 52, scope: !2691)
!2696 = !DILocation(line: 1838, column: 66, scope: !2691)
!2697 = !DILocation(line: 1838, column: 15, scope: !2692)
!2698 = !DILocation(line: 1839, column: 13, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2691, file: !1, line: 1838, column: 95)
!2700 = !DILocation(line: 1841, column: 17, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !1, line: 1841, column: 17)
!2702 = distinct !DILexicalBlock(scope: !2691, file: !1, line: 1840, column: 18)
!2703 = !DILocation(line: 1841, column: 27, scope: !2701)
!2704 = !DILocation(line: 1841, column: 38, scope: !2701)
!2705 = !DILocation(line: 1841, column: 54, scope: !2701)
!2706 = !DILocation(line: 1841, column: 68, scope: !2701)
!2707 = !DILocation(line: 1841, column: 17, scope: !2702)
!2708 = !DILocation(line: 1842, column: 15, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2701, file: !1, line: 1841, column: 97)
!2710 = !DILocation(line: 1844, column: 19, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !1, line: 1844, column: 19)
!2712 = distinct !DILexicalBlock(scope: !2701, file: !1, line: 1843, column: 20)
!2713 = !DILocation(line: 1844, column: 29, scope: !2711)
!2714 = !DILocation(line: 1844, column: 40, scope: !2711)
!2715 = !DILocation(line: 1844, column: 56, scope: !2711)
!2716 = !DILocation(line: 1844, column: 70, scope: !2711)
!2717 = !DILocation(line: 1844, column: 19, scope: !2712)
!2718 = !DILocation(line: 1845, column: 17, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2711, file: !1, line: 1844, column: 98)
!2720 = !DILocation(line: 1847, column: 21, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !1, line: 1847, column: 21)
!2722 = distinct !DILexicalBlock(scope: !2711, file: !1, line: 1846, column: 22)
!2723 = !DILocation(line: 1847, column: 31, scope: !2721)
!2724 = !DILocation(line: 1847, column: 42, scope: !2721)
!2725 = !DILocation(line: 1847, column: 58, scope: !2721)
!2726 = !DILocation(line: 1847, column: 72, scope: !2721)
!2727 = !DILocation(line: 1847, column: 21, scope: !2722)
!2728 = !DILocation(line: 1848, column: 19, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2721, file: !1, line: 1847, column: 100)
!2730 = !DILocation(line: 1850, column: 23, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !1, line: 1850, column: 23)
!2732 = distinct !DILexicalBlock(scope: !2721, file: !1, line: 1849, column: 24)
!2733 = !DILocation(line: 1850, column: 33, scope: !2731)
!2734 = !DILocation(line: 1850, column: 44, scope: !2731)
!2735 = !DILocation(line: 1850, column: 60, scope: !2731)
!2736 = !DILocation(line: 1850, column: 74, scope: !2731)
!2737 = !DILocation(line: 1850, column: 23, scope: !2732)
!2738 = !DILocation(line: 1851, column: 21, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2731, file: !1, line: 1850, column: 102)
!2740 = !DILocation(line: 1853, column: 25, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2731, file: !1, line: 1852, column: 26)
!2742 = !DILocation(line: 1853, column: 28, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2741, file: !1, line: 1853, column: 25)
!2744 = !DILocation(line: 1855, column: 42, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !1, line: 1855, column: 27)
!2746 = distinct !DILexicalBlock(scope: !2743, file: !1, line: 1853, column: 28)
!2747 = !DILocation(line: 1855, column: 50, scope: !2745)
!2748 = !DILocation(line: 1855, column: 67, scope: !2745)
!2749 = !DILocation(line: 1855, column: 27, scope: !2745)
!2750 = !DILocation(line: 1855, column: 80, scope: !2745)
!2751 = !DILocation(line: 1855, column: 27, scope: !2746)
!2752 = !DILocation(line: 1856, column: 32, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2745, file: !1, line: 1855, column: 111)
!2754 = !DILocation(line: 1857, column: 25, scope: !2753)
!2755 = !DILocation(line: 1859, column: 29, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !1, line: 1859, column: 29)
!2757 = distinct !DILexicalBlock(scope: !2745, file: !1, line: 1858, column: 30)
!2758 = !DILocation(line: 1859, column: 39, scope: !2756)
!2759 = !DILocation(line: 1859, column: 50, scope: !2756)
!2760 = !DILocation(line: 1859, column: 66, scope: !2756)
!2761 = !DILocation(line: 1859, column: 84, scope: !2756)
!2762 = !DILocation(line: 1859, column: 29, scope: !2757)
!2763 = !DILocation(line: 1860, column: 34, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2756, file: !1, line: 1859, column: 117)
!2765 = !DILocation(line: 1861, column: 27, scope: !2764)
!2766 = !DILocation(line: 1866, column: 61, scope: !2746)
!2767 = !DILocation(line: 1866, column: 71, scope: !2746)
!2768 = !DILocation(line: 1866, column: 82, scope: !2746)
!2769 = !DILocation(line: 1866, column: 98, scope: !2746)
!2770 = !DILocation(line: 1866, column: 37, scope: !2746)
!2771 = !DILocation(line: 1866, column: 35, scope: !2746)
!2772 = !DILocation(line: 1867, column: 23, scope: !2746)
!2773 = !DILocation(line: 1867, column: 31, scope: !2746)
!2774 = !DILocation(line: 1867, column: 51, scope: !2746)
!2775 = !DILocation(line: 1867, column: 50, scope: !2746)
!2776 = !DILocation(line: 1868, column: 56, scope: !2746)
!2777 = !DILocation(line: 1868, column: 64, scope: !2746)
!2778 = !DILocation(line: 1868, column: 23, scope: !2746)
!2779 = !DILocation(line: 1868, column: 36, scope: !2746)
!2780 = !DILocation(line: 1868, column: 54, scope: !2746)
!2781 = !DILocation(line: 1869, column: 23, scope: !2746)
!2782 = !DILocation(line: 1869, column: 36, scope: !2746)
!2783 = !DILocation(line: 1869, column: 49, scope: !2746)
!2784 = !DILocation(line: 1870, column: 23, scope: !2746)
!2785 = !DILocation(line: 1872, column: 30, scope: !2746)
!2786 = !DILocation(line: 1873, column: 23, scope: !2746)
!2787 = !DILocation(line: 1875, column: 27, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2746, file: !1, line: 1875, column: 27)
!2789 = !DILocation(line: 1875, column: 37, scope: !2788)
!2790 = !DILocation(line: 1875, column: 48, scope: !2788)
!2791 = !DILocation(line: 1875, column: 64, scope: !2788)
!2792 = !DILocation(line: 1875, column: 82, scope: !2788)
!2793 = !DILocation(line: 1875, column: 27, scope: !2746)
!2794 = !DILocation(line: 1876, column: 32, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2788, file: !1, line: 1875, column: 131)
!2796 = !DILocation(line: 1877, column: 25, scope: !2795)
!2797 = !DILocation(line: 1881, column: 78, scope: !2746)
!2798 = !DILocation(line: 1881, column: 88, scope: !2746)
!2799 = !DILocation(line: 1881, column: 99, scope: !2746)
!2800 = !DILocation(line: 1881, column: 115, scope: !2746)
!2801 = !DILocation(line: 1881, column: 38, scope: !2746)
!2802 = !DILocation(line: 1881, column: 36, scope: !2746)
!2803 = !DILocation(line: 1882, column: 46, scope: !2746)
!2804 = !DILocation(line: 1882, column: 60, scope: !2746)
!2805 = !DILocation(line: 1882, column: 23, scope: !2746)
!2806 = !DILocation(line: 1882, column: 31, scope: !2746)
!2807 = !DILocation(line: 1882, column: 44, scope: !2746)
!2808 = !DILocation(line: 1883, column: 55, scope: !2746)
!2809 = !DILocation(line: 1883, column: 47, scope: !2746)
!2810 = !DILocation(line: 1883, column: 23, scope: !2746)
!2811 = !DILocation(line: 1883, column: 37, scope: !2746)
!2812 = !DILocation(line: 1883, column: 45, scope: !2746)
!2813 = !DILocation(line: 1884, column: 27, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2746, file: !1, line: 1884, column: 27)
!2815 = !DILocation(line: 1884, column: 41, scope: !2814)
!2816 = !DILocation(line: 1884, column: 27, scope: !2746)
!2817 = !DILocation(line: 1885, column: 62, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2814, file: !1, line: 1884, column: 64)
!2819 = !DILocation(line: 1885, column: 76, scope: !2818)
!2820 = !DILocation(line: 1885, column: 25, scope: !2818)
!2821 = !DILocation(line: 1885, column: 33, scope: !2818)
!2822 = !DILocation(line: 1885, column: 60, scope: !2818)
!2823 = !DILocation(line: 1886, column: 23, scope: !2818)
!2824 = !DILocation(line: 1889, column: 23, scope: !2746)
!2825 = !DILocation(line: 1889, column: 37, scope: !2746)
!2826 = !DILocation(line: 1889, column: 59, scope: !2746)
!2827 = !DILocation(line: 1898, column: 27, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2746, file: !1, line: 1898, column: 27)
!2829 = !DILocation(line: 1898, column: 41, scope: !2828)
!2830 = !DILocation(line: 1898, column: 27, scope: !2746)
!2831 = !DILocation(line: 1899, column: 48, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2828, file: !1, line: 1898, column: 53)
!2833 = !DILocation(line: 1899, column: 62, scope: !2832)
!2834 = !DILocation(line: 1899, column: 25, scope: !2832)
!2835 = !DILocation(line: 1899, column: 33, scope: !2832)
!2836 = !DILocation(line: 1899, column: 46, scope: !2832)
!2837 = !DILocation(line: 1900, column: 23, scope: !2832)
!2838 = !DILocation(line: 1903, column: 23, scope: !2746)
!2839 = !DILocation(line: 1903, column: 37, scope: !2746)
!2840 = !DILocation(line: 1903, column: 48, scope: !2746)
!2841 = !DILocation(line: 1908, column: 46, scope: !2746)
!2842 = !DILocation(line: 1908, column: 60, scope: !2746)
!2843 = !DILocation(line: 1908, column: 23, scope: !2746)
!2844 = !DILocation(line: 1908, column: 31, scope: !2746)
!2845 = !DILocation(line: 1908, column: 44, scope: !2746)
!2846 = !DILocation(line: 1909, column: 53, scope: !2746)
!2847 = !DILocation(line: 1909, column: 67, scope: !2746)
!2848 = !DILocation(line: 1909, column: 23, scope: !2746)
!2849 = !DILocation(line: 1909, column: 31, scope: !2746)
!2850 = !DILocation(line: 1909, column: 51, scope: !2746)
!2851 = !DILocation(line: 1910, column: 45, scope: !2746)
!2852 = !DILocation(line: 1910, column: 59, scope: !2746)
!2853 = !DILocation(line: 1910, column: 23, scope: !2746)
!2854 = !DILocation(line: 1910, column: 31, scope: !2746)
!2855 = !DILocation(line: 1910, column: 43, scope: !2746)
!2856 = !DILocation(line: 1911, column: 30, scope: !2746)
!2857 = !DILocation(line: 1912, column: 23, scope: !2746)
!2858 = !DILocation(line: 1919, column: 23, scope: !2746)
!2859 = !DILocation(line: 1920, column: 28, scope: !2743)
!2860 = !DILocation(line: 1932, column: 10, scope: !2649)
!2861 = !DILocation(line: 1932, column: 17, scope: !2649)
!2862 = !DILocation(line: 1932, column: 7, scope: !2623)
!2863 = !DILocation(line: 1934, column: 46, scope: !2647)
!2864 = !DILocation(line: 1934, column: 5, scope: !2647)
!2865 = !DILocation(line: 1934, column: 10, scope: !2647)
!2866 = !DILocation(line: 1934, column: 19, scope: !2647)
!2867 = !DILocation(line: 1934, column: 37, scope: !2647)
!2868 = !DILocation(line: 1934, column: 44, scope: !2647)
!2869 = !DILocation(line: 1935, column: 16, scope: !2647)
!2870 = !DILocation(line: 1935, column: 14, scope: !2647)
!2871 = !DILocation(line: 1936, column: 24, scope: !2647)
!2872 = !DILocation(line: 1936, column: 5, scope: !2647)
!2873 = !DILocation(line: 3091, column: 7, scope: !2354, inlinedAt: !2646)
!2874 = !DILocation(line: 3091, column: 12, scope: !2354, inlinedAt: !2646)
!2875 = !DILocation(line: 3091, column: 9, scope: !2354, inlinedAt: !2646)
!2876 = !DILocation(line: 3091, column: 7, scope: !2355, inlinedAt: !2646)
!2877 = !DILocation(line: 1635, column: 10, scope: !1749, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 3095, column: 5, scope: !2361, inlinedAt: !2646)
!2879 = !DILocation(line: 3092, column: 9, scope: !2364, inlinedAt: !2646)
!2880 = !DILocation(line: 3092, column: 7, scope: !2364, inlinedAt: !2646)
!2881 = !DILocation(line: 3098, column: 3, scope: !2355, inlinedAt: !2646)
!2882 = !DILocation(line: 1938, column: 13, scope: !2648)
!2883 = !DILocation(line: 1938, column: 5, scope: !2648)
!2884 = !DILocation(line: 1943, column: 38, scope: !2653)
!2885 = !DILocation(line: 1943, column: 52, scope: !2653)
!2886 = !DILocation(line: 1943, column: 9, scope: !2653)
!2887 = !DILocation(line: 1796, column: 14, scope: !1815, inlinedAt: !2652)
!2888 = !DILocation(line: 1796, column: 19, scope: !1815, inlinedAt: !2652)
!2889 = !DILocation(line: 1796, column: 24, scope: !1815, inlinedAt: !2652)
!2890 = !DILocation(line: 1796, column: 32, scope: !1815, inlinedAt: !2652)
!2891 = !DILocation(line: 1796, column: 51, scope: !1815, inlinedAt: !2652)
!2892 = !DILocation(line: 1796, column: 70, scope: !1815, inlinedAt: !2652)
!2893 = !DILocation(line: 1796, column: 12, scope: !1815, inlinedAt: !2652)
!2894 = !DILocation(line: 1797, column: 7, scope: !1823, inlinedAt: !2652)
!2895 = !DILocation(line: 1797, column: 12, scope: !1823, inlinedAt: !2652)
!2896 = !DILocation(line: 1797, column: 9, scope: !1823, inlinedAt: !2652)
!2897 = !DILocation(line: 1797, column: 7, scope: !1815, inlinedAt: !2652)
!2898 = !DILocation(line: 1635, column: 10, scope: !1749, inlinedAt: !2899)
!2899 = distinct !DILocation(line: 1801, column: 5, scope: !1833, inlinedAt: !2652)
!2900 = !DILocation(line: 1798, column: 9, scope: !1828, inlinedAt: !2652)
!2901 = !DILocation(line: 1798, column: 7, scope: !1828, inlinedAt: !2652)
!2902 = !DILocation(line: 1805, column: 40, scope: !1836, inlinedAt: !2652)
!2903 = !DILocation(line: 1805, column: 45, scope: !1836, inlinedAt: !2652)
!2904 = !DILocation(line: 1805, column: 34, scope: !1836, inlinedAt: !2652)
!2905 = !DILocation(line: 1805, column: 61, scope: !1836, inlinedAt: !2652)
!2906 = !DILocation(line: 1805, column: 26, scope: !1836, inlinedAt: !2652)
!2907 = !DILocation(line: 1805, column: 3, scope: !1836, inlinedAt: !2652)
!2908 = !DILocation(line: 1805, column: 8, scope: !1836, inlinedAt: !2652)
!2909 = !DILocation(line: 1805, column: 24, scope: !1836, inlinedAt: !2652)
!2910 = !DILocation(line: 1806, column: 3, scope: !1836, inlinedAt: !2652)
!2911 = !DILocation(line: 1806, column: 8, scope: !1836, inlinedAt: !2652)
!2912 = !DILocation(line: 1806, column: 13, scope: !1836, inlinedAt: !2652)
!2913 = !DILocation(line: 1806, column: 21, scope: !1836, inlinedAt: !2652)
!2914 = !DILocation(line: 1806, column: 40, scope: !1836, inlinedAt: !2652)
!2915 = !DILocation(line: 1806, column: 59, scope: !1836, inlinedAt: !2652)
!2916 = !DILocation(line: 1806, column: 80, scope: !1836, inlinedAt: !2652)
!2917 = !DILocation(line: 1807, column: 52, scope: !1836, inlinedAt: !2652)
!2918 = !DILocation(line: 1807, column: 66, scope: !1836, inlinedAt: !2652)
!2919 = !DILocation(line: 1807, column: 24, scope: !1836, inlinedAt: !2652)
!2920 = !DILocation(line: 1807, column: 84, scope: !1836, inlinedAt: !2652)
!2921 = !DILocation(line: 1808, column: 23, scope: !1836, inlinedAt: !2652)
!2922 = !DILocation(line: 1807, column: 9, scope: !1836, inlinedAt: !2652)
!2923 = !DILocation(line: 1807, column: 7, scope: !1836, inlinedAt: !2652)
!2924 = !DILocation(line: 1810, column: 11, scope: !1815, inlinedAt: !2652)
!2925 = !DILocation(line: 1810, column: 3, scope: !1815, inlinedAt: !2652)
!2926 = !DILocation(line: 1943, column: 7, scope: !2653)
!2927 = !DILocation(line: 1945, column: 11, scope: !2623)
!2928 = !DILocation(line: 1945, column: 3, scope: !2623)
!2929 = !DILocation(line: 1947, column: 1, scope: !1433)
!2930 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Driver", arg: 1, scope: !1447, file: !1, line: 2320, type: !1424)
!2931 = !DILocation(line: 2320, column: 37, scope: !1447)
!2932 = !DILocation(line: 2324, column: 3, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !1447, file: !1, line: 2323, column: 3)
!2934 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Driver", arg: 1, scope: !1425, file: !1, line: 1691, type: !1424)
!2935 = !DILocation(line: 1691, column: 44, scope: !1425)
!2936 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PDO", arg: 2, scope: !1425, file: !1, line: 1691, type: !262)
!2937 = !DILocation(line: 1691, column: 68, scope: !1425)
!2938 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt", scope: !1425, file: !1, line: 1692, type: !1869)
!2939 = !DILocation(line: 1692, column: 21, scope: !1425)
!2940 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "device", scope: !1425, file: !1, line: 1693, type: !262)
!2941 = !DILocation(line: 1693, column: 18, scope: !1425)
!2942 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !1425, file: !1, line: 1694, type: !300)
!2943 = !DILocation(line: 1694, column: 12, scope: !1425)
!2944 = !DILocation(line: 1698, column: 10, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !1, line: 1697, column: 3)
!2946 = distinct !DILexicalBlock(scope: !1425, file: !1, line: 1696, column: 3)
!2947 = !DILocation(line: 1699, column: 27, scope: !2945)
!2948 = !DILocation(line: 1699, column: 12, scope: !2945)
!2949 = !DILocation(line: 2763, column: 24, scope: !1499, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 1699, column: 12, scope: !2945)
!2951 = !DILocation(line: 2763, column: 7, scope: !1499, inlinedAt: !2950)
!2952 = !DILocation(line: 2767, column: 7, scope: !2953, inlinedAt: !2950)
!2953 = distinct !DILexicalBlock(scope: !2954, file: !1, line: 2767, column: 7)
!2954 = distinct !DILexicalBlock(scope: !1499, file: !1, line: 2766, column: 3)
!2955 = !DILocation(line: 2767, column: 22, scope: !2953, inlinedAt: !2950)
!2956 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SourceDevice", arg: 1, scope: !1490, file: !1, line: 2662, type: !262)
!2957 = !DILocation(line: 2662, column: 59, scope: !1490, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 1710, column: 24, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2946, file: !1, line: 1707, column: 3)
!2960 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "TargetDevice", arg: 2, scope: !1490, file: !1, line: 2662, type: !262)
!2961 = !DILocation(line: 2662, column: 89, scope: !1490, inlinedAt: !2958)
!2962 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET", scope: !1490, file: !1, line: 2663, type: !1398)
!2963 = !DILocation(line: 2663, column: 7, scope: !1490, inlinedAt: !2958)
!2964 = !DILocation(line: 2767, column: 7, scope: !2954, inlinedAt: !2950)
!2965 = !DILocation(line: 2775, column: 13, scope: !2966, inlinedAt: !2950)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !1, line: 2774, column: 7)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !1, line: 2772, column: 12)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !1, line: 2772, column: 9)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !1, line: 2770, column: 5)
!2970 = distinct !DILexicalBlock(scope: !2953, file: !1, line: 2769, column: 10)
!2971 = !DILocation(line: 2547, column: 24, scope: !1454, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 2775, column: 13, scope: !2966, inlinedAt: !2950)
!2973 = !DILocation(line: 2547, column: 7, scope: !1454, inlinedAt: !2972)
!2974 = !DILocation(line: 2550, column: 7, scope: !2975, inlinedAt: !2972)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !1, line: 2550, column: 7)
!2976 = distinct !DILexicalBlock(scope: !1454, file: !1, line: 2549, column: 3)
!2977 = !DILocation(line: 2550, column: 7, scope: !2976, inlinedAt: !2972)
!2978 = !DILocation(line: 2780, column: 7, scope: !2967, inlinedAt: !2950)
!2979 = !DILocation(line: 2551, column: 5, scope: !2980, inlinedAt: !2972)
!2980 = distinct !DILexicalBlock(scope: !2975, file: !1, line: 2550, column: 23)
!2981 = !DILocation(line: 2553, column: 5, scope: !2982, inlinedAt: !2972)
!2982 = distinct !DILexicalBlock(scope: !2975, file: !1, line: 2552, column: 10)
!2983 = !DILocation(line: 2556, column: 1, scope: !1454, inlinedAt: !2972)
!2984 = !DILocation(line: 2775, column: 11, scope: !2966, inlinedAt: !2950)
!2985 = !DILocation(line: 2776, column: 31, scope: !2966, inlinedAt: !2950)
!2986 = !DILocation(line: 2776, column: 23, scope: !2966, inlinedAt: !2950)
!2987 = !DILocation(line: 2776, column: 8, scope: !2966, inlinedAt: !2950)
!2988 = !DILocation(line: 2776, column: 21, scope: !2966, inlinedAt: !2950)
!2989 = !DILocation(line: 2778, column: 7, scope: !2967, inlinedAt: !2950)
!2990 = !DILocation(line: 2787, column: 1, scope: !1499, inlinedAt: !2950)
!2991 = !DILocation(line: 1699, column: 10, scope: !2945)
!2992 = !DILocation(line: 1702, column: 10, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2946, file: !1, line: 1702, column: 7)
!2994 = !DILocation(line: 1702, column: 17, scope: !2993)
!2995 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 1, scope: !1454, file: !1, line: 2546, type: !1398)
!2996 = !DILocation(line: 2546, column: 18, scope: !1454, inlinedAt: !2972)
!2997 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET", scope: !1454, file: !1, line: 2547, type: !1398)
!2998 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DriverObject", arg: 1, scope: !1499, file: !1, line: 2760, type: !1424)
!2999 = !DILocation(line: 2760, column: 40, scope: !1499, inlinedAt: !2950)
!3000 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceExtensionSize", arg: 2, scope: !1499, file: !1, line: 2760, type: !283)
!3001 = !DILocation(line: 2760, column: 61, scope: !1499, inlinedAt: !2950)
!3002 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceName", arg: 3, scope: !1499, file: !1, line: 2761, type: !315)
!3003 = !DILocation(line: 2761, column: 41, scope: !1499, inlinedAt: !2950)
!3004 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceType", arg: 4, scope: !1499, file: !1, line: 2761, type: !283)
!3005 = !DILocation(line: 2761, column: 60, scope: !1499, inlinedAt: !2950)
!3006 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceCharacteristics", arg: 5, scope: !1499, file: !1, line: 2761, type: !283)
!3007 = !DILocation(line: 2761, column: 79, scope: !1499, inlinedAt: !2950)
!3008 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Exclusive", arg: 6, scope: !1499, file: !1, line: 2762, type: !327)
!3009 = !DILocation(line: 2762, column: 33, scope: !1499, inlinedAt: !2950)
!3010 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 7, scope: !1499, file: !1, line: 2762, type: !1502)
!3011 = !DILocation(line: 2762, column: 61, scope: !1499, inlinedAt: !2950)
!3012 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET", scope: !1499, file: !1, line: 2763, type: !1398)
!3013 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1499, file: !1, line: 2764, type: !1414)
!3014 = !DILocation(line: 2764, column: 9, scope: !1499, inlinedAt: !2950)
!3015 = !DILocation(line: 1702, column: 7, scope: !2946)
!3016 = !DILocation(line: 1703, column: 13, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !2993, file: !1, line: 1702, column: 25)
!3018 = !DILocation(line: 1703, column: 5, scope: !3017)
!3019 = !DILocation(line: 1708, column: 10, scope: !2959)
!3020 = !DILocation(line: 1708, column: 18, scope: !2959)
!3021 = !DILocation(line: 1708, column: 3, scope: !2959)
!3022 = !DILocation(line: 1709, column: 40, scope: !2959)
!3023 = !DILocation(line: 1709, column: 48, scope: !2959)
!3024 = !DILocation(line: 1709, column: 12, scope: !2959)
!3025 = !DILocation(line: 1709, column: 10, scope: !2959)
!3026 = !DILocation(line: 1710, column: 52, scope: !2959)
!3027 = !DILocation(line: 1710, column: 60, scope: !2959)
!3028 = !DILocation(line: 1710, column: 24, scope: !2959)
!3029 = !DILocation(line: 2663, column: 24, scope: !1490, inlinedAt: !2958)
!3030 = !DILocation(line: 2666, column: 7, scope: !3031, inlinedAt: !2958)
!3031 = distinct !DILexicalBlock(scope: !3032, file: !1, line: 2666, column: 7)
!3032 = distinct !DILexicalBlock(scope: !1490, file: !1, line: 2665, column: 3)
!3033 = !DILocation(line: 2666, column: 22, scope: !3031, inlinedAt: !2958)
!3034 = !DILocation(line: 2666, column: 7, scope: !3032, inlinedAt: !2958)
!3035 = !DILocation(line: 2673, column: 15, scope: !3036, inlinedAt: !2958)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !1, line: 2671, column: 12)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !1, line: 2671, column: 9)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !1, line: 2669, column: 5)
!3039 = distinct !DILexicalBlock(scope: !3031, file: !1, line: 2668, column: 10)
!3040 = !DILocation(line: 2673, column: 7, scope: !3036, inlinedAt: !2958)
!3041 = !DILocation(line: 2675, column: 7, scope: !3036, inlinedAt: !2958)
!3042 = !DILocation(line: 2682, column: 1, scope: !1490, inlinedAt: !2958)
!3043 = !DILocation(line: 1710, column: 3, scope: !2959)
!3044 = !DILocation(line: 1710, column: 11, scope: !2959)
!3045 = !DILocation(line: 1710, column: 22, scope: !2959)
!3046 = !DILocation(line: 1711, column: 18, scope: !2959)
!3047 = !DILocation(line: 1711, column: 3, scope: !2959)
!3048 = !DILocation(line: 1711, column: 11, scope: !2959)
!3049 = !DILocation(line: 1711, column: 16, scope: !2959)
!3050 = !DILocation(line: 1712, column: 17, scope: !2959)
!3051 = !DILocation(line: 1712, column: 3, scope: !2959)
!3052 = !DILocation(line: 1712, column: 11, scope: !2959)
!3053 = !DILocation(line: 1712, column: 15, scope: !2959)
!3054 = !DILocation(line: 1713, column: 3, scope: !2959)
!3055 = !DILocation(line: 1713, column: 11, scope: !2959)
!3056 = !DILocation(line: 1713, column: 23, scope: !2959)
!3057 = !DILocation(line: 1714, column: 3, scope: !2959)
!3058 = !DILocation(line: 1714, column: 11, scope: !2959)
!3059 = !DILocation(line: 1714, column: 27, scope: !2959)
!3060 = !DILocation(line: 1715, column: 3, scope: !2959)
!3061 = !DILocation(line: 1715, column: 11, scope: !2959)
!3062 = !DILocation(line: 1715, column: 19, scope: !2959)
!3063 = !DILocation(line: 1716, column: 3, scope: !2959)
!3064 = !DILocation(line: 1716, column: 11, scope: !2959)
!3065 = !DILocation(line: 1716, column: 19, scope: !2959)
!3066 = !DILocation(line: 1717, column: 3, scope: !2959)
!3067 = !DILocation(line: 1717, column: 11, scope: !2959)
!3068 = !DILocation(line: 1717, column: 17, scope: !2959)
!3069 = !DILocation(line: 1718, column: 3, scope: !2959)
!3070 = !DILocation(line: 1718, column: 11, scope: !2959)
!3071 = !DILocation(line: 1718, column: 17, scope: !2959)
!3072 = !DILocation(line: 1720, column: 11, scope: !2946)
!3073 = !DILocation(line: 1720, column: 3, scope: !2946)
!3074 = !DILocation(line: 1722, column: 1, scope: !1425)
!3075 = !DILocation(line: 2760, column: 40, scope: !1499)
!3076 = !DILocation(line: 2760, column: 61, scope: !1499)
!3077 = !DILocation(line: 2761, column: 41, scope: !1499)
!3078 = !DILocation(line: 2761, column: 60, scope: !1499)
!3079 = !DILocation(line: 2761, column: 79, scope: !1499)
!3080 = !DILocation(line: 2762, column: 33, scope: !1499)
!3081 = !DILocation(line: 2762, column: 61, scope: !1499)
!3082 = !DILocation(line: 2763, column: 7, scope: !1499)
!3083 = !DILocation(line: 2763, column: 24, scope: !1499)
!3084 = !DILocation(line: 2764, column: 9, scope: !1499)
!3085 = !DILocation(line: 2767, column: 7, scope: !2953)
!3086 = !DILocation(line: 2767, column: 22, scope: !2953)
!3087 = !DILocation(line: 2546, column: 18, scope: !1454, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 2775, column: 13, scope: !2966)
!3089 = !DILocation(line: 2547, column: 7, scope: !1454, inlinedAt: !3088)
!3090 = !DILocation(line: 2767, column: 7, scope: !2954)
!3091 = !DILocation(line: 2768, column: 5, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !2953, file: !1, line: 2767, column: 28)
!3093 = !DILocation(line: 2771, column: 5, scope: !2969)
!3094 = !DILocation(line: 2772, column: 9, scope: !2969)
!3095 = !DILocation(line: 2772, column: 12, scope: !2968)
!3096 = !DILocation(line: 2775, column: 13, scope: !2966)
!3097 = !DILocation(line: 2547, column: 24, scope: !1454, inlinedAt: !3088)
!3098 = !DILocation(line: 2550, column: 7, scope: !2975, inlinedAt: !3088)
!3099 = !DILocation(line: 2550, column: 7, scope: !2976, inlinedAt: !3088)
!3100 = !DILocation(line: 2551, column: 5, scope: !2980, inlinedAt: !3088)
!3101 = !DILocation(line: 2553, column: 5, scope: !2982, inlinedAt: !3088)
!3102 = !DILocation(line: 2556, column: 1, scope: !1454, inlinedAt: !3088)
!3103 = !DILocation(line: 2775, column: 11, scope: !2966)
!3104 = !DILocation(line: 2776, column: 31, scope: !2966)
!3105 = !DILocation(line: 2776, column: 23, scope: !2966)
!3106 = !DILocation(line: 2776, column: 8, scope: !2966)
!3107 = !DILocation(line: 2776, column: 21, scope: !2966)
!3108 = !DILocation(line: 2778, column: 7, scope: !2967)
!3109 = !DILocation(line: 2780, column: 7, scope: !2967)
!3110 = !DILocation(line: 2781, column: 12, scope: !2968)
!3111 = !DILocation(line: 2787, column: 1, scope: !1499)
!3112 = !DILocation(line: 2662, column: 59, scope: !1490)
!3113 = !DILocation(line: 2662, column: 89, scope: !1490)
!3114 = !DILocation(line: 2663, column: 7, scope: !1490)
!3115 = !DILocation(line: 2663, column: 24, scope: !1490)
!3116 = !DILocation(line: 2666, column: 7, scope: !3031)
!3117 = !DILocation(line: 2666, column: 22, scope: !3031)
!3118 = !DILocation(line: 2666, column: 7, scope: !3032)
!3119 = !DILocation(line: 2667, column: 5, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3031, file: !1, line: 2666, column: 28)
!3121 = !DILocation(line: 2670, column: 5, scope: !3038)
!3122 = !DILocation(line: 2671, column: 9, scope: !3038)
!3123 = !DILocation(line: 2671, column: 12, scope: !3037)
!3124 = !DILocation(line: 2673, column: 15, scope: !3036)
!3125 = !DILocation(line: 2673, column: 7, scope: !3036)
!3126 = !DILocation(line: 2675, column: 7, scope: !3036)
!3127 = !DILocation(line: 2676, column: 12, scope: !3037)
!3128 = !DILocation(line: 2682, column: 1, scope: !1490)
!3129 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1428, file: !1, line: 1723, type: !262)
!3130 = !DILocation(line: 1723, column: 43, scope: !1428)
!3131 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !1428, file: !1, line: 1723, type: !1199)
!3132 = !DILocation(line: 1723, column: 63, scope: !1428)
!3133 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 3, scope: !1428, file: !1, line: 1723, type: !286)
!3134 = !DILocation(line: 1723, column: 75, scope: !1428)
!3135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "event", scope: !1428, file: !1, line: 1724, type: !547)
!3136 = !DILocation(line: 1724, column: 11, scope: !1428)
!3137 = !DILocation(line: 1728, column: 29, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !1, line: 1727, column: 3)
!3139 = distinct !DILexicalBlock(scope: !1428, file: !1, line: 1726, column: 3)
!3140 = !DILocation(line: 1728, column: 11, scope: !3138)
!3141 = !DILocation(line: 1728, column: 9, scope: !3138)
!3142 = !DILocation(line: 1729, column: 14, scope: !3138)
!3143 = !DILocation(line: 1729, column: 3, scope: !3138)
!3144 = !DILocation(line: 3181, column: 12, scope: !1602, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 1729, column: 3, scope: !3138)
!3146 = !DILocation(line: 3181, column: 8, scope: !1602, inlinedAt: !3145)
!3147 = !DILocation(line: 3184, column: 18, scope: !3148, inlinedAt: !3145)
!3148 = distinct !DILexicalBlock(scope: !1602, file: !1, line: 3183, column: 3)
!3149 = !DILocation(line: 3185, column: 11, scope: !3148, inlinedAt: !3145)
!3150 = !DILocation(line: 3185, column: 3, scope: !3148, inlinedAt: !3145)
!3151 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 1, scope: !1602, file: !1, line: 3180, type: !1586)
!3152 = !DILocation(line: 3180, column: 26, scope: !1602, inlinedAt: !3145)
!3153 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Increment", arg: 2, scope: !1602, file: !1, line: 3180, type: !1598)
!3154 = !DILocation(line: 3180, column: 44, scope: !1602, inlinedAt: !3145)
!3155 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Wait", arg: 3, scope: !1602, file: !1, line: 3180, type: !327)
!3156 = !DILocation(line: 3180, column: 64, scope: !1602, inlinedAt: !3145)
!3157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !1602, file: !1, line: 3181, type: !273)
!3158 = !DILocation(line: 1731, column: 3, scope: !3139)
!3159 = !DILocation(line: 3180, column: 26, scope: !1602)
!3160 = !DILocation(line: 3180, column: 44, scope: !1602)
!3161 = !DILocation(line: 3180, column: 64, scope: !1602)
!3162 = !DILocation(line: 3181, column: 8, scope: !1602)
!3163 = !DILocation(line: 3181, column: 12, scope: !1602)
!3164 = !DILocation(line: 3184, column: 18, scope: !3148)
!3165 = !DILocation(line: 3185, column: 11, scope: !3148)
!3166 = !DILocation(line: 3185, column: 3, scope: !3148)
!3167 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1573, file: !1, line: 3011, type: !262)
!3168 = !DILocation(line: 3011, column: 39, scope: !1573)
!3169 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !1573, file: !1, line: 3012, type: !1199)
!3170 = !DILocation(line: 3012, column: 62, scope: !1573)
!3171 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET", scope: !1573, file: !1, line: 3013, type: !1398)
!3172 = !DILocation(line: 3013, column: 7, scope: !1573)
!3173 = !DILocation(line: 3013, column: 24, scope: !1573)
!3174 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "returnVal2", scope: !1573, file: !1, line: 3014, type: !300)
!3175 = !DILocation(line: 3014, column: 12, scope: !1573)
!3176 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compRetStatus", scope: !1573, file: !1, line: 3015, type: !1398)
!3177 = !DILocation(line: 3015, column: 7, scope: !1573)
!3178 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lcontext", scope: !1573, file: !1, line: 3016, type: !286)
!3179 = !DILocation(line: 3016, column: 9, scope: !1573)
!3180 = !DILocation(line: 3016, column: 20, scope: !1573)
!3181 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1573, file: !1, line: 3017, type: !300)
!3182 = !DILocation(line: 3017, column: 12, scope: !1573)
!3183 = !DILocation(line: 3020, column: 7, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !1, line: 3020, column: 7)
!3185 = distinct !DILexicalBlock(scope: !1573, file: !1, line: 3019, column: 3)
!3186 = !DILocation(line: 3180, column: 26, scope: !1602, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 1729, column: 3, scope: !3138, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 3022, column: 11, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !1, line: 3021, column: 5)
!3190 = distinct !DILexicalBlock(scope: !3184, file: !1, line: 3020, column: 23)
!3191 = !DILocation(line: 3180, column: 44, scope: !1602, inlinedAt: !3187)
!3192 = !DILocation(line: 3180, column: 64, scope: !1602, inlinedAt: !3187)
!3193 = !DILocation(line: 3181, column: 8, scope: !1602, inlinedAt: !3187)
!3194 = !DILocation(line: 1723, column: 43, scope: !1428, inlinedAt: !3188)
!3195 = !DILocation(line: 1723, column: 63, scope: !1428, inlinedAt: !3188)
!3196 = !DILocation(line: 1723, column: 75, scope: !1428, inlinedAt: !3188)
!3197 = !DILocation(line: 1724, column: 11, scope: !1428, inlinedAt: !3188)
!3198 = !DILocation(line: 3020, column: 7, scope: !3185)
!3199 = !DILocation(line: 3022, column: 29, scope: !3189)
!3200 = !DILocation(line: 3022, column: 43, scope: !3189)
!3201 = !DILocation(line: 3022, column: 48, scope: !3189)
!3202 = !DILocation(line: 3022, column: 11, scope: !3189)
!3203 = !DILocation(line: 1728, column: 29, scope: !3138, inlinedAt: !3188)
!3204 = !DILocation(line: 1728, column: 11, scope: !3138, inlinedAt: !3188)
!3205 = !DILocation(line: 1728, column: 9, scope: !3138, inlinedAt: !3188)
!3206 = !DILocation(line: 1729, column: 14, scope: !3138, inlinedAt: !3188)
!3207 = !DILocation(line: 1729, column: 3, scope: !3138, inlinedAt: !3188)
!3208 = !DILocation(line: 3181, column: 12, scope: !1602, inlinedAt: !3187)
!3209 = !DILocation(line: 3184, column: 18, scope: !3148, inlinedAt: !3187)
!3210 = !DILocation(line: 3185, column: 11, scope: !3148, inlinedAt: !3187)
!3211 = !DILocation(line: 3185, column: 3, scope: !3148, inlinedAt: !3187)
!3212 = !DILocation(line: 1731, column: 3, scope: !3139, inlinedAt: !3188)
!3213 = !DILocation(line: 3022, column: 9, scope: !3189)
!3214 = !DILocation(line: 3023, column: 21, scope: !3189)
!3215 = !DILocation(line: 3023, column: 19, scope: !3189)
!3216 = !DILocation(line: 3025, column: 16, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3190, file: !1, line: 3025, column: 9)
!3218 = !DILocation(line: 3025, column: 9, scope: !3217)
!3219 = !DILocation(line: 3025, column: 30, scope: !3217)
!3220 = !DILocation(line: 3025, column: 9, scope: !3190)
!3221 = !DILocation(line: 2999, column: 7, scope: !3222, inlinedAt: !3224)
!3222 = distinct !DILexicalBlock(scope: !3223, file: !1, line: 2999, column: 7)
!3223 = distinct !DILexicalBlock(scope: !1572, file: !1, line: 2998, column: 3)
!3224 = distinct !DILocation(line: 3027, column: 7, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !1, line: 3026, column: 7)
!3226 = distinct !DILexicalBlock(scope: !3217, file: !1, line: 3025, column: 47)
!3227 = !DILocation(line: 2999, column: 12, scope: !3222, inlinedAt: !3224)
!3228 = !DILocation(line: 2999, column: 9, scope: !3222, inlinedAt: !3224)
!3229 = !DILocation(line: 2999, column: 7, scope: !3223, inlinedAt: !3224)
!3230 = !DILocation(line: 1635, column: 10, scope: !1749, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 3003, column: 5, scope: !3232, inlinedAt: !3224)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !1, line: 3002, column: 5)
!3233 = distinct !DILexicalBlock(scope: !3222, file: !1, line: 3001, column: 10)
!3234 = !DILocation(line: 3000, column: 9, scope: !3235, inlinedAt: !3224)
!3235 = distinct !DILexicalBlock(scope: !3222, file: !1, line: 2999, column: 16)
!3236 = !DILocation(line: 3000, column: 7, scope: !3235, inlinedAt: !3224)
!3237 = !DILocation(line: 3029, column: 5, scope: !3226)
!3238 = !DILocation(line: 3032, column: 3, scope: !3190)
!3239 = !DILocation(line: 3035, column: 7, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3185, file: !1, line: 3035, column: 7)
!3241 = !DILocation(line: 3035, column: 22, scope: !3240)
!3242 = !DILocation(line: 3035, column: 7, scope: !3185)
!3243 = !DILocation(line: 3036, column: 5, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3240, file: !1, line: 3035, column: 28)
!3245 = !DILocation(line: 3038, column: 9, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3247, file: !1, line: 3038, column: 9)
!3247 = distinct !DILexicalBlock(scope: !3240, file: !1, line: 3037, column: 10)
!3248 = !DILocation(line: 3038, column: 24, scope: !3246)
!3249 = !DILocation(line: 3038, column: 9, scope: !3247)
!3250 = !DILocation(line: 3039, column: 7, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3246, file: !1, line: 3038, column: 30)
!3252 = !DILocation(line: 3042, column: 7, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !1, line: 3041, column: 7)
!3254 = distinct !DILexicalBlock(scope: !3246, file: !1, line: 3040, column: 12)
!3255 = !DILocation(line: 3043, column: 11, scope: !3253)
!3256 = !DILocation(line: 3043, column: 14, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3253, file: !1, line: 3043, column: 11)
!3258 = !DILocation(line: 3045, column: 20, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3257, file: !1, line: 3043, column: 14)
!3260 = !DILocation(line: 3046, column: 9, scope: !3259)
!3261 = !DILocation(line: 3048, column: 20, scope: !3259)
!3262 = !DILocation(line: 3049, column: 9, scope: !3259)
!3263 = !DILocation(line: 3051, column: 20, scope: !3259)
!3264 = !DILocation(line: 3052, column: 9, scope: !3259)
!3265 = !DILocation(line: 3053, column: 14, scope: !3257)
!3266 = !DILocation(line: 3059, column: 7, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3185, file: !1, line: 3059, column: 7)
!3268 = !DILocation(line: 3059, column: 12, scope: !3267)
!3269 = !DILocation(line: 3059, column: 9, scope: !3267)
!3270 = !DILocation(line: 3059, column: 7, scope: !3185)
!3271 = !DILocation(line: 3060, column: 9, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3267, file: !1, line: 3059, column: 16)
!3273 = !DILocation(line: 3060, column: 7, scope: !3272)
!3274 = !DILocation(line: 3061, column: 25, scope: !3272)
!3275 = !DILocation(line: 3061, column: 23, scope: !3272)
!3276 = !DILocation(line: 3062, column: 3, scope: !3272)
!3277 = !DILocation(line: 3063, column: 9, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3279, file: !1, line: 3063, column: 9)
!3279 = distinct !DILexicalBlock(scope: !3267, file: !1, line: 3062, column: 10)
!3280 = !DILocation(line: 3063, column: 14, scope: !3278)
!3281 = !DILocation(line: 3063, column: 11, scope: !3278)
!3282 = !DILocation(line: 3063, column: 9, scope: !3279)
!3283 = !DILocation(line: 3064, column: 11, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3285, file: !1, line: 3064, column: 11)
!3285 = distinct !DILexicalBlock(scope: !3278, file: !1, line: 3063, column: 20)
!3286 = !DILocation(line: 3064, column: 22, scope: !3284)
!3287 = !DILocation(line: 3064, column: 11, scope: !3285)
!3288 = !DILocation(line: 3065, column: 13, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3284, file: !1, line: 3064, column: 31)
!3290 = !DILocation(line: 3065, column: 11, scope: !3289)
!3291 = !DILocation(line: 3066, column: 29, scope: !3289)
!3292 = !DILocation(line: 3066, column: 27, scope: !3289)
!3293 = !DILocation(line: 3067, column: 7, scope: !3289)
!3294 = !DILocation(line: 3068, column: 13, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3284, file: !1, line: 3067, column: 14)
!3296 = !DILocation(line: 3068, column: 11, scope: !3295)
!3297 = !DILocation(line: 3069, column: 29, scope: !3295)
!3298 = !DILocation(line: 3069, column: 27, scope: !3295)
!3299 = !DILocation(line: 3071, column: 5, scope: !3285)
!3300 = !DILocation(line: 3072, column: 11, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3302, file: !1, line: 3072, column: 11)
!3302 = distinct !DILexicalBlock(scope: !3278, file: !1, line: 3071, column: 12)
!3303 = !DILocation(line: 3072, column: 16, scope: !3301)
!3304 = !DILocation(line: 3072, column: 13, scope: !3301)
!3305 = !DILocation(line: 3072, column: 11, scope: !3302)
!3306 = !DILocation(line: 3073, column: 13, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3301, file: !1, line: 3072, column: 23)
!3308 = !DILocation(line: 3073, column: 11, scope: !3307)
!3309 = !DILocation(line: 3074, column: 29, scope: !3307)
!3310 = !DILocation(line: 3074, column: 27, scope: !3307)
!3311 = !DILocation(line: 3075, column: 7, scope: !3307)
!3312 = !DILocation(line: 1635, column: 10, scope: !1749, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 3077, column: 9, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3315, file: !1, line: 3076, column: 9)
!3315 = distinct !DILexicalBlock(scope: !3301, file: !1, line: 3075, column: 14)
!3316 = !DILocation(line: 3082, column: 11, scope: !3185)
!3317 = !DILocation(line: 3082, column: 3, scope: !3185)
!3318 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1442, file: !1, line: 2304, type: !262)
!3319 = !DILocation(line: 2304, column: 46, scope: !1442)
!3320 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InputDataStart", arg: 2, scope: !1442, file: !1, line: 2304, type: !1367)
!3321 = !DILocation(line: 2304, column: 82, scope: !1442)
!3322 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InputDataEnd", arg: 3, scope: !1442, file: !1, line: 2305, type: !1367)
!3323 = !DILocation(line: 2305, column: 52, scope: !1442)
!3324 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InputDataConsumed", arg: 4, scope: !1442, file: !1, line: 2305, type: !1445)
!3325 = !DILocation(line: 2305, column: 74, scope: !1442)
!3326 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt", scope: !1442, file: !1, line: 2306, type: !1869)
!3327 = !DILocation(line: 2306, column: 21, scope: !1442)
!3328 = !DILocation(line: 2310, column: 40, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3330, file: !1, line: 2309, column: 3)
!3330 = distinct !DILexicalBlock(scope: !1442, file: !1, line: 2308, column: 3)
!3331 = !DILocation(line: 2310, column: 54, scope: !3329)
!3332 = !DILocation(line: 2310, column: 12, scope: !3329)
!3333 = !DILocation(line: 2310, column: 10, scope: !3329)
!3334 = !DILocation(line: 2312, column: 40, scope: !3329)
!3335 = !DILocation(line: 2312, column: 48, scope: !3329)
!3336 = !DILocation(line: 2312, column: 65, scope: !3329)
!3337 = !DILocation(line: 2311, column: 6, scope: !3329)
!3338 = !DILocation(line: 2312, column: 80, scope: !3329)
!3339 = !DILocation(line: 2312, column: 88, scope: !3329)
!3340 = !DILocation(line: 2312, column: 105, scope: !3329)
!3341 = !DILocation(line: 2313, column: 80, scope: !3329)
!3342 = !DILocation(line: 2314, column: 80, scope: !3329)
!3343 = !DILocation(line: 2315, column: 80, scope: !3329)
!3344 = !DILocation(line: 2311, column: 3, scope: !3329)
!3345 = !DILocation(line: 2317, column: 3, scope: !3330)
!3346 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1436, file: !1, line: 2245, type: !262)
!3347 = !DILocation(line: 2245, column: 56, scope: !1436)
!3348 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SynchFuncContext", arg: 2, scope: !1436, file: !1, line: 2245, type: !286)
!3349 = !DILocation(line: 2245, column: 77, scope: !1436)
!3350 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ReadPort", arg: 3, scope: !1436, file: !1, line: 2246, type: !1353)
!3351 = !DILocation(line: 2246, column: 52, scope: !1436)
!3352 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WritePort", arg: 4, scope: !1436, file: !1, line: 2248, type: !1358)
!3353 = !DILocation(line: 2248, column: 52, scope: !1436)
!3354 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "TurnTranslationOn", arg: 5, scope: !1436, file: !1, line: 2250, type: !1361)
!3355 = !DILocation(line: 2250, column: 50, scope: !1436)
!3356 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt", scope: !1436, file: !1, line: 2251, type: !1869)
!3357 = !DILocation(line: 2251, column: 21, scope: !1436)
!3358 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !1436, file: !1, line: 2252, type: !300)
!3359 = !DILocation(line: 2252, column: 12, scope: !1436)
!3360 = !DILocation(line: 2255, column: 10, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !1436, file: !1, line: 2254, column: 3)
!3362 = !DILocation(line: 2256, column: 12, scope: !3361)
!3363 = !DILocation(line: 2256, column: 26, scope: !3361)
!3364 = !DILocation(line: 2256, column: 10, scope: !3361)
!3365 = !DILocation(line: 2257, column: 7, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3361, file: !1, line: 2257, column: 7)
!3367 = !DILocation(line: 2257, column: 15, scope: !3366)
!3368 = !DILocation(line: 2257, column: 7, scope: !3361)
!3369 = !DILocation(line: 2259, column: 17, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !1, line: 2258, column: 5)
!3371 = distinct !DILexicalBlock(scope: !3366, file: !1, line: 2257, column: 43)
!3372 = !DILocation(line: 2259, column: 25, scope: !3370)
!3373 = !DILocation(line: 2259, column: 54, scope: !3370)
!3374 = !DILocation(line: 2259, column: 62, scope: !3370)
!3375 = !DILocation(line: 2259, column: 76, scope: !3370)
!3376 = !DILocation(line: 2260, column: 54, scope: !3370)
!3377 = !DILocation(line: 2260, column: 64, scope: !3370)
!3378 = !DILocation(line: 2260, column: 75, scope: !3370)
!3379 = !DILocation(line: 2259, column: 14, scope: !3370)
!3380 = !DILocation(line: 2259, column: 12, scope: !3370)
!3381 = !DILocation(line: 2262, column: 12, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3371, file: !1, line: 2262, column: 9)
!3383 = !DILocation(line: 2262, column: 19, scope: !3382)
!3384 = !DILocation(line: 2262, column: 9, scope: !3371)
!3385 = !DILocation(line: 2263, column: 15, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3382, file: !1, line: 2262, column: 27)
!3387 = !DILocation(line: 2263, column: 7, scope: !3386)
!3388 = !DILocation(line: 2267, column: 3, scope: !3371)
!3389 = !DILocation(line: 2270, column: 4, scope: !3361)
!3390 = !DILocation(line: 2270, column: 22, scope: !3361)
!3391 = !DILocation(line: 2271, column: 11, scope: !3361)
!3392 = !DILocation(line: 2271, column: 3, scope: !3361)
!3393 = !DILocation(line: 2273, column: 1, scope: !1436)
!3394 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1439, file: !1, line: 2274, type: !262)
!3395 = !DILocation(line: 2274, column: 41, scope: !1439)
!3396 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "CurrentInput", arg: 2, scope: !1439, file: !1, line: 2274, type: !1367)
!3397 = !DILocation(line: 2274, column: 77, scope: !1439)
!3398 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "CurrentOutput", arg: 3, scope: !1439, file: !1, line: 2275, type: !1376)
!3399 = !DILocation(line: 2275, column: 41, scope: !1439)
!3400 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "StatusByte", arg: 4, scope: !1439, file: !1, line: 2275, type: !328)
!3401 = !DILocation(line: 2275, column: 63, scope: !1439)
!3402 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DataByte", arg: 5, scope: !1439, file: !1, line: 2275, type: !1356)
!3403 = !DILocation(line: 2275, column: 83, scope: !1439)
!3404 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ContinueProcessing", arg: 6, scope: !1439, file: !1, line: 2276, type: !1361)
!3405 = !DILocation(line: 2276, column: 35, scope: !1439)
!3406 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ScanState", arg: 7, scope: !1439, file: !1, line: 2276, type: !1385)
!3407 = !DILocation(line: 2276, column: 77, scope: !1439)
!3408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devExt", scope: !1439, file: !1, line: 2277, type: !1869)
!3409 = !DILocation(line: 2277, column: 21, scope: !1439)
!3410 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retVal", scope: !1439, file: !1, line: 2278, type: !327)
!3411 = !DILocation(line: 2278, column: 11, scope: !1439)
!3412 = !DILocation(line: 2281, column: 10, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !1439, file: !1, line: 2280, column: 3)
!3414 = !DILocation(line: 2282, column: 12, scope: !3413)
!3415 = !DILocation(line: 2282, column: 26, scope: !3413)
!3416 = !DILocation(line: 2282, column: 10, scope: !3413)
!3417 = !DILocation(line: 2283, column: 7, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3413, file: !1, line: 2283, column: 7)
!3419 = !DILocation(line: 2283, column: 15, scope: !3418)
!3420 = !DILocation(line: 2283, column: 7, scope: !3413)
!3421 = !DILocation(line: 2285, column: 17, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3423, file: !1, line: 2284, column: 5)
!3423 = distinct !DILexicalBlock(scope: !3418, file: !1, line: 2283, column: 29)
!3424 = !DILocation(line: 2285, column: 25, scope: !3422)
!3425 = !DILocation(line: 2285, column: 40, scope: !3422)
!3426 = !DILocation(line: 2285, column: 48, scope: !3422)
!3427 = !DILocation(line: 2285, column: 62, scope: !3422)
!3428 = !DILocation(line: 2285, column: 76, scope: !3422)
!3429 = !DILocation(line: 2286, column: 40, scope: !3422)
!3430 = !DILocation(line: 2286, column: 52, scope: !3422)
!3431 = !DILocation(line: 2286, column: 62, scope: !3422)
!3432 = !DILocation(line: 2286, column: 82, scope: !3422)
!3433 = !DILocation(line: 2285, column: 14, scope: !3422)
!3434 = !DILocation(line: 2285, column: 12, scope: !3422)
!3435 = !DILocation(line: 2288, column: 11, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3423, file: !1, line: 2288, column: 9)
!3437 = !DILocation(line: 2288, column: 9, scope: !3423)
!3438 = !DILocation(line: 2289, column: 15, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3436, file: !1, line: 2288, column: 19)
!3440 = !DILocation(line: 2289, column: 7, scope: !3439)
!3441 = !DILocation(line: 2291, column: 14, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3443, file: !1, line: 2291, column: 11)
!3443 = distinct !DILexicalBlock(scope: !3436, file: !1, line: 2290, column: 12)
!3444 = !DILocation(line: 2291, column: 13, scope: !3442)
!3445 = !DILocation(line: 2291, column: 11, scope: !3443)
!3446 = !DILocation(line: 2292, column: 17, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3442, file: !1, line: 2291, column: 34)
!3448 = !DILocation(line: 2292, column: 9, scope: !3447)
!3449 = !DILocation(line: 2297, column: 3, scope: !3423)
!3450 = !DILocation(line: 2300, column: 4, scope: !3413)
!3451 = !DILocation(line: 2300, column: 23, scope: !3413)
!3452 = !DILocation(line: 2301, column: 11, scope: !3413)
!3453 = !DILocation(line: 2301, column: 3, scope: !3413)
!3454 = !DILocation(line: 2303, column: 1, scope: !1439)
!3455 = !DILocation(line: 3087, column: 30, scope: !1574)
!3456 = !DILocation(line: 3087, column: 42, scope: !1574)
!3457 = !DILocation(line: 3091, column: 7, scope: !2354)
!3458 = !DILocation(line: 3091, column: 12, scope: !2354)
!3459 = !DILocation(line: 3091, column: 9, scope: !2354)
!3460 = !DILocation(line: 3091, column: 7, scope: !2355)
!3461 = !DILocation(line: 3092, column: 9, scope: !2364)
!3462 = !DILocation(line: 3092, column: 7, scope: !2364)
!3463 = !DILocation(line: 3093, column: 3, scope: !2364)
!3464 = !DILocation(line: 1635, column: 10, scope: !1749, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 3095, column: 5, scope: !2361)
!3466 = !DILocation(line: 3098, column: 3, scope: !2355)
!3467 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Object", arg: 1, scope: !1605, file: !1, line: 3192, type: !286)
!3468 = !DILocation(line: 3192, column: 38, scope: !1605)
!3469 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitReason", arg: 2, scope: !1605, file: !1, line: 3192, type: !1608)
!3470 = !DILocation(line: 3192, column: 60, scope: !1605)
!3471 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitMode", arg: 3, scope: !1605, file: !1, line: 3192, type: !620)
!3472 = !DILocation(line: 3192, column: 89, scope: !1605)
!3473 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Alertable", arg: 4, scope: !1605, file: !1, line: 3193, type: !327)
!3474 = !DILocation(line: 3193, column: 40, scope: !1605)
!3475 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Timeout", arg: 5, scope: !1605, file: !1, line: 3193, type: !425)
!3476 = !DILocation(line: 3193, column: 67, scope: !1605)
!3477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET", scope: !1605, file: !1, line: 3194, type: !1398)
!3478 = !DILocation(line: 3194, column: 7, scope: !1605)
!3479 = !DILocation(line: 3194, column: 24, scope: !1605)
!3480 = !DILocation(line: 3197, column: 7, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !1, line: 3197, column: 7)
!3482 = distinct !DILexicalBlock(scope: !1605, file: !1, line: 3196, column: 3)
!3483 = !DILocation(line: 3197, column: 12, scope: !3481)
!3484 = !DILocation(line: 3197, column: 9, scope: !3481)
!3485 = !DILocation(line: 3197, column: 7, scope: !3482)
!3486 = !DILocation(line: 3198, column: 9, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3488, file: !1, line: 3198, column: 9)
!3488 = distinct !DILexicalBlock(scope: !3481, file: !1, line: 3197, column: 18)
!3489 = !DILocation(line: 3198, column: 24, scope: !3487)
!3490 = !DILocation(line: 3198, column: 9, scope: !3488)
!3491 = !DILocation(line: 3199, column: 11, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3487, file: !1, line: 3198, column: 30)
!3493 = !DILocation(line: 3199, column: 9, scope: !3492)
!3494 = !DILocation(line: 3200, column: 22, scope: !3492)
!3495 = !DILocation(line: 3201, column: 5, scope: !3492)
!3496 = !DILocation(line: 3202, column: 7, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3487, file: !1, line: 3201, column: 12)
!3498 = !DILocation(line: 3204, column: 3, scope: !3488)
!3499 = !DILocation(line: 3204, column: 10, scope: !3481)
!3500 = !DILocation(line: 3206, column: 9, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3502, file: !1, line: 3206, column: 9)
!3502 = distinct !DILexicalBlock(scope: !3481, file: !1, line: 3204, column: 10)
!3503 = !DILocation(line: 3206, column: 19, scope: !3501)
!3504 = !DILocation(line: 3206, column: 9, scope: !3502)
!3505 = !DILocation(line: 3207, column: 11, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3501, file: !1, line: 3206, column: 25)
!3507 = !DILocation(line: 3207, column: 9, scope: !3506)
!3508 = !DILocation(line: 3208, column: 17, scope: !3506)
!3509 = !DILocation(line: 3209, column: 5, scope: !3506)
!3510 = !DILocation(line: 3210, column: 11, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3512, file: !1, line: 3210, column: 11)
!3512 = distinct !DILexicalBlock(scope: !3501, file: !1, line: 3209, column: 12)
!3513 = !DILocation(line: 3210, column: 16, scope: !3511)
!3514 = !DILocation(line: 3210, column: 13, scope: !3511)
!3515 = !DILocation(line: 3210, column: 11, scope: !3512)
!3516 = !DILocation(line: 1635, column: 10, scope: !1749, inlinedAt: !3517)
!3517 = distinct !DILocation(line: 3212, column: 9, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3519, file: !1, line: 3211, column: 9)
!3519 = distinct !DILexicalBlock(scope: !3511, file: !1, line: 3210, column: 22)
!3520 = !DILocation(line: 3214, column: 7, scope: !3519)
!3521 = !DILocation(line: 3219, column: 7, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3482, file: !1, line: 3219, column: 7)
!3523 = !DILocation(line: 3219, column: 22, scope: !3522)
!3524 = !DILocation(line: 3219, column: 7, scope: !3482)
!3525 = !DILocation(line: 3220, column: 5, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3522, file: !1, line: 3219, column: 28)
!3527 = !DILocation(line: 3223, column: 5, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3529, file: !1, line: 3222, column: 5)
!3529 = distinct !DILexicalBlock(scope: !3522, file: !1, line: 3221, column: 10)
!3530 = !DILocation(line: 3224, column: 9, scope: !3528)
!3531 = !DILocation(line: 3224, column: 12, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3528, file: !1, line: 3224, column: 9)
!3533 = !DILocation(line: 3226, column: 7, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3532, file: !1, line: 3224, column: 12)
!3535 = !DILocation(line: 3228, column: 7, scope: !3534)
!3536 = !DILocation(line: 3229, column: 12, scope: !3532)
!3537 = !DILocation(line: 3235, column: 1, scope: !1605)
!3538 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1636, file: !1, line: 3350, type: !262)
!3539 = !DILocation(line: 3350, column: 38, scope: !1636)
!3540 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !1636, file: !1, line: 3350, type: !1199)
!3541 = !DILocation(line: 3350, column: 58, scope: !1636)
!3542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET", scope: !1636, file: !1, line: 3351, type: !1398)
!3543 = !DILocation(line: 3351, column: 7, scope: !1636)
!3544 = !DILocation(line: 3351, column: 24, scope: !1636)
!3545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compRetStatus", scope: !1636, file: !1, line: 3352, type: !1398)
!3546 = !DILocation(line: 3352, column: 7, scope: !1636)
!3547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "returnVal", scope: !1636, file: !1, line: 3353, type: !300)
!3548 = !DILocation(line: 3353, column: 12, scope: !1636)
!3549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lcontext", scope: !1636, file: !1, line: 3354, type: !286)
!3550 = !DILocation(line: 3354, column: 9, scope: !1636)
!3551 = !DILocation(line: 3354, column: 20, scope: !1636)
!3552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1636, file: !1, line: 3355, type: !300)
!3553 = !DILocation(line: 3355, column: 12, scope: !1636)
!3554 = !DILocation(line: 3358, column: 7, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3556, file: !1, line: 3358, column: 7)
!3556 = distinct !DILexicalBlock(scope: !1636, file: !1, line: 3357, column: 3)
!3557 = !DILocation(line: 3180, column: 26, scope: !1602, inlinedAt: !3558)
!3558 = distinct !DILocation(line: 1729, column: 3, scope: !3138, inlinedAt: !3559)
!3559 = distinct !DILocation(line: 3360, column: 11, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !1, line: 3359, column: 5)
!3561 = distinct !DILexicalBlock(scope: !3555, file: !1, line: 3358, column: 23)
!3562 = !DILocation(line: 3180, column: 44, scope: !1602, inlinedAt: !3558)
!3563 = !DILocation(line: 3180, column: 64, scope: !1602, inlinedAt: !3558)
!3564 = !DILocation(line: 3181, column: 8, scope: !1602, inlinedAt: !3558)
!3565 = !DILocation(line: 1723, column: 43, scope: !1428, inlinedAt: !3559)
!3566 = !DILocation(line: 1723, column: 63, scope: !1428, inlinedAt: !3559)
!3567 = !DILocation(line: 1723, column: 75, scope: !1428, inlinedAt: !3559)
!3568 = !DILocation(line: 1724, column: 11, scope: !1428, inlinedAt: !3559)
!3569 = !DILocation(line: 3358, column: 7, scope: !3556)
!3570 = !DILocation(line: 3360, column: 29, scope: !3560)
!3571 = !DILocation(line: 3360, column: 43, scope: !3560)
!3572 = !DILocation(line: 3360, column: 48, scope: !3560)
!3573 = !DILocation(line: 3360, column: 11, scope: !3560)
!3574 = !DILocation(line: 1728, column: 29, scope: !3138, inlinedAt: !3559)
!3575 = !DILocation(line: 1728, column: 11, scope: !3138, inlinedAt: !3559)
!3576 = !DILocation(line: 1728, column: 9, scope: !3138, inlinedAt: !3559)
!3577 = !DILocation(line: 1729, column: 14, scope: !3138, inlinedAt: !3559)
!3578 = !DILocation(line: 1729, column: 3, scope: !3138, inlinedAt: !3559)
!3579 = !DILocation(line: 3181, column: 12, scope: !1602, inlinedAt: !3558)
!3580 = !DILocation(line: 3184, column: 18, scope: !3148, inlinedAt: !3558)
!3581 = !DILocation(line: 3185, column: 11, scope: !3148, inlinedAt: !3558)
!3582 = !DILocation(line: 3185, column: 3, scope: !3148, inlinedAt: !3558)
!3583 = !DILocation(line: 1731, column: 3, scope: !3139, inlinedAt: !3559)
!3584 = !DILocation(line: 3360, column: 9, scope: !3560)
!3585 = !DILocation(line: 3361, column: 21, scope: !3560)
!3586 = !DILocation(line: 3361, column: 19, scope: !3560)
!3587 = !DILocation(line: 3363, column: 16, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3561, file: !1, line: 3363, column: 9)
!3589 = !DILocation(line: 3363, column: 9, scope: !3588)
!3590 = !DILocation(line: 3363, column: 30, scope: !3588)
!3591 = !DILocation(line: 3363, column: 9, scope: !3561)
!3592 = !DILocation(line: 2999, column: 7, scope: !3222, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 3365, column: 7, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3595, file: !1, line: 3364, column: 7)
!3595 = distinct !DILexicalBlock(scope: !3588, file: !1, line: 3363, column: 47)
!3596 = !DILocation(line: 2999, column: 12, scope: !3222, inlinedAt: !3593)
!3597 = !DILocation(line: 2999, column: 9, scope: !3222, inlinedAt: !3593)
!3598 = !DILocation(line: 2999, column: 7, scope: !3223, inlinedAt: !3593)
!3599 = !DILocation(line: 1635, column: 10, scope: !1749, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 3003, column: 5, scope: !3232, inlinedAt: !3593)
!3601 = !DILocation(line: 3000, column: 9, scope: !3235, inlinedAt: !3593)
!3602 = !DILocation(line: 3000, column: 7, scope: !3235, inlinedAt: !3593)
!3603 = !DILocation(line: 3367, column: 5, scope: !3595)
!3604 = !DILocation(line: 3370, column: 3, scope: !3561)
!3605 = !DILocation(line: 3373, column: 7, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3556, file: !1, line: 3373, column: 7)
!3607 = !DILocation(line: 3373, column: 22, scope: !3606)
!3608 = !DILocation(line: 3373, column: 7, scope: !3556)
!3609 = !DILocation(line: 3374, column: 5, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3606, file: !1, line: 3373, column: 28)
!3611 = !DILocation(line: 3376, column: 9, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3613, file: !1, line: 3376, column: 9)
!3613 = distinct !DILexicalBlock(scope: !3606, file: !1, line: 3375, column: 10)
!3614 = !DILocation(line: 3376, column: 24, scope: !3612)
!3615 = !DILocation(line: 3376, column: 9, scope: !3613)
!3616 = !DILocation(line: 3377, column: 7, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3612, file: !1, line: 3376, column: 30)
!3618 = !DILocation(line: 3380, column: 7, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3620, file: !1, line: 3379, column: 7)
!3620 = distinct !DILexicalBlock(scope: !3612, file: !1, line: 3378, column: 12)
!3621 = !DILocation(line: 3381, column: 11, scope: !3619)
!3622 = !DILocation(line: 3381, column: 14, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3619, file: !1, line: 3381, column: 11)
!3624 = !DILocation(line: 3383, column: 19, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3623, file: !1, line: 3381, column: 14)
!3626 = !DILocation(line: 3384, column: 9, scope: !3625)
!3627 = !DILocation(line: 3386, column: 19, scope: !3625)
!3628 = !DILocation(line: 3387, column: 9, scope: !3625)
!3629 = !DILocation(line: 3389, column: 19, scope: !3625)
!3630 = !DILocation(line: 3390, column: 9, scope: !3625)
!3631 = !DILocation(line: 3391, column: 14, scope: !3623)
!3632 = !DILocation(line: 3397, column: 7, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3556, file: !1, line: 3397, column: 7)
!3634 = !DILocation(line: 3397, column: 12, scope: !3633)
!3635 = !DILocation(line: 3397, column: 9, scope: !3633)
!3636 = !DILocation(line: 3397, column: 7, scope: !3556)
!3637 = !DILocation(line: 3398, column: 9, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3633, file: !1, line: 3397, column: 16)
!3639 = !DILocation(line: 3398, column: 7, scope: !3638)
!3640 = !DILocation(line: 3399, column: 25, scope: !3638)
!3641 = !DILocation(line: 3399, column: 23, scope: !3638)
!3642 = !DILocation(line: 3400, column: 3, scope: !3638)
!3643 = !DILocation(line: 3401, column: 9, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3645, file: !1, line: 3401, column: 9)
!3645 = distinct !DILexicalBlock(scope: !3633, file: !1, line: 3400, column: 10)
!3646 = !DILocation(line: 3401, column: 14, scope: !3644)
!3647 = !DILocation(line: 3401, column: 11, scope: !3644)
!3648 = !DILocation(line: 3401, column: 9, scope: !3645)
!3649 = !DILocation(line: 3402, column: 11, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3651, file: !1, line: 3402, column: 11)
!3651 = distinct !DILexicalBlock(scope: !3644, file: !1, line: 3401, column: 20)
!3652 = !DILocation(line: 3402, column: 21, scope: !3650)
!3653 = !DILocation(line: 3402, column: 11, scope: !3651)
!3654 = !DILocation(line: 3403, column: 13, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3650, file: !1, line: 3402, column: 30)
!3656 = !DILocation(line: 3403, column: 11, scope: !3655)
!3657 = !DILocation(line: 3404, column: 29, scope: !3655)
!3658 = !DILocation(line: 3404, column: 27, scope: !3655)
!3659 = !DILocation(line: 3405, column: 7, scope: !3655)
!3660 = !DILocation(line: 3406, column: 13, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3650, file: !1, line: 3405, column: 14)
!3662 = !DILocation(line: 3406, column: 11, scope: !3661)
!3663 = !DILocation(line: 3407, column: 29, scope: !3661)
!3664 = !DILocation(line: 3407, column: 27, scope: !3661)
!3665 = !DILocation(line: 3409, column: 5, scope: !3651)
!3666 = !DILocation(line: 3410, column: 11, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3668, file: !1, line: 3410, column: 11)
!3668 = distinct !DILexicalBlock(scope: !3644, file: !1, line: 3409, column: 12)
!3669 = !DILocation(line: 3410, column: 16, scope: !3667)
!3670 = !DILocation(line: 3410, column: 13, scope: !3667)
!3671 = !DILocation(line: 3410, column: 11, scope: !3668)
!3672 = !DILocation(line: 3411, column: 13, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3667, file: !1, line: 3410, column: 23)
!3674 = !DILocation(line: 3411, column: 11, scope: !3673)
!3675 = !DILocation(line: 3412, column: 29, scope: !3673)
!3676 = !DILocation(line: 3412, column: 27, scope: !3673)
!3677 = !DILocation(line: 3413, column: 7, scope: !3673)
!3678 = !DILocation(line: 1635, column: 10, scope: !1749, inlinedAt: !3679)
!3679 = distinct !DILocation(line: 3415, column: 9, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3681, file: !1, line: 3414, column: 9)
!3681 = distinct !DILexicalBlock(scope: !3667, file: !1, line: 3413, column: 14)
!3682 = !DILocation(line: 3420, column: 11, scope: !3556)
!3683 = !DILocation(line: 3420, column: 3, scope: !3556)
!3684 = !DILocation(line: 2354, column: 7, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !1450, file: !1, line: 2353, column: 3)
!3686 = !DILocation(line: 2354, column: 5, scope: !3685)
!3687 = !DILocation(line: 2355, column: 10, scope: !3685)
!3688 = !DILocation(line: 2356, column: 12, scope: !3685)
!3689 = !DILocation(line: 2357, column: 18, scope: !3685)
!3690 = !DILocation(line: 2358, column: 21, scope: !3685)
!3691 = !DILocation(line: 2359, column: 18, scope: !3685)
!3692 = !DILocation(line: 2360, column: 13, scope: !3685)
!3693 = !DILocation(line: 2361, column: 3, scope: !3685)
!3694 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !1451, file: !1, line: 2365, type: !3695)
!3695 = !DIDerivedType(tag: DW_TAG_typedef, name: "DRIVER_OBJECT", file: !1, line: 958, baseType: !277)
!3696 = !DILocation(line: 2365, column: 17, scope: !1451)
!3697 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !1451, file: !1, line: 2366, type: !303)
!3698 = !DILocation(line: 2366, column: 18, scope: !1451)
!3699 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !1451, file: !1, line: 2367, type: !300)
!3700 = !DILocation(line: 2367, column: 12, scope: !1451)
!3701 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "we_should_unload", scope: !1451, file: !1, line: 2368, type: !1398)
!3702 = !DILocation(line: 2368, column: 7, scope: !1451)
!3703 = !DILocation(line: 2368, column: 26, scope: !1451)
!3704 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp", scope: !1451, file: !1, line: 2369, type: !1199)
!3705 = !DILocation(line: 2369, column: 8, scope: !1451)
!3706 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET", scope: !1451, file: !1, line: 2370, type: !1398)
!3707 = !DILocation(line: 2370, column: 7, scope: !1451)
!3708 = !DILocation(line: 2370, column: 24, scope: !1451)
!3709 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp_choice", scope: !1451, file: !1, line: 2371, type: !1398)
!3710 = !DILocation(line: 2371, column: 7, scope: !1451)
!3711 = !DILocation(line: 2371, column: 20, scope: !1451)
!3712 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devobj", scope: !1451, file: !1, line: 2372, type: !3713)
!3713 = !DIDerivedType(tag: DW_TAG_typedef, name: "DEVICE_OBJECT", file: !1, line: 927, baseType: !264)
!3714 = !DILocation(line: 2372, column: 17, scope: !1451)
!3715 = !DILocation(line: 2376, column: 10, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3717, file: !1, line: 2375, column: 3)
!3717 = distinct !DILexicalBlock(scope: !1451, file: !1, line: 2374, column: 3)
!3718 = !DILocation(line: 2376, column: 8, scope: !3716)
!3719 = !DILocation(line: 1658, column: 12, scope: !1752, inlinedAt: !3720)
!3720 = distinct !DILocation(line: 2377, column: 3, scope: !3716)
!3721 = !DILocation(line: 1659, column: 6, scope: !1752, inlinedAt: !3720)
!3722 = !DILocation(line: 1660, column: 6, scope: !1752, inlinedAt: !3720)
!3723 = !DILocation(line: 1661, column: 9, scope: !1752, inlinedAt: !3720)
!3724 = !DILocation(line: 1662, column: 9, scope: !1752, inlinedAt: !3720)
!3725 = !DILocation(line: 1663, column: 8, scope: !1752, inlinedAt: !3720)
!3726 = !DILocation(line: 1664, column: 8, scope: !1752, inlinedAt: !3720)
!3727 = !DILocation(line: 1665, column: 7, scope: !1752, inlinedAt: !3720)
!3728 = !DILocation(line: 1666, column: 7, scope: !1752, inlinedAt: !3720)
!3729 = !DILocation(line: 1666, column: 5, scope: !1752, inlinedAt: !3720)
!3730 = !DILocation(line: 1667, column: 10, scope: !1752, inlinedAt: !3720)
!3731 = !DILocation(line: 1668, column: 12, scope: !1752, inlinedAt: !3720)
!3732 = !DILocation(line: 1669, column: 18, scope: !1752, inlinedAt: !3720)
!3733 = !DILocation(line: 1670, column: 21, scope: !1752, inlinedAt: !3720)
!3734 = !DILocation(line: 1671, column: 18, scope: !1752, inlinedAt: !3720)
!3735 = !DILocation(line: 1672, column: 13, scope: !1752, inlinedAt: !3720)
!3736 = !DILocation(line: 2378, column: 12, scope: !3716)
!3737 = !DILocation(line: 1677, column: 13, scope: !1421, inlinedAt: !3738)
!3738 = distinct !DILocation(line: 2378, column: 12, scope: !3716)
!3739 = !DILocation(line: 1677, column: 9, scope: !1421, inlinedAt: !3738)
!3740 = !DILocation(line: 1680, column: 31, scope: !1778, inlinedAt: !3738)
!3741 = !DILocation(line: 1680, column: 3, scope: !1778, inlinedAt: !3738)
!3742 = !DILocation(line: 1680, column: 17, scope: !1778, inlinedAt: !3738)
!3743 = !DILocation(line: 1680, column: 34, scope: !1778, inlinedAt: !3738)
!3744 = !DILocation(line: 1681, column: 3, scope: !1778, inlinedAt: !3738)
!3745 = !DILocation(line: 1681, column: 17, scope: !1778, inlinedAt: !3738)
!3746 = !DILocation(line: 1681, column: 34, scope: !1778, inlinedAt: !3738)
!3747 = !DILocation(line: 1682, column: 3, scope: !1778, inlinedAt: !3738)
!3748 = !DILocation(line: 1682, column: 17, scope: !1778, inlinedAt: !3738)
!3749 = !DILocation(line: 1682, column: 34, scope: !1778, inlinedAt: !3738)
!3750 = !DILocation(line: 1683, column: 3, scope: !1778, inlinedAt: !3738)
!3751 = !DILocation(line: 1683, column: 17, scope: !1778, inlinedAt: !3738)
!3752 = !DILocation(line: 1683, column: 35, scope: !1778, inlinedAt: !3738)
!3753 = !DILocation(line: 1684, column: 3, scope: !1778, inlinedAt: !3738)
!3754 = !DILocation(line: 1684, column: 17, scope: !1778, inlinedAt: !3738)
!3755 = !DILocation(line: 1684, column: 35, scope: !1778, inlinedAt: !3738)
!3756 = !DILocation(line: 1685, column: 3, scope: !1778, inlinedAt: !3738)
!3757 = !DILocation(line: 1685, column: 17, scope: !1778, inlinedAt: !3738)
!3758 = !DILocation(line: 1685, column: 35, scope: !1778, inlinedAt: !3738)
!3759 = !DILocation(line: 1686, column: 3, scope: !1778, inlinedAt: !3738)
!3760 = !DILocation(line: 1686, column: 17, scope: !1778, inlinedAt: !3738)
!3761 = !DILocation(line: 1686, column: 30, scope: !1778, inlinedAt: !3738)
!3762 = !DILocation(line: 1687, column: 4, scope: !1778, inlinedAt: !3738)
!3763 = !DILocation(line: 1687, column: 18, scope: !1778, inlinedAt: !3738)
!3764 = !DILocation(line: 1687, column: 36, scope: !1778, inlinedAt: !3738)
!3765 = !DILocation(line: 1687, column: 46, scope: !1778, inlinedAt: !3738)
!3766 = !DILocation(line: 1688, column: 3, scope: !1778, inlinedAt: !3738)
!3767 = !DILocation(line: 2378, column: 10, scope: !3716)
!3768 = !DILocation(line: 2380, column: 7, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3717, file: !1, line: 2380, column: 7)
!3770 = !DILocation(line: 2380, column: 14, scope: !3769)
!3771 = !DILocation(line: 1676, column: 37, scope: !1421, inlinedAt: !3738)
!3772 = !DILocation(line: 1676, column: 68, scope: !1421, inlinedAt: !3738)
!3773 = !DILocation(line: 2380, column: 7, scope: !3717)
!3774 = !DILocation(line: 2381, column: 9, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3769, file: !1, line: 2380, column: 21)
!3776 = !DILocation(line: 2381, column: 7, scope: !3775)
!3777 = !DILocation(line: 2382, column: 15, scope: !3775)
!3778 = !DILocation(line: 2383, column: 22, scope: !3775)
!3779 = !DILocation(line: 2383, column: 20, scope: !3775)
!3780 = !DILocation(line: 2384, column: 25, scope: !3775)
!3781 = !DILocation(line: 2384, column: 23, scope: !3775)
!3782 = !DILocation(line: 2385, column: 22, scope: !3775)
!3783 = !DILocation(line: 2385, column: 20, scope: !3775)
!3784 = !DILocation(line: 2386, column: 16, scope: !3775)
!3785 = !DILocation(line: 2386, column: 14, scope: !3775)
!3786 = !DILocation(line: 2387, column: 14, scope: !3775)
!3787 = !DILocation(line: 2387, column: 12, scope: !3775)
!3788 = !DILocation(line: 2388, column: 5, scope: !3775)
!3789 = !DILocation(line: 2388, column: 11, scope: !3775)
!3790 = !DILocation(line: 2388, column: 20, scope: !3775)
!3791 = !DILocation(line: 2388, column: 38, scope: !3775)
!3792 = !DILocation(line: 2388, column: 45, scope: !3775)
!3793 = !DILocation(line: 2389, column: 14, scope: !3775)
!3794 = !DILocation(line: 2390, column: 9, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3775, file: !1, line: 2390, column: 9)
!3796 = !DILocation(line: 2390, column: 20, scope: !3795)
!3797 = !DILocation(line: 2390, column: 9, scope: !3775)
!3798 = !DILocation(line: 2391, column: 7, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3795, file: !1, line: 2390, column: 26)
!3800 = !DILocation(line: 2391, column: 13, scope: !3799)
!3801 = !DILocation(line: 2391, column: 22, scope: !3799)
!3802 = !DILocation(line: 2391, column: 40, scope: !3799)
!3803 = !DILocation(line: 2391, column: 47, scope: !3799)
!3804 = !DILocation(line: 2392, column: 16, scope: !3799)
!3805 = !DILocation(line: 2393, column: 5, scope: !3799)
!3806 = !DILocation(line: 2397, column: 14, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3775, file: !1, line: 2396, column: 5)
!3808 = !DILocation(line: 2397, column: 12, scope: !3807)
!3809 = !DILocation(line: 2354, column: 7, scope: !3685, inlinedAt: !3810)
!3810 = distinct !DILocation(line: 2398, column: 5, scope: !3807)
!3811 = !DILocation(line: 2354, column: 5, scope: !3685, inlinedAt: !3810)
!3812 = !DILocation(line: 2355, column: 10, scope: !3685, inlinedAt: !3810)
!3813 = !DILocation(line: 2356, column: 12, scope: !3685, inlinedAt: !3810)
!3814 = !DILocation(line: 2357, column: 18, scope: !3685, inlinedAt: !3810)
!3815 = !DILocation(line: 2358, column: 21, scope: !3685, inlinedAt: !3810)
!3816 = !DILocation(line: 2359, column: 18, scope: !3685, inlinedAt: !3810)
!3817 = !DILocation(line: 2360, column: 13, scope: !3685, inlinedAt: !3810)
!3818 = !DILocation(line: 2400, column: 12, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3775, file: !1, line: 2400, column: 9)
!3820 = !DILocation(line: 2400, column: 19, scope: !3819)
!3821 = !DILocation(line: 2400, column: 9, scope: !3775)
!3822 = !DILocation(line: 2401, column: 7, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3819, file: !1, line: 2400, column: 27)
!3824 = !DILocation(line: 2405, column: 9, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3775, file: !1, line: 2405, column: 9)
!3826 = !DILocation(line: 2405, column: 24, scope: !3825)
!3827 = !DILocation(line: 2405, column: 9, scope: !3775)
!3828 = !DILocation(line: 2406, column: 7, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3825, file: !1, line: 2405, column: 30)
!3830 = !DILocation(line: 2408, column: 11, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3832, file: !1, line: 2408, column: 11)
!3832 = distinct !DILexicalBlock(scope: !3825, file: !1, line: 2407, column: 12)
!3833 = !DILocation(line: 2408, column: 26, scope: !3831)
!3834 = !DILocation(line: 2408, column: 11, scope: !3832)
!3835 = !DILocation(line: 2409, column: 9, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3831, file: !1, line: 2408, column: 32)
!3837 = !DILocation(line: 2411, column: 13, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3839, file: !1, line: 2411, column: 13)
!3839 = distinct !DILexicalBlock(scope: !3831, file: !1, line: 2410, column: 14)
!3840 = !DILocation(line: 2411, column: 28, scope: !3838)
!3841 = !DILocation(line: 2411, column: 13, scope: !3839)
!3842 = !DILocation(line: 2412, column: 11, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3838, file: !1, line: 2411, column: 34)
!3844 = !DILocation(line: 2414, column: 15, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3846, file: !1, line: 2414, column: 15)
!3846 = distinct !DILexicalBlock(scope: !3838, file: !1, line: 2413, column: 16)
!3847 = !DILocation(line: 2414, column: 30, scope: !3845)
!3848 = !DILocation(line: 2414, column: 15, scope: !3846)
!3849 = !DILocation(line: 2415, column: 13, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3845, file: !1, line: 2414, column: 36)
!3851 = !DILocation(line: 2417, column: 17, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3853, file: !1, line: 2417, column: 17)
!3853 = distinct !DILexicalBlock(scope: !3845, file: !1, line: 2416, column: 18)
!3854 = !DILocation(line: 2417, column: 32, scope: !3852)
!3855 = !DILocation(line: 2417, column: 17, scope: !3853)
!3856 = !DILocation(line: 2418, column: 15, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3852, file: !1, line: 2417, column: 38)
!3858 = !DILocation(line: 2420, column: 19, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3860, file: !1, line: 2420, column: 19)
!3860 = distinct !DILexicalBlock(scope: !3852, file: !1, line: 2419, column: 20)
!3861 = !DILocation(line: 2420, column: 34, scope: !3859)
!3862 = !DILocation(line: 2420, column: 19, scope: !3860)
!3863 = !DILocation(line: 2421, column: 17, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3859, file: !1, line: 2420, column: 40)
!3865 = !DILocation(line: 2424, column: 17, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3867, file: !1, line: 2423, column: 17)
!3867 = distinct !DILexicalBlock(scope: !3859, file: !1, line: 2422, column: 22)
!3868 = !DILocation(line: 2425, column: 21, scope: !3866)
!3869 = !DILocation(line: 2425, column: 24, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3866, file: !1, line: 2425, column: 21)
!3871 = !DILocation(line: 2428, column: 59, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3873, file: !1, line: 2427, column: 19)
!3873 = distinct !DILexicalBlock(scope: !3870, file: !1, line: 2425, column: 24)
!3874 = !DILocation(line: 2428, column: 28, scope: !3872)
!3875 = !DILocation(line: 2428, column: 26, scope: !3872)
!3876 = !DILocation(line: 2430, column: 19, scope: !3873)
!3877 = !DILocation(line: 2433, column: 59, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3873, file: !1, line: 2432, column: 19)
!3879 = !DILocation(line: 2433, column: 28, scope: !3878)
!3880 = !DILocation(line: 2433, column: 26, scope: !3878)
!3881 = !DILocation(line: 2435, column: 19, scope: !3873)
!3882 = !DILocation(line: 2438, column: 53, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3873, file: !1, line: 2437, column: 19)
!3884 = !DILocation(line: 2438, column: 28, scope: !3883)
!3885 = !DILocation(line: 2438, column: 26, scope: !3883)
!3886 = !DILocation(line: 2440, column: 19, scope: !3873)
!3887 = !DILocation(line: 2443, column: 51, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3873, file: !1, line: 2442, column: 19)
!3889 = !DILocation(line: 2443, column: 28, scope: !3888)
!3890 = !DILocation(line: 2443, column: 26, scope: !3888)
!3891 = !DILocation(line: 2445, column: 19, scope: !3873)
!3892 = !DILocation(line: 2448, column: 53, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3873, file: !1, line: 2447, column: 19)
!3894 = !DILocation(line: 2448, column: 28, scope: !3893)
!3895 = !DILocation(line: 2448, column: 26, scope: !3893)
!3896 = !DILocation(line: 2450, column: 19, scope: !3873)
!3897 = !DILocation(line: 2453, column: 59, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3873, file: !1, line: 2452, column: 19)
!3899 = !DILocation(line: 2453, column: 28, scope: !3898)
!3900 = !DILocation(line: 2453, column: 26, scope: !3898)
!3901 = !DILocation(line: 2455, column: 19, scope: !3873)
!3902 = !DILocation(line: 2457, column: 19, scope: !3873)
!3903 = !DILocation(line: 2458, column: 24, scope: !3870)
!3904 = !DILocation(line: 2468, column: 9, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3775, file: !1, line: 2468, column: 9)
!3906 = !DILocation(line: 2468, column: 9, scope: !3775)
!3907 = !DILocation(line: 2472, column: 5, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3905, file: !1, line: 2468, column: 27)
!3909 = !DILocation(line: 2475, column: 3, scope: !3775)
!3910 = !DILocation(line: 2478, column: 7, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3717, file: !1, line: 2478, column: 7)
!3912 = !DILocation(line: 2478, column: 14, scope: !3911)
!3913 = !DILocation(line: 2478, column: 7, scope: !3717)
!3914 = !DILocation(line: 2479, column: 9, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3916, file: !1, line: 2479, column: 9)
!3916 = distinct !DILexicalBlock(scope: !3911, file: !1, line: 2478, column: 20)
!3917 = !DILocation(line: 2479, column: 14, scope: !3915)
!3918 = !DILocation(line: 2479, column: 11, scope: !3915)
!3919 = !DILocation(line: 2479, column: 9, scope: !3916)
!3920 = !DILocation(line: 2480, column: 11, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3915, file: !1, line: 2479, column: 18)
!3922 = !DILocation(line: 2480, column: 9, scope: !3921)
!3923 = !DILocation(line: 2481, column: 5, scope: !3921)
!3924 = !DILocation(line: 2482, column: 7, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3915, file: !1, line: 2481, column: 12)
!3926 = !DILocation(line: 2484, column: 3, scope: !3916)
!3927 = !DILocation(line: 2484, column: 10, scope: !3911)
!3928 = !DILocation(line: 2486, column: 9, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3930, file: !1, line: 2486, column: 9)
!3930 = distinct !DILexicalBlock(scope: !3911, file: !1, line: 2484, column: 10)
!3931 = !DILocation(line: 2486, column: 16, scope: !3929)
!3932 = !DILocation(line: 2486, column: 9, scope: !3930)
!3933 = !DILocation(line: 2487, column: 11, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3935, file: !1, line: 2487, column: 11)
!3935 = distinct !DILexicalBlock(scope: !3929, file: !1, line: 2486, column: 22)
!3936 = !DILocation(line: 2487, column: 16, scope: !3934)
!3937 = !DILocation(line: 2487, column: 13, scope: !3934)
!3938 = !DILocation(line: 2487, column: 11, scope: !3935)
!3939 = !DILocation(line: 2488, column: 13, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3934, file: !1, line: 2487, column: 22)
!3941 = !DILocation(line: 2488, column: 11, scope: !3940)
!3942 = !DILocation(line: 2489, column: 7, scope: !3940)
!3943 = !DILocation(line: 2490, column: 9, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3934, file: !1, line: 2489, column: 14)
!3945 = !DILocation(line: 2492, column: 5, scope: !3935)
!3946 = !DILocation(line: 2492, column: 12, scope: !3929)
!3947 = !DILocation(line: 2494, column: 11, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3949, file: !1, line: 2494, column: 11)
!3949 = distinct !DILexicalBlock(scope: !3929, file: !1, line: 2492, column: 12)
!3950 = !DILocation(line: 2494, column: 16, scope: !3948)
!3951 = !DILocation(line: 2494, column: 13, scope: !3948)
!3952 = !DILocation(line: 2494, column: 11, scope: !3949)
!3953 = !DILocation(line: 2496, column: 7, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3948, file: !1, line: 2494, column: 26)
!3955 = !DILocation(line: 2497, column: 13, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3957, file: !1, line: 2497, column: 13)
!3957 = distinct !DILexicalBlock(scope: !3948, file: !1, line: 2496, column: 14)
!3958 = !DILocation(line: 2497, column: 20, scope: !3956)
!3959 = !DILocation(line: 2497, column: 13, scope: !3957)
!3960 = !DILocation(line: 2499, column: 9, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3956, file: !1, line: 2497, column: 28)
!3962 = !DILocation(line: 2500, column: 15, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3964, file: !1, line: 2500, column: 15)
!3964 = distinct !DILexicalBlock(scope: !3956, file: !1, line: 2499, column: 16)
!3965 = !DILocation(line: 2500, column: 20, scope: !3963)
!3966 = !DILocation(line: 2500, column: 17, scope: !3963)
!3967 = !DILocation(line: 2500, column: 15, scope: !3964)
!3968 = !DILocation(line: 2501, column: 17, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3970, file: !1, line: 2501, column: 17)
!3970 = distinct !DILexicalBlock(scope: !3963, file: !1, line: 2500, column: 27)
!3971 = !DILocation(line: 2501, column: 22, scope: !3969)
!3972 = !DILocation(line: 2501, column: 19, scope: !3969)
!3973 = !DILocation(line: 2501, column: 17, scope: !3970)
!3974 = !DILocation(line: 2502, column: 19, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3976, file: !1, line: 2502, column: 19)
!3976 = distinct !DILexicalBlock(scope: !3969, file: !1, line: 2501, column: 27)
!3977 = !DILocation(line: 2502, column: 24, scope: !3975)
!3978 = !DILocation(line: 2502, column: 21, scope: !3975)
!3979 = !DILocation(line: 2502, column: 19, scope: !3976)
!3980 = !DILocation(line: 2504, column: 15, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3975, file: !1, line: 2502, column: 28)
!3982 = !DILocation(line: 2505, column: 17, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3975, file: !1, line: 2504, column: 22)
!3984 = !DILocation(line: 2507, column: 13, scope: !3976)
!3985 = !DILocation(line: 2508, column: 15, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3969, file: !1, line: 2507, column: 20)
!3987 = !DILocation(line: 2510, column: 11, scope: !3970)
!3988 = !DILocation(line: 2510, column: 18, scope: !3963)
!3989 = !DILocation(line: 2512, column: 17, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3991, file: !1, line: 2512, column: 17)
!3991 = distinct !DILexicalBlock(scope: !3963, file: !1, line: 2510, column: 18)
!3992 = !DILocation(line: 2512, column: 24, scope: !3990)
!3993 = !DILocation(line: 2512, column: 17, scope: !3991)
!3994 = !DILocation(line: 2513, column: 19, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3996, file: !1, line: 2513, column: 19)
!3996 = distinct !DILexicalBlock(scope: !3990, file: !1, line: 2512, column: 30)
!3997 = !DILocation(line: 2513, column: 26, scope: !3995)
!3998 = !DILocation(line: 2513, column: 19, scope: !3996)
!3999 = !DILocation(line: 1635, column: 10, scope: !1749, inlinedAt: !4000)
!4000 = distinct !DILocation(line: 2515, column: 17, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !4002, file: !1, line: 2514, column: 17)
!4002 = distinct !DILexicalBlock(scope: !3995, file: !1, line: 2513, column: 35)
!4003 = !DILocation(line: 2517, column: 15, scope: !4002)
!4004 = !DILocation(line: 2520, column: 13, scope: !3996)
!4005 = !DILocation(line: 2521, column: 19, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !4007, file: !1, line: 2521, column: 19)
!4007 = distinct !DILexicalBlock(scope: !3990, file: !1, line: 2520, column: 20)
!4008 = !DILocation(line: 2521, column: 24, scope: !4006)
!4009 = !DILocation(line: 2521, column: 21, scope: !4006)
!4010 = !DILocation(line: 2521, column: 19, scope: !4007)
!4011 = !DILocation(line: 2522, column: 21, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4013, file: !1, line: 2522, column: 21)
!4013 = distinct !DILexicalBlock(scope: !4006, file: !1, line: 2521, column: 28)
!4014 = !DILocation(line: 2522, column: 28, scope: !4012)
!4015 = !DILocation(line: 2522, column: 21, scope: !4013)
!4016 = !DILocation(line: 1635, column: 10, scope: !1749, inlinedAt: !4017)
!4017 = distinct !DILocation(line: 2524, column: 19, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4019, file: !1, line: 2523, column: 19)
!4019 = distinct !DILexicalBlock(scope: !4012, file: !1, line: 2522, column: 37)
!4020 = !DILocation(line: 2526, column: 17, scope: !4019)
!4021 = !DILocation(line: 2529, column: 15, scope: !4013)
!4022 = !DILocation(line: 2530, column: 21, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4024, file: !1, line: 2530, column: 21)
!4024 = distinct !DILexicalBlock(scope: !4006, file: !1, line: 2529, column: 22)
!4025 = !DILocation(line: 2530, column: 42, scope: !4023)
!4026 = !DILocation(line: 2530, column: 31, scope: !4023)
!4027 = !DILocation(line: 2530, column: 28, scope: !4023)
!4028 = !DILocation(line: 2530, column: 21, scope: !4024)
!4029 = !DILocation(line: 2532, column: 17, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4023, file: !1, line: 2530, column: 61)
!4031 = !DILocation(line: 2542, column: 11, scope: !3717)
!4032 = !DILocation(line: 2542, column: 10, scope: !3717)
!4033 = !DILocation(line: 2542, column: 3, scope: !3717)
!4034 = !DILocation(line: 2544, column: 1, scope: !1451)
!4035 = !DILocation(line: 2546, column: 18, scope: !1454)
!4036 = !DILocation(line: 2547, column: 7, scope: !1454)
!4037 = !DILocation(line: 2547, column: 24, scope: !1454)
!4038 = !DILocation(line: 2550, column: 7, scope: !2975)
!4039 = !DILocation(line: 2550, column: 7, scope: !2976)
!4040 = !DILocation(line: 2551, column: 5, scope: !2980)
!4041 = !DILocation(line: 2553, column: 5, scope: !2982)
!4042 = !DILocation(line: 2556, column: 1, scope: !1454)
!4043 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "FastMutex", arg: 1, scope: !1457, file: !1, line: 2558, type: !1460)
!4044 = !DILocation(line: 2558, column: 37, scope: !1457)
!4045 = !DILocation(line: 2562, column: 3, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !1457, file: !1, line: 2561, column: 3)
!4047 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "FastMutex", arg: 1, scope: !1470, file: !1, line: 2566, type: !1460)
!4048 = !DILocation(line: 2566, column: 37, scope: !1470)
!4049 = !DILocation(line: 2570, column: 3, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !1470, file: !1, line: 2569, column: 3)
!4051 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PoolType", arg: 1, scope: !1471, file: !1, line: 2576, type: !1474)
!4052 = !DILocation(line: 2576, column: 39, scope: !1471)
!4053 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "NumberOfBytes", arg: 2, scope: !1471, file: !1, line: 2576, type: !1475)
!4054 = !DILocation(line: 2576, column: 57, scope: !1471)
!4055 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Tag", arg: 3, scope: !1471, file: !1, line: 2577, type: !283)
!4056 = !DILocation(line: 2577, column: 67, scope: !1471)
!4057 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1471, file: !1, line: 2578, type: !286)
!4058 = !DILocation(line: 2578, column: 9, scope: !1471)
!4059 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1471, file: !1, line: 2579, type: !1414)
!4060 = !DILocation(line: 2579, column: 9, scope: !1471)
!4061 = !DILocation(line: 2583, column: 16, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4063, file: !1, line: 2582, column: 3)
!4063 = distinct !DILexicalBlock(scope: !1471, file: !1, line: 2581, column: 3)
!4064 = !DILocation(line: 2583, column: 9, scope: !4062)
!4065 = !DILocation(line: 2547, column: 24, scope: !1454, inlinedAt: !4066)
!4066 = distinct !DILocation(line: 2583, column: 9, scope: !4062)
!4067 = !DILocation(line: 2547, column: 7, scope: !1454, inlinedAt: !4066)
!4068 = !DILocation(line: 2550, column: 7, scope: !2975, inlinedAt: !4066)
!4069 = !DILocation(line: 2550, column: 7, scope: !2976, inlinedAt: !4066)
!4070 = !DILocation(line: 2551, column: 5, scope: !2980, inlinedAt: !4066)
!4071 = !DILocation(line: 2553, column: 5, scope: !2982, inlinedAt: !4066)
!4072 = !DILocation(line: 2556, column: 1, scope: !1454, inlinedAt: !4066)
!4073 = !DILocation(line: 2583, column: 7, scope: !4062)
!4074 = !DILocation(line: 2584, column: 7, scope: !4062)
!4075 = !DILocation(line: 2584, column: 5, scope: !4062)
!4076 = !DILocation(line: 2586, column: 11, scope: !4063)
!4077 = !DILocation(line: 2546, column: 18, scope: !1454, inlinedAt: !4066)
!4078 = !DILocation(line: 2586, column: 3, scope: !4063)
!4079 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "P", arg: 1, scope: !1476, file: !1, line: 2590, type: !286)
!4080 = !DILocation(line: 2590, column: 23, scope: !1476)
!4081 = !DILocation(line: 2594, column: 3, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !1476, file: !1, line: 2593, column: 3)
!4083 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ListHead", arg: 1, scope: !1477, file: !1, line: 2600, type: !1480)
!4084 = !DILocation(line: 2600, column: 54, scope: !1477)
!4085 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ListEntry", arg: 2, scope: !1477, file: !1, line: 2601, type: !1480)
!4086 = !DILocation(line: 2601, column: 87, scope: !1477)
!4087 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Lock", arg: 3, scope: !1477, file: !1, line: 2602, type: !1481)
!4088 = !DILocation(line: 2602, column: 87, scope: !1477)
!4089 = !DILocation(line: 2606, column: 3, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !1477, file: !1, line: 2605, column: 3)
!4091 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ListHead", arg: 1, scope: !1483, file: !1, line: 2612, type: !1480)
!4092 = !DILocation(line: 2612, column: 54, scope: !1483)
!4093 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ListEntry", arg: 2, scope: !1483, file: !1, line: 2613, type: !1480)
!4094 = !DILocation(line: 2613, column: 87, scope: !1483)
!4095 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Lock", arg: 3, scope: !1483, file: !1, line: 2614, type: !1481)
!4096 = !DILocation(line: 2614, column: 87, scope: !1483)
!4097 = !DILocation(line: 2618, column: 3, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !1483, file: !1, line: 2617, column: 3)
!4099 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ListHead", arg: 1, scope: !1484, file: !1, line: 2623, type: !1480)
!4100 = !DILocation(line: 2623, column: 54, scope: !1484)
!4101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Lock", arg: 2, scope: !1484, file: !1, line: 2624, type: !1481)
!4102 = !DILocation(line: 2624, column: 87, scope: !1484)
!4103 = !DILocation(line: 2628, column: 3, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !1484, file: !1, line: 2627, column: 3)
!4105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "VirtualAddress", arg: 1, scope: !1487, file: !1, line: 2634, type: !286)
!4106 = !DILocation(line: 2634, column: 26, scope: !1487)
!4107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Length", arg: 2, scope: !1487, file: !1, line: 2634, type: !283)
!4108 = !DILocation(line: 2634, column: 49, scope: !1487)
!4109 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SecondaryBuffer", arg: 3, scope: !1487, file: !1, line: 2634, type: !327)
!4110 = !DILocation(line: 2634, column: 66, scope: !1487)
!4111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ChargeQuota", arg: 4, scope: !1487, file: !1, line: 2635, type: !327)
!4112 = !DILocation(line: 2635, column: 28, scope: !1487)
!4113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 5, scope: !1487, file: !1, line: 2635, type: !1199)
!4114 = !DILocation(line: 2635, column: 47, scope: !1487)
!4115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET", scope: !1487, file: !1, line: 2636, type: !1398)
!4116 = !DILocation(line: 2636, column: 7, scope: !1487)
!4117 = !DILocation(line: 2636, column: 24, scope: !1487)
!4118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1487, file: !1, line: 2637, type: !1414)
!4119 = !DILocation(line: 2637, column: 9, scope: !1487)
!4120 = !DILocation(line: 2640, column: 7, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4122, file: !1, line: 2640, column: 7)
!4122 = distinct !DILexicalBlock(scope: !1487, file: !1, line: 2639, column: 3)
!4123 = !DILocation(line: 2640, column: 22, scope: !4121)
!4124 = !DILocation(line: 2546, column: 18, scope: !1454, inlinedAt: !4125)
!4125 = distinct !DILocation(line: 2648, column: 13, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4127, file: !1, line: 2647, column: 7)
!4127 = distinct !DILexicalBlock(scope: !4128, file: !1, line: 2645, column: 12)
!4128 = distinct !DILexicalBlock(scope: !4129, file: !1, line: 2645, column: 9)
!4129 = distinct !DILexicalBlock(scope: !4130, file: !1, line: 2643, column: 5)
!4130 = distinct !DILexicalBlock(scope: !4121, file: !1, line: 2642, column: 10)
!4131 = !DILocation(line: 2547, column: 7, scope: !1454, inlinedAt: !4125)
!4132 = !DILocation(line: 2640, column: 7, scope: !4122)
!4133 = !DILocation(line: 2641, column: 5, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4121, file: !1, line: 2640, column: 28)
!4135 = !DILocation(line: 2644, column: 5, scope: !4129)
!4136 = !DILocation(line: 2645, column: 9, scope: !4129)
!4137 = !DILocation(line: 2645, column: 12, scope: !4128)
!4138 = !DILocation(line: 2648, column: 13, scope: !4126)
!4139 = !DILocation(line: 2547, column: 24, scope: !1454, inlinedAt: !4125)
!4140 = !DILocation(line: 2550, column: 7, scope: !2975, inlinedAt: !4125)
!4141 = !DILocation(line: 2550, column: 7, scope: !2976, inlinedAt: !4125)
!4142 = !DILocation(line: 2551, column: 5, scope: !2980, inlinedAt: !4125)
!4143 = !DILocation(line: 2553, column: 5, scope: !2982, inlinedAt: !4125)
!4144 = !DILocation(line: 2556, column: 1, scope: !1454, inlinedAt: !4125)
!4145 = !DILocation(line: 2648, column: 11, scope: !4126)
!4146 = !DILocation(line: 2650, column: 23, scope: !4127)
!4147 = !DILocation(line: 2650, column: 14, scope: !4127)
!4148 = !DILocation(line: 2650, column: 7, scope: !4127)
!4149 = !DILocation(line: 2652, column: 7, scope: !4127)
!4150 = !DILocation(line: 2653, column: 12, scope: !4128)
!4151 = !DILocation(line: 2659, column: 1, scope: !1487)
!4152 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "MajorFunction", arg: 1, scope: !1493, file: !1, line: 2689, type: !283)
!4153 = !DILocation(line: 2689, column: 42, scope: !1493)
!4154 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 2, scope: !1493, file: !1, line: 2689, type: !262)
!4155 = !DILocation(line: 2689, column: 73, scope: !1493)
!4156 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Buffer", arg: 3, scope: !1493, file: !1, line: 2690, type: !286)
!4157 = !DILocation(line: 2690, column: 42, scope: !1493)
!4158 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Length", arg: 4, scope: !1493, file: !1, line: 2690, type: !283)
!4159 = !DILocation(line: 2690, column: 57, scope: !1493)
!4160 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "StartingOffset", arg: 5, scope: !1493, file: !1, line: 2690, type: !425)
!4161 = !DILocation(line: 2690, column: 81, scope: !1493)
!4162 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "IoStatusBlock", arg: 6, scope: !1493, file: !1, line: 2691, type: !427)
!4163 = !DILocation(line: 2691, column: 53, scope: !1493)
!4164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET", scope: !1493, file: !1, line: 2692, type: !1398)
!4165 = !DILocation(line: 2692, column: 7, scope: !1493)
!4166 = !DILocation(line: 2692, column: 24, scope: !1493)
!4167 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1493, file: !1, line: 2693, type: !1414)
!4168 = !DILocation(line: 2693, column: 9, scope: !1493)
!4169 = !DILocation(line: 2696, column: 13, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !1493, file: !1, line: 2695, column: 3)
!4171 = !DILocation(line: 2697, column: 7, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4170, file: !1, line: 2697, column: 7)
!4173 = !DILocation(line: 2697, column: 22, scope: !4172)
!4174 = !DILocation(line: 2546, column: 18, scope: !1454, inlinedAt: !4175)
!4175 = distinct !DILocation(line: 2705, column: 13, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4177, file: !1, line: 2704, column: 7)
!4177 = distinct !DILexicalBlock(scope: !4178, file: !1, line: 2702, column: 12)
!4178 = distinct !DILexicalBlock(scope: !4179, file: !1, line: 2702, column: 9)
!4179 = distinct !DILexicalBlock(scope: !4180, file: !1, line: 2700, column: 5)
!4180 = distinct !DILexicalBlock(scope: !4172, file: !1, line: 2699, column: 10)
!4181 = !DILocation(line: 2547, column: 7, scope: !1454, inlinedAt: !4175)
!4182 = !DILocation(line: 2697, column: 7, scope: !4170)
!4183 = !DILocation(line: 2698, column: 5, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4172, file: !1, line: 2697, column: 28)
!4185 = !DILocation(line: 2701, column: 5, scope: !4179)
!4186 = !DILocation(line: 2702, column: 9, scope: !4179)
!4187 = !DILocation(line: 2702, column: 12, scope: !4178)
!4188 = !DILocation(line: 2705, column: 13, scope: !4176)
!4189 = !DILocation(line: 2547, column: 24, scope: !1454, inlinedAt: !4175)
!4190 = !DILocation(line: 2550, column: 7, scope: !2975, inlinedAt: !4175)
!4191 = !DILocation(line: 2550, column: 7, scope: !2976, inlinedAt: !4175)
!4192 = !DILocation(line: 2551, column: 5, scope: !2980, inlinedAt: !4175)
!4193 = !DILocation(line: 2553, column: 5, scope: !2982, inlinedAt: !4175)
!4194 = !DILocation(line: 2556, column: 1, scope: !1454, inlinedAt: !4175)
!4195 = !DILocation(line: 2705, column: 11, scope: !4176)
!4196 = !DILocation(line: 2707, column: 23, scope: !4177)
!4197 = !DILocation(line: 2707, column: 14, scope: !4177)
!4198 = !DILocation(line: 2707, column: 7, scope: !4177)
!4199 = !DILocation(line: 2709, column: 7, scope: !4177)
!4200 = !DILocation(line: 2710, column: 12, scope: !4178)
!4201 = !DILocation(line: 2716, column: 1, scope: !1493)
!4202 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "IoControlCode", arg: 1, scope: !1496, file: !1, line: 2726, type: !283)
!4203 = !DILocation(line: 2726, column: 42, scope: !1496)
!4204 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 2, scope: !1496, file: !1, line: 2726, type: !262)
!4205 = !DILocation(line: 2726, column: 73, scope: !1496)
!4206 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InputBuffer", arg: 3, scope: !1496, file: !1, line: 2727, type: !286)
!4207 = !DILocation(line: 2727, column: 42, scope: !1496)
!4208 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InputBufferLength", arg: 4, scope: !1496, file: !1, line: 2727, type: !283)
!4209 = !DILocation(line: 2727, column: 62, scope: !1496)
!4210 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "OutputBuffer", arg: 5, scope: !1496, file: !1, line: 2727, type: !286)
!4211 = !DILocation(line: 2727, column: 88, scope: !1496)
!4212 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "OutputBufferLength", arg: 6, scope: !1496, file: !1, line: 2728, type: !283)
!4213 = !DILocation(line: 2728, column: 42, scope: !1496)
!4214 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InternalDeviceIoControl", arg: 7, scope: !1496, file: !1, line: 2728, type: !327)
!4215 = !DILocation(line: 2728, column: 71, scope: !1496)
!4216 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 8, scope: !1496, file: !1, line: 2729, type: !547)
!4217 = !DILocation(line: 2729, column: 44, scope: !1496)
!4218 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "IoStatusBlock", arg: 9, scope: !1496, file: !1, line: 2729, type: !427)
!4219 = !DILocation(line: 2729, column: 69, scope: !1496)
!4220 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET", scope: !1496, file: !1, line: 2730, type: !1398)
!4221 = !DILocation(line: 2730, column: 7, scope: !1496)
!4222 = !DILocation(line: 2730, column: 24, scope: !1496)
!4223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1496, file: !1, line: 2731, type: !1414)
!4224 = !DILocation(line: 2731, column: 9, scope: !1496)
!4225 = !DILocation(line: 2734, column: 13, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !1496, file: !1, line: 2733, column: 3)
!4227 = !DILocation(line: 2735, column: 7, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4226, file: !1, line: 2735, column: 7)
!4229 = !DILocation(line: 2735, column: 22, scope: !4228)
!4230 = !DILocation(line: 2546, column: 18, scope: !1454, inlinedAt: !4231)
!4231 = distinct !DILocation(line: 2743, column: 13, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4233, file: !1, line: 2742, column: 7)
!4233 = distinct !DILexicalBlock(scope: !4234, file: !1, line: 2740, column: 12)
!4234 = distinct !DILexicalBlock(scope: !4235, file: !1, line: 2740, column: 9)
!4235 = distinct !DILexicalBlock(scope: !4236, file: !1, line: 2738, column: 5)
!4236 = distinct !DILexicalBlock(scope: !4228, file: !1, line: 2737, column: 10)
!4237 = !DILocation(line: 2547, column: 7, scope: !1454, inlinedAt: !4231)
!4238 = !DILocation(line: 2735, column: 7, scope: !4226)
!4239 = !DILocation(line: 2736, column: 5, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4228, file: !1, line: 2735, column: 28)
!4241 = !DILocation(line: 2739, column: 5, scope: !4235)
!4242 = !DILocation(line: 2740, column: 9, scope: !4235)
!4243 = !DILocation(line: 2740, column: 12, scope: !4234)
!4244 = !DILocation(line: 2743, column: 13, scope: !4232)
!4245 = !DILocation(line: 2547, column: 24, scope: !1454, inlinedAt: !4231)
!4246 = !DILocation(line: 2550, column: 7, scope: !2975, inlinedAt: !4231)
!4247 = !DILocation(line: 2550, column: 7, scope: !2976, inlinedAt: !4231)
!4248 = !DILocation(line: 2551, column: 5, scope: !2980, inlinedAt: !4231)
!4249 = !DILocation(line: 2553, column: 5, scope: !2982, inlinedAt: !4231)
!4250 = !DILocation(line: 2556, column: 1, scope: !1454, inlinedAt: !4231)
!4251 = !DILocation(line: 2743, column: 11, scope: !4232)
!4252 = !DILocation(line: 2745, column: 23, scope: !4233)
!4253 = !DILocation(line: 2745, column: 14, scope: !4233)
!4254 = !DILocation(line: 2745, column: 7, scope: !4233)
!4255 = !DILocation(line: 2747, column: 7, scope: !4233)
!4256 = !DILocation(line: 2748, column: 12, scope: !4234)
!4257 = !DILocation(line: 2754, column: 1, scope: !1496)
!4258 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SymbolicLinkName", arg: 1, scope: !1503, file: !1, line: 2790, type: !315)
!4259 = !DILocation(line: 2790, column: 47, scope: !1503)
!4260 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceName", arg: 2, scope: !1503, file: !1, line: 2790, type: !315)
!4261 = !DILocation(line: 2790, column: 82, scope: !1503)
!4262 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET", scope: !1503, file: !1, line: 2791, type: !1398)
!4263 = !DILocation(line: 2791, column: 7, scope: !1503)
!4264 = !DILocation(line: 2791, column: 24, scope: !1503)
!4265 = !DILocation(line: 2794, column: 7, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4267, file: !1, line: 2794, column: 7)
!4267 = distinct !DILexicalBlock(scope: !1503, file: !1, line: 2793, column: 3)
!4268 = !DILocation(line: 2794, column: 22, scope: !4266)
!4269 = !DILocation(line: 2794, column: 7, scope: !4267)
!4270 = !DILocation(line: 2795, column: 5, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4266, file: !1, line: 2794, column: 28)
!4272 = !DILocation(line: 2798, column: 5, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4274, file: !1, line: 2797, column: 5)
!4274 = distinct !DILexicalBlock(scope: !4266, file: !1, line: 2796, column: 10)
!4275 = !DILocation(line: 2799, column: 9, scope: !4273)
!4276 = !DILocation(line: 2799, column: 12, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4273, file: !1, line: 2799, column: 9)
!4278 = !DILocation(line: 2801, column: 7, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4277, file: !1, line: 2799, column: 12)
!4280 = !DILocation(line: 2803, column: 7, scope: !4279)
!4281 = !DILocation(line: 2804, column: 12, scope: !4277)
!4282 = !DILocation(line: 2810, column: 1, scope: !1503)
!4283 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1506, file: !1, line: 2812, type: !262)
!4284 = !DILocation(line: 2812, column: 36, scope: !1506)
!4285 = !DILocation(line: 2816, column: 3, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !1506, file: !1, line: 2815, column: 3)
!4287 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SymbolicLinkName", arg: 1, scope: !1509, file: !1, line: 2820, type: !315)
!4288 = !DILocation(line: 2820, column: 47, scope: !1509)
!4289 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET", scope: !1509, file: !1, line: 2821, type: !1398)
!4290 = !DILocation(line: 2821, column: 7, scope: !1509)
!4291 = !DILocation(line: 2821, column: 24, scope: !1509)
!4292 = !DILocation(line: 2824, column: 7, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4294, file: !1, line: 2824, column: 7)
!4294 = distinct !DILexicalBlock(scope: !1509, file: !1, line: 2823, column: 3)
!4295 = !DILocation(line: 2824, column: 22, scope: !4293)
!4296 = !DILocation(line: 2824, column: 7, scope: !4294)
!4297 = !DILocation(line: 2825, column: 5, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4293, file: !1, line: 2824, column: 28)
!4299 = !DILocation(line: 2828, column: 5, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4301, file: !1, line: 2827, column: 5)
!4301 = distinct !DILexicalBlock(scope: !4293, file: !1, line: 2826, column: 10)
!4302 = !DILocation(line: 2829, column: 9, scope: !4300)
!4303 = !DILocation(line: 2829, column: 12, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4300, file: !1, line: 2829, column: 9)
!4305 = !DILocation(line: 2831, column: 7, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4304, file: !1, line: 2829, column: 12)
!4307 = !DILocation(line: 2833, column: 7, scope: !4306)
!4308 = !DILocation(line: 2834, column: 12, scope: !4304)
!4309 = !DILocation(line: 2840, column: 1, scope: !1509)
!4310 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "TargetDevice", arg: 1, scope: !1512, file: !1, line: 2842, type: !262)
!4311 = !DILocation(line: 2842, column: 36, scope: !1512)
!4312 = !DILocation(line: 2846, column: 3, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !1512, file: !1, line: 2845, column: 3)
!4314 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 1, scope: !1513, file: !1, line: 2850, type: !1199)
!4315 = !DILocation(line: 2850, column: 21, scope: !1513)
!4316 = !DILocation(line: 2854, column: 3, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !1513, file: !1, line: 2853, column: 3)
!4318 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Mdl", arg: 1, scope: !1516, file: !1, line: 2858, type: !569)
!4319 = !DILocation(line: 2858, column: 21, scope: !1516)
!4320 = !DILocation(line: 2862, column: 3, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !1516, file: !1, line: 2861, column: 3)
!4322 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1519, file: !1, line: 2867, type: !1414)
!4323 = !DILocation(line: 2867, column: 9, scope: !1519)
!4324 = !DILocation(line: 2871, column: 9, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4326, file: !1, line: 2870, column: 3)
!4326 = distinct !DILexicalBlock(scope: !1519, file: !1, line: 2869, column: 3)
!4327 = !DILocation(line: 2547, column: 24, scope: !1454, inlinedAt: !4328)
!4328 = distinct !DILocation(line: 2871, column: 9, scope: !4325)
!4329 = !DILocation(line: 2547, column: 7, scope: !1454, inlinedAt: !4328)
!4330 = !DILocation(line: 2550, column: 7, scope: !2975, inlinedAt: !4328)
!4331 = !DILocation(line: 2550, column: 7, scope: !2976, inlinedAt: !4328)
!4332 = !DILocation(line: 2551, column: 5, scope: !2980, inlinedAt: !4328)
!4333 = !DILocation(line: 2553, column: 5, scope: !2982, inlinedAt: !4328)
!4334 = !DILocation(line: 2556, column: 1, scope: !1454, inlinedAt: !4328)
!4335 = !DILocation(line: 2871, column: 7, scope: !4325)
!4336 = !DILocation(line: 2873, column: 19, scope: !4326)
!4337 = !DILocation(line: 2873, column: 10, scope: !4326)
!4338 = !DILocation(line: 2546, column: 18, scope: !1454, inlinedAt: !4328)
!4339 = !DILocation(line: 2873, column: 3, scope: !4326)
!4340 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "BusType", arg: 1, scope: !1537, file: !1, line: 2894, type: !1540)
!4341 = !DILocation(line: 2894, column: 51, scope: !1537)
!4342 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "BusNumber", arg: 2, scope: !1537, file: !1, line: 2894, type: !1445)
!4343 = !DILocation(line: 2894, column: 68, scope: !1537)
!4344 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ControllerType", arg: 3, scope: !1537, file: !1, line: 2894, type: !1542)
!4345 = !DILocation(line: 2894, column: 100, scope: !1537)
!4346 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ControllerNumber", arg: 4, scope: !1537, file: !1, line: 2895, type: !1445)
!4347 = !DILocation(line: 2895, column: 42, scope: !1537)
!4348 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PeripheralType", arg: 5, scope: !1537, file: !1, line: 2895, type: !1542)
!4349 = !DILocation(line: 2895, column: 81, scope: !1537)
!4350 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PeripheralNumber", arg: 6, scope: !1537, file: !1, line: 2896, type: !1445)
!4351 = !DILocation(line: 2896, column: 42, scope: !1537)
!4352 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "CalloutRoutine", arg: 7, scope: !1537, file: !1, line: 2896, type: !1544)
!4353 = !DILocation(line: 2896, column: 72, scope: !1537)
!4354 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 8, scope: !1537, file: !1, line: 2907, type: !286)
!4355 = !DILocation(line: 2907, column: 41, scope: !1537)
!4356 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET", scope: !1537, file: !1, line: 2908, type: !1398)
!4357 = !DILocation(line: 2908, column: 7, scope: !1537)
!4358 = !DILocation(line: 2908, column: 24, scope: !1537)
!4359 = !DILocation(line: 2911, column: 7, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4361, file: !1, line: 2911, column: 7)
!4361 = distinct !DILexicalBlock(scope: !1537, file: !1, line: 2910, column: 3)
!4362 = !DILocation(line: 2911, column: 22, scope: !4360)
!4363 = !DILocation(line: 2911, column: 7, scope: !4361)
!4364 = !DILocation(line: 2912, column: 5, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4360, file: !1, line: 2911, column: 28)
!4366 = !DILocation(line: 2915, column: 5, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4368, file: !1, line: 2914, column: 5)
!4368 = distinct !DILexicalBlock(scope: !4360, file: !1, line: 2913, column: 10)
!4369 = !DILocation(line: 2916, column: 9, scope: !4367)
!4370 = !DILocation(line: 2916, column: 12, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4367, file: !1, line: 2916, column: 9)
!4372 = !DILocation(line: 2918, column: 7, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4371, file: !1, line: 2916, column: 12)
!4374 = !DILocation(line: 2920, column: 7, scope: !4373)
!4375 = !DILocation(line: 2921, column: 12, scope: !4371)
!4376 = !DILocation(line: 2927, column: 1, scope: !1537)
!4377 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PhysicalDeviceObject", arg: 1, scope: !1560, file: !1, line: 2932, type: !262)
!4378 = !DILocation(line: 2932, column: 51, scope: !1560)
!4379 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InterfaceClassGuid", arg: 2, scope: !1560, file: !1, line: 2933, type: !872)
!4380 = !DILocation(line: 2933, column: 82, scope: !1560)
!4381 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ReferenceString", arg: 3, scope: !1560, file: !1, line: 2934, type: !315)
!4382 = !DILocation(line: 2934, column: 84, scope: !1560)
!4383 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SymbolicLinkName", arg: 4, scope: !1560, file: !1, line: 2935, type: !315)
!4384 = !DILocation(line: 2935, column: 84, scope: !1560)
!4385 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET", scope: !1560, file: !1, line: 2936, type: !1398)
!4386 = !DILocation(line: 2936, column: 7, scope: !1560)
!4387 = !DILocation(line: 2936, column: 24, scope: !1560)
!4388 = !DILocation(line: 2939, column: 7, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4390, file: !1, line: 2939, column: 7)
!4390 = distinct !DILexicalBlock(scope: !1560, file: !1, line: 2938, column: 3)
!4391 = !DILocation(line: 2939, column: 22, scope: !4389)
!4392 = !DILocation(line: 2939, column: 7, scope: !4390)
!4393 = !DILocation(line: 2940, column: 5, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4389, file: !1, line: 2939, column: 28)
!4395 = !DILocation(line: 2943, column: 5, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4397, file: !1, line: 2942, column: 5)
!4397 = distinct !DILexicalBlock(scope: !4389, file: !1, line: 2941, column: 10)
!4398 = !DILocation(line: 2944, column: 9, scope: !4396)
!4399 = !DILocation(line: 2944, column: 12, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4396, file: !1, line: 2944, column: 9)
!4401 = !DILocation(line: 2946, column: 7, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4400, file: !1, line: 2944, column: 12)
!4403 = !DILocation(line: 2948, column: 7, scope: !4402)
!4404 = !DILocation(line: 2949, column: 12, scope: !4400)
!4405 = !DILocation(line: 2955, column: 1, scope: !1560)
!4406 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irql", arg: 1, scope: !1563, file: !1, line: 2957, type: !629)
!4407 = !DILocation(line: 2957, column: 36, scope: !1563)
!4408 = !DILocation(line: 2961, column: 3, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !1563, file: !1, line: 2960, column: 3)
!4410 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SymbolicLinkName", arg: 1, scope: !1566, file: !1, line: 2966, type: !315)
!4411 = !DILocation(line: 2966, column: 52, scope: !1566)
!4412 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Enable", arg: 2, scope: !1566, file: !1, line: 2966, type: !327)
!4413 = !DILocation(line: 2966, column: 79, scope: !1566)
!4414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET", scope: !1566, file: !1, line: 2967, type: !1398)
!4415 = !DILocation(line: 2967, column: 7, scope: !1566)
!4416 = !DILocation(line: 2967, column: 24, scope: !1566)
!4417 = !DILocation(line: 2970, column: 7, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4419, file: !1, line: 2970, column: 7)
!4419 = distinct !DILexicalBlock(scope: !1566, file: !1, line: 2969, column: 3)
!4420 = !DILocation(line: 2970, column: 22, scope: !4418)
!4421 = !DILocation(line: 2970, column: 7, scope: !4419)
!4422 = !DILocation(line: 2971, column: 5, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4418, file: !1, line: 2970, column: 28)
!4424 = !DILocation(line: 2974, column: 5, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4426, file: !1, line: 2973, column: 5)
!4426 = distinct !DILexicalBlock(scope: !4418, file: !1, line: 2972, column: 10)
!4427 = !DILocation(line: 2975, column: 9, scope: !4425)
!4428 = !DILocation(line: 2975, column: 12, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4425, file: !1, line: 2975, column: 9)
!4430 = !DILocation(line: 2977, column: 7, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4429, file: !1, line: 2975, column: 12)
!4432 = !DILocation(line: 2979, column: 7, scope: !4431)
!4433 = !DILocation(line: 2980, column: 12, scope: !4429)
!4434 = !DILocation(line: 2986, column: 1, scope: !1566)
!4435 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 1, scope: !1569, file: !1, line: 2988, type: !1199)
!4436 = !DILocation(line: 2988, column: 40, scope: !1569)
!4437 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 2, scope: !1569, file: !1, line: 2988, type: !262)
!4438 = !DILocation(line: 2988, column: 61, scope: !1569)
!4439 = !DILocation(line: 2992, column: 3, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !1569, file: !1, line: 2991, column: 3)
!4441 = !DILocation(line: 2999, column: 7, scope: !3222)
!4442 = !DILocation(line: 2999, column: 12, scope: !3222)
!4443 = !DILocation(line: 2999, column: 9, scope: !3222)
!4444 = !DILocation(line: 2999, column: 7, scope: !3223)
!4445 = !DILocation(line: 3000, column: 9, scope: !3235)
!4446 = !DILocation(line: 3000, column: 7, scope: !3235)
!4447 = !DILocation(line: 3001, column: 3, scope: !3235)
!4448 = !DILocation(line: 1635, column: 10, scope: !1749, inlinedAt: !4449)
!4449 = distinct !DILocation(line: 3003, column: 5, scope: !3232)
!4450 = !DILocation(line: 3006, column: 3, scope: !3223)
!4451 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SpinLock", arg: 1, scope: !1577, file: !1, line: 3102, type: !1481)
!4452 = !DILocation(line: 3102, column: 47, scope: !1577)
!4453 = !DILocation(line: 3106, column: 3, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !1577, file: !1, line: 3105, column: 3)
!4455 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitMode", arg: 1, scope: !1580, file: !1, line: 3112, type: !620)
!4456 = !DILocation(line: 3112, column: 49, scope: !1580)
!4457 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Alertable", arg: 2, scope: !1580, file: !1, line: 3112, type: !327)
!4458 = !DILocation(line: 3112, column: 68, scope: !1580)
!4459 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Interval", arg: 3, scope: !1580, file: !1, line: 3112, type: !425)
!4460 = !DILocation(line: 3112, column: 95, scope: !1580)
!4461 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET", scope: !1580, file: !1, line: 3113, type: !1398)
!4462 = !DILocation(line: 3113, column: 7, scope: !1580)
!4463 = !DILocation(line: 3113, column: 24, scope: !1580)
!4464 = !DILocation(line: 3116, column: 7, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4466, file: !1, line: 3116, column: 7)
!4466 = distinct !DILexicalBlock(scope: !1580, file: !1, line: 3115, column: 3)
!4467 = !DILocation(line: 3116, column: 22, scope: !4465)
!4468 = !DILocation(line: 3116, column: 7, scope: !4466)
!4469 = !DILocation(line: 3117, column: 5, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4465, file: !1, line: 3116, column: 28)
!4471 = !DILocation(line: 3120, column: 5, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4473, file: !1, line: 3119, column: 5)
!4473 = distinct !DILexicalBlock(scope: !4465, file: !1, line: 3118, column: 10)
!4474 = !DILocation(line: 3121, column: 9, scope: !4472)
!4475 = !DILocation(line: 3121, column: 12, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4472, file: !1, line: 3121, column: 9)
!4477 = !DILocation(line: 3123, column: 7, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4476, file: !1, line: 3121, column: 12)
!4479 = !DILocation(line: 3125, column: 7, scope: !4478)
!4480 = !DILocation(line: 3126, column: 12, scope: !4476)
!4481 = !DILocation(line: 3132, column: 1, scope: !1580)
!4482 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 1, scope: !1583, file: !1, line: 3135, type: !1586)
!4483 = !DILocation(line: 3135, column: 33, scope: !1583)
!4484 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Type", arg: 2, scope: !1583, file: !1, line: 3135, type: !1587)
!4485 = !DILocation(line: 3135, column: 52, scope: !1583)
!4486 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "State", arg: 3, scope: !1583, file: !1, line: 3135, type: !327)
!4487 = !DILocation(line: 3135, column: 67, scope: !1583)
!4488 = !DILocation(line: 3139, column: 3, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !1583, file: !1, line: 3138, column: 3)
!4490 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Semaphore", arg: 1, scope: !1588, file: !1, line: 3144, type: !1591)
!4491 = !DILocation(line: 3144, column: 41, scope: !1588)
!4492 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Count", arg: 2, scope: !1588, file: !1, line: 3144, type: !273)
!4493 = !DILocation(line: 3144, column: 58, scope: !1588)
!4494 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Limit", arg: 3, scope: !1588, file: !1, line: 3144, type: !273)
!4495 = !DILocation(line: 3144, column: 71, scope: !1588)
!4496 = !DILocation(line: 3148, column: 3, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !1588, file: !1, line: 3147, column: 3)
!4498 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SpinLock", arg: 1, scope: !1592, file: !1, line: 3152, type: !1481)
!4499 = !DILocation(line: 3152, column: 39, scope: !1592)
!4500 = !DILocation(line: 3156, column: 3, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !1592, file: !1, line: 3155, column: 3)
!4502 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Semaphore", arg: 1, scope: !1595, file: !1, line: 3161, type: !1591)
!4503 = !DILocation(line: 3161, column: 38, scope: !1595)
!4504 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Increment", arg: 2, scope: !1595, file: !1, line: 3161, type: !1598)
!4505 = !DILocation(line: 3161, column: 60, scope: !1595)
!4506 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Adjustment", arg: 3, scope: !1595, file: !1, line: 3161, type: !273)
!4507 = !DILocation(line: 3161, column: 77, scope: !1595)
!4508 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Wait", arg: 4, scope: !1595, file: !1, line: 3162, type: !327)
!4509 = !DILocation(line: 3162, column: 33, scope: !1595)
!4510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !1595, file: !1, line: 3163, type: !273)
!4511 = !DILocation(line: 3163, column: 8, scope: !1595)
!4512 = !DILocation(line: 3163, column: 12, scope: !1595)
!4513 = !DILocation(line: 3166, column: 11, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !1595, file: !1, line: 3165, column: 3)
!4515 = !DILocation(line: 3166, column: 3, scope: !4514)
!4516 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SpinLock", arg: 1, scope: !1599, file: !1, line: 3171, type: !1481)
!4517 = !DILocation(line: 3171, column: 36, scope: !1599)
!4518 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "NewIrql", arg: 2, scope: !1599, file: !1, line: 3171, type: !629)
!4519 = !DILocation(line: 3171, column: 53, scope: !1599)
!4520 = !DILocation(line: 3175, column: 3, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !1599, file: !1, line: 3174, column: 3)
!4522 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "NumberOfBytes", arg: 1, scope: !1609, file: !1, line: 3238, type: !1475)
!4523 = !DILocation(line: 3238, column: 41, scope: !1609)
!4524 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "HighestAcceptableAddress", arg: 2, scope: !1609, file: !1, line: 3238, type: !985)
!4525 = !DILocation(line: 3238, column: 74, scope: !1609)
!4526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET", scope: !1609, file: !1, line: 3239, type: !1398)
!4527 = !DILocation(line: 3239, column: 7, scope: !1609)
!4528 = !DILocation(line: 3239, column: 24, scope: !1609)
!4529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1609, file: !1, line: 3240, type: !1414)
!4530 = !DILocation(line: 3240, column: 9, scope: !1609)
!4531 = !DILocation(line: 3243, column: 7, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4533, file: !1, line: 3243, column: 7)
!4533 = distinct !DILexicalBlock(scope: !1609, file: !1, line: 3242, column: 3)
!4534 = !DILocation(line: 3243, column: 22, scope: !4532)
!4535 = !DILocation(line: 2546, column: 18, scope: !1454, inlinedAt: !4536)
!4536 = distinct !DILocation(line: 3252, column: 15, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4538, file: !1, line: 3251, column: 9)
!4538 = distinct !DILexicalBlock(scope: !4539, file: !1, line: 3249, column: 14)
!4539 = distinct !DILexicalBlock(scope: !4540, file: !1, line: 3249, column: 11)
!4540 = distinct !DILexicalBlock(scope: !4541, file: !1, line: 3248, column: 12)
!4541 = distinct !DILexicalBlock(scope: !4542, file: !1, line: 3246, column: 9)
!4542 = distinct !DILexicalBlock(scope: !4532, file: !1, line: 3245, column: 10)
!4543 = !DILocation(line: 2547, column: 7, scope: !1454, inlinedAt: !4536)
!4544 = !DILocation(line: 3243, column: 7, scope: !4533)
!4545 = !DILocation(line: 3244, column: 5, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4532, file: !1, line: 3243, column: 28)
!4547 = !DILocation(line: 3246, column: 9, scope: !4541)
!4548 = !DILocation(line: 3246, column: 24, scope: !4541)
!4549 = !DILocation(line: 3246, column: 9, scope: !4542)
!4550 = !DILocation(line: 3247, column: 7, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4541, file: !1, line: 3246, column: 30)
!4552 = !DILocation(line: 3249, column: 11, scope: !4540)
!4553 = !DILocation(line: 3249, column: 14, scope: !4539)
!4554 = !DILocation(line: 3252, column: 22, scope: !4537)
!4555 = !DILocation(line: 3252, column: 15, scope: !4537)
!4556 = !DILocation(line: 2547, column: 24, scope: !1454, inlinedAt: !4536)
!4557 = !DILocation(line: 2550, column: 7, scope: !2975, inlinedAt: !4536)
!4558 = !DILocation(line: 2550, column: 7, scope: !2976, inlinedAt: !4536)
!4559 = !DILocation(line: 2551, column: 5, scope: !2980, inlinedAt: !4536)
!4560 = !DILocation(line: 2553, column: 5, scope: !2982, inlinedAt: !4536)
!4561 = !DILocation(line: 2556, column: 1, scope: !1454, inlinedAt: !4536)
!4562 = !DILocation(line: 3252, column: 13, scope: !4537)
!4563 = !DILocation(line: 3254, column: 17, scope: !4538)
!4564 = !DILocation(line: 3254, column: 9, scope: !4538)
!4565 = !DILocation(line: 3256, column: 9, scope: !4538)
!4566 = !DILocation(line: 3257, column: 14, scope: !4539)
!4567 = !DILocation(line: 3262, column: 3, scope: !4533)
!4568 = !DILocation(line: 3264, column: 1, scope: !1609)
!4569 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "BaseAddress", arg: 1, scope: !1612, file: !1, line: 3266, type: !286)
!4570 = !DILocation(line: 3266, column: 35, scope: !1612)
!4571 = !DILocation(line: 3270, column: 3, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 3269, column: 3)
!4573 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "MemoryDescriptorList", arg: 1, scope: !1613, file: !1, line: 3279, type: !569)
!4574 = !DILocation(line: 3279, column: 41, scope: !1613)
!4575 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "AccessMode", arg: 2, scope: !1613, file: !1, line: 3279, type: !620)
!4576 = !DILocation(line: 3279, column: 80, scope: !1613)
!4577 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "CacheType", arg: 3, scope: !1613, file: !1, line: 3280, type: !1616)
!4578 = !DILocation(line: 3280, column: 56, scope: !1613)
!4579 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "BaseAddress", arg: 4, scope: !1613, file: !1, line: 3280, type: !286)
!4580 = !DILocation(line: 3280, column: 74, scope: !1613)
!4581 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "BugCheckOnFailure", arg: 5, scope: !1613, file: !1, line: 3281, type: !283)
!4582 = !DILocation(line: 3281, column: 42, scope: !1613)
!4583 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Priority", arg: 6, scope: !1613, file: !1, line: 3281, type: !1617)
!4584 = !DILocation(line: 3281, column: 79, scope: !1613)
!4585 = !DILocation(line: 3285, column: 3, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !1613, file: !1, line: 3284, column: 3)
!4587 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "AddressWithinSection", arg: 1, scope: !1618, file: !1, line: 3289, type: !286)
!4588 = !DILocation(line: 3289, column: 32, scope: !1618)
!4589 = !DILocation(line: 3293, column: 3, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !1618, file: !1, line: 3292, column: 3)
!4591 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "AddressWithinSection", arg: 1, scope: !1621, file: !1, line: 3297, type: !286)
!4592 = !DILocation(line: 3297, column: 32, scope: !1621)
!4593 = !DILocation(line: 3301, column: 3, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !1621, file: !1, line: 3300, column: 3)
!4595 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "MemoryDescriptorList", arg: 1, scope: !1622, file: !1, line: 3305, type: !569)
!4596 = !DILocation(line: 3305, column: 25, scope: !1622)
!4597 = !DILocation(line: 3309, column: 3, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !1622, file: !1, line: 3308, column: 3)
!4599 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Handle", arg: 1, scope: !1623, file: !1, line: 3318, type: !822)
!4600 = !DILocation(line: 3318, column: 43, scope: !1623)
!4601 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DesiredAccess", arg: 2, scope: !1623, file: !1, line: 3318, type: !735)
!4602 = !DILocation(line: 3318, column: 64, scope: !1623)
!4603 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ObjectType", arg: 3, scope: !1623, file: !1, line: 3318, type: !1626)
!4604 = !DILocation(line: 3318, column: 93, scope: !1623)
!4605 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "AccessMode", arg: 4, scope: !1623, file: !1, line: 3319, type: !620)
!4606 = !DILocation(line: 3319, column: 52, scope: !1623)
!4607 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Object", arg: 5, scope: !1623, file: !1, line: 3319, type: !1224)
!4608 = !DILocation(line: 3319, column: 72, scope: !1623)
!4609 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "HandleInformation", arg: 6, scope: !1623, file: !1, line: 3319, type: !1629)
!4610 = !DILocation(line: 3319, column: 108, scope: !1623)
!4611 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET", scope: !1623, file: !1, line: 3320, type: !1398)
!4612 = !DILocation(line: 3320, column: 7, scope: !1623)
!4613 = !DILocation(line: 3320, column: 24, scope: !1623)
!4614 = !DILocation(line: 3323, column: 7, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4616, file: !1, line: 3323, column: 7)
!4616 = distinct !DILexicalBlock(scope: !1623, file: !1, line: 3322, column: 3)
!4617 = !DILocation(line: 3323, column: 22, scope: !4615)
!4618 = !DILocation(line: 3323, column: 7, scope: !4616)
!4619 = !DILocation(line: 3324, column: 5, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4615, file: !1, line: 3323, column: 28)
!4621 = !DILocation(line: 3327, column: 5, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4623, file: !1, line: 3326, column: 5)
!4623 = distinct !DILexicalBlock(scope: !4615, file: !1, line: 3325, column: 10)
!4624 = !DILocation(line: 3328, column: 9, scope: !4622)
!4625 = !DILocation(line: 3328, column: 12, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4622, file: !1, line: 3328, column: 9)
!4627 = !DILocation(line: 3330, column: 7, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4626, file: !1, line: 3328, column: 12)
!4629 = !DILocation(line: 3332, column: 7, scope: !4628)
!4630 = !DILocation(line: 3333, column: 12, scope: !4626)
!4631 = !DILocation(line: 3339, column: 1, scope: !1623)
!4632 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Object", arg: 1, scope: !1635, file: !1, line: 3341, type: !286)
!4633 = !DILocation(line: 3341, column: 33, scope: !1635)
!4634 = !DILocation(line: 3345, column: 3, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !1635, file: !1, line: 3344, column: 3)
!4636 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 1, scope: !1637, file: !1, line: 3424, type: !1199)
!4637 = !DILocation(line: 3424, column: 31, scope: !1637)
!4638 = !DILocation(line: 3428, column: 3, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !1637, file: !1, line: 3427, column: 3)
!4640 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ThreadHandle", arg: 1, scope: !1638, file: !1, line: 3438, type: !1641)
!4641 = !DILocation(line: 3438, column: 39, scope: !1638)
!4642 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DesiredAccess", arg: 2, scope: !1638, file: !1, line: 3438, type: !283)
!4643 = !DILocation(line: 3438, column: 60, scope: !1638)
!4644 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ObjectAttributes", arg: 3, scope: !1638, file: !1, line: 3438, type: !1643)
!4645 = !DILocation(line: 3438, column: 95, scope: !1638)
!4646 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ProcessHandle", arg: 4, scope: !1638, file: !1, line: 3439, type: !822)
!4647 = !DILocation(line: 3439, column: 38, scope: !1638)
!4648 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ClientId", arg: 5, scope: !1638, file: !1, line: 3439, type: !1654)
!4649 = !DILocation(line: 3439, column: 65, scope: !1638)
!4650 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "StartRoutine", arg: 6, scope: !1638, file: !1, line: 3439, type: !895)
!4651 = !DILocation(line: 3439, column: 83, scope: !1638)
!4652 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "StartContext", arg: 7, scope: !1638, file: !1, line: 3440, type: !286)
!4653 = !DILocation(line: 3440, column: 37, scope: !1638)
!4654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET", scope: !1638, file: !1, line: 3441, type: !1398)
!4655 = !DILocation(line: 3441, column: 7, scope: !1638)
!4656 = !DILocation(line: 3441, column: 24, scope: !1638)
!4657 = !DILocation(line: 3444, column: 7, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4659, file: !1, line: 3444, column: 7)
!4659 = distinct !DILexicalBlock(scope: !1638, file: !1, line: 3443, column: 3)
!4660 = !DILocation(line: 3444, column: 22, scope: !4658)
!4661 = !DILocation(line: 3444, column: 7, scope: !4659)
!4662 = !DILocation(line: 3445, column: 5, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4658, file: !1, line: 3444, column: 28)
!4664 = !DILocation(line: 3448, column: 5, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4666, file: !1, line: 3447, column: 5)
!4666 = distinct !DILexicalBlock(scope: !4658, file: !1, line: 3446, column: 10)
!4667 = !DILocation(line: 3449, column: 9, scope: !4665)
!4668 = !DILocation(line: 3449, column: 12, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4665, file: !1, line: 3449, column: 9)
!4670 = !DILocation(line: 3451, column: 7, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4669, file: !1, line: 3449, column: 12)
!4672 = !DILocation(line: 3453, column: 7, scope: !4671)
!4673 = !DILocation(line: 3454, column: 12, scope: !4669)
!4674 = !DILocation(line: 3460, column: 1, scope: !1638)
!4675 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ExitStatus", arg: 1, scope: !1661, file: !1, line: 3462, type: !300)
!4676 = !DILocation(line: 3462, column: 43, scope: !1661)
!4677 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET", scope: !1661, file: !1, line: 3463, type: !1398)
!4678 = !DILocation(line: 3463, column: 7, scope: !1661)
!4679 = !DILocation(line: 3463, column: 24, scope: !1661)
!4680 = !DILocation(line: 3466, column: 7, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4682, file: !1, line: 3466, column: 7)
!4682 = distinct !DILexicalBlock(scope: !1661, file: !1, line: 3465, column: 3)
!4683 = !DILocation(line: 3466, column: 22, scope: !4681)
!4684 = !DILocation(line: 3466, column: 7, scope: !4682)
!4685 = !DILocation(line: 3467, column: 5, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4681, file: !1, line: 3466, column: 28)
!4687 = !DILocation(line: 3470, column: 5, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4689, file: !1, line: 3469, column: 5)
!4689 = distinct !DILexicalBlock(scope: !4681, file: !1, line: 3468, column: 10)
!4690 = !DILocation(line: 3471, column: 9, scope: !4688)
!4691 = !DILocation(line: 3471, column: 12, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4688, file: !1, line: 3471, column: 9)
!4693 = !DILocation(line: 3473, column: 7, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4692, file: !1, line: 3471, column: 12)
!4695 = !DILocation(line: 3475, column: 7, scope: !4694)
!4696 = !DILocation(line: 3476, column: 12, scope: !4692)
!4697 = !DILocation(line: 3482, column: 1, scope: !1661)
!4698 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DestinationString", arg: 1, scope: !1664, file: !1, line: 3486, type: !315)
!4699 = !DILocation(line: 3486, column: 55, scope: !1664)
!4700 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SourceString", arg: 2, scope: !1664, file: !1, line: 3487, type: !1667)
!4701 = !DILocation(line: 3487, column: 84, scope: !1664)
!4702 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "AllocateDestinationString", arg: 3, scope: !1664, file: !1, line: 3488, type: !327)
!4703 = !DILocation(line: 3488, column: 79, scope: !1664)
!4704 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET", scope: !1664, file: !1, line: 3489, type: !1398)
!4705 = !DILocation(line: 3489, column: 7, scope: !1664)
!4706 = !DILocation(line: 3489, column: 24, scope: !1664)
!4707 = !DILocation(line: 3492, column: 7, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4709, file: !1, line: 3492, column: 7)
!4709 = distinct !DILexicalBlock(scope: !1664, file: !1, line: 3491, column: 3)
!4710 = !DILocation(line: 3492, column: 22, scope: !4708)
!4711 = !DILocation(line: 3492, column: 7, scope: !4709)
!4712 = !DILocation(line: 3493, column: 5, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4708, file: !1, line: 3492, column: 28)
!4714 = !DILocation(line: 3496, column: 5, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4716, file: !1, line: 3495, column: 5)
!4716 = distinct !DILexicalBlock(scope: !4708, file: !1, line: 3494, column: 10)
!4717 = !DILocation(line: 3497, column: 9, scope: !4715)
!4718 = !DILocation(line: 3497, column: 12, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4715, file: !1, line: 3497, column: 9)
!4720 = !DILocation(line: 3499, column: 7, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4719, file: !1, line: 3497, column: 12)
!4722 = !DILocation(line: 3501, column: 7, scope: !4721)
!4723 = !DILocation(line: 3502, column: 12, scope: !4719)
!4724 = !DILocation(line: 3508, column: 1, scope: !1664)
!4725 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Source1", arg: 1, scope: !1676, file: !1, line: 3512, type: !1679)
!4726 = !DILocation(line: 3512, column: 39, scope: !1676)
!4727 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Source2", arg: 2, scope: !1676, file: !1, line: 3512, type: !1679)
!4728 = !DILocation(line: 3512, column: 63, scope: !1676)
!4729 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Length", arg: 3, scope: !1676, file: !1, line: 3513, type: !1475)
!4730 = !DILocation(line: 3513, column: 64, scope: !1676)
!4731 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !1676, file: !1, line: 3514, type: !1475)
!4732 = !DILocation(line: 3514, column: 10, scope: !1676)
!4733 = !DILocation(line: 3514, column: 14, scope: !1676)
!4734 = !DILocation(line: 3517, column: 11, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !1676, file: !1, line: 3516, column: 3)
!4736 = !DILocation(line: 3517, column: 3, scope: !4735)
!4737 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DestinationString", arg: 1, scope: !1681, file: !1, line: 3522, type: !315)
!4738 = !DILocation(line: 3522, column: 43, scope: !1681)
!4739 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SourceString", arg: 2, scope: !1681, file: !1, line: 3523, type: !315)
!4740 = !DILocation(line: 3523, column: 75, scope: !1681)
!4741 = !DILocation(line: 3527, column: 3, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !1681, file: !1, line: 3526, column: 3)
!4743 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "RelativeTo", arg: 1, scope: !1684, file: !1, line: 3533, type: !283)
!4744 = !DILocation(line: 3533, column: 39, scope: !1684)
!4745 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Path", arg: 2, scope: !1684, file: !1, line: 3534, type: !1687)
!4746 = !DILocation(line: 3534, column: 72, scope: !1684)
!4747 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ValueName", arg: 3, scope: !1684, file: !1, line: 3534, type: !1687)
!4748 = !DILocation(line: 3534, column: 86, scope: !1684)
!4749 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET", scope: !1684, file: !1, line: 3535, type: !1398)
!4750 = !DILocation(line: 3535, column: 7, scope: !1684)
!4751 = !DILocation(line: 3535, column: 24, scope: !1684)
!4752 = !DILocation(line: 3538, column: 7, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4754, file: !1, line: 3538, column: 7)
!4754 = distinct !DILexicalBlock(scope: !1684, file: !1, line: 3537, column: 3)
!4755 = !DILocation(line: 3538, column: 22, scope: !4753)
!4756 = !DILocation(line: 3538, column: 7, scope: !4754)
!4757 = !DILocation(line: 3539, column: 5, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4753, file: !1, line: 3538, column: 28)
!4759 = !DILocation(line: 3542, column: 5, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4761, file: !1, line: 3541, column: 5)
!4761 = distinct !DILexicalBlock(scope: !4753, file: !1, line: 3540, column: 10)
!4762 = !DILocation(line: 3543, column: 9, scope: !4760)
!4763 = !DILocation(line: 3543, column: 12, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4760, file: !1, line: 3543, column: 9)
!4765 = !DILocation(line: 3545, column: 7, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4764, file: !1, line: 3543, column: 12)
!4767 = !DILocation(line: 3547, column: 7, scope: !4766)
!4768 = !DILocation(line: 3548, column: 12, scope: !4764)
!4769 = !DILocation(line: 3554, column: 1, scope: !1684)
!4770 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "UnicodeString", arg: 1, scope: !1690, file: !1, line: 3556, type: !315)
!4771 = !DILocation(line: 3556, column: 43, scope: !1690)
!4772 = !DILocation(line: 3560, column: 3, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !1690, file: !1, line: 3559, column: 3)
!4774 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DestinationString", arg: 1, scope: !1693, file: !1, line: 3565, type: !1668)
!4775 = !DILocation(line: 3565, column: 28, scope: !1693)
!4776 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SourceString", arg: 2, scope: !1693, file: !1, line: 3565, type: !1696)
!4777 = !DILocation(line: 3565, column: 53, scope: !1693)
!4778 = !DILocation(line: 3569, column: 3, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !1693, file: !1, line: 3568, column: 3)
!4780 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DestinationString", arg: 1, scope: !1699, file: !1, line: 3574, type: !315)
!4781 = !DILocation(line: 3574, column: 43, scope: !1699)
!4782 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SourceString", arg: 2, scope: !1699, file: !1, line: 3575, type: !1687)
!4783 = !DILocation(line: 3575, column: 66, scope: !1699)
!4784 = !DILocation(line: 3579, column: 3, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !1699, file: !1, line: 3578, column: 3)
!4786 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "RelativeTo", arg: 1, scope: !1702, file: !1, line: 3587, type: !283)
!4787 = !DILocation(line: 3587, column: 39, scope: !1702)
!4788 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Path", arg: 2, scope: !1702, file: !1, line: 3588, type: !1687)
!4789 = !DILocation(line: 3588, column: 72, scope: !1702)
!4790 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "QueryTable", arg: 3, scope: !1702, file: !1, line: 3588, type: !1705)
!4791 = !DILocation(line: 3588, column: 105, scope: !1702)
!4792 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 4, scope: !1702, file: !1, line: 3589, type: !286)
!4793 = !DILocation(line: 3589, column: 71, scope: !1702)
!4794 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Environment", arg: 5, scope: !1702, file: !1, line: 3589, type: !286)
!4795 = !DILocation(line: 3589, column: 87, scope: !1702)
!4796 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET", scope: !1702, file: !1, line: 3590, type: !1398)
!4797 = !DILocation(line: 3590, column: 7, scope: !1702)
!4798 = !DILocation(line: 3590, column: 24, scope: !1702)
!4799 = !DILocation(line: 3593, column: 7, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4801, file: !1, line: 3593, column: 7)
!4801 = distinct !DILexicalBlock(scope: !1702, file: !1, line: 3592, column: 3)
!4802 = !DILocation(line: 3593, column: 22, scope: !4800)
!4803 = !DILocation(line: 3593, column: 7, scope: !4801)
!4804 = !DILocation(line: 3594, column: 5, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4800, file: !1, line: 3593, column: 28)
!4806 = !DILocation(line: 3597, column: 5, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4808, file: !1, line: 3596, column: 5)
!4808 = distinct !DILexicalBlock(scope: !4800, file: !1, line: 3595, column: 10)
!4809 = !DILocation(line: 3598, column: 9, scope: !4807)
!4810 = !DILocation(line: 3598, column: 12, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4807, file: !1, line: 3598, column: 9)
!4812 = !DILocation(line: 3600, column: 7, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4811, file: !1, line: 3598, column: 12)
!4814 = !DILocation(line: 3602, column: 7, scope: !4813)
!4815 = !DILocation(line: 3603, column: 12, scope: !4811)
!4816 = !DILocation(line: 3609, column: 1, scope: !1702)
!4817 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Handle", arg: 1, scope: !1719, file: !1, line: 3611, type: !822)
!4818 = !DILocation(line: 3611, column: 25, scope: !1719)
!4819 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET", scope: !1719, file: !1, line: 3612, type: !1398)
!4820 = !DILocation(line: 3612, column: 7, scope: !1719)
!4821 = !DILocation(line: 3612, column: 24, scope: !1719)
!4822 = !DILocation(line: 3615, column: 7, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4824, file: !1, line: 3615, column: 7)
!4824 = distinct !DILexicalBlock(scope: !1719, file: !1, line: 3614, column: 3)
!4825 = !DILocation(line: 3615, column: 22, scope: !4823)
!4826 = !DILocation(line: 3615, column: 7, scope: !4824)
!4827 = !DILocation(line: 3616, column: 5, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4823, file: !1, line: 3615, column: 28)
!4829 = !DILocation(line: 3619, column: 5, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4831, file: !1, line: 3618, column: 5)
!4831 = distinct !DILexicalBlock(scope: !4823, file: !1, line: 3617, column: 10)
!4832 = !DILocation(line: 3620, column: 9, scope: !4830)
!4833 = !DILocation(line: 3620, column: 12, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4830, file: !1, line: 3620, column: 9)
!4835 = !DILocation(line: 3622, column: 7, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4834, file: !1, line: 3620, column: 12)
!4837 = !DILocation(line: 3624, column: 7, scope: !4836)
!4838 = !DILocation(line: 3625, column: 12, scope: !4834)
!4839 = !DILocation(line: 3631, column: 1, scope: !1719)
